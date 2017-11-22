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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(syntax)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.syntax.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.o
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
	.global	ProduceTimeStamp
	.type	ProduceTimeStamp, %function
ProduceTimeStamp:
	.fnstart
.LFB1599:
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
	ldrd	r6, [r0, r3]	@ D.34457, pstVoQue, tmp140
	mov	r9, r5	@, ThisFramePts
	subs	r8, r8, r6	@ tmp141, tmp141, D.34457
	sbc	r9, r9, r7	@ tmp141, tmp141, D.34457
	cmp	r9, #0	@ tmp141,
	cmpeq	r8, #5	@ tmp141,
	bhi	.L3	@,
	mvn	r8, #0	@ tmp142,
	mvn	r9, #0	@,
	cmp	r7, r9	@ D.34457, tmp142
	cmpeq	r6, r8	@ D.34457, tmp142
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
	.global	InsertImgToVoQueue_FillImageInfo
	.type	InsertImgToVoQueue_FillImageInfo, %function
InsertImgToVoQueue_FillImageInfo:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r3	@ p_image, p_image
	ldr	r3, [r3, #152]	@ <variable>.disp_width, <variable>.disp_width
	.pad #8
	sub	sp, sp, #8	@,,
	mov	sl, r0	@ ChanID, ChanID
	mov	r5, r2	@ pstVoQue, pstVoQue
	cmp	r3, #0	@ <variable>.disp_width,
	beq	.L11	@,
	ldr	r3, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	cmp	r3, #0	@ <variable>.disp_height,
	bne	.L22	@,
.L11:
	ldr	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	r1, r3, lsr #1	@ tmp159, <variable>.image_width,
	str	r3, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	mov	r2, r0, lsr #1	@ tmp161, <variable>.image_height,
	str	r0, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	r1, [r4, #160]	@ tmp159, <variable>.disp_center_x
	str	r2, [r4, #164]	@ tmp161, <variable>.disp_center_y
.L12:
	str	r3, [r5, #300]	@ <variable>.image_width, <variable>.SideInfo.ImageWidth
	ldr	r7, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	ldr	r6, [r5, #280]	@ <variable>.SideInfo.OldSeqCnt, <variable>.SideInfo.OldSeqCnt
	str	r7, [r5, #304]	@ <variable>.image_height, <variable>.SideInfo.ImageHeight
	ldr	r2, [r4, #140]	@ <variable>.format, <variable>.format
	ubfx	r9, r2, #5, #3	@ tmp168, <variable>.format,,
	str	r9, [r5, #308]	@ tmp168, <variable>.SideInfo.VideoFormat
	ldr	r0, [r4, #140]	@ <variable>.format, <variable>.format
	str	r0, [r5, #312]	@ <variable>.format, <variable>.SideInfo.ImageFormat
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	ip, r3, #2	@ tmp171, <variable>.image_id,
	ldr	r3, [r5, #316]	@ D.34524, <variable>.SideInfo.SeqImgCnt
	str	ip, [r5, #296]	@ tmp171, <variable>.SideInfo.LastImageIdPlus2
	ldr	r0, [r4, #184]	@ D.34520, <variable>.seq_cnt
	add	ip, r3, #1	@ tmp185, D.34524,
	ldr	r9, [r4, #160]	@ <variable>.disp_center_x, <variable>.disp_center_x
	ldrh	r2, [r4, #164]	@ tmp179, <variable>.disp_center_y
	cmp	r0, r6	@ D.34520, <variable>.SideInfo.OldSeqCnt
	ldr	r7, [r4, #140]	@ temp.602, <variable>.format
	ldr	r8, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	orr	r9, r2, r9, asl #16	@, dcenter, tmp179, <variable>.disp_center_x,
	ldrh	r1, [r4, #152]	@ tmp174, <variable>.disp_width
	ubfx	r6, r7, #8, #2	@ ScanType, temp.602,,
	strne	r0, [r5, #320]	@ D.34520, <variable>.SideInfo.SeqCnt
	ubfx	r7, r7, #14, #3	@ AspectRatio, temp.602,,
	str	r3, [r4, #188]	@ D.34524, <variable>.seq_img_cnt
	orr	r8, r1, r8, asl #16	@, dsize, tmp174, <variable>.disp_height,
	ldr	r2, [r5, #272]	@ D.34526, <variable>.SideInfo.OldAspectRatio
	str	ip, [r5, #316]	@ tmp185, <variable>.SideInfo.SeqImgCnt
	cmp	r2, r7	@ D.34526, AspectRatio
	beq	.L14	@,
	movw	r1, #:lower16:g_event_report	@ tmp186,
	movt	r1, #:upper16:g_event_report	@ tmp186,
	ldr	r3, [r1, #0]	@ g_event_report.444, g_event_report
	cmp	r3, #0	@ g_event_report.444,
	beq	.L15	@,
	strb	r2, [sp, #0]	@ D.34526, para
	mov	r0, sl	@, ChanID
	strb	r7, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.444
.L15:
	str	r7, [r5, #272]	@ AspectRatio, <variable>.SideInfo.OldAspectRatio
.L14:
	ldr	ip, [r5, #276]	@ <variable>.SideInfo.OldScanType, <variable>.SideInfo.OldScanType
	cmp	ip, r6	@ <variable>.SideInfo.OldScanType, ScanType
	beq	.L16	@,
	movw	r3, #:lower16:g_event_report	@ tmp191,
	movt	r3, #:upper16:g_event_report	@ tmp191,
	ldr	r3, [r3, #0]	@ g_event_report.605, g_event_report
	cmp	r3, #0	@ g_event_report.605,
	beq	.L17	@,
	add	lr, sp, #8	@ tmp193,,
	mov	r0, sl	@, ChanID
	mov	r2, sp	@,
	mov	r1, #4	@,
	strb	r6, [lr, #-8]!	@ ScanType, para
	blx	r3	@ g_event_report.605
.L17:
	str	r6, [r5, #276]	@ ScanType, <variable>.SideInfo.OldScanType
.L16:
	ldr	r0, [r5, #288]	@ <variable>.SideInfo.OldDispSize, <variable>.SideInfo.OldDispSize
	cmp	r0, r8	@ <variable>.SideInfo.OldDispSize, dsize
	beq	.L23	@,
.L18:
	movw	r1, #:lower16:g_event_report	@ tmp196,
	movt	r1, #:upper16:g_event_report	@ tmp196,
	str	r8, [r5, #288]	@ dsize, <variable>.SideInfo.OldDispSize
	str	r9, [r5, #292]	@ dcenter, <variable>.SideInfo.OldDispCenter
	ldr	r3, [r1, #0]	@ g_event_report.606, g_event_report
	cmp	r3, #0	@ g_event_report.606,
	beq	.L19	@,
	ldrh	r2, [r4, #152]	@, <variable>.disp_width
	mov	r1, #1	@,
	strh	r2, [sp, #0]	@ movhi	@, para
	mov	r2, sp	@,
	ldrh	r0, [r4, #156]	@, <variable>.disp_height
	strh	r0, [sp, #2]	@ movhi	@, para
	mov	r0, sl	@, ChanID
	ldrh	lr, [r4, #160]	@, <variable>.disp_center_x
	strh	lr, [sp, #4]	@ movhi	@, para
	ldrh	ip, [r4, #164]	@, <variable>.disp_center_y
	strh	ip, [sp, #6]	@ movhi	@, para
	blx	r3	@ g_event_report.606
.L19:
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	r3, ip, #2	@ tmp203, <variable>.image_id,
	str	r3, [r5, #296]	@ tmp203, <variable>.SideInfo.LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.34551, <variable>.luma_phy_addr
	ldr	r3, [r4, #108]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	r2, [r4, #88]	@ D.34551, <variable>.top_luma_phy_addr
	add	r0, r1, r3	@ tmp209, <variable>.image_stride, <variable>.chrom_phy_addr
	add	ip, r1, r2	@ tmp205, <variable>.image_stride, D.34551
	str	r0, [r4, #100]	@ tmp209, <variable>.btm_chrom_phy_addr
	str	ip, [r4, #96]	@ tmp205, <variable>.btm_luma_phy_addr
	str	r3, [r4, #92]	@ <variable>.chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L22:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	beq	.L12	@,
	b	.L11	@
.L23:
	ldr	r2, [r5, #292]	@ <variable>.SideInfo.OldDispCenter, <variable>.SideInfo.OldDispCenter
	cmp	r2, r9	@ <variable>.SideInfo.OldDispCenter, dcenter
	bne	.L18	@,
	b	.L19	@
	.fnend
	.size	InsertImgToVoQueue_FillImageInfo, .-InsertImgToVoQueue_FillImageInfo
	.align	2
	.global	GetQueueImgNum
	.type	GetQueueImgNum, %function
GetQueueImgNum:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!	@,
	.save {r4}
	ldrh	r3, [r0, #6]	@ D.34653, <variable>.head
	ldrh	ip, [r0, #4]	@ D.34654, <variable>.history
	ldrh	r0, [r0, #8]	@ D.34662, <variable>.tail
	cmp	r3, ip	@ D.34653, D.34654
	addcc	r4, r3, #64	@ tmp142, D.34653,
	rsbcs	ip, ip, r3	@ ReadNum, D.34654, D.34653
	rsbcc	ip, ip, r4	@ ReadNum, D.34654, tmp142
	cmp	r3, r0	@ D.34653, D.34662
	addhi	r0, r0, #64	@ tmp143, D.34662,
	str	ip, [r1, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r3, r0	@ NewNum, D.34653, tmp143
	str	r3, [r2, #0]	@ NewNum,* pNewImgNum
	ldmfd	sp!, {r4}
	bx	lr
	.fnend
	.size	GetQueueImgNum, .-GetQueueImgNum
	.align	2
	.global	SYNTAX_GetVoQue
	.type	SYNTAX_GetVoQue, %function
SYNTAX_GetVoQue:
	.fnstart
.LFB1604:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L32	@
.L43:
	.word	.L47
	.word	.L34
	.word	.L35
	.word	.L36
	.word	.L37
	.word	.L38
	.word	.L39
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L40
	.word	.L40
	.word	.L40
	.word	.L41
	.word	.L37
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L42
.L37:
	add	r0, r0, #20480	@ pstVoQue, pSynCtx,
.L47:
	add	r0, r0, #16	@ pstVoQue, pstVoQue,
	bx	lr	@
.L34:
	add	ip, r0, #112640	@ pstVoQue, pSynCtx,
	add	r0, ip, #736	@ pstVoQue, pstVoQue,
	bx	lr	@
.L35:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r0, r1, #88	@ pstVoQue, pstVoQue,
	bx	lr	@
.L36:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
	bx	lr	@
.L38:
	add	r3, r0, #26624	@ pstVoQue, pSynCtx,
	add	r0, r3, #24	@ pstVoQue, pstVoQue,
	bx	lr	@
.L39:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r0, r2, #32	@ pstVoQue, pstVoQue,
	bx	lr	@
.L40:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp143,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp143,
	ldr	r1, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	addeq	r0, r0, #20480	@ pstVoQue, pSynCtx,
	addne	r0, r0, #12608	@ pstVoQue, pSynCtx,
	addeq	r0, r0, #16	@ pstVoQue, pstVoQue,
	addne	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L41:
	add	r0, r0, #8128	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L42:
	add	r0, r0, #16	@ pstVoQue, pSynCtx,
	bx	lr	@
.L32:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
	.fnend
	.size	SYNTAX_GetVoQue, .-SYNTAX_GetVoQue
	.align	2
	.global	SYNTAX_ReleaseImage_RecycleImage_CheckRet
	.type	SYNTAX_ReleaseImage_RecycleImage_CheckRet, %function
SYNTAX_ReleaseImage_RecycleImage_CheckRet:
	.fnstart
.LFB1606:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #14	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L49	@
.L53:
	.word	.L51
	.word	.L49
	.word	.L49
	.word	.L49
	.word	.L51
	.word	.L49
	.word	.L49
	.word	.L49
	.word	.L49
	.word	.L49
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L49
	.word	.L51
.L52:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp138,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp138,
	ldr	r0, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L57	@,
.L51:
	cmp	r1, #0	@ RetValue,
	beq	.L54	@,
.L55:
	mvn	r0, #19	@ ret,
	bx	lr	@
.L49:
	cmn	r1, #2	@ RetValue,
	moveq	r0, r1	@ ret, RetValue
	bxeq	lr	@
.L57:
	cmp	r1, #1	@ RetValue,
	bne	.L55	@,
.L54:
	mov	r0, #1	@ ret,
	bx	lr	@
	.fnend
	.size	SYNTAX_ReleaseImage_RecycleImage_CheckRet, .-SYNTAX_ReleaseImage_RecycleImage_CheckRet
	.align	2
	.global	CheckNewPicSegMpeg2
	.type	CheckNewPicSegMpeg2, %function
CheckNewPicSegMpeg2:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.701,
	mov	r2, r0	@ pNewPicDetector, pNewPicDetector
	cmp	r3, #0	@ prephitmp.701,
	cmpne	r3, #179	@, prephitmp.701,
	beq	.L63	@,
	cmp	r3, #184	@ prephitmp.701,
	beq	.L63	@,
	cmp	r3, #183	@ prephitmp.701,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
.L63:
	ldr	r0, [r2, #0]	@ tmp146,* pNewPicDetector
	cmp	r0, #0	@ tmp146,
	moveq	r3, #1	@ tmp147,
	streq	r3, [r2, #0]	@ tmp147,* pNewPicDetector
	ldreqb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.701,
	mvnne	r0, #0	@ ret,
	cmp	r3, #0	@ prephitmp.701,
	streq	r3, [r2, #0]	@ prephitmp.701,* pNewPicDetector
	bx	lr	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegMpeg4
	.type	CheckNewPicSegMpeg4, %function
CheckNewPicSegMpeg4:
	.fnstart
.LFB1624:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.726,
	add	ip, r3, #75	@ tmp140, prephitmp.726,
	uxtb	ip, ip	@ tmp142, tmp140
	cmp	r3, #179	@ prephitmp.726,
	cmpne	ip, #1	@, tmp142,
	bls	.L69	@,
	cmp	r3, #176	@ prephitmp.726,
	beq	.L69	@,
	cmp	r3, #47	@ prephitmp.726,
	bhi	.L70	@,
.L69:
	ldr	ip, [r0, #0]	@ tmp149,* pNewPicDetector
	cmp	ip, #0	@ tmp149,
	bne	.L70	@,
.L71:
	mov	r3, #1	@ tmp150,
	str	r3, [r0, #0]	@ tmp150,* pNewPicDetector
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.726,
	mov	r2, #0	@ ret,
.L72:
	cmp	r3, #182	@ prephitmp.726,
	moveq	r3, #0	@ tmp151,
	streq	r3, [r0, #0]	@ tmp151,* pNewPicDetector
	mov	r0, r2	@, ret
	bx	lr	@
.L70:
	cmp	r2, #1	@ IsShortHead,
	mvnne	r2, #0	@ ret,
	bne	.L72	@,
	b	.L71	@
	.fnend
	.size	CheckNewPicSegMpeg4, .-CheckNewPicSegMpeg4
	.align	2
	.global	CheckNewPicSegAVS
	.type	CheckNewPicSegAVS, %function
CheckNewPicSegAVS:
	.fnstart
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.753,
	mov	r2, r0	@ pNewPicDetector, pNewPicDetector
	cmp	r3, #179	@ prephitmp.753,
	movne	ip, #0	@, prephitmp.755
	moveq	ip, #1	@, prephitmp.755
	cmp	r3, #179	@ prephitmp.753,
	cmpne	r3, #176	@, prephitmp.753,
	beq	.L76	@,
	cmp	r3, #182	@ prephitmp.753,
	beq	.L76	@,
	cmp	r3, #183	@ prephitmp.753,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
.L76:
	ldr	r0, [r2, #0]	@ tmp147,* pNewPicDetector
	cmp	r0, #0	@ tmp147,
	mvnne	r0, #0	@ ret,
	beq	.L81	@,
.L79:
	cmp	r3, #182	@ prephitmp.753,
	movne	r1, ip	@, tmp155, prephitmp.755
	orreq	r1, ip, #1	@,, tmp155, prephitmp.755
	cmp	r1, #0	@ tmp155,
	movne	r1, #0	@ tmp156,
	strne	r1, [r2, #0]	@ tmp156,* pNewPicDetector
	bx	lr	@
.L81:
	mov	r3, #1	@ tmp148,
	str	r3, [r2, #0]	@ tmp148,* pNewPicDetector
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.753,
	cmp	r3, #179	@ prephitmp.753,
	movne	ip, #0	@, prephitmp.755
	moveq	ip, #1	@, prephitmp.755
	b	.L79	@
	.fnend
	.size	CheckNewPicSegAVS, .-CheckNewPicSegAVS
	.align	2
	.global	CheckNewPicSegVC1
	.type	CheckNewPicSegVC1, %function
CheckNewPicSegVC1:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.780,
	mov	r2, r0	@ pNewPicDetector, pNewPicDetector
	cmp	r3, #10	@ prephitmp.780,
	cmpne	r3, #12	@, prephitmp.780,
	beq	.L83	@,
	cmp	r3, #13	@ prephitmp.780,
	beq	.L83	@,
	cmp	r3, #14	@ prephitmp.780,
	beq	.L83	@,
	cmp	r3, #15	@ prephitmp.780,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
.L83:
	ldr	r0, [r2, #0]	@ tmp146,* pNewPicDetector
	cmp	r0, #0	@ tmp146,
	moveq	r3, #1	@ tmp147,
	streq	r3, [r2, #0]	@ tmp147,* pNewPicDetector
	ldreqb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.780,
	mvnne	r0, #0	@ ret,
	cmp	r3, #13	@ prephitmp.780,
	moveq	r3, #0	@ tmp148,
	streq	r3, [r2, #0]	@ tmp148,* pNewPicDetector
	bx	lr	@
	.fnend
	.size	CheckNewPicSegVC1, .-CheckNewPicSegVC1
	.align	2
	.global	OpenUsdPool_WithMem
	.type	OpenUsdPool_WithMem, %function
OpenUsdPool_WithMem:
	.fnstart
.LFB1629:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	ip, [r3, r0, asl #2]	@ D.35871, pstVdecUsdPool
	cmp	ip, #0	@ D.35871,
	beq	.L95	@,
.L89:
	mov	r1, #0	@ tmp174,
	mov	r3, ip	@ ivtmp.823, D.35871
	mov	r2, r1	@ i, tmp174
	mov	r0, r1	@ tmp178, i
	str	r1, [ip, #0]	@ tmp174, <variable>.s32AccessIdx
.L91:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp180, ivtmp.823,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp178, <variable>.from
	str	r0, [r3, #1040]	@ tmp178, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.823, ivtmp.823,
	str	r0, [ip, #1040]	@ tmp178, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp178, <variable>.from
	bne	.L91	@,
	bx	lr	@
.L95:
	cmp	r1, #0	@ D.35871,
	str	r1, [r3, r0, asl #2]	@ D.35871, pstVdecUsdPool
	mov	ip, r1	@ D.35871, Viraddr
	mvneq	r0, #0	@ ret,
	bxeq	lr	@
	b	.L89	@
	.fnend
	.size	OpenUsdPool_WithMem, .-OpenUsdPool_WithMem
	.align	2
	.global	CloseUsdPool_WithMem
	.type	CloseUsdPool_WithMem, %function
CloseUsdPool_WithMem:
	.fnstart
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp134,
	movt	r3, #:upper16:.LANCHOR0	@ tmp134,
	mov	r2, #0	@ tmp135,
	str	r2, [r3, r0, asl #2]	@ tmp135, pstVdecUsdPool
	bx	lr	@
	.fnend
	.size	CloseUsdPool_WithMem, .-CloseUsdPool_WithMem
	.align	2
	.global	InitUsdPool
	.type	InitUsdPool, %function
InitUsdPool:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r1, [r3, r0, asl #2]	@ D.35733, pstVdecUsdPool
	cmp	r1, #0	@ D.35733,
	mvneq	r0, #0	@ D.35737,
	bxeq	lr	@
	mov	r0, #0	@ tmp140,
	mov	r3, r1	@ ivtmp.880, D.35733
	mov	r2, r0	@ i, tmp140
	str	r0, [r1, #0]	@ tmp140, <variable>.s32AccessIdx
.L101:
	add	r2, r2, #2	@ i, i,
	add	r1, r3, #1072	@ tmp145, ivtmp.880,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp144, <variable>.from
	str	r0, [r3, #1040]	@ tmp144, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.880, ivtmp.880,
	str	r0, [r1, #1040]	@ tmp144, <variable>.dnr_used_flag
	str	r0, [r1, #1044]	@ tmp144, <variable>.from
	bne	.L101	@,
	bx	lr	@
	.fnend
	.size	InitUsdPool, .-InitUsdPool
	.align	2
	.global	GetUsd
	.type	GetUsd, %function
GetUsd:
	.fnstart
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r0, [r3, r0, asl #2]	@ D.35748, pstVdecUsdPool
	cmp	r0, #0	@ D.35748,
	bne	.L116	@,
.L106:
	mov	r0, #0	@ pstUsrDat,
.L108:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L116:
	mov	r2, r0	@ ivtmp.913, D.35748
	mov	r3, #0	@ i,
	b	.L109	@
.L107:
	ldr	r2, [r1, #1044]	@ <variable>.from, <variable>.from
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.from,
	mov	ip, r3	@ tmp203, i
	bne	.L112	@,
	ldr	r2, [r1, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	beq	.L115	@,
.L112:
	add	r3, ip, #1	@ i, tmp203,
	add	r2, r1, #1072	@ ivtmp.913, tmp204,
	cmp	r3, #192	@ i,
	beq	.L106	@,
.L109:
	ldr	ip, [r2, #1044]	@ <variable>.from, <variable>.from
	add	r1, r2, #1072	@ tmp204, ivtmp.913,
	cmp	ip, #0	@ <variable>.from,
	bne	.L107	@,
	ldr	r2, [r2, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	bne	.L107	@,
.L115:
	mov	r1, #1072	@ tmp150,
	mov	r5, #134	@ tmp145,
	mla	ip, r3, r1, r1	@ tmp179, i, tmp150, tmp150
	mul	r4, r5, r3	@ tmp144, tmp145, i
	mla	r3, r1, r3, r0	@ tmp151, tmp150, i, D.35748
	add	r5, ip, r0	@ tmp181, tmp179, D.35748
	add	r4, r4, #1	@ tmp146, tmp144,
	movw	r1, #1064	@ tmp154,
	strb	r2, [ip, r0]	@ <variable>.dnr_used_flag, <variable>.IsRegistered
	strh	r2, [r5, #4]	@ movhi	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_provider_code
	add	r0, r0, r4, asl #3	@, pstUsrDat, D.35748, tmp146,
	strb	r2, [r5, #1]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code
	mov	r4, #0	@ tmp159,
	strb	r2, [r5, #2]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code_extension_byte
	mov	r5, #0	@,
	str	r2, [r3, #1048]	@ <variable>.dnr_used_flag, <variable>.seq_cnt
	strd	r4, [r3, r1]	@ tmp159, tmp151, tmp154
	str	r2, [r3, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	str	r2, [r3, #1056]	@ <variable>.dnr_used_flag, <variable>.data_size
	str	r2, [r3, #1052]	@ <variable>.dnr_used_flag, <variable>.seq_img_cnt
	b	.L108	@
	.fnend
	.size	GetUsd, .-GetUsd
	.align	2
	.global	FreeUsdByDec
	.type	FreeUsdByDec, %function
FreeUsdByDec:
	.fnstart
.LFB1633:
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
.LFB1634:
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
.LFB1635:
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
.LFB1638:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #296]	@ D.35824, <variable>.SideInfo.LastImageIdPlus2
	cmp	r0, #1	@ D.35824,
	mvnls	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.align	2
	.global	SetAspectRatio
	.type	SetAspectRatio, %function
SetAspectRatio:
	.fnstart
.LFB1637:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ pImg, pImg
	cmp	r1, #5	@ Code,
	ldrls	pc, [pc, r1, asl #2]	@ Code
	b	.L130	@
.L137:
	.word	.L131
	.word	.L132
	.word	.L133
	.word	.L134
	.word	.L135
	.word	.L136
.L136:
	mov	ip, #0	@ tmp145,
	mov	r1, #2	@ tmp146,
	str	ip, [r0, #60]	@ tmp145, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp146, <variable>.u32AspectHeight
	bx	lr	@
.L130:
	mov	r0, #1	@ tmp148,
	mov	r2, r1	@, Code
	str	r0, [r3, #64]	@ tmp148, <variable>.u32AspectHeight
	mov	r1, #0	@ tmp147,
	str	r1, [r3, #60]	@ tmp147, <variable>.u32AspectWidth
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	b	dprint_vfmw	@
.L131:
	mov	r0, #0	@ tmp135,
	mov	r2, #1	@ tmp136,
	str	r0, [r3, #60]	@ tmp135, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp136, <variable>.u32AspectHeight
	bx	lr	@
.L132:
	mov	ip, #4	@ tmp137,
	mov	r1, #3	@ tmp138,
	str	ip, [r0, #60]	@ tmp137, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp138, <variable>.u32AspectHeight
	bx	lr	@
.L133:
	mov	r0, #16	@ tmp139,
	mov	r2, #9	@ tmp140,
	str	r0, [r3, #60]	@ tmp139, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp140, <variable>.u32AspectHeight
	bx	lr	@
.L134:
	mov	ip, #221	@ tmp141,
	mov	r1, #100	@ tmp142,
	str	ip, [r0, #60]	@ tmp141, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp142, <variable>.u32AspectHeight
	bx	lr	@
.L135:
	mov	r0, #235	@ tmp143,
	mov	r2, #100	@ tmp144,
	str	r0, [r3, #60]	@ tmp143, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp144, <variable>.u32AspectHeight
	bx	lr	@
	.fnend
	.size	SetAspectRatio, .-SetAspectRatio
	.align	2
	.global	IsImageInVoQueue
	.type	IsImageInVoQueue, %function
IsImageInVoQueue:
	.fnstart
.LFB1636:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_image
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L149	@,
	ldrh	r3, [r0, #4]	@ i, <variable>.history
	ldrh	r4, [r0, #8]	@ D.35794, <variable>.tail
	and	r3, r3, #63	@ i.1053, i,
	cmp	r4, r3	@ D.35794, i.1053
	bne	.L147	@,
	b	.L143	@
.L144:
	cmp	r3, r4	@ i.1053, D.35794
	beq	.L143	@,
.L147:
	add	r2, r0, r3, asl #2	@, tmp146, pstVoQue, i.1053,
	add	ip, r3, #1	@ i.1054, i.1053,
	and	r3, ip, #63	@ i.1053, i.1054,
	ldr	r2, [r2, #12]	@ D.35797, <variable>.image_ptr
	cmp	r2, #0	@ D.35797,
	beq	.L144	@,
	ldr	ip, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L144	@,
	mov	r0, #0	@ D.35791,
	ldmfd	sp!, {r4, pc}	@
.L143:
	mvn	r0, #0	@ D.35791,
	ldmfd	sp!, {r4, pc}	@
.L149:
	mov	r0, r1	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35791,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	IsImageInVoQueue, .-IsImageInVoQueue
	.align	2
	.global	InsertImgToVoQueue_PtsProcess
	.type	InsertImgToVoQueue_PtsProcess, %function
InsertImgToVoQueue_PtsProcess:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, r8, r9, lr}	@,
	.save {r4, r6, r7, r8, r9, lr}
	ldrd	r6, [r1, #8]	@ <variable>.PTS, p_image,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r1	@ p_image, p_image
	strd	r6, [r1]	@ <variable>.PTS, <variable>.SrcPts
	bl	ProduceTimeStamp	@
	ldrd	r8, [r4, #16]	@ <variable>.Usertag, p_image,
	ldrd	r2, [r4]	@ <variable>.SrcPts, <variable>.SrcPts
	mov	r6, r0	@ D.34472,
	mov	r7, r1	@ D.34472,
	mov	r0, #29	@,
	strd	r6, [r4, #8]	@ D.34472, p_image,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	strd	r6, [sp]	@ D.34472,
	strd	r8, [sp, #8]	@ <variable>.Usertag,,
	bl	dprint_vfmw	@
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r6, r7, r8, r9, pc}
	.fnend
	.size	InsertImgToVoQueue_PtsProcess, .-InsertImgToVoQueue_PtsProcess
	.align	2
	.global	CheckNewPicSegByVidStd
	.type	CheckNewPicSegByVidStd, %function
CheckNewPicSegByVidStd:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r2, #0]	@ pu8, <variable>.VirAddr
	cmp	r1, #6	@ VidStd,
	ldrls	pc, [pc, r1, asl #2]	@ VidStd
	b	.L155	@
.L161:
	.word	.L156
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L155
	.word	.L155
	.word	.L160
.L160:
	mov	r1, r2	@, pu8
	b	CheckNewPicSegAVS	@
.L155:
	mvn	r0, #0	@,
	bx	lr	@
.L156:
	mov	r1, r2	@, pu8
	b	H264_IsNewPicNal	@
.L157:
	mov	r1, r2	@, pu8
	b	CheckNewPicSegVC1	@
.L158:
	mov	r1, r2	@, pu8
	mov	r2, r3	@, IsShortHead
	b	CheckNewPicSegMpeg4	@
.L159:
	mov	r1, r2	@, pu8
	b	CheckNewPicSegMpeg2	@
	.fnend
	.size	CheckNewPicSegByVidStd, .-CheckNewPicSegByVidStd
	.align	2
	.global	IsNewpicSeg
	.type	IsNewpicSeg, %function
IsNewpicSeg:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2	@ VidStd,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r4, [r2, #0]	@ pu8, <variable>.VirAddr
	beq	.L173	@,
.L165:
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ D.35694,* pu8
	cmp	r5, #0	@ D.35694,
	bne	.L174	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.1119,
	cmp	r3, #0	@ prephitmp.1119,
	ldrneb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.1123,
	bne	.L168	@,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.1123,
	cmp	ip, #1	@ prephitmp.1123,
	bne	.L168	@,
.L170:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, lr}
	b	CheckNewPicSegByVidStd	@
.L173:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ tmp144,
	tst	r3, #1	@ tmp144,
	movne	r3, #1	@ IsShortHead,
	bne	.L170	@,
	b	.L165	@
.L174:
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.1123,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.1119,
.L168:
	mov	r2, r5	@, D.35694
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	str	ip, [sp, #0]	@ prephitmp.1123,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pCtx, pCtx
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L176	@
.L183:
	.word	.L188
	.word	.L188
	.word	.L178
	.word	.L188
	.word	.L176
	.word	.L179
	.word	.L180
	.word	.L176
	.word	.L176
	.word	.L176
	.word	.L181
	.word	.L181
	.word	.L181
	.word	.L182
.L180:
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC4	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L176:
	mov	r2, r0	@, VidStd
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC7	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L182:
	ldr	r5, [r1, #0]	@ D.35470, <variable>.pstExtraData
	movw	lr, #8520	@ tmp158,
	ldr	r0, [r1, lr]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	ip, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	ip, #1	@ <variable>.IsLastSeg,
	beq	.L187	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
.L187:
	add	r0, r5, #224	@, D.35481,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L178:
	movw	r0, #22060	@ tmp143,
	movw	r6, #22960	@ tmp144,
	ldr	r5, [r1, r0]	@ D.35442, <variable>.pstExtraData
	ldr	r0, [r1, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L187	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #320]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	b	.L187	@
.L181:
	ldr	r5, [r1, #0]	@ D.35481, <variable>.pstExtraData
	movw	r1, #13000	@ tmp164,
	ldr	r0, [r4, r1]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L187	@,
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L187	@
.L179:
	ldr	r5, [r1, #0]	@ D.35460, <variable>.pstExtraData
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	bne	.L187	@,
	movw	r2, #26992	@ tmp154,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L187	@
.L188:
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pCtx, pCtx
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L190	@
.L199:
	.word	.L191
	.word	.L192
	.word	.L193
	.word	.L194
	.word	.L190
	.word	.L195
	.word	.L196
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L197
	.word	.L197
	.word	.L197
	.word	.L198
.L198:
	ldr	r5, [r1, #0]	@ D.35538, <variable>.pstExtraData
	movw	lr, #8520	@ tmp152,
	ldr	r0, [r1, lr]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r1, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r1, #1	@ <variable>.IsLastSeg,
	beq	.L202	@,
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC5	@,
	bl	dprint_vfmw	@
.L202:
	add	r0, r5, #224	@, D.35549,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L190:
	mov	r2, r0	@, VidStd
	movw	r1, #:lower16:.LC7	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC7	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L191:
	mov	r0, r1	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	H264_ClearCurrPic	@
.L192:
	movw	ip, #:lower16:113720	@ tmp150,
	movt	ip, #:upper16:113720	@ tmp150,
	add	r0, r1, #77824	@, pCtx,
	add	r0, r0, #448	@,,
	ldr	r1, [r1, ip]	@, <variable>.ChanID
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VC1_ClearCurPic	@
.L193:
	mov	r0, r1	@, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MP4_Clean_HeadPacket	@
.L194:
	mov	r0, r1	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MP2_ClearCurPic	@
.L195:
	ldr	r5, [r1, #0]	@ D.35523, <variable>.pstExtraData
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	bne	.L202	@,
	movw	r2, #26992	@ tmp144,
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L202	@
.L196:
	mov	r0, r1	@, pCtx
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AVS_ClearCurPic	@
.L197:
	ldr	r5, [r1, #0]	@ D.35549, <variable>.pstExtraData
	movw	r2, #13000	@ tmp158,
	ldr	r0, [r1, r2]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L202	@,
	movw	r1, #:lower16:.LC6	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	b	.L202	@
	.fnend
	.size	ReleaseCurPic, .-ReleaseCurPic
	.align	2
	.global	SegMan
	.type	SegMan, %function
SegMan:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r1, #0	@ pSegMan, pSegMan
	mov	r6, r0	@ ChanID, ChanID
	beq	.L205	@,
	ldr	r3, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	cmp	r3, #0	@ <variable>.CurrSeg.VirAddr,
	beq	.L205	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.35340, <variable>.CurrSeg.IsLastSeg
	cmp	r5, #1	@ D.35340,
	beq	.L217	@,
	cmp	r5, #0	@ D.35340,
	beq	.L218	@,
.L210:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L218:
	add	r8, r4, #88	@ temp.1216, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, temp.1216
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.ConvolutionPacketNum, <variable>.ConvolutionPacketNum
	add	r1, r2, #1	@ tmp163, <variable>.ConvolutionPacketNum,
	uxtb	r0, r1	@ D.35358, tmp163
	strb	r0, [r4, #2]	@ D.35358, <variable>.ConvolutionPacketNum
	cmp	r0, #1	@ D.35358,
	bls	.L210	@,
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, temp.1216
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp168,
	movt	ip, #:upper16:g_event_report	@ tmp168,
	ldr	r3, [ip, #0]	@ g_event_report.514, g_event_report
	cmp	r3, #0	@ g_event_report.514,
	beq	.L211	@,
	mov	r0, r6	@, ChanID
	mov	r2, r5	@, D.35340
	mov	r1, #113	@,
	blx	r3	@ g_event_report.514
.L211:
	mov	lr, #0	@ tmp169,
	mvn	r0, #0	@ ret,
	strb	lr, [r4, #2]	@ tmp169, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L217:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.35342, <variable>.ConvolutionPacketNum
	cmp	r5, #0	@ D.35342,
	beq	.L219	@,
	cmp	r5, #1	@ D.35342,
	bne	.L210	@,
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp171,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp171,
	movw	r3, #:lower16:1047552	@ tmp212,
	movt	r3, #:upper16:1047552	@ tmp212,
	ldr	ip, [r2, r0, asl #2]	@ tmp172, s_pstVfmwChan
	ldr	r0, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [ip, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #6	@ <variable>.eVidStd,
	movne	r3, #1024	@ prephitmp.1205,
	cmp	r3, r0	@ prephitmp.1205, <variable>.LenInByte
	bhi	.L220	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	add	r0, r4, #168	@, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
.L215:
	mov	r0, #0	@ tmp208,
	strb	r0, [r4, #2]	@ tmp208, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L219:
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.35342, <variable>.ConvolutionPacketNum
	mov	r0, r5	@ ret, D.35342
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L220:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ temp.1220, <variable>.LenInByte
	ldr	r0, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, <variable>.VirAddr
	mov	r2, r3	@, temp.1220
	rsb	r0, r3, r0	@, temp.1220, <variable>.CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r3, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	ip, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	rsb	r1, r3, r1	@ tmp187, <variable>.LenInByte, <variable>.CurrSeg.VirAddr
	rsb	r2, r3, r2	@ tmp190, <variable>.LenInByte, <variable>.CurrSeg.PhyAddr
	str	r1, [r4, #88]	@ tmp187, <variable>.VirAddr
	add	r3, r3, ip	@ tmp193, <variable>.LenInByte, <variable>.CurrSeg.LenInByte
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	str	r3, [r4, #100]	@ tmp193, <variable>.LenInByte
	strb	r5, [r4, #93]	@ D.35342, <variable>.IsLastSeg
	str	r2, [r4, #96]	@ tmp190, <variable>.PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	str	r3, [r4, #104]	@ <variable>.CurrSeg.StreamID, <variable>.StreamID
	bl	__memzero	@
	b	.L215	@
.L205:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	SegMan, .-SegMan
	.align	2
	.global	DecodeStream_H263
	.type	DecodeStream_H263, %function
DecodeStream_H263:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #88	@ tmp140, pSegMan,
	mov	r4, r0	@ pSegMan, pSegMan
	mov	r6, r1	@ pstCtx, pstCtx
	mov	r0, #1	@ tmp138,
	add	r1, r4, #8	@, pSegMan,
	strb	r0, [r4, #1]	@ tmp138, <variable>.IsCurrSegWaitDec
	mov	r2, #80	@,
	mov	r0, r5	@, tmp140
	bl	memcpy	@
	movw	r3, #:lower16:g_SdecFunc	@ tmp146,
	movt	r3, #:upper16:g_SdecFunc	@ tmp146,
	ldr	r3, [r3, #12]	@ D.35281, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.35281,
	beq	.L223	@,
	mov	r1, r5	@, tmp140
	mov	r0, r6	@, pstCtx
	blx	r3	@ D.35281
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L223:
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r6, #0]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r1, #0	@ tmp150,
	strb	r1, [r4, #1]	@ tmp150, <variable>.IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	DecodeStream_H263, .-DecodeStream_H263
	.align	2
	.global	DecodeStream_VP6
	.type	DecodeStream_VP6, %function
DecodeStream_VP6:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:g_VdmCharacter	@ tmp143,
	movt	r3, #:upper16:g_VdmCharacter	@ tmp143,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldr	r0, [r3, #0]	@ g_VdmCharacter, g_VdmCharacter
	mov	r5, r1	@ pstCtx, pstCtx
	ands	r0, r0, #1	@ tmp144, g_VdmCharacter,
	beq	.L227	@,
	ldrb	r1, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r1, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L233	@,
	add	r6, r4, #88	@ D.35237, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r6	@, D.35237
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, D.35237
	bl	VP6DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp6DecParam, <variable>.pVp6DecParam
	cmp	r7, #0	@ <variable>.pVp6DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r6	@, D.35237
	mov	r1, #160	@,
	movw	r6, #13000	@ tmp159,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r2, #:lower16:g_event_report	@ tmp162,
	movt	r2, #:upper16:g_event_report	@ tmp162,
	ldr	r3, [r2, #0]	@ g_event_report.509, g_event_report
	cmp	r3, #0	@ g_event_report.509,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r2, r7	@, <variable>.pVp6DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.509
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L227:
	mov	r1, #20480	@ tmp166,
	ldr	r3, [r5, r1]	@ <variable>.pstExtraData, <variable>.pstExtraData
	ldr	ip, [r3, #388]	@ <variable>.StdExt.Vp6Ext.bReversed, <variable>.StdExt.Vp6Ext.bReversed
	cmp	ip, #1	@ <variable>.StdExt.Vp6Ext.bReversed,
	bls	.L230	@,
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L230:
	add	r6, r4, #88	@ tmp171, pSegMan,
	mov	lr, #1	@ tmp169,
	add	r1, r4, #8	@, pSegMan,
	strb	lr, [r4, #1]	@ tmp169, <variable>.IsCurrSegWaitDec
	mov	r0, r6	@, tmp171
	mov	r2, #80	@,
	bl	memcpy	@
	movw	r0, #:lower16:g_SdecFunc	@ tmp177,
	movt	r0, #:upper16:g_SdecFunc	@ tmp177,
	ldr	r3, [r0, #12]	@ D.35265, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.35265,
	beq	.L231	@,
	mov	r1, r6	@, tmp171
	mov	r0, r5	@, pstCtx
	blx	r3	@ D.35265
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L231:
	ldr	r0, [r5, #0]	@, <variable>.ChanID
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r2, #0	@ tmp181,
	strb	r2, [r4, #1]	@ tmp181, <variable>.IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L233:
	movw	r6, #13000	@ tmp147,
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
	.fnend
	.size	DecodeStream_VP6, .-DecodeStream_VP6
	.align	2
	.global	DecodeStream_VP8
	.type	DecodeStream_VP8, %function
DecodeStream_VP8:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	mov	r4, r0	@ pSegMan, pSegMan
	mov	r5, r1	@ pstCtx, pstCtx
	cmp	r3, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L238	@,
	add	r6, r0, #88	@ D.35196, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.35196
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, D.35196
	bl	VP8DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pVp8DecParam, <variable>.pVp8DecParam
	cmp	r7, #0	@ <variable>.pVp8DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r6	@, D.35196
	mov	r1, #160	@,
	movw	r6, #8520	@ tmp153,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp156,
	movt	r0, #:upper16:g_event_report	@ tmp156,
	ldr	r3, [r0, #0]	@ g_event_report.506, g_event_report
	cmp	r3, #0	@ g_event_report.506,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r2, r7	@, <variable>.pVp8DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.506
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L238:
	movw	r6, #8520	@ tmp141,
	ldr	r0, [r1, r6]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
	.fnend
	.size	DecodeStream_VP8, .-DecodeStream_VP8
	.align	2
	.global	DecodeStream_DIVX3
	.type	DecodeStream_DIVX3, %function
DecodeStream_DIVX3:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	mov	r4, r0	@ pSegMan, pSegMan
	mov	r5, r1	@ pstCtx, pstCtx
	cmp	r3, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L243	@,
	add	r6, r0, #88	@ D.35161, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.35161
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r5	@, pstCtx
	mov	r1, r6	@, D.35161
	bl	DIVX3DEC_Decode	@
	ldr	r7, [r5, #4]	@ <variable>.pDivx3DecParam, <variable>.pDivx3DecParam
	cmp	r7, #0	@ <variable>.pDivx3DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r0, r6	@, D.35161
	mov	r1, #160	@,
	movw	r6, #26992	@ tmp153,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r0, #:lower16:g_event_report	@ tmp156,
	movt	r0, #:upper16:g_event_report	@ tmp156,
	ldr	r3, [r0, #0]	@ g_event_report.504, g_event_report
	cmp	r3, #0	@ g_event_report.504,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r2, r7	@, <variable>.pDivx3DecParam
	mov	r1, #113	@,
	blx	r3	@ g_event_report.504
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L243:
	movw	r6, #26992	@ tmp141,
	ldr	r0, [r1, r6]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
	.fnend
	.size	DecodeStream_DIVX3, .-DecodeStream_DIVX3
	.align	2
	.global	DecodeStream_AVS
	.type	DecodeStream_AVS, %function
DecodeStream_AVS:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r3, #16608	@ tmp140,
	mov	r5, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx.500
	mov	r4, r1	@ pstCtx.500, pstCtx
	ldr	r6, [r1, r3]	@ ChanID, <variable>.ChanID
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	bne	.L245	@,
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp141,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp141,
	ldr	r3, [r0, r6, asl #2]	@ D.35127, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L250	@,
.L246:
	add	ip, r4, #16384	@, pstCtx.500,
	mov	r0, r4	@, pstCtx.500
	add	r1, ip, #64	@,,
	bl	AVSDEC_Decode	@
.L245:
	movw	lr, #16608	@ tmp146,
	mov	r1, r5	@, pSegMan
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L251	@,
	ldr	r5, [r4, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r5, #0	@ <variable>.pAvsDecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L252:
	movw	r6, #17124	@ tmp150,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r3, #16608	@ tmp153,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r5, [r4, r6]	@ <variable>.pAvsDecParam, <variable>.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L251:
	add	r1, r5, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx.500
	bl	AVSDEC_Decode	@
	ldr	r5, [r4, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r5, #0	@ <variable>.pAvsDecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L252	@
.L250:
	ldr	r1, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L245	@,
	b	.L246	@
	.fnend
	.size	DecodeStream_AVS, .-DecodeStream_AVS
	.align	2
	.global	DecodeStream_MPEG4
	.type	DecodeStream_MPEG4, %function
DecodeStream_MPEG4:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:73696	@ tmp140,
	movt	r3, #:upper16:73696	@ tmp140,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx
	mov	r4, r1	@ pstCtx, pstCtx
	ldr	r6, [r1, r3]	@ ChanID, <variable>.ChanID
	bl	MP4_GetPacketState	@
	cmp	r0, #3	@,
	beq	.L259	@,
.L254:
	movw	lr, #22960	@ tmp146,
	mov	r1, r5	@, pSegMan
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L260	@,
	ldr	r5, [r4, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r5, #0	@ <variable>.pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L261:
	movw	r6, #22996	@ tmp150,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC14	@,
	movt	r1, #:upper16:.LC14	@,
	bl	dprint_vfmw	@
	movw	r3, #22960	@ tmp153,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r5, [r4, r6]	@ <variable>.pMp4DecParam, <variable>.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L260:
	add	r1, r5, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG4DEC_Decode	@
	ldr	r5, [r4, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r5, #0	@ <variable>.pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L261	@
.L259:
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp141,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp141,
	ldr	r3, [r0, r6, asl #2]	@ D.35096, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L262	@,
.L255:
	add	ip, r4, #15680	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, ip, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L254	@
.L262:
	ldr	r1, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L254	@,
	b	.L255	@
	.fnend
	.size	DecodeStream_MPEG4, .-DecodeStream_MPEG4
	.align	2
	.global	DecodeStream_MPEG2
	.type	DecodeStream_MPEG2, %function
DecodeStream_MPEG2:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:73696	@ tmp140,
	movt	r3, #:upper16:73696	@ tmp140,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx.493
	mov	r4, r1	@ pstCtx.493, pstCtx
	ldr	r6, [r1, r3]	@ ChanID, <variable>.ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L269	@,
.L264:
	movw	lr, #:lower16:73696	@ tmp146,
	movt	lr, #:upper16:73696	@ tmp146,
	mov	r1, r5	@, pSegMan
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L270	@,
	ldr	r5, [r4, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r5, #0	@ <variable>.pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L271:
	movw	r6, #:lower16:73713	@ tmp150,
	movt	r6, #:upper16:73713	@ tmp150,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC15	@,
	movt	r1, #:upper16:.LC15	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:73696	@ tmp153,
	movt	r3, #:upper16:73696	@ tmp153,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r5, [r4, r6]	@ <variable>.pMp2DecParam, <variable>.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L270:
	add	r1, r5, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx.493
	bl	MPEG2DEC_Decode	@
	ldr	r5, [r4, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r5, #0	@ <variable>.pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L271	@
.L269:
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp141,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp141,
	ldr	r3, [r0, r6, asl #2]	@ D.35064, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L272	@,
.L265:
	add	ip, r4, #72704	@, pstCtx.493,
	mov	r0, r4	@, pstCtx.493
	add	r1, ip, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L264	@
.L272:
	ldr	r1, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L264	@,
	b	.L265	@
	.fnend
	.size	DecodeStream_MPEG2, .-DecodeStream_MPEG2
	.align	2
	.global	DecodeStream_VC1
	.type	DecodeStream_VC1, %function
DecodeStream_VC1:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r6, #:lower16:113720	@ tmp149,
	movt	r6, #:upper16:113720	@ tmp149,
	mov	r4, r0	@ pSegMan, pSegMan
	mov	r5, r1	@ pstCtx.487, pstCtx
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@, <variable>.CurrSeg.IsLastSeg
	movw	r1, #:lower16:.LC16	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC16	@,
	ldr	r7, [r5, r6]	@ ChanID, <variable>.ChanID
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, <variable>.CurrSeg.PhyAddr
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, <variable>.CurrSeg.LenInByte
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC18	@,
	movt	r1, #:upper16:.LC18	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #0]	@ D.34967, <variable>.pstExtraData
	ldr	r2, [r3, #388]	@ D.34968, <variable>.StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ D.34968,
	bhi	.L288	@,
	ldr	r1, [r3, #392]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	r1, #8	@ <variable>.StdExt.Vc1Ext.CodecVersion,
	bgt	.L289	@,
	movw	r0, #:lower16:81368	@ tmp159,
	movt	r0, #:upper16:81368	@ tmp159,
	uxtb	r2, r2	@ D.34977, D.34968
	movw	ip, #:lower16:81370	@ tmp161,
	strb	r2, [r5, r0]	@ D.34977, <variable>.CodecInfo.PreParseInfo.IsAdvProfile
	movt	ip, #:upper16:81370	@ tmp161,
	ldr	r3, [r3, #392]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.StdExt.Vc1Ext.CodecVersion
	cmp	r2, #1	@ D.34977,
	strb	r3, [r5, ip]	@ <variable>.StdExt.Vc1Ext.CodecVersion, <variable>.CodecInfo.PreParseInfo.CodecVersion
	beq	.L290	@,
	ldrb	r0, [r4, #14]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsStreamEnd, <variable>.CurrSeg.IsStreamEnd
	cmp	r0, #1	@ <variable>.CurrSeg.IsStreamEnd,
	beq	.L291	@,
	add	r7, r4, #88	@ D.35016, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	mov	r0, r7	@, D.35016
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	ldr	ip, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	cmp	ip, #15	@ <variable>.LenInByte,
	movwls	r1, #:lower16:.LC22	@,
	movls	r0, #0	@,
	movtls	r1, #:upper16:.LC22	@,
	bls	.L287	@,
	add	lr, r5, #80896	@, pstCtx.487,
	mov	r1, #16	@,
	ldr	r0, [r4, #88]	@, <variable>.VirAddr
	add	r2, lr, #472	@,,
	bl	Vc1SMPSeqHdr	@
	cmp	r0, #0	@,
	movwne	r1, #:lower16:.LC23	@,
	movne	r0, #0	@,
	movtne	r1, #:upper16:.LC23	@,
	bne	.L287	@,
	ldr	r2, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	mov	r1, r7	@, D.35016
	ldr	r3, [r4, #88]	@ <variable>.VirAddr, <variable>.VirAddr
	mov	r0, r5	@, pstCtx.487
	ldr	lr, [r4, #96]	@ <variable>.PhyAddr, <variable>.PhyAddr
	sub	ip, r2, #16	@ tmp206, <variable>.LenInByte,
	add	r2, r3, #16	@ tmp208, <variable>.VirAddr,
	str	ip, [r4, #100]	@ tmp206, <variable>.LenInByte
	add	r3, lr, #16	@ tmp210, <variable>.PhyAddr,
	str	r2, [r4, #88]	@ tmp208, <variable>.VirAddr
	str	r3, [r4, #96]	@ tmp210, <variable>.PhyAddr
	bl	VC1DEC_Decode	@
	mov	r0, r7	@, D.35016
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	__memzero	@
.L287:
	bl	dprint_vfmw	@
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	SM_ReleaseStreamSeg	@
	movw	r1, #:lower16:g_event_report	@ tmp215,
	movt	r1, #:upper16:g_event_report	@ tmp215,
	ldr	r3, [r1, #0]	@ g_event_report.1451, g_event_report
	cmp	r3, #0	@ g_event_report.1451,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	mov	r1, #113	@,
	mov	r2, #0	@,
	blx	r3	@ g_event_report.1451
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L288:
	movw	r1, #:lower16:.LC19	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC19	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L289:
	movw	r1, #:lower16:.LC20	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC20	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L291:
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, r6]	@, <variable>.ChanID
	ldr	r1, [r4, #24]	@, <variable>.CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L290:
	mov	r0, r5	@, pstCtx.487
	bl	VC1_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L292	@,
.L277:
	movw	r2, #:lower16:113720	@ tmp171,
	movt	r2, #:upper16:113720	@ tmp171,
	mov	r1, r4	@, pSegMan
	ldr	r0, [r5, r2]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L293	@,
.L279:
	ldr	r4, [r5, #4]	@ <variable>.pVc1DecParam, <variable>.pVc1DecParam
	cmp	r4, #0	@ <variable>.pVc1DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r6, #:lower16:78279	@ tmp174,
	movt	r6, #:upper16:78279	@ tmp174,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.CodecInfo.IsStreamEndFlag, <variable>.CodecInfo.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.CodecInfo.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	movw	r1, #:lower16:.LC21	@,
	movt	r1, #:upper16:.LC21	@,
	bl	dprint_vfmw	@
	movw	r1, #:lower16:113720	@ tmp177,
	movt	r1, #:upper16:113720	@ tmp177,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pVc1DecParam, <variable>.CodecInfo.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L293:
	add	r4, r4, #88	@ D.34998, pSegMan,
	mov	r0, r5	@, pstCtx.487
	mov	r1, r4	@, D.34998
	bl	VC1DEC_Decode	@
	mov	r0, r4	@, D.34998
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L279	@
.L292:
	movw	r1, #:lower16:s_pstVfmwChan	@ tmp166,
	movt	r1, #:upper16:s_pstVfmwChan	@ tmp166,
	ldr	r3, [r1, r7, asl #2]	@ D.34988, s_pstVfmwChan
	ldr	lr, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	lr, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L278	@,
	ldr	ip, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	ip, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L277	@,
.L278:
	add	r3, r5, #77824	@, pstCtx.487,
	mov	r0, r5	@, pstCtx.487
	add	r1, r3, #288	@,,
	bl	VC1DEC_Decode	@
	b	.L277	@
	.fnend
	.size	DecodeStream_VC1, .-DecodeStream_VC1
	.align	2
	.global	DecodeStream_H264
	.type	DecodeStream_H264, %function
DecodeStream_H264:
	.fnstart
.LFB1610:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	.pad #36
	sub	sp, sp, #36	@,,
	ldrd	r8, [r0, #32]	@ <variable>.CurrSeg.Pts, pSegMan,
	ldr	r7, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	mov	r5, r1	@ pstCtx, pstCtx
	ldr	r6, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	mov	r0, r1	@, pstCtx
	ldr	lr, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	mov	r1, sp	@,
	ldrb	ip, [r4, #13]	@ zero_extendqisi2	@ <variable>.CurrSeg.IsLastSeg, <variable>.CurrSeg.IsLastSeg
	ldr	r2, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	ldrb	r3, [r4, #15]	@ zero_extendqisi2	@ <variable>.CurrSeg.DspCheckPicOverFlag, <variable>.CurrSeg.DspCheckPicOverFlag
	strd	r8, [sp, #24]	@ <variable>.CurrSeg.Pts,,
	str	r7, [sp, #4]	@ <variable>.CurrSeg.VirAddr, H264Pack.p_stream
	str	r6, [sp, #8]	@ <variable>.CurrSeg.PhyAddr, H264Pack.strm_phy_addr
	str	lr, [sp, #12]	@ <variable>.CurrSeg.LenInByte, H264Pack.stream_len
	strb	ip, [sp, #0]	@ <variable>.CurrSeg.IsLastSeg, H264Pack.last_pack_in_nal
	str	r2, [sp, #16]	@ <variable>.CurrSeg.StreamID, H264Pack.StreamID
	strb	r3, [sp, #1]	@ <variable>.CurrSeg.DspCheckPicOverFlag, H264Pack.pack_is_pic_over_flag
	bl	H264DEC_DecodePacket	@
	cmn	r0, #2	@,
	movne	r0, #0	@, tmp147
	moveq	r0, #1	@, tmp147
	strb	r0, [r4, #1]	@ tmp147, <variable>.IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ <variable>.pH264DecParam, <variable>.pH264DecParam
	cmp	r4, #0	@ <variable>.pH264DecParam,
	beq	.L297	@,
.L296:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L297:
	movw	r6, #13556	@ tmp150,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L296	@,
	movw	r1, #:lower16:.LC24	@,
	movt	r1, #:upper16:.LC24	@,
	bl	dprint_vfmw	@
	movw	r1, #52840	@ tmp153,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pH264DecParam, <variable>.IsStreamEndFlag
	b	.L296	@
	.fnend
	.size	DecodeStream_H264, .-DecodeStream_H264
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #14	@ VideoStandard,
	ldrls	pc, [pc, r1, asl #2]	@ VideoStandard
	b	.L310	@
.L309:
	.word	.L300
	.word	.L301
	.word	.L302
	.word	.L303
	.word	.L304
	.word	.L305
	.word	.L306
	.word	.L310
	.word	.L310
	.word	.L310
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L308
	.word	.L304
.L308:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP8	@
.L310:
	bx	lr	@
.L300:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L301:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VC1	@
.L302:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG4	@
.L303:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L304:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H263	@
.L305:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_DIVX3	@
.L306:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_AVS	@
.L307:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP6	@
	.fnend
	.size	DecodeStream, .-DecodeStream
	.align	2
	.global	SYNTAX_ReturnImage
	.type	SYNTAX_ReturnImage, %function
SYNTAX_ReturnImage:
	.fnstart
.LFB1609:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L312	@
.L323:
	.word	.L322
	.word	.L314
	.word	.L315
	.word	.L316
	.word	.L317
	.word	.L318
	.word	.L319
	.word	.L312
	.word	.L312
	.word	.L312
	.word	.L320
	.word	.L320
	.word	.L320
	.word	.L321
	.word	.L317
	.word	.L312
	.word	.L312
	.word	.L312
	.word	.L322
.L322:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L325:
	ldr	r0, .L328	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	ldr	r0, .L328	@,
	sub	r3, r1, #1	@ tmp154, <variable>.head,
	and	ip, r3, #63	@ tmp156, tmp154,
	strh	ip, [r4, #6]	@ movhi	@ tmp156, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.34914,
	ldmfd	sp!, {r4, pc}	@
.L320:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp144,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp144,
	ldr	r1, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	addne	r4, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r4, r4, #48	@ pstVoQue, pstVoQue,
	bne	.L325	@,
.L317:
	add	r4, r0, #20480	@ pstVoQue, pSynCtx,
	add	r4, r4, #16	@ pstVoQue, pstVoQue,
	b	.L325	@
.L318:
	add	lr, r0, #26624	@ pstVoQue, pSynCtx,
	add	r4, lr, #24	@ pstVoQue, pstVoQue,
	b	.L325	@
.L312:
	mvn	r0, #1	@ D.34914,
	ldmfd	sp!, {r4, pc}	@
.L315:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r1, #88	@ pstVoQue, pstVoQue,
	b	.L325	@
.L316:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L325	@
.L319:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r2, #32	@ pstVoQue, pstVoQue,
	b	.L325	@
.L321:
	add	r3, r0, #8128	@ pstVoQue, pSynCtx,
	add	r4, r3, #48	@ pstVoQue, pstVoQue,
	b	.L325	@
.L314:
	add	ip, r0, #112640	@ pstVoQue, pSynCtx,
	add	r4, ip, #736	@ pstVoQue, pstVoQue,
	b	.L325	@
.L329:
	.align	2
.L328:
	.word	.LANCHOR0+16
	.fnend
	.size	SYNTAX_ReturnImage, .-SYNTAX_ReturnImage
	.align	2
	.global	SYNTAX_ReceiveImage
	.type	SYNTAX_ReceiveImage, %function
SYNTAX_ReceiveImage:
	.fnstart
.LFB1605:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSynCtx,
	cmpne	r1, #0	@, p_image,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ p_image, p_image
	.pad #8
	sub	sp, sp, #8	@,,
	mvneq	r6, #1	@ ret,
	bne	.L337	@,
.L332:
	mov	r0, r6	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L337:
	bl	SYNTAX_GetVoQue	@
	subs	r5, r0, #0	@ pstVoQue,
	beq	.L338	@,
	ldr	r0, .L339	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r5, #6]	@ D.34712, <variable>.head
	ldrh	r2, [r5, #8]	@ <variable>.tail, <variable>.tail
	cmp	r2, r3	@ <variable>.tail, D.34712
	mvneq	r6, #2	@ ret,
	beq	.L335	@,
	add	lr, r5, r3, asl #2	@, tmp154, pstVoQue, D.34712,
	mov	r2, #392	@,
	mov	r0, r4	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [lr, #12]	@, <variable>.image_ptr
	bl	memcpy	@
	ldrh	ip, [r5, #8]	@ <variable>.tail, <variable>.tail
	ldrh	r2, [r5, #4]	@ <variable>.history, <variable>.history
	mov	r0, #12	@,
	ldrh	r3, [r5, #6]	@ <variable>.head, <variable>.head
	movw	r1, #:lower16:.LC26	@,
	str	ip, [sp, #0]	@ <variable>.tail,
	movt	r1, #:upper16:.LC26	@,
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	ldr	r2, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	r3, r2, r0	@ tmp168, <variable>.image_id, <variable>.ResetMagicWord
	str	r3, [r4, #176]	@ tmp168, <variable>.image_id
	ldr	ip, [r5, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	str	ip, [r4, #380]	@ <variable>.ResetMagicWord, <variable>.resetNum
	ldrh	r1, [r5, #6]	@ <variable>.head, <variable>.head
	add	r0, r1, r6	@ tmp172, <variable>.head,
	and	r3, r0, #63	@ tmp174, tmp172,
	strh	r3, [r5, #6]	@ movhi	@ tmp174, <variable>.head
.L335:
	ldr	r0, .L339	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L332	@
.L338:
	movw	r1, #:lower16:.LC25	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC25	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #1	@,
	mvn	r6, #1	@ ret,
	bl	dprint_vfmw	@
	b	.L332	@
.L340:
	.align	2
.L339:
	.word	.LANCHOR0+16
	.fnend
	.size	SYNTAX_ReceiveImage, .-SYNTAX_ReceiveImage
	.align	2
	.global	ResetVoQueue
	.type	ResetVoQueue, %function
ResetVoQueue:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L343	@ tmp135,
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
.L344:
	.align	2
.L343:
	.word	.LANCHOR0+16
	.fnend
	.size	ResetVoQueue, .-ResetVoQueue
	.align	2
	.global	SYNTAX_ReleaseImage_RecycleImage
	.type	SYNTAX_ReleaseImage_RecycleImage, %function
SYNTAX_ReleaseImage_RecycleImage:
	.fnstart
.LFB1607:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	mov	r4, r0	@ pSynCtx, pSynCtx
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L346	@
.L357:
	.word	.L347
	.word	.L348
	.word	.L349
	.word	.L350
	.word	.L351
	.word	.L352
	.word	.L353
	.word	.L346
	.word	.L346
	.word	.L346
	.word	.L354
	.word	.L354
	.word	.L354
	.word	.L355
	.word	.L351
	.word	.L346
	.word	.L346
	.word	.L346
	.word	.L356
.L354:
	movw	r2, #:lower16:g_VdmCharacter	@ tmp155,
	movt	r2, #:upper16:g_VdmCharacter	@ tmp155,
	ldr	r0, [r2, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L364	@,
.L351:
	movw	ip, #:lower16:g_SdecFunc	@ tmp163,
	movt	ip, #:upper16:g_SdecFunc	@ tmp163,
	ldr	r3, [ip, #16]	@ temp.1605, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1605,
	mvneq	r1, #0	@ ret,
	beq	.L358	@,
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r4, #8	@, pSynCtx,
	blx	r3	@ temp.1605
	mov	r1, r0	@ ret,
.L358:
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L352:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	DIVX3DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L353:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L355:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VP8DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L356:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L346:
	mvn	r1, #1	@ ret,
	b	.L358	@
.L347:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	H264DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L348:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VC1DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L349:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L350:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
.L364:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r4, #8	@, pSynCtx,
	bl	VP6DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L358	@
	.fnend
	.size	SYNTAX_ReleaseImage_RecycleImage, .-SYNTAX_ReleaseImage_RecycleImage
	.align	2
	.global	SYNTAX_ReleaseImage
	.type	SYNTAX_ReleaseImage, %function
SYNTAX_ReleaseImage:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSynCtx,
	cmpne	r1, #0	@, p_image,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r4, r1	@ p_image, p_image
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pSynCtx, pSynCtx
	bne	.L366	@,
.L382:
	mvn	r4, #1	@ ret,
.L367:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L366:
	bl	SYNTAX_GetVoQue	@
	subs	r7, r0, #0	@ pstVoQue,
	beq	.L383	@,
	ldr	r0, .L385	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r7, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	rsb	r3, r0, r2	@ tmp163, <variable>.ResetMagicWord, <variable>.image_id
	str	r3, [r4, #176]	@ tmp163, <variable>.image_id
	ldrh	r6, [r7, #4]	@ i, <variable>.history
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	and	r6, r6, #63	@ i.1644, i,
	cmp	r3, r6	@ <variable>.head, i.1644
	bne	.L380	@,
	b	.L369	@
.L371:
	add	r6, r6, #1	@ i.1643, i.1644,
	and	r6, r6, #63	@ i.1644, i.1643,
	cmp	r3, r6	@ <variable>.head, i.1644
	beq	.L369	@,
.L380:
	add	r8, r6, #2	@ tmp194, i.1644,
	add	r1, r7, r8, asl #2	@, tmp168, pstVoQue, tmp194,
	ldr	r2, [r1, #4]	@ D.34863, <variable>.image_ptr
	cmp	r2, #0	@ D.34863,
	beq	.L370	@,
	ldr	lr, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, lr	@ <variable>.image_id, <variable>.image_id
	moveq	sl, #1	@ SameImageFlag,
	bne	.L371	@,
.L372:
	ldrh	lr, [r7, #4]	@ temp.1636, <variable>.history
	b	.L376	@
.L384:
	mov	r6, r2	@ i.1644, j
.L376:
	cmp	r6, #0	@ i.1644,
	sub	r2, r6, #1	@ j, i.1644,
	add	r0, r7, r8, asl #2	@, tmp176, pstVoQue, tmp194,
	moveq	r2, #63	@ j,
	add	r1, r2, #2	@ tmp178, j,
	cmp	lr, r6	@ temp.1636, i.1644
	add	ip, r7, r1, asl #2	@, tmp181, pstVoQue, tmp178,
	mov	r8, r1	@ tmp194, tmp178
	ldr	r1, [ip, #4]	@ tmp183, <variable>.image_ptr
	str	r1, [r0, #4]	@ tmp183, <variable>.image_ptr
	bne	.L384	@,
	cmp	sl, #1	@ SameImageFlag,
	add	lr, lr, #1	@ tmp184, temp.1636,
	and	r2, lr, #63	@ temp.1638, tmp184,
	strh	r2, [r7, #4]	@ movhi	@ temp.1638, <variable>.history
	bne	.L371	@,
	ldrh	lr, [r7, #8]	@ <variable>.tail, <variable>.tail
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC28	@,
	movt	r1, #:upper16:.LC28	@,
	str	lr, [sp, #0]	@ <variable>.tail,
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	mov	r1, r4	@, p_image
	mov	r0, r5	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
	b	.L377	@
.L370:
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC27	@,
	mov	r2, r6	@, i.1644
	movt	r1, #:upper16:.LC27	@,
	bl	dprint_vfmw	@
	mov	sl, #2	@ SameImageFlag,
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	b	.L372	@
.L369:
	mvn	r4, #1	@ ret,
.L377:
	ldr	r0, .L385	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L367	@
.L383:
	movw	r1, #:lower16:.LC25	@,
	ldr	r2, .L385+4	@,
	movt	r1, #:upper16:.LC25	@,
	add	r0, r0, #1	@,,
	bl	dprint_vfmw	@
	b	.L382	@
.L386:
	.align	2
.L385:
	.word	.LANCHOR0+16
	.word	.LANCHOR1+20
	.fnend
	.size	SYNTAX_ReleaseImage, .-SYNTAX_ReleaseImage
	.align	2
	.global	ReturnImageToSyntax
	.type	ReturnImageToSyntax, %function
ReturnImageToSyntax:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	cmp	r0, #18	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L401	@
.L399:
	.word	.L389
	.word	.L390
	.word	.L391
	.word	.L392
	.word	.L393
	.word	.L394
	.word	.L395
	.word	.L401
	.word	.L401
	.word	.L401
	.word	.L396
	.word	.L396
	.word	.L396
	.word	.L397
	.word	.L393
	.word	.L401
	.word	.L401
	.word	.L401
	.word	.L398
.L401:
	ldmfd	sp!, {r4, pc}	@
.L396:
	movw	r0, #:lower16:g_VdmCharacter	@ tmp147,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp147,
	ldr	r3, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L404	@,
.L393:
	movw	ip, #:lower16:g_SdecFunc	@ tmp153,
	movt	ip, #:upper16:g_SdecFunc	@ tmp153,
	ldr	r3, [ip, #16]	@ temp.1677, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ temp.1677,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	blx	r3	@ temp.1677
	ldmfd	sp!, {r4, pc}	@
.L389:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_RecycleImage	@
.L390:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_RecycleImage	@
.L391:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_RecycleImage	@
.L392:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_RecycleImage	@
.L395:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_RecycleImage	@
.L397:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_RecycleImage	@
.L398:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	USERDEC_RecycleImage	@
.L394:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_RecycleImage	@
.L404:
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
.LFB1602:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	fp, r0	@ ChanID, ChanID
	mov	r7, r1	@ eVidStd, eVidStd
	ldr	r4, [sp, #56]	@ p_image, p_image
	mov	r9, r2	@ pCtx, pCtx
	mov	r5, r3	@ pstVoQue, pstVoQue
	cmp	r4, #0	@ p_image,
	beq	.L426	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC29	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp231,
	movt	r1, #:upper16:.LC29	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp231,
	bl	dprint_vfmw	@
	add	r0, r6, #16	@, tmp231,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r8, [r5, #4]	@ i, <variable>.history
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r8, r8, #63	@ i.1721, i,
	cmp	r1, r8	@ <variable>.tail, i.1721
	beq	.L408	@,
	mov	sl, #1000	@ tmp235,
	b	.L424	@
.L409:
	add	ip, r8, #1	@ i.1712, i.1721,
	and	r8, ip, #63	@ i.1721, i.1712,
	cmp	r1, r8	@ <variable>.tail, i.1721
	beq	.L408	@,
.L424:
	add	r0, r5, r8, asl #2	@, tmp164, pstVoQue, i.1721,
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r0, #12]	@ tmp161, <variable>.image_ptr
	ldr	r2, [r2, #176]	@ D.34588, <variable>.image_id
	cmp	r2, r3	@ D.34588, <variable>.image_id
	bne	.L409	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC30	@,
	movt	r1, #:upper16:.LC30	@,
	bl	dprint_vfmw	@
	str	sl, [r4, #180]	@ tmp235, <variable>.error_level
	add	ip, r8, #1	@ i.1712, i.1721,
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r8, ip, #63	@ i.1721, i.1712,
	cmp	r1, r8	@ <variable>.tail, i.1721
	bne	.L424	@,
.L408:
	ldr	r2, [r4, #180]	@ D.34595, <variable>.error_level
	cmp	r2, #100	@ D.34595,
	bhi	.L427	@,
	ldr	r3, [r4, #144]	@ prephitmp.1701, <variable>.image_width
	cmp	r3, #31	@ prephitmp.1701,
	ldrls	ip, [r4, #148]	@ prephitmp.1720, <variable>.image_height
	bhi	.L428	@,
.L412:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC31	@,
	movt	r1, #:upper16:.LC31	@,
	str	ip, [sp, #0]	@ prephitmp.1720,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #1000	@ <variable>.error_level,
	beq	.L415	@,
	mov	r0, r7	@, eVidStd
	mov	r1, r9	@, pCtx
	mov	r2, r4	@, p_image
	bl	ReturnImageToSyntax	@
.L415:
	ldr	r0, .L430	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.34580,
.L407:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L428:
	ldr	ip, [r4, #148]	@ prephitmp.1720, <variable>.image_height
	cmp	ip, #31	@ prephitmp.1720,
	bls	.L412	@,
	mov	r2, r7	@, eVidStd
	mov	r0, r5	@, pstVoQue
	mov	r1, r4	@, p_image
	add	sl, fp, fp, asl #1	@, tmp176, ChanID, ChanID,
	bl	InsertImgToVoQueue_PtsProcess	@
	mov	r1, r7	@, eVidStd
	mov	r0, fp	@, ChanID
	mov	r2, r5	@, pstVoQue
	mov	r3, r4	@, p_image
	movw	r7, #:lower16:g_VfmwChanStat	@ tmp178,
	bl	InsertImgToVoQueue_FillImageInfo	@
	ldrh	r8, [r5, #8]	@ <variable>.tail, <variable>.tail
	ldr	lr, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	mov	r0, #12	@,
	ldrh	r2, [r5, #4]	@ <variable>.history, <variable>.history
	movw	r1, #:lower16:.LC32	@,
	ldrh	r3, [r5, #6]	@ <variable>.head, <variable>.head
	movt	r1, #:upper16:.LC32	@,
	str	r8, [sp, #0]	@ <variable>.tail,
	movt	r7, #:upper16:g_VfmwChanStat	@ tmp178,
	str	lr, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #8]	@ <variable>.tail, <variable>.tail
	add	r8, r7, sl, asl #3	@, pVfmwChanStat, tmp178, tmp176,
	ldr	r0, .L430	@,
	add	r2, r3, #1	@ tmp192, <variable>.tail,
	add	ip, r5, r3, asl #2	@, tmp188, pstVoQue, <variable>.tail,
	and	r1, r2, #63	@ tmp194, tmp192,
	strh	r1, [r5, #8]	@ movhi	@ tmp194, <variable>.tail
	str	r4, [ip, #12]	@ p_image, <variable>.image_ptr
	ldr	r3, [r4, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	str	r3, [r8, #20]	@ <variable>.is_fld_save, <variable>.u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r4, #300]	@ D.34613, <variable>.ImageDnr.video_standard
	sub	r2, r3, #10	@ tmp198, D.34613,
	cmp	r2, #2	@ tmp198,
	bhi	.L416	@,
	movw	ip, #:lower16:g_VdmCharacter	@ tmp199,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp199,
	ldr	r0, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L418	@,
.L417:
	movw	r1, #:lower16:g_event_report	@ tmp202,
	movt	r1, #:upper16:g_event_report	@ tmp202,
	ldr	r3, [r1, #0]	@ g_event_report.448, g_event_report
	cmp	r3, #0	@ g_event_report.448,
	beq	.L419	@,
	add	r2, sp, #16	@ tmp203,,
	mov	r0, fp	@, ChanID
	mov	r1, #5	@,
	str	r4, [r2, #-4]!	@ p_image, para
	blx	r3	@ g_event_report.448
.L419:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L429	@,
.L420:
	ldr	r0, [r8, #4]	@ <variable>.u32FrImgNum, <variable>.u32FrImgNum
	add	lr, r0, #1	@ tmp219, <variable>.u32FrImgNum,
	str	lr, [r8, #4]	@ tmp219, <variable>.u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r7, sl, asl #3]	@ <variable>.u32FrBeginTime, <variable>.u32FrBeginTime
	rsb	r1, r1, r0	@ Period, <variable>.u32FrBeginTime, CurTime.1723
	mov	r4, r0	@ CurTime.1723,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.34580,
	bcc	.L407	@,
	ldr	r3, [r8, #4]	@ temp.1724, <variable>.u32FrImgNum
	cmp	r3, #0	@ temp.1724,
	beq	.L422	@,
	movw	r2, #10000	@ tmp223,
	mul	r0, r2, r3	@, tmp223, temp.1724
	bl	__aeabi_uidiv	@
	str	r0, [r8, #8]	@, <variable>.u32FrFrameRate
.L422:
	mov	r3, #0	@ tmp227,
	mov	r0, #1	@ D.34580,
	str	r4, [r7, sl, asl #3]	@ CurTime.1723, <variable>.u32FrBeginTime
	str	r3, [r8, #4]	@ tmp227, <variable>.u32FrImgNum
	b	.L407	@
.L427:
	ldr	r3, [r4, #144]	@ prephitmp.1701, <variable>.image_width
	ldr	ip, [r4, #148]	@ prephitmp.1720, <variable>.image_height
	b	.L412	@
.L416:
	cmp	r3, #4	@ D.34613,
	beq	.L417	@,
	cmp	r3, #14	@ D.34613,
	beq	.L417	@,
.L418:
	cmp	r3, #18	@ D.34613,
	bne	.L419	@,
	b	.L417	@
.L429:
	bl	OSAL_GetTimeInMs	@
	add	r6, r6, fp, asl #2	@, tmp207, tmp231, ChanID,
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp211,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp211,
	ldr	r2, [r6, #24]	@ tmp210, last_rec_pos_time
	ldr	r3, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r4, r2, r0	@ tmp209, tmp210, CurTime
	cmp	r4, r3	@ tmp209, g_TraceFramePeriod
	strhi	r0, [r6, #24]	@ CurTime, last_rec_pos_time
	b	.L420	@
.L426:
	mov	r0, r4	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.34580,
	b	.L407	@
.L431:
	.align	2
.L430:
	.word	.LANCHOR0+16
	.fnend
	.size	InsertImgToVoQueue, .-InsertImgToVoQueue
	.global	g_DnrEnable
	.global	pstVdecUsdPool
	.global	g_SpinLock
	.global	g_SpinLockIrq_Destroy
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.34701, %object
	.size	__func__.34701, 20
__func__.34701:
	.ascii	"SYNTAX_ReceiveImage\000"
	.type	__func__.34840, %object
	.size	__func__.34840, 20
__func__.34840:
	.ascii	"SYNTAX_ReleaseImage\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"WARNNING: aspect ration (%d) is not expected!\012\000"
	.space	1
.LC1:
	.ascii	"image point NULL\012\000"
	.space	2
.LC2:
	.ascii	"out_pts: %lld -> %lld Usertag %lld\012\000"
.LC3:
	.ascii	"pu8[0] = %x,pu8[1] = %x, pu8[2] = %x\012\000"
	.space	2
.LC4:
	.ascii	"release segbuf together!\012\000"
	.space	2
.LC5:
	.ascii	"ERROR: VFMW_VP8 one packet stream, but IsLastSeg =="
	.ascii	" 0\012\000"
	.space	1
.LC6:
	.ascii	"ERROR: VFMW_VP6 one packet stream, but IsLastSeg =="
	.ascii	" 0\012\000"
	.space	1
.LC7:
	.ascii	"VidStd=%d Error!\012\000"
	.space	2
.LC8:
	.ascii	"pSegMan error!\012\000"
.LC9:
	.ascii	"More than two packet!!!ERROR!!!\012\000"
	.space	3
.LC10:
	.ascii	"*****************copy packets tobe one*************"
	.ascii	"****\012\000"
	.space	3
.LC11:
	.ascii	"*****************two packet*****************\012\000"
	.space	2
.LC12:
	.ascii	"ERROR: Wrong PreParseInfo about Vp6 bReversed!\012\000"
.LC13:
	.ascii	"AVS last frame decsyntax err!\012\000"
	.space	1
.LC14:
	.ascii	"MPEG4 last frame decsyntax err!\012\000"
	.space	3
.LC15:
	.ascii	"MPEG2 last frame decsyntax err!\012\000"
	.space	3
.LC16:
	.ascii	"pSegMan->CurrSeg.IsLastSeg=%d\012\000"
	.space	1
.LC17:
	.ascii	"pSegMan->CurrSeg.PhyAddr=%#x\012\000"
	.space	2
.LC18:
	.ascii	"pSegMan->CurrSeg.LenInByte=%#x\012\000"
.LC19:
	.ascii	"ERROR: Wrong PreParseInfo about Vc1 IsAdvProfile!\012"
	.ascii	"\000"
	.space	1
.LC20:
	.ascii	"ERROR: Wrong PreParseInfo about Vc1 CodecVersion!\012"
	.ascii	"\000"
	.space	1
.LC21:
	.ascii	"VC1ap last frame decsyntax err!\012\000"
	.space	3
.LC22:
	.ascii	"LENTH ERROR: VC1 S/MP BS is wrong!\012\000"
.LC23:
	.ascii	"SYNTAX ERROR: VC1 S/MP BS is wrong!\012\000"
	.space	3
.LC24:
	.ascii	"H264 last frame decsyntax err!\012\000"
.LC25:
	.ascii	"%s, pstVoQue is NULL!!!\012\000"
	.space	3
.LC26:
	.ascii	"Queue=(%02d,%02d,%02d) - F%d\012\000"
	.space	2
.LC27:
	.ascii	"image[%d] null\012\000"
.LC28:
	.ascii	"Queue=(%02d,%02d,%02d) x F%d\012\000"
	.space	2
.LC29:
	.ascii	"call InsertVOQueue\012\000"
.LC30:
	.ascii	"FATAL: p_image(id=%d) has already in the VoQueue!\012"
	.ascii	"\000"
	.space	1
.LC31:
	.ascii	"error=%d,W=%d,H=%d,not acceptable!\012\000"
.LC32:
	.ascii	"Queue=(%02d,%02d,%02d) + F%d\012\000"
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
	.type	last_rec_pos_time.34571, %object
	.size	last_rec_pos_time.34571, 16
last_rec_pos_time.34571:
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
