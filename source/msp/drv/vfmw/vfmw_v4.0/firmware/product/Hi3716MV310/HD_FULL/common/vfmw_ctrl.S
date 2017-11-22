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
	.file	"vfmw_ctrl.c"
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
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310/osal/linux_kernel
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib armv7a_soft -iprefix
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
@ -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC052 -DHI_LOG_SUPPORT=1
@ -DHI_LOG_LEVEL=4 -DHI_PROC_SUPPORT=1 -DHI_PNG_DECODER_SUPPORT
@ -DHI_KEYLED_SUPPORT -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT
@ -DHI_GPIOI2C_SUPPORT -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DMODULE
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.o
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
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
	.fnstart
.LFB1673:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36585, s_pstVfmwChan
	cmp	r0, #0	@ D.36585,
	addne	r0, r0, #104	@ D.36588, D.36585,
	bx	lr	@
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
	.fnstart
.LFB1675:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36606, s_pstVfmwChan
	cmp	r0, #0	@ D.36606,
	addne	r0, r0, #128	@ D.36609, D.36606,
	bx	lr	@
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetDispState
	.type	VCTRL_GetDispState, %function
VCTRL_GetDispState:
	.fnstart
.LFB1679:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp196,
	movt	r3, #:upper16:.LANCHOR0	@ tmp196,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}	@,
	.save {r4, r5, r6, r7, r8, r9, sl}
	ldr	ip, [r3, r0, asl #2]	@ temp.973, s_pstVfmwChan
	movw	r4, #:lower16:181770	@ tmp176,
	movt	r4, #:upper16:181770	@ tmp176,
	ldrsb	r5, [ip, r4]	@ D.36678, <variable>.FspInst.s32DecFsNum
	cmp	r5, #0	@ D.36678,
	movle	r7, #0	@ prephitmp.952,
	ble	.L11	@,
	movw	r4, #:lower16:209558	@ tmp181,
	movt	r4, #:upper16:209558	@ tmp181,
	add	r7, ip, r4	@ tmp181, temp.973, tmp181
	mov	r8, #52	@ tmp179,
	mul	r8, r8, r5	@ D.41626, tmp179, D.36678
	ldrsb	r5, [r7, #0]	@ <variable>.DispState, <variable>.DispState
	mov	r7, #0	@ s32DecodedFrameNum,
	cmp	r5, #3	@ <variable>.DispState,
	sub	r4, r8, #52	@ tmp202, D.41626,
	ubfx	r5, r4, #2, #1	@ tmp215, tmp202,,
	beq	.L31	@,
.L19:
	mov	r4, #52	@ ivtmp.967,
	cmp	r4, r8	@ ivtmp.967, D.41626
	beq	.L11	@,
	cmp	r5, #0	@ tmp215,
	beq	.L13	@,
	movw	r5, #:lower16:209610	@ tmp229,
	movt	r5, #:upper16:209610	@ tmp229,
	add	r5, ip, r5	@ tmp229, temp.973, tmp229
	add	r4, r4, #52	@ ivtmp.967, ivtmp.967,
	ldrsb	r5, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r5, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, r8	@ ivtmp.967, D.41626
	bne	.L13	@,
	b	.L11	@
.L24:
	add	r4, r6, #52	@ ivtmp.967, tmp216,
	cmp	r4, r8	@ ivtmp.967, D.41626
	beq	.L11	@,
.L13:
	movw	r5, #:lower16:209558	@ tmp220,
	movt	r5, #:upper16:209558	@ tmp220,
	add	r6, r4, #52	@ tmp216, ivtmp.967,
	add	r9, ip, r4	@ tmp218, temp.973, ivtmp.967
	add	sl, ip, r6	@ tmp223, temp.973, tmp216
	mov	r4, r5	@ tmp225, tmp220
	add	r5, r9, r5	@ tmp220, tmp218, tmp220
	add	r4, sl, r4	@ tmp225, tmp223, tmp225
	ldrsb	r5, [r5, #0]	@ <variable>.DispState, <variable>.DispState
	ldrsb	r4, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r5, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, #3	@ <variable>.DispState,
	bne	.L24	@,
	add	r4, r6, #52	@ ivtmp.967, tmp216,
	add	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r4, r8	@ ivtmp.967, D.41626
	bne	.L13	@,
.L11:
	str	r7, [r1, #88]	@ prephitmp.952, <variable>.wait_disp_frame_num
	movw	ip, #:lower16:181770	@ tmp186,
	ldr	r4, [r3, r0, asl #2]	@ tmp185, s_pstVfmwChan
	movt	ip, #:upper16:181770	@ tmp186,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ temp.970, <variable>.FspInst.s32DecFsNum
	cmp	ip, #0	@ temp.970,
	moveq	ip, #4	@ iftmp.486,
	mvnne	r4, r2	@ tmp187, RefNum
	sxtabne	ip, r4, ip	@ iftmp.486, tmp187, temp.970
	str	ip, [r1, #96]	@ iftmp.486, <variable>.total_disp_frame_num
	ldr	r3, [r3, r0, asl #2]	@ tmp190, s_pstVfmwChan
	movw	ip, #:lower16:181770	@ tmp191,
	movt	ip, #:upper16:181770	@ tmp191,
	ldrsb	r3, [r3, ip]	@ temp.972, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ temp.972,
	ble	.L17	@,
	add	r2, r2, #1	@ tmp194, RefNum,
	cmp	r3, r2	@ temp.972, tmp194
	movle	r3, #0	@ tmp195,
	strle	r3, [r1, #96]	@ tmp195, <variable>.total_disp_frame_num
.L17:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl}
	bx	lr
.L31:
	mov	r7, #1	@ s32DecodedFrameNum,
	b	.L19	@
	.fnend
	.size	VCTRL_GetDispState, .-VCTRL_GetDispState
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
	.fnstart
.LFB1681:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r0, [r3, r0, asl #2]	@ D.36736, s_pstVfmwChan
	cmp	r0, #0	@ D.36736,
	addne	r0, r0, #116	@ D.36739, D.36736,
	bx	lr	@
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_GetChanCtxSize
	.type	VCTRL_GetChanCtxSize, %function
VCTRL_GetChanCtxSize:
	.fnstart
.LFB1685:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:539128	@ tmp135,
	movt	r3, #:upper16:539128	@ tmp135,
	str	r3, [r1, #0]	@ tmp135,* s32ChanCtxSize
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanCtxSize, .-VCTRL_GetChanCtxSize
	.align	2
	.global	VCTRL_CheckCommonParameter
	.type	VCTRL_CheckCommonParameter, %function
VCTRL_CheckCommonParameter:
	.fnstart
.LFB1704:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r3, [r3, r0, asl #2]	@ D.37831, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r0, r2	@ <variable>.stChanCfg.eVidStd, <variable>.eVidStd
	bne	.L39	@,
	ldr	ip, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldr	r0, [r1, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.s32ChanErrThr
	bne	.L39	@,
	ldr	ip, [r3, #44]	@ <variable>.stChanCfg.s32ChanPriority, <variable>.stChanCfg.s32ChanPriority
	ldr	r2, [r1, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	cmp	ip, r2	@ <variable>.stChanCfg.s32ChanPriority, <variable>.s32ChanPriority
	bne	.L39	@,
	ldr	r0, [r3, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	ip, [r1, #20]	@ <variable>.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	cmp	r0, ip	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	bne	.L39	@,
	ldr	r0, [r3, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	ldr	r2, [r1, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r0, r2	@ <variable>.stChanCfg.s32DecMode, <variable>.s32DecMode
	bne	.L39	@,
	ldr	ip, [r3, #60]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	ldr	r0, [r1, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	ip, r0	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.s32DecOrderOutput
	bne	.L39	@,
	ldr	ip, [r3, #68]	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.stChanCfg.s32DnrDispOutEnable
	ldr	r2, [r1, #36]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	cmp	ip, r2	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	bne	.L39	@,
	ldr	r0, [r3, #64]	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.stChanCfg.s32DnrTfEnable
	ldr	ip, [r1, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	cmp	r0, ip	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.s32DnrTfEnable
	bne	.L39	@,
	ldr	r0, [r3, #76]	@ <variable>.stChanCfg.s32VcmpEn, <variable>.stChanCfg.s32VcmpEn
	ldr	r2, [r1, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r0, r2	@ <variable>.stChanCfg.s32VcmpEn, <variable>.s32VcmpEn
	bne	.L39	@,
	ldr	ip, [r3, #88]	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.stChanCfg.s32VcmpWmEndLine
	ldr	r0, [r1, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	bne	.L39	@,
	ldr	ip, [r3, #84]	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.stChanCfg.s32VcmpWmStartLine
	ldr	r2, [r1, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	cmp	ip, r2	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bne	.L39	@,
	ldr	r0, [r3, #80]	@ <variable>.stChanCfg.s32WmEn, <variable>.stChanCfg.s32WmEn
	ldr	ip, [r1, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r0, ip	@ <variable>.stChanCfg.s32WmEn, <variable>.s32WmEn
	bne	.L39	@,
	ldr	r2, [r3, #92]	@ <variable>.stChanCfg.s32SupportAllP, <variable>.stChanCfg.s32SupportAllP
	ldr	r3, [r1, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r2, r3	@ <variable>.stChanCfg.s32SupportAllP, <variable>.s32SupportAllP
	moveq	r0, #0	@ D.37884,
	bxeq	lr	@
.L39:
	mvn	r0, #0	@ D.37884,
	bx	lr	@
	.fnend
	.size	VCTRL_CheckCommonParameter, .-VCTRL_CheckCommonParameter
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
	.fnstart
.LFB1705:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r4, [r2, r0, asl #2]	@ D.37890, s_pstVfmwChan
	mov	r5, r1	@ pstCfg, pstCfg
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	bne	.L48	@,
.L43:
	mvn	r0, #0	@ D.37907,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L48:
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@,
	bne	.L43	@,
	ldr	r3, [r4, #32]	@ D.37897, <variable>.stChanCfg.eVidStd
	cmp	r3, #1	@ D.37897,
	beq	.L49	@,
	sub	r3, r3, #10	@ tmp146, D.37897,
	cmp	r3, #2	@ tmp146,
	bhi	.L45	@,
	ldr	r2, [r4, #36]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, r0	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L43	@,
.L45:
	mov	r0, #0	@ D.37907,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L49:
	ldr	r0, [r4, #36]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r1, [r5, #4]	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, r1	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	bne	.L43	@,
	ldr	ip, [r4, #40]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	lr, [r5, #8]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	ip, lr	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	beq	.L45	@,
	b	.L43	@
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_ClearDecparam
	.type	VCTRL_ClearDecparam, %function
VCTRL_ClearDecparam:
	.fnstart
.LFB1731:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	ldr	r2, [r1, r0, asl #2]	@ D.38815, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L63	@
.L62:
	.word	.L52
	.word	.L60
	.word	.L54
	.word	.L60
	.word	.L63
	.word	.L60
	.word	.L60
	.word	.L63
	.word	.L60
	.word	.L60
	.word	.L60
	.word	.L60
	.word	.L60
	.word	.L61
.L60:
	movw	ip, #:lower16:217524	@ tmp153,
	movt	ip, #:upper16:217524	@ tmp153,
	mov	r0, #0	@ tmp154,
	str	r0, [r2, ip]	@ tmp154,
	bx	lr	@
.L61:
	movw	r3, #:lower16:217524	@ tmp155,
	movt	r3, #:upper16:217524	@ tmp155,
	mov	r1, #0	@ tmp156,
	str	r1, [r2, r3]	@ tmp156, <variable>.stSynCtx.unSyntax.stVp8Ctx.pVp8DecParam
.L63:
	bx	lr	@
.L54:
	movw	r3, #:lower16:218556	@ tmp141,
	movt	r3, #:upper16:218556	@ tmp141,
	mov	r1, #0	@ tmp142,
	str	r1, [r2, r3]	@ tmp142,
	bx	lr	@
.L52:
	movw	ip, #:lower16:217880	@ tmp137,
	movt	ip, #:upper16:217880	@ tmp137,
	mov	r0, #0	@ tmp138,
	str	r0, [r2, ip]	@ tmp138,
	bx	lr	@
	.fnend
	.size	VCTRL_ClearDecparam, .-VCTRL_ClearDecparam
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
	.fnstart
.LFB1738:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ <variable>.s32NoStreamFlag, <variable>.s32NoStreamFlag
	subs	r0, r0, #1	@, <variable>.s32NoStreamFlag,
	movne	r0, #1	@
	bx	lr	@
	.fnend
	.size	VCTRL_IsChanSegEnough, .-VCTRL_IsChanSegEnough
	.align	2
	.global	VCTRL_IsChanActive
	.type	VCTRL_IsChanActive, %function
VCTRL_IsChanActive:
	.fnstart
.LFB1739:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	bls	.L70	@,
.L67:
	mvn	r0, #0	@ D.39015,
	bx	lr	@
.L70:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.39014, s_pstVfmwChan
	cmp	r3, #0	@ D.39014,
	beq	.L67	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L67	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #0	@ <variable>.s32IsRun,
	beq	.L67	@,
	ldr	ip, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L67	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	movne	r0, #0	@ D.39015,
	bxne	lr	@
	b	.L67	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
.LFB1748:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	ip, [ip, #100]	@ D.39353, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r4, r0	@ FrmNum, FrmNum
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.39353,
	mvneq	r0, #0	@ iftmp.635,
	beq	.L73	@,
	mov	r0, r1	@, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.39353
.L73:
	mul	r4, r4, r0	@ tmp140, FrmNum, iftmp.635
	str	r4, [r5, #0]	@ tmp140,* pChanPmvSize
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_GetChanPmvSize, .-VCTRL_GetChanPmvSize
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
.LFB1758:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp153,
	movt	r3, #:upper16:.LANCHOR0	@ tmp153,
	ldr	r2, [r3, #0]	@ temp.1203, s_pstVfmwChan
	cmp	r2, #0	@ temp.1203,
	beq	.L76	@,
	add	r1, r2, #217088	@ tmp141, temp.1203,
	add	r2, r1, #432	@ tmp141, tmp141,
	cmp	r2, r0	@ tmp141, pCtx
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L76:
	ldr	r2, [r3, #4]	@ temp.1205, s_pstVfmwChan
	cmp	r2, #0	@ temp.1205,
	beq	.L78	@,
	add	r2, r2, #217088	@ tmp144, temp.1205,
	add	ip, r2, #432	@ tmp144, tmp144,
	cmp	ip, r0	@ tmp144, pCtx
	moveq	r0, #1	@ i,
	bxeq	lr	@
.L78:
	ldr	r2, [r3, #8]	@ temp.1207, s_pstVfmwChan
	cmp	r2, #0	@ temp.1207,
	beq	.L79	@,
	add	ip, r2, #217088	@ tmp147, temp.1207,
	add	r1, ip, #432	@ tmp147, tmp147,
	cmp	r1, r0	@ tmp147, pCtx
	moveq	r0, #2	@ i,
	bxeq	lr	@
.L79:
	ldr	r3, [r3, #12]	@ D.39956, s_pstVfmwChan
	cmp	r3, #0	@ D.39956,
	beq	.L80	@,
	add	r2, r3, #217088	@ tmp150, D.39956,
	add	r3, r2, #432	@ tmp150, tmp150,
	cmp	r3, r0	@ tmp150, pCtx
	moveq	r0, #3	@ i,
	bxeq	lr	@
.L80:
	mvn	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
.LFB1759:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp169,
	movt	r3, #:upper16:.LANCHOR0	@ tmp169,
	ldr	r2, [r3, #0]	@ temp.1233, s_pstVfmwChan
	cmp	r2, #0	@ temp.1233,
	beq	.L83	@,
	ldr	r1, [r2, #176]	@ temp.1235, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1235
	bge	.L84	@,
.L86:
	ldr	r1, [r2, #192]	@ temp.1234, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1234
	blt	.L83	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp149, temp.1234, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp149
	blt	.L96	@,
.L83:
	ldr	r2, [r3, #4]	@ temp.1240, s_pstVfmwChan
	cmp	r2, #0	@ temp.1240,
	beq	.L87	@,
	ldr	r1, [r2, #176]	@ temp.1241, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1241
	bge	.L88	@,
.L89:
	ldr	r1, [r2, #192]	@ temp.1242, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1242
	blt	.L87	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp154, temp.1242, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp154
	blt	.L98	@,
.L87:
	ldr	r2, [r3, #8]	@ temp.1247, s_pstVfmwChan
	cmp	r2, #0	@ temp.1247,
	beq	.L90	@,
	ldr	r1, [r2, #176]	@ temp.1248, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1248
	bge	.L91	@,
.L92:
	ldr	r1, [r2, #192]	@ temp.1249, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, temp.1249
	blt	.L90	@,
	ldr	r2, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r1, r1, r2	@ tmp159, temp.1249, <variable>.stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, tmp159
	blt	.L99	@,
.L90:
	ldr	r3, [r3, #12]	@ D.39972, s_pstVfmwChan
	cmp	r3, #0	@ D.39972,
	beq	.L93	@,
	ldr	r2, [r3, #176]	@ D.39975, <variable>.stChanMem_vdh.PhyAddr
	cmp	r2, r0	@ D.39975, PhyAddr
	ble	.L100	@,
.L94:
	ldr	r2, [r3, #192]	@ D.39983, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.39983
	blt	.L93	@,
	ldr	r3, [r3, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, r2, r3	@ tmp166, D.39983, <variable>.stChanMem_scd.Length
	cmp	r0, ip	@ PhyAddr, tmp166
	blt	.L97	@,
.L93:
	mvn	r0, #0	@ i,
	bx	lr	@
.L84:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp151, temp.1235, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp151
	bge	.L86	@,
.L96:
	mov	r0, #0	@ i,
	bx	lr	@
.L88:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp156, temp.1241, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp156
	bge	.L89	@,
.L98:
	mov	r0, #1	@ i,
	bx	lr	@
.L91:
	ldr	ip, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r1, r1, ip	@ tmp161, temp.1248, <variable>.stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, tmp161
	bge	.L92	@,
.L99:
	mov	r0, #2	@ i,
	bx	lr	@
.L100:
	ldr	r1, [r3, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	r2, r2, r1	@ tmp164, D.39975, <variable>.stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, tmp164
	bge	.L94	@,
.L97:
	mov	r0, #3	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
.LFB1763:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp156,
	movt	r3, #:upper16:.LANCHOR0	@ tmp156,
	ldr	r2, [r3, r0, asl #2]	@ D.40190, s_pstVfmwChan
	cmp	r2, #0	@ D.40190,
	beq	.L102	@,
	ldr	r1, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L102	@
.L115:
	.word	.L114
	.word	.L104
	.word	.L105
	.word	.L106
	.word	.L107
	.word	.L108
	.word	.L109
	.word	.L102
	.word	.L110
	.word	.L111
	.word	.L112
	.word	.L112
	.word	.L112
	.word	.L113
	.word	.L107
	.word	.L102
	.word	.L102
	.word	.L102
	.word	.L114
.L114:
	add	ip, r2, #217088	@ pstVoQue, D.40190,
	add	r0, ip, #440	@ pstVoQue, pstVoQue,
	bx	lr	@
.L102:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L112:
	ldr	r1, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	addne	r0, r2, #229376	@ pstVoQue, D.40190,
	addne	r0, r0, #792	@ pstVoQue, pstVoQue,
	bxne	lr	@
.L107:
	add	r0, r2, #237568	@ pstVoQue, D.40190,
	add	r0, r0, #440	@ pstVoQue, pstVoQue,
	bx	lr	@
.L108:
	add	r3, r2, #243712	@ pstVoQue, D.40190,
	add	r0, r3, #448	@ pstVoQue, pstVoQue,
	bx	lr	@
.L109:
	add	ip, r2, #233472	@ pstVoQue, D.40190,
	add	r0, ip, #136	@ pstVoQue, pstVoQue,
	bx	lr	@
.L110:
	add	r1, r2, #256000	@ pstVoQue, D.40190,
	add	r0, r1, #488	@ pstVoQue, pstVoQue,
	bx	lr	@
.L113:
	add	r3, r2, #225280	@ pstVoQue, D.40190,
	add	r0, r3, #408	@ pstVoQue, pstVoQue,
	bx	lr	@
.L106:
	add	r0, r2, #290816	@ pstVoQue, D.40190,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L111:
	add	r0, r2, #256000	@ pstVoQue, D.40190,
	add	r0, r0, #472	@ pstVoQue, pstVoQue,
	bx	lr	@
.L104:
	movw	ip, #:lower16:330888	@ pstVoQue,
	movt	ip, #:upper16:330888	@ pstVoQue,
	add	r0, r2, ip	@ pstVoQue, D.40190, pstVoQue
	bx	lr	@
.L105:
	add	r3, r2, #239616	@ pstVoQue, D.40190,
	add	r0, r3, #512	@ pstVoQue, pstVoQue,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_GetDSDFlag
	.type	VCTRL_GetDSDFlag, %function
VCTRL_GetDSDFlag:
	.fnstart
.LFB1765:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r1, r0, asl #2]	@ tmp137, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	VCTRL_GetDSDFlag, .-VCTRL_GetDSDFlag
	.align	2
	.type	VfmwProc_SetPrintLevel, %function
VfmwProc_SetPrintLevel:
	.fnstart
.LFB1778:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:g_PrintEnable	@ tmp134,
	movt	r3, #:upper16:g_PrintEnable	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, g_PrintEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_SetPrintLevel, .-VfmwProc_SetPrintLevel
	.align	2
	.type	VfmwProc_PrintTracer, %function
VfmwProc_PrintTracer:
	.fnstart
.LFB1788:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	VfmwProc_PrintTracer, .-VfmwProc_PrintTracer
	.align	2
	.type	VfmwProc_OpenScdLowdly, %function
VfmwProc_OpenScdLowdly:
	.fnstart
.LFB1810:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r1, #:lower16:s_SmIIS	@ tmp134,
	movt	r1, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #1	@ tmp142,
	add	r0, r1, ip, asl #2	@, tmp139, tmp134, tmp136,
	ldr	r3, [r0, #236]	@ tmp141, s_SmIIS.pSmInstArray
	str	r2, [r3, #88]	@ tmp142, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_OpenScdLowdly, .-VfmwProc_OpenScdLowdly
	.align	2
	.type	VfmwProc_CloseScdLowdly, %function
VfmwProc_CloseScdLowdly:
	.fnstart
.LFB1811:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r1, #:lower16:s_SmIIS	@ tmp134,
	movt	r1, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #0	@ tmp142,
	add	r0, r1, ip, asl #2	@, tmp139, tmp134, tmp136,
	ldr	r3, [r0, #236]	@ tmp141, s_SmIIS.pSmInstArray
	str	r2, [r3, #88]	@ tmp142, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_CloseScdLowdly, .-VfmwProc_CloseScdLowdly
	.align	2
	.global	VfmwProcGetHandler
	.type	VfmwProcGetHandler, %function
VfmwProcGetHandler:
	.fnstart
.LFB1812:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ cmd, cmd
	movweq	r0, #:lower16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	movteq	r0, #:upper16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	bxeq	lr	@
	movw	r3, #:lower16:.LANCHOR1	@ ivtmp.1418,
	movt	r3, #:upper16:.LANCHOR1	@ ivtmp.1418,
	b	.L133	@
.L134:
	ldr	r2, [r3, #8]!	@ D.40975, <variable>.CmdName
	cmp	r2, r1	@ D.40975, cmd
	beq	.L136	@,
.L133:
	ldr	r0, [r3, #12]	@ pTargetHandler, <variable>.pHandler
	cmp	r0, #0	@ pTargetHandler,
	bne	.L134	@,
	bx	lr	@
.L136:
	bx	lr	@
	.fnend
	.size	VfmwProcGetHandler, .-VfmwProcGetHandler
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB1817:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r3, #20]	@ g_event_report.843, g_event_report
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ g_event_report.843,
	beq	.L139	@,
	add	r2, sp, #8	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.843
.L139:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	VCTRL_EnableEsBuf
	.type	VCTRL_EnableEsBuf, %function
VCTRL_EnableEsBuf:
	.fnstart
.LFB1818:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #1	@ tmp139,
	str	r2, [r3, #24]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_EnableEsBuf, .-VCTRL_EnableEsBuf
	.align	2
	.global	VCTRL_DisableEsBuf
	.type	VCTRL_DisableEsBuf, %function
VCTRL_DisableEsBuf:
	.fnstart
.LFB1819:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #0	@ tmp139,
	str	r2, [r3, #24]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_DisableEsBuf, .-VCTRL_DisableEsBuf
	.align	2
	.global	VCTRL_IsEsBufEnable
	.type	VCTRL_IsEsBufEnable, %function
VCTRL_IsEsBufEnable:
	.fnstart
.LFB1820:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, ChanID,
	ldr	r0, [r3, #24]	@, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_IsEsBufEnable, .-VCTRL_IsEsBufEnable
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB1824:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L147	@
.L155:
	.word	.L148
	.word	.L149
	.word	.L150
	.word	.L151
	.word	.L152
	.word	.L153
	.word	.L154
.L154:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L147:
	mov	r3, r1	@, enFmt
	movw	r2, #8330	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	bl	dprint_vfmw	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L148:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L149:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L150:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L151:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L152:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
.L153:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
.LFB1815:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	bhi	.L169	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp138,
	movt	r2, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r2, r0, asl #2]	@ D.41013, s_pstVfmwChan
	cmp	r3, #0	@ D.41013,
	strne	r1, [r3, #676]	@ Value, <variable>.s32LastFrameIdPlus2
	bx	lr	@
.L169:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC2	@,
	mov	r0, #0	@,
	movw	r2, #8009	@,
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
.LFB1814:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L175	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.41001, s_pstVfmwChan
	cmp	r3, #0	@ D.41001,
	mvneq	r0, #0	@ D.40999,
	ldrne	r0, [r3, #676]	@ D.40999, <variable>.s32LastFrameIdPlus2
	ldmfd	sp!, {r3, pc}	@
.L175:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #7997	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40999,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB1813:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_args
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mvneq	r0, #1	@ D.40987,
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #0	@ opt,
	movweq	r3, #:lower16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	movteq	r3, #:upper16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	beq	.L181	@,
	movw	r2, #:lower16:.LANCHOR1	@ ivtmp.1606,
	movt	r2, #:upper16:.LANCHOR1	@ ivtmp.1606,
	b	.L182	@
.L183:
	ldr	ip, [r2, #8]!	@ D.41363, <variable>.CmdName
	cmp	r0, ip	@ opt, D.41363
	beq	.L181	@,
.L182:
	ldr	r3, [r2, #12]	@ pCommandHandler, <variable>.pHandler
	cmp	r3, #0	@ pCommandHandler,
	bne	.L183	@,
	mov	r2, r0	@, opt
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC4	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.40987,
	ldmfd	sp!, {r3, pc}	@
.L181:
	mov	r0, r1	@, p_args
	blx	r3	@ pCommandHandler
	mov	r0, #1	@ D.40987,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.type	VfmwProc_CloseModuleLowly, %function
VfmwProc_CloseModuleLowly:
	.fnstart
.LFB1809:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #3	@ dat,
	bhi	.L190	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, dat
	mov	ip, #0	@ tmp138,
	ldr	r3, [r1, r3, asl #2]	@ tmp137, s_pstVfmwChan
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [r3, #1420]	@ tmp138, <variable>.stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L190:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_CloseModuleLowly, .-VfmwProc_CloseModuleLowly
	.align	2
	.type	VfmwProc_OpenModuleLowly, %function
VfmwProc_OpenModuleLowly:
	.fnstart
.LFB1808:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #3	@ dat,
	bhi	.L194	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, dat
	mov	ip, #1	@ tmp138,
	ldr	r3, [r1, r3, asl #2]	@ tmp137, s_pstVfmwChan
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	str	ip, [r3, #1420]	@ tmp138, <variable>.stSynExtraData.s32ModuleLowlyEnable
	b	dprint_vfmw	@
.L194:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC5	@,
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_OpenModuleLowly, .-VfmwProc_OpenModuleLowly
	.align	2
	.type	VfmwProc_SetNoStreamReportPeriod, %function
VfmwProc_SetNoStreamReportPeriod:
	.fnstart
.LFB1807:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.817,* p_args
	movw	r3, #:lower16:g_NoStreamReportPeriod	@ tmp135,
	movt	r3, #:upper16:g_NoStreamReportPeriod	@ tmp135,
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC7	@,
	mov	r2, ip	@, dat.817
	str	ip, [r3, #0]	@ dat.817, g_NoStreamReportPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetNoStreamReportPeriod, .-VfmwProc_SetNoStreamReportPeriod
	.align	2
	.type	VfmwProc_SetTraceImgPeriod, %function
VfmwProc_SetTraceImgPeriod:
	.fnstart
.LFB1806:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.815,* p_args
	movw	r3, #:lower16:g_TraceImgPeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceImgPeriod	@ tmp135,
	movw	r1, #:lower16:.LC8	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC8	@,
	mov	r2, ip	@, dat.815
	str	ip, [r3, #0]	@ dat.815, g_TraceImgPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceImgPeriod, .-VfmwProc_SetTraceImgPeriod
	.align	2
	.type	VfmwProc_SetTraceFramePeriod, %function
VfmwProc_SetTraceFramePeriod:
	.fnstart
.LFB1805:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.813,* p_args
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp135,
	movw	r1, #:lower16:.LC9	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC9	@,
	mov	r2, ip	@, dat.813
	str	ip, [r3, #0]	@ dat.813, g_TraceFramePeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceFramePeriod, .-VfmwProc_SetTraceFramePeriod
	.align	2
	.type	VfmwProc_SetTraceBSPeriod, %function
VfmwProc_SetTraceBSPeriod:
	.fnstart
.LFB1804:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.811,* p_args
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp135,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp135,
	movw	r1, #:lower16:.LC10	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC10	@,
	mov	r2, ip	@, dat.811
	str	ip, [r3, #0]	@ dat.811, g_TraceBsPeriod
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceBSPeriod, .-VfmwProc_SetTraceBSPeriod
	.align	2
	.type	VfmwProc_SetTraceCtrl, %function
VfmwProc_SetTraceCtrl:
	.fnstart
.LFB1803:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.809,* p_args
	movw	r3, #:lower16:g_TraceCtrl	@ tmp135,
	movt	r3, #:upper16:g_TraceCtrl	@ tmp135,
	movw	r1, #:lower16:.LC11	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC11	@,
	mov	r2, ip	@, dat.809
	str	ip, [r3, #0]	@ dat.809, g_TraceCtrl
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetTraceCtrl, .-VfmwProc_SetTraceCtrl
	.align	2
	.type	VfmwProc_TestStopDec, %function
VfmwProc_TestStopDec:
	.fnstart
.LFB1802:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.807,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC12	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC12	@,
	mov	r2, ip	@, dat.807
	str	ip, [r3, #40]	@ dat.807, g_StopDec
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestStopDec, .-VfmwProc_TestStopDec
	.align	2
	.type	VfmwProc_SetDnrSleepTime, %function
VfmwProc_SetDnrSleepTime:
	.fnstart
.LFB1801:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.805,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC13	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC13	@,
	mov	r2, ip	@, dat.805
	str	ip, [r3, #44]	@ dat.805, g_DnrSleepTime
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetDnrSleepTime, .-VfmwProc_SetDnrSleepTime
	.align	2
	.type	VfmwProc_TestTimeSequence, %function
VfmwProc_TestTimeSequence:
	.fnstart
.LFB1800:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ dat.803,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp135,
	movt	r3, #:upper16:.LANCHOR0	@ tmp135,
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC14	@,
	mov	r2, ip	@, dat.803
	str	ip, [r3, #48]	@ dat.803, g_SleepTime
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestTimeSequence, .-VfmwProc_TestTimeSequence
	.align	2
	.type	VfmwProc_SetCurProcChan, %function
VfmwProc_SetCurProcChan:
	.fnstart
.LFB1786:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #4	@ dat,
	bhi	.L214	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp136,
	movt	ip, #:upper16:.LANCHOR0	@ tmp136,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC16	@,
	str	r3, [ip, #52]	@ dat, g_CurProcChan
	b	dprint_vfmw	@
.L214:
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC15	@,
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetCurProcChan, .-VfmwProc_SetCurProcChan
	.align	2
	.type	VfmwProc_SetSaveFileAfterReset, %function
VfmwProc_SetSaveFileAfterReset:
	.fnstart
.LFB1785:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	bls	.L218	@,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC18	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC18	@,
	b	dprint_vfmw	@
.L218:
	movw	ip, #:lower16:.LANCHOR0	@ tmp135,
	movt	ip, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC17	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC17	@,
	str	r3, [ip, #56]	@ dat, g_ResetCreateNewSave
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetSaveFileAfterReset, .-VfmwProc_SetSaveFileAfterReset
	.align	2
	.type	VfmwProc_SetUSE_FF_APT_EN, %function
VfmwProc_SetUSE_FF_APT_EN:
	.fnstart
.LFB1784:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	bls	.L222	@,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC20	@,
	b	dprint_vfmw	@
.L222:
	movw	ip, #:lower16:USE_FF_APT_EN	@ tmp135,
	movt	ip, #:upper16:USE_FF_APT_EN	@ tmp135,
	mov	r2, r3	@, dat
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC19	@,
	str	r3, [ip, #0]	@ dat, USE_FF_APT_EN
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_SetUSE_FF_APT_EN, .-VfmwProc_SetUSE_FF_APT_EN
	.align	2
	.type	VfmwProc_SetDNR, %function
VfmwProc_SetDNR:
	.fnstart
.LFB1783:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	ip, [r0, #0]	@ dat,* p_args
	ldr	r6, .L228	@ tmp140,
	.pad #20
	sub	sp, sp, #20	@,,
	and	r7, ip, #15	@ iftmp.748, dat,
	ubfx	lr, ip, #8, #4	@ iftmp.754, dat,,
	cmp	r7, #2	@ iftmp.748,
	ubfx	ip, ip, #4, #4	@ iftmp.751, dat,,
	ldmia	r6, {r0, r1, r2}	@ tmp140,,,
	movhi	r7, #0	@ iftmp.748,
	cmp	ip, #2	@ iftmp.751,
	add	r3, sp, #4	@ tmp139,,
	movw	r6, #:lower16:g_DCEnable	@ tmp145,
	movt	r6, #:upper16:g_DCEnable	@ tmp145,
	movhi	ip, #0	@ iftmp.751,
	cmp	lr, #2	@ iftmp.754,
	movw	r4, #:lower16:g_DREnable	@ tmp171,
	movw	r5, #:lower16:g_DBEnable	@ tmp172,
	movt	r4, #:upper16:g_DREnable	@ tmp171,
	movt	r5, #:upper16:g_DBEnable	@ tmp172,
	stmia	r3, {r0, r1, r2}	@ tmp139,,,
	movhi	lr, #0	@ iftmp.754,
	mov	r0, #32	@,
	str	lr, [r6, #0]	@ iftmp.754, g_DCEnable
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	str	ip, [r5, #0]	@ iftmp.751, g_DBEnable
	str	r7, [r4, #0]	@ iftmp.748, g_DREnable
	bl	dprint_vfmw	@
	ldr	ip, [r6, #0]	@ g_DCEnable, g_DCEnable
	add	r2, sp, #16	@,,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC22	@,
	movt	r1, #:upper16:.LC22	@,
	add	r3, r2, ip, asl #2	@, tmp152,, g_DCEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	ip, [r5, #0]	@ g_DBEnable, g_DBEnable
	add	r2, sp, #16	@,,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC23	@,
	movt	r1, #:upper16:.LC23	@,
	add	r3, r2, ip, asl #2	@, tmp160,, g_DBEnable,
	ldr	r2, [r3, #-12]	@, opt
	bl	dprint_vfmw	@
	ldr	ip, [r4, #0]	@ g_DREnable, g_DREnable
	add	r2, sp, #16	@,,
	movw	r1, #:lower16:.LC24	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC24	@,
	add	r3, r2, ip, asl #2	@, tmp168,, g_DREnable,
	ldr	r2, [r3, #-12]	@, opt
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	dprint_vfmw	@
.L229:
	.align	2
.L228:
	.word	.LANCHOR1+280
	.fnend
	.size	VfmwProc_SetDNR, .-VfmwProc_SetDNR
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB1771:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #4992	@ tmp138, new_extra_ref,
	add	r3, r4, #8	@ tmp138, tmp138,
	movw	r2, #10000	@ tmp140,
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	cmp	r3, r2	@ tmp138, tmp140
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	mov	r5, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r4, #60]	@ new_extra_ref, extra_ref
	bhi	.L234	@,
.L231:
	add	r2, r5, #4992	@ tmp148, new_extra_disp,
	movw	ip, #5000	@ tmp143,
	add	r1, r2, #8	@ tmp148, tmp148,
	cmp	r0, ip	@ new_extra_ref, tmp143
	movge	r0, ip	@ iftmp.699, tmp143
	movw	r6, #:lower16:-5000	@ tmp145,
	movt	r6, #:upper16:-5000	@ tmp145,
	cmp	r0, r6	@ iftmp.699, tmp145
	strge	r0, [r4, #60]	@, iftmp.699, extra_ref
	strlt	r6, [r4, #60]	@, tmp145, extra_ref
	movw	r0, #10000	@ tmp150,
	cmp	r1, r0	@ tmp148, tmp150
	movw	r6, #:lower16:.LANCHOR0	@ tmp144,
	str	r5, [r4, #64]	@ new_extra_disp, extra_disp
	movt	r6, #:upper16:.LANCHOR0	@ tmp144,
	bhi	.L235	@,
.L232:
	movw	r0, #5000	@ tmp153,
	movw	r3, #:lower16:-5000	@ tmp155,
	cmp	r5, r0	@ new_extra_disp, tmp153
	movge	r5, r0	@ iftmp.1956, tmp153
	movt	r3, #:upper16:-5000	@ tmp155,
	cmp	r5, r3	@ iftmp.1956, tmp155
	strge	r5, [r4, #64]	@, iftmp.1956, extra_disp
	strlt	r3, [r4, #64]	@, tmp155, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L234:
	mov	r2, r0	@, new_extra_ref
	movw	r1, #:lower16:.LC25	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC25	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #60]	@ new_extra_ref, extra_ref
	b	.L231	@
.L235:
	mov	r2, r5	@, new_extra_disp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC26	@,
	movt	r1, #:upper16:.LC26	@,
	bl	dprint_vfmw	@
	ldr	r5, [r6, #64]	@ new_extra_disp, extra_disp
	b	.L232	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB1770:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L241	@,
	movw	r1, #:lower16:.LANCHOR0	@ tmp139,
	movt	r1, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r1, r0, asl #2]	@ D.40326, s_pstVfmwChan
	cmp	r3, #0	@ D.40326,
	moveq	r0, #33	@ D.40324,
	ldrne	r0, [r3, #24]	@ D.40324, <variable>.eChanCapLevel
	ldmfd	sp!, {r3, pc}	@
.L241:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6967	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40324,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB1769:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L247	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.40314, s_pstVfmwChan
	cmp	r0, #0	@ D.40314,
	beq	.L248	@,
	ldr	r0, [r0, #1460]	@ D.40312, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r3, pc}	@
.L247:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6959	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40312,
	ldmfd	sp!, {r3, pc}	@
.L248:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6960	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40312,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB1768:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L254	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r0, [r3, r0, asl #2]	@ D.40302, s_pstVfmwChan
	cmp	r0, #0	@ D.40302,
	beq	.L255	@,
	ldr	r0, [r0, #1456]	@ D.40300, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r3, pc}	@
.L254:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6951	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40300,
	ldmfd	sp!, {r3, pc}	@
.L255:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6952	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40300,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1756:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	ip, r2, asl #1	@ tmp143, Threshould,
	movw	r6, #:lower16:1431655766	@ tmp146,
	movt	r6, #:upper16:1431655766	@ tmp146,
	mov	r4, r2	@ Threshould, Threshould
	add	r7, r2, #7	@ tmp140, Threshould,
	smull	r2, r3, r6, ip	@, tmp145, tmp146, tmp143
	cmp	r4, #0	@ Threshould,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ CurMode, CurMode
	movge	r7, r4	@ Threshould, Threshould
	mov	r6, r1	@ StreamAmount, StreamAmount
	mov	r7, r7, asr #3	@ tmp141, Threshould,
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	mov	r2, r7	@, tmp141
	sub	r3, r3, ip, asr #31	@, tmp145, tmp143,
	stmia	sp, {r4, r6}	@ phole stm
	bl	dprint_vfmw	@
	cmp	r5, #3	@ CurMode,
	beq	.L263	@,
	cmp	r4, r6	@ Threshould, StreamAmount
	blt	.L260	@,
.L262:
	mov	r4, r5	@ NextMode, CurMode
.L259:
	mov	r2, r5	@, CurMode
	mov	r3, r4	@, NextMode
	mov	r0, #30	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, NextMode
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L260:
	movw	r1, #:lower16:.LC30	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC30	@,
	mov	r4, #3	@ NextMode,
	bl	dprint_vfmw	@
	b	.L259	@
.L263:
	cmp	r7, r6	@ tmp141, StreamAmount
	ble	.L262	@,
	movw	r1, #:lower16:.LC29	@,
	mov	r0, #30	@,
	movt	r1, #:upper16:.LC29	@,
	mov	r4, #0	@ NextMode,
	bl	dprint_vfmw	@
	b	.L259	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1751:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r0, #18	@ D.41367, eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r3, #7	@ D.41367,
	.pad #476
	sub	sp, sp, #476	@,,
	mov	r9, r0, asl #3	@ tmp318, eCapLevel,
	rsb	r5, r0, r9	@ tmp169, eCapLevel, tmp318
	movw	r4, #:lower16:CapItem	@ tmp317,
	str	r2, [sp, #40]	@ ScdMemSize, %sfp
	movt	r4, #:upper16:CapItem	@ tmp317,
	movwls	r2, #:lower16:.LANCHOR1	@ tmp197,
	movtls	r2, #:upper16:.LANCHOR1	@ tmp197,
	addls	r3, r2, r3, asl #2	@, tmp200, tmp197, D.41367,
	mov	r7, r0	@ eCapLevel, eCapLevel
	add	r0, r4, r5, asl #2	@, tmp171, tmp317, tmp169,
	movw	r5, #:lower16:.LANCHOR0	@ tmp319,
	ldrls	r3, [r3, #292]	@ MinDnrFspNum, CSWTCH.855
	movt	r5, #:upper16:.LANCHOR0	@ tmp319,
	ldr	r8, [r0, #12]	@ TempMinFrame, CapItem
	movhi	r3, #6	@ MinDnrFspNum,
	ldr	r6, [r5, #60]	@ extra_ref, extra_ref
	rsb	r3, r3, r8	@ s32MaxRefFrameNum, MinDnrFspNum, TempMinFrame
	str	r1, [sp, #36]	@ VdmMemSize, %sfp
	cmp	r3, #15	@ s32MaxRefFrameNum,
	bic	r6, r6, r6, asr #31	@ extra_ref_tmp, extra_ref
	ldr	ip, [r0, #8]	@ TempPmv, CapItem
	str	r6, [r5, #60]	@ extra_ref_tmp, extra_ref
	movgt	r6, #0	@ extra_ref_tmp,
	ldr	sl, [r0, #16]	@ TempMiddleFrame, CapItem
	ldr	fp, [r0, #20]	@ TempFluentFrame, CapItem
	bgt	.L268	@,
	add	r1, r3, r6	@ D.39499, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r1, #16	@ D.39499,
	addgt	r6, r6, #16	@ D.39502, extra_ref_tmp,
	rsbgt	r6, r1, r6	@ extra_ref_tmp, D.39499, D.39502
.L268:
	add	r3, r6, ip	@ TempPmv.2078, extra_ref_tmp, TempPmv
	ldr	r2, [r5, #64]	@, extra_disp
	cmp	r3, #0	@ TempPmv.2078,
	str	r2, [sp, #44]	@, %sfp
	ble	.L284	@,
	cmp	r3, #17	@ TempPmv.2078,
	movge	r3, #17	@ TempPmv.2078,
	str	r3, [sp, #48]	@ TempPmv.2078, %sfp
.L270:
	cmp	r7, #23	@ eCapLevel,
	bhi	.L271	@,
	ldr	ip, [sp, #44]	@, %sfp
	add	r1, r6, ip	@ D.39505, extra_ref_tmp,
	add	r3, r1, r8	@ TempMinFrame.2075, D.39505, TempMinFrame
	add	r2, r1, sl	@ TempMiddleFrame.2076, D.39505, TempMiddleFrame
	cmp	r3, #0	@ TempMinFrame.2075,
	cmpgt	r2, #0	@, TempMiddleFrame.2076,
	ble	.L272	@,
	add	lr, r1, fp	@ TempFluentFrame.2077, D.39505, TempFluentFrame
	cmp	lr, #0	@ TempFluentFrame.2077,
	strgt	lr, [sp, #52]	@ TempFluentFrame.2077, %sfp
	strgt	r2, [sp, #44]	@ TempMiddleFrame.2076, %sfp
	movgt	r8, r3	@ nMinFrame, TempMinFrame.2075
	ble	.L272	@,
.L274:
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp217,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp217,
	ldr	ip, [r5, #36]	@ D.39525, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39525,
	beq	.L277	@,
.L285:
	rsb	r7, r7, r9	@ tmp221, eCapLevel, tmp318
	ldr	sl, [sp, #48]	@, %sfp
	str	r8, [sp, #4]	@ nMinFrame,
	add	r8, r7, #1	@ tmp229, tmp221,
	mov	r9, #0	@ tmp231,
	mov	fp, #64	@ tmp235,
	str	sl, [sp, #0]	@,
	mov	r0, #1	@,
	ldr	r3, [r4, r8, asl #2]	@ tmp230, CapItem
	mvn	sl, #0	@ tmp232,
	ldr	r2, [r4, r7, asl #2]	@ tmp224, CapItem
	mvn	r1, #-2147483648	@,
	str	r9, [sp, #8]	@ tmp231,
	add	r9, sp, #56	@ tmp234,,
	str	sl, [sp, #12]	@ tmp232,
	movw	r6, #:lower16:CapItem	@ tmp218,
	str	r9, [sp, #16]	@ tmp234,
	movt	r6, #:upper16:CapItem	@ tmp218,
	str	fp, [sp, #20]	@ tmp235,
	add	r4, r4, r7, asl #2	@, tmp223, tmp317, tmp221,
	blx	ip	@ D.39525
	subs	r3, r0, #0	@ ret,
	bne	.L277	@,
	ldr	r1, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	lr, [sp, #36]	@, %sfp
	add	r0, r1, #47104	@ tmp238, MemArrange.TotalMemUsed,
	add	ip, r0, #16	@ tmp238, tmp238,
	str	ip, [lr, #0]	@ tmp238,
	ldr	r0, [sp, #40]	@, %sfp
	ldr	r2, [r4, #24]	@ tmp248, CapItem
	add	r1, r2, #32768	@ tmp249, tmp248,
	str	r1, [r0, #0]	@ tmp249,
	ldr	ip, [r5, #36]	@ temp.2080, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.2080,
	beq	.L279	@,
	ldr	lr, [r6, r8, asl #2]	@ tmp263, CapItem
	mov	r0, #1	@,
	ldr	r2, [sp, #44]	@, %sfp
	mvn	r1, #-2147483648	@,
	str	r3, [sp, #8]	@ ret,
	ldr	r3, [sp, #48]	@, %sfp
	str	r2, [sp, #4]	@,
	ldr	r2, [r6, r7, asl #2]	@, CapItem
	str	r3, [sp, #0]	@,
	mov	r3, lr	@, tmp263
	str	sl, [sp, #12]	@ tmp232,
	str	r9, [sp, #16]	@ tmp234,
	str	fp, [sp, #20]	@ tmp235,
	blx	ip	@ temp.2080
	subs	lr, r0, #0	@ ret.2083,
	bne	.L279	@,
	ldr	r0, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	r2, [sp, #36]	@, %sfp
	add	ip, r0, #47104	@ tmp271, MemArrange.TotalMemUsed,
	add	r3, ip, #16	@ tmp271, tmp271,
	str	r3, [r2, #4]	@ tmp271,
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r1, [r4, #24]	@ tmp281, CapItem
	add	r0, r1, #32768	@ tmp282, tmp281,
	str	r0, [ip, #4]	@ tmp282,
	ldr	ip, [r5, #36]	@ temp.2088, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.2088,
	beq	.L281	@,
	ldr	r5, [sp, #48]	@, %sfp
	mov	r0, #1	@,
	ldr	r3, [r6, r8, asl #2]	@ tmp296, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r6, r7, asl #2]	@ tmp290, CapItem
	str	r5, [sp, #0]	@,
	ldr	r5, [sp, #52]	@, %sfp
	str	lr, [sp, #8]	@ ret.2083,
	str	sl, [sp, #12]	@ tmp232,
	str	r5, [sp, #4]	@,
	str	r9, [sp, #16]	@ tmp234,
	str	fp, [sp, #20]	@ tmp235,
	blx	ip	@ temp.2088
	cmp	r0, #0	@ ret.2091
	bne	.L281	@,
	ldr	r1, [sp, #60]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	ldr	ip, [sp, #36]	@, %sfp
	add	lr, r1, #47104	@ tmp304, MemArrange.TotalMemUsed,
	add	r3, lr, #16	@ tmp304, tmp304,
	str	r3, [ip, #8]	@ tmp304,
	ldr	lr, [sp, #40]	@, %sfp
	ldr	r2, [r4, #24]	@ tmp314, CapItem
	add	r1, r2, #32768	@ tmp315, tmp314,
	str	r1, [lr, #8]	@ tmp315,
.L276:
	add	sp, sp, #476	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L271:
	cmp	r7, #32	@ eCapLevel,
	strls	fp, [sp, #52]	@ TempFluentFrame, %sfp
	strls	sl, [sp, #44]	@ TempMiddleFrame, %sfp
	bls	.L274	@,
	mov	r2, r7	@, eCapLevel
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC34	@,
	movt	r1, #:upper16:.LC34	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39523,
	b	.L276	@
.L272:
	ldr	ip, [r5, #64]	@ extra_disp.2079, extra_disp
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp217,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp217,
	mov	r3, r6	@, extra_ref_tmp
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC33	@,
	mov	r2, r8	@, TempMinFrame
	movt	r1, #:upper16:.LC33	@,
	str	ip, [sp, #24]	@ extra_disp.2079,
	str	ip, [sp, #0]	@ extra_disp.2079,
	str	ip, [sp, #12]	@ extra_disp.2079,
	str	fp, [sp, #52]	@ TempFluentFrame, %sfp
	str	sl, [sp, #44]	@ TempMiddleFrame, %sfp
	str	sl, [sp, #4]	@ TempMiddleFrame,
	str	r6, [sp, #8]	@ extra_ref_tmp,
	str	fp, [sp, #16]	@ TempFluentFrame,
	str	r6, [sp, #20]	@ extra_ref_tmp,
	bl	dprint_vfmw	@
	ldr	ip, [r5, #36]	@ D.39525, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39525,
	bne	.L285	@,
.L277:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5837	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39523,
	b	.L276	@
.L284:
	mov	r2, ip	@, TempPmv
	movw	r1, #:lower16:.LC32	@,
	mov	r3, r6	@, extra_ref_tmp
	movt	r1, #:upper16:.LC32	@,
	mov	r0, #32	@,
	cmp	ip, #17	@ TempPmv,
	movge	ip, #17	@ TempPmv,
	str	ip, [sp, #48]	@ TempPmv, %sfp
	bl	dprint_vfmw	@
	b	.L270	@
.L279:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5855	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39523,
	b	.L276	@
.L281:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC35	@,
	movw	r2, #5873	@,
	movt	r1, #:upper16:.LC35	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39523,
	b	.L276	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	VCTRL_VarifyOption_onDecode
	.type	VCTRL_VarifyOption_onDecode, %function
VCTRL_VarifyOption_onDecode:
	.fnstart
.LFB1747:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r0, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r3, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L287	@,
	ldr	r1, [r0, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r1, #31	@ <variable>.s32MaxWidth,
	ble	.L287	@,
	ldr	r2, [r0, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	r2, #31	@ <variable>.s32MaxHeight,
	ble	.L287	@,
	ldr	ip, [r0, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L287	@,
	ldr	r3, [r0, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #1	@ <variable>.s32SupportH264,
	beq	.L291	@,
.L288:
	mov	r0, #0	@ D.39345,
	ldmfd	sp!, {r3, pc}	@
.L291:
	ldr	r1, [r0, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L287	@,
	ldr	r2, [r0, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r2, #0	@ <variable>.s32MaxSpsNum,
	ble	.L287	@,
	ldr	ip, [r0, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L288	@,
.L287:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC36	@,
	movt	r1, #:upper16:.LC36	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39345,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_VarifyOption_onDecode, .-VCTRL_VarifyOption_onDecode
	.align	2
	.global	VCTRL_GetMemSize_onDecode
	.type	VCTRL_GetMemSize_onDecode, %function
VCTRL_GetMemSize_onDecode:
	.fnstart
.LFB1749:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #448
	sub	sp, sp, #448	@,,
	mov	r0, r1	@, pChanOption
	mov	r3, #0	@ tmp145,
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	str	r3, [sp, #444]	@ tmp145, ChanPmvSize
	bl	VCTRL_VarifyOption_onDecode	@
	cmp	r0, #0	@,
	bne	.L301	@,
	ldr	r0, [r4, #40]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r0, #0	@ <variable>.s32SupportBFrame,
	beq	.L302	@,
	ldr	r6, [r4, #32]	@ prephitmp.2133, <variable>.s32MaxRefFrameNum
	add	r0, r6, #1	@ PmvNum.2144, prephitmp.2133,
	cmp	r0, #17	@ PmvNum.2144,
	movlt	r8, r0	@ PmvNum, PmvNum.2144
	movge	r8, #17	@ PmvNum,
.L296:
	ldr	r1, [r4, #12]	@, <variable>.s32MaxWidth
	add	r3, sp, #444	@,,
	ldr	r2, [r4, #16]	@, <variable>.s32MaxHeight
	ldr	r7, [r4, #60]	@ D.39381, <variable>.s32DisplayFrameNum
	bl	VCTRL_GetChanPmvSize	@
	ldr	r2, [sp, #444]	@ ChanPmvSize, ChanPmvSize
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp151,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp151,
	str	r2, [r5, #12]	@ ChanPmvSize, <variable>.PmvDetailMem
	ldr	ip, [r1, #36]	@ D.39387, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39387,
	beq	.L297	@,
	ldr	r2, [r4, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp155,
	ldr	r3, [r4, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r1, #0	@ tmp156,
	str	lr, [sp, #8]	@ tmp155,
	add	r0, sp, #28	@ tmp158,,
	str	r1, [sp, #12]	@ tmp156,
	mov	lr, #64	@ tmp159,
	str	r0, [sp, #16]	@ tmp158,
	add	r6, r6, r7	@ tmp154, prephitmp.2133, D.39381
	str	r8, [sp, #0]	@ PmvNum,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ tmp154,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp159,
	blx	ip	@ D.39387
	cmp	r0, #0	@ ret
	bne	.L297	@,
	ldr	lr, [sp, #32]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r1, lr, #47104	@ tmp164, MemArrange.TotalMemUsed,
	add	r2, r1, #16	@ tmp164, tmp164,
	str	r2, [r5, #0]	@ tmp164, <variable>.VdhDetailMem
	ldr	r3, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	ip, r3, #32768	@ tmp167, <variable>.s32SCDBufSize,
	str	ip, [r5, #4]	@ tmp167, <variable>.ScdDetailMem
	ldr	r3, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	beq	.L303	@,
	ldr	r1, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	mov	lr, #4000	@ tmp175,
	ldr	r6, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	movw	r3, #:lower16:539128	@ tmp177,
	ldr	r2, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	movt	r3, #:upper16:539128	@ tmp177,
	mul	ip, lr, r1	@ tmp173, tmp175, <variable>.s32MaxSpsNum
	movw	lr, #4060	@ tmp172,
	mla	r1, lr, r6, ip	@ tmp176, tmp172, <variable>.s32MaxSliceNum, tmp173
	add	lr, r1, r3	@ tmp177, tmp176, tmp177
	mov	r1, #2208	@ tmp181,
	mla	r3, r1, r2, lr	@ tmp182, tmp181, <variable>.s32MaxPpsNum, tmp177
	str	r3, [r5, #8]	@ tmp182, <variable>.ChanCtxDetailMem
.L294:
	add	sp, sp, #448	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L302:
	ldr	r6, [r4, #32]	@ prephitmp.2133, <variable>.s32MaxRefFrameNum
	mov	r8, #1	@ PmvNum,
	add	r0, r6, r8	@ PmvNum.2144, prephitmp.2133,
	b	.L296	@
.L297:
	movw	r1, #:lower16:.LC37	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC37	@,
	ldr	r2, .L304	@,
	movw	r3, #5638	@,
	bl	dprint_vfmw	@
.L301:
	mvn	r0, #0	@ D.39375,
	b	.L294	@
.L303:
	movw	ip, #:lower16:539128	@ tmp169,
	mov	r0, r3	@ D.39375, <variable>.s32SupportH264
	movt	ip, #:upper16:539128	@ tmp169,
	str	ip, [r5, #8]	@ tmp169, <variable>.ChanCtxDetailMem
	b	.L294	@
.L305:
	.align	2
.L304:
	.word	.LANCHOR1+324
	.fnend
	.size	VCTRL_GetMemSize_onDecode, .-VCTRL_GetMemSize_onDecode
	.align	2
	.global	VCTRL_GetMemSize_onFramePath
	.type	VCTRL_GetMemSize_onFramePath, %function
VCTRL_GetMemSize_onFramePath:
	.fnstart
.LFB1746:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r1, #64]	@ D.39313, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.39313,
	beq	.L307	@,
	ldr	r0, [r1, #68]	@ D.39315, <variable>.s32SlotHeight
	cmp	r0, #0	@ D.39315,
	beq	.L307	@,
	mul	ip, r0, r3	@ tmp141, D.39315, D.39313
	ldr	r1, [r1, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	mov	r3, #0	@ tmp146,
	str	r3, [r2, #12]	@ tmp146, <variable>.PmvDetailMem
	mov	r0, r3	@ D.39317, tmp146
	str	r3, [r2, #4]	@ tmp146, <variable>.ScdDetailMem
	movw	r3, #:lower16:539128	@ tmp147,
	movt	r3, #:upper16:539128	@ tmp147,
	str	r3, [r2, #8]	@ tmp147, <variable>.ChanCtxDetailMem
	mov	r3, ip, asl #1	@ tmp142, tmp141,
	mla	r3, r1, r3, r3	@ tmp145, <variable>.s32DisplayFrameNum, tmp142, tmp142
	str	r3, [r2, #0]	@ tmp145, <variable>.VdhDetailMem
	ldmfd	sp!, {r3, pc}	@
.L307:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC38	@,
	movt	r1, #:upper16:.LC38	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39317,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetMemSize_onFramePath, .-VCTRL_GetMemSize_onFramePath
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1750:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #2	@ flag,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	beq	.L312	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp146,
	movt	ip, #:upper16:.LANCHOR0	@ tmp146,
	ldr	r8, [r1, #32]	@ D.39432, <variable>.s32MaxRefFrameNum
	ldr	r5, [ip, #60]	@ extra_ref.640, extra_ref
	ldr	r4, [r1, #60]	@ D.39435, <variable>.s32DisplayFrameNum
	ldr	ip, [ip, #64]	@ extra_disp.641, extra_disp
	add	r7, r5, r8	@ TempRefNum, extra_ref.640, D.39432
	cmp	r7, #16	@ TempRefNum,
	movge	r7, #16	@ TempRefNum,
	add	r6, ip, r4	@ TempDispNum, extra_disp.641, D.39435
	orrs	sl, r7, r6	@, TempRefNum, TempDispNum
	bmi	.L319	@,
	rsbs	r3, r3, #1	@ tmp164, flag
	movcc	r3, #0	@ tmp164
	cmp	r0, #25	@ eCapLevel,
	str	r7, [r1, #32]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	moveq	r3, #0	@, tmp164,
	cmp	r3, #0	@ tmp164,
	str	r6, [r1, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bne	.L320	@,
.L312:
	ldr	r3, [r1, #4]	@ D.39450, <variable>.Purpose
	cmp	r3, #2	@ D.39450,
	bhi	.L321	@,
	beq	.L322	@,
	cmp	r3, #1	@ D.39450,
	beq	.L323	@,
.L314:
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L322:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	VCTRL_GetMemSize_onFramePath	@
.L323:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	b	VCTRL_GetMemSize_onDecode	@
.L320:
	movw	r1, #:lower16:.LC40	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC40	@,
	bl	dprint_vfmw	@
	b	.L314	@
.L321:
	movw	r1, #:lower16:.LC41	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC41	@,
	bl	dprint_vfmw	@
	b	.L314	@
.L319:
	mov	r2, r8	@, D.39432
	mov	r3, r5	@, extra_ref.640
	movw	r1, #:lower16:.LC39	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC39	@,
	stmia	sp, {r4, ip}	@ phole stm
	bl	dprint_vfmw	@
	b	.L314	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
.LFB1735:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L330	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.38942, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L331	@,
	cmp	r1, #0	@ pArgs,
	beq	.L332	@,
	ldr	ip, [r1, #0]	@ tmp146,* pArgs
	mov	r0, #0	@ D.38940,
	str	ip, [r3, #1408]	@ tmp146, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r3, pc}	@
.L331:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4983	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38940,
	ldmfd	sp!, {r3, pc}	@
.L330:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4982	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38940,
	ldmfd	sp!, {r3, pc}	@
.L332:
	mov	r0, r1	@, pArgs
	movw	r2, #4984	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38940,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
.LFB1725:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L339	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	r0, [r3, r0, asl #2]	@ D.38724, s_pstVfmwChan
	cmp	r0, #0	@ D.38724,
	beq	.L340	@,
	cmp	r1, #0	@ pstMemRec,
	bne	.L341	@,
.L337:
	mvn	r0, #0	@ D.38722,
	ldmfd	sp!, {r3, pc}	@
.L340:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4434	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38722,
	ldmfd	sp!, {r3, pc}	@
.L341:
	ldr	r2, [r0, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L337	@,
	ldr	r3, [r0, #156]	@ D.38736, <variable>.stChanMem.VirAddr
	ldr	ip, [r0, #164]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	ldr	r2, [r0, #160]	@ <variable>.stChanMem.PhyAddr, <variable>.stChanMem.PhyAddr
	cmp	r3, #0	@ D.38736,
	str	r3, [r1, #4]	@ D.38736, <variable>.VirAddr
	str	ip, [r1, #12]	@ <variable>.stChanMem.Length, <variable>.Length
	movne	r0, #0	@ D.38722,
	str	r2, [r1, #8]	@ <variable>.stChanMem.PhyAddr, <variable>.PhyAddr
	ldmnefd	sp!, {r3, pc}	@
	b	.L337	@
.L339:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4433	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38722,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
.LFB1721:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L343	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ D.38624, s_pstVfmwChan
	cmp	r3, #0	@ D.38624,
	beq	.L343	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L346	@,
	mov	r3, r0	@, ChanId
	movw	r1, #:lower16:.LC46	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC46	@,
	movw	r2, #4248	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.38626,
	ldmfd	sp!, {r3, pc}	@
.L343:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC45	@,
	movw	r2, #4241	@,
	movt	r1, #:upper16:.LC45	@,
	bl	dprint_vfmw	@
	mov	r0, #19	@ D.38626,
	ldmfd	sp!, {r3, pc}	@
.L346:
	ldr	r0, [r3, #880]	@ D.38626, <variable>.eVidStd
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
.LFB1706:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #:lower16:g_chipID	@ tmp144,
	movt	r2, #:upper16:g_chipID	@ tmp144,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp143,
	movt	r4, #:upper16:.LANCHOR0	@ tmp143,
	ldr	ip, [r2, #0]	@ g_chipID.530, g_chipID
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.37942, s_pstVfmwChan
	cmp	ip, #16	@ g_chipID.530,
	ldr	r4, [r3, #1460]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r0, [r3, #1456]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bls	.L357	@,
.L349:
	mov	r2, ip	@, g_chipID.530
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC49	@,
	movt	r1, #:upper16:.LC49	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
.L354:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L357:
	mov	r2, #1	@ tmp146,
	movw	r3, #:lower16:102368	@ tmp147,
	mov	r2, r2, asl ip	@ tmp145, tmp146,
	movt	r3, #:upper16:102368	@ tmp147,
	and	r3, r2, r3	@ tmp147, tmp145, tmp147
	cmp	r3, #0	@ tmp147,
	beq	.L358	@,
	movw	r3, #:lower16:g_ChipMaxWidth	@ tmp156,
	movt	r3, #:upper16:g_ChipMaxWidth	@ tmp156,
	ldr	r2, [r3, #0]	@ g_ChipMaxWidth.2288, g_ChipMaxWidth
	cmp	r0, r2	@ ChanMaxWidth, g_ChipMaxWidth.2288
	ble	.L359	@,
	ldr	r3, [r1, #0]	@ D.37956, <variable>.eVidStd
	cmp	r3, #13	@ D.37956,
	cmpne	r3, #0	@, D.37956,
	beq	.L353	@,
.L363:
	cmp	r3, #15	@ D.37956,
	beq	.L353	@,
	cmp	r3, #18	@ D.37956,
	bne	.L360	@,
.L353:
	mov	r0, #0	@ ret,
	b	.L354	@
.L358:
	tst	r2, #31	@ tmp145,
	beq	.L349	@,
	movw	r2, #:lower16:g_ChipMaxWidth	@ tmp150,
	movt	r2, #:upper16:g_ChipMaxWidth	@ tmp150,
	ldr	r3, [r2, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r0, r3	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L361	@,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L353	@,
.L362:
	mov	r2, ip	@, g_chipID.530
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC47	@,
	movt	r1, #:upper16:.LC47	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L354	@
.L361:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp152,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp152,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L353	@,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L353	@,
	b	.L362	@
.L359:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp157,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp157,
	ldr	r0, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	r4, r0	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L353	@,
	ldr	r3, [r1, #0]	@ D.37956, <variable>.eVidStd
	cmp	r3, #13	@ D.37956,
	cmpne	r3, #0	@, D.37956,
	bne	.L363	@,
	b	.L353	@
.L360:
	movw	r1, #:lower16:g_ChipMaxHeight	@ tmp167,
	movt	r1, #:upper16:g_ChipMaxHeight	@ tmp167,
	mov	r0, #0	@,
	ldr	r3, [r1, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	movw	r1, #:lower16:.LC48	@,
	movt	r1, #:upper16:.LC48	@,
	str	ip, [sp, #0]	@ g_chipID.530,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	b	.L354	@
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
.LFB1703:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp183,
	movt	r4, #:upper16:.LANCHOR0	@ tmp183,
	mov	r5, r0	@ ChanID, ChanID
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r4, r0, asl #2]	@ D.37789, s_pstVfmwChan
	ldr	r0, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	ip, [r3, #1624]	@ eOldDecCore, <variable>.eDecCore
	sub	r2, r0, #4	@ tmp148, <variable>.eVidStd,
	cmp	r2, #10	@ tmp148,
	ldrls	pc, [pc, r2, asl #2]	@ tmp148
	b	.L365	@
.L371:
	.word	.L366
	.word	.L365
	.word	.L365
	.word	.L365
	.word	.L365
	.word	.L365
	.word	.L367
	.word	.L368
	.word	.L369
	.word	.L365
	.word	.L370
.L367:
	ldr	r0, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	moveq	r0, #3	@ tmp154,
	streq	r0, [r3, #1624]	@ tmp154, <variable>.eDecCore
	beq	.L372	@,
.L365:
	mov	r0, #0	@ tmp166,
	str	r0, [r3, #1624]	@ tmp166, <variable>.eDecCore
.L372:
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.2307, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp167,
	movt	r6, #:upper16:.LANCHOR0	@ tmp167,
	ldr	r2, [r0, #1624]	@ prephitmp.2309, <variable>.eDecCore
	cmp	r2, ip	@ prephitmp.2309, eOldDecCore
	beq	.L376	@,
	sub	ip, ip, #1	@ tmp168, eOldDecCore,
	cmp	ip, #4	@ tmp168,
	bhi	.L377	@,
	ldr	r3, [r6, #72]	@ D.37809, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37809,
	beq	.L377	@,
	add	lr, r0, #217088	@, prephitmp.2307,
	str	r1, [sp, #4]	@,
	add	r0, lr, #432	@,,
	blx	r3	@ D.37809
	ldr	r0, [r6, r5, asl #2]	@ prephitmp.2307, s_pstVfmwChan
	ldr	r1, [sp, #4]	@,
	ldr	r2, [r0, #1624]	@ prephitmp.2309, <variable>.eDecCore
.L377:
	sub	r3, r2, #1	@ tmp173, prephitmp.2309,
	cmp	r3, #4	@ tmp173,
	bhi	.L376	@,
	ldr	ip, [r0, #24]	@ <variable>.eChanCapLevel, <variable>.eChanCapLevel
	movw	lr, #:lower16:217532	@ tmp174,
	movt	lr, #:upper16:217532	@ tmp174,
	movw	r2, #:lower16:.LANCHOR0	@ tmp176,
	movt	r2, #:upper16:.LANCHOR0	@ tmp176,
	str	ip, [r0, lr]	@ <variable>.eChanCapLevel, <variable>.stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	ldr	r3, [r4, #68]	@ D.37821, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.37821,
	beq	.L378	@,
	ldr	r2, [r2, r5, asl #2]	@ temp.2324, s_pstVfmwChan
	add	r0, r2, #217088	@, temp.2324,
	add	r0, r0, #432	@,,
	ldr	r2, [r2, #880]	@, <variable>.eVidStd
	blx	r3	@ D.37821
	cmp	r0, #0	@,
	bne	.L378	@,
.L376:
	mov	r0, #0	@ D.37825,
.L379:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L370:
	mov	r2, #2	@ tmp150,
	str	r2, [r3, #1624]	@ tmp150, <variable>.eDecCore
	b	.L372	@
.L366:
	mov	r6, #1	@ tmp149,
	str	r6, [r3, #1624]	@ tmp149, <variable>.eDecCore
	b	.L372	@
.L368:
	ldr	r6, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r6, #1	@ g_VdmCharacter,
	moveq	r6, #4	@ tmp159,
	streq	r6, [r3, #1624]	@ tmp159, <variable>.eDecCore
	beq	.L372	@,
	b	.L365	@
.L369:
	ldr	r2, [r4, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	moveq	r2, #5	@ tmp164,
	streq	r2, [r3, #1624]	@ tmp164, <variable>.eDecCore
	beq	.L372	@,
	b	.L365	@
.L378:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC50	@,
	movt	r1, #:upper16:.LC50	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37825,
	b	.L379	@
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.type	VCTRL_ConfigMemInfo, %function
VCTRL_ConfigMemInfo:
	.fnstart
.LFB1695:
	@ args = 80, pretend = 0, frame = 464
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #492
	sub	sp, sp, #492	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp294,
	movt	r4, #:upper16:.LANCHOR0	@ tmp294,
	ldr	fp, [sp, #564]	@, ChanMemDetail.ChanMemCtx.VirAddr
	mov	r5, r0	@ ChanID, ChanID
	ldr	sl, [sp, #568]	@, ChanMemDetail.ChanMemCtx.Length
	movw	r0, #:lower16:217488	@ tmp175,
	str	r1, [sp, #68]	@ eCapLevel, %sfp
	movt	r0, #:upper16:217488	@ tmp175,
	ldr	r1, [sp, #560]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r7, [sp, #544]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r6, [sp, #552]	@, ChanMemDetail.ChanMemScd.Length
	ldr	r9, [sp, #576]	@, ChanMemDetail.ChanMemPmv.PhyAddr
	ldr	r8, [sp, #580]	@, ChanMemDetail.ChanMemPmv.VirAddr
	str	r1, [sp, #64]	@, %sfp
	str	fp, [sp, #60]	@, %sfp
	ldr	r1, [sp, #584]	@, ChanMemDetail.ChanMemPmv.Length
	str	sl, [sp, #56]	@, %sfp
	ldr	fp, [sp, #592]	@, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	sl, [r4, r5, asl #2]	@, s_pstVfmwChan
	str	r7, [sp, #40]	@, %sfp
	str	r6, [sp, #36]	@, %sfp
	str	r2, [sp, #28]	@ OneChanMemFlag, %sfp
	str	r9, [sp, #52]	@, %sfp
	str	r8, [sp, #48]	@, %sfp
	str	r1, [sp, #44]	@, %sfp
	ldr	r8, [sp, #600]	@ ChanMemFlag$SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	ldr	r1, [sp, #604]	@ ChanMemFlag$SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	ip, [sp, #548]	@ ChanMemDetail$ChanMemScd$VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	ldr	r6, [sp, #528]	@ ChanMemDetail$ChanMemVdh$PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r7, [sp, #536]	@ ChanMemDetail$ChanMemVdh$Length, ChanMemDetail.ChanMemVdh.Length
	ldr	r2, [sp, #532]	@ ChanMemDetail$ChanMemVdh$VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	ldr	r9, [sp, #596]	@ ChanMemFlag$SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	str	fp, [sl, #216]	@, <variable>.s32SelfAllocChanMem_vdh
	ldr	fp, [r4, r5, asl #2]	@ tmp170, s_pstVfmwChan
	str	r9, [fp, #220]	@ ChanMemFlag$SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	ldr	sl, [r4, r5, asl #2]	@ tmp172, s_pstVfmwChan
	str	r8, [sl, #224]	@ ChanMemFlag$SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	ldr	r8, [r4, r5, asl #2]	@ tmp174, s_pstVfmwChan
	str	r1, [r8, r0]	@ ChanMemFlag$SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	ldr	r1, [r3, #8]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r1, #3	@ <variable>.MemAllocMode,
	ldrne	r1, [r4, r5, asl #2]	@ prephitmp.2377, s_pstVfmwChan
	beq	.L393	@,
.L383:
	mov	r8, #0	@ tmp198,
	str	r8, [r1, #148]	@ tmp198, <variable>.s32OneChanMem
.L384:
	ldr	sl, [r4, r5, asl #2]	@ tmp200, s_pstVfmwChan
	movw	r8, #:lower16:217500	@ tmp219,
	movt	r8, #:upper16:217500	@ tmp219,
	movw	r0, #:lower16:217496	@ tmp222,
	movt	r0, #:upper16:217496	@ tmp222,
	movw	r1, #:lower16:217504	@ tmp225,
	str	r6, [sl, #176]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	movt	r1, #:upper16:217504	@ tmp225,
	ldr	fp, [r4, r5, asl #2]	@ tmp202, s_pstVfmwChan
	add	r9, r4, r5, asl #2	@, tmp229, tmp294, ChanID,
	movw	sl, #:lower16:.LANCHOR0	@ tmp199,
	movt	sl, #:upper16:.LANCHOR0	@ tmp199,
	str	r2, [fp, #172]	@ ChanMemDetail$ChanMemVdh$VirAddr, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp204, s_pstVfmwChan
	str	r7, [r2, #180]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.stChanMem_vdh.Length
	ldr	fp, [sp, #40]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp206, s_pstVfmwChan
	str	fp, [r2, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp208, s_pstVfmwChan
	str	ip, [r2, #188]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem_scd.VirAddr
	ldr	fp, [sp, #36]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp210, s_pstVfmwChan
	str	fp, [r2, #196]	@, <variable>.stChanMem_scd.Length
	ldr	fp, [sp, #64]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp212, s_pstVfmwChan
	str	fp, [r2, #208]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	fp, [sp, #60]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp214, s_pstVfmwChan
	str	fp, [r2, #204]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	fp, [sp, #56]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp216, s_pstVfmwChan
	str	fp, [r2, #212]	@, <variable>.stChanMem_ctx.Length
	ldr	fp, [sp, #52]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp218, s_pstVfmwChan
	str	fp, [r2, r8]	@, <variable>.stChanMem_pmv.PhyAddr
	ldr	r8, [sp, #48]	@, %sfp
	ldr	fp, [r4, r5, asl #2]	@ tmp221, s_pstVfmwChan
	str	r8, [fp, r0]	@, <variable>.stChanMem_pmv.VirAddr
	ldr	fp, [sp, #44]	@, %sfp
	ldr	r2, [r4, r5, asl #2]	@ tmp224, s_pstVfmwChan
	str	fp, [r2, r1]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, r5, asl #2]	@ tmp232, s_pstVfmwChan
	str	ip, [r9, #96]	@ ChanMemDetail$ChanMemScd$VirAddr, g_scd_vir
	str	r6, [r1, #248]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32SdecMemAddr
	ldr	r2, [r4, r5, asl #2]	@ tmp234, s_pstVfmwChan
	str	r7, [r2, #252]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.s32SdecMemSize
	ldr	r2, [r4, r5, asl #2]	@ temp.2408, s_pstVfmwChan
	ldr	ip, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L385	@,
	ldr	ip, [sp, #68]	@, %sfp
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp237,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp237,
	str	r6, [r2, #236]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32OffLineDnrMemAddr
	cmp	ip, #24	@,
	ldr	ip, [lr, #36]	@ D.37459, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	moveq	r0, #1	@ DnrImgNum,
	ldrne	r0, [r3, #60]	@ DnrImgNum, <variable>.s32DisplayFrameNum
	cmp	ip, #0	@ D.37459,
	beq	.L388	@,
	ldr	lr, [r3, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mov	r1, #0	@ tmp240,
	ldr	r2, [r3, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	str	r0, [sp, #4]	@ DnrImgNum,
	mvn	r0, #0	@ tmp242,
	str	r1, [sp, #8]	@ tmp240,
	mov	r3, lr	@, <variable>.s32MaxHeight
	str	r0, [sp, #12]	@ tmp242,
	add	lr, sp, #72	@ tmp244,,
	mov	r0, #64	@ tmp245,
	str	r1, [sp, #0]	@ tmp240,
	str	r0, [sp, #20]	@ tmp245,
	mov	r1, r7	@, ChanMemDetail$ChanMemVdh$Length
	str	lr, [sp, #16]	@ tmp244,
	mov	r0, r6	@, ChanMemDetail$ChanMemVdh$PhyAddr
	blx	ip	@ D.37459
	cmp	r0, #0	@,
	bne	.L388	@,
	ldr	r3, [r4, r5, asl #2]	@ tmp248, s_pstVfmwChan
	ldr	r2, [sp, #76]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
.L391:
	ldr	ip, [r4, r5, asl #2]	@ temp.2411, s_pstVfmwChan
	sub	r7, r7, #16	@ tmp258, ChanMemDetail$ChanMemVdh$Length,
	mov	r0, #0	@ D.37465,
	ldr	r3, [ip, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	add	r6, r3, r6	@ tmp256, <variable>.s32OffLineDNRMemSize, ChanMemDetail$ChanMemVdh$PhyAddr
	str	r6, [ip, #228]	@ tmp256, <variable>.s32VdmChanMemAddr
	ldr	r1, [r4, r5, asl #2]	@ temp.2412, s_pstVfmwChan
	ldr	r2, [r1, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	rsb	r7, r2, r7	@ tmp260, <variable>.s32OffLineDNRMemSize, tmp258
	str	r7, [r1, #232]	@ tmp260, <variable>.s32VdmChanMemSize
	ldr	ip, [r4, r5, asl #2]	@ temp.2414, s_pstVfmwChan
	ldr	r3, [ip, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	r1, r3, #14336	@ tmp264, <variable>.s32VdmChanMemSize,
	str	r1, [ip, #232]	@ tmp264, <variable>.s32VdmChanMemSize
	ldr	r3, [r4, r5, asl #2]	@ temp.2415, s_pstVfmwChan
	ldr	r2, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	sub	ip, r2, #32768	@ tmp268, <variable>.s32VdmChanMemSize,
	str	ip, [r3, #232]	@ tmp268, <variable>.s32VdmChanMemSize
	ldr	ip, [r4, r5, asl #2]	@ temp.2417, s_pstVfmwChan
	ldr	r1, [ip, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r2, [ip, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	add	r3, r1, r2	@ tmp270, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	r1, r3, #15	@ tmp273, tmp270,
	bic	r2, r1, #15	@ tmp274, tmp273,
	str	r2, [ip, #260]	@ tmp274, <variable>.s32BpdChanMemAddr
	ldr	r3, [r4, r5, asl #2]	@ tmp276, s_pstVfmwChan
	mov	r1, #14336	@ tmp277,
	str	r1, [r3, #264]	@ tmp277, <variable>.s32BpdChanMemSize
	ldr	r3, [r4, r5, asl #2]	@ temp.2420, s_pstVfmwChan
	ldr	ip, [r3, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	ldr	r2, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	ldr	r1, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	add	r2, ip, r2	@ tmp279, <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemSize
	add	ip, r2, #15	@ tmp282, tmp279,
	add	r2, ip, r1	@ tmp283, tmp282, <variable>.s32BpdChanMemSize
	bic	ip, r2, #15	@ tmp285, tmp283,
	str	ip, [r3, #268]	@ tmp285, <variable>.s32Vp8SegIdChanMemAddr
	ldr	r3, [r4, r5, asl #2]	@ tmp287, s_pstVfmwChan
	mov	r2, #32768	@ tmp288,
	str	r2, [r3, #272]	@ tmp288, <variable>.s32Vp8SegIdChanMemSize
	ldr	ip, [sp, #40]	@, %sfp
	ldr	r1, [r4, r5, asl #2]	@ tmp290, s_pstVfmwChan
	str	ip, [r1, #244]	@, <variable>.s32ScdChanMemAddr
	ldr	r2, [sp, #36]	@, %sfp
	ldr	r3, [r4, r5, asl #2]	@ tmp292, s_pstVfmwChan
	str	r2, [r3, #256]	@, <variable>.s32ScdChanMemSize
.L390:
	add	sp, sp, #492	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L393:
	ldr	r1, [r4, r5, asl #2]	@ prephitmp.2377, s_pstVfmwChan
	ldr	r8, [r1, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	r8, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L383	@,
	ldr	r0, [r1, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r0, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L383	@,
	ldr	r9, [r1, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r9, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L383	@,
	ldr	fp, [sp, #36]	@, %sfp
	ldr	r9, [sp, #40]	@, %sfp
	ldr	sl, [sp, #28]	@, %sfp
	add	r0, fp, r9	@ tmp183,,
	cmp	sl, #1	@,
	cmpeq	r0, r6	@, tmp183, ChanMemDetail$ChanMemVdh$PhyAddr
	bne	.L383	@,
	str	r9, [r1, #160]	@, <variable>.stChanMem.PhyAddr
	add	r9, fp, r7	@ tmp193,, ChanMemDetail$ChanMemVdh$Length
	ldr	r0, [r4, r5, asl #2]	@ tmp190, s_pstVfmwChan
	str	ip, [r0, #156]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem.VirAddr
	ldr	r1, [r4, r5, asl #2]	@ tmp192, s_pstVfmwChan
	str	r9, [r1, #164]	@ tmp193, <variable>.stChanMem.Length
	ldr	fp, [r4, r5, asl #2]	@ tmp195, s_pstVfmwChan
	str	r8, [fp, #148]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L384	@
.L385:
	mov	r1, #0	@ tmp250,
	str	r1, [r2, #236]	@ tmp250, <variable>.s32OffLineDnrMemAddr
	ldr	ip, [sl, r5, asl #2]	@ tmp252, s_pstVfmwChan
	str	r1, [ip, #240]	@ tmp250, <variable>.s32OffLineDNRMemSize
	b	.L391	@
.L388:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC51	@,
	movt	r1, #:upper16:.LC51	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37465,
	b	.L390	@
	.fnend
	.size	VCTRL_ConfigMemInfo, .-VCTRL_ConfigMemInfo
	.align	2
	.global	VCTRL_SetCallBack
	.type	VCTRL_SetCallBack, %function
VCTRL_SetCallBack:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ event_report
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L402	@,
	cmp	r0, #0	@ eType,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp139,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp139,
	streq	r1, [r3, #256]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmeqfd	sp!, {r3, pc}	@
	cmp	r0, #1	@ eType,
	beq	.L403	@,
	mov	r3, r0	@, eType
	ldr	r2, .L404	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36456,
	ldmfd	sp!, {r3, pc}	@
.L403:
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	mov	r0, #0	@ D.36456,
	str	r1, [r3, #260]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r3, pc}	@
.L402:
	mov	r0, r1	@, event_report
	movw	r2, #715	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC52	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC52	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36456,
	ldmfd	sp!, {r3, pc}	@
.L405:
	.align	2
.L404:
	.word	.LANCHOR1+352
	.fnend
	.size	VCTRL_SetCallBack, .-VCTRL_SetCallBack
	.align	2
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
.LFB1666:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L417	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp144,
	movt	ip, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [ip, r0, asl #2]	@ D.36425, s_pstVfmwChan
	cmp	r3, #0	@ D.36425,
	beq	.L418	@,
	ldr	r3, [r3, #20]	@ eType, <variable>.eAdapterType
	cmp	r3, #0	@ eType,
	bne	.L419	@,
	ldr	r3, [ip, #256]	@ D.36428, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.36428,
	beq	.L420	@,
.L414:
	blx	r3	@ D.36434
	ldmfd	sp!, {r3, pc}	@
.L419:
	cmp	r3, #1	@ eType,
	beq	.L421	@,
	ldr	r2, .L422	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC53	@,
	movt	r1, #:upper16:.LC53	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L421:
	ldr	r3, [ip, #260]	@ D.36434, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.36434,
	bne	.L414	@,
	mov	r0, r3	@, D.36434
	movw	r1, #:lower16:.LC56	@,
	movt	r1, #:upper16:.LC56	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L420:
	mov	r0, r3	@, D.36428
	movw	r1, #:lower16:.LC55	@,
	movt	r1, #:upper16:.LC55	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L417:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #676	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC54	@,
	movt	r3, #:upper16:.LC54	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L418:
	mov	r0, r3	@, D.36425
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #677	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L423:
	.align	2
.L422:
	.word	.LANCHOR1+372
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r3, [r0, #0]	@ <variable>.pfun_iMediaSoftDEC_Create, <variable>.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Create,
	beq	.L434	@,
	ldr	r3, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L435	@,
	ldr	r3, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L436	@,
	ldr	r3, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L437	@,
	ldr	r3, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L438	@,
	ldr	r3, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L439	@,
	ldr	r3, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L440	@,
	mov	r4, r0	@ pstSdecFunc, pstSdecFunc
	ldr	ip, .L441	@ tmp158,
	ldmia	r4!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	mov	r5, #0	@ D.36157,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp158,,,,
	ldmia	r4, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	ip, {r0, r1, r2}	@ tmp161,,,
.L426:
	mov	r0, r5	@, D.36157
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L434:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Create
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC58	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC58	@,
	mvn	r5, #0	@ D.36157,
	bl	dprint_vfmw	@
	b	.L426	@
.L439:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC63	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC63	@,
	mvn	r5, #0	@ D.36157,
	bl	dprint_vfmw	@
	b	.L426	@
.L438:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_RecycleImage
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC62	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC62	@,
	mvn	r5, #0	@ D.36157,
	bl	dprint_vfmw	@
	b	.L426	@
.L437:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Decode
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC61	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC61	@,
	mvn	r5, #0	@ D.36157,
	bl	dprint_vfmw	@
	b	.L426	@
.L436:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Init
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC60	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC60	@,
	mvn	r5, #0	@ D.36157,
	bl	dprint_vfmw	@
	b	.L426	@
.L435:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_Destroy
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC59	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC59	@,
	mvn	r5, #0	@ D.36157,
	bl	dprint_vfmw	@
	b	.L426	@
.L440:
	mov	r0, r3	@, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	movw	r1, #:lower16:.LC57	@,
	movw	r2, #:lower16:.LC64	@,
	movt	r1, #:upper16:.LC57	@,
	movt	r2, #:upper16:.LC64	@,
	mvn	r5, #0	@ D.36157,
	bl	dprint_vfmw	@
	b	.L426	@
.L442:
	.align	2
.L441:
	.word	.LANCHOR0+68
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB1816:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp181,
	movt	r5, #:upper16:.LANCHOR0	@ tmp181,
	mov	r6, r0	@ ChanId, ChanId
	movw	r1, #:lower16:217512	@ tmp140,
	movt	r1, #:upper16:217512	@ tmp140,
	ldr	r0, [r5, r0, asl #2]	@ D.41056, s_pstVfmwChan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r0, r1]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #13	@ <variable>.stSynCtx.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.stSynCtx.eVidStd
	b	.L444	@
.L455:
	.word	.L445
	.word	.L446
	.word	.L447
	.word	.L448
	.word	.L444
	.word	.L449
	.word	.L450
	.word	.L444
	.word	.L451
	.word	.L452
	.word	.L453
	.word	.L453
	.word	.L453
	.word	.L454
.L454:
	add	r4, r0, #217088	@, D.41056,
	add	r0, r4, #432	@,,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L456:
	add	ip, r4, #1	@ tmp162, ret,
	cmp	ip, #1	@ tmp162,
	bhi	.L457	@,
	ldr	r3, [r5, #20]	@ g_event_report.840, g_event_report
	cmp	r3, #0	@ g_event_report.840,
	beq	.L459	@,
	add	r2, sp, #8	@ tmp165,,
	mov	lr, #1	@ tmp164,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	lr, [r2, #-4]!	@ tmp164, para
	blx	r3	@ g_event_report.840
.L459:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L444:
	mvn	r4, #0	@ ret,
	b	.L456	@
.L445:
	add	r4, r0, #217088	@, D.41056,
	add	r0, r4, #432	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L446:
	add	r0, r0, #217088	@, D.41056,
	add	r0, r0, #432	@,,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L447:
	add	r2, r0, #217088	@, D.41056,
	add	r0, r2, #432	@,,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L448:
	add	r0, r0, #217088	@, D.41056,
	add	r0, r0, #432	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L449:
	add	r1, r0, #217088	@, D.41056,
	add	r0, r1, #432	@,,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L450:
	add	ip, r0, #217088	@, D.41056,
	add	r0, ip, #432	@,,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L451:
	add	lr, r0, #217088	@, D.41056,
	add	r0, lr, #432	@,,
	bl	REAL8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L452:
	add	r3, r0, #217088	@, D.41056,
	add	r0, r3, #432	@,,
	bl	REAL9DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L453:
	add	r2, r0, #217088	@, D.41056,
	add	r0, r2, #432	@,,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L456	@
.L457:
	movw	r3, #:lower16:g_chipID	@ tmp166,
	movt	r3, #:upper16:g_chipID	@ tmp166,
	ldr	r3, [r3, #0]	@ g_chipID, g_chipID
	cmp	r3, #16	@ g_chipID,
	bhi	.L459	@,
	mov	r1, #1	@ tmp169,
	mov	r3, r1, asl r3	@ tmp168, tmp169,
	tst	r3, #3904	@ tmp168,
	bne	.L461	@,
	movw	r2, #:lower16:98367	@ tmp172,
	movt	r2, #:upper16:98367	@ tmp172,
	and	r0, r3, r2	@ tmp172, tmp168, tmp172
	cmp	r0, #0	@ tmp172,
	beq	.L459	@,
	mov	r0, r6	@, ChanId
	mov	r1, r4	@, ret
	bl	VCTRL_SetLastFrameIdPlus2	@
	movw	r1, #:lower16:.LC65	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC65	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L459	@
.L461:
	ldr	r3, [r5, #20]	@ g_event_report.2526, g_event_report
	cmp	r3, #0	@ g_event_report.2526,
	beq	.L462	@,
	add	r2, sp, #8	@ tmp177,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.2526
.L462:
	movw	r1, #:lower16:.LC66	@,
	sub	r2, r4, #2	@, ret,
	movt	r1, #:upper16:.LC66	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	b	.L459	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.type	VfmwProc_SaveYUV, %function
VfmwProc_SaveYUV:
	.fnstart
.LFB1791:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]	@ dat,* p_args
	.pad #68
	sub	sp, sp, #68	@,,
	cmp	r5, #3	@ dat,
	bhi	.L468	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r6, [r4, #264]	@ vfmw_save_yuv_file, vfmw_save_yuv_file
	cmp	r6, #0	@ vfmw_save_yuv_file,
	beq	.L469	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC70	@,
	movt	r1, #:upper16:.LC70	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #264]	@, vfmw_save_yuv_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, #264]	@ tmp155, vfmw_save_yuv_file
.L468:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L469:
	ldr	lr, [r4, #268]	@ save_file_cnt.783, save_file_cnt
	add	r7, sp, #12	@ str.779,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC67	@,
	mov	r0, r7	@, str.779
	movt	r2, #:upper16:.LC67	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.783,
	str	lr, [sp, #0]	@ save_file_cnt.783,
	str	ip, [r4, #268]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r7	@, str.779
	mov	r2, r6	@, vfmw_save_yuv_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #272]	@ dat, save_yuv_chan_num
	cmp	r0, #0	@ vfmw_save_yuv_file.785,
	str	r0, [r4, #264]	@ vfmw_save_yuv_file.785, vfmw_save_yuv_file
	beq	.L467	@,
	mov	r2, r7	@, str.779
	mov	r3, r5	@, dat
	movw	r1, #:lower16:.LC68	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC68	@,
	bl	dprint_vfmw	@
	b	.L468	@
.L467:
	mov	r2, r7	@, str.779
	movw	r1, #:lower16:.LC69	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC69	@,
	bl	dprint_vfmw	@
	b	.L468	@
	.fnend
	.size	VfmwProc_SaveYUV, .-VfmwProc_SaveYUV
	.align	2
	.type	VfmwProc_SaveSeg, %function
VfmwProc_SaveSeg:
	.fnstart
.LFB1790:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]	@ dat,* p_args
	.pad #68
	sub	sp, sp, #68	@,,
	cmp	r5, #3	@ dat,
	bhi	.L474	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r6, [r4, #276]	@ vfmw_save_seg_file, vfmw_save_seg_file
	cmp	r6, #0	@ vfmw_save_seg_file,
	beq	.L475	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC74	@,
	movt	r1, #:upper16:.LC74	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #276]	@, vfmw_save_seg_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, #276]	@ tmp155, vfmw_save_seg_file
.L474:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L475:
	ldr	lr, [r4, #280]	@ save_file_cnt.774, save_file_cnt
	add	r7, sp, #12	@ str.770,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC71	@,
	mov	r0, r7	@, str.770
	movt	r2, #:upper16:.LC71	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.774,
	str	lr, [sp, #0]	@ save_file_cnt.774,
	str	ip, [r4, #280]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r7	@, str.770
	mov	r2, r6	@, vfmw_save_seg_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #284]	@ dat, save_seg_chan_num
	cmp	r0, #0	@ vfmw_save_seg_file.776,
	str	r0, [r4, #276]	@ vfmw_save_seg_file.776, vfmw_save_seg_file
	beq	.L473	@,
	mov	r2, r7	@, str.770
	mov	r3, r5	@, dat
	movw	r1, #:lower16:.LC72	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC72	@,
	bl	dprint_vfmw	@
	b	.L474	@
.L473:
	mov	r2, r7	@, str.770
	movw	r1, #:lower16:.LC73	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC73	@,
	bl	dprint_vfmw	@
	b	.L474	@
	.fnend
	.size	VfmwProc_SaveSeg, .-VfmwProc_SaveSeg
	.align	2
	.type	VfmwProc_Savestream, %function
VfmwProc_Savestream:
	.fnstart
.LFB1789:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, [r0, #0]	@ dat,* p_args
	.pad #68
	sub	sp, sp, #68	@,,
	cmp	r5, #3	@ dat,
	bhi	.L480	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r6, [r4, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r6, #0	@ vfmw_save_str_file,
	beq	.L481	@,
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC78	@,
	movt	r1, #:upper16:.LC78	@,
	bl	dprint_vfmw	@
	ldr	r0, [r4, #288]	@, vfmw_save_str_file
	bl	klib_fclose	@
	mov	r3, #0	@ tmp155,
	str	r3, [r4, #288]	@ tmp155, vfmw_save_str_file
.L480:
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L481:
	ldr	lr, [r4, #292]	@ save_file_cnt.765, save_file_cnt
	add	r7, sp, #12	@ str.761,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC75	@,
	mov	r0, r7	@, str.761
	movt	r2, #:upper16:.LC75	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.765,
	str	lr, [sp, #0]	@ save_file_cnt.765,
	str	ip, [r4, #292]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r7	@, str.761
	mov	r2, r6	@, vfmw_save_str_file
	mov	r1, #66	@,
	bl	klib_fopen	@
	str	r5, [r4, #296]	@ dat, save_str_chan_num
	cmp	r0, #0	@ vfmw_save_str_file.767,
	str	r0, [r4, #288]	@ vfmw_save_str_file.767, vfmw_save_str_file
	beq	.L479	@,
	mov	r2, r7	@, str.761
	mov	r3, r5	@, dat
	movw	r1, #:lower16:.LC76	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC76	@,
	bl	dprint_vfmw	@
	b	.L480	@
.L479:
	mov	r2, r7	@, str.761
	movw	r1, #:lower16:.LC77	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC77	@,
	bl	dprint_vfmw	@
	b	.L480	@
	.fnend
	.size	VfmwProc_Savestream, .-VfmwProc_Savestream
	.align	2
	.type	VfmwProc_Save1DYUV, %function
VfmwProc_Save1DYUV:
	.fnstart
.LFB1793:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	ip, [r0, #0]	@ dat,* p_args
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, ip, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ ptr,
	.pad #64
	sub	sp, sp, #64	@,,
	ldmib	r0, {r7, r8}	@ phole ldm
	beq	.L489	@,
	add	r5, sp, #12	@ tmp153,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC80	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC80	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r5	@, tmp153
	str	ip, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r5	@, tmp153
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L485	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp146,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp146,
	ldr	ip, [r3, #96]	@ D.40822, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.40822,
	beq	.L486	@,
	mov	r1, #1	@ tmp147,
	mov	r2, r7	@, D.40810
	str	r1, [sp, #0]	@ tmp147,
	mov	r3, r8	@, D.40812
	mov	r1, r4	@, ptr
	blx	ip	@ D.40822
.L487:
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC82	@,
	mov	r2, r5	@, tmp153
	movt	r1, #:upper16:.LC82	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L484:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L486:
	mov	r0, ip	@, D.40822
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7639	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L487	@
.L489:
	mov	r2, ip	@, dat
	movw	r1, #:lower16:.LC79	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	b	.L484	@
.L485:
	mov	r2, r5	@, tmp153
	movw	r1, #:lower16:.LC83	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	b	.L484	@
	.fnend
	.size	VfmwProc_Save1DYUV, .-VfmwProc_Save1DYUV
	.align	2
	.type	VfmwProc_SaveOneYUV, %function
VfmwProc_SaveOneYUV:
	.fnstart
.LFB1792:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	ip, [r0, #0]	@ dat,* p_args
#APP
@ 182 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/memory.h" 1
	@ __pv_stub
1:	sub	r4, ip, #-2130706432	@ ptr, dat,
	.pushsection .pv_table,"a"
	.long	1b
	.popsection

@ 0 "" 2
	cmp	r4, #0	@ ptr,
	.pad #64
	sub	sp, sp, #64	@,,
	beq	.L495	@,
	add	r5, sp, #12	@ tmp139,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC84	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC84	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	mov	r0, r5	@, tmp139
	str	ip, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r5	@, tmp139
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r6, r0, #0	@ fp,
	beq	.L493	@,
	mov	r2, r6	@, fp
	mov	r1, #3145728	@,
	mov	r0, r4	@, ptr
	bl	klib_fwrite	@
	mov	r0, r6	@, fp
	bl	klib_fclose	@
	movw	r1, #:lower16:.LC85	@,
	mov	r2, r5	@, tmp139
	movt	r1, #:upper16:.LC85	@,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
.L492:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L493:
	mov	r2, r5	@, tmp139
	movw	r1, #:lower16:.LC83	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC83	@,
	bl	dprint_vfmw	@
	b	.L492	@
.L495:
	mov	r2, ip	@, dat
	movw	r1, #:lower16:.LC79	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC79	@,
	bl	dprint_vfmw	@
	b	.L492	@
	.fnend
	.size	VfmwProc_SaveOneYUV, .-VfmwProc_SaveOneYUV
	.align	2
	.type	VfmwProc_SetDNRCfg, %function
VfmwProc_SetDNRCfg:
	.fnstart
.LFB1787:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r2, [r0, #0]	@ dat,* p_args
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r0, r2, lsr #27	@ D.40676, dat,
	cmp	r0, #4	@ D.40676,
	bhi	.L500	@,
	mov	r3, r2, asl #20	@ tmp153, dat,
	mov	r1, sp	@,
	ubfx	ip, r2, #26, #1	@ tmp140, dat,,
	strb	ip, [sp, #0]	@ tmp140, DnrChanCfgArgs.s32MirrorEn
	mov	lr, r3, lsr #20	@ tmp153, tmp153,
	ubfx	ip, r2, #25, #1	@ tmp144, dat,,
	ubfx	r3, r2, #24, #1	@ tmp148, dat,,
	str	lr, [sp, #8]	@ tmp153, DnrChanCfgArgs.s32VcmpWmEndLine
	ubfx	r2, r2, #12, #12	@ tmp151, dat,,
	strb	ip, [sp, #1]	@ tmp144, DnrChanCfgArgs.s32VcmpEn
	strb	r3, [sp, #2]	@ tmp148, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #4]	@ tmp151, DnrChanCfgArgs.s32VcmpWmStartLine
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L501	@,
.L499:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {pc}
.L501:
	movw	r1, #:lower16:.LC86	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC86	@,
	bl	dprint_vfmw	@
	b	.L499	@
.L500:
	movw	r1, #:lower16:.LC15	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	b	.L499	@
	.fnend
	.size	VfmwProc_SetDNRCfg, .-VfmwProc_SetDNRCfg
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
.LFB1774:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r6, r3	@ Height, Height
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r3, r2, asl #1	@ tmp158, Width,
	mov	r9, r2	@ Width, Width
	mov	r2, #0	@,
	str	r1, [sp, #12]	@ ChromOfst, %sfp
	mul	r1, r6, r3	@, Height, tmp158
	ldr	sl, [sp, #56]	@ Stride, Stride
	ldr	r8, [sp, #60]	@ fp, fp
	bl	__arm_ioremap	@
	subs	r7, r0, #0	@ pFrameStore,
	beq	.L513	@,
	mul	r4, r9, r6	@ D.40420, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp161, D.40420, D.40420,
	mov	r1, r0, asr #1	@, tmp161,
	str	r1, [sp, #8]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [sp, #4]	@, %sfp
	beq	.L504	@,
	cmp	r6, #0	@ Height,
	ble	.L505	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.40420
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp185, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	fp, r5, #1	@ tmp187, tmp185,
	mov	r5, #1	@ y,
	ble	.L505	@,
	cmp	fp, #0	@ tmp187,
	beq	.L506	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.40420
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L505	@,
.L506:
	mov	r1, r4	@, D.40420
	mov	r2, r8	@, fp
	add	fp, r5, #1	@ tmp188, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, fp, #1	@ y, tmp188,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.40420
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L506	@,
.L505:
	add	r6, r6, r6, lsr #31	@, tmp165, Height, Height,
	mov	fp, r6, asr #1	@ D.40435, tmp165,
	cmp	fp, #0	@ D.40435,
	ble	.L507	@,
	add	r2, r4, #3	@ tmp169, D.40420,
	cmp	r4, #0	@ D.40420,
	ldr	r5, [sp, #4]	@ pU, %sfp
	add	r9, r9, r9, lsr #31	@, tmp172, Width, Width,
	movlt	r4, r2	@ D.40420, tmp169
	ldr	r6, [sp, #12]	@, %sfp
	add	lr, r5, r4, asr #2	@, pV, pU, D.40420,
	add	r2, r7, r6	@ pChrom, pFrameStore,
	mov	r6, r9, asr #1	@ pretmp.2694, tmp172,
	mov	r9, #0	@ y.2727,
.L508:
	cmp	r6, #0	@ pretmp.2694,
	ble	.L511	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp174,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.2694
	sub	ip, r6, #1	@ tmp180, pretmp.2694,
	and	ip, ip, r3	@ tmp182, tmp180,
	mov	r0, #2	@ ivtmp.2710,
	strb	r1, [r5, #0]	@ tmp174,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp176,
	strb	r1, [lr, #0]	@ tmp176,* pV
	beq	.L526	@,
	cmp	ip, #0	@ tmp182,
	beq	.L509	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp199,* x
	cmp	r0, r6	@ x, pretmp.2694
	strb	ip, [r5, r3]	@ tmp199,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp200,* ivtmp.2710
	strb	r1, [lr, r3]	@ tmp200,* x
	mov	r3, r0	@ x, ivtmp.2710
	mov	r0, #3	@ ivtmp.2710,
	beq	.L526	@,
.L509:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp193,* x
	add	r1, r3, #1	@ tmp183, x,
	add	ip, r0, #1	@ tmp184, ivtmp.2710,
	strb	r4, [r5, r3]	@ tmp193,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp194,* ivtmp.2710
	add	r0, ip, #1	@ ivtmp.2710, tmp184,
	strb	r4, [lr, r3]	@ tmp194,* x
	add	r3, r1, #1	@ x, tmp183,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp197,
	cmp	r3, r6	@ x, pretmp.2694
	strb	r4, [r5, r1]	@ tmp197,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp198,
	strb	ip, [lr, r1]	@ tmp198,
	bne	.L509	@,
.L526:
	add	r5, r5, r6	@ pU, pU, pretmp.2694
	add	lr, lr, r6	@ pV, pV, pretmp.2694
.L511:
	add	r9, r9, #1	@ y.2727, y.2727,
	cmp	r9, fp	@ y.2727, D.40435
	addne	r2, r2, sl	@ pChrom, pChrom, Stride
	bne	.L508	@
.L507:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L504:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r3, #0	@,
	beq	.L513	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_FreeVirMem	@
.L513:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB1773:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.40377, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.40377,
	beq	.L538	@,
	mov	r0, #0	@,
	blx	r3	@ D.40377
.L534:
	bl	SCDDRV_EnableInt	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp137,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp137,
	ldr	r0, [r1, #28]	@ D.40382, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.40382,
	beq	.L535	@,
	blx	r0	@ D.40382
	ldmfd	sp!, {r4, pc}	@
.L535:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #7035	@,
	movt	r1, #:upper16:.LC87	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L538:
	mov	r0, r3	@, D.40377
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7027	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L534	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
.LFB1772:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.40360, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.40360,
	beq	.L545	@,
	mov	r0, #0	@,
	blx	r3	@ D.40360
.L541:
	bl	SCDDRV_MaskInt	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp137,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp137,
	ldr	r0, [r1, #24]	@ D.40365, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r0, #0	@ D.40365,
	beq	.L542	@,
	blx	r0	@ D.40365
	ldmfd	sp!, {r4, pc}	@
.L542:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #7013	@,
	movt	r1, #:upper16:.LC87	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L545:
	mov	r0, r3	@, D.40360
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #7005	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L541	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_RlsDSDFrame
	.type	VCTRL_RlsDSDFrame, %function
VCTRL_RlsDSDFrame:
	.fnstart
.LFB1767:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r8, r0	@ ChanID, ChanID
	bhi	.L570	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp148,
	movt	r4, #:upper16:.LANCHOR0	@ tmp148,
	ldr	r3, [r4, r0, asl #2]	@ D.40279, s_pstVfmwChan
	cmp	r3, #0	@ D.40279,
	beq	.L571	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L572	@,
	cmp	r1, #0	@ pImage,
	beq	.L573	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, r8, asl #2]	@ temp.2819, s_pstVfmwChan
	cmp	r3, #0	@ temp.2819,
	movweq	r2, #6929	@,
	beq	.L569	@,
	ldr	r0, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L574	@,
	add	r0, r4, #300	@, tmp148,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, r8, asl #2]	@ D.43463, s_pstVfmwChan
	movw	r1, #:lower16:181770	@ tmp169,
	movt	r1, #:upper16:181770	@ tmp169,
	add	r5, r2, #216064	@ pDSDFrame, D.43463,
	ldrsb	r7, [r2, r1]	@ s32AllDecFrameNum, <variable>.FspInst.s32DecFsNum
	add	r5, r5, #360	@ pDSDFrame, pDSDFrame,
	cmp	r7, #0	@ s32AllDecFrameNum,
	ble	.L554	@,
	ldr	r6, [r5], #16	@ <variable>.eFrameState, <variable>.eFrameState
	sub	r4, r7, #1	@ tmp183, s32AllDecFrameNum,
	and	r4, r4, #1	@ tmp185, tmp183,
	cmp	r6, #1	@ <variable>.eFrameState,
	beq	.L575	@,
.L559:
	mov	r6, #1	@ i,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	add	r5, r5, #16	@ ivtmp.2800, ivtmp.2800,
	ble	.L554	@,
	cmp	r4, #0	@ tmp185,
	beq	.L556	@,
	ldr	r3, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	r3, r6	@ <variable>.eFrameState,
	beq	.L576	@,
.L561:
	add	r6, r6, #1	@ i, i,
	add	r5, r5, #16	@ ivtmp.2800, ivtmp.2800,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L556	@,
	b	.L554	@
.L555:
	ldr	lr, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	lr, #1	@ <variable>.eFrameState,
	beq	.L577	@,
.L564:
	add	r6, r6, #1	@ i, tmp186,
	add	r5, r4, #16	@ ivtmp.2800, tmp187,
	cmp	r7, r6	@ s32AllDecFrameNum, i
	ble	.L554	@,
.L556:
	ldr	ip, [r5, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	mov	r4, r5	@ tmp187, ivtmp.2800
	add	r6, r6, #1	@ tmp186, i,
	cmp	ip, #1	@ <variable>.eFrameState,
	bne	.L555	@,
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	mov	r0, r8	@, ChanID
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	ldr	lr, [r4], #16	@ <variable>.eFrameState, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	lr, #1	@ <variable>.eFrameState,
	bne	.L564	@,
.L577:
	mov	r0, r8	@, ChanID
	ldr	r1, [r4, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r4, #-8]	@, <variable>.s32FrameSize
	add	r6, r6, #1	@ i, tmp186,
	bl	DNR_FsIsInImgQue	@
	add	r5, r4, #16	@ ivtmp.2800, tmp187,
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r4, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	cmp	r7, r6	@ s32AllDecFrameNum, i
	bgt	.L556	@,
.L554:
	ldr	r0, .L578	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L575:
	mov	r0, r8	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L559	@
.L576:
	mov	r0, r8	@, ChanID
	ldr	r1, [r5, #-12]	@, <variable>.s32FrameAddr
	ldr	r2, [r5, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r5, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r5, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	b	.L561	@
.L574:
	movw	r2, #6936	@,
.L569:
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC92	@,
	movt	r1, #:upper16:.LC92	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L572:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6923	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC90	@,
	movt	r3, #:upper16:.LC90	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L570:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6921	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC88	@,
	movt	r3, #:upper16:.LC88	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L573:
	mov	r0, r1	@, pImage
	movw	r2, #6924	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC91	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC91	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L571:
	mov	r0, r3	@, D.40279
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6922	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC89	@,
	movt	r3, #:upper16:.LC89	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L579:
	.align	2
.L578:
	.word	.LANCHOR0+300
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1764:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r7, r2	@ pReadImgNum, pReadImgNum
	ldr	ip, [r4, r0, asl #2]	@ tmp141, s_pstVfmwChan
	mov	r8, r3	@ pNewImgNum, pNewImgNum
	cmp	ip, #0	@ tmp141,
	beq	.L587	@,
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	streq	r3, [r8, #0]	@ pstVoQue,* pNewImgNum
	streq	r3, [r7, #0]	@ pstVoQue,* pReadImgNum
	streq	r3, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r8	@, pNewImgNum
	mov	r1, r7	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, r5, asl #2]	@ temp.2845, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ D.40216, <variable>.eVidStd
	cmp	r3, #0	@ D.40216,
	beq	.L588	@,
	cmp	r3, #15	@ D.40216,
	movne	r3, #2	@ tmp148,
	strne	r3, [r6, #0]	@ tmp148,* pRefImgNum
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r1, #:lower16:.LC93	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC93	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L588:
	movw	r1, #:lower16:244144	@ tmp145,
	movt	r1, #:upper16:244144	@ tmp145,
	ldr	r0, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size, <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r0, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L587:
	mov	r0, ip	@, tmp141
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movw	r2, #6816	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
	.fnstart
.LFB1723:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bls	.L608	@,
.L590:
	mov	r5, #0	@ pDecParam,
.L603:
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L608:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r4, [r3, r0, asl #2]	@ D.41412, s_pstVfmwChan
	cmp	r4, #0	@ D.41412,
	beq	.L590	@,
	ldr	r0, [r4, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L590	@,
	ldr	r1, [r4, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	bne	.L590	@,
	ldr	r5, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r5, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, r5, asl #2]	@ <variable>.eVidStd
	b	.L590	@
.L605:
	.word	.L592
	.word	.L602
	.word	.L595
	.word	.L602
	.word	.L590
	.word	.L602
	.word	.L602
	.word	.L590
	.word	.L602
	.word	.L602
	.word	.L602
	.word	.L602
	.word	.L602
	.word	.L602
.L602:
	movw	r3, #:lower16:217524	@ tmp150,
	movt	r3, #:upper16:217524	@ tmp150,
	ldr	r5, [r4, r3]	@ pDecParam,
.L593:
	cmp	r5, #0	@ pDecParam,
	beq	.L603	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #28]	@, <variable>.u32timeLastDecParamReady
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L592:
	movw	r2, #:lower16:217880	@ tmp141,
	movt	r2, #:upper16:217880	@ tmp141,
	ldr	r5, [r4, r2]	@ pDecParam,
	b	.L593	@
.L595:
	movw	ip, #:lower16:218556	@ tmp143,
	movt	ip, #:upper16:218556	@ tmp143,
	ldr	r5, [r4, ip]	@ pDecParam,
	b	.L593	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
.LFB1761:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r3, r0, asl #2]	@ tmp139, s_pstVfmwChan
	ldr	r2, [r2, #880]	@ D.40062, <variable>.eVidStd
	sub	r1, r2, #10	@ tmp140, D.40062,
	cmp	r1, #2	@ tmp140,
	bhi	.L610	@,
	ldr	r3, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L612	@,
.L611:
	cmp	r2, #18	@ D.40062,
	bne	.L616	@,
.L612:
	mov	r0, #0	@ D.40076,
	ldmfd	sp!, {r3, pc}	@
.L610:
	cmp	r2, #14	@ D.40062,
	beq	.L612	@,
	cmp	r2, #4	@ D.40062,
	bne	.L611	@,
	mov	r0, #0	@ D.40076,
	ldmfd	sp!, {r3, pc}	@
.L616:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r0, #1	@ D.40076,
	ldmnefd	sp!, {r3, pc}	@
	b	.L612	@
	.fnend
	.size	DecChanCheckDecParam, .-DecChanCheckDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1724:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	mov	r2, r0	@ ChanId, ChanId
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	bhi	.L618	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, r0, asl #2]	@ D.38684, s_pstVfmwChan
	cmp	r3, #0	@ D.38684,
	beq	.L618	@,
	ldr	r1, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L621	@,
	ldr	r5, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r5, #1	@ <variable>.s32IsRun,
	beq	.L622	@,
.L621:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC95	@,
	movt	r1, #:upper16:.LC95	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.38686,
.L620:
	mov	r0, r3	@, D.38686
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L618:
	mov	r3, r2	@, ChanId
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC94	@,
	movw	r2, #4375	@,
	movt	r1, #:upper16:.LC94	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ D.38686,
	b	.L620	@
.L622:
	str	r0, [sp, #4]	@ tmp2,
	bl	VCTRL_GetDecParam	@
	ldr	r2, [sp, #4]	@,
	subs	r6, r0, #0	@ pDecParam,
	beq	.L628	@,
	ldr	r0, [r4, r2, asl #2]	@ tmp154, s_pstVfmwChan
	mov	ip, #0	@ tmp155,
	mov	r3, ip	@ D.38686, tmp155
	str	ip, [r0, #680]	@ tmp155, <variable>.s32CountNoDecparamFlag
	ldr	r2, [r4, r2, asl #2]	@ tmp157, s_pstVfmwChan
	str	ip, [r2, #684]	@ tmp155, <variable>.u32NoDecparamStartTime
	b	.L620	@
.L628:
	ldr	r3, [r4, r2, asl #2]	@ temp.2915, s_pstVfmwChan
	ldr	r7, [r3, #680]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r7, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L629	@,
	str	r2, [sp, #4]	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [sp, #4]	@,
	ldr	r3, [r4, r2, asl #2]	@ temp.2919, s_pstVfmwChan
	ldr	r1, [r3, #684]	@ D.38707, <variable>.u32NoDecparamStartTime
	cmp	r0, r1	@ tmp, D.38707
	bls	.L625	@,
	rsb	lr, r1, r0	@ tmp160, D.38707, tmp
	cmp	lr, #40	@ tmp160,
	movls	r3, r6	@ D.38686, pDecParam
	bls	.L620	@,
.L625:
	str	r6, [r3, #680]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r3, r5	@ D.38686, <variable>.s32IsRun
	ldr	r1, [r4, r2, asl #2]	@ tmp167, s_pstVfmwChan
	str	r6, [r1, #684]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L620	@
.L629:
	str	r5, [r3, #680]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, r2, asl #2]	@ temp.2916, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r3, r7	@ D.38686, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #684]	@, <variable>.u32NoDecparamStartTime
	b	.L620	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	DecChanProcessPts
	.type	DecChanProcessPts, %function
DecChanProcessPts:
	.fnstart
.LFB1760:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp285,
	movt	r4, #:upper16:.LANCHOR0	@ tmp285,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pSegMan, pSegMan
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r4, r0, asl #2]	@ prephitmp.2942, s_pstVfmwChan
	ldr	r1, [r0, #32]	@ D.39997, <variable>.stChanCfg.eVidStd
	cmp	r1, #1	@ D.39997,
	beq	.L642	@,
	sub	lr, r1, #2	@ tmp162, D.39997,
	cmp	r1, #6	@ D.39997,
	cmpne	lr, #1	@, tmp162,
	bls	.L633	@,
.L632:
	ldrd	r2, [r6, #32]	@ D.40038, pSegMan,
	mvn	r8, #0	@ tmp258,
	mvn	r9, #0	@,
	cmp	r3, r9	@ D.40038, tmp258
	cmpeq	r2, r8	@ D.40038, tmp258
	movne	r9, #944	@ tmp259,
	strned	r2, [r0, r9]	@ D.40038, prephitmp.2942, tmp259
	ldrne	r0, [r4, r5, asl #2]	@ prephitmp.2942, s_pstVfmwChan
.L640:
	ldrd	r8, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	mov	r2, #960	@ tmp261,
	mov	lr, #976	@ tmp265,
	movw	r1, #:lower16:.LC98	@,
	movt	r1, #:upper16:.LC98	@,
	strd	r8, [r0, r2]	@ <variable>.CurrSeg.Usertag, prephitmp.2942, tmp261
	mov	r0, #29	@,
	ldr	ip, [r4, r5, asl #2]	@ tmp264, s_pstVfmwChan
	ldrd	r8, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r8, [ip, lr]	@ <variable>.CurrSeg.DispTime, tmp264, tmp265
	ldr	lr, [r4, r5, asl #2]	@ tmp268, s_pstVfmwChan
	ldr	r3, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r3, [lr, #992]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp271, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #996]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ tmp274, s_pstVfmwChan
	ldr	lr, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	lr, [r3, #1000]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	lr, [r4, r5, asl #2]	@ tmp277, s_pstVfmwChan
	ldr	ip, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	ip, [lr, #1016]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
	mov	lr, #944	@ tmp281,
	ldr	r3, [r4, r5, asl #2]	@ temp.2960, s_pstVfmwChan
	ldrd	r4, [r3, r2]	@ <variable>.stSynExtraData.Usertag, temp.2960, tmp261
	add	r2, r3, lr	@, temp.2960, tmp281
	ldrd	r2, [r2]	@ <variable>.stSynExtraData.pts,
	strd	r4, [sp]	@ <variable>.stSynExtraData.Usertag,
	bl	dprint_vfmw	@
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L642:
	movw	ip, #:lower16:217520	@ tmp154,
	movt	ip, #:upper16:217520	@ tmp154,
	ldr	r2, [r0, ip]	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData, <variable>.stSynCtx.unSyntax.stVc1Ctx.pstExtraData
	ldrb	r3, [r2, #388]	@ zero_extendqisi2	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ <variable>.StdExt.Vc1Ext.IsAdvProfile,
	bne	.L632	@,
.L633:
	add	r0, r0, #1264	@, prephitmp.2942,
	add	r2, r6, #8	@, pSegMan,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	beq	.L643	@,
.L634:
	ldr	r3, [r4, r5, asl #2]	@ temp.2963, s_pstVfmwChan
	ldr	r1, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L638	@,
.L637:
	ldrd	r0, [r6, #32]	@ temp.2987, pSegMan,
	mvn	r8, #0	@ tmp232,
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2987, tmp232
	cmpeq	r0, r8	@ temp.2987, tmp232
	movne	ip, #952	@ tmp233,
	strned	r0, [r3, ip]	@ temp.2987, temp.2963, tmp233
.L639:
	ldr	ip, [r4, r5, asl #2]	@ tmp235, s_pstVfmwChan
	mov	r2, #968	@ tmp236,
	ldrd	r0, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	mov	r3, #984	@ tmp240,
	strd	r0, [ip, r2]	@ <variable>.CurrSeg.Usertag, tmp235, tmp236
	ldr	r2, [r4, r5, asl #2]	@ tmp239, s_pstVfmwChan
	ldrd	r0, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r2, r3]	@ <variable>.CurrSeg.DispTime, tmp239, tmp240
	ldr	ip, [r4, r5, asl #2]	@ tmp243, s_pstVfmwChan
	ldr	r2, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r2, [ip, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp246, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r2, [r4, r5, asl #2]	@ tmp249, s_pstVfmwChan
	ldr	ip, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	ip, [r2, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, r5, asl #2]	@ tmp252, s_pstVfmwChan
	ldr	r2, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [r3, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	ldr	r3, [r4, r5, asl #2]	@ temp.2963, s_pstVfmwChan
.L638:
	mov	r0, #960	@ tmp256,
	add	r2, r3, r0	@, temp.2963, tmp256
	movw	r1, #:lower16:.LC97	@,
	mov	r0, #29	@,
	ldrd	r2, [r2]	@,
	movt	r1, #:upper16:.LC97	@,
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	b	dprint_vfmw	@
.L643:
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.2938, s_pstVfmwChan
	movw	r2, #:lower16:.LANCHOR0	@ tmp173,
	movt	r2, #:upper16:.LANCHOR0	@ tmp173,
	ldr	r1, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L644	@,
	mov	r1, #952	@ tmp179,
	mvn	r8, #0	@ tmp180,
	ldrd	r0, [r1, r3]	@ temp.2962, tmp179, prephitmp.2938
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2962, tmp180
	cmpeq	r0, r8	@ temp.2962, tmp180
	movne	r8, #944	@ tmp181,
	strned	r0, [r3, r8]	@ temp.2962, prephitmp.2938, tmp181
	ldrne	r3, [r2, r5, asl #2]	@ prephitmp.2938, s_pstVfmwChan
.L636:
	mov	r9, #952	@ tmp183,
	mvn	r0, #0	@ tmp184,
	mvn	r1, #0	@,
	strd	r0, [r3, r9]	@ tmp184, prephitmp.2938, tmp183
	ldr	ip, [r4, r5, asl #2]	@ temp.2964, s_pstVfmwChan
	mov	r8, #968	@ tmp187,
	mov	lr, #960	@ tmp186,
	mov	sl, #984	@ tmp191,
	mov	r0, #29	@,
	movw	r1, #:lower16:.LC96	@,
	ldrd	r2, [ip, r8]	@, temp.2964, tmp187
	movt	r1, #:upper16:.LC96	@,
	movw	r7, #:lower16:.LANCHOR0	@ tmp185,
	movt	r7, #:upper16:.LANCHOR0	@ tmp185,
	strd	r2, [ip, lr]	@, temp.2964, tmp186
	mov	lr, #976	@ tmp190,
	ldr	ip, [r4, r5, asl #2]	@ temp.2965, s_pstVfmwChan
	ldrd	r2, [ip, sl]	@, temp.2965, tmp191
	strd	r2, [ip, lr]	@, temp.2965, tmp190
	ldr	r3, [r4, r5, asl #2]	@ temp.2966, s_pstVfmwChan
	ldr	ip, [r3, #1004]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	str	ip, [r3, #992]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r2, [r4, r5, asl #2]	@ temp.2967, s_pstVfmwChan
	ldr	lr, [r2, #1008]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	lr, [r2, #996]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r3, [r4, r5, asl #2]	@ temp.2968, s_pstVfmwChan
	ldr	ip, [r3, #1012]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	str	ip, [r3, #1000]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	mov	r3, #944	@ tmp204,
	ldr	r2, [r4, r5, asl #2]	@ temp.2969, s_pstVfmwChan
	ldr	lr, [r2, #1020]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	lr, [r2, #1016]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	ldr	ip, [r4, r5, asl #2]	@ tmp203, s_pstVfmwChan
	add	r2, ip, r3	@, tmp203, tmp204
	ldrd	r2, [r2]	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, r5, asl #2]	@ temp.2963, s_pstVfmwChan
	ldr	r2, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r2, #3	@ <variable>.stChanCfg.eVidStd,
	bne	.L637	@,
	ldrd	r0, [r6, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	strd	r0, [r3, r9]	@ <variable>.CurrSeg.Pts, temp.2963, tmp183
	ldr	r2, [r7, r5, asl #2]	@ tmp211, s_pstVfmwChan
	ldrd	r0, [r6, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	strd	r0, [r2, r8]	@ <variable>.CurrSeg.Usertag, tmp211, tmp187
	ldr	r3, [r7, r5, asl #2]	@ tmp215, s_pstVfmwChan
	ldrd	r0, [r6, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r3, sl]	@ <variable>.CurrSeg.DispTime, tmp215, tmp191
	ldr	ip, [r7, r5, asl #2]	@ tmp219, s_pstVfmwChan
	ldr	r2, [r6, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r2, [ip, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r3, [r7, r5, asl #2]	@ tmp222, s_pstVfmwChan
	ldr	ip, [r6, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r3, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r2, [r7, r5, asl #2]	@ tmp225, s_pstVfmwChan
	ldr	ip, [r6, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	ip, [r2, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r7, r5, asl #2]	@ tmp228, s_pstVfmwChan
	ldr	r2, [r6, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [r3, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	b	.L634	@
.L644:
	mov	sl, #952	@ tmp176,
	mov	r7, #944	@ tmp175,
	ldrd	r8, [r3, sl]	@ <variable>.stSynExtraData.NextPts, prephitmp.2938, tmp176
	strd	r8, [r3, r7]	@ <variable>.stSynExtraData.NextPts, prephitmp.2938, tmp175
	ldr	r3, [r2, r5, asl #2]	@ prephitmp.2938, s_pstVfmwChan
	b	.L636	@
	.fnend
	.size	DecChanProcessPts, .-DecChanProcessPts
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
.LFB1658:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r4, #:lower16:g_ChanCtx	@ tmp133,
	movt	r4, #:upper16:g_ChanCtx	@ tmp133,
	mov	r1, #48	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #28]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #16]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #20]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	str	r3, [r4, #24]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1755:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #12]	@ Length, <variable>.Length
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, [r0, #8]	@ PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r6, [r0, #4]	@ VirAddr, <variable>.VirAddr
	beq	.L648	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp154,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp154,
	ldr	r3, [r3, #32]	@ D.39810, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.39810,
	beq	.L649	@,
	mov	r0, #0	@,
	blx	r3	@ D.39810
.L650:
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #16	@,
	bl	__memzero	@
.L648:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length.3055, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #24]	@ PhyAddr.3053, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.3055,
	ldr	r6, [r4, #20]	@ VirAddr.3054, <variable>.stScdCmnMem.VirAddr
	bne	.L657	@,
.L651:
	mov	r0, r7	@, PhyAddr.3053
	mov	r1, r6	@, VirAddr.3054
	mov	r2, r5	@, Length.3055
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.3062, <variable>.Length
	ldr	r7, [r4, #40]	@ PhyAddr.3060, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3062,
	ldr	r6, [r4, #36]	@ VirAddr.3061, <variable>.VirAddr
	bne	.L658	@,
.L652:
	mov	r0, r7	@, PhyAddr.3060
	mov	r1, r6	@, VirAddr.3061
	mov	r2, r5	@, Length.3062
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length.3067, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.3065, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.3067,
	ldr	r6, [r4, #68]	@ VirAddr.3066, <variable>.stBpdReg.VirAddr
	bne	.L659	@,
.L653:
	mov	r0, r7	@, PhyAddr.3065
	mov	r1, r6	@, VirAddr.3066
	mov	r2, r5	@, Length.3067
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length.3072, <variable>.Length
	ldr	r7, [r4, #56]	@ PhyAddr.3070, <variable>.PhyAddr
	cmp	r5, #0	@ Length.3072,
	ldr	r6, [r4, #52]	@ VirAddr.3071, <variable>.VirAddr
	bne	.L660	@,
.L654:
	mov	r0, r7	@, PhyAddr.3070
	mov	r1, r6	@, VirAddr.3071
	mov	r2, r5	@, Length.3072
	bl	MEM_DelMemRecord	@
	ldr	r6, [r4, #92]	@ Length.3077, <variable>.stSystemReg.Length
	ldr	r5, [r4, #88]	@ PhyAddr.3075, <variable>.stSystemReg.PhyAddr
	cmp	r6, #0	@ Length.3077,
	ldr	r7, [r4, #84]	@ VirAddr.3076, <variable>.stSystemReg.VirAddr
	beq	.L655	@,
	mov	r0, r5	@, PhyAddr.3075
	mov	r1, r7	@, VirAddr.3076
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L655:
	mov	r1, r7	@, VirAddr.3076
	mov	r2, r6	@, Length.3077
	mov	r0, r5	@, PhyAddr.3075
	bl	MEM_DelMemRecord	@
	mov	r0, #70	@,
	ldr	r2, .L661	@,
	movw	r1, #:lower16:.LC99	@,
	movt	r1, #:upper16:.LC99	@,
	bl	osal_free_irq	@
	mov	r0, #73	@,
	ldr	r2, .L661	@,
	movw	r1, #:lower16:.LC100	@,
	movt	r1, #:upper16:.LC100	@,
	bl	osal_free_irq	@
	mov	r0, #93	@,
	ldr	r2, .L661	@,
	movw	r1, #:lower16:.LC101	@,
	movt	r1, #:upper16:.LC101	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L660:
	mov	r0, r7	@, PhyAddr.3070
	mov	r1, r6	@, VirAddr.3071
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L654	@
.L659:
	mov	r0, r7	@, PhyAddr.3065
	mov	r1, r6	@, VirAddr.3066
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #64	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L653	@
.L658:
	mov	r0, r7	@, PhyAddr.3060
	mov	r1, r6	@, VirAddr.3061
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #32	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L652	@
.L657:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L651	@
.L649:
	mov	r0, r3	@, D.39810
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #6131	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L650	@
.L662:
	.align	2
.L661:
	.word	.LANCHOR0+308
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1754:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, #4096	@,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	.pad #32
	sub	sp, sp, #32	@,,
	movw	r0, #:lower16:269680640	@,
	add	r2, r4, #32	@, pstDrvMem,
	movt	r0, #:upper16:269680640	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L664	@,
	add	r6, r4, #64	@ pstMem, pstDrvMem,
	ldr	r1, [r4, #36]	@, <variable>.VirAddr
	ldr	r2, [r4, #44]	@, <variable>.Length
	ldr	r0, [r4, #40]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269746176	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269746176	@,
	mov	r2, r6	@, pstMem
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L688	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp163,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp163,
	ldr	r3, [r5, #16]	@ D.39688, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.39688,
	beq	.L688	@,
	blx	r3	@ D.39688
	cmp	r0, #0	@,
	bne	.L688	@,
	add	r7, r4, #48	@ pstMem.3103, pstDrvMem,
	ldr	r1, [r4, #68]	@, <variable>.stBpdReg.VirAddr
	ldr	r2, [r4, #76]	@, <variable>.stBpdReg.Length
	ldr	r0, [r4, #72]	@, <variable>.stBpdReg.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269729792	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269729792	@,
	mov	r2, r7	@, pstMem.3103
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L686	@,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:270487672	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487672	@,
	mov	r2, r7	@, pstMem.3103
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.39714,
	bne	.L686	@,
	add	r8, sp, #12	@ tmp175,,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.39714
	mov	r0, r8	@, tmp175
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC102	@,
	movt	r2, #:upper16:.LC102	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.43790, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.43790,
	beq	.L674	@,
	blx	r3	@ D.43790
	subs	r2, r0, #0	@ Size,
	ble	.L674	@,
	mov	r0, r8	@, tmp175
	mov	r1, r6	@, D.39714
	mov	r3, r4	@, pstDrvMem
	str	r6, [sp, #0]	@ D.39714,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L686	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r2, [r4, #12]	@, <variable>.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.43783, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.43783,
	beq	.L686	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, <variable>.Length
	blx	r3	@ D.43783
	subs	r5, r0, #0	@ D.43782,
	bne	.L686	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ pstMem.3110, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r5	@, D.43782
	mov	r3, r6	@, pstMem.3110
	str	r5, [sp, #0]	@ D.43782,
	mov	r2, r0	@ D.39731,
	movw	r0, #:lower16:.LC103	@,
	movt	r0, #:upper16:.LC103	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L688	@,
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stScdCmnMem.Length
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stScdCmnMem.Length
	movw	r2, #:lower16:269729792	@,
	movw	r3, #:lower16:270487672	@,
	movt	r2, #:upper16:269729792	@,
	movt	r3, #:upper16:270487672	@,
	bl	SM_OpenSCDDrv	@
	cmp	r0, #0	@,
	bne	.L688	@,
	ldr	r5, .L691	@ tmp198,
	mov	r0, #70	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	movw	r3, #:lower16:.LC99	@,
	movt	r3, #:upper16:.LC99	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L688	@,
	mov	r0, #73	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	movw	r3, #:lower16:.LC100	@,
	movt	r3, #:upper16:.LC100	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.39760,
	bne	.L688	@,
	mov	r0, #93	@,
	movw	r1, #:lower16:VCTRL_Dnr_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Dnr_Isr	@,
	movw	r3, #:lower16:.LC101	@,
	movt	r3, #:upper16:.LC101	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.39769
	bne	.L690	@,
.L667:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L690:
	bl	DNR_Close	@
	mov	r0, r7	@ D.39682, D.39760
	b	.L667	@
.L688:
	mov	r0, r6	@, pstMem.3110
.L689:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39682,
	b	.L667	@
.L664:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.39682,
	b	.L667	@
.L674:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L686:
	mov	r0, r7	@, pstMem.3103
	b	.L689	@
.L692:
	.align	2
.L691:
	.word	.LANCHOR0+308
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
.LFB1736:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bhi	.L699	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	ldr	ip, [r2, r0, asl #2]	@ D.38959, s_pstVfmwChan
	ldr	r3, [ip, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L700	@,
	cmp	r1, #0	@ pArgs,
	beq	.L701	@,
	mov	r5, r1	@ pArgs, pArgs
	add	ip, ip, #1424	@ tmp146, D.38959,
	ldmia	r5!, {r0, r1, r2, r3}	@ pArgs,,,,
	mov	r4, #0	@ D.38957,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp146,,,,
	ldr	r0, [r5, #0]	@ tmp149,* pArgs
	str	r0, [ip, #0]	@ tmp149, <variable>.stSynExtraData.stPvrInfo
.L695:
	mov	r0, r4	@, D.38957
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L700:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4995	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38957,
	b	.L695	@
.L699:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4994	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38957,
	b	.L695	@
.L701:
	mov	r0, r1	@, pArgs
	movw	r2, #4996	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC43	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC43	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ D.38957,
	b	.L695	@
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
.LFB1702:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L708	@,
	cmp	r1, #0	@ pstCfg,
	beq	.L709	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r3, r0, asl #2]	@ D.37772, s_pstVfmwChan
	cmp	r3, #0	@ D.37772,
	beq	.L710	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #72	@,
	add	r1, r3, #32	@, D.37772,
	bl	memcpy	@
	mov	r0, #0	@ D.37768,
	ldmfd	sp!, {r3, pc}	@
.L708:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2874	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37768,
	ldmfd	sp!, {r3, pc}	@
.L710:
	mov	r0, r3	@, D.37772
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2876	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37768,
	ldmfd	sp!, {r3, pc}	@
.L709:
	mov	r0, r1	@, pstCfg
	movw	r2, #2875	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC104	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC104	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37768,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
.LFB1677:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	mov	ip, r0	@ ChanID, ChanID
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bhi	.L718	@,
	cmp	r1, #0	@ pArgs,
	beq	.L719	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp143,
	movt	r3, #:upper16:.LANCHOR0	@ tmp143,
	ldr	r2, [r3, r0, asl #2]	@ D.36642, s_pstVfmwChan
	cmp	r2, #0	@ D.36642,
	beq	.L720	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	add	r2, r2, #1584	@ tmp146, D.36642,
	add	r2, r2, #12	@ tmp146, tmp146,
	stmia	r2, {r0, r1}	@ tmp146,,
	ldr	r3, [r3, ip, asl #2]	@ temp.3193, s_pstVfmwChan
	ldr	r0, [r3, #1596]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r2, r0, #1	@ tmp151, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, #0	@ D.36638,
	cmp	r2, #1	@ tmp151,
	strhi	r0, [r3, #1596]	@ tmp153, <variable>.stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r3, pc}	@
.L718:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1228	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36638,
	ldmfd	sp!, {r3, pc}	@
.L720:
	mov	r0, r2	@, D.36642
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1230	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36638,
	ldmfd	sp!, {r3, pc}	@
.L719:
	mov	r0, r1	@, pArgs
	movw	r2, #1229	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC105	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC105	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36638,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
	.fnstart
.LFB1674:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstFrameIntf
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L726	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.36598, s_pstVfmwChan
	cmp	r3, #0	@ D.36598,
	beq	.L727	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	r3, r3, #128	@ tmp143, D.36598,
	mov	ip, #0	@ D.36596,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L723:
	mov	r0, ip	@, D.36596
	ldmfd	sp!, {r3, pc}	@
.L727:
	mov	r0, r3	@, D.36598
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1176	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36596,
	b	.L723	@
.L726:
	mov	r0, r1	@, pstFrameIntf
	movw	r2, #1175	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36596,
	b	.L723	@
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
	.fnstart
.LFB1672:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstStreamIntf
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L733	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.36577, s_pstVfmwChan
	cmp	r3, #0	@ D.36577,
	beq	.L734	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	r3, r3, #104	@ tmp143, D.36577,
	mov	ip, #0	@ D.36575,
	stmia	r3, {r0, r1, r2}	@ tmp143,,,
.L730:
	mov	r0, ip	@, D.36575
	ldmfd	sp!, {r3, pc}	@
.L734:
	mov	r0, r3	@, D.36577
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1151	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36575,
	b	.L730	@
.L733:
	mov	r0, r1	@, pstStreamIntf
	movw	r2, #1150	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC106	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC106	@,
	bl	dprint_vfmw	@
	mvn	ip, #0	@ D.36575,
	b	.L730	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1743:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp144,
	movt	r5, #:upper16:.LANCHOR0	@ tmp144,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ ChanID, ChanID
	mov	r7, r1	@ pMem, pMem
	ldr	r3, [r5, r0, asl #2]	@ D.39188, s_pstVfmwChan
	cmp	r3, #0	@ D.39188,
	beq	.L745	@,
	ldr	r8, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r8, #18	@ <variable>.eVidStd,
	bne	.L746	@,
	ldr	r3, [r3, #820]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L747	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.39201,
	bne	.L748	@,
	mov	r1, r0	@, D.39201
	mov	r0, r6	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	sl, r0, #0	@ id,
	blt	.L749	@,
	mov	r1, sl	@, id
	mov	r0, r6	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r2, sl	@, id
	movw	r1, #:lower16:.LC111	@,
	movt	r1, #:upper16:.LC111	@,
	mov	r4, r0	@ pLf,
	mov	r0, r8	@, <variable>.eVidStd
	bl	dprint_vfmw	@
	cmp	r4, #0	@ pLf,
	beq	.L750	@,
	ldr	r2, [r4, #408]	@ D.39216, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.39216,
	beq	.L743	@,
	ldr	r3, [r4, #412]	@ D.39218, <variable>.pstDispOutFs
	cmp	r3, #0	@ D.39218,
	beq	.L743	@,
	ldr	ip, [r4, #416]	@ D.39220, <variable>.pstTfOutFs
	cmp	ip, #0	@ D.39220,
	beq	.L743	@,
	ldr	lr, [ip, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, r8	@, <variable>.eVidStd
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movw	r1, #:lower16:.LC113	@,
	ldr	r3, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	movt	r1, #:upper16:.LC113	@,
	str	lr, [sp, #0]	@ <variable>.PhyAddr,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #408]	@ <variable>.pstDecodeFs, <variable>.pstDecodeFs
	mov	r0, #0	@ D.39192,
	ldr	ip, [r3, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	str	ip, [r7, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r2, [r5, r6, asl #2]	@ tmp162, s_pstVfmwChan
	ldr	r1, [r2, #816]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r1, [r7, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
.L737:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L748:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC109	@,
	movt	r1, #:upper16:.LC109	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39192,
	b	.L737	@
.L746:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC107	@,
	movt	r1, #:upper16:.LC107	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39192,
	b	.L737	@
.L747:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC108	@,
	movt	r1, #:upper16:.LC108	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39192,
	b	.L737	@
.L743:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC114	@,
	movt	r1, #:upper16:.LC114	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39192,
	b	.L737	@
.L749:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC110	@,
	movt	r1, #:upper16:.LC110	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39192,
	b	.L737	@
.L745:
	mov	r0, r3	@, D.39188
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5331	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39192,
	b	.L737	@
.L750:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC112	@,
	movw	r2, #5367	@,
	movt	r1, #:upper16:.LC112	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39192,
	b	.L737	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1742:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r1	@ pstUsrdecFrame, pstUsrdecFrame
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, [r1, #28]	@, <variable>.s32LumaPhyAddr
	mov	r9, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r5, r0	@ PicBufID,
	beq	.L775	@,
	ldr	r3, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L754	@,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.39088,
.L753:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L754:
	ldr	r0, [r7, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	sl, r0, #0	@ D.39093,
	beq	.L776	@,
.L755:
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L777	@,
	str	r5, [r4, #176]	@ PicBufID, <variable>.image_id
	mov	r6, #0	@ tmp179,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	mov	fp, #1	@ tmp178,
	strd	r0, [r4]	@ <variable>.Pts, <variable>.SrcPts
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ <variable>.Pts, pLogic,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r4, #16]	@ <variable>.Pts, pLogic,
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	str	fp, [r4, #68]	@ tmp178, <variable>.DispEnableFlag
	str	r6, [r4, #72]	@ tmp179, <variable>.DispFrameDistance
	strd	r2, [r4, #24]	@ <variable>.Pts, pLogic,
	str	r6, [r4, #76]	@ tmp179, <variable>.DistanceBeforeFirstFrame
	str	r6, [r4, #80]	@ tmp179, <variable>.GopNum
	ldr	lr, [r7, #28]	@ temp.3359, <variable>.s32LumaPhyAddr
	str	lr, [r4, #88]	@ temp.3359, <variable>.top_luma_phy_addr
	mov	r0, lr	@, temp.3359
	str	lr, [r4, #120]	@ temp.3359, <variable>.luma_2d_phy_addr
	str	lr, [r4, #104]	@ temp.3359, <variable>.luma_phy_addr
	ldr	r8, [r7, #36]	@ temp.3360, <variable>.s32CbPhyAddr
	str	r8, [r4, #108]	@ temp.3360, <variable>.chrom_phy_addr
	str	r8, [r4, #92]	@ temp.3360, <variable>.top_chrom_phy_addr
	str	r8, [r4, #124]	@ temp.3360, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r4, #32]	@ D.39111, <variable>.luma_vir_addr
	str	r0, [r4, #48]	@ D.39111, <variable>.luma_2d_vir_addr
	ldr	r0, [r4, #92]	@, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r4, #52]	@ pDst, <variable>.chrom_2d_vir_addr
	mov	r8, r0	@ pDst,
	str	r0, [r4, #36]	@ pDst, <variable>.chrom_vir_addr
	cmp	r0, r6	@ pDst,
	ldr	r3, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	ldr	r0, [r4, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r3, ip	@ tmp185, <variable>.s32LumaStride, <variable>.top_luma_phy_addr
	str	r2, [r4, #96]	@ tmp185, <variable>.btm_luma_phy_addr
	ldr	r1, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r6, [r4, #128]	@ tmp179, <variable>.is_fld_save
	add	r3, r1, r0	@ tmp188, <variable>.s32LumaStride, <variable>.top_chrom_phy_addr
	str	r3, [r4, #100]	@ tmp188, <variable>.btm_chrom_phy_addr
	ldr	ip, [r7, #20]	@ <variable>.s32YWidth, <variable>.s32YWidth
	str	ip, [r4, #144]	@ <variable>.s32YWidth, <variable>.image_width
	ldr	r2, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	str	r2, [r4, #148]	@ <variable>.s32YHeight, <variable>.image_height
	movw	r2, #11296	@ tmp198,
	ldr	r0, [r7, #20]	@ temp.3365, <variable>.s32YWidth
	str	r0, [r4, #152]	@ temp.3365, <variable>.disp_width
	mov	r1, r0, lsr fp	@ tmp192, temp.3365,
	ldr	r3, [r7, #24]	@ temp.3367, <variable>.s32YHeight
	str	r1, [r4, #160]	@ tmp192, <variable>.disp_center_x
	str	r3, [r4, #156]	@ temp.3367, <variable>.disp_height
	mov	ip, r3, lsr fp	@ tmp193, temp.3367,
	str	ip, [r4, #164]	@ tmp193, <variable>.disp_center_y
	ldr	r0, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r2, [r4, #140]	@ tmp198, <variable>.format
	str	r6, [r4, #168]	@ tmp179, <variable>.frame_rate
	str	r0, [r4, #172]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r6, [r4, #180]	@ tmp179, <variable>.error_level
	str	fp, [r4, #208]	@ tmp178, <variable>.chroma_idc
	str	r6, [r4, #256]	@ tmp179, <variable>.line_num_phy_addr
	str	r6, [r4, #56]	@ tmp179, <variable>.line_num_vir_addr
	beq	.L757	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	cmp	r1, fp	@ <variable>.s32YHeight,
	bgt	.L769	@,
	b	.L759	@
.L779:
	ldr	r2, [r4, #144]	@ __n, <variable>.image_width
	cmp	r2, #0	@ __n,
	bne	.L778	@,
.L761:
	add	r0, r1, r1, lsr #31	@, tmp233, <variable>.s32YHeight, <variable>.s32YHeight,
	add	r6, r6, #1	@ y, y,
	ldr	r2, [r4, #172]	@ D.39170, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp233,
	bge	.L759	@,
.L781:
	add	r8, r8, r2	@ pDst, pDst, D.39170
.L769:
	ldr	r3, [r7, #0]	@ D.39132, <variable>.enFmt
	cmp	r3, #0	@ D.39132,
	beq	.L779	@,
	cmp	r3, #1	@ D.39132,
	beq	.L761	@,
	cmp	r3, #3	@ D.39132,
	beq	.L780	@,
	cmp	r3, #2	@ D.39132,
	bne	.L765	@,
	mov	r1, sl	@, pSrc
	ldr	r2, [r4, #144]	@, <variable>.image_width
	mov	r0, r8	@, pDst
	add	r6, r6, #1	@ y, y,
	bl	memcpy	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	ldr	r2, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	r0, r1, r1, lsr #31	@, tmp233, <variable>.s32YHeight, <variable>.s32YHeight,
	add	sl, sl, r2, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	ldr	r2, [r4, #172]	@ D.39170, <variable>.image_stride
	cmp	r6, r0, asr #1	@ y, tmp233,
	blt	.L781	@,
.L759:
	mov	r6, #18	@ tmp235,
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, #1	@,
	str	r6, [r4, #300]	@ tmp235, <variable>.ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp236,
	movt	r3, #:upper16:.LANCHOR0	@ tmp236,
	str	r4, [sp, #0]	@ pLogic,
	mov	r1, r6	@, tmp235
	mov	r0, r9	@, ChanID
	ldr	r2, [r3, r9, asl #2]	@ D.39173, s_pstVfmwChan
	add	ip, r2, #217088	@, D.39173,
	add	r2, ip, #432	@, tmp2,
	add	r3, ip, #440	@,,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ D.39088,
	beq	.L753	@,
	mov	r0, r9	@, ChanID
	ldr	r1, [r4, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r6, #0	@ tmp242,
	mov	r0, r9	@, ChanID
	ldr	r1, [r4, #196]	@, <variable>.p_usrdat
	str	r6, [r4, #192]	@ tmp242, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r4, #196]	@ tmp242, <variable>.p_usrdat
	mov	r0, r9	@, ChanID
	mov	r1, r5	@, PicBufID
	mov	r2, r6	@, tmp242
	bl	FSP_SetDisplay	@
.L774:
	mvn	r0, #0	@ D.39088,
	b	.L753	@
.L778:
	mov	r1, #128	@,
	mov	r0, r8	@, pDst
	bl	memset	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	b	.L761	@
.L780:
	ldr	ip, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #0	@ <variable>.image_width,
	beq	.L763	@,
	mov	r0, #0	@ x.3383,
	mov	r2, sl	@ ivtmp.3340, pSrc
	mov	r3, r0	@ x, x.3383
.L764:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp204,* ivtmp.3340
	mov	lr, r0	@ tmp207, x.3383
	add	r3, r3, #2	@ x, x,
	strb	r1, [lr, r8]!	@ tmp204,
	mov	r0, r3	@ x.3383, x
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp209,
	add	r2, r2, #4	@ ivtmp.3340, ivtmp.3340,
	strb	ip, [lr, #1]	@ tmp209,
	ldr	r1, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, x
	bhi	.L764	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L763:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3	@ pSrc, pSrc, <variable>.s32ChromStride
	b	.L761	@
.L765:
	cmp	r3, #4	@ D.39132,
	bne	.L774	@,
	ldr	r0, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L767	@,
	mov	r0, #0	@ x.624,
	mov	r2, sl	@ ivtmp.3346, pSrc
	mov	r3, r0	@ x.3379, x.624
.L768:
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ tmp220,* ivtmp.3346
	mov	r1, r8	@ tmp223, pDst
	add	r3, r3, #2	@ x.3379, x.3379,
	strb	lr, [r1, r0]!	@ tmp220,
	mov	r0, r3	@ x.624, x.3379
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp225,
	add	r2, r2, #4	@ ivtmp.3346, ivtmp.3346,
	strb	ip, [r1, #1]	@ tmp225,
	ldr	lr, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r3, lr	@ x.3379, <variable>.image_width
	bcc	.L768	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L767:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	sl, sl, r3, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	b	.L761	@
.L776:
	ldr	r1, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r1, #1	@ <variable>.s32IsFrameValid,
	bne	.L755	@,
	ldr	r2, [r7, #36]	@, <variable>.s32CbPhyAddr
	movw	r1, #:lower16:.LC116	@,
	movt	r1, #:upper16:.LC116	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39088,
	b	.L753	@
.L775:
	ldr	r2, [r7, #28]	@, <variable>.s32LumaPhyAddr
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC115	@,
	movt	r1, #:upper16:.LC115	@,
	bl	dprint_vfmw	@
	mov	r0, r5	@ D.39088, PicBufID
	b	.L753	@
.L777:
	add	r0, r0, #22	@,,
	movw	r1, #:lower16:.LC117	@,
	movw	r2, #5171	@,
	movt	r1, #:upper16:.LC117	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39088,
	b	.L753	@
.L757:
	mov	r0, fp	@, tmp178
	movw	r1, #:lower16:.LC118	@,
	movt	r1, #:upper16:.LC118	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39088,
	b	.L753	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1744:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	lr, [r3, r0, asl #2]	@ D.39233, s_pstVfmwChan
	mov	r6, r0	@ ChanID, ChanID
	mov	ip, r1	@ pUsrdecFrame, pUsrdecFrame
	cmp	lr, #0	@ D.39233,
	beq	.L789	@,
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L790	@,
	ldr	r2, [lr, #880]	@ D.39240, <variable>.eVidStd
	cmp	r2, #18	@ D.39240,
	bne	.L791	@,
	mov	r4, r1	@ pUsrdecFrame, pUsrdecFrame
	add	lr, lr, #824	@ tmp146, D.39233,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	mov	r5, lr	@ tmp147, tmp146
	stmia	r5!, {r0, r1, r2, r3}	@ tmp147,,,,
	mov	lr, r5	@ tmp152, tmp147
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	r4, {r0, r1}	@ pUsrdecFrame,,
	stmia	lr, {r0, r1}	@ tmp154,,
	mov	r0, r6	@, ChanID
	mov	r1, ip	@, pUsrdecFrame
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.39245
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC121	@,
	movt	r1, #:upper16:.LC121	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39237,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L791:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC120	@,
	movt	r1, #:upper16:.LC120	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39237,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L790:
	mov	r0, r1	@, pUsrdecFrame
	movw	r2, #5421	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC119	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC119	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39237,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L789:
	mov	r0, lr	@, D.39233
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #5420	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.39237,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
.LFB1741:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, #0	@,
	mov	r5, r1	@ ImgID, ImgID
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #360]	@, <variable>.ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L793	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp142, <variable>.p_usrdat
.L793:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1740:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #352]	@ D.39033, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.39033, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r2, [r3, #0]	@ temp.3463, s_pstVfmwChan
	cmp	r2, #0	@ temp.3463,
	beq	.L796	@,
	add	r0, r2, #217088	@ tmp145, temp.3463,
	add	r2, r0, #432	@ tmp145, tmp145,
	cmp	r4, r2	@ pCtx, tmp145
	moveq	r3, #0	@ i,
	beq	.L797	@,
.L796:
	ldr	r2, [r3, #4]	@ temp.3465, s_pstVfmwChan
	cmp	r2, #0	@ temp.3465,
	beq	.L798	@,
	add	ip, r2, #217088	@ tmp148, temp.3465,
	add	r1, ip, #432	@ tmp148, tmp148,
	cmp	r4, r1	@ pCtx, tmp148
	moveq	r3, #1	@ i,
	beq	.L797	@,
.L798:
	ldr	r2, [r3, #8]	@ temp.3467, s_pstVfmwChan
	cmp	r2, #0	@ temp.3467,
	beq	.L799	@,
	add	r2, r2, #217088	@ tmp151, temp.3467,
	add	lr, r2, #432	@ tmp151, tmp151,
	cmp	r4, lr	@ pCtx, tmp151
	moveq	r3, #2	@ i,
	beq	.L797	@,
.L799:
	ldr	r3, [r3, #12]	@ D.41446, s_pstVfmwChan
	cmp	r3, #0	@ D.41446,
	beq	.L800	@,
	add	r0, r3, #217088	@ tmp154, D.41446,
	add	r3, r0, #432	@ tmp154, tmp154,
	cmp	r4, r3	@ pCtx, tmp154
	beq	.L801	@,
.L800:
	mvn	r1, #0	@ tmp156,
	mov	r0, #0	@,
	str	r1, [r4, #360]	@ tmp156, <variable>.ChanID
	movw	r1, #:lower16:.LC122	@,
	movt	r1, #:upper16:.LC122	@,
	bl	dprint_vfmw	@
	mvn	r0, #19	@ D.39046,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L801:
	mov	r3, #3	@ i,
.L797:
	mov	r0, #1	@ D.39046,
	str	r3, [r4, #360]	@ i, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
.LFB1745:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp187,
	movt	r3, #:upper16:.LANCHOR0	@ tmp187,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r1, [r3, r0, asl #2]	@ D.39270, s_pstVfmwChan
	cmp	r1, #0	@ D.39270,
	beq	.L824	@,
	ldr	r2, [r1, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ <variable>.eVidStd
	b	.L821	@
.L819:
	.word	.L807
	.word	.L808
	.word	.L809
	.word	.L810
	.word	.L811
	.word	.L812
	.word	.L813
	.word	.L821
	.word	.L814
	.word	.L815
	.word	.L816
	.word	.L816
	.word	.L816
	.word	.L817
	.word	.L811
	.word	.L821
	.word	.L821
	.word	.L821
	.word	.L818
.L821:
	ldmfd	sp!, {r4, pc}	@
.L816:
	ldr	r0, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	movw	r3, #:lower16:.LANCHOR0	@ tmp167,
	movt	r3, #:upper16:.LANCHOR0	@ tmp167,
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L825	@,
.L811:
	ldr	r3, [r3, #76]	@ temp.3501, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ temp.3501,
	ldmeqfd	sp!, {r4, pc}	@
	add	lr, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, lr, #432	@,,
	blx	r3	@ temp.3501
	ldmfd	sp!, {r4, pc}	@
.L807:
	add	ip, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_Init	@
.L808:
	add	r2, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_Init	@
.L809:
	add	r3, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_Init	@
.L810:
	add	r0, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_Init	@
.L813:
	add	r2, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_Init	@
.L814:
	add	r0, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL8DEC_Init	@
.L812:
	add	ip, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_Init	@
.L815:
	add	r3, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL9DEC_Init	@
.L817:
	add	ip, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_Init	@
.L818:
	add	r2, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	USERDEC_Init	@
.L825:
	add	r3, r1, #217088	@, D.39270,
	add	r1, r1, #888	@, D.39270,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_Init	@
.L824:
	mov	r0, r1	@, D.39270
	movw	r3, #:lower16:.LC27	@,
	movw	r1, #:lower16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r2, #5448	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
.LFB1734:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L845	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp170,
	movt	r3, #:upper16:.LANCHOR0	@ tmp170,
	ldr	r0, [r3, r0, asl #2]	@ D.38900, s_pstVfmwChan
	cmp	r0, #0	@ D.38900,
	beq	.L846	@,
	ldr	r2, [r0, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L847	@,
	ldr	r1, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #14	@ <variable>.eVidStd,
	ldrls	pc, [pc, r1, asl #2]	@ <variable>.eVidStd
	b	.L831	@
.L843:
	.word	.L832
	.word	.L833
	.word	.L834
	.word	.L835
	.word	.L836
	.word	.L837
	.word	.L838
	.word	.L831
	.word	.L839
	.word	.L840
	.word	.L841
	.word	.L841
	.word	.L841
	.word	.L842
	.word	.L836
.L841:
	ldr	r2, [r3, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L848	@,
.L836:
	mov	r0, #1	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L837:
	add	r3, r0, #217088	@, D.38900,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_GetImageBuffer	@
.L838:
	add	r2, r0, #217088	@, D.38900,
	add	r0, r2, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_GetImageBuffer	@
.L839:
	add	r1, r0, #217088	@, D.38900,
	add	r0, r1, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL8DEC_GetImageBuffer	@
.L840:
	add	r0, r0, #217088	@, D.38900,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL9DEC_GetImageBuffer	@
.L842:
	add	r0, r0, #217088	@, D.38900,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_GetImageBuffer	@
.L831:
	mov	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L832:
	add	r0, r0, #217088	@, D.38900,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L833:
	add	ip, r0, #217088	@, D.38900,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_GetImageBuffer	@
.L834:
	add	ip, r0, #217088	@, D.38900,
	add	r0, ip, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L835:
	add	r3, r0, #217088	@, D.38900,
	add	r0, r3, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L848:
	add	r1, r0, #217088	@, D.38900,
	add	r0, r1, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_GetImageBuffer	@
.L847:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4878	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r3, #:upper16:.LC124	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L845:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4876	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r3, #:upper16:.LC44	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
.L846:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4877	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ Ret,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
.LFB1762:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	bhi	.L874	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp224,
	movt	r5, #:upper16:.LANCHOR0	@ tmp224,
	ldr	r0, [r5, r0, asl #2]	@ D.40093, s_pstVfmwChan
	cmp	r0, #0	@ D.40093,
	beq	.L875	@,
	ldr	sl, [r0, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	sl, #1	@ <variable>.s32IsRun,
	bne	.L876	@,
	ldr	r7, [r0, #16]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r7, #0	@ <variable>.s32StopSyntax,
	bne	.L877	@,
	str	r7, [r0, #672]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	mov	r8, r4, asl #2	@ tmp225, ChanID,
	bl	OSAL_GetTimeInMs	@
	add	r2, r8, r5	@ tmp163, tmp225, tmp224
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp167,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp167,
	ldr	r3, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r6, r0	@ currtime,
	ldr	r0, [r2, #312]	@ tmp166, last_rec_pos_time
	rsb	r1, r0, r6	@ tmp165, tmp166, currtime
	mov	r0, r4	@, ChanID
	cmp	r1, r3	@ tmp165, g_TraceBsPeriod
	strhi	r6, [r2, #312]	@ currtime, last_rec_pos_time
	movls	sl, r7	@ rec_pos_print_flag, <variable>.s32StopSyntax
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.40110,
	mov	r7, r0	@ D.40110,
	beq	.L878	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L879	@,
	ldr	r9, [r5, r4, asl #2]	@ temp.3561, s_pstVfmwChan
	ldrb	r7, [r9, #1025]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	r7, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	beq	.L869	@,
.L871:
	add	r7, r9, #1024	@ pSegMan, temp.3561,
.L861:
	mov	r6, #1072	@ tmp203,
	mov	r3, #1056	@ tmp201,
	ldrd	sl, [r9, r6]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag, temp.3561, tmp203
	mov	r0, #29	@,
	ldrd	r2, [r3, r9]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Pts, tmp201, temp.3561
	movw	r1, #:lower16:.LC129	@,
	movt	r1, #:upper16:.LC129	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp205,
	strd	sl, [sp]	@ <variable>.stSynExtraData.stSegPacket.CurrSeg.Usertag,
	bl	dprint_vfmw	@
	mov	r1, r7	@, pSegMan
	mov	r0, r4	@, ChanID
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r5, r4, asl #2]	@ temp.3563, s_pstVfmwChan
	mov	r0, r7	@, pSegMan
	movt	r6, #:upper16:.LANCHOR0	@ tmp205,
	add	ip, r3, #217088	@, temp.3563,
	add	r2, ip, #432	@,,
	ldr	r1, [r3, #880]	@, <variable>.eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L880	@,
.L865:
	mov	r0, #0	@ D.40091,
.L851:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L869:
	ldr	lr, [r9, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	lr, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L871	@,
	add	r7, r9, #1024	@ pSegMan, temp.3561,
	mov	r0, r4	@, ChanID
	add	r1, r7, #8	@, pSegMan,
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L861	@,
	cmp	sl, #1	@ rec_pos_print_flag,
	beq	.L881	@,
.L862:
	add	lr, r8, r5	@ tmp185, tmp225, tmp224
	movw	ip, #:lower16:g_NoStreamReportPeriod	@ tmp189,
	movt	ip, #:upper16:g_NoStreamReportPeriod	@ tmp189,
	movw	r2, #:lower16:.LANCHOR0	@ tmp182,
	ldr	r0, [lr, #328]	@ tmp188, last_rec_pos_report_time
	movt	r2, #:upper16:.LANCHOR0	@ tmp182,
	ldr	r3, [ip, #0]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r1, r0, r6	@ tmp187, tmp188, currtime
	cmp	r1, r3	@ tmp187, g_NoStreamReportPeriod
	bls	.L863	@,
	ldr	r3, [r2, #20]	@ g_event_report.676, g_event_report
	cmp	r3, #0	@ g_event_report.676,
	beq	.L864	@,
	mov	r0, r4	@, ChanID
	mov	r1, #117	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.676
.L864:
	add	r8, r8, r5	@ tmp195, tmp225, tmp224
	str	r6, [r8, #328]	@ currtime, last_rec_pos_report_time
.L863:
	ldr	r1, [r5, r4, asl #2]	@ tmp198, s_pstVfmwChan
	mov	r2, #1	@ tmp199,
	mvn	r0, #3	@ D.40091,
	str	r2, [r1, #672]	@ tmp199, <variable>.s32NoStreamFlag
	b	.L851	@
.L880:
	bl	OSAL_GetTimeInMs	@
	add	r6, r8, r6	@ tmp212, tmp225, tmp205
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp216,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp216,
	ldr	r1, [r6, #344]	@ tmp215, last_rec_pos_decparam_time
	ldr	r2, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.3564,
	rsb	r0, r1, r0	@ tmp214, tmp215, currtime.3564
	cmp	r0, r2	@ tmp214, g_TraceFramePeriod
	bls	.L865	@,
	mov	r0, r4	@, ChanID
	str	r3, [r6, #344]	@ currtime.3564, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	mov	r0, #0	@ D.40091,
	b	.L851	@
.L879:
	cmp	sl, #1	@ rec_pos_print_flag,
	mvnne	r0, #2	@ D.40091,
	bne	.L851	@
.L860:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC127	@,
	movt	r1, #:upper16:.LC127	@,
	bl	dprint_vfmw	@
	mvn	r0, #2	@ D.40091,
	b	.L851	@
.L876:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6597	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r3, #:upper16:.LC124	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40091,
	b	.L851	@
.L877:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6598	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC125	@,
	movt	r3, #:upper16:.LC125	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40091,
	b	.L851	@
.L878:
	cmp	sl, #1	@ rec_pos_print_flag,
	movne	r0, r7	@ D.40091, D.40110
	bne	.L851	@
.L858:
	mov	r2, r4	@, ChanID
	mov	r0, #23	@,
	movw	r1, #:lower16:.LC126	@,
	movt	r1, #:upper16:.LC126	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.40091, D.40110
	b	.L851	@
.L874:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6595	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40091,
	b	.L851	@
.L881:
	movw	r1, #:lower16:.LC128	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC128	@,
	mov	r0, #23	@,
	bl	dprint_vfmw	@
	b	.L862	@
.L875:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #6596	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.40091,
	b	.L851	@
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1757:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp203,
	movt	r4, #:upper16:.LANCHOR0	@ tmp203,
	movw	r8, #:lower16:.LANCHOR0	@ tmp158,
	movt	r8, #:upper16:.LANCHOR0	@ tmp158,
	movw	r6, #:lower16:.LANCHOR0	@ tmp163,
	ldr	ip, [r4, #0]	@ D.39906, s_pstVfmwChan
	movt	r6, #:upper16:.LANCHOR0	@ tmp163,
	ldr	r7, [r4, #4]	@ temp.3613, s_pstVfmwChan
	.pad #28
	sub	sp, sp, #28	@,,
	cmp	ip, #0	@ D.39906,
	ldr	r0, [r4, #8]	@ temp.3615, s_pstVfmwChan
	ldr	r2, [r4, #12]	@ temp.3600, s_pstVfmwChan
	movw	r3, #:lower16:.LANCHOR0	@ tmp168,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r7, #0	@ temp.3613,
	movt	r3, #:upper16:.LANCHOR0	@ tmp168,
	str	ip, [r4, #360]	@ <variable>.s32Priority, ChanPriTab
	ldrne	r7, [r7, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r0, #0	@ temp.3615,
	str	r7, [r8, #364]	@ <variable>.s32Priority, ChanPriTab
	mov	r8, sp	@ tmp210,
	ldrne	r0, [r0, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ temp.3600,
	mov	r7, #0	@ MaxPriChan,
	str	r0, [r6, #368]	@ <variable>.s32Priority, ChanPriTab
	movw	r6, #:lower16:.LANCHOR0	@ tmp209,
	ldrne	r2, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movt	r6, #:upper16:.LANCHOR0	@ tmp209,
	mvn	r0, #0	@ ret,
	str	r2, [r3, #372]	@ temp.3600, ChanPriTab
.L906:
	ldr	r3, [r4, #360]	@ MaxPri, ChanPriTab
	ldr	ip, [r4, #364]	@ MaxPri.3609, ChanPriTab
	ldr	r2, [r4, #368]	@ MaxPri.3610, ChanPriTab
	cmp	r3, ip	@ MaxPri, MaxPri.3609
	movlt	r3, ip	@ MaxPri, MaxPri.3609
	movlt	r5, #1	@ MaxPriChan,
	movge	r5, #0	@ MaxPriChan,
	ldr	ip, [r4, #372]	@ MaxPri.3611, ChanPriTab
	cmp	r3, r2	@ MaxPri, MaxPri.3610
	movlt	r3, r2	@ MaxPri, MaxPri.3610
	movlt	r5, #2	@ MaxPriChan,
	cmp	r3, ip	@ MaxPri, MaxPri.3611
	addge	r1, r5, #1	@ prephitmp.3581, MaxPriChan,
	movlt	r5, #3	@ MaxPriChan,
	movlt	r3, ip	@ MaxPri, MaxPri.3611
	movlt	r1, #4	@ prephitmp.3581,
	add	r2, r4, r5, asl #2	@, tmp180, tmp203, MaxPriChan,
	cmp	r3, #0	@ MaxPri,
	movw	r3, #:lower16:.LANCHOR0	@ tmp177,
	str	r7, [r2, #360]	@ MaxPriChan, ChanPriTab
	movt	r3, #:upper16:.LANCHOR0	@ tmp177,
	ble	.L896	@,
	ldr	r3, [r6, r5, asl #2]	@ D.39917, s_pstVfmwChan
	cmp	r3, #0	@ D.39917,
	beq	.L906	@,
	str	r1, [r6, #156]	@ prephitmp.3581, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r2, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L906	@,
	ldr	r1, [r3, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	r1, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L898	@,
	ldr	sl, [r3, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	sl, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L910	@,
.L898:
	mov	sl, #0	@ i,
.L901:
	mov	r0, r5	@, MaxPriChan
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	bne	.L906	@,
	add	sl, sl, #1	@ i, i,
	cmp	sl, #200	@ i,
	beq	.L906	@,
	b	.L901	@
.L896:
	str	r7, [r3, #156]	@ MaxPriChan, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L910:
	mov	r0, r5	@, MaxPriChan
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L911	@,
.L899:
	ldr	sl, [r4, r5, asl #2]	@ temp.3601, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r2, [sl, #52]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	bl	GetNextDecodeMode	@
	str	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r4, r5, asl #2]	@ temp.3603, s_pstVfmwChan
	ldr	r0, [r3, #896]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r0, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [r3, #892]	@ MaxPriChan, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r0, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	r3, [r6, r5, asl #2]	@ tmp195, s_pstVfmwChan
	streq	r0, [r3, #892]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r3, [r6, r5, asl #2]	@ temp.3607, s_pstVfmwChan
	strne	r7, [r3, #888]	@ MaxPriChan, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r0, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r0, [r3, #888]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L898	@
.L911:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L899	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1737:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp149,
	movt	r4, #:upper16:.LANCHOR0	@ tmp149,
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r4, r0, asl #2]	@ tmp140, s_pstVfmwChan
	cmp	r3, #0	@ tmp140,
	beq	.L915	@,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L915	@,
	ldr	r0, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L916	@,
	ldr	r1, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r1, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L916	@,
.L915:
	mvn	r0, #0	@ ret,
.L914:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, pc}
.L916:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L915	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, r5, asl #2]	@ tmp146, s_pstVfmwChan
	ldr	ip, [r3, #28]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	r2, ip, r0	@ tmp147, <variable>.u32timeLastDecParamReady,
	cmp	r2, #50	@ tmp147,
	movls	r0, #0	@ ret,
	bls	.L914	@,
	b	.L915	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1732:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp251,
	movt	r4, #:upper16:.LANCHOR0	@ tmp251,
	mov	r5, r0	@ ChanId, ChanId
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r0, [r4, r0, asl #2]	@ D.38841, s_pstVfmwChan
	cmp	r0, #0	@ D.38841,
	beq	.L945	@,
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #13	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L938	@
.L932:
	.word	.L922
	.word	.L923
	.word	.L924
	.word	.L925
	.word	.L938
	.word	.L926
	.word	.L927
	.word	.L938
	.word	.L928
	.word	.L929
	.word	.L930
	.word	.L930
	.word	.L930
	.word	.L931
.L931:
	add	ip, r0, #217088	@, D.38841,
	add	r0, ip, #432	@,,
	bl	VP8DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ tmp248, s_pstVfmwChan
.L939:
	movw	r3, #:lower16:217524	@ tmp249,
	movt	r3, #:upper16:217524	@ tmp249,
	mov	lr, #0	@ tmp250,
	str	lr, [r2, r3]	@ tmp250,
.L938:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L922:
	add	r6, r0, #217088	@, D.38841,
	mov	r3, r2	@, pLumaInfo
	add	r0, r6, #432	@,,
	mov	r2, #1	@,
	mov	r6, #0	@ tmp151,
	str	r6, [sp, #0]	@ tmp151,
	bl	H264DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3697, s_pstVfmwChan
	movw	r4, #:lower16:231076	@ tmp153,
	movt	r4, #:upper16:231076	@ tmp153,
	movw	r7, #:lower16:.LANCHOR0	@ tmp152,
	movt	r7, #:upper16:.LANCHOR0	@ tmp152,
	ldrb	r0, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L946	@,
.L933:
	movw	lr, #:lower16:217880	@ tmp161,
	movt	lr, #:upper16:217880	@ tmp161,
	mov	ip, #0	@ tmp162,
	str	ip, [r2, lr]	@ tmp162,
	b	.L938	@
.L923:
	add	r2, r0, #217088	@, D.38841,
	movw	r6, #:lower16:295799	@ tmp229,
	add	r0, r2, #432	@,,
	movt	r6, #:upper16:295799	@ tmp229,
	bl	VC1DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3692, s_pstVfmwChan
.L943:
	ldrb	r1, [r2, r6]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	movw	r4, #:lower16:.LANCHOR0	@ tmp228,
	movt	r4, #:upper16:.LANCHOR0	@ tmp228,
	cmp	r1, #1	@ <variable>.stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	bne	.L939	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp232, s_pstVfmwChan
	mov	ip, #0	@ tmp234,
	strb	ip, [r3, r6]	@ tmp234,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3692, s_pstVfmwChan
	b	.L939	@
.L924:
	add	r0, r0, #217088	@, D.38841,
	movw	r6, #:lower16:.LANCHOR0	@ tmp178,
	add	r0, r0, #432	@,,
	movt	r6, #:upper16:.LANCHOR0	@ tmp178,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3695, s_pstVfmwChan
	movw	r4, #:lower16:240516	@ tmp179,
	movt	r4, #:upper16:240516	@ tmp179,
	ldrb	r3, [r2, r4]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L947	@,
.L935:
	movw	r3, #:lower16:218556	@ tmp187,
	movt	r3, #:upper16:218556	@ tmp187,
	mov	lr, #0	@ tmp188,
	str	lr, [r2, r3]	@ tmp188,
	b	.L938	@
.L925:
	add	r2, r0, #217088	@, D.38841,
	movw	r6, #:lower16:291233	@ tmp166,
	add	r0, r2, #432	@,,
	movt	r6, #:upper16:291233	@ tmp166,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3665, s_pstVfmwChan
	b	.L943	@
.L926:
	mov	r0, #0	@,
	str	r1, [sp, #12]	@,
	bl	VDMDRV_GetSwitchRounding	@
	ldr	r1, [sp, #12]	@,
	mov	r2, r0	@ D.38849,
	ldr	r0, [r4, r5, asl #2]	@ tmp221, s_pstVfmwChan
	add	ip, r0, #217088	@, tmp221,
	add	r0, ip, #432	@,,
	bl	DIVX3DEC_VDMPostProc	@
.L940:
	ldr	r2, [r4, r5, asl #2]	@ tmp242, s_pstVfmwChan
	movw	r1, #:lower16:217524	@ tmp243,
	movt	r1, #:upper16:217524	@ tmp243,
	mov	r0, #0	@ tmp244,
	str	r0, [r2, r1]	@ tmp244,
	b	.L938	@
.L927:
	add	r6, r0, #217088	@, D.38841,
	add	r0, r6, #432	@,,
	movw	r6, #:lower16:234644	@ tmp192,
	bl	AVSDEC_VDMPostProc	@
	movt	r6, #:upper16:234644	@ tmp192,
	ldr	r2, [r4, r5, asl #2]	@ prephitmp.3696, s_pstVfmwChan
	b	.L943	@
.L928:
	mov	r0, #0	@,
	str	r1, [sp, #12]	@,
	bl	VDMDRV_GetMb0QpInCurrPic	@
	ldr	ip, [r4, r5, asl #2]	@ tmp205, s_pstVfmwChan
	ldr	r1, [sp, #12]	@,
	mov	r2, r0	@ D.38845,
	add	r0, ip, #217088	@, tmp205,
	add	r0, r0, #432	@,,
	bl	REAL8DEC_VDMPostProc	@
	b	.L940	@
.L929:
	mov	r0, #0	@,
	str	r1, [sp, #12]	@,
	bl	VDMDRV_GetMb0QpInCurrPic	@
	ldr	r3, [r4, r5, asl #2]	@ tmp213, s_pstVfmwChan
	ldr	r1, [sp, #12]	@,
	mov	r2, r0	@ D.38847,
	add	r0, r3, #217088	@, tmp213,
	add	r0, r0, #432	@,,
	bl	REAL9DEC_VDMPostProc	@
	b	.L940	@
.L930:
	add	lr, r0, #217088	@, D.38841,
	add	r0, lr, #432	@,,
	bl	VP6DEC_VDMPostProc	@
	b	.L940	@
.L945:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC27	@,
	movw	r2, #4639	@,
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	b	dprint_vfmw	@
.L947:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	ip, [r6, r5, asl #2]	@ tmp182, s_pstVfmwChan
	mov	r1, #0	@ tmp184,
	strb	r1, [ip, r4]	@ tmp184, <variable>.stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	ldr	r2, [r6, r5, asl #2]	@ prephitmp.3695, s_pstVfmwChan
	b	.L935	@
.L946:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r7, r5, asl #2]	@ tmp156, s_pstVfmwChan
	strb	r6, [r1, r4]	@ tmp151, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r2, [r7, r5, asl #2]	@ prephitmp.3697, s_pstVfmwChan
	b	.L933	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
.LFB1733:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanId, ChanId
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r5, r2	@ pLumaInfo, pLumaInfo
	bhi	.L954	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.38863, s_pstVfmwChan
	cmp	r3, #0	@ D.38863,
	beq	.L955	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	beq	.L951	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC124	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC124	@,
	mov	r0, #0	@,
	movw	r2, #4758	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L951:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r0, r4	@, ChanId
	mov	r1, r6	@, ErrRatio
	mov	r2, r5	@, pLumaInfo
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_PostProc	@
.L954:
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC44	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC44	@,
	mov	r0, #0	@,
	movw	r2, #4756	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L955:
	mov	r0, r3	@, D.38863
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC123	@,
	movw	r2, #4757	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
.LFB1720:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bhi	.L968	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r0, [r4, r0, asl #2]	@ D.38594, s_pstVfmwChan
	cmp	r0, #0	@ D.38594,
	beq	.L969	@,
	ldr	r3, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L970	@,
	cmp	r1, #0	@ pImage,
	beq	.L971	@,
	mov	r2, r5	@, ChanID
	ldr	r3, [r1, #176]	@, <variable>.image_id
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC131	@,
	movt	r1, #:upper16:.LC131	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, r5, asl #2]	@ temp.3749, s_pstVfmwChan
	cmp	r0, #0	@ temp.3749,
	movweq	r1, #:lower16:.LC92	@,
	movweq	r2, #4180	@,
	movteq	r1, #:upper16:.LC92	@,
	beq	.L967	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L972	@,
	add	r0, r0, #217088	@, temp.3749,
	mov	r1, r6	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReleaseImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
.L958:
	mov	r0, r4	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L972:
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	movw	r2, #4187	@,
	mov	r0, #0	@,
.L967:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r4, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L958	@
.L970:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4172	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L958	@
.L968:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4170	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L958	@
.L971:
	mov	r0, r1	@, pImage
	movw	r2, #4173	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC130	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC130	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ret,
	b	.L958	@
.L969:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4171	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	mvn	r4, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L958	@
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
.LFB1719:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC133	@,
	mov	r2, r4	@, ChanID
	movt	r1, #:upper16:.LC133	@,
	bl	dprint_vfmw	@
	cmp	r4, #3	@ ChanID,
	bhi	.L984	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp165,
	movt	r6, #:upper16:.LANCHOR0	@ tmp165,
	ldr	r0, [r6, r4, asl #2]	@ D.38564, s_pstVfmwChan
	cmp	r0, #0	@ D.38564,
	beq	.L985	@,
	ldr	r3, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L986	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r6, r4, asl #2]	@ temp.3777, s_pstVfmwChan
	cmp	r0, #0	@ temp.3777,
	movweq	r1, #:lower16:.LC92	@,
	movweq	r2, #4086	@,
	movteq	r1, #:upper16:.LC92	@,
	beq	.L983	@,
	ldr	r1, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L987	@,
	add	r7, r0, #217088	@, temp.3777,
	mov	r1, r5	@, pImage
	add	r0, r7, #424	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r7, #0	@, ret,
	mvnne	r7, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r2, [r6, r4, asl #2]	@ tmp160, s_pstVfmwChan
	movw	ip, #:lower16:233604	@ tmp161,
	movt	ip, #:upper16:233604	@ tmp161,
	ldrb	r0, [r2, ip]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r0, [r5, #336]	@ <variable>.stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus, <variable>.optm_inf.bAvsPlus
.L975:
	mov	r0, r7	@, ret
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L986:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4079	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC123	@,
	movt	r3, #:upper16:.LC123	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ ret,
	b	.L975	@
.L987:
	movw	r1, #:lower16:.LC132	@,
	movt	r1, #:upper16:.LC132	@,
	movw	r2, #4093	@,
	mov	r0, #0	@,
.L983:
	bl	dprint_vfmw	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	mvn	r7, #0	@ ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L975	@
.L984:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4075	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ ret,
	b	.L975	@
.L985:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #4076	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	mvn	r7, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L975	@
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
.LFB1717:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, r0, asl #2]	@ tmp138, s_pstVfmwChan
	cmp	r3, #0	@ tmp138,
	beq	.L993	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	mvnne	r0, #0	@, D.38496,
	ldmfd	sp!, {r3, pc}	@
.L993:
	mov	r0, r3	@, tmp138
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3843	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38496,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_LoadDspCode
	.type	VCTRL_LoadDspCode, %function
VCTRL_LoadDspCode:
	.fnstart
.LFB1715:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	add	r4, sp, #8	@ tmp141,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	mov	r0, r4	@, tmp141
	bl	__memzero	@
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, tmp141
	bl	VCTRL_GetChanCfg	@
	subs	r6, r0, #0	@ ret,
	bne	.L1006	@,
	ldr	r3, [sp, #8]	@ D.38404, stCfgInfo.eVidStd
	cmp	r3, #0	@ D.38404,
	movne	r1, r6	@ prephitmp.3818, ret
	movne	r2, r6	@ ScdLowdlyEnable, ret
	beq	.L1007	@,
.L998:
	movw	r4, #:lower16:.LANCHOR0	@ tmp146,
	movt	r4, #:upper16:.LANCHOR0	@ tmp146,
	ldr	ip, [r4, #376]	@ prephitmp.3819, g_DSPState
	cmp	ip, #0	@ prephitmp.3819,
	bne	.L999	@,
	ldr	ip, [r4, #380]	@ prephitmp.3819, g_DSPState
	cmp	ip, #0	@ prephitmp.3819,
	bne	.L999	@,
	ldr	ip, [r4, #384]	@ prephitmp.3819, g_DSPState
	cmp	ip, #0	@ prephitmp.3819,
	bne	.L999	@,
	ldr	ip, [r4, #388]	@ prephitmp.3819, g_DSPState
	cmp	ip, #0	@ prephitmp.3819,
	bne	.L999	@,
	cmp	r3, #6	@ D.38404,
	movne	r2, #0	@, temp.3830
	moveq	r2, #1	@, temp.3830
	tst	r1, #1	@ prephitmp.3818,
	bne	.L1008	@,
	cmp	r2, #0	@ temp.3830,
	bne	.L1009	@,
.L996:
	mov	r0, r6	@, ret
	add	sp, sp, #80	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L1007:
	ldr	r2, [sp, #48]	@ ScdLowdlyEnable, stCfgInfo.s32LowdlyEnable
	cmp	r2, #1	@ ScdLowdlyEnable,
	movne	r1, #0	@, prephitmp.3818
	moveq	r1, #1	@, prephitmp.3818
	b	.L998	@
.L1009:
	add	r5, r4, r5, asl #2	@, tmp175, tmp146, ChanID,
	mov	r0, #6	@,
	bl	WriteHexFile	@
	mov	r0, #2	@ tmp177,
	str	r0, [r5, #376]	@ tmp177, g_DSPState
	b	.L996	@
.L1008:
	add	r4, r4, r5, asl #2	@, tmp166, tmp146, ChanID,
	mov	r0, r3	@, D.38404
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp168,
	str	r3, [r4, #376]	@ tmp168, g_DSPState
	b	.L996	@
.L999:
	cmp	ip, #2	@ prephitmp.3819,
	movne	r1, #0	@, tmp154
	andeq	r1, r1, #1	@,, tmp154, prephitmp.3818
	cmp	r1, #0	@ tmp154,
	bne	.L1001	@,
	cmp	ip, #1	@ prephitmp.3819,
	cmpeq	r3, #6	@, D.38404,
	bne	.L996	@,
.L1001:
	mov	r0, #32	@,
	movw	r1, #:lower16:.LC135	@,
	movt	r1, #:upper16:.LC135	@,
	str	ip, [sp, #0]	@ prephitmp.3819,
	mvn	r6, #0	@ ret,
	bl	dprint_vfmw	@
	b	.L996	@
.L1006:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC134	@,
	movw	r2, #3699	@,
	movt	r1, #:upper16:.LC134	@,
	bl	dprint_vfmw	@
	mvn	r6, #0	@ ret,
	b	.L996	@
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
.LFB1714:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ D.38365, s_pstVfmwChan
	cmp	r3, #0	@ D.38365,
	beq	.L1015	@,
	ldr	r2, [r3, #880]	@ D.38370, <variable>.eVidStd
	cmp	r2, #4	@ D.38370,
	cmpne	r2, #14	@, D.38370,
	bne	.L1016	@,
.L1013:
	mvn	r0, #0	@ D.38369,
	ldmfd	sp!, {r3, pc}	@
.L1016:
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp!, {r3, pc}	@
	b	.L1013	@
.L1015:
	mov	r0, r3	@, D.38365
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3659	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38369,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
	.fnstart
.LFB1684:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	r3, [r1, #64]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	mov	r4, r1	@ pstChan, pstChan
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_vdh,
	beq	.L1030	@,
.L1018:
	ldr	r0, [r4, #28]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	cmp	r0, #0	@ <variable>.stChanMem_vdh.Length,
	bne	.L1031	@,
.L1019:
	ldr	r2, [r4, #44]	@ D.36840, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ D.36840,
	bne	.L1032	@,
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L1033	@,
.L1021:
	ldr	lr, [r4, #44]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L1034	@,
.L1022:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #72]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L1035	@,
.L1023:
	ldr	r0, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L1024:
	ldr	r0, [r4, #56]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.stChanMem_ctx.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_pmv,
	beq	.L1025	@,
.L1029:
	ldr	r0, [r4, #100]	@ prephitmp.3868, <variable>.stChanMem_pmv.PhyAddr
.L1026:
	ldr	r2, [r4, #104]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1034:
	ldrsb	r3, [r4, #32]	@ <variable>.stChanMem_scd.IsCached, <variable>.stChanMem_scd.IsCached
	cmp	r3, #1	@ <variable>.stChanMem_scd.IsCached,
	bne	.L1022	@,
	ldr	r0, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp163,
	movt	r2, #:upper16:.LANCHOR0	@ tmp163,
	add	r1, r2, r5, asl #2	@, tmp166, tmp163, ChanID,
	str	r0, [r4, #36]	@ D.36858, <variable>.stChanMem_scd.VirAddr
	str	r0, [r1, #96]	@ D.36858, g_scd_vir
	mov	r0, #0	@ tmp168,
	strb	r0, [r4, #32]	@ tmp168, <variable>.stChanMem_scd.IsCached
	b	.L1022	@
.L1031:
	ldrsb	r1, [r4, #16]	@ <variable>.stChanMem_vdh.IsCached, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #1	@ <variable>.stChanMem_vdh.IsCached,
	bne	.L1019	@,
	ldr	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	KernelMmap	@
	mov	r2, #0	@ tmp152,
	strb	r2, [r4, #16]	@ tmp152, <variable>.stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	b	.L1019	@
.L1025:
	ldr	r0, [r4, #100]	@ D.36874, <variable>.stChanMem_pmv.PhyAddr
	cmp	r0, #0	@ D.36874,
	beq	.L1026	@,
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1029	@
.L1035:
	ldr	r0, [r4, #56]	@ D.36866, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.36866,
	beq	.L1023	@,
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1024	@
.L1032:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L1021	@,
.L1033:
	ldr	r0, [r4, #40]	@ temp.3883, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ temp.3883,
	beq	.L1021	@,
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1022	@
.L1030:
	ldr	r0, [r1, #24]	@ D.36826, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.36826,
	beq	.L1018	@,
	ldr	r1, [r1, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L1019	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1043	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, r0, asl #2]	@ D.37751, s_pstVfmwChan
	cmp	r3, #0	@ D.37751,
	beq	.L1044	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L1040	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2825	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC137	@,
	movt	r3, #:upper16:.LC137	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37749,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1040:
	str	r2, [r3, #16]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	mov	r2, #0	@ tmp149,
	ldr	r3, [r4, r0, asl #2]	@ tmp148, s_pstVfmwChan
	str	r2, [r3, #8]	@ tmp149, <variable>.s32IsRun
	bl	SM_Stop	@
	subs	r6, r0, #0	@ s32Ret,
	mvnne	r0, #0	@ D.37749,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	mov	r1, r6	@, s32Ret
	mov	r0, r5	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@, ChanID
	bl	DNR_StopChan	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r1, [r4, r5, asl #2]	@ tmp151, s_pstVfmwChan
	mov	r0, r6	@ D.37749, s32Ret
	str	r6, [r1, #16]	@ s32Ret, <variable>.s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1043:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2823	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37749,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1044:
	mov	r0, r3	@, D.37751
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2824	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC136	@,
	movt	r3, #:upper16:.LC136	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37749,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.type	VfmwProc_TestStopChan, %function
VfmwProc_TestStopChan:
	.fnstart
.LFB1796:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestStopChan, .-VfmwProc_TestStopChan
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
.LFB1699:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L1064	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp204,
	movt	r4, #:upper16:.LANCHOR0	@ tmp204,
	ldr	r3, [r4, r0, asl #2]	@ D.37680, s_pstVfmwChan
	cmp	r3, #0	@ D.37680,
	beq	.L1065	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1066	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1067	@,
	bl	SM_Start	@
	ldr	ip, [r4, r5, asl #2]	@ tmp154, s_pstVfmwChan
	mov	r0, #0	@ tmp158,
	str	r6, [ip, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r4, r5, asl #2]	@ tmp157, s_pstVfmwChan
	str	r0, [r1, #16]	@ tmp158, <variable>.s32StopSyntax
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.3962, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L1053	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	movw	r2, #:lower16:.LANCHOR0	@ tmp171,
	ldr	ip, [r4, #0]	@ temp.3981, s_pstVfmwChan
	movt	r2, #:upper16:.LANCHOR0	@ tmp171,
	ldr	lr, [r4, #4]	@ temp.3984, s_pstVfmwChan
	cmp	ip, #0	@ temp.3981,
	streq	ip, [r4, #392]	@ temp.3981, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp203,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp203,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp203,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp203,
	strne	r1, [r4, #392]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp180,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.3984,
	streq	lr, [r2, #396]	@ temp.3984, PrioArray
	movt	r1, #:upper16:.LANCHOR0	@ tmp180,
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	ip, [r4, #8]	@ temp.3987, s_pstVfmwChan
	strne	r0, [r2, #396]	@ <variable>.s32Priority, PrioArray
	movw	r2, #:lower16:.LANCHOR0	@ tmp189,
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.3987,
	streq	ip, [r1, #400]	@ temp.3987, PrioArray
	movt	r2, #:upper16:.LANCHOR0	@ tmp189,
	str	lr, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	lr, [r4, #12]	@ D.37693, s_pstVfmwChan
	strne	r0, [r1, #400]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ D.37693,
	streq	lr, [r3, #12]	@ D.37693, g_ChanCtx.PriorByChanId
	streq	lr, [r2, #404]	@ D.37693, PrioArray
	str	ip, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r2, #404]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1068	@,
	strne	r2, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.3962, s_pstVfmwChan
.L1053:
	ldr	r3, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1062	@,
	mov	r0, r5	@, ChanID
	bl	DNR_StartChan	@
.L1062:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37678,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1066:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2698	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37678,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1064:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2696	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37678,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1067:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2699	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r3, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37678,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1065:
	mov	r0, r3	@, D.37680
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2697	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37678,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1069:
	.align	2
.L1068:
	.word	.LANCHOR0+392
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.type	VfmwProc_TestStartChan, %function
VfmwProc_TestStartChan:
	.fnstart
.LFB1798:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestStartChan, .-VfmwProc_TestStartChan
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
.LFB1718:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp205,
	movt	r5, #:upper16:.LANCHOR0	@ tmp205,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ ChanID, ChanID
	ldr	r3, [r5, r0, asl #2]	@ D.38514, s_pstVfmwChan
	cmp	r3, #0	@ D.38514,
	beq	.L1085	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp144, s_pstVfmwChan
	mov	r6, #0	@ tmp145,
	add	r0, r4, r4, asl #1	@, tmp153, ChanID, ChanID,
	add	r3, r5, #408	@ tmp150, tmp205,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp145, <variable>.s32CountNoDecparamFlag
	add	r0, r3, r0, asl #3	@,, tmp150, tmp153,
	ldr	ip, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	str	r6, [ip, #684]	@ tmp145, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r9, [r5, r4, asl #2]	@ tmp157, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r6, [r9, #1412]	@ tmp145, <variable>.stSynExtraData.s32KeepSPSPPS
	mvn	r9, #0	@,
	bl	InitSyntaxCtx	@
	ldr	r8, [r5, r4, asl #2]	@ tmp161, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r8, #1024	@, tmp161,
	mvn	r8, #0	@ tmp165,
	bl	__memzero	@
	ldr	r2, [r5, r4, asl #2]	@ tmp163, s_pstVfmwChan
	mov	r3, #944	@ tmp164,
	mov	r0, #952	@ tmp168,
	movw	r1, #:lower16:217472	@ tmp178,
	movt	r1, #:upper16:217472	@ tmp178,
	strd	r8, [r2, r3]	@ tmp165, tmp163, tmp164
	movw	r2, #:lower16:217464	@ tmp182,
	ldr	ip, [r5, r4, asl #2]	@ tmp167, s_pstVfmwChan
	movt	r2, #:upper16:217464	@ tmp182,
	movw	r3, #:lower16:217468	@ tmp186,
	movt	r3, #:upper16:217468	@ tmp186,
	strd	r8, [ip, r0]	@ tmp165, tmp167, tmp168
	ldr	r0, [r5, r4, asl #2]	@ tmp171, s_pstVfmwChan
	str	r6, [r0, #1272]	@ tmp145, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	ip, [r5, r4, asl #2]	@ tmp174, s_pstVfmwChan
	str	r6, [ip, #1620]	@ tmp145, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r5, r4, asl #2]	@ tmp177, s_pstVfmwChan
	str	r6, [r0, r1]	@ tmp145, <variable>.s32FindStartCodeCnt
	ldr	ip, [r5, r4, asl #2]	@ tmp181, s_pstVfmwChan
	str	r6, [ip, r2]	@ tmp145, <variable>.s32H264Score
	ldr	r1, [r5, r4, asl #2]	@ tmp185, s_pstVfmwChan
	str	r6, [r1, r3]	@ tmp145, <variable>.s32Mpeg2Score
	ldr	r0, [r5, r4, asl #2]	@ prephitmp.4028, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r6, [r0, #1616]	@ tmp145, <variable>.stSynExtraData.s32DSDWaitFlag
	ldreq	r0, [r5, r4, asl #2]	@ prephitmp.4028, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L1076	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L1077:
	mov	r0, r4	@, ChanID
	movw	r6, #:lower16:.LANCHOR0	@ tmp193,
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r1, [r5, #56]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movt	r6, #:upper16:.LANCHOR0	@ tmp193,
	cmp	r1, #0	@ g_ResetCreateNewSave,
	bne	.L1086	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L1087	@,
.L1082:
	ldr	r2, [r5, r4, asl #2]	@ tmp202, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1088	@,
.L1083:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.38518,
.L1074:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L1086:
	ldr	ip, [r6, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	lr, #0	@ tmp195,
	str	lr, [sp, #4]	@ tmp195, data
	cmp	ip, lr	@ vfmw_save_str_file,
	addeq	r8, sp, #4	@ prephitmp.4030,,
	beq	.L1080	@,
	add	r8, sp, #4	@ prephitmp.4030,,
	mov	r0, #512	@,
	mov	r1, r8	@, prephitmp.4030
	bl	VCTRL_SetDbgOption	@
	ldr	r0, [r6, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r0, #0	@ vfmw_save_str_file,
	beq	.L1080	@,
.L1081:
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L1082	@,
.L1087:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp202, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L1083	@,
.L1088:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L1083	@
.L1076:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L1077	@
.L1080:
	mov	r1, r8	@, prephitmp.4030
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1081	@
.L1085:
	mov	r0, r3	@, D.38514
	movw	r1, #:lower16:.LC3	@,
	mov	r2, #3856	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38518,
	b	.L1074	@
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.type	VfmwProc_TestResetChan, %function
VfmwProc_TestResetChan:
	.fnstart
.LFB1797:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestResetChan, .-VfmwProc_TestResetChan
	.align	2
	.type	VfmwProc_TestRestartChan, %function
VfmwProc_TestRestartChan:
	.fnstart
.LFB1799:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	mov	r0, r4	@, dat
	bl	VCTRL_StopChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC138	@,
	movt	r1, #:upper16:.LC138	@,
	mov	r3, r0	@ ret,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_ResetChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC143	@,
	movt	r1, #:upper16:.LC143	@,
	mov	r3, r0	@ ret.4101,
	mov	r0, #32	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, dat
	bl	VCTRL_StartChan	@
	mov	r2, r4	@, dat
	movw	r1, #:lower16:.LC141	@,
	movt	r1, #:upper16:.LC141	@,
	mov	r3, r0	@ ret.4102,
	mov	r0, #32	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VfmwProc_TestRestartChan, .-VfmwProc_TestRestartChan
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
.LFB1716:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp196,
	movt	r5, #:upper16:.LANCHOR0	@ tmp196,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ ChanID, ChanID
	mov	r7, r1	@ pOption, pOption
	ldr	r3, [r5, r0, asl #2]	@ D.38445, s_pstVfmwChan
	cmp	r3, #0	@ D.38445,
	beq	.L1106	@,
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L1107	@,
	ldr	r8, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ tmp147, s_pstVfmwChan
	mov	r6, #0	@ tmp148,
	add	r0, r4, r4, asl #1	@, tmp156, ChanID, ChanID,
	add	ip, r5, #408	@ tmp153, tmp196,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp148, <variable>.s32CountNoDecparamFlag
	add	r0, ip, r0, asl #3	@,, tmp153, tmp156,
	ldr	r3, [r5, r4, asl #2]	@ tmp150, s_pstVfmwChan
	str	r6, [r3, #684]	@ tmp148, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	ip, [r7, #4]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	ldr	r2, [r5, r4, asl #2]	@ tmp160, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	ip, [r2, #1412]	@ <variable>.s32KeepSPSPPS, <variable>.stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ temp.4132, s_pstVfmwChan
	add	r1, r3, #217088	@, temp.4132,
	ldr	r0, [r3, #880]	@, <variable>.eVidStd
	add	r1, r1, #432	@,,
	bl	ReleaseCurPic	@
	ldr	r2, [r5, r4, asl #2]	@ tmp168, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r2, #1024	@, tmp168,
	bl	__memzero	@
	ldr	ip, [r5, r4, asl #2]	@ tmp170, s_pstVfmwChan
	mov	r0, #944	@ tmp171,
	mvn	r3, #0	@,
	mvn	r2, #0	@ tmp172,
	mov	r1, #952	@ tmp175,
	strd	r2, [ip, r0]	@ tmp172, tmp170, tmp171
	ldr	r0, [r5, r4, asl #2]	@ tmp174, s_pstVfmwChan
	strd	r2, [r0, r1]	@ tmp172, tmp174, tmp175
	ldr	ip, [r5, r4, asl #2]	@ tmp178, s_pstVfmwChan
	str	r6, [ip, #1272]	@ tmp148, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	r1, [r5, r4, asl #2]	@ tmp181, s_pstVfmwChan
	str	r6, [r1, #1620]	@ tmp148, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r5, r4, asl #2]	@ tmp184, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L1097	@,
	mov	r0, r4	@, ChanID
	bl	FSP_ResetInstance	@
.L1098:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r7, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L1108	@,
.L1099:
	ldr	lr, [r5, #56]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movw	r5, #:lower16:.LANCHOR0	@ tmp187,
	movt	r5, #:upper16:.LANCHOR0	@ tmp187,
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L1100	@,
	ldr	r3, [r5, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r0, #0	@ tmp189,
	str	r0, [sp, #4]	@ tmp189, data
	cmp	r3, r0	@ vfmw_save_str_file,
	addeq	r6, sp, #4	@ prephitmp.4118,,
	beq	.L1102	@,
	add	r6, sp, #4	@ prephitmp.4118,,
	mov	r0, #512	@,
	mov	r1, r6	@, prephitmp.4118
	bl	VCTRL_SetDbgOption	@
	ldr	ip, [r5, #288]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	ip, #0	@ vfmw_save_str_file,
	beq	.L1102	@,
.L1103:
	movw	r1, #:lower16:.LC142	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC142	@,
	bl	dprint_vfmw	@
.L1100:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L1109	@,
.L1104:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.38449,
.L1095:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1108:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	b	.L1099	@
.L1109:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L1104	@
.L1097:
	mov	r0, r4	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L1098	@
.L1107:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC144	@,
	movw	r2, #3757	@,
	movt	r1, #:upper16:.LC144	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38449,
	b	.L1095	@
.L1102:
	mov	r1, r6	@, prephitmp.4118
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L1103	@
.L1106:
	mov	r0, r3	@, D.38445
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3753	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38449,
	b	.L1095	@
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
.LFB1700:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, r0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bhi	.L1127	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp219,
	movt	r4, #:upper16:.LANCHOR0	@ tmp219,
	ldr	r3, [r4, r0, asl #2]	@ D.37716, s_pstVfmwChan
	cmp	r3, #0	@ D.37716,
	beq	.L1128	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L1129	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L1130	@,
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4, r5, asl #2]	@ temp.4172, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldmia	r7, {r0, r1, r2, r3}	@ pChanMemVdh,,,,
	ldr	ip, [r4, r5, asl #2]	@ tmp162, s_pstVfmwChan
	add	ip, ip, #168	@ tmp161, tmp162,
	stmia	ip, {r0, r1, r2, r3}	@ tmp161,,,,
	ldr	r3, [r4, r5, asl #2]	@ temp.4174, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r5	@, ChanID
	bl	SM_Start	@
	ldr	ip, [r4, r5, asl #2]	@ tmp170, s_pstVfmwChan
	mov	r0, #0	@ tmp174,
	str	r6, [ip, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r1, [r4, r5, asl #2]	@ tmp173, s_pstVfmwChan
	str	r0, [r1, #16]	@ tmp174, <variable>.s32StopSyntax
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4156, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L1116	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	movw	r2, #:lower16:.LANCHOR0	@ tmp187,
	ldr	ip, [r4, #0]	@ D.37733, s_pstVfmwChan
	movt	r2, #:upper16:.LANCHOR0	@ tmp187,
	ldr	lr, [r4, #4]	@ temp.4184, s_pstVfmwChan
	cmp	ip, #0	@ D.37733,
	streq	ip, [r4, #504]	@ D.37733, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r3, #:lower16:g_ChanCtx	@ tmp220,
	movwne	r3, #:lower16:g_ChanCtx	@ tmp220,
	movteq	r3, #:upper16:g_ChanCtx	@ tmp220,
	movtne	r3, #:upper16:g_ChanCtx	@ tmp220,
	strne	r1, [r4, #504]	@ <variable>.s32Priority, PrioArray
	movw	r1, #:lower16:.LANCHOR0	@ tmp196,
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.4184,
	streq	lr, [r2, #508]	@ temp.4184, PrioArray
	movt	r1, #:upper16:.LANCHOR0	@ tmp196,
	str	ip, [r3, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	ip, [r4, #8]	@ temp.4187, s_pstVfmwChan
	strne	r0, [r2, #508]	@ <variable>.s32Priority, PrioArray
	movw	r2, #:lower16:.LANCHOR0	@ tmp205,
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ temp.4187,
	streq	ip, [r1, #512]	@ temp.4187, PrioArray
	movt	r2, #:upper16:.LANCHOR0	@ tmp205,
	str	lr, [r3, #4]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	lr, [r4, #12]	@ temp.4180, s_pstVfmwChan
	strne	r0, [r1, #512]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	lr, #0	@ temp.4180,
	streq	lr, [r3, #12]	@ temp.4180, g_ChanCtx.PriorByChanId
	streq	lr, [r2, #516]	@ temp.4180, PrioArray
	str	ip, [r3, #8]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	ldrne	r0, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r0, [r2, #516]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	ldr	r0, .L1131	@,
	strne	r2, [r3, #12]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, r5, asl #2]	@ prephitmp.4156, s_pstVfmwChan
.L1116:
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1125	@,
	mov	r0, r5	@, ChanID
	bl	DNR_StartChan	@
.L1125:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.37714,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1129:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2759	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC42	@,
	movt	r3, #:upper16:.LC42	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37714,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1127:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2757	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37714,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1130:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2760	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC140	@,
	movt	r3, #:upper16:.LC140	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37714,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1128:
	mov	r0, r3	@, D.37716
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #2758	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.37714,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L1132:
	.align	2
.L1131:
	.word	.LANCHOR0+504
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
.LFB1683:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	DNR_DisableChan	@
	mov	r0, r4	@, ChanID
	bl	FSP_DisableInstance	@
	mov	r0, r4	@, ChanID
	bl	CloseUsdPool_WithMem	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_UnInstallChan, .-VCTRL_UnInstallChan
	.align	2
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
.LFB1698:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp220,
	movt	r5, #:upper16:.LANCHOR0	@ tmp220,
	mov	r4, r0	@ ChanID, ChanID
	.pad #148
	sub	sp, sp, #148	@,,
	add	r0, r5, #520	@, tmp220,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #3	@ ChanID,
	bhi	.L1146	@,
	ldr	r6, [r5, r4, asl #2]	@ D.37636, s_pstVfmwChan
	cmp	r6, #0	@ D.37636,
	beq	.L1147	@,
	ldr	r3, [r6, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1148	@,
	movw	ip, #:lower16:g_FrameRate	@ tmp158,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp160,
	movt	ip, #:upper16:g_FrameRate	@ tmp158,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp160,
	mov	r1, #30	@ tmp159,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r1, [r2, r4, asl #2]	@ tmp159, g_LastFrameRate
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [ip, r4, asl #2]	@ tmp159, g_FrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	cmp	r0, #0	@,
	bne	.L1149	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	movw	fp, #:lower16:s_DnrChan	@ tmp168,
	bl	OSAL_SpinLockIRQ	@
	movt	fp, #:upper16:s_DnrChan	@ tmp168,
	movw	r3, #:lower16:76696	@ tmp171,
	movt	r3, #:upper16:76696	@ tmp171,
	ldr	sl, [r5, r4, asl #2]	@ tmp175, s_pstVfmwChan
	mla	r9, r3, r4, fp	@ tmp172, tmp171, ChanID, tmp168
	ldr	r0, [sl, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	add	r8, r9, #75776	@ tmp173, tmp172,
	add	r7, r8, #912	@ tmp173, tmp173,
	str	r0, [r7, #4]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.s32DnrEnable
	ldr	r3, [r6, #880]	@ D.37649, <variable>.eVidStd
	cmp	r3, #4	@ D.37649,
	beq	.L1141	@,
	sub	lr, r3, #10	@ tmp177, D.37649,
	cmp	lr, #2	@ tmp177,
	bhi	.L1142	@,
	ldr	r1, [r5, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	beq	.L1141	@,
.L1143:
	mov	r0, r4	@, ChanID
	add	r6, sp, #36	@ tmp190,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r5, r4, asl #2]	@ temp.4239, s_pstVfmwChan
	add	lr, sp, #116	@,,
	movw	r1, #:lower16:217488	@ tmp188,
	add	fp, r3, #184	@, temp.4239,
	add	r7, r3, #104	@, temp.4239,
	ldr	r0, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	movt	r1, #:upper16:217488	@ tmp188,
	str	fp, [sp, #20]	@, %sfp
	add	r2, r3, #152	@ tmp191, temp.4239,
	str	r7, [sp, #24]	@, %sfp
	add	r7, sp, #128	@,,
	str	r0, [sp, #108]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r0, sp, #68	@,,
	str	r0, [sp, #12]	@, %sfp
	add	r8, r3, #200	@ tmp193, temp.4239,
	ldr	r0, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r9, r3, #168	@ tmp195, temp.4239,
	str	lr, [sp, #8]	@, %sfp
	add	lr, r4, #58	@ tmp204, ChanID,
	str	r7, [sp, #4]	@, %sfp
	add	ip, r3, #217088	@ tmp202, temp.4239,
	str	r0, [sp, #100]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	movw	r0, #:lower16:s_SmIIS	@ tmp203,
	movt	r0, #:upper16:s_SmIIS	@ tmp203,
	add	sl, sp, #84	@ tmp192,,
	add	r7, r0, lr, asl #2	@,, tmp203, tmp204,
	str	r7, [sp, #28]	@, %sfp
	ldr	r0, [r3, #220]	@, <variable>.s32SelfAllocChanMem_scd
	add	fp, sp, #52	@ tmp194,,
	add	ip, ip, #404	@ tmp202, tmp202,
	movw	lr, #:lower16:s_pFspInst	@ tmp210,
	movt	lr, #:upper16:s_pFspInst	@ tmp210,
	mov	r7, #0	@ tmp209,
	str	r0, [sp, #104]	@, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #112]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp191,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp190,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp193,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp192,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp195,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp194,,,,
	ldr	r8, [sp, #20]	@, %sfp
	ldmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #12]	@, %sfp
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #24]	@, %sfp
	ldmia	r8, {r0, r1, r2}	@,,,
	ldr	r8, [sp, #8]	@, %sfp
	stmia	r8, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp202,,,,
	ldr	ip, [sp, #28]	@, %sfp
	str	r7, [lr, r4, asl #2]	@ tmp209, s_pFspInst
	ldr	lr, [sp, #4]	@, %sfp
	str	r7, [ip, #4]	@ tmp209, s_SmIIS.pSmInstArray
	str	r7, [r5, r4, asl #2]	@ tmp209, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, ChanID
	bl	DNR_CloseChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1150	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp190
	bl	VCTRL_FreeChanResource	@
	mov	r0, r7	@ D.37634, tmp209
.L1137:
	add	sp, sp, #148	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1142:
	cmp	r3, #14	@ D.37649,
	bne	.L1143	@,
.L1141:
	ldr	r3, [r5, #72]	@ D.37656, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.37656,
	beq	.L1143	@,
	add	ip, r6, #217088	@, D.37636,
	add	r0, ip, #432	@,,
	blx	r3	@ D.37656
	b	.L1143	@
.L1148:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC137	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC137	@,
	movw	r2, #2619	@,
	mov	r0, #0	@,
.L1145:
	bl	dprint_vfmw	@
	bl	VCTRL_EnableAllInt	@
	add	r0, r5, #520	@, tmp220,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37634,
	b	.L1137	@
.L1149:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r5, #520	@, tmp220,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.37634,
	b	.L1137	@
.L1146:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movw	r2, #2599	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC2	@,
	b	.L1145	@
.L1147:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC136	@,
	mov	r0, r6	@, D.37636
	movw	r2, #2607	@,
	movt	r1, #:upper16:.LC3	@,
	movt	r3, #:upper16:.LC136	@,
	b	.L1145	@
.L1151:
	.align	2
.L1150:
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
	.fnstart
.LFB1697:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r4, asl #2	@, tmp139, tmp136, ChanID,
	mov	r2, #0	@ tmp141,
	str	r2, [r3, #376]	@ tmp141, g_DSPState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #516
	sub	sp, sp, #516	@,,
	add	sl, sp, #480	@ tmp615,,
	mov	r8, r0	@ eCapLevel, eCapLevel
	mov	r7, r1	@ pChanOption, pChanOption
	add	r0, sp, #240	@,,
	mov	r1, #64	@,
	mov	r6, r2	@ flag, flag
	str	r3, [sp, #108]	@ OneChanMemFlag, %sfp
	bl	__memzero	@
	mov	r0, sl	@, tmp615
	mov	r1, #16	@,
	bl	__memzero	@
	rsbs	r0, r6, #1	@ tmp196, flag
	movcc	r0, #0	@ tmp196
	cmp	r8, #25	@ eCapLevel,
	movw	r5, #:lower16:.LANCHOR0	@ tmp619,
	movt	r5, #:upper16:.LANCHOR0	@ tmp619,
	moveq	r0, #0	@, tmp196,
	cmp	r0, #0	@ tmp196,
	str	r7, [r5, #528]	@ pChanOption, pOption
	bne	.L1238	@,
	ldr	r3, [r7, #4]	@ D.41499, <variable>.Purpose
	cmp	r3, #2	@ D.41499,
	bhi	.L1239	@,
	beq	.L1240	@,
	cmp	r3, #1	@ D.41499,
	beq	.L1241	@,
.L1160:
	ldr	r4, [r7, #136]	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r6	@, flag
	mov	r0, r8	@, eCapLevel
	mov	r1, r7	@, pChanOption
	cmp	r4, #1	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r4, #0	@ tmp212,
	strne	r4, [r7, #136]	@ tmp212, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r4, sp, #464	@ tmp213,,
	mov	r2, r4	@, tmp213
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r6, r0, #0	@ D.37535,
	bne	.L1242	@,
	ldmia	r4, {r0, r1, r2, r3}	@ tmp213,,,,
	ldr	ip, [r7, #8]	@ D.45000, <variable>.MemAllocMode
	add	r4, sp, #448	@ tmp622,,
	cmp	ip, #1	@ D.45000,
	stmia	r4, {r0, r1, r2, r3}	@ tmp622,,,,
	beq	.L1243	@,
	cmp	ip, #2	@ D.45000,
	beq	.L1244	@,
	cmp	ip, #3	@ D.45000,
	beq	.L1245	@,
	movw	r1, #:lower16:.LC162	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC162	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
.L1156:
	mov	r0, r4	@, ChanID
	add	sp, sp, #516	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1242:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC146	@,
	mov	r2, #2400	@,
	movt	r1, #:upper16:.LC146	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1238:
	movw	r1, #:lower16:.LC145	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC145	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1239:
	movw	r1, #:lower16:.LC41	@,
	movt	r1, #:upper16:.LC41	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1240:
	ldr	r3, [r7, #64]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r3, #0	@ <variable>.s32SlotWidth,
	beq	.L1159	@,
	ldr	r0, [r7, #68]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r0, #0	@ <variable>.s32SlotHeight,
	bne	.L1160	@,
.L1159:
	movw	r1, #:lower16:.LC38	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC38	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1241:
	ldr	r1, [r7, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r1, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L1161	@,
	ldr	r2, [r7, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r2, #31	@ <variable>.s32MaxWidth,
	ble	.L1161	@,
	ldr	r4, [r7, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	r4, #31	@ <variable>.s32MaxHeight,
	ble	.L1161	@,
	ldr	ip, [r7, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L1161	@,
	ldr	lr, [r7, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	lr, #1	@ <variable>.s32SupportH264,
	bne	.L1160	@,
	ldr	r3, [r7, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r3, #0	@ <variable>.s32MaxSliceNum,
	ble	.L1161	@,
	ldr	r0, [r7, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r0, #0	@ <variable>.s32MaxSpsNum,
	ble	.L1161	@,
	ldr	r1, [r7, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	r1, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L1160	@,
.L1161:
	movw	r1, #:lower16:.LC36	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC36	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1245:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp622,,,,
	add	r9, sp, #416	@ tmp620,,
	add	r6, sp, #432	@ tmp621,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp620,,,,
	mov	r0, r6	@, tmp621
	mov	r1, #16	@,
	ldr	fp, [sp, #424]	@ DetailMemSize$ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	bl	__memzero	@
	ldr	ip, [r7, #108]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L1177	@,
	ldr	lr, [r7, #112]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	lr, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	bne	.L1178	@,
.L1177:
	mov	r2, fp	@, DetailMemSize$ChanCtxDetailMem
	movw	r0, #:lower16:.LC150	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC150	@,
	mov	r3, r6	@, tmp621
	mov	fp, #1	@ tmp276,
	str	fp, [sp, #0]	@ tmp276,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1246	@,
	ldr	r1, [sp, #436]	@, MemRecord.VirAddr
	ldr	r0, [sp, #440]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #444]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [sp, #440]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #436]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r0, [sp, #444]	@ MemRecord.Length, MemRecord.Length
	str	r3, [sp, #272]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	str	r1, [sp, #276]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	str	r0, [sp, #280]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	str	fp, [sp, #488]	@ tmp276, ChanMemFlag.SelfAllocChanMem_ctx
.L1180:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp622,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp621,,,,
	mov	r0, r9	@, tmp620
	mov	r1, #16	@,
	ldr	fp, [sp, #432]	@ DetailMemSize$VdhDetailMem, DetailMemSize.VdhDetailMem
	bl	__memzero	@
	ldr	r2, [r7, #76]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L1224	@,
	ldr	r2, [r7, #80]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	bne	.L1182	@,
.L1224:
	mov	ip, #0	@ tmp297,
	mov	r2, fp	@, DetailMemSize$VdhDetailMem
	mov	r1, ip	@, tmp297
	movw	r0, #:lower16:.LC152	@,
	mov	r3, r9	@, tmp620
	movt	r0, #:upper16:.LC152	@,
	str	ip, [sp, #0]	@ tmp297,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1247	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r2, [sp, #424]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r3, [sp, #420]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r0, #1	@ tmp304,
	ldr	r1, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #240]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r3, [sp, #244]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r1, [sp, #248]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	r0, [sp, #480]	@ tmp304, ChanMemFlag.SelfAllocChanMem_vdh
.L1185:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp622,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp620,,,,
	ldr	lr, [sp, #420]	@, DetailMemSize.ScdDetailMem
	mov	r0, r6	@, tmp621
	mov	r1, #16	@,
	str	lr, [sp, #112]	@, %sfp
	bl	__memzero	@
	ldr	r3, [r7, #92]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L1226	@,
	ldr	r0, [r7, #96]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	bne	.L1188	@,
.L1226:
	ldr	r1, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r1, #2	@ <variable>.Purpose,
	beq	.L1189	@,
	mov	ip, #0	@ tmp316,
	ldr	r2, [sp, #112]	@, %sfp
	mov	r1, ip	@, tmp316
	movw	r0, #:lower16:.LC154	@,
	mov	r3, r6	@, tmp621
	movt	r0, #:upper16:.LC154	@,
	str	ip, [sp, #0]	@ tmp316,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1248	@,
	ldr	r1, [sp, #436]	@, MemRecord.VirAddr
	ldr	r0, [sp, #440]	@, MemRecord.PhyAddr
	ldr	r2, [sp, #444]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #440]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #436]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp324,
	ldr	r0, [sp, #444]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #256]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r1, [sp, #260]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r0, [sp, #264]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	r3, [sp, #484]	@ tmp324, ChanMemFlag.SelfAllocChanMem_scd
.L1193:
	ldmia	r4, {r0, r1, r2, r3}	@ tmp622,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp621,,,,
	mov	r1, #16	@,
	mov	r0, r9	@, tmp620
	ldr	r6, [sp, #444]	@ DetailMemSize$PmvDetailMem, DetailMemSize.PmvDetailMem
	bl	__memzero	@
	ldr	r1, [r7, #124]	@ <variable>.MemDetail.ChanMemPmv.VirAddr, <variable>.MemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemPmv.VirAddr,
	beq	.L1228	@,
	ldr	r2, [r7, #128]	@ <variable>.MemDetail.ChanMemPmv.Length, <variable>.MemDetail.ChanMemPmv.Length
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemPmv.Length,
	bne	.L1199	@,
.L1228:
	ldr	ip, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	ip, #2	@ <variable>.Purpose,
	beq	.L1200	@,
	mov	lr, #0	@ tmp340,
	mov	r2, r6	@, DetailMemSize$PmvDetailMem
	mov	r1, lr	@, tmp340
	mov	r3, r9	@, tmp620
	movw	r0, #:lower16:.LC159	@,
	movt	r0, #:upper16:.LC159	@,
	str	lr, [sp, #0]	@ tmp340,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1249	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	mov	r6, #1	@ tmp349,
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r1, sp, #420
	ldmia	r1, {r1, r2, r9}	@ phole ldm
	str	r2, [sp, #288]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	r1, [sp, #292]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	str	r9, [sp, #296]	@ MemRecord.Length, ChanMemDetail.ChanMemPmv.Length
	str	r6, [sp, #492]	@ tmp349, ChanMemFlag.SelfAllocChanMem_pmv
.L1170:
	movw	r6, #:lower16:.LANCHOR0	@ tmp608,
	movt	r6, #:upper16:.LANCHOR0	@ tmp608,
	add	r0, r6, #520	@, tmp608,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r9, [r5, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r9, #0	@ s_pstVfmwChan,
	beq	.L1237	@,
	ldr	r2, [r6, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	moveq	r9, #1	@ prephitmp.4309,
	moveq	r4, r9	@ ChanID, prephitmp.4309
	beq	.L1212	@,
	ldr	ip, [r6, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	ip, #0	@ s_pstVfmwChan,
	moveq	r9, #2	@ prephitmp.4309,
	moveq	r4, r9	@ ChanID, prephitmp.4309
	beq	.L1212	@,
	ldr	lr, [r6, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	lr, #0	@ s_pstVfmwChan,
	beq	.L1250	@,
	mov	r2, #4	@,
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC167	@,
	movt	r1, #:upper16:.LC167	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	bl	VCTRL_EnableAllInt	@
	add	r0, r6, #520	@, tmp608,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1156	@
.L1182:
	add	r3, r7, #72	@ tmp306, pChanOption,
	add	lr, sp, #336	@ tmp305,,
	add	ip, sp, #240	@ tmp307,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp306,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp305,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp307,,,,
	ldr	r3, [sp, #248]	@ prephitmp.4311, ChanMemDetail.ChanMemVdh.Length
	cmp	fp, r3	@ DetailMemSize$VdhDetailMem, prephitmp.4311
	bgt	.L1251	@,
	mov	r2, r3	@, prephitmp.4311
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L1185	@
.L1178:
	add	r3, r7, #104	@ tmp287, pChanOption,
	add	lr, sp, #352	@ tmp286,,
	add	ip, sp, #272	@ tmp288,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp287,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp286,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp288,,,,
	ldr	r2, [sp, #280]	@ D.45079, ChanMemDetail.ChanMemCtx.Length
	cmp	r2, fp	@ D.45079, DetailMemSize$ChanCtxDetailMem
	blt	.L1252	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L1180	@
.L1250:
	mov	r9, #3	@ prephitmp.4309,
.L1237:
	mov	r4, r9	@ ChanID, prephitmp.4309
.L1212:
	add	fp, r5, r4, asl #2	@, tmp376, tmp619, ChanID,
	ldr	ip, [sp, #276]	@ D.37551, ChanMemDetail.ChanMemCtx.VirAddr
	movw	r3, #:lower16:g_FrameRate	@ tmp369,
	movw	r6, #:lower16:g_LastFrameRate	@ tmp371,
	ldr	lr, [fp, #532]	@ tmp383, g_ChanTick
	movt	r3, #:upper16:g_FrameRate	@ tmp369,
	movt	r6, #:upper16:g_LastFrameRate	@ tmp371,
	mov	r0, ip	@, D.37551
	add	r2, lr, #1	@ tmp384, tmp383,
	movw	r1, #:lower16:331248	@,
	mov	lr, #30	@ tmp370,
	str	r2, [fp, #532]	@ tmp384, g_ChanTick
	str	lr, [r6, r4, asl #2]	@ tmp370, g_LastFrameRate
	movt	r1, #:upper16:331248	@,
	str	lr, [r3, r4, asl #2]	@ tmp370, g_FrameRate
	movw	r6, #:lower16:.LANCHOR0	@ tmp373,
	str	ip, [r5, r4, asl #2]	@ D.37551, s_pstVfmwChan
	bl	__memzero	@
	ldr	r0, [r5, r4, asl #2]	@ tmp390, s_pstVfmwChan
	mov	r1, r7	@, pChanOption
	mov	r2, #152	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp373,
	add	r3, r0, #1440	@, tmp390,
	add	r0, r3, #4	@,,
	bl	memcpy	@
	ldr	ip, [r5, r4, asl #2]	@ tmp396, s_pstVfmwChan
	movw	r2, #:lower16:539128	@ tmp397,
	movt	r2, #:upper16:539128	@ tmp397,
	movw	r0, #:lower16:s_SmIIS	@ tmp422,
	movt	r0, #:upper16:s_SmIIS	@ tmp422,
	str	r2, [ip, #1388]	@ tmp397, <variable>.stSynExtraData.s32BasicCtxSize
	add	r0, r0, r4, asl #2	@,, tmp422, ChanID,
	ldr	r1, [r5, r4, asl #2]	@ tmp399, s_pstVfmwChan
	movw	r2, #:lower16:s_DnrChan	@ tmp447,
	movt	r2, #:upper16:s_DnrChan	@ tmp447,
	movw	r3, #:lower16:181760	@ tmp409,
	movt	r3, #:upper16:181760	@ tmp409,
	movw	ip, #:lower16:217512	@ tmp419,
	str	r8, [r1, #24]	@ eCapLevel, <variable>.eChanCapLevel
	movw	r1, #:lower16:76696	@ tmp450,
	ldr	lr, [r5, r4, asl #2]	@ tmp401, s_pstVfmwChan
	movt	r1, #:upper16:76696	@ tmp450,
	str	r0, [sp, #120]	@, %sfp
	movw	r0, #:lower16:167880	@,
	movt	r0, #:upper16:167880	@,
	movt	ip, #:upper16:217512	@ tmp419,
	str	r8, [lr, #920]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	str	r0, [sp, #116]	@, %sfp
	ldr	r0, [r5, r4, asl #2]	@ tmp403, s_pstVfmwChan
	mla	lr, r1, r4, r2	@ tmp451, tmp450, ChanID, tmp447
	mov	r1, #0	@ tmp404,
	movw	r2, #:lower16:s_pFspInst	@,
	movt	r2, #:upper16:s_pFspInst	@,
	str	r2, [sp, #112]	@, %sfp
	str	r1, [r0, #1404]	@ tmp404, <variable>.stSynExtraData.s32MoreGapEnable
	add	r2, lr, #75776	@ tmp452, tmp451,
	ldr	r0, [r5, r4, asl #2]	@ tmp406, s_pstVfmwChan
	movw	r1, #:lower16:217508	@ tmp438,
	add	r2, r2, #912	@ tmp452, tmp452,
	movt	r1, #:upper16:217508	@ tmp438,
	str	r4, [r0, #0]	@ ChanID, <variable>.s32ChanID
	ldr	r0, [r5, r4, asl #2]	@ tmp408, s_pstVfmwChan
	strb	r9, [r0, r3]	@ prephitmp.4309, <variable>.FspInst.s32InstID
	ldr	lr, [r7, #0]	@, <variable>.eAdapterType
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	str	lr, [r0, #20]	@, <variable>.eAdapterType
	mov	r0, #19	@,
	ldr	lr, [r5, r4, asl #2]	@, s_pstVfmwChan
	str	r0, [lr, #880]	@, <variable>.eVidStd
	ldr	lr, [r5, r4, asl #2]	@, s_pstVfmwChan
	str	r0, [lr, ip]	@, <variable>.stSynCtx.eVidStd
	ldr	lr, [sp, #120]	@, %sfp
	ldr	r0, [r5, r4, asl #2]	@, s_pstVfmwChan
	add	ip, r0, #1632	@ tmp428,,
	str	ip, [lr, #236]	@ tmp428, s_SmIIS.pSmInstArray
	ldr	ip, [sp, #116]	@, %sfp
	str	r4, [r0, ip]	@ ChanID, <variable>.SmInstArray.InstID
	ldr	lr, [sp, #112]	@, %sfp
	ldr	ip, [r5, r4, asl #2]	@ temp.4338, s_pstVfmwChan
	add	r0, ip, #181248	@ tmp433, temp.4338,
	add	r0, r0, #512	@ tmp433, tmp433,
	str	r0, [lr, r4, asl #2]	@ tmp433, s_pFspInst
	strb	r9, [ip, r3]	@ prephitmp.4309, <variable>.FspInst.s32InstID
	ldr	r0, [fp, #532]	@ tmp444, g_ChanTick
	ldr	r3, [r5, r4, asl #2]	@ tmp437, s_pstVfmwChan
	str	r0, [r3, r1]	@ tmp444, <variable>.u32ChanTick
	ldr	fp, [r2, #4]	@ <variable>.s32DnrEnable, <variable>.s32DnrEnable
	ldr	r9, [r5, r4, asl #2]	@ tmp446, s_pstVfmwChan
	str	fp, [r9, #1604]	@ <variable>.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	ldr	r3, [r7, #140]	@ D.37567, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	cmp	r3, #0	@ D.37567,
	bne	.L1215	@,
	ldr	fp, [r6, r4, asl #2]	@ tmp455, s_pstVfmwChan
	str	r3, [fp, #1608]	@ D.37567, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r9, [r6, r4, asl #2]	@ tmp458, s_pstVfmwChan
	str	r3, [r9, #1612]	@ D.37567, <variable>.stSynExtraData.s32DSDThrHeight
.L1216:
	mov	r2, #0	@ s32i,
	mov	r9, #-2147483648	@ tmp626,
	mov	r3, r2	@ tmp625, s32i
.L1217:
	ldr	r6, [r5, r4, asl #2]	@ tmp479, s_pstVfmwChan
	mov	lr, r2, asl #4	@ tmp481, s32i,
	add	r0, r2, #13504	@ tmp494, s32i,
	add	r2, r2, #1	@ tmp627, s32i,
	add	ip, lr, r6	@ tmp482, tmp481, tmp479
	add	r0, r0, #23	@ tmp494, tmp494,
	add	fp, ip, #216064	@ tmp483, tmp482,
	mov	ip, r2, asl #4	@ tmp632, tmp627,
	add	r6, fp, #360	@ tmp483, tmp483,
	add	r1, r2, #13504	@ tmp642, tmp627,
	add	r1, r1, #23	@ tmp642, tmp642,
	add	r2, r2, #1	@ s32i, tmp627,
	str	r3, [r6, #0]	@ tmp625, <variable>.eFrameState
	cmp	r2, #64	@ s32i,
	ldr	fp, [r5, r4, asl #2]	@ tmp486, s_pstVfmwChan
	movw	r6, #:lower16:.LANCHOR0	@ tmp629,
	movt	r6, #:upper16:.LANCHOR0	@ tmp629,
	add	lr, lr, fp	@ tmp489, tmp481, tmp486
	add	fp, lr, #216064	@ tmp490, tmp489,
	add	lr, fp, #360	@ tmp490, tmp490,
	str	r9, [lr, #4]	@ tmp626, <variable>.s32FrameAddr
	ldr	fp, [r5, r4, asl #2]	@ tmp493, s_pstVfmwChan
	str	r3, [fp, r0, asl #4]	@ tmp625, <variable>.s32FrameSize
	ldr	lr, [r5, r4, asl #2]	@ tmp498, s_pstVfmwChan
	add	fp, lr, r0, asl #4	@, tmp503, tmp498, tmp494,
	str	r3, [fp, #4]	@ tmp625, <variable>.s32UsingCount
	ldr	lr, [r5, r4, asl #2]	@ tmp630, s_pstVfmwChan
	add	r0, ip, lr	@ tmp633, tmp632, tmp630
	add	fp, r0, #216064	@ tmp634, tmp633,
	add	lr, fp, #360	@ tmp634, tmp634,
	str	r3, [lr, #0]	@ tmp625, <variable>.eFrameState
	ldr	r0, [r5, r4, asl #2]	@ tmp636, s_pstVfmwChan
	add	ip, ip, r0	@ tmp637, tmp632, tmp636
	add	fp, ip, #216064	@ tmp638, tmp637,
	add	lr, fp, #360	@ tmp638, tmp638,
	str	r9, [lr, #4]	@ tmp626, <variable>.s32FrameAddr
	ldr	ip, [r5, r4, asl #2]	@ tmp640, s_pstVfmwChan
	str	r3, [ip, r1, asl #4]	@ tmp625, <variable>.s32FrameSize
	ldr	r0, [r5, r4, asl #2]	@ tmp643, s_pstVfmwChan
	add	r1, r0, r1, asl #4	@, tmp645, tmp643, tmp642,
	str	r3, [r1, #4]	@ tmp625, <variable>.s32UsingCount
	bne	.L1217	@,
	ldr	r2, [r6, r4, asl #2]	@ tmp509, s_pstVfmwChan
	mov	r1, #16	@,
	add	r3, r2, #217088	@, tmp509,
	add	r0, r3, #360	@,,
	bl	__memzero	@
	ldr	fp, [r6, r4, asl #2]	@ temp.4352, s_pstVfmwChan
	mov	r0, #31	@,
	movw	r1, #:lower16:.LC163	@,
	movt	r1, #:upper16:.LC163	@,
	ldr	ip, [fp, #1612]	@ <variable>.stSynExtraData.s32DSDThrHeight, <variable>.stSynExtraData.s32DSDThrHeight
	ldr	r2, [fp, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r3, [fp, #1608]	@ <variable>.stSynExtraData.s32DSDThrWidth, <variable>.stSynExtraData.s32DSDThrWidth
	str	ip, [sp, #0]	@ <variable>.stSynExtraData.s32DSDThrHeight,
	ldr	r9, [fp, #1588]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum
	add	fp, sp, #64	@ tmp519,,
	str	r9, [sp, #4]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.DnrNum,
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	add	ip, sp, #240	@ tmp517,,
	mov	lr, sp	@ tmp516,
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp647,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp516,,,,
	mov	r9, lr	@ tmp649, tmp516
	ldmia	ip!, {r0, r1, r2, r3}	@ tmp648,,,,
	mov	lr, ip	@ tmp650, tmp648
	stmia	r9!, {r0, r1, r2, r3}	@ tmp649,,,,
	mov	ip, r9	@ tmp651, tmp649
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp650,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp651,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp650,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp651,,,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp615,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp519,,,,
	mov	r1, r8	@, eCapLevel
	ldr	r2, [sp, #108]	@, %sfp
	mov	r0, r4	@, ChanID
	mov	r3, r7	@, pChanOption
	bl	VCTRL_ConfigMemInfo	@
	cmp	r0, #0	@,
	bne	.L1218	@,
	ldr	r1, [r6, r4, asl #2]	@ tmp522, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r4, [r1, #140]	@ ChanID, <variable>.s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1253	@,
	ldr	r3, [r6, r4, asl #2]	@ temp.4354, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1220	@,
	ldr	lr, [r3, #236]	@ D.37592, <variable>.s32OffLineDnrMemAddr
	mov	r0, lr	@, D.37592
	str	lr, [sp, #496]	@ D.37592, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6, r4, asl #2]	@ tmp527, s_pstVfmwChan
	str	r0, [sp, #500]	@, DnrMem.VirAddr
	mov	r0, r4	@, ChanID
	ldr	ip, [r3, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	ip, [sp, #504]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1221	@,
	ldr	r3, [r7, #16]	@, <variable>.s32MaxHeight
	mov	r0, r4	@, ChanID
	add	r1, sp, #496	@,,
	ldr	r2, [r7, #12]	@, <variable>.s32MaxWidth
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1254	@,
.L1221:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1255	@,
.L1220:
	mov	r0, r4	@, ChanID
	bl	SM_ClearInst	@
	ldr	r3, [r5, r4, asl #2]	@ tmp535, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #204]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	ip, r2, #331776	@, <variable>.stChanMem_ctx.VirAddr,
	add	r1, ip, #1520	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	r1, [r5, r4, asl #2]	@ tmp540, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	mov	r2, #1	@ tmp541,
	str	r2, [r1, #4]	@ tmp541, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1262	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1156	@
.L1215:
	rsb	fp, r3, r3, asl #3	@, tmp465, D.37567, D.37567,
	movw	r3, #:lower16:CapItem	@ tmp462,
	movt	r3, #:upper16:CapItem	@ tmp462,
	ldr	r9, [r6, r4, asl #2]	@ tmp461, s_pstVfmwChan
	ldr	lr, [r3, fp, asl #2]	@ tmp468, CapItem
	str	lr, [r9, #1608]	@ tmp468, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r2, [r7, #140]	@ <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	r1, [r6, r4, asl #2]	@ tmp470, s_pstVfmwChan
	rsb	ip, r2, r2, asl #3	@, tmp475, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r6, ip, #1	@ tmp476, tmp475,
	ldr	r0, [r3, r6, asl #2]	@ tmp477, CapItem
	str	r0, [r1, #1612]	@ tmp477, <variable>.stSynExtraData.s32DSDThrHeight
	b	.L1216	@
.L1254:
	movw	r1, #:lower16:.LC165	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC165	@,
	bl	dprint_vfmw	@
.L1218:
	mov	r0, r4	@, ChanID
	add	r6, sp, #132	@ tmp559,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r5, r4, asl #2]	@ tmp545, s_pstVfmwChan
	movw	r1, #:lower16:217488	@ tmp555,
	movt	r1, #:upper16:217488	@ tmp555,
	add	fp, r3, #104	@, tmp545,
	add	r2, r3, #152	@ tmp561, tmp545,
	ldr	r0, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r7, r3, #200	@ tmp566, tmp545,
	str	fp, [sp, #108]	@, %sfp
	add	r8, r3, #168	@ tmp571, tmp545,
	add	r9, r3, #184	@ tmp576, tmp545,
	add	ip, r3, #217088	@ tmp587, tmp545,
	str	r0, [sp, #204]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r0, sp, #212	@,,
	str	r0, [sp, #96]	@, %sfp
	add	r0, sp, #224	@,,
	str	r0, [sp, #92]	@, %sfp
	add	lr, sp, #180	@ tmp564,,
	ldr	r0, [r3, #216]	@, <variable>.s32SelfAllocChanMem_vdh
	add	sl, sp, #148	@ tmp569,,
	add	fp, sp, #164	@ tmp574,,
	add	ip, ip, #404	@ tmp587, tmp587,
	str	r0, [sp, #196]	@, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	str	r0, [sp, #200]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #208]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp561,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp559,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp566,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp564,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp571,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp569,,,,
	ldr	lr, [sp, #92]	@, %sfp
	ldmia	r9, {r0, r1, r2, r3}	@ tmp576,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp574,,,,
	ldr	fp, [sp, #108]	@, %sfp
	ldmia	fp, {r0, r1, r2}	@,,,
	ldr	fp, [sp, #96]	@, %sfp
	stmia	fp, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp587,,,,
	mov	ip, #0	@ tmp589,
	str	ip, [r5, r4, asl #2]	@ tmp589, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1262	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	mov	r1, r6	@, tmp559
	mvn	r4, #0	@ ChanID,
	bl	VCTRL_FreeChanResource	@
	b	.L1156	@
.L1244:
	ldr	r9, [sp, #456]	@ DetailMemSize$ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	add	r4, sp, #416	@ tmp241,,
	ldr	r2, [sp, #452]	@, DetailMemSize.ScdDetailMem
	mov	r1, #16	@,
	mov	r0, r4	@, tmp241
	ldr	fp, [sp, #448]	@ DetailMemSize$VdhDetailMem, DetailMemSize.VdhDetailMem
	str	r2, [sp, #112]	@, %sfp
	bl	__memzero	@
	mov	r1, r6	@, D.37535
	mov	r2, r9	@, DetailMemSize$ChanCtxDetailMem
	movw	r0, #:lower16:.LC150	@,
	mov	r3, r4	@, tmp241
	movt	r0, #:upper16:.LC150	@,
	mov	r6, #1	@ tmp244,
	str	r6, [sp, #0]	@ tmp244,
	bl	MEM_AllocMemBlock	@
	subs	r9, r0, #0	@ D.45063,
	bne	.L1256	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #424]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, r9	@, D.45063
	mov	r2, fp	@, DetailMemSize$VdhDetailMem
	movw	r0, #:lower16:.LC152	@,
	mov	r3, r4	@, tmp241
	str	ip, [sp, #272]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	movt	r0, #:upper16:.LC152	@,
	ldr	ip, [sp, #420]	@ MemRecord.VirAddr, MemRecord.VirAddr
	str	r9, [sp, #0]	@ D.45063,
	str	r6, [sp, #488]	@ tmp244, ChanMemFlag.SelfAllocChanMem_ctx
	str	ip, [sp, #276]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	ip, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #280]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	r9, r0, #0	@ D.45056,
	bne	.L1257	@,
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [sp, #424]	@ temp.4382, MemRecord.PhyAddr
	ldr	r3, [sp, #420]	@ temp.4383, MemRecord.VirAddr
	cmp	r1, #2	@ <variable>.Purpose,
	ldr	r0, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #240]	@ temp.4382, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r3, [sp, #244]	@ temp.4383, ChanMemDetail.ChanMemVdh.VirAddr
	str	r0, [sp, #248]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	r6, [sp, #480]	@ tmp244, ChanMemFlag.SelfAllocChanMem_vdh
	beq	.L1174	@,
	mov	r1, r9	@, D.45056
	ldr	r2, [sp, #112]	@, %sfp
	mov	r3, r4	@, tmp241
	movw	r0, #:lower16:.LC154	@,
	movt	r0, #:upper16:.LC154	@,
	str	r9, [sp, #0]	@ D.45056,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1258	@,
	ldr	r2, [sp, #428]	@, MemRecord.Length
	ldr	r0, [sp, #424]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #420]	@, MemRecord.VirAddr
	bl	MEM_AddMemRecord	@
	ldr	r2, [sp, #424]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r9, [sp, #420]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #428]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #256]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r9, [sp, #260]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r3, [sp, #264]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	r6, [sp, #484]	@ tmp244, ChanMemFlag.SelfAllocChanMem_scd
	b	.L1170	@
.L1243:
	add	lr, r7, #72	@ tmp218, pChanOption,
	add	r4, sp, #256	@,,
	add	fp, r7, #104	@, pChanOption,
	add	ip, sp, #400	@ tmp217,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp218,,,,
	str	r4, [sp, #84]	@, %sfp
	str	fp, [sp, #112]	@, %sfp
	add	r6, sp, #240	@ tmp219,,
	ldr	r4, [sp, #456]	@, DetailMemSize.ChanCtxDetailMem
	add	r9, r7, #88	@ tmp222, pChanOption,
	ldr	fp, [sp, #452]	@, DetailMemSize.ScdDetailMem
	add	lr, sp, #384	@ tmp221,,
	str	r4, [sp, #124]	@, %sfp
	add	r4, sp, #368	@ tmp225,,
	str	fp, [sp, #120]	@, %sfp
	add	fp, sp, #272	@ tmp227,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp217,,,,
	ldr	r3, [sp, #448]	@, DetailMemSize.VdhDetailMem
	str	r3, [sp, #116]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@ tmp217,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp219,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp222,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp221,,,,
	ldr	lr, [sp, #84]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	ldr	ip, [sp, #112]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp225,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp227,,,,
	ldr	r2, [sp, #276]	@ ChanMemDetail.ChanMemCtx.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	cmp	r2, #0	@ ChanMemDetail.ChanMemCtx.VirAddr,
	beq	.L1164	@,
	ldr	r1, [sp, #280]	@ ChanMemDetail.ChanMemCtx.Length, ChanMemDetail.ChanMemCtx.Length
	ldr	r0, [sp, #124]	@, %sfp
	cmp	r0, r1	@, ChanMemDetail.ChanMemCtx.Length
	bgt	.L1164	@,
	ldr	r2, [sp, #260]	@ ChanMemDetail.ChanMemScd.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	cmp	r2, #0	@ ChanMemDetail.ChanMemScd.VirAddr,
	beq	.L1166	@,
	ldr	r3, [sp, #264]	@ ChanMemDetail.ChanMemScd.Length, ChanMemDetail.ChanMemScd.Length
	ldr	ip, [sp, #120]	@, %sfp
	cmp	ip, r3	@, ChanMemDetail.ChanMemScd.Length
	ble	.L1167	@,
.L1166:
	ldr	r0, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r0, #1	@ <variable>.Purpose,
	beq	.L1259	@,
.L1167:
	ldr	r1, [sp, #244]	@ D.45017, ChanMemDetail.ChanMemVdh.VirAddr
	cmp	r1, #0	@ D.45017,
	beq	.L1168	@,
	ldr	r2, [sp, #248]	@ D.45016, ChanMemDetail.ChanMemVdh.Length
	ldr	lr, [sp, #116]	@, %sfp
	cmp	lr, r2	@, D.45016
	bgt	.L1168	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r6, [r7, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r6, #2	@ <variable>.Purpose,
	beq	.L1170	@,
	add	r0, sp, #256
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	b	.L1170	@
.L1246:
	mov	r0, fp	@, tmp276
	movw	r1, #:lower16:.LC156	@,
	movw	r2, #1930	@,
	movt	r1, #:upper16:.LC156	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1255:
	movw	r1, #:lower16:.LC166	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC166	@,
	bl	dprint_vfmw	@
	b	.L1218	@
.L1253:
	movw	r1, #:lower16:.LC164	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC164	@,
	bl	dprint_vfmw	@
	b	.L1218	@
.L1252:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC157	@,
	movw	r2, #1946	@,
	movt	r1, #:upper16:.LC157	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1174:
	str	r2, [sp, #256]	@ temp.4382, ChanMemDetail.ChanMemScd.PhyAddr
	str	r3, [sp, #260]	@ temp.4383, ChanMemDetail.ChanMemScd.VirAddr
	str	r9, [sp, #264]	@ D.45056, ChanMemDetail.ChanMemScd.Length
	b	.L1170	@
.L1248:
	ldr	r2, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r2, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1191	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1191:
	ldr	lr, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	lr, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1192	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1192:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC155	@,
	movw	r2, #2045	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1189:
	ldr	lr, [sp, #240]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r3, #0	@ tmp327,
	ldr	r2, [sp, #244]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r3, [sp, #264]	@ tmp327, ChanMemDetail.ChanMemScd.Length
	str	lr, [sp, #256]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r2, [sp, #260]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	b	.L1193	@
.L1164:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC147	@,
	movw	r2, #1812	@,
	movt	r1, #:upper16:.LC147	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1258:
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	mvn	r4, #0	@ ChanID,
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r6	@, tmp244
	movw	r1, #:lower16:.LC155	@,
	movw	r2, #1896	@,
	movt	r1, #:upper16:.LC155	@,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1257:
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	mvn	r4, #0	@ ChanID,
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mov	r0, r6	@, tmp244
	movw	r1, #:lower16:.LC153	@,
	movw	r2, #1876	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1256:
	mov	r0, r6	@, tmp244
	movw	r1, #:lower16:.LC151	@,
	movw	r2, #1860	@,
	movt	r1, #:upper16:.LC151	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1188:
	add	r3, r7, #88	@ tmp329, pChanOption,
	ldr	fp, [r7, #4]	@ temp.4423, <variable>.Purpose
	add	lr, sp, #320	@ tmp328,,
	add	ip, sp, #256	@ tmp330,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp329,,,,
	cmp	fp, #2	@ temp.4423,
	stmia	lr, {r0, r1, r2, r3}	@ tmp328,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp330,,,,
	beq	.L1193	@,
	ldr	r1, [sp, #260]	@ D.45136, ChanMemDetail.ChanMemScd.VirAddr
	cmp	r1, #0	@ D.45136,
	beq	.L1194	@,
	ldr	r2, [sp, #264]	@ prephitmp.4424, ChanMemDetail.ChanMemScd.Length
	ldr	r0, [sp, #112]	@, %sfp
	cmp	r0, r2	@, prephitmp.4424
	ble	.L1195	@,
.L1194:
	cmp	fp, #1	@ temp.4423,
	ldrne	r2, [sp, #264]	@ prephitmp.4424, ChanMemDetail.ChanMemScd.Length
	beq	.L1260	@,
.L1195:
	ldr	r0, [sp, #256]	@, ChanMemDetail.ChanMemScd.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1193	@
.L1260:
	ldr	r4, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1197	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1197:
	ldr	r1, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1198	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1198:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC148	@,
	movw	r2, #2084	@,
	movt	r1, #:upper16:.LC148	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1249:
	ldr	r3, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r3, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1202	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1202:
	ldr	r0, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1203	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1203:
	ldr	r4, [sp, #484]	@ ChanMemFlag.SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_scd,
	bne	.L1204	@,
	ldr	r0, [sp, #256]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r1, [sp, #260]	@, ChanMemDetail.ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #256
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1204:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC160	@,
	movw	r2, #2136	@,
	movt	r1, #:upper16:.LC160	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1200:
	ldr	lr, [sp, #240]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r3, #0	@ tmp352,
	ldr	ip, [sp, #244]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r3, [sp, #296]	@ tmp352, ChanMemDetail.ChanMemPmv.Length
	str	lr, [sp, #288]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	ip, [sp, #292]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	b	.L1170	@
.L1251:
	ldr	r4, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1187	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	ldr	r3, [sp, #248]	@ prephitmp.4311, ChanMemDetail.ChanMemVdh.Length
.L1187:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC158	@,
	movw	r2, #2002	@,
	movt	r1, #:upper16:.LC158	@,
	str	fp, [sp, #0]	@ DetailMemSize$VdhDetailMem,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1168:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC149	@,
	movw	r2, #1827	@,
	movt	r1, #:upper16:.LC149	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1247:
	ldr	r4, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1184	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1184:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC153	@,
	movw	r2, #1979	@,
	movt	r1, #:upper16:.LC153	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1259:
	movw	r1, #:lower16:.LC148	@,
	movw	r2, #1819	@,
	movt	r1, #:upper16:.LC148	@,
	mvn	r4, #0	@ ChanID,
	bl	dprint_vfmw	@
	b	.L1156	@
.L1199:
	add	r3, r7, #120	@ tmp354, pChanOption,
	ldr	r4, [r7, #4]	@ temp.4450, <variable>.Purpose
	add	lr, sp, #304	@ tmp353,,
	add	ip, sp, #288	@ tmp355,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp354,,,,
	cmp	r4, #2	@ temp.4450,
	stmia	lr, {r0, r1, r2, r3}	@ tmp353,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp355,,,,
	beq	.L1170	@,
	ldr	r1, [sp, #292]	@ D.45174, ChanMemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ D.45174,
	beq	.L1205	@,
	ldr	r2, [sp, #296]	@ prephitmp.4451, ChanMemDetail.ChanMemPmv.Length
	cmp	r2, r6	@ prephitmp.4451, DetailMemSize$PmvDetailMem
	bge	.L1206	@,
.L1205:
	cmp	r4, #1	@ temp.4450,
	ldrne	r2, [sp, #296]	@ prephitmp.4451, ChanMemDetail.ChanMemPmv.Length
	beq	.L1261	@,
.L1206:
	ldr	r0, [sp, #288]	@, ChanMemDetail.ChanMemPmv.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1170	@
.L1261:
	ldr	r0, [sp, #488]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L1208	@,
	ldr	r0, [sp, #272]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #276]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #272
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1208:
	ldr	r4, [sp, #480]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r4, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L1209	@,
	ldr	r0, [sp, #240]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #244]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #240
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1209:
	ldr	r1, [sp, #484]	@ ChanMemFlag.SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_scd,
	bne	.L1210	@,
	ldr	r0, [sp, #256]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r1, [sp, #260]	@, ChanMemDetail.ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #256
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L1210:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC161	@,
	movw	r2, #2181	@,
	movt	r1, #:upper16:.LC161	@,
	bl	dprint_vfmw	@
	mvn	r4, #0	@ ChanID,
	b	.L1156	@
.L1263:
	.align	2
.L1262:
	.word	.LANCHOR0+520
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
.LFB1686:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #24	@ eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r0	@ eCapLevel, eCapLevel
	.pad #220
	sub	sp, sp, #220	@,,
	mov	r8, r1	@ pChanMem, pChanMem
	bhi	.L1277	@,
	add	r6, sp, #8	@ tmp234,,
	add	r5, sp, #176	@ tmp235,,
	mov	r1, #152	@,
	add	r7, sp, #160	@ tmp232,,
	mov	r0, r6	@, tmp234
	bl	__memzero	@
	mov	r0, r5	@, tmp235
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r7	@, tmp232
	mov	r1, #16	@,
	bl	__memzero	@
	sub	r0, r4, #18	@ D.41507, eCapLevel,
	cmp	r0, #7	@ D.41507,
	mov	r2, r4, asl #3	@ tmp231, eCapLevel,
	rsb	r1, r4, r2	@ tmp154, eCapLevel, tmp231
	mov	lr, #1	@ tmp149,
	add	ip, r1, #1	@ tmp162, tmp154,
	str	lr, [sp, #12]	@ tmp149, stChanOption.Purpose
	movw	r3, #:lower16:CapItem	@ tmp233,
	mov	lr, #2	@ tmp150,
	movt	r3, #:upper16:CapItem	@ tmp233,
	str	lr, [sp, #16]	@ tmp150, stChanOption.MemAllocMode
	mov	lr, #32	@ tmp165,
	str	lr, [sp, #32]	@ tmp165, stChanOption.s32MaxSpsNum
	mov	lr, #256	@ tmp166,
	str	lr, [sp, #36]	@ tmp166, stChanOption.s32MaxPpsNum
	movwls	lr, #:lower16:.LANCHOR1	@ tmp167,
	movtls	lr, #:upper16:.LANCHOR1	@ tmp167,
	addls	r0, lr, r0, asl #2	@, tmp170, tmp167, D.41507,
	ldr	ip, [r3, ip, asl #2]	@ tmp163, CapItem
	ldr	r1, [r3, r1, asl #2]	@ tmp157, CapItem
	movhi	lr, #6	@ MinDispFspNum,
	ldrls	lr, [r0, #392]	@ MinDispFspNum, CSWTCH.890
	rsb	r0, r4, r2	@ tmp176, eCapLevel, tmp231
	str	ip, [sp, #24]	@ tmp163, stChanOption.s32MaxHeight
	add	ip, r3, r0, asl #2	@, tmp178, tmp233, tmp176,
	rsb	r0, r4, r2	@ tmp189, eCapLevel, tmp231
	str	r1, [sp, #20]	@ tmp157, stChanOption.s32MaxWidth
	mov	r1, #136	@ tmp164,
	str	r1, [sp, #28]	@ tmp164, stChanOption.s32MaxSliceNum
	mov	r2, #1	@ tmp182,
	ldr	r1, [ip, #12]	@ D.36939, CapItem
	add	ip, r3, r0, asl #2	@, tmp191, tmp233, tmp189,
	str	lr, [sp, #68]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r0, r4	@, eCapLevel
	cmp	lr, r1	@ MinDispFspNum, D.36939
	ldr	r3, [ip, #24]	@ tmp193, CapItem
	rsblt	r1, lr, r1	@ tmp181, MinDispFspNum, D.36939
	str	r2, [sp, #48]	@ tmp182, stChanOption.s32SupportBFrame
	movge	r1, #1	@ tmp180,
	str	r2, [sp, #52]	@ tmp182, stChanOption.s32SupportH264
	cmp	r4, #24	@ eCapLevel,
	str	r1, [sp, #40]	@ tmp181, stChanOption.s32MaxRefFrameNum
	streq	r2, [sp, #68]	@ tmp182, stChanOption.s32DisplayFrameNum
	mov	r1, #0	@ tmp194,
	str	r2, [sp, #60]	@ tmp182, stChanOption.s32ReRangeEn
	add	r2, sp, #192	@,,
	streq	r1, [sp, #40]	@ tmp194, stChanOption.s32MaxRefFrameNum
	str	r1, [sp, #72]	@ tmp194, stChanOption.s32SlotWidth
	str	r1, [sp, #76]	@ tmp194, stChanOption.s32SlotHeight
	add	r1, sp, #204	@,,
	str	r3, [sp, #64]	@ tmp193, stChanOption.s32SCDBufSize
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L1278	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L1273	@,
	ldr	sl, [r8, #8]	@ D.36953, <variable>.Length
	cmp	sl, #0	@ D.36953,
	beq	.L1273	@,
	ldr	lr, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	lr, #0	@ <variable>.PhyAddr,
	beq	.L1274	@,
	ldr	ip, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L1274	@,
	ldr	r0, [sp, #204]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [sp, #192]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r2, r0	@ tmp203, ScdChanMemSize, VdmChanMemSize
	cmp	sl, r3	@ D.36953, tmp203
	blt	.L1274	@,
	ldr	r8, [sp, #196]	@ D.36966, ScdChanMemSize
	add	r9, sp, #96	@ tmp215,,
	str	lr, [sp, #160]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	add	fp, sp, #80	@ tmp217,,
	str	ip, [sp, #164]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	lr, lr, r8	@ tmp210, <variable>.PhyAddr, D.36966
	str	r8, [sp, #168]	@ D.36966, scd_MemRecord.Length
	add	ip, ip, r8	@ tmp212, <variable>.VirAddr, D.36966
	ldmia	r7, {r0, r1, r2, r3}	@ tmp232,,,,
	str	lr, [sp, #176]	@ tmp210, vdh_MemRecord.PhyAddr
	str	ip, [sp, #180]	@ tmp212, vdh_MemRecord.VirAddr
	rsb	sl, r8, sl	@ tmp214, D.36966, D.36953
	str	sl, [sp, #184]	@ tmp214, vdh_MemRecord.Length
	mov	lr, #3	@ tmp206,
	mov	ip, #1	@ OneChanMemFlag,
	str	lr, [sp, #16]	@ tmp206, stChanOption.MemAllocMode
	stmia	r9, {r0, r1, r2, r3}	@ tmp215,,,,
	ldmia	r5, {r0, r1, r2, r3}	@ tmp235,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp217,,,,
	b	.L1275	@
.L1273:
	mov	ip, #0	@ OneChanMemFlag,
.L1275:
	mov	r0, r4	@, eCapLevel
	mov	r1, r6	@, tmp234
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.36920,
.L1266:
	add	sp, sp, #220	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1277:
	mov	r2, r0	@, eCapLevel
	movw	r1, #:lower16:.LC168	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC168	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36920,
	b	.L1266	@
.L1274:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC170	@,
	movt	r1, #:upper16:.LC170	@,
	bl	dprint_vfmw	@
	ldr	ip, [r8, #8]	@ <variable>.Length, <variable>.Length
	ldr	r2, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #1	@,
	ldr	r3, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	movw	r1, #:lower16:.LC171	@,
	movt	r1, #:upper16:.LC171	@,
	str	ip, [sp, #0]	@ <variable>.Length,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #204]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r2, [sp, #192]	@ ScdChanMemSize, ScdChanMemSize
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC172	@,
	movt	r1, #:upper16:.LC172	@,
	add	r2, r2, r3	@, ScdChanMemSize, VdmChanMemSize
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36920,
	b	.L1266	@
.L1278:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC169	@,
	movt	r1, #:upper16:.LC169	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36920,
	b	.L1266	@
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_PartitionMemForStdUser
	.type	VCTRL_PartitionMemForStdUser, %function
VCTRL_PartitionMemForStdUser:
	.fnstart
.LFB1682:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r1, #31	@ MaxWidth,
	cmpgt	r2, #31	@, MaxHeight,
	.pad #52
	sub	sp, sp, #52	@,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	mov	r6, r1	@ MaxWidth, MaxWidth
	mov	r8, r2	@ MaxHeight, MaxHeight
	movgt	r1, #0	@, tmp160
	movle	r1, #1	@, tmp160
	mov	r7, r0	@ ChanID, ChanID
	mov	r9, r3	@ MemAddr, MemAddr
	ldr	r2, [sp, #88]	@ MemSize, MemSize
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ble	.L1295	@,
	cmp	r3, #0	@ MemAddr,
	cmpne	r2, #0	@, MemSize,
	movne	sl, #0	@, tmp168
	moveq	sl, #1	@, tmp168
	beq	.L1296	@,
	add	fp, sp, #8	@ tmp170,,
	mov	r1, #36	@,
	str	r2, [sp, #4]	@,
	mov	r0, fp	@, tmp170
	bl	__memzero	@
	mov	r1, fp	@, tmp170
	mov	r0, r7	@, ChanID
	str	r6, [sp, #36]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	str	r6, [sp, #20]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	mov	r3, #1	@,
	str	r8, [sp, #40]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	sl, [sp, #8]	@ tmp168, FspInstCfg.s32DispLoopEnable
	strb	sl, [sp, #10]	@ tmp168, FspInstCfg.s32RprEnable
	str	r8, [sp, #24]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	strb	sl, [sp, #13]	@ tmp168, FspInstCfg.s32ExpectedDecFsNum
	strb	sl, [sp, #15]	@ tmp168, FspInstCfg.s32ExpectedDispFsNum
	strb	sl, [sp, #16]	@ tmp168, FspInstCfg.s32ExpectedPmvNum
	strb	r3, [sp, #12]	@, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	ldr	r2, [sp, #4]	@,
	subs	r6, r0, #0	@ D.36785,
	bne	.L1283	@,
	mov	r1, r9	@, MemAddr
	mov	r0, r7	@, ChanID
	add	r3, sp, #44	@,,
	bl	FSP_PartitionFsMemory	@
	subs	r8, r0, #0	@ Ret,
	bne	.L1297	@,
	mov	r0, r7	@, ChanID
	add	r1, r4, #548	@, tmp153,
	bl	FSP_GetInstInfo	@
	ldrb	r1, [r4, #549]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r0, r1	@ D.36795, FspInstInfo.s32DecFsNum
	cmp	r0, #16	@ D.36795,
	movge	r0, #16	@ D.36795,
	str	r0, [r5, #820]	@ D.36795, <variable>.s32UsrdecFrameNum
	cmp	r0, #2	@ D.36795,
	ble	.L1298	@,
	ldr	r2, [r4, #3884]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r5, #752	@, pstChan,
	mov	r1, #64	@,
	str	r2, [r5, #816]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r5, #688	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r6, [r5, #820]	@ D.36794, <variable>.s32UsrdecFrameNum
	cmp	r6, #0	@ D.36794,
	ble	.L1286	@,
	ldr	ip, [r4, #568]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #1	@ i,
	cmp	r2, r6	@ i, D.36794
	sub	lr, r6, #1	@ tmp203, D.36794,
	and	r0, lr, r2	@ tmp205, tmp203,
	add	r1, r5, #4	@ ivtmp.4542, pstChan,
	str	ip, [r5, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r3, r4, #600	@ ivtmp.4539, tmp153,
	bge	.L1286	@,
	cmp	r0, #0	@ tmp205,
	beq	.L1287	@,
	ldr	r0, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r2, #2	@ i,
	cmp	r2, r6	@ i, D.36794
	add	r3, r4, #652	@ ivtmp.4539, tmp153,
	str	r0, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r1, #4	@ ivtmp.4542, ivtmp.4542,
	bge	.L1286	@,
.L1287:
	ldr	lr, [r3, #20]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r2, r2, #2	@ i, i,
	add	r0, r1, #4	@ tmp208, ivtmp.4542,
	cmp	r2, r6	@ i, D.36794
	str	lr, [r1, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	add	r1, r0, #4	@ ivtmp.4542, tmp208,
	ldr	ip, [r3, #72]	@ <variable>.PhyAddr, <variable>.PhyAddr
	add	r3, r3, #104	@ ivtmp.4539, ivtmp.4539,
	str	ip, [r0, #752]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L1287	@,
.L1286:
	mov	r0, #0	@ D.36773,
.L1281:
	add	sp, sp, #52	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1296:
	mov	r0, r1	@, tmp160
	movw	r1, #:lower16:.LC174	@,
	movt	r1, #:upper16:.LC174	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36773,
	b	.L1281	@
.L1283:
	mov	r0, sl	@, tmp168
	movw	r1, #:lower16:.LC177	@,
	movt	r1, #:upper16:.LC177	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36773,
	b	.L1281	@
.L1297:
	mov	r0, r6	@, D.36785
	movw	r1, #:lower16:.LC175	@,
	movt	r1, #:upper16:.LC175	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36773,
	b	.L1281	@
.L1298:
	mov	r0, r8	@, Ret
	movw	r1, #:lower16:.LC176	@,
	ldr	r2, .L1299	@,
	movt	r1, #:upper16:.LC176	@,
	movw	r3, #1403	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36773,
	b	.L1281	@
.L1295:
	mov	r2, r6	@, MaxWidth
	mov	r3, r8	@, MaxHeight
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC173	@,
	movt	r1, #:upper16:.LC173	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.36773,
	b	.L1281	@
.L1300:
	.align	2
.L1299:
	.word	.LANCHOR1+424
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1713:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, #0	@ tmp206,
	.pad #172
	sub	sp, sp, #172	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r6, r1	@ pstCfg, pstCfg
	str	r7, [r1, #44]	@ tmp206, <variable>.s32VcmpEn
	bhi	.L1360	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp524,
	movt	r4, #:upper16:.LANCHOR0	@ tmp524,
	ldr	r3, [r4, r0, asl #2]	@ D.38246, s_pstVfmwChan
	cmp	r3, #0	@ D.38246,
	beq	.L1361	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L1362	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@ D.38252
	bne	.L1363	@,
	ldr	r3, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ble	.L1364	@,
.L1307:
	mvn	r0, #0	@ D.38244,
.L1303:
	add	sp, sp, #172	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L1363:
	mov	r0, r7	@, tmp206
	movw	r1, #:lower16:.LC179	@,
	movt	r1, #:upper16:.LC179	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1362:
	mov	r0, r7	@, tmp206
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3475	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC178	@,
	movt	r3, #:upper16:.LC178	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1364:
	cmp	r3, #8	@ prephitmp.4580,
	str	r0, [sp, #160]	@ D.38252, s32supportFlag
	beq	.L1365	@,
.L1308:
	cmp	r3, #9	@ prephitmp.4580,
	beq	.L1366	@,
.L1309:
	mov	r0, r5	@, ChanID
	mov	r1, r6	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r7, r0, #0	@ D.38262,
	beq	.L1367	@,
	ldr	r7, [r4, r5, asl #2]	@ prephitmp.4582, s_pstVfmwChan
	ldr	ip, [r6, #0]	@ D.38266, <variable>.eVidStd
	ldr	sl, [r7, #32]	@ D.38271, <variable>.stChanCfg.eVidStd
	cmp	ip, #4	@ D.38266,
	cmpne	ip, #14	@, D.38266,
	movne	r2, #0	@, tmp233
	moveq	r2, #1	@, tmp233
	cmp	sl, #4	@ D.38271,
	cmpne	sl, #14	@, D.38271,
	movne	r8, #0	@, tmp228
	moveq	r8, #1	@, tmp228
	cmp	r8, r2	@ tmp228, tmp233
	bne	.L1368	@,
.L1310:
	add	r0, r7, #32	@, prephitmp.4582,
	mov	r2, #72	@,
	mov	r1, r6	@, pstCfg
	add	r7, sp, #8	@ tmp362,,
	bl	memcpy	@
	ldr	ip, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	r9, [r4, r5, asl #2]	@ tmp357, s_pstVfmwChan
	mov	r1, #120	@,
	mov	r0, r7	@, tmp362
	add	r8, r6, #4	@ tmp528, pstCfg,
	add	sl, sp, #164	@ tmp381,,
	str	ip, [r9, #12]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	ldr	r3, [r4, r5, asl #2]	@ tmp360, s_pstVfmwChan
	ldr	r2, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	r9, [r4, r5, asl #2]	@ tmp364, s_pstVfmwChan
	ldr	fp, [r9, #244]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	fp, [sp, #20]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [r9, #244]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	lr, [r4, r5, asl #2]	@ tmp370, s_pstVfmwChan
	ldr	ip, [r6, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	add	r2, sp, #32	@ tmp378,,
	ldr	r9, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	movw	r3, #:lower16:269729792	@ tmp375,
	ldr	fp, [r6, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	movt	r3, #:upper16:269729792	@ tmp375,
	str	r0, [sp, #8]	@, ScdInstCfg.pBufVirAddr
	ldmia	r8, {r0, r1}	@ tmp528,,
	ldr	lr, [lr, #256]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	strb	ip, [sp, #12]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	stmia	r2, {r0, r1}	@ tmp378,,
	mov	r1, r7	@, tmp362
	mov	r0, r5	@, ChanID
	str	lr, [sp, #24]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	str	r3, [sp, #28]	@ tmp375, ScdInstCfg.RegPhyBaseAddr
	mov	lr, #0	@ tmp377,
	str	r9, [sp, #16]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	str	lr, [sp, #48]	@ tmp377, ScdInstCfg.ScdLowdlyEnable
	str	fp, [sp, #52]	@ <variable>.s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	bl	SM_Config	@
	mov	r0, sl	@, tmp381
	mov	r1, #1	@,
	bl	__memzero	@
	ldr	r7, [r6, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	cmp	r7, #0	@ <variable>.s32LowdBufEnable,
	bne	.L1369	@,
.L1333:
	ldr	r0, [r4, r5, asl #2]	@ temp.4622, s_pstVfmwChan
	mov	r2, #0	@ tmp422,
	movw	lr, #:lower16:217512	@ tmp441,
	movt	lr, #:upper16:217512	@ tmp441,
	movw	r7, #:lower16:.LANCHOR0	@ tmp386,
	movt	r7, #:upper16:.LANCHOR0	@ tmp386,
	ldr	r1, [r0, #208]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	str	r1, [r0, #1392]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	ldr	r3, [r4, r5, asl #2]	@ temp.4623, s_pstVfmwChan
	ldr	ip, [r3, #212]	@ <variable>.stChanMem_ctx.Length, <variable>.stChanMem_ctx.Length
	str	ip, [r3, #1396]	@ <variable>.stChanMem_ctx.Length, <variable>.stSynExtraData.s32ContextMemSize
	ldr	r0, [r4, r5, asl #2]	@ temp.4624, s_pstVfmwChan
	ldr	r1, [r0, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	str	r1, [r0, #912]	@ <variable>.s32VdmChanMemAddr, <variable>.stSynExtraData.s32SyntaxMemAddr
	ldr	r3, [r4, r5, asl #2]	@ temp.4625, s_pstVfmwChan
	ldr	ip, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	ip, [r3, #916]	@ <variable>.s32VdmChanMemSize, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r0, [r4, r5, asl #2]	@ temp.4626, s_pstVfmwChan
	ldr	r1, [r0, #260]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r1, [r0, #924]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	r3, [r4, r5, asl #2]	@ temp.4627, s_pstVfmwChan
	ldr	ip, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	ip, [r3, #928]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r0, [r4, r5, asl #2]	@ temp.4628, s_pstVfmwChan
	ldr	r1, [r0, #268]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	r1, [r0, #932]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	r3, [r4, r5, asl #2]	@ temp.4629, s_pstVfmwChan
	ldr	ip, [r3, #272]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	ip, [r3, #936]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r0, [r4, r5, asl #2]	@ tmp403, s_pstVfmwChan
	ldr	r1, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r1, [r0, #892]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	r3, [r4, r5, asl #2]	@ tmp406, s_pstVfmwChan
	ldr	ip, [r6, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	ip, [r3, #888]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r0, [r4, r5, asl #2]	@ tmp409, s_pstVfmwChan
	ldr	r1, [r6, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r1, [r0, #896]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r4, r5, asl #2]	@ tmp412, s_pstVfmwChan
	ldr	ip, [r6, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	ip, [r3, #900]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r0, [r4, r5, asl #2]	@ tmp415, s_pstVfmwChan
	ldr	r1, [r6, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r1, [r0, #904]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	r3, [r4, r5, asl #2]	@ tmp418, s_pstVfmwChan
	ldr	ip, [r6, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	ip, [r3, #1400]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r0, [r4, r5, asl #2]	@ tmp421, s_pstVfmwChan
	str	r2, [r0, #1616]	@ tmp422, <variable>.stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r4, r5, asl #2]	@ tmp424, s_pstVfmwChan
	ldr	r1, [r6, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r1, #1	@ <variable>.s32SupportAllP,
	movne	ip, #0	@, tmp426
	moveq	ip, #1	@, tmp426
	str	ip, [r3, #1416]	@ tmp426, <variable>.stSynExtraData.s32SupportAllP
	ldr	r0, [r4, r5, asl #2]	@ tmp428, s_pstVfmwChan
	ldr	r1, [r6, #64]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	str	r1, [r0, #1420]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r3, [r4, r5, asl #2]	@ tmp432, s_pstVfmwChan
	ldmia	r8, {r0, r1}	@ tmp528,,
	add	ip, r3, #1264	@ tmp431, tmp432,
	add	r3, ip, #12	@ tmp431, tmp431,
	stmia	r3, {r0, r1}	@ tmp431,,
	ldr	r0, [r4, r5, asl #2]	@ tmp438, s_pstVfmwChan
	str	r2, [r0, #908]	@ tmp422, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.4642, s_pstVfmwChan
	ldr	r3, [r0, lr]	@ prephitmp.4584, <variable>.stSynCtx.eVidStd
	ldr	r1, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, r1	@ prephitmp.4584, <variable>.eVidStd
	beq	.L1334	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r2, [r6, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r0, [r7, r5, asl #2]	@ prephitmp.4642, s_pstVfmwChan
	cmp	r2, #18	@ <variable>.eVidStd,
	bne	.L1354	@,
	ldr	ip, [r0, #1448]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	ldr	lr, [r0, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	cmp	ip, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	ldr	r3, [r0, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	ldrne	r1, [r0, #1456]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r2, [r0, #1460]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldreq	r1, [r0, #1508]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32SlotWidth
	ldreq	r2, [r0, #1512]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32SlotHeight
	mov	r0, r5	@, ChanID
	str	lr, [sp, #0]	@ <variable>.s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L1338	@,
	ldr	r0, [r4, r5, asl #2]	@ prephitmp.4642, s_pstVfmwChan
.L1354:
	ldr	r3, [r0, #880]	@ prephitmp.4584, <variable>.eVidStd
.L1334:
	movw	r2, #:lower16:217512	@ tmp450,
	movt	r2, #:upper16:217512	@ tmp450,
	movw	r7, #:lower16:.LANCHOR0	@ tmp451,
	movt	r7, #:upper16:.LANCHOR0	@ tmp451,
	str	r3, [r0, r2]	@ prephitmp.4584, <variable>.stSynCtx.eVidStd
	ldr	r0, [r4, r5, asl #2]	@ tmp452, s_pstVfmwChan
	ldr	r1, [r0, #248]	@ temp.4645, <variable>.s32SdecMemAddr
	mov	r0, r1	@, temp.4645
	str	r1, [sp, #144]	@ temp.4645, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, r5, asl #2]	@ tmp454, s_pstVfmwChan
	add	r1, sp, #144	@,,
	str	r0, [sp, #148]	@, stMem.VirAddr
	mov	r0, r5	@, ChanID
	ldr	r8, [r3, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r8, [sp, #152]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	r8, r0, #0	@ D.38340,
	bne	.L1307	@,
	add	sl, sp, #128	@ tmp525,,
	mov	r1, #16	@,
	mov	r0, sl	@, tmp525
	bl	__memzero	@
	ldr	r3, [r6, #0]	@ D.41544, <variable>.eVidStd
	sub	ip, r3, #10	@ tmp458, D.41544,
	cmp	ip, #2	@ tmp458,
	strhib	r8, [sp, #128]	@ D.38340, DnrChanCfgArgs.s32MirrorEn
	bhi	.L1341	@,
	ldr	lr, [r7, #16]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L1355	@,
	cmp	r3, #12	@ D.41544,
	beq	.L1355	@,
	ldr	ip, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	eor	r2, ip, #1	@ tmp470, <variable>.StdExt.Vp6Ext.bReversed,
	and	r0, r2, #1	@ tmp473, tmp470,
	strb	r0, [sp, #128]	@ tmp473, DnrChanCfgArgs.s32MirrorEn
.L1341:
	ldrsb	lr, [sp, #128]	@ DnrChanCfgArgs.s32MirrorEn, DnrChanCfgArgs.s32MirrorEn
	mov	r3, #1	@ tmp486,
	ldr	ip, [r6, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	lr, #1	@ DnrChanCfgArgs.s32MirrorEn,
	strb	ip, [sp, #129]	@ <variable>.s32VcmpEn, DnrChanCfgArgs.s32VcmpEn
	moveq	ip, #0	@ tmp480,
	streqb	ip, [sp, #129]	@ tmp480, DnrChanCfgArgs.s32VcmpEn
	ldr	ip, [r4, r5, asl #2]	@ D.41527, s_pstVfmwChan
	ldr	r0, [r6, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldr	r1, [r6, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldr	r2, [r6, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [sp, #136]	@ <variable>.s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	strb	r1, [sp, #130]	@ <variable>.s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #132]	@ <variable>.s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r3, [sp, #140]	@ tmp486, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	lr, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1344	@,
	mov	r1, sl	@, tmp525
	mov	r0, r5	@, ChanID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L1307	@,
.L1345:
	ldr	r1, [r4, r5, asl #2]	@ tmp513, s_pstVfmwChan
	movw	ip, #:lower16:s_SmIIS	@ tmp516,
	movt	ip, #:upper16:s_SmIIS	@ tmp516,
	movw	r3, #:lower16:181760	@ tmp514,
	add	r0, ip, r5, asl #2	@, tmp520, tmp516, ChanID,
	movt	r3, #:upper16:181760	@ tmp514,
	movw	lr, #:lower16:166248	@ tmp523,
	movt	lr, #:upper16:166248	@ tmp523,
	strb	r5, [r1, r3]	@ ChanID, <variable>.FspInst.s32InstID
	movw	r1, #:lower16:g_ChanCtx	@ tmp530,
	ldr	ip, [r0, #236]	@ tmp522, s_SmIIS.pSmInstArray
	movt	r1, #:upper16:g_ChanCtx	@ tmp530,
	ldr	r0, .L1379	@ tmp529,
	mov	r3, #0	@ ivtmp.4603,
	str	r5, [ip, lr]	@ ChanID, <variable>.InstID
.L1348:
	ldr	r2, [r4, r3]	@ D.38354, s_pstVfmwChan
	cmp	r2, #0	@ D.38354,
	streq	r2, [r3, r1]	@ D.38354, g_ChanCtx.PriorByChanId
	ldrne	ip, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	streq	r2, [r0, r3]	@ D.38354, PrioArray
	strne	ip, [r0, r3]	@ <variable>.s32Priority, PrioArray
	ldrne	r2, [r2, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	strne	r2, [r3, r1]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	add	r3, r3, #4	@ ivtmp.4603, ivtmp.4603,
	cmp	r3, #16	@ ivtmp.4603,
	bne	.L1348	@,
	ldr	r0, .L1379	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.38244,
	b	.L1303	@
.L1360:
	mov	r0, r7	@, tmp206
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3473	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1369:
	mov	r1, sl	@, tmp381
	mov	r0, r5	@, ChanID
	mov	r7, #1	@ tmp383,
	strb	r7, [sp, #164]	@ tmp383, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L1333	@
.L1365:
	add	r0, sp, #160	@,,
	bl	REAL8DEC_Support	@
	ldr	r0, [sp, #160]	@ s32supportFlag, s32supportFlag
	cmp	r0, #0	@ s32supportFlag,
	beq	.L1307	@,
	ldr	r3, [r6, #0]	@ prephitmp.4580, <variable>.eVidStd
	b	.L1308	@
.L1338:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC187	@,
	movt	r1, #:upper16:.LC187	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1367:
	movw	r1, #:lower16:.LC180	@,
	movt	r1, #:upper16:.LC180	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@ D.38244, D.38262
	b	.L1303	@
.L1366:
	add	r0, sp, #160	@,,
	bl	REAL9DEC_Support	@
	ldr	r1, [sp, #160]	@ s32supportFlag, s32supportFlag
	cmp	r1, #0	@ s32supportFlag,
	beq	.L1307	@,
	b	.L1309	@
.L1361:
	mov	r0, r3	@, D.38246
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #3474	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC27	@,
	movt	r3, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1368:
	ldr	lr, [r7, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	lr, #0	@ <variable>.s32OneChanMem,
	bne	.L1311	@,
	ldr	r0, .L1379+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	ldr	r9, [r6, #0]	@ D.45544, <variable>.eVidStd
	cmp	r3, #0	@ <variable>.stChanMem_scd.Length,
	beq	.L1312	@,
	ldr	r0, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
.L1312:
	ldr	r0, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	cmp	r9, #4	@ D.45544,
	cmpne	r9, #14	@, D.45544,
	movne	r9, #0	@, tmp249
	moveq	r9, #1	@, tmp249
	bne	.L1313	@,
	ldr	r1, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	mov	r9, #1	@ tmp250,
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmapCache	@
	ldr	r1, [r7, #196]	@ temp.4672, <variable>.stChanMem_scd.Length
	strb	r9, [r7, #168]	@ tmp250, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #0	@ temp.4672,
	mov	sl, r0	@ pVir_vdh,
	bne	.L1370	@,
.L1314:
	mov	r8, #0	@ pVir_scd,
.L1315:
	ldr	r0, .L1379+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, r5, asl #2]	@ tmp261, s_pstVfmwChan
	cmp	r0, #0	@ tmp261,
	beq	.L1371	@,
	cmp	sl, #0	@ pVir_vdh,
	beq	.L1317	@,
	ldr	r9, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	rsbs	r0, r8, #1	@, pVir_scd
	movcc	r0, #0	@
	cmp	r9, #0	@ <variable>.stChanMem_scd.Length,
	moveq	r0, #0	@,,
	cmp	r0, #0	@ tmp273,
	mov	r9, r0	@ tmp273,
	bne	.L1317	@,
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	subs	fp, r0, #0	@ D.45585,
	ldrne	r3, [r7, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movne	r0, r9	@, tmp273
	bne	.L1357	@,
	str	sl, [r7, #172]	@ pVir_vdh, <variable>.stChanMem_vdh.VirAddr
	mov	r1, sl	@, pVir_vdh
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r2, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_AddMemRecord	@
	subs	sl, r0, #0	@ D.45582,
	bne	.L1372	@,
	ldr	r2, [r7, #196]	@ temp.4690, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ temp.4690,
	bne	.L1373	@,
.L1321:
	ldr	r0, [r6, #0]	@ D.45527, <variable>.eVidStd
	cmp	r0, #4	@ D.45527,
	cmpne	r0, #14	@, D.45527,
	movne	r7, #0	@, tmp328
	moveq	r7, #1	@, tmp328
	bne	.L1331	@,
	ldr	r2, [r4, r5, asl #2]	@ tmp330, s_pstVfmwChan
	mov	r0, r5	@, ChanID
	add	r1, sp, #144	@,,
	ldr	ip, [r2, #248]	@ <variable>.s32SdecMemAddr, <variable>.s32SdecMemAddr
	str	ip, [sp, #144]	@ <variable>.s32SdecMemAddr, stMem.PhyAddr
	ldr	lr, [r2, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	lr, [sp, #148]	@ <variable>.s32SdecMemSize, stMem.VirAddr
	ldr	r3, [r2, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r3, [sp, #152]	@ <variable>.s32SdecMemSize, stMem.Length
	ldr	ip, [r2, #1460]	@ <variable>.stSynExtraData.stChanOption.s32MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	mov	r3, ip, asl #1	@, <variable>.stSynExtraData.stChanOption.s32MaxHeight,
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1374	@,
.L1332:
	ldr	r7, [r4, r5, asl #2]	@ prephitmp.4582, s_pstVfmwChan
	b	.L1310	@
.L1311:
	ldr	r0, .L1379+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, [r7, #156]	@, <variable>.stChanMem.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r6, #0]	@ D.45536, <variable>.eVidStd
	cmp	r1, #4	@ D.45536,
	cmpne	r1, #14	@, D.45536,
	bne	.L1323	@,
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmapCache	@
	mov	sl, r0	@ pVir,
.L1324:
	movw	r8, #:lower16:.LANCHOR0	@ tmp292,
	movt	r8, #:upper16:.LANCHOR0	@ tmp292,
	add	r0, r8, #520	@, tmp292,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, r5, asl #2]	@ temp.4660, s_pstVfmwChan
	cmp	r3, #0	@ temp.4660,
	beq	.L1375	@,
	cmp	sl, #0	@ pVir,
	beq	.L1376	@,
	ldr	r2, [r3, #196]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r3, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r3, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	subs	r9, r0, #0	@ D.45613,
	ldrne	r2, [r8, r5, asl #2]	@ D.45617, s_pstVfmwChan
	movne	r0, #0	@,
	bne	.L1359	@,
	ldr	fp, [r8, r5, asl #2]	@ temp.4704, s_pstVfmwChan
	ldr	r2, [fp, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [fp, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [fp, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_DelMemRecord	@
	subs	fp, r0, #0	@ D.45608,
	ldrne	r2, [r8, r5, asl #2]	@ temp.4706, s_pstVfmwChan
	movne	r0, r9	@, D.45613
	bne	.L1358	@,
	str	sl, [r7, #156]	@ pVir, <variable>.stChanMem.VirAddr
	mov	r1, sl	@, pVir
	ldr	lr, [r8, r5, asl #2]	@ tmp308, s_pstVfmwChan
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r2, [r7, #164]	@, <variable>.stChanMem.Length
	str	sl, [lr, #188]	@ pVir, <variable>.stChanMem_scd.VirAddr
	ldr	lr, [r8, r5, asl #2]	@ temp.4711, s_pstVfmwChan
	ldr	r3, [lr, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	ip, sl, r3	@ tmp311, pVir, <variable>.stChanMem_scd.Length
	str	ip, [lr, #172]	@ tmp311, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	subs	sl, r0, #0	@ D.45601,
	bne	.L1377	@,
	ldr	r7, [r8, r5, asl #2]	@ temp.4717, s_pstVfmwChan
	ldr	r2, [r7, #196]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_AddMemRecord	@
	subs	r7, r0, #0	@ D.45600,
	bne	.L1378	@,
	ldr	r3, [r8, r5, asl #2]	@ temp.4726, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1321	@,
	ldr	r2, [r8, r5, asl #2]	@ temp.4731, s_pstVfmwChan
	mov	r0, r7	@, D.45600
.L1358:
	ldr	lr, [r2, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	lr, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	ldr	r3, [r2, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r2, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1323:
	ldr	r0, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	ldr	r1, [r7, #164]	@, <variable>.stChanMem.Length
	bl	KernelMmap	@
	mov	sl, r0	@ pVir,
	b	.L1324	@
.L1313:
	ldr	r1, [r7, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r0, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r7, #196]	@ temp.4677, <variable>.stChanMem_scd.Length
	strb	r9, [r7, #168]	@ tmp249, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #0	@ temp.4677,
	mov	sl, r0	@ pVir_vdh,
	beq	.L1314	@,
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	strb	r9, [r7, #184]	@ tmp249, <variable>.stChanMem_scd.IsCached
	mov	r8, r0	@ pVir_scd,
	b	.L1315	@
.L1331:
	ldr	r0, [r4, r5, asl #2]	@ tmp344, s_pstVfmwChan
	ldr	r1, [r0, #236]	@ D.45515, <variable>.s32OffLineDnrMemAddr
	mov	r0, r1	@, D.45515
	str	r1, [sp, #144]	@ D.45515, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, r5, asl #2]	@ tmp346, s_pstVfmwChan
	add	r1, sp, #144	@,,
	str	r0, [sp, #148]	@, stMem.VirAddr
	mov	r0, r5	@, ChanID
	ldr	r3, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #152]	@ <variable>.s32OffLineDNRMemSize, stMem.Length
	ldr	r3, [r2, #1460]	@, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L1332	@,
	mov	r0, r7	@, tmp328
	movw	r1, #:lower16:.LC186	@,
	movt	r1, #:upper16:.LC186	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1373:
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	subs	r9, r0, #0	@ D.45579,
	ldrne	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movne	r0, sl	@, D.45582
	bne	.L1356	@,
	str	r8, [r7, #188]	@ pVir_scd, <variable>.stChanMem_scd.VirAddr
	mov	r1, r8	@, pVir_scd
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r2, [r7, #196]	@, <variable>.stChanMem_scd.Length
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L1321	@,
	ldr	r3, [r7, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	mov	r0, r9	@, D.45579
.L1356:
	str	r3, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	movw	r1, #:lower16:.LC183	@,
	ldr	r3, [r7, #188]	@, <variable>.stChanMem_scd.VirAddr
	movt	r1, #:upper16:.LC183	@,
	ldr	r2, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1372:
	ldr	r3, [r7, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	mov	r0, fp	@, D.45585
.L1357:
	str	r3, [sp, #0]	@ <variable>.stChanMem_vdh.Length,
	movw	r1, #:lower16:.LC183	@,
	ldr	r3, [r7, #172]	@, <variable>.stChanMem_vdh.VirAddr
	movt	r1, #:upper16:.LC183	@,
	ldr	r2, [r7, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1317:
	mov	r2, r5	@, ChanID
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC182	@,
	movt	r1, #:upper16:.LC182	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1371:
	movw	r1, #:lower16:.LC181	@,
	ldr	r2, .L1379+8	@,
	movt	r1, #:upper16:.LC181	@,
	movw	r3, #3361	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1370:
	ldr	r0, [r7, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmapCache	@
	strb	r9, [r7, #184]	@ tmp250, <variable>.stChanMem_scd.IsCached
	mov	r8, r0	@ pVir_scd,
	b	.L1315	@
.L1376:
	mov	r0, sl	@, pVir
	mov	r2, r5	@, ChanID
	movw	r1, #:lower16:.LC184	@,
	movt	r1, #:upper16:.LC184	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1375:
	mov	r0, r3	@, temp.4660
	movw	r1, #:lower16:.LC181	@,
	ldr	r2, .L1379+8	@,
	movt	r1, #:upper16:.LC181	@,
	movw	r3, #3399	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1378:
	ldr	r2, [r8, r5, asl #2]	@ temp.4722, s_pstVfmwChan
	mov	r0, sl	@, D.45601
.L1359:
	ldr	ip, [r2, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	ip, [sp, #0]	@ <variable>.stChanMem_scd.Length,
	ldr	r3, [r2, #188]	@, <variable>.stChanMem_scd.VirAddr
	ldr	r2, [r2, #192]	@, <variable>.stChanMem_scd.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1374:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC185	@,
	movt	r1, #:upper16:.LC185	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1344:
	ldmia	sl, {r0, r1, r2, r3}	@ tmp525,,,,
	add	lr, ip, #217088	@ tmp491, D.41527,
	add	ip, lr, #360	@ tmp491, tmp491,
	stmia	ip, {r0, r1, r2, r3}	@ tmp491,,,,
	b	.L1345	@
.L1355:
	ldr	r1, [r6, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	and	r3, r1, #1	@ tmp468, <variable>.StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #128]	@ tmp468, DnrChanCfgArgs.s32MirrorEn
	b	.L1341	@
.L1377:
	ldr	r2, [r7, #164]	@ <variable>.stChanMem.Length, <variable>.stChanMem.Length
	mov	r0, fp	@, D.45608
	movw	r1, #:lower16:.LC183	@,
	movt	r1, #:upper16:.LC183	@,
	str	r2, [sp, #0]	@ <variable>.stChanMem.Length,
	ldr	r3, [r7, #156]	@, <variable>.stChanMem.VirAddr
	ldr	r2, [r7, #160]	@, <variable>.stChanMem.PhyAddr
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.38244,
	b	.L1303	@
.L1380:
	.align	2
.L1379:
	.word	.LANCHOR0+3888
	.word	.LANCHOR0+520
	.word	.LANCHOR1+456
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.type	VfmwProc_SetDropStreamThread, %function
VfmwProc_SetDropStreamThread:
	.fnstart
.LFB1782:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	movw	r1, #:lower16:.LC188	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC188	@,
	mov	r3, r5	@, Thr
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1383	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #20]	@ Thr, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L1383:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDropStreamThread, .-VfmwProc_SetDropStreamThread
	.align	2
	.type	VfmwProc_SetDecMode, %function
VfmwProc_SetDecMode:
	.fnstart
.LFB1781:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	and	r5, r4, #3	@ Mode, dat,
	movw	r1, #:lower16:.LC189	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC189	@,
	mov	r3, r5	@, Mode
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1386	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #24]	@ Mode, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L1386:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecMode, .-VfmwProc_SetDecMode
	.align	2
	.type	VfmwProc_SetDecOrderOutput, %function
VfmwProc_SetDecOrderOutput:
	.fnstart
.LFB1780:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	and	r5, r4, #3	@ DecOrderOutput, dat,
	movw	r1, #:lower16:.LC190	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC190	@,
	mov	r3, r5	@, DecOrderOutput
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1389	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #28]	@ DecOrderOutput, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L1389:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecOrderOutput, .-VfmwProc_SetDecOrderOutput
	.align	2
	.type	VfmwProc_SetErrorThread, %function
VfmwProc_SetErrorThread:
	.fnstart
.LFB1779:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r0, #32	@,
	bic	r5, r4, #-16777216	@ Thr, dat,
	movw	r1, #:lower16:.LC191	@,
	mov	r4, r4, lsr #24	@ ChanID, dat,
	movt	r1, #:upper16:.LC191	@,
	mov	r3, r5	@, Thr
	mov	r6, sp	@ tmp139,
	mov	r2, r4	@, ChanID
	bl	dprint_vfmw	@
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L1392	@,
	mov	r0, r4	@, ChanID
	mov	r1, sp	@,
	str	r5, [sp, #16]	@ Thr, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L1392:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetErrorThread, .-VfmwProc_SetErrorThread
	.align	2
	.global	VCTRL_GetDispStateWithDNR
	.type	VCTRL_GetDispStateWithDNR, %function
VCTRL_GetDispStateWithDNR:
	.fnstart
.LFB1678:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	mov	r4, r1	@ pstChanState, pstChanState
	mov	r1, sp	@,
	bl	DNR_GetState	@
	ldr	r1, [sp, #68]	@ DnrChanState.total_frame_num, DnrChanState.total_frame_num
	ldr	r2, [sp, #72]	@ DnrChanState.new_frame_num, DnrChanState.new_frame_num
	ldr	r0, [sp, #76]	@ DnrChanState.read_out_frame_num, DnrChanState.read_out_frame_num
	str	r1, [r4, #96]	@ DnrChanState.total_frame_num, <variable>.total_disp_frame_num
	add	r3, r2, r0	@ tmp138, DnrChanState.new_frame_num, DnrChanState.read_out_frame_num
	str	r3, [r4, #88]	@ tmp138, <variable>.wait_disp_frame_num
	add	sp, sp, #80	@,,
	ldmfd	sp!, {r4, pc}
	.fnend
	.size	VCTRL_GetDispStateWithDNR, .-VCTRL_GetDispStateWithDNR
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
.LFB1680:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	cmp	r0, #3	@ ChanID,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r4, r1	@ pstChanState, pstChanState
	mov	r0, #0	@ tmp137,
	str	r0, [sp, #28]	@ tmp137, NewNum
	str	r0, [sp, #32]	@ tmp137, ReadNum
	str	r0, [sp, #36]	@ tmp137, RefNum
	bhi	.L1404	@,
	cmp	r1, #0	@ pstChanState,
	beq	.L1405	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp193,
	movt	r6, #:upper16:.LANCHOR0	@ tmp193,
	ldr	r0, [r6, r5, asl #2]	@ D.36710, s_pstVfmwChan
	cmp	r0, #0	@ D.36710,
	beq	.L1406	@,
	add	r1, r0, #1280	@, D.36710,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	add	r2, sp, #32	@,,
	add	r3, sp, #28	@,,
	mov	r0, r5	@, ChanID
	add	r1, sp, #36	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r6, r5, asl #2]	@ temp.4875, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1407	@,
.L1400:
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pstChanState
	bl	VCTRL_GetDispStateWithDNR	@
.L1402:
	add	r3, r5, r5, asl #1	@, tmp166, ChanID, ChanID,
	ldr	lr, [sp, #32]	@ ReadNum, ReadNum
	ldr	ip, [sp, #28]	@ NewNum, NewNum
	mov	r0, r5	@, ChanID
	add	r2, r6, r3, asl #3	@, tmp168, tmp193, tmp166,
	add	r1, ip, lr	@ tmp161, NewNum, ReadNum
	str	r1, [r4, #52]	@ tmp161, <variable>.decoded_1d_frame_num
	ldr	ip, [r2, #428]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	add	r1, sp, #4	@,,
	str	ip, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	lr, [r2, #416]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	lr, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r2, [sp, #12]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	ldr	r0, [sp, #20]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	movw	r3, #:lower16:233384	@ tmp188,
	ldr	ip, [sp, #24]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	movt	r3, #:upper16:233384	@ tmp188,
	str	r2, [r4, #60]	@ ScdInstInfo.SegNum, <variable>.buffered_stream_num
	str	r0, [r4, #56]	@ ScdInstInfo.TotalSegSize, <variable>.buffered_stream_size
	cmp	ip, #10	@ ScdInstInfo.numReadSegFail,
	movle	r1, #0	@, tmp185
	movgt	r1, #1	@, tmp185
	str	r1, [r4, #84]	@ tmp185, <variable>.stream_not_enough
	ldr	r2, [r6, r5, asl #2]	@ tmp187, s_pstVfmwChan
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp190,
	and	r0, ip, #1	@ tmp192, tmp190,
	str	r0, [r4, #92]	@ tmp192, <variable>.mpeg4_shorthead
.L1403:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L1404:
	mov	r2, r5	@, ChanID
	movw	r1, #:lower16:.LC192	@,
	movt	r1, #:upper16:.LC192	@,
	bl	dprint_vfmw	@
	b	.L1403	@
.L1407:
	ldr	r3, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L1400	@,
	mov	r0, r5	@, ChanID
	mov	r1, r4	@, pstChanState
	ldr	r2, [sp, #36]	@, RefNum
	bl	VCTRL_GetDispState	@
	b	.L1402	@
.L1406:
	movw	r1, #:lower16:.LC1	@,
	movw	r2, #1293	@,
	movt	r1, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LC194	@,
	movt	r3, #:upper16:.LC194	@,
	bl	dprint_vfmw	@
	b	.L1403	@
.L1405:
	mov	r0, r1	@, pstChanState
	movw	r2, #1292	@,
	movw	r1, #:lower16:.LC1	@,
	movw	r3, #:lower16:.LC193	@,
	movt	r1, #:upper16:.LC1	@,
	movt	r3, #:upper16:.LC193	@,
	bl	dprint_vfmw	@
	b	.L1403	@
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
	.fnstart
.LFB1676:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L1414	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r0, [r3, r0, asl #2]	@ D.36622, s_pstVfmwChan
	cmp	r0, #0	@ D.36622,
	beq	.L1415	@,
	ldr	r2, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L1416	@,
	add	r0, r0, #74752	@, D.36622,
	add	r0, r0, #800	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L1416:
	movw	r1, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LC195	@,
	movt	r1, #:upper16:.LC3	@,
	mov	r2, #1216	@,
	movt	r3, #:upper16:.LC195	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L1410:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L1414:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1214	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC2	@,
	mov	r0, #0	@,
	movt	r3, #:upper16:.LC2	@,
	bl	dprint_vfmw	@
	b	.L1410	@
.L1415:
	movw	r1, #:lower16:.LC3	@,
	movw	r2, #1215	@,
	movt	r1, #:upper16:.LC3	@,
	movw	r3, #:lower16:.LC139	@,
	movt	r3, #:upper16:.LC139	@,
	bl	dprint_vfmw	@
	b	.L1410	@
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
	.fnstart
.LFB1671:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp160,
	movt	r4, #:upper16:.LANCHOR0	@ tmp160,
	ldr	r3, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.36556,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, #0]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L1420	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChan	@
.L1420:
	ldr	r1, [r4, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r1, #0	@ s_pstVfmwChan,
	beq	.L1421	@,
	mov	r0, #1	@,
	bl	VCTRL_DestroyChan	@
.L1421:
	ldr	r2, [r4, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r2, #0	@ s_pstVfmwChan,
	beq	.L1422	@,
	mov	r0, #2	@,
	bl	VCTRL_DestroyChan	@
.L1422:
	ldr	r5, [r4, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r5, #0	@ s_pstVfmwChan,
	beq	.L1423	@,
	mov	r0, #3	@,
	bl	VCTRL_DestroyChan	@
.L1423:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	ip, #3	@ tmp147,
	str	ip, [r4, #144]	@ tmp147, s_VfmwCTrl.eTaskCommand
	b	.L1425	@
.L1430:
	bl	msleep	@
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1424	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1424	@,
.L1425:
	ldr	lr, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r3, r5, #1	@ tmp162, i,
	mov	r0, #10	@,
	add	r5, r3, #1	@ i, tmp162,
	cmp	lr, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1430	@,
.L1424:
	mov	r1, #16	@,
	ldr	r0, .L1431	@,
	mov	r5, #0	@ tmp151,
	str	r5, [r4, #144]	@ tmp151, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1431+4	@,
	bl	CloseDrivers	@
	mov	r0, r5	@ D.36556, tmp151
	str	r5, [r4, #112]	@ tmp151, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1432:
	.align	2
.L1431:
	.word	.LANCHOR0+376
	.word	.LANCHOR0+160
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	VCTRL_StartVfmw
	.type	VCTRL_StartVfmw, %function
VCTRL_StartVfmw:
	.fnstart
.LFB1670:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #144]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L1438	@
.L1436:
	bl	msleep	@
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L1443	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1445	@,
.L1438:
	ldr	r3, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L1436	@,
.L1443:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1445:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StartVfmw, .-VCTRL_StartVfmw
	.align	2
	.global	VCTRL_StopVfmw
	.type	VCTRL_StopVfmw, %function
VCTRL_StopVfmw:
	.fnstart
.LFB1669:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #144]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L1451	@
.L1449:
	bl	msleep	@
	ldr	r2, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1456	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1458	@,
.L1451:
	ldr	r1, [r4, #140]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L1449	@,
.L1456:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1458:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #144]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StopVfmw, .-VCTRL_StopVfmw
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
.LFB1668:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp290,
	movt	r4, #:upper16:.LANCHOR0	@ tmp290,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ event_report, event_report
	ldr	r7, [r4, #112]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r7, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1484	@,
.L1460:
	mvn	r0, #0	@ D.36479,
.L1482:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1484:
	movw	r6, #:lower16:saved_command_line	@ tmp289,
	movt	r6, #:upper16:saved_command_line	@ tmp289,
	mov	r2, #1024	@,
	add	r0, r4, #3904	@, tmp290,
	ldr	r1, [r6, #0]	@, saved_command_line
	str	r7, [sp, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #3904	@, tmp290,
	movw	r1, #:lower16:.LC196	@,
	movt	r1, #:upper16:.LC196	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp172,
	str	r0, [sp, #4]	@ tmp172, p
	beq	.L1461	@,
	add	r8, sp, #4	@ p.712,,
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	mov	r0, r8	@, p.712
	bl	strsep	@
	subs	r3, r0, #0	@ D.46087,
	beq	.L1466	@,
	mov	r0, r8	@, p.712
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1485	@,
	mov	r1, r7	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #60]	@ prephitmp.5059, extra_ref
.L1465:
	add	r1, r0, #4992	@ tmp183, prephitmp.5059,
	movw	r2, #10000	@ tmp185,
	add	r3, r1, #8	@ tmp183, tmp183,
	cmp	r3, r2	@ tmp183, tmp185
	bhi	.L1467	@,
	movw	ip, #5000	@ tmp186,
	movw	r7, #:lower16:-5000	@ tmp187,
	cmp	r0, ip	@ prephitmp.5059, tmp186
	movge	r0, ip	@ pretmp.5056, tmp186
	movt	r7, #:upper16:-5000	@ tmp187,
	cmp	r0, r7	@ pretmp.5056, tmp187
	movge	r3, r0	@ prephitmp.5058, pretmp.5056
	movlt	r3, r7	@ prephitmp.5058, tmp187
.L1466:
	str	r3, [r4, #60]	@ prephitmp.5058, extra_ref
.L1464:
	ldr	r1, [r6, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1488	@,
	mov	r7, #0	@ tmp193,
	str	r7, [sp, #4]	@ tmp193, p
	bl	strlcpy	@
	ldr	r0, .L1488	@,
	movw	r1, #:lower16:.LC201	@,
	movt	r1, #:upper16:.LC201	@,
	bl	strstr	@
	cmp	r0, r7	@ tmp197,
	str	r0, [sp, #4]	@ tmp197, p
	beq	.L1468	@,
	add	r8, sp, #4	@ p.723,,
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	mov	r0, r8	@, p.723
	bl	strsep	@
	subs	r3, r0, #0	@ D.46107,
	beq	.L1473	@,
	mov	r0, r8	@, p.723
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	strsep	@
	cmp	r0, r7	@,
	beq	.L1486	@,
	mov	r1, r7	@, tmp193
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #64]	@ prephitmp.5054, extra_disp
.L1472:
	add	ip, r0, #4992	@ tmp208, prephitmp.5054,
	movw	lr, #10000	@ tmp210,
	add	r7, ip, #8	@ tmp208, tmp208,
	cmp	r7, lr	@ tmp208, tmp210
	bhi	.L1474	@,
	movw	r3, #5000	@ tmp211,
	movw	r2, #:lower16:-5000	@ tmp212,
	cmp	r0, r3	@ prephitmp.5054, tmp211
	movge	r0, r3	@ pretmp.5041, tmp211
	movt	r2, #:upper16:-5000	@ tmp212,
	cmp	r0, r2	@ pretmp.5041, tmp212
	movge	r3, r0	@ prephitmp.5030, pretmp.5041
	movlt	r3, r2	@ prephitmp.5030, tmp212
.L1473:
	str	r3, [r4, #64]	@ prephitmp.5030, extra_disp
.L1471:
	movw	r4, #:lower16:.LANCHOR3	@ tmp291,
	movt	r4, #:upper16:.LANCHOR3	@ tmp291,
	mov	lr, #0	@ tmp218,
	str	lr, [sp, #4]	@ tmp218, p
	ldr	r7, [r4, #-3256]	@ extra_cmd.729, extra_cmd
	cmp	r7, lr	@ extra_cmd.729,
	beq	.L1475	@,
	movw	r3, #:lower16:.LANCHOR2	@ tmp224,
	movt	r3, #:upper16:.LANCHOR2	@ tmp224,
	ubfx	r0, r7, #2, #1	@ tmp232, extra_cmd.729,,
	and	r2, r7, #1	@ tmp222, extra_cmd.729,
	strb	r0, [r4, #-3251]	@ tmp232, g_not_allow_H264FullPictureRepair_flag
	ubfx	r7, r7, #1, #1	@ tmp227, extra_cmd.729,,
	strb	r2, [r4, #-3252]	@ tmp222, g_allow_B_before_P
	strb	r7, [r3, #64]	@ tmp227, g_not_direct_8x8_inference_flag
.L1476:
	movw	r4, #:lower16:.LANCHOR0	@ tmp260,
	movt	r4, #:upper16:.LANCHOR0	@ tmp260,
	add	r0, r4, #112	@, tmp260,
	mov	r1, #152	@,
	bl	__memzero	@
	mov	r0, r4	@, tmp260
	mov	r1, #16	@,
	bl	__memzero	@
	add	r0, r4, #532	@, tmp260,
	mov	r1, #16	@,
	bl	__memzero	@
	cmp	r5, #0	@ event_report,
	mov	r0, #-2013265920	@,
	mov	r1, #75497472	@,
	movweq	r3, #:lower16:VCTRL_EventReport	@ tmp266,
	movteq	r3, #:upper16:VCTRL_EventReport	@ tmp266,
	streq	r3, [r4, #20]	@ tmp266, g_event_report
	movw	r4, #:lower16:.LANCHOR0	@ tmp267,
	movt	r4, #:upper16:.LANCHOR0	@ tmp267,
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	add	r0, r4, #376	@, tmp267,
	mov	r1, #16	@,
	bl	__memzero	@
	add	r0, r4, #160	@, tmp267,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1460	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	ldr	r0, .L1488+4	@,
	bl	OSAL_InitEvent	@
	add	r0, r4, #148	@, tmp267,
	movw	r1, #:lower16:.LC204	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC204	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.36506,
	bne	.L1481	@,
	add	r0, r4, #148	@, tmp267,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp284,
	mov	r0, r5	@ D.36479, D.36506
	str	r3, [r4, #112]	@ tmp284, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1482	@
.L1475:
	ldr	r1, [r6, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1488	@,
	bl	strlcpy	@
	ldr	r0, .L1488	@,
	movw	r1, #:lower16:.LC203	@,
	movt	r1, #:upper16:.LC203	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp237,
	str	r0, [sp, #4]	@ tmp237, p
	beq	.L1476	@,
	add	r6, sp, #4	@ p.738,,
	movw	r1, #:lower16:.LC197	@,
	movt	r1, #:upper16:.LC197	@,
	mov	r0, r6	@, p.738
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r4, #-3256]	@ prephitmp.5028, extra_cmd
	beq	.L1478	@,
	mov	r0, r6	@, p.738
	movw	r1, #:lower16:.LC198	@,
	movt	r1, #:upper16:.LC198	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1487	@,
	mov	r1, r7	@, extra_cmd.729
	mov	r2, r7	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #-3256]	@ prephitmp.5028, extra_cmd
.L1478:
	movw	ip, #:lower16:.LANCHOR2	@ tmp250,
	movt	ip, #:upper16:.LANCHOR2	@ tmp250,
	ubfx	lr, r0, #2, #1	@ tmp258, prephitmp.5028,,
	and	r1, r0, #1	@ tmp248, prephitmp.5028,
	strb	lr, [r4, #-3251]	@ tmp258, g_not_allow_H264FullPictureRepair_flag
	strb	r1, [r4, #-3252]	@ tmp248, g_allow_B_before_P
	ubfx	r4, r0, #1, #1	@ tmp253, prephitmp.5028,,
	strb	r4, [ip, #64]	@ tmp253, g_not_direct_8x8_inference_flag
	b	.L1476	@
.L1468:
	ldr	r0, [r4, #64]	@ prephitmp.5054, extra_disp
	b	.L1472	@
.L1461:
	ldr	r0, [r4, #60]	@ prephitmp.5059, extra_ref
	b	.L1465	@
.L1467:
	mov	r2, r0	@, prephitmp.5059
	movw	r1, #:lower16:.LC200	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC200	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #60]	@ pretmp.5055, extra_ref
	movw	r3, #5000	@ tmp190,
	movw	r0, #:lower16:-5000	@ tmp191,
	cmp	r1, r3	@ pretmp.5055, tmp190
	movlt	r2, r1	@ prephitmp.5058, pretmp.5055
	movge	r2, r3	@ prephitmp.5058, tmp190
	movt	r0, #:upper16:-5000	@ tmp191,
	cmp	r2, r0	@ prephitmp.5058, tmp191
	movge	r3, r2	@ prephitmp.5058, prephitmp.5058
	movlt	r3, r0	@ prephitmp.5058, tmp191
	b	.L1466	@
.L1474:
	mov	r2, r0	@, prephitmp.5054
	movw	r1, #:lower16:.LC202	@,
	mov	r0, #32	@,
	movt	r1, #:upper16:.LC202	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #64]	@ pretmp.5029, extra_disp
	movw	r0, #:lower16:-5000	@ tmp216,
	movw	ip, #5000	@ tmp215,
	movt	r0, #:upper16:-5000	@ tmp216,
	cmp	r1, ip	@ pretmp.5029, tmp215
	movlt	r7, r1	@ prephitmp.5030, pretmp.5029
	movge	r7, ip	@ prephitmp.5030, tmp215
	cmp	r7, r0	@ prephitmp.5030, tmp216
	movge	r3, r7	@ prephitmp.5030, prephitmp.5030
	movlt	r3, r0	@ prephitmp.5030, tmp216
	b	.L1473	@
.L1485:
	movw	r1, #:lower16:.LC199	@,
	ldr	r2, .L1488+8	@,
	movt	r1, #:upper16:.LC199	@,
	movw	r3, #7132	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1464	@
.L1486:
	movw	r1, #:lower16:.LC199	@,
	ldr	r2, .L1488+12	@,
	movt	r1, #:upper16:.LC199	@,
	movw	r3, #7173	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L1471	@
.L1487:
	movw	r1, #:lower16:.LC199	@,
	ldr	r2, .L1488+16	@,
	movt	r1, #:upper16:.LC199	@,
	movw	r3, #7223	@,
	add	r0, r0, #22	@,,
	bl	dprint_vfmw	@
	b	.L1476	@
.L1481:
	add	r0, r4, #160	@, tmp267,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.36479,
	b	.L1482	@
.L1489:
	.align	2
.L1488:
	.word	.LANCHOR0+3904
	.word	.LANCHOR3-3248
	.word	.LANCHOR1+476
	.word	.LANCHOR1+496
	.word	.LANCHOR1+516
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
	.fnstart
.LFB1665:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	bl	OSAL_GetTimeInMs	@
	movw	r4, #:lower16:.LANCHOR3	@ tmp143,
	movt	r4, #:upper16:.LANCHOR3	@ tmp143,
	ldr	r3, [r4, #-3236]	@ LastEventTime.468, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.468
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #-3236]	@ CurTime, LastEventTime
	bhi	.L1495	@,
.L1492:
	ldr	r0, .L1496	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-3236]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1495:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.468, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L1492	@
.L1497:
	.align	2
.L1496:
	.word	.LANCHOR3-3248
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_Dnr_Isr
	.type	VCTRL_Dnr_Isr, %function
VCTRL_Dnr_Isr:
	.fnstart
.LFB1664:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	DNR_IntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Dnr_Isr, .-VCTRL_Dnr_Isr
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
	.fnstart
.LFB1663:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr, .-VCTRL_Scd_Isr
	.align	2
	.global	VCTRL_Isr_1
	.type	VCTRL_Isr_1, %function
VCTRL_Isr_1:
	.fnstart
.LFB1662:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r0, #1	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Isr_1, .-VCTRL_Isr_1
	.align	2
	.global	VCTRL_Isr_0
	.type	VCTRL_Isr_0, %function
VCTRL_Isr_0:
	.fnstart
.LFB1661:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	mov	r0, #0	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_Isr_0, .-VCTRL_Isr_0
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
.LFB1660:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp161,
	movt	r4, #:upper16:.LANCHOR0	@ tmp161,
	mov	r3, #100	@ tmp139,
	ldr	r0, [r4, #48]	@ g_SleepTime.463, g_SleepTime
	str	r3, [r4, #152]	@ tmp139, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.463,
	ble	.L1507	@,
	bl	msleep	@
.L1507:
	ldr	r0, .L1516	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r4, #40]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp144,
	str	r2, [r4, #152]	@ tmp144, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1515	@,
.L1509:
	mov	ip, #102	@ tmp148,
	str	ip, [r4, #152]	@ tmp148, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp149,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp149,
	ldr	r0, [r1, #28]	@ D.36363, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r0, #0	@ D.36363,
	beq	.L1510	@,
	blx	r0	@ D.36363
.L1511:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp151,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp151,
	ldr	r3, [lr, #56]	@ D.36368, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.36368,
	beq	.L1512	@,
	mov	r0, #0	@,
	blx	r3	@ D.36368
.L1513:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #1	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #2	@,
	bl	DeleteRawPacketInBuffer	@
	mov	r1, #0	@,
	mov	r0, #3	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1516	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1516+4	@,
	mov	r3, #105	@ tmp156,
	str	r3, [r4, #152]	@ tmp156, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1512:
	mov	r0, r3	@, D.36368
	movw	r1, #:lower16:.LC81	@,
	mov	r2, #556	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1513	@
.L1515:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1509	@
.L1510:
	movw	r1, #:lower16:.LC87	@,
	movw	r2, #549	@,
	movt	r1, #:upper16:.LC87	@,
	bl	dprint_vfmw	@
	b	.L1511	@
.L1517:
	.align	2
.L1516:
	.word	.LANCHOR0+520
	.word	.LANCHOR3-3248
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
.LFB1659:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r0, sp, #4	@,,
	mov	r3, #4	@ tmp148,
	mov	r1, sp	@,
	mov	r7, #0	@ tmp147,
	str	r3, [sp, #0]	@ tmp148, enChipVersion
	movw	r4, #:lower16:.LANCHOR0	@ tmp206,
	str	r7, [sp, #4]	@ tmp147, enChipType
	bl	HI_DRV_SYS_GetChipVersion	@
	movw	sl, #:lower16:599999	@ tmp218,
	movw	r8, #:lower16:-31444992	@ tmp219,
	movt	r4, #:upper16:.LANCHOR0	@ tmp206,
	movt	sl, #:upper16:599999	@ tmp218,
	movt	r8, #:upper16:-31444992	@ tmp219,
	mov	r5, #1	@ tmp217,
	mov	r9, #5	@ tmp224,
.L1519:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC205	@,
	movt	r1, #:upper16:.LC205	@,
	mov	r2, #0	@ tmp152,
	str	r2, [r4, #152]	@ tmp152, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ temp.5227, s_VfmwCTrl.eTaskCommand
	mov	r6, #2	@ tmp154,
	str	r5, [r4, #152]	@ tmp217, s_VfmwCTrl.s32ThreadPos
	cmp	r3, r6	@ temp.5227,
	str	r6, [r4, #140]	@ tmp154, s_VfmwCTrl.eTaskState
	bne	.L1526	@,
	b	.L1520	@
.L1523:
	str	r6, [r4, #152]	@ tmp213, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC206	@,
	movt	r1, #:upper16:.LC206	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ D.36311, s_VfmwCTrl.eTaskCommand
	str	r5, [r4, #152]	@ tmp217, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.36311,
	beq	.L1520	@,
.L1526:
	cmp	r3, #3	@ D.36311,
	beq	.L1521	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #0]	@ enChipVersion, enChipVersion
	cmp	r1, #5	@ enChipVersion,
	bne	.L1523	@,
	rsbs	ip, r7, #1	@ tmp164, time2
	movcc	ip, #0	@ tmp164
	rsb	lr, r7, r0	@ tmp159, time2, time1
	cmp	lr, sl	@ tmp159, tmp218
	orrhi	ip, ip, #1	@,, tmp167, tmp164
	cmp	ip, #0	@ tmp167,
	beq	.L1523	@,
	ldr	ip, [r8, #92]	@ reg_val,
	mov	r7, r0	@ time2, time1
	cmp	ip, #3	@ reg_val,
	cmpne	ip, #0	@, reg_val,
	bic	r1, ip, #7	@ D.36330, reg_val,
	strne	r1, [r8, #92]	@ D.36330,
	ldr	r2, [r8, #96]	@ reg_val.5219,
	cmp	r2, #3	@ reg_val.5219,
	cmpne	r2, #0	@, reg_val.5219,
	bic	r3, r2, #7	@ temp.5223, reg_val.5219,
	strne	r3, [r8, #96]	@ temp.5223,
	movne	r7, r0	@ time2, time1
	b	.L1523	@
.L1520:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC207	@,
	movt	r1, #:upper16:.LC207	@,
	mov	lr, #4	@ tmp192,
	str	lr, [r4, #152]	@ tmp192, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	str	r5, [r4, #140]	@ tmp217, s_VfmwCTrl.eTaskState
.L1527:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC208	@,
	movt	r1, #:upper16:.LC208	@,
	str	r9, [r4, #152]	@ tmp224, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	ldr	r3, [r4, #144]	@ temp.5224, s_VfmwCTrl.eTaskCommand
	cmp	r3, #1	@ temp.5224,
	beq	.L1519	@,
	cmp	r3, #3	@ temp.5224,
	mov	r0, #10	@,
	beq	.L1521	@,
	bl	msleep	@
	b	.L1527	@
.L1521:
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC209	@,
	movt	r1, #:upper16:.LC209	@,
	mov	r3, #6	@ tmp200,
	str	r3, [r4, #152]	@ tmp200, s_VfmwCTrl.s32ThreadPos
	bl	dprint_vfmw	@
	mov	r0, #0	@ tmp203,
	str	r0, [r4, #140]	@ tmp203, s_VfmwCTrl.eTaskState
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_Resume
	.type	VCTRL_Resume, %function
VCTRL_Resume:
	.fnstart
.LFB1657:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SCDDRV_ExitSleep	@
	bl	DNRDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	subs	r4, r0, #0	@ D.36268,
	bne	.L1533	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L1538	@,
	bl	BPD_OpenHardware	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw	@
.L1538:
	bl	SCDDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC211	@,
	movt	r1, #:upper16:.LC211	@,
	mov	r2, r0	@ D.36277,
	mov	r0, r4	@, D.36268
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L1533:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	movw	r1, #:lower16:.LC210	@,
	movt	r1, #:upper16:.LC210	@,
	mov	r2, r0	@ D.36272,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.type	VfmwProc_TestResume, %function
VfmwProc_TestResume:
	.fnstart
.LFB1795:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0	@ p_args, p_args
	movw	r1, #:lower16:.LC212	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r1, #:upper16:.LC212	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
	.fnend
	.size	VfmwProc_TestResume, .-VfmwProc_TestResume
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
.LFB1656:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	mov	r0, #0	@,
	mov	r5, r0	@ i,
	mvn	r6, r4	@ tmp174, EntrTime
	bl	VDMDRV_PrepareSleep	@
	b	.L1546	@
.L1545:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp179, i,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1542	@,
.L1576:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime.5315, CurTime, tmp174
	rsbls	r7, r4, r0	@ WaitTime.5315, EntrTime, CurTime
	cmp	r7, #200	@ WaitTime.5315,
	bhi	.L1585	@,
.L1574:
	add	r5, r5, #1	@ i, tmp179,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1542	@,
.L1546:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1542	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r7, r4, r0	@ WaitTime.5315, EntrTime, CurTime
	addhi	r7, r0, r6	@ WaitTime.5315, CurTime, tmp174
	cmp	r7, #200	@ WaitTime.5315,
	bls	.L1545	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp179, i,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime.5315
	movw	r1, #:lower16:.LC213	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC213	@,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1576	@,
.L1542:
	movw	r8, #:lower16:g_vdm_hal_fun_ptr	@ tmp164,
	movt	r8, #:upper16:g_vdm_hal_fun_ptr	@ tmp164,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r8, #4]	@ D.36223, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.36223,
	beq	.L1547	@,
	mov	r0, #0	@,
	blx	r3	@ D.36223
.L1548:
	bl	SCDDRV_PrepareSleep	@
	mov	r6, #0	@ i.5319,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r7, r0	@ tmp169, BeginTime
	b	.L1553	@
.L1552:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp178, i.5319,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1549	@,
.L1577:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5317
	addhi	sl, r0, r7	@ WaitTime.5316, CurTime.5317, tmp169
	rsbls	sl, r5, r0	@ WaitTime.5316, BeginTime, CurTime.5317
	cmp	sl, #200	@ WaitTime.5316,
	bhi	.L1586	@,
.L1571:
	add	r6, r6, #1	@ i.5319, tmp178,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i.5319,
	beq	.L1549	@,
.L1553:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1549	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime.5317
	rsbls	sl, r5, r0	@ WaitTime.5316, BeginTime, CurTime.5317
	addhi	sl, r0, r7	@ WaitTime.5316, CurTime.5317, tmp169
	cmp	sl, #200	@ WaitTime.5316,
	bls	.L1552	@,
	bl	SCDDRV_ForceSleep	@
	mov	r2, sl	@, WaitTime.5316
	movw	r1, #:lower16:.LC214	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC214	@,
	add	r6, r6, #1	@ tmp178, i.5319,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1577	@,
.L1549:
	ldr	r0, [r8, #12]	@ D.36239, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r0, #0	@ D.36239,
	beq	.L1554	@,
	blx	r0	@ D.36239
.L1555:
	bl	DNRDRV_PrepareSleep	@
	mov	r6, #0	@ i.5324,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime.5321,
	mvn	r7, r0	@ tmp165, BeginTime.5321
	b	.L1560	@
.L1559:
	mov	r0, #10	@,
	add	r6, r6, #1	@ tmp177, i.5324,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1556	@,
.L1578:
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime.5321, CurTime.5322
	addhi	r8, r0, r7	@ WaitTime, CurTime.5322, tmp165
	rsbls	r8, r5, r0	@ WaitTime, BeginTime.5321, CurTime.5322
	cmp	r8, #200	@ WaitTime,
	bhi	.L1587	@,
.L1568:
	add	r6, r6, #1	@ i.5324, tmp177,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r6, #50	@ i.5324,
	beq	.L1556	@,
.L1560:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1556	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime.5321, CurTime.5322
	rsbls	r8, r5, r0	@ WaitTime, BeginTime.5321, CurTime.5322
	addhi	r8, r0, r7	@ WaitTime, CurTime.5322, tmp165
	cmp	r8, #200	@ WaitTime,
	bls	.L1559	@,
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime
	movw	r1, #:lower16:.LC215	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC215	@,
	add	r6, r6, #1	@ tmp177, i.5324,
	bl	dprint_vfmw	@
	mov	r0, #10	@,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1578	@,
.L1556:
	bl	VCTRL_StopVfmw	@
	bl	OSAL_GetTimeInMs	@
	movw	r1, #:lower16:.LC216	@,
	movt	r1, #:upper16:.LC216	@,
	cmp	r4, r0	@ EntrTime, CurTime.5325
	rsbls	r2, r4, r0	@ iftmp.459, EntrTime, CurTime.5325
	mvnhi	r4, r4	@ tmp162, EntrTime
	addhi	r2, r0, r4	@ iftmp.459, CurTime.5325, tmp162
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@
	b	dprint_vfmw	@
.L1585:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	mov	r2, r7	@, WaitTime.5315
	movw	r1, #:lower16:.LC213	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC213	@,
	bl	dprint_vfmw	@
	b	.L1574	@
.L1586:
	bl	SCDDRV_ForceSleep	@
	mov	r2, sl	@, WaitTime.5316
	movw	r1, #:lower16:.LC214	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC214	@,
	bl	dprint_vfmw	@
	b	.L1571	@
.L1587:
	bl	DNRDRV_ForeceSleep	@
	mov	r2, r8	@, WaitTime
	movw	r1, #:lower16:.LC215	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC215	@,
	bl	dprint_vfmw	@
	b	.L1568	@
.L1547:
	mov	r0, r3	@, D.36223
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #283	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1548	@
.L1554:
	movw	r1, #:lower16:.LC81	@,
	movw	r2, #309	@,
	movt	r1, #:upper16:.LC81	@,
	bl	dprint_vfmw	@
	b	.L1555	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.type	VfmwProc_TestSuspend, %function
VfmwProc_TestSuspend:
	.fnstart
.LFB1794:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, r0	@ p_args, p_args
	movw	r1, #:lower16:.LC212	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movt	r1, #:upper16:.LC212	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Suspend	@
	.fnend
	.size	VfmwProc_TestSuspend, .-VfmwProc_TestSuspend
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
	.fnstart
.LFB1655:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_Suspend	@
	ldr	r0, .L1592	@,
	mov	r1, #28	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L1593:
	.align	2
.L1592:
	.word	.LANCHOR0+68
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.global	g_DSPState
	.global	g_scd_vir
	.global	g_ChanTick
	.global	g_SdecFunc
	.global	s_pstVfmwChan
	.global	extra_ref
	.global	extra_disp
	.global	extra_cmd
	.global	g_allow_B_before_P
	.global	g_not_direct_8x8_inference_flag
	.global	g_not_allow_H264FullPictureRepair_flag
	.global	g_DbgMemPhy
	.global	g_pDbgMemVir
	.global	vfmw_save_str_file
	.global	save_str_chan_num
	.global	vfmw_save_seg_file
	.global	save_seg_chan_num
	.global	vfmw_save_yuv_file
	.global	save_yuv_chan_num
	.global	g_ResetCreateNewSave
	.global	g_CurProcChan
	.global	g_VdmCharacter
	.global	g_SleepTime
	.global	g_DnrSleepTime
	.global	g_StopDec
	.global	g_VdecIrqHandle
	.global	g_DnrIrqHandle
	.global	g_event_report
	.global	g_VfmwChanStat
	.global	g_VfmwGlobalStat
	.global	g_eVdmVersion
	.global	AcceleratorCharacter
	.global	g_TaskLock
	.global	g_DSDLock
	.global	g_IntEvent
	.global	g_ActivateLock
	.global	pOption
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	g_ProcCommandTable, %object
	.size	g_ProcCommandTable, 280
g_ProcCommandTable:
@ CmdName:
	.word	0
@ pHandler:
	.word	VfmwProc_SetPrintLevel
@ CmdName:
	.word	2
@ pHandler:
	.word	VfmwProc_SetErrorThread
@ CmdName:
	.word	4
@ pHandler:
	.word	VfmwProc_SetDecOrderOutput
@ CmdName:
	.word	5
@ pHandler:
	.word	VfmwProc_SetDecMode
@ CmdName:
	.word	7
@ pHandler:
	.word	VfmwProc_SetDropStreamThread
@ CmdName:
	.word	10
@ pHandler:
	.word	VfmwProc_SetDNR
@ CmdName:
	.word	11
@ pHandler:
	.word	VfmwProc_SetUSE_FF_APT_EN
@ CmdName:
	.word	12
@ pHandler:
	.word	VfmwProc_SetSaveFileAfterReset
@ CmdName:
	.word	13
@ pHandler:
	.word	VfmwProc_SetCurProcChan
@ CmdName:
	.word	14
@ pHandler:
	.word	VfmwProc_SetDNRCfg
@ CmdName:
	.word	256
@ pHandler:
	.word	VfmwProc_PrintTracer
@ CmdName:
	.word	512
@ pHandler:
	.word	VfmwProc_Savestream
@ CmdName:
	.word	513
@ pHandler:
	.word	VfmwProc_SaveSeg
@ CmdName:
	.word	514
@ pHandler:
	.word	VfmwProc_SaveYUV
@ CmdName:
	.word	515
@ pHandler:
	.word	VfmwProc_SaveOneYUV
@ CmdName:
	.word	516
@ pHandler:
	.word	VfmwProc_Save1DYUV
@ CmdName:
	.word	768
@ pHandler:
	.word	VfmwProc_TestSuspend
@ CmdName:
	.word	769
@ pHandler:
	.word	VfmwProc_TestResume
@ CmdName:
	.word	896
@ pHandler:
	.word	VfmwProc_TestStopChan
@ CmdName:
	.word	897
@ pHandler:
	.word	VfmwProc_TestResetChan
@ CmdName:
	.word	898
@ pHandler:
	.word	VfmwProc_TestStartChan
@ CmdName:
	.word	899
@ pHandler:
	.word	VfmwProc_TestRestartChan
@ CmdName:
	.word	1024
@ pHandler:
	.word	VfmwProc_TestTimeSequence
@ CmdName:
	.word	1025
@ pHandler:
	.word	VfmwProc_SetDnrSleepTime
@ CmdName:
	.word	1026
@ pHandler:
	.word	VfmwProc_TestStopDec
@ CmdName:
	.word	1280
@ pHandler:
	.word	VfmwProc_SetTraceCtrl
@ CmdName:
	.word	1281
@ pHandler:
	.word	VfmwProc_SetTraceBSPeriod
@ CmdName:
	.word	1282
@ pHandler:
	.word	VfmwProc_SetTraceFramePeriod
@ CmdName:
	.word	1283
@ pHandler:
	.word	VfmwProc_SetTraceImgPeriod
@ CmdName:
	.word	1284
@ pHandler:
	.word	VfmwProc_SetNoStreamReportPeriod
@ CmdName:
	.word	1536
@ pHandler:
	.word	VfmwProc_OpenModuleLowly
@ CmdName:
	.word	1537
@ pHandler:
	.word	VfmwProc_CloseModuleLowly
@ CmdName:
	.word	1539
@ pHandler:
	.word	VfmwProc_OpenScdLowdly
@ CmdName:
	.word	1540
@ pHandler:
	.word	VfmwProc_CloseScdLowdly
@ CmdName:
	.word	65535
@ pHandler:
	.word	0
	.type	C.746.40613, %object
	.size	C.746.40613, 12
C.746.40613:
	.word	.LC217
	.word	.LC218
	.word	.LC219
	.type	CSWTCH.855, %object
	.size	CSWTCH.855, 32
CSWTCH.855:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.39371, %object
	.size	__func__.39371, 26
__func__.39371:
	.ascii	"VCTRL_GetMemSize_onDecode\000"
	.space	2
	.type	__func__.36452, %object
	.size	__func__.36452, 18
__func__.36452:
	.ascii	"VCTRL_SetCallBack\000"
	.space	2
	.type	__func__.36418, %object
	.size	__func__.36418, 18
__func__.36418:
	.ascii	"VCTRL_EventReport\000"
	.space	2
	.type	CSWTCH.890, %object
	.size	CSWTCH.890, 32
CSWTCH.890:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
	.type	__func__.36756, %object
	.size	__func__.36756, 29
__func__.36756:
	.ascii	"VCTRL_PartitionMemForStdUser\000"
	.space	3
	.type	__func__.38150, %object
	.size	__func__.38150, 19
__func__.38150:
	.ascii	"VCTRL_RemapVirAddr\000"
	.space	1
	.type	__func__.40446, %object
	.size	__func__.40446, 18
__func__.40446:
	.ascii	"GetExtraRefFrmNum\000"
	.space	2
	.type	__func__.40482, %object
	.size	__func__.40482, 19
__func__.40482:
	.ascii	"GetExtraDispFrmNum\000"
	.space	1
	.type	__func__.40518, %object
	.size	__func__.40518, 16
__func__.40518:
	.ascii	"GetExtraCtrlCmd\000"
	.type	__param_str_extra_cmd, %object
	.size	__param_str_extra_cmd, 10
__param_str_extra_cmd:
	.ascii	"extra_cmd\000"
	.space	2
	.type	__param_str_extra_disp, %object
	.size	__param_str_extra_disp, 11
__param_str_extra_disp:
	.ascii	"extra_disp\000"
	.space	1
	.type	__param_str_extra_ref, %object
	.size	__param_str_extra_ref, 10
__param_str_extra_ref:
	.ascii	"extra_ref\000"
	.section	.modinfo,"a",%progbits
	.type	__UNIQUE_ID_extra_cmdtype2, %object
	.size	__UNIQUE_ID_extra_cmdtype2, 23
__UNIQUE_ID_extra_cmdtype2:
	.ascii	"parmtype=extra_cmd:int\000"
	.type	__UNIQUE_ID_extra_disptype1, %object
	.size	__UNIQUE_ID_extra_disptype1, 24
__UNIQUE_ID_extra_disptype1:
	.ascii	"parmtype=extra_disp:int\000"
	.type	__UNIQUE_ID_extra_reftype0, %object
	.size	__UNIQUE_ID_extra_reftype0, 23
__UNIQUE_ID_extra_reftype0:
	.ascii	"parmtype=extra_ref:int\000"
	.data
	.align	2
.LANCHOR2 = . + 0
	.type	s_VfmwSavePath, %object
	.size	s_VfmwSavePath, 64
s_VfmwSavePath:
	.byte	47
	.byte	109
	.byte	110
	.byte	116
	.byte	0
	.space	59
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"line %d can not know YuvFormat = %d\012\000"
	.space	3
.LC1:
	.ascii	"vfmw_ctrl.c,L%d: %s\012\000"
	.space	3
.LC2:
	.ascii	"ChanID out of range\000"
.LC3:
	.ascii	"vdm_ctrl.c,L%d: %s\012\000"
.LC4:
	.ascii	"Command \"%d\" not registerd!\012\000"
	.space	3
.LC5:
	.ascii	"The channel number is to Large.\012\000"
	.space	3
.LC6:
	.ascii	"------ s_pstVfmwChan[%d]->stSynExtraData.s32ModuleL"
	.ascii	"owlyEnable = 1 ------\012\000"
	.space	2
.LC7:
	.ascii	"------ g_NoStreamReportPeriod = %x ------\012\000"
	.space	1
.LC8:
	.ascii	"------ g_TraceImgPeriod = %x ------\012\000"
	.space	3
.LC9:
	.ascii	"------ g_TraceFramePeriod = %x ------\012\000"
	.space	1
.LC10:
	.ascii	"------ g_TraceBsPeriod = %x ------\012\000"
.LC11:
	.ascii	"------ g_TraceCtrl = %x ------\012\000"
.LC12:
	.ascii	"------ dec stop = %d ------\012\000"
	.space	3
.LC13:
	.ascii	"------ dnr active per %d ms ------\012\000"
.LC14:
	.ascii	"------ dec task delay %d ms ------\012\000"
.LC15:
	.ascii	"NO SUCH CHANNEL : %d\012\000"
	.space	2
.LC16:
	.ascii	"Pay attention to  CHANNEL : %d\012\000"
.LC17:
	.ascii	"ResetCreateNewSave = %d\012\000"
	.space	3
.LC18:
	.ascii	"ResetCreateNewSave can NOT be set to %d, must be 0 "
	.ascii	"or 1\012\000"
	.space	3
.LC19:
	.ascii	"USE_FF_APT_EN = %d\012\000"
.LC20:
	.ascii	"USE_FF_APT_EN can NOT be set to %d, must be 0 or 1\012"
	.ascii	"\000"
.LC21:
	.ascii	"manually set postprocess options:\012\000"
	.space	1
.LC22:
	.ascii	"De-counter(DC)     %s\012\000"
	.space	1
.LC23:
	.ascii	"De-blocking(DB)    %s\012\000"
	.space	1
.LC24:
	.ascii	"De-ringing(DR)     %s\012\000"
	.space	1
.LC25:
	.ascii	"SetVdecExtra ERROR: extra_ref = %d is out of [ -500"
	.ascii	"0, 5000 ]!\012\000"
	.space	1
.LC26:
	.ascii	"SetVdecExtra ERROR: extra_disp = %d is out of [ -50"
	.ascii	"00, 5000 ]!\012\000"
.LC27:
	.ascii	"Chan inactive\000"
	.space	2
.LC28:
	.ascii	"(safe,warn,danger) :amount = %d,%d,%d,%d\012\000"
	.space	2
.LC29:
	.ascii	"strm_ctrl: I->IPB\012\000"
	.space	1
.LC30:
	.ascii	"strm_ctrl: IPB->I\012\000"
	.space	1
.LC31:
	.ascii	"(CurrMode,NextMode) = %d,%d\012\000"
	.space	3
.LC32:
	.ascii	"ERROR: (nPmv(%d) + extra_ref(%d)) <= 0\012\000"
.LC33:
	.ascii	"ERROR: TempMinFrame(%d + %d + %d), TempMiddleFrame("
	.ascii	"%d + %d + %d), TempFluentFrame(%d + %d + %d)\012\000"
	.space	3
.LC34:
	.ascii	"ERROR: eCapLevel %d invalid\012\000"
	.space	3
.LC35:
	.ascii	"VCTRL_GetChanMemSize L%d: arrange return failure\012"
	.ascii	"\000"
	.space	2
.LC36:
	.ascii	"CAP_LEVEL_USER_DEFINE_WITH_OPTION option is illegal"
	.ascii	".\012\000"
	.space	2
.LC37:
	.ascii	"%s %d: arrange return failure\012\000"
	.space	1
.LC38:
	.ascii	"s32SlotWidth or s32SlotHeight is 0.\012\000"
	.space	3
.LC39:
	.ascii	"ERROR: s32MaxRefFrameNum(%d), extra_ref(%d), s32Dis"
	.ascii	"playFrameNum(%d), extra_disp(%d)\012\000"
	.space	3
.LC40:
	.ascii	"VDEC_CID_GET_CHAN_DETAIL_MEMSIZE_BY_OPTION is desig"
	.ascii	"ned for CAP_LEVEL_USER_DEFINE_WITH_OPTION, please c"
	.ascii	"hange channel's capability or use VDEC_CID_GET_CHAN"
	.ascii	"_MEMSIZE.\012\000"
.LC41:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION the purpose of cre"
	.ascii	"ating the channel is not clear.\012\000"
.LC42:
	.ascii	"can NOT start a not-opened Chan\000"
.LC43:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC44:
	.ascii	"ChanId out of range\000"
.LC45:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range\012\000"
	.space	1
.LC46:
	.ascii	"vfmw_ctrl.c, line %d: Chan %d is not open or not ru"
	.ascii	"nning\012\000"
	.space	2
.LC47:
	.ascii	"Chip(id: %d) not support beyond 2032x2032 when Std "
	.ascii	"!= USER.\012\000"
	.space	3
.LC48:
	.ascii	"Chip(id: %d) not support beyond %dx%d when Std != H"
	.ascii	"264/VP8/MVC/USER.\012\000"
	.space	2
.LC49:
	.ascii	"Unknow Chip ID: %d\012\000"
.LC50:
	.ascii	"create soft-decoder fail!\012\000"
	.space	1
.LC51:
	.ascii	"CreateChanWidthOption: arrange mem for dnr failed\012"
	.ascii	"\000"
	.space	1
.LC52:
	.ascii	"event_report null!\000"
	.space	1
.LC53:
	.ascii	"%s Unkown Adapter Type: %d\012\000"
.LC54:
	.ascii	"InstID out of range\000"
.LC55:
	.ascii	"s_VfmwCTrl.event_report_vdec = NULL\012\000"
	.space	3
.LC56:
	.ascii	"s_VfmwCTrl.event_report_omxvdec = NULL\012\000"
.LC57:
	.ascii	"register soft decoder fail: '%s' can not be NULL\012"
	.ascii	"\000"
	.space	2
.LC58:
	.ascii	"pfun_iMediaSoftDEC_Create\000"
	.space	2
.LC59:
	.ascii	"pfun_iMediaSoftDEC_Destroy\000"
	.space	1
.LC60:
	.ascii	"pfun_iMediaSoftDEC_Init\000"
.LC61:
	.ascii	"pfun_iMediaSoftDEC_Decode\000"
	.space	2
.LC62:
	.ascii	"pfun_iMediaSoftDEC_RecycleImage\000"
.LC63:
	.ascii	"pfun_iMediaSoftDEC_GetRemainImg\000"
.LC64:
	.ascii	"pfun_iMediaSoftDEC_GetImageBuffer\000"
	.space	2
.LC65:
	.ascii	"Last frame already output, vdhQ ID: %d\012\000"
.LC66:
	.ascii	"Last frame already output, image id: %d!\012\000"
	.space	2
.LC67:
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC68:
	.ascii	"OK create file '%s' for channel %d yuv save\012\000"
	.space	3
.LC69:
	.ascii	"failed create file '%s' for yuv save!\012\000"
	.space	1
.LC70:
	.ascii	">>>> close yuv saving >>>>\012\000"
.LC71:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC72:
	.ascii	"OK create file '%s' for channel %d seg stream save\012"
	.ascii	"\000"
.LC73:
	.ascii	"failed create file '%s' for seg stream save!\012\000"
	.space	2
.LC74:
	.ascii	">>>> close seg stream saving >>>>\012\000"
	.space	1
.LC75:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC76:
	.ascii	"OK create file '%s' for channel %d raw stream save\012"
	.ascii	"\000"
.LC77:
	.ascii	"failed create file '%s' for raw stream save!\012\000"
	.space	2
.LC78:
	.ascii	">>>> close raw stream saving >>>>\012\000"
	.space	1
.LC79:
	.ascii	"address '0x%x' is not valid!\012\000"
	.space	2
.LC80:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC81:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC82:
	.ascii	"1d image has been saved to '%s'\012\000"
	.space	3
.LC83:
	.ascii	"open file '%s' fail!\012\000"
	.space	2
.LC84:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC85:
	.ascii	"2d image has been saved to '%s'\012\000"
	.space	3
.LC86:
	.ascii	"DNR_ConfigChan ERROR\012\000"
	.space	2
.LC87:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC88:
	.ascii	"VCTRL_ReleaseImage ChanID out of range\000"
	.space	1
.LC89:
	.ascii	"VCTRL_ReleaseImage Chan inactive\000"
	.space	3
.LC90:
	.ascii	"VCTRL_ReleaseImage This channel is not opened\000"
	.space	2
.LC91:
	.ascii	"VCTRL_ReleaseImage pImage is NULL\000"
	.space	2
.LC92:
	.ascii	"vdm_ctrl.c,L%d: Chan inactive\012\000"
	.space	1
.LC93:
	.ascii	">>>>>line %d cannot support mvc\012\000"
	.space	3
.LC94:
	.ascii	"vfmw_ctrl.c, line %d: ChanID out of range is %d\012"
	.ascii	"\000"
	.space	3
.LC95:
	.ascii	"Chan %d is not open or not running\012\000"
.LC96:
	.ascii	"pic_pts: %lld\012\000"
	.space	1
.LC97:
	.ascii	"pic_usertag: %lld\012\000"
	.space	1
.LC98:
	.ascii	"pic_pts: %lld pic_usertag = %lld\012\000"
	.space	2
.LC99:
	.ascii	"vdec_vdh\000"
	.space	3
.LC100:
	.ascii	"vdec_scd\000"
	.space	3
.LC101:
	.ascii	"vdec_dnr\000"
	.space	3
.LC102:
	.ascii	"VFMW_Hal_%d\000"
.LC103:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC104:
	.ascii	"pstCfg is null\000"
	.space	1
.LC105:
	.ascii	"pArgs is null\000"
	.space	2
.LC106:
	.ascii	"pstStreamIntf is NULL\000"
	.space	2
.LC107:
	.ascii	"VCTRL_GetUsrdecFrame but VFMW_USER != s_pstVfmwChan"
	.ascii	"[ChanID]->eVidStd!\012\000"
	.space	1
.LC108:
	.ascii	"VCTRL_GetUsrdecFrame but s_pstVfmwChan[ChanID]->s32"
	.ascii	"UsrdecFrameNum < MIN_USERDEC_FRAME_NUM!\012\000"
.LC109:
	.ascii	"VCTRL_GetUsrdecFrame but FSP_IsNewFsAvalible(ChanID"
	.ascii	") != 1!\012\000"
.LC110:
	.ascii	"get frame store fail!\012\000"
	.space	1
.LC111:
	.ascii	"get image buffer ok: LogicFsID = %d\012\000"
	.space	3
.LC112:
	.ascii	"line: %d, pLf is NULL!\012\000"
.LC113:
	.ascii	"decode %p, disp %p, tf %p\012\000"
	.space	1
.LC114:
	.ascii	"VCTRL_GetUsrdecFrame get LogicFs fail!\012\000"
.LC115:
	.ascii	"userdec frame(phy=%#x) address error!\012\000"
	.space	1
.LC116:
	.ascii	"can not map vir addr for usrdat frame(cbphy=%#x)\012"
	.ascii	"\000"
	.space	2
.LC117:
	.ascii	"line: %d, pLogic is Null!\012\000"
	.space	1
.LC118:
	.ascii	"pDst is NULL !!!!!!\012\000"
	.space	3
.LC119:
	.ascii	"pUsrdecFrame == NULL\000"
	.space	3
.LC120:
	.ascii	"VCTRL_PutUsrdecFrame: VidStd is %d\012\000"
.LC121:
	.ascii	"VCTRL_PutUsrdecFrame return err\012\000"
	.space	3
.LC122:
	.ascii	"-1 == VCTRL_GetChanIDByCtx() Err! \012\000"
.LC123:
	.ascii	"This channel is not opened\000"
	.space	1
.LC124:
	.ascii	"This channel is not running\000"
.LC125:
	.ascii	"Syntax is stopped from This channel\000"
.LC126:
	.ascii	"[%d] vdm busy\012\000"
	.space	1
.LC127:
	.ascii	"[%d] no frame\012\000"
	.space	1
.LC128:
	.ascii	"[%d] no stream\012\000"
.LC129:
	.ascii	"seg_pts: %lld, seg_usertag = %lld\012\000"
	.space	1
.LC130:
	.ascii	"pImage is NULL\000"
	.space	1
.LC131:
	.ascii	"call VCTRL_ReleaseChanImage, ChanID, ImgID = %d,%d\012"
	.ascii	"\000"
.LC132:
	.ascii	"vdm_ctrl.c,L%d: This channel is not opened\012\000"
.LC133:
	.ascii	"call VCTRL_GetChanImage, ChanID = %d,\012\000"
	.space	1
.LC134:
	.ascii	"vfmw_ctrl.c,L%d: VCTRL_GetChanCfg error\012\000"
	.space	3
.LC135:
	.ascii	"WARNNING: ScdLowdlyEnable = %d, VidStd = %d, eDSPSt"
	.ascii	"ate = %d AVS(+) and LOWDLY  cannot supported in the"
	.ascii	" same time!!!\012\000"
	.space	3
.LC136:
	.ascii	"This Chan has not been created or has been destroye"
	.ascii	"d !!!\000"
	.space	3
.LC137:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC138:
	.ascii	"stop chan %d: VCTRL_StopChan return %d\012\000"
.LC139:
	.ascii	"This Chan has not been created!!!\000"
	.space	2
.LC140:
	.ascii	"WARNING: vidio std not setted!\000"
	.space	1
.LC141:
	.ascii	"start chan %d: VCTRL_StartChan return %d\012\000"
	.space	2
.LC142:
	.ascii	"---------------------------------------------------"
	.ascii	"----------------------\012\000"
	.space	1
.LC143:
	.ascii	"reset chan %d: VCTRL_ResetChan return %d\012\000"
	.space	2
.LC144:
	.ascii	"vdm_ctrl.c,L%d: pOption->s32KeepBS error\012\000"
	.space	2
.LC145:
	.ascii	"VDEC_CID_CREATE_CHAN_WITH_OPTION is designed for CA"
	.ascii	"P_LEVEL_USER_DEFINE_WITH_OPTION, please change chan"
	.ascii	"nel's capability.\012\000"
	.space	3
.LC146:
	.ascii	"line %d VCTRL_GetChanMemSizeWithOption failed!\012\000"
.LC147:
	.ascii	"L: %d : sdk can NOT alloc buffer for channel contex"
	.ascii	"t\012\000"
	.space	2
.LC148:
	.ascii	"L: %d : can NOT alloc buffer for SCD\012\000"
	.space	2
.LC149:
	.ascii	"L: %d : can NOT alloc buffer for VDH\012\000"
	.space	2
.LC150:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC151:
	.ascii	"L: %d : we can NOT alloc buffer for channel context"
	.ascii	"\012\000"
	.space	3
.LC152:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC153:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh\012\000"
	.space	2
.LC154:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC155:
	.ascii	"L: %d : can NOT alloc buffer for channel scd\012\000"
	.space	2
.LC156:
	.ascii	"L: %d : part we can NOT alloc buffer for channel co"
	.ascii	"ntext\012\000"
	.space	2
.LC157:
	.ascii	"L: %d : can NOT alloc buffer for channel context\012"
	.ascii	"\000"
	.space	2
.LC158:
	.ascii	"L: %d : can NOT alloc buffer for channel vdh, %#x <"
	.ascii	" %#x\012\000"
	.space	3
.LC159:
	.ascii	"VFMW_Chan_Pmv\000"
	.space	2
.LC160:
	.ascii	"L: %d : can NOT alloc buffer for channel PMV\012\000"
	.space	2
.LC161:
	.ascii	"L: %d : can NOT alloc buffer for PMV\012\000"
	.space	2
.LC162:
	.ascii	"mem alloc mode is not supportted\012\000"
	.space	2
.LC163:
	.ascii	"Dynamic Switch DNR Enable: %d, Threshold: %d x %d, "
	.ascii	"Dnr Num: %d\012\000"
.LC164:
	.ascii	"can NOT enable FSP instance\012\000"
	.space	3
.LC165:
	.ascii	"can NOT enable DNR instance\012\000"
	.space	3
.LC166:
	.ascii	"can NOT start DNR instance\012\000"
.LC167:
	.ascii	"vfmw have max(%d) channels opened, can NOT crerate "
	.ascii	"more channels\012\000"
	.space	2
.LC168:
	.ascii	"VCTRL_CreateChan eCapLevel = %d error! Try to use V"
	.ascii	"CTRL_CreateChanWithOption(CAP_LEVEL_USER_DEFINE_WIT"
	.ascii	"H_OPTION, ...)\012\000"
	.space	2
.LC169:
	.ascii	"VCTRL_GetChanMemSize ERROR\012\000"
.LC170:
	.ascii	"channel memory have been allocated outside, but the"
	.ascii	" mem-info is not correct!\012\000"
	.space	2
.LC171:
	.ascii	"mem-info(phy, vir, size) = (%#x, %p, %d)\012\000"
	.space	2
.LC172:
	.ascii	"this channel totally need %d bytes memory\012\000"
	.space	1
.LC173:
	.ascii	"image size abnormal(%dx%d)\012\000"
.LC174:
	.ascii	"no mem to arrange for soft dec\012\000"
.LC175:
	.ascii	"partition fs memory fail!\012\000"
	.space	1
.LC176:
	.ascii	"%s: L%d : vdm chan memory is too small to support u"
	.ascii	"ser decoder\012\000"
.LC177:
	.ascii	"FSP_ConfigInstance fail!\012\000"
	.space	2
.LC178:
	.ascii	"can NOT config a not-opened Chan\000"
	.space	3
.LC179:
	.ascii	"VCTRL_CheckChanWH return err.\012\000"
	.space	1
.LC180:
	.ascii	"VCTRL_ConfigChan with same config paramater.\012\000"
	.space	2
.LC181:
	.ascii	"%s %d: s_pstVfmwChan has been destroyed!!\012\000"
	.space	1
.LC182:
	.ascii	"====== Fatal Error0: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC183:
	.ascii	"fatal error: can not del mem record(phy=0x%x,vir=%p"
	.ascii	",len=%d)\012\000"
	.space	3
.LC184:
	.ascii	"====== Fatal Error1: can NOT re-map vir address for"
	.ascii	" channel %d ======\012\000"
	.space	1
.LC185:
	.ascii	"can NOT enable DNR instancen(as soft dec)\012\000"
	.space	1
.LC186:
	.ascii	"can NOT enable DNR instancen\012\000"
	.space	2
.LC187:
	.ascii	"can NOT VCTRL_PartitionMemForStdUser\012\000"
	.space	2
.LC188:
	.ascii	"chan %d: new StrmOFThr = %d\012\000"
	.space	3
.LC189:
	.ascii	"chan %d: new DecMode = %d\012\000"
	.space	1
.LC190:
	.ascii	"chan %d: new DecOrderOutput = %d\012\000"
	.space	2
.LC191:
	.ascii	"chan %d: new ChanErrThr = %d\012\000"
	.space	2
.LC192:
	.ascii	"ChanID %d is out of range!\012\000"
.LC193:
	.ascii	"pstChanState = NULL\000"
.LC194:
	.ascii	"s_pstVfmwChan = NULL\000"
	.space	3
.LC195:
	.ascii	"can NOT get a not-opened Chan's information of bits"
	.ascii	"tream\000"
	.space	3
.LC196:
	.ascii	"extra_ref=\000"
	.space	1
.LC197:
	.ascii	"=\000"
	.space	2
.LC198:
	.ascii	" \000"
	.space	2
.LC199:
	.ascii	"fuction return value is null,%s %d unknow error!!\012"
	.ascii	"\000"
	.space	1
.LC200:
	.ascii	"ERROR: extra_ref = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	2
.LC201:
	.ascii	"extra_disp=\000"
.LC202:
	.ascii	"ERROR: extra_disp = %d is out of [ -5000, 5000 ]!\012"
	.ascii	"\000"
	.space	1
.LC203:
	.ascii	"extra_cmd=\000"
	.space	1
.LC204:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC205:
	.ascii	"Thread running...\012\000"
	.space	1
.LC206:
	.ascii	"thread running...\012\000"
	.space	1
.LC207:
	.ascii	"Thread stopped!\012\000"
	.space	3
.LC208:
	.ascii	"thread stopped...\012\000"
	.space	1
.LC209:
	.ascii	"Thread killed!\012\000"
.LC210:
	.ascii	"*** vdm can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC211:
	.ascii	"*** scd can NOT exit sleep, state is %d ***\012\000"
	.space	3
.LC212:
	.ascii	"proc cmd need no param:%p\012\000"
	.space	1
.LC213:
	.ascii	"wait vdm overtime(%d), force it sleep!\012\000"
.LC214:
	.ascii	"wait scd overtime(%d), force it sleep!\012\000"
.LC215:
	.ascii	"wait dnr overtime(%d), force it sleep!\012\000"
.LC216:
	.ascii	"*** vfmw sleep totally take %d ms\012\000"
	.space	1
.LC217:
	.ascii	"auto\000"
	.space	3
.LC218:
	.ascii	"force on\000"
	.space	3
.LC219:
	.ascii	"force off\000"
	.section	__param,"a",%progbits
	.align	2
	.type	__param_extra_cmd, %object
	.size	__param_extra_cmd, 16
__param_extra_cmd:
@ name:
	.word	__param_str_extra_cmd
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_cmd
	.type	__param_extra_disp, %object
	.size	__param_extra_disp, 16
__param_extra_disp:
@ name:
	.word	__param_str_extra_disp
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_disp
	.type	__param_extra_ref, %object
	.size	__param_extra_ref, 16
__param_extra_ref:
@ name:
	.word	__param_str_extra_ref
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.short	-1
@ <anonymous>:
@ arg:
	.word	extra_ref
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR3 = . + 8184
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 16
s_pstVfmwChan:
	.space	16
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	g_EsBufValidFlag, %object
	.size	g_EsBufValidFlag, 16
g_EsBufValidFlag:
	.space	16
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	g_scd_vir, %object
	.size	g_scd_vir, 16
g_scd_vir:
	.space	16
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.40760, %object
	.size	save_file_cnt.40760, 4
save_file_cnt.40760:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.40734, %object
	.size	save_file_cnt.40734, 4
save_file_cnt.40734:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.40708, %object
	.size	save_file_cnt.40708, 4
save_file_cnt.40708:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	g_VfmwIrqHandle, %object
	.size	g_VfmwIrqHandle, 4
g_VfmwIrqHandle:
	.space	4
	.type	last_rec_pos_time.40082, %object
	.size	last_rec_pos_time.40082, 16
last_rec_pos_time.40082:
	.space	16
	.type	last_rec_pos_report_time.40083, %object
	.size	last_rec_pos_report_time.40083, 16
last_rec_pos_report_time.40083:
	.space	16
	.type	last_rec_pos_decparam_time.40084, %object
	.size	last_rec_pos_decparam_time.40084, 16
last_rec_pos_decparam_time.40084:
	.space	16
	.type	ChanPriTab.39885, %object
	.size	ChanPriTab.39885, 16
ChanPriTab.39885:
	.space	16
	.type	g_DSPState, %object
	.size	g_DSPState, 16
g_DSPState:
	.space	16
	.type	PrioArray.37670, %object
	.size	PrioArray.37670, 16
PrioArray.37670:
	.space	16
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 96
g_VfmwChanStat:
	.space	96
	.type	PrioArray.37706, %object
	.size	PrioArray.37706, 16
PrioArray.37706:
	.space	16
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_ChanTick, %object
	.size	g_ChanTick, 16
g_ChanTick:
	.space	16
	.type	FspInstInfo.36749, %object
	.size	FspInstInfo.36749, 3340
FspInstInfo.36749:
	.space	3340
	.type	PrioArray.38221, %object
	.size	PrioArray.38221, 16
PrioArray.38221:
	.space	16
	.type	cmdline, %object
	.size	cmdline, 1024
cmdline:
	.space	1024
	.type	extra_cmd, %object
	.size	extra_cmd, 4
extra_cmd:
	.space	4
	.type	g_allow_B_before_P, %object
	.size	g_allow_B_before_P, 1
g_allow_B_before_P:
	.space	1
	.type	g_not_allow_H264FullPictureRepair_flag, %object
	.size	g_not_allow_H264FullPictureRepair_flag, 1
g_not_allow_H264FullPictureRepair_flag:
	.space	1
	.space	2
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	LastEventTime.36397, %object
	.size	LastEventTime.36397, 4
LastEventTime.36397:
	.space	4
	.type	g_DbgMemPhy, %object
	.size	g_DbgMemPhy, 4
g_DbgMemPhy:
	.space	4
	.type	g_pDbgMemVir, %object
	.size	g_pDbgMemVir, 4
g_pDbgMemVir:
	.space	4
	.type	g_VdecIrqHandle, %object
	.size	g_VdecIrqHandle, 4
g_VdecIrqHandle:
	.space	4
	.type	g_DnrIrqHandle, %object
	.size	g_DnrIrqHandle, 4
g_DnrIrqHandle:
	.space	4
	.type	g_VfmwGlobalStat, %object
	.size	g_VfmwGlobalStat, 48
g_VfmwGlobalStat:
	.space	48
	.type	g_eVdmVersion, %object
	.size	g_eVdmVersion, 4
g_eVdmVersion:
	.space	4
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 8
g_ActivateLock:
	.space	8
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
