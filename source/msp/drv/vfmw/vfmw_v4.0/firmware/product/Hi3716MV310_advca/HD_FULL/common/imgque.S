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
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(imgque)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_vfmw) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.imgque.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.o
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
	.global	UnLockImgQue
	.type	UnLockImgQue, %function
UnLockImgQue:
	.fnstart
.LFB1922:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #25448	@ tmp135,
	ldr	r3, [r0, r1]	@ lock, <variable>.queue_mutex
#APP
@ 152 "./arch/arm/include/asm/irqflags.h" 1
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
.LFB1923:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #25452	@ tmp137,
	ldr	r0, [r0, r3]	@ D.33560, <variable>.last_image_id_plus2
	cmp	r0, #1	@ D.33560,
	mvnls	r0, #0	@,,
	bx	lr	@
	.fnend
	.size	IMGQUE_GetLastImageID, .-IMGQUE_GetLastImageID
	.align	2
	.global	LockImgQue
	.type	LockImgQue, %function
LockImgQue:
	.fnstart
.LFB1921:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pImageQueue, pImageQueue
	bl	vfmw_dprint_nothing	@
#APP
@ 27 "./arch/arm/include/asm/irqflags.h" 1
		mrs	r2, cpsr	@ arch_local_irq_save	@ lock
	cpsid	i
@ 0 "" 2
	movw	r3, #25448	@ tmp135,
	str	r2, [r4, r3]	@ lock, <variable>.queue_mutex
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	LockImgQue, .-LockImgQue
	.align	2
	.global	IMGQUE_DeleteField
	.type	IMGQUE_DeleteField, %function
IMGQUE_DeleteField:
	.fnstart
