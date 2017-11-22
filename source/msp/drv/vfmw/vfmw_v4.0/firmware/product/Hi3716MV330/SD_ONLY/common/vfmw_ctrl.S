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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv330
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
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
.LFB1654:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r3, [r0, #0]	@ <variable>.pfun_iMediaSoftDEC_Create, <variable>.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_Create,
	bne	.L6	@,
.L2:
	mvn	ip, #0	@ D.33547,
.L3:
	mov	r0, ip	@, D.33547
	ldmfd	sp!, {r4, r5}
	bx	lr
.L6:
	ldr	r1, [r0, #4]	@ <variable>.pfun_iMediaSoftDEC_Destroy, <variable>.pfun_iMediaSoftDEC_Destroy
	cmp	r1, #0	@ <variable>.pfun_iMediaSoftDEC_Destroy,
	beq	.L2	@,
	ldr	r2, [r0, #8]	@ <variable>.pfun_iMediaSoftDEC_Init, <variable>.pfun_iMediaSoftDEC_Init
	cmp	r2, #0	@ <variable>.pfun_iMediaSoftDEC_Init,
	beq	.L2	@,
	ldr	ip, [r0, #12]	@ <variable>.pfun_iMediaSoftDEC_Decode, <variable>.pfun_iMediaSoftDEC_Decode
	cmp	ip, #0	@ <variable>.pfun_iMediaSoftDEC_Decode,
	beq	.L2	@,
	ldr	r3, [r0, #16]	@ <variable>.pfun_iMediaSoftDEC_RecycleImage, <variable>.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ <variable>.pfun_iMediaSoftDEC_RecycleImage,
	beq	.L2	@,
	ldr	r1, [r0, #20]	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg, <variable>.pfun_iMediaSoftDEC_GetRemainImg
	cmp	r1, #0	@ <variable>.pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L2	@,
	ldr	r2, [r0, #24]	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer, <variable>.pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r2, #0	@ <variable>.pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L2	@,
	mov	r5, r0	@ pstSdecFunc, pstSdecFunc
	movw	r4, #:lower16:.LANCHOR0	@ tmp143,
	ldmia	r5!, {r0, r1, r2, r3}	@ pstSdecFunc,,,,
	movt	r4, #:upper16:.LANCHOR0	@ tmp143,
	mov	ip, #0	@ D.33547,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp143,,,,
	ldmia	r5, {r0, r1, r2}	@ pstSdecFunc,,,
	stmia	r4, {r0, r1, r2}	@ tmp144,,,
	b	.L3	@
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
.LFB1666:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	beq	.L15	@,
.L8:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
.L15:
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	ldr	ip, [r3, #28]	@ D.33791, s_pstVfmwChan
	cmp	ip, #0	@ D.33791,
	beq	.L8	@,
	ldr	ip, [ip, #20]	@ <variable>.eAdapterType, <variable>.eAdapterType
	cmp	ip, #0	@ <variable>.eAdapterType,
	bne	.L16	@,
	ldr	r3, [r3, #176]	@ D.33794, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.33794,
	beq	.L9	@,
.L14:
	blx	r3	@ D.33799
	ldmfd	sp!, {r3, pc}	@
.L16:
	cmp	ip, #1	@ <variable>.eAdapterType,
	bne	.L9	@,
	ldr	r3, [r3, #180]	@ D.33799, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.33799,
	bne	.L14	@,
.L9:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.global	VCTRL_SetCallBack
	.type	VCTRL_SetCallBack, %function
VCTRL_SetCallBack:
	.fnstart
.LFB1667:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ event_report
	bne	.L23	@,
.L18:
	mvn	r0, #0	@ D.33817,
	bx	lr	@
.L23:
	cmp	r0, #0	@ eType,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp137,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp137,
	streq	r1, [r3, #176]	@ event_report, s_VfmwCTrl.event_report_vdec
	bxeq	lr	@
	cmp	r0, #1	@ eType,
	bne	.L18	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	mov	r0, #0	@ D.33817,
	str	r1, [r3, #180]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	bx	lr	@
	.fnend
	.size	VCTRL_SetCallBack, .-VCTRL_SetCallBack
	.align	2
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
	.fnstart
.LFB1673:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #2	@, tmp140, tmp137, ChanID,
	ldr	r0, [r3, #28]	@ D.33944, s_pstVfmwChan
	cmp	r0, #0	@ D.33944,
	addne	r0, r0, #104	@ D.33947, D.33944,
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #2	@, tmp140, tmp137, ChanID,
	ldr	r0, [r3, #28]	@ D.33964, s_pstVfmwChan
	cmp	r0, #0	@ D.33964,
	addne	r0, r0, #128	@ D.33967, D.33964,
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
	mov	r0, r0, asl #2	@ tmp210, ChanID,
	movw	r3, #:lower16:.LANCHOR0	@ tmp209,
	movt	r3, #:upper16:.LANCHOR0	@ tmp209,
	movw	ip, #:lower16:176090	@ tmp180,
	stmfd	sp!, {r4, r5, r6, r7, r8}	@,
	.save {r4, r5, r6, r7, r8}
	add	r4, r0, r3	@ tmp178, tmp210, tmp209
	movt	ip, #:upper16:176090	@ tmp180,
	ldr	r6, [r4, #28]	@ temp.972, s_pstVfmwChan
	ldrsb	r4, [r6, ip]	@ D.34032, <variable>.FspInst.s32DecFsNum
	cmp	r4, #0	@ D.34032,
	movle	r7, #0	@ prephitmp.951,
	ble	.L34	@,
	add	r7, r6, #203776	@ tmp185, temp.972,
	mov	r8, #52	@ tmp183,
	add	ip, r7, #102	@ tmp185, tmp185,
	mov	r7, #0	@ s32DecodedFrameNum,
	mul	r8, r8, r4	@ D.38534, tmp183, D.34032
	ldrsb	r4, [ip, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r4, #3	@ <variable>.DispState,
	sub	ip, r8, #52	@ tmp215, D.38534,
	ubfx	r4, ip, #2, #1	@ tmp228, tmp215,,
	beq	.L53	@,
.L42:
	mov	ip, #52	@ ivtmp.966,
	cmp	ip, r8	@ ivtmp.966, D.38534
	beq	.L34	@,
	cmp	r4, #0	@ tmp228,
	beq	.L36	@,
	add	r4, r6, #203776	@ tmp242, temp.972,
	add	ip, ip, #52	@ ivtmp.966, ivtmp.966,
	add	r4, r4, #154	@ tmp242, tmp242,
	ldrsb	r4, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	r4, #3	@ <variable>.DispState,
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	ip, r8	@ ivtmp.966, D.38534
	bne	.L36	@,
	b	.L34	@
.L47:
	add	ip, r5, #52	@ ivtmp.966, tmp229,
	cmp	ip, r8	@ ivtmp.966, D.38534
	beq	.L34	@,
.L36:
	add	r5, ip, #52	@ tmp229, ivtmp.966,
	add	ip, r6, ip	@ tmp231, temp.972, ivtmp.966
	add	ip, ip, #203776	@ tmp233, tmp231,
	add	r4, r6, r5	@ tmp236, temp.972, tmp229
	add	ip, ip, #102	@ tmp233, tmp233,
	add	r4, r4, #203776	@ tmp238, tmp236,
	add	r4, r4, #102	@ tmp238, tmp238,
	ldrsb	ip, [ip, #0]	@ <variable>.DispState, <variable>.DispState
	cmp	ip, #3	@ <variable>.DispState,
	ldrsb	ip, [r4, #0]	@ <variable>.DispState, <variable>.DispState
	addeq	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	ip, #3	@ <variable>.DispState,
	bne	.L47	@,
	add	ip, r5, #52	@ ivtmp.966, tmp229,
	add	r7, r7, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	ip, r8	@ ivtmp.966, D.38534
	bne	.L36	@,
.L34:
	add	r4, r0, r3	@ tmp191, tmp210, tmp209
	str	r7, [r1, #88]	@ prephitmp.951, <variable>.wait_disp_frame_num
	movw	ip, #:lower16:176090	@ tmp194,
	movt	ip, #:upper16:176090	@ tmp194,
	ldr	r4, [r4, #28]	@ tmp193, s_pstVfmwChan
	add	r3, r0, r3	@ tmp200, tmp210, tmp209
	movw	r0, #:lower16:176090	@ tmp203,
	movt	r0, #:upper16:176090	@ tmp203,
	ldrb	ip, [r4, ip]	@ zero_extendqisi2	@ temp.969, <variable>.FspInst.s32DecFsNum
	cmp	ip, #0	@ temp.969,
	moveq	ip, #4	@ iftmp.482,
	mvnne	r4, r2	@ tmp195, RefNum
	sxtabne	ip, r4, ip	@ iftmp.482, tmp195, temp.969
	str	ip, [r1, #96]	@ iftmp.482, <variable>.total_disp_frame_num
	ldr	r3, [r3, #28]	@ tmp202, s_pstVfmwChan
	ldrsb	r3, [r3, r0]	@ temp.971, <variable>.FspInst.s32DecFsNum
	cmp	r3, #0	@ temp.971,
	ble	.L40	@,
	add	r2, r2, #1	@ tmp206, RefNum,
	cmp	r3, r2	@ temp.971, tmp206
	movle	r3, #0	@ tmp207,
	strle	r3, [r1, #96]	@ tmp207, <variable>.total_disp_frame_num
.L40:
	ldmfd	sp!, {r4, r5, r6, r7, r8}
	bx	lr
.L53:
	mov	r7, #1	@ s32DecodedFrameNum,
	b	.L42	@
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
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #2	@, tmp140, tmp137, ChanID,
	ldr	r0, [r3, #28]	@ D.34084, s_pstVfmwChan
	cmp	r0, #0	@ D.34084,
	addne	r0, r0, #116	@ D.34087, D.34084,
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
	movw	r3, #:lower16:493440	@ tmp136,
	movt	r3, #:upper16:493440	@ tmp136,
	str	r3, [r1, #0]	@ tmp136,* s32ChanCtxSize
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanCtxSize, .-VCTRL_GetChanCtxSize
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
	mov	r7, r0, asl #2	@ tmp410, ChanID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp409,
	ldr	fp, [sp, #532]	@, ChanMemDetail.ChanMemVdh.VirAddr
	movt	r4, #:upper16:.LANCHOR0	@ tmp409,
	str	r1, [sp, #64]	@ eCapLevel, %sfp
	add	r0, r7, r4	@ tmp165, tmp410, tmp409
	ldr	r1, [sp, #568]	@, ChanMemDetail.ChanMemCtx.Length
	movw	ip, #:lower16:211808	@ tmp187,
	ldr	r9, [sp, #560]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	movt	ip, #:upper16:211808	@ tmp187,
	str	r2, [sp, #68]	@ OneChanMemFlag, %sfp
	str	fp, [sp, #60]	@, %sfp
	ldr	r2, [sp, #564]	@, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	fp, [sp, #576]	@, ChanMemDetail.ChanMemPmv.PhyAddr
	str	r1, [sp, #48]	@, %sfp
	ldr	r1, [sp, #604]	@, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	r5, [sp, #552]	@, ChanMemDetail.ChanMemScd.Length
	str	r9, [sp, #56]	@, %sfp
	str	r2, [sp, #52]	@, %sfp
	ldr	r9, [sp, #580]	@, ChanMemDetail.ChanMemPmv.VirAddr
	ldr	r2, [sp, #584]	@, ChanMemDetail.ChanMemPmv.Length
	str	fp, [sp, #44]	@, %sfp
	str	r1, [sp, #28]	@, %sfp
	ldr	fp, [r0, #28]	@, s_pstVfmwChan
	ldr	r1, [sp, #592]	@, ChanMemFlag.SelfAllocChanMem_vdh
	str	r5, [sp, #32]	@, %sfp
	str	r9, [sp, #40]	@, %sfp
	str	r2, [sp, #36]	@, %sfp
	ldr	r9, [sp, #596]	@ ChanMemFlag$SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	ldr	r2, [sp, #600]	@ ChanMemFlag$SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	ldr	sl, [sp, #544]	@ ChanMemDetail$ChanMemScd$PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r8, [sp, #548]	@ ChanMemDetail$ChanMemScd$VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	ldr	r5, [sp, #528]	@ ChanMemDetail$ChanMemVdh$PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r6, [sp, #536]	@ ChanMemDetail$ChanMemVdh$Length, ChanMemDetail.ChanMemVdh.Length
	str	r1, [fp, #216]	@, <variable>.s32SelfAllocChanMem_vdh
	ldr	fp, [r0, #28]	@ tmp174, s_pstVfmwChan
	str	r9, [fp, #220]	@ ChanMemFlag$SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	ldr	r9, [r0, #28]	@ tmp180, s_pstVfmwChan
	str	r2, [r9, #224]	@ ChanMemFlag$SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	ldr	r2, [r0, #28]	@ tmp186, s_pstVfmwChan
	ldr	r1, [sp, #28]	@, %sfp
	str	r1, [r2, ip]	@, <variable>.s32SelfAllocChanMem_pmv
	ldr	r2, [r3, #8]	@ <variable>.MemAllocMode, <variable>.MemAllocMode
	cmp	r2, #3	@ <variable>.MemAllocMode,
	ldrne	r2, [r0, #28]	@ prephitmp.1070, s_pstVfmwChan
	beq	.L71	@,
.L62:
	mov	r0, #0	@ tmp230,
	str	r0, [r2, #148]	@ tmp230, <variable>.s32OneChanMem
.L63:
	add	r2, r7, r4	@ tmp234, tmp410, tmp409
	movw	ip, #:lower16:211820	@ tmp291,
	movt	ip, #:upper16:211820	@ tmp291,
	movw	r0, #:lower16:211816	@ tmp298,
	ldr	r9, [r2, #28]	@ tmp236, s_pstVfmwChan
	movt	r0, #:upper16:211816	@ tmp298,
	movw	r1, #:lower16:211824	@ tmp305,
	movt	r1, #:upper16:211824	@ tmp305,
	str	r5, [r9, #176]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.stChanMem_vdh.PhyAddr
	ldr	fp, [sp, #60]	@, %sfp
	ldr	r9, [r2, #28]	@ tmp242, s_pstVfmwChan
	str	fp, [r9, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r9, [r2, #28]	@ tmp248, s_pstVfmwChan
	str	r6, [r9, #180]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.stChanMem_vdh.Length
	ldr	fp, [r2, #28]	@ tmp254, s_pstVfmwChan
	str	sl, [fp, #192]	@ ChanMemDetail$ChanMemScd$PhyAddr, <variable>.stChanMem_scd.PhyAddr
	ldr	r9, [r2, #28]	@ tmp260, s_pstVfmwChan
	str	r8, [r9, #188]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem_scd.VirAddr
	ldr	fp, [sp, #32]	@, %sfp
	ldr	r9, [r2, #28]	@ tmp266, s_pstVfmwChan
	str	fp, [r9, #196]	@, <variable>.stChanMem_scd.Length
	ldr	fp, [sp, #56]	@, %sfp
	ldr	r9, [r2, #28]	@ tmp272, s_pstVfmwChan
	str	fp, [r9, #208]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	fp, [sp, #52]	@, %sfp
	ldr	r9, [r2, #28]	@ tmp278, s_pstVfmwChan
	str	fp, [r9, #204]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	fp, [sp, #48]	@, %sfp
	ldr	r9, [r2, #28]	@ tmp284, s_pstVfmwChan
	str	fp, [r9, #212]	@, <variable>.stChanMem_ctx.Length
	ldr	fp, [sp, #44]	@, %sfp
	ldr	r9, [r2, #28]	@ tmp290, s_pstVfmwChan
	str	fp, [r9, ip]	@, <variable>.stChanMem_pmv.PhyAddr
	ldr	r9, [sp, #40]	@, %sfp
	ldr	fp, [r2, #28]	@ tmp297, s_pstVfmwChan
	str	r9, [fp, r0]	@, <variable>.stChanMem_pmv.VirAddr
	ldr	fp, [sp, #36]	@, %sfp
	ldr	r0, [r2, #28]	@ tmp304, s_pstVfmwChan
	str	fp, [r0, r1]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r2, #28]	@ tmp316, s_pstVfmwChan
	str	r8, [r2, #184]	@ ChanMemDetail$ChanMemScd$VirAddr, g_scd_vir
	str	r5, [r1, #248]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32SdecMemAddr
	ldr	ip, [r2, #28]	@ tmp322, s_pstVfmwChan
	str	r6, [ip, #252]	@ ChanMemDetail$ChanMemVdh$Length, <variable>.s32SdecMemSize
	ldr	r1, [r2, #28]	@ temp.1101, s_pstVfmwChan
	ldr	r0, [r1, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L72	@,
	mov	r0, #0	@ tmp345,
	str	r0, [r1, #236]	@ tmp345, <variable>.s32OffLineDnrMemAddr
	ldr	r1, [r2, #28]	@ tmp351, s_pstVfmwChan
	str	r0, [r1, #240]	@ tmp345, <variable>.s32OffLineDNRMemSize
.L68:
	add	r4, r7, r4	@ tmp356, tmp410, tmp409
	sub	r6, r6, #16	@ tmp365, ChanMemDetail$ChanMemVdh$Length,
	mov	r3, #0	@ tmp374,
	ldr	r2, [r4, #28]	@ temp.1104, s_pstVfmwChan
	mov	r0, r3	@ D.34782, tmp374
	ldr	r1, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	add	r5, r1, r5	@ tmp359, <variable>.s32OffLineDNRMemSize, ChanMemDetail$ChanMemVdh$PhyAddr
	str	r5, [r2, #228]	@ tmp359, <variable>.s32VdmChanMemAddr
	ldr	r2, [r4, #28]	@ temp.1105, s_pstVfmwChan
	ldr	ip, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	rsb	r6, ip, r6	@ tmp367, <variable>.s32OffLineDNRMemSize, tmp365
	str	r6, [r2, #232]	@ tmp367, <variable>.s32VdmChanMemSize
	ldr	r1, [r4, #28]	@ tmp373, s_pstVfmwChan
	str	r3, [r1, #260]	@ tmp374, <variable>.s32BpdChanMemAddr
	ldr	ip, [r4, #28]	@ tmp380, s_pstVfmwChan
	str	r3, [ip, #264]	@ tmp374, <variable>.s32BpdChanMemSize
	ldr	r2, [r4, #28]	@ tmp387, s_pstVfmwChan
	str	r3, [r2, #268]	@ tmp374, <variable>.s32Vp8SegIdChanMemAddr
	ldr	r1, [r4, #28]	@ tmp394, s_pstVfmwChan
	str	r3, [r1, #272]	@ tmp374, <variable>.s32Vp8SegIdChanMemSize
	ldr	ip, [r4, #28]	@ tmp401, s_pstVfmwChan
	str	sl, [ip, #244]	@ ChanMemDetail$ChanMemScd$PhyAddr, <variable>.s32ScdChanMemAddr
	ldr	r2, [sp, #32]	@, %sfp
	ldr	r3, [r4, #28]	@ tmp407, s_pstVfmwChan
	str	r2, [r3, #256]	@, <variable>.s32ScdChanMemSize
.L69:
	add	sp, sp, #492	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L71:
	ldr	r2, [r0, #28]	@ prephitmp.1070, s_pstVfmwChan
	ldr	ip, [r2, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	bne	.L62	@,
	ldr	r1, [r2, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	cmp	r1, #0	@ <variable>.s32SelfAllocChanMem_vdh,
	bne	.L62	@,
	ldr	r9, [r2, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	r9, #0	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L62	@,
	ldr	r9, [sp, #32]	@, %sfp
	ldr	fp, [sp, #68]	@, %sfp
	add	r1, sl, r9	@ tmp199, ChanMemDetail$ChanMemScd$PhyAddr,
	cmp	fp, #1	@,
	cmpeq	r5, r1	@, ChanMemDetail$ChanMemVdh$PhyAddr, tmp199
	bne	.L62	@,
	str	sl, [r2, #160]	@ ChanMemDetail$ChanMemScd$PhyAddr, <variable>.stChanMem.PhyAddr
	add	r1, r6, r9	@ tmp217, ChanMemDetail$ChanMemVdh$Length,
	ldr	fp, [r0, #28]	@ tmp210, s_pstVfmwChan
	str	r8, [fp, #156]	@ ChanMemDetail$ChanMemScd$VirAddr, <variable>.stChanMem.VirAddr
	ldr	r9, [r0, #28]	@ tmp216, s_pstVfmwChan
	str	r1, [r9, #164]	@ tmp217, <variable>.stChanMem.Length
	ldr	r2, [r0, #28]	@ tmp223, s_pstVfmwChan
	str	ip, [r2, #148]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32OneChanMem
	b	.L63	@
.L72:
	ldr	ip, [sp, #64]	@, %sfp
	movw	r2, #:lower16:g_vdm_hal_fun_ptr	@ tmp329,
	movt	r2, #:upper16:g_vdm_hal_fun_ptr	@ tmp329,
	str	r5, [r1, #236]	@ ChanMemDetail$ChanMemVdh$PhyAddr, <variable>.s32OffLineDnrMemAddr
	cmp	ip, #24	@,
	ldr	ip, [r2, #36]	@ D.34777, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	moveq	r0, #1	@ DnrImgNum,
	ldrne	r0, [r3, #60]	@ DnrImgNum, <variable>.s32DisplayFrameNum
	cmp	ip, #0	@ D.34777,
	bne	.L73	@,
.L67:
	mvn	r0, #0	@ D.34782,
	b	.L69	@
.L73:
	ldr	lr, [r3, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mov	r1, #0	@ tmp332,
	ldr	r2, [r3, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	str	r0, [sp, #4]	@ DnrImgNum,
	add	r0, sp, #72	@ tmp336,,
	str	r1, [sp, #8]	@ tmp332,
	mov	r3, lr	@, <variable>.s32MaxHeight
	str	r0, [sp, #16]	@ tmp336,
	mvn	lr, #0	@ tmp334,
	str	r1, [sp, #0]	@ tmp332,
	mov	r0, r5	@, ChanMemDetail$ChanMemVdh$PhyAddr
	str	lr, [sp, #12]	@ tmp334,
	mov	r1, r6	@, ChanMemDetail$ChanMemVdh$Length
	mov	lr, #16	@ tmp337,
	str	lr, [sp, #20]	@ tmp337,
	blx	ip	@ D.34777
	cmp	r0, #0	@,
	bne	.L67	@,
	add	ip, r7, r4	@ tmp341, tmp410, tmp409
	ldr	r2, [sp, #76]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	ldr	r3, [ip, #28]	@ tmp343, s_pstVfmwChan
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, <variable>.s32OffLineDNRMemSize
	b	.L68	@
	.fnend
	.size	VCTRL_ConfigMemInfo, .-VCTRL_ConfigMemInfo
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
.LFB1703:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r6, r0, asl #2	@ tmp180, ChanID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp179,
	movt	r4, #:upper16:.LANCHOR0	@ tmp179,
	add	r5, r6, r4	@ tmp149, tmp180, tmp179
	mov	r2, #0	@ tmp151,
	mov	r7, r1	@ pstSoftDecMem, pstSoftDecMem
	ldr	r3, [r5, #28]	@ D.35068, s_pstVfmwChan
	ldr	r1, [r3, #1624]	@ eOldDecCore, <variable>.eDecCore
	str	r2, [r3, #1624]	@ tmp151, <variable>.eDecCore
	ldr	r0, [r5, #28]	@ prephitmp.1129, s_pstVfmwChan
	ldr	r2, [r0, #1624]	@ prephitmp.1131, <variable>.eDecCore
	cmp	r2, r1	@ prephitmp.1131, eOldDecCore
	beq	.L75	@,
	sub	r1, r1, #1	@ tmp157, eOldDecCore,
	cmp	r1, #4	@ tmp157,
	bhi	.L76	@,
	ldr	r3, [r4, #4]	@ D.35077, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.35077,
	beq	.L76	@,
	add	r0, r0, #210944	@, prephitmp.1129,
	add	r0, r0, #896	@,,
	blx	r3	@ D.35077
	ldr	r0, [r5, #28]	@ prephitmp.1129, s_pstVfmwChan
	ldr	r2, [r0, #1624]	@ prephitmp.1131, <variable>.eDecCore
.L76:
	sub	ip, r2, #1	@ tmp166, prephitmp.1131,
	cmp	ip, #4	@ tmp166,
	bls	.L80	@,
.L75:
	mov	r0, #0	@ D.35092,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L80:
	ldr	r1, [r0, #24]	@ <variable>.eChanCapLevel, <variable>.eChanCapLevel
	movw	r3, #:lower16:211852	@ tmp167,
	movt	r3, #:upper16:211852	@ tmp167,
	movw	r2, #:lower16:.LANCHOR0	@ tmp169,
	movt	r2, #:upper16:.LANCHOR0	@ tmp169,
	str	r1, [r0, r3]	@ <variable>.eChanCapLevel, <variable>.stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	ldr	r3, [r4, #0]	@ D.35089, g_SdecFunc.pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ D.35089,
	bne	.L81	@,
.L77:
	mvn	r0, #0	@ D.35092,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L81:
	add	r2, r6, r2	@ tmp173, tmp180, tmp169
	mov	r1, r7	@, pstSoftDecMem
	ldr	lr, [r2, #28]	@ temp.1142, s_pstVfmwChan
	add	r0, lr, #210944	@, temp.1142,
	add	r0, r0, #896	@,,
	ldr	r2, [lr, #880]	@, <variable>.eVidStd
	blx	r3	@ D.35089
	cmp	r0, #0	@,
	beq	.L75	@,
	b	.L77	@
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.global	VCTRL_CheckCommonParameter
	.type	VCTRL_CheckCommonParameter, %function
VCTRL_CheckCommonParameter:
	.fnstart
.LFB1704:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	ip, #:lower16:.LANCHOR0	@ tmp138,
	movt	ip, #:upper16:.LANCHOR0	@ tmp138,
	add	r3, ip, r0, asl #2	@, tmp141, tmp138, ChanID,
	ldr	r2, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r3, [r3, #28]	@ D.35098, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r0, r2	@ <variable>.stChanCfg.eVidStd, <variable>.eVidStd
	bne	.L83	@,
	ldr	r0, [r3, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldr	r2, [r1, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	cmp	r0, r2	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.s32ChanErrThr
	bne	.L83	@,
	ldr	ip, [r3, #44]	@ <variable>.stChanCfg.s32ChanPriority, <variable>.stChanCfg.s32ChanPriority
	ldr	r0, [r1, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	cmp	ip, r0	@ <variable>.stChanCfg.s32ChanPriority, <variable>.s32ChanPriority
	bne	.L83	@,
	ldr	ip, [r3, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	ldr	r2, [r1, #20]	@ <variable>.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	cmp	ip, r2	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.s32ChanStrmOFThr
	bne	.L83	@,
	ldr	r0, [r3, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	ldr	ip, [r1, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	cmp	r0, ip	@ <variable>.stChanCfg.s32DecMode, <variable>.s32DecMode
	bne	.L83	@,
	ldr	r0, [r3, #60]	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.stChanCfg.s32DecOrderOutput
	ldr	r2, [r1, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	cmp	r0, r2	@ <variable>.stChanCfg.s32DecOrderOutput, <variable>.s32DecOrderOutput
	bne	.L83	@,
	ldr	ip, [r3, #68]	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.stChanCfg.s32DnrDispOutEnable
	ldr	r0, [r1, #36]	@ <variable>.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	cmp	ip, r0	@ <variable>.stChanCfg.s32DnrDispOutEnable, <variable>.s32DnrDispOutEnable
	bne	.L83	@,
	ldr	ip, [r3, #64]	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.stChanCfg.s32DnrTfEnable
	ldr	r2, [r1, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	cmp	ip, r2	@ <variable>.stChanCfg.s32DnrTfEnable, <variable>.s32DnrTfEnable
	bne	.L83	@,
	ldr	r0, [r3, #76]	@ <variable>.stChanCfg.s32VcmpEn, <variable>.stChanCfg.s32VcmpEn
	ldr	ip, [r1, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r0, ip	@ <variable>.stChanCfg.s32VcmpEn, <variable>.s32VcmpEn
	bne	.L83	@,
	ldr	r0, [r3, #88]	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.stChanCfg.s32VcmpWmEndLine
	ldr	r2, [r1, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	cmp	r0, r2	@ <variable>.stChanCfg.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	bne	.L83	@,
	ldr	ip, [r3, #84]	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.stChanCfg.s32VcmpWmStartLine
	ldr	r0, [r1, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	cmp	ip, r0	@ <variable>.stChanCfg.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	bne	.L83	@,
	ldr	r0, [r3, #80]	@ <variable>.stChanCfg.s32WmEn, <variable>.stChanCfg.s32WmEn
	ldr	r2, [r1, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	cmp	r0, r2	@ <variable>.stChanCfg.s32WmEn, <variable>.s32WmEn
	bne	.L83	@,
	ldr	ip, [r3, #92]	@ <variable>.stChanCfg.s32SupportAllP, <variable>.stChanCfg.s32SupportAllP
	ldr	r3, [r1, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	ip, r3	@ <variable>.stChanCfg.s32SupportAllP, <variable>.s32SupportAllP
	moveq	r0, #0	@ D.35151,
	bxeq	lr	@
.L83:
	mvn	r0, #0	@ D.35151,
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
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	mov	r5, r1	@ pstCfg, pstCfg
	add	r2, r4, r0, asl #2	@, tmp143, tmp140, ChanID,
	ldr	r4, [r2, #28]	@ D.35157, s_pstVfmwChan
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	bne	.L92	@,
.L87:
	mvn	r0, #0	@ D.35174,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L92:
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@,
	bne	.L87	@,
	ldr	r3, [r4, #32]	@ D.35164, <variable>.stChanCfg.eVidStd
	cmp	r3, #1	@ D.35164,
	beq	.L93	@,
	sub	r3, r3, #10	@ tmp150, D.35164,
	cmp	r3, #2	@ tmp150,
	bhi	.L89	@,
	ldr	r2, [r4, #36]	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r5, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	r2, r0	@ <variable>.stChanCfg.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	bne	.L87	@,
.L89:
	mov	r0, #0	@ D.35174,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L93:
	ldr	r0, [r4, #36]	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r1, [r5, #4]	@ <variable>.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r0, r1	@ <variable>.stChanCfg.StdExt.Vc1Ext.IsAdvProfile, <variable>.StdExt.Vc1Ext.IsAdvProfile
	bne	.L87	@,
	ldr	ip, [r4, #40]	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	lr, [r5, #8]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	ip, lr	@ <variable>.stChanCfg.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	beq	.L89	@,
	b	.L87	@
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
.LFB1706:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movw	ip, #:lower16:g_chipID	@ tmp146,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	movt	ip, #:upper16:g_chipID	@ tmp146,
	add	r2, r3, r0, asl #2	@, tmp144, tmp141, ChanID,
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r0, [ip, #0]	@ g_chipID, g_chipID
	ldr	r3, [r2, #28]	@ D.35209, s_pstVfmwChan
	cmp	r0, #16	@ g_chipID,
	ldr	ip, [r3, #1460]	@ ChanMaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r3, #1456]	@ ChanMaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bls	.L104	@,
.L95:
	mvn	r0, #0	@ ret,
.L101:
	ldmfd	sp!, {r4}
	bx	lr
.L104:
	mov	r4, #1	@ tmp149,
	movw	r3, #:lower16:102368	@ tmp151,
	mov	r0, r4, asl r0	@ tmp148, tmp149,
	movt	r3, #:upper16:102368	@ tmp151,
	and	r3, r0, r3	@ tmp151, tmp148, tmp151
	cmp	r3, #0	@ tmp151,
	beq	.L105	@,
	movw	r0, #:lower16:g_ChipMaxWidth	@ tmp159,
	movt	r0, #:upper16:g_ChipMaxWidth	@ tmp159,
	ldr	r3, [r0, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r2, r3	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L106	@,
	ldr	r3, [r1, #0]	@ D.35222, <variable>.eVidStd
	cmp	r3, #13	@ D.35222,
	cmpne	r3, #0	@, D.35222,
	beq	.L99	@,
.L108:
	cmp	r3, #15	@ D.35222,
	beq	.L99	@,
	cmp	r3, #18	@ D.35222,
	bne	.L95	@,
.L99:
	mov	r0, #0	@ ret,
	b	.L101	@
.L105:
	tst	r0, #31	@ tmp148,
	beq	.L95	@,
	movw	r3, #:lower16:g_ChipMaxWidth	@ tmp154,
	movt	r3, #:upper16:g_ChipMaxWidth	@ tmp154,
	ldr	r0, [r3, #0]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	r2, r0	@ ChanMaxWidth, g_ChipMaxWidth
	ble	.L107	@,
	ldr	ip, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #18	@ <variable>.eVidStd,
	bne	.L95	@,
.L103:
	mov	r0, #0	@ ret,
	b	.L101	@
.L107:
	movw	r0, #:lower16:g_ChipMaxHeight	@ tmp156,
	movt	r0, #:upper16:g_ChipMaxHeight	@ tmp156,
	ldr	r2, [r0, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	ip, r2	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L99	@,
	ldr	ip, [r1, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	ip, #18	@ <variable>.eVidStd,
	beq	.L103	@,
	b	.L95	@
.L106:
	movw	r3, #:lower16:g_ChipMaxHeight	@ tmp161,
	movt	r3, #:upper16:g_ChipMaxHeight	@ tmp161,
	ldr	r2, [r3, #0]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	ip, r2	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L99	@,
	ldr	r3, [r1, #0]	@ D.35222, <variable>.eVidStd
	cmp	r3, #13	@ D.35222,
	cmpne	r3, #0	@, D.35222,
	bne	.L108	@,
	b	.L99	@
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
.LFB1721:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanId,
	bne	.L110	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #28]	@ D.35828, s_pstVfmwChan
	cmp	r3, #0	@ D.35828,
	beq	.L110	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	ldreq	r0, [r3, #880]	@ D.35829, <variable>.eVidStd
	bxeq	lr	@
.L110:
	mov	r0, #19	@ D.35829,
	bx	lr	@
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
.LFB1725:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanId
	beq	.L117	@,
.L114:
	mvn	r0, #0	@ D.35908,
	bx	lr	@
.L117:
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #28]	@ D.35910, s_pstVfmwChan
	cmp	r3, #0	@ D.35910,
	beq	.L114	@,
	cmp	r1, #0	@ pstMemRec,
	beq	.L114	@,
	ldr	r2, [r3, #148]	@ <variable>.s32OneChanMem, <variable>.s32OneChanMem
	cmp	r2, #1	@ <variable>.s32OneChanMem,
	bne	.L114	@,
	add	r2, r3, #156
	ldmia	r2, {r2, r3, ip}	@ phole ldm
	cmp	r2, #0	@ D.35922,
	stmib	r1, {r2, r3, ip}	@ phole stm
	bxne	lr	@
	b	.L114	@
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_ClearDecparam
	.type	VCTRL_ClearDecparam, %function
VCTRL_ClearDecparam:
	.fnstart
.LFB1728:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp135,
	movt	r2, #:upper16:.LANCHOR0	@ tmp135,
	add	r3, r2, r0, asl #2	@, tmp138, tmp135, ChanId,
	ldr	r2, [r3, #28]	@ D.35960, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #0	@ <variable>.eVidStd,
	movweq	r1, #:lower16:212200	@ tmp141,
	movteq	r1, #:upper16:212200	@ tmp141,
	streq	r3, [r2, r1]	@ <variable>.eVidStd, <variable>.stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	bxeq	lr	@
	cmp	r3, #3	@ <variable>.eVidStd,
	movweq	r0, #:lower16:211844	@ tmp143,
	movteq	r0, #:upper16:211844	@ tmp143,
	moveq	r1, #0	@ tmp144,
	streq	r1, [r2, r0]	@ tmp144, <variable>.stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	bx	lr	@
	.fnend
	.size	VCTRL_ClearDecparam, .-VCTRL_ClearDecparam
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
.LFB1732:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L127	@,
.L124:
	mvn	r0, #0	@ D.36023,
	bx	lr	@
.L127:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #28]	@ D.36025, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L124	@,
	cmp	r1, #0	@ pArgs,
	ldrne	r2, [r1, #0]	@ tmp140,* pArgs
	strne	r2, [r3, #1408]	@ tmp140, <variable>.stSynExtraData.s32FastForwardBackwardSpeed
	bxne	lr	@
	b	.L124	@
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
	.fnstart
.LFB1735:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	add	r1, r2, r0, asl #2	@, tmp139, tmp136, ChanID,
	ldr	r3, [r1, #28]	@ tmp141, s_pstVfmwChan
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
.LFB1736:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	beq	.L134	@,
.L131:
	mvn	r0, #0	@ D.36095,
	bx	lr	@
.L134:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #28]	@ D.36094, s_pstVfmwChan
	cmp	r3, #0	@ D.36094,
	beq	.L131	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #0	@ <variable>.s32IsOpen,
	beq	.L131	@,
	ldr	r1, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #0	@ <variable>.s32IsRun,
	beq	.L131	@,
	ldr	ip, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	ip, #0	@ <variable>.s32Priority,
	beq	.L131	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	bxne	lr	@
	b	.L131	@
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	VCTRL_GetMemSize_onFramePath
	.type	VCTRL_GetMemSize_onFramePath, %function
VCTRL_GetMemSize_onFramePath:
	.fnstart
.LFB1743:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #64]	@ D.36335, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.36335,
	bne	.L139	@,
.L136:
	mvn	r0, #0	@ D.36338,
	bx	lr	@
.L139:
	ldr	r0, [r1, #68]	@ D.36337, <variable>.s32SlotHeight
	cmp	r0, #0	@ D.36337,
	beq	.L136	@,
	mul	r3, r0, r3	@ tmp140, D.36337, D.36335
	ldr	ip, [r1, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	movw	r1, #:lower16:493440	@ tmp146,
	movt	r1, #:upper16:493440	@ tmp146,
	str	r1, [r2, #8]	@ tmp146, <variable>.ChanCtxDetailMem
	mov	r0, #0	@ tmp145,
	str	r0, [r2, #12]	@ tmp145, <variable>.PmvDetailMem
	str	r0, [r2, #4]	@ tmp145, <variable>.ScdDetailMem
	mov	r1, r3, asl #1	@ tmp141, tmp140,
	mla	r3, ip, r1, r1	@ tmp144, <variable>.s32DisplayFrameNum, tmp141, tmp141
	str	r3, [r2, #0]	@ tmp144, <variable>.VdhDetailMem
	bx	lr	@
	.fnend
	.size	VCTRL_GetMemSize_onFramePath, .-VCTRL_GetMemSize_onFramePath
	.align	2
	.global	VCTRL_VarifyOption_onDecode
	.type	VCTRL_VarifyOption_onDecode, %function
VCTRL_VarifyOption_onDecode:
	.fnstart
.LFB1744:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r3, #0	@ <variable>.s32MaxRefFrameNum,
	bge	.L145	@,
.L141:
	mvn	r0, #0	@ D.36365,
	bx	lr	@
.L145:
	ldr	r1, [r0, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	r1, #31	@ <variable>.s32MaxWidth,
	ble	.L141	@,
	ldr	r2, [r0, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	r2, #31	@ <variable>.s32MaxHeight,
	ble	.L141	@,
	ldr	ip, [r0, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	ip, #262144	@ <variable>.s32SCDBufSize,
	blt	.L141	@,
	ldr	r3, [r0, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #1	@ <variable>.s32SupportH264,
	beq	.L146	@,
.L142:
	mov	r0, #0	@ D.36365,
	bx	lr	@
.L146:
	ldr	r1, [r0, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L141	@,
	ldr	r2, [r0, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r2, #0	@ <variable>.s32MaxSpsNum,
	ble	.L141	@,
	ldr	ip, [r0, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L142	@,
	b	.L141	@
	.fnend
	.size	VCTRL_VarifyOption_onDecode, .-VCTRL_VarifyOption_onDecode
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
.LFB1745:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	ip, #:lower16:g_vdm_hal_fun_ptr	@ tmp139,
	movt	ip, #:upper16:g_vdm_hal_fun_ptr	@ tmp139,
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	ldr	ip, [ip, #100]	@ D.36373, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r4, r0	@ FrmNum, FrmNum
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.36373,
	mvneq	r0, #0	@ iftmp.596,
	beq	.L149	@,
	mov	r0, r1	@, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.36373
.L149:
	mul	r4, r4, r0	@ tmp140, FrmNum, iftmp.596
	str	r4, [r5, #0]	@ tmp140,* pChanPmvSize
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_GetChanPmvSize, .-VCTRL_GetChanPmvSize
	.align	2
	.global	VCTRL_GetMemSize_onDecode
	.type	VCTRL_GetMemSize_onDecode, %function
VCTRL_GetMemSize_onDecode:
	.fnstart
.LFB1746:
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
	beq	.L158	@,
.L152:
	mvn	r0, #0	@ D.36394,
.L156:
	add	sp, sp, #448	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L158:
	ldr	r0, [r4, #40]	@ <variable>.s32SupportBFrame, <variable>.s32SupportBFrame
	cmp	r0, #0	@ <variable>.s32SupportBFrame,
	bne	.L153	@,
	ldr	r6, [r4, #32]	@ prephitmp.1440, <variable>.s32MaxRefFrameNum
	mov	r8, #1	@ PmvNum,
	add	r0, r6, r8	@ PmvNum.1451, prephitmp.1440,
.L154:
	ldr	r1, [r4, #12]	@, <variable>.s32MaxWidth
	add	r3, sp, #444	@,,
	ldr	r2, [r4, #16]	@, <variable>.s32MaxHeight
	ldr	r7, [r4, #60]	@ D.36400, <variable>.s32DisplayFrameNum
	bl	VCTRL_GetChanPmvSize	@
	ldr	r2, [sp, #444]	@ ChanPmvSize, ChanPmvSize
	movw	r1, #:lower16:g_vdm_hal_fun_ptr	@ tmp151,
	movt	r1, #:upper16:g_vdm_hal_fun_ptr	@ tmp151,
	str	r2, [r5, #12]	@ ChanPmvSize, <variable>.PmvDetailMem
	ldr	ip, [r1, #36]	@ D.36406, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.36406,
	beq	.L152	@,
	ldr	r2, [r4, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	mov	lr, #0	@ tmp155,
	ldr	r3, [r4, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	mvn	r1, #0	@ tmp156,
	str	lr, [sp, #8]	@ tmp155,
	add	r0, sp, #28	@ tmp158,,
	str	r1, [sp, #12]	@ tmp156,
	mov	lr, #16	@ tmp159,
	str	r0, [sp, #16]	@ tmp158,
	add	r6, r6, r7	@ tmp154, prephitmp.1440, D.36400
	str	r8, [sp, #0]	@ PmvNum,
	mov	r0, #1	@,
	str	r6, [sp, #4]	@ tmp154,
	mvn	r1, #-2147483648	@,
	str	lr, [sp, #20]	@ tmp159,
	blx	ip	@ D.36406
	cmp	r0, #0	@ ret
	bne	.L152	@,
	ldr	r1, [sp, #32]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r2, r1, #16	@ tmp161, MemArrange.TotalMemUsed,
	str	r2, [r5, #0]	@ tmp161, <variable>.VdhDetailMem
	ldr	r3, [r4, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	add	ip, r3, #32768	@ tmp163, <variable>.s32SCDBufSize,
	str	ip, [r5, #4]	@ tmp163, <variable>.ScdDetailMem
	ldr	r3, [r4, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r3, #0	@ <variable>.s32SupportH264,
	beq	.L159	@,
	ldr	r3, [r4, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	mov	ip, #4000	@ tmp171,
	ldr	lr, [r4, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	ldr	r2, [r4, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	mul	r1, ip, r3	@ tmp169, tmp171, <variable>.s32MaxSpsNum
	movw	ip, #4060	@ tmp168,
	mla	r3, ip, lr, r1	@ tmp172, tmp168, <variable>.s32MaxSliceNum, tmp169
	mov	r1, #2208	@ tmp177,
	add	lr, r3, #491520	@ tmp173, tmp172,
	add	r3, lr, #1920	@ tmp173, tmp173,
	mla	ip, r1, r2, r3	@ tmp178, tmp177, <variable>.s32MaxPpsNum, tmp173
	str	ip, [r5, #8]	@ tmp178, <variable>.ChanCtxDetailMem
	b	.L156	@
.L153:
	ldr	r6, [r4, #32]	@ prephitmp.1440, <variable>.s32MaxRefFrameNum
	add	r0, r6, #1	@ PmvNum.1451, prephitmp.1440,
	cmp	r0, #17	@ PmvNum.1451,
	movlt	r8, r0	@ PmvNum, PmvNum.1451
	movge	r8, #17	@ PmvNum,
	b	.L154	@
.L159:
	movw	lr, #:lower16:493440	@ tmp165,
	mov	r0, r3	@ D.36394, <variable>.s32SupportH264
	movt	lr, #:upper16:493440	@ tmp165,
	str	lr, [r5, #8]	@ tmp165, <variable>.ChanCtxDetailMem
	b	.L156	@
	.fnend
	.size	VCTRL_GetMemSize_onDecode, .-VCTRL_GetMemSize_onDecode
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
.LFB1747:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r3, #2	@ flag,
	stmfd	sp!, {r4, r5, r6}	@,
	.save {r4, r5, r6}
	beq	.L161	@,
	movw	ip, #:lower16:.LANCHOR0	@ tmp144,
	movt	ip, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r4, [r1, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	ldr	r6, [ip, #188]	@ extra_ref, extra_ref
	ldr	r5, [ip, #192]	@ extra_disp, extra_disp
	ldr	ip, [r1, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	add	r4, r6, r4	@ TempRefNum, extra_ref, <variable>.s32MaxRefFrameNum
	cmp	r4, #16	@ TempRefNum,
	movge	r4, #16	@ TempRefNum,
	add	ip, r5, ip	@ TempDispNum, extra_disp, <variable>.s32DisplayFrameNum
	orrs	r5, r4, ip	@, TempRefNum, TempDispNum
	bpl	.L167	@,
.L162:
	mvn	r0, #0	@ ret,
.L164:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L167:
	rsbs	r3, r3, #1	@ tmp165, flag
	movcc	r3, #0	@ tmp165
	cmp	r0, #25	@ eCapLevel,
	str	r4, [r1, #32]	@ TempRefNum, <variable>.s32MaxRefFrameNum
	moveq	r3, #0	@, tmp165,
	cmp	r3, #0	@ tmp165,
	str	ip, [r1, #60]	@ TempDispNum, <variable>.s32DisplayFrameNum
	bne	.L162	@,
.L161:
	ldr	r3, [r1, #4]	@ D.36463, <variable>.Purpose
	cmp	r3, #2	@ D.36463,
	bhi	.L162	@,
	beq	.L168	@,
	cmp	r3, #1	@ D.36463,
	bne	.L162	@,
	ldmfd	sp!, {r4, r5, r6}
	b	VCTRL_GetMemSize_onDecode	@
.L168:
	ldr	r3, [r1, #64]	@ D.38218, <variable>.s32SlotWidth
	cmp	r3, #0	@ D.38218,
	beq	.L162	@,
	ldr	r0, [r1, #68]	@ D.38217, <variable>.s32SlotHeight
	cmp	r0, #0	@ D.38217,
	beq	.L162	@,
	mul	r3, r0, r3	@ tmp166, D.38217, D.38218
	ldr	ip, [r1, #60]	@ <variable>.s32DisplayFrameNum, <variable>.s32DisplayFrameNum
	movw	r1, #:lower16:493440	@ tmp172,
	movt	r1, #:upper16:493440	@ tmp172,
	add	ip, ip, #1	@ tmp168, <variable>.s32DisplayFrameNum,
	str	r1, [r2, #8]	@ tmp172, <variable>.ChanCtxDetailMem
	mov	r0, #0	@ tmp171,
	str	r0, [r2, #12]	@ tmp171, <variable>.PmvDetailMem
	str	r0, [r2, #4]	@ tmp171, <variable>.ScdDetailMem
	mov	r3, r3, asl #1	@ tmp167, tmp166,
	mul	r1, ip, r3	@ tmp170, tmp168, tmp167
	str	r1, [r2, #0]	@ tmp170, <variable>.VdhDetailMem
	b	.L164	@
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
.LFB1748:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r3, r0, asl #3	@ tmp293, eCapLevel,
	sub	sl, r0, #18	@ D.38221, eCapLevel,
	rsb	r6, r0, r3	@ tmp168, eCapLevel, tmp293
	cmp	sl, #7	@ D.38221,
	movw	ip, #:lower16:CapItem	@ tmp294,
	movt	ip, #:upper16:CapItem	@ tmp294,
	mov	r5, r1	@ VdmMemSize, VdmMemSize
	add	r4, ip, r6, asl #2	@, tmp170, tmp294, tmp168,
	mov	r6, r2	@ ScdMemSize, ScdMemSize
	movwls	r2, #:lower16:.LANCHOR1	@ tmp196,
	movtls	r2, #:upper16:.LANCHOR1	@ tmp196,
	ldr	r9, [r4, #8]	@ TempPmv, CapItem
	.pad #460
	sub	sp, sp, #460	@,,
	add	r1, r4, #12
	ldmia	r1, {r1, r7, r8}	@ phole ldm
	movhi	r4, #6	@ MinDnrFspNum,
	ldrls	r4, [r2, sl, asl #2]	@ MinDnrFspNum, CSWTCH.805
	movw	sl, #:lower16:.LANCHOR0	@ tmp292,
	movt	sl, #:upper16:.LANCHOR0	@ tmp292,
	rsb	r4, r4, r1	@ s32MaxRefFrameNum, MinDnrFspNum, TempMinFrame
	ldr	r2, [sl, #188]	@ extra_ref, extra_ref
	cmp	r4, #15	@ s32MaxRefFrameNum,
	bic	r2, r2, r2, asr #31	@ extra_ref_tmp, extra_ref
	str	r2, [sl, #188]	@ extra_ref_tmp, extra_ref
	movgt	r2, #0	@ extra_ref_tmp,
	bgt	.L173	@,
	add	r4, r4, r2	@ D.36511, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r4, #16	@ D.36511,
	addgt	r2, r2, #16	@ D.36514, extra_ref_tmp,
	rsbgt	r2, r4, r2	@ extra_ref_tmp, D.36511, D.36514
.L173:
	add	r4, r2, r9	@ TempPmv.1504, extra_ref_tmp, TempPmv
	ldr	sl, [sl, #192]	@ extra_disp.608, extra_disp
	cmp	r4, #0	@ TempPmv.1504,
	ble	.L182	@,
	cmp	r4, #17	@ TempPmv.1504,
	movge	r4, #17	@ nPmv,
.L175:
	cmp	r0, #23	@ eCapLevel,
	bhi	.L176	@,
	add	r2, r2, sl	@ D.36517, extra_ref_tmp, extra_disp.608
	add	r9, r2, r1	@ TempMinFrame.1501, D.36517, TempMinFrame
	add	fp, r2, r7	@ TempMiddleFrame.1502, D.36517, TempMiddleFrame
	cmp	r9, #0	@ TempMinFrame.1501,
	cmpgt	fp, #0	@, TempMiddleFrame.1502,
	ble	.L178	@,
	add	r2, r2, r8	@ TempFluentFrame.1503, D.36517, TempFluentFrame
	cmp	r2, #0	@ TempFluentFrame.1503,
	movgt	r8, r2	@ nFluentFrame, TempFluentFrame.1503
	movgt	r7, fp	@ nMiddleFrame, TempMiddleFrame.1502
	movgt	r1, r9	@ nMinFrame, TempMinFrame.1501
.L178:
	movw	sl, #:lower16:g_vdm_hal_fun_ptr	@ tmp208,
	movt	sl, #:upper16:g_vdm_hal_fun_ptr	@ tmp208,
	ldr	fp, [sl, #36]	@ D.36535, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	fp, #0	@ D.36535,
	beq	.L179	@,
	rsb	r9, r0, r3	@ tmp212, eCapLevel, tmp293
	str	r1, [sp, #4]	@ nMinFrame,
	add	r1, r9, #1	@, tmp212,
	str	r4, [sp, #0]	@ nPmv,
	mov	r3, r9, asl #2	@, tmp212,
	str	r3, [sp, #32]	@, %sfp
	ldr	r2, [ip, r9, asl #2]	@ tmp215, CapItem
	mvn	lr, #0	@,
	ldr	r3, [ip, r1, asl #2]	@ tmp221, CapItem
	mov	r0, #0	@ tmp222,
	str	lr, [sp, #12]	@,
	ldr	lr, [sp, #32]	@, %sfp
	str	r1, [sp, #28]	@, %sfp
	add	r1, sp, #40	@,,
	str	r0, [sp, #8]	@ tmp222,
	add	ip, lr, ip	@,, tmp294
	str	r1, [sp, #16]	@,
	mov	r0, #16	@,
	mvn	r1, #-2147483648	@,
	str	r0, [sp, #20]	@,
	str	ip, [sp, #36]	@, %sfp
	mov	r0, #1	@,
	blx	fp	@ D.36535
	movw	fp, #:lower16:CapItem	@ tmp209,
	movt	fp, #:upper16:CapItem	@ tmp209,
	subs	r2, r0, #0	@ ret,
	bne	.L179	@,
	ldr	ip, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, ip, #16	@ tmp228, MemArrange.TotalMemUsed,
	str	r3, [r5, #0]	@ tmp228,* VdmMemSize
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r0, [r1, #24]	@ tmp237, CapItem
	add	ip, r0, #32768	@ tmp238, tmp237,
	str	ip, [r6, #0]	@ tmp238,* ScdMemSize
	ldr	ip, [sl, #36]	@ temp.1505, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1505,
	beq	.L179	@,
	ldr	r1, [sp, #28]	@, %sfp
	mov	r0, #1	@,
	ldr	r3, [fp, r9, asl #2]	@ tmp246, CapItem
	ldr	lr, [fp, r1, asl #2]	@ tmp252, CapItem
	mvn	r1, #-2147483648	@,
	str	r2, [sp, #8]	@ ret,
	mov	r2, r3	@, tmp246
	str	r7, [sp, #4]	@ nMiddleFrame,
	mov	r3, lr	@, tmp252
	str	r4, [sp, #0]	@ nPmv,
	mvn	lr, #0	@,
	str	lr, [sp, #12]	@,
	add	lr, sp, #40	@,,
	str	lr, [sp, #16]	@,
	mov	lr, #16	@,
	str	lr, [sp, #20]	@,
	blx	ip	@ temp.1505
	subs	r2, r0, #0	@ ret.1508,
	bne	.L179	@,
	ldr	r3, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	ip, r3, #16	@ tmp259, MemArrange.TotalMemUsed,
	str	ip, [r5, #4]	@ tmp259,
	ldr	r1, [sp, #36]	@, %sfp
	ldr	r3, [r1, #24]	@ tmp266, CapItem
	add	ip, r3, #32768	@ tmp267, tmp266,
	str	ip, [r6, #4]	@ tmp267,
	ldr	ip, [sl, #36]	@ temp.1513, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ temp.1513,
	beq	.L179	@,
	str	r2, [sp, #8]	@ ret.1508,
	add	lr, sp, #40	@,,
	mvn	r2, #0	@,
	str	lr, [sp, #16]	@,
	str	r2, [sp, #12]	@,
	mov	r3, #16	@,
	ldr	r2, [sp, #28]	@, %sfp
	add	r0, r0, #1	@,,
	ldr	lr, [sp, #32]	@, %sfp
	mvn	r1, #-2147483648	@,
	stmia	sp, {r4, r8}	@ phole stm
	str	r3, [sp, #20]	@,
	ldr	r3, [fp, r2, asl #2]	@, CapItem
	ldr	r2, [lr, fp]	@, CapItem
	blx	ip	@ temp.1513
	cmp	r0, #0	@ ret.1516
	bne	.L179	@,
	ldr	r1, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r2, r1, #16	@ tmp282, MemArrange.TotalMemUsed,
	str	r2, [r5, #8]	@ tmp282,
	ldr	r3, [sp, #36]	@, %sfp
	ldr	ip, [r3, #24]	@ tmp289, CapItem
	add	r1, ip, #32768	@ tmp290, tmp289,
	str	r1, [r6, #8]	@ tmp290,
	b	.L180	@
.L176:
	cmp	r0, #32	@ eCapLevel,
	bls	.L178	@,
.L179:
	mvn	r0, #0	@ D.36533,
.L180:
	add	sp, sp, #460	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L182:
	cmp	r9, #17	@ TempPmv,
	movlt	r4, r9	@ nPmv, TempPmv
	movge	r4, #17	@ nPmv,
	b	.L175	@
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
.LFB1753:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ CurMode,
	beq	.L188	@,
	cmp	r2, r1	@ Threshould, StreamAmount
	bxge	lr	@
	mov	r0, #3	@ NextMode,
	bx	lr	@
.L188:
	cmp	r2, #0	@ Threshould,
	add	r3, r2, #7	@ tmp140, Threshould,
	movlt	r2, r3	@ Threshould, tmp140
	cmp	r1, r2, asr #3	@ StreamAmount, Threshould,
	movlt	r0, #0	@ NextMode,
	bxlt	lr	@
	mov	r0, #3	@ NextMode,
	bx	lr	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
.LFB1755:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #28]	@ D.36949, s_pstVfmwChan
	cmp	r3, #0	@ D.36949,
	beq	.L190	@,
	add	r2, r3, #210944	@ tmp138, D.36949,
	add	r1, r2, #896	@ tmp138, tmp138,
	cmp	r1, r0	@ tmp138, pCtx
	moveq	r0, #0	@ i,
	bxeq	lr	@
.L190:
	mvn	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
.LFB1756:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r3, [r3, #28]	@ D.36965, s_pstVfmwChan
	cmp	r3, #0	@ D.36965,
	beq	.L194	@,
	ldr	r2, [r3, #176]	@ D.36968, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.36968
	bge	.L195	@,
.L197:
	ldr	r2, [r3, #192]	@ D.36976, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.36976
	blt	.L194	@,
	ldr	r1, [r3, #196]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	add	r2, r2, r1	@ tmp140, D.36976, <variable>.stChanMem_scd.Length
	cmp	r0, r2	@ PhyAddr, tmp140
	blt	.L196	@,
.L194:
	mvn	r0, #0	@ i,
	bx	lr	@
.L195:
	ldr	r1, [r3, #180]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	add	ip, r2, r1	@ tmp142, D.36968, <variable>.stChanMem_vdh.Length
	cmp	r0, ip	@ PhyAddr, tmp142
	bge	.L197	@,
.L196:
	mov	r0, #0	@ i,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
.LFB1760:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	add	r3, r1, r0, asl #2	@, tmp140, tmp137, ChanID,
	ldr	r0, [r3, #28]	@ D.37153, s_pstVfmwChan
	cmp	r0, #0	@ D.37153,
	beq	.L201	@,
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #3	@ <variable>.eVidStd,
	addeq	r0, r0, #282624	@ pstVoQue, D.37153,
	addeq	r0, r0, #2560	@ pstVoQue, pstVoQue,
	bxeq	lr	@
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L204	@,
	cmp	r3, #0	@ <variable>.eVidStd,
	beq	.L204	@,
.L201:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L204:
	add	r0, r0, #210944	@ pstVoQue, D.37153,
	add	r0, r0, #904	@ pstVoQue, pstVoQue,
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_GetDSDFlag
	.type	VCTRL_GetDSDFlag, %function
VCTRL_GetDSDFlag:
	.fnstart
.LFB1762:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r2, #:lower16:.LANCHOR0	@ tmp136,
	movt	r2, #:upper16:.LANCHOR0	@ tmp136,
	add	r1, r2, r0, asl #2	@, tmp139, tmp136, ChanID,
	ldr	r3, [r1, #28]	@ tmp141, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r0, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r0, #0	@,
	moveq	r0, #1	@,
	bx	lr	@
	.fnend
	.size	VCTRL_GetDSDFlag, .-VCTRL_GetDSDFlag
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
.LFB1765:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	beq	.L213	@,
.L210:
	mvn	r0, #0	@ D.37248,
	bx	lr	@
.L213:
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, #28]	@ D.37250, s_pstVfmwChan
	cmp	r3, #0	@ D.37250,
	ldrne	r0, [r3, #1456]	@ D.37248, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	bxne	lr	@
	b	.L210	@
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
.LFB1766:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	beq	.L218	@,
.L215:
	mvn	r0, #0	@ D.37258,
	bx	lr	@
.L218:
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, #28]	@ D.37260, s_pstVfmwChan
	cmp	r3, #0	@ D.37260,
	ldrne	r0, [r3, #1460]	@ D.37258, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	bxne	lr	@
	b	.L215	@
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
.LFB1767:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	mvnne	r0, #0	@ D.37268,
	bxne	lr	@
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, #28]	@ D.37270, s_pstVfmwChan
	cmp	r3, #0	@ D.37270,
	moveq	r0, #33	@ D.37268,
	ldrne	r0, [r3, #24]	@ D.37268, <variable>.eChanCapLevel
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
.LFB1768:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	movw	r2, #5000	@ tmp137,
	movw	ip, #:lower16:-5000	@ tmp145,
	cmp	r1, r2	@ new_extra_disp, tmp137
	movge	r1, r2	@ iftmp.1727, tmp137
	movt	ip, #:upper16:-5000	@ tmp145,
	cmp	r0, r2	@ new_extra_ref, tmp137
	movlt	r2, r0	@ iftmp.653, new_extra_ref
	movge	r2, r2	@ iftmp.653, tmp137
	cmp	r1, ip	@ iftmp.1727, tmp145
	strge	r1, [r3, #192]	@, iftmp.1727, extra_disp
	strlt	ip, [r3, #192]	@, tmp145, extra_disp
	cmp	r2, ip	@ iftmp.653, tmp145
	strge	r2, [r3, #188]	@, iftmp.653, extra_ref
	strlt	ip, [r3, #188]	@, tmp145, extra_ref
	bx	lr	@
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.type	VfmwProc_SetPrintLevel, %function
VfmwProc_SetPrintLevel:
	.fnstart
.LFB1775:
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
	.type	VfmwProc_SetDNR, %function
VfmwProc_SetDNR:
	.fnstart
.LFB1780:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldr	r0, [r0, #0]	@ dat,* p_args
	movw	r1, #:lower16:g_DREnable	@ tmp138,
	movw	r2, #:lower16:g_DBEnable	@ tmp140,
	and	r4, r0, #15	@ iftmp.701, dat,
	ubfx	ip, r0, #8, #4	@ iftmp.707, dat,,
	cmp	r4, #2	@ iftmp.701,
	ubfx	r0, r0, #4, #4	@ iftmp.704, dat,,
	movt	r1, #:upper16:g_DREnable	@ tmp138,
	movt	r2, #:upper16:g_DBEnable	@ tmp140,
	movhi	r4, #0	@ iftmp.701,
	cmp	r0, #2	@ iftmp.704,
	movw	r3, #:lower16:g_DCEnable	@ tmp142,
	movt	r3, #:upper16:g_DCEnable	@ tmp142,
	movhi	r0, #0	@ iftmp.704,
	cmp	ip, #2	@ iftmp.707,
	str	r4, [r1, #0]	@ iftmp.701, g_DREnable
	movhi	ip, #0	@ iftmp.707,
	str	r0, [r2, #0]	@ iftmp.704, g_DBEnable
	str	ip, [r3, #0]	@ iftmp.707, g_DCEnable
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	VfmwProc_SetDNR, .-VfmwProc_SetDNR
	.align	2
	.type	VfmwProc_SetUSE_FF_APT_EN, %function
VfmwProc_SetUSE_FF_APT_EN:
	.fnstart
.LFB1781:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	movwls	r2, #:lower16:USE_FF_APT_EN	@ tmp135,
	movtls	r2, #:upper16:USE_FF_APT_EN	@ tmp135,
	strls	r3, [r2, #0]	@ dat, USE_FF_APT_EN
	bx	lr	@
	.fnend
	.size	VfmwProc_SetUSE_FF_APT_EN, .-VfmwProc_SetUSE_FF_APT_EN
	.align	2
	.type	VfmwProc_SetSaveFileAfterReset, %function
VfmwProc_SetSaveFileAfterReset:
	.fnstart
.LFB1782:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	movwls	r2, #:lower16:.LANCHOR0	@ tmp135,
	movtls	r2, #:upper16:.LANCHOR0	@ tmp135,
	strls	r3, [r2, #196]	@ dat, g_ResetCreateNewSave
	bx	lr	@
	.fnend
	.size	VfmwProc_SetSaveFileAfterReset, .-VfmwProc_SetSaveFileAfterReset
	.align	2
	.type	VfmwProc_SetCurProcChan, %function
VfmwProc_SetCurProcChan:
	.fnstart
.LFB1783:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ dat,* p_args
	cmp	r3, #1	@ dat,
	movwls	r2, #:lower16:.LANCHOR0	@ tmp135,
	movtls	r2, #:upper16:.LANCHOR0	@ tmp135,
	strls	r3, [r2, #200]	@ dat, g_CurProcChan
	bx	lr	@
	.fnend
	.size	VfmwProc_SetCurProcChan, .-VfmwProc_SetCurProcChan
	.align	2
	.type	VfmwProc_PrintTracer, %function
VfmwProc_PrintTracer:
	.fnstart
.LFB1785:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	VfmwProc_PrintTracer, .-VfmwProc_PrintTracer
	.align	2
	.type	VfmwProc_TestTimeSequence, %function
VfmwProc_TestTimeSequence:
	.fnstart
.LFB1797:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	str	r2, [r3, #204]	@ tmp135, g_SleepTime
	bx	lr	@
	.fnend
	.size	VfmwProc_TestTimeSequence, .-VfmwProc_TestTimeSequence
	.align	2
	.type	VfmwProc_SetDnrSleepTime, %function
VfmwProc_SetDnrSleepTime:
	.fnstart
.LFB1798:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	str	r2, [r3, #208]	@ tmp135, g_DnrSleepTime
	bx	lr	@
	.fnend
	.size	VfmwProc_SetDnrSleepTime, .-VfmwProc_SetDnrSleepTime
	.align	2
	.type	VfmwProc_TestStopDec, %function
VfmwProc_TestStopDec:
	.fnstart
.LFB1799:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	str	r2, [r3, #212]	@ tmp135, g_StopDec
	bx	lr	@
	.fnend
	.size	VfmwProc_TestStopDec, .-VfmwProc_TestStopDec
	.align	2
	.type	VfmwProc_SetTraceCtrl, %function
VfmwProc_SetTraceCtrl:
	.fnstart
.LFB1800:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:g_TraceCtrl	@ tmp134,
	movt	r3, #:upper16:g_TraceCtrl	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, g_TraceCtrl
	bx	lr	@
	.fnend
	.size	VfmwProc_SetTraceCtrl, .-VfmwProc_SetTraceCtrl
	.align	2
	.type	VfmwProc_SetTraceBSPeriod, %function
VfmwProc_SetTraceBSPeriod:
	.fnstart
.LFB1801:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:g_TraceBsPeriod	@ tmp134,
	movt	r3, #:upper16:g_TraceBsPeriod	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, g_TraceBsPeriod
	bx	lr	@
	.fnend
	.size	VfmwProc_SetTraceBSPeriod, .-VfmwProc_SetTraceBSPeriod
	.align	2
	.type	VfmwProc_SetTraceFramePeriod, %function
VfmwProc_SetTraceFramePeriod:
	.fnstart
.LFB1802:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:g_TraceFramePeriod	@ tmp134,
	movt	r3, #:upper16:g_TraceFramePeriod	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, g_TraceFramePeriod
	bx	lr	@
	.fnend
	.size	VfmwProc_SetTraceFramePeriod, .-VfmwProc_SetTraceFramePeriod
	.align	2
	.type	VfmwProc_SetTraceImgPeriod, %function
VfmwProc_SetTraceImgPeriod:
	.fnstart
.LFB1803:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:g_TraceImgPeriod	@ tmp134,
	movt	r3, #:upper16:g_TraceImgPeriod	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, g_TraceImgPeriod
	bx	lr	@
	.fnend
	.size	VfmwProc_SetTraceImgPeriod, .-VfmwProc_SetTraceImgPeriod
	.align	2
	.type	VfmwProc_SetNoStreamReportPeriod, %function
VfmwProc_SetNoStreamReportPeriod:
	.fnstart
.LFB1804:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #0]	@ tmp135,* p_args
	movw	r3, #:lower16:g_NoStreamReportPeriod	@ tmp134,
	movt	r3, #:upper16:g_NoStreamReportPeriod	@ tmp134,
	str	r2, [r3, #0]	@ tmp135, g_NoStreamReportPeriod
	bx	lr	@
	.fnend
	.size	VfmwProc_SetNoStreamReportPeriod, .-VfmwProc_SetNoStreamReportPeriod
	.align	2
	.type	VfmwProc_OpenModuleLowly, %function
VfmwProc_OpenModuleLowly:
	.fnstart
.LFB1805:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ tmp134,* p_args
	cmp	r3, #0	@ tmp134,
	movweq	r3, #:lower16:.LANCHOR0	@ tmp135,
	movteq	r3, #:upper16:.LANCHOR0	@ tmp135,
	moveq	r2, #1	@ tmp137,
	ldreq	r3, [r3, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	streq	r2, [r3, #1420]	@ tmp137, <variable>.stSynExtraData.s32ModuleLowlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_OpenModuleLowly, .-VfmwProc_OpenModuleLowly
	.align	2
	.type	VfmwProc_CloseModuleLowly, %function
VfmwProc_CloseModuleLowly:
	.fnstart
.LFB1806:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ tmp134,* p_args
	cmp	r3, #0	@ tmp134,
	movweq	r2, #:lower16:.LANCHOR0	@ tmp135,
	movteq	r2, #:upper16:.LANCHOR0	@ tmp135,
	ldreq	r2, [r2, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	streq	r3, [r2, #1420]	@ tmp134, <variable>.stSynExtraData.s32ModuleLowlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_CloseModuleLowly, .-VfmwProc_CloseModuleLowly
	.align	2
	.type	VfmwProc_OpenScdLowdly, %function
VfmwProc_OpenScdLowdly:
	.fnstart
.LFB1807:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r0, #:lower16:s_SmIIS	@ tmp134,
	movt	r0, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #1	@ tmp138,
	add	r1, ip, #14	@ tmp135, tmp136,
	ldr	r3, [r0, r1, asl #2]	@ tmp137, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp138, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_OpenScdLowdly, .-VfmwProc_OpenScdLowdly
	.align	2
	.type	VfmwProc_CloseScdLowdly, %function
VfmwProc_CloseScdLowdly:
	.fnstart
.LFB1808:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #0]	@ tmp136,* p_args
	movw	r0, #:lower16:s_SmIIS	@ tmp134,
	movt	r0, #:upper16:s_SmIIS	@ tmp134,
	mov	r2, #0	@ tmp138,
	add	r1, ip, #14	@ tmp135, tmp136,
	ldr	r3, [r0, r1, asl #2]	@ tmp137, s_SmIIS.pSmInstArray
	str	r2, [r3, #40]	@ tmp138, <variable>.Config.ScdLowdlyEnable
	bx	lr	@
	.fnend
	.size	VfmwProc_CloseScdLowdly, .-VfmwProc_CloseScdLowdly
	.align	2
	.global	VfmwProcGetHandler
	.type	VfmwProcGetHandler, %function
VfmwProcGetHandler:
	.fnstart
.LFB1809:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r1, r0, #0	@ cmd, cmd
	movweq	r0, #:lower16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	movteq	r0, #:upper16:VfmwProc_SetPrintLevel	@ pTargetHandler,
	bxeq	lr	@
	ldr	r3, .L278	@ ivtmp.2168,
	b	.L274	@
.L275:
	ldr	r2, [r3, #8]!	@ D.37835, <variable>.CmdName
	cmp	r2, r1	@ D.37835, cmd
	beq	.L277	@,
.L274:
	ldr	r0, [r3, #12]	@ pTargetHandler, <variable>.pHandler
	cmp	r0, #0	@ pTargetHandler,
	bne	.L275	@,
	bx	lr	@
.L277:
	bx	lr	@
.L279:
	.align	2
.L278:
	.word	.LANCHOR1+32
	.fnend
	.size	VfmwProcGetHandler, .-VfmwProcGetHandler
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
.LFB1810:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_args
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	bne	.L289	@,
.L281:
	mvn	r0, #1	@ D.37847,
	ldmfd	sp!, {r3, pc}	@
.L289:
	cmp	r0, #0	@ opt,
	movweq	r3, #:lower16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	movteq	r3, #:upper16:VfmwProc_SetPrintLevel	@ pCommandHandler,
	beq	.L283	@,
	ldr	r2, .L290	@ ivtmp.2198,
.L284:
	ldr	r3, [r2, #12]	@ pCommandHandler, <variable>.pHandler
	cmp	r3, #0	@ pCommandHandler,
	beq	.L281	@,
	ldr	ip, [r2, #8]!	@ D.38231, <variable>.CmdName
	cmp	r0, ip	@ opt, D.38231
	bne	.L284	@,
.L283:
	mov	r0, r1	@, p_args
	blx	r3	@ pCommandHandler
	mov	r0, #1	@ D.37847,
	ldmfd	sp!, {r3, pc}	@
.L291:
	.align	2
.L290:
	.word	.LANCHOR1+32
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
.LFB1811:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	beq	.L296	@,
.L293:
	mvn	r0, #0	@ D.37856,
	bx	lr	@
.L296:
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, #28]	@ D.37858, s_pstVfmwChan
	cmp	r3, #0	@ D.37858,
	ldrne	r0, [r3, #676]	@ D.37856, <variable>.s32LastFrameIdPlus2
	bxne	lr	@
	b	.L293	@
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
.LFB1812:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bxne	lr	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp136,
	movt	r0, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r0, #28]	@ D.37868, s_pstVfmwChan
	cmp	r3, #0	@ D.37868,
	strne	r1, [r3, #676]	@ Value, <variable>.s32LastFrameIdPlus2
	bx	lr	@
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
.LFB1814:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r3, #216]	@ g_event_report.773, g_event_report
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r3, #0	@ g_event_report.773,
	beq	.L302	@,
	add	r2, sp, #8	@ tmp138,,
	add	r1, r1, #2	@ tmp137, LastFrameID,
	str	r1, [r2, #-4]!	@ tmp137, para
	mov	r1, #115	@,
	blx	r3	@ g_event_report.773
.L302:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {pc}
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	VCTRL_EnableEsBuf
	.type	VCTRL_EnableEsBuf, %function
VCTRL_EnableEsBuf:
	.fnstart
.LFB1815:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #1	@ tmp139,
	str	r2, [r3, #220]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_EnableEsBuf, .-VCTRL_EnableEsBuf
	.align	2
	.global	VCTRL_DisableEsBuf
	.type	VCTRL_DisableEsBuf, %function
VCTRL_DisableEsBuf:
	.fnstart
.LFB1816:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp134,
	movt	r1, #:upper16:.LANCHOR0	@ tmp134,
	add	r3, r1, r0, asl #2	@, tmp137, tmp134, ChanID,
	mov	r2, #0	@ tmp139,
	str	r2, [r3, #220]	@ tmp139, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_DisableEsBuf, .-VCTRL_DisableEsBuf
	.align	2
	.global	VCTRL_IsEsBufEnable
	.type	VCTRL_IsEsBufEnable, %function
VCTRL_IsEsBufEnable:
	.fnstart
.LFB1817:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp136,
	movt	r1, #:upper16:.LANCHOR0	@ tmp136,
	add	r3, r1, r0, asl #2	@, tmp139, tmp136, ChanID,
	ldr	r0, [r3, #220]	@, g_EsBufValidFlag
	bx	lr	@
	.fnend
	.size	VCTRL_IsEsBufEnable, .-VCTRL_IsEsBufEnable
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
.LFB1821:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L310	@
.L318:
	.word	.L311
	.word	.L312
	.word	.L313
	.word	.L314
	.word	.L315
	.word	.L316
	.word	.L317
.L316:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #12	@ eYuvFormat,
	bxne	lr	@
.L310:
	mov	r0, #13	@ eYuvFormat,
	bx	lr	@
.L311:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #6	@ eYuvFormat,
	moveq	r0, #0	@ eYuvFormat,
	bx	lr	@
.L312:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	bx	lr	@
.L313:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	bx	lr	@
.L314:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	bx	lr	@
.L315:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	bx	lr	@
.L317:
	cmp	r0, #1	@ SemiPlanarFlag,
	movne	r0, #7	@, eYuvFormat,
	bx	lr	@
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
.LFB1813:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r5, #:lower16:.LANCHOR0	@ tmp167,
	movt	r5, #:upper16:.LANCHOR0	@ tmp167,
	mov	r6, r0	@ ChanId, ChanId
	add	r2, r5, r0, asl #2	@, tmp143, tmp167, ChanId,
	movw	r3, #:lower16:211832	@ tmp145,
	movt	r3, #:upper16:211832	@ tmp145,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r0, [r2, #28]	@ D.37901, s_pstVfmwChan
	ldr	r3, [r0, r3]	@ <variable>.stSynCtx.eVidStd, <variable>.stSynCtx.eVidStd
	cmp	r3, #0	@ <variable>.stSynCtx.eVidStd,
	bne	.L338	@,
	add	r1, r0, #210944	@, D.37901,
	add	r0, r1, #896	@,,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L331:
	add	ip, r4, #1	@ tmp151, ret,
	cmp	ip, #1	@ tmp151,
	bhi	.L332	@,
.L339:
	ldr	r3, [r5, #216]	@ g_event_report.770, g_event_report
	cmp	r3, #0	@ g_event_report.770,
	beq	.L334	@,
	add	r2, sp, #8	@ tmp154,,
	mov	lr, #1	@ tmp153,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	lr, [r2, #-4]!	@ tmp153, para
	blx	r3	@ g_event_report.770
.L334:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L338:
	cmp	r3, #3	@ <variable>.stSynCtx.eVidStd,
	mvnne	r4, #0	@ ret,
	bne	.L331	@,
	add	r0, r0, #210944	@, D.37901,
	add	r0, r0, #896	@,,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	add	ip, r4, #1	@ tmp151, ret,
	cmp	ip, #1	@ tmp151,
	bls	.L339	@,
.L332:
	movw	r3, #:lower16:g_chipID	@ tmp155,
	movt	r3, #:upper16:g_chipID	@ tmp155,
	ldr	r3, [r3, #0]	@ g_chipID, g_chipID
	cmp	r3, #16	@ g_chipID,
	bhi	.L334	@,
	mov	r2, #1	@ tmp158,
	mov	r3, r2, asl r3	@ tmp157, tmp158,
	tst	r3, #3904	@ tmp157,
	bne	.L336	@,
	movw	r1, #:lower16:98367	@ tmp161,
	movt	r1, #:upper16:98367	@ tmp161,
	and	r0, r3, r1	@ tmp161, tmp157, tmp161
	cmp	r0, #0	@ tmp161,
	beq	.L334	@,
	cmp	r6, #0	@ ChanId,
	bne	.L334	@,
	ldr	ip, [r5, #28]	@ D.38236, s_pstVfmwChan
	cmp	ip, #0	@ D.38236,
	strne	r4, [ip, #676]	@ ret, <variable>.s32LastFrameIdPlus2
	b	.L334	@
.L336:
	ldr	r3, [r5, #216]	@ g_event_report.2380, g_event_report
	cmp	r3, #0	@ g_event_report.2380,
	beq	.L334	@,
	add	r2, sp, #8	@ tmp165,,
	mov	r0, r6	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ g_event_report.2380
	b	.L334	@
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.type	VfmwProc_SaveYUV, %function
VfmwProc_SaveYUV:
	.fnstart
.LFB1788:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #0]	@ tmp138,* p_args
	.pad #64
	sub	sp, sp, #64	@,,
	cmp	r6, #0	@ tmp138,
	bne	.L343	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp139,
	movt	r4, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r5, [r4, #224]	@ vfmw_save_yuv_file.727, vfmw_save_yuv_file
	cmp	r5, #0	@ vfmw_save_yuv_file.727,
	beq	.L344	@,
	mov	r0, r5	@, vfmw_save_yuv_file.727
	bl	klib_fclose	@
	str	r6, [r4, #224]	@ tmp138, vfmw_save_yuv_file
.L343:
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L344:
	ldr	lr, [r4, #228]	@ save_file_cnt.732, save_file_cnt
	add	r6, sp, #12	@ str.728,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC0	@,
	mov	r0, r6	@, str.728
	movt	r2, #:upper16:.LC0	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.732,
	str	lr, [sp, #0]	@ save_file_cnt.732,
	str	ip, [r4, #228]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r6	@, str.728
	mov	r1, #66	@,
	mov	r2, r5	@, vfmw_save_yuv_file.727
	bl	klib_fopen	@
	str	r5, [r4, #232]	@ vfmw_save_yuv_file.727, save_yuv_chan_num
	str	r0, [r4, #224]	@, vfmw_save_yuv_file
	b	.L343	@
	.fnend
	.size	VfmwProc_SaveYUV, .-VfmwProc_SaveYUV
	.align	2
	.type	VfmwProc_SaveSeg, %function
VfmwProc_SaveSeg:
	.fnstart
.LFB1787:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #0]	@ tmp138,* p_args
	.pad #64
	sub	sp, sp, #64	@,,
	cmp	r6, #0	@ tmp138,
	bne	.L348	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp139,
	movt	r4, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r5, [r4, #236]	@ vfmw_save_seg_file.719, vfmw_save_seg_file
	cmp	r5, #0	@ vfmw_save_seg_file.719,
	beq	.L349	@,
	mov	r0, r5	@, vfmw_save_seg_file.719
	bl	klib_fclose	@
	str	r6, [r4, #236]	@ tmp138, vfmw_save_seg_file
.L348:
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L349:
	ldr	lr, [r4, #240]	@ save_file_cnt.724, save_file_cnt
	add	r6, sp, #12	@ str.720,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC1	@,
	mov	r0, r6	@, str.720
	movt	r2, #:upper16:.LC1	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.724,
	str	lr, [sp, #0]	@ save_file_cnt.724,
	str	ip, [r4, #240]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r6	@, str.720
	mov	r1, #66	@,
	mov	r2, r5	@, vfmw_save_seg_file.719
	bl	klib_fopen	@
	str	r5, [r4, #244]	@ vfmw_save_seg_file.719, save_seg_chan_num
	str	r0, [r4, #236]	@, vfmw_save_seg_file
	b	.L348	@
	.fnend
	.size	VfmwProc_SaveSeg, .-VfmwProc_SaveSeg
	.align	2
	.type	VfmwProc_Savestream, %function
VfmwProc_Savestream:
	.fnstart
.LFB1786:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #0]	@ tmp138,* p_args
	.pad #64
	sub	sp, sp, #64	@,,
	cmp	r6, #0	@ tmp138,
	bne	.L353	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp139,
	movt	r4, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r5, [r4, #248]	@ vfmw_save_str_file.711, vfmw_save_str_file
	cmp	r5, #0	@ vfmw_save_str_file.711,
	beq	.L354	@,
	mov	r0, r5	@, vfmw_save_str_file.711
	bl	klib_fclose	@
	str	r6, [r4, #248]	@ tmp138, vfmw_save_str_file
.L353:
	add	sp, sp, #64	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L354:
	ldr	lr, [r4, #252]	@ save_file_cnt.716, save_file_cnt
	add	r6, sp, #12	@ str.712,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC2	@,
	mov	r0, r6	@, str.712
	movt	r2, #:upper16:.LC2	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r3, #:upper16:.LANCHOR2	@,
	add	ip, lr, #1	@ tmp142, save_file_cnt.716,
	str	lr, [sp, #0]	@ save_file_cnt.716,
	str	ip, [r4, #252]	@ tmp142, save_file_cnt
	bl	snprintf	@
	mov	r0, r6	@, str.712
	mov	r1, #66	@,
	mov	r2, r5	@, vfmw_save_str_file.711
	bl	klib_fopen	@
	str	r5, [r4, #256]	@ vfmw_save_str_file.711, save_str_chan_num
	str	r0, [r4, #248]	@, vfmw_save_str_file
	b	.L353	@
	.fnend
	.size	VfmwProc_Savestream, .-VfmwProc_Savestream
	.align	2
	.type	VfmwProc_Save1DYUV, %function
VfmwProc_Save1DYUV:
	.fnstart
.LFB1790:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
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
	.pad #68
	sub	sp, sp, #68	@,,
	ldr	r5, [r0, #8]	@ D.37704,
	ldr	r6, [r0, #4]	@ D.37702,
	beq	.L356	@,
	add	r7, sp, #12	@ tmp141,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC3	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC3	@,
	mov	r0, r7	@, tmp141
	movt	r3, #:upper16:.LANCHOR2	@,
	str	ip, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r7	@, tmp141
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r7, r0, #0	@ fp,
	beq	.L356	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp145,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp145,
	ldr	ip, [r3, #96]	@ D.37713, g_vdm_hal_fun_ptr.pfun_VDMHAL_Write1DYuv
	cmp	ip, #0	@ D.37713,
	beq	.L357	@,
	mov	r1, #1	@ tmp146,
	mov	r2, r6	@, D.37702
	str	r1, [sp, #0]	@ tmp146,
	mov	r3, r5	@, D.37704
	mov	r1, r4	@, ptr
	blx	ip	@ D.37713
.L357:
	mov	r0, r7	@, fp
	bl	klib_fclose	@
.L356:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.fnend
	.size	VfmwProc_Save1DYUV, .-VfmwProc_Save1DYUV
	.align	2
	.type	VfmwProc_SaveOneYUV, %function
VfmwProc_SaveOneYUV:
	.fnstart
.LFB1789:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
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
	.pad #68
	sub	sp, sp, #68	@,,
	beq	.L360	@,
	add	r5, sp, #12	@ tmp138,,
	mov	r1, #50	@,
	movw	r2, #:lower16:.LC4	@,
	movw	r3, #:lower16:.LANCHOR2	@,
	movt	r2, #:upper16:.LC4	@,
	mov	r0, r5	@, tmp138
	movt	r3, #:upper16:.LANCHOR2	@,
	str	ip, [sp, #0]	@ dat,
	bl	snprintf	@
	mov	r0, r5	@, tmp138
	mov	r1, #66	@,
	mov	r2, #0	@,
	bl	klib_fopen	@
	subs	r5, r0, #0	@ fp,
	beq	.L360	@,
	mov	r0, r4	@, ptr
	mov	r1, #3145728	@,
	mov	r2, r5	@, fp
	bl	klib_fwrite	@
	mov	r0, r5	@, fp
	bl	klib_fclose	@
.L360:
	mov	r0, r4	@, ptr
	bl	__arm_iounmap	@
	add	sp, sp, #68	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	VfmwProc_SaveOneYUV, .-VfmwProc_SaveOneYUV
	.align	2
	.type	VfmwProc_SetDNRCfg, %function
VfmwProc_SetDNRCfg:
	.fnstart
.LFB1784:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldr	r3, [r0, #0]	@ dat,* p_args
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r0, r3, lsr #27	@ D.37585, dat,
	cmp	r0, #1	@ D.37585,
	bls	.L365	@,
.L364:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {pc}
.L365:
	mov	r2, r3, asl #20	@ tmp151, dat,
	mov	r1, sp	@,
	ubfx	ip, r3, #26, #1	@ tmp138, dat,,
	strb	ip, [sp, #0]	@ tmp138, DnrChanCfgArgs.s32MirrorEn
	mov	lr, r2, lsr #20	@ tmp151, tmp151,
	ubfx	ip, r3, #25, #1	@ tmp142, dat,,
	ubfx	r2, r3, #24, #1	@ tmp146, dat,,
	str	lr, [sp, #8]	@ tmp151, DnrChanCfgArgs.s32VcmpWmEndLine
	ubfx	r3, r3, #12, #12	@ tmp149, dat,,
	strb	ip, [sp, #1]	@ tmp142, DnrChanCfgArgs.s32VcmpEn
	strb	r2, [sp, #2]	@ tmp146, DnrChanCfgArgs.s32WmEn
	str	r3, [sp, #4]	@ tmp149, DnrChanCfgArgs.s32VcmpWmStartLine
	bl	DNR_ConfigChan	@
	b	.L364	@
	.fnend
	.size	VfmwProc_SetDNRCfg, .-VfmwProc_SetDNRCfg
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
.LFB1771:
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
	beq	.L377	@,
	mul	r4, r9, r6	@ D.37358, Width, Height
	add	r0, r4, r4, lsr #31	@, tmp161, D.37358, D.37358,
	mov	r1, r0, asr #1	@, tmp161,
	str	r1, [sp, #8]	@, %sfp
	add	r0, r1, #1024	@,,
	bl	OSAL_AllocVirMem	@
	cmp	r0, #0	@
	str	r0, [sp, #4]	@, %sfp
	beq	.L368	@,
	cmp	r6, #0	@ Height,
	ble	.L369	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.37358
	mov	r2, r8	@, fp
	sub	r5, r6, #1	@ tmp185, Height,
	bl	klib_fwrite	@
	cmp	r6, #1	@ Height,
	and	fp, r5, #1	@ tmp187, tmp185,
	mov	r5, #1	@ y,
	ble	.L369	@,
	cmp	fp, #0	@ tmp187,
	beq	.L370	@,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.37358
	mov	r2, r8	@, fp
	mov	r5, #2	@ y,
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	ble	.L369	@,
.L370:
	mov	r1, r4	@, D.37358
	mov	r2, r8	@, fp
	add	fp, r5, #1	@ tmp188, y,
	mov	r0, r7	@, pFrameStore
	bl	klib_fwrite	@
	add	r5, fp, #1	@ y, tmp188,
	mov	r0, r7	@, pFrameStore
	mov	r1, r4	@, D.37358
	mov	r2, r8	@, fp
	bl	klib_fwrite	@
	cmp	r6, r5	@ Height, y
	bgt	.L370	@,
.L369:
	add	r6, r6, r6, lsr #31	@, tmp165, Height, Height,
	mov	fp, r6, asr #1	@ D.37373, tmp165,
	cmp	fp, #0	@ D.37373,
	ble	.L371	@,
	add	r2, r4, #3	@ tmp169, D.37358,
	cmp	r4, #0	@ D.37358,
	ldr	r5, [sp, #4]	@ pU, %sfp
	add	r9, r9, r9, lsr #31	@, tmp172, Width, Width,
	movlt	r4, r2	@ D.37358, tmp169
	ldr	r6, [sp, #12]	@, %sfp
	add	lr, r5, r4, asr #2	@, pV, pU, D.37358,
	add	r2, r7, r6	@ pChrom, pFrameStore,
	mov	r6, r9, asr #1	@ pretmp.2544, tmp172,
	mov	r9, #0	@ y.2577,
.L372:
	cmp	r6, #0	@ pretmp.2544,
	ble	.L375	@,
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp174,* pChrom
	mov	r3, #1	@ x,
	cmp	r3, r6	@ x, pretmp.2544
	sub	ip, r6, #1	@ tmp180, pretmp.2544,
	and	ip, ip, r3	@ tmp182, tmp180,
	mov	r0, #2	@ ivtmp.2560,
	strb	r1, [r5, #0]	@ tmp174,* pU
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ tmp176,
	strb	r1, [lr, #0]	@ tmp176,* pV
	beq	.L390	@,
	cmp	ip, #0	@ tmp182,
	beq	.L373	@,
	ldrb	ip, [r2, r3]	@ zero_extendqisi2	@ tmp199,* x
	cmp	r0, r6	@ x, pretmp.2544
	strb	ip, [r5, r3]	@ tmp199,* x
	ldrb	r1, [r2, r0]	@ zero_extendqisi2	@ tmp200,* ivtmp.2560
	strb	r1, [lr, r3]	@ tmp200,* x
	mov	r3, r0	@ x, ivtmp.2560
	mov	r0, #3	@ ivtmp.2560,
	beq	.L390	@,
.L373:
	ldrb	r4, [r2, r3]	@ zero_extendqisi2	@ tmp193,* x
	add	r1, r3, #1	@ tmp183, x,
	add	ip, r0, #1	@ tmp184, ivtmp.2560,
	strb	r4, [r5, r3]	@ tmp193,* x
	ldrb	r4, [r2, r0]	@ zero_extendqisi2	@ tmp194,* ivtmp.2560
	add	r0, ip, #1	@ ivtmp.2560, tmp184,
	strb	r4, [lr, r3]	@ tmp194,* x
	add	r3, r1, #1	@ x, tmp183,
	ldrb	r4, [r2, r1]	@ zero_extendqisi2	@ tmp197,
	cmp	r3, r6	@ x, pretmp.2544
	strb	r4, [r5, r1]	@ tmp197,
	ldrb	ip, [r2, ip]	@ zero_extendqisi2	@ tmp198,
	strb	ip, [lr, r1]	@ tmp198,
	bne	.L373	@,
.L390:
	add	r5, r5, r6	@ pU, pU, pretmp.2544
	add	lr, lr, r6	@ pV, pV, pretmp.2544
.L375:
	add	r9, r9, #1	@ y.2577, y.2577,
	cmp	r9, fp	@ y.2577, D.37373
	addne	r2, r2, sl	@ pChrom, pChrom, Stride
	bne	.L372	@
.L371:
	ldr	r1, [sp, #8]	@, %sfp
	mov	r2, r8	@, fp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L368:
	mov	r0, r7	@, pFrameStore
	bl	__arm_iounmap	@
	ldr	r3, [sp, #4]	@, %sfp
	cmp	r3, #0	@,
	beq	.L377	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	b	OSAL_FreeVirMem	@
.L377:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
.LFB1770:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	ldr	r3, [r3, #56]	@ D.37317, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.37317,
	beq	.L397	@,
	mov	r0, #0	@,
	blx	r3	@ D.37317
.L397:
	bl	SCDDRV_EnableInt	@
	movw	r0, #:lower16:g_dnr_hal_fun_ptr	@ tmp136,
	movt	r0, #:upper16:g_dnr_hal_fun_ptr	@ tmp136,
	ldr	r3, [r0, #28]	@ D.37321, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.37321,
	ldmeqfd	sp!, {r3, pc}	@
	blx	r3	@ D.37321
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
.LFB1769:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp135,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp135,
	ldr	r3, [r3, #52]	@ D.37302, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.37302,
	beq	.L401	@,
	mov	r0, #0	@,
	blx	r3	@ D.37302
.L401:
	bl	SCDDRV_MaskInt	@
	movw	r0, #:lower16:g_dnr_hal_fun_ptr	@ tmp136,
	movt	r0, #:upper16:g_dnr_hal_fun_ptr	@ tmp136,
	ldr	r3, [r0, #24]	@ D.37306, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r3, #0	@ D.37306,
	ldmeqfd	sp!, {r3, pc}	@
	blx	r3	@ D.37306
	ldmfd	sp!, {r3, pc}	@
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_RlsDSDFrame
	.type	VCTRL_RlsDSDFrame, %function
VCTRL_RlsDSDFrame:
	.fnstart
.LFB1764:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r0, #0	@ ChanID, ChanID
	beq	.L414	@,
.L405:
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L414:
	movw	r4, #:lower16:.LANCHOR0	@ tmp145,
	movt	r4, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r4, #28]	@ D.37230, s_pstVfmwChan
	cmp	r3, #0	@ D.37230,
	beq	.L405	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L405	@,
	cmp	r1, #0	@ pImage,
	beq	.L405	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #28]	@ temp.2656, s_pstVfmwChan
	cmp	r3, #0	@ temp.2656,
	beq	.L413	@,
	ldr	r0, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r0, #1	@ <variable>.s32IsOpen,
	bne	.L413	@,
	add	r0, r4, #260	@, tmp145,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, #28]	@ D.38260, s_pstVfmwChan
	movw	r1, #:lower16:176090	@ tmp155,
	movt	r1, #:upper16:176090	@ tmp155,
	add	r4, r2, #209920	@ ivtmp.2650, D.38260,
	ldrsb	r6, [r2, r1]	@ s32AllDecFrameNum, <variable>.FspInst.s32DecFsNum
	add	r4, r4, #840	@ ivtmp.2650, ivtmp.2650,
.L409:
	cmp	r6, r5	@ s32AllDecFrameNum, i
	add	r5, r5, #1	@ i, i,
	ble	.L415	@,
	ldr	ip, [r4, #-16]	@ <variable>.eFrameState, <variable>.eFrameState
	cmp	ip, #1	@ <variable>.eFrameState,
	addne	r4, r4, #16	@ ivtmp.2650, ivtmp.2650,
	bne	.L409	@
.L416:
	ldr	r1, [r4, #-12]	@, <variable>.s32FrameAddr
	mov	r0, #0	@,
	ldr	r2, [r4, #-8]	@, <variable>.s32FrameSize
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-16]	@ s32UsingCount, <variable>.eFrameState
	streq	r0, [r4, #-4]	@ s32UsingCount, <variable>.s32UsingCount
	add	r4, r4, #16	@ ivtmp.2650, ivtmp.2650,
	b	.L409	@
.L415:
	ldr	r0, .L417	@,
	bl	OSAL_SpinUnLockIRQ	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L413:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ s32Ret,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L418:
	.align	2
.L417:
	.word	.LANCHOR0+260
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
.LFB1761:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0, asl #2	@ tmp162, ChanID,
	movw	r4, #:lower16:.LANCHOR0	@ tmp161,
	movt	r4, #:upper16:.LANCHOR0	@ tmp161,
	add	r0, r5, r4	@ tmp144, tmp162, tmp161
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r1, r2	@ pReadImgNum, pReadImgNum
	ldr	r0, [r0, #28]	@ D.37166, s_pstVfmwChan
	cmp	r0, #0	@ D.37166,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r2, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #3	@ <variable>.eVidStd,
	beq	.L423	@,
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L424	@,
	cmp	r2, #0	@ <variable>.eVidStd,
	movne	r0, #0	@ pstVoQue,
	bne	.L426	@,
.L424:
	add	ip, r0, #210944	@ pstVoQue, D.37166,
	add	r0, ip, #904	@ pstVoQue, pstVoQue,
.L425:
	cmp	r0, #0	@ pstVoQue,
	beq	.L426	@,
	add	r4, r5, r4	@ tmp153, tmp162, tmp161
	mov	r2, r3	@, pNewImgNum
	bl	GetQueueImgNum	@
	ldr	r2, [r4, #28]	@ temp.2681, s_pstVfmwChan
	ldr	r3, [r2, #880]	@ D.37172, <variable>.eVidStd
	cmp	r3, #0	@ D.37172,
	beq	.L429	@,
	cmp	r3, #15	@ D.37172,
	movne	r3, #2	@ tmp157,
	strne	r3, [r6, #0]	@ tmp157,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L426:
	str	r0, [r3, #0]	@ pstVoQue,* pNewImgNum
	str	r0, [r1, #0]	@ pstVoQue,* pReadImgNum
	str	r0, [r6, #0]	@ pstVoQue,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L429:
	movw	r1, #:lower16:238464	@ tmp155,
	movt	r1, #:upper16:238464	@ tmp155,
	ldr	r3, [r2, r1]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size, <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r6, #0]	@ <variable>.stSynCtx.unSyntax.stH264Ctx.DPB.size,* pRefImgNum
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L423:
	add	r2, r0, #282624	@ pstVoQue, D.37166,
	add	r0, r2, #2560	@ pstVoQue, pstVoQue,
	b	.L425	@
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
	cmp	r0, #0	@ ChanId
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	beq	.L440	@,
.L431:
	mov	r5, #0	@ pDecParam,
.L436:
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L440:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r4, [r3, #28]	@ D.38276, s_pstVfmwChan
	cmp	r4, #0	@ D.38276,
	beq	.L431	@,
	ldr	r1, [r4, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L431	@,
	ldr	r2, [r4, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L431	@,
	ldr	r3, [r4, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #0	@ <variable>.eVidStd,
	beq	.L433	@,
	cmp	r3, #3	@ <variable>.eVidStd,
	movne	r5, r0	@ pDecParam, ChanId
	bne	.L436	@,
	movw	ip, #:lower16:211844	@ tmp142,
	movt	ip, #:upper16:211844	@ tmp142,
	ldr	r5, [r4, ip]	@ pDecParam,
.L434:
	cmp	r5, #0	@ pDecParam,
	beq	.L436	@,
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #28]	@, <variable>.u32timeLastDecParamReady
	mov	r0, r5	@, pDecParam
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L433:
	movw	r0, #:lower16:212200	@ tmp141,
	movt	r0, #:upper16:212200	@ tmp141,
	ldr	r5, [r4, r0]	@ pDecParam,
	b	.L434	@
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
.LFB1758:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	ip, r3, r0, asl #2	@, tmp141, tmp138, ChanID,
	ldr	r2, [ip, #28]	@ tmp143, s_pstVfmwChan
	ldr	r2, [r2, #880]	@ D.37045, <variable>.eVidStd
	sub	r1, r2, #10	@ tmp144, D.37045,
	cmp	r1, #2	@ tmp144,
	bhi	.L442	@,
	ldr	r3, [r3, #268]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L444	@,
.L443:
	cmp	r2, #18	@ D.37045,
	bne	.L448	@,
.L444:
	mov	r0, #0	@ D.37059,
	ldmfd	sp!, {r3, pc}	@
.L442:
	cmp	r2, #14	@ D.37045,
	beq	.L444	@,
	cmp	r2, #4	@ D.37045,
	bne	.L443	@,
	mov	r0, #0	@ D.37059,
	ldmfd	sp!, {r3, pc}	@
.L448:
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r0, #1	@ D.37059,
	ldmnefd	sp!, {r3, pc}	@
	b	.L444	@
	.fnend
	.size	DecChanCheckDecParam, .-DecChanCheckDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
.LFB1724:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r5, r0, #0	@ ChanId, ChanId
	bne	.L450	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	ldr	r3, [r4, #28]	@ D.35874, s_pstVfmwChan
	cmp	r3, #0	@ D.35874,
	beq	.L450	@,
	ldr	r2, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	beq	.L456	@,
.L450:
	mov	r3, #0	@ D.35875,
.L453:
	mov	r0, r3	@, D.35875
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L456:
	ldr	r6, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r6, #1	@ <variable>.s32IsRun,
	bne	.L450	@,
	bl	VCTRL_GetDecParam	@
	subs	r7, r0, #0	@ pDecParam,
	beq	.L457	@,
	ldr	r1, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r3, r5	@ D.35875, ChanId
	str	r5, [r1, #680]	@ ChanId, <variable>.s32CountNoDecparamFlag
	ldr	r0, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r5, [r0, #684]	@ ChanId, <variable>.u32NoDecparamStartTime
	b	.L453	@
.L457:
	ldr	r3, [r4, #28]	@ temp.2751, s_pstVfmwChan
	ldr	r5, [r3, #680]	@ <variable>.s32CountNoDecparamFlag, <variable>.s32CountNoDecparamFlag
	cmp	r5, #0	@ <variable>.s32CountNoDecparamFlag,
	beq	.L458	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #28]	@ temp.2755, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.35895, <variable>.u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.35895
	bls	.L454	@,
	rsb	ip, r2, r0	@ tmp158, D.35895, tmp
	cmp	ip, #40	@ tmp158,
	bls	.L450	@,
.L454:
	str	r7, [r3, #680]	@ pDecParam, <variable>.s32CountNoDecparamFlag
	mov	r3, r6	@ D.35875, <variable>.s32IsRun
	ldr	lr, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r7, [lr, #684]	@ pDecParam, <variable>.u32NoDecparamStartTime
	b	.L453	@
.L458:
	str	r6, [r3, #680]	@ <variable>.s32IsRun, <variable>.s32CountNoDecparamFlag
	ldr	r4, [r4, #28]	@ temp.2752, s_pstVfmwChan
	bl	OSAL_GetTimeInMs	@
	mov	r3, r5	@ D.35875, <variable>.s32CountNoDecparamFlag
	str	r0, [r4, #684]	@, <variable>.u32NoDecparamStartTime
	b	.L453	@
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	DecChanProcessPts
	.type	DecChanProcessPts, %function
DecChanProcessPts:
	.fnstart
.LFB1757:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r0, asl #2	@ tmp380, ChanID,
	movw	r5, #:lower16:.LANCHOR0	@ tmp379,
	movt	r5, #:upper16:.LANCHOR0	@ tmp379,
	add	r7, r6, r5	@ tmp153, tmp380, tmp379
	mov	r4, r1	@ pSegMan, pSegMan
	ldr	r0, [r7, #28]	@ prephitmp.2772, s_pstVfmwChan
	ldr	r1, [r0, #32]	@ D.36993, <variable>.stChanCfg.eVidStd
	sub	r3, r1, #2	@ tmp155, D.36993,
	cmp	r1, #6	@ D.36993,
	cmpne	r3, #1	@, tmp155,
	bls	.L469	@,
	ldrd	r2, [r4, #32]	@ D.37024, pSegMan,
	mvn	r8, #0	@ tmp334,
	mvn	r9, #0	@,
	cmp	r3, r9	@ D.37024, tmp334
	cmpeq	r2, r8	@ D.37024, tmp334
	movne	r9, #944	@ tmp335,
	strned	r2, [r0, r9]	@ D.37024, prephitmp.2772, tmp335
	ldrne	r0, [r7, #28]	@ prephitmp.2772, s_pstVfmwChan
.L467:
	ldrd	r8, [r4, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	add	r5, r6, r5	@ tmp346, tmp380, tmp379
	mov	r1, #960	@ tmp341,
	mov	ip, #976	@ tmp349,
	strd	r8, [r0, r1]	@ <variable>.CurrSeg.Usertag, prephitmp.2772, tmp341
	ldr	r2, [r5, #28]	@ tmp348, s_pstVfmwChan
	ldrd	r0, [r4, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r2, ip]	@ <variable>.CurrSeg.DispTime, tmp348, tmp349
	ldr	r3, [r5, #28]	@ tmp356, s_pstVfmwChan
	ldr	ip, [r4, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	ip, [r3, #992]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	r2, [r5, #28]	@ tmp363, s_pstVfmwChan
	ldr	ip, [r4, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	ip, [r2, #996]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	r2, [r4, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	ldr	r3, [r5, #28]	@ tmp370, s_pstVfmwChan
	str	r2, [r3, #1000]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	ip, [r5, #28]	@ tmp377, s_pstVfmwChan
	ldr	r2, [r4, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [ip, #1016]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.GopNum
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L469:
	add	r0, r0, #1264	@, prephitmp.2772,
	add	r2, r4, #8	@, pSegMan,
	add	r0, r0, #8	@,,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L461	@,
	ldr	r2, [r7, #28]	@ prephitmp.2787, s_pstVfmwChan
	ldr	r1, [r2, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r1, #3	@ <variable>.stChanCfg.eVidStd,
	beq	.L470	@,
	mov	ip, #952	@ tmp180,
	mvn	r8, #0	@ tmp181,
	ldrd	r0, [r2, ip]	@ temp.2788, prephitmp.2787, tmp180
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2788, tmp181
	cmpeq	r0, r8	@ temp.2788, tmp181
	movne	lr, #944	@ tmp182,
	strned	r0, [r2, lr]	@ temp.2788, prephitmp.2787, tmp182
	ldrne	r2, [r7, #28]	@ prephitmp.2787, s_pstVfmwChan
.L463:
	add	r3, r6, r5	@ tmp193, tmp380, tmp379
	mov	r0, #952	@ tmp188,
	mvn	r8, #0	@ tmp189,
	mvn	r9, #0	@,
	strd	r8, [r2, r0]	@ tmp189, prephitmp.2787, tmp188
	mov	ip, #968	@ tmp196,
	ldr	lr, [r3, #28]	@ temp.2789, s_pstVfmwChan
	mov	r2, #960	@ tmp195,
	mov	r1, #984	@ tmp204,
	mov	r7, #976	@ tmp203,
	ldrd	r8, [lr, ip]	@ <variable>.stSynExtraData.NextUsertag, temp.2789, tmp196
	strd	r8, [lr, r2]	@ <variable>.stSynExtraData.NextUsertag, temp.2789, tmp195
	ldr	r2, [r3, #28]	@ temp.2790, s_pstVfmwChan
	ldrd	r8, [r2, r1]	@ <variable>.stSynExtraData.NextDispTime, temp.2790, tmp204
	strd	r8, [r2, r7]	@ <variable>.stSynExtraData.NextDispTime, temp.2790, tmp203
	ldr	r2, [r3, #28]	@ temp.2791, s_pstVfmwChan
	ldr	lr, [r2, #1004]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	str	lr, [r2, #992]	@ <variable>.stSynExtraData.NextDispEnableFlag, <variable>.stSynExtraData.DispEnableFlag
	ldr	lr, [r3, #28]	@ temp.2792, s_pstVfmwChan
	ldr	r7, [lr, #1008]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	str	r7, [lr, #996]	@ <variable>.stSynExtraData.NextDispFrameDistance, <variable>.stSynExtraData.DispFrameDistance
	ldr	lr, [r3, #28]	@ temp.2793, s_pstVfmwChan
	ldr	r2, [lr, #1012]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	str	r2, [lr, #1000]	@ <variable>.stSynExtraData.NextDistanceBeforeFirstFrame, <variable>.stSynExtraData.DistanceBeforeFirstFrame
	ldr	r2, [r3, #28]	@ temp.2794, s_pstVfmwChan
	ldr	r7, [r2, #1020]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.NextGopNum
	str	r7, [r2, #1016]	@ <variable>.stSynExtraData.NextGopNum, <variable>.stSynExtraData.GopNum
	ldr	r2, [r3, #28]	@ temp.2795, s_pstVfmwChan
	ldr	r7, [r2, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r7, #3	@ <variable>.stChanCfg.eVidStd,
	bne	.L464	@,
	ldrd	r8, [r4, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	strd	r8, [r2, r0]	@ <variable>.CurrSeg.Pts, temp.2795, tmp188
	ldr	lr, [r3, #28]	@ tmp243, s_pstVfmwChan
	ldrd	r8, [r4, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	strd	r8, [lr, ip]	@ <variable>.CurrSeg.Usertag, tmp243, tmp196
	ldr	ip, [r3, #28]	@ tmp251, s_pstVfmwChan
	ldrd	r8, [r4, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r8, [ip, r1]	@ <variable>.CurrSeg.DispTime, tmp251, tmp204
	ldr	r1, [r3, #28]	@ tmp259, s_pstVfmwChan
	ldr	r0, [r4, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	r0, [r1, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	r2, [r3, #28]	@ tmp266, s_pstVfmwChan
	ldr	lr, [r4, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	lr, [r2, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	ip, [r3, #28]	@ tmp273, s_pstVfmwChan
	ldr	r1, [r4, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	r1, [ip, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r3, #28]	@ tmp280, s_pstVfmwChan
	ldr	r0, [r4, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r0, [r3, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
.L461:
	add	r0, r6, r5	@ tmp285, tmp380, tmp379
	ldr	r2, [r0, #28]	@ temp.2795, s_pstVfmwChan
	ldr	r3, [r2, #32]	@ <variable>.stChanCfg.eVidStd, <variable>.stChanCfg.eVidStd
	cmp	r3, #3	@ <variable>.stChanCfg.eVidStd,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L464:
	ldrd	r0, [r4, #32]	@ temp.2811, pSegMan,
	mvn	r8, #0	@ tmp288,
	mvn	r9, #0	@,
	cmp	r1, r9	@ temp.2811, tmp288
	cmpeq	r0, r8	@ temp.2811, tmp288
	movne	ip, #952	@ tmp289,
	strned	r0, [r2, ip]	@ temp.2811, temp.2795, tmp289
.L466:
	add	r5, r6, r5	@ tmp293, tmp380, tmp379
	ldrd	r0, [r4, #48]	@ <variable>.CurrSeg.Usertag, pSegMan,
	mov	r3, #968	@ tmp296,
	mov	lr, #984	@ tmp304,
	ldr	ip, [r5, #28]	@ tmp295, s_pstVfmwChan
	strd	r0, [ip, r3]	@ <variable>.CurrSeg.Usertag, tmp295, tmp296
	ldr	r2, [r5, #28]	@ tmp303, s_pstVfmwChan
	ldrd	r0, [r4, #56]	@ <variable>.CurrSeg.DispTime, pSegMan,
	strd	r0, [r2, lr]	@ <variable>.CurrSeg.DispTime, tmp303, tmp304
	ldr	r3, [r5, #28]	@ tmp311, s_pstVfmwChan
	ldr	ip, [r4, #64]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.CurrSeg.DispEnableFlag
	str	ip, [r3, #1004]	@ <variable>.CurrSeg.DispEnableFlag, <variable>.stSynExtraData.NextDispEnableFlag
	ldr	lr, [r5, #28]	@ tmp318, s_pstVfmwChan
	ldr	r2, [r4, #68]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.CurrSeg.DispFrameDistance
	str	r2, [lr, #1008]	@ <variable>.CurrSeg.DispFrameDistance, <variable>.stSynExtraData.NextDispFrameDistance
	ldr	r3, [r5, #28]	@ tmp325, s_pstVfmwChan
	ldr	ip, [r4, #72]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.CurrSeg.DistanceBeforeFirstFrame
	str	ip, [r3, #1012]	@ <variable>.CurrSeg.DistanceBeforeFirstFrame, <variable>.stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	lr, [r5, #28]	@ tmp332, s_pstVfmwChan
	ldr	r2, [r4, #76]	@ <variable>.CurrSeg.GopNum, <variable>.CurrSeg.GopNum
	str	r2, [lr, #1020]	@ <variable>.CurrSeg.GopNum, <variable>.stSynExtraData.NextGopNum
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}	@
.L470:
	mov	r9, #952	@ tmp173,
	mov	r8, #944	@ tmp172,
	ldrd	r0, [r2, r9]	@ <variable>.stSynExtraData.NextPts, prephitmp.2787, tmp173
	strd	r0, [r2, r8]	@ <variable>.stSynExtraData.NextPts, prephitmp.2787, tmp172
	ldr	r2, [r7, #28]	@ prephitmp.2787, s_pstVfmwChan
	b	.L463	@
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
	mov	r1, #12	@,
	mov	r0, r4	@, tmp133
	bl	__memzero	@
	mvn	r3, #0	@ tmp135,
	str	r3, [r4, #4]	@ tmp135, g_ChanCtx.ChanIdTabByPrior
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
.LFB1752:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r5, [r0, #12]	@ Length, <variable>.Length
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, [r0, #8]	@ PhyAddr, <variable>.PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r6, [r0, #4]	@ VirAddr, <variable>.VirAddr
	beq	.L474	@,
	movw	r3, #:lower16:g_vdm_hal_fun_ptr	@ tmp156,
	movt	r3, #:upper16:g_vdm_hal_fun_ptr	@ tmp156,
	ldr	r3, [r3, #32]	@ D.36808, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.36808,
	moveq	r1, r6	@ VirAddr.2888, VirAddr
	moveq	r0, r7	@ PhyAddr.2894, PhyAddr
	beq	.L476	@,
	mov	r0, #0	@,
	blx	r3	@ D.36808
	ldr	r0, [r4, #8]	@ PhyAddr.2894, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@ VirAddr.2888, <variable>.VirAddr
.L476:
	bl	MEM_ReleaseMemBlock	@
	mov	r0, r4	@, pstDrvMem
	mov	r1, #16	@,
	bl	__memzero	@
.L474:
	mov	r0, r7	@, PhyAddr
	mov	r1, r6	@, VirAddr
	mov	r2, r5	@, Length
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length.2877, <variable>.stScdCmnMem.Length
	ldr	r7, [r4, #24]	@ PhyAddr.2875, <variable>.stScdCmnMem.PhyAddr
	cmp	r5, #0	@ Length.2877,
	ldr	r6, [r4, #20]	@ VirAddr.2876, <variable>.stScdCmnMem.VirAddr
	bne	.L483	@,
.L477:
	mov	r0, r7	@, PhyAddr.2875
	mov	r1, r6	@, VirAddr.2876
	mov	r2, r5	@, Length.2877
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length.2882, <variable>.Length
	ldr	r7, [r4, #40]	@ PhyAddr.2880, <variable>.PhyAddr
	cmp	r5, #0	@ Length.2882,
	ldr	r6, [r4, #36]	@ VirAddr.2881, <variable>.VirAddr
	bne	.L484	@,
.L478:
	mov	r0, r7	@, PhyAddr.2880
	mov	r1, r6	@, VirAddr.2881
	mov	r2, r5	@, Length.2882
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length.2887, <variable>.stBpdReg.Length
	ldr	r7, [r4, #72]	@ PhyAddr.2885, <variable>.stBpdReg.PhyAddr
	cmp	r5, #0	@ Length.2887,
	ldr	r6, [r4, #68]	@ VirAddr.2886, <variable>.stBpdReg.VirAddr
	bne	.L485	@,
.L479:
	mov	r0, r7	@, PhyAddr.2885
	mov	r1, r6	@, VirAddr.2886
	mov	r2, r5	@, Length.2887
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length.2893, <variable>.Length
	ldr	r7, [r4, #56]	@ PhyAddr.2891, <variable>.PhyAddr
	cmp	r5, #0	@ Length.2893,
	ldr	r6, [r4, #52]	@ VirAddr.2892, <variable>.VirAddr
	bne	.L486	@,
.L480:
	mov	r0, r7	@, PhyAddr.2891
	mov	r1, r6	@, VirAddr.2892
	mov	r2, r5	@, Length.2893
	bl	MEM_DelMemRecord	@
	ldr	r6, [r4, #92]	@ Length.2899, <variable>.stSystemReg.Length
	ldr	r5, [r4, #88]	@ PhyAddr.2897, <variable>.stSystemReg.PhyAddr
	cmp	r6, #0	@ Length.2899,
	ldr	r7, [r4, #84]	@ VirAddr.2898, <variable>.stSystemReg.VirAddr
	beq	.L481	@,
	mov	r0, r5	@, PhyAddr.2897
	mov	r1, r7	@, VirAddr.2898
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L481:
	mov	r1, r7	@, VirAddr.2898
	mov	r2, r6	@, Length.2899
	mov	r0, r5	@, PhyAddr.2897
	bl	MEM_DelMemRecord	@
	mov	r0, #70	@,
	ldr	r2, .L487	@,
	movw	r1, #:lower16:.LC5	@,
	movt	r1, #:upper16:.LC5	@,
	bl	osal_free_irq	@
	mov	r0, #73	@,
	ldr	r2, .L487	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	osal_free_irq	@
	mov	r0, #93	@,
	ldr	r2, .L487	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L486:
	mov	r0, r7	@, PhyAddr.2891
	mov	r1, r6	@, VirAddr.2892
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #48	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L480	@
.L483:
	bl	SM_CloseSCDDrv	@
	ldr	r0, [r4, #24]	@, <variable>.stScdCmnMem.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stScdCmnMem.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L477	@
.L485:
	mov	r0, r7	@, PhyAddr.2885
	mov	r1, r6	@, VirAddr.2886
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #64	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L479	@
.L484:
	mov	r0, r7	@, PhyAddr.2880
	mov	r1, r6	@, VirAddr.2881
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #32	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
	b	.L478	@
.L488:
	.align	2
.L487:
	.word	.LANCHOR0+272
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
.LFB1751:
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
	bne	.L490	@,
	add	r6, r4, #64	@ pstMem, pstDrvMem,
	ldr	r1, [r4, #36]	@, <variable>.VirAddr
	ldr	r2, [r4, #44]	@, <variable>.Length
	ldr	r0, [r4, #40]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269733888	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269733888	@,
	mov	r2, r6	@, pstMem
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L514	@,
	movw	r5, #:lower16:g_vdm_hal_fun_ptr	@ tmp163,
	movt	r5, #:upper16:g_vdm_hal_fun_ptr	@ tmp163,
	ldr	r3, [r5, #16]	@ D.36686, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.36686,
	beq	.L514	@,
	blx	r3	@ D.36686
	cmp	r0, #0	@,
	bne	.L514	@,
	add	r7, r4, #48	@ pstMem.2925, pstDrvMem,
	ldr	r1, [r4, #68]	@, <variable>.stBpdReg.VirAddr
	ldr	r2, [r4, #76]	@, <variable>.stBpdReg.Length
	ldr	r0, [r4, #72]	@, <variable>.stBpdReg.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:269729792	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:269729792	@,
	mov	r2, r7	@, pstMem.2925
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L512	@,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #:lower16:270487672	@,
	mov	r1, #4096	@,
	movt	r0, #:upper16:270487672	@,
	mov	r2, r7	@, pstMem.2925
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.36712,
	bne	.L512	@,
	add	r8, sp, #12	@ tmp175,,
	ldr	r1, [r4, #52]	@, <variable>.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.Length
	ldr	r0, [r4, #56]	@, <variable>.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.36712
	mov	r0, r8	@, tmp175
	mov	r1, #20	@,
	movw	r2, #:lower16:.LC8	@,
	movt	r2, #:upper16:.LC8	@,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.40511, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.40511,
	beq	.L500	@,
	blx	r3	@ D.40511
	subs	r2, r0, #0	@ Size,
	ble	.L500	@,
	mov	r0, r8	@, tmp175
	mov	r1, r6	@, D.36712
	mov	r3, r4	@, pstDrvMem
	str	r6, [sp, #0]	@ D.36712,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L512	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	ldr	r1, [r4, #4]	@, <variable>.VirAddr
	ldr	r2, [r4, #12]	@, <variable>.Length
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.40504, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.40504,
	beq	.L512	@,
	ldr	r0, [r4, #8]	@, <variable>.PhyAddr
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, <variable>.Length
	blx	r3	@ D.40504
	subs	r5, r0, #0	@ D.40503,
	bne	.L512	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ pstMem.2932, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r5	@, D.40503
	mov	r3, r6	@, pstMem.2932
	str	r5, [sp, #0]	@ D.40503,
	mov	r2, r0	@ D.36729,
	movw	r0, #:lower16:.LC9	@,
	movt	r0, #:upper16:.LC9	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L514	@,
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
	bne	.L514	@,
	ldr	r5, .L517	@ tmp198,
	mov	r0, #70	@,
	movw	r1, #:lower16:VCTRL_Isr_0	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Isr_0	@,
	movw	r3, #:lower16:.LC5	@,
	movt	r3, #:upper16:.LC5	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L514	@,
	mov	r0, #73	@,
	movw	r1, #:lower16:VCTRL_Scd_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Scd_Isr	@,
	movw	r3, #:lower16:.LC6	@,
	movt	r3, #:upper16:.LC6	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	subs	r7, r0, #0	@ D.36758,
	bne	.L514	@,
	mov	r0, #93	@,
	movw	r1, #:lower16:VCTRL_Dnr_Isr	@,
	mov	r2, #128	@,
	movt	r1, #:upper16:VCTRL_Dnr_Isr	@,
	movw	r3, #:lower16:.LC7	@,
	movt	r3, #:upper16:.LC7	@,
	str	r5, [sp, #0]	@ tmp198,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.36767
	bne	.L516	@,
.L493:
	add	sp, sp, #32	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L516:
	bl	DNR_Close	@
	mov	r0, r7	@ D.36680, D.36758
	b	.L493	@
.L514:
	mov	r0, r6	@, pstMem.2932
.L515:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.36680,
	b	.L493	@
.L490:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.36680,
	b	.L493	@
.L500:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L512:
	mov	r0, r7	@, pstMem.2925
	b	.L515	@
.L518:
	.align	2
.L517:
	.word	.LANCHOR0+272
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
.LFB1733:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	ip, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	beq	.L523	@,
.L520:
	mvn	ip, #0	@ D.36038,
.L521:
	mov	r0, ip	@, D.36038
	ldmfd	sp!, {r4, r5}
	bx	lr
.L523:
	movw	r0, #:lower16:.LANCHOR0	@ tmp138,
	movt	r0, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r4, [r0, #28]	@ D.36040, s_pstVfmwChan
	ldr	r3, [r4, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L520	@,
	cmp	r1, #0	@ pArgs,
	beq	.L520	@,
	mov	r5, r1	@ pArgs, pArgs
	add	r4, r4, #1424	@ tmp140, D.36040,
	ldmia	r5!, {r0, r1, r2, r3}	@ pArgs,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp140,,,,
	ldr	r2, [r5, #0]	@ tmp143,* pArgs
	str	r2, [r4, #0]	@ tmp143, <variable>.stSynExtraData.stPvrInfo
	b	.L521	@
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	beq	.L528	@,
.L525:
	mvn	r0, #0	@ D.35052,
	ldmfd	sp!, {r4, pc}	@
.L528:
	cmp	r1, #0	@ pstCfg,
	beq	.L525	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #28]	@ D.35056, s_pstVfmwChan
	cmp	r3, #0	@ D.35056,
	beq	.L525	@,
	mov	r0, r1	@, pstCfg
	mov	r2, #72	@,
	add	r1, r3, #32	@, D.35056,
	bl	memcpy	@
	mov	r0, r4	@ D.35052, ChanID
	ldmfd	sp!, {r4, pc}	@
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
	@ link register save eliminated.
	subs	r3, r0, #0	@ ChanID, ChanID
	beq	.L535	@,
.L530:
	mvn	r0, #0	@ D.33992,
	bx	lr	@
.L535:
	cmp	r1, #0	@ pArgs,
	beq	.L530	@,
	movw	r2, #:lower16:.LANCHOR0	@ tmp139,
	movt	r2, #:upper16:.LANCHOR0	@ tmp139,
	ldr	ip, [r2, #28]	@ D.33996, s_pstVfmwChan
	cmp	ip, #0	@ D.33996,
	beq	.L530	@,
	ldmia	r1, {r0, r1}	@ pArgs,,
	add	ip, ip, #1584	@ tmp140, D.33996,
	add	ip, ip, #12	@ tmp140, tmp140,
	stmia	ip, {r0, r1}	@ tmp140,,
	ldr	r2, [r2, #28]	@ temp.3009, s_pstVfmwChan
	ldr	r0, [r2, #1596]	@ <variable>.stSynExtraData.stDisParams.s32Mode, <variable>.stSynExtraData.stDisParams.s32Mode
	sub	r1, r0, #1	@ tmp145, <variable>.stSynExtraData.stDisParams.s32Mode,
	mov	r0, r3	@ D.33992, ChanID
	cmp	r1, #1	@ tmp145,
	strhi	r3, [r2, #1596]	@ ChanID, <variable>.stSynExtraData.stDisParams.s32Mode
	bx	lr	@
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
	@ link register save eliminated.
	cmp	r1, #0	@ pstFrameIntf
	bne	.L540	@,
.L537:
	mvn	r3, #0	@ D.33954,
	mov	r0, r3	@, D.33954
	bx	lr	@
.L540:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r3, r0, asl #2	@, tmp141, tmp138, ChanID,
	ldr	ip, [r0, #28]	@ D.33956, s_pstVfmwChan
	cmp	ip, #0	@ D.33956,
	beq	.L537	@,
	ldmia	r1, {r0, r1, r2}	@ pstFrameIntf,,,
	add	ip, ip, #128	@ tmp143, D.33956,
	mov	r3, #0	@ D.33954,
	stmia	ip, {r0, r1, r2}	@ tmp143,,,
	mov	r0, r3	@, D.33954
	bx	lr	@
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
	@ link register save eliminated.
	cmp	r1, #0	@ pstStreamIntf
	bne	.L545	@,
.L542:
	mvn	r3, #0	@ D.33934,
	mov	r0, r3	@, D.33934
	bx	lr	@
.L545:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	add	r0, r3, r0, asl #2	@, tmp141, tmp138, ChanID,
	ldr	ip, [r0, #28]	@ D.33936, s_pstVfmwChan
	cmp	ip, #0	@ D.33936,
	beq	.L542	@,
	ldmia	r1, {r0, r1, r2}	@ pstStreamIntf,,,
	add	ip, ip, #104	@ tmp143, D.33936,
	mov	r3, #0	@ D.33934,
	stmia	ip, {r0, r1, r2}	@ tmp143,,,
	mov	r0, r3	@, D.33934
	bx	lr	@
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
.LFB1740:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp142,
	movt	r3, #:upper16:.LANCHOR0	@ tmp142,
	add	r3, r3, r0, asl #2	@, tmp145, tmp142, ChanID,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r2, [r3, #28]	@ D.36263, s_pstVfmwChan
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ ChanID, ChanID
	cmp	r2, #0	@ D.36263,
	mov	r5, r1	@ pMem, pMem
	bne	.L550	@,
.L547:
	mvn	r0, #0	@ D.36266,
.L548:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
.L550:
	ldr	r1, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	bne	.L547	@,
	ldr	r2, [r2, #820]	@ <variable>.s32UsrdecFrameNum, <variable>.s32UsrdecFrameNum
	cmp	r2, #2	@ <variable>.s32UsrdecFrameNum,
	ble	.L547	@,
	str	r3, [sp, #4]	@,
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.36273,
	mov	r1, r0	@ D.36273,
	bne	.L547	@,
	mov	r0, r4	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r1, r0, #0	@ id,
	blt	.L547	@,
	mov	r0, r4	@, ChanID
	bl	FSP_GetLogicFs	@
	ldr	r3, [sp, #4]	@,
	cmp	r0, #0	@ pLf
	beq	.L547	@,
	ldr	r2, [r0, #408]	@ D.36284, <variable>.pstDecodeFs
	cmp	r2, #0	@ D.36284,
	beq	.L547	@,
	ldr	ip, [r0, #412]	@ <variable>.pstDispOutFs, <variable>.pstDispOutFs
	cmp	ip, #0	@ <variable>.pstDispOutFs,
	beq	.L547	@,
	ldr	lr, [r0, #416]	@ <variable>.pstTfOutFs, <variable>.pstTfOutFs
	cmp	lr, #0	@ <variable>.pstTfOutFs,
	beq	.L547	@,
	ldr	r2, [r2, #12]	@ <variable>.PhyAddr, <variable>.PhyAddr
	mov	r0, #0	@ D.36266,
	str	r2, [r5, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	ldr	r1, [r3, #28]	@ tmp157, s_pstVfmwChan
	ldr	r3, [r1, #816]	@ <variable>.s32UsrdecFrameSize, <variable>.s32UsrdecFrameSize
	str	r3, [r5, #8]	@ <variable>.s32UsrdecFrameSize, <variable>.Length
	b	.L548	@
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
.LFB1739:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r7, r1	@ pstUsrdecFrame, pstUsrdecFrame
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, [r1, #28]	@, <variable>.s32LumaPhyAddr
	mov	r6, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r4, r0	@ PicBufID,
	beq	.L552	@,
	ldr	r3, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r3, #1	@ <variable>.s32IsFrameValid,
	beq	.L553	@,
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, PicBufID
	mov	r2, #0	@,
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.36166,
.L554:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L553:
	ldr	r0, [r7, #36]	@, <variable>.s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r9, r0, #0	@ pChromSrc,
	beq	.L571	@,
.L555:
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, PicBufID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pLogic,
	bne	.L572	@,
.L552:
	mvn	r0, #0	@ D.36166,
	b	.L554	@
.L571:
	ldr	r0, [r7, #4]	@ <variable>.s32IsFrameValid, <variable>.s32IsFrameValid
	cmp	r0, #1	@ <variable>.s32IsFrameValid,
	bne	.L555	@,
	mvn	r0, #0	@ D.36166,
	b	.L554	@
.L572:
	str	r4, [r5, #176]	@ PicBufID, <variable>.image_id
	mov	r8, #0	@ tmp175,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	mov	fp, #1	@ tmp174,
	strd	r0, [r5]	@ <variable>.Pts, <variable>.SrcPts
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r2, [r5, #8]	@ <variable>.Pts, pLogic,
	ldrd	r0, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	strd	r0, [r5, #16]	@ <variable>.Pts, pLogic,
	ldrd	r2, [r7, #8]	@ <variable>.Pts, pstUsrdecFrame,
	str	fp, [r5, #68]	@ tmp174, <variable>.DispEnableFlag
	str	r8, [r5, #72]	@ tmp175, <variable>.DispFrameDistance
	strd	r2, [r5, #24]	@ <variable>.Pts, pLogic,
	str	r8, [r5, #76]	@ tmp175, <variable>.DistanceBeforeFirstFrame
	str	r8, [r5, #80]	@ tmp175, <variable>.GopNum
	ldr	lr, [r7, #28]	@ temp.3169, <variable>.s32LumaPhyAddr
	str	lr, [r5, #88]	@ temp.3169, <variable>.top_luma_phy_addr
	mov	r0, lr	@, temp.3169
	str	lr, [r5, #120]	@ temp.3169, <variable>.luma_2d_phy_addr
	str	lr, [r5, #104]	@ temp.3169, <variable>.luma_phy_addr
	ldr	sl, [r7, #36]	@ temp.3170, <variable>.s32CbPhyAddr
	str	sl, [r5, #108]	@ temp.3170, <variable>.chrom_phy_addr
	str	sl, [r5, #92]	@ temp.3170, <variable>.top_chrom_phy_addr
	str	sl, [r5, #124]	@ temp.3170, <variable>.chrom_2d_phy_addr
	bl	MEM_Phy2Vir	@
	str	r0, [r5, #32]	@ D.36187, <variable>.luma_vir_addr
	str	r0, [r5, #48]	@ D.36187, <variable>.luma_2d_vir_addr
	ldr	r0, [r5, #92]	@, <variable>.top_chrom_phy_addr
	bl	MEM_Phy2Vir	@
	ldr	ip, [r5, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r5, #52]	@ pDst, <variable>.chrom_2d_vir_addr
	mov	sl, r0	@ pDst,
	str	r0, [r5, #36]	@ pDst, <variable>.chrom_vir_addr
	cmp	r0, r8	@ pDst,
	ldr	r3, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	ldr	r0, [r5, #92]	@ <variable>.top_chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	r2, r3, ip	@ tmp181, <variable>.s32LumaStride, <variable>.top_luma_phy_addr
	str	r2, [r5, #96]	@ tmp181, <variable>.btm_luma_phy_addr
	ldr	r1, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	r8, [r5, #128]	@ tmp175, <variable>.is_fld_save
	add	r3, r1, r0	@ tmp184, <variable>.s32LumaStride, <variable>.top_chrom_phy_addr
	str	r3, [r5, #100]	@ tmp184, <variable>.btm_chrom_phy_addr
	ldr	ip, [r7, #20]	@ <variable>.s32YWidth, <variable>.s32YWidth
	str	ip, [r5, #144]	@ <variable>.s32YWidth, <variable>.image_width
	ldr	r2, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	str	r2, [r5, #148]	@ <variable>.s32YHeight, <variable>.image_height
	movw	r2, #11296	@ tmp194,
	ldr	r1, [r7, #20]	@ temp.3175, <variable>.s32YWidth
	str	r1, [r5, #152]	@ temp.3175, <variable>.disp_width
	mov	r0, r1, lsr fp	@ tmp188, temp.3175,
	ldr	r3, [r7, #24]	@ temp.3177, <variable>.s32YHeight
	str	r0, [r5, #160]	@ tmp188, <variable>.disp_center_x
	str	r3, [r5, #156]	@ temp.3177, <variable>.disp_height
	mov	ip, r3, lsr fp	@ tmp189, temp.3177,
	str	ip, [r5, #164]	@ tmp189, <variable>.disp_center_y
	ldr	r1, [r7, #32]	@ <variable>.s32LumaStride, <variable>.s32LumaStride
	str	fp, [r5, #208]	@ tmp174, <variable>.chroma_idc
	str	r2, [r5, #140]	@ tmp194, <variable>.format
	str	r1, [r5, #172]	@ <variable>.s32LumaStride, <variable>.image_stride
	str	r8, [r5, #168]	@ tmp175, <variable>.frame_rate
	str	r8, [r5, #180]	@ tmp175, <variable>.error_level
	str	r8, [r5, #256]	@ tmp175, <variable>.line_num_phy_addr
	str	r8, [r5, #56]	@ tmp175, <variable>.line_num_vir_addr
	beq	.L552	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	cmp	r1, fp	@ <variable>.s32YHeight,
	bgt	.L565	@,
	b	.L556	@
.L574:
	ldr	r2, [r5, #144]	@ __n, <variable>.image_width
	cmp	r2, #0	@ __n,
	bne	.L573	@,
.L558:
	add	r0, r1, r1, lsr #31	@, tmp228, <variable>.s32YHeight, <variable>.s32YHeight,
	add	r8, r8, #1	@ y, y,
	ldr	r2, [r5, #172]	@ D.36245, <variable>.image_stride
	cmp	r8, r0, asr #1	@ y, tmp228,
	bge	.L556	@,
	add	sl, sl, r2	@ pDst, pDst, D.36245
.L565:
	ldr	r3, [r7, #0]	@ D.36207, <variable>.enFmt
	cmp	r3, #0	@ D.36207,
	beq	.L574	@,
	cmp	r3, #1	@ D.36207,
	beq	.L558	@,
	cmp	r3, #3	@ D.36207,
	beq	.L575	@,
	cmp	r3, #2	@ D.36207,
	bne	.L562	@,
	mov	r1, r9	@, pSrc
	ldr	r2, [r5, #144]	@, <variable>.image_width
	mov	r0, sl	@, pDst
	bl	memcpy	@
	ldr	r2, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	add	r9, r9, r2, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	b	.L558	@
.L573:
	mov	r1, #128	@,
	mov	r0, sl	@, pDst
	bl	memset	@
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
	b	.L558	@
.L575:
	ldr	ip, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	ip, #0	@ <variable>.image_width,
	beq	.L560	@,
	mov	r0, #0	@ x.3193,
	mov	r2, r9	@ ivtmp.3152, pSrc
	mov	r3, r0	@ x, x.3193
.L561:
	ldrb	r1, [r2, #0]	@ zero_extendqisi2	@ tmp199,* ivtmp.3152
	mov	lr, r0	@ tmp202, x.3193
	add	r3, r3, #2	@ x, x,
	strb	r1, [lr, sl]!	@ tmp199,
	mov	r0, r3	@ x.3193, x
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp204,
	add	r2, r2, #4	@ ivtmp.3152, ivtmp.3152,
	strb	ip, [lr, #1]	@ tmp204,
	ldr	r1, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r1, r3	@ <variable>.image_width, x
	bhi	.L561	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L560:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	r9, r9, r3	@ pSrc, pSrc, <variable>.s32ChromStride
	b	.L558	@
.L562:
	cmp	r3, #4	@ D.36207,
	bne	.L552	@,
	ldr	r0, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #0	@ <variable>.image_width,
	beq	.L563	@,
	mov	r0, #0	@ x.588,
	mov	r2, r9	@ ivtmp.3158, pSrc
	mov	r3, r0	@ x.3189, x.588
.L564:
	ldrb	lr, [r2, #0]	@ zero_extendqisi2	@ tmp215,* ivtmp.3158
	mov	r1, sl	@ tmp218, pDst
	add	r3, r3, #2	@ x.3189, x.3189,
	strb	lr, [r1, r0]!	@ tmp215,
	mov	r0, r3	@ x.588, x.3189
	ldrb	ip, [r2, #1]	@ zero_extendqisi2	@ tmp220,
	add	r2, r2, #4	@ ivtmp.3158, ivtmp.3158,
	strb	ip, [r1, #1]	@ tmp220,
	ldr	lr, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r3, lr	@ x.3189, <variable>.image_width
	bcc	.L564	@,
	ldr	r1, [r7, #24]	@ <variable>.s32YHeight, <variable>.s32YHeight
.L563:
	ldr	r3, [r7, #44]	@ <variable>.s32ChromStride, <variable>.s32ChromStride
	add	r9, r9, r3, asl #1	@, pSrc, pSrc, <variable>.s32ChromStride,
	b	.L558	@
.L556:
	mov	r7, #18	@ tmp230,
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, PicBufID
	mov	r2, #1	@,
	str	r7, [r5, #300]	@ tmp230, <variable>.ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	movw	r0, #:lower16:.LANCHOR0	@ tmp231,
	movt	r0, #:upper16:.LANCHOR0	@ tmp231,
	str	r5, [sp, #0]	@ pLogic,
	add	r3, r0, r6, asl #2	@, tmp234, tmp231, ChanID,
	mov	r1, r7	@, tmp230
	mov	r0, r6	@, ChanID
	ldr	r2, [r3, #28]	@ D.36248, s_pstVfmwChan
	add	ip, r2, #210944	@, D.36248,
	add	r2, ip, #896	@, tmp2,
	add	r3, ip, #904	@,,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	moveq	r0, #0	@ D.36166,
	beq	.L554	@,
	mov	r0, r6	@, ChanID
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r7, #0	@ tmp240,
	mov	r0, r6	@, ChanID
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	str	r7, [r5, #192]	@ tmp240, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r6	@, ChanID
	str	r7, [r5, #196]	@ tmp240, <variable>.p_usrdat
	mov	r1, r4	@, PicBufID
	mov	r2, r7	@, tmp240
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.36166,
	b	.L554	@
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
.LFB1741:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	movw	r0, #:lower16:.LANCHOR0	@ tmp139,
	movt	r0, #:upper16:.LANCHOR0	@ tmp139,
	add	r3, r0, r4, asl #2	@, tmp142, tmp139, ChanID,
	mov	r5, r1	@ pUsrdecFrame, pUsrdecFrame
	ldr	ip, [r3, #28]	@ D.36297, s_pstVfmwChan
	cmp	ip, #0	@ D.36297,
	bne	.L580	@,
.L577:
	mvn	r0, #0	@ D.36300,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L580:
	cmp	r1, #0	@ pUsrdecFrame,
	beq	.L577	@,
	ldr	r1, [ip, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #18	@ <variable>.eVidStd,
	bne	.L577	@,
	mov	lr, r5	@ pUsrdecFrame, pUsrdecFrame
	add	ip, ip, #824	@ tmp145, D.36297,
	ldmia	lr!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	mov	r6, ip	@ tmp150, tmp145
	stmia	r6!, {r0, r1, r2, r3}	@ tmp150,,,,
	mov	ip, r6	@ tmp152, tmp150
	ldmia	lr!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ pUsrdecFrame,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp152,,,,
	ldmia	lr, {r0, r1}	@ pUsrdecFrame,,
	stmia	ip, {r0, r1}	@ tmp154,,
	mov	r0, r4	@, ChanID
	mov	r1, r5	@, pUsrdecFrame
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.36307
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	b	.L577	@
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
.LFB1738:
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
	beq	.L582	@,
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	mov	r6, #0	@ tmp142,
	ldr	r1, [r5, #192]	@, <variable>.p_usrdat
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp142, <variable>.p_usrdat
	ldr	r1, [r5, #196]	@, <variable>.p_usrdat
	ldr	r0, [r4, #360]	@, <variable>.ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp142, <variable>.p_usrdat
.L582:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
.LFB1737:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #352]	@ D.36113, <variable>.ImageQue.ResetMagicWord
	mov	r4, r0	@ pCtx, pCtx
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.36113, <variable>.ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	str	r5, [r4, #0]	@ pstExtraData, <variable>.pstExtraData
	ldr	r3, [r3, #28]	@ D.38308, s_pstVfmwChan
	cmp	r3, #0	@ D.38308,
	beq	.L585	@,
	add	r1, r3, #210944	@ tmp141, D.38308,
	add	r0, r1, #896	@ tmp141, tmp141,
	cmp	r4, r0	@ pCtx, tmp141
	beq	.L588	@,
.L585:
	mvn	ip, #0	@ tmp145,
	mvn	r0, #19	@ D.36125,
	str	ip, [r4, #360]	@ tmp145, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L588:
	mov	r2, #0	@ tmp143,
	mov	r0, #1	@ D.36125,
	str	r2, [r4, #360]	@ tmp143, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
.LFB1742:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	add	r3, r1, r0, asl #2	@, tmp138, tmp135, ChanID,
	ldr	r1, [r3, #28]	@ D.36319, s_pstVfmwChan
	cmp	r1, #0	@ D.36319,
	bxeq	lr	@
	ldr	r3, [r1, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L592	@,
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L593	@,
	cmp	r3, #0	@ <variable>.eVidStd,
	bxne	lr	@
	add	r2, r1, #210944	@, D.36319,
	add	r1, r1, #888	@, D.36319,
	add	r0, r2, #896	@,,
	b	H264DEC_Init	@
.L593:
	add	ip, r1, #210944	@, D.36319,
	add	r1, r1, #888	@, D.36319,
	add	r0, ip, #896	@,,
	b	USERDEC_Init	@
.L592:
	add	r0, r1, #210944	@, D.36319,
	add	r1, r1, #888	@, D.36319,
	add	r0, r0, #896	@,,
	b	MPEG2DEC_Init	@
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
.LFB1731:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanId
	beq	.L602	@,
.L596:
	mvn	r0, #0	@ Ret,
	bx	lr	@
.L602:
	movw	r3, #:lower16:.LANCHOR0	@ tmp137,
	movt	r3, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r3, #28]	@ D.36007, s_pstVfmwChan
	cmp	r3, #0	@ D.36007,
	beq	.L596	@,
	ldr	r2, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L596	@,
	ldr	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r2, #0	@ <variable>.eVidStd,
	bne	.L603	@,
	add	r0, r3, #210944	@, D.36007,
	add	r0, r0, #896	@,,
	b	H264DEC_GetImageBuffer	@
.L603:
	cmp	r2, #3	@ <variable>.eVidStd,
	bxne	lr	@
	add	r1, r3, #210944	@, D.36007,
	add	r0, r1, #896	@,,
	b	MPEG2DEC_GetImageBuffer	@
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
.LFB1759:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	beq	.L615	@,
.L605:
	mvn	r0, #0	@ D.37072,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L615:
	movw	r4, #:lower16:.LANCHOR0	@ tmp182,
	movt	r4, #:upper16:.LANCHOR0	@ tmp182,
	ldr	r3, [r4, #28]	@ D.37074, s_pstVfmwChan
	cmp	r3, #0	@ D.37074,
	beq	.L605	@,
	ldr	r2, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r2, #1	@ <variable>.s32IsRun,
	bne	.L605	@,
	ldr	r2, [r3, #16]	@ <variable>.s32StopSyntax, <variable>.s32StopSyntax
	cmp	r2, #0	@ <variable>.s32StopSyntax,
	bne	.L605	@,
	str	r2, [r3, #672]	@ <variable>.s32StopSyntax, <variable>.s32NoStreamFlag
	bl	OSAL_GetTimeInMs	@
	movw	ip, #:lower16:g_TraceBsPeriod	@ tmp154,
	movt	ip, #:upper16:g_TraceBsPeriod	@ tmp154,
	ldr	r1, [r4, #276]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r3, [ip, #0]	@ g_TraceBsPeriod, g_TraceBsPeriod
	mov	r5, r0	@ currtime,
	rsb	r0, r1, r0	@ tmp152, last_rec_pos_time, currtime
	cmp	r0, r3	@ tmp152, g_TraceBsPeriod
	mov	r0, #0	@,
	strhi	r5, [r4, #276]	@ currtime, last_rec_pos_time
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.37091,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, #0	@,
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	mvnne	r0, #2	@ D.37072,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r6, [r4, #28]	@ temp.3342, s_pstVfmwChan
	movw	r7, #:lower16:.LANCHOR0	@ tmp157,
	movt	r7, #:upper16:.LANCHOR0	@ tmp157,
	ldrb	lr, [r6, #1025]	@ zero_extendqisi2	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec, <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec
	cmp	lr, #0	@ <variable>.stSynExtraData.stSegPacket.IsCurrSegWaitDec,
	bne	.L610	@,
	ldr	r8, [r6, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r8, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	beq	.L616	@,
.L610:
	add	r6, r6, #1024	@ pSegMan, temp.3342,
	mov	r0, #0	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp172,
	movt	r5, #:upper16:.LANCHOR0	@ tmp172,
	mov	r1, r6	@, pSegMan
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r4, #28]	@ temp.3344, s_pstVfmwChan
	mov	r0, r6	@, pSegMan
	add	r1, r3, #210944	@, temp.3344,
	add	r2, r1, #896	@,,
	ldr	r1, [r3, #880]	@, <variable>.eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L617	@,
.L613:
	mov	r0, #0	@ D.37072,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L616:
	add	r2, r6, #1024	@, temp.3342,
	mov	r0, r8	@, <variable>.stSynExtraData.s32DSDWaitFlag
	add	r1, r2, #8	@,,
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L610	@,
	movw	ip, #:lower16:g_NoStreamReportPeriod	@ tmp165,
	movt	ip, #:upper16:g_NoStreamReportPeriod	@ tmp165,
	ldr	r1, [r7, #280]	@ last_rec_pos_report_time, last_rec_pos_report_time
	ldr	r3, [ip, #0]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r0, r1, r5	@ tmp163, last_rec_pos_report_time, currtime
	cmp	r0, r3	@ tmp163, g_NoStreamReportPeriod
	bls	.L611	@,
	ldr	r3, [r7, #216]	@ g_event_report.636, g_event_report
	cmp	r3, #0	@ g_event_report.636,
	beq	.L612	@,
	mov	r0, r8	@, <variable>.stSynExtraData.s32DSDWaitFlag
	mov	r1, #117	@,
	mov	r2, r8	@,
	blx	r3	@ g_event_report.636
.L612:
	str	r5, [r4, #280]	@ currtime, last_rec_pos_report_time
.L611:
	ldr	r2, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	lr, #1	@ tmp171,
	mvn	r0, #3	@ D.37072,
	str	lr, [r2, #672]	@ tmp171, <variable>.s32NoStreamFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L617:
	bl	OSAL_GetTimeInMs	@
	movw	r2, #:lower16:g_TraceFramePeriod	@ tmp178,
	movt	r2, #:upper16:g_TraceFramePeriod	@ tmp178,
	ldr	r1, [r5, #284]	@ last_rec_pos_decparam_time, last_rec_pos_decparam_time
	ldr	ip, [r2, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	mov	r3, r0	@ currtime.3345,
	rsb	r0, r1, r0	@ tmp176, last_rec_pos_decparam_time, currtime.3345
	cmp	r0, ip	@ tmp176, g_TraceFramePeriod
	bls	.L613	@,
	mov	r0, #0	@,
	str	r3, [r5, #284]	@ currtime.3345, last_rec_pos_decparam_time
	bl	VCTRL_GetDecParam	@
	mov	r0, #0	@ D.37072,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
.LFB1754:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp178,
	movt	r4, #:upper16:.LANCHOR0	@ tmp178,
	.pad #28
	sub	sp, sp, #28	@,,
	movw	r6, #:lower16:.LANCHOR0	@ tmp180,
	movt	r6, #:upper16:.LANCHOR0	@ tmp180,
	ldr	r2, [r4, #28]	@ D.36899, s_pstVfmwChan
	mov	r8, sp	@ tmp183,
	mvn	r3, #0	@ ret,
	mov	r5, #1	@ tmp181,
	cmp	r2, #0	@ D.36899,
	mov	r7, #0	@ prephitmp.3363,
	ldrne	r2, [r2, #12]	@ prephitmp.3363, <variable>.s32Priority
	str	r2, [r4, #288]	@ prephitmp.3363, ChanPriTab
.L641:
	cmp	r2, #0	@ prephitmp.3363,
	ldr	r2, [r4, #28]	@ D.36910, s_pstVfmwChan
	ble	.L621	@,
	cmp	r2, #0	@ D.36910,
	bne	.L645	@,
.L621:
	mov	r1, #0	@ tmp174,
	mov	r0, r3	@, ret
	str	r1, [r4, #76]	@ tmp174, s_VfmwCTrl.s32ThisChanIDPlus1
	str	r1, [r4, #288]	@ tmp174, ChanPriTab
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L645:
	str	r5, [r4, #76]	@ tmp181, s_VfmwCTrl.s32ThisChanIDPlus1
	ldr	r1, [r2, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	r1, #1	@ <variable>.s32IsRun,
	bne	.L621	@,
	str	r7, [r6, #288]	@ prephitmp.3363, ChanPriTab
	ldr	r3, [r2, #52]	@ <variable>.stChanCfg.s32ChanStrmOFThr, <variable>.stChanCfg.s32ChanStrmOFThr
	cmp	r3, #0	@ <variable>.stChanCfg.s32ChanStrmOFThr,
	ble	.L623	@,
	ldr	r0, [r2, #56]	@ <variable>.stChanCfg.s32DecMode, <variable>.stChanCfg.s32DecMode
	cmp	r0, #0	@ <variable>.stChanCfg.s32DecMode,
	beq	.L646	@,
.L623:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	beq	.L647	@,
.L642:
	ldr	r2, [r4, #288]	@ prephitmp.3363, ChanPriTab
	b	.L641	@
.L646:
	mov	r0, r7	@, prephitmp.3363
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L648	@,
.L624:
	ldr	sl, [r4, #28]	@ temp.3383, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	r2, [sl, #52]	@, <variable>.stChanCfg.s32ChanStrmOFThr
	bl	GetNextDecodeMode	@
	str	r0, [sl, #896]	@, <variable>.stSynExtraData.s32DecMode
	ldr	ip, [r4, #28]	@ temp.3385, s_pstVfmwChan
	ldr	r2, [ip, #896]	@ <variable>.stSynExtraData.s32DecMode, <variable>.stSynExtraData.s32DecMode
	cmp	r2, #0	@ <variable>.stSynExtraData.s32DecMode,
	strne	r7, [ip, #892]	@ prephitmp.3363, <variable>.stSynExtraData.s32OutErrThr
	ldreq	r2, [ip, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	ldrne	ip, [r6, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	streq	r2, [ip, #892]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldreq	ip, [r6, #28]	@ temp.3388, s_pstVfmwChan
	strne	r7, [ip, #888]	@ prephitmp.3363, <variable>.stSynExtraData.s32RefErrThr
	ldreq	r2, [ip, #48]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stChanCfg.s32ChanErrThr
	streq	r2, [ip, #888]	@ <variable>.stChanCfg.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	b	.L623	@
.L647:
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	moveq	sl, #2	@ i,
	bne	.L642	@,
.L628:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	subs	r3, r0, #0	@ ret,
	bne	.L642	@,
	bl	DecChanSyntax	@
	add	sl, sl, #1	@ tmp187, i,
	subs	r3, r0, #0	@ ret,
	bne	.L642	@,
	add	sl, sl, #1	@ i, tmp187,
	cmp	sl, #200	@ i,
	bne	.L628	@,
	ldr	r2, [r4, #288]	@ prephitmp.3363, ChanPriTab
	b	.L641	@
.L648:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L624	@
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
.LFB1734:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp158,
	mov	r6, r0, asl #2	@ tmp157, ChanID,
	movt	r4, #:upper16:.LANCHOR0	@ tmp158,
	add	r1, r6, r4	@ tmp142, tmp157, tmp158
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r1, #28]	@ tmp144, s_pstVfmwChan
	cmp	r3, #0	@ tmp144,
	beq	.L652	@,
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L652	@,
	ldr	r0, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r0, #16	@ SmInstInfo.SegNum,
	bgt	.L653	@,
	ldr	r2, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r2, #524288	@ SmInstInfo.TotalSegSize,
	bgt	.L653	@,
.L652:
	mvn	r0, #0	@ ret,
.L651:
	add	sp, sp, #24	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L653:
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	bne	.L652	@,
	bl	OSAL_GetTimeInMs	@
	add	r4, r6, r4	@ tmp152, tmp157, tmp158
	ldr	r1, [r4, #28]	@ tmp154, s_pstVfmwChan
	ldr	r3, [r1, #28]	@ <variable>.u32timeLastDecParamReady, <variable>.u32timeLastDecParamReady
	rsb	ip, r3, r0	@ tmp155, <variable>.u32timeLastDecParamReady,
	cmp	ip, #50	@ tmp155,
	movls	r0, #0	@ ret,
	bls	.L651	@,
	b	.L652	@
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
.LFB1729:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp139,
	movt	r4, #:upper16:.LANCHOR0	@ tmp139,
	mov	r6, r0	@ ChanId, ChanId
	add	r4, r4, r0, asl #2	@, tmp142, tmp139, ChanId,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r0, [r4, #28]	@ D.35973, s_pstVfmwChan
	cmp	r0, #0	@ D.35973,
	beq	.L662	@,
	ldr	r5, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r5, #0	@ <variable>.eVidStd,
	bne	.L663	@,
	add	r0, r0, #210944	@, D.35973,
	mov	r3, r2	@, pLumaInfo
	add	r0, r0, #896	@,,
	mov	r2, #1	@,
	str	r5, [sp, #0]	@ <variable>.eVidStd,
	bl	H264DEC_VDMPostProc	@
	ldr	r2, [r4, #28]	@ prephitmp.3430, s_pstVfmwChan
	movw	r7, #:lower16:225396	@ tmp153,
	movt	r7, #:upper16:225396	@ tmp153,
	ldrb	r3, [r2, r7]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L664	@,
.L660:
	movw	lr, #:lower16:212200	@ tmp169,
	movt	lr, #:upper16:212200	@ tmp169,
	mov	ip, #0	@ tmp170,
	str	ip, [r2, lr]	@ tmp170,
.L662:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L663:
	cmp	r5, #3	@ <variable>.eVidStd,
	bne	.L662	@,
	add	r2, r0, #210944	@, D.35973,
	movw	r5, #:lower16:285553	@ tmp178,
	add	r0, r2, #896	@,,
	movt	r5, #:upper16:285553	@ tmp178,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r2, [r4, #28]	@ prephitmp.3443, s_pstVfmwChan
	ldrb	r3, [r2, r5]	@ zero_extendqisi2	@ <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	beq	.L665	@,
.L661:
	movw	lr, #:lower16:211844	@ tmp194,
	movt	lr, #:upper16:211844	@ tmp194,
	mov	ip, #0	@ tmp195,
	str	ip, [r2, lr]	@ tmp195,
	b	.L662	@
.L664:
	mov	r0, r6	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, #28]	@ tmp160, s_pstVfmwChan
	strb	r5, [r1, r7]	@ <variable>.eVidStd, <variable>.stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	ldr	r2, [r4, #28]	@ prephitmp.3430, s_pstVfmwChan
	b	.L660	@
.L665:
	mov	r0, r6	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, #28]	@ tmp185, s_pstVfmwChan
	mov	r0, #0	@ tmp187,
	strb	r0, [r1, r5]	@ tmp187, <variable>.stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	ldr	r2, [r4, #28]	@ prephitmp.3443, s_pstVfmwChan
	b	.L661	@
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
.LFB1730:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanId, ChanId
	.pad #8
	sub	sp, sp, #8	@,,
	bne	.L668	@,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, #28]	@ D.35984, s_pstVfmwChan
	cmp	r3, #0	@ D.35984,
	beq	.L668	@,
	ldr	ip, [r3, #8]	@ <variable>.s32IsRun, <variable>.s32IsRun
	cmp	ip, #1	@ <variable>.s32IsRun,
	beq	.L669	@,
.L668:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L669:
	str	r1, [sp, #4]	@,
	str	r2, [sp, #0]	@,
	bl	VCTRL_GetDecParam	@
	ldr	r1, [sp, #4]	@,
	ldr	r2, [sp, #0]	@,
	cmp	r0, #0	@,
	beq	.L668	@,
	mov	r0, r4	@, ChanId
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, lr}
	b	VCTRL_PostProc	@
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
.LFB1720:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L679	@,
.L671:
	mvn	r4, #0	@ ret,
.L673:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L679:
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, #28]	@ D.35803, s_pstVfmwChan
	cmp	r3, #0	@ D.35803,
	beq	.L671	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L671	@,
	cmp	r1, #0	@ pImage,
	beq	.L671	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [sp, #4]	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #28]	@ temp.3490, s_pstVfmwChan
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ temp.3490,
	beq	.L678	@,
	ldr	r2, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L678	@,
	add	r0, r0, #210944	@, temp.3490,
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReleaseImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L673	@
.L678:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ ret,
	b	.L673	@
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
.LFB1719:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	beq	.L689	@,
.L681:
	mvn	r4, #0	@ ret,
.L683:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L689:
	movw	r4, #:lower16:.LANCHOR0	@ tmp140,
	movt	r4, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r4, #28]	@ D.35778, s_pstVfmwChan
	cmp	r3, #0	@ D.35778,
	beq	.L681	@,
	ldr	r3, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L681	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [sp, #4]	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4, #28]	@ temp.3516, s_pstVfmwChan
	ldr	r1, [sp, #4]	@,
	cmp	r0, #0	@ temp.3516,
	beq	.L688	@,
	ldr	r2, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L688	@,
	add	r0, r0, #210944	@, temp.3516,
	add	r0, r0, #888	@,,
	bl	SYNTAX_ReceiveImage	@
	cmp	r0, #1	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	moveq	r4, #0	@, ret,
	mvnne	r4, #0	@, ret,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L683	@
.L688:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ ret,
	b	.L683	@
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp137,
	movt	r2, #:upper16:.LANCHOR0	@ tmp137,
	add	r1, r2, r0, asl #2	@, tmp140, tmp137, ChanID,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	ldr	r3, [r1, #28]	@ tmp142, s_pstVfmwChan
	cmp	r3, #0	@ tmp142,
	beq	.L691	@,
	bl	SM_Reset	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp!, {r3, pc}	@
.L691:
	mvn	r0, #0	@ D.35715,
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
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	mov	r0, sp	@,
	bl	__memzero	@
	mov	r0, r5	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	subs	r4, r0, #0	@ ret,
	beq	.L704	@,
.L695:
	mvn	r4, #0	@ ret,
.L699:
	mov	r0, r4	@, ret
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L704:
	ldr	r0, [sp, #0]	@ D.35628, stCfgInfo.eVidStd
	cmp	r0, #0	@ D.35628,
	movne	r2, r4	@ prephitmp.3554, ret
	bne	.L697	@,
	ldr	r2, [sp, #40]	@ stCfgInfo.s32LowdlyEnable, stCfgInfo.s32LowdlyEnable
	cmp	r2, #1	@ stCfgInfo.s32LowdlyEnable,
	movne	r2, #0	@, prephitmp.3554
	moveq	r2, #1	@, prephitmp.3554
.L697:
	movw	r6, #:lower16:.LANCHOR0	@ tmp145,
	movt	r6, #:upper16:.LANCHOR0	@ tmp145,
	ldr	r3, [r6, #292]	@ eDSPState, g_DSPState
	cmp	r3, #0	@ eDSPState,
	bne	.L705	@,
	cmp	r0, #6	@ D.35628,
	movne	r3, #0	@, temp.3565
	moveq	r3, #1	@, temp.3565
	tst	r2, #1	@ prephitmp.3554,
	bne	.L706	@,
	cmp	r3, #0	@ temp.3565,
	beq	.L699	@,
	add	r5, r6, r5, asl #2	@, tmp170, tmp145, ChanID,
	mov	r0, #6	@,
	bl	WriteHexFile	@
	mov	r0, #2	@ tmp172,
	str	r0, [r5, #292]	@ tmp172, g_DSPState
	b	.L699	@
.L705:
	cmp	r3, #2	@ eDSPState,
	movne	r2, #0	@, tmp150
	andeq	r2, r2, #1	@,, tmp150, prephitmp.3554
	cmp	r2, #0	@ tmp150,
	bne	.L695	@,
	cmp	r3, #1	@ eDSPState,
	cmpeq	r0, #6	@, D.35628,
	beq	.L695	@,
	b	.L699	@
.L706:
	add	r5, r6, r5, asl #2	@, tmp161, tmp145, ChanID,
	bl	WriteHexFile	@
	mov	r3, #1	@ tmp163,
	str	r3, [r5, #292]	@ tmp163, g_DSPState
	b	.L699	@
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
	movw	r2, #:lower16:.LANCHOR0	@ tmp140,
	movt	r2, #:upper16:.LANCHOR0	@ tmp140,
	stmfd	sp!, {r3, lr}	@,
	.save {r3, lr}
	add	r3, r2, r0, asl #2	@, tmp143, tmp140, ChanID,
	ldr	r3, [r3, #28]	@ D.35591, s_pstVfmwChan
	cmp	r3, #0	@ D.35591,
	bne	.L711	@,
.L708:
	mvn	r0, #0	@ D.35594,
	ldmfd	sp!, {r3, pc}	@
.L711:
	ldr	ip, [r3, #880]	@ D.35595, <variable>.eVidStd
	cmp	ip, #4	@ D.35595,
	cmpne	ip, #14	@, D.35595,
	beq	.L708	@,
	bl	SM_SeekPts	@
	cmp	r0, #0	@ ret
	ldmeqfd	sp!, {r3, pc}	@
	b	.L708	@
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
.LFB1701:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	subs	r3, r0, #0	@ ChanID, ChanID
	beq	.L716	@,
.L713:
	mvn	r0, #0	@ D.35035,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L716:
	movw	r4, #:lower16:.LANCHOR0	@ tmp138,
	movt	r4, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r2, [r4, #28]	@ D.35037, s_pstVfmwChan
	cmp	r2, #0	@ D.35037,
	beq	.L713	@,
	ldr	r1, [r2, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r1, #1	@ <variable>.s32IsOpen,
	bne	.L713	@,
	str	r1, [r2, #16]	@ <variable>.s32IsOpen, <variable>.s32StopSyntax
	ldr	r2, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r3, [r2, #8]	@ ChanID, <variable>.s32IsRun
	bl	SM_Stop	@
	subs	r5, r0, #0	@ s32Ret,
	bne	.L713	@,
	mov	r1, r5	@, s32Ret
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r5	@, s32Ret
	bl	DNR_StopChan	@
	mov	r0, r5	@, s32Ret
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r5	@ D.35035, s32Ret
	str	r5, [r3, #16]	@ s32Ret, <variable>.s32StopSyntax
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.type	VfmwProc_TestStopChan, %function
VfmwProc_TestStopChan:
	.fnstart
.LFB1793:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #0]	@,* p_args
	b	VCTRL_StopChan	@
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	beq	.L727	@,
.L720:
	mvn	r0, #0	@ D.34968,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L727:
	movw	r5, #:lower16:.LANCHOR0	@ tmp165,
	movt	r5, #:upper16:.LANCHOR0	@ tmp165,
	ldr	r3, [r5, #28]	@ D.34970, s_pstVfmwChan
	cmp	r3, #0	@ D.34970,
	beq	.L720	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L720	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L720	@,
	bl	SM_Start	@
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r0, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r4, [r0, #16]	@ ChanID, <variable>.s32StopSyntax
	ldr	r3, [r5, #28]	@ prephitmp.3651, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L721	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	ip, [r5, #28]	@ D.34983, s_pstVfmwChan
	ldr	r0, .L728	@,
	cmp	ip, #0	@ D.34983,
	streq	ip, [r5, #296]	@ D.34983, PrioArray
	ldrne	r1, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r2, #:lower16:g_ChanCtx	@ tmp154,
	movwne	r2, #:lower16:g_ChanCtx	@ tmp158,
	movteq	r2, #:upper16:g_ChanCtx	@ tmp154,
	movtne	r2, #:upper16:g_ChanCtx	@ tmp158,
	strne	r1, [r5, #296]	@ <variable>.s32Priority, PrioArray
	ldrne	ip, [ip, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	ip, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5, #28]	@ prephitmp.3651, s_pstVfmwChan
.L721:
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L724	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L724:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.34968,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L729:
	.align	2
.L728:
	.word	.LANCHOR0+296
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.type	VfmwProc_TestStartChan, %function
VfmwProc_TestStartChan:
	.fnstart
.LFB1795:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #0]	@,* p_args
	b	VCTRL_StartChan	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r8, r0, asl #2	@ tmp262, ChanID,
	movw	r7, #:lower16:.LANCHOR0	@ tmp263,
	movt	r7, #:upper16:.LANCHOR0	@ tmp263,
	add	r4, r8, r7	@ tmp143, tmp262, tmp263
	mov	r5, r0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r3, [r4, #28]	@ D.35733, s_pstVfmwChan
	cmp	r3, #0	@ D.35733,
	mvneq	r0, #0	@ D.35736,
	beq	.L734	@,
	ldr	r9, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r4, #28]	@ tmp150, s_pstVfmwChan
	mov	r6, #0	@ tmp151,
	add	r0, r5, r5, asl #1	@, tmp163, ChanID, ChanID,
	add	r3, r7, #300	@ tmp160, tmp263,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp151, <variable>.s32CountNoDecparamFlag
	add	r0, r3, r0, asl #3	@,, tmp160, tmp163,
	ldr	ip, [r4, #28]	@ tmp157, s_pstVfmwChan
	str	r6, [ip, #684]	@ tmp151, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r5	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	fp, [r4, #28]	@ tmp171, s_pstVfmwChan
	mov	r0, r5	@, ChanID
	str	r6, [fp, #1412]	@ tmp151, <variable>.stSynExtraData.s32KeepSPSPPS
	mvn	fp, #0	@,
	bl	InitSyntaxCtx	@
	ldr	sl, [r4, #28]	@ tmp179, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, sl, #1024	@, tmp179,
	mvn	sl, #0	@,
	bl	__memzero	@
	ldr	r2, [r4, #28]	@ tmp185, s_pstVfmwChan
	mov	r3, #944	@ tmp186,
	mov	r0, #952	@ tmp194,
	movw	r1, #:lower16:211792	@ tmp216,
	movt	r1, #:upper16:211792	@ tmp216,
	strd	sl, [r2, r3]	@, tmp185, tmp186
	movw	r2, #:lower16:211784	@ tmp224,
	ldr	ip, [r4, #28]	@ tmp193, s_pstVfmwChan
	movt	r2, #:upper16:211784	@ tmp224,
	movw	r3, #:lower16:211788	@ tmp232,
	movt	r3, #:upper16:211788	@ tmp232,
	strd	sl, [ip, r0]	@, tmp193, tmp194
	ldr	r0, [r4, #28]	@ tmp201, s_pstVfmwChan
	str	r6, [r0, #1272]	@ tmp151, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	ip, [r4, #28]	@ tmp208, s_pstVfmwChan
	str	r6, [ip, #1620]	@ tmp151, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r4, #28]	@ tmp215, s_pstVfmwChan
	str	r6, [r0, r1]	@ tmp151, <variable>.s32FindStartCodeCnt
	ldr	ip, [r4, #28]	@ tmp223, s_pstVfmwChan
	str	r6, [ip, r2]	@ tmp151, <variable>.s32H264Score
	ldr	r1, [r4, #28]	@ tmp231, s_pstVfmwChan
	str	r6, [r1, r3]	@ tmp151, <variable>.s32Mpeg2Score
	ldr	r0, [r4, #28]	@ prephitmp.3703, s_pstVfmwChan
	ldr	r2, [r0, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r6, [r0, #1616]	@ tmp151, <variable>.stSynExtraData.s32DSDWaitFlag
	ldreq	r0, [r4, #28]	@ prephitmp.3703, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L736	@,
	mov	r0, r5	@, ChanID
	bl	FSP_ResetInstance	@
.L737:
	mov	r0, r5	@, ChanID
	movw	r4, #:lower16:.LANCHOR0	@ tmp247,
	bl	InitUsdPool	@
	mov	r0, r5	@, ChanID
	bl	SM_Reset	@
	ldr	r1, [r7, #196]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movt	r4, #:upper16:.LANCHOR0	@ tmp247,
	cmp	r1, #0	@ g_ResetCreateNewSave,
	bne	.L744	@,
.L738:
	cmp	r9, #0	@ ChanIsRun,
	bne	.L745	@,
	add	r7, r8, r7	@ tmp257, tmp262, tmp263
	ldr	r2, [r7, #28]	@ tmp259, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L746	@,
.L742:
	mov	r0, r5	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.35736,
.L734:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L744:
	ldr	ip, [r4, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	lr, #0	@ tmp249,
	str	lr, [sp, #4]	@ tmp249, data
	cmp	ip, lr	@ vfmw_save_str_file,
	addeq	r6, sp, #4	@ prephitmp.3705,,
	beq	.L740	@,
	add	r6, sp, #4	@ prephitmp.3705,,
	mov	r0, #512	@,
	mov	r1, r6	@, prephitmp.3705
	bl	VCTRL_SetDbgOption	@
	ldr	r0, [r4, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	r0, #0	@ vfmw_save_str_file,
	bne	.L738	@,
.L740:
	mov	r1, r6	@, prephitmp.3705
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L738	@
.L745:
	add	r7, r8, r7	@ tmp257, tmp262, tmp263
	mov	r0, r5	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r2, [r7, #28]	@ tmp259, s_pstVfmwChan
	ldr	r3, [r2, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L742	@,
.L746:
	mov	r0, r5	@, ChanID
	bl	DNR_StartChan	@
	b	.L742	@
.L736:
	mov	r0, r5	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L737	@
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.type	VfmwProc_TestResetChan, %function
VfmwProc_TestResetChan:
	.fnstart
.LFB1794:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #0]	@,* p_args
	b	VCTRL_ResetChan	@
	.fnend
	.size	VfmwProc_TestResetChan, .-VfmwProc_TestResetChan
	.align	2
	.type	VfmwProc_TestRestartChan, %function
VfmwProc_TestRestartChan:
	.fnstart
.LFB1796:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, [r0, #0]	@ dat.747,* p_args
	mov	r0, r4	@, dat.747
	bl	VCTRL_StopChan	@
	mov	r0, r4	@, dat.747
	bl	VCTRL_ResetChan	@
	mov	r0, r4	@, dat.747
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartChan	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp236,
	movt	r4, #:upper16:.LANCHOR0	@ tmp236,
	.pad #12
	sub	sp, sp, #12	@,,
	add	r5, r4, r0, asl #2	@, tmp144, tmp236, ChanID,
	mov	r6, r0	@ ChanID, ChanID
	mov	r7, r1	@ pOption, pOption
	ldr	r3, [r5, #28]	@ D.35668, s_pstVfmwChan
	cmp	r3, #0	@ D.35668,
	bne	.L762	@,
.L752:
	mvn	r0, #0	@ D.35671,
.L760:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L762:
	ldr	r2, [r1, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r2, #1	@ <variable>.s32KeepBS,
	bhi	.L752	@,
	ldr	sl, [r3, #8]	@ ChanIsRun, <variable>.s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, #28]	@ tmp152, s_pstVfmwChan
	mov	r8, #0	@ tmp153,
	add	r0, r6, r6, asl #1	@, tmp165, ChanID, ChanID,
	add	ip, r4, #300	@ tmp162, tmp236,
	mov	r1, #24	@,
	str	r8, [r2, #680]	@ tmp153, <variable>.s32CountNoDecparamFlag
	add	r0, ip, r0, asl #3	@,, tmp162, tmp165,
	ldr	r3, [r5, #28]	@ tmp159, s_pstVfmwChan
	str	r8, [r3, #684]	@ tmp153, <variable>.u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r6	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	ip, [r7, #4]	@ <variable>.s32KeepSPSPPS, <variable>.s32KeepSPSPPS
	ldr	r2, [r5, #28]	@ tmp173, s_pstVfmwChan
	mov	r0, r6	@, ChanID
	str	ip, [r2, #1412]	@ <variable>.s32KeepSPSPPS, <variable>.stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, #28]	@ temp.3805, s_pstVfmwChan
	add	r1, r3, #210944	@, temp.3805,
	ldr	r0, [r3, #880]	@, <variable>.eVidStd
	add	r1, r1, #896	@,,
	bl	ReleaseCurPic	@
	ldr	r2, [r5, #28]	@ tmp189, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r2, #1024	@, tmp189,
	bl	__memzero	@
	ldr	ip, [r5, #28]	@ tmp195, s_pstVfmwChan
	mov	r0, #944	@ tmp196,
	mvn	r3, #0	@,
	mvn	r2, #0	@ tmp197,
	mov	r1, #952	@ tmp204,
	strd	r2, [ip, r0]	@ tmp197, tmp195, tmp196
	ldr	r0, [r5, #28]	@ tmp203, s_pstVfmwChan
	strd	r2, [r0, r1]	@ tmp197, tmp203, tmp204
	ldr	ip, [r5, #28]	@ tmp211, s_pstVfmwChan
	str	r8, [ip, #1272]	@ tmp153, <variable>.stSynExtraData.s32NewPicSegDetector
	ldr	r1, [r5, #28]	@ tmp218, s_pstVfmwChan
	str	r8, [r1, #1620]	@ tmp153, <variable>.stSynExtraData.s32firstIdecodedflag
	ldr	r0, [r5, #28]	@ tmp225, s_pstVfmwChan
	ldr	r3, [r0, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L753	@,
	mov	r0, r6	@, ChanID
	bl	FSP_ResetInstance	@
.L754:
	mov	r0, r6	@, ChanID
	bl	InitUsdPool	@
	ldr	r1, [r7, #0]	@ <variable>.s32KeepBS, <variable>.s32KeepBS
	cmp	r1, #0	@ <variable>.s32KeepBS,
	beq	.L763	@,
.L755:
	ldr	lr, [r4, #196]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	movw	r4, #:lower16:.LANCHOR0	@ tmp228,
	movt	r4, #:upper16:.LANCHOR0	@ tmp228,
	cmp	lr, #0	@ g_ResetCreateNewSave,
	beq	.L756	@,
	ldr	r3, [r4, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	mov	r0, #0	@ tmp230,
	str	r0, [sp, #4]	@ tmp230, data
	cmp	r3, r0	@ vfmw_save_str_file,
	addeq	r5, sp, #4	@ prephitmp.3791,,
	beq	.L758	@,
	add	r5, sp, #4	@ prephitmp.3791,,
	mov	r0, #512	@,
	mov	r1, r5	@, prephitmp.3791
	bl	VCTRL_SetDbgOption	@
	ldr	ip, [r4, #248]	@ vfmw_save_str_file, vfmw_save_str_file
	cmp	ip, #0	@ vfmw_save_str_file,
	beq	.L758	@,
.L756:
	cmp	sl, #0	@ ChanIsRun,
	bne	.L764	@,
.L759:
	mov	r0, r6	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.35671,
	b	.L760	@
.L763:
	mov	r0, r6	@, ChanID
	bl	SM_Reset	@
	b	.L755	@
.L764:
	mov	r0, r6	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L759	@
.L753:
	mov	r0, r6	@, ChanID
	bl	FSP_EmptyInstance	@
	b	.L754	@
.L758:
	mov	r1, r5	@, prephitmp.3791
	mov	r0, #512	@,
	bl	VCTRL_SetDbgOption	@
	b	.L756	@
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
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	beq	.L773	@,
.L766:
	mvn	r0, #0	@ D.35002,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L773:
	movw	r5, #:lower16:.LANCHOR0	@ tmp175,
	movt	r5, #:upper16:.LANCHOR0	@ tmp175,
	ldr	r3, [r5, #28]	@ D.35004, s_pstVfmwChan
	cmp	r3, #0	@ D.35004,
	beq	.L766	@,
	ldr	r6, [r3, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L766	@,
	ldr	r3, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #19	@ <variable>.eVidStd,
	beq	.L766	@,
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5, #28]	@ temp.3840, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldmia	r7, {r0, r1, r2, r3}	@ pChanMemVdh,,,,
	ldr	ip, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	add	ip, ip, #168	@ tmp147, s_pstVfmwChan,
	stmia	ip, {r0, r1, r2, r3}	@ tmp147,,,,
	ldr	ip, [r5, #28]	@ temp.3842, s_pstVfmwChan
	ldr	r2, [ip, #180]	@, <variable>.stChanMem_vdh.Length
	ldr	r1, [ip, #172]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r0, [ip, #176]	@, <variable>.stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r4	@, ChanID
	bl	SM_Start	@
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r6, [r1, #8]	@ <variable>.s32IsOpen, <variable>.s32IsRun
	ldr	r0, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r4, [r0, #16]	@ ChanID, <variable>.s32StopSyntax
	ldr	r3, [r5, #28]	@ prephitmp.3829, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	cmp	r2, #0	@ <variable>.s32Priority,
	bne	.L767	@,
	str	r6, [r3, #12]	@ <variable>.s32IsOpen, <variable>.s32Priority
	ldr	lr, [r5, #28]	@ D.35021, s_pstVfmwChan
	ldr	r0, .L774	@,
	cmp	lr, #0	@ D.35021,
	streq	lr, [r5, #324]	@ D.35021, PrioArray
	ldrne	r1, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movweq	r2, #:lower16:g_ChanCtx	@ tmp164,
	movwne	r2, #:lower16:g_ChanCtx	@ tmp168,
	movteq	r2, #:upper16:g_ChanCtx	@ tmp164,
	movtne	r2, #:upper16:g_ChanCtx	@ tmp168,
	strne	r1, [r5, #324]	@ <variable>.s32Priority, PrioArray
	ldrne	lr, [lr, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	lr, [r2, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5, #28]	@ prephitmp.3829, s_pstVfmwChan
.L767:
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L770	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L770:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.35002,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L775:
	.align	2
.L774:
	.word	.LANCHOR0+324
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
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
	beq	.L789	@,
.L777:
	ldr	r0, [r4, #28]	@ <variable>.stChanMem_vdh.Length, <variable>.stChanMem_vdh.Length
	cmp	r0, #0	@ <variable>.stChanMem_vdh.Length,
	bne	.L790	@,
.L778:
	ldr	r2, [r4, #44]	@ D.34182, <variable>.stChanMem_scd.Length
	cmp	r2, #0	@ D.34182,
	bne	.L791	@,
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	beq	.L792	@,
.L780:
	ldr	lr, [r4, #44]	@ <variable>.stChanMem_scd.Length, <variable>.stChanMem_scd.Length
	cmp	lr, #0	@ <variable>.stChanMem_scd.Length,
	bne	.L793	@,
.L781:
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	ldr	r2, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #72]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_ctx,
	beq	.L794	@,
.L782:
	ldr	r0, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L783:
	ldr	r0, [r4, #56]	@, <variable>.stChanMem_ctx.PhyAddr
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	ldr	r2, [r4, #60]	@, <variable>.stChanMem_ctx.Length
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	cmp	r3, #1	@ <variable>.s32SelfAllocChanMem_pmv,
	beq	.L784	@,
.L788:
	ldr	r0, [r4, #100]	@ prephitmp.3863, <variable>.stChanMem_pmv.PhyAddr
.L785:
	ldr	r2, [r4, #104]	@, <variable>.stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L793:
	ldrsb	r3, [r4, #32]	@ <variable>.stChanMem_scd.IsCached, <variable>.stChanMem_scd.IsCached
	cmp	r3, #1	@ <variable>.stChanMem_scd.IsCached,
	bne	.L781	@,
	ldr	r0, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, <variable>.stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	movw	r2, #:lower16:.LANCHOR0	@ tmp163,
	movt	r2, #:upper16:.LANCHOR0	@ tmp163,
	add	r1, r2, r5, asl #2	@, tmp166, tmp163, ChanID,
	str	r0, [r4, #36]	@ D.34200, <variable>.stChanMem_scd.VirAddr
	str	r0, [r1, #184]	@ D.34200, g_scd_vir
	mov	r0, #0	@ tmp168,
	strb	r0, [r4, #32]	@ tmp168, <variable>.stChanMem_scd.IsCached
	b	.L781	@
.L790:
	ldrsb	r1, [r4, #16]	@ <variable>.stChanMem_vdh.IsCached, <variable>.stChanMem_vdh.IsCached
	cmp	r1, #1	@ <variable>.stChanMem_vdh.IsCached,
	bne	.L778	@,
	ldr	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r0, [r4, #24]	@, <variable>.stChanMem_vdh.PhyAddr
	ldr	r1, [r4, #28]	@, <variable>.stChanMem_vdh.Length
	bl	KernelMmap	@
	mov	r2, #0	@ tmp152,
	strb	r2, [r4, #16]	@ tmp152, <variable>.stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, <variable>.stChanMem_vdh.VirAddr
	b	.L778	@
.L784:
	ldr	r0, [r4, #100]	@ D.34216, <variable>.stChanMem_pmv.PhyAddr
	cmp	r0, #0	@ D.34216,
	beq	.L785	@,
	ldr	r1, [r4, #96]	@, <variable>.stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L788	@
.L794:
	ldr	r0, [r4, #56]	@ D.34208, <variable>.stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.34208,
	beq	.L782	@,
	ldr	r1, [r4, #52]	@, <variable>.stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L783	@
.L791:
	ldr	r0, [r4, #40]	@, <variable>.stChanMem_scd.PhyAddr
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_DelMemRecord	@
	ldr	ip, [r4, #68]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	cmp	ip, #1	@ <variable>.s32SelfAllocChanMem_scd,
	bne	.L780	@,
.L792:
	ldr	r0, [r4, #40]	@ temp.3878, <variable>.stChanMem_scd.PhyAddr
	cmp	r0, #0	@ temp.3878,
	beq	.L780	@,
	ldr	r1, [r4, #36]	@, <variable>.stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L781	@
.L789:
	ldr	r0, [r1, #24]	@ D.34168, <variable>.stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.34168,
	beq	.L777	@,
	ldr	r1, [r1, #20]	@, <variable>.stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L778	@
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
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
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp205,
	movt	r4, #:upper16:.LANCHOR0	@ tmp205,
	mov	r6, r0	@ ChanID, ChanID
	.pad #140
	sub	sp, sp, #140	@,,
	add	r0, r4, #328	@, tmp205,
	bl	OSAL_SpinLockIRQ	@
	cmp	r6, #0	@ ChanID,
	bne	.L808	@,
	ldr	r5, [r4, #28]	@ D.34928, s_pstVfmwChan
	cmp	r5, #0	@ D.34928,
	beq	.L808	@,
	ldr	r3, [r5, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r3, #1	@ <variable>.s32IsOpen,
	bne	.L808	@,
	movw	ip, #:lower16:g_FrameRate	@ tmp152,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp154,
	movt	ip, #:upper16:g_FrameRate	@ tmp152,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp154,
	mov	r1, #30	@ tmp153,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	str	r1, [r2, #0]	@ tmp153, g_LastFrameRate
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	str	r1, [ip, #0]	@ tmp153, g_FrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r6	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r6, r0, #0	@ ret,
	bne	.L809	@,
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, ret
	bl	VCTRL_ResetChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	movw	r6, #:lower16:s_DnrChan	@ tmp162,
	bl	OSAL_SpinLockIRQ	@
	ldr	r8, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	r6, #:upper16:s_DnrChan	@ tmp162,
	movw	r7, #:lower16:76692	@ tmp163,
	movt	r7, #:upper16:76692	@ tmp163,
	ldr	r0, [r8, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	str	r0, [r6, r7]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.s32DnrEnable
	ldr	r3, [r5, #880]	@ D.34941, <variable>.eVidStd
	cmp	r3, #4	@ D.34941,
	beq	.L803	@,
	sub	r9, r3, #10	@ tmp167, D.34941,
	cmp	r9, #2	@ tmp167,
	bhi	.L804	@,
	ldr	sl, [r4, #268]	@ g_VdmCharacter, g_VdmCharacter
	tst	sl, #1	@ g_VdmCharacter,
	beq	.L803	@,
.L805:
	mov	r0, #0	@,
	add	r6, sp, #28	@ tmp180,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r4, #28]	@ temp.3939, s_pstVfmwChan
	add	r0, sp, #60	@,,
	add	lr, sp, #108	@,,
	add	fp, r3, #184	@, temp.3939,
	add	r5, r3, #104	@, temp.3939,
	ldr	r7, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	movw	r1, #:lower16:211808	@ tmp178,
	str	fp, [sp, #16]	@, %sfp
	movt	r1, #:upper16:211808	@ tmp178,
	str	r5, [sp, #20]	@, %sfp
	add	r5, sp, #120	@,,
	str	r7, [sp, #100]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r2, r3, #152	@ tmp181, temp.3939,
	str	r0, [sp, #12]	@, %sfp
	add	r8, r3, #200	@ tmp183, temp.3939,
	ldr	r7, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	r9, r3, #168	@ tmp185, temp.3939,
	str	lr, [sp, #8]	@, %sfp
	add	ip, r3, #210944	@ tmp192, temp.3939,
	str	r5, [sp, #4]	@, %sfp
	add	sl, sp, #76	@ tmp182,,
	str	r7, [sp, #92]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	add	fp, sp, #44	@ tmp184,,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	add	ip, ip, #868	@ tmp192, tmp192,
	movw	lr, #:lower16:s_pFspInst	@ tmp195,
	movt	lr, #:upper16:s_pFspInst	@ tmp195,
	mov	r5, #0	@ tmp194,
	movw	r7, #:lower16:s_SmIIS	@ tmp193,
	str	r0, [sp, #96]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	movt	r7, #:upper16:s_SmIIS	@ tmp193,
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #104]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp181,,,,
	stmia	r6, {r0, r1, r2, r3}	@ tmp180,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp183,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp182,,,,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp185,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp184,,,,
	ldr	r8, [sp, #16]	@, %sfp
	ldmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r8, [sp, #12]	@, %sfp
	stmia	r8, {r0, r1, r2, r3}	@,,,,
	ldr	r3, [sp, #20]	@, %sfp
	ldr	r8, [sp, #8]	@, %sfp
	ldmia	r3, {r0, r1, r2}	@,,,
	stmia	r8, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp192,,,,
	str	r5, [lr, #0]	@ tmp194, s_pFspInst
	ldr	lr, [sp, #4]	@, %sfp
	str	r5, [r7, #56]	@ tmp194, s_SmIIS.pSmInstArray
	str	r5, [r4, #28]	@ tmp194, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r5	@, tmp194
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r5	@, tmp194
	bl	VDMDRV_ResetVDH	@
	mov	r0, r5	@, tmp194
	bl	DNR_CloseChan	@
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L810	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, tmp194
	mov	r1, r6	@, tmp180
	bl	VCTRL_FreeChanResource	@
	mov	r0, r5	@ D.34926, tmp194
.L799:
	add	sp, sp, #140	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L804:
	cmp	r3, #14	@ D.34941,
	bne	.L805	@,
.L803:
	ldr	r3, [r4, #4]	@ D.34948, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.34948,
	beq	.L805	@,
	add	fp, r5, #210944	@, D.34928,
	add	r0, fp, #896	@,,
	blx	r3	@ D.34948
	b	.L805	@
.L808:
	bl	VCTRL_EnableAllInt	@
	add	r0, r4, #328	@, tmp205,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.34926,
	b	.L799	@
.L809:
	movw	r0, #:lower16:g_SpinLockIrq_Destroy	@,
	movt	r0, #:upper16:g_SpinLockIrq_Destroy	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	r0, r4, #328	@, tmp205,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.34926,
	b	.L799	@
.L811:
	.align	2
.L810:
	.word	.LANCHOR0+328
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
	str	r2, [r3, #292]	@ tmp141, g_DSPState
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
.LFB1696:
	@ args = 0, pretend = 0, frame = 456
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #540
	sub	sp, sp, #540	@,,
	add	r7, sp, #504	@ tmp535,,
	mov	r6, r0	@ eCapLevel, eCapLevel
	mov	r5, r1	@ pChanOption, pChanOption
	add	r0, sp, #264	@,,
	mov	r1, #64	@,
	mov	sl, r2	@ flag, flag
	mov	r8, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, r7	@, tmp535
	mov	r1, #16	@,
	bl	__memzero	@
	rsbs	r3, sl, #1	@ tmp194, flag
	movcc	r3, #0	@ tmp194
	cmp	r6, #25	@ eCapLevel,
	movw	r4, #:lower16:.LANCHOR0	@ tmp529,
	movt	r4, #:upper16:.LANCHOR0	@ tmp529,
	moveq	r3, #0	@, tmp194,
	cmp	r3, #0	@ tmp194,
	str	r5, [r4, #336]	@ pChanOption, pOption
	bne	.L815	@,
	ldr	r3, [r5, #4]	@ D.38339, <variable>.Purpose
	cmp	r3, #2	@ D.38339,
	bls	.L888	@,
.L815:
	mvn	r0, #0	@ ChanID,
.L824:
	add	sp, sp, #540	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L888:
	beq	.L889	@,
	cmp	r3, #1	@ D.38339,
	beq	.L890	@,
.L817:
	ldr	r9, [r5, #136]	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, sl	@, flag
	mov	r0, r6	@, eCapLevel
	mov	r1, r5	@, pChanOption
	cmp	r9, #1	@ <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	movne	r9, #0	@ tmp206,
	strne	r9, [r5, #136]	@ tmp206, <variable>.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r9, sp, #488	@ tmp207,,
	mov	r2, r9	@, tmp207
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	sl, r0, #0	@ D.34841,
	bne	.L815	@,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp207,,,,
	ldr	ip, [r5, #8]	@ D.41600, <variable>.MemAllocMode
	add	fp, sp, #472	@ tmp534,,
	cmp	ip, #1	@ D.41600,
	stmia	fp, {r0, r1, r2, r3}	@ tmp534,,,,
	beq	.L891	@,
	cmp	ip, #2	@ D.41600,
	beq	.L892	@,
	cmp	ip, #3	@ D.41600,
	bne	.L815	@,
	ldmia	fp, {r0, r1, r2, r3}	@ tmp534,,,,
	add	r9, sp, #440	@ tmp531,,
	add	sl, sp, #456	@ tmp533,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp531,,,,
	ldr	lr, [sp, #448]	@, DetailMemSize.ChanCtxDetailMem
	mov	r0, sl	@, tmp533
	mov	r1, #16	@,
	str	lr, [sp, #132]	@, %sfp
	bl	__memzero	@
	ldr	ip, [r5, #108]	@ <variable>.MemDetail.ChanMemCtx.VirAddr, <variable>.MemDetail.ChanMemCtx.VirAddr
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemCtx.VirAddr,
	beq	.L827	@,
	ldr	r0, [r5, #112]	@ <variable>.MemDetail.ChanMemCtx.Length, <variable>.MemDetail.ChanMemCtx.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemCtx.Length,
	bne	.L828	@,
.L827:
	ldr	r2, [sp, #132]	@, %sfp
	movw	r0, #:lower16:.LC10	@,
	mov	r1, #0	@,
	movt	r0, #:upper16:.LC10	@,
	mov	r3, sl	@, tmp533
	mov	ip, #1	@,
	str	ip, [sp, #0]	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L815	@,
	ldr	r1, [sp, #460]	@, MemRecord.VirAddr
	ldr	r2, [sp, #468]	@, MemRecord.Length
	ldr	r0, [sp, #464]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #464]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r3, [sp, #460]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r1, #1	@,
	ldr	r2, [sp, #468]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #296]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	str	r3, [sp, #300]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	str	r2, [sp, #304]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	str	r1, [sp, #512]	@, ChanMemFlag.SelfAllocChanMem_ctx
.L829:
	ldmia	fp, {r0, r1, r2, r3}	@ tmp534,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp533,,,,
	ldr	lr, [sp, #456]	@, DetailMemSize.VdhDetailMem
	mov	r0, r9	@, tmp531
	mov	r1, #16	@,
	str	lr, [sp, #132]	@, %sfp
	bl	__memzero	@
	ldr	r2, [r5, #76]	@ <variable>.MemDetail.ChanMemVdh.VirAddr, <variable>.MemDetail.ChanMemVdh.VirAddr
	cmp	r2, #0	@ <variable>.MemDetail.ChanMemVdh.VirAddr,
	beq	.L861	@,
	ldr	r0, [r5, #80]	@ <variable>.MemDetail.ChanMemVdh.Length, <variable>.MemDetail.ChanMemVdh.Length
	cmp	r0, #0	@ <variable>.MemDetail.ChanMemVdh.Length,
	bne	.L830	@,
.L861:
	mov	ip, #0	@ tmp269,
	ldr	r2, [sp, #132]	@, %sfp
	mov	r1, ip	@, tmp269
	movw	r0, #:lower16:.LC11	@,
	mov	r3, r9	@, tmp531
	movt	r0, #:upper16:.LC11	@,
	str	ip, [sp, #0]	@ tmp269,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L878	@,
	ldr	r1, [sp, #444]	@, MemRecord.VirAddr
	ldr	r2, [sp, #452]	@, MemRecord.Length
	ldr	r0, [sp, #448]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #448]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #444]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp274,
	ldr	r1, [sp, #452]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #264]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r2, [sp, #268]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r1, [sp, #272]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	r3, [sp, #504]	@ tmp274, ChanMemFlag.SelfAllocChanMem_vdh
.L832:
	ldmia	fp, {r0, r1, r2, r3}	@ tmp534,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp531,,,,
	ldr	ip, [sp, #444]	@, DetailMemSize.ScdDetailMem
	mov	r0, sl	@, tmp533
	mov	r1, #16	@,
	str	ip, [sp, #136]	@, %sfp
	bl	__memzero	@
	ldr	r3, [r5, #92]	@ <variable>.MemDetail.ChanMemScd.VirAddr, <variable>.MemDetail.ChanMemScd.VirAddr
	cmp	r3, #0	@ <variable>.MemDetail.ChanMemScd.VirAddr,
	beq	.L863	@,
	ldr	ip, [r5, #96]	@ <variable>.MemDetail.ChanMemScd.Length, <variable>.MemDetail.ChanMemScd.Length
	cmp	ip, #0	@ <variable>.MemDetail.ChanMemScd.Length,
	bne	.L834	@,
.L863:
	ldr	lr, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	lr, #2	@ <variable>.Purpose,
	beq	.L835	@,
	mov	ip, #0	@ tmp284,
	ldr	r2, [sp, #136]	@, %sfp
	mov	r1, ip	@, tmp284
	movw	r0, #:lower16:.LC12	@,
	mov	r3, sl	@, tmp533
	movt	r0, #:upper16:.LC12	@,
	str	ip, [sp, #0]	@ tmp284,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L841	@,
	ldr	r1, [sp, #460]	@, MemRecord.VirAddr
	ldr	r2, [sp, #468]	@, MemRecord.Length
	ldr	r0, [sp, #464]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r0, [sp, #464]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #460]	@ MemRecord.VirAddr, MemRecord.VirAddr
	mov	r3, #1	@ tmp290,
	ldr	r1, [sp, #468]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #280]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r2, [sp, #284]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r1, [sp, #288]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	r3, [sp, #508]	@ tmp290, ChanMemFlag.SelfAllocChanMem_scd
.L838:
	ldmia	fp, {r0, r1, r2, r3}	@ tmp534,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp533,,,,
	mov	r1, #16	@,
	mov	r0, r9	@, tmp531
	ldr	fp, [sp, #468]	@ DetailMemSize$PmvDetailMem, DetailMemSize.PmvDetailMem
	bl	__memzero	@
	ldr	r1, [r5, #124]	@ <variable>.MemDetail.ChanMemPmv.VirAddr, <variable>.MemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemPmv.VirAddr,
	beq	.L865	@,
	ldr	r1, [r5, #128]	@ <variable>.MemDetail.ChanMemPmv.Length, <variable>.MemDetail.ChanMemPmv.Length
	cmp	r1, #0	@ <variable>.MemDetail.ChanMemPmv.Length,
	bne	.L843	@,
.L865:
	ldr	r2, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r2, #2	@ <variable>.Purpose,
	beq	.L844	@,
	mov	ip, #0	@ tmp304,
	mov	r2, fp	@, DetailMemSize$PmvDetailMem
	mov	r1, ip	@, tmp304
	mov	r3, r9	@, tmp531
	movw	r0, #:lower16:.LC13	@,
	movt	r0, #:upper16:.LC13	@,
	str	ip, [sp, #0]	@ tmp304,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L850	@,
	ldr	r0, [sp, #448]	@, MemRecord.PhyAddr
	mov	sl, #1	@ tmp311,
	ldr	r1, [sp, #444]	@, MemRecord.VirAddr
	ldr	r2, [sp, #452]	@, MemRecord.Length
	bl	MEM_AddMemRecord	@
	add	r0, sp, #444
	ldmia	r0, {r0, r3, r9}	@ phole ldm
	str	r3, [sp, #312]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	r0, [sp, #316]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	str	r9, [sp, #320]	@ MemRecord.Length, ChanMemDetail.ChanMemPmv.Length
	str	sl, [sp, #516]	@ tmp311, ChanMemFlag.SelfAllocChanMem_pmv
.L821:
	movw	sl, #:lower16:.LANCHOR0	@ tmp523,
	movt	sl, #:upper16:.LANCHOR0	@ tmp523,
	add	r0, sl, #328	@, tmp523,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r9, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r9, #0	@ s_pstVfmwChan,
	beq	.L867	@,
	bl	VCTRL_EnableAllInt	@
	add	r0, sl, #328	@, tmp523,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ ChanID,
	b	.L824	@
.L889:
	ldr	r0, [r5, #64]	@ <variable>.s32SlotWidth, <variable>.s32SlotWidth
	cmp	r0, #0	@ <variable>.s32SlotWidth,
	beq	.L815	@,
	ldr	r1, [r5, #68]	@ <variable>.s32SlotHeight, <variable>.s32SlotHeight
	cmp	r1, #0	@ <variable>.s32SlotHeight,
	beq	.L815	@,
	b	.L817	@
.L890:
	ldr	r2, [r5, #32]	@ <variable>.s32MaxRefFrameNum, <variable>.s32MaxRefFrameNum
	cmp	r2, #0	@ <variable>.s32MaxRefFrameNum,
	blt	.L815	@,
	ldr	ip, [r5, #12]	@ <variable>.s32MaxWidth, <variable>.s32MaxWidth
	cmp	ip, #31	@ <variable>.s32MaxWidth,
	ble	.L815	@,
	ldr	lr, [r5, #16]	@ <variable>.s32MaxHeight, <variable>.s32MaxHeight
	cmp	lr, #31	@ <variable>.s32MaxHeight,
	ble	.L815	@,
	ldr	r3, [r5, #56]	@ <variable>.s32SCDBufSize, <variable>.s32SCDBufSize
	cmp	r3, #262144	@ <variable>.s32SCDBufSize,
	blt	.L815	@,
	ldr	r0, [r5, #44]	@ <variable>.s32SupportH264, <variable>.s32SupportH264
	cmp	r0, #1	@ <variable>.s32SupportH264,
	bne	.L817	@,
	ldr	r1, [r5, #20]	@ <variable>.s32MaxSliceNum, <variable>.s32MaxSliceNum
	cmp	r1, #0	@ <variable>.s32MaxSliceNum,
	ble	.L815	@,
	ldr	r2, [r5, #24]	@ <variable>.s32MaxSpsNum, <variable>.s32MaxSpsNum
	cmp	r2, #0	@ <variable>.s32MaxSpsNum,
	ble	.L815	@,
	ldr	ip, [r5, #28]	@ <variable>.s32MaxPpsNum, <variable>.s32MaxPpsNum
	cmp	ip, #0	@ <variable>.s32MaxPpsNum,
	bgt	.L817	@,
	b	.L815	@
.L892:
	ldr	fp, [sp, #480]	@ DetailMemSize$ChanCtxDetailMem, DetailMemSize.ChanCtxDetailMem
	add	r9, sp, #440	@ tmp228,,
	ldr	r3, [sp, #472]	@, DetailMemSize.VdhDetailMem
	mov	r1, #16	@,
	ldr	r2, [sp, #476]	@, DetailMemSize.ScdDetailMem
	mov	r0, r9	@, tmp228
	str	r3, [sp, #136]	@, %sfp
	str	r2, [sp, #132]	@, %sfp
	bl	__memzero	@
	mov	r1, sl	@, D.34841
	mov	r2, fp	@, DetailMemSize$ChanCtxDetailMem
	movw	r0, #:lower16:.LC10	@,
	mov	r3, r9	@, tmp228
	movt	r0, #:upper16:.LC10	@,
	mov	sl, #1	@ tmp231,
	str	sl, [sp, #0]	@ tmp231,
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.41657,
	bne	.L815	@,
	ldr	r1, [sp, #444]	@, MemRecord.VirAddr
	ldr	r2, [sp, #452]	@, MemRecord.Length
	ldr	r0, [sp, #448]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	ip, [sp, #448]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	mov	r1, fp	@, D.41657
	ldr	r2, [sp, #136]	@, %sfp
	movw	r0, #:lower16:.LC11	@,
	mov	r3, r9	@, tmp228
	str	ip, [sp, #296]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	movt	r0, #:upper16:.LC11	@,
	ldr	ip, [sp, #444]	@ MemRecord.VirAddr, MemRecord.VirAddr
	str	fp, [sp, #0]	@ D.41657,
	str	sl, [sp, #512]	@ tmp231, ChanMemFlag.SelfAllocChanMem_ctx
	str	ip, [sp, #300]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	ip, [sp, #452]	@ MemRecord.Length, MemRecord.Length
	str	ip, [sp, #304]	@ MemRecord.Length, ChanMemDetail.ChanMemCtx.Length
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.41651,
	bne	.L874	@,
	ldr	r1, [sp, #444]	@, MemRecord.VirAddr
	ldr	r2, [sp, #452]	@, MemRecord.Length
	ldr	r0, [sp, #448]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	ldr	r2, [sp, #448]	@ temp.4079, MemRecord.PhyAddr
	ldr	r3, [sp, #444]	@ temp.4080, MemRecord.VirAddr
	cmp	r1, #2	@ <variable>.Purpose,
	ldr	r0, [sp, #452]	@ MemRecord.Length, MemRecord.Length
	str	r2, [sp, #264]	@ temp.4079, ChanMemDetail.ChanMemVdh.PhyAddr
	str	r3, [sp, #268]	@ temp.4080, ChanMemDetail.ChanMemVdh.VirAddr
	str	r0, [sp, #272]	@ MemRecord.Length, ChanMemDetail.ChanMemVdh.Length
	str	sl, [sp, #504]	@ tmp231, ChanMemFlag.SelfAllocChanMem_vdh
	beq	.L825	@,
	mov	r1, fp	@, D.41651
	ldr	r2, [sp, #132]	@, %sfp
	mov	r3, r9	@, tmp228
	movw	r0, #:lower16:.LC12	@,
	movt	r0, #:upper16:.LC12	@,
	str	fp, [sp, #0]	@ D.41651,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L893	@,
	ldr	r2, [sp, #452]	@, MemRecord.Length
	ldr	r0, [sp, #448]	@, MemRecord.PhyAddr
	ldr	r1, [sp, #444]	@, MemRecord.VirAddr
	bl	MEM_AddMemRecord	@
	add	r2, sp, #444
	ldmia	r2, {r2, r3, r9}	@ phole ldm
	str	r3, [sp, #280]	@ MemRecord.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	r2, [sp, #284]	@ MemRecord.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	str	r9, [sp, #288]	@ MemRecord.Length, ChanMemDetail.ChanMemScd.Length
	str	sl, [sp, #508]	@ tmp231, ChanMemFlag.SelfAllocChanMem_scd
	b	.L821	@
.L841:
	ldr	lr, [sp, #512]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	lr, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L842	@,
	ldr	r0, [sp, #296]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #300]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #296
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L842:
	ldr	r3, [sp, #504]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	r3, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L815	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
.L875:
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mvn	r0, #0	@ ChanID,
	b	.L824	@
.L893:
	ldr	r0, [sp, #296]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #300]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #296
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	b	.L875	@
.L825:
	str	r2, [sp, #280]	@ temp.4079, ChanMemDetail.ChanMemScd.PhyAddr
	str	r3, [sp, #284]	@ temp.4080, ChanMemDetail.ChanMemScd.VirAddr
	str	fp, [sp, #288]	@ D.41651, ChanMemDetail.ChanMemScd.Length
	b	.L821	@
.L878:
	ldr	r0, [sp, #512]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L815	@,
.L874:
	ldr	r0, [sp, #296]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #300]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #296
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mvn	r0, #0	@ ChanID,
	b	.L824	@
.L891:
	add	sl, r5, #72	@ tmp211, pChanOption,
	add	r1, sp, #264	@,,
	add	r0, r5, #88	@, pChanOption,
	str	r1, [sp, #92]	@, %sfp
	str	r0, [sp, #132]	@, %sfp
	add	fp, sp, #280	@,,
	ldmia	sl, {r0, r1, r2, r3}	@ tmp211,,,,
	ldr	r9, [sp, #480]	@, DetailMemSize.ChanCtxDetailMem
	str	fp, [sp, #124]	@, %sfp
	add	ip, sp, #424	@ tmp210,,
	ldr	fp, [sp, #476]	@, DetailMemSize.ScdDetailMem
	add	lr, r5, #104	@, pChanOption,
	str	r9, [sp, #148]	@, %sfp
	add	sl, sp, #408	@ tmp214,,
	str	lr, [sp, #136]	@, %sfp
	add	r9, sp, #392	@ tmp218,,
	str	fp, [sp, #144]	@, %sfp
	add	fp, sp, #296	@ tmp220,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp210,,,,
	ldr	r3, [sp, #472]	@, DetailMemSize.VdhDetailMem
	ldr	lr, [sp, #92]	@, %sfp
	str	r3, [sp, #140]	@, %sfp
	ldmia	ip, {r0, r1, r2, r3}	@ tmp210,,,,
	ldr	ip, [sp, #132]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	ldmia	ip, {r0, r1, r2, r3}	@,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp214,,,,
	ldr	lr, [sp, #124]	@, %sfp
	ldr	ip, [sp, #136]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	ldmia	ip, {r0, r1, r2, r3}	@,,,,
	stmia	r9, {r0, r1, r2, r3}	@ tmp218,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp220,,,,
	ldr	lr, [sp, #300]	@ ChanMemDetail.ChanMemCtx.VirAddr, ChanMemDetail.ChanMemCtx.VirAddr
	cmp	lr, #0	@ ChanMemDetail.ChanMemCtx.VirAddr,
	beq	.L815	@,
	ldr	ip, [sp, #304]	@ ChanMemDetail.ChanMemCtx.Length, ChanMemDetail.ChanMemCtx.Length
	ldr	r2, [sp, #148]	@, %sfp
	cmp	r2, ip	@, ChanMemDetail.ChanMemCtx.Length
	bgt	.L815	@,
	ldr	r3, [sp, #284]	@ ChanMemDetail.ChanMemScd.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	cmp	r3, #0	@ ChanMemDetail.ChanMemScd.VirAddr,
	beq	.L819	@,
	ldr	r0, [sp, #288]	@ ChanMemDetail.ChanMemScd.Length, ChanMemDetail.ChanMemScd.Length
	ldr	lr, [sp, #144]	@, %sfp
	cmp	lr, r0	@, ChanMemDetail.ChanMemScd.Length
	ble	.L820	@,
.L819:
	ldr	r1, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r1, #1	@ <variable>.Purpose,
	beq	.L815	@,
.L820:
	ldr	r1, [sp, #268]	@ D.41616, ChanMemDetail.ChanMemVdh.VirAddr
	cmp	r1, #0	@ D.41616,
	beq	.L815	@,
	ldr	r2, [sp, #272]	@ D.41615, ChanMemDetail.ChanMemVdh.Length
	ldr	ip, [sp, #140]	@, %sfp
	cmp	ip, r2	@, D.41615
	bgt	.L815	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #296
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	ldr	r9, [r5, #4]	@ <variable>.Purpose, <variable>.Purpose
	cmp	r9, #2	@ <variable>.Purpose,
	beq	.L821	@,
	add	r0, sp, #280
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_AddMemRecord	@
	b	.L821	@
.L828:
	add	r3, r5, #104	@ tmp263, pChanOption,
	add	r2, sp, #376	@,,
	add	r1, sp, #296	@,,
	str	r2, [sp, #116]	@, %sfp
	str	r1, [sp, #88]	@, %sfp
	ldmia	r3, {r0, r1, r2, r3}	@ tmp263,,,,
	ldr	lr, [sp, #116]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	ldr	ip, [sp, #88]	@, %sfp
	ldr	lr, [sp, #132]	@, %sfp
	stmia	ip, {r0, r1, r2, r3}	@,,,,
	ldr	r2, [sp, #304]	@ D.41672, ChanMemDetail.ChanMemCtx.Length
	cmp	r2, lr	@ D.41672,
	blt	.L815	@,
	ldr	r0, [sp, #296]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #300]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L829	@
.L835:
	ldr	ip, [sp, #264]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r3, #0	@ tmp293,
	ldr	lr, [sp, #268]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r3, [sp, #288]	@ tmp293, ChanMemDetail.ChanMemScd.Length
	str	ip, [sp, #280]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemScd.PhyAddr
	str	lr, [sp, #284]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemScd.VirAddr
	b	.L838	@
.L843:
	add	r3, r5, #120	@ tmp316, pChanOption,
	ldr	r9, [r5, #4]	@ temp.4146, <variable>.Purpose
	add	sl, sp, #328	@ tmp315,,
	add	ip, sp, #312	@ tmp317,,
	ldmia	r3, {r0, r1, r2, r3}	@ tmp316,,,,
	cmp	r9, #2	@ temp.4146,
	stmia	sl, {r0, r1, r2, r3}	@ tmp315,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp317,,,,
	beq	.L821	@,
	ldr	r1, [sp, #316]	@ D.41761, ChanMemDetail.ChanMemPmv.VirAddr
	cmp	r1, #0	@ D.41761,
	beq	.L848	@,
	ldr	r2, [sp, #320]	@ prephitmp.4147, ChanMemDetail.ChanMemPmv.Length
	cmp	fp, r2	@ DetailMemSize$PmvDetailMem, prephitmp.4147
	ble	.L849	@,
.L848:
	cmp	r9, #1	@ temp.4146,
	ldrne	r2, [sp, #320]	@ prephitmp.4147, ChanMemDetail.ChanMemPmv.Length
	beq	.L850	@,
.L849:
	ldr	r0, [sp, #312]	@, ChanMemDetail.ChanMemPmv.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L821	@
.L834:
	add	r2, sp, #344	@,,
	str	r2, [sp, #108]	@, %sfp
	ldr	lr, [r5, #4]	@, <variable>.Purpose
	add	r3, r5, #88	@ tmp295, pChanOption,
	add	r1, sp, #280	@,,
	str	r1, [sp, #80]	@, %sfp
	ldr	ip, [sp, #108]	@, %sfp
	cmp	lr, #2	@,
	str	lr, [sp, #132]	@, %sfp
	ldmia	r3, {r0, r1, r2, r3}	@ tmp295,,,,
	stmia	ip, {r0, r1, r2, r3}	@,,,,
	ldr	lr, [sp, #80]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	beq	.L838	@,
	ldr	r1, [sp, #284]	@ D.41725, ChanMemDetail.ChanMemScd.VirAddr
	cmp	r1, #0	@ D.41725,
	beq	.L839	@,
	ldr	r2, [sp, #288]	@ prephitmp.4010, ChanMemDetail.ChanMemScd.Length
	ldr	r0, [sp, #136]	@, %sfp
	cmp	r2, r0	@ prephitmp.4010,
	bge	.L840	@,
.L839:
	ldr	ip, [sp, #132]	@, %sfp
	cmp	ip, #1	@,
	ldrne	r2, [sp, #288]	@ prephitmp.4010, ChanMemDetail.ChanMemScd.Length
	beq	.L841	@,
.L840:
	ldr	r0, [sp, #280]	@, ChanMemDetail.ChanMemScd.PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L838	@
.L830:
	add	r3, r5, #72	@ tmp276, pChanOption,
	add	r2, sp, #360	@,,
	add	r1, sp, #264	@,,
	str	r2, [sp, #112]	@, %sfp
	str	r1, [sp, #84]	@, %sfp
	ldmia	r3, {r0, r1, r2, r3}	@ tmp276,,,,
	ldr	lr, [sp, #112]	@, %sfp
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	ldr	ip, [sp, #84]	@, %sfp
	ldr	lr, [sp, #132]	@, %sfp
	stmia	ip, {r0, r1, r2, r3}	@,,,,
	ldr	r2, [sp, #272]	@ D.41695, ChanMemDetail.ChanMemVdh.Length
	cmp	lr, r2	@, D.41695
	bgt	.L878	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_AddMemRecord	@
	b	.L832	@
.L867:
	ldr	lr, [sp, #300]	@ D.34855, ChanMemDetail.ChanMemCtx.VirAddr
	movw	r3, #:lower16:g_FrameRate	@ tmp322,
	ldr	ip, [sl, #340]	@ g_ChanTick, g_ChanTick
	movt	r3, #:upper16:g_FrameRate	@ tmp322,
	movw	r2, #:lower16:g_LastFrameRate	@ tmp324,
	movt	r2, #:upper16:g_LastFrameRate	@ tmp324,
	mov	r0, lr	@, D.34855
	add	fp, ip, #1	@ tmp329, g_ChanTick,
	str	lr, [sl, #28]	@ D.34855, s_pstVfmwChan
	mov	ip, #30	@ tmp323,
	str	fp, [sl, #340]	@ tmp329, g_ChanTick
	movw	r1, #:lower16:285560	@,
	str	ip, [r2, #0]	@ tmp323, g_LastFrameRate
	movt	r1, #:upper16:285560	@,
	str	ip, [r3, #0]	@ tmp323, g_FrameRate
	bl	__memzero	@
	ldr	fp, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, r5	@, pChanOption
	mov	r2, #152	@,
	add	r3, fp, #1440	@, s_pstVfmwChan,
	movw	fp, #:lower16:211828	@,
	add	r0, r3, #4	@,,
	movt	fp, #:upper16:211828	@,
	bl	memcpy	@
	ldr	r0, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	ip, #:lower16:493440	@ tmp342,
	movt	ip, #:upper16:493440	@ tmp342,
	movw	r3, #:lower16:176080	@ tmp355,
	movt	r3, #:upper16:176080	@ tmp355,
	str	ip, [r0, #1388]	@ tmp342, <variable>.stSynExtraData.s32BasicCtxSize
	movw	lr, #:lower16:211832	@ tmp366,
	ldr	r1, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	movt	lr, #:upper16:211832	@ tmp366,
	movw	ip, #:lower16:s_SmIIS	@ tmp369,
	movw	r0, #:lower16:167700	@ tmp371,
	movt	ip, #:upper16:s_SmIIS	@ tmp369,
	movt	r0, #:upper16:167700	@ tmp371,
	str	r6, [r1, #24]	@ eCapLevel, <variable>.eChanCapLevel
	movw	r1, #:lower16:s_pFspInst	@ tmp374,
	ldr	r2, [sl, #28]	@, s_pstVfmwChan
	movt	r1, #:upper16:s_pFspInst	@ tmp374,
	str	fp, [sp, #140]	@, %sfp
	movw	fp, #:lower16:s_DnrChan	@,
	movt	fp, #:upper16:s_DnrChan	@,
	str	r6, [r2, #920]	@ eCapLevel, <variable>.stSynExtraData.eCapLevel
	ldr	r2, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	fp, [sp, #132]	@, %sfp
	movw	fp, #:lower16:76692	@,
	movt	fp, #:upper16:76692	@,
	str	fp, [sp, #136]	@, %sfp
	str	r9, [r2, #1404]	@ s_pstVfmwChan, <variable>.stSynExtraData.s32MoreGapEnable
	ldr	fp, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r9, [fp, #0]	@ s_pstVfmwChan, <variable>.s32ChanID
	ldr	r2, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	strb	r9, [r2, r3]	@ s_pstVfmwChan, <variable>.FspInst.s32InstID
	ldr	r2, [r5, #0]	@, <variable>.eAdapterType
	ldr	fp, [sl, #28]	@, s_pstVfmwChan
	str	r2, [fp, #20]	@, <variable>.eAdapterType
	mov	fp, #19	@,
	ldr	r2, [sl, #28]	@, s_pstVfmwChan
	str	fp, [r2, #880]	@, <variable>.eVidStd
	ldr	r2, [sl, #28]	@, s_pstVfmwChan
	str	fp, [r2, lr]	@, <variable>.stSynCtx.eVidStd
	ldr	fp, [sl, #28]	@ temp.4036, s_pstVfmwChan
	add	lr, fp, #1632	@ tmp370, temp.4036,
	str	lr, [ip, #56]	@ tmp370, s_SmIIS.pSmInstArray
	str	r9, [fp, r0]	@ s_pstVfmwChan, <variable>.SmInstArray.InstID
	ldr	fp, [sl, #28]	@ temp.4037, s_pstVfmwChan
	add	ip, fp, #175104	@ tmp376, temp.4037,
	add	r2, ip, #976	@ tmp376, tmp376,
	str	r2, [r1, #0]	@ tmp376, s_pFspInst
	strb	r9, [fp, r3]	@ s_pstVfmwChan, <variable>.FspInst.s32InstID
	ldr	lr, [sp, #140]	@, %sfp
	ldr	r3, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [sl, #340]	@ g_ChanTick, g_ChanTick
	str	r0, [r3, lr]	@ g_ChanTick, <variable>.u32ChanTick
	ldr	r2, [sp, #136]	@, %sfp
	ldr	ip, [sp, #132]	@, %sfp
	ldr	fp, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r9, [ip, r2]	@ <variable>.s32DnrEnable, <variable>.s32DnrEnable
	str	r9, [fp, #1604]	@ <variable>.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	ldr	r2, [r5, #140]	@ D.34871, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	cmp	r2, #0	@ D.34871,
	bne	.L853	@,
	ldr	r1, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r2, [r1, #1608]	@ D.34871, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	r9, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r2, [r9, #1612]	@ D.34871, <variable>.stSynExtraData.s32DSDThrHeight
.L854:
	mov	r3, #0	@ s32i,
	mov	ip, #-2147483648	@ tmp539,
	mov	sl, r3	@ tmp538, s32i
.L855:
	ldr	r9, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	fp, r3, asl #4	@ tmp414, s32i,
	add	r1, r3, #13120	@ tmp427, s32i,
	add	r3, r3, #1	@ tmp540, s32i,
	add	lr, fp, r9	@ tmp415, tmp414, s_pstVfmwChan
	add	r1, r1, #52	@ tmp427, tmp427,
	add	r0, lr, #209920	@ tmp416, tmp415,
	mov	lr, r3, asl #4	@ tmp545, tmp540,
	add	r9, r0, #824	@ tmp416, tmp416,
	add	r2, r3, #13120	@ tmp555, tmp540,
	add	r2, r2, #52	@ tmp555, tmp555,
	add	r3, r3, #1	@ s32i, tmp540,
	str	sl, [r9, #0]	@ tmp538, <variable>.eFrameState
	cmp	r3, #64	@ s32i,
	ldr	r0, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r9, #:lower16:.LANCHOR0	@ tmp542,
	movt	r9, #:upper16:.LANCHOR0	@ tmp542,
	add	r0, fp, r0	@ tmp422, tmp414, s_pstVfmwChan
	add	fp, r0, #209920	@ tmp423, tmp422,
	add	r0, fp, #824	@ tmp423, tmp423,
	str	ip, [r0, #4]	@ tmp539, <variable>.s32FrameAddr
	ldr	fp, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [fp, r1, asl #4]	@ tmp538, <variable>.s32FrameSize
	ldr	r0, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	add	fp, r0, r1, asl #4	@, tmp436, s_pstVfmwChan, tmp427,
	str	sl, [fp, #4]	@ tmp538, <variable>.s32UsingCount
	ldr	r0, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, lr, r0	@ tmp546, tmp545, s_pstVfmwChan
	add	fp, r1, #209920	@ tmp547, tmp546,
	add	r0, fp, #824	@ tmp547, tmp547,
	str	sl, [r0, #0]	@ tmp538, <variable>.eFrameState
	ldr	r1, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	add	fp, lr, r1	@ tmp550, tmp545, s_pstVfmwChan
	add	r0, fp, #209920	@ tmp551, tmp550,
	add	lr, r0, #824	@ tmp551, tmp551,
	str	ip, [lr, #4]	@ tmp539, <variable>.s32FrameAddr
	ldr	r1, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [r1, r2, asl #4]	@ tmp538, <variable>.s32FrameSize
	ldr	fp, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r2, fp, r2, asl #4	@, tmp558, s_pstVfmwChan, tmp555,
	str	sl, [r2, #4]	@ tmp538, <variable>.s32UsingCount
	bne	.L855	@,
	ldr	r0, [r9, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #16	@,
	add	r2, r0, #210944	@, s_pstVfmwChan,
	add	r0, r2, #824	@,,
	bl	__memzero	@
	mov	r0, sl	@, tmp538
	bl	VCTRL_ResetChan	@
	add	lr, sp, #264	@ tmp444,,
	add	r3, sp, #64	@,,
	str	r3, [sp, #132]	@, %sfp
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp560,,,,
	mov	ip, sp	@ tmp443,
	mov	fp, lr	@ tmp561, tmp560
	stmia	ip!, {r0, r1, r2, r3}	@ tmp443,,,,
	mov	lr, ip	@ tmp562, tmp443
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp561,,,,
	stmia	lr!, {r0, r1, r2, r3}	@ tmp562,,,,
	mov	ip, lr	@ tmp564, tmp562
	ldmia	fp!, {r0, r1, r2, r3}	@ tmp563,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp564,,,,
	ldmia	fp, {r0, r1, r2, r3}	@ tmp563,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp564,,,,
	ldr	fp, [sp, #132]	@, %sfp
	ldmia	r7, {r0, r1, r2, r3}	@ tmp535,,,,
	stmia	fp, {r0, r1, r2, r3}	@,,,,
	mov	r1, r6	@, eCapLevel
	mov	r2, r8	@, OneChanMemFlag
	mov	r0, sl	@, tmp538
	mov	r3, r5	@, pChanOption
	bl	VCTRL_ConfigMemInfo	@
	cmp	r0, #0	@,
	bne	.L856	@,
	ldr	r1, [r9, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	sl, [r1, #140]	@ tmp538, <variable>.s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L856	@,
	ldr	r3, [r9, #28]	@ temp.4052, s_pstVfmwChan
	ldr	ip, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	ip, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L857	@,
	ldr	lr, [r3, #236]	@ D.34890, <variable>.s32OffLineDnrMemAddr
	mov	r0, lr	@, D.34890
	str	lr, [sp, #520]	@ D.34890, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r9, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r0, [sp, #524]	@, DnrMem.VirAddr
	mov	r0, sl	@, tmp538
	ldr	r3, [r2, #240]	@ <variable>.s32OffLineDNRMemSize, <variable>.s32OffLineDNRMemSize
	str	r3, [sp, #528]	@ <variable>.s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L858	@,
	mov	r0, sl	@, tmp538
	ldr	r3, [r5, #16]	@, <variable>.s32MaxHeight
	add	r1, sp, #520	@,,
	ldr	r2, [r5, #12]	@, <variable>.s32MaxWidth
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L856	@,
.L858:
	mov	r0, #0	@,
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L856	@,
.L857:
	mov	r0, #0	@,
	bl	SM_ClearInst	@
	ldr	r1, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, #0	@,
	ldr	r2, [r1, #204]	@ <variable>.stChanMem_ctx.VirAddr, <variable>.stChanMem_ctx.VirAddr
	add	r3, r2, #286720	@, <variable>.stChanMem_ctx.VirAddr,
	add	r1, r3, #888	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	ip, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #1	@ tmp463,
	mov	r0, #0	@,
	str	r1, [ip, #4]	@ tmp463, <variable>.s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L894	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ ChanID,
	b	.L824	@
.L853:
	mov	r0, #28	@ tmp400,
	movw	r3, #:lower16:CapItem	@ tmp398,
	mul	lr, r0, r2	@ tmp399, tmp400, D.34871
	movt	r3, #:upper16:CapItem	@ tmp398,
	ldr	r9, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	ip, #7	@ tmp408,
	ldr	r1, [lr, r3]	@ tmp402, CapItem
	str	r1, [r9, #1608]	@ tmp402, <variable>.stSynExtraData.s32DSDThrWidth
	ldr	fp, [r5, #140]	@ <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	lr, [sl, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mul	r2, ip, fp	@ tmp407, tmp408, <variable>.DynamicSwitchDnrParam.DnrSwitchThreshold
	add	r0, r2, #1	@ tmp409, tmp407,
	ldr	sl, [r3, r0, asl #2]	@ tmp410, CapItem
	str	sl, [lr, #1612]	@ tmp410, <variable>.stSynExtraData.s32DSDThrHeight
	b	.L854	@
.L856:
	mov	r0, #0	@,
	add	r6, sp, #236	@,,
	bl	VCTRL_UnInstallChan	@
	ldr	r3, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r1, #:lower16:211808	@ tmp477,
	movt	r1, #:upper16:211808	@ tmp477,
	add	r0, r3, #104	@, s_pstVfmwChan,
	add	r2, r3, #152	@ tmp482, s_pstVfmwChan,
	ldr	fp, [r3, #224]	@ <variable>.s32SelfAllocChanMem_ctx, <variable>.s32SelfAllocChanMem_ctx
	add	r9, r3, #184	@ tmp494, s_pstVfmwChan,
	str	r0, [sp, #132]	@, %sfp
	add	r7, r3, #200	@ tmp486, s_pstVfmwChan,
	add	r8, r3, #168	@ tmp490, s_pstVfmwChan,
	add	ip, r3, #210944	@ tmp503, s_pstVfmwChan,
	str	fp, [sp, #228]	@ <variable>.s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r5, sp, #156	@ tmp481,,
	ldr	r0, [r3, #216]	@ <variable>.s32SelfAllocChanMem_vdh, <variable>.s32SelfAllocChanMem_vdh
	add	lr, sp, #204	@ tmp485,,
	str	r6, [sp, #104]	@, %sfp
	add	r6, sp, #248	@,,
	str	r6, [sp, #100]	@, %sfp
	add	sl, sp, #172	@ tmp489,,
	str	r0, [sp, #220]	@ <variable>.s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	add	fp, sp, #188	@ tmp493,,
	ldr	r0, [r3, #220]	@ <variable>.s32SelfAllocChanMem_scd, <variable>.s32SelfAllocChanMem_scd
	add	ip, ip, #868	@ tmp503, tmp503,
	mov	r6, #0	@ tmp505,
	str	r0, [sp, #224]	@ <variable>.s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r0, [r3, r1]	@ <variable>.s32SelfAllocChanMem_pmv, <variable>.s32SelfAllocChanMem_pmv
	str	r0, [sp, #232]	@ <variable>.s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	ldmia	r2, {r0, r1, r2, r3}	@ tmp482,,,,
	stmia	r5, {r0, r1, r2, r3}	@ tmp481,,,,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp486,,,,
	stmia	lr, {r0, r1, r2, r3}	@ tmp485,,,,
	ldmia	r8, {r0, r1, r2, r3}	@ tmp490,,,,
	stmia	sl, {r0, r1, r2, r3}	@ tmp489,,,,
	ldr	lr, [sp, #100]	@, %sfp
	ldmia	r9, {r0, r1, r2, r3}	@ tmp494,,,,
	ldr	r9, [sp, #132]	@, %sfp
	stmia	fp, {r0, r1, r2, r3}	@ tmp493,,,,
	ldr	fp, [sp, #104]	@, %sfp
	ldmia	r9, {r0, r1, r2}	@,,,
	stmia	fp, {r0, r1, r2}	@,,,
	ldmia	ip, {r0, r1, r2, r3}	@ tmp503,,,,
	str	r6, [r4, #28]	@ tmp505, s_pstVfmwChan
	stmia	lr, {r0, r1, r2, r3}	@,,,,
	mov	r0, r6	@, tmp505
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L894	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@, tmp505
	mov	r1, r5	@, tmp481
	bl	VCTRL_FreeChanResource	@
	mvn	r0, #0	@ ChanID,
	b	.L824	@
.L850:
	ldr	r0, [sp, #512]	@ ChanMemFlag.SelfAllocChanMem_ctx, ChanMemFlag.SelfAllocChanMem_ctx
	cmp	r0, #1	@ ChanMemFlag.SelfAllocChanMem_ctx,
	bne	.L851	@,
	ldr	r0, [sp, #296]	@, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	r1, [sp, #300]	@, ChanMemDetail.ChanMemCtx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #296
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L851:
	ldr	lr, [sp, #504]	@ ChanMemFlag.SelfAllocChanMem_vdh, ChanMemFlag.SelfAllocChanMem_vdh
	cmp	lr, #1	@ ChanMemFlag.SelfAllocChanMem_vdh,
	bne	.L852	@,
	ldr	r0, [sp, #264]	@, ChanMemDetail.ChanMemVdh.PhyAddr
	ldr	r1, [sp, #268]	@, ChanMemDetail.ChanMemVdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #264
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
.L852:
	ldr	r1, [sp, #508]	@ ChanMemFlag.SelfAllocChanMem_scd, ChanMemFlag.SelfAllocChanMem_scd
	cmp	r1, #1	@ ChanMemFlag.SelfAllocChanMem_scd,
	bne	.L815	@,
	ldr	r0, [sp, #280]	@, ChanMemDetail.ChanMemScd.PhyAddr
	ldr	r1, [sp, #284]	@, ChanMemDetail.ChanMemScd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #280
	ldmia	r0, {r0, r1, r2}	@ phole ldm
	bl	MEM_DelMemRecord	@
	mvn	r0, #0	@ ChanID,
	b	.L824	@
.L844:
	ldr	r1, [sp, #264]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemVdh.PhyAddr
	mov	r2, #0	@ tmp314,
	ldr	lr, [sp, #268]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	str	r2, [sp, #320]	@ tmp314, ChanMemDetail.ChanMemPmv.Length
	str	r1, [sp, #312]	@ ChanMemDetail.ChanMemVdh.PhyAddr, ChanMemDetail.ChanMemPmv.PhyAddr
	str	lr, [sp, #316]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemPmv.VirAddr
	b	.L821	@
.L895:
	.align	2
.L894:
	.word	.LANCHOR0+328
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
	.pad #212
	sub	sp, sp, #212	@,,
	mov	r8, r1	@ pChanMem, pChanMem
	bls	.L907	@,
.L897:
	mvn	r0, #0	@ D.34261,
.L905:
	add	sp, sp, #212	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L907:
	add	r6, sp, #168	@ tmp221,,
	mov	r1, #152	@,
	mov	r0, sp	@,
	add	r7, sp, r1	@ tmp224,,
	bl	__memzero	@
	mov	r0, r6	@, tmp221
	mov	r1, #16	@,
	mov	r5, sp	@ tmp220,
	bl	__memzero	@
	mov	r0, r7	@, tmp224
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r2, r4, asl #3	@ tmp223, eCapLevel,
	rsb	r1, r4, r2	@ tmp153, eCapLevel, tmp223
	sub	r0, r4, #18	@ D.38346, eCapLevel,
	cmp	r0, #7	@ D.38346,
	add	ip, r1, #1	@ tmp161, tmp153,
	movw	r3, #:lower16:CapItem	@ tmp222,
	movt	r3, #:upper16:CapItem	@ tmp222,
	mov	lr, #1	@ tmp148,
	str	lr, [sp, #4]	@ tmp148, stChanOption.Purpose
	ldr	ip, [r3, ip, asl #2]	@ tmp162, CapItem
	mov	lr, #2	@ tmp149,
	str	lr, [sp, #8]	@ tmp149, stChanOption.MemAllocMode
	mov	lr, #32	@ tmp164,
	str	lr, [sp, #24]	@ tmp164, stChanOption.s32MaxSpsNum
	mov	lr, #256	@ tmp165,
	str	lr, [sp, #28]	@ tmp165, stChanOption.s32MaxPpsNum
	movwls	lr, #:lower16:.LANCHOR1	@ tmp166,
	movtls	lr, #:upper16:.LANCHOR1	@ tmp166,
	ldr	r1, [r3, r1, asl #2]	@ tmp156, CapItem
	addls	lr, lr, r0, asl #2	@, tmp169, tmp166, D.38346,
	rsb	r0, r4, r2	@ tmp175, eCapLevel, tmp223
	str	ip, [sp, #16]	@ tmp162, stChanOption.s32MaxHeight
	movhi	lr, #6	@ MinDispFspNum,
	add	ip, r3, r0, asl #2	@, tmp177, tmp222, tmp175,
	rsb	r0, r4, r2	@ tmp188, eCapLevel, tmp223
	ldrls	lr, [lr, #312]	@ MinDispFspNum, CSWTCH.820
	mov	r2, #1	@ tmp181,
	str	r1, [sp, #12]	@ tmp156, stChanOption.s32MaxWidth
	mov	r1, #136	@ tmp163,
	str	r1, [sp, #20]	@ tmp163, stChanOption.s32MaxSliceNum
	ldr	r1, [ip, #12]	@ D.34280, CapItem
	add	ip, r3, r0, asl #2	@, tmp190, tmp222, tmp188,
	str	lr, [sp, #60]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	mov	r0, r4	@, eCapLevel
	cmp	lr, r1	@ MinDispFspNum, D.34280
	ldr	r3, [ip, #24]	@ tmp192, CapItem
	rsblt	r1, lr, r1	@ tmp180, MinDispFspNum, D.34280
	str	r2, [sp, #40]	@ tmp181, stChanOption.s32SupportBFrame
	movge	r1, #1	@ tmp179,
	str	r2, [sp, #44]	@ tmp181, stChanOption.s32SupportH264
	cmp	r4, #24	@ eCapLevel,
	str	r1, [sp, #32]	@ tmp180, stChanOption.s32MaxRefFrameNum
	streq	r2, [sp, #60]	@ tmp181, stChanOption.s32DisplayFrameNum
	mov	r1, #0	@ tmp193,
	str	r2, [sp, #52]	@ tmp181, stChanOption.s32ReRangeEn
	add	r2, sp, #184	@,,
	streq	r1, [sp, #32]	@ tmp193, stChanOption.s32MaxRefFrameNum
	str	r1, [sp, #64]	@ tmp193, stChanOption.s32SlotWidth
	str	r1, [sp, #68]	@ tmp193, stChanOption.s32SlotHeight
	add	r1, sp, #196	@,,
	str	r3, [sp, #56]	@ tmp192, stChanOption.s32SCDBufSize
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L897	@,
	cmp	r8, #0	@ pChanMem,
	beq	.L903	@,
	ldr	sl, [r8, #8]	@ D.34293, <variable>.Length
	cmp	sl, #0	@ D.34293,
	bne	.L908	@,
.L903:
	mov	ip, #0	@ OneChanMemFlag,
.L904:
	mov	r0, r4	@, eCapLevel
	mov	r1, sp	@,
	mov	r3, ip	@, OneChanMemFlag
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.34261,
	b	.L905	@
.L908:
	ldr	r3, [r8, #0]	@ <variable>.PhyAddr, <variable>.PhyAddr
	cmp	r3, #0	@ <variable>.PhyAddr,
	beq	.L897	@,
	ldr	ip, [r8, #4]	@ <variable>.VirAddr, <variable>.VirAddr
	cmp	ip, #0	@ <variable>.VirAddr,
	beq	.L897	@,
	ldr	r0, [sp, #196]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r1, [sp, #184]	@ ScdChanMemSize, ScdChanMemSize
	add	r2, r1, r0	@ tmp201, ScdChanMemSize, VdmChanMemSize
	cmp	sl, r2	@ D.34293, tmp201
	blt	.L897	@,
	ldr	r8, [sp, #188]	@ D.34306, ScdChanMemSize
	add	r9, sp, #88	@ tmp213,,
	str	ip, [sp, #156]	@ <variable>.VirAddr, scd_MemRecord.VirAddr
	add	fp, sp, #72	@ tmp215,,
	add	lr, r3, r8	@ tmp208, <variable>.PhyAddr, D.34306
	str	r3, [sp, #152]	@ <variable>.PhyAddr, scd_MemRecord.PhyAddr
	str	r8, [sp, #160]	@ D.34306, scd_MemRecord.Length
	add	ip, ip, r8	@ tmp210, <variable>.VirAddr, D.34306
	ldmia	r7, {r0, r1, r2, r3}	@ tmp224,,,,
	str	lr, [sp, #168]	@ tmp208, vdh_MemRecord.PhyAddr
	str	ip, [sp, #172]	@ tmp210, vdh_MemRecord.VirAddr
	rsb	sl, r8, sl	@ tmp212, D.34306, D.34293
	str	sl, [sp, #176]	@ tmp212, vdh_MemRecord.Length
	mov	lr, #3	@ tmp204,
	mov	ip, #1	@ OneChanMemFlag,
	str	lr, [sp, #8]	@ tmp204, stChanOption.MemAllocMode
	stmia	r9, {r0, r1, r2, r3}	@ tmp213,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp221,,,,
	stmia	fp, {r0, r1, r2, r3}	@ tmp215,,,,
	b	.L904	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r6, r1	@ MaxWidth, MaxWidth
	cmp	r1, #31	@ MaxWidth,
	cmpgt	r2, #31	@, MaxHeight,
	add	r1, r4, r0, asl #2	@, tmp156, tmp153, ChanID,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r9, [sp, #80]	@ MemSize, MemSize
	ldr	r7, [r1, #28]	@ pstChan, s_pstVfmwChan
	bgt	.L915	@,
.L910:
	mvn	r0, #0	@ D.34119,
.L913:
	add	sp, sp, #48	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L915:
	cmp	r3, #0	@ MemAddr,
	cmpne	r9, #0	@, MemSize,
	movne	r8, #0	@, tmp171
	moveq	r8, #1	@, tmp171
	beq	.L910	@,
	add	sl, sp, #8	@ tmp172,,
	mov	r1, #36	@,
	str	r3, [sp, #0]	@,
	mov	r0, sl	@, tmp172
	str	r2, [sp, #4]	@,
	bl	__memzero	@
	ldr	r2, [sp, #4]	@,
	mov	r1, sl	@, tmp172
	mov	r0, r5	@, ChanID
	mov	ip, #1	@ tmp183,
	str	r6, [sp, #36]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	str	r2, [sp, #40]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	r8, [sp, #16]	@ tmp171, FspInstCfg.s32ExpectedPmvNum
	strb	ip, [sp, #12]	@ tmp183, FspInstCfg.s32UserDec
	strb	r8, [sp, #8]	@ tmp171, FspInstCfg.s32DispLoopEnable
	strb	r8, [sp, #10]	@ tmp171, FspInstCfg.s32RprEnable
	str	r6, [sp, #20]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	str	r2, [sp, #24]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	strb	r8, [sp, #13]	@ tmp171, FspInstCfg.s32ExpectedDecFsNum
	strb	r8, [sp, #15]	@ tmp171, FspInstCfg.s32ExpectedDispFsNum
	bl	FSP_ConfigInstance	@
	ldr	r3, [sp, #0]	@,
	cmp	r0, #0	@,
	bne	.L910	@,
	mov	r1, r3	@, MemAddr
	mov	r2, r9	@, MemSize
	mov	r0, r5	@, ChanID
	add	r3, sp, #44	@,,
	bl	FSP_PartitionFsMemory	@
	subs	r6, r0, #0	@ Ret,
	bne	.L910	@,
	mov	r0, r5	@, ChanID
	add	r1, r4, #344	@, tmp153,
	bl	FSP_GetInstInfo	@
	ldrb	r0, [r4, #345]	@ zero_extendqisi2	@, FspInstInfo.s32DecFsNum
	sxtb	r3, r0	@ D.34139, FspInstInfo.s32DecFsNum
	cmp	r3, #16	@ D.34139,
	movge	r3, #16	@ D.34139,
	str	r3, [r7, #820]	@ D.34139, <variable>.s32UsrdecFrameNum
	cmp	r3, #2	@ D.34139,
	ble	.L910	@,
	ldr	lr, [r4, #3680]	@ FspInstInfo.s32DecFsSize, FspInstInfo.s32DecFsSize
	add	r0, r7, #752	@, pstChan,
	mov	r1, #64	@,
	add	r4, r4, #364	@ ivtmp.4225, tmp153,
	str	lr, [r7, #816]	@ FspInstInfo.s32DecFsSize, <variable>.s32UsrdecFrameSize
	bl	__memzero	@
	add	r0, r7, #688	@, pstChan,
	mov	r1, #64	@,
	bl	__memzero	@
	ldr	r2, [r7, #820]	@ D.34138, <variable>.s32UsrdecFrameNum
	mov	r3, r7	@ ivtmp.4235, pstChan
.L911:
	cmp	r6, r2	@ i, D.34138
	add	r4, r4, #52	@ ivtmp.4225, ivtmp.4225,
	add	r6, r6, #1	@ i, i,
	add	r3, r3, #4	@ ivtmp.4235, ivtmp.4235,
	ldrlt	r1, [r4, #-52]	@ <variable>.PhyAddr, <variable>.PhyAddr
	strlt	r1, [r3, #748]	@ <variable>.PhyAddr, <variable>.s32UsrdecFramePhyAddr
	blt	.L911	@
.L916:
	mov	r0, #0	@ D.34119,
	b	.L913	@
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
.LFB1713:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	mov	r3, #0	@ tmp162,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r4, r1	@ pstCfg, pstCfg
	.pad #100
	sub	sp, sp, #100	@,,
	str	r3, [r1, #44]	@ tmp162, <variable>.s32VcmpEn
	beq	.L940	@,
.L918:
	mvn	r0, #0	@ D.35487,
.L920:
	add	sp, sp, #100	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L940:
	movw	r5, #:lower16:.LANCHOR0	@ tmp326,
	movt	r5, #:upper16:.LANCHOR0	@ tmp326,
	ldr	r8, [r5, #28]	@ D.35489, s_pstVfmwChan
	cmp	r8, r3	@ D.35489,
	beq	.L918	@,
	ldr	r6, [r8, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r6, #1	@ <variable>.s32IsOpen,
	bne	.L918	@,
	bl	VCTRL_CheckChanWH	@
	subs	r7, r0, #0	@ D.35495,
	bne	.L918	@,
	ldr	r3, [r4, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	bgt	.L918	@,
	mov	r1, r4	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	cmp	r0, #0	@ D.35504
	beq	.L920	@,
	add	r0, r8, #32	@, D.35489,
	mov	r2, #72	@,
	mov	r1, r4	@, pstCfg
	add	r8, sp, #20	@ tmp177,,
	bl	memcpy	@
	ldr	ip, [r4, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	ldr	fp, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, #40	@,
	mov	r0, r8	@, tmp177
	add	sl, r4, #4	@ tmp327, pstCfg,
	add	r9, sp, #92	@ tmp192,,
	str	ip, [fp, #12]	@ <variable>.s32ChanPriority, <variable>.s32Priority
	ldr	r3, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r2, [r4, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	str	r2, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	bl	__memzero	@
	ldr	fp, [r5, #28]	@ temp.4279, s_pstVfmwChan
	ldr	r0, [fp, #244]	@ <variable>.s32ScdChanMemAddr, <variable>.s32ScdChanMemAddr
	str	r0, [sp, #32]	@ <variable>.s32ScdChanMemAddr, ScdInstCfg.BufPhyAddr
	ldr	r0, [fp, #244]	@, <variable>.s32ScdChanMemAddr
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #68]	@, <variable>.s32LowdBufEnable
	ldr	r2, [r4, #12]	@ <variable>.s32ChanPriority, <variable>.s32ChanPriority
	add	lr, sp, #44	@ tmp189,,
	ldr	ip, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	r3, #:lower16:269729792	@ tmp186,
	ldr	fp, [r4, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	movt	r3, #:upper16:269729792	@ tmp186,
	str	r1, [sp, #12]	@, %sfp
	str	r0, [sp, #20]	@, ScdInstCfg.pBufVirAddr
	ldmia	sl, {r0, r1}	@ tmp327,,
	ldr	ip, [ip, #256]	@ <variable>.s32ScdChanMemSize, <variable>.s32ScdChanMemSize
	strb	r2, [sp, #24]	@ <variable>.s32ChanPriority, ScdInstCfg.Priority
	ldr	r2, [sp, #12]	@, %sfp
	stmia	lr, {r0, r1}	@ tmp189,,
	mov	r1, r8	@, tmp177
	mov	r0, r7	@, D.35495
	str	ip, [sp, #36]	@ <variable>.s32ScdChanMemSize, ScdInstCfg.BufSize
	str	r3, [sp, #40]	@ tmp186, ScdInstCfg.RegPhyBaseAddr
	str	r2, [sp, #56]	@, ScdInstCfg.ScdLowBufEnable
	str	fp, [sp, #28]	@ <variable>.eVidStd, ScdInstCfg.VidStd
	str	r7, [sp, #52]	@ D.35495, ScdInstCfg.ScdLowdlyEnable
	bl	SM_Config	@
	mov	r0, r9	@, tmp192
	mov	r1, r6	@, <variable>.s32IsOpen
	bl	__memzero	@
	ldr	r0, [r4, #68]	@ <variable>.s32LowdBufEnable, <variable>.s32LowdBufEnable
	cmp	r0, #0	@ <variable>.s32LowdBufEnable,
	beq	.L921	@,
	mov	r0, r7	@, D.35495
	mov	r1, r9	@, tmp192
	strb	r6, [sp, #92]	@ <variable>.s32IsOpen, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
.L921:
	ldr	r1, [r5, #28]	@ temp.4286, s_pstVfmwChan
	mov	r2, #0	@ tmp233,
	movw	ip, #:lower16:211832	@ tmp252,
	movt	ip, #:upper16:211832	@ tmp252,
	movw	r6, #:lower16:.LANCHOR0	@ tmp197,
	movt	r6, #:upper16:.LANCHOR0	@ tmp197,
	ldr	r0, [r1, #208]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stChanMem_ctx.PhyAddr
	str	r0, [r1, #1392]	@ <variable>.stChanMem_ctx.PhyAddr, <variable>.stSynExtraData.s32ContextMemAddr
	ldr	r3, [r5, #28]	@ temp.4287, s_pstVfmwChan
	ldr	lr, [r3, #212]	@ <variable>.stChanMem_ctx.Length, <variable>.stChanMem_ctx.Length
	str	lr, [r3, #1396]	@ <variable>.stChanMem_ctx.Length, <variable>.stSynExtraData.s32ContextMemSize
	ldr	r1, [r5, #28]	@ temp.4288, s_pstVfmwChan
	ldr	r0, [r1, #228]	@ <variable>.s32VdmChanMemAddr, <variable>.s32VdmChanMemAddr
	str	r0, [r1, #912]	@ <variable>.s32VdmChanMemAddr, <variable>.stSynExtraData.s32SyntaxMemAddr
	ldr	r3, [r5, #28]	@ temp.4289, s_pstVfmwChan
	ldr	lr, [r3, #232]	@ <variable>.s32VdmChanMemSize, <variable>.s32VdmChanMemSize
	str	lr, [r3, #916]	@ <variable>.s32VdmChanMemSize, <variable>.stSynExtraData.s32SyntaxMemSize
	ldr	r1, [r5, #28]	@ temp.4290, s_pstVfmwChan
	ldr	r0, [r1, #260]	@ <variable>.s32BpdChanMemAddr, <variable>.s32BpdChanMemAddr
	str	r0, [r1, #924]	@ <variable>.s32BpdChanMemAddr, <variable>.stSynExtraData.s32BpdMemAddr
	ldr	r3, [r5, #28]	@ temp.4291, s_pstVfmwChan
	ldr	lr, [r3, #264]	@ <variable>.s32BpdChanMemSize, <variable>.s32BpdChanMemSize
	str	lr, [r3, #928]	@ <variable>.s32BpdChanMemSize, <variable>.stSynExtraData.s32BpdMemSize
	ldr	r1, [r5, #28]	@ temp.4292, s_pstVfmwChan
	ldr	r0, [r1, #268]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.s32Vp8SegIdChanMemAddr
	str	r0, [r1, #932]	@ <variable>.s32Vp8SegIdChanMemAddr, <variable>.stSynExtraData.s32Vp8SegIdMemAddr
	ldr	r3, [r5, #28]	@ temp.4293, s_pstVfmwChan
	ldr	lr, [r3, #272]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.s32Vp8SegIdChanMemSize
	str	lr, [r3, #936]	@ <variable>.s32Vp8SegIdChanMemSize, <variable>.stSynExtraData.s32Vp8SegIdMemSize
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r4, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	r0, [r1, #892]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32OutErrThr
	ldr	r3, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r4, #16]	@ <variable>.s32ChanErrThr, <variable>.s32ChanErrThr
	str	lr, [r3, #888]	@ <variable>.s32ChanErrThr, <variable>.stSynExtraData.s32RefErrThr
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r4, #24]	@ <variable>.s32DecMode, <variable>.s32DecMode
	str	r0, [r1, #896]	@ <variable>.s32DecMode, <variable>.stSynExtraData.s32DecMode
	ldr	r3, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r4, #28]	@ <variable>.s32DecOrderOutput, <variable>.s32DecOrderOutput
	str	lr, [r3, #900]	@ <variable>.s32DecOrderOutput, <variable>.stSynExtraData.s32DecOrderOutput
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r4, #32]	@ <variable>.s32DnrTfEnable, <variable>.s32DnrTfEnable
	str	r0, [r1, #904]	@ <variable>.s32DnrTfEnable, <variable>.stSynExtraData.s32DnrTfEnable
	ldr	r3, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r4, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	str	lr, [r3, #1400]	@ <variable>.s32VcmpEn, <variable>.stSynExtraData.s32Compress_en
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r2, [r1, #1616]	@ tmp233, <variable>.stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r4, #60]	@ <variable>.s32SupportAllP, <variable>.s32SupportAllP
	cmp	r0, #1	@ <variable>.s32SupportAllP,
	movne	lr, #0	@, tmp237
	moveq	lr, #1	@, tmp237
	str	lr, [r3, #1416]	@ tmp237, <variable>.stSynExtraData.s32SupportAllP
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r0, [r4, #64]	@ <variable>.s32ModuleLowlyEnable, <variable>.s32ModuleLowlyEnable
	str	r0, [r1, #1420]	@ <variable>.s32ModuleLowlyEnable, <variable>.stSynExtraData.s32ModuleLowlyEnable
	ldr	r3, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldmia	sl, {r0, r1}	@ tmp327,,
	add	lr, r3, #1264	@ tmp242, s_pstVfmwChan,
	add	r3, lr, #12	@ tmp242, tmp242,
	stmia	r3, {r0, r1}	@ tmp242,,
	ldr	r1, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	str	r2, [r1, #908]	@ tmp233, <variable>.stSynExtraData.s32DnrDispOutEnable
	ldr	r3, [r5, #28]	@ prephitmp.4263, s_pstVfmwChan
	ldr	r1, [r3, ip]	@ prephitmp.4265, <variable>.stSynCtx.eVidStd
	ldr	lr, [r3, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, lr	@ prephitmp.4265, <variable>.eVidStd
	beq	.L922	@,
	mov	r0, r2	@, tmp233
	bl	VCTRL_ResetChan	@
	ldr	r2, [r4, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	ldr	r3, [r6, #28]	@ prephitmp.4263, s_pstVfmwChan
	cmp	r2, #18	@ <variable>.eVidStd,
	beq	.L923	@,
.L938:
	ldr	r1, [r3, #880]	@ prephitmp.4265, <variable>.eVidStd
.L922:
	movw	r2, #:lower16:211832	@ tmp259,
	movt	r2, #:upper16:211832	@ tmp259,
	movw	r7, #:lower16:.LANCHOR0	@ tmp260,
	movt	r7, #:upper16:.LANCHOR0	@ tmp260,
	str	r1, [r3, r2]	@ prephitmp.4265, <variable>.stSynCtx.eVidStd
	ldr	r0, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	lr, [r0, #248]	@ temp.4308, <variable>.s32SdecMemAddr
	mov	r0, lr	@, temp.4308
	str	lr, [sp, #76]	@ temp.4308, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	add	r1, sp, #76	@,,
	str	r0, [sp, #80]	@, stMem.VirAddr
	mov	r0, #0	@,
	ldr	r8, [r3, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	str	r8, [sp, #84]	@ <variable>.s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	r8, r0, #0	@ D.35566,
	bne	.L918	@,
	add	r6, sp, #60	@ tmp325,,
	mov	r1, #16	@,
	mov	r0, r6	@, tmp325
	bl	__memzero	@
	ldr	r3, [r4, #0]	@ D.38379, <variable>.eVidStd
	sub	r1, r3, #10	@ tmp267, D.38379,
	cmp	r1, #2	@ tmp267,
	strhib	r8, [sp, #60]	@ D.35566, DnrChanCfgArgs.s32MirrorEn
	bhi	.L928	@,
	ldr	ip, [r7, #268]	@ g_VdmCharacter, g_VdmCharacter
	tst	ip, #1	@ g_VdmCharacter,
	beq	.L939	@,
	cmp	r3, #12	@ D.38379,
	beq	.L939	@,
	ldr	r1, [r4, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	eor	r2, r1, #1	@ tmp279, <variable>.StdExt.Vp6Ext.bReversed,
	and	r0, r2, #1	@ tmp282, tmp279,
	strb	r0, [sp, #60]	@ tmp282, DnrChanCfgArgs.s32MirrorEn
.L928:
	ldrsb	r3, [sp, #60]	@ DnrChanCfgArgs.s32MirrorEn, DnrChanCfgArgs.s32MirrorEn
	mov	lr, #1	@ tmp295,
	ldr	ip, [r4, #44]	@ <variable>.s32VcmpEn, <variable>.s32VcmpEn
	cmp	r3, #1	@ DnrChanCfgArgs.s32MirrorEn,
	strb	ip, [sp, #61]	@ <variable>.s32VcmpEn, DnrChanCfgArgs.s32VcmpEn
	moveq	ip, #0	@ tmp289,
	streqb	ip, [sp, #61]	@ tmp289, DnrChanCfgArgs.s32VcmpEn
	ldr	ip, [r5, #28]	@ D.38362, s_pstVfmwChan
	ldr	r0, [r4, #56]	@ <variable>.s32VcmpWmEndLine, <variable>.s32VcmpWmEndLine
	ldr	r1, [r4, #48]	@ <variable>.s32WmEn, <variable>.s32WmEn
	ldr	r2, [r4, #52]	@ <variable>.s32VcmpWmStartLine, <variable>.s32VcmpWmStartLine
	str	r0, [sp, #68]	@ <variable>.s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	strb	r1, [sp, #62]	@ <variable>.s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r2, [sp, #64]	@ <variable>.s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	lr, [sp, #72]	@ tmp295, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	r3, [ip, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L931	@,
	mov	r1, r6	@, tmp325
	mov	r0, #0	@,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L918	@,
.L932:
	ldr	r2, [r5, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	movw	lr, #:lower16:176080	@ tmp316,
	movw	r1, #:lower16:s_SmIIS	@ tmp319,
	movt	lr, #:upper16:176080	@ tmp316,
	movt	r1, #:upper16:s_SmIIS	@ tmp319,
	mov	ip, #0	@ tmp317,
	strb	ip, [r2, lr]	@ tmp317, <variable>.FspInst.s32InstID
	movw	r3, #:lower16:166068	@ tmp321,
	ldr	r0, [r1, #56]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	movt	r3, #:upper16:166068	@ tmp321,
	movw	r2, #:lower16:.LANCHOR0	@ tmp314,
	movt	r2, #:upper16:.LANCHOR0	@ tmp314,
	str	ip, [r0, r3]	@ tmp317, <variable>.InstID
	ldr	r3, [r5, #28]	@ D.35580, s_pstVfmwChan
	cmp	r3, ip	@ D.35580,
	beq	.L941	@,
	ldr	lr, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	movw	r1, #:lower16:g_ChanCtx	@ tmp308,
	movt	r1, #:upper16:g_ChanCtx	@ tmp308,
	str	lr, [r2, #3684]	@ <variable>.s32Priority, PrioArray
	ldr	r2, [r3, #12]	@ <variable>.s32Priority, <variable>.s32Priority
	str	r2, [r1, #0]	@ <variable>.s32Priority, g_ChanCtx.PriorByChanId
.L933:
	ldr	r0, .L942	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.35487,
	b	.L920	@
.L923:
	ldr	r2, [r3, #1448]	@ <variable>.stSynExtraData.stChanOption.Purpose, <variable>.stSynExtraData.stChanOption.Purpose
	mov	r0, #0	@,
	ldr	ip, [r3, #252]	@ <variable>.s32SdecMemSize, <variable>.s32SdecMemSize
	cmp	r2, #2	@ <variable>.stSynExtraData.stChanOption.Purpose,
	ldrne	r1, [r3, #1456]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32MaxWidth
	ldrne	r2, [r3, #1460]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32MaxHeight
	ldreq	r1, [r3, #1508]	@ MaxWidth, <variable>.stSynExtraData.stChanOption.s32SlotWidth
	ldreq	r2, [r3, #1512]	@ MaxHeight, <variable>.stSynExtraData.stChanOption.s32SlotHeight
	str	ip, [sp, #0]	@ <variable>.s32SdecMemSize,
	ldr	r3, [r3, #248]	@, <variable>.s32SdecMemAddr
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L918	@,
	ldr	r3, [r5, #28]	@ prephitmp.4263, s_pstVfmwChan
	b	.L938	@
.L939:
	ldr	lr, [r4, #4]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	and	r3, lr, #1	@ tmp277, <variable>.StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #60]	@ tmp277, DnrChanCfgArgs.s32MirrorEn
	b	.L928	@
.L941:
	movw	r0, #:lower16:g_ChanCtx	@ tmp304,
	movt	r0, #:upper16:g_ChanCtx	@ tmp304,
	str	r3, [r2, #3684]	@ D.35580, PrioArray
	str	r3, [r0, #0]	@ D.35580, g_ChanCtx.PriorByChanId
	b	.L933	@
.L931:
	ldmia	r6, {r0, r1, r2, r3}	@ tmp325,,,,
	add	ip, ip, #210944	@ tmp300, D.38362,
	add	lr, ip, #824	@ tmp300, tmp300,
	stmia	lr, {r0, r1, r2, r3}	@ tmp300,,,,
	b	.L932	@
.L943:
	.align	2
.L942:
	.word	.LANCHOR0+3684
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.type	VfmwProc_SetDropStreamThread, %function
VfmwProc_SetDropStreamThread:
	.fnstart
.LFB1779:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r6, r4, lsr #24	@ ChanID, dat,
	mov	r1, sp	@,
	mov	r5, sp	@ tmp137,
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L946	@,
	mov	r0, r6	@, ChanID
	mov	r1, sp	@,
	bic	r4, r4, #-16777216	@ tmp138, dat,
	str	r4, [sp, #20]	@ tmp138, ChanCfg.s32ChanStrmOFThr
	bl	VCTRL_ConfigChan	@
.L946:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDropStreamThread, .-VfmwProc_SetDropStreamThread
	.align	2
	.type	VfmwProc_SetDecMode, %function
VfmwProc_SetDecMode:
	.fnstart
.LFB1778:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r6, r4, lsr #24	@ ChanID, dat,
	mov	r1, sp	@,
	mov	r5, sp	@ tmp137,
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L949	@,
	mov	r0, r6	@, ChanID
	mov	r1, sp	@,
	and	r4, r4, #3	@ tmp138, dat,
	str	r4, [sp, #24]	@ tmp138, ChanCfg.s32DecMode
	bl	VCTRL_ConfigChan	@
.L949:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecMode, .-VfmwProc_SetDecMode
	.align	2
	.type	VfmwProc_SetDecOrderOutput, %function
VfmwProc_SetDecOrderOutput:
	.fnstart
.LFB1777:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r6, r4, lsr #24	@ ChanID, dat,
	mov	r1, sp	@,
	mov	r5, sp	@ tmp137,
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L952	@,
	mov	r0, r6	@, ChanID
	mov	r1, sp	@,
	and	r4, r4, #3	@ tmp138, dat,
	str	r4, [sp, #28]	@ tmp138, ChanCfg.s32DecOrderOutput
	bl	VCTRL_ConfigChan	@
.L952:
	add	sp, sp, #72	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	VfmwProc_SetDecOrderOutput, .-VfmwProc_SetDecOrderOutput
	.align	2
	.type	VfmwProc_SetErrorThread, %function
VfmwProc_SetErrorThread:
	.fnstart
.LFB1776:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #0]	@ dat,* p_args
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r6, r4, lsr #24	@ ChanID, dat,
	mov	r1, sp	@,
	mov	r5, sp	@ tmp137,
	mov	r0, r6	@, ChanID
	bl	VCTRL_GetChanCfg	@
	cmp	r0, #0	@,
	bne	.L955	@,
	mov	r0, r6	@, ChanID
	mov	r1, sp	@,
	bic	r4, r4, #-16777216	@ tmp138, dat,
	str	r4, [sp, #16]	@ tmp138, ChanCfg.s32ChanErrThr
	bl	VCTRL_ConfigChan	@
.L955:
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
	subs	r6, r0, #0	@ ChanID, ChanID
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r1	@ pstChanState, pstChanState
	bne	.L963	@,
	cmp	r1, #0	@ pstChanState,
	beq	.L963	@,
	movw	r5, #:lower16:.LANCHOR0	@ tmp166,
	movt	r5, #:upper16:.LANCHOR0	@ tmp166,
	ldr	r1, [r5, #28]	@ D.34061, s_pstVfmwChan
	cmp	r1, #0	@ D.34061,
	beq	.L963	@,
	add	r1, r1, #1280	@, D.34061,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	str	r6, [sp, #36]	@ ChanID, RefNum
	str	r6, [sp, #32]	@ ChanID, ReadNum
	str	r6, [sp, #28]	@ ChanID, NewNum
	bl	memcpy	@
	add	r2, sp, #32	@,,
	add	r3, sp, #28	@,,
	mov	r0, r6	@, ChanID
	add	r1, sp, #36	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5, #28]	@ temp.4456, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L960	@,
	ldr	r3, [r3, #1604]	@ <variable>.stSynExtraData.s32DnrEnable, <variable>.stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ <variable>.stSynExtraData.s32DnrEnable,
	beq	.L960	@,
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, pstChanState
	ldr	r2, [sp, #36]	@, RefNum
	bl	VCTRL_GetDispState	@
	b	.L962	@
.L960:
	mov	r0, #0	@,
	mov	r1, r4	@, pstChanState
	bl	VCTRL_GetDispStateWithDNR	@
.L962:
	ldr	lr, [sp, #32]	@ ReadNum, ReadNum
	add	r1, sp, #4	@,,
	ldr	r2, [sp, #28]	@ NewNum, NewNum
	mov	r0, #0	@,
	add	ip, r2, lr	@ tmp156, NewNum, ReadNum
	str	ip, [r4, #52]	@ tmp156, <variable>.decoded_1d_frame_num
	ldr	r3, [r5, #320]	@ <variable>.u32IsFieldFlag, <variable>.u32IsFieldFlag
	str	r3, [r4, #100]	@ <variable>.u32IsFieldFlag, <variable>.is_field_flg
	ldr	lr, [r5, #308]	@ <variable>.u32FrFrameRate, <variable>.u32FrFrameRate
	str	lr, [r4, #24]	@ <variable>.u32FrFrameRate, <variable>.frame_rate
	bl	SM_GetInfo	@
	ldr	r0, [sp, #12]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	ldr	r1, [sp, #20]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	ldr	r2, [sp, #24]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	str	r0, [r4, #60]	@ ScdInstInfo.SegNum, <variable>.buffered_stream_num
	cmp	r2, #10	@ ScdInstInfo.numReadSegFail,
	movle	ip, #0	@, tmp165
	movgt	ip, #1	@, tmp165
	str	r1, [r4, #56]	@ ScdInstInfo.TotalSegSize, <variable>.buffered_stream_size
	str	ip, [r4, #84]	@ tmp165, <variable>.stream_not_enough
.L963:
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
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
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	beq	.L967	@,
.L965:
	mvn	r0, #0	@,
	bx	lr	@
.L967:
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r0, [r3, #28]	@ D.33978, s_pstVfmwChan
	cmp	r0, #0	@ D.33978,
	beq	.L965	@,
	ldr	r2, [r0, #4]	@ <variable>.s32IsOpen, <variable>.s32IsOpen
	cmp	r2, #1	@ <variable>.s32IsOpen,
	bne	.L965	@,
	add	r0, r0, #74752	@, D.33978,
	add	r0, r0, #680	@,,
	b	GetSegStreamSize	@
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	ldr	r3, [r4, #32]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ D.33916,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	ldr	r0, [r4, #28]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r0, #0	@ s_pstVfmwChan,
	beq	.L971	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChan	@
.L971:
	bl	FSP_Exit	@
	mov	r5, #0	@ i,
	mov	r1, #3	@ tmp141,
	str	r1, [r4, #64]	@ tmp141, s_VfmwCTrl.eTaskCommand
	b	.L973	@
.L978:
	bl	msleep	@
	ldr	ip, [r4, #60]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	ip, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L972	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L972	@,
.L973:
	ldr	r2, [r4, #60]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp156, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp156,
	cmp	r2, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L978	@,
.L972:
	mov	r1, #4	@,
	ldr	r0, .L979	@,
	mov	r5, #0	@ tmp145,
	str	r5, [r4, #64]	@ tmp145, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L979+4	@,
	bl	CloseDrivers	@
	mov	r0, r5	@ D.33916, tmp145
	str	r5, [r4, #32]	@ tmp145, s_VfmwCTrl.s32IsVCTRLOpen
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L980:
	.align	2
.L979:
	.word	.LANCHOR0+292
	.word	.LANCHOR0+80
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
	ldr	r3, [r4, #32]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r5, #0	@ i,
	str	r3, [r4, #64]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	.L986	@
.L984:
	bl	msleep	@
	ldr	r1, [r4, #60]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r1, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L991	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L993	@,
.L986:
	ldr	r3, [r4, #60]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L984	@,
.L991:
	mov	r2, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	r2, [r4, #64]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L993:
	mov	r2, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	r2, [r4, #64]	@ tmp143, s_VfmwCTrl.eTaskCommand
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
	ldr	r3, [r4, #32]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	mvnne	r0, #0	@ ret,
	ldmnefd	sp!, {r3, r4, r5, pc}	@
	mov	r0, #2	@ tmp139,
	mov	r5, #0	@ i,
	str	r0, [r4, #64]	@ tmp139, s_VfmwCTrl.eTaskCommand
	b	.L999	@
.L997:
	bl	msleep	@
	ldr	r2, [r4, #60]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r2, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L1004	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1006	@,
.L999:
	ldr	r1, [r4, #60]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	add	r5, r5, #1	@ tmp147, i,
	mov	r0, #10	@,
	add	r5, r5, #1	@ i, tmp147,
	cmp	r1, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L997	@,
.L1004:
	mov	ip, #0	@ tmp143,
	mov	r0, #0	@ ret,
	str	ip, [r4, #64]	@ tmp143, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1006:
	mov	ip, #0	@ tmp143,
	mvn	r0, #0	@ ret,
	str	ip, [r4, #64]	@ tmp143, s_VfmwCTrl.eTaskCommand
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp268,
	movt	r4, #:upper16:.LANCHOR0	@ tmp268,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ event_report, event_report
	ldr	r5, [r4, #32]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r5, #0	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L1025	@,
.L1008:
	mvn	r0, #0	@ D.33839,
.L1023:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L1025:
	movw	r7, #:lower16:saved_command_line	@ tmp267,
	movt	r7, #:upper16:saved_command_line	@ tmp267,
	add	r1, r4, #3680	@, tmp268,
	mov	r2, #1024	@,
	add	r0, r1, #8	@,,
	ldr	r1, [r7, #0]	@, saved_command_line
	str	r5, [sp, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, p
	bl	strlcpy	@
	add	r0, r4, #3680	@, tmp268,
	movw	r1, #:lower16:.LC14	@,
	add	r0, r0, #8	@,,
	movt	r1, #:upper16:.LC14	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp171,
	str	r0, [sp, #4]	@ tmp171, p
	beq	.L1026	@,
	add	r8, sp, #4	@ p.666,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mov	r0, r8	@, p.666
	bl	strsep	@
	subs	r3, r0, #0	@ D.42421,
	beq	.L1010	@,
	mov	r0, r8	@, p.666
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1012	@,
	mov	r1, r5	@, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	movw	r3, #5000	@ tmp178,
	movw	r1, #:lower16:-5000	@ tmp179,
	movt	r1, #:upper16:-5000	@ tmp179,
	cmp	r0, r3	@, tmp178
	movlt	r2, r0	@ prephitmp.4624,
	movge	r2, r3	@ prephitmp.4624, tmp178
	cmp	r2, r1	@ prephitmp.4624, tmp179
	movge	r3, r2	@ prephitmp.4624, prephitmp.4624
	movlt	r3, r1	@ prephitmp.4624, tmp179
.L1010:
	str	r3, [r4, #188]	@ prephitmp.4624, extra_ref
.L1012:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1028	@,
	mov	r5, #0	@ tmp183,
	str	r5, [sp, #4]	@ tmp183, p
	bl	strlcpy	@
	ldr	r0, .L1028	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	strstr	@
	cmp	r0, r5	@ tmp187,
	str	r0, [sp, #4]	@ tmp187, p
	beq	.L1027	@,
	add	r8, sp, #4	@ p.677,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mov	r0, r8	@, p.677
	bl	strsep	@
	subs	r3, r0, #0	@ D.42437,
	beq	.L1014	@,
	mov	r0, r8	@, p.677
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1016	@,
	mov	r1, r5	@, tmp183
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	movw	r3, #5000	@ tmp194,
	movw	r1, #:lower16:-5000	@ tmp195,
	movt	r1, #:upper16:-5000	@ tmp195,
	cmp	r0, r3	@, tmp194
	movlt	r2, r0	@ prephitmp.4597,
	movge	r2, r3	@ prephitmp.4597, tmp194
	cmp	r2, r1	@ prephitmp.4597, tmp195
	movge	r3, r2	@ prephitmp.4597, prephitmp.4597
	movlt	r3, r1	@ prephitmp.4597, tmp195
.L1014:
	str	r3, [r4, #192]	@ prephitmp.4597, extra_disp
.L1016:
	movw	r4, #:lower16:.LANCHOR3	@ tmp269,
	movt	r4, #:upper16:.LANCHOR3	@ tmp269,
	mov	lr, #0	@ tmp199,
	str	lr, [sp, #4]	@ tmp199, p
	ldr	r5, [r4, #-3472]	@ extra_cmd.683, extra_cmd
	cmp	r5, lr	@ extra_cmd.683,
	beq	.L1017	@,
	movw	r0, #:lower16:.LANCHOR2	@ tmp205,
	movt	r0, #:upper16:.LANCHOR2	@ tmp205,
	ubfx	r1, r5, #2, #1	@ tmp213, extra_cmd.683,,
	and	ip, r5, #1	@ tmp203, extra_cmd.683,
	strb	r1, [r4, #-3467]	@ tmp213, g_not_allow_H264FullPictureRepair_flag
	ubfx	r5, r5, #1, #1	@ tmp208, extra_cmd.683,,
	strb	ip, [r4, #-3468]	@ tmp203, g_allow_B_before_P
	strb	r5, [r0, #64]	@ tmp208, g_not_direct_8x8_inference_flag
.L1018:
	movw	r4, #:lower16:.LANCHOR0	@ tmp237,
	movt	r4, #:upper16:.LANCHOR0	@ tmp237,
	add	r0, r4, #32	@, tmp237,
	mov	r1, #152	@,
	bl	__memzero	@
	add	r0, r4, #28	@, tmp237,
	mov	r1, #4	@,
	bl	__memzero	@
	add	r0, r4, #340	@, tmp237,
	mov	r1, #4	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	mov	r0, #-2013265920	@,
	mov	r1, #75497472	@,
	movweq	r3, #:lower16:VCTRL_EventReport	@ tmp244,
	movteq	r3, #:upper16:VCTRL_EventReport	@ tmp244,
	streq	r3, [r4, #216]	@ tmp244, g_event_report
	movw	r4, #:lower16:.LANCHOR0	@ tmp245,
	movt	r4, #:upper16:.LANCHOR0	@ tmp245,
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	add	r0, r4, #292	@, tmp245,
	mov	r1, #4	@,
	bl	__memzero	@
	add	r0, r4, #80	@, tmp245,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1008	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	ldr	r0, .L1028+4	@,
	bl	OSAL_InitEvent	@
	add	r0, r4, #68	@, tmp245,
	movw	r1, #:lower16:.LC19	@,
	movw	r2, #:lower16:VFMW_CTRL_thread_proc	@,
	movt	r1, #:upper16:.LC19	@,
	movt	r2, #:upper16:VFMW_CTRL_thread_proc	@,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.33866,
	bne	.L1022	@,
	add	r0, r4, #68	@, tmp245,
	bl	OSAL_WakeupTask	@
	mov	ip, #1	@ tmp262,
	mov	r0, r5	@ D.33839, D.33866
	str	ip, [r4, #32]	@ tmp262, s_VfmwCTrl.s32IsVCTRLOpen
	b	.L1023	@
.L1017:
	ldr	r1, [r7, #0]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1028	@,
	bl	strlcpy	@
	ldr	r0, .L1028	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	strstr	@
	cmp	r0, #0	@ tmp218,
	str	r0, [sp, #4]	@ tmp218, p
	beq	.L1018	@,
	add	r7, sp, #4	@ p.692,,
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	mov	r0, r7	@, p.692
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r4, #-3472]	@ prephitmp.4595, extra_cmd
	beq	.L1020	@,
	mov	r0, r7	@, p.692
	movw	r1, #:lower16:.LC16	@,
	movt	r1, #:upper16:.LC16	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1018	@,
	mov	r1, r5	@, extra_cmd.683
	mov	r2, r5	@, tmp1
	bl	simple_strtol	@
	str	r0, [r4, #-3472]	@ prephitmp.4595, extra_cmd
.L1020:
	movw	r3, #:lower16:.LANCHOR2	@ tmp227,
	movt	r3, #:upper16:.LANCHOR2	@ tmp227,
	ubfx	lr, r0, #2, #1	@ tmp235, prephitmp.4595,,
	and	r2, r0, #1	@ tmp225, prephitmp.4595,
	strb	lr, [r4, #-3467]	@ tmp235, g_not_allow_H264FullPictureRepair_flag
	strb	r2, [r4, #-3468]	@ tmp225, g_allow_B_before_P
	ubfx	r4, r0, #1, #1	@ tmp230, prephitmp.4595,,
	strb	r4, [r3, #64]	@ tmp230, g_not_direct_8x8_inference_flag
	b	.L1018	@
.L1027:
	ldr	ip, [r4, #192]	@ pretmp.4596, extra_disp
	movw	lr, #:lower16:-5000	@ tmp190,
	movw	r5, #5000	@ tmp189,
	movt	lr, #:upper16:-5000	@ tmp190,
	cmp	ip, r5	@ pretmp.4596, tmp189
	movlt	r0, ip	@ prephitmp.4597, pretmp.4596
	movge	r0, r5	@ prephitmp.4597, tmp189
	cmp	r0, lr	@ prephitmp.4597, tmp190
	movge	r3, r0	@ prephitmp.4597, prephitmp.4597
	movlt	r3, lr	@ prephitmp.4597, tmp190
	b	.L1014	@
.L1026:
	ldr	ip, [r4, #188]	@ pretmp.4621, extra_ref
	movw	r3, #:lower16:-5000	@ tmp174,
	movw	r5, #5000	@ tmp173,
	movt	r3, #:upper16:-5000	@ tmp174,
	cmp	ip, r5	@ pretmp.4621, tmp173
	movlt	r2, ip	@ prephitmp.4624, pretmp.4621
	movge	r2, r5	@ prephitmp.4624, tmp173
	cmp	r2, r3	@ prephitmp.4624, tmp174
	movge	r3, r2	@ prephitmp.4624, prephitmp.4624
	movlt	r3, r3	@ prephitmp.4624, tmp174
	b	.L1010	@
.L1022:
	add	r0, r4, #80	@, tmp245,
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.33839,
	b	.L1023	@
.L1029:
	.align	2
.L1028:
	.word	.LANCHOR0+3688
	.word	.LANCHOR3-3464
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
	ldr	r3, [r4, #-3452]	@ LastEventTime.467, LastEventTime
	cmp	r0, r3	@ CurTime, LastEventTime.467
	mov	r5, r0	@ CurTime,
	strls	r0, [r4, #-3452]	@ CurTime, LastEventTime
	bhi	.L1035	@,
.L1032:
	ldr	r0, .L1036	@,
	bl	OSAL_GiveEvent	@
	str	r5, [r4, #-3452]	@ CurTime, LastEventTime
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1035:
	rsb	r3, r3, r0	@ tmp137, LastEventTime.467, CurTime
	cmp	r3, #9	@ tmp137,
	ldmlsfd	sp!, {r3, r4, r5, pc}	@
	b	.L1032	@
.L1037:
	.align	2
.L1036:
	.word	.LANCHOR3-3464
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
	movw	r4, #:lower16:.LANCHOR0	@ tmp159,
	movt	r4, #:upper16:.LANCHOR0	@ tmp159,
	mov	r3, #100	@ tmp139,
	ldr	r0, [r4, #204]	@ g_SleepTime.462, g_SleepTime
	str	r3, [r4, #72]	@ tmp139, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_SleepTime.462,
	ble	.L1047	@,
	bl	msleep	@
.L1047:
	ldr	r0, .L1054	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r0, [r4, #212]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp144,
	str	r2, [r4, #72]	@ tmp144, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1053	@,
.L1049:
	mov	ip, #102	@ tmp148,
	str	ip, [r4, #72]	@ tmp148, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	movw	r1, #:lower16:g_dnr_hal_fun_ptr	@ tmp149,
	movt	r1, #:upper16:g_dnr_hal_fun_ptr	@ tmp149,
	ldr	r3, [r1, #28]	@ D.33734, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.33734,
	beq	.L1050	@,
	blx	r3	@ D.33734
.L1050:
	movw	lr, #:lower16:g_vdm_hal_fun_ptr	@ tmp150,
	movt	lr, #:upper16:g_vdm_hal_fun_ptr	@ tmp150,
	ldr	r3, [lr, #56]	@ D.33738, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.33738,
	beq	.L1051	@,
	mov	r0, #0	@,
	blx	r3	@ D.33738
.L1051:
	mov	r0, #0	@,
	mov	r1, r0	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1054	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1054+4	@,
	mov	r3, #105	@ tmp154,
	str	r3, [r4, #72]	@ tmp154, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L1053:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1049	@
.L1055:
	.align	2
.L1054:
	.word	.LANCHOR0+328
	.word	.LANCHOR3-3464
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
	mov	r3, #4	@ tmp146,
	mov	r1, sp	@,
	mov	r4, #0	@ tmp145,
	str	r3, [sp, #0]	@ tmp146, enChipVersion
	movw	r5, #:lower16:.LANCHOR0	@ tmp200,
	str	r4, [sp, #4]	@ tmp145, enChipType
	bl	HI_DRV_SYS_GetChipVersion	@
	movw	sl, #:lower16:599999	@ tmp210,
	movw	r8, #:lower16:-31444992	@ tmp211,
	movt	r5, #:upper16:.LANCHOR0	@ tmp200,
	movt	sl, #:upper16:599999	@ tmp210,
	movt	r8, #:upper16:-31444992	@ tmp211,
	mov	r7, #2	@ tmp208,
	mov	r6, #1	@ tmp209,
	mov	r9, #5	@ tmp214,
.L1057:
.L1070:
	ldr	r3, [r5, #64]	@ temp.4787, s_VfmwCTrl.eTaskCommand
	str	r7, [r5, #60]	@ tmp208, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ temp.4787,
	str	r6, [r5, #72]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	bne	.L1064	@,
	b	.L1058	@
.L1061:
	str	r7, [r5, #72]	@ tmp208, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	ldr	r3, [r5, #64]	@ D.33686, s_VfmwCTrl.eTaskCommand
	str	r6, [r5, #72]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.33686,
	beq	.L1058	@,
.L1064:
	cmp	r3, #3	@ D.33686,
	beq	.L1059	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [sp, #0]	@ enChipVersion, enChipVersion
	cmp	r1, #5	@ enChipVersion,
	bne	.L1061	@,
	rsbs	ip, r4, #1	@ tmp160, time2
	movcc	ip, #0	@ tmp160
	rsb	r2, r4, r0	@ tmp155, time2, time1
	cmp	r2, sl	@ tmp155, tmp210
	orrhi	ip, ip, #1	@,, tmp163, tmp160
	cmp	ip, #0	@ tmp163,
	beq	.L1061	@,
	ldr	ip, [r8, #92]	@ reg_val,
	mov	r4, r0	@ time2, time1
	cmp	ip, #3	@ reg_val,
	cmpne	ip, #0	@, reg_val,
	bic	r1, ip, #7	@ D.33705, reg_val,
	strne	r1, [r8, #92]	@ D.33705,
	ldr	r3, [r8, #96]	@ reg_val.4780,
	cmp	r3, #3	@ reg_val.4780,
	cmpne	r3, #0	@, reg_val.4780,
	bic	lr, r3, #7	@ temp.4784, reg_val.4780,
	strne	lr, [r8, #96]	@ temp.4784,
	movne	r4, r0	@ time2, time1
	str	r7, [r5, #72]	@ tmp208, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	ldr	r3, [r5, #64]	@ D.33686, s_VfmwCTrl.eTaskCommand
	str	r6, [r5, #72]	@ tmp209, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.33686,
	bne	.L1064	@,
.L1058:
	ldr	r3, [r5, #64]	@ temp.4786, s_VfmwCTrl.eTaskCommand
	str	r6, [r5, #60]	@ tmp209, s_VfmwCTrl.eTaskState
	cmp	r3, #1	@ temp.4786,
	str	r9, [r5, #72]	@ tmp214, s_VfmwCTrl.s32ThreadPos
	beq	.L1070	@,
.L1073:
	cmp	r3, #3	@ temp.4785,
	beq	.L1059	@,
	mov	r0, #10	@,
	bl	msleep	@
	ldr	r3, [r5, #64]	@ temp.4785, s_VfmwCTrl.eTaskCommand
	str	r9, [r5, #72]	@ tmp214, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #1	@ temp.4785,
	beq	.L1070	@,
	b	.L1073	@
.L1059:
	mov	r0, #0	@ tmp198,
	mov	r2, #6	@ tmp196,
	str	r0, [r5, #60]	@ tmp198, s_VfmwCTrl.eTaskState
	str	r2, [r5, #72]	@ tmp196, s_VfmwCTrl.s32ThreadPos
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
	cmp	r0, #0	@,
	ldmnefd	sp!, {r4, pc}	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	ldmnefd	sp!, {r4, pc}	@
	bl	BPD_OpenHardware	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw	@
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.type	VfmwProc_TestResume, %function
VfmwProc_TestResume:
	.fnstart
.LFB1792:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ EntrTime,
	mov	r0, #0	@,
	mov	r5, r0	@ i,
	mvn	r6, r4	@ tmp161, EntrTime
	bl	VDMDRV_PrepareSleep	@
	b	.L1084	@
.L1083:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp165, i,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1080	@,
.L1110:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	addhi	r0, r0, r6	@ WaitTime.4874, CurTime, tmp161
	rsbls	r0, r4, r0	@ WaitTime.4874, EntrTime, CurTime
	cmp	r0, #200	@ WaitTime.4874,
	bhi	.L1119	@,
.L1108:
	add	r5, r5, #1	@ i, tmp165,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i,
	beq	.L1080	@,
.L1084:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1080	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ EntrTime, CurTime
	rsbls	r0, r4, r0	@ WaitTime.4874, EntrTime, CurTime
	addhi	r0, r0, r6	@ WaitTime.4874, CurTime, tmp161
	cmp	r0, #200	@ WaitTime.4874,
	bls	.L1083	@,
	mov	r0, #0	@,
	add	r5, r5, #1	@ tmp165, i,
	bl	VDMDRV_ForeceSleep	@
	mov	r0, #10	@,
	bl	msleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1110	@,
.L1080:
	movw	r7, #:lower16:g_vdm_hal_fun_ptr	@ tmp155,
	movt	r7, #:upper16:g_vdm_hal_fun_ptr	@ tmp155,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #4]	@ D.33612, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.33612,
	beq	.L1085	@,
	mov	r0, #0	@,
	blx	r3	@ D.33612
.L1085:
	bl	SCDDRV_PrepareSleep	@
	mov	r5, #0	@ i.4877,
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ BeginTime,
	mvn	r6, r0	@ tmp158, BeginTime
	b	.L1090	@
.L1089:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp164, i.4877,
	bl	msleep	@
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1086	@,
.L1111:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime, CurTime.4875
	addhi	r0, r0, r6	@ WaitTime, CurTime.4875, tmp158
	rsbls	r0, r4, r0	@ WaitTime, BeginTime, CurTime.4875
	cmp	r0, #200	@ WaitTime,
	bhi	.L1120	@,
.L1105:
	add	r5, r5, #1	@ i.4877, tmp164,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i.4877,
	beq	.L1086	@,
.L1090:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1086	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime, CurTime.4875
	rsbls	r0, r4, r0	@ WaitTime, BeginTime, CurTime.4875
	addhi	r0, r0, r6	@ WaitTime, CurTime.4875, tmp158
	cmp	r0, #200	@ WaitTime,
	bls	.L1089	@,
	bl	SCDDRV_ForceSleep	@
	mov	r0, #10	@,
	bl	msleep	@
	add	r5, r5, #1	@ tmp164, i.4877,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1111	@,
.L1086:
	ldr	r3, [r7, #12]	@ D.33626, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r3, #0	@ D.33626,
	beq	.L1091	@,
	blx	r3	@ D.33626
.L1091:
	bl	DNRDRV_PrepareSleep	@
	mov	r5, #0	@ i.4881,
	bl	OSAL_GetTimeInMs	@
	mov	r4, r0	@ BeginTime.4878,
	mvn	r6, r0	@ tmp156, BeginTime.4878
	b	.L1096	@
.L1095:
	mov	r0, #10	@,
	add	r5, r5, #1	@ tmp163, i.4881,
	bl	msleep	@
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1092	@,
.L1112:
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime.4878, CurTime.4879
	addhi	r0, r0, r6	@ WaitTime.4873, CurTime.4879, tmp156
	rsbls	r0, r4, r0	@ WaitTime.4873, BeginTime.4878, CurTime.4879
	cmp	r0, #200	@ WaitTime.4873,
	bhi	.L1121	@,
.L1102:
	add	r5, r5, #1	@ i.4881, tmp163,
	mov	r0, #10	@,
	bl	msleep	@
	cmp	r5, #50	@ i.4881,
	beq	.L1092	@,
.L1096:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L1092	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r4, r0	@ BeginTime.4878, CurTime.4879
	rsbls	r0, r4, r0	@ WaitTime.4873, BeginTime.4878, CurTime.4879
	addhi	r0, r0, r6	@ WaitTime.4873, CurTime.4879, tmp156
	cmp	r0, #200	@ WaitTime.4873,
	bls	.L1095	@,
	bl	DNRDRV_ForeceSleep	@
	mov	r0, #10	@,
	bl	msleep	@
	add	r5, r5, #1	@ tmp163, i.4881,
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	bne	.L1112	@,
.L1092:
	bl	VCTRL_StopVfmw	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	OSAL_GetTimeInMs	@
.L1119:
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	b	.L1108	@
.L1120:
	bl	SCDDRV_ForceSleep	@
	b	.L1105	@
.L1121:
	bl	DNRDRV_ForeceSleep	@
	b	.L1102	@
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.type	VfmwProc_TestSuspend, %function
VfmwProc_TestSuspend:
	.fnstart
.LFB1791:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
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
	mov	r1, #28	@,
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
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
	.type	CSWTCH.805, %object
	.size	CSWTCH.805, 32
CSWTCH.805:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
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
	.type	CSWTCH.820, %object
	.size	CSWTCH.820, 32
CSWTCH.820:
	.word	3
	.word	3
	.word	3
	.word	3
	.word	3
	.word	1
	.word	1
	.word	1
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
	.ascii	"%s/vfmw_yuv_save_%d.yuv\000"
.LC1:
	.ascii	"%s/vfmw_seg_save_%d.dat\000"
.LC2:
	.ascii	"%s/vfmw_raw_save_%d.dat\000"
.LC3:
	.ascii	"%s/1d_0x%x.yuv\000"
	.space	1
.LC4:
	.ascii	"%s/2d_0x%x.yuv\000"
	.space	1
.LC5:
	.ascii	"vdec_vdh\000"
	.space	3
.LC6:
	.ascii	"vdec_scd\000"
	.space	3
.LC7:
	.ascii	"vdec_dnr\000"
	.space	3
.LC8:
	.ascii	"VFMW_Hal_%d\000"
.LC9:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC10:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC11:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC12:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC13:
	.ascii	"VFMW_Chan_Pmv\000"
	.space	2
.LC14:
	.ascii	"extra_ref=\000"
	.space	1
.LC15:
	.ascii	"=\000"
	.space	2
.LC16:
	.ascii	" \000"
	.space	2
.LC17:
	.ascii	"extra_disp=\000"
.LC18:
	.ascii	"extra_cmd=\000"
	.space	1
.LC19:
	.ascii	"HI_VFMW_VideoDecode\000"
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
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 4
s_pstVfmwChan:
	.space	4
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	g_scd_vir, %object
	.size	g_scd_vir, 4
g_scd_vir:
	.space	4
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	g_EsBufValidFlag, %object
	.size	g_EsBufValidFlag, 4
g_EsBufValidFlag:
	.space	4
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_file_cnt.37659, %object
	.size	save_file_cnt.37659, 4
save_file_cnt.37659:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_file_cnt.37637, %object
	.size	save_file_cnt.37637, 4
save_file_cnt.37637:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	save_file_cnt.37615, %object
	.size	save_file_cnt.37615, 4
save_file_cnt.37615:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_VfmwIrqHandle, %object
	.size	g_VfmwIrqHandle, 4
g_VfmwIrqHandle:
	.space	4
	.type	last_rec_pos_time.37065, %object
	.size	last_rec_pos_time.37065, 4
last_rec_pos_time.37065:
	.space	4
	.type	last_rec_pos_report_time.37066, %object
	.size	last_rec_pos_report_time.37066, 4
last_rec_pos_report_time.37066:
	.space	4
	.type	last_rec_pos_decparam_time.37067, %object
	.size	last_rec_pos_decparam_time.37067, 4
last_rec_pos_decparam_time.37067:
	.space	4
	.type	ChanPriTab.36878, %object
	.size	ChanPriTab.36878, 4
ChanPriTab.36878:
	.space	4
	.type	g_DSPState, %object
	.size	g_DSPState, 4
g_DSPState:
	.space	4
	.type	PrioArray.34962, %object
	.size	PrioArray.34962, 4
PrioArray.34962:
	.space	4
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 24
g_VfmwChanStat:
	.space	24
	.type	PrioArray.34996, %object
	.size	PrioArray.34996, 4
PrioArray.34996:
	.space	4
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_ChanTick, %object
	.size	g_ChanTick, 4
g_ChanTick:
	.space	4
	.type	FspInstInfo.34097, %object
	.size	FspInstInfo.34097, 3340
FspInstInfo.34097:
	.space	3340
	.type	PrioArray.35466, %object
	.size	PrioArray.35466, 4
PrioArray.35466:
	.space	4
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
	.type	LastEventTime.33766, %object
	.size	LastEventTime.33766, 4
LastEventTime.33766:
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
