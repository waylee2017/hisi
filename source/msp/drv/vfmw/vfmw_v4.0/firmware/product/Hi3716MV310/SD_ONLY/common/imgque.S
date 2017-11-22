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
	.file	"imgque.c"
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
@ -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(imgque)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.imgque.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.o
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
	.global	IMGQUE_DeleteField
	.type	IMGQUE_DeleteField, %function
IMGQUE_DeleteField:
	.fnstart
.LFB1600:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	cmp	r0, #0	@ pImageQueue,
	cmpne	r3, #0	@, pFieldAddr,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pImageQueue, pImageQueue
	mov	r5, r1	@ ImageID, ImageID
	mvneq	r0, #1	@ D.30052,
	str	r3, [sp, #0]	@ pFieldAddr, %sfp
	movne	r3, #0	@, tmp155
	moveq	r3, #1	@, tmp155
	str	r2, [sp, #4]	@ IsTopField, %sfp
	beq	.L3	@,
	ldr	r0, [sp, #0]	@, %sfp
	movw	fp, #25432	@ tmp157,
	movw	r6, #25436	@ tmp158,
	str	r3, [r0, #0]	@ tmp155,
	ldr	r3, [r4, fp]	@ i, <variable>.history
	ldr	r2, [r4, r6]	@ <variable>.head, <variable>.head
	and	r3, r3, #63	@ i.476, i,
	cmp	r2, r3	@ <variable>.head, i.476
	beq	.L4	@,
	mov	r9, r1	@ ImageID, ImageID
.L17:
	add	ip, r3, #20	@ tmp214, i.476,
	ldr	r2, [r4, ip, asl #2]	@ D.30056, <variable>.image_ptr
	cmp	r2, #0	@ D.30056,
	beq	.L5	@,
	ldr	r1, [r2, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r9, r1	@ ImageID, <variable>.image_id
	beq	.L20	@,
.L6:
	add	sl, r3, #1	@ prephitmp.457, i.476,
.L10:
	ldr	r1, [r4, r6]	@ <variable>.head, <variable>.head
	and	r3, sl, #63	@ i.476, prephitmp.457,
	cmp	r1, r3	@ <variable>.head, i.476
	bne	.L17	@,
.L4:
	mov	r0, #1	@ D.30052,
.L3:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L20:
	ldr	r5, [sp, #4]	@, %sfp
	cmp	r5, #1	@,
	beq	.L21	@,
	add	r5, r3, r4	@ tmp215, i.476, pImageQueue
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ prephitmp.458, <variable>.ImageValid
	tst	r1, #2	@ prephitmp.458,
	beq	.L8	@,
	ldr	r0, [r2, #96]	@ <variable>.btm_luma_phy_addr, <variable>.btm_luma_phy_addr
	ldr	sl, [sp, #0]	@, %sfp
	str	r0, [sl, #0]	@ <variable>.btm_luma_phy_addr,
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ tmp185, <variable>.ImageValid
	and	r1, r1, #253	@ prephitmp.458, tmp185,
	strb	r1, [r5, #16]	@ prephitmp.458, <variable>.ImageValid
.L8:
	cmp	r1, #0	@ prephitmp.458,
	bne	.L6	@,
	ldr	r7, [r4, ip, asl #2]	@ tmp191, <variable>.image_ptr
	ldr	r1, [r7, #176]	@ DelImageID, <variable>.image_id
.L9:
	ldr	sl, [r4, fp]	@ i.475, <variable>.history
	mov	r8, r1	@ DelImageID, DelImageID
.L15:
	cmp	r3, #0	@ i.476,
	sub	r7, r3, #1	@ j, i.476,
	moveq	r7, #63	@ j,
	add	r2, r7, r4	@ tmp199, j, pImageQueue
	add	r1, r7, #20	@ tmp193, j,
	cmp	sl, r3	@ i.475, i.476
	ldrb	r0, [r2, #16]	@ zero_extendqisi2	@ tmp201, <variable>.ImageValid
	mov	r3, r7	@ i.476, j
	ldr	r7, [r4, r1, asl #2]	@ tmp194, <variable>.image_ptr
	strb	r0, [r5, #16]	@ tmp201, <variable>.ImageValid
	mov	r5, r2	@ tmp215, tmp199
	str	r7, [r4, ip, asl #2]	@ tmp194, <variable>.image_ptr
	mov	ip, r1	@ tmp214, tmp193
	bne	.L15	@,
	add	sl, sl, #1	@ prephitmp.457, i.475,
	cmp	r8, #0	@ DelImageID,
	mov	r1, r8	@ DelImageID, DelImageID
	mov	ip, sl, asr #31	@ tmp204, prephitmp.457,
	mov	r3, ip, lsr #26	@ tmp205, tmp204,
	add	r0, sl, r3	@ tmp206, prephitmp.457, tmp205
	and	r2, r0, #63	@ tmp207, tmp206,
	rsb	ip, r3, r2	@ tmp208, tmp205, tmp207
	str	ip, [r4, fp]	@ tmp208, <variable>.history
	blt	.L10	@,
	movw	r2, #25456	@,
	ldr	r3, [r4, r2]	@ D.30096, <variable>.DelImageProc
	cmp	r3, #0	@ D.30096,
	beq	.L10	@,
	mov	r0, r4	@, pImageQueue
	blx	r3	@ D.30096
	b	.L10	@
.L5:
	add	r5, r3, r4	@ tmp215, i.476, pImageQueue
	mvn	r1, #0	@ DelImageID,
	b	.L9	@
.L21:
	add	r5, r3, r4	@ tmp215, i.476, pImageQueue
	ldrb	r1, [r5, #16]	@ zero_extendqisi2	@ prephitmp.458, <variable>.ImageValid
	tst	r1, #1	@ prephitmp.458,
	beq	.L8	@,
	ldr	r2, [r2, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	ldr	r0, [sp, #0]	@, %sfp
	str	r2, [r0, #0]	@ <variable>.top_luma_phy_addr,
	ldrb	sl, [r5, #16]	@ zero_extendqisi2	@ tmp171, <variable>.ImageValid
	and	r1, sl, #254	@ prephitmp.458, tmp171,
	strb	r1, [r5, #16]	@ prephitmp.458, <variable>.ImageValid
	b	.L8	@
	.fnend
	.size	IMGQUE_DeleteField, .-IMGQUE_DeleteField
	.align	2
	.global	LockImgQue
	.type	LockImgQue, %function
LockImgQue:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r2, cpsr	@ arch_local_irq_save	@ lock
	cpsid	i
@ 0 "" 2
	movw	r3, #25448	@ tmp135,
	str	r2, [r0, r3]	@ lock, <variable>.queue_mutex
	bx	lr	@
	.fnend
	.size	LockImgQue, .-LockImgQue
	.align	2
	.global	UnLockImgQue
	.type	UnLockImgQue, %function
UnLockImgQue:
	.fnstart
.LFB1602:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #25448	@ tmp135,
	ldr	r3, [r0, r1]	@ lock, <variable>.queue_mutex
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ lock
@ 0 "" 2
	movw	r2, #25448	@ tmp137,
	str	r3, [r0, r2]	@ lock, <variable>.queue_mutex
	bx	lr	@
	.fnend
	.size	UnLockImgQue, .-UnLockImgQue
	.align	2
	.global	IMGQUE_GetLastImageID
	.type	IMGQUE_GetLastImageID, %function
IMGQUE_GetLastImageID:
	.fnstart
.LFB1603:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #25452	@ tmp137,
	ldr	r0, [r0, r3]	@ D.30128, <variable>.last_image_id_plus2
	cmp	r0, #1	@ D.30128,
	mvnls	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	IMGQUE_GetLastImageID, .-IMGQUE_GetLastImageID
	.align	2
	.global	IMGQUE_DeleteImage
	.type	IMGQUE_DeleteImage, %function
IMGQUE_DeleteImage:
	.fnstart
.LFB1599:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r4, r0, #0	@ pImageQueue, pImageQueue
	mov	r5, r1	@ ImageID, ImageID
	mov	r7, r2	@ pDelTopAddr, pDelTopAddr
	mov	r6, r3	@ pDelBtmAddr, pDelBtmAddr
	mvneq	r0, #1	@ D.30029,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #25444	@ tmp141,
	ldr	r1, [r4, r3]	@ <variable>.ResetCount, <variable>.ResetCount
	mov	r2, #1	@,
	mov	r3, r7	@, pDelTopAddr
	mov	r0, r4	@, pImageQueue
	rsb	r5, r1, r5	@ ActualLogicImageID, <variable>.ResetCount, ImageID
	mov	r1, r5	@, ActualLogicImageID
	bl	IMGQUE_DeleteField	@
	mov	r1, r5	@, ActualLogicImageID
	mov	r3, r6	@, pDelBtmAddr
	mov	r2, #0	@,
	mov	r0, r4	@, pImageQueue
	bl	IMGQUE_DeleteField	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30029,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	IMGQUE_DeleteImage, .-IMGQUE_DeleteImage
	.align	2
	.global	IMGQUE_ReturnImage
	.type	IMGQUE_ReturnImage, %function
IMGQUE_ReturnImage:
	.fnstart
.LFB1598:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp135,
	movt	r4, #:upper16:.LANCHOR0	@ tmp135,
	mov	r5, r0	@ pImageQueue, pImageQueue
	mov	r0, r4	@, tmp135
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #25436	@ tmp136,
	ldr	ip, [r5, r3]	@ <variable>.head, <variable>.head
	mov	r0, r4	@, tmp135
	sub	r1, ip, #1	@ tmp138, <variable>.head,
	and	r2, r1, #63	@ tmp140, tmp138,
	str	r2, [r5, r3]	@ tmp140, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@,
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	IMGQUE_ReturnImage, .-IMGQUE_ReturnImage
	.align	2
	.global	IMGQUE_GetImageNum
	.type	IMGQUE_GetImageNum, %function
IMGQUE_GetImageNum:
	.fnstart
.LFB1596:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pImageQueue, pImageQueue
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	mov	r5, r1	@ pReadImgNum, pReadImgNum
	mov	r6, r2	@ pNewImgNum, pNewImgNum
	bl	OSAL_SpinLockIRQ	@
	movw	r1, #25432	@ tmp143,
	movw	r0, #25436	@ tmp142,
	ldr	r3, [r4, r1]	@ D.29978, <variable>.history
	ldr	r2, [r4, r0]	@ D.29977, <variable>.head
	movw	ip, #25440	@ tmp145,
	ldr	r0, [r4, ip]	@ D.29986, <variable>.tail
	cmp	r2, r3	@ D.29977, D.29978
	addlt	r1, r2, #64	@ tmp144, D.29977,
	rsbge	r1, r3, r2	@ ReadNum, D.29978, D.29977
	rsblt	r1, r3, r1	@ ReadNum, D.29978, tmp144
	cmp	r2, r0	@ D.29977, D.29986
	addgt	r0, r0, #64	@ tmp146, D.29986,
	str	r1, [r5, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r2, r0	@ NewNum, D.29977, tmp146
	movw	r0, #:lower16:.LANCHOR0	@,
	str	r3, [r6, #0]	@ NewNum,* pNewImgNum
	movt	r0, #:upper16:.LANCHOR0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	OSAL_SpinUnLockIRQ	@
	.fnend
	.size	IMGQUE_GetImageNum, .-IMGQUE_GetImageNum
	.align	2
	.global	IMGQUE_ResetQueue
	.type	IMGQUE_ResetQueue, %function
IMGQUE_ResetQueue:
	.fnstart
.LFB1594:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ pImageQueue, pImageQueue
	mvneq	r0, #1	@ D.29924,
	ldmeqfd	sp!, {r4, pc}	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #25444	@ tmp147,
	ldrsb	r2, [r4, #0]	@ <variable>.queue_name, <variable>.queue_name
	movw	r0, #25440	@ tmp145,
	ldr	ip, [r4, r3]	@ <variable>.ResetCount, <variable>.ResetCount
	cmp	r2, #0	@ <variable>.queue_name,
	movw	r2, #25428	@ tmp139,
	add	r1, ip, #100	@ tmp150, <variable>.ResetCount,
	movw	ip, #25424	@ tmp137,
	str	r1, [r4, r3]	@ tmp150, <variable>.ResetCount
	mov	r3, #0	@ tmp140,
	str	r3, [r4, r0]	@ tmp140, <variable>.tail
	movw	r0, #25432	@ tmp141,
	str	r3, [r4, r2]	@ tmp140, <variable>.queue_size
	movw	r2, #25436	@ tmp143,
	mov	r1, #64	@ tmp138,
	str	r3, [r4, r0]	@ tmp140, <variable>.history
	str	r1, [r4, ip]	@ tmp138, <variable>.max_queue_size
	str	r3, [r4, r2]	@ tmp140, <variable>.head
	beq	.L48	@,
	ldrsb	lr, [r4, #1]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r0, [r4, #2]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r1, [r4, #3]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r3, [r4, #4]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r3, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	ip, [r4, #5]	@ <variable>.queue_name, <variable>.queue_name
	cmp	ip, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r2, [r4, #6]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r2, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	lr, [r4, #7]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r0, [r4, #8]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r1, [r4, #9]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r3, [r4, #10]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r3, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	ip, [r4, #11]	@ <variable>.queue_name, <variable>.queue_name
	cmp	ip, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r2, [r4, #12]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r2, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	lr, [r4, #13]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r0, [r4, #14]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L48	@,
	ldrsb	r1, [r4, #15]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	movne	r1, #0	@ tmp167,
	strneb	r1, [r4, #0]	@ tmp167, <variable>.queue_name
.L48:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.29924,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	IMGQUE_ResetQueue, .-IMGQUE_ResetQueue
	.align	2
	.global	IMGQUE_GetImage
	.type	IMGQUE_GetImage, %function
IMGQUE_GetImage:
	.fnstart
.LFB1597:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r1, #0	@ p_image, p_image
	mov	r4, r0	@ pImageQueue, pImageQueue
	mvneq	r0, #1	@ D.30001,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r6, #25436	@ tmp137,
	movw	r1, #25440	@ tmp138,
	ldr	r3, [r4, r1]	@ <variable>.tail, <variable>.tail
	ldr	r2, [r4, r6]	@ <variable>.head, <variable>.head
	cmp	r2, r3	@ <variable>.head, <variable>.tail
	mvneq	r0, #2	@ D.30001,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, [r4, r6]	@ <variable>.head, <variable>.head
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	add	r3, r1, #20	@ tmp142, <variable>.head,
	ldr	r1, [r4, r3, asl #2]	@, <variable>.image_ptr
	bl	memcpy	@
	movw	r0, #25444	@ tmp150,
	ldr	ip, [r4, r0]	@ <variable>.ResetCount, <variable>.ResetCount
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r2, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movt	r0, #:upper16:.LANCHOR0	@,
	add	r1, r2, ip	@ tmp153, <variable>.image_id, <variable>.ResetCount
	str	r1, [r5, #176]	@ tmp153, <variable>.image_id
	ldr	r3, [r4, r6]	@ <variable>.head, <variable>.head
	add	r2, r3, #1	@ tmp156, <variable>.head,
	and	ip, r2, #63	@ tmp158, tmp156,
	str	ip, [r4, r6]	@ tmp158, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30001,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	IMGQUE_GetImage, .-IMGQUE_GetImage
	.align	2
	.global	IMGQUE_InsertImage
	.type	IMGQUE_InsertImage, %function
IMGQUE_InsertImage:
	.fnstart
.LFB1595:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue,
	cmpne	r1, #0	@, p_image,
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r5, r1	@ p_image, p_image
	mov	r4, r0	@ pImageQueue, pImageQueue
	bne	.L56	@,
.L62:
	mvn	r0, #1	@ D.29945,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L56:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #25440	@ tmp150,
	movw	ip, #25436	@ tmp151,
	ldr	r3, [r4, r3]	@ D.29947, <variable>.tail
	ldr	r2, [r4, ip]	@ D.29948, <variable>.head
	movw	r0, #25424	@ tmp153,
	cmp	r3, r2	@ D.29947, D.29948
	addlt	r1, r3, #64	@ tmp152, D.29947,
	rsbge	r2, r2, r3	@ queue_size, D.29948, D.29947
	rsblt	r2, r2, r1	@ queue_size, D.29948, tmp152
	ldr	r1, [r4, r0]	@ <variable>.max_queue_size, <variable>.max_queue_size
	cmp	r2, r1	@ queue_size, <variable>.max_queue_size
	bge	.L63	@,
	add	lr, r4, #336	@ tmp158, pImageQueue,
	mov	r6, #392	@ tmp160,
	mov	r1, r5	@, p_image
	mov	r2, r6	@, tmp160
	mla	r0, r6, r3, lr	@, tmp160, D.29947, tmp158
	ldr	r7, [r5, #140]	@ <variable>.format, <variable>.format
	bl	memcpy	@
	movw	r2, #25440	@ tmp166,
	movw	r0, #:lower16:.LANCHOR0	@,
	ldr	r3, [r4, r2]	@ temp.703, <variable>.tail
	ubfx	r7, r7, #10, #2	@ FieldValidFlag, <variable>.format,,
	movt	r0, #:upper16:.LANCHOR0	@,
	add	ip, r4, r3	@ tmp175, pImageQueue, temp.703
	add	r1, r3, #20	@ tmp167, temp.703,
	mla	r6, r6, r3, r4	@ tmp171, tmp160, temp.703, pImageQueue
	add	r3, r3, #1	@ tmp180, temp.703,
	strb	r7, [ip, #16]	@ FieldValidFlag, <variable>.ImageValid
	and	r3, r3, #63	@ tmp182, tmp180,
	str	r3, [r4, r2]	@ tmp182, <variable>.tail
	movw	ip, #25452	@ tmp183,
	add	r6, r6, #336	@ tmp171, tmp171,
	str	r6, [r4, r1, asl #2]	@ tmp171, <variable>.image_ptr
	ldr	r2, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	add	r1, r2, #2	@ tmp185, <variable>.image_id,
	str	r1, [r4, ip]	@ tmp185, <variable>.last_image_id_plus2
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.29945,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L63:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L62	@
	.fnend
	.size	IMGQUE_InsertImage, .-IMGQUE_InsertImage
	.align	2
	.global	IMGQUE_InitQueue
	.type	IMGQUE_InitQueue, %function
IMGQUE_InitQueue:
	.fnstart
.LFB1593:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue,
	cmpne	r1, #0	@, QueueName,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pImageQueue, pImageQueue
	mov	r5, r1	@ QueueName, QueueName
	mov	r6, r2	@ DelImageProc, DelImageProc
	mvneq	r0, #1	@ D.29904,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pImageQueue
	movw	r1, #25464	@,
	bl	__memzero	@
	movw	r3, #25424	@ tmp162,
	movw	r0, #25456	@ tmp164,
	mov	r2, #64	@ tmp163,
	str	r6, [r4, r0]	@ DelImageProc, <variable>.DelImageProc
	str	r2, [r4, r3]	@ tmp163, <variable>.max_queue_size
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.735,* QueueName
	cmp	r3, #0	@ temp.735,
	beq	.L68	@,
	strb	r3, [r4, #0]	@ temp.735, <variable>.queue_name
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ temp.737,
	cmp	r3, #0	@ temp.737,
	moveq	r3, #1	@ i,
	beq	.L68	@,
	strb	r3, [r4, #1]	@ temp.737, <variable>.queue_name
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ temp.739,
	cmp	r3, #0	@ temp.739,
	moveq	r3, #2	@ i,
	beq	.L68	@,
	strb	r3, [r4, #2]	@ temp.739, <variable>.queue_name
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ temp.741,
	cmp	r3, #0	@ temp.741,
	moveq	r3, #3	@ i,
	beq	.L68	@,
	strb	r3, [r4, #3]	@ temp.741, <variable>.queue_name
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ temp.743,
	cmp	r3, #0	@ temp.743,
	moveq	r3, #4	@ i,
	beq	.L68	@,
	strb	r3, [r4, #4]	@ temp.743, <variable>.queue_name
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ temp.745,
	cmp	r3, #0	@ temp.745,
	moveq	r3, #5	@ i,
	beq	.L68	@,
	strb	r3, [r4, #5]	@ temp.745, <variable>.queue_name
	ldrb	r3, [r5, #6]	@ zero_extendqisi2	@ temp.747,
	cmp	r3, #0	@ temp.747,
	moveq	r3, #6	@ i,
	beq	.L68	@,
	strb	r3, [r4, #6]	@ temp.747, <variable>.queue_name
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ temp.749,
	cmp	r3, #0	@ temp.749,
	moveq	r3, #7	@ i,
	beq	.L68	@,
	strb	r3, [r4, #7]	@ temp.749, <variable>.queue_name
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ temp.751,
	cmp	r3, #0	@ temp.751,
	moveq	r3, #8	@ i,
	beq	.L68	@,
	strb	r3, [r4, #8]	@ temp.751, <variable>.queue_name
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ temp.753,
	cmp	r3, #0	@ temp.753,
	moveq	r3, #9	@ i,
	beq	.L68	@,
	strb	r3, [r4, #9]	@ temp.753, <variable>.queue_name
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ temp.755,
	cmp	r3, #0	@ temp.755,
	moveq	r3, #10	@ i,
	beq	.L68	@,
	strb	r3, [r4, #10]	@ temp.755, <variable>.queue_name
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ temp.757,
	cmp	r3, #0	@ temp.757,
	moveq	r3, #11	@ i,
	beq	.L68	@,
	strb	r3, [r4, #11]	@ temp.757, <variable>.queue_name
	ldrb	r3, [r5, #12]	@ zero_extendqisi2	@ temp.759,
	cmp	r3, #0	@ temp.759,
	moveq	r3, #12	@ i,
	beq	.L68	@,
	strb	r3, [r4, #12]	@ temp.759, <variable>.queue_name
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ temp.761,
	cmp	r3, #0	@ temp.761,
	moveq	r3, #13	@ i,
	beq	.L68	@,
	strb	r3, [r4, #13]	@ temp.761, <variable>.queue_name
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ D.29913,
	cmp	r3, #0	@ D.29913,
	strneb	r3, [r4, #14]	@ D.29913, <variable>.queue_name
	moveq	r3, #14	@ i,
	movne	r3, #15	@ i,
.L68:
	mov	r1, #0	@ tmp180,
	movw	r0, #:lower16:.LANCHOR0	@,
	strb	r1, [r4, r3]	@ tmp180, <variable>.queue_name
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.29904,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	IMGQUE_InitQueue, .-IMGQUE_InitQueue
	.global	g_SpinLockIsr_Image2D
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_SpinLockIsr_Image2D, %object
	.size	g_SpinLockIsr_Image2D, 8
g_SpinLockIsr_Image2D:
	.space	8
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
