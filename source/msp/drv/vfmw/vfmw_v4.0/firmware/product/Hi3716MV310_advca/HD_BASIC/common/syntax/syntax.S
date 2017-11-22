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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(syntax)
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
	ldrd	r6, [r0, r3]	@ D.36089, pstVoQue, tmp140
	mov	r9, r5	@, ThisFramePts
	subs	r8, r8, r6	@ tmp141, tmp141, D.36089
	sbc	r9, r9, r7	@ tmp141, tmp141, D.36089
	cmp	r9, #0	@ tmp141,
	cmpeq	r8, #5	@ tmp141,
	bhi	.L3	@,
	mvn	r8, #0	@ tmp142,
	mvn	r9, #0	@,
	cmp	r7, r9	@ D.36089, tmp142
	cmpeq	r6, r8	@ D.36089, tmp142
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
	ldrh	r3, [r0, #6]	@ D.36260, <variable>.head
	ldrh	ip, [r0, #4]	@ D.36261, <variable>.history
	ldrh	r0, [r0, #8]	@ D.36269, <variable>.tail
	cmp	r3, ip	@ D.36260, D.36261
	addcc	r4, r3, #64	@ tmp142, D.36260,
	rsbcs	ip, ip, r3	@ ReadNum, D.36261, D.36260
	rsbcc	ip, ip, r4	@ ReadNum, D.36261, tmp142
	cmp	r3, r0	@ D.36260, D.36269
	addhi	r0, r0, #64	@ tmp143, D.36269,
	str	ip, [r1, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r3, r0	@ NewNum, D.36260, tmp143
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
	ldr	ip, [r3, r0, asl #2]	@ D.36890, pstVdecUsdPool
	cmp	ip, #0	@ D.36890,
	beq	.L24	@,
.L18:
	mov	r1, #0	@ tmp174,
	mov	r3, ip	@ ivtmp.639, D.36890
	mov	r2, r1	@ i, tmp174
	mov	r0, r1	@ tmp178, i
	str	r1, [ip, #0]	@ tmp174, <variable>.s32AccessIdx
.L20:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp180, ivtmp.639,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp178, <variable>.from
	str	r0, [r3, #1040]	@ tmp178, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.639, ivtmp.639,
	str	r0, [ip, #1040]	@ tmp178, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp178, <variable>.from
	bne	.L20	@,
	bx	lr	@
.L24:
	cmp	r1, #0	@ D.36890,
	str	r1, [r3, r0, asl #2]	@ D.36890, pstVdecUsdPool
	mov	ip, r1	@ D.36890, Viraddr
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
	ldr	r1, [r3, r0, asl #2]	@ D.36769, pstVdecUsdPool
	cmp	r1, #0	@ D.36769,
	mvneq	r0, #0	@ D.36773,
	bxeq	lr	@
	mov	r0, #0	@ tmp140,
	mov	r3, r1	@ ivtmp.696, D.36769
	mov	r2, r0	@ i, tmp140
	str	r0, [r1, #0]	@ tmp140, <variable>.s32AccessIdx
.L31:
	add	r2, r2, #2	@ i, i,
	add	r1, r3, #1072	@ tmp145, ivtmp.696,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp144, <variable>.from
	str	r0, [r3, #1040]	@ tmp144, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.696, ivtmp.696,
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
	ldr	r0, [r3, r0, asl #2]	@ D.36784, pstVdecUsdPool
	cmp	r0, #0	@ D.36784,
	bne	.L46	@,
.L36:
	mov	r0, #0	@ pstUsrDat,
.L38:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L46:
	mov	r2, r0	@ ivtmp.729, D.36784
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
	add	r2, r1, #1072	@ ivtmp.729, tmp204,
	cmp	r3, #192	@ i,
	beq	.L36	@,
.L39:
	ldr	ip, [r2, #1044]	@ <variable>.from, <variable>.from
	add	r1, r2, #1072	@ tmp204, ivtmp.729,
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
	mla	r3, r1, r3, r0	@ tmp151, tmp150, i, D.36784
	add	r5, ip, r0	@ tmp181, tmp179, D.36784
	add	r4, r4, #1	@ tmp146, tmp144,
	movw	r1, #1064	@ tmp154,
	strb	r2, [ip, r0]	@ <variable>.dnr_used_flag, <variable>.IsRegistered
	strh	r2, [r5, #4]	@ movhi	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_provider_code
	add	r0, r0, r4, asl #3	@, pstUsrDat, D.36784, tmp146,
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
	ldr	r0, [r0, #296]	@ D.36858, <variable>.SideInfo.LastImageIdPlus2
	cmp	r0, #1	@ D.36858,
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
	ldrh	r4, [r0, #8]	@ D.36829, <variable>.tail
	and	r3, r3, #63	@ i.869, i,
	cmp	r4, r3	@ D.36829, i.869
	bne	.L77	@,
	b	.L73	@
.L74:
	cmp	r3, r4	@ i.869, D.36829
	beq	.L73	@,
.L77:
	add	r2, r0, r3, asl #2	@, tmp145, pstVoQue, i.869,
	add	ip, r3, #1	@ i.870, i.869,
	and	r3, ip, #63	@ i.869, i.870,
	ldr	r2, [r2, #12]	@ D.36832, <variable>.image_ptr
	cmp	r2, #0	@ D.36832,
	beq	.L74	@,
	ldr	ip, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L74	@,
	mov	r0, #0	@ D.36826,
	ldmfd	sp!, {r4, pc}	@
.L73:
	mvn	r0, #0	@ D.36826,
	ldmfd	sp!, {r4, pc}	@
.L79:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36826,
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
	beq	.L104	@,
.L81:
	ldrb	r2, [r3, #0]	@ zero_extendqisi2	@ tmp153,* pu8
	cmp	r2, #0	@ tmp153,
	bne	.L83	@,
	ldrb	ip, [r3, #1]	@ zero_extendqisi2	@ tmp154,
	cmp	ip, #0	@ tmp154,
	bne	.L83	@,
	ldrb	r2, [r3, #2]	@ zero_extendqisi2	@ tmp155,
	cmp	r2, #1	@ tmp155,
	beq	.L84	@,
.L83:
	bl	vfmw_dprint_nothing	@
	mvn	r2, #0	@ ret,
.L85:
	mov	r0, r2	@, ret
	ldmfd	sp!, {r3, pc}	@
.L104:
	ldrb	r2, [r2, #72]	@ zero_extendqisi2	@ tmp149,
	tst	r2, #1	@ tmp149,
	movne	r2, #1	@ IsShortHead,
	beq	.L81	@,
.L82:
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ D.36733,
	add	ip, r1, #75	@ tmp166, D.36733,
	uxtb	ip, ip	@ tmp168, tmp166
	cmp	r1, #179	@ D.36733,
	cmpne	ip, #1	@, tmp168,
	bhi	.L105	@,
.L95:
	ldr	ip, [r0, #0]	@ tmp175,* pNewPicDetector
	cmp	ip, #0	@ tmp175,
	beq	.L97	@,
.L96:
	cmp	r2, #1	@ IsShortHead,
	mvnne	r2, #0	@ ret,
	beq	.L97	@,
.L98:
	cmp	r1, #182	@ D.36733,
	bne	.L85	@,
.L103:
	mov	r3, #0	@ tmp195,
	str	r3, [r0, #0]	@ tmp195,* pNewPicDetector
	b	.L85	@
.L84:
	cmp	r1, #6	@ VidStd,
	ldrls	pc, [pc, r1, asl #2]	@ VidStd
	b	.L86	@
.L91:
	.word	.L87
	.word	.L86
	.word	.L88
	.word	.L89
	.word	.L86
	.word	.L86
	.word	.L90
.L89:
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ prephitmp.885,
	cmp	r1, #0	@ prephitmp.885,
	cmpne	r1, #179	@, prephitmp.885,
	beq	.L92	@,
	cmp	r1, #184	@ prephitmp.885,
	beq	.L92	@,
	cmp	r1, #183	@ prephitmp.885,
	beq	.L92	@,
.L86:
	mvn	r2, #0	@ ret,
	b	.L85	@
.L90:
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ D.36733,
	cmp	r1, #176	@ D.36733,
	cmpne	r1, #179	@, D.36733,
	bne	.L106	@,
.L99:
	ldr	r2, [r0, #0]	@ tmp186,* pNewPicDetector
	cmp	r2, #0	@ tmp186,
	bne	.L100	@,
	mov	ip, #1	@ tmp187,
	str	ip, [r0, #0]	@ tmp187,* pNewPicDetector
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ D.36733,
.L101:
	cmp	r1, #179	@ D.36733,
	cmpne	r1, #182	@, D.36733,
	beq	.L103	@,
	b	.L85	@
.L87:
	mov	r1, r3	@, pu8
	bl	H264_IsNewPicNal	@
	subs	r2, r0, #0	@ D.36692,
	bne	.L86	@,
	b	.L85	@
.L92:
	ldr	r2, [r0, #0]	@ tmp163,* pNewPicDetector
	cmp	r2, #0	@ tmp163,
	moveq	r1, #1	@ tmp164,
	streq	r1, [r0, #0]	@ tmp164,* pNewPicDetector
	ldreqb	r1, [r3, #3]	@ zero_extendqisi2	@ prephitmp.885,
	mvnne	r2, #0	@ ret,
	cmp	r1, #0	@ prephitmp.885,
	streq	r1, [r0, #0]	@ prephitmp.885,* pNewPicDetector
	b	.L85	@
.L106:
	cmp	r1, #182	@ D.36733,
	beq	.L99	@,
	cmp	r1, #183	@ D.36733,
	beq	.L99	@,
.L100:
	mvn	r2, #0	@ ret,
	b	.L101	@
.L105:
	cmp	r1, #176	@ D.36733,
	beq	.L95	@,
	cmp	r1, #47	@ D.36733,
	bhi	.L96	@,
	b	.L95	@
.L88:
	mov	r2, #0	@ IsShortHead,
	b	.L82	@
.L97:
	mov	r1, #1	@ tmp176,
	mov	r2, #0	@ ret,
	str	r1, [r0, #0]	@ tmp176,* pNewPicDetector
	ldrb	r1, [r3, #3]	@ zero_extendqisi2	@ D.36733,
	b	.L98	@
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
.LFB1928:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L108	@
.L113:
	.word	.L109
	.word	.L108
	.word	.L110
	.word	.L111
	.word	.L108
	.word	.L108
	.word	.L112
.L112:
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	AVS_ClearCurPic	@
.L111:
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	MP2_ClearCurPic	@
.L110:
	mov	r0, r1	@, pCtx
	str	r1, [sp, #4]	@,
	bl	MP4_ClearCurPic	@
	ldr	r1, [sp, #4]	@,
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	MP4_Clean_HeadPacket	@
.L109:
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	H264_ClearCurrPic	@
.L108:
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	vfmw_dprint_nothing	@
	.fnend
	.size	ReleaseCurPic, .-ReleaseCurPic
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
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L116	@
.L120:
	.word	.L123
	.word	.L116
	.word	.L118
	.word	.L123
	.word	.L116
	.word	.L116
	.word	.L116
.L116:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L118:
	movw	r0, #22060	@ tmp137,
	ldr	r5, [r1, r0]	@ D.36630, <variable>.pstExtraData
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L124	@,
	movw	r6, #22960	@ tmp142,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #320]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L122:
	add	r0, r5, #224	@, D.36630,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L123:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L124:
	movw	r2, #22960	@ tmp139,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L122	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
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
	beq	.L126	@,
	ldr	r3, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	cmp	r3, #0	@ <variable>.CurrSeg.VirAddr,
	beq	.L126	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.36545, <variable>.CurrSeg.IsLastSeg
	cmp	r5, #1	@ D.36545,
	beq	.L138	@,
	cmp	r5, #0	@ D.36545,
	beq	.L139	@,
.L131:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L139:
	add	r8, r4, #88	@ temp.973, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, temp.973
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.ConvolutionPacketNum, <variable>.ConvolutionPacketNum
	add	r1, r2, #1	@ tmp162, <variable>.ConvolutionPacketNum,
	uxtb	r0, r1	@ D.36563, tmp162
	strb	r0, [r4, #2]	@ D.36563, <variable>.ConvolutionPacketNum
	cmp	r0, #1	@ D.36563,
	bls	.L131	@,
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, temp.973
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	movw	ip, #:lower16:g_event_report	@ tmp166,
	movt	ip, #:upper16:g_event_report	@ tmp166,
	ldr	r3, [ip, #0]	@ g_event_report.536, g_event_report
	cmp	r3, #0	@ g_event_report.536,
	beq	.L132	@,
	mov	r0, r6	@, ChanID
	mov	r2, r5	@, D.36545
	mov	r1, #113	@,
	blx	r3	@ g_event_report.536
.L132:
	mov	lr, #0	@ tmp167,
	mvn	r0, #0	@ ret,
	strb	lr, [r4, #2]	@ tmp167, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L138:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.36547, <variable>.ConvolutionPacketNum
	cmp	r5, #0	@ D.36547,
	beq	.L140	@,
	cmp	r5, #1	@ D.36547,
	bne	.L131	@,
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp169,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp169,
	movw	r3, #:lower16:1047552	@ tmp208,
	movt	r3, #:upper16:1047552	@ tmp208,
	ldr	ip, [r2, r0, asl #2]	@ tmp170, s_pstVfmwChan
	ldr	r0, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [ip, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #6	@ <variable>.eVidStd,
	movne	r3, #1024	@ prephitmp.962,
	cmp	r3, r0	@ prephitmp.962, <variable>.LenInByte
	bhi	.L141	@,
	bl	vfmw_dprint_nothing	@
	add	r0, r4, #168	@, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
.L136:
	mov	r0, #0	@ tmp204,
	strb	r0, [r4, #2]	@ tmp204, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L140:
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.36547, <variable>.ConvolutionPacketNum
	mov	r0, r5	@ ret, D.36547
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L141:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #100]	@ temp.977, <variable>.LenInByte
	ldr	r0, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, <variable>.VirAddr
	mov	r2, r3	@, temp.977
	rsb	r0, r3, r0	@, temp.977, <variable>.CurrSeg.VirAddr
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
	strb	r5, [r4, #93]	@ D.36547, <variable>.IsLastSeg
	str	r2, [r4, #96]	@ tmp187, <variable>.PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	str	r3, [r4, #104]	@ <variable>.CurrSeg.StreamID, <variable>.StreamID
	bl	__memzero	@
	b	.L136	@
.L126:
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
	cmp	r1, #6	@ VideoStandard,
	ldrls	pc, [pc, r1, asl #2]	@ VideoStandard
	b	.L160	@
.L148:
	.word	.L144
	.word	.L160
	.word	.L145
	.word	.L146
	.word	.L160
	.word	.L160
	.word	.L147
.L147:
	movw	lr, #:lower16:73696	@ tmp209,
	movt	lr, #:upper16:73696	@ tmp209,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r2, lr]	@ ChanID.1022, <variable>.ChanID
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	bne	.L157	@,
	movw	r3, #:lower16:s_pstVfmwChan	@ tmp210,
	movt	r3, #:upper16:s_pstVfmwChan	@ tmp210,
	ldr	r3, [r3, r6, asl #2]	@ temp.1023, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L161	@,
.L158:
	add	r1, r5, #16384	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
.L157:
	movw	lr, #16608	@ tmp215,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	bne	.L159	@,
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	AVSDEC_Decode	@
.L159:
	ldr	r4, [r5, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r4, #0	@ <variable>.pAvsDecParam,
	bne	.L160	@,
	movw	r6, #17124	@ tmp219,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L160	@,
	bl	vfmw_dprint_nothing	@
	movw	r2, #16608	@ tmp221,
	ldr	r0, [r5, r2]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pAvsDecParam,
.L160:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L146:
	movw	r3, #:lower16:73696	@ tmp175,
	movt	r3, #:upper16:73696	@ tmp175,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r2, r3]	@ ChanID, <variable>.ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L162	@,
.L151:
	movw	r3, #:lower16:73696	@ tmp181,
	movt	r3, #:upper16:73696	@ tmp181,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L163	@,
.L153:
	ldr	r4, [r5, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r4, #0	@ <variable>.pMp2DecParam,
	bne	.L160	@,
	movw	r6, #:lower16:73713	@ tmp185,
	movt	r6, #:upper16:73713	@ tmp185,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L160	@,
	bl	vfmw_dprint_nothing	@
	movw	r2, #:lower16:73696	@ tmp187,
	movt	r2, #:upper16:73696	@ tmp187,
	ldr	r0, [r5, r2]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMp2DecParam,
	b	.L160	@
.L145:
	movw	ip, #:lower16:73696	@ tmp192,
	movt	ip, #:upper16:73696	@ tmp192,
	mov	r0, r2	@, pstCtx
	ldr	r6, [r2, ip]	@ ChanID.1014, <variable>.ChanID
	bl	MP4_GetPacketState	@
	cmp	r0, #3	@,
	beq	.L164	@,
.L154:
	movw	ip, #22960	@ tmp198,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, ip]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L165	@,
.L156:
	ldr	r4, [r5, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r4, #0	@ <variable>.pMp4DecParam,
	bne	.L160	@,
	movw	r6, #22996	@ tmp202,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L160	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #22960	@ tmp204,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pMp4DecParam,
	b	.L160	@
.L144:
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
	moveq	r3, #1	@ tmp163,
	movne	r3, #0	@ tmp165,
	strb	r3, [r4, #1]	@ tmp165, <variable>.IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ <variable>.pH264DecParam, <variable>.pH264DecParam
	cmp	r4, #0	@ <variable>.pH264DecParam,
	bne	.L160	@,
	movw	r6, #13556	@ tmp168,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L160	@,
	bl	vfmw_dprint_nothing	@
	movw	r1, #52840	@ tmp170,
	ldr	r0, [r5, r1]	@,
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pH264DecParam,
	b	.L160	@
.L165:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L156	@
.L163:
	add	r1, r4, #88	@, pSegMan,
	mov	r0, r5	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L153	@
.L164:
	movw	r1, #:lower16:s_pstVfmwChan	@ tmp193,
	movt	r1, #:upper16:s_pstVfmwChan	@ tmp193,
	ldr	r3, [r1, r6, asl #2]	@ temp.1015, s_pstVfmwChan
	ldr	lr, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L166	@,
.L155:
	add	r2, r5, #15680	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r2, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L154	@
.L162:
	movw	ip, #:lower16:s_pstVfmwChan	@ tmp176,
	movt	ip, #:upper16:s_pstVfmwChan	@ tmp176,
	ldr	r3, [ip, r6, asl #2]	@ D.36460, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L167	@,
.L152:
	add	r1, r5, #72704	@, pstCtx,
	mov	r0, r5	@, pstCtx
	add	r1, r1, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L151	@
.L166:
	ldr	r3, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L154	@,
	b	.L155	@
.L167:
	ldr	lr, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	lr, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L151	@,
	b	.L152	@
.L161:
	ldr	ip, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	ip, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L157	@,
	b	.L158	@
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
	b	.L169	@
.L175:
	.word	.L174
	.word	.L169
	.word	.L171
	.word	.L172
	.word	.L169
	.word	.L169
	.word	.L173
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L169
	.word	.L174
.L174:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L177:
	ldr	r0, .L179	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	ldr	r0, .L179	@,
	sub	r3, r1, #1	@ tmp145, <variable>.head,
	and	ip, r3, #63	@ tmp147, tmp145,
	strh	ip, [r4, #6]	@ movhi	@ tmp147, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.36414,
	ldmfd	sp!, {r4, pc}	@
.L169:
	mvn	r0, #1	@ D.36414,
	ldmfd	sp!, {r4, pc}	@
.L171:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r1, #88	@ pstVoQue, pstVoQue,
	b	.L177	@
.L172:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L177	@
.L173:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r2, #32	@ pstVoQue, pstVoQue,
	b	.L177	@
.L180:
	.align	2
.L179:
	.word	.LANCHOR0+4
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
	bne	.L194	@,
.L182:
	mvn	r5, #1	@ ret,
.L192:
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L194:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L182	@
.L188:
	.word	.L187
	.word	.L182
	.word	.L184
	.word	.L185
	.word	.L182
	.word	.L182
	.word	.L186
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L182
	.word	.L187
.L187:
	add	r6, r0, #16	@ pstVoQue, pSynCtx,
.L189:
	ldr	r0, .L195	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r6, #6]	@ D.36295, <variable>.head
	ldrh	r0, [r6, #8]	@ <variable>.tail, <variable>.tail
	cmp	r0, r3	@ <variable>.tail, D.36295
	mvneq	r5, #2	@ ret,
	beq	.L191	@,
	add	lr, r6, r3, asl #2	@, tmp156, pstVoQue, D.36295,
	mov	r2, #392	@,
	mov	r0, r4	@, p_image
	mov	r5, #1	@ ret,
	ldr	r1, [lr, #12]	@, <variable>.image_ptr
	bl	memcpy	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	add	r0, r3, ip	@ tmp165, <variable>.image_id, <variable>.ResetMagicWord
	str	r0, [r4, #176]	@ tmp165, <variable>.image_id
	ldr	r2, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	str	r2, [r4, #380]	@ <variable>.ResetMagicWord, <variable>.resetNum
	ldrh	r1, [r6, #6]	@ <variable>.head, <variable>.head
	add	r3, r1, r5	@ tmp169, <variable>.head,
	and	ip, r3, #63	@ tmp171, tmp169,
	strh	ip, [r6, #6]	@ movhi	@ tmp171, <variable>.head
.L191:
	ldr	r0, .L195	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L192	@
.L186:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r6, r2, #32	@ pstVoQue, pstVoQue,
	b	.L189	@
.L185:
	add	r6, r0, #72704	@ pstVoQue, pSynCtx,
	add	r6, r6, #648	@ pstVoQue, pstVoQue,
	b	.L189	@
.L184:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r6, r1, #88	@ pstVoQue, pstVoQue,
	b	.L189	@
.L196:
	.align	2
.L195:
	.word	.LANCHOR0+4
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
	ldr	r5, .L199	@ tmp135,
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
.L200:
	.align	2
.L199:
	.word	.LANCHOR0+4
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
	bne	.L239	@,
.L202:
	mvn	r4, #1	@ ret,
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L239:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L202	@
.L208:
	.word	.L207
	.word	.L202
	.word	.L204
	.word	.L205
	.word	.L202
	.word	.L202
	.word	.L206
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L202
	.word	.L207
.L207:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L209:
	ldr	r0, .L240	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r3, [r4, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	rsb	ip, r3, r2	@ tmp160, <variable>.ResetMagicWord, <variable>.image_id
	str	ip, [r5, #176]	@ tmp160, <variable>.image_id
	ldrh	r7, [r4, #4]	@ i.1135, <variable>.history
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	and	r7, r7, #63	@ i, i.1135,
	cmp	r1, r7	@ <variable>.head, i
	bne	.L233	@,
	b	.L212	@
.L215:
	add	r7, r7, #1	@ i.1145, i,
	and	r7, r7, #63	@ i, i.1145,
	cmp	r1, r7	@ <variable>.head, i
	beq	.L212	@,
.L233:
	add	r8, r7, #2	@ tmp198, i,
	add	lr, r4, r8, asl #2	@, tmp165, pstVoQue, tmp198,
	ldr	r3, [lr, #4]	@ D.36350, <variable>.image_ptr
	cmp	r3, #0	@ D.36350,
	beq	.L213	@,
	ldr	ip, [r3, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r0, ip	@ <variable>.image_id, <variable>.image_id
	bne	.L215	@,
	mov	lr, #1	@ SameImageFlag,
.L216:
	ldrh	ip, [r4, #4]	@ temp.1137, <variable>.history
	b	.L230	@
.L219:
	mov	r7, r3	@ i, j
.L230:
	cmp	r7, #0	@ i,
	sub	r3, r7, #1	@ j, i,
	add	r1, r4, r8, asl #2	@, tmp172, pstVoQue, tmp198,
	moveq	r3, #63	@ j,
	add	r2, r3, #2	@ tmp174, j,
	cmp	ip, r7	@ temp.1137, i
	add	r0, r4, r2, asl #2	@, tmp177, pstVoQue, tmp174,
	mov	r8, r2	@ tmp198, tmp174
	ldr	r2, [r0, #4]	@ tmp179, <variable>.image_ptr
	str	r2, [r1, #4]	@ tmp179, <variable>.image_ptr
	bne	.L219	@,
	cmp	lr, #1	@ SameImageFlag,
	add	lr, ip, #1	@ tmp180, temp.1137,
	and	r3, lr, #63	@ tmp182, tmp180,
	strh	r3, [r4, #4]	@ movhi	@ tmp182, <variable>.history
	beq	.L235	@,
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	add	r7, r7, #1	@ i.1145, i,
	and	r7, r7, #63	@ i, i.1145,
	cmp	r1, r7	@ <variable>.head, i
	bne	.L233	@,
.L212:
	mvn	r4, #1	@ ret,
.L227:
	ldr	r0, .L240	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L213:
	bl	vfmw_dprint_nothing	@
	mov	lr, #2	@ SameImageFlag,
	b	.L216	@
.L235:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, ip, asl #2]	@ <variable>.eVidStd
	b	.L212	@
.L225:
	.word	.L220
	.word	.L212
	.word	.L221
	.word	.L222
	.word	.L212
	.word	.L212
	.word	.L223
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L212
	.word	.L224
.L206:
	add	r1, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r1, #32	@ pstVoQue, pstVoQue,
	b	.L209	@
.L205:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L209	@
.L204:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r0, #88	@ pstVoQue, pstVoQue,
	b	.L209	@
.L224:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	USERDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L227	@
.L223:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	AVSDEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L227	@
.L221:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	MPEG4DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L227	@
.L220:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	H264DEC_RecycleImage	@
	cmp	r0, #0	@,
	moveq	r4, #1	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L227	@
.L222:
	add	r0, r6, #8	@, pSynCtx,
	ldr	r1, [r5, #176]	@, <variable>.image_id
	bl	MPEG2DEC_RecycleImage	@
	cmp	r0, #1	@ ret,
	mov	r4, r0	@ ret,
	mvnne	r4, #19	@ ret,
	b	.L227	@
.L241:
	.align	2
.L240:
	.word	.LANCHOR0+4
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
	@ link register save eliminated.
	cmp	r0, #18	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L250	@
.L249:
	.word	.L244
	.word	.L250
	.word	.L245
	.word	.L246
	.word	.L250
	.word	.L250
	.word	.L247
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L250
	.word	.L248
.L248:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	USERDEC_RecycleImage	@
.L244:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	H264DEC_RecycleImage	@
.L245:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	MPEG4DEC_RecycleImage	@
.L246:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	MPEG2DEC_RecycleImage	@
.L247:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	AVSDEC_RecycleImage	@
.L250:
	bx	lr	@
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
	beq	.L282	@,
	movw	r8, #:lower16:.LANCHOR0	@ tmp302,
	movt	r8, #:upper16:.LANCHOR0	@ tmp302,
	bl	vfmw_dprint_nothing	@
	add	r0, r8, #4	@, tmp302,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r9, [r7, #4]	@ i, <variable>.history
	ldrh	r1, [r7, #8]	@ <variable>.tail, <variable>.tail
	and	r9, r9, #63	@ i.1205, i,
	cmp	r1, r9	@ <variable>.tail, i.1205
	beq	.L254	@,
	mov	fp, #1000	@ tmp308,
	b	.L280	@
.L255:
	add	lr, r9, #1	@ i.1206, i.1205,
	and	r9, lr, #63	@ i.1205, i.1206,
	cmp	r1, r9	@ <variable>.tail, i.1205
	beq	.L254	@,
.L280:
	add	ip, r7, r9, asl #2	@, tmp170, pstVoQue, i.1205,
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [ip, #12]	@ tmp167, <variable>.image_ptr
	ldr	r2, [r0, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r2, r3	@ <variable>.image_id, <variable>.image_id
	bne	.L255	@,
	bl	vfmw_dprint_nothing	@
	str	fp, [r4, #180]	@ tmp308, <variable>.error_level
	add	lr, r9, #1	@ i.1206, i.1205,
	ldrh	r1, [r7, #8]	@ <variable>.tail, <variable>.tail
	and	r9, lr, #63	@ i.1205, i.1206,
	cmp	r1, r9	@ <variable>.tail, i.1205
	bne	.L280	@,
.L254:
	ldr	r1, [r4, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #100	@ <variable>.error_level,
	bhi	.L257	@,
	ldr	r2, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r2, #31	@ <variable>.image_width,
	bhi	.L283	@,
.L257:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r0, #1000	@ <variable>.error_level,
	beq	.L259	@,
	mov	r0, r5	@, eVidStd
	mov	r1, sl	@, pCtx
	mov	r2, r4	@, p_image
	bl	ReturnImageToSyntax	@
.L259:
	ldr	r0, .L287	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.36125,
.L253:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L283:
	ldr	r3, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r3, #31	@ <variable>.image_height,
	bls	.L257	@,
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
	beq	.L262	@,
	ldr	r3, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	cmp	r3, #0	@ <variable>.disp_height,
	bne	.L284	@,
.L262:
	ldr	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	fp, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	sl, r3, lsr #1	@ tmp199, <variable>.image_width,
	str	r3, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	mov	r5, fp, lsr #1	@ tmp201, <variable>.image_height,
	str	fp, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	sl, [r4, #160]	@ tmp199, <variable>.disp_center_x
	str	r5, [r4, #164]	@ tmp201, <variable>.disp_center_y
.L263:
	str	r3, [r7, #300]	@ <variable>.image_width, <variable>.SideInfo.ImageWidth
	ldr	r3, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	sl, [r7, #280]	@ <variable>.SideInfo.OldSeqCnt, <variable>.SideInfo.OldSeqCnt
	str	r3, [r7, #304]	@ <variable>.image_height, <variable>.SideInfo.ImageHeight
	ldr	lr, [r4, #140]	@ <variable>.format, <variable>.format
	ubfx	ip, lr, #5, #3	@ tmp208, <variable>.format,,
	str	ip, [r7, #308]	@ tmp208, <variable>.SideInfo.VideoFormat
	ldr	fp, [r4, #140]	@ <variable>.format, <variable>.format
	ldr	lr, [r7, #316]	@ D.36178, <variable>.SideInfo.SeqImgCnt
	str	fp, [r7, #312]	@ <variable>.format, <variable>.SideInfo.ImageFormat
	add	ip, lr, #1	@ tmp223, D.36178,
	ldr	r3, [r4, #184]	@ D.36174, <variable>.seq_cnt
	ldr	r0, [r4, #160]	@ <variable>.disp_center_x, <variable>.disp_center_x
	ldrh	r2, [r4, #164]	@ tmp217, <variable>.disp_center_y
	cmp	r3, sl	@ D.36174, <variable>.SideInfo.OldSeqCnt
	ldr	r5, [r4, #140]	@ temp.1215, <variable>.format
	ldr	r9, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	orr	fp, r2, r0, asl #16	@, dcenter, tmp217, <variable>.disp_center_x,
	ldrh	r1, [r4, #152]	@ tmp212, <variable>.disp_width
	ubfx	sl, r5, #8, #2	@ ScanType, temp.1215,,
	strne	r3, [r7, #320]	@ D.36174, <variable>.SideInfo.SeqCnt
	ubfx	r5, r5, #14, #3	@ AspectRatio, temp.1215,,
	str	lr, [r4, #188]	@ D.36178, <variable>.seq_img_cnt
	orr	r9, r1, r9, asl #16	@, dsize, tmp212, <variable>.disp_height,
	ldr	r2, [r7, #272]	@ D.36180, <variable>.SideInfo.OldAspectRatio
	str	ip, [r7, #316]	@ tmp223, <variable>.SideInfo.SeqImgCnt
	cmp	r2, r5	@ D.36180, AspectRatio
	beq	.L265	@,
	movw	r0, #:lower16:g_event_report	@ tmp224,
	movt	r0, #:upper16:g_event_report	@ tmp224,
	ldr	r3, [r0, #0]	@ g_event_report.504, g_event_report
	cmp	r3, #0	@ g_event_report.504,
	beq	.L266	@,
	strb	r2, [sp, #0]	@ D.36180, para
	mov	r0, r6	@, ChanID
	strb	r5, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.504
.L266:
	str	r5, [r7, #272]	@ AspectRatio, <variable>.SideInfo.OldAspectRatio
.L265:
	ldr	r2, [r7, #276]	@ <variable>.SideInfo.OldScanType, <variable>.SideInfo.OldScanType
	cmp	r2, sl	@ <variable>.SideInfo.OldScanType, ScanType
	beq	.L267	@,
	movw	r5, #:lower16:g_event_report	@ tmp229,
	movt	r5, #:upper16:g_event_report	@ tmp229,
	ldr	r3, [r5, #0]	@ g_event_report.1218, g_event_report
	cmp	r3, #0	@ g_event_report.1218,
	beq	.L268	@,
	add	r1, sp, #8	@ tmp231,,
	mov	r0, r6	@, ChanID
	mov	r2, sp	@,
	strb	sl, [r1, #-8]!	@ ScanType, para
	mov	r1, #4	@,
	blx	r3	@ g_event_report.1218
.L268:
	str	sl, [r7, #276]	@ ScanType, <variable>.SideInfo.OldScanType
.L267:
	ldr	sl, [r7, #288]	@ <variable>.SideInfo.OldDispSize, <variable>.SideInfo.OldDispSize
	cmp	sl, r9	@ <variable>.SideInfo.OldDispSize, dsize
	beq	.L285	@,
.L269:
	movw	lr, #:lower16:g_event_report	@ tmp234,
	movt	lr, #:upper16:g_event_report	@ tmp234,
	str	r9, [r7, #288]	@ dsize, <variable>.SideInfo.OldDispSize
	str	fp, [r7, #292]	@ dcenter, <variable>.SideInfo.OldDispCenter
	ldr	r3, [lr, #0]	@ g_event_report.1219, g_event_report
	cmp	r3, #0	@ g_event_report.1219,
	beq	.L270	@,
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
	blx	r3	@ g_event_report.1219
.L270:
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
	ldr	r0, .L287	@,
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
	ldr	r3, [r4, #300]	@ D.36221, <variable>.ImageDnr.video_standard
	sub	r1, r3, #10	@ tmp269, D.36221,
	cmp	r1, #2	@ tmp269,
	bhi	.L271	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp270,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp270,
	ldr	lr, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	bne	.L273	@,
.L272:
	movw	r3, #:lower16:g_event_report	@ tmp273,
	movt	r3, #:upper16:g_event_report	@ tmp273,
	ldr	r3, [r3, #0]	@ g_event_report.1231, g_event_report
	cmp	r3, #0	@ g_event_report.1231,
	beq	.L274	@,
	add	ip, sp, #8	@ tmp274,,
	mov	r0, r6	@, ChanID
	mov	r2, sp	@,
	mov	r1, #5	@,
	str	r4, [ip, #-8]!	@ p_image, para
	blx	r3	@ g_event_report.1231
.L274:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L286	@,
.L275:
	ldr	r0, [sl, #4]	@ <variable>.u32FrImgNum, <variable>.u32FrImgNum
	add	lr, r0, #1	@ tmp290, <variable>.u32FrImgNum,
	str	lr, [sl, #4]	@ tmp290, <variable>.u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	ip, [r5, r9, asl #3]	@ <variable>.u32FrBeginTime, <variable>.u32FrBeginTime
	rsb	r1, ip, r0	@ Period, <variable>.u32FrBeginTime, CurTime.1232
	mov	r4, r0	@ CurTime.1232,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.36125,
	bcc	.L253	@,
	ldr	r3, [sl, #4]	@ temp.1233, <variable>.u32FrImgNum
	cmp	r3, #0	@ temp.1233,
	beq	.L277	@,
	movw	r2, #10000	@ tmp294,
	mul	r0, r2, r3	@, tmp294, temp.1233
	bl	__aeabi_uidiv	@
	str	r0, [sl, #8]	@, <variable>.u32FrFrameRate
.L277:
	mov	r1, #0	@ tmp298,
	mov	r0, #1	@ D.36125,
	str	r4, [r5, r9, asl #3]	@ CurTime.1232, <variable>.u32FrBeginTime
	str	r1, [sl, #4]	@ tmp298, <variable>.u32FrImgNum
	b	.L253	@
.L271:
	cmp	r3, #4	@ D.36221,
	beq	.L272	@,
	cmp	r3, #14	@ D.36221,
	beq	.L272	@,
.L273:
	cmp	r3, #18	@ D.36221,
	bne	.L274	@,
	b	.L272	@
.L284:
	cmp	r5, #15	@ eVidStd,
	cmpne	r5, #0	@, eVidStd,
	ldreq	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	beq	.L263	@,
	b	.L262	@
.L286:
	bl	OSAL_GetTimeInMs	@
	add	r6, r8, r6, asl #2	@, tmp278, tmp302, ChanID,
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp282,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp282,
	ldr	r2, [r6, #12]	@ tmp281, last_rec_pos_time
	ldr	r1, [r3, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r4, r2, r0	@ tmp280, tmp281, CurTime
	cmp	r4, r1	@ tmp280, g_TraceFramePeriod
	strhi	r0, [r6, #12]	@ CurTime, last_rec_pos_time
	b	.L275	@
.L285:
	ldr	ip, [r7, #292]	@ <variable>.SideInfo.OldDispCenter, <variable>.SideInfo.OldDispCenter
	cmp	ip, fp	@ <variable>.SideInfo.OldDispCenter, dcenter
	bne	.L269	@,
	b	.L270	@
.L282:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.36125,
	b	.L253	@
.L288:
	.align	2
.L287:
	.word	.LANCHOR0+4
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
	.size	pstVdecUsdPool, 4
pstVdecUsdPool:
	.space	4
	.type	g_SpinLock, %object
	.size	g_SpinLock, 8
g_SpinLock:
	.space	8
	.type	last_rec_pos_time.36113, %object
	.size	last_rec_pos_time.36113, 4
last_rec_pos_time.36113:
	.space	4
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
