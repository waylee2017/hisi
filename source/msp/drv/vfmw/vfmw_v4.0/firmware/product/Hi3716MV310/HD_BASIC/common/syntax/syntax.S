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
@ -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT -DVFMW_RAW_SUPPORT
@ -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1 -DCFG_MAX_CHAN_NUM=1
@ -DVFMW_DPRINT_SUPPORT -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
@ -DREPAIR_ENABLE -D_FORTIFY_SOURCE=2 -DCHIP_TYPE_hi3716mv310
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
	ldrd	r6, [r0, r3]	@ D.33200, pstVoQue, tmp140
	mov	r9, r5	@, ThisFramePts
	subs	r8, r8, r6	@ tmp141, tmp141, D.33200
	sbc	r9, r9, r7	@ tmp141, tmp141, D.33200
	cmp	r9, #0	@ tmp141,
	cmpeq	r8, #5	@ tmp141,
	bhi	.L3	@,
	mvn	r8, #0	@ tmp142,
	mvn	r9, #0	@,
	cmp	r7, r9	@ D.33200, tmp142
	cmpeq	r6, r8	@ D.33200, tmp142
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
	ldr	r3, [r5, #316]	@ D.33267, <variable>.SideInfo.SeqImgCnt
	str	ip, [r5, #296]	@ tmp171, <variable>.SideInfo.LastImageIdPlus2
	ldr	r0, [r4, #184]	@ D.33263, <variable>.seq_cnt
	add	ip, r3, #1	@ tmp185, D.33267,
	ldr	r9, [r4, #160]	@ <variable>.disp_center_x, <variable>.disp_center_x
	ldrh	r2, [r4, #164]	@ tmp179, <variable>.disp_center_y
	cmp	r0, r6	@ D.33263, <variable>.SideInfo.OldSeqCnt
	ldr	r7, [r4, #140]	@ temp.553, <variable>.format
	ldr	r8, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	orr	r9, r2, r9, asl #16	@, dcenter, tmp179, <variable>.disp_center_x,
	ldrh	r1, [r4, #152]	@ tmp174, <variable>.disp_width
	ubfx	r6, r7, #8, #2	@ ScanType, temp.553,,
	strne	r0, [r5, #320]	@ D.33263, <variable>.SideInfo.SeqCnt
	ubfx	r7, r7, #14, #3	@ AspectRatio, temp.553,,
	str	r3, [r4, #188]	@ D.33267, <variable>.seq_img_cnt
	orr	r8, r1, r8, asl #16	@, dsize, tmp174, <variable>.disp_height,
	ldr	r2, [r5, #272]	@ D.33269, <variable>.SideInfo.OldAspectRatio
	str	ip, [r5, #316]	@ tmp185, <variable>.SideInfo.SeqImgCnt
	cmp	r2, r7	@ D.33269, AspectRatio
	beq	.L14	@,
	movw	r1, #:lower16:g_event_report	@ tmp186,
	movt	r1, #:upper16:g_event_report	@ tmp186,
	ldr	r3, [r1, #0]	@ g_event_report.435, g_event_report
	cmp	r3, #0	@ g_event_report.435,
	beq	.L15	@,
	strb	r2, [sp, #0]	@ D.33269, para
	mov	r0, sl	@, ChanID
	strb	r7, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.435
.L15:
	str	r7, [r5, #272]	@ AspectRatio, <variable>.SideInfo.OldAspectRatio
.L14:
	ldr	ip, [r5, #276]	@ <variable>.SideInfo.OldScanType, <variable>.SideInfo.OldScanType
	cmp	ip, r6	@ <variable>.SideInfo.OldScanType, ScanType
	beq	.L16	@,
	movw	r3, #:lower16:g_event_report	@ tmp191,
	movt	r3, #:upper16:g_event_report	@ tmp191,
	ldr	r3, [r3, #0]	@ g_event_report.556, g_event_report
	cmp	r3, #0	@ g_event_report.556,
	beq	.L17	@,
	add	lr, sp, #8	@ tmp193,,
	mov	r0, sl	@, ChanID
	mov	r2, sp	@,
	mov	r1, #4	@,
	strb	r6, [lr, #-8]!	@ ScanType, para
	blx	r3	@ g_event_report.556
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
	ldr	r3, [r1, #0]	@ g_event_report.557, g_event_report
	cmp	r3, #0	@ g_event_report.557,
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
	blx	r3	@ g_event_report.557
.L19:
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	r3, ip, #2	@ tmp203, <variable>.image_id,
	str	r3, [r5, #296]	@ tmp203, <variable>.SideInfo.LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.33294, <variable>.luma_phy_addr
	ldr	r3, [r4, #108]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	r2, [r4, #88]	@ D.33294, <variable>.top_luma_phy_addr
	add	r0, r1, r3	@ tmp209, <variable>.image_stride, <variable>.chrom_phy_addr
	add	ip, r1, r2	@ tmp205, <variable>.image_stride, D.33294
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
	ldrh	r3, [r0, #6]	@ D.33396, <variable>.head
	ldrh	ip, [r0, #4]	@ D.33397, <variable>.history
	ldrh	r0, [r0, #8]	@ D.33405, <variable>.tail
	cmp	r3, ip	@ D.33396, D.33397
	addcc	r4, r3, #64	@ tmp142, D.33396,
	rsbcs	ip, ip, r3	@ ReadNum, D.33397, D.33396
	rsbcc	ip, ip, r4	@ ReadNum, D.33397, tmp142
	cmp	r3, r0	@ D.33396, D.33405
	addhi	r0, r0, #64	@ tmp143, D.33405,
	str	ip, [r1, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r3, r0	@ NewNum, D.33396, tmp143
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
.L38:
	.word	.L33
	.word	.L32
	.word	.L34
	.word	.L35
	.word	.L32
	.word	.L32
	.word	.L36
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L32
	.word	.L37
.L37:
	add	r0, r0, #16	@ pstVoQue, pSynCtx,
	bx	lr	@
.L32:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L33:
	add	r0, r0, #16	@ pstVoQue, pSynCtx,
	bx	lr	@
.L34:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r0, r1, #88	@ pstVoQue, pstVoQue,
	bx	lr	@
.L35:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
	bx	lr	@
.L36:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r0, r2, #32	@ pstVoQue, pstVoQue,
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
	cmp	r3, #0	@ <variable>.eVidStd,
	beq	.L50	@,
	cmn	r1, #2	@ RetValue,
	moveq	r0, r1	@ ret, RetValue
	bxeq	lr	@
	cmp	r1, #1	@ RetValue,
	bne	.L45	@,
.L44:
	mov	r0, #1	@ ret,
	bx	lr	@
.L50:
	cmp	r1, #0	@ RetValue,
	beq	.L44	@,
.L45:
	mvn	r0, #19	@ ret,
	bx	lr	@
	.fnend
	.size	SYNTAX_ReleaseImage_RecycleImage_CheckRet, .-SYNTAX_ReleaseImage_RecycleImage_CheckRet
	.align	2
	.global	CheckNewPicSegMpeg2
	.type	CheckNewPicSegMpeg2, %function
CheckNewPicSegMpeg2:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.652,
	mov	r2, r0	@ pNewPicDetector, pNewPicDetector
	cmp	r3, #0	@ prephitmp.652,
	cmpne	r3, #179	@, prephitmp.652,
	beq	.L52	@,
	cmp	r3, #184	@ prephitmp.652,
	beq	.L52	@,
	cmp	r3, #183	@ prephitmp.652,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
.L52:
	ldr	r0, [r2, #0]	@ tmp146,* pNewPicDetector
	cmp	r0, #0	@ tmp146,
	moveq	r3, #1	@ tmp147,
	streq	r3, [r2, #0]	@ tmp147,* pNewPicDetector
	ldreqb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.652,
	mvnne	r0, #0	@ ret,
	cmp	r3, #0	@ prephitmp.652,
	streq	r3, [r2, #0]	@ prephitmp.652,* pNewPicDetector
	bx	lr	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegMpeg4
	.type	CheckNewPicSegMpeg4, %function
CheckNewPicSegMpeg4:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.677,
	add	ip, r3, #75	@ tmp140, prephitmp.677,
	uxtb	ip, ip	@ tmp142, tmp140
	cmp	r3, #179	@ prephitmp.677,
	cmpne	ip, #1	@, tmp142,
	bls	.L58	@,
	cmp	r3, #176	@ prephitmp.677,
	beq	.L58	@,
	cmp	r3, #47	@ prephitmp.677,
	bhi	.L59	@,
.L58:
	ldr	ip, [r0, #0]	@ tmp149,* pNewPicDetector
	cmp	ip, #0	@ tmp149,
	bne	.L59	@,
.L60:
	mov	r3, #1	@ tmp150,
	str	r3, [r0, #0]	@ tmp150,* pNewPicDetector
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.677,
	mov	r2, #0	@ ret,
.L61:
	cmp	r3, #182	@ prephitmp.677,
	moveq	r3, #0	@ tmp151,
	streq	r3, [r0, #0]	@ tmp151,* pNewPicDetector
	mov	r0, r2	@, ret
	bx	lr	@
.L59:
	cmp	r2, #1	@ IsShortHead,
	mvnne	r2, #0	@ ret,
	bne	.L61	@,
	b	.L60	@
	.fnend
	.size	CheckNewPicSegMpeg4, .-CheckNewPicSegMpeg4
	.align	2
	.global	CheckNewPicSegAVS
	.type	CheckNewPicSegAVS, %function
CheckNewPicSegAVS:
	.fnstart
.LFB1620:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.704,
	mov	r2, r0	@ pNewPicDetector, pNewPicDetector
	cmp	r3, #179	@ prephitmp.704,
	movne	ip, #0	@, prephitmp.706
	moveq	ip, #1	@, prephitmp.706
	cmp	r3, #179	@ prephitmp.704,
	cmpne	r3, #176	@, prephitmp.704,
	beq	.L65	@,
	cmp	r3, #182	@ prephitmp.704,
	beq	.L65	@,
	cmp	r3, #183	@ prephitmp.704,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
.L65:
	ldr	r0, [r2, #0]	@ tmp147,* pNewPicDetector
	cmp	r0, #0	@ tmp147,
	mvnne	r0, #0	@ ret,
	beq	.L70	@,
.L68:
	cmp	r3, #182	@ prephitmp.704,
	movne	r1, ip	@, tmp155, prephitmp.706
	orreq	r1, ip, #1	@,, tmp155, prephitmp.706
	cmp	r1, #0	@ tmp155,
	movne	r1, #0	@ tmp156,
	strne	r1, [r2, #0]	@ tmp156,* pNewPicDetector
	bx	lr	@
.L70:
	mov	r3, #1	@ tmp148,
	str	r3, [r2, #0]	@ tmp148,* pNewPicDetector
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.704,
	cmp	r3, #179	@ prephitmp.704,
	movne	ip, #0	@, prephitmp.706
	moveq	ip, #1	@, prephitmp.706
	b	.L68	@
	.fnend
	.size	CheckNewPicSegAVS, .-CheckNewPicSegAVS
	.align	2
	.global	OpenUsdPool_WithMem
	.type	OpenUsdPool_WithMem, %function
OpenUsdPool_WithMem:
	.fnstart
.LFB1623:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	ip, [r3, r0, asl #2]	@ D.34137, pstVdecUsdPool
	cmp	ip, #0	@ D.34137,
	beq	.L78	@,
.L72:
	mov	r1, #0	@ tmp174,
	mov	r3, ip	@ ivtmp.749, D.34137
	mov	r2, r1	@ i, tmp174
	mov	r0, r1	@ tmp178, i
	str	r1, [ip, #0]	@ tmp174, <variable>.s32AccessIdx
.L74:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp180, ivtmp.749,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp178, <variable>.from
	str	r0, [r3, #1040]	@ tmp178, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.749, ivtmp.749,
	str	r0, [ip, #1040]	@ tmp178, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp178, <variable>.from
	bne	.L74	@,
	bx	lr	@
.L78:
	cmp	r1, #0	@ D.34137,
	str	r1, [r3, r0, asl #2]	@ D.34137, pstVdecUsdPool
	mov	ip, r1	@ D.34137, Viraddr
	mvneq	r0, #0	@ ret,
	bxeq	lr	@
	b	.L72	@
	.fnend
	.size	OpenUsdPool_WithMem, .-OpenUsdPool_WithMem
	.align	2
	.global	CloseUsdPool_WithMem
	.type	CloseUsdPool_WithMem, %function
CloseUsdPool_WithMem:
	.fnstart
.LFB1624:
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
.LFB1625:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r1, [r3, r0, asl #2]	@ D.34006, pstVdecUsdPool
	cmp	r1, #0	@ D.34006,
	mvneq	r0, #0	@ D.34010,
	bxeq	lr	@
	mov	r0, #0	@ tmp140,
	mov	r3, r1	@ ivtmp.806, D.34006
	mov	r2, r0	@ i, tmp140
	str	r0, [r1, #0]	@ tmp140, <variable>.s32AccessIdx
.L84:
	add	r2, r2, #2	@ i, i,
	add	r1, r3, #1072	@ tmp145, ivtmp.806,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp144, <variable>.from
	str	r0, [r3, #1040]	@ tmp144, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.806, ivtmp.806,
	str	r0, [r1, #1040]	@ tmp144, <variable>.dnr_used_flag
	str	r0, [r1, #1044]	@ tmp144, <variable>.from
	bne	.L84	@,
	bx	lr	@
	.fnend
	.size	InitUsdPool, .-InitUsdPool
	.align	2
	.global	GetUsd
	.type	GetUsd, %function
GetUsd:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r0, [r3, r0, asl #2]	@ D.34021, pstVdecUsdPool
	cmp	r0, #0	@ D.34021,
	bne	.L99	@,
.L89:
	mov	r0, #0	@ pstUsrDat,
.L91:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L99:
	mov	r2, r0	@ ivtmp.839, D.34021
	mov	r3, #0	@ i,
	b	.L92	@
.L90:
	ldr	r2, [r1, #1044]	@ <variable>.from, <variable>.from
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.from,
	mov	ip, r3	@ tmp203, i
	bne	.L95	@,
	ldr	r2, [r1, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	beq	.L98	@,
.L95:
	add	r3, ip, #1	@ i, tmp203,
	add	r2, r1, #1072	@ ivtmp.839, tmp204,
	cmp	r3, #192	@ i,
	beq	.L89	@,
.L92:
	ldr	ip, [r2, #1044]	@ <variable>.from, <variable>.from
	add	r1, r2, #1072	@ tmp204, ivtmp.839,
	cmp	ip, #0	@ <variable>.from,
	bne	.L90	@,
	ldr	r2, [r2, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	bne	.L90	@,
.L98:
	mov	r1, #1072	@ tmp150,
	mov	r5, #134	@ tmp145,
	mla	ip, r3, r1, r1	@ tmp179, i, tmp150, tmp150
	mul	r4, r5, r3	@ tmp144, tmp145, i
	mla	r3, r1, r3, r0	@ tmp151, tmp150, i, D.34021
	add	r5, ip, r0	@ tmp181, tmp179, D.34021
	add	r4, r4, #1	@ tmp146, tmp144,
	movw	r1, #1064	@ tmp154,
	strb	r2, [ip, r0]	@ <variable>.dnr_used_flag, <variable>.IsRegistered
	strh	r2, [r5, #4]	@ movhi	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_provider_code
	add	r0, r0, r4, asl #3	@, pstUsrDat, D.34021, tmp146,
	strb	r2, [r5, #1]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code
	mov	r4, #0	@ tmp159,
	strb	r2, [r5, #2]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code_extension_byte
	mov	r5, #0	@,
	str	r2, [r3, #1048]	@ <variable>.dnr_used_flag, <variable>.seq_cnt
	strd	r4, [r3, r1]	@ tmp159, tmp151, tmp154
	str	r2, [r3, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	str	r2, [r3, #1056]	@ <variable>.dnr_used_flag, <variable>.data_size
	str	r2, [r3, #1052]	@ <variable>.dnr_used_flag, <variable>.seq_img_cnt
	b	.L91	@
	.fnend
	.size	GetUsd, .-GetUsd
	.align	2
	.global	FreeUsdByDec
	.type	FreeUsdByDec, %function
FreeUsdByDec:
	.fnstart
.LFB1627:
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
.LFB1628:
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
.LFB1629:
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
.LFB1632:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #296]	@ D.34097, <variable>.SideInfo.LastImageIdPlus2
	cmp	r0, #1	@ D.34097,
	mvnls	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.align	2
	.global	SetAspectRatio
	.type	SetAspectRatio, %function
SetAspectRatio:
	.fnstart
.LFB1631:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0	@ pImg, pImg
	cmp	r1, #5	@ Code,
	ldrls	pc, [pc, r1, asl #2]	@ Code
	b	.L113	@
.L120:
	.word	.L114
	.word	.L115
	.word	.L116
	.word	.L117
	.word	.L118
	.word	.L119
.L119:
	mov	ip, #0	@ tmp145,
	mov	r1, #2	@ tmp146,
	str	ip, [r0, #60]	@ tmp145, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp146, <variable>.u32AspectHeight
	bx	lr	@
.L113:
	mov	r0, #1	@ tmp148,
	mov	r2, r1	@, Code
	str	r0, [r3, #64]	@ tmp148, <variable>.u32AspectHeight
	mov	r1, #0	@ tmp147,
	str	r1, [r3, #60]	@ tmp147, <variable>.u32AspectWidth
	movw	r1, #:lower16:.LC0	@,
	movt	r1, #:upper16:.LC0	@,
	b	dprint_vfmw	@
.L114:
	mov	r0, #0	@ tmp135,
	mov	r2, #1	@ tmp136,
	str	r0, [r3, #60]	@ tmp135, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp136, <variable>.u32AspectHeight
	bx	lr	@
.L115:
	mov	ip, #4	@ tmp137,
	mov	r1, #3	@ tmp138,
	str	ip, [r0, #60]	@ tmp137, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp138, <variable>.u32AspectHeight
	bx	lr	@
.L116:
	mov	r0, #16	@ tmp139,
	mov	r2, #9	@ tmp140,
	str	r0, [r3, #60]	@ tmp139, <variable>.u32AspectWidth
	str	r2, [r3, #64]	@ tmp140, <variable>.u32AspectHeight
	bx	lr	@
.L117:
	mov	ip, #221	@ tmp141,
	mov	r1, #100	@ tmp142,
	str	ip, [r0, #60]	@ tmp141, <variable>.u32AspectWidth
	str	r1, [r0, #64]	@ tmp142, <variable>.u32AspectHeight
	bx	lr	@
.L118:
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
.LFB1630:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_image
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L132	@,
	ldrh	r3, [r0, #4]	@ i, <variable>.history
	ldrh	r4, [r0, #8]	@ D.34067, <variable>.tail
	and	r3, r3, #63	@ i.979, i,
	cmp	r4, r3	@ D.34067, i.979
	bne	.L130	@,
	b	.L126	@
.L127:
	cmp	r3, r4	@ i.979, D.34067
	beq	.L126	@,
.L130:
	add	r2, r0, r3, asl #2	@, tmp146, pstVoQue, i.979,
	add	ip, r3, #1	@ i.980, i.979,
	and	r3, ip, #63	@ i.979, i.980,
	ldr	r2, [r2, #12]	@ D.34070, <variable>.image_ptr
	cmp	r2, #0	@ D.34070,
	beq	.L127	@,
	ldr	ip, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L127	@,
	mov	r0, #0	@ D.34064,
	ldmfd	sp!, {r4, pc}	@
.L126:
	mvn	r0, #0	@ D.34064,
	ldmfd	sp!, {r4, pc}	@
.L132:
	mov	r0, r1	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34064,
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
	mov	r6, r0	@ D.33215,
	mov	r7, r1	@ D.33215,
	mov	r0, #29	@,
	strd	r6, [r4, #8]	@ D.33215, p_image,
	movw	r1, #:lower16:.LC2	@,
	movt	r1, #:upper16:.LC2	@,
	strd	r6, [sp]	@ D.33215,
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
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r2, #0]	@ pu8, <variable>.VirAddr
	cmp	r1, #6	@ VidStd,
	ldrls	pc, [pc, r1, asl #2]	@ VidStd
	b	.L138	@
.L143:
	.word	.L139
	.word	.L138
	.word	.L140
	.word	.L141
	.word	.L138
	.word	.L138
	.word	.L142
.L142:
	mov	r1, r2	@, pu8
	b	CheckNewPicSegAVS	@
.L141:
	mov	r1, r2	@, pu8
	b	CheckNewPicSegMpeg2	@
.L140:
	mov	r1, r2	@, pu8
	mov	r2, r3	@, IsShortHead
	b	CheckNewPicSegMpeg4	@
.L139:
	mov	r1, r2	@, pu8
	b	H264_IsNewPicNal	@
.L138:
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	CheckNewPicSegByVidStd, .-CheckNewPicSegByVidStd
	.align	2
	.global	IsNewpicSeg
	.type	IsNewpicSeg, %function
IsNewpicSeg:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2	@ VidStd,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r4, [r2, #0]	@ pu8, <variable>.VirAddr
	beq	.L155	@,
.L147:
	ldrb	r5, [r4, #0]	@ zero_extendqisi2	@ D.33967,* pu8
	cmp	r5, #0	@ D.33967,
	bne	.L156	@,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.1045,
	cmp	r3, #0	@ prephitmp.1045,
	ldrneb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.1049,
	bne	.L150	@,
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.1049,
	cmp	ip, #1	@ prephitmp.1049,
	bne	.L150	@,
.L152:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, lr}
	b	CheckNewPicSegByVidStd	@
.L155:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ tmp144,
	tst	r3, #1	@ tmp144,
	movne	r3, #1	@ IsShortHead,
	bne	.L152	@,
	b	.L147	@
.L156:
	ldrb	ip, [r4, #2]	@ zero_extendqisi2	@ prephitmp.1049,
	ldrb	r3, [r4, #1]	@ zero_extendqisi2	@ prephitmp.1045,
.L150:
	mov	r2, r5	@, D.33967
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	str	ip, [sp, #0]	@ prephitmp.1049,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	mov	r2, r0	@ VidStd, VidStd
	.pad #12
	sub	sp, sp, #12	@,,
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L158	@
.L163:
	.word	.L159
	.word	.L158
	.word	.L160
	.word	.L161
	.word	.L158
	.word	.L158
	.word	.L162
.L162:
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	AVS_ClearCurPic	@
.L161:
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	MP2_ClearCurPic	@
.L160:
	mov	r0, r1	@, pCtx
	str	r1, [sp, #4]	@,
	bl	MP4_ClearCurPic	@
	ldr	r1, [sp, #4]	@,
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	MP4_Clean_HeadPacket	@
.L159:
	mov	r0, r1	@, pCtx
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	H264_ClearCurrPic	@
.L158:
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC4	@,
	add	sp, sp, #12	@,,
	ldr	lr, [sp], #4
	b	dprint_vfmw	@
	.fnend
	.size	ReleaseCurPic, .-ReleaseCurPic
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pCtx, pCtx
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L166	@
.L170:
	.word	.L172
	.word	.L166
	.word	.L168
	.word	.L172
	.word	.L166
	.word	.L166
	.word	.L169
.L169:
	movw	r1, #:lower16:.LC5	@,
	mov	r0, #22	@,
	movt	r1, #:upper16:.LC5	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L168:
	movw	r0, #22060	@ tmp137,
	movw	r6, #22960	@ tmp138,
	ldr	r5, [r1, r0]	@ D.33824, <variable>.pstExtraData
	ldr	r0, [r1, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #240]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ <variable>.IsLastSeg, <variable>.IsLastSeg
	cmp	r3, #1	@ <variable>.IsLastSeg,
	beq	.L171	@,
	ldr	r0, [r4, r6]	@, <variable>.ChanID
	ldr	r1, [r5, #320]	@, <variable>.StreamID
	bl	SM_ReleaseStreamSeg	@
.L171:
	add	r0, r5, #224	@, D.33824,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L172:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L166:
	mov	r2, r0	@, VidStd
	movw	r1, #:lower16:.LC4	@,
	mov	r0, #0	@,
	movt	r1, #:upper16:.LC4	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	SegMan
	.type	SegMan, %function
SegMan:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r1, #0	@ pSegMan, pSegMan
	mov	r6, r0	@ ChanID, ChanID
	beq	.L174	@,
	ldr	r3, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	cmp	r3, #0	@ <variable>.CurrSeg.VirAddr,
	beq	.L174	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.33735, <variable>.CurrSeg.IsLastSeg
	cmp	r5, #1	@ D.33735,
	beq	.L186	@,
	cmp	r5, #0	@ D.33735,
	beq	.L187	@,
.L179:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L187:
	add	r8, r4, #88	@ temp.1133, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, temp.1133
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r2, [r4, #2]	@ zero_extendqisi2	@ <variable>.ConvolutionPacketNum, <variable>.ConvolutionPacketNum
	add	r1, r2, #1	@ tmp163, <variable>.ConvolutionPacketNum,
	uxtb	r0, r1	@ D.33753, tmp163
	strb	r0, [r4, #2]	@ D.33753, <variable>.ConvolutionPacketNum
	cmp	r0, #1	@ D.33753,
	bls	.L179	@,
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, <variable>.StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, temp.1133
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC7	@,
	movt	r1, #:upper16:.LC7	@,
	bl	dprint_vfmw	@
	movw	ip, #:lower16:g_event_report	@ tmp168,
	movt	ip, #:upper16:g_event_report	@ tmp168,
	ldr	r3, [ip, #0]	@ g_event_report.473, g_event_report
	cmp	r3, #0	@ g_event_report.473,
	beq	.L180	@,
	mov	r0, r6	@, ChanID
	mov	r2, r5	@, D.33735
	mov	r1, #113	@,
	blx	r3	@ g_event_report.473
.L180:
	mov	lr, #0	@ tmp169,
	mvn	r0, #0	@ ret,
	strb	lr, [r4, #2]	@ tmp169, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L186:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.33737, <variable>.ConvolutionPacketNum
	cmp	r5, #0	@ D.33737,
	beq	.L188	@,
	cmp	r5, #1	@ D.33737,
	bne	.L179	@,
	movw	r2, #:lower16:s_pstVfmwChan	@ tmp171,
	movt	r2, #:upper16:s_pstVfmwChan	@ tmp171,
	movw	r3, #:lower16:1047552	@ tmp212,
	movt	r3, #:upper16:1047552	@ tmp212,
	ldr	ip, [r2, r0, asl #2]	@ tmp172, s_pstVfmwChan
	ldr	r0, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [ip, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #6	@ <variable>.eVidStd,
	movne	r3, #1024	@ prephitmp.1122,
	cmp	r3, r0	@ prephitmp.1122, <variable>.LenInByte
	bhi	.L189	@,
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC9	@,
	movt	r1, #:upper16:.LC9	@,
	bl	dprint_vfmw	@
	add	r0, r4, #168	@, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
.L184:
	mov	r0, #0	@ tmp208,
	strb	r0, [r4, #2]	@ tmp208, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L188:
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.33737, <variable>.ConvolutionPacketNum
	mov	r0, r5	@ ret, D.33737
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L189:
	mov	r0, #22	@,
	movw	r1, #:lower16:.LC8	@,
	movt	r1, #:upper16:.LC8	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #100]	@ temp.1137, <variable>.LenInByte
	ldr	r0, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, <variable>.VirAddr
	mov	r2, r3	@, temp.1137
	rsb	r0, r3, r0	@, temp.1137, <variable>.CurrSeg.VirAddr
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
	strb	r5, [r4, #93]	@ D.33737, <variable>.IsLastSeg
	str	r2, [r4, #96]	@ tmp190, <variable>.PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	str	r3, [r4, #104]	@ <variable>.CurrSeg.StreamID, <variable>.StreamID
	bl	__memzero	@
	b	.L184	@
.L174:
	mov	r0, #1	@,
	movw	r1, #:lower16:.LC6	@,
	movt	r1, #:upper16:.LC6	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	SegMan, .-SegMan
	.align	2
	.global	DecodeStream_AVS
	.type	DecodeStream_AVS, %function
DecodeStream_AVS:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r3, #16608	@ tmp140,
	mov	r5, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx.470
	mov	r4, r1	@ pstCtx.470, pstCtx
	ldr	r6, [r1, r3]	@ ChanID, <variable>.ChanID
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	bne	.L191	@,
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp141,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp141,
	ldr	r3, [r0, r6, asl #2]	@ D.33677, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L196	@,
.L192:
	add	ip, r4, #16384	@, pstCtx.470,
	mov	r0, r4	@, pstCtx.470
	add	r1, ip, #64	@,,
	bl	AVSDEC_Decode	@
.L191:
	movw	lr, #16608	@ tmp146,
	mov	r1, r5	@, pSegMan
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L197	@,
	ldr	r5, [r4, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r5, #0	@ <variable>.pAvsDecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L198:
	movw	r6, #17124	@ tmp150,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC10	@,
	movt	r1, #:upper16:.LC10	@,
	bl	dprint_vfmw	@
	movw	r3, #16608	@ tmp153,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r5, [r4, r6]	@ <variable>.pAvsDecParam, <variable>.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L197:
	add	r1, r5, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx.470
	bl	AVSDEC_Decode	@
	ldr	r5, [r4, #4]	@ <variable>.pAvsDecParam, <variable>.pAvsDecParam
	cmp	r5, #0	@ <variable>.pAvsDecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L198	@
.L196:
	ldr	r1, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L191	@,
	b	.L192	@
	.fnend
	.size	DecodeStream_AVS, .-DecodeStream_AVS
	.align	2
	.global	DecodeStream_MPEG4
	.type	DecodeStream_MPEG4, %function
DecodeStream_MPEG4:
	.fnstart
.LFB1612:
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
	beq	.L205	@,
.L200:
	movw	lr, #22960	@ tmp146,
	mov	r1, r5	@, pSegMan
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L206	@,
	ldr	r5, [r4, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r5, #0	@ <variable>.pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L207:
	movw	r6, #22996	@ tmp150,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC11	@,
	movt	r1, #:upper16:.LC11	@,
	bl	dprint_vfmw	@
	movw	r3, #22960	@ tmp153,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r5, [r4, r6]	@ <variable>.pMp4DecParam, <variable>.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L206:
	add	r1, r5, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG4DEC_Decode	@
	ldr	r5, [r4, #1036]	@ <variable>.pMp4DecParam, <variable>.pMp4DecParam
	cmp	r5, #0	@ <variable>.pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L207	@
.L205:
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp141,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp141,
	ldr	r3, [r0, r6, asl #2]	@ D.33646, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L208	@,
.L201:
	add	ip, r4, #15680	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, ip, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L200	@
.L208:
	ldr	r1, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L200	@,
	b	.L201	@
	.fnend
	.size	DecodeStream_MPEG4, .-DecodeStream_MPEG4
	.align	2
	.global	DecodeStream_MPEG2
	.type	DecodeStream_MPEG2, %function
DecodeStream_MPEG2:
	.fnstart
.LFB1611:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:73696	@ tmp140,
	movt	r3, #:upper16:73696	@ tmp140,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx.463
	mov	r4, r1	@ pstCtx.463, pstCtx
	ldr	r6, [r1, r3]	@ ChanID, <variable>.ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L215	@,
.L210:
	movw	lr, #:lower16:73696	@ tmp146,
	movt	lr, #:upper16:73696	@ tmp146,
	mov	r1, r5	@, pSegMan
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L216	@,
	ldr	r5, [r4, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r5, #0	@ <variable>.pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L217:
	movw	r6, #:lower16:73713	@ tmp150,
	movt	r6, #:upper16:73713	@ tmp150,
	ldrb	r0, [r4, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r1, #:lower16:.LC12	@,
	movt	r1, #:upper16:.LC12	@,
	bl	dprint_vfmw	@
	movw	r3, #:lower16:73696	@ tmp153,
	movt	r3, #:upper16:73696	@ tmp153,
	ldr	r0, [r4, r3]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r5, [r4, r6]	@ <variable>.pMp2DecParam, <variable>.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L216:
	add	r1, r5, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx.463
	bl	MPEG2DEC_Decode	@
	ldr	r5, [r4, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r5, #0	@ <variable>.pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L217	@
.L215:
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp141,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp141,
	ldr	r3, [r0, r6, asl #2]	@ D.33614, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L218	@,
.L211:
	add	ip, r4, #72704	@, pstCtx.463,
	mov	r0, r4	@, pstCtx.463
	add	r1, ip, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L210	@
.L218:
	ldr	r1, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L210	@,
	b	.L211	@
	.fnend
	.size	DecodeStream_MPEG2, .-DecodeStream_MPEG2
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
	beq	.L222	@,
.L221:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L222:
	movw	r6, #13556	@ tmp150,
	ldrb	r0, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r0, #1	@ <variable>.IsStreamEndFlag,
	bne	.L221	@,
	movw	r1, #:lower16:.LC13	@,
	movt	r1, #:upper16:.LC13	@,
	bl	dprint_vfmw	@
	movw	r1, #52840	@ tmp153,
	ldr	r0, [r5, r1]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pH264DecParam, <variable>.IsStreamEndFlag
	b	.L221	@
	.fnend
	.size	DecodeStream_H264, .-DecodeStream_H264
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #6	@ VideoStandard,
	ldrls	pc, [pc, r1, asl #2]	@ VideoStandard
	b	.L230	@
.L229:
	.word	.L225
	.word	.L230
	.word	.L226
	.word	.L227
	.word	.L230
	.word	.L230
	.word	.L228
.L228:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_AVS	@
.L227:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L226:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG4	@
.L225:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L230:
	bx	lr	@
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
	b	.L232	@
.L238:
	.word	.L237
	.word	.L232
	.word	.L234
	.word	.L235
	.word	.L232
	.word	.L232
	.word	.L236
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L232
	.word	.L237
.L237:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L240:
	ldr	r0, .L242	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	ldr	r0, .L242	@,
	sub	r3, r1, #1	@ tmp145, <variable>.head,
	and	ip, r3, #63	@ tmp147, tmp145,
	strh	ip, [r4, #6]	@ movhi	@ tmp147, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.33571,
	ldmfd	sp!, {r4, pc}	@
.L232:
	mvn	r0, #1	@ D.33571,
	ldmfd	sp!, {r4, pc}	@
.L234:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r1, #88	@ pstVoQue, pstVoQue,
	b	.L240	@
.L235:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L240	@
.L236:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r2, #32	@ pstVoQue, pstVoQue,
	b	.L240	@
.L243:
	.align	2
.L242:
	.word	.LANCHOR0+4
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
	mov	r5, r1	@ p_image, p_image
	.pad #8
	sub	sp, sp, #8	@,,
	mvneq	r6, #1	@ ret,
	beq	.L246	@,
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L259	@
.L253:
	.word	.L252
	.word	.L259
	.word	.L249
	.word	.L250
	.word	.L259
	.word	.L259
	.word	.L251
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L259
	.word	.L252
.L252:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L254:
	cmp	r4, #0	@ pstVoQue,
	beq	.L259	@,
	ldr	r0, .L260	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ D.33441, <variable>.head
	ldrh	r0, [r4, #8]	@ <variable>.tail, <variable>.tail
	cmp	r0, r3	@ <variable>.tail, D.33441
	mvneq	r6, #2	@ ret,
	beq	.L257	@,
	add	lr, r4, r3, asl #2	@, tmp158, pstVoQue, D.33441,
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [lr, #12]	@, <variable>.image_ptr
	bl	memcpy	@
	ldrh	ip, [r4, #8]	@ <variable>.tail, <variable>.tail
	ldrh	r2, [r4, #4]	@ <variable>.history, <variable>.history
	mov	r0, #12	@,
	ldrh	r3, [r4, #6]	@ <variable>.head, <variable>.head
	movw	r1, #:lower16:.LC15	@,
	str	ip, [sp, #0]	@ <variable>.tail,
	movt	r1, #:upper16:.LC15	@,
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	ip, [r4, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	add	r0, r3, ip	@ tmp172, <variable>.image_id, <variable>.ResetMagicWord
	str	r0, [r5, #176]	@ tmp172, <variable>.image_id
	ldr	r2, [r4, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	str	r2, [r5, #380]	@ <variable>.ResetMagicWord, <variable>.resetNum
	ldrh	r1, [r4, #6]	@ <variable>.head, <variable>.head
	add	r3, r1, r6	@ tmp176, <variable>.head,
	and	ip, r3, #63	@ tmp178, tmp176,
	strh	ip, [r4, #6]	@ movhi	@ tmp178, <variable>.head
.L257:
	ldr	r0, .L260	@,
	bl	OSAL_SpinUnLockIRQ	@
.L246:
	mov	r0, r6	@, ret
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L251:
	add	r2, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r2, #32	@ pstVoQue, pstVoQue,
	b	.L254	@
.L249:
	add	r1, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r1, #88	@ pstVoQue, pstVoQue,
	b	.L254	@
.L250:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L254	@
.L259:
	movw	r1, #:lower16:.LC14	@,
	movw	r2, #:lower16:.LANCHOR1	@,
	movt	r1, #:upper16:.LC14	@,
	movt	r2, #:upper16:.LANCHOR1	@,
	mov	r0, #1	@,
	mvn	r6, #1	@ ret,
	bl	dprint_vfmw	@
	b	.L246	@
.L261:
	.align	2
.L260:
	.word	.LANCHOR0+4
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
	ldr	r5, .L264	@ tmp135,
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
.L265:
	.align	2
.L264:
	.word	.LANCHOR0+4
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
	ldr	r3, [r0, #0]	@ prephitmp.1355, <variable>.eVidStd
	mov	r4, r0	@ pSynCtx, pSynCtx
	cmp	r3, #18	@ prephitmp.1355,
	ldrls	pc, [pc, r3, asl #2]	@ prephitmp.1355
	b	.L267	@
.L273:
	.word	.L268
	.word	.L267
	.word	.L269
	.word	.L270
	.word	.L267
	.word	.L267
	.word	.L271
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L267
	.word	.L272
.L272:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1355, <variable>.eVidStd
.L274:
	cmp	r3, #0	@ prephitmp.1355,
	beq	.L283	@,
.L282:
	cmn	r0, #2	@ ret,
	ldmeqfd	sp!, {r4, pc}	@
	cmp	r0, #1	@ ret,
	beq	.L277	@,
.L278:
	mvn	r0, #19	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L267:
	cmp	r3, #0	@ prephitmp.1355,
	mvn	r0, #1	@ ret,
	bne	.L282	@,
.L283:
	cmp	r0, #0	@ ret,
	bne	.L278	@,
.L277:
	mov	r0, #1	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L268:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	H264DEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1355, <variable>.eVidStd
	b	.L274	@
.L269:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1355, <variable>.eVidStd
	b	.L274	@
.L270:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1355, <variable>.eVidStd
	b	.L274	@
.L271:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1355, <variable>.eVidStd
	b	.L274	@
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
	beq	.L310	@,
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #18	@ <variable>.eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ <variable>.eVidStd
	b	.L307	@
.L293:
	.word	.L292
	.word	.L307
	.word	.L289
	.word	.L290
	.word	.L307
	.word	.L307
	.word	.L291
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L307
	.word	.L292
.L292:
	add	r7, r0, #16	@ pstVoQue, pSynCtx,
.L294:
	cmp	r7, #0	@ pstVoQue,
	beq	.L307	@,
	ldr	r0, .L312	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r7, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	ldr	r2, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	rsb	ip, r3, r2	@ tmp167, <variable>.ResetMagicWord, <variable>.image_id
	str	ip, [r4, #176]	@ tmp167, <variable>.image_id
	ldrh	r6, [r7, #4]	@ i, <variable>.history
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	and	r6, r6, #63	@ i.1405, i,
	cmp	r3, r6	@ <variable>.head, i.1405
	bne	.L308	@,
	b	.L296	@
.L298:
	add	r6, r6, #1	@ i.1404, i.1405,
	and	r6, r6, #63	@ i.1405, i.1404,
	cmp	r3, r6	@ <variable>.head, i.1405
	beq	.L296	@,
.L308:
	add	r8, r6, #2	@ tmp200, i.1405,
	add	lr, r7, r8, asl #2	@, tmp172, pstVoQue, tmp200,
	ldr	r2, [lr, #4]	@ D.33535, <variable>.image_ptr
	cmp	r2, #0	@ D.33535,
	beq	.L297	@,
	ldr	r1, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r0, r1	@ <variable>.image_id, <variable>.image_id
	moveq	sl, #1	@ SameImageFlag,
	bne	.L298	@,
.L299:
	ldrh	lr, [r7, #4]	@ temp.1397, <variable>.history
	b	.L303	@
.L311:
	mov	r6, r2	@ i.1405, j
.L303:
	cmp	r6, #0	@ i.1405,
	sub	r2, r6, #1	@ j, i.1405,
	add	r0, r7, r8, asl #2	@, tmp180, pstVoQue, tmp200,
	moveq	r2, #63	@ j,
	add	r1, r2, #2	@ tmp182, j,
	cmp	lr, r6	@ temp.1397, i.1405
	add	ip, r7, r1, asl #2	@, tmp185, pstVoQue, tmp182,
	mov	r8, r1	@ tmp200, tmp182
	ldr	r1, [ip, #4]	@ tmp187, <variable>.image_ptr
	str	r1, [r0, #4]	@ tmp187, <variable>.image_ptr
	bne	.L311	@,
	cmp	sl, #1	@ SameImageFlag,
	add	lr, lr, #1	@ tmp188, temp.1397,
	and	r2, lr, #63	@ temp.1399, tmp188,
	strh	r2, [r7, #4]	@ movhi	@ temp.1399, <variable>.history
	bne	.L298	@,
	ldrh	lr, [r7, #8]	@ <variable>.tail, <variable>.tail
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC17	@,
	movt	r1, #:upper16:.LC17	@,
	str	lr, [sp, #0]	@ <variable>.tail,
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	str	ip, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	mov	r1, r4	@, p_image
	mov	r0, r5	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
	b	.L304	@
.L297:
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC16	@,
	mov	r2, r6	@, i.1405
	movt	r1, #:upper16:.LC16	@,
	bl	dprint_vfmw	@
	mov	sl, #2	@ SameImageFlag,
	ldrh	r3, [r7, #6]	@ <variable>.head, <variable>.head
	b	.L299	@
.L296:
	mvn	r4, #1	@ ret,
.L304:
	ldr	r0, .L312	@,
	bl	OSAL_SpinUnLockIRQ	@
.L286:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L307:
	movw	r1, #:lower16:.LC14	@,
	mov	r0, #1	@,
	movt	r1, #:upper16:.LC14	@,
	ldr	r2, .L312+4	@,
	bl	dprint_vfmw	@
.L310:
	mvn	r4, #1	@ ret,
	b	.L286	@
.L289:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r7, r0, #88	@ pstVoQue, pstVoQue,
	b	.L294	@
.L290:
	add	r7, r0, #72704	@ pstVoQue, pSynCtx,
	add	r7, r7, #648	@ pstVoQue, pstVoQue,
	b	.L294	@
.L291:
	add	r1, r0, #16064	@ pstVoQue, pSynCtx,
	add	r7, r1, #32	@ pstVoQue, pstVoQue,
	b	.L294	@
.L313:
	.align	2
.L312:
	.word	.LANCHOR0+4
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
	@ link register save eliminated.
	cmp	r0, #18	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L322	@
.L321:
	.word	.L316
	.word	.L322
	.word	.L317
	.word	.L318
	.word	.L322
	.word	.L322
	.word	.L319
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L322
	.word	.L320
.L320:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	USERDEC_RecycleImage	@
.L316:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	H264DEC_RecycleImage	@
.L317:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	MPEG4DEC_RecycleImage	@
.L318:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	MPEG2DEC_RecycleImage	@
.L319:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	AVSDEC_RecycleImage	@
.L322:
	bx	lr	@
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
	beq	.L344	@,
	mov	r0, #2	@,
	movw	r1, #:lower16:.LC18	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp230,
	movt	r1, #:upper16:.LC18	@,
	movt	r6, #:upper16:.LANCHOR0	@ tmp230,
	bl	dprint_vfmw	@
	add	r0, r6, #4	@, tmp230,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r8, [r5, #4]	@ i, <variable>.history
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r8, r8, #63	@ i.1474, i,
	cmp	r1, r8	@ <variable>.tail, i.1474
	beq	.L326	@,
	mov	sl, #1000	@ tmp235,
	b	.L342	@
.L327:
	add	ip, r8, #1	@ i.1465, i.1474,
	and	r8, ip, #63	@ i.1474, i.1465,
	cmp	r1, r8	@ <variable>.tail, i.1474
	beq	.L326	@,
.L342:
	add	r0, r5, r8, asl #2	@, tmp164, pstVoQue, i.1474,
	ldr	r3, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r0, #12]	@ tmp161, <variable>.image_ptr
	ldr	r2, [r2, #176]	@ D.33331, <variable>.image_id
	cmp	r2, r3	@ D.33331, <variable>.image_id
	bne	.L327	@,
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC19	@,
	movt	r1, #:upper16:.LC19	@,
	bl	dprint_vfmw	@
	str	sl, [r4, #180]	@ tmp235, <variable>.error_level
	add	ip, r8, #1	@ i.1465, i.1474,
	ldrh	r1, [r5, #8]	@ <variable>.tail, <variable>.tail
	and	r8, ip, #63	@ i.1474, i.1465,
	cmp	r1, r8	@ <variable>.tail, i.1474
	bne	.L342	@,
.L326:
	ldr	r2, [r4, #180]	@ D.33338, <variable>.error_level
	cmp	r2, #100	@ D.33338,
	bhi	.L345	@,
	ldr	r3, [r4, #144]	@ prephitmp.1454, <variable>.image_width
	cmp	r3, #31	@ prephitmp.1454,
	ldrls	ip, [r4, #148]	@ prephitmp.1473, <variable>.image_height
	bhi	.L346	@,
.L330:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC20	@,
	movt	r1, #:upper16:.LC20	@,
	str	ip, [sp, #0]	@ prephitmp.1473,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #180]	@ <variable>.error_level, <variable>.error_level
	cmp	r1, #1000	@ <variable>.error_level,
	beq	.L333	@,
	mov	r0, r7	@, eVidStd
	mov	r1, r9	@, pCtx
	mov	r2, r4	@, p_image
	bl	ReturnImageToSyntax	@
.L333:
	ldr	r0, .L348	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.33323,
.L325:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L346:
	ldr	ip, [r4, #148]	@ prephitmp.1473, <variable>.image_height
	cmp	ip, #31	@ prephitmp.1473,
	bls	.L330	@,
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
	movw	r1, #:lower16:.LC21	@,
	ldrh	r3, [r5, #6]	@ <variable>.head, <variable>.head
	movt	r1, #:upper16:.LC21	@,
	str	r8, [sp, #0]	@ <variable>.tail,
	movt	r7, #:upper16:g_VfmwChanStat	@ tmp178,
	str	lr, [sp, #4]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #8]	@ <variable>.tail, <variable>.tail
	add	r8, r7, sl, asl #3	@, pVfmwChanStat, tmp178, tmp176,
	ldr	r0, .L348	@,
	add	r2, r3, #1	@ tmp192, <variable>.tail,
	add	ip, r5, r3, asl #2	@, tmp188, pstVoQue, <variable>.tail,
	and	r1, r2, #63	@ tmp194, tmp192,
	strh	r1, [r5, #8]	@ movhi	@ tmp194, <variable>.tail
	str	r4, [ip, #12]	@ p_image, <variable>.image_ptr
	ldr	r3, [r4, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	str	r3, [r8, #20]	@ <variable>.is_fld_save, <variable>.u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r4, #300]	@ D.33356, <variable>.ImageDnr.video_standard
	sub	r2, r3, #10	@ tmp198, D.33356,
	cmp	r2, #2	@ tmp198,
	bhi	.L334	@,
	movw	ip, #:lower16:g_VdmCharacter	@ tmp199,
	movt	ip, #:upper16:g_VdmCharacter	@ tmp199,
	ldr	r0, [ip, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	r0, #1	@ g_VdmCharacter,
	bne	.L336	@,
.L335:
	movw	r1, #:lower16:g_event_report	@ tmp202,
	movt	r1, #:upper16:g_event_report	@ tmp202,
	ldr	r3, [r1, #0]	@ g_event_report.439, g_event_report
	cmp	r3, #0	@ g_event_report.439,
	beq	.L337	@,
	add	r2, sp, #16	@ tmp203,,
	mov	r0, fp	@, ChanID
	mov	r1, #5	@,
	str	r4, [r2, #-4]!	@ p_image, para
	blx	r3	@ g_event_report.439
.L337:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L347	@,
.L338:
	ldr	r0, [r8, #4]	@ <variable>.u32FrImgNum, <variable>.u32FrImgNum
	add	lr, r0, #1	@ tmp219, <variable>.u32FrImgNum,
	str	lr, [r8, #4]	@ tmp219, <variable>.u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r7, sl, asl #3]	@ <variable>.u32FrBeginTime, <variable>.u32FrBeginTime
	rsb	r1, r1, r0	@ Period, <variable>.u32FrBeginTime, CurTime.1476
	mov	r4, r0	@ CurTime.1476,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.33323,
	bcc	.L325	@,
	ldr	r3, [r8, #4]	@ temp.1477, <variable>.u32FrImgNum
	cmp	r3, #0	@ temp.1477,
	beq	.L340	@,
	movw	r2, #10000	@ tmp223,
	mul	r0, r2, r3	@, tmp223, temp.1477
	bl	__aeabi_uidiv	@
	str	r0, [r8, #8]	@, <variable>.u32FrFrameRate
.L340:
	mov	r3, #0	@ tmp227,
	mov	r0, #1	@ D.33323,
	str	r4, [r7, sl, asl #3]	@ CurTime.1476, <variable>.u32FrBeginTime
	str	r3, [r8, #4]	@ tmp227, <variable>.u32FrImgNum
	b	.L325	@
.L345:
	ldr	r3, [r4, #144]	@ prephitmp.1454, <variable>.image_width
	ldr	ip, [r4, #148]	@ prephitmp.1473, <variable>.image_height
	b	.L330	@
.L334:
	cmp	r3, #4	@ D.33356,
	beq	.L335	@,
	cmp	r3, #14	@ D.33356,
	beq	.L335	@,
.L336:
	cmp	r3, #18	@ D.33356,
	bne	.L337	@,
	b	.L335	@
.L347:
	bl	OSAL_GetTimeInMs	@
	add	r6, r6, fp, asl #2	@, tmp207, tmp230, ChanID,
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp211,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp211,
	ldr	r2, [r6, #12]	@ tmp210, last_rec_pos_time
	ldr	r3, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r4, r2, r0	@ tmp209, tmp210, CurTime
	cmp	r4, r3	@ tmp209, g_TraceFramePeriod
	strhi	r0, [r6, #12]	@ CurTime, last_rec_pos_time
	b	.L338	@
.L344:
	mov	r0, r4	@, p_image
	movw	r1, #:lower16:.LC1	@,
	movt	r1, #:upper16:.LC1	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.33323,
	b	.L325	@
.L349:
	.align	2
.L348:
	.word	.LANCHOR0+4
	.fnend
	.size	InsertImgToVoQueue, .-InsertImgToVoQueue
	.global	g_DnrEnable
	.global	pstVdecUsdPool
	.global	g_SpinLock
	.global	g_SpinLockIrq_Destroy
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.33430, %object
	.size	__func__.33430, 20
__func__.33430:
	.ascii	"SYNTAX_ReceiveImage\000"
	.type	__func__.33512, %object
	.size	__func__.33512, 20
__func__.33512:
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
	.ascii	"VidStd=%d Error!\012\000"
	.space	2
.LC5:
	.ascii	"release segbuf together!\012\000"
	.space	2
.LC6:
	.ascii	"pSegMan error!\012\000"
.LC7:
	.ascii	"More than two packet!!!ERROR!!!\012\000"
	.space	3
.LC8:
	.ascii	"*****************copy packets tobe one*************"
	.ascii	"****\012\000"
	.space	3
.LC9:
	.ascii	"*****************two packet*****************\012\000"
	.space	2
.LC10:
	.ascii	"AVS last frame decsyntax err!\012\000"
	.space	1
.LC11:
	.ascii	"MPEG4 last frame decsyntax err!\012\000"
	.space	3
.LC12:
	.ascii	"MPEG2 last frame decsyntax err!\012\000"
	.space	3
.LC13:
	.ascii	"H264 last frame decsyntax err!\012\000"
.LC14:
	.ascii	"%s, pstVoQue is NULL!!!\012\000"
	.space	3
.LC15:
	.ascii	"Queue=(%02d,%02d,%02d) - F%d\012\000"
	.space	2
.LC16:
	.ascii	"image[%d] null\012\000"
.LC17:
	.ascii	"Queue=(%02d,%02d,%02d) x F%d\012\000"
	.space	2
.LC18:
	.ascii	"call InsertVOQueue\012\000"
.LC19:
	.ascii	"FATAL: p_image(id=%d) has already in the VoQueue!\012"
	.ascii	"\000"
	.space	1
.LC20:
	.ascii	"error=%d,W=%d,H=%d,not acceptable!\012\000"
.LC21:
	.ascii	"Queue=(%02d,%02d,%02d) + F%d\012\000"
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
	.type	last_rec_pos_time.33314, %object
	.size	last_rec_pos_time.33314, 4
last_rec_pos_time.33314:
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
