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
	.file	"syntax.c"
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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(syntax)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.syntax.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.o
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
	.global	ProduceTimeStamp
	.type	ProduceTimeStamp, %function
ProduceTimeStamp:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #18	@ eVidStd,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9}	@,
	.save {r4, r5, r6, r7, r8, r9}
	ldrd	r4, [r1, #8]	@ ThisFramePts, p_image,
	beq	.L2	@,
	mov	r3, #328	@ tmp140,
	mov	r8, r4	@ tmp141, ThisFramePts
	ldrd	r6, [r0, r3]	@ D.37883, pstVoQue, tmp140
	mov	r9, r5	@, ThisFramePts
	subs	r8, r8, r6	@ tmp141, tmp141, D.37883
	sbc	r9, r9, r7	@ tmp141, tmp141, D.37883
	cmp	r9, #0	@ tmp141,
	cmpeq	r8, #5	@ tmp141,
	bhi	.L3	@,
	mvn	r8, #0	@ tmp142,
	mvn	r9, #0	@,
	cmp	r7, r9	@ D.37883, tmp142
	cmpeq	r6, r8	@ D.37883, tmp142
	beq	.L3	@,
	sub	r3, r2, #8	@ tmp146, eVidStd,
	cmp	r3, #1	@ tmp146,
	movhi	r1, r9	@ InferedPTS,
	movhi	r0, r8	@ InferedPTS, tmp154
	bhi	.L6	@,
.L5:
	mvn	r4, #0	@ tmp147,
	mvn	r5, #0	@,
	mov	r0, r4	@ InferedPTS, tmp155
	strd	r4, [r1]	@ tmp147, <variable>.SrcPts
	mov	r1, r5	@ InferedPTS,
	b	.L6	@
.L3:
	sub	r2, r2, #8	@ tmp143, eVidStd,
	cmp	r2, #1	@ tmp143,
	bls	.L9	@,
.L2:
	mov	r1, r5	@ InferedPTS,
	mov	r0, r4	@ InferedPTS, tmp156
.L6:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9}
	bx	lr
