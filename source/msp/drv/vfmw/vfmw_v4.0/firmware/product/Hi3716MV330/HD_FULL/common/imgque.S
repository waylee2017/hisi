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
	ldr	r0, [r0, r3]	@ D.30505, <variable>.last_image_id_plus2
	cmp	r0, #1	@ D.30505,
	mvnls	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	IMGQUE_GetLastImageID, .-IMGQUE_GetLastImageID
	.align	2
	.global	LockImgQue
	.type	LockImgQue, %function
LockImgQue:
	.fnstart
.LFB1601:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	r4, #25448	@ tmp137,
	ldr	ip, [r0, r4]	@ <variable>.queue_mutex, <variable>.queue_mutex
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ pImageQueue, pImageQueue
	mov	r3, #484	@,
	mov	r0, #12	@,
	movw	r1, #:lower16:.LC0	@,
	movw	r2, #:lower16:.LANCHOR0	@,
	movt	r1, #:upper16:.LC0	@,
	movt	r2, #:upper16:.LANCHOR0	@,
	str	ip, [sp, #0]	@ <variable>.queue_mutex,
	bl	dprint_vfmw	@
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r3, cpsr	@ arch_local_irq_save	@ lock.512
	cpsid	i
@ 0 "" 2
	str	r3, [r5, r4]	@ lock.512, <variable>.queue_mutex
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, pc}
	.fnend
	.size	LockImgQue, .-LockImgQue
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
	.pad #28
	sub	sp, sp, #28	@,,
	mov	r4, r0	@ pImageQueue, pImageQueue
	mov	r9, r1	@ ImageID, ImageID
	mvneq	r0, #1	@ D.30424,
	str	r3, [sp, #16]	@ pFieldAddr, %sfp
	movne	r3, #0	@, tmp157
	moveq	r3, #1	@, tmp157
	str	r2, [sp, #20]	@ IsTopField, %sfp
	beq	.L13	@,
	ldr	r0, [sp, #16]	@, %sfp
	movw	fp, #25432	@ tmp159,
	movw	r8, #25436	@ tmp160,
	str	r3, [r0, #0]	@ tmp157,
	ldr	r5, [r4, fp]	@ i, <variable>.history
.L29:
	ldr	r3, [r4, r8]	@ <variable>.head, <variable>.head
	and	r5, r5, #63	@ i.545, i,
	cmp	r3, r5	@ <variable>.head, i.545
	beq	.L14	@,
.L32:
	add	r6, r5, #20	@ tmp223, i.545,
	ldr	r3, [r4, r6, asl #2]	@ D.30428, <variable>.image_ptr
	cmp	r3, #0	@ D.30428,
	beq	.L15	@,
	ldr	r2, [r3, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r9, r2	@ ImageID, <variable>.image_id
	beq	.L31	@,
.L16:
	add	r5, r5, #1	@ prephitmp.532, i.545,
	ldr	r3, [r4, r8]	@ <variable>.head, <variable>.head
	and	r5, r5, #63	@ i.545, i,
	cmp	r3, r5	@ <variable>.head, i.545
	bne	.L32	@,
.L14:
	mov	r0, #1	@ D.30424,
.L13:
	add	sp, sp, #28	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L31:
	ldr	r1, [sp, #20]	@, %sfp
	cmp	r1, #1	@,
	beq	.L33	@,
	add	r7, r5, r4	@ tmp224, i.545, pImageQueue
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ prephitmp.533, <variable>.ImageValid
	tst	r2, #2	@ prephitmp.533,
	beq	.L18	@,
	ldr	ip, [r3, #96]	@ <variable>.btm_luma_phy_addr, <variable>.btm_luma_phy_addr
	ldr	r1, [sp, #16]	@, %sfp
	str	ip, [r1, #0]	@ <variable>.btm_luma_phy_addr,
	ldrb	r3, [r7, #16]	@ zero_extendqisi2	@ tmp187, <variable>.ImageValid
	and	r2, r3, #253	@ prephitmp.533, tmp187,
	strb	r2, [r7, #16]	@ prephitmp.533, <variable>.ImageValid
.L18:
	cmp	r2, #0	@ prephitmp.533,
	bne	.L16	@,
	ldr	sl, [r4, r6, asl #2]	@ tmp193, <variable>.image_ptr
	ldr	ip, [sl, #176]	@ prephitmp.530, <variable>.image_id
	mov	sl, ip	@ DelImageID, prephitmp.530
.L19:
	ldr	lr, [r4, r8]	@ <variable>.head, <variable>.head
	mov	r0, #12	@,
	ldr	r3, [r4, fp]	@ <variable>.history, <variable>.history
	movw	r1, #:lower16:.LC1	@,
	mov	r2, r4	@, pImageQueue
	movt	r1, #:upper16:.LC1	@,
	str	lr, [sp, #0]	@ <variable>.head,
	movw	lr, #25440	@,
	ldr	lr, [r4, lr]	@, <variable>.tail
	str	ip, [sp, #8]	@ prephitmp.530,
	str	lr, [sp, #4]	@,
	bl	dprint_vfmw	@
	ldr	ip, [r4, fp]	@ i.551, <variable>.history
.L25:
	cmp	r5, #0	@ i.545,
	sub	r1, r5, #1	@ j, i.545,
	moveq	r1, #63	@ j,
	add	r2, r1, #20	@ tmp195, j,
	add	r3, r1, r4	@ tmp201, j, pImageQueue
	cmp	ip, r5	@ i.551, i.545
	ldr	r0, [r4, r2, asl #2]	@ tmp196, <variable>.image_ptr
	mov	r5, r1	@ i.545, j
	ldrb	r1, [r3, #16]	@ zero_extendqisi2	@ tmp203, <variable>.ImageValid
	str	r0, [r4, r6, asl #2]	@ tmp196, <variable>.image_ptr
	mov	r6, r2	@ tmp223, tmp195
	strb	r1, [r7, #16]	@ tmp203, <variable>.ImageValid
	mov	r7, r3	@ tmp224, tmp201
	bne	.L25	@,
	add	r5, ip, #1	@ prephitmp.532, i.551,
	cmp	sl, #0	@ DelImageID,
	mov	r1, r5, asr #31	@ tmp206, prephitmp.532,
	mov	r3, r1, lsr #26	@ tmp207, tmp206,
	add	r0, r5, r3	@ tmp208, prephitmp.532, tmp207
	and	r2, r0, #63	@ tmp209, tmp208,
	rsb	ip, r3, r2	@ tmp210, tmp207, tmp209
	str	ip, [r4, fp]	@ tmp210, <variable>.history
	blt	.L29	@,
	movw	ip, #25456	@,
	ldr	r3, [r4, ip]	@ D.30471, <variable>.DelImageProc
	cmp	r3, #0	@ D.30471,
	beq	.L29	@,
	mov	r1, sl	@, DelImageID
	mov	r0, r4	@, pImageQueue
	blx	r3	@ D.30471
	b	.L29	@
.L15:
	ldr	ip, [r3, #176]	@ prephitmp.530, <variable>.image_id
	add	r7, r5, r4	@ tmp224, i.545, pImageQueue
	mvn	sl, #0	@ DelImageID,
	b	.L19	@
.L33:
	add	r7, r5, r4	@ tmp224, i.545, pImageQueue
	ldrb	r2, [r7, #16]	@ zero_extendqisi2	@ prephitmp.533, <variable>.ImageValid
	tst	r2, #1	@ prephitmp.533,
	beq	.L18	@,
	ldr	r2, [sp, #16]	@, %sfp
	ldr	r0, [r3, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r2, #0]	@ <variable>.top_luma_phy_addr,
	ldrb	ip, [r7, #16]	@ zero_extendqisi2	@ tmp173, <variable>.ImageValid
	and	r2, ip, #254	@ prephitmp.533, tmp173,
	strb	r2, [r7, #16]	@ prephitmp.533, <variable>.ImageValid
	b	.L18	@
	.fnend
	.size	IMGQUE_DeleteField, .-IMGQUE_DeleteField
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
	mvneq	r0, #1	@ D.30401,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
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
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30401,
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
	movw	r4, #:lower16:.LANCHOR1	@ tmp135,
	movt	r4, #:upper16:.LANCHOR1	@ tmp135,
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
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	mov	r5, r1	@ pReadImgNum, pReadImgNum
	mov	r6, r2	@ pNewImgNum, pNewImgNum
	bl	OSAL_SpinLockIRQ	@
	movw	r1, #25432	@ tmp143,
	movw	r0, #25436	@ tmp142,
	ldr	r3, [r4, r1]	@ D.30347, <variable>.history
	ldr	r2, [r4, r0]	@ D.30346, <variable>.head
	movw	ip, #25440	@ tmp145,
	ldr	r0, [r4, ip]	@ D.30355, <variable>.tail
	cmp	r2, r3	@ D.30346, D.30347
	addlt	r1, r2, #64	@ tmp144, D.30346,
	rsbge	r1, r3, r2	@ ReadNum, D.30347, D.30346
	rsblt	r1, r3, r1	@ ReadNum, D.30347, tmp144
	cmp	r2, r0	@ D.30346, D.30355
	addgt	r0, r0, #64	@ tmp146, D.30355,
	str	r1, [r5, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r2, r0	@ NewNum, D.30346, tmp146
	movw	r0, #:lower16:.LANCHOR1	@,
	str	r3, [r6, #0]	@ NewNum,* pNewImgNum
	movt	r0, #:upper16:.LANCHOR1	@,
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
	mvneq	r0, #1	@ D.30289,
	ldmeqfd	sp!, {r4, pc}	@
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
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
	beq	.L50	@,
	ldrsb	lr, [r4, #1]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r0, [r4, #2]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r1, [r4, #3]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r3, [r4, #4]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r3, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	ip, [r4, #5]	@ <variable>.queue_name, <variable>.queue_name
	cmp	ip, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r2, [r4, #6]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r2, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	lr, [r4, #7]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r0, [r4, #8]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r1, [r4, #9]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r3, [r4, #10]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r3, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	ip, [r4, #11]	@ <variable>.queue_name, <variable>.queue_name
	cmp	ip, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r2, [r4, #12]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r2, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	lr, [r4, #13]	@ <variable>.queue_name, <variable>.queue_name
	cmp	lr, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r0, [r4, #14]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r0, #0	@ <variable>.queue_name,
	beq	.L50	@,
	ldrsb	r1, [r4, #15]	@ <variable>.queue_name, <variable>.queue_name
	cmp	r1, #0	@ <variable>.queue_name,
	movne	r1, #0	@ tmp167,
	strneb	r1, [r4, #0]	@ tmp167, <variable>.queue_name
.L50:
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30289,
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	subs	r5, r1, #0	@ p_image, p_image
	mov	r4, r0	@ pImageQueue, pImageQueue
	.pad #20
	sub	sp, sp, #20	@,,
	mvneq	r0, #1	@ D.30370,
	bne	.L57	@,
.L54:
	add	sp, sp, #20	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L57:
	movw	r6, #25436	@ tmp137,
	movw	r7, #25440	@ tmp138,
	ldr	r2, [r4, r6]	@ <variable>.head, <variable>.head
	ldr	r3, [r4, r7]	@ <variable>.tail, <variable>.tail
	cmp	r2, r3	@ <variable>.head, <variable>.tail
	mvneq	r0, #2	@ D.30370,
	beq	.L54	@,
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	ip, [r4, r6]	@ <variable>.head, <variable>.head
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	add	r3, ip, #20	@ tmp142, <variable>.head,
	ldr	r1, [r4, r3, asl #2]	@, <variable>.image_ptr
	bl	memcpy	@
	ldr	r0, [r4, r7]	@ <variable>.tail, <variable>.tail
	ldr	r1, [r4, r6]	@ <variable>.head, <variable>.head
	movw	r2, #25432	@ tmp151,
	ldr	r3, [r4, r2]	@ <variable>.history, <variable>.history
	mov	r2, r4	@, pImageQueue
	str	r0, [sp, #4]	@ <variable>.tail,
	mov	r0, #12	@,
	str	r1, [sp, #0]	@ <variable>.head,
	movw	r1, #:lower16:.LC2	@,
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movt	r1, #:upper16:.LC2	@,
	str	ip, [sp, #8]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	movw	r0, #25444	@ tmp158,
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	ldr	r1, [r4, r0]	@ <variable>.ResetCount, <variable>.ResetCount
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	add	r3, ip, r1	@ tmp161, <variable>.image_id, <variable>.ResetCount
	str	r3, [r5, #176]	@ tmp161, <variable>.image_id
	ldr	r2, [r4, r6]	@ <variable>.head, <variable>.head
	add	ip, r2, #1	@ tmp164, <variable>.head,
	and	r1, ip, #63	@ tmp166, tmp164,
	str	r1, [r4, r6]	@ tmp166, <variable>.head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30370,
	b	.L54	@
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ p_image, p_image
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ pImageQueue, pImageQueue
	bne	.L59	@,
.L65:
	mvn	r0, #1	@ D.30310,
.L60:
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L59:
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r2, #25436	@ tmp151,
	movw	r0, #25440	@ tmp150,
	movw	ip, #25424	@ tmp153,
	ldr	r1, [r4, r0]	@ D.30312, <variable>.tail
	ldr	r0, [r4, r2]	@ D.30313, <variable>.head
	ldr	r3, [r4, ip]	@ <variable>.max_queue_size, <variable>.max_queue_size
	cmp	r1, r0	@ D.30312, D.30313
	addlt	r2, r1, #64	@ tmp152, D.30312,
	rsbge	r2, r0, r1	@ queue_size, D.30313, D.30312
	rsblt	r2, r0, r2	@ queue_size, D.30313, tmp152
	cmp	r2, r3	@ queue_size, <variable>.max_queue_size
	bge	.L66	@,
	movw	r2, #25432	@ tmp158,
	movw	r6, #25440	@ tmp164,
	ldr	r3, [r4, r2]	@ <variable>.history, <variable>.history
	mov	r2, r4	@, pImageQueue
	str	r0, [sp, #0]	@ D.30313,
	mov	r0, #12	@,
	str	r1, [sp, #4]	@ D.30312,
	movw	r1, #:lower16:.LC4	@,
	ldr	lr, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movt	r1, #:upper16:.LC4	@,
	mov	r7, #392	@ tmp167,
	str	lr, [sp, #8]	@ <variable>.image_id,
	bl	dprint_vfmw	@
	ldr	r0, [r4, r6]	@ <variable>.tail, <variable>.tail
	add	r3, r4, #336	@ tmp163, pImageQueue,
	mov	r2, r7	@, tmp167
	mov	r1, r5	@, p_image
	ldr	r8, [r5, #140]	@ <variable>.format, <variable>.format
	mla	r0, r7, r0, r3	@, tmp167, <variable>.tail, tmp163
	bl	memcpy	@
	ldr	r1, [r4, r6]	@ temp.713, <variable>.tail
	ubfx	r8, r8, #10, #2	@ FieldValidFlag, <variable>.format,,
	movw	r0, #:lower16:.LANCHOR1	@,
	add	r2, r1, #20	@ tmp174, temp.713,
	add	ip, r4, r1	@ tmp182, pImageQueue, temp.713
	mla	r7, r7, r1, r4	@ tmp178, tmp167, temp.713, pImageQueue
	add	r3, r1, #1	@ tmp187, temp.713,
	and	r1, r3, #63	@ tmp189, tmp187,
	strb	r8, [ip, #16]	@ FieldValidFlag, <variable>.ImageValid
	str	r1, [r4, r6]	@ tmp189, <variable>.tail
	movw	r3, #25452	@ tmp190,
	add	r7, r7, #336	@ tmp178, tmp178,
	str	r7, [r4, r2, asl #2]	@ tmp178, <variable>.image_ptr
	ldr	ip, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movt	r0, #:upper16:.LANCHOR1	@,
	add	r1, ip, #2	@ tmp192, <variable>.image_id,
	str	r1, [r4, r3]	@ tmp192, <variable>.last_image_id_plus2
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30310,
	b	.L60	@
.L66:
	mov	r0, #0	@,
	movw	r1, #:lower16:.LC3	@,
	movt	r1, #:upper16:.LC3	@,
	bl	dprint_vfmw	@
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L65	@
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
	mvneq	r0, #1	@ D.30269,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r0, #:lower16:.LANCHOR1	@,
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, pImageQueue
	movw	r1, #25464	@,
	bl	__memzero	@
	movw	r3, #25424	@ tmp162,
	movw	r0, #25456	@ tmp164,
	mov	r2, #64	@ tmp163,
	str	r6, [r4, r0]	@ DelImageProc, <variable>.DelImageProc
	str	r2, [r4, r3]	@ tmp163, <variable>.max_queue_size
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.746,* QueueName
	cmp	r3, #0	@ temp.746,
	beq	.L71	@,
	strb	r3, [r4, #0]	@ temp.746, <variable>.queue_name
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ temp.748,
	cmp	r3, #0	@ temp.748,
	moveq	r3, #1	@ i,
	beq	.L71	@,
	strb	r3, [r4, #1]	@ temp.748, <variable>.queue_name
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ temp.750,
	cmp	r3, #0	@ temp.750,
	moveq	r3, #2	@ i,
	beq	.L71	@,
	strb	r3, [r4, #2]	@ temp.750, <variable>.queue_name
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ temp.752,
	cmp	r3, #0	@ temp.752,
	moveq	r3, #3	@ i,
	beq	.L71	@,
	strb	r3, [r4, #3]	@ temp.752, <variable>.queue_name
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ temp.754,
	cmp	r3, #0	@ temp.754,
	moveq	r3, #4	@ i,
	beq	.L71	@,
	strb	r3, [r4, #4]	@ temp.754, <variable>.queue_name
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ temp.756,
	cmp	r3, #0	@ temp.756,
	moveq	r3, #5	@ i,
	beq	.L71	@,
	strb	r3, [r4, #5]	@ temp.756, <variable>.queue_name
	ldrb	r3, [r5, #6]	@ zero_extendqisi2	@ temp.758,
	cmp	r3, #0	@ temp.758,
	moveq	r3, #6	@ i,
	beq	.L71	@,
	strb	r3, [r4, #6]	@ temp.758, <variable>.queue_name
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ temp.760,
	cmp	r3, #0	@ temp.760,
	moveq	r3, #7	@ i,
	beq	.L71	@,
	strb	r3, [r4, #7]	@ temp.760, <variable>.queue_name
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ temp.762,
	cmp	r3, #0	@ temp.762,
	moveq	r3, #8	@ i,
	beq	.L71	@,
	strb	r3, [r4, #8]	@ temp.762, <variable>.queue_name
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ temp.764,
	cmp	r3, #0	@ temp.764,
	moveq	r3, #9	@ i,
	beq	.L71	@,
	strb	r3, [r4, #9]	@ temp.764, <variable>.queue_name
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ temp.766,
	cmp	r3, #0	@ temp.766,
	moveq	r3, #10	@ i,
	beq	.L71	@,
	strb	r3, [r4, #10]	@ temp.766, <variable>.queue_name
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ temp.768,
	cmp	r3, #0	@ temp.768,
	moveq	r3, #11	@ i,
	beq	.L71	@,
	strb	r3, [r4, #11]	@ temp.768, <variable>.queue_name
	ldrb	r3, [r5, #12]	@ zero_extendqisi2	@ temp.770,
	cmp	r3, #0	@ temp.770,
	moveq	r3, #12	@ i,
	beq	.L71	@,
	strb	r3, [r4, #12]	@ temp.770, <variable>.queue_name
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ temp.772,
	cmp	r3, #0	@ temp.772,
	moveq	r3, #13	@ i,
	beq	.L71	@,
	strb	r3, [r4, #13]	@ temp.772, <variable>.queue_name
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ D.30278,
	cmp	r3, #0	@ D.30278,
	strneb	r3, [r4, #14]	@ D.30278, <variable>.queue_name
	moveq	r3, #14	@ i,
	movne	r3, #15	@ i,
.L71:
	mov	r1, #0	@ tmp180,
	movw	r0, #:lower16:.LANCHOR1	@,
	strb	r1, [r4, r3]	@ tmp180, <variable>.queue_name
	movt	r0, #:upper16:.LANCHOR1	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30269,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	IMGQUE_InitQueue, .-IMGQUE_InitQueue
	.global	g_SpinLockIsr_Image2D
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	__func__.30478, %object
	.size	__func__.30478, 11
__func__.30478:
	.ascii	"LockImgQue\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"[%s][[%d] %d!\012\000"
	.space	1
.LC1:
	.ascii	"%s=(%02d,%02d,%02d) x F%d\012\000"
	.space	1
.LC2:
	.ascii	"%s=(%02d,%02d,%02d) - F%d\012\000"
	.space	1
.LC3:
	.ascii	"IMGQUE_InsertImage but the queue is full!!!\012\000"
	.space	3
.LC4:
	.ascii	"%s=(%02d,%02d,%02d) + F%d\012\000"
	.bss
	.align	2
.LANCHOR1 = . + 0
	.type	g_SpinLockIsr_Image2D, %object
	.size	g_SpinLockIsr_Image2D, 8
g_SpinLockIsr_Image2D:
	.space	8
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
