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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vdm_hal)
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
	ldr	r4, [r2, r3]	@ D.42352, <variable>.pVdmRegVirAddr
	cmp	r4, #0	@ D.42352,
	beq	.L19	@,
	ldr	r0, [r4, #40]	@ Data32,
	subs	r0, r0, #1	@ D.42355, Data32,
	movne	r0, #1	@ D.42355
	ldmfd	sp!, {r4, pc}	@
.L19:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.42355, D.42352
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
	ldr	r3, [r2, r3]	@ D.42339, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ D.42339,
	beq	.L24	@,
	ldr	r0, [r3, #28]	@ Data32.734,
	ubfx	r0, r0, #17, #1	@ Data32, Data32.734,,
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
	mov	r0, r4	@ D.42523, tmp151
	ldmfd	sp!, {r4, pc}	@
.L26:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42523,
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
	mov	r0, r4	@ D.42507, tmp144
	ldmfd	sp!, {r4, pc}	@
.L31:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42507,
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
	ubfx	r9, r3, #29, #2	@ PicStructure.921, Height,,
	.pad #84
	sub	sp, sp, #84	@,,
	cmp	r9, #1	@ PicStructure.921,
	mov	r6, r3	@ Height, Height
	mov	r4, r1	@ Yaddress, Yaddress
	str	r0, [sp, #20]	@ fpYuv, %sfp
	mov	r7, r2	@ Width, Width
	moveq	r9, #0	@ PicStructure,
	beq	.L37	@,
	cmp	r9, #2	@ PicStructure.921,
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
	mov	fp, r0	@ ivtmp.924,
	str	r0, [sp, #28]	@, %sfp
.L44:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L48	@,
	and	r0, r9, #15	@ pretmp.969, i,
	ldr	r7, [sp, #8]	@, %sfp
	mov	r2, r9, lsr #4	@ pretmp.968, i,
	cmp	fp, #0	@ ivtmp.924,
	mov	r6, r0, asl #8	@ tmp282, pretmp.969,
	sub	sl, r5, #1	@ tmp372, ImgWidthInPixAln,
	ubfx	sl, sl, #8, #1	@ tmp373, tmp372,,
	mla	r8, r7, r2, r6	@ pretmp.832,, pretmp.968, tmp282
	beq	.L93	@,
	mov	r0, fp	@, ivtmp.924
	add	r1, r4, r8	@, Yaddress, pretmp.832
	mov	r2, #256	@,
	bl	memcpy	@
.L93:
	mov	r7, #256	@ j,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, fp, r7	@ ivtmp.881, ivtmp.924,
	bls	.L48	@,
	cmp	sl, #0	@ tmp373,
	beq	.L46	@,
	cmp	r6, #0	@ ivtmp.881,
	beq	.L98	@,
	add	r3, r8, #4096	@ tmp460, pretmp.832,
	mov	r0, r6	@, ivtmp.881
	add	r1, r4, r3	@, Yaddress, tmp460
	mov	r2, r7	@, j
	bl	memcpy	@
.L98:
	add	r7, r7, #256	@ j, tmp374,
	add	r6, r6, #256	@ ivtmp.881, tmp375,
	cmp	r5, r7	@ ImgWidthInPixAln, j
	bls	.L48	@,
.L46:
	mov	r1, r7, lsr #8	@ tmp273, j,
	cmp	r6, #0	@ ivtmp.881,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.881
	add	r3, r8, r1, asl #12	@, tmp275, pretmp.832, tmp273,
	add	r7, r7, r2	@ tmp374, j,
	add	r1, r4, r3	@, Yaddress, tmp275
	beq	.L45	@,
	bl	memcpy	@
.L45:
	mov	lr, r7, lsr #8	@ tmp462, tmp374,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp375, ivtmp.881,
	add	ip, r8, lr, asl #12	@, tmp464, pretmp.832, tmp462,
	add	r1, r4, ip	@, Yaddress, tmp464
	mov	r0, r6	@, tmp375
	beq	.L98	@,
	add	r7, r7, #256	@ j, tmp374,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j
	add	r6, r6, #256	@ ivtmp.881, tmp375,
	bhi	.L46	@,
.L48:
	ldr	r8, [sp, #12]	@, %sfp
	add	r9, r9, #1	@ i, i,
	add	fp, fp, r5	@ ivtmp.924, ivtmp.924, ImgWidthInPixAln
	cmp	r8, r9	@, i
	bhi	.L44	@,
	ldr	fp, [sp, #12]	@, %sfp
	ldr	r0, [sp, #16]	@, %sfp
	ldr	r2, [sp, #20]	@, %sfp
	mul	r1, r5, fp	@, ImgWidthInPixAln,
	ldr	r8, [sp, #44]	@ Caddress, %sfp
	bl	klib_fwrite	@
	ldr	r4, [sp, #12]	@, %sfp
	movs	fp, r4, lsr #1	@ D.43085,,
	beq	.L49	@,
	ldr	r3, [sp, #8]	@, %sfp
	mov	sl, #0	@ i.932,
	str	fp, [sp, #8]	@ D.43085, %sfp
	mov	r9, r3, asr #1	@,,
	str	r9, [sp, #12]	@, %sfp
	ldr	r9, [sp, #28]	@ ivtmp.926, %sfp
.L50:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L53	@,
	ldr	r3, [sp, #12]	@, %sfp
	mov	r7, sl, lsr #3	@ pretmp.960, i.932,
	and	r4, sl, #7	@ pretmp.972, i.932,
	cmp	r9, #0	@ ivtmp.926,
	sub	fp, r5, #1	@ tmp366, ImgWidthInPixAln,
	mul	r6, r3, r7	@ tmp296,, pretmp.960
	ubfx	fp, fp, #8, #1	@ tmp367, tmp366,,
	add	r7, r6, r4, asl #8	@, pretmp.836, tmp296, pretmp.972,
	beq	.L86	@,
	mov	r0, r9	@, ivtmp.926
	add	r1, r8, r7	@, Caddress, pretmp.836
	mov	r2, #256	@,
	bl	memcpy	@
.L86:
	mov	r6, #256	@ j.931,
	cmp	r5, r6	@ ImgWidthInPixAln, j.931
	add	r4, r9, r6	@ ivtmp.927, ivtmp.926,
	bls	.L53	@,
	cmp	fp, #0	@ tmp367,
	beq	.L52	@,
	cmp	r4, #0	@ ivtmp.927,
	beq	.L91	@,
	add	lr, r7, #2048	@ tmp448, pretmp.836,
	mov	r0, r4	@, ivtmp.927
	add	r1, r8, lr	@, Caddress, tmp448
	mov	r2, r6	@, j.931
	bl	memcpy	@
.L91:
	add	r6, r6, #256	@ j.931, tmp369,
	add	r4, r4, #256	@ ivtmp.927, tmp368,
	cmp	r5, r6	@ ImgWidthInPixAln, j.931
	bls	.L53	@,
.L52:
	mov	ip, r6, lsr #8	@ tmp287, j.931,
	cmp	r4, #0	@ ivtmp.927,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.927
	add	r1, r7, ip, asl #11	@, tmp289, pretmp.836, tmp287,
	add	r6, r6, r2	@ tmp369, j.931,
	add	r1, r8, r1	@, Caddress, tmp289
	beq	.L51	@,
	bl	memcpy	@
.L51:
	mov	r0, r6, lsr #8	@ tmp450, tmp369,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp368, ivtmp.927,
	add	lr, r7, r0, asl #11	@, tmp452, pretmp.836, tmp450,
	add	r1, r8, lr	@, Caddress, tmp452
	mov	r0, r4	@, tmp368
	beq	.L91	@,
	add	r6, r6, #256	@ j.931, tmp369,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.931
	add	r4, r4, #256	@ ivtmp.927, tmp368,
	bhi	.L52	@,
.L53:
	ldr	r2, [sp, #8]	@, %sfp
	add	sl, sl, #1	@ i.932, i.932,
	add	r9, r9, r5	@ ivtmp.926, ivtmp.926, ImgWidthInPixAln
	cmp	sl, r2	@ i.932,
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
	mul	r4, r0, r2	@ D.43113,,
.L147:
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r4	@, temp.957
	ldr	r0, [sp, #24]	@, %sfp
	bl	klib_fwrite	@
	ldr	r2, [sp, #20]	@, %sfp
	mov	r1, r4	@, temp.957
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
	mov	r1, r9, lsr #4	@ pretmp.976, i.942,
	and	r7, r9, #15	@ pretmp.966, i.942,
	sub	sl, r5, #1	@ tmp390, ImgWidthInPixAln,
	mov	r6, r9, lsr #1	@ pretmp.973, i.942,
	ldr	r2, [sp, #16]	@, %sfp
	mul	r8, r3, r1	@ tmp312,, pretmp.976
	mlas	r6, r5, r6, r2	@ ivtmp.916, ImgWidthInPixAln, pretmp.973,
	ubfx	sl, sl, #8, #1	@ tmp391, tmp390,,
	add	r8, r8, r7, asl #8	@, pretmp.828, tmp312, pretmp.966,
	beq	.L111	@,
	mov	r0, r6	@, ivtmp.916
	add	r1, r4, r8	@, Yaddress, pretmp.828
	mov	r2, #256	@,
	bl	memcpy	@
.L111:
	mov	r7, #256	@ j.941,
	cmp	r5, r7	@ ImgWidthInPixAln, j.941
	add	r6, r6, r7	@ ivtmp.916, ivtmp.916,
	bls	.L64	@,
	cmp	sl, #0	@ tmp391,
	beq	.L63	@,
	cmp	r6, #0	@ ivtmp.916,
	beq	.L116	@,
	add	ip, r8, #4096	@ tmp487, pretmp.828,
	mov	r0, r6	@, ivtmp.916
	add	r1, r4, ip	@, Yaddress, tmp487
	mov	r2, r7	@, j.941
	bl	memcpy	@
.L116:
	add	r7, r7, #256	@ j.941, tmp392,
	add	r6, r6, #256	@ ivtmp.916, tmp393,
	cmp	r5, r7	@ ImgWidthInPixAln, j.941
	bls	.L64	@,
.L63:
	mov	ip, r7, lsr #8	@ tmp303, j.941,
	cmp	r6, #0	@ ivtmp.916,
	mov	r2, #256	@,
	mov	r0, r6	@, ivtmp.916
	add	r3, r8, ip, asl #12	@, tmp305, pretmp.828, tmp303,
	add	r7, r7, r2	@ tmp392, j.941,
	add	r1, r4, r3	@, Yaddress, tmp305
	beq	.L62	@,
	bl	memcpy	@
.L62:
	mov	r0, r7, lsr #8	@ tmp489, tmp392,
	mov	r2, #256	@,
	adds	r6, r6, r2	@ tmp393, ivtmp.916,
	add	lr, r8, r0, asl #12	@, tmp491, pretmp.828, tmp489,
	add	r1, r4, lr	@, Yaddress, tmp491
	mov	r0, r6	@, tmp393
	beq	.L116	@,
	add	r7, r7, #256	@ j.941, tmp392,
	bl	memcpy	@
	cmp	r5, r7	@ ImgWidthInPixAln, j.941
	add	r6, r6, #256	@ ivtmp.916, tmp393,
	bhi	.L63	@,
.L64:
	add	r9, r9, #2	@ i.942, i.942,
	cmp	fp, r9	@ ImgHeightInPixAln, i.942
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
	ldr	r9, [sp, #16]	@ ivtmp.908, %sfp
	mov	sl, #0	@ i.949,
.L66:
	cmp	r5, #0	@ ImgWidthInPixAln,
	beq	.L69	@,
	and	r7, sl, #7	@ pretmp.965, i.949,
	ldr	r4, [sp, #8]	@, %sfp
	mov	r0, sl, lsr #3	@ pretmp.825, i.949,
	cmp	r9, #0	@ ivtmp.908,
	mov	r6, r7, asl #8	@ tmp328, pretmp.965,
	sub	fp, r5, #1	@ tmp384, ImgWidthInPixAln,
	ubfx	fp, fp, #8, #1	@ tmp385, tmp384,,
	mla	r7, r4, r0, r6	@ pretmp.826,, pretmp.825, tmp328
	beq	.L104	@,
	mov	r0, r9	@, ivtmp.908
	add	r1, r8, r7	@, Caddress, pretmp.826
	mov	r2, #256	@,
	bl	memcpy	@
.L104:
	mov	r6, #256	@ j.948,
	cmp	r5, r6	@ ImgWidthInPixAln, j.948
	add	r4, r9, r6	@ ivtmp.952, ivtmp.908,
	bls	.L69	@,
	cmp	fp, #0	@ tmp385,
	beq	.L68	@,
	cmp	r4, #0	@ ivtmp.952,
	beq	.L109	@,
	add	r2, r7, #2048	@ tmp475, pretmp.826,
	mov	r0, r4	@, ivtmp.952
	add	r1, r8, r2	@, Caddress, tmp475
	mov	r2, r6	@, j.948
	bl	memcpy	@
.L109:
	add	r6, r6, #256	@ j.948, tmp386,
	add	r4, r4, #256	@ ivtmp.952, tmp387,
	cmp	r5, r6	@ ImgWidthInPixAln, j.948
	bls	.L69	@,
.L68:
	mov	r3, r6, lsr #8	@ tmp319, j.948,
	cmp	r4, #0	@ ivtmp.952,
	mov	r2, #256	@,
	mov	r0, r4	@, ivtmp.952
	add	r1, r7, r3, asl #11	@, tmp321, pretmp.826, tmp319,
	add	r6, r6, r2	@ tmp386, j.948,
	add	r1, r8, r1	@, Caddress, tmp321
	beq	.L67	@,
	bl	memcpy	@
.L67:
	mov	lr, r6, lsr #8	@ tmp477, tmp386,
	mov	r2, #256	@,
	adds	r4, r4, r2	@ tmp387, ivtmp.952,
	add	ip, r7, lr, asl #11	@, tmp479, pretmp.826, tmp477,
	add	r1, r8, ip	@, Caddress, tmp479
	mov	r0, r4	@, tmp387
	beq	.L109	@,
	add	r6, r6, #256	@ j.948, tmp386,
	bl	memcpy	@
	cmp	r5, r6	@ ImgWidthInPixAln, j.948
	add	r4, r4, #256	@ ivtmp.952, tmp387,
	bhi	.L68	@,
.L69:
	ldr	r2, [sp, #12]	@, %sfp
	add	sl, sl, #1	@ i.949, i.949,
	add	r9, r9, r5	@ ivtmp.908, ivtmp.908, ImgWidthInPixAln
	cmp	sl, r2	@ i.949,
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
	mul	r4, r0, r1	@ temp.957,,
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
	mov	r8, #0	@ i.935,
	ldr	r7, [sp, #24]	@ ivtmp.933, %sfp
	mov	r9, r3	@ chrom_height,
	ldr	lr, [sp, #36]	@ chrom_width, %sfp
.L56:
	cmp	lr, #0	@ chrom_width,
	beq	.L58	@,
	ldrb	ip, [r6, #0]	@ zero_extendqisi2	@ tmp417,* tmp
	add	r4, r7, #2097152	@ tmp416, ivtmp.933,
	mov	r0, #1	@ j.934,
	cmp	lr, r0	@ chrom_width, j.934
	sub	r3, lr, #1	@ tmp358, chrom_width,
	mov	r2, r7	@ ivtmp.853, ivtmp.933
	strb	ip, [r4, #0]	@ tmp417,
	and	ip, r3, r0	@ tmp360, tmp358,
	ldrb	r1, [r6, #1]	@ zero_extendqisi2	@ tmp418,
	add	r3, r6, #2	@ ivtmp.850, tmp,
	strb	r1, [r2], #1	@ tmp418,
	bls	.L58	@,
	cmp	ip, #0	@ tmp360,
	beq	.L57	@,
	ldrb	r1, [r3, #0]	@ zero_extendqisi2	@ tmp440,* ivtmp.850
	add	r4, r2, #2097152	@ tmp439, ivtmp.853,
	mov	r0, #2	@ j.934,
	cmp	lr, r0	@ chrom_width, j.934
	strb	r1, [r4, #0]	@ tmp440,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp441,
	add	r3, r3, r0	@ ivtmp.850, ivtmp.850,
	strb	ip, [r2], #1	@ tmp441,
	bls	.L58	@,
.L57:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp298,* ivtmp.850
	add	r4, r2, #2097152	@ tmp297, ivtmp.853,
	mov	r1, r2	@ tmp363, ivtmp.853
	add	ip, r3, #2	@ tmp362, ivtmp.850,
	add	r0, r0, #2	@ j.934, j.934,
	strb	sl, [r4, #0]	@ tmp298,
	cmp	lr, r0	@ chrom_width, j.934
	ldrb	sl, [r3, #1]	@ zero_extendqisi2	@ tmp300,
	strb	sl, [r1], #1	@ tmp300,
	add	r4, r1, #2097152	@ tmp410, tmp363,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp411,
	add	r3, ip, #2	@ ivtmp.850, tmp362,
	strb	sl, [r4, #0]	@ tmp411,
	ldrb	ip, [ip, #1]	@ zero_extendqisi2	@ tmp412,
	strb	ip, [r2, #1]	@ tmp412,
	add	r2, r1, #1	@ ivtmp.853, tmp363,
	bhi	.L57	@,
.L58:
	add	r8, r8, #1	@ i.935, i.935,
	add	r7, r7, lr	@ ivtmp.933, ivtmp.933, chrom_width
	cmp	r9, r8	@ chrom_height, i.935
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
	mla	r0, r5, ip, lr	@ tmp.950, ImgWidthInPixAln,,
	ldr	lr, [sp, #36]	@ chrom_width, %sfp
	mov	r5, r5, asl #1	@ D.43135, ImgWidthInPixAln,
	mov	ip, #0	@ i.955,
.L72:
	cmp	lr, #0	@ chrom_width,
	beq	.L74	@,
	mov	r3, ip, lsr #1	@ pretmp.821, i.955,
	ldrb	sl, [r0, #0]	@ zero_extendqisi2	@ tmp437,* tmp.950
	mov	r1, #1	@ j.954,
	cmp	lr, r1	@ chrom_width, j.954
	mul	r6, lr, r3	@ tmp335, chrom_width, pretmp.821
	sub	r9, lr, #1	@ tmp376, chrom_width,
	and	r9, r9, r1	@ tmp378, tmp376,
	add	r3, r0, #2	@ ivtmp.888, tmp.950,
	add	r4, r7, r6	@ ivtmp.891, ul, tmp335
	add	r8, r4, #2097152	@ tmp436, ivtmp.891,
	add	r2, r4, r1	@ ivtmp.891, ivtmp.891,
	strb	sl, [r8, #0]	@ tmp437,
	ldrb	r8, [r0, #1]	@ zero_extendqisi2	@ tmp438,
	strb	r8, [r7, r6]	@ tmp438,
	bls	.L74	@,
	cmp	r9, #0	@ tmp378,
	beq	.L73	@,
	ldrb	r8, [r3, #0]	@ zero_extendqisi2	@ tmp467,* ivtmp.888
	add	r6, r2, #2097152	@ tmp466, ivtmp.891,
	mov	r1, #2	@ j.954,
	cmp	lr, r1	@ chrom_width, j.954
	add	r2, r2, #1	@ ivtmp.891, ivtmp.891,
	strb	r8, [r6, #0]	@ tmp467,
	ldrb	r6, [r3, #1]	@ zero_extendqisi2	@ tmp468,
	add	r3, r3, r1	@ ivtmp.888, ivtmp.888,
	strb	r6, [r4, #1]	@ tmp468,
	bls	.L74	@,
.L73:
	ldrb	sl, [r3, #0]	@ zero_extendqisi2	@ tmp331,* ivtmp.888
	add	r8, r2, #2097152	@ tmp330, ivtmp.891,
	mov	r4, r2	@ tmp381, ivtmp.891
	add	r6, r3, #2	@ tmp380, ivtmp.888,
	add	r1, r1, #2	@ j.954, j.954,
	strb	sl, [r8, #0]	@ tmp331,
	cmp	lr, r1	@ chrom_width, j.954
	ldrb	r8, [r3, #1]	@ zero_extendqisi2	@ tmp333,
	strb	r8, [r4], #1	@ tmp333,
	add	r8, r4, #2097152	@ tmp430, tmp381,
	ldrb	sl, [r3, #2]	@ zero_extendqisi2	@ tmp431,
	add	r3, r6, #2	@ ivtmp.888, tmp380,
	strb	sl, [r8, #0]	@ tmp431,
	ldrb	r6, [r6, #1]	@ zero_extendqisi2	@ tmp432,
	strb	r6, [r2, #1]	@ tmp432,
	add	r2, r4, #1	@ ivtmp.891, tmp381,
	bhi	.L73	@,
.L74:
	add	ip, ip, #2	@ i.955, i.955,
	cmp	fp, ip	@ chrom_height, i.955
	bls	.L71	@,
	add	r0, r0, r5	@ tmp.950, tmp.950, D.43135
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
	ldr	r3, [r1, #20]	@ D.43190, outer_cache.sync
	cmp	r3, #0	@ D.43190,
	beq	.L159	@,
	blx	r3	@ D.43190
.L159:
	cmp	r4, #0	@ VdhId,
	bgt	.L164	@,
	movw	lr, #1140	@ tmp147,
	movw	r3, #:lower16:g_HwMem	@ tmp145,
	mul	r4, lr, r4	@ tmp146, tmp147, VdhId
	movt	r3, #:upper16:g_HwMem	@ tmp145,
	mov	lr, #0	@ tmp149,
	mov	r2, #1	@ tmp154,
	ldr	r1, [r4, r3]	@ D.42937, <variable>.pVdmRegVirAddr
	str	lr, [r1, #0]	@ tmp149,* D.42937
	ldr	ip, [r4, r3]	@ temp.1005, <variable>.pVdmRegVirAddr
	str	r2, [ip, #0]	@ tmp154,* temp.1005
	ldr	r0, [r4, r3]	@ temp.1007, <variable>.pVdmRegVirAddr
	str	lr, [r0, #0]	@ tmp149,* temp.1007
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
	orr	r7, r7, #67108864	@ dat.1032, dat,
	ldr	r2, [r1, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	uxth	r1, r0	@ tmp152,
	add	r0, r2, #4	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
	ldr	r0, [r6, r4]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r7, [r0, #8]	@ dat.1032,
#APP
@ 2022 "/home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/vdm_hal.c" 1
	dsb 
@ 0 "" 2
	movw	r3, #:lower16:outer_cache	@ tmp159,
	movt	r3, #:upper16:outer_cache	@ tmp159,
	ldr	r3, [r3, #20]	@ D.43191, outer_cache.sync
	cmp	r3, #0	@ D.43191,
	beq	.L167	@,
	blx	r3	@ D.43191
.L167:
	movw	ip, #1140	@ tmp162,
	mov	r3, #0	@ tmp164,
	mul	r5, ip, r5	@ tmp161, tmp162, VdhId
	mov	r0, #1	@ tmp169,
	ldr	r1, [r5, r4]	@ D.42921, <variable>.pVdmRegVirAddr
	str	r3, [r1, #0]	@ tmp164,* D.42921
	ldr	r2, [r5, r4]	@ temp.1040, <variable>.pVdmRegVirAddr
	str	r0, [r2, #0]	@ tmp169,* temp.1040
	ldr	lr, [r5, r4]	@ temp.1042, <variable>.pVdmRegVirAddr
	str	r3, [lr, #0]	@ tmp164,* temp.1042
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
	mvn	r0, #0	@ D.42707,
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
	mov	r0, #0	@ D.42707,
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
	cmp	r0, #0	@ D.42713
	strne	r0, [r1, #0]	@ D.42713, <variable>.pVdmRegVirAddr
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
	ldr	r8, [r7, #568]	@ prephitmp.1112, <variable>.FullRepair
	cmp	r8, sl	@ prephitmp.1112,
	bne	.L185	@,
	ldr	ip, [r7, #552]	@ temp.1165, <variable>.ValidGroupNum
	cmp	ip, sl	@ temp.1165,
	movle	sl, r8	@ actual_repairTime, prephitmp.1112
	ble	.L187	@,
	ldrsh	r3, [r7, #40]	@ <variable>.StartMbn, <variable>.StartMbn
	mov	r6, r8	@ i, actual_repairTime.1164
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
	addne	r4, r6, #1	@ i.1154, i,
	movne	sl, r8	@ actual_repairTime, actual_repairTime.1164
	bne	.L192	@,
	add	r4, r6, #10	@ tmp316, i,
	mvn	sl, r6	@ tmp412, i
	add	r5, sl, ip	@ tmp411, tmp412, temp.1165
	tst	r5, #1	@ tmp411,
	add	r1, r7, r4, asl #2	@, tmp318, pRepairParam, tmp316,
	add	r2, r1, #2	@ ivtmp.1135, tmp318,
	beq	.L193	@,
	add	r4, r6, #1	@ i.1154, i,
	cmp	r4, ip	@ i.1154, temp.1165
	bge	.L210	@,
	ldrsh	r0, [r1, #2]	@ <variable>.EndMbn, <variable>.EndMbn
	ldrsh	r1, [r2, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	r5, r0, #7	@ tmp429, <variable>.EndMbn,
	add	sl, r1, #7	@ tmp434, <variable>.StartMbn,
	addmi	r5, r0, #14	@, tmp431, <variable>.EndMbn,
	cmp	r1, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp431,
	movlt	r1, sl	@ <variable>.StartMbn, tmp434
	bic	r1, r1, #7	@ D.42637, <variable>.StartMbn,
	cmp	r5, r1	@ end_Mb, D.42637
	bgt	.L204	@,
	add	lr, r1, #1	@ tmp439, D.42637,
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
	add	r2, r2, #4	@ ivtmp.1135, ivtmp.1135,
	mov	r6, r4	@ i, i.1154
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
	bic	r1, r1, #7	@ D.42637, <variable>.StartMbn,
	cmp	r5, r1	@ end_Mb, D.42637
	bgt	.L196	@,
	add	lr, r1, #1	@ tmp340, D.42637,
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
	add	r1, r2, #4	@ tmp414, ivtmp.1135,
	ldrsh	r5, [r2, #4]	@ <variable>.EndMbn, <variable>.EndMbn
	mov	r0, r4	@ i.1154, i.1154
	mov	r6, r4	@ i, i.1154
	ldrsh	lr, [r1, #2]	@ <variable>.StartMbn, <variable>.StartMbn
	adds	sl, r5, #7	@ tmp329, <variable>.EndMbn,
	addmi	r5, r5, #14	@, tmp331, <variable>.EndMbn,
	movpl	r5, sl	@, tmp331, tmp329
	add	r4, r4, #1	@ i.1154, i.1154,
	add	r2, lr, #7	@ tmp337, <variable>.StartMbn,
	cmp	lr, #0	@ <variable>.StartMbn,
	bic	r5, r5, #7	@ end_Mb, tmp331,
	movlt	lr, r2	@ <variable>.StartMbn, tmp337
	bic	r2, lr, #7	@ D.42637, <variable>.StartMbn,
	cmp	r5, r2	@ end_Mb, D.42637
	bgt	.L207	@,
	add	r2, r2, #1	@ tmp447, D.42637,
	cmp	r5, r2	@ end_Mb, tmp447
	beq	.L207	@,
	cmp	r0, #1	@ i.1154,
	bmi	.L195	@,
	ldrsh	r2, [r1, #-4]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	sl, r2, #7	@ tmp450, <variable>.EndMbn,
	addmi	lr, r2, #14	@, tmp452, <variable>.EndMbn,
	movpl	lr, sl	@, tmp452, tmp450
	bic	sl, lr, #7	@ tmp454, tmp452,
	cmp	r5, sl	@ end_Mb, tmp454
	bgt	.L195	@,
.L207:
	add	r2, r1, #4	@ ivtmp.1135, tmp414,
	add	r6, r0, #1	@ i, i.1154,
.L193:
	add	r4, r6, #1	@ i.1154, i,
	cmp	r4, ip	@ i.1154, temp.1165
	blt	.L194	@,
.L210:
	add	lr, r7, r6, asl #2	@, tmp322, pRepairParam, i,
	ldrsh	r1, [lr, #42]	@ pretmp.1117, <variable>.EndMbn
	adds	r0, r1, #7	@ pretmp.1204, pretmp.1117,
	addmi	ip, r1, #14	@, pretmp.1204, pretmp.1117,
	movpl	ip, r0	@, pretmp.1204, pretmp.1204
	bic	r5, ip, #7	@ end_Mb, pretmp.1204,
.L195:
	ldr	ip, [r7, #28]	@ <variable>.ImageHeight, <variable>.ImageHeight
	add	sl, r8, #1	@ actual_repairTime, actual_repairTime.1164,
	ldr	r1, [r7, #24]	@ <variable>.ImageWidth, <variable>.ImageWidth
	mul	r2, r1, ip	@ D.42643, <variable>.ImageWidth, <variable>.ImageHeight
	cmp	r2, r5	@ D.42643, end_Mb
	suble	r5, r2, #1	@ end_Mb, D.42643,
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
	add	r3, r8, #4	@ tmp365, actual_repairTime.1164,
	mov	ip, #0	@,
	bfi	fp, r0, #16, #9	@ tmp364,,,
	mov	r0, r5	@, end_Mb
	str	fp, [r1, r3, asl #3]	@ D32.1176,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	str	ip, [sp, #12]	@, D32
	bl	__aeabi_idivmod	@
	ldr	r9, [sp, #12]	@ tmp374,
	mov	r0, r5	@, end_Mb
	bfi	r9, r1, #0, #9	@ tmp374,,,
	ldr	r1, [r7, #24]	@, <variable>.ImageWidth
	bl	__aeabi_idiv	@
	mov	r2, r8, asl #3	@ tmp380, actual_repairTime.1164,
	add	r8, r2, #36	@ tmp381, tmp380,
	bfi	r9, r0, #16, #9	@ tmp379,,,
	ldr	r0, [sp, #4]	@, %sfp
	str	r9, [sp, #12]	@ tmp379,
	str	r9, [r0, r8]	@ D32.1180,
	ldr	r3, [sp, #0]	@,
	ldr	ip, [r7, #552]	@ temp.1165, <variable>.ValidGroupNum
.L192:
	cmp	r4, ip	@ i.1154, temp.1165
	bge	.L215	@,
	add	r9, r4, #1	@ tmp277, i.1154,
	cmp	r9, #127	@ tmp277,
	bgt	.L215	@,
	add	r2, r4, #10	@ tmp278, i.1154,
	cmp	r4, #0	@ i.1154,
	mov	lr, r2, asl #2	@ tmp279, tmp278,
	add	r8, lr, r7	@ tmp280, tmp279, pRepairParam
	ldrh	r9, [lr, r7]	@ D.42613, <variable>.StartMbn
	ldrh	r2, [r8, #2]	@ D.42616, <variable>.EndMbn
	ble	.L190	@,
	add	r0, r7, r6, asl #2	@, tmp289, pRepairParam, i,
	ldrsh	r3, [r0, #42]	@ <variable>.EndMbn, <variable>.EndMbn
	adds	r1, r3, #7	@ tmp292, <variable>.EndMbn,
	addmi	r6, r3, #14	@, tmp294, <variable>.EndMbn,
	movpl	r6, r1	@, tmp294, tmp292
	bic	r3, r6, #7	@ front_EndMb, tmp294,
.L190:
	sxth	r9, r9	@ D.42613, D.42613
	sxth	r2, r2	@ D.42616, D.42616
	cmp	r9, #0	@ D.42613,
	add	r1, r9, #7	@ tmp300, D.42613,
	mov	r8, sl	@ actual_repairTime.1164, actual_repairTime
	movlt	r9, r1	@ D.42613, tmp300
	adds	r6, r2, #7	@ tmp304, D.42616,
	addmi	lr, r2, #14	@, tmp306, D.42616,
	movpl	lr, r6	@, tmp306, tmp304
	bic	r9, r9, #7	@ cur_StartMb, D.42613,
	bic	r2, lr, #7	@ cur_EndMb, tmp306,
	mov	r6, r4	@ i, i.1154
	b	.L188	@
.L215:
	ldr	r9, [sp, #4]	@ pMsgBase, %sfp
	ldr	r8, [r7, #568]	@ prephitmp.1112, <variable>.FullRepair
.L185:
	cmp	r8, #1	@ prephitmp.1112,
	beq	.L199	@,
.L187:
	sub	lr, sl, #1	@ tmp383, actual_repairTime,
	uxth	r1, lr	@ prephitmp.1110, tmp383
.L201:
	mov	r0, #0	@ tmp397,
	str	r0, [sp, #12]	@ tmp397, D32
	ldr	ip, [r7, #560]	@ <variable>.Compress_en, <variable>.Compress_en
	ldrb	r2, [sp, #14]	@ zero_extendqisi2	@,
	ldr	lr, [r7, #564]	@ <variable>.Pic_type, <variable>.Pic_type
	bfi	r2, ip, #0, #1	@ tmp399, <variable>.Compress_en,,
	strh	r1, [sp, #12]	@ movhi	@ prephitmp.1110, <variable>.total_grp_num_minus1
	uxtb	r3, r2	@ tmp402, tmp399
	bfi	r3, lr, #4, #2	@ tmp402, <variable>.Pic_type,,
	bfi	r3, lr, #6, #2	@ tmp405, <variable>.Pic_type,,
	strb	r3, [sp, #14]	@ tmp405,
	ldr	r1, [sp, #12]	@ D32.1203, D32
	str	r1, [r9, #28]	@ D32.1203,
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
	mvn	r0, #0	@ D.42562,
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
	mvn	r0, #0	@ D.42867,
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
	movw	r3, #:lower16:g_RepairParam	@ g_RepairParam.562,
	movt	r3, #:upper16:g_RepairParam	@ g_RepairParam.562,
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
	mov	r0, #0	@ D.42867,
	b	.L221	@
.L225:
	cmp	r2, #1	@ RepairTime,
	movne	r0, #0	@ D.42867,
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
	ldr	r3, [r2, #40]	@ D.42903, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.42903,
	beq	.L231	@,
	str	r1, [sp, #0]	@,
	mov	r0, #0	@,
	blx	r3	@ D.42903
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
	cmp	r0, #0	@ D.42873
	beq	.L230	@,
	str	r0, [r5, #0]	@ D.42873, <variable>.pVdmRegVirAddr
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
	bls	.L259	@,
.L260:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42385,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L259:
	beq	.L260	@,
	movw	r3, #:lower16:g_DSPState	@ tmp217,
	movt	r3, #:upper16:g_DSPState	@ tmp217,
	ldr	r2, [r3, #0]	@ g_DSPState, g_DSPState
	cmp	r2, #1	@ g_DSPState,
	beq	.L244	@,
	ldr	r0, [r3, #4]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	beq	.L244	@,
	ldr	r1, [r3, #8]	@ g_DSPState, g_DSPState
	cmp	r1, #1	@ g_DSPState,
	beq	.L244	@,
	ldr	r6, [r3, #12]	@ g_DSPState, g_DSPState
	cmp	r6, #1	@ g_DSPState,
	movne	r6, #0	@, LowdlyFlag
	moveq	r6, #1	@, LowdlyFlag
.L245:
	movw	r5, #:lower16:g_HwMem	@ tmp270,
	movt	r5, #:upper16:g_HwMem	@ tmp270,
	ldr	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ p32,
	beq	.L261	@,
.L246:
	ldr	r7, [r3, #12]	@ D.42403,
	movw	r4, #:lower16:g_BackUp	@ tmp271,
	movt	r4, #:upper16:g_BackUp	@ tmp271,
	cmp	r6, #1	@ LowdlyFlag,
	str	r7, [r4, #0]	@ D.42403, <variable>.BasicCfg1
	ldr	r7, [r3, #28]	@ D.42407,
	str	r7, [r4, #4]	@ D.42407, <variable>.VdmState
	beq	.L262	@,
	add	ip, r3, #4096	@ D.42434, D.42400,
	ldr	r1, [ip, #0]	@ D.42435,* D.42434
	str	r1, [r4, #16]	@ D.42435, <variable>.SedSta
	ldr	r5, [ip, #20]	@ D.42439,
	str	r5, [r4, #20]	@ D.42439, <variable>.SedEnd0
	ldr	r0, [r3, #208]	@ temp.1284,
	str	r0, [r4, #8]	@ temp.1284, <variable>.Mb0QpInCurrPic
	ldr	r2, [r3, #212]	@ temp.1287,
	str	r2, [r4, #12]	@ temp.1287, <variable>.SwitchRounding
	ldr	r7, [r3, #176]	@ D.42453,
	str	r7, [r4, #24]	@ D.42453, <variable>.DecCyclePerPic
	ldr	r1, [r3, #180]	@ D.42457,
	str	r1, [r4, #28]	@ D.42457, <variable>.RdBdwidthPerPic
	ldr	ip, [r3, #184]	@ D.42461,
	str	ip, [r4, #32]	@ D.42461, <variable>.WrBdWidthPerPic
	ldr	r5, [r3, #188]	@ D.42465,
	str	r5, [r4, #36]	@ D.42465, <variable>.RdReqPerPic
	ldr	r0, [r3, #192]	@ D.42469,
	str	r0, [r4, #40]	@ D.42469, <variable>.WrReqPerPic
.L252:
	add	r7, r3, #33024	@ tmp272, D.42400,
	movw	r1, #:lower16:g_BackUp	@ ivtmp.1282,
	add	r5, r7, #128	@ D.43963, tmp272,
	movt	r1, #:upper16:g_BackUp	@ ivtmp.1282,
	mov	r3, r7	@ ivtmp.1278, tmp272
.L253:
	mov	r2, r3	@ tmp274, ivtmp.1278
	add	r0, r1, #4	@ tmp273, ivtmp.1282,
	ldr	ip, [r2], #4	@ D.42475,
	str	ip, [r1, #52]	@ D.42475, <variable>.LumaHistorgam
	add	r1, r0, #4	@ ivtmp.1282, tmp273,
	ldr	ip, [r3, #4]	@ D.42475,
	add	r3, r2, #4	@ ivtmp.1278, tmp274,
	cmp	r3, r5	@ ivtmp.1278, D.43963
	str	ip, [r0, #52]	@ D.42475, <variable>.LumaHistorgam
	bne	.L253	@,
	cmp	r6, #0	@ LowdlyFlag,
	ldr	r2, [r4, #0]	@ <variable>.BasicCfg1, <variable>.BasicCfg1
	ldreq	r3, [r7, #128]	@ D.42481,
	and	r1, r2, #15	@ tmp261, <variable>.BasicCfg1,
	streq	r3, [r4, #48]	@ D.42481, <variable>.LumaSumLow
	ldreq	r3, [r7, #132]	@ D.42485,
	streq	r3, [r4, #44]	@ D.42485, <variable>.LumaSumHigh
	cmp	r1, #5	@ tmp261,
	movw	r3, #:lower16:g_BackUp	@ tmp260,
	movt	r3, #:upper16:g_BackUp	@ tmp260,
	moveq	r0, #0	@ D.42385,
	movne	r0, #0	@ D.42385,
	ldreq	r3, [r3, #12]	@ <variable>.SwitchRounding, <variable>.SwitchRounding
	ldrne	r3, [r3, #8]	@ <variable>.Mb0QpInCurrPic, <variable>.Mb0QpInCurrPic
	andeq	r3, r3, #1	@ tmp265, <variable>.SwitchRounding,
	andne	r3, r3, #31	@ tmp268, <variable>.Mb0QpInCurrPic,
	streq	r3, [r8, #0]	@ tmp265,* pMb0QpInCurrPic
	strne	r3, [r8, #0]	@ tmp268,* pMb0QpInCurrPic
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L262:
	ldr	r0, [r5, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ pMsgBase
	beq	.L260	@,
	bic	r2, r7, #-16777216	@ DecSliceNum, D.42407,
	bic	r7, r2, #16646144	@ DecSliceNum, DecSliceNum,
	sub	r3, r7, #1	@ tmp234, DecSliceNum,
	cmp	r3, #127	@ tmp234,
	subls	r3, r7, #-1073741823	@ tmp235, DecSliceNum,
	movls	r2, r7, asl #4	@ tmp237, DecSliceNum,
	movhi	r3, #0	@ prephitmp.1259,
	subls	r2, r2, #8	@ prephitmp.1261, tmp237,
	movls	r3, r3, asl #4	@ prephitmp.1259, tmp235,
	movhi	r2, #8	@ prephitmp.1261,
	ldr	r1, [r0, r3]	@ tmp239,* prephitmp.1259
	ldr	r3, [r5, #0]	@ D.42400, <variable>.pVdmRegVirAddr
	str	r1, [r4, #16]	@ tmp239, <variable>.SedSta
	ldr	lr, [r0, r2]	@ tmp241,* prephitmp.1261
	str	lr, [r4, #20]	@ tmp241, <variable>.SedEnd0
	ldr	ip, [r3, #208]	@ D.42443,
	str	ip, [r4, #8]	@ D.42443, <variable>.Mb0QpInCurrPic
	ldr	r5, [r3, #212]	@ D.42447,
	str	r5, [r4, #12]	@ D.42447, <variable>.SwitchRounding
	b	.L252	@
.L244:
	mov	r6, #1	@ LowdlyFlag,
	b	.L245	@
.L261:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L260	@,
	str	r3, [r5, #0]	@ p32, <variable>.pVdmRegVirAddr
	b	.L246	@
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
	bgt	.L278	@,
	bne	.L270	@,
	movw	r4, #:lower16:g_HwMem	@ tmp149,
	movt	r4, #:upper16:g_HwMem	@ tmp149,
	ldr	r3, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L279	@,
.L268:
	sub	r5, r5, #1	@ tmp145, reg_id,
	cmp	r5, #3	@ tmp145,
	ldrls	pc, [pc, r5, asl #2]	@ tmp145
	b	.L270	@
.L275:
	.word	.L271
	.word	.L272
	.word	.L273
	.word	.L274
.L270:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ dat,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L274:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #40	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L271:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #28	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L272:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #32	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L273:
	ldr	r1, [r4, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	mov	r2, #36	@ reg_type,
	ldr	r0, [r2, r1]	@ dat,* <variable>.pVdmRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L279:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	subs	r6, r0, #0	@ D.42272,
	strne	r6, [r4, #0]	@ D.42272, <variable>.pVdmRegVirAddr
	bne	.L268	@,
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@ dat, D.42272
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L278:
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
	bls	.L287	@,
.L285:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L287:
	beq	.L285	@,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L288	@,
.L284:
	mvn	r3, #1	@ tmp141,
	str	r3, [r0, #36]	@ tmp141,
	ldmfd	sp!, {r4, pc}	@
.L288:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L284	@,
	b	.L285	@
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
	bls	.L296	@,
.L294:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L296:
	beq	.L294	@,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L297	@,
.L293:
	mvn	r3, #0	@ tmp141,
	str	r3, [r0, #36]	@ tmp141,
	ldmfd	sp!, {r4, pc}	@
.L297:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L293	@,
	b	.L294	@
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
	bls	.L305	@,
.L303:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L305:
	beq	.L303	@,
	movw	r4, #:lower16:g_HwMem	@ tmp138,
	movt	r4, #:upper16:g_HwMem	@ tmp138,
	ldr	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	cmp	r0, #0	@ p32,
	beq	.L306	@,
.L302:
	mvn	r3, #0	@ tmp141,
	str	r3, [r0, #32]	@ tmp141,
	ldmfd	sp!, {r4, pc}	@
.L306:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	strne	r0, [r4, #0]	@ p32, <variable>.pVdmRegVirAddr
	bne	.L302	@,
	b	.L303	@
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
	beq	.L317	@,
	movw	r4, #:lower16:g_pstRegCrg	@ tmp154,
	movt	r4, #:upper16:g_pstRegCrg	@ tmp154,
	mov	r3, #0	@ i,
	movw	r0, #10000	@ tmp155,
	ldr	r2, [r4, #0]	@ g_pstRegCrg.510, g_pstRegCrg
	ldr	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	orr	r5, r5, #16	@ u32TmpValue, u32TmpValue,
	str	r5, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r4, #0]	@ prephitmp.1410, g_pstRegCrg
	b	.L310	@
.L318:
	ldr	lr, [r1, #372]	@ D.42175, <variable>.PERI_CRG93.u32
	add	r3, r3, #1	@ i, i,
	tst	lr, #1	@ D.42175,
	str	lr, [sp, #4]	@ D.42175, u32TmpValue_93.u32
	bne	.L309	@,
	add	r3, r3, #1	@ i, i,
	cmp	r3, r0	@ i, tmp155
	beq	.L311	@,
.L310:
	ldr	ip, [r1, #372]	@ D.42175, <variable>.PERI_CRG93.u32
	tst	ip, #1	@ D.42175,
	str	ip, [sp, #4]	@ D.42175, u32TmpValue_93.u32
	beq	.L318	@,
.L309:
	movw	r0, #8999	@ tmp152,
	cmp	r3, r0	@ i, tmp152
	bgt	.L311	@,
.L312:
	bfc	r5, #4, #1	@ u32TmpValue,,
	str	r5, [r1, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L311:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #0]	@ prephitmp.1410, g_pstRegCrg
	b	.L312	@
.L317:
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
	bne	.L334	@,
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L323	@,
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
	ldr	r2, [r5, #0]	@ prephitmp.1442, g_pstRegCrg
	b	.L326	@
.L336:
	ldr	ip, [r2, #372]	@ D.42153, <variable>.PERI_CRG93.u32
	tst	ip, #4	@ D.42153,
	str	ip, [sp, #4]	@ D.42153, u32TmpValue_93.u32
	bne	.L325	@,
	cmp	r4, r1	@ i, tmp164
	beq	.L335	@,
.L326:
	ldr	r0, [r2, #372]	@ D.42153, <variable>.PERI_CRG93.u32
	add	r4, r4, #1	@ tmp165, i,
	add	r4, r4, #1	@ i, tmp165,
	tst	r0, #4	@ D.42153,
	str	r0, [sp, #4]	@ D.42153, u32TmpValue_93.u32
	beq	.L336	@,
.L325:
	bfc	r7, #6, #1	@ u32TmpValue,,
	str	r7, [r2, #120]	@ u32TmpValue, <variable>.PERI_CRG30.u32
	ldr	r1, [r6, #0]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	str	r8, [r1, #36]	@ tmp,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L334:
	cmp	r4, #1	@ VdhId,
	beq	.L337	@,
.L323:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	vfmw_dprint_nothing	@
.L337:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	b	vfmw_dprint_nothing	@
.L335:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r5, #0]	@ prephitmp.1442, g_pstRegCrg
	b	.L325	@
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
	bls	.L344	@,
.L342:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L344:
	movw	r0, #:lower16:269680640	@,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp138,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp138,
	ldr	r3, [r3, #40]	@ D.41951, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.41951,
	beq	.L342	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.41951
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
	beq	.L370	@,
	movw	r1, #1140	@ tmp154,
	movw	r0, #:lower16:g_HwMem	@ tmp155,
	mul	r2, r1, r2	@ tmp153, tmp154, VdhId
	movt	r0, #:upper16:g_HwMem	@ tmp155,
	add	r7, r0, r2	@ pHwMem, tmp155, tmp153
	ldr	r3, [r0, r2]	@ <variable>.pVdmRegVirAddr, <variable>.pVdmRegVirAddr
	cmp	r3, #0	@ <variable>.pVdmRegVirAddr,
	beq	.L370	@,
	movw	r3, #:lower16:g_DSPState	@ tmp157,
	movt	r3, #:upper16:g_DSPState	@ tmp157,
	ldr	r8, [r3, #0]	@ g_DSPState, g_DSPState
	cmp	r8, #1	@ g_DSPState,
	beq	.L349	@,
	ldr	ip, [r3, #4]	@ g_DSPState, g_DSPState
	cmp	ip, #1	@ g_DSPState,
	beq	.L349	@,
	ldr	lr, [r3, #8]	@ g_DSPState, g_DSPState
	cmp	lr, #1	@ g_DSPState,
	beq	.L349	@,
	ldr	r0, [r3, #12]	@ g_DSPState, g_DSPState
	cmp	r0, #1	@ g_DSPState,
	movne	r8, #0	@, LowdlyFlag
	moveq	r8, #1	@, LowdlyFlag
.L350:
	mov	r0, r4	@, pDecReport
	mov	r1, #528	@,
	bl	__memzero	@
	movw	r3, #:lower16:g_BackUp	@ tmp245,
	movt	r3, #:upper16:g_BackUp	@ tmp245,
	mov	r1, #180	@ tmp170,
	ldr	r0, [r7, #24]	@ <variable>.VahbStride, <variable>.VahbStride
	mla	ip, r1, r6, r3	@ tmp171, tmp170, VdhId, tmp245
	str	r0, [r4, #4]	@ <variable>.VahbStride, <variable>.ImgStride
	ldr	r2, [ip, #4]	@ D.42792, <variable>.VdmState
	mov	r2, r2, lsr #17	@ tmp173, D.42792,
	and	r1, r2, #3	@ tmp174, tmp173,
	cmp	r1, #1	@ tmp174,
	moveq	r2, #0	@ prephitmp.1504,
	beq	.L352	@,
	eor	lr, r2, #1	@ tmp178, tmp173,
	and	r2, lr, #1	@ tmp180, tmp178,
	cmp	r5, #3	@ VidStd,
	orrne	r2, r2, #1	@,, prephitmp.1504, tmp180
.L352:
	str	r2, [r4, #0]	@ prephitmp.1504, <variable>.RetType
	mov	r2, #180	@ tmp186,
	mla	r2, r2, r6, r3	@ tmp187, tmp186, VdhId, tmp245
	cmp	r5, #0	@ VidStd,
	cmpne	r5, #15	@, VidStd,
	ldr	ip, [r2, #4]	@ <variable>.VdmState, <variable>.VdmState
	bic	r3, ip, #-16777216	@ D.42802, <variable>.VdmState,
	bic	r3, r3, #16646144	@ D.42802, D.42802,
	str	r3, [r4, #8]	@ D.42802, <variable>.DecSliceNum
	bne	.L353	@,
	cmp	r8, #1	@ LowdlyFlag,
	beq	.L371	@,
	movw	ip, #:lower16:g_not_allow_H264FullPictureRepair_flag	@ tmp212,
	movt	ip, #:upper16:g_not_allow_H264FullPictureRepair_flag	@ tmp212,
	ldrb	r1, [ip, #0]	@ zero_extendqisi2	@ g_not_allow_H264FullPictureRepair_flag, g_not_allow_H264FullPictureRepair_flag
	cmp	r1, #0	@ g_not_allow_H264FullPictureRepair_flag,
	beq	.L372	@,
.L353:
	cmp	r3, #128	@ D.42802,
	movhi	r3, #0	@ tmp228,
	strhi	r3, [r4, #8]	@ tmp228, <variable>.DecSliceNum
	ldr	r0, [r7, #28]	@, <variable>.MsgSlotAddr
	bl	MEM_Phy2Vir	@
	subs	r1, r0, #0	@ D.42829,
	beq	.L370	@,
	ldr	lr, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	movw	r5, #:lower16:g_UpMsg	@ tmp232,
	movt	r5, #:upper16:g_UpMsg	@ tmp232,
	add	r5, r5, r6, asl #11	@, tmp231, tmp232, VdhId,
	mov	r2, lr, asl #2	@, <variable>.DecSliceNum,
	mov	r0, r5	@, tmp231
	bl	VDMHAL_V200R004_ReadMsgSlot	@
	ldr	ip, [r4, #8]	@ temp.1537, <variable>.DecSliceNum
	cmp	ip, #0	@ temp.1537,
	beq	.L357	@,
	ldrh	r3, [r5, #4]	@, g_UpMsg
	mov	r0, #1	@ i,
	cmp	r0, ip	@ i, temp.1537
	sub	r2, ip, #1	@ tmp247, temp.1537,
	and	r2, r2, r0	@ tmp249, tmp247,
	strh	r3, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r4, #4	@ ivtmp.1525, pDecReport,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1522, tmp231,
	strh	r1, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	bcs	.L357	@,
	cmp	r2, #0	@ tmp249,
	beq	.L358	@,
	ldrh	r2, [r5, #4]	@, g_UpMsg
	mov	r0, #2	@ i,
	cmp	r0, ip	@ i, temp.1537
	strh	r2, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	ldrh	lr, [r5, #8]	@, g_UpMsg
	add	r5, r5, #16	@ ivtmp.1522, ivtmp.1522,
	strh	lr, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, r3, #4	@ ivtmp.1525, ivtmp.1525,
	bcs	.L357	@,
.L358:
	ldrh	lr, [r5, #4]	@, g_UpMsg
	add	r2, r5, #16	@ tmp250, ivtmp.1522,
	add	r0, r0, #2	@ i, i,
	cmp	r0, ip	@ i, temp.1537
	strh	lr, [r3, #12]	@ movhi	@, <variable>.SliceMbRange
	add	lr, r3, #4	@ tmp251, ivtmp.1525,
	ldrh	r1, [r5, #8]	@, g_UpMsg
	strh	r1, [r3, #14]	@ movhi	@, <variable>.SliceMbRange
	add	r3, lr, #4	@ ivtmp.1525, tmp251,
	ldrh	r5, [r2, #4]	@, g_UpMsg
	strh	r5, [lr, #12]	@ movhi	@, <variable>.SliceMbRange
	add	r5, r2, #16	@ ivtmp.1522, tmp250,
	ldrh	r1, [r2, #8]	@, g_UpMsg
	strh	r1, [lr, #14]	@ movhi	@, <variable>.SliceMbRange
	bcc	.L358	@,
.L357:
	mov	r0, #6	@,
	bl	IsDprintTypeEnable	@
	cmp	r0, #0	@ D.42843
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	mov	ip, r0, asl #2	@ tmp239, <variable>.DecSliceNum,
	cmp	ip, #3	@ tmp239,
	beq	.L360	@,
	mov	r5, #0	@ i_cnt,
.L361:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #8]	@ <variable>.DecSliceNum, <variable>.DecSliceNum
	add	r5, r5, #4	@ i_cnt, i_cnt,
	mov	r2, r1, asl #2	@ tmp241, <variable>.DecSliceNum,
	sub	r3, r2, #3	@ tmp243, tmp241,
	cmp	r3, r5	@ tmp243, i_cnt
	bhi	.L361	@,
.L360:
	bl	vfmw_dprint_nothing	@
	mov	r0, #0	@ D.42773,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L372:
	ldrb	r0, [r2, #19]	@ zero_extendqisi2	@ tmp220, <variable>.SedSta
	and	r2, r0, #3	@ tmp222, tmp220,
	cmp	r2, #2	@ tmp222,
	bne	.L353	@,
	mov	r3, #1	@ tmp223,
	strh	r1, [r4, #14]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	mov	r0, r1	@ D.42773, g_not_allow_H264FullPictureRepair_flag
	strh	r1, [r4, #12]	@ movhi	@ g_not_allow_H264FullPictureRepair_flag, <variable>.SliceMbRange
	str	r3, [r4, #8]	@ tmp223, <variable>.DecSliceNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L371:
	ldr	r1, [r2, #16]	@ <variable>.SedSta, <variable>.SedSta
	ubfx	r0, r1, #21, #2	@ tmp206, <variable>.SedSta,,
	cmp	r0, #2	@ tmp206,
	bne	.L353	@,
	mov	lr, #0	@ movhi	@,
	str	r8, [r4, #8]	@ LowdlyFlag, <variable>.DecSliceNum
	strh	lr, [r4, #14]	@ movhi	@, <variable>.SliceMbRange
	mov	r0, #0	@ D.42773,
	strh	lr, [r4, #12]	@ movhi	@, <variable>.SliceMbRange
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L349:
	mov	r8, #1	@ LowdlyFlag,
	b	.L350	@
.L370:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42773,
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
	beq	.L382	@,
	cmp	r0, #6	@ VidStd,
	movw	r6, #:lower16:s_RegPhyBaseAddr	@ tmp149,
	movt	r6, #:upper16:s_RegPhyBaseAddr	@ tmp149,
	moveq	r1, #1	@,
	movne	r1, #0	@,
	ldr	r0, [r6, #0]	@, s_RegPhyBaseAddr
	bl	MEM_WritePhyWord	@
	cmp	r7, #0	@ VdhId,
	bne	.L396	@,
	ldr	r0, [r6, #0]	@ s_RegPhyBaseAddr, s_RegPhyBaseAddr
	mov	r1, #1	@,
	add	r0, r0, #8	@, s_RegPhyBaseAddr,
	bl	MEM_WritePhyWord	@
.L380:
	cmp	r4, #13	@ VidStd,
	ldrls	pc, [pc, r4, asl #2]	@ VidStd
	b	.L382	@
.L393:
	.word	.L383
	.word	.L384
	.word	.L385
	.word	.L386
	.word	.L382
	.word	.L387
	.word	.L388
	.word	.L382
	.word	.L389
	.word	.L390
	.word	.L391
	.word	.L391
	.word	.L391
	.word	.L392
.L397:
	movw	r3, #:lower16:s_RegPhyBaseAddr_1	@ tmp145,
	movt	r3, #:upper16:s_RegPhyBaseAddr_1	@ tmp145,
	mov	r1, r7	@, VdhId
	ldr	r2, [r3, #0]	@ s_RegPhyBaseAddr_1, s_RegPhyBaseAddr_1
	add	r0, r2, #8	@, s_RegPhyBaseAddr_1,
	bl	MEM_WritePhyWord	@
	bl	vfmw_dprint_nothing	@
.L382:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L396:
	cmp	r7, #1	@ VdhId,
	beq	.L397	@,
	cmp	r7, #0	@ VdhId,
	ble	.L380	@,
	bl	vfmw_dprint_nothing	@
	b	.L382	@
.L392:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VP8HAL_V200R004_StartDec	@
.L383:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	H264HAL_V200R004_StartDec	@
.L384:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VC1HAL_V200R004_StartDec	@
.L385:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP4HAL_V200R004_StartDec	@
.L386:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	MP2HAL_V200R004_StartDec	@
.L387:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	DIVX3HAL_V200R004_StartDec	@
.L388:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	AVSHAL_V200R004_StartDec	@
.L389:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	RV8HAL_V200R004_StartDec	@
.L390:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	RV9HAL_V200R004_StartDec	@
.L391:
	mov	r0, r5	@, pDecParam
	mov	r1, r7	@, VdhId
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	VP6HAL_V200R004_StartDec	@
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
	beq	.L422	@,
	cmp	r3, #31	@ Height,
	movgt	r2, #0	@, tmp184
	movle	r2, #1	@, tmp184
	sub	r1, r4, #32	@ tmp179, Width,
	movw	r0, #8160	@ tmp181,
	cmp	r1, r0	@ tmp179, tmp181
	movls	r3, r2	@, tmp187, tmp184
	orrhi	r3, r2, #1	@,, tmp187, tmp184
	cmp	r3, #0	@ tmp187,
	bne	.L422	@,
	cmp	r6, #8192	@ Height,
	bgt	.L422	@,
	cmp	fp, #0	@ pVdmMemArrange,
	beq	.L422	@,
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
	movge	r9, #20	@ PmvNum.1620,
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
	mul	ip, r9, r6	@ tmp202, PmvNum.1620, PmvSlotLen
	cmp	ip, r8	@ tmp202, MemSize
	bge	.L422	@,
	mov	ip, r4, asl #4	@ tmp206, ImgWidthInMb,
	cmp	sl, #1	@ UserDec,
	add	r0, ip, #255	@ tmp207, tmp206,
	str	r9, [fp, #404]	@ PmvNum.1620, <variable>.ValidPMVNum
	mov	r9, r6, asr #1	@ tmp205, PmvSlotLen,
	str	r9, [fp, #400]	@ tmp205, <variable>.HafPmvOffset
	mov	r9, r2, asl #4	@ ImgHeightInPixAln, ImgHeightInMb,
	bic	r3, r0, #255	@ SlotWidth, tmp207,
	addeq	r2, r9, r2, asl #5	@, tmp211, ImgHeightInPixAln, ImgHeightInMb,
	mov	lr, r3, asl #4	@ tmp208, SlotWidth,
	str	lr, [fp, #0]	@ tmp208, <variable>.VahbStride
	muleq	r4, r3, r2	@ ImgSlotLen, SlotWidth, tmp211
	beq	.L411	@,
	adds	lr, r9, #31	@ tmp216, ImgHeightInPixAln,
	add	r0, r3, r3, asl #1	@, tmp214, SlotWidth, SlotWidth,
	addmi	lr, r9, #62	@, tmp218, ImgHeightInPixAln,
	mov	r2, r0, asl #5	@ tmp215, tmp214,
	mov	r4, lr, asr #5	@ tmp220, tmp218,
	mul	r1, r4, r2	@ tmp221, tmp220, tmp215
	mov	r4, r1, asr #1	@ ImgSlotLen, tmp221,
.L411:
	cmp	r5, #0	@ ChanID,
	blt	.L412	@,
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
	beq	.L422	@,
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
	beq	.L415	@,
	adds	lr, r2, #31	@ tmp241, ChanImgHeightInPixAln,
	addmi	ip, r2, #62	@, tmp243, ChanImgHeightInPixAln,
	movpl	ip, lr	@, tmp243, tmp241
	mov	r1, ip, asr #5	@ tmp245, tmp243,
	mul	lr, r1, r0	@ tmp246, tmp245, ChanSlotWidth
	add	r2, lr, lr, asl #1	@, tmp249, tmp246, tmp246,
	mov	ip, r2, asl #5	@ tmp250, tmp249,
	mov	r2, ip, asr #1	@ ChanSlotLen, tmp250,
.L415:
	cmp	r4, r2	@ ImgSlotLen, ChanSlotLen
	bgt	.L422	@,
.L412:
	adds	ip, r9, #31	@ tmp255, ImgHeightInPixAln,
	mov	r1, r3, asl #5	@ tmp254, SlotWidth,
	addmi	ip, r9, #62	@, tmp257, ImgHeightInPixAln,
	ldr	r0, [sp, #60]	@, FrameNum
	mov	r2, ip, asr #5	@ tmp259, tmp257,
	cmp	r0, #0	@,
	streq	r0, [fp, #276]	@, <variable>.ValidFrameNum
	mul	r3, r2, r1	@ tmp260, tmp259, tmp254
	str	r3, [fp, #264]	@ tmp260, <variable>.ChromOffset
	beq	.L422	@,
	add	sl, r7, #1020	@ tmp262, MemAddr,
	mov	r1, r4	@, ImgSlotLen
	add	r2, sl, #3	@ tmp262, tmp262,
	ldr	sl, [sp, #60]	@ D.42101, FrameNum
	bic	r3, r2, #1020	@ tmp264, tmp262,
	bic	r0, r3, #3	@ tmp264, tmp264,
	cmp	sl, #64	@ D.42101,
	movge	sl, #64	@ D.42101,
	rsb	lr, r7, r0	@, MemAddr, tmp264
	str	lr, [sp, #8]	@, %sfp
	rsb	r0, lr, r8	@,, MemSize
	bl	__aeabi_idiv	@
	cmp	sl, r0	@ D.42101,
	movlt	r0, sl	@ D.42101, D.42101
	movge	r0, r0	@ D.42101,
	str	r0, [fp, #276]	@ D.42101, <variable>.ValidFrameNum
	cmp	r0, #0	@ D.42101,
	beq	.L422	@,
	ble	.L419	@,
	ldr	ip, [sp, #8]	@, %sfp
	cmp	r0, #1	@ D.42101,
	sub	lr, r0, #1	@ tmp291, D.42101,
	add	r3, fp, #4	@ ivtmp.1614, pVdmMemArrange,
	add	r1, ip, r7	@ ivtmp.1610,, MemAddr
	and	ip, lr, #1	@ tmp293, tmp291,
	str	r1, [fp, #8]	@ ivtmp.1610, <variable>.FrameAddr
	add	r2, r1, r4	@ ivtmp.1610, ivtmp.1610, ImgSlotLen
	mov	r1, #1	@ i,
	ble	.L419	@,
	cmp	ip, #0	@ tmp293,
	beq	.L420	@,
	mov	r1, #2	@ i,
	cmp	r0, r1	@ D.42101, i
	str	r2, [r3, #8]	@ ivtmp.1610, <variable>.FrameAddr
	add	r2, r2, r4	@ ivtmp.1610, ivtmp.1610, ImgSlotLen
	add	r3, r3, #4	@ ivtmp.1614, ivtmp.1614,
	ble	.L419	@,
.L420:
	add	r1, r1, #2	@ i, i,
	add	lr, r3, #4	@ tmp295, ivtmp.1614,
	cmp	r0, r1	@ D.42101, i
	add	r7, r2, r4	@ ivtmp.1610, ivtmp.1610, ImgSlotLen
	str	r2, [r3, #8]	@ ivtmp.1610, <variable>.FrameAddr
	add	r2, r7, r4	@ ivtmp.1610, ivtmp.1610, ImgSlotLen
	str	r7, [lr, #8]	@ ivtmp.1610, <variable>.FrameAddr
	add	r3, lr, #4	@ ivtmp.1614, tmp295,
	bgt	.L420	@,
.L419:
	cmp	r5, #0	@ ChanID,
	blt	.L421	@,
	movw	r7, #:lower16:s_pstVfmwChan	@ tmp284,
	movt	r7, #:upper16:s_pstVfmwChan	@ tmp284,
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1584, s_pstVfmwChan
	cmp	r1, #0	@ prephitmp.1584,
	beq	.L421	@,
	ldr	r9, [fp, #404]	@ D.42116, <variable>.ValidPMVNum
	movw	ip, #:lower16:217504	@ tmp273,
	movt	ip, #:upper16:217504	@ tmp273,
	mul	r2, r9, r6	@ tmp272, D.42116, PmvSlotLen
	ldr	r3, [r1, ip]	@ <variable>.stChanMem_pmv.Length, <variable>.stChanMem_pmv.Length
	cmp	r2, r3	@ tmp272, <variable>.stChanMem_pmv.Length
	bgt	.L422	@,
	cmp	r9, #0	@ D.42116,
	ble	.L421	@,
	tst	r9, #1	@ D.42116,
	mov	r3, #0	@ ivtmp.1600,
	movw	r8, #:lower16:217500	@ tmp285,
	mov	r2, fp	@ ivtmp.1606, pVdmMemArrange
	movt	r8, #:upper16:217500	@ tmp285,
	mov	sl, r3	@ i.1625, ivtmp.1600
	beq	.L436	@,
	str	r4, [sp, #12]	@ ImgSlotLen, %sfp
	b	.L424	@
.L442:
	ldr	lr, [r7, r5, asl #2]	@ prephitmp.1584, s_pstVfmwChan
	ldr	r4, [lr, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	lr, ip, r4	@ tmp310, ivtmp.1600, <variable>.stChanMem_pmv.PhyAddr
	str	lr, [r1, #280]	@ tmp310, <variable>.PMVAddr
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1584, s_pstVfmwChan
.L424:
	ldr	r1, [r1, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	add	sl, sl, #1	@ tmp289, i.1625,
	cmp	r9, sl	@ D.42116, tmp289
	add	ip, r3, r6	@ ivtmp.1600, ivtmp.1600, PmvSlotLen
	add	r4, r3, r1	@ tmp277, ivtmp.1600, <variable>.stChanMem_pmv.PhyAddr
	add	r1, r2, #4	@ tmp290, ivtmp.1606,
	str	r4, [r2, #280]	@ tmp277, <variable>.PMVAddr
	add	sl, sl, #1	@ i.1625, tmp289,
	add	r3, ip, r6	@ ivtmp.1600, ivtmp.1600, PmvSlotLen
	add	r2, r1, #4	@ ivtmp.1606, tmp290,
	bgt	.L442	@,
	ldr	r4, [sp, #12]	@ ImgSlotLen, %sfp
.L421:
	ldr	ip, [sp, #8]	@, %sfp
	mov	r2, #1024	@ tmp281,
	str	r4, [fp, #408]	@ ImgSlotLen, <variable>.ImgSlotLen
	str	r2, [fp, #412]	@ tmp281, <variable>.u32StrideByte
	mla	r3, r0, r4, ip	@ tmp280, D.42101, ImgSlotLen,
	mov	r0, #0	@ D.42020,
	str	r3, [fp, #4]	@ tmp280, <variable>.TotalMemUsed
.L400:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L436:
	ldr	r1, [r1, r8]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.stChanMem_pmv.PhyAddr
	mov	sl, #1	@ i.1625,
	mov	r3, r6	@ ivtmp.1600, PmvSlotLen
	add	r2, fp, #4	@ ivtmp.1606, pVdmMemArrange,
	str	r1, [fp, #280]	@ <variable>.stChanMem_pmv.PhyAddr, <variable>.PMVAddr
	str	r4, [sp, #12]	@ ImgSlotLen, %sfp
	ldr	r1, [r7, r5, asl #2]	@ prephitmp.1584, s_pstVfmwChan
	b	.L424	@
.L422:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.42020,
	b	.L400	@
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
	ble	.L457	@,
	cmp	r2, #1	@ VdhId,
	bls	.L456	@,
.L457:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L456:
	beq	.L457	@,
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
	bic	r2, r3, #1020	@ D.41923, tmp171,
	mov	r3, r7	@ ivtmp.1660, tmp203
	bic	r2, r2, #3	@ D.41923, D.41923,
	str	r1, [r7, #24]	@ tmp179, <variable>.VahbStride
	rsb	r0, r2, ip	@ tmp177, D.41923, tmp176
	str	r2, [r7, #16]	@ D.41923, <variable>.HALMemBaseAddr
	str	r0, [r7, #20]	@ tmp177, <variable>.HALMemSize
.L449:
	add	r0, r6, #1024	@ tmp204, ivtmp.1657,
	add	lr, r6, r2	@ tmp181, ivtmp.1657, D.41923
	add	r6, r6, #3072	@ ivtmp.1657, ivtmp.1657,
	add	r1, r3, #4	@ tmp205, ivtmp.1660,
	cmp	r6, #144384	@ ivtmp.1657,
	add	ip, r0, #1024	@ ivtmp.1657, tmp204,
	str	lr, [r3, #28]	@ tmp181, <variable>.MsgSlotAddr
	add	ip, ip, r2	@ tmp211, ivtmp.1657, D.41923
	add	lr, r0, r2	@ tmp208, tmp204, D.41923
	str	ip, [r1, #32]	@ tmp211, <variable>.MsgSlotAddr
	add	r3, r3, #12	@ ivtmp.1660, ivtmp.1660,
	str	lr, [r1, #28]	@ tmp208, <variable>.MsgSlotAddr
	bne	.L449	@,
	add	ip, r2, #144384	@ PhyAddr.1661, D.41923,
	rsb	r1, r4, #32768	@ tmp198, MemBaseAddr,
	add	r3, ip, #299008	@ PhyAddr.1667, PhyAddr.1661,
	movw	r2, #799	@ tmp194,
	add	lr, r3, #3072	@ PhyAddr.1668, PhyAddr.1667,
	str	r3, [r7, #1112]	@ PhyAddr.1667, <variable>.IntensityConvTabAddr
	add	r0, r1, lr	@ tmp199, tmp198, PhyAddr.1668
	mov	r3, #141	@ tmp183,
	cmp	r5, r0	@ Size, tmp199
	add	r1, ip, #83968	@ PhyAddr.1664, PhyAddr.1661,
	str	lr, [r7, #1116]	@ PhyAddr.1668, <variable>.VpTabAddr
	add	r0, ip, #38912	@ PhyAddr.1663, PhyAddr.1661,
	str	lr, [r7, #1120]	@ PhyAddr.1668, <variable>.DnrMbInfoAddr
	add	lr, ip, #5120	@ PhyAddr.1662, PhyAddr.1661,
	str	r1, [r7, #1092]	@ PhyAddr.1664, <variable>.ItransTopAddr
	str	r1, [r7, #1088]	@ PhyAddr.1664, <variable>.RcnTopAddr
	add	r1, ip, #129024	@ PhyAddr.1665, PhyAddr.1661,
	str	r3, [r7, #1052]	@ tmp183, <variable>.ValidMsgSlotNum
	add	r3, ip, #196608	@ PhyAddr.1666, PhyAddr.1661,
	str	ip, [r7, #1076]	@ PhyAddr.1661, <variable>.H264MnAddr
	str	lr, [r7, #1080]	@ PhyAddr.1662, <variable>.SedTopAddr
	str	r0, [r7, #1084]	@ PhyAddr.1663, <variable>.PmvTopAddr
	str	r1, [r7, #1096]	@ PhyAddr.1665, <variable>.DblkTopAddr
	str	r3, [r7, #1100]	@ PhyAddr.1666, <variable>.PpfdBufAddr
	str	r2, [r7, #1104]	@ tmp194, <variable>.PpfdBufLen
	blt	.L450	@,
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:g_HwMem	@,
	movt	r0, #:upper16:g_HwMem	@,
	bl	H264HAL_V200R004_InitHal	@
	cmp	r0, #0	@ D.41936
	mvnne	r0, #0	@, Ret,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L450:
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