.L9:
	ldr	ip, [r1, #140]	@ <variable>.format, <variable>.format
	and	r0, ip, #3	@ tmp144, <variable>.format,
	cmp	r0, #2	@ tmp144,
	bne	.L2	@,
	b	.L5	@
	.fnend
	.size	ProduceTimeStamp, .-ProduceTimeStamp
	.align	2
	.global	GetQueueImgNum
	.type	GetQueueImgNum, %function
GetQueueImgNum:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldrh	r3, [r0, #6]	@ D.38054, <variable>.head
	ldrh	ip, [r0, #4]	@ D.38055, <variable>.history
	ldrh	r0, [r0, #8]	@ D.38063, <variable>.tail
	cmp	r3, ip	@ D.38054, D.38055
	addcc	r4, r3, #64	@ tmp142, D.38054,
	rsbcs	ip, ip, r3	@ ReadNum, D.38055, D.38054
	rsbcc	ip, ip, r4	@ ReadNum, D.38055, tmp142
	cmp	r3, r0	@ D.38054, D.38063
	addhi	r0, r0, #64	@ tmp143, D.38063,
	str	ip, [r1, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r3, r0	@ NewNum, D.38054, tmp143
	str	r3, [r2, #0]	@ NewNum,* pNewImgNum
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	GetQueueImgNum, .-GetQueueImgNum
	.align	2
	.global	OpenUsdPool_WithMem
	.type	OpenUsdPool_WithMem, %function
OpenUsdPool_WithMem:
	.fnstart
.LFB1930:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	ip, [r3, r0, asl #2]	@ D.39215, pstVdecUsdPool
	cmp	ip, #0	@ D.39215,
	beq	.L24	@,
.L18:
	mov	r1, #0	@ tmp174,
	mov	r3, ip	@ ivtmp.693, D.39215
	mov	r2, r1	@ i, tmp174
	mov	r0, r1	@ tmp178, i
	str	r1, [ip, #0]	@ tmp174, <variable>.s32AccessIdx
.L20:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp180, ivtmp.693,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp178, <variable>.from
	str	r0, [r3, #1040]	@ tmp178, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.693, ivtmp.693,
	str	r0, [ip, #1040]	@ tmp178, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp178, <variable>.from
	bne	.L20	@,
	bx	lr	@
.L24:
	cmp	r1, #0	@ D.39215,
	str	r1, [r3, r0, asl #2]	@ D.39215, pstVdecUsdPool
	mov	ip, r1	@ D.39215, Viraddr
	mvneq	r0, #0	@ ret,
	bxeq	lr	@
	b	.L18	@
	.fnend
	.size	OpenUsdPool_WithMem, .-OpenUsdPool_WithMem
	.align	2
	.global	CloseUsdPool_WithMem
	.type	CloseUsdPool_WithMem, %function
CloseUsdPool_WithMem:
	.fnstart
.LFB1931:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	ldr	r2, [r3, r0, asl #2]	@ tmp135, pstVdecUsdPool
	cmp	r2, #0	@ tmp135,
	movne	r2, #0	@ tmp137,
	strne	r2, [r3, r0, asl #2]	@ tmp137, pstVdecUsdPool
	bx	lr	@
	.fnend
	.size	CloseUsdPool_WithMem, .-CloseUsdPool_WithMem
	.align	2
	.global	InitUsdPool
	.type	InitUsdPool, %function
InitUsdPool:
	.fnstart
.LFB1932:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r1, [r3, r0, asl #2]	@ D.39092, pstVdecUsdPool
	cmp	r1, #0	@ D.39092,
	mvneq	r0, #0	@ D.39096,
	bxeq	lr	@
	mov	r0, #0	@ tmp140,
	mov	r3, r1	@ ivtmp.750, D.39092
	mov	r2, r0	@ i, tmp140
	str	r0, [r1, #0]	@ tmp140, <variable>.s32AccessIdx
.L31:
	add	r2, r2, #2	@ i, i,
	add	r1, r3, #1072	@ tmp145, ivtmp.750,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp144, <variable>.from
	str	r0, [r3, #1040]	@ tmp144, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.750, ivtmp.750,
	str	r0, [r1, #1040]	@ tmp144, <variable>.dnr_used_flag
	str	r0, [r1, #1044]	@ tmp144, <variable>.from
	bne	.L31	@,
	bx	lr	@
	.fnend
	.size	InitUsdPool, .-InitUsdPool
	.align	2
	.global	GetUsd
	.type	GetUsd, %function
GetUsd:
	.fnstart
.LFB1933:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r0, [r3, r0, asl #2]	@ D.39107, pstVdecUsdPool
	cmp	r0, #0	@ D.39107,
	bne	.L46	@,
.L36:
	mov	r0, #0	@ pstUsrDat,
.L38:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L46:
	mov	r2, r0	@ ivtmp.783, D.39107
	mov	r3, #0	@ i,
	b	.L39	@
.L37:
	ldr	r2, [r1, #1044]	@ <variable>.from, <variable>.from
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.from,
	mov	ip, r3	@ tmp203, i
	bne	.L42	@,
	ldr	r2, [r1, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	beq	.L45	@,
.L42:
	add	r3, ip, #1	@ i, tmp203,
	add	r2, r1, #1072	@ ivtmp.783, tmp204,
	cmp	r3, #192	@ i,
	beq	.L36	@,
.L39:
	ldr	ip, [r2, #1044]	@ <variable>.from, <variable>.from
	add	r1, r2, #1072	@ tmp204, ivtmp.783,
	cmp	ip, #0	@ <variable>.from,
	bne	.L37	@,
	ldr	r2, [r2, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	bne	.L37	@,
.L45:
	mov	r1, #1072	@ tmp150,
	mov	r5, #134	@ tmp145,
	mla	ip, r3, r1, r1	@ tmp179, i, tmp150, tmp150
	mul	r4, r5, r3	@ tmp144, tmp145, i
	mla	r3, r1, r3, r0	@ tmp151, tmp150, i, D.39107
	add	r5, ip, r0	@ tmp181, tmp179, D.39107
	add	r4, r4, #1	@ tmp146, tmp144,
	movw	r1, #1064	@ tmp154,
	strb	r2, [ip, r0]	@ <variable>.dnr_used_flag, <variable>.IsRegistered
	strh	r2, [r5, #4]	@ movhi	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_provider_code
	add	r0, r0, r4, asl #3	@, pstUsrDat, D.39107, tmp146,
	strb	r2, [r5, #1]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code
	mov	r4, #0	@ tmp159,
	strb	r2, [r5, #2]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code_extension_byte
	mov	r5, #0	@,
	str	r2, [r3, #1048]	@ <variable>.dnr_used_flag, <variable>.seq_cnt
	strd	r4, [r3, r1]	@ tmp159, tmp151, tmp154
	str	r2, [r3, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	str	r2, [r3, #1056]	@ <variable>.dnr_used_flag, <variable>.data_size
	str	r2, [r3, #1052]	@ <variable>.dnr_used_flag, <variable>.seq_img_cnt
	b	.L38	@
	.fnend
	.size	GetUsd, .-GetUsd
	.align	2
	.global	FreeUsdByDec
	.type	FreeUsdByDec, %function
FreeUsdByDec:
	.fnstart
.LFB1934:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pUsrdat
	movne	r3, #0	@ tmp135,
	strne	r3, [r1, #1036]	@ tmp135, <variable>.from
	bx	lr	@
	.fnend
	.size	FreeUsdByDec, .-FreeUsdByDec
	.align	2
	.global	MarkUsdByDnr
	.type	MarkUsdByDnr, %function
MarkUsdByDnr:
	.fnstart
.LFB1935:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pUsrdat
	movne	r3, #1	@ tmp135,
	strne	r3, [r1, #1032]	@ tmp135, <variable>.dnr_used_flag
	bx	lr	@
	.fnend
	.size	MarkUsdByDnr, .-MarkUsdByDnr
	.align	2
	.global	UnMarkUsdByDnr
	.type	UnMarkUsdByDnr, %function
UnMarkUsdByDnr:
	.fnstart
.LFB1936:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pUsrdat
	movne	r3, #0	@ tmp135,
	strne	r3, [r1, #1032]	@ tmp135, <variable>.dnr_used_flag
	bx	lr	@
	.fnend
	.size	UnMarkUsdByDnr, .-UnMarkUsdByDnr
	.align	2
	.global	GetVoLastImageID
	.type	GetVoLastImageID, %function
GetVoLastImageID:
	.fnstart
.LFB1939:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #296]	@ D.39181, <variable>.SideInfo.LastImageIdPlus2
	cmp	r0, #1	@ D.39181,
	mvnls	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.align	2
	.global	SetAspectRatio
	.type	SetAspectRatio, %function
SetAspectRatio:
	.fnstart
.LFB1938:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #5	@ Code,
	ldrls	pc, [pc, r1, asl #2]	@ Code
	b	.L60	@
.L67:
	.word	.L61
	.word	.L62
	.word	.L63
	.word	.L64
	.word	.L65
	.word	.L66
.L66:
	mov	ip, #0	@ tmp145,
	mov	r2, #2	@ tmp146,
	str	ip, [r0, #60]	@ tmp145, <variable>.u32AspectWidth
	str	r2, [r0, #64]	@ tmp146, <variable>.u32AspectHeight
	bx	lr	@
.L60:
	mov	r1, #0	@ tmp147,
	mov	r3, #1	@ tmp148,
	str	r1, [r0, #60]	@ tmp147, <variable>.u32AspectWidth
	str	r3, [r0, #64]	@ tmp148, <variable>.u32AspectHeight
	b	vfmw_dprint_nothing	@
.L61:
	mov	r1, #0	@ tmp135,
	mov	r3, #1	@ tmp136,
	str	r1, [r0, #60]	@ tmp135, <variable>.u32AspectWidth
	str	r3, [r0, #64]	@ tmp136, <variable>.u32AspectHeight
	bx	lr	@
.L62:
	mov	ip, #4	@ tmp137,
	mov	r2, #3	@ tmp138,
	str	ip, [r0, #60]	@ tmp137, <variable>.u32AspectWidth
	str	r2, [r0, #64]	@ tmp138, <variable>.u32AspectHeight
	bx	lr	@
.L63:
	mov	r1, #16	@ tmp139,
	mov	r3, #9	@ tmp140,
	str	r1, [r0, #60]	@ tmp139, <variable>.u32AspectWidth
	str	r3, [r0, #64]	@ tmp140, <variable>.u32AspectHeight
	bx	lr	@
.L64:
	mov	ip, #221	@ tmp141,
	mov	r2, #100	@ tmp142,
	str	ip, [r0, #60]	@ tmp141, <variable>.u32AspectWidth
	str	r2, [r0, #64]	@ tmp142, <variable>.u32AspectHeight
	bx	lr	@
.L65:
	mov	r1, #235	@ tmp143,
	mov	r3, #100	@ tmp144,
	str	r1, [r0, #60]	@ tmp143, <variable>.u32AspectWidth
	str	r3, [r0, #64]	@ tmp144, <variable>.u32AspectHeight
	bx	lr	@
	.fnend
	.size	SetAspectRatio, .-SetAspectRatio
	.align	2
	.global	IsImageInVoQueue
	.type	IsImageInVoQueue, %function
IsImageInVoQueue:
	.fnstart
.LFB1937:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_image
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L79	@,
	ldrh	r3, [r0, #4]	@ i, <variable>.history
	ldrh	r4, [r0, #8]	@ D.39152, <variable>.tail
	and	r3, r3, #63	@ i.923, i,
	cmp	r4, r3	@ D.39152, i.923
	bne	.L77	@,
	b	.L73	@
.L74:
	cmp	r3, r4	@ i.923, D.39152
	beq	.L73	@,
.L77:
	add	r2, r0, r3, asl #2	@, tmp145, pstVoQue, i.923,
	add	ip, r3, #1	@ i.924, i.923,
	and	r3, ip, #63	@ i.923, i.924,
	ldr	r2, [r2, #12]	@ D.39155, <variable>.image_ptr
	cmp	r2, #0	@ D.39155,
	beq	.L74	@,
	ldr	ip, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L74	@,
	mov	r0, #0	@ D.39149,
	ldmfd	sp!, {r4, pc}	@
.L73:
	mvn	r0, #0	@ D.39149,
	ldmfd	sp!, {r4, pc}	@
.L79:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39149,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	IsImageInVoQueue, .-IsImageInVoQueue
	.align	2
	.global	IsNewpicSeg
	.type	IsNewpicSeg, %function
IsNewpicSeg:
	.fnstart
.LFB1929:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2	@ VidStd,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r2, #0]	@ pu8, <variable>.VirAddr
	beq	.L109	@,
.L81:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ tmp155,* pu8
	cmp	r2, #0	@ tmp155,
	bne	.L83	@,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp156,
	cmp	ip, #0	@ tmp156,
	bne	.L83	@,
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ tmp157,
	cmp	r2, #1	@ tmp157,
	beq	.L84	@,
.L83:
	bl	vfmw_dprint_nothing	@
	mvn	r2, #0	@ ret,
.L85:
	mov	r0, r2	@, ret
	ldmfd	sp!, {r3, pc}	@
.L109:
	ldrb	r2, [r2, #72]	@ zero_extendqisi2	@ tmp151,
	tst	r2, #1	@ tmp151,
	movne	r2, #1	@ IsShortHead,
	beq	.L81	@,
.L82:
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ tmp210,
	add	ip, r1, #75	@ tmp168, tmp210,
	uxtb	ip, ip	@ tmp170, tmp168
	cmp	r1, #179	@ tmp210,
	cmpne	ip, #1	@, tmp170,
	bls	.L96	@,
	cmp	r1, #176	@ tmp210,
	beq	.L96	@,
	cmp	r1, #47	@ tmp210,
	bls	.L96	@,
.L97:
	cmp	r2, #1	@ IsShortHead,
	mvnne	r2, #0	@ ret,
	beq	.L98	@,
.L99:
	cmp	r1, #182	@ tmp210,
	bne	.L85	@,
.L108:
	mov	r3, #0	@ tmp208,
	str	r3, [r0, #0]	@ tmp208,* pNewPicDetector
	b	.L85	@
.L84:
	cmp	r1, #6	@ VidStd,
	ldrls	pc, [pc, r1, asl #2]	@ VidStd
	b	.L86	@
.L92:
	.word	.L87
	.word	.L88
	.word	.L89
	.word	.L90
	.word	.L86
	.word	.L86
	.word	.L91
.L87:
	mov	r1, r3	@, pu8
	bl	H264_IsNewPicNal	@
	subs	r2, r0, #0	@ D.39002,
	beq	.L85	@,
.L86:
	mvn	r2, #0	@ ret,
	b	.L85	@
.L91:
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ tmp212,
	cmp	r1, #176	@ tmp212,
	cmpne	r1, #179	@, tmp212,
	beq	.L100	@,
	cmp	r1, #182	@ tmp212,
	beq	.L100	@,
	cmp	r1, #183	@ tmp212,
	beq	.L100	@,
.L101:
	mvn	r2, #0	@ ret,
.L102:
	cmp	r1, #179	@ tmp212,
	cmpne	r1, #182	@, tmp212,
	bne	.L85	@,
	b	.L108	@
.L90:
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ prephitmp.939,
	cmp	r1, #0	@ prephitmp.939,
	cmpne	r1, #179	@, prephitmp.939,
	beq	.L93	@,
	cmp	r1, #184	@ prephitmp.939,
	beq	.L93	@,
	cmp	r1, #183	@ prephitmp.939,
	bne	.L86	@,
.L93:
	ldr	r2, [r0, #0]	@ tmp165,* pNewPicDetector
	cmp	r2, #0	@ tmp165,
	moveq	r1, #1	@ tmp166,
	streq	r1, [r0, #0]	@ tmp166,* pNewPicDetector
	ldreqb	r1, [r3, #3]	@ zero_extendqisi2	@ prephitmp.939,
	mvnne	r2, #0	@ ret,
	cmp	r1, #0	@ prephitmp.939,
	streq	r1, [r0, #0]	@ prephitmp.939,* pNewPicDetector
	b	.L85	@
.L88:
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ tmp213,
	cmp	r1, #10	@ tmp213,
	cmpne	r1, #12	@, tmp213,
	beq	.L103	@,
	cmp	r1, #13	@ tmp213,
	beq	.L103	@,
	cmp	r1, #14	@ tmp213,
	beq	.L103	@,
	cmp	r1, #15	@ tmp213,
	bne	.L86	@,
.L103:
	ldr	r2, [r0, #0]	@ tmp205,* pNewPicDetector
	cmp	r2, #0	@ tmp205,
	moveq	r1, #1	@ tmp206,
	streq	r1, [r0, #0]	@ tmp206,* pNewPicDetector
	ldreqb	r1, [r3, #3]	@ zero_extendqisi2	@ tmp213,
	mvnne	r2, #0	@ ret,
	cmp	r1, #13	@ tmp213,
	bne	.L85	@,
	b	.L108	@
.L89:
	mov	r2, #0	@ IsShortHead,
	b	.L82	@
.L100:
	ldr	r2, [r0, #0]	@ tmp188,* pNewPicDetector
	cmp	r2, #0	@ tmp188,
	bne	.L101	@,
	mov	ip, #1	@ tmp189,
	str	ip, [r0, #0]	@ tmp189,* pNewPicDetector
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ tmp212,
	b	.L102	@
.L96:
	ldr	ip, [r0, #0]	@ tmp177,* pNewPicDetector
	cmp	ip, #0	@ tmp177,
	bne	.L97	@,
.L98:
	mov	r1, #1	@ tmp178,
	mov	r2, #0	@ ret,
	str	r1, [r0, #0]	@ tmp178,* pNewPicDetector
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ tmp210,
	b	.L99	@
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
.LFB1927:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pCtx, pCtx
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L111	@
.L120:
	.word	.L128
	.word	.L128
	.word	.L113
	.word	.L128
	.word	.L111
	.word	.L114
	.word	.L111
	.word	.L111
	.word	.L116
	.word	.L117
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L119
.L111:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L116:
	ldr	r5, [r1, #0]	@ D.38829, <variable>.pstExtraData
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L132	@,
.L127:
	add	r0, r5, #224	@, D.38869,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L119:
	ldr	r5, [r1, #0]	@ D.38859, <variable>.pstExtraData
	movw	r3, #8520	@ tmp174,
.L131:
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r3]	@,
	bl	SM_ReleaseStreamSeg	@
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L127	@,
	bl	vfmw_dprint_nothing	@
	b	.L127	@
.L128:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L113:
	movw	r0, #22060	@ tmp147,
	ldr	r5, [r1, r0]	@ D.38811, <variable>.pstExtraData
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L133	@,
	movw	r6, #22960	@ tmp152,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #320]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L127	@
.L118:
	ldr	r5, [r1, #0]	@ D.38869, <variable>.pstExtraData
	movw	r3, #13000	@ tmp179,
	b	.L131	@
.L114:
	ldr	r5, [r1, #0]	@ D.38849, <variable>.pstExtraData
	ldrb	r0, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L127	@,
	movw	r2, #26992	@ tmp170,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L127	@
.L117:
	ldr	r5, [r1, #0]	@ D.38839, <variable>.pstExtraData
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	bne	.L127	@,
	movw	lr, #39304	@ tmp165,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L127	@
.L133:
	movw	r2, #22960	@ tmp149,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L127	@
.L132:
	movw	ip, #39320	@ tmp160,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, ip]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L127	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pCtx, pCtx
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L135	@
.L146:
	.word	.L136
	.word	.L137
	.word	.L138
	.word	.L139
	.word	.L135
	.word	.L140
	.word	.L141
	.word	.L135
	.word	.L142
	.word	.L143
	.word	.L144
	.word	.L144
	.word	.L144
	.word	.L145
.L145:
	ldr	r5, [r1, #0]	@ D.38952, <variable>.pstExtraData
	movw	r3, #8520	@ tmp166,
.L155:
	ldr	r0, [r4, r3]	@,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r0, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	beq	.L151	@,
	bl	vfmw_dprint_nothing	@
.L151:
	add	r0, r5, #224	@, D.38962,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L135:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L136:
	mov	r0, r1	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	H264_ClearCurrPic	@
.L137:
	movw	r3, #:lower16:113720	@ tmp164,
	movt	r3, #:upper16:113720	@ tmp164,
	add	r2, r1, #77824	@, pCtx,
	add	r0, r2, #448	@,,
	ldr	r1, [r1, r3]	@, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VC1_ClearCurPic	@
.L138:
	mov	r0, r1	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MP4_Clean_HeadPacket	@
.L139:
	mov	r0, r1	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MP2_ClearCurPic	@
.L140:
	ldr	r5, [r1, #0]	@ D.38939, <variable>.pstExtraData
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	bne	.L151	@,
	movw	lr, #26992	@ tmp158,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, lr]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L151	@
.L141:
	mov	r0, r1	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_ClearCurPic	@
.L142:
	ldr	r5, [r1, #0]	@ D.38917, <variable>.pstExtraData
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	bne	.L151	@,
	movw	r2, #39320	@ tmp148,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L151	@
.L143:
	ldr	r5, [r1, #0]	@ D.38929, <variable>.pstExtraData
	ldrb	r0, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r0, #1	@ <variable>.IsLastSeg,
	bne	.L151	@,
	movw	ip, #39304	@ tmp153,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, ip]	@,
	bl	SM_ReleaseStreamSeg	@
	b	.L151	@
.L144:
	ldr	r5, [r1, #0]	@ D.38962, <variable>.pstExtraData
	movw	r3, #13000	@ tmp171,
	b	.L155	@
	.fnend
	.size	ReleaseCurPic, .-ReleaseCurPic
	.align	2
	.global	SegMan
	.type	SegMan, %function
SegMan:
	.fnstart
.LFB1926:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r1, #0	@ pSegMan, pSegMan
	mov	r6, r0	@ ChanID, ChanID
	beq	.L157	@,
	ldr	r3, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	cmp	r3, #0	@ <variable>.CurrSeg.VirAddr,
	beq	.L157	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.38703, <variable>.CurrSeg.IsLastSeg
	cmp	r5, #1	@ D.38703,
	beq	.L169	@,
	cmp	r5, #0	@ D.38703,
	beq	.L170	@,
.L162:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L170:
	add	r8, r4, #88	@ temp.1048, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, temp.1048
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.ConvolutionPacketNum, <variable>.ConvolutionPacketNum
	add	r1, r2, #1	@ tmp162, <variable>.ConvolutionPacketNum,
	uxtb	r0, r1	@ D.38721, tmp162
	strb	r0, [r4, #2]	@ D.38721, <variable>.ConvolutionPacketNum
	cmp	r0, #1	@ D.38721,
	bls	.L162	@,
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, temp.1048
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	movw	ip, #:lower16:g_event_report	@ tmp166,
	movt	ip, #:upper16:g_event_report	@ tmp166,
	ldr	r3, [ip, #0]	@ g_event_report.579, g_event_report
	cmp	r3, #0	@ g_event_report.579,
	beq	.L163	@,
	mov	r0, r6	@, ChanID
	mov	r2, r5	@, D.38703
	mov	r1, #113	@,
	blx	r3	@ g_event_report.579
.L163:
	mov	lr, #0	@ tmp167,
	mvn	r0, #0	@ ret,
	strb	lr, [r4, #2]	@ tmp167, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L169:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.38705, <variable>.ConvolutionPacketNum
	cmp	r5, #0	@ D.38705,
	beq	.L171	@,
	cmp	r5, #1	@ D.38705,
	bne	.L162	@,
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp169,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp169,
	movw	r3, #:lower16:1047552	@ tmp208,
	movt	r3, #:upper16:1047552	@ tmp208,
	ldr	ip, [r2, r0, asl #2]	@ tmp170, s_pstVfmwChan
	ldr	r0, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [ip, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #6	@ <variable>.eVidStd,
	movne	r3, #1024	@ prephitmp.1037,
	cmp	r3, r0	@ prephitmp.1037, <variable>.LenInByte
	bhi	.L172	@,
	bl	vfmw_dprint_nothing	@
	add	r0, r4, #168	@, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
.L167:
	mov	r0, #0	@ tmp204,
	strb	r0, [r4, #2]	@ tmp204, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L171:
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.38705, <variable>.ConvolutionPacketNum
	mov	r0, r5	@ ret, D.38705
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L172:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #100]	@ temp.1052, <variable>.LenInByte
	ldr	r0, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, <variable>.VirAddr
	mov	r2, r3	@, temp.1052
	rsb	r0, r3, r0	@, temp.1052, <variable>.CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r3, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	ip, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	rsb	r1, r3, r1	@ tmp184, <variable>.LenInByte, <variable>.CurrSeg.VirAddr
	rsb	r2, r3, r2	@ tmp187, <variable>.LenInByte, <variable>.CurrSeg.PhyAddr
	str	r1, [r4, #88]	@ tmp184, <variable>.VirAddr
	add	r3, r3, ip	@ tmp190, <variable>.LenInByte, <variable>.CurrSeg.LenInByte
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	str	r3, [r4, #100]	@ tmp190, <variable>.LenInByte
	strb	r5, [r4, #93]	@ D.38705, <variable>.IsLastSeg
	str	r2, [r4, #96]	@ tmp187, <variable>.PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	str	r3, [r4, #104]	@ <variable>.CurrSeg.StreamID, <variable>.StreamID
	bl	__memzero	@
	b	.L167	@
.L157:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	SegMan, .-SegMan
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
.LFB1925:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r5, r2	@ pstCtx, pstCtx
	cmp	r1, #14	@ VideoStandard,
	ldrls	pc, [pc, r1, asl #2]	@ VideoStandard
	b	.L217	@
.L186:
	.word	.L175
	.word	.L176
	.word	.L177
	.word	.L178
	.word	.L179
	.word	.L180
	.word	.L181
	.word	.L217
	.word	.L182
	.word	.L183
	.word	.L184
	.word	.L184
	.word	.L184
	.word	.L185
	.word	.L179
.L176:
	movw	r6, #:lower16:113720	@ tmp220,
	movt	r6, #:upper16:113720	@ tmp220,
	ldr	r7, [r2, r6]	@ ChanID, <variable>.ChanID
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #0]	@ D.38415, <variable>.pstExtraData
	ldr	r2, [r3, #388]	@ D.38416, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ D.38416,
	bhi	.L219	@,
	ldr	ip, [r3, #392]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	ip, #8	@ <variable>.StdExt.Vc1Ext.CodecVersion,
	bgt	.L219	@,
	movw	r0, #:lower16:81368	@ tmp222,
	movt	r0, #:upper16:81368	@ tmp222,
	uxtb	r2, r2	@ D.38423, D.38416
	movw	lr, #:lower16:81370	@ tmp224,
	strb	r2, [r5, r0]	@ D.38423, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	movt	lr, #:upper16:81370	@ tmp224,
	ldr	r3, [r3, #392]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	r2, #1	@ D.38423,
	strb	r3, [r5, lr]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.CodecInfo.PreParseInfo.CodecVersion
	beq	.L232	@,
	ldrb	ip, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	ip, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L220	@,
	add	r7, r4, #88	@ D.38460, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	mov	r0, r7	@, D.38460
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	ldr	r3, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	r3, #15	@ <variable>.LenInByte,
	bls	.L197	@,
	add	lr, r5, #80896	@, pstCtx,
	ldr	r0, [r4, #88]	@, <variable>.VirAddr
	add	r2, lr, #472	@,,
	mov	r1, #16	@,
	bl	Vc1SMPSeqHdr	@
	cmp	r0, #0	@,
	beq	.L233	@,
.L197:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp274,
	movt	r0, #:upper16:g_event_report	@ tmp274,
	ldr	r3, [r0, #0]	@ g_event_report.1103, g_event_report
	cmp	r3, #0	@ g_event_report.1103,
	beq	.L217	@,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.1103
.L217:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L184:
	movw	r0, #:lower16:g_VdmCharacter	@ tmp404,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp404,
	ldr	ip, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	bne	.L234	@,
	mov	ip, #20480	@ tmp427,
	ldr	r2, [r2, ip]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	lr, [r2, #388]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	lr, #1	@ <variable>.StdExt.Vp6Ext.bReversed,
	bhi	.L219	@,
.L179:
	add	r6, r4, #88	@ tmp445, pSegMan,
	mov	r1, #1	@ tmp443,
	mov	r2, #80	@,
	strb	r1, [r4, #1]	@ tmp443, <variable>.IsCurrSegWaitDec
	mov	r0, r6	@, tmp445
	add	r1, r4, #8	@, pSegMan,
	bl	memcpy	@
	movw	r0, #:lower16:g_SdecFunc	@ tmp451,
	movt	r0, #:upper16:g_SdecFunc	@ tmp451,
	ldr	r3, [r0, #12]	@ temp.1190, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ temp.1190,
	beq	.L216	@,
	mov	r1, r6	@, tmp445
	mov	r0, r5	@, pstCtx
	blx	r3	@ temp.1190
	cmn	r0, #2	@,
	beq	.L217	@,
.L216:
	ldr	r0, [r5, #0]	@, <variable>.ChanID
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp455,
	strb	r3, [r4, #1]	@ tmp455, <variable>.IsCurrSegWaitDec
	b	.L217	@
.L180:
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r3, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #26992	@ tmp367,
	beq	.L220	@,
	add	r6, r0, #88	@ temp.1153, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, temp.1153
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1153
	mov	r0, r5	@, pstCtx
	bl	DIVX3DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pDivx3DecParam, <variable>.pDivx3DecParam
	cmp	r7, #0	@ <variable>.pDivx3DecParam,
	moveq	r0, r6	@, temp.1153
	moveq	r1, #160	@,
	movweq	r6, #26992	@ tmp379,
	bne	.L217	@,
	b	.L225	@
.L181:
	movw	ip, #:lower16:73696	@ tmp311,
	movt	ip, #:upper16:73696	@ tmp311,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r2, ip]	@ ChanID.1121, <variable>.ChanID
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	bne	.L204	@,
	movw	r1, #:lower16:s_pstVfmwChan	@ tmp312,
	movt	r1, #:upper16:s_pstVfmwChan	@ tmp312,
	ldr	r3, [r1, r6, asl #2]	@ temp.1122, s_pstVfmwChan
	ldr	lr, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L205	@,
	ldr	r3, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L204	@,
.L205:
	add	r2, r5, #16384	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r2, #64	@,,
	bl	AVSDEC_Decode	@
.L204:
	movw	ip, #16608	@ tmp317,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L235	@,
.L206:
	ldr	r4, [r5, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r4, #0	@ <variable>.pAvsDecParam,
	bne	.L217	@,
	movw	r6, #17124	@ tmp321,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L217	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #16608	@ tmp323,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pAvsDecParam,
	b	.L217	@
.L182:
	ldrb	r6, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r6, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L236	@,
	add	r6, r0, #88	@ temp.1131, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, temp.1131
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1131
	mov	r0, r5	@, pstCtx
	bl	REAL8DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pRv8DecParam, <variable>.pRv8DecParam
	cmp	r7, #0	@ <variable>.pRv8DecParam,
	moveq	r0, r6	@, temp.1131
	moveq	r1, #160	@,
	movweq	r6, #39320	@ tmp341,
	bne	.L217	@,
	b	.L225	@
.L175:
	ldrb	r3, [r4, #15]	@ zero_extendqisi2	@ <variable>.CurrSeg.DspCheckPicOverFlag, <variable>.CurrSeg.DspCheckPicOverFlag
	mov	r1, sp	@,
	ldrd	r8, [r0, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	mov	r0, r2	@, pstCtx
	ldr	r7, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r6, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	lr, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsLastSeg, <variable>.CurrSeg.IsLastSeg
	ldr	r2, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	strb	r3, [sp, #1]	@ <variable>.CurrSeg.DspCheckPicOverFlag, H264Pack.pack_is_pic_over_flag
	strd	r8, [sp, #24]	@ <variable>.CurrSeg.Pts,,
	str	r7, [sp, #4]	@ <variable>.CurrSeg.VirAddr, H264Pack.p_stream
	str	r6, [sp, #8]	@ <variable>.CurrSeg.PhyAddr, H264Pack.strm_phy_addr
	str	lr, [sp, #12]	@ <variable>.CurrSeg.LenInByte, H264Pack.stream_len
	strb	ip, [sp, #0]	@ <variable>.CurrSeg.IsLastSeg, H264Pack.last_pack_in_nal
	str	r2, [sp, #16]	@ <variable>.CurrSeg.StreamID, H264Pack.StreamID
	bl	H264DEC_DecodePacket	@
	cmn	r0, #2	@,
	moveq	r3, #1	@ tmp208,
	movne	r3, #0	@ tmp210,
	strb	r3, [r4, #1]	@ tmp210, <variable>.IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ <variable>.pH264DecParam, <variable>.pH264DecParam
	cmp	r4, #0	@ <variable>.pH264DecParam,
	bne	.L217	@,
	movw	r6, #13556	@ tmp213,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L217	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #52840	@ tmp215,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pH264DecParam,
	b	.L217	@
.L177:
	movw	r3, #:lower16:73696	@ tmp294,
	movt	r3, #:upper16:73696	@ tmp294,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r2, r3]	@ ChanID.1113, <variable>.ChanID
	bl	MP4_GetPacketState	@
	cmp	r0, #3	@,
	beq	.L237	@,
.L201:
	movw	r3, #22960	@ tmp300,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L238	@,
.L203:
	ldr	r4, [r5, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r4, #0	@ <variable>.pMp4DecParam,
	bne	.L217	@,
	movw	r6, #22996	@ tmp304,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L217	@,
	bl	vfmw_dprint_nothing	@
	movw	r2, #22960	@ tmp306,
	ldr	r0, [r5, r2]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMp4DecParam,
	b	.L217	@
.L185:
	ldrb	r2, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r2, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #8520	@ tmp386,
	beq	.L220	@,
	add	r6, r0, #88	@ temp.1164, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, temp.1164
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1164
	mov	r0, r5	@, pstCtx
	bl	VP8DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp8DecParam, <variable>.pVp8DecParam
	cmp	r7, #0	@ <variable>.pVp8DecParam,
	moveq	r0, r6	@, temp.1164
	moveq	r1, #160	@,
	movweq	r6, #8520	@ tmp398,
	bne	.L217	@,
	b	.L225	@
.L183:
	ldrb	lr, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	lr, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #39304	@ tmp348,
	beq	.L220	@,
	add	r6, r0, #88	@ temp.1142, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, temp.1142
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r1, r6	@, temp.1142
	mov	r0, r5	@, pstCtx
	bl	REAL9DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pRv9DecParam, <variable>.pRv9DecParam
	cmp	r7, #0	@ <variable>.pRv9DecParam,
	moveq	r0, r6	@, temp.1142
	moveq	r1, #160	@,
	movweq	r6, #39304	@ tmp360,
	bne	.L217	@,
	b	.L225	@
.L178:
	movw	r1, #:lower16:73696	@ tmp277,
	movt	r1, #:upper16:73696	@ tmp277,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r2, r1]	@ ChanID.1105, <variable>.ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L239	@,
.L198:
	movw	lr, #:lower16:73696	@ tmp283,
	movt	lr, #:upper16:73696	@ tmp283,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L240	@,
.L200:
	ldr	r4, [r5, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r4, #0	@ <variable>.pMp2DecParam,
	bne	.L217	@,
	movw	r6, #:lower16:73713	@ tmp287,
	movt	r6, #:upper16:73713	@ tmp287,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L217	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:73696	@ tmp289,
	movt	r1, #:upper16:73696	@ tmp289,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMp2DecParam,
	b	.L217	@
.L219:
	bl	vfmw_dprint_nothing	@
	b	.L217	@
.L236:
	movw	r6, #39320	@ tmp329,
.L220:
	ldr	r0, [r5, r6]	@,
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, r6]	@,
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L217	@
.L234:
	ldrb	r1, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r1, #1	@ <variable>.CurrSeg.IsStreamEnd,
	movweq	r6, #13000	@ tmp408,
	beq	.L220	@,
	add	r6, r4, #88	@ temp.1175, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r6	@, temp.1175
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, temp.1175
	bl	VP6DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp6DecParam, <variable>.pVp6DecParam
	cmp	r7, #0	@ <variable>.pVp6DecParam,
	bne	.L217	@,
	mov	r0, r6	@, temp.1175
	mov	r1, #160	@,
	movw	r6, #13000	@ tmp420,
.L225:
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r6]	@,
	bl	SM_ReleaseStreamSeg	@
	movw	r3, #:lower16:g_event_report	@ tmp423,
	movt	r3, #:upper16:g_event_report	@ tmp423,
	ldr	r3, [r3, #0]	@ g_event_report.1181, g_event_report
	cmp	r3, #0	@ g_event_report.1181,
	beq	.L217	@,
	ldr	r0, [r5, r6]	@,
	mov	r2, r7	@, <variable>.pVp6DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.1181
	b	.L217	@
.L235:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	AVSDEC_Decode	@
	b	.L206	@
.L240:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L200	@
.L238:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L203	@
.L237:
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp295,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp295,
	ldr	r3, [ip, r6, asl #2]	@ temp.1114, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L202	@,
	ldr	lr, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	lr, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L201	@,
.L202:
	add	r1, r5, #15680	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r1, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L201	@
.L239:
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp278,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp278,
	ldr	r3, [r3, r6, asl #2]	@ temp.1106, s_pstVfmwChan
	ldr	lr, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L199	@,
	ldr	r2, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r2, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L198	@,
.L199:
	add	ip, r5, #72704	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, ip, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L198	@
.L232:
	mov	r0, r5	@, pstCtx
	bl	VC1_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L241	@,
.L192:
	movw	r2, #:lower16:113720	@ tmp234,
	movt	r2, #:upper16:113720	@ tmp234,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L242	@,
.L194:
	ldr	r4, [r5, #4]	@ <variable>.pVc1DecParam, <variable>.pVc1DecParam
	cmp	r4, #0	@ <variable>.pVc1DecParam,
	bne	.L217	@,
	movw	r6, #:lower16:78279	@ tmp237,
	movt	r6, #:upper16:78279	@ tmp237,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.IsStreamEndFlag, <variable>.CodecInfo.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.CodecInfo.IsStreamEndFlag,
	bne	.L217	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #:lower16:113720	@ tmp239,
	movt	r1, #:upper16:113720	@ tmp239,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pVc1DecParam,
	b	.L217	@
.L233:
	ldr	ip, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r7	@, D.38460
	ldr	lr, [r4, #88]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, r5	@, pstCtx
	ldr	r3, [r4, #96]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	r2, ip, #16	@ tmp266, <variable>.LenInByte,
	add	ip, lr, #16	@ tmp268, <variable>.VirAddr,
	str	r2, [r4, #100]	@ tmp266, <variable>.LenInByte
	str	ip, [r4, #88]	@ tmp268, <variable>.VirAddr
	add	r2, r3, #16	@ tmp270, <variable>.PhyAddr,
	str	r2, [r4, #96]	@ tmp270, <variable>.PhyAddr
	bl	VC1DEC_Decode	@
	mov	r0, r7	@, D.38460
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L217	@
.L242:
	add	r4, r4, #88	@ D.38444, pSegMan,
	mov	r0, r5	@, pstCtx
	mov	r1, r4	@, D.38444
	bl	VC1DEC_Decode	@
	mov	r0, r4	@, D.38444
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L194	@
.L241:
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp229,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp229,
	ldr	r3, [ip, r7, asl #2]	@ D.38434, s_pstVfmwChan
	ldr	r1, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r1, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L193	@,
	ldr	lr, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	lr, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L192	@,
.L193:
	add	r3, r5, #77824	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r3, #288	@,,
	bl	VC1DEC_Decode	@
	b	.L192	@
	.fnend
	.size	DecodeStream, .-DecodeStream
	.align	2
	.global	SYNTAX_ReturnImage
	.type	SYNTAX_ReturnImage, %function
SYNTAX_ReturnImage:
	.fnstart
.LFB1924:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L244	@
.L257:
	.word	.L256
	.word	.L246
	.word	.L247
	.word	.L248
	.word	.L249
	.word	.L250
	.word	.L251
	.word	.L244
	.word	.L252
	.word	.L253
	.word	.L254
	.word	.L254
	.word	.L254
	.word	.L255
	.word	.L249
	.word	.L244
	.word	.L244
	.word	.L244
	.word	.L256
.L256:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L259:
	ldr	r0, .L262	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r2, [r4, #6]	@ <variable>.head, <variable>.head
	ldr	r0, .L262	@,
	sub	r1, r2, #1	@ tmp156, <variable>.head,
	and	r3, r1, #63	@ tmp158, tmp156,
	strh	r3, [r4, #6]	@ movhi	@ tmp158, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.38325,
	ldmfd	sp!, {r4, pc}	@
.L254:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp146,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp146,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	addne	r4, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r4, r4, #48	@ pstVoQue, pstVoQue,
	bne	.L259	@,
.L249:
	add	lr, r0, #20480	@ pstVoQue, pSynCtx,
	add	r4, lr, #16	@ pstVoQue, pstVoQue,
	b	.L259	@
.L251:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r2, #32	@ pstVoQue, pstVoQue,
	b	.L259	@
.L252:
	add	lr, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, lr, #64	@ pstVoQue, pstVoQue,
	b	.L259	@
.L250:
	add	r4, r0, #26624	@ pstVoQue, pSynCtx,
	add	r4, r4, #24	@ pstVoQue, pstVoQue,
	b	.L259	@
.L255:
	add	r1, r0, #8128	@ pstVoQue, pSynCtx,
	add	r4, r1, #48	@ pstVoQue, pstVoQue,
	b	.L259	@
.L244:
	mvn	r0, #1	@ D.38325,
	ldmfd	sp!, {r4, pc}	@
.L253:
	add	r3, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, r3, #48	@ pstVoQue, pstVoQue,
	b	.L259	@
.L246:
	add	ip, r0, #112640	@ pstVoQue, pSynCtx,
	add	r4, ip, #736	@ pstVoQue, pstVoQue,
	b	.L259	@
.L247:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r1, #88	@ pstVoQue, pstVoQue,
	b	.L259	@
.L248:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L259	@
.L263:
	.align	2
.L262:
	.word	.LANCHOR0+16
	.fnend
	.size	SYNTAX_ReturnImage, .-SYNTAX_ReturnImage
	.align	2
	.global	SYNTAX_ReceiveImage
	.type	SYNTAX_ReceiveImage, %function
SYNTAX_ReceiveImage:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSynCtx,
	cmpne	r1, #0	@, p_image,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ p_image, p_image
	bne	.L285	@,
.L265:
	mvn	r5, #1	@ ret,
.L283:
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L285:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L265	@
.L278:
	.word	.L277
	.word	.L267
	.word	.L268
	.word	.L269
	.word	.L270
	.word	.L271
	.word	.L272
	.word	.L265
	.word	.L273
	.word	.L274
	.word	.L275
	.word	.L275
	.word	.L275
	.word	.L276
	.word	.L270
	.word	.L265
	.word	.L265
	.word	.L265
	.word	.L277
.L277:
	add	r6, r0, #16	@ pstVoQue, pSynCtx,
.L279:
	ldr	r0, .L286	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r6, #6]	@ D.38105, <variable>.head
	ldrh	r0, [r6, #8]	@ <variable>.tail, <variable>.tail
	cmp	r0, r3	@ <variable>.tail, D.38105
	mvneq	r5, #2	@ ret,
	beq	.L282	@,
	add	lr, r6, r3, asl #2	@, tmp167, pstVoQue, D.38105,
	mov	r2, #392	@,
	mov	r0, r4	@, p_image
	mov	r5, #1	@ ret,
	ldr	r1, [lr, #12]	@, <variable>.image_ptr
	bl	memcpy	@
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r3, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	add	r0, r1, r3	@ tmp176, <variable>.image_id, <variable>.ResetMagicWord
	str	r0, [r4, #176]	@ tmp176, <variable>.image_id
	ldr	ip, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	str	ip, [r4, #380]	@ <variable>.ResetMagicWord, <variable>.resetNum
	ldrh	r2, [r6, #6]	@ <variable>.head, <variable>.head
	add	r1, r2, r5	@ tmp180, <variable>.head,
	and	r3, r1, #63	@ tmp182, tmp180,
	strh	r3, [r6, #6]	@ movhi	@ tmp182, <variable>.head
.L282:
	ldr	r0, .L286	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L283	@
.L275:
	movw	ip, #:lower16:g_VdmCharacter	@ tmp155,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp155,
	ldr	r2, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	addne	r6, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r6, r6, #48	@ pstVoQue, pstVoQue,
	bne	.L279	@,
.L270:
	add	lr, r0, #20480	@ pstVoQue, pSynCtx,
	add	r6, lr, #16	@ pstVoQue, pstVoQue,
	b	.L279	@
.L269:
	add	r6, r0, #72704	@ pstVoQue, pSynCtx,
	add	r6, r6, #648	@ pstVoQue, pstVoQue,
	b	.L279	@
.L276:
	add	r1, r0, #8128	@ pstVoQue, pSynCtx,
	add	r6, r1, #48	@ pstVoQue, pstVoQue,
	b	.L279	@
.L268:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r6, r1, #88	@ pstVoQue, pstVoQue,
	b	.L279	@
.L267:
	add	ip, r0, #112640	@ pstVoQue, pSynCtx,
	add	r6, ip, #736	@ pstVoQue, pstVoQue,
	b	.L279	@
.L274:
	add	r3, r0, #38912	@ pstVoQue, pSynCtx,
	add	r6, r3, #48	@ pstVoQue, pstVoQue,
	b	.L279	@
.L273:
	add	lr, r0, #38912	@ pstVoQue, pSynCtx,
	add	r6, lr, #64	@ pstVoQue, pstVoQue,
	b	.L279	@
.L272:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r6, r2, #32	@ pstVoQue, pstVoQue,
	b	.L279	@
.L271:
	add	r6, r0, #26624	@ pstVoQue, pSynCtx,
	add	r6, r6, #24	@ pstVoQue, pstVoQue,
	b	.L279	@
.L287:
	.align	2
.L286:
	.word	.LANCHOR0+16
	.fnend
	.size	SYNTAX_ReceiveImage, .-SYNTAX_ReceiveImage
	.align	2
	.global	ResetVoQueue
	.type	ResetVoQueue, %function
ResetVoQueue:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L290	@ tmp135,
	mov	r4, r0	@ pstVoQue, pstVoQue
	mov	r0, r5	@, tmp135
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r4, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	mov	ip, #328	@ tmp155,
	mov	r1, #336	@ tmp158,
	mov	r3, #0	@ tmp139,
	mvn	r2, #0	@ tmp148,
	add	r6, r7, #100	@ tmp147, <variable>.ResetMagicWord,
	mov	r0, #64	@ movhi	@,
	str	r6, [r4, #344]	@ tmp147, <variable>.ResetMagicWord
	mvn	r7, #0	@,
	strh	r0, [r4, #0]	@ movhi	@, <variable>.max_queue_size
	mvn	r6, #0	@ tmp156,
	mov	r0, r5	@, tmp135
	strd	r6, [r4, ip]	@ tmp156, pstVoQue, tmp155
	str	r3, [r4, #324]	@ tmp139, <variable>.SideInfo.PrevNumFramesBtwPTS
	mov	r6, #0	@ tmp159,
	mov	r7, #0	@,
	strh	r3, [r4, #2]	@ movhi	@ tmp139, <variable>.queue_size
	str	r2, [r4, #280]	@ tmp148, <variable>.SideInfo.OldSeqCnt
	strd	r6, [r4, r1]	@ tmp159, pstVoQue, tmp158
	strh	r3, [r4, #4]	@ movhi	@ tmp139, <variable>.history
	strh	r3, [r4, #6]	@ movhi	@ tmp139, <variable>.head
	strh	r3, [r4, #8]	@ movhi	@ tmp139, <variable>.tail
	str	r2, [r4, #272]	@ tmp148, <variable>.SideInfo.OldAspectRatio
	str	r2, [r4, #292]	@ tmp148, <variable>.SideInfo.OldDispCenter
	str	r2, [r4, #288]	@ tmp148, <variable>.SideInfo.OldDispSize
	str	r2, [r4, #284]	@ tmp148, <variable>.SideInfo.OldFrameRate
	str	r2, [r4, #276]	@ tmp148, <variable>.SideInfo.OldScanType
	str	r3, [r4, #316]	@ tmp139, <variable>.SideInfo.SeqImgCnt
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L291:
	.align	2
.L290:
	.word	.LANCHOR0+16
	.fnend
	.size	ResetVoQueue, .-ResetVoQueue
	.align	2
	.global	SYNTAX_ReleaseImage
	.type	SYNTAX_ReleaseImage, %function
SYNTAX_ReleaseImage:
	.fnstart
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r5, r1, #0	@ p_image, p_image
	mov	r6, r0	@ pSynCtx, pSynCtx
	bne	.L357	@,
.L293:
	mvn	r4, #1	@ ret,
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L357:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L293	@
.L306:
	.word	.L305
	.word	.L295
	.word	.L296
	.word	.L297
	.word	.L298
	.word	.L299
	.word	.L300
	.word	.L293
	.word	.L301
	.word	.L302
	.word	.L303
	.word	.L303
	.word	.L303
	.word	.L304
	.word	.L298
	.word	.L293
	.word	.L293
	.word	.L293
	.word	.L305
.L305:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L307:
	ldr	r0, .L358	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r4, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	rsb	r7, ip, r3	@ tmp175, <variable>.ResetMagicWord, <variable>.image_id
	str	r7, [r5, #176]	@ tmp175, <variable>.image_id
	ldrh	r2, [r4, #4]	@ i.1299, <variable>.history
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	and	r7, r2, #63	@ i.1324, i.1299,
	cmp	r1, r7	@ <variable>.head, i.1324
	bne	.L341	@,
	b	.L311	@
.L314:
	add	r7, r7, #1	@ i.1323, i.1324,
	and	r7, r7, #63	@ i.1324, i.1323,
	cmp	r1, r7	@ <variable>.head, i.1324
	beq	.L311	@,
.L341:
	add	r8, r7, #2	@ tmp221, i.1324,
	add	lr, r4, r8, asl #2	@, tmp180, pstVoQue, tmp221,
	ldr	r3, [lr, #4]	@ D.38186, <variable>.image_ptr
	cmp	r3, #0	@ D.38186,
	beq	.L312	@,
	ldr	r2, [r3, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r0, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L314	@,
	mov	lr, #1	@ SameImageFlag,
.L315:
	ldrh	ip, [r4, #4]	@ temp.1301, <variable>.history
	b	.L338	@
.L318:
	mov	r7, r3	@ i.1324, j
.L338:
	cmp	r7, #0	@ i.1324,
	sub	r3, r7, #1	@ j, i.1324,
	add	r1, r4, r8, asl #2	@, tmp187, pstVoQue, tmp221,
	moveq	r3, #63	@ j,
	add	r2, r3, #2	@ tmp189, j,
	cmp	ip, r7	@ temp.1301, i.1324
	add	r0, r4, r2, asl #2	@, tmp192, pstVoQue, tmp189,
	mov	r8, r2	@ tmp221, tmp189
	ldr	r2, [r0, #4]	@ tmp194, <variable>.image_ptr
	str	r2, [r1, #4]	@ tmp194, <variable>.image_ptr
	bne	.L318	@,
	cmp	lr, #1	@ SameImageFlag,
	add	r3, ip, #1	@ tmp195, temp.1301,
	and	ip, r3, #63	@ tmp197, tmp195,
	strh	ip, [r4, #4]	@ movhi	@ tmp197, <variable>.history
	beq	.L343	@,
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	add	r7, r7, #1	@ i.1323, i.1324,
	and	r7, r7, #63	@ i.1324, i.1323,
	cmp	r1, r7	@ <variable>.head, i.1324
	bne	.L341	@,
.L311:
	mvn	r4, #1	@ ret,
.L334:
	ldr	r0, .L358	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L303:
	movw	r1, #:lower16:g_VdmCharacter	@ tmp161,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp161,
	ldr	r0, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	addne	r4, r6, #12608	@ pstVoQue, pSynCtx,
	addne	r4, r4, #48	@ pstVoQue, pstVoQue,
	bne	.L307	@,
.L298:
	add	r4, r6, #20480	@ pstVoQue, pSynCtx,
	add	r4, r4, #16	@ pstVoQue, pstVoQue,
	b	.L307	@
.L304:
	add	r3, r0, #8128	@ pstVoQue, pSynCtx,
	add	r4, r3, #48	@ pstVoQue, pstVoQue,
	b	.L307	@
.L302:
	add	ip, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, ip, #48	@ pstVoQue, pstVoQue,
	b	.L307	@
.L301:
	add	r7, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, r7, #64	@ pstVoQue, pstVoQue,
	b	.L307	@
.L300:
	add	r1, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r1, #32	@ pstVoQue, pstVoQue,
	b	.L307	@
.L299:
	add	lr, r0, #26624	@ pstVoQue, pSynCtx,
	add	r4, lr, #24	@ pstVoQue, pstVoQue,
	b	.L307	@
.L296:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r0, #88	@ pstVoQue, pstVoQue,
	b	.L307	@
.L295:
	add	r2, r0, #112640	@ pstVoQue, pSynCtx,
	add	r4, r2, #736	@ pstVoQue, pstVoQue,
	b	.L307	@
.L297:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L307	@
.L312:
	bl	vfmw_dprint_nothing	@
	mov	lr, #2	@ SameImageFlag,
	b	.L315	@
.L343:
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r4, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r4, asl #2]	@ <variable>.eVidStd
	b	.L311	@
.L331:
	.word	.L319
	.word	.L320
	.word	.L321
	.word	.L322
	.word	.L323
	.word	.L324
	.word	.L325
	.word	.L311
	.word	.L326
	.word	.L327
	.word	.L328
	.word	.L328
	.word	.L328
	.word	.L329
	.word	.L323
	.word	.L311
	.word	.L311
	.word	.L311
	.word	.L330
.L323:
	movw	r0, #:lower16:g_SdecFunc	@ tmp214,
	movt	r0, #:upper16:g_SdecFunc	@ tmp214,
	ldr	r3, [r0, #16]	@ temp.1318, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1318,
	beq	.L333	@,
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	blx	r3	@ temp.1318
	cmp	r0, #0	@,
	bne	.L333	@,
	mov	r4, #1	@ ret,
	b	.L334	@
.L322:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	MPEG2DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	beq	.L334	@,
.L333:
	mvn	r4, #19	@ ret,
	b	.L334	@
.L321:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	MPEG4DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L320:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	VC1DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L319:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	H264DEC_RecycleImage	@
	cmp	r0, #0	@,
	bne	.L333	@,
	mov	r4, #1	@ ret,
	b	.L334	@
.L330:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	USERDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L329:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	VP8DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L328:
	movw	r1, #:lower16:g_VdmCharacter	@ tmp208,
	movt	r1, #:upper16:g_VdmCharacter	@ tmp208,
	ldr	lr, [r1, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L323	@,
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	VP6DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L327:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	REAL9DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L326:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	REAL8DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L325:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	AVSDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L324:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	DIVX3DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L334	@
.L359:
	.align	2
.L358:
	.word	.LANCHOR0+16
	.fnend
	.size	SYNTAX_ReleaseImage, .-SYNTAX_ReleaseImage
	.align	2
	.global	ReturnImageToSyntax
	.type	ReturnImageToSyntax, %function
ReturnImageToSyntax:
	.fnstart
.LFB1918:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	cmp	r0, #18	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L376	@
.L374:
	.word	.L362
	.word	.L363
	.word	.L364
	.word	.L365
	.word	.L366
	.word	.L367
	.word	.L368
	.word	.L376
	.word	.L369
	.word	.L370
	.word	.L371
	.word	.L371
	.word	.L371
	.word	.L372
	.word	.L366
	.word	.L376
	.word	.L376
	.word	.L376
	.word	.L373
.L376:
	ldmfd	sp!, {r4, pc}	@
.L371:
	movw	r0, #:lower16:g_VdmCharacter	@ tmp149,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp149,
	ldr	r3, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L379	@,
.L366:
	movw	ip, #:lower16:g_SdecFunc	@ tmp155,
	movt	ip, #:upper16:g_SdecFunc	@ tmp155,
	ldr	r3, [ip, #16]	@ temp.1360, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1360,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	blx	r3	@ temp.1360
	ldmfd	sp!, {r4, pc}	@
.L362:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_RecycleImage	@
.L363:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_RecycleImage	@
.L364:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_RecycleImage	@
.L365:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_RecycleImage	@
.L370:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	REAL9DEC_RecycleImage	@
.L372:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_RecycleImage	@
.L373:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	USERDEC_RecycleImage	@
.L368:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_RecycleImage	@
.L369:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	REAL8DEC_RecycleImage	@
.L367:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_RecycleImage	@
.L379:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_RecycleImage	@
	.fnend
	.size	ReturnImageToSyntax, .-ReturnImageToSyntax
	.global	__aeabi_uidiv
	.align	2
	.global	InsertImgToVoQueue
	.type	InsertImgToVoQueue, %function
InsertImgToVoQueue:
	.fnstart
.LFB1920:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ ChanID, ChanID
	mov	r5, r1	@ eVidStd, eVidStd
	ldr	r4, [sp, #48]	@ p_image, p_image
	mov	sl, r2	@ pCtx, pCtx
	mov	r7, r3	@ pstVoQue, pstVoQue
	cmp	r4, #0	@ p_image,
	beq	.L411	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp302,
	movt	r8, #:upper16:.LANCHOR0	@ tmp302,
	bl	vfmw_dprint_nothing	@
	add	r0, r8, #16	@, tmp302,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r9, [r7, #4]	@ i, <variable>.history
	ldrh	r1, [r7, #8]	@ <variable>.tail, <variable>.tail
	and	r9, r9, #63	@ i.1394, i,
	cmp	r1, r9	@ <variable>.tail, i.1394
	beq	.L383	@,
	mov	fp, #1000	@ tmp308,
	b	.L409	@
.L384:
	add	lr, r9, #1	@ i.1395, i.1394,
	and	r9, lr, #63	@ i.1394, i.1395,
	cmp	r1, r9	@ <variable>.tail, i.1394
	beq	.L383	@,
.L409:
	add	ip, r7, r9, asl #2	@, tmp170, pstVoQue, i.1394,
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [ip, #12]	@ tmp167, <variable>.image_ptr
	ldr	r2, [r0, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r2, r3	@ <variable>.image_id, <variable>.image_id
	bne	.L384	@,
	bl	vfmw_dprint_nothing	@
	str	fp, [r4, #180]	@ tmp308, <variable>.error_level
	add	lr, r9, #1	@ i.1395, i.1394,
	ldrh	r1, [r7, #8]	@ <variable>.tail, <variable>.tail
	and	r9, lr, #63	@ i.1394, i.1395,
	cmp	r1, r9	@ <variable>.tail, i.1394
	bne	.L409	@,
.L383:
	ldr	r1, [r4, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L386	@,
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bhi	.L412	@,
.L386:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #1000	@ <variable>.error_level,
	beq	.L388	@,
	mov	r0, r5	@, eVidStd
	mov	r1, sl	@, pCtx
	mov	r2, r4	@, p_image
	bl	ReturnImageToSyntax	@
.L388:
	ldr	r0, .L416	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.37919,
.L382:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L412:
	ldr	r3, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r3, #31	@ <variable>.image_height,
	bls	.L386	@,
	ldrd	sl, [r4, #8]	@ <variable>.PTS, p_image,
	mov	r2, r5	@, eVidStd
	mov	r0, r7	@, pstVoQue
	mov	r1, r4	@, p_image
	strd	sl, [r4]	@ <variable>.PTS, <variable>.SrcPts
	bl	ProduceTimeStamp	@
	strd	r0, [r4, #8]	@, p_image,
	bl	vfmw_dprint_nothing	@
	ldr	r9, [r4, #152]	@ <variable>.disp_width, <variable>.disp_width
	cmp	r9, #0	@ <variable>.disp_width,
	beq	.L391	@,
	ldr	r3, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	cmp	r3, #0	@ <variable>.disp_height,
	bne	.L413	@,
.L391:
	ldr	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	fp, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	sl, r3, lsr #1	@ tmp199, <variable>.image_width,
	str	r3, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	mov	r5, fp, lsr #1	@ tmp201, <variable>.image_height,
	str	fp, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	sl, [r4, #160]	@ tmp199, <variable>.disp_center_x
	str	r5, [r4, #164]	@ tmp201, <variable>.disp_center_y
.L392:
	str	r3, [r7, #300]	@ <variable>.image_width, <variable>.SideInfo.ImageWidth
	ldr	r3, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	sl, [r7, #280]	@ <variable>.SideInfo.OldSeqCnt, <variable>.SideInfo.OldSeqCnt
	str	r3, [r7, #304]	@ <variable>.image_height, <variable>.SideInfo.ImageHeight
	ldr	lr, [r4, #140]	@ <variable>.format, <variable>.format
	ubfx	ip, lr, #5, #3	@ tmp208, <variable>.format,,
	str	ip, [r7, #308]	@ tmp208, <variable>.SideInfo.VideoFormat
	ldr	fp, [r4, #140]	@ <variable>.format, <variable>.format
	ldr	lr, [r7, #316]	@ D.37972, <variable>.SideInfo.SeqImgCnt
	str	fp, [r7, #312]	@ <variable>.format, <variable>.SideInfo.ImageFormat
	add	ip, lr, #1	@ tmp223, D.37972,
	ldr	r3, [r4, #184]	@ D.37968, <variable>.seq_cnt
	ldr	r0, [r4, #160]	@ <variable>.disp_center_x, <variable>.disp_center_x
	ldrh	r2, [r4, #164]	@ tmp217, <variable>.disp_center_y
	cmp	r3, sl	@ D.37968, <variable>.SideInfo.OldSeqCnt
	ldr	r5, [r4, #140]	@ temp.1404, <variable>.format
	ldr	r9, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	orr	fp, r2, r0, asl #16	@, dcenter, tmp217, <variable>.disp_center_x,
	ldrh	r1, [r4, #152]	@ tmp212, <variable>.disp_width
	ubfx	sl, r5, #8, #2	@ ScanType, temp.1404,,
	strne	r3, [r7, #320]	@ D.37968, <variable>.SideInfo.SeqCnt
	ubfx	r5, r5, #14, #3	@ AspectRatio, temp.1404,,
	str	lr, [r4, #188]	@ D.37972, <variable>.seq_img_cnt
	orr	r9, r1, r9, asl #16	@, dsize, tmp212, <variable>.disp_height,
	ldr	r2, [r7, #272]	@ D.37974, <variable>.SideInfo.OldAspectRatio
	str	ip, [r7, #316]	@ tmp223, <variable>.SideInfo.SeqImgCnt
	cmp	r2, r5	@ D.37974, AspectRatio
	beq	.L394	@,
	movw	r0, #:lower16:g_event_report	@ tmp224,
	movt	r0, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r0, #0]	@ g_event_report.514, g_event_report
	cmp	r3, #0	@ g_event_report.514,
	beq	.L395	@,
	strb	r2, [sp, #0]	@ D.37974, para
	mov	r0, r6	@, ChanID
	strb	r5, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.514
.L395:
	str	r5, [r7, #272]	@ AspectRatio, <variable>.SideInfo.OldAspectRatio
.L394:
	ldr	r2, [r7, #276]	@ <variable>.SideInfo.OldScanType, <variable>.SideInfo.OldScanType
	cmp	r2, sl	@ <variable>.SideInfo.OldScanType, ScanType
	beq	.L396	@,
	movw	r5, #:lower16:g_event_report	@ tmp229,
	movt	r5, #:upper16:g_event_report	@ tmp229,
	ldr	r3, [r5, #0]	@ g_event_report.1407, g_event_report
	cmp	r3, #0	@ g_event_report.1407,
	beq	.L397	@,
	add	r1, sp, #8	@ tmp231,,
	mov	r0, r6	@, ChanID
	mov	r2, sp	@,
	strb	sl, [r1, #-8]!	@ ScanType, para
	mov	r1, #4	@,
	blx	r3	@ g_event_report.1407
.L397:
	str	sl, [r7, #276]	@ ScanType, <variable>.SideInfo.OldScanType
.L396:
	ldr	sl, [r7, #288]	@ <variable>.SideInfo.OldDispSize, <variable>.SideInfo.OldDispSize
	cmp	sl, r9	@ <variable>.SideInfo.OldDispSize, dsize
	beq	.L414	@,
.L398:
	movw	lr, #:lower16:g_event_report	@ tmp234,
	movt	lr, #:upper16:g_event_report	@ tmp234,
	str	r9, [r7, #288]	@ dsize, <variable>.SideInfo.OldDispSize
	str	fp, [r7, #292]	@ dcenter, <variable>.SideInfo.OldDispCenter
	ldr	r3, [lr, #0]	@ g_event_report.1408, g_event_report
	cmp	r3, #0	@ g_event_report.1408,
	beq	.L399	@,
	ldrh	r5, [r4, #152]	@, <variable>.disp_width
	mov	r1, #1	@,
	strh	r5, [sp, #0]	@ movhi	@, para
	ldrh	r2, [r4, #156]	@, <variable>.disp_height
	strh	r2, [sp, #2]	@ movhi	@, para
	mov	r2, sp	@,
	ldrh	r0, [r4, #160]	@, <variable>.disp_center_x
	strh	r0, [sp, #4]	@ movhi	@, para
	mov	r0, r6	@, ChanID
	ldrh	r9, [r4, #164]	@, <variable>.disp_center_y
	strh	r9, [sp, #6]	@ movhi	@, para
	blx	r3	@ g_event_report.1408
.L399:
	ldr	ip, [r4, #104]	@ <variable>.luma_phy_addr, <variable>.luma_phy_addr
	add	r9, r6, r6, asl #1	@, tmp242, ChanID, ChanID,
	ldr	lr, [r4, #108]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	movw	r5, #:lower16:g_VfmwChanStat	@ tmp244,
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	movt	r5, #:upper16:g_VfmwChanStat	@ tmp244,
	str	ip, [r4, #88]	@ <variable>.luma_phy_addr, <variable>.top_luma_phy_addr
	add	sl, r5, r9, asl #3	@, pVfmwChanStat, tmp244, tmp242,
	add	r2, r1, lr	@ tmp252, <variable>.image_stride, <variable>.chrom_phy_addr
	add	r0, r1, ip	@ tmp248, <variable>.image_stride, <variable>.luma_phy_addr
	str	r2, [r4, #100]	@ tmp252, <variable>.btm_chrom_phy_addr
	str	r0, [r4, #96]	@ tmp248, <variable>.btm_luma_phy_addr
	str	lr, [r4, #92]	@ <variable>.chrom_phy_addr, <variable>.top_chrom_phy_addr
	bl	vfmw_dprint_nothing	@
	ldrh	r3, [r7, #8]	@ <variable>.tail, <variable>.tail
	ldr	r0, .L416	@,
	add	r2, r3, #1	@ tmp261, <variable>.tail,
	add	r1, r7, r3, asl #2	@, tmp257, pstVoQue, <variable>.tail,
	and	ip, r2, #63	@ tmp263, tmp261,
	strh	ip, [r7, #8]	@ movhi	@ tmp263, <variable>.tail
	str	r4, [r1, #12]	@ p_image, <variable>.image_ptr
	ldr	r2, [r4, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	str	r2, [sl, #20]	@ <variable>.is_fld_save, <variable>.u32IsFieldFlag
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	r3, ip, #2	@ tmp266, <variable>.image_id,
	str	r3, [r7, #296]	@ tmp266, <variable>.SideInfo.LastImageIdPlus2
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r4, #300]	@ D.38015, <variable>.ImageDnr.video_standard
	sub	r1, r3, #10	@ tmp269, D.38015,
	cmp	r1, #2	@ tmp269,
	bhi	.L400	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp270,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp270,
	ldr	lr, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	bne	.L402	@,
.L401:
	movw	r3, #:lower16:g_event_report	@ tmp273,
	movt	r3, #:upper16:g_event_report	@ tmp273,
	ldr	r3, [r3, #0]	@ g_event_report.1420, g_event_report
	cmp	r3, #0	@ g_event_report.1420,
	beq	.L403	@,
	add	ip, sp, #8	@ tmp274,,
	mov	r0, r6	@, ChanID
	mov	r2, sp	@,
	mov	r1, #5	@,
	str	r4, [ip, #-8]!	@ p_image, para
	blx	r3	@ g_event_report.1420
.L403:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L415	@,
.L404:
	ldr	r0, [sl, #4]	@ <variable>.u32FrImgNum, <variable>.u32FrImgNum
	add	lr, r0, #1	@ tmp290, <variable>.u32FrImgNum,
	str	lr, [sl, #4]	@ tmp290, <variable>.u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r5, r9, asl #3]	@ <variable>.u32FrBeginTime, <variable>.u32FrBeginTime
	rsb	r1, ip, r0	@ Period, <variable>.u32FrBeginTime, CurTime.1421
	mov	r4, r0	@ CurTime.1421,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.37919,
	bcc	.L382	@,
	ldr	r3, [sl, #4]	@ temp.1422, <variable>.u32FrImgNum
	cmp	r3, #0	@ temp.1422,
	beq	.L406	@,
	movw	r2, #10000	@ tmp294,
	mul	r0, r2, r3	@, tmp294, temp.1422
	bl	__aeabi_uidiv	@
	str	r0, [sl, #8]	@, <variable>.u32FrFrameRate
.L406:
	mov	r1, #0	@ tmp298,
	mov	r0, #1	@ D.37919,
	str	r4, [r5, r9, asl #3]	@ CurTime.1421, <variable>.u32FrBeginTime
	str	r1, [sl, #4]	@ tmp298, <variable>.u32FrImgNum
	b	.L382	@
.L400:
	cmp	r3, #4	@ D.38015,
	beq	.L401	@,
	cmp	r3, #14	@ D.38015,
	beq	.L401	@,
.L402:
	cmp	r3, #18	@ D.38015,
	bne	.L403	@,
	b	.L401	@
.L413:
	cmp	r5, #15	@ eVidStd,
	cmpne	r5, #0	@, eVidStd,
	ldreq	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	beq	.L392	@,
	b	.L391	@
.L415:
	bl	OSAL_GetTimeInMs	@
	add	r6, r8, r6, asl #2	@, tmp278, tmp302, ChanID,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp282,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp282,
	ldr	r2, [r6, #24]	@ tmp281, last_rec_pos_time
	ldr	r1, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r4, r2, r0	@ tmp280, tmp281, CurTime
	cmp	r4, r1	@ tmp280, g_TraceFramePeriod
	strhi	r0, [r6, #24]	@ CurTime, last_rec_pos_time
	b	.L404	@
.L414:
	ldr	ip, [r7, #292]	@ <variable>.SideInfo.OldDispCenter, <variable>.SideInfo.OldDispCenter
	cmp	ip, fp	@ <variable>.SideInfo.OldDispCenter, dcenter
	bne	.L398	@,
	b	.L399	@
.L411:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.37919,
	b	.L382	@
.L417:
	.align	2
.L416:
	.word	.LANCHOR0+16
	.fnend
	.size	InsertImgToVoQueue, .-InsertImgToVoQueue
	.global	g_DnrEnable
	.global	pstVdecUsdPool
	.global	g_SpinLock
	.global	g_SpinLockIrq_Destroy
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	pstVdecUsdPool, %object
	.size	pstVdecUsdPool, 16
pstVdecUsdPool:
	.space	16
	.type	g_SpinLock, %object
	.size	g_SpinLock, 8
g_SpinLock:
	.space	8
	.type	last_rec_pos_time.37907, %object
	.size	last_rec_pos_time.37907, 16
last_rec_pos_time.37907:
	.space	16
	.type	g_DnrEnable, %object
	.size	g_DnrEnable, 4
g_DnrEnable:
	.space	4
	.type	g_SpinLockIrq_Destroy, %object
	.size	g_SpinLockIrq_Destroy, 8
g_SpinLockIrq_Destroy:
	.space	8
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