.LFB1920:
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
	mvneq	r0, #1	@ D.33484,
	str	r3, [sp, #0]	@ pFieldAddr, %sfp
	movne	r3, #0	@, tmp155
	moveq	r3, #1	@, tmp155
	str	r2, [sp, #4]	@ IsTopField, %sfp
	beq	.L13	@,
	ldr	r0, [sp, #0]	@, %sfp
	movw	r2, #25432	@ tmp157,
	movw	r6, #25436	@ tmp158,
	str	r3, [r0, #0]	@ tmp155,
	ldr	r7, [r4, r2]	@ i, <variable>.history
.L29:
	ldr	r3, [r4, r6]	@ <variable>.head, <variable>.head
	and	r7, r7, #63	@ i.606, i,
	cmp	r3, r7	@ <variable>.head, i.606
	beq	.L14	@,
.L32:
	add	r8, r7, #20	@ tmp214, i.606,
	ldr	r3, [r4, r8, asl #2]	@ D.33488, <variable>.image_ptr
	cmp	r3, #0	@ D.33488,
	beq	.L15	@,
	ldr	r1, [r3, #176]	@ <variable>.image_id, <variable>.image_id
	cmp	r5, r1	@ ImageID, <variable>.image_id
	beq	.L31	@,
.L16:
	add	r7, r7, #1	@ prephitmp.593, i.606,
	ldr	r3, [r4, r6]	@ <variable>.head, <variable>.head
	and	r7, r7, #63	@ i.606, i,
	cmp	r3, r7	@ <variable>.head, i.606
	bne	.L32	@,
.L14:
	mov	r0, #1	@ D.33484,
.L13:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L31:
	ldr	sl, [sp, #4]	@, %sfp
	cmp	sl, #1	@,
	beq	.L33	@,
	add	sl, r7, r4	@ tmp215, i.606, pImageQueue
	ldrb	r2, [sl, #16]	@ zero_extendqisi2	@ prephitmp.594, <variable>.ImageValid
	tst	r2, #2	@ prephitmp.594,
	beq	.L18	@,
	ldr	ip, [r3, #96]	@ <variable>.btm_luma_phy_addr, <variable>.btm_luma_phy_addr
	ldr	r1, [sp, #0]	@, %sfp
	str	ip, [r1, #0]	@ <variable>.btm_luma_phy_addr,
	ldrb	r3, [sl, #16]	@ zero_extendqisi2	@ tmp185, <variable>.ImageValid
	and	r2, r3, #253	@ prephitmp.594, tmp185,
	strb	r2, [sl, #16]	@ prephitmp.594, <variable>.ImageValid
.L18:
	cmp	r2, #0	@ prephitmp.594,
	bne	.L16	@,
	ldr	r9, [r4, r8, asl #2]	@ tmp191, <variable>.image_ptr
	ldr	fp, [r9, #176]	@ DelImageID, <variable>.image_id
.L19:
	bl	vfmw_dprint_nothing	@
	movw	r3, #25432	@,
	ldr	r9, [r4, r3]	@ i.612, <variable>.history
.L25:
	cmp	r7, #0	@ i.606,
	sub	r1, r7, #1	@ j, i.606,
	moveq	r1, #63	@ j,
	add	r2, r1, #20	@ tmp193, j,
	add	lr, r1, r4	@ tmp199, j, pImageQueue
	cmp	r9, r7	@ i.612, i.606
	ldr	r0, [r4, r2, asl #2]	@ tmp194, <variable>.image_ptr
	mov	r7, r1	@ i.606, j
	ldrb	r3, [lr, #16]	@ zero_extendqisi2	@ tmp201, <variable>.ImageValid
	str	r0, [r4, r8, asl #2]	@ tmp194, <variable>.image_ptr
	mov	r8, r2	@ tmp214, tmp193
	strb	r3, [sl, #16]	@ tmp201, <variable>.ImageValid
	mov	sl, lr	@ tmp215, tmp199
	bne	.L25	@,
	add	r7, r9, #1	@ prephitmp.593, i.612,
	cmp	fp, #0	@ DelImageID,
	movw	ip, #25432	@,
	mov	r1, r7, asr #31	@ tmp204, prephitmp.593,
	mov	r3, r1, lsr #26	@ tmp205, tmp204,
	add	r0, r7, r3	@ tmp206, prephitmp.593, tmp205
	and	r2, r0, #63	@ tmp207, tmp206,
	rsb	lr, r3, r2	@ tmp208, tmp205, tmp207
	str	lr, [r4, ip]	@ tmp208, <variable>.history
	blt	.L29	@,
	movw	ip, #25456	@,
	ldr	r3, [r4, ip]	@ D.33528, <variable>.DelImageProc
	cmp	r3, #0	@ D.33528,
	beq	.L29	@,
	mov	r1, fp	@, DelImageID
	mov	r0, r4	@, pImageQueue
	blx	r3	@ D.33528
	b	.L29	@
.L15:
	add	sl, r7, r4	@ tmp215, i.606, pImageQueue
	mvn	fp, #0	@ DelImageID,
	b	.L19	@
.L33:
	add	sl, r7, r4	@ tmp215, i.606, pImageQueue
	ldrb	r2, [sl, #16]	@ zero_extendqisi2	@ prephitmp.594, <variable>.ImageValid
	tst	r2, #1	@ prephitmp.594,
	beq	.L18	@,
	ldr	r2, [sp, #0]	@, %sfp
	ldr	r0, [r3, #88]	@ <variable>.top_luma_phy_addr, <variable>.top_luma_phy_addr
	str	r0, [r2, #0]	@ <variable>.top_luma_phy_addr,
	ldrb	ip, [sl, #16]	@ zero_extendqisi2	@ tmp171, <variable>.ImageValid
	and	r2, ip, #254	@ prephitmp.594, tmp171,
	strb	r2, [sl, #16]	@ prephitmp.594, <variable>.ImageValid
	b	.L18	@
	.fnend
	.size	IMGQUE_DeleteField, .-IMGQUE_DeleteField
	.align	2
	.global	IMGQUE_DeleteImage
	.type	IMGQUE_DeleteImage, %function
IMGQUE_DeleteImage:
	.fnstart
.LFB1919:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	subs	r4, r0, #0	@ pImageQueue, pImageQueue
	mov	r5, r1	@ ImageID, ImageID
	mov	r7, r2	@ pDelTopAddr, pDelTopAddr
	mov	r6, r3	@ pDelBtmAddr, pDelBtmAddr
	mvneq	r0, #1	@ D.33461,
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
	mov	r0, #1	@ D.33461,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	IMGQUE_DeleteImage, .-IMGQUE_DeleteImage
	.align	2
	.global	IMGQUE_ReturnImage
	.type	IMGQUE_ReturnImage, %function
IMGQUE_ReturnImage:
	.fnstart
.LFB1918:
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
.LFB1916:
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
	ldr	r3, [r4, r1]	@ D.33410, <variable>.history
	ldr	r2, [r4, r0]	@ D.33409, <variable>.head
	movw	ip, #25440	@ tmp145,
	ldr	r0, [r4, ip]	@ D.33418, <variable>.tail
	cmp	r2, r3	@ D.33409, D.33410
	addlt	r1, r2, #64	@ tmp144, D.33409,
	rsbge	r1, r3, r2	@ ReadNum, D.33410, D.33409
	rsblt	r1, r3, r1	@ ReadNum, D.33410, tmp144
	cmp	r2, r0	@ D.33409, D.33418
	addgt	r0, r0, #64	@ tmp146, D.33418,
	str	r1, [r5, #0]	@ ReadNum,* pReadImgNum
	rsb	r3, r2, r0	@ NewNum, D.33409, tmp146
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
.LFB1914:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ pImageQueue, pImageQueue
	mvneq	r0, #1	@ D.33356,
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
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.33356,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	IMGQUE_ResetQueue, .-IMGQUE_ResetQueue
	.align	2
	.global	IMGQUE_GetImage
	.type	IMGQUE_GetImage, %function
IMGQUE_GetImage:
	.fnstart
.LFB1917:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r1, #0	@ p_image, p_image
	mov	r4, r0	@ pImageQueue, pImageQueue
	mvneq	r0, #1	@ D.33433,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	movw	r6, #25436	@ tmp137,
	movw	r1, #25440	@ tmp138,
	ldr	r3, [r4, r1]	@ <variable>.tail, <variable>.tail
	ldr	r2, [r4, r6]	@ <variable>.head, <variable>.head
	cmp	r2, r3	@ <variable>.head, <variable>.tail
	mvneq	r0, #2	@ D.33433,
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
	bl	vfmw_dprint_nothing	@
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
	mov	r0, #1	@ D.33433,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	IMGQUE_GetImage, .-IMGQUE_GetImage
	.align	2
	.global	IMGQUE_InsertImage
	.type	IMGQUE_InsertImage, %function
IMGQUE_InsertImage:
	.fnstart
.LFB1915:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue,
	cmpne	r1, #0	@, p_image,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ p_image, p_image
	mov	r4, r0	@ pImageQueue, pImageQueue
	bne	.L58	@,
.L65:
	mvn	r0, #1	@ D.33377,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L58:
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinLockIRQ	@
	movw	r3, #25440	@ tmp150,
	movw	r1, #25436	@ tmp151,
	ldr	r2, [r4, r3]	@ D.33379, <variable>.tail
	ldr	ip, [r4, r1]	@ D.33380, <variable>.head
	movw	r0, #25424	@ tmp153,
	ldr	r1, [r4, r0]	@ <variable>.max_queue_size, <variable>.max_queue_size
	cmp	r2, ip	@ D.33379, D.33380
	addlt	r2, r2, #64	@ tmp152, D.33379,
	rsb	r3, ip, r2	@ queue_size, D.33380, tmp152
	cmp	r3, r1	@ queue_size, <variable>.max_queue_size
	bge	.L66	@,
	movw	r6, #25440	@ tmp159,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r4, r6]	@ <variable>.tail, <variable>.tail
	add	ip, r4, #336	@ tmp158, pImageQueue,
	mov	r7, #392	@ tmp162,
	mov	r1, r5	@, p_image
	mov	r2, r7	@, tmp162
	ldr	r8, [r5, #140]	@ <variable>.format, <variable>.format
	mla	r0, r7, r0, ip	@, tmp162, <variable>.tail, tmp158
	bl	memcpy	@
	ldr	r3, [r4, r6]	@ temp.771, <variable>.tail
	ubfx	r8, r8, #10, #2	@ FieldValidFlag, <variable>.format,,
	movw	r0, #:lower16:.LANCHOR0	@,
	add	r1, r4, r3	@ tmp177, pImageQueue, temp.771
	add	ip, r3, #20	@ tmp169, temp.771,
	mla	r7, r7, r3, r4	@ tmp173, tmp162, temp.771, pImageQueue
	add	r2, r3, #1	@ tmp182, temp.771,
	strb	r8, [r1, #16]	@ FieldValidFlag, <variable>.ImageValid
	and	r3, r2, #63	@ tmp184, tmp182,
	str	r3, [r4, r6]	@ tmp184, <variable>.tail
	movw	r1, #25452	@ tmp185,
	add	r7, r7, #336	@ tmp173, tmp173,
	str	r7, [r4, ip, asl #2]	@ tmp173, <variable>.image_ptr
	ldr	r2, [r5, #176]	@ <variable>.image_id, <variable>.image_id
	movt	r0, #:upper16:.LANCHOR0	@,
	add	ip, r2, #2	@ tmp187, <variable>.image_id,
	str	ip, [r4, r1]	@ tmp187, <variable>.last_image_id_plus2
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.33377,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L66:
	bl	vfmw_dprint_nothing	@
	movw	r0, #:lower16:.LANCHOR0	@,
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L65	@
	.fnend
	.size	IMGQUE_InsertImage, .-IMGQUE_InsertImage
	.align	2
	.global	IMGQUE_InitQueue
	.type	IMGQUE_InitQueue, %function
IMGQUE_InitQueue:
	.fnstart
.LFB1913:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue,
	cmpne	r1, #0	@, QueueName,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pImageQueue, pImageQueue
	mov	r5, r1	@ QueueName, QueueName
	mov	r6, r2	@ DelImageProc, DelImageProc
	mvneq	r0, #1	@ D.33336,
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
	ldrb	r3, [r5, #0]	@ zero_extendqisi2	@ temp.803,* QueueName
	cmp	r3, #0	@ temp.803,
	beq	.L71	@,
	strb	r3, [r4, #0]	@ temp.803, <variable>.queue_name
	ldrb	r3, [r5, #1]	@ zero_extendqisi2	@ temp.805,
	cmp	r3, #0	@ temp.805,
	moveq	r3, #1	@ i,
	beq	.L71	@,
	strb	r3, [r4, #1]	@ temp.805, <variable>.queue_name
	ldrb	r3, [r5, #2]	@ zero_extendqisi2	@ temp.807,
	cmp	r3, #0	@ temp.807,
	moveq	r3, #2	@ i,
	beq	.L71	@,
	strb	r3, [r4, #2]	@ temp.807, <variable>.queue_name
	ldrb	r3, [r5, #3]	@ zero_extendqisi2	@ temp.809,
	cmp	r3, #0	@ temp.809,
	moveq	r3, #3	@ i,
	beq	.L71	@,
	strb	r3, [r4, #3]	@ temp.809, <variable>.queue_name
	ldrb	r3, [r5, #4]	@ zero_extendqisi2	@ temp.811,
	cmp	r3, #0	@ temp.811,
	moveq	r3, #4	@ i,
	beq	.L71	@,
	strb	r3, [r4, #4]	@ temp.811, <variable>.queue_name
	ldrb	r3, [r5, #5]	@ zero_extendqisi2	@ temp.813,
	cmp	r3, #0	@ temp.813,
	moveq	r3, #5	@ i,
	beq	.L71	@,
	strb	r3, [r4, #5]	@ temp.813, <variable>.queue_name
	ldrb	r3, [r5, #6]	@ zero_extendqisi2	@ temp.815,
	cmp	r3, #0	@ temp.815,
	moveq	r3, #6	@ i,
	beq	.L71	@,
	strb	r3, [r4, #6]	@ temp.815, <variable>.queue_name
	ldrb	r3, [r5, #7]	@ zero_extendqisi2	@ temp.817,
	cmp	r3, #0	@ temp.817,
	moveq	r3, #7	@ i,
	beq	.L71	@,
	strb	r3, [r4, #7]	@ temp.817, <variable>.queue_name
	ldrb	r3, [r5, #8]	@ zero_extendqisi2	@ temp.819,
	cmp	r3, #0	@ temp.819,
	moveq	r3, #8	@ i,
	beq	.L71	@,
	strb	r3, [r4, #8]	@ temp.819, <variable>.queue_name
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ temp.821,
	cmp	r3, #0	@ temp.821,
	moveq	r3, #9	@ i,
	beq	.L71	@,
	strb	r3, [r4, #9]	@ temp.821, <variable>.queue_name
	ldrb	r3, [r5, #10]	@ zero_extendqisi2	@ temp.823,
	cmp	r3, #0	@ temp.823,
	moveq	r3, #10	@ i,
	beq	.L71	@,
	strb	r3, [r4, #10]	@ temp.823, <variable>.queue_name
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ temp.825,
	cmp	r3, #0	@ temp.825,
	moveq	r3, #11	@ i,
	beq	.L71	@,
	strb	r3, [r4, #11]	@ temp.825, <variable>.queue_name
	ldrb	r3, [r5, #12]	@ zero_extendqisi2	@ temp.827,
	cmp	r3, #0	@ temp.827,
	moveq	r3, #12	@ i,
	beq	.L71	@,
	strb	r3, [r4, #12]	@ temp.827, <variable>.queue_name
	ldrb	r3, [r5, #13]	@ zero_extendqisi2	@ temp.829,
	cmp	r3, #0	@ temp.829,
	moveq	r3, #13	@ i,
	beq	.L71	@,
	strb	r3, [r4, #13]	@ temp.829, <variable>.queue_name
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ D.33345,
	cmp	r3, #0	@ D.33345,
	strneb	r3, [r4, #14]	@ D.33345, <variable>.queue_name
	moveq	r3, #14	@ i,
	movne	r3, #15	@ i,
.L71:
	mov	r1, #0	@ tmp180,
	movw	r0, #:lower16:.LANCHOR0	@,
	strb	r1, [r4, r3]	@ tmp180, <variable>.queue_name
	movt	r0, #:upper16:.LANCHOR0	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.33336,
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
