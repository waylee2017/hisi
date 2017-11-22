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
@ -DVFMW_MPEG2_SUPPORT -DVFMW_BPD_H_SUPPORT -DVFMW_DNR_SUPPORT
@ -DVFMW_RAW_SUPPORT -DVFMW_USER_SUPPORT -DCFG_MAX_CHAN_NUM=1
@ -DCFG_MAX_CHAN_NUM=1 -DVFMW_AVSPLUS_SUPPORT -DVFMW_SYSTEM_REG_DISABLE
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
	ldrd	r6, [r0, r3]	@ D.32534, pstVoQue, tmp140
	mov	r9, r5	@, ThisFramePts
	subs	r8, r8, r6	@ tmp141, tmp141, D.32534
	sbc	r9, r9, r7	@ tmp141, tmp141, D.32534
	cmp	r9, #0	@ tmp141,
	cmpeq	r8, #5	@ tmp141,
	bhi	.L3	@,
	mvn	r8, #0	@ tmp142,
	mvn	r9, #0	@,
	cmp	r7, r9	@ D.32534, tmp142
	cmpeq	r6, r8	@ D.32534, tmp142
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
	.global	InsertImgToVoQueue_PtsProcess
	.type	InsertImgToVoQueue_PtsProcess, %function
InsertImgToVoQueue_PtsProcess:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}	@,
	.save {r4, r6, r7, lr}
	ldrd	r6, [r1, #8]	@ <variable>.PTS, p_image,
	mov	r4, r1	@ p_image, p_image
	strd	r6, [r1]	@ <variable>.PTS, <variable>.SrcPts
	bl	ProduceTimeStamp	@
	strd	r0, [r4, #8]	@ D.32549, p_image,
	ldmfd	sp!, {r4, r6, r7, pc}	@
	.fnend
	.size	InsertImgToVoQueue_PtsProcess, .-InsertImgToVoQueue_PtsProcess
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
	beq	.L15	@,
	ldr	r3, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	cmp	r3, #0	@ <variable>.disp_height,
	bne	.L26	@,
.L15:
	ldr	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	ldr	r0, [r4, #148]	@ <variable>.image_height, <variable>.image_height
	mov	r1, r3, lsr #1	@ tmp159, <variable>.image_width,
	str	r3, [r4, #152]	@ <variable>.image_width, <variable>.disp_width
	mov	r2, r0, lsr #1	@ tmp161, <variable>.image_height,
	str	r0, [r4, #156]	@ <variable>.image_height, <variable>.disp_height
	str	r1, [r4, #160]	@ tmp159, <variable>.disp_center_x
	str	r2, [r4, #164]	@ tmp161, <variable>.disp_center_y
.L16:
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
	ldr	r3, [r5, #316]	@ D.32599, <variable>.SideInfo.SeqImgCnt
	str	ip, [r5, #296]	@ tmp171, <variable>.SideInfo.LastImageIdPlus2
	ldr	r0, [r4, #184]	@ D.32595, <variable>.seq_cnt
	add	ip, r3, #1	@ tmp185, D.32599,
	ldr	r9, [r4, #160]	@ <variable>.disp_center_x, <variable>.disp_center_x
	ldrh	r2, [r4, #164]	@ tmp179, <variable>.disp_center_y
	cmp	r0, r6	@ D.32595, <variable>.SideInfo.OldSeqCnt
	ldr	r7, [r4, #140]	@ temp.559, <variable>.format
	ldr	r8, [r4, #156]	@ <variable>.disp_height, <variable>.disp_height
	orr	r9, r2, r9, asl #16	@, dcenter, tmp179, <variable>.disp_center_x,
	ldrh	r1, [r4, #152]	@ tmp174, <variable>.disp_width
	ubfx	r6, r7, #8, #2	@ ScanType, temp.559,,
	strne	r0, [r5, #320]	@ D.32595, <variable>.SideInfo.SeqCnt
	ubfx	r7, r7, #14, #3	@ AspectRatio, temp.559,,
	str	r3, [r4, #188]	@ D.32599, <variable>.seq_img_cnt
	orr	r8, r1, r8, asl #16	@, dsize, tmp174, <variable>.disp_height,
	ldr	r2, [r5, #272]	@ D.32601, <variable>.SideInfo.OldAspectRatio
	str	ip, [r5, #316]	@ tmp185, <variable>.SideInfo.SeqImgCnt
	cmp	r2, r7	@ D.32601, AspectRatio
	beq	.L18	@,
	movw	r1, #:lower16:g_event_report	@ tmp186,
	movt	r1, #:upper16:g_event_report	@ tmp186,
	ldr	r3, [r1, #0]	@ g_event_report.433, g_event_report
	cmp	r3, #0	@ g_event_report.433,
	beq	.L19	@,
	strb	r2, [sp, #0]	@ D.32601, para
	mov	r0, sl	@, ChanID
	strb	r7, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r2, sp	@,
	blx	r3	@ g_event_report.433
.L19:
	str	r7, [r5, #272]	@ AspectRatio, <variable>.SideInfo.OldAspectRatio
.L18:
	ldr	ip, [r5, #276]	@ <variable>.SideInfo.OldScanType, <variable>.SideInfo.OldScanType
	cmp	ip, r6	@ <variable>.SideInfo.OldScanType, ScanType
	beq	.L20	@,
	movw	r3, #:lower16:g_event_report	@ tmp191,
	movt	r3, #:upper16:g_event_report	@ tmp191,
	ldr	r3, [r3, #0]	@ g_event_report.562, g_event_report
	cmp	r3, #0	@ g_event_report.562,
	beq	.L21	@,
	add	lr, sp, #8	@ tmp193,,
	mov	r0, sl	@, ChanID
	mov	r2, sp	@,
	mov	r1, #4	@,
	strb	r6, [lr, #-8]!	@ ScanType, para
	blx	r3	@ g_event_report.562
.L21:
	str	r6, [r5, #276]	@ ScanType, <variable>.SideInfo.OldScanType
.L20:
	ldr	r0, [r5, #288]	@ <variable>.SideInfo.OldDispSize, <variable>.SideInfo.OldDispSize
	cmp	r0, r8	@ <variable>.SideInfo.OldDispSize, dsize
	beq	.L27	@,
.L22:
	movw	r1, #:lower16:g_event_report	@ tmp196,
	movt	r1, #:upper16:g_event_report	@ tmp196,
	str	r8, [r5, #288]	@ dsize, <variable>.SideInfo.OldDispSize
	str	r9, [r5, #292]	@ dcenter, <variable>.SideInfo.OldDispCenter
	ldr	r3, [r1, #0]	@ g_event_report.563, g_event_report
	cmp	r3, #0	@ g_event_report.563,
	beq	.L23	@,
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
	blx	r3	@ g_event_report.563
.L23:
	ldr	ip, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	r3, ip, #2	@ tmp203, <variable>.image_id,
	str	r3, [r5, #296]	@ tmp203, <variable>.SideInfo.LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.32626, <variable>.luma_phy_addr
	ldr	r3, [r4, #108]	@ <variable>.chrom_phy_addr, <variable>.chrom_phy_addr
	ldr	r1, [r4, #172]	@ <variable>.image_stride, <variable>.image_stride
	str	r2, [r4, #88]	@ D.32626, <variable>.top_luma_phy_addr
	add	r0, r1, r3	@ tmp209, <variable>.image_stride, <variable>.chrom_phy_addr
	add	ip, r1, r2	@ tmp205, <variable>.image_stride, D.32626
	str	r0, [r4, #100]	@ tmp209, <variable>.btm_chrom_phy_addr
	str	ip, [r4, #96]	@ tmp205, <variable>.btm_luma_phy_addr
	str	r3, [r4, #92]	@ <variable>.chrom_phy_addr, <variable>.top_chrom_phy_addr
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L26:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r3, [r4, #144]	@ <variable>.image_width, <variable>.image_width
	beq	.L16	@,
	b	.L15	@
.L27:
	ldr	r2, [r5, #292]	@ <variable>.SideInfo.OldDispCenter, <variable>.SideInfo.OldDispCenter
	cmp	r2, r9	@ <variable>.SideInfo.OldDispCenter, dcenter
	bne	.L22	@,
	b	.L23	@
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
	ldrh	r3, [r0, #6]	@ D.32720, <variable>.head
	ldrh	ip, [r0, #4]	@ D.32721, <variable>.history
	ldrh	r0, [r0, #8]	@ D.32729, <variable>.tail
	cmp	r3, ip	@ D.32720, D.32721
	addcc	r4, r3, #64	@ tmp142, D.32720,
	rsbcs	ip, ip, r3	@ ReadNum, D.32721, D.32720
	rsbcc	ip, ip, r4	@ ReadNum, D.32721, tmp142
	cmp	r3, r0	@ D.32720, D.32729
	addhi	r0, r0, #64	@ tmp143, D.32729,
	str	ip, [r1, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r3, r0	@ NewNum, D.32720, tmp143
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
	cmp	r3, #3	@ <variable>.eVidStd,
	addeq	r0, r0, #72704	@ pstVoQue, pSynCtx,
	addeq	r0, r0, #648	@ pstVoQue, pstVoQue,
	bxeq	lr	@
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L39	@,
	cmp	r3, #0	@ <variable>.eVidStd,
	addeq	r0, r0, #16	@ pstVoQue, pSynCtx,
	movne	r0, #0	@ pstVoQue,
	bx	lr	@
.L39:
	add	r0, r0, #16	@ pstVoQue, pSynCtx,
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
	beq	.L51	@,
	cmn	r1, #2	@ RetValue,
	moveq	r0, r1	@ ret, RetValue
	bxeq	lr	@
	cmp	r1, #1	@ RetValue,
	bne	.L46	@,
.L45:
	mov	r0, #1	@ ret,
	bx	lr	@
.L51:
	cmp	r1, #0	@ RetValue,
	beq	.L45	@,
.L46:
	mvn	r0, #19	@ ret,
	bx	lr	@
	.fnend
	.size	SYNTAX_ReleaseImage_RecycleImage_CheckRet, .-SYNTAX_ReleaseImage_RecycleImage_CheckRet
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
.LFB1614:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	CheckNewPicSegMpeg2
	.type	CheckNewPicSegMpeg2, %function
CheckNewPicSegMpeg2:
	.fnstart
.LFB1616:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.680,
	mov	r2, r0	@ pNewPicDetector, pNewPicDetector
	cmp	r3, #0	@ prephitmp.680,
	cmpne	r3, #179	@, prephitmp.680,
	beq	.L55	@,
	cmp	r3, #184	@ prephitmp.680,
	beq	.L55	@,
	cmp	r3, #183	@ prephitmp.680,
	mvnne	r0, #0	@ ret,
	bxne	lr	@
.L55:
	ldr	r0, [r2, #0]	@ tmp146,* pNewPicDetector
	cmp	r0, #0	@ tmp146,
	moveq	r3, #1	@ tmp147,
	streq	r3, [r2, #0]	@ tmp147,* pNewPicDetector
	ldreqb	r3, [r1, #3]	@ zero_extendqisi2	@ prephitmp.680,
	mvnne	r0, #0	@ ret,
	cmp	r3, #0	@ prephitmp.680,
	streq	r3, [r2, #0]	@ prephitmp.680,* pNewPicDetector
	bx	lr	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	OpenUsdPool_WithMem
	.type	OpenUsdPool_WithMem, %function
OpenUsdPool_WithMem:
	.fnstart
.LFB1619:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp172,
	movt	r3, #:upper16:.LANCHOR0	@ tmp172,
	ldr	ip, [r3, r0, asl #2]	@ D.33281, pstVdecUsdPool
	cmp	ip, #0	@ D.33281,
	beq	.L67	@,
.L61:
	mov	r1, #0	@ tmp174,
	mov	r3, ip	@ ivtmp.723, D.33281
	mov	r2, r1	@ i, tmp174
	mov	r0, r1	@ tmp178, i
	str	r1, [ip, #0]	@ tmp174, <variable>.s32AccessIdx
.L63:
	add	r2, r2, #2	@ i, i,
	add	ip, r3, #1072	@ tmp180, ivtmp.723,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp178, <variable>.from
	str	r0, [r3, #1040]	@ tmp178, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.723, ivtmp.723,
	str	r0, [ip, #1040]	@ tmp178, <variable>.dnr_used_flag
	str	r0, [ip, #1044]	@ tmp178, <variable>.from
	bne	.L63	@,
	bx	lr	@
.L67:
	cmp	r1, #0	@ D.33281,
	str	r1, [r3, r0, asl #2]	@ D.33281, pstVdecUsdPool
	mov	ip, r1	@ D.33281, Viraddr
	mvneq	r0, #0	@ ret,
	bxeq	lr	@
	b	.L61	@
	.fnend
	.size	OpenUsdPool_WithMem, .-OpenUsdPool_WithMem
	.align	2
	.global	CloseUsdPool_WithMem
	.type	CloseUsdPool_WithMem, %function
CloseUsdPool_WithMem:
	.fnstart
.LFB1620:
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
.LFB1621:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp139,
	movt	r3, #:upper16:.LANCHOR0	@ tmp139,
	ldr	r1, [r3, r0, asl #2]	@ D.33152, pstVdecUsdPool
	cmp	r1, #0	@ D.33152,
	mvneq	r0, #0	@ D.33156,
	bxeq	lr	@
	mov	r0, #0	@ tmp140,
	mov	r3, r1	@ ivtmp.780, D.33152
	mov	r2, r0	@ i, tmp140
	str	r0, [r1, #0]	@ tmp140, <variable>.s32AccessIdx
.L73:
	add	r2, r2, #2	@ i, i,
	add	r1, r3, #1072	@ tmp145, ivtmp.780,
	cmp	r2, #192	@ i,
	str	r0, [r3, #1044]	@ tmp144, <variable>.from
	str	r0, [r3, #1040]	@ tmp144, <variable>.dnr_used_flag
	add	r3, r3, #2144	@ ivtmp.780, ivtmp.780,
	str	r0, [r1, #1040]	@ tmp144, <variable>.dnr_used_flag
	str	r0, [r1, #1044]	@ tmp144, <variable>.from
	bne	.L73	@,
	bx	lr	@
	.fnend
	.size	InitUsdPool, .-InitUsdPool
	.align	2
	.global	GetUsd
	.type	GetUsd, %function
GetUsd:
	.fnstart
.LFB1622:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp141,
	movt	r3, #:upper16:.LANCHOR0	@ tmp141,
	stmfd	sp!, {r4, r5}	@,
	.save {r4, r5}
	ldr	r0, [r3, r0, asl #2]	@ D.33167, pstVdecUsdPool
	cmp	r0, #0	@ D.33167,
	bne	.L88	@,
.L78:
	mov	r0, #0	@ pstUsrDat,
.L80:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L88:
	mov	r2, r0	@ ivtmp.813, D.33167
	mov	r3, #0	@ i,
	b	.L81	@
.L79:
	ldr	r2, [r1, #1044]	@ <variable>.from, <variable>.from
	add	r3, r3, #1	@ i, i,
	cmp	r2, #0	@ <variable>.from,
	mov	ip, r3	@ tmp203, i
	bne	.L84	@,
	ldr	r2, [r1, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	beq	.L87	@,
.L84:
	add	r3, ip, #1	@ i, tmp203,
	add	r2, r1, #1072	@ ivtmp.813, tmp204,
	cmp	r3, #192	@ i,
	beq	.L78	@,
.L81:
	ldr	ip, [r2, #1044]	@ <variable>.from, <variable>.from
	add	r1, r2, #1072	@ tmp204, ivtmp.813,
	cmp	ip, #0	@ <variable>.from,
	bne	.L79	@,
	ldr	r2, [r2, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	cmp	r2, #0	@ <variable>.dnr_used_flag,
	bne	.L79	@,
.L87:
	mov	r1, #1072	@ tmp150,
	mov	r5, #134	@ tmp145,
	mla	ip, r3, r1, r1	@ tmp179, i, tmp150, tmp150
	mul	r4, r5, r3	@ tmp144, tmp145, i
	mla	r3, r1, r3, r0	@ tmp151, tmp150, i, D.33167
	add	r5, ip, r0	@ tmp181, tmp179, D.33167
	add	r4, r4, #1	@ tmp146, tmp144,
	movw	r1, #1064	@ tmp154,
	strb	r2, [ip, r0]	@ <variable>.dnr_used_flag, <variable>.IsRegistered
	strh	r2, [r5, #4]	@ movhi	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_provider_code
	add	r0, r0, r4, asl #3	@, pstUsrDat, D.33167, tmp146,
	strb	r2, [r5, #1]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code
	mov	r4, #0	@ tmp159,
	strb	r2, [r5, #2]	@ <variable>.dnr_used_flag, <variable>.itu_t_t35_country_code_extension_byte
	mov	r5, #0	@,
	str	r2, [r3, #1048]	@ <variable>.dnr_used_flag, <variable>.seq_cnt
	strd	r4, [r3, r1]	@ tmp159, tmp151, tmp154
	str	r2, [r3, #1040]	@ <variable>.dnr_used_flag, <variable>.dnr_used_flag
	str	r2, [r3, #1056]	@ <variable>.dnr_used_flag, <variable>.data_size
	str	r2, [r3, #1052]	@ <variable>.dnr_used_flag, <variable>.seq_img_cnt
	b	.L80	@
	.fnend
	.size	GetUsd, .-GetUsd
	.align	2
	.global	FreeUsdByDec
	.type	FreeUsdByDec, %function
FreeUsdByDec:
	.fnstart
.LFB1623:
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
.LFB1624:
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
.LFB1625:
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
	.global	IsImageInVoQueue
	.type	IsImageInVoQueue, %function
IsImageInVoQueue:
	.fnstart
.LFB1626:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ p_image
	str	r4, [sp, #-4]!	@,
	.save {r4}
	bne	.L106	@,
.L99:
	mvn	r0, #0	@ D.33209,
.L101:
	ldmfd	sp!, {r4}
	bx	lr
.L106:
	ldrh	r3, [r0, #4]	@ i, <variable>.history
	ldrh	r4, [r0, #8]	@ D.33212, <variable>.tail
	and	r3, r3, #63	@ i.907, i,
	cmp	r4, r3	@ D.33212, i.907
	bne	.L104	@,
	b	.L99	@
.L100:
	cmp	r3, r4	@ i.907, D.33212
	beq	.L99	@,
.L104:
	add	r2, r0, r3, asl #2	@, tmp145, pstVoQue, i.907,
	add	ip, r3, #1	@ i.908, i.907,
	and	r3, ip, #63	@ i.907, i.908,
	ldr	r2, [r2, #12]	@ D.33215, <variable>.image_ptr
	cmp	r2, #0	@ D.33215,
	beq	.L100	@,
	ldr	ip, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r2, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	ip, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L100	@,
	mov	r0, #0	@ D.33209,
	b	.L101	@
	.fnend
	.size	IsImageInVoQueue, .-IsImageInVoQueue
	.align	2
	.global	SetAspectRatio
	.type	SetAspectRatio, %function
SetAspectRatio:
	.fnstart
.LFB1627:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #5	@ Code,
	ldrls	pc, [pc, r1, asl #2]	@ Code
	b	.L108	@
.L115:
	.word	.L108
	.word	.L110
	.word	.L111
	.word	.L112
	.word	.L113
	.word	.L114
.L108:
	mov	ip, #0	@ tmp147,
	mov	r2, #1	@ tmp148,
	str	ip, [r0, #60]	@ tmp147, <variable>.u32AspectWidth
	str	r2, [r0, #64]	@ tmp148, <variable>.u32AspectHeight
	bx	lr	@
.L113:
	mov	ip, #235	@ tmp143,
	mov	r2, #100	@ tmp144,
	str	ip, [r0, #60]	@ tmp143, <variable>.u32AspectWidth
	str	r2, [r0, #64]	@ tmp144, <variable>.u32AspectHeight
	bx	lr	@
.L114:
	mov	r1, #0	@ tmp145,
	mov	r3, #2	@ tmp146,
	str	r1, [r0, #60]	@ tmp145, <variable>.u32AspectWidth
	str	r3, [r0, #64]	@ tmp146, <variable>.u32AspectHeight
	bx	lr	@
.L110:
	mov	r1, #4	@ tmp137,
	mov	r3, #3	@ tmp138,
	str	r1, [r0, #60]	@ tmp137, <variable>.u32AspectWidth
	str	r3, [r0, #64]	@ tmp138, <variable>.u32AspectHeight
	bx	lr	@
.L111:
	mov	ip, #16	@ tmp139,
	mov	r2, #9	@ tmp140,
	str	ip, [r0, #60]	@ tmp139, <variable>.u32AspectWidth
	str	r2, [r0, #64]	@ tmp140, <variable>.u32AspectHeight
	bx	lr	@
.L112:
	mov	r1, #221	@ tmp141,
	mov	r3, #100	@ tmp142,
	str	r1, [r0, #60]	@ tmp141, <variable>.u32AspectWidth
	str	r3, [r0, #64]	@ tmp142, <variable>.u32AspectHeight
	bx	lr	@
	.fnend
	.size	SetAspectRatio, .-SetAspectRatio
	.align	2
	.global	GetVoLastImageID
	.type	GetVoLastImageID, %function
GetVoLastImageID:
	.fnstart
.LFB1628:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #296]	@ D.33241, <variable>.SideInfo.LastImageIdPlus2
	cmp	r0, #1	@ D.33241,
	mvnls	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.align	2
	.global	CheckNewPicSegByVidStd
	.type	CheckNewPicSegByVidStd, %function
CheckNewPicSegByVidStd:
	.fnstart
.LFB1617:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #0	@ VidStd, VidStd
	ldr	r1, [r2, #0]	@ pu8, <variable>.VirAddr
	bne	.L127	@,
	b	H264_IsNewPicNal	@
.L127:
	cmp	r3, #3	@ VidStd,
	beq	.L124	@,
	mvn	r0, #0	@,
	bx	lr	@
.L124:
	b	CheckNewPicSegMpeg2	@
	.fnend
	.size	CheckNewPicSegByVidStd, .-CheckNewPicSegByVidStd
	.align	2
	.global	IsNewpicSeg
	.type	IsNewpicSeg, %function
IsNewpicSeg:
	.fnstart
.LFB1618:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #2	@ VidStd,
	ldr	ip, [r2, #0]	@ pu8, <variable>.VirAddr
	beq	.L133	@,
.L129:
	ldrb	r3, [ip, #0]	@ zero_extendqisi2	@ tmp145,* pu8
	cmp	r3, #0	@ tmp145,
	beq	.L134	@,
.L131:
	mvn	r0, #0	@,
	bx	lr	@
.L133:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ tmp141,
	tst	r3, #1	@ tmp141,
	movne	r3, #1	@ IsShortHead,
	beq	.L129	@,
.L130:
	b	CheckNewPicSegByVidStd	@
.L134:
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ tmp146,
	cmp	r3, #0	@ tmp146,
	bne	.L131	@,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ tmp147,
	cmp	ip, #1	@ tmp147,
	bne	.L131	@,
	b	.L130	@
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
.LFB1615:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r0, #0	@ VidStd, VidStd
	bne	.L141	@,
	mov	r0, r1	@, pCtx
	b	H264_ClearCurrPic	@
.L141:
	cmp	r3, #3	@ VidStd,
	bxne	lr	@
	mov	r0, r1	@, pCtx
	b	MP2_ClearCurPic	@
	.fnend
	.size	ReleaseCurPic, .-ReleaseCurPic
	.align	2
	.global	SegMan
	.type	SegMan, %function
SegMan:
	.fnstart
.LFB1613:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r1, #0	@ pSegMan, pSegMan
	mov	r5, r0	@ ChanID, ChanID
	bne	.L154	@,
.L143:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L154:
	ldr	r3, [r4, #8]	@ D.32965, <variable>.CurrSeg.VirAddr
	cmp	r3, #0	@ D.32965,
	beq	.L143	@,
	ldrb	r6, [r4, #13]	@ zero_extendqisi2	@ D.32969, <variable>.CurrSeg.IsLastSeg
	cmp	r6, #1	@ D.32969,
	beq	.L155	@,
	cmp	r6, #0	@ D.32969,
	beq	.L156	@,
.L147:
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L155:
	ldrb	r6, [r4, #2]	@ zero_extendqisi2	@ D.32971, <variable>.ConvolutionPacketNum
	cmp	r6, #0	@ D.32971,
	beq	.L157	@,
	cmp	r6, #1	@ D.32971,
	bne	.L147	@,
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp169,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp169,
	movw	lr, #:lower16:1047552	@ tmp206,
	movt	lr, #:upper16:1047552	@ tmp206,
	ldr	r2, [r0, r5, asl #2]	@ tmp170, s_pstVfmwChan
	ldr	r0, [r4, #100]	@ D.33017, <variable>.LenInByte
	ldr	r1, [r2, #880]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r1, #6	@ <variable>.eVidStd,
	movne	lr, #1024	@ prephitmp.1037,
	cmp	lr, r0	@ prephitmp.1037, D.33017
	bls	.L151	@,
	mov	r2, r0	@, D.33017
	ldr	r1, [r4, #88]	@, <variable>.VirAddr
	rsb	r0, r0, r3	@, D.33017, D.32965
	bl	memcpy	@
	ldr	r3, [r4, #100]	@ <variable>.LenInByte, <variable>.LenInByte
	ldr	r1, [r4, #8]	@ <variable>.CurrSeg.VirAddr, <variable>.CurrSeg.VirAddr
	mov	r0, r5	@, ChanID
	ldr	r2, [r4, #16]	@ <variable>.CurrSeg.PhyAddr, <variable>.CurrSeg.PhyAddr
	ldr	ip, [r4, #20]	@ <variable>.CurrSeg.LenInByte, <variable>.CurrSeg.LenInByte
	rsb	r1, r3, r1	@ tmp182, <variable>.LenInByte, <variable>.CurrSeg.VirAddr
	rsb	r2, r3, r2	@ tmp185, <variable>.LenInByte, <variable>.CurrSeg.PhyAddr
	str	r1, [r4, #88]	@ tmp182, <variable>.VirAddr
	add	r3, r3, ip	@ tmp188, <variable>.LenInByte, <variable>.CurrSeg.LenInByte
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	str	r3, [r4, #100]	@ tmp188, <variable>.LenInByte
	strb	r6, [r4, #93]	@ D.32971, <variable>.IsLastSeg
	str	r2, [r4, #96]	@ tmp185, <variable>.PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ <variable>.CurrSeg.StreamID, <variable>.CurrSeg.StreamID
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	str	r3, [r4, #104]	@ <variable>.CurrSeg.StreamID, <variable>.StreamID
	bl	__memzero	@
.L152:
	mov	r0, #0	@ tmp202,
	strb	r0, [r4, #2]	@ tmp202, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L156:
	add	r8, r4, #88	@ temp.1048, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	mov	r0, r8	@, temp.1048
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r1, [r4, #2]	@ zero_extendqisi2	@ <variable>.ConvolutionPacketNum, <variable>.ConvolutionPacketNum
	add	r0, r1, #1	@ tmp162, <variable>.ConvolutionPacketNum,
	uxtb	r3, r0	@ D.32987, tmp162
	strb	r3, [r4, #2]	@ D.32987, <variable>.ConvolutionPacketNum
	cmp	r3, #1	@ D.32987,
	bls	.L147	@,
	ldr	r1, [r4, #104]	@, <variable>.StreamID
	mov	r0, r5	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, <variable>.StreamID
	mov	r0, r5	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, temp.1048
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	movw	r2, #:lower16:g_event_report	@ tmp166,
	movt	r2, #:upper16:g_event_report	@ tmp166,
	ldr	r3, [r2, #0]	@ g_event_report.462, g_event_report
	cmp	r3, #0	@ g_event_report.462,
	beq	.L148	@,
	mov	r0, r5	@, ChanID
	mov	r2, r6	@, D.32969
	mov	r1, #113	@,
	blx	r3	@ g_event_report.462
.L148:
	mov	ip, #0	@ tmp167,
	mvn	r0, #0	@ ret,
	strb	ip, [r4, #2]	@ tmp167, <variable>.ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L157:
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r6, [r4, #2]	@ D.32971, <variable>.ConvolutionPacketNum
	mov	r0, r6	@ ret, D.32971
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L151:
	add	r0, r4, #168	@, pSegMan,
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
	b	.L152	@
	.fnend
	.size	SegMan, .-SegMan
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
	mov	r0, r1	@, pstCtx.459
	mov	r4, r1	@ pstCtx.459, pstCtx
	ldr	r6, [r1, r3]	@ ChanID, <variable>.ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L164	@,
.L159:
	movw	lr, #:lower16:73696	@ tmp146,
	movt	lr, #:upper16:73696	@ tmp146,
	mov	r1, r5	@, pSegMan
	ldr	r0, [r4, lr]	@, <variable>.ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L165	@,
	ldr	r5, [r4, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r5, #0	@ <variable>.pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L166:
	movw	r6, #:lower16:73713	@ tmp150,
	movt	r6, #:upper16:73713	@ tmp150,
	ldrb	r3, [r4, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r3, #1	@ <variable>.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	movw	r2, #:lower16:73696	@ tmp152,
	movt	r2, #:upper16:73696	@ tmp152,
	ldr	r0, [r4, r2]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r5, [r4, r6]	@ <variable>.pMp2DecParam, <variable>.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L165:
	add	r1, r5, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx.459
	bl	MPEG2DEC_Decode	@
	ldr	r5, [r4, #4]	@ <variable>.pMp2DecParam, <variable>.pMp2DecParam
	cmp	r5, #0	@ <variable>.pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	b	.L166	@
.L164:
	movw	r0, #:lower16:s_pstVfmwChan	@ tmp141,
	movt	r0, #:upper16:s_pstVfmwChan	@ tmp141,
	ldr	r3, [r0, r6, asl #2]	@ D.32915, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ <variable>.stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L167	@,
.L160:
	add	ip, r4, #72704	@, pstCtx.459,
	mov	r0, r4	@, pstCtx.459
	add	r1, ip, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L159	@
.L167:
	ldr	r1, [r3, #1616]	@ <variable>.stSynExtraData.s32DSDWaitFlag, <variable>.stSynExtraData.s32DSDWaitFlag
	cmp	r1, #0	@ <variable>.stSynExtraData.s32DSDWaitFlag,
	bne	.L159	@,
	b	.L160	@
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
	beq	.L171	@,
.L170:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}
.L171:
	movw	r6, #13556	@ tmp150,
	ldrb	r1, [r5, r6]	@ zero_extendqisi2	@ <variable>.IsStreamEndFlag, <variable>.IsStreamEndFlag
	cmp	r1, #1	@ <variable>.IsStreamEndFlag,
	bne	.L170	@,
	movw	r3, #52840	@ tmp152,
	ldr	r0, [r5, r3]	@, <variable>.ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, r6]	@ <variable>.pH264DecParam, <variable>.IsStreamEndFlag
	b	.L170	@
	.fnend
	.size	DecodeStream_H264, .-DecodeStream_H264
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
.LFB1612:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #0	@ VideoStandard, VideoStandard
	bne	.L178	@,
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L178:
	cmp	r3, #3	@ VideoStandard,
	bxne	lr	@
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
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
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L182	@,
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L183	@,
	cmp	r3, #0	@ <variable>.eVidStd,
	mvnne	r0, #1	@ D.32873,
	ldmnefd	sp!, {r4, pc}	@
.L183:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L185:
	ldr	r0, .L187	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r2, [r4, #6]	@ <variable>.head, <variable>.head
	ldr	r0, .L187	@,
	sub	r1, r2, #1	@ tmp143, <variable>.head,
	and	r3, r1, #63	@ tmp145, tmp143,
	strh	r3, [r4, #6]	@ movhi	@ tmp145, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.32873,
	ldmfd	sp!, {r4, pc}	@
.L182:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L185	@
.L188:
	.align	2
.L187:
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
	mov	r4, r1	@ p_image, p_image
	bne	.L200	@,
.L190:
	mvn	r5, #1	@ ret,
.L198:
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L200:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L193	@,
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L194	@,
	cmp	r3, #0	@ <variable>.eVidStd,
	bne	.L190	@,
.L194:
	add	r6, r0, #16	@ pstVoQue, pSynCtx,
.L195:
	cmp	r6, #0	@ pstVoQue,
	beq	.L190	@,
	ldr	r0, .L201	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r6, #6]	@ D.32761, <variable>.head
	ldrh	r2, [r6, #8]	@ <variable>.tail, <variable>.tail
	cmp	r2, r3	@ <variable>.tail, D.32761
	mvneq	r5, #2	@ ret,
	beq	.L197	@,
	add	lr, r6, r3, asl #2	@, tmp154, pstVoQue, D.32761,
	mov	r2, #392	@,
	mov	r0, r4	@, p_image
	mov	r5, #1	@ ret,
	ldr	r1, [lr, #12]	@, <variable>.image_ptr
	bl	memcpy	@
	ldr	r0, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	ldr	r2, [r4, #176]	@ <variable>.image_id, <variable>.image_id
	add	r3, r2, r0	@ tmp163, <variable>.image_id, <variable>.ResetMagicWord
	str	r3, [r4, #176]	@ tmp163, <variable>.image_id
	ldr	ip, [r6, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	str	ip, [r4, #380]	@ <variable>.ResetMagicWord, <variable>.resetNum
	ldrh	r1, [r6, #6]	@ <variable>.head, <variable>.head
	add	r0, r1, r5	@ tmp167, <variable>.head,
	and	r3, r0, #63	@ tmp169, tmp167,
	strh	r3, [r6, #6]	@ movhi	@ tmp169, <variable>.head
.L197:
	ldr	r0, .L201	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L198	@
.L193:
	add	r6, r0, #72704	@ pstVoQue, pSynCtx,
	add	r6, r6, #648	@ pstVoQue, pstVoQue,
	b	.L195	@
.L202:
	.align	2
.L201:
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
	ldr	r5, .L205	@ tmp135,
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
.L206:
	.align	2
.L205:
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
	ldr	r3, [r0, #0]	@ prephitmp.1216, <variable>.eVidStd
	mov	r4, r0	@ pSynCtx, pSynCtx
	cmp	r3, #3	@ prephitmp.1216,
	beq	.L210	@,
	cmp	r3, #18	@ prephitmp.1216,
	beq	.L211	@,
	cmp	r3, #0	@ prephitmp.1216,
	mvnne	r0, #1	@ ret,
	beq	.L221	@,
.L212:
	cmp	r3, #0	@ prephitmp.1216,
	beq	.L222	@,
	cmn	r0, #2	@ ret,
	ldmeqfd	sp!, {r4, pc}	@
	cmp	r0, #1	@ ret,
	beq	.L215	@,
.L216:
	mvn	r0, #19	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L222:
	cmp	r0, #0	@ ret,
	bne	.L216	@,
.L215:
	mov	r0, #1	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L221:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r4, #8	@, pSynCtx,
	bl	H264DEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1216, <variable>.eVidStd
	b	.L212	@
.L211:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1216, <variable>.eVidStd
	b	.L212	@
.L210:
	ldr	r1, [r1, #176]	@, <variable>.image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	ldr	r3, [r4, #0]	@ prephitmp.1216, <variable>.eVidStd
	b	.L212	@
	.fnend
	.size	SYNTAX_ReleaseImage_RecycleImage, .-SYNTAX_ReleaseImage_RecycleImage
	.align	2
	.global	SYNTAX_ReleaseImage
	.type	SYNTAX_ReleaseImage, %function
SYNTAX_ReleaseImage:
	.fnstart
.LFB1608:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSynCtx,
	cmpne	r1, #0	@, p_image,
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, sl, lr}
	mov	r5, r0	@ pSynCtx, pSynCtx
	.pad #12
	sub	sp, sp, #12	@,,
	bne	.L244	@,
.L224:
	mvn	r4, #1	@ ret,
.L240:
	mov	r0, r4	@, ret
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, pc}
.L244:
	ldr	r3, [r0, #0]	@ <variable>.eVidStd, <variable>.eVidStd
	cmp	r3, #3	@ <variable>.eVidStd,
	beq	.L227	@,
	cmp	r3, #18	@ <variable>.eVidStd,
	beq	.L228	@,
	cmp	r3, #0	@ <variable>.eVidStd,
	bne	.L224	@,
.L228:
	add	r4, r5, #16	@ pstVoQue, pSynCtx,
.L229:
	cmp	r4, #0	@ pstVoQue,
	beq	.L224	@,
	ldr	r0, .L246	@,
	str	r1, [sp, #4]	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, [sp, #4]	@,
	ldr	r8, [r4, #344]	@ <variable>.ResetMagicWord, <variable>.ResetMagicWord
	ldr	r2, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	rsb	r0, r8, r2	@ tmp160, <variable>.ResetMagicWord, <variable>.image_id
	str	r0, [r1, #176]	@ tmp160, <variable>.image_id
	ldrh	r3, [r4, #4]	@ i, <variable>.history
	ldrh	r8, [r4, #6]	@ <variable>.head, <variable>.head
	and	r3, r3, #63	@ i.1260, i,
	cmp	r8, r3	@ <variable>.head, i.1260
	bne	.L242	@,
	b	.L230	@
.L233:
	add	ip, r3, #1	@ i.1259, i.1260,
	and	r3, ip, #63	@ i.1260, i.1259,
	cmp	r8, r3	@ <variable>.head, i.1260
	beq	.L230	@,
.L242:
	add	ip, r3, #2	@ tmp187, i.1260,
	add	lr, r4, ip, asl #2	@, tmp165, pstVoQue, tmp187,
	ldr	r2, [lr, #4]	@ D.32843, <variable>.image_ptr
	cmp	r2, #0	@ D.32843,
	moveq	sl, #2	@ SameImageFlag,
	beq	.L232	@,
	ldr	r2, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r0, [r1, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r0, r2	@ <variable>.image_id, <variable>.image_id
	bne	.L233	@,
	mov	sl, #1	@ SameImageFlag,
.L232:
	ldrh	r7, [r4, #4]	@ temp.1258, <variable>.history
	b	.L237	@
.L245:
	mov	r3, r2	@ i.1260, j
.L237:
	cmp	r3, #0	@ i.1260,
	sub	r2, r3, #1	@ j, i.1260,
	add	lr, r4, ip, asl #2	@, tmp172, pstVoQue, tmp187,
	moveq	r2, #63	@ j,
	add	r0, r2, #2	@ tmp174, j,
	cmp	r7, r3	@ temp.1258, i.1260
	add	r6, r4, r0, asl #2	@, tmp177, pstVoQue, tmp174,
	mov	ip, r0	@ tmp187, tmp174
	ldr	r0, [r6, #4]	@ tmp179, <variable>.image_ptr
	str	r0, [lr, #4]	@ tmp179, <variable>.image_ptr
	bne	.L245	@,
	cmp	sl, #1	@ SameImageFlag,
	add	r7, r7, #1	@ tmp180, temp.1258,
	and	r7, r7, #63	@ tmp182, tmp180,
	strh	r7, [r4, #4]	@ movhi	@ tmp182, <variable>.history
	bne	.L233	@,
	mov	r0, r5	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
.L238:
	ldr	r0, .L246	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L240	@
.L230:
	mvn	r4, #1	@ ret,
	b	.L238	@
.L227:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L229	@
.L247:
	.align	2
.L246:
	.word	.LANCHOR0+4
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
	cmp	r0, #3	@ eVidStd,
	beq	.L251	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L252	@,
	cmp	r0, #0	@ eVidStd,
	bxne	lr	@
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	H264DEC_RecycleImage	@
.L252:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	USERDEC_RecycleImage	@
.L251:
	mov	r0, r1	@, pCtx
	ldr	r1, [r2, #176]	@, <variable>.image_id
	b	MPEG2DEC_RecycleImage	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r8, r0	@ ChanID, ChanID
	mov	r7, r1	@ eVidStd, eVidStd
	ldr	r5, [sp, #40]	@ p_image, p_image
	mov	sl, r2	@ pCtx, pCtx
	mov	r4, r3	@ pstVoQue, pstVoQue
	cmp	r5, #0	@ p_image,
	mvneq	r0, #1	@ D.32654,
	beq	.L257	@,
	movw	r6, #:lower16:.LANCHOR0	@ tmp220,
	movt	r6, #:upper16:.LANCHOR0	@ tmp220,
	add	r0, r6, #4	@, tmp220,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #4]	@ i, <variable>.history
	ldrh	r1, [r4, #8]	@ <variable>.tail, <variable>.tail
	and	r3, r3, #63	@ i.1317, i,
	cmp	r1, r3	@ <variable>.tail, i.1317
	beq	.L258	@,
	ldr	r0, [r5, #176]	@ D.32662, <variable>.image_id
	mov	ip, #1000	@ tmp223,
.L260:
	add	r2, r4, r3, asl #2	@, tmp160, pstVoQue, i.1317,
	add	r3, r3, #1	@ i.1318, i.1317,
	and	r3, r3, #63	@ i.1317, i.1318,
	ldr	lr, [r2, #12]	@ tmp157, <variable>.image_ptr
	ldr	r2, [lr, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r2, r0	@ <variable>.image_id, D.32662
	streq	ip, [r5, #180]	@ tmp223, <variable>.error_level
	ldreqh	r1, [r4, #8]	@ <variable>.tail, <variable>.tail
	cmp	r1, r3	@ <variable>.tail, i.1317
	bne	.L260	@,
.L258:
	ldr	r3, [r5, #180]	@ D.32667, <variable>.error_level
	cmp	r3, #100	@ D.32667,
	bls	.L275	@,
	cmp	r3, #1000	@ D.32667,
	bne	.L262	@,
.L264:
	ldr	r0, .L277	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.32654,
.L257:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L275:
	ldr	r0, [r5, #144]	@ <variable>.image_width, <variable>.image_width
	cmp	r0, #31	@ <variable>.image_width,
	bls	.L262	@,
	ldr	r1, [r5, #148]	@ <variable>.image_height, <variable>.image_height
	cmp	r1, #31	@ <variable>.image_height,
	bls	.L262	@,
	mov	r0, r4	@, pstVoQue
	mov	r2, r7	@, eVidStd
	mov	r1, r5	@, p_image
	add	r9, r8, r8, asl #1	@, tmp171, ChanID, ChanID,
	bl	InsertImgToVoQueue_PtsProcess	@
	mov	r1, r7	@, eVidStd
	mov	r2, r4	@, pstVoQue
	mov	r0, r8	@, ChanID
	mov	r3, r5	@, p_image
	movw	r7, #:lower16:g_VfmwChanStat	@ tmp173,
	bl	InsertImgToVoQueue_FillImageInfo	@
	ldrh	ip, [r4, #8]	@ <variable>.tail, <variable>.tail
	movt	r7, #:upper16:g_VfmwChanStat	@ tmp173,
	ldr	r0, .L277	@,
	add	r1, ip, #1	@ tmp182, <variable>.tail,
	add	sl, r7, r9, asl #3	@, pVfmwChanStat, tmp173, tmp171,
	add	r3, r4, ip, asl #2	@, tmp178, pstVoQue, <variable>.tail,
	and	r2, r1, #63	@ tmp184, tmp182,
	strh	r2, [r4, #8]	@ movhi	@ tmp184, <variable>.tail
	str	r5, [r3, #12]	@ p_image, <variable>.image_ptr
	ldr	ip, [r5, #128]	@ <variable>.is_fld_save, <variable>.is_fld_save
	str	ip, [sl, #20]	@ <variable>.is_fld_save, <variable>.u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r5, #300]	@ D.32680, <variable>.ImageDnr.video_standard
	sub	r4, r3, #10	@ tmp188, D.32680,
	cmp	r4, #2	@ tmp188,
	bhi	.L265	@,
	movw	r0, #:lower16:g_VdmCharacter	@ tmp189,
	movt	r0, #:upper16:g_VdmCharacter	@ tmp189,
	ldr	lr, [r0, #0]	@ g_VdmCharacter, g_VdmCharacter
	tst	lr, #1	@ g_VdmCharacter,
	beq	.L266	@,
.L267:
	cmp	r3, #18	@ D.32680,
	beq	.L266	@,
.L268:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L276	@,
.L269:
	ldr	r0, [sl, #4]	@ <variable>.u32FrImgNum, <variable>.u32FrImgNum
	add	lr, r0, #1	@ tmp209, <variable>.u32FrImgNum,
	str	lr, [sl, #4]	@ tmp209, <variable>.u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r7, r9, asl #3]	@ <variable>.u32FrBeginTime, <variable>.u32FrBeginTime
	rsb	r1, r2, r0	@ Period, <variable>.u32FrBeginTime, CurTime.1323
	mov	r4, r0	@ CurTime.1323,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.32654,
	bcc	.L257	@,
	ldr	r3, [sl, #4]	@ temp.1324, <variable>.u32FrImgNum
	cmp	r3, #0	@ temp.1324,
	beq	.L271	@,
	movw	ip, #10000	@ tmp213,
	mul	r0, ip, r3	@, tmp213, temp.1324
	bl	__aeabi_uidiv	@
	str	r0, [sl, #8]	@, <variable>.u32FrFrameRate
.L271:
	mov	r3, #0	@ tmp217,
	mov	r0, #1	@ D.32654,
	str	r4, [r7, r9, asl #3]	@ CurTime.1323, <variable>.u32FrBeginTime
	str	r3, [sl, #4]	@ tmp217, <variable>.u32FrImgNum
	b	.L257	@
.L262:
	mov	r0, r7	@, eVidStd
	mov	r1, sl	@, pCtx
	mov	r2, r5	@, p_image
	bl	ReturnImageToSyntax	@
	b	.L264	@
.L265:
	cmp	r3, #4	@ D.32680,
	beq	.L266	@,
	cmp	r3, #14	@ D.32680,
	bne	.L267	@,
.L266:
	movw	r4, #:lower16:g_event_report	@ tmp192,
	movt	r4, #:upper16:g_event_report	@ tmp192,
	ldr	r3, [r4, #0]	@ g_event_report.437, g_event_report
	cmp	r3, #0	@ g_event_report.437,
	beq	.L268	@,
	add	r2, sp, #8	@ tmp193,,
	mov	r0, r8	@, ChanID
	mov	r1, #5	@,
	str	r5, [r2, #-4]!	@ p_image, para
	blx	r3	@ g_event_report.437
	b	.L268	@
.L276:
	bl	OSAL_GetTimeInMs	@
	add	r6, r6, r8, asl #2	@, tmp197, tmp220, ChanID,
	movw	ip, #:lower16:g_TraceFramePeriod	@ tmp201,
	movt	ip, #:upper16:g_TraceFramePeriod	@ tmp201,
	ldr	r1, [r6, #12]	@ tmp200, last_rec_pos_time
	ldr	r3, [ip, #0]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r1, r0	@ tmp199, tmp200, CurTime
	cmp	r2, r3	@ tmp199, g_TraceFramePeriod
	strhi	r0, [r6, #12]	@ CurTime, last_rec_pos_time
	b	.L269	@
.L278:
	.align	2
.L277:
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
	.type	last_rec_pos_time.32646, %object
	.size	last_rec_pos_time.32646, 4
last_rec_pos_time.32646:
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
