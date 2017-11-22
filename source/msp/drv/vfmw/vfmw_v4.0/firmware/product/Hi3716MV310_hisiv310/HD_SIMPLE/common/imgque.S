	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"imgque.c"
@ GNU C (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) version 4.9.2 20140904 (prerelease) (arm-gcc492_glibc224-linux-gnueabi)
@	compiled by GNU C version 4.1.2 20080704 (Red Hat 4.1.2-44), GMP version 5.0.5, MPFR version 3.1.2, MPC version 1.0.1
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include
@ -I arch/arm/include/generated -I include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/uapi
@ -I arch/arm/include/generated/uapi
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/uapi
@ -I include/generated/uapi -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV310 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(imgque)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.imgque.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-aliasing
@ -fno-common -fno-dwarf2-cfi-asm -funwind-tables -fno-stack-protector
@ -fomit-frame-pointer -fno-strict-overflow -fconserve-stack -fno-pic
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference -fipa-sra
@ -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
@ -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
@ -fleading-underscore -fmath-errno -fmerge-constants -fmerge-debug-strings
@ -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
@ -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2
@ -fprefetch-loop-arrays -freg-struct-return -freorder-blocks
@ -freorder-functions -frerun-cse-after-loop
@ -fsched-critical-path-heuristic -fsched-dep-count-heuristic
@ -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
@ -fsched-pressure -fsched-rank-heuristic -fsched-spec
@ -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-insns
@ -fschedule-insns2 -fsection-anchors -fshow-column -fshrink-wrap
@ -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
@ -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
@ -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop
@ -ftree-copyrename -ftree-cselim -ftree-dce -ftree-dominator-opts
@ -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
@ -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
@ -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
@ -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
@ -ftree-switch-conversion -ftree-tail-merge -ftree-ter -funit-at-a-time
@ -funwind-tables -fverbose-asm -fzero-initialized-in-bss -marm -mglibc
@ -mlittle-endian -mlra -mpic-data-is-text-relative -msched-prolog
@ -mvectorize-with-neon-quad -mword-relocations

	.text
	.align	2
	.global	IMGQUE_InitQueue
	.type	IMGQUE_InitQueue, %function
IMGQUE_InitQueue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ QueueName,
	cmpne	r0, #0	@, pImageQueue,
	beq	.L7	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L15	@,
	mov	r4, r1	@ QueueName, QueueName
	mov	r6, r2	@ DelImageProc, DelImageProc
	bl	OSAL_SpinLockIRQ	@
	movw	r1, #25464	@,
	mov	r0, r5	@, pImageQueue
	bl	__memzero	@
	add	r3, r5, #24576	@ tmp165, pImageQueue,
	mov	r2, #64	@ tmp166,
	str	r6, [r3, #880]	@ DelImageProc, pImageQueue_5(D)->DelImageProc
	str	r2, [r3, #848]	@ tmp166, pImageQueue_5(D)->max_queue_size
	ldrb	r3, [r4]	@ zero_extendqisi2	@ D.27895, *QueueName_7(D)
	cmp	r3, #0	@ D.27895,
	strneb	r3, [r5]	@ D.27895, pImageQueue_5(D)->queue_name
	movne	r1, r4	@ ivtmp.32, QueueName
	movne	ip, r5	@ ivtmp.40, pImageQueue
	movne	r3, #1	@ i,
	beq	.L4	@,
.L6:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2	@ D.27895, MEM[base: _1, offset: 0B]
	cmp	r2, #0	@ D.27895,
	beq	.L4	@,
	add	r3, r3, #1	@ i, i,
	strb	r2, [ip, #1]!	@ D.27895, MEM[base: _3, offset: 0B]
	cmp	r3, #15	@ i,
	bne	.L6	@,
.L4:
	mov	r2, #0	@ tmp170,
	ldr	r0, .L15	@,
	strb	r2, [r5, r3]	@ tmp170, pImageQueue_5(D)->queue_name
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.27893,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L7:
	mvn	r0, #1	@ D.27893,
	bx	lr	@
.L16:
	.align	2
.L15:
	.word	.LANCHOR0
	.fnend
	.size	IMGQUE_InitQueue, .-IMGQUE_InitQueue
	.align	2
	.global	IMGQUE_ResetQueue
	.type	IMGQUE_ResetQueue, %function
IMGQUE_ResetQueue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue
	beq	.L23	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L30	@,
	bl	OSAL_SpinLockIRQ	@
	add	r3, r4, #24576	@ tmp123, pImageQueue,
	mov	r2, #0	@ tmp127,
	mov	r0, #64	@ tmp124,
	ldr	r1, [r3, #868]	@ pImageQueue_5(D)->ResetCount, pImageQueue_5(D)->ResetCount
	str	r0, [r3, #848]	@ tmp124, pImageQueue_5(D)->max_queue_size
	add	r1, r1, #100	@ D.27914, pImageQueue_5(D)->ResetCount,
	str	r2, [r3, #852]	@ tmp127, pImageQueue_5(D)->queue_size
	str	r1, [r3, #868]	@ D.27914, pImageQueue_5(D)->ResetCount
	str	r2, [r3, #856]	@ tmp127, pImageQueue_5(D)->history
	str	r2, [r3, #860]	@ tmp127, pImageQueue_5(D)->head
	str	r2, [r3, #864]	@ tmp127, pImageQueue_5(D)->tail
	ldrsb	r3, [r4]	@ pImageQueue_5(D)->queue_name, pImageQueue_5(D)->queue_name
	cmp	r3, r2	@ pImageQueue_5(D)->queue_name,
	beq	.L19	@,
	add	r1, r4, #15	@ D.27912, pImageQueue,
	mov	r3, r4	@ ivtmp.57, pImageQueue
.L20:
	ldrsb	r2, [r3, #1]!	@ MEM[base: _25, offset: 0B], MEM[base: _25, offset: 0B]
	cmp	r2, #0	@ MEM[base: _25, offset: 0B],
	beq	.L19	@,
	cmp	r3, r1	@ ivtmp.57, D.27912
	bne	.L20	@,
	mov	r3, #0	@ tmp147,
	strb	r3, [r4]	@ tmp147, pImageQueue_5(D)->queue_name
.L19:
	ldr	r0, .L30	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.27913,
	ldmfd	sp!, {r4, pc}	@
.L23:
	mvn	r0, #1	@ D.27913,
	bx	lr	@
.L31:
	.align	2
.L30:
	.word	.LANCHOR0
	.fnend
	.size	IMGQUE_ResetQueue, .-IMGQUE_ResetQueue
	.align	2
	.global	IMGQUE_InsertImage
	.type	IMGQUE_InsertImage, %function
IMGQUE_InsertImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue,
	cmpne	r1, #0	@, p_image,
	beq	.L37	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r0, #24576	@ tmp193, pImageQueue,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L41	@,
	mov	r7, r1	@ p_image, p_image
	bl	OSAL_SpinLockIRQ	@
	ldr	ip, [r5, #864]	@ D.27922, pImageQueue_6(D)->tail
	ldr	r1, [r5, #860]	@ D.27922, pImageQueue_6(D)->head
	ldr	r2, [r5, #848]	@ pImageQueue_6(D)->max_queue_size, pImageQueue_6(D)->max_queue_size
	cmp	ip, r1	@ D.27922, D.27922
	addlt	r3, ip, #64	@ D.27922, D.27922,
	rsbge	r3, r1, ip	@ queue_size, D.27922, D.27922
	rsblt	r3, r1, r3	@ queue_size, D.27922, D.27922
	cmp	r3, r2	@ queue_size, pImageQueue_6(D)->max_queue_size
	bge	.L40	@,
	ldr	lr, [r7, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	mov	r2, r4	@, pImageQueue
	ldr	r3, [r5, #856]	@ pImageQueue_6(D)->history, pImageQueue_6(D)->history
	mov	r0, #12	@,
	str	ip, [sp, #4]	@ D.27922,
	mov	r6, #392	@ tmp167,
	str	lr, [sp, #8]	@ p_image_4(D)->image_id,
	str	r1, [sp]	@ D.27922,
	ldr	r1, .L41+4	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #864]	@ pImageQueue_6(D)->tail, pImageQueue_6(D)->tail
	mov	r2, r6	@, tmp167
	mov	r1, r7	@, p_image
	ldr	r8, [r7, #140]	@ p_image_4(D)->format, p_image_4(D)->format
	mla	r0, r6, r0, r4	@ tmp168, tmp167, pImageQueue_6(D)->tail, pImageQueue
	ubfx	r8, r8, #10, #2	@ FieldValidFlag, p_image_4(D)->format,,
	add	r0, r0, #336	@, tmp168,
	bl	memcpy	@
	ldr	r3, [r5, #864]	@ D.27922, pImageQueue_6(D)->tail
	ldr	r0, .L41	@,
	add	r1, r3, #20	@ tmp176, D.27922,
	add	r2, r4, r3	@ tmp181, pImageQueue, D.27922
	mla	r6, r6, r3, r4	@ tmp179, tmp167, D.27922, pImageQueue
	add	r3, r3, #1	@ D.27922, D.27922,
	and	r3, r3, #63	@ D.27922, D.27922,
	add	r6, r6, #336	@ D.27925, tmp179,
	str	r6, [r4, r1, asl #2]	@ D.27925, pImageQueue_6(D)->image_ptr
	strb	r8, [r2, #16]	@ FieldValidFlag, pImageQueue_6(D)->ImageValid
	str	r3, [r5, #864]	@ D.27922, pImageQueue_6(D)->tail
	ldr	r3, [r7, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	add	r3, r3, #2	@ D.27924, p_image_4(D)->image_id,
	str	r3, [r5, #876]	@ D.27924, pImageQueue_6(D)->last_image_id_plus2
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.27920,
.L33:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L37:
	mvn	r0, #1	@ D.27920,
	bx	lr	@
.L40:
	ldr	r1, .L41+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r0, .L41	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #1	@ D.27920,
	b	.L33	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.word	.LC1
	.word	.LC0
	.fnend
	.size	IMGQUE_InsertImage, .-IMGQUE_InsertImage
	.align	2
	.global	IMGQUE_GetImageNum
	.type	IMGQUE_GetImageNum, %function
IMGQUE_GetImageNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L50	@,
	mov	r5, r2	@ pNewImgNum, pNewImgNum
	mov	r6, r1	@ pReadImgNum, pReadImgNum
	bl	OSAL_SpinLockIRQ	@
	add	r0, r4, #24576	@ tmp136, pImageQueue,
	ldr	r3, [r0, #860]	@ D.27935, pImageQueue_5(D)->head
	ldr	ip, [r0, #856]	@ D.27935, pImageQueue_5(D)->history
	ldr	r0, [r0, #864]	@ D.27935, pImageQueue_5(D)->tail
	cmp	r3, ip	@ D.27935, D.27935
	addlt	r2, r3, #64	@ D.27935, D.27935,
	rsbge	ip, ip, r3	@ ReadNum, D.27935, D.27935
	rsblt	ip, ip, r2	@ ReadNum, D.27935, D.27935
	cmp	r3, r0	@ D.27935, D.27935
	addgt	r0, r0, #64	@ D.27935, D.27935,
	str	ip, [r6]	@ ReadNum, *pReadImgNum_20(D)
	rsb	r3, r3, r0	@ NewNum, D.27935, D.27935
	ldr	r0, .L50	@,
	str	r3, [r5]	@ NewNum, *pNewImgNum_23(D)
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.fnend
	.size	IMGQUE_GetImageNum, .-IMGQUE_GetImageNum
	.align	2
	.global	IMGQUE_GetImage
	.type	IMGQUE_GetImage, %function
IMGQUE_GetImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_image
	beq	.L54	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #24576	@ tmp131, pImageQueue,
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r2, [r4, #860]	@ pImageQueue_5(D)->head, pImageQueue_5(D)->head
	ldr	r3, [r4, #864]	@ pImageQueue_5(D)->tail, pImageQueue_5(D)->tail
	cmp	r2, r3	@ pImageQueue_5(D)->head, pImageQueue_5(D)->tail
	beq	.L55	@,
	mov	r6, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L57	@,
	mov	r5, r1	@ p_image, p_image
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #860]	@ pImageQueue_5(D)->head, pImageQueue_5(D)->head
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	add	r3, r3, #20	@ tmp137, pImageQueue_5(D)->head,
	ldr	r1, [r6, r3, asl #2]	@, pImageQueue_5(D)->image_ptr
	bl	memcpy	@
	ldr	lr, [r5, #176]	@ p_image_3(D)->image_id, p_image_3(D)->image_id
	ldr	ip, [r4, #864]	@ pImageQueue_5(D)->tail, pImageQueue_5(D)->tail
	mov	r2, r6	@, pImageQueue
	ldr	r1, [r4, #860]	@ pImageQueue_5(D)->head, pImageQueue_5(D)->head
	mov	r0, #12	@,
	ldr	r3, [r4, #856]	@ pImageQueue_5(D)->history, pImageQueue_5(D)->history
	stmia	sp, {r1, ip, lr}	@,,,
	ldr	r1, .L57+4	@,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #176]	@ p_image_3(D)->image_id, p_image_3(D)->image_id
	ldr	r2, [r4, #868]	@ pImageQueue_5(D)->ResetCount, pImageQueue_5(D)->ResetCount
	ldr	r0, .L57	@,
	add	r3, r3, r2	@ D.27942, p_image_3(D)->image_id, pImageQueue_5(D)->ResetCount
	str	r3, [r5, #176]	@ D.27942, p_image_3(D)->image_id
	ldr	r3, [r4, #860]	@ pImageQueue_5(D)->head, pImageQueue_5(D)->head
	add	r3, r3, #1	@ D.27939, pImageQueue_5(D)->head,
	and	r3, r3, #63	@ D.27939, D.27939,
	str	r3, [r4, #860]	@ D.27939, pImageQueue_5(D)->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.27938,
.L53:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L55:
	mvn	r0, #2	@ D.27938,
	b	.L53	@
.L54:
	mvn	r0, #1	@ D.27938,
	bx	lr	@
.L58:
	.align	2
.L57:
	.word	.LANCHOR0
	.word	.LC2
	.fnend
	.size	IMGQUE_GetImage, .-IMGQUE_GetImage
	.align	2
	.global	IMGQUE_ReturnImage
	.type	IMGQUE_ReturnImage, %function
IMGQUE_ReturnImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pImageQueue, pImageQueue
	ldr	r5, .L61	@ tmp115,
	mov	r0, r5	@, tmp115
	bl	OSAL_SpinLockIRQ	@
	add	r2, r4, #24576	@ tmp117, pImageQueue,
	mov	r0, r5	@, tmp115
	ldr	r3, [r2, #860]	@ pImageQueue_3(D)->head, pImageQueue_3(D)->head
	sub	r3, r3, #1	@ D.27949, pImageQueue_3(D)->head,
	and	r3, r3, #63	@ D.27949, D.27949,
	str	r3, [r2, #860]	@ D.27949, pImageQueue_3(D)->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L62:
	.align	2
.L61:
	.word	.LANCHOR0
	.fnend
	.size	IMGQUE_ReturnImage, .-IMGQUE_ReturnImage
	.align	2
	.global	IMGQUE_DeleteField
	.type	IMGQUE_DeleteField, %function
IMGQUE_DeleteField:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue,
	cmpne	r3, #0	@, pFieldAddr,
	moveq	ip, #1	@ tmp158,
	movne	ip, #0	@ tmp158,
	beq	.L76	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r7, r0, #24576	@ tmp222, pImageQueue,
	str	ip, [r3]	@ tmp158, *pFieldAddr_16(D)
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r4, [r7, #856]	@ i, pImageQueue_18(D)->history
	mov	r5, r0	@ pImageQueue, pImageQueue
	mov	r10, r3	@ pFieldAddr, pFieldAddr
	mov	r9, r2	@ IsTopField, IsTopField
	mov	r8, r1	@ ImageID, ImageID
.L91:
	ldr	r3, [r7, #860]	@ pImageQueue_18(D)->head, pImageQueue_18(D)->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ pImageQueue_18(D)->head, i
	beq	.L92	@,
.L75:
	add	r2, r5, r4, lsl #2	@ D.27962, pImageQueue, i,
	ldr	r3, [r2, #80]	@ D.27958, MEM[(struct IMAGE_QUEUE *)_54 + 80B]
	cmp	r3, #0	@ D.27958,
	ldr	r1, [r3, #176]	@ _26->image_id,
	beq	.L66	@,
	cmp	r8, r1	@ ImageID, _26->image_id
	beq	.L93	@,
.L67:
	add	r4, r4, #1	@ D.27957, i,
	ldr	r3, [r7, #860]	@ pImageQueue_18(D)->head, pImageQueue_18(D)->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ pImageQueue_18(D)->head, i
	bne	.L75	@,
.L92:
	mov	r0, #1	@ D.27954,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L93:
	add	r6, r5, r4	@ tmp221, pImageQueue, i
	cmp	r9, #1	@ IsTopField,
	ldrb	r1, [r6, #16]	@ zero_extendqisi2	@ D.27960, pImageQueue_18(D)->ImageValid
	beq	.L94	@,
	tst	r1, #2	@ D.27960,
	ldrne	r3, [r3, #96]	@ DelBtmAddr, _26->btm_luma_phy_addr
	strne	r3, [r10]	@ DelBtmAddr, *pFieldAddr_16(D)
	ldrneb	r1, [r6, #16]	@ zero_extendqisi2	@ tmp185, pImageQueue_18(D)->ImageValid
	andne	r1, r1, #253	@ D.27960, tmp185,
	strneb	r1, [r6, #16]	@ D.27960, pImageQueue_18(D)->ImageValid
.L69:
	cmp	r1, #0	@ D.27960,
	bne	.L67	@,
	ldr	r3, [r2, #80]	@ MEM[(struct IMAGE_QUEUE *)_54 + 80B], MEM[(struct IMAGE_QUEUE *)_54 + 80B]
	ldr	r1, [r3, #176]	@ D.27952, _47->image_id
	mov	fp, r1	@ DelImageID, D.27952
.L70:
	ldr	r3, [r7, #856]	@ pImageQueue_18(D)->history, pImageQueue_18(D)->history
	mov	r2, r5	@, pImageQueue
	str	r1, [sp, #8]	@ D.27952,
	mov	r0, #12	@,
	ldr	ip, [r7, #864]	@ pImageQueue_18(D)->tail, pImageQueue_18(D)->tail
	ldr	r1, .L95	@,
	str	ip, [sp, #4]	@ pImageQueue_18(D)->tail,
	ldr	ip, [r7, #860]	@ pImageQueue_18(D)->head, pImageQueue_18(D)->head
	str	ip, [sp]	@ pImageQueue_18(D)->head,
	bl	dprint_vfmw	@
	ldr	r1, [r7, #856]	@ D.27954, pImageQueue_18(D)->history
	b	.L72	@
.L78:
	mov	r4, r3	@ i, i
.L72:
	cmp	r4, #0	@ i,
	mov	r3, #63	@ i,
	subne	r3, r4, #1	@ i, i,
	add	r0, r4, #20	@ tmp191, i,
	add	r2, r3, #20	@ tmp190, i,
	add	ip, r5, r3	@ tmp192, pImageQueue, i
	cmp	r4, r1	@ i, D.27954
	ldr	r2, [r5, r2, asl #2]	@ D.27958, pImageQueue_18(D)->image_ptr
	str	r2, [r5, r0, asl #2]	@ D.27958, pImageQueue_18(D)->image_ptr
	ldrb	r2, [ip, #16]	@ zero_extendqisi2	@ D.27960, pImageQueue_18(D)->ImageValid
	strb	r2, [r6, #16]	@ D.27960, pImageQueue_18(D)->ImageValid
	mov	r6, ip	@ tmp221, tmp192
	bne	.L78	@,
	add	r4, r4, #1	@ D.27957, i,
	cmp	fp, #0	@ DelImageID,
	mov	r3, r4, asr #31	@ tmp197, D.27957,
	mov	r2, r3, lsr #26	@ tmp198, tmp197,
	add	r3, r4, r2	@ tmp199, D.27957, tmp198
	and	r3, r3, #63	@ tmp200, tmp199,
	rsb	r3, r2, r3	@ D.27957, tmp198, tmp200
	str	r3, [r7, #856]	@ D.27957, pImageQueue_18(D)->history
	blt	.L91	@,
	ldr	r3, [r7, #880]	@ D.27963, pImageQueue_18(D)->DelImageProc
	cmp	r3, #0	@ D.27963,
	beq	.L91	@,
	mov	r1, fp	@, DelImageID
	mov	r0, r5	@, pImageQueue
	blx	r3	@ D.27963
	b	.L91	@
.L66:
	add	r6, r5, r4	@ tmp221, pImageQueue, i
	mvn	fp, #0	@ DelImageID,
	b	.L70	@
.L94:
	tst	r1, #1	@ D.27960,
	beq	.L69	@,
	ldr	r3, [r3, #88]	@ DelTopAddr, _26->top_luma_phy_addr
	str	r3, [r10]	@ DelTopAddr, *pFieldAddr_16(D)
	ldrb	r1, [r6, #16]	@ zero_extendqisi2	@ tmp174, pImageQueue_18(D)->ImageValid
	and	r1, r1, #254	@ D.27960, tmp174,
	strb	r1, [r6, #16]	@ D.27960, pImageQueue_18(D)->ImageValid
	b	.L69	@
.L76:
	mvn	r0, #1	@ D.27954,
	bx	lr	@
.L96:
	.align	2
.L95:
	.word	.LC3
	.fnend
	.size	IMGQUE_DeleteField, .-IMGQUE_DeleteField
	.align	2
	.global	IMGQUE_DeleteImage
	.type	IMGQUE_DeleteImage, %function
IMGQUE_DeleteImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue
	beq	.L99	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L102	@,
	mov	r7, r3	@ pDelBtmAddr, pDelBtmAddr
	mov	r6, r2	@ pDelTopAddr, pDelTopAddr
	mov	r4, r1	@ ImageID, ImageID
	bl	OSAL_SpinLockIRQ	@
	add	r1, r5, #24576	@ tmp120, pImageQueue,
	mov	r3, r6	@, pDelTopAddr
	mov	r2, #1	@,
	ldr	r1, [r1, #868]	@ pImageQueue_3(D)->ResetCount, pImageQueue_3(D)->ResetCount
	mov	r0, r5	@, pImageQueue
	rsb	r4, r1, r4	@ ActualLogicImageID, pImageQueue_3(D)->ResetCount, ImageID
	mov	r1, r4	@, ActualLogicImageID
	bl	IMGQUE_DeleteField	@
	mov	r3, r7	@, pDelBtmAddr
	mov	r1, r4	@, ActualLogicImageID
	mov	r2, #0	@,
	mov	r0, r5	@, pImageQueue
	bl	IMGQUE_DeleteField	@
	ldr	r0, .L102	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.27967,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L99:
	mvn	r0, #1	@ D.27967,
	bx	lr	@
.L103:
	.align	2
.L102:
	.word	.LANCHOR0
	.fnend
	.size	IMGQUE_DeleteImage, .-IMGQUE_DeleteImage
	.align	2
	.global	LockImgQue
	.type	LockImgQue, %function
LockImgQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r4, r0, #24576	@ tmp116, pImageQueue,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, #484	@,
	ldr	ip, [r4, #872]	@ pImageQueue_2(D)->queue_mutex, pImageQueue_2(D)->queue_mutex
	mov	r0, #12	@,
	ldr	r2, .L106	@,
	ldr	r1, .L106+4	@,
	str	ip, [sp]	@ pImageQueue_2(D)->queue_mutex,
	bl	dprint_vfmw	@
#APP
@ 17 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		mrs	r3, cpsr	@ arch_local_irq_save	@ lock
	cpsid	i
@ 0 "" 2
	str	r3, [r4, #872]	@ lock, pImageQueue_2(D)->queue_mutex
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L107:
	.align	2
.L106:
	.word	.LANCHOR1
	.word	.LC4
	.fnend
	.size	LockImgQue, .-LockImgQue
	.align	2
	.global	UnLockImgQue
	.type	UnLockImgQue, %function
UnLockImgQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #24576	@ tmp119, pImageQueue,
	ldr	r3, [r0, #872]	@ lock, pImageQueue_3(D)->queue_mutex
#APP
@ 142 "/usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ lock
@ 0 "" 2
	str	r3, [r0, #872]	@ lock, pImageQueue_3(D)->queue_mutex
	bx	lr	@
	.fnend
	.size	UnLockImgQue, .-UnLockImgQue
	.align	2
	.global	IMGQUE_GetLastImageID
	.type	IMGQUE_GetLastImageID, %function
IMGQUE_GetLastImageID:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #24576	@ tmp115, pImageQueue,
	ldr	r0, [r0, #876]	@ D.27979, pImageQueue_3(D)->last_image_id_plus2
	cmp	r0, #2	@ D.27979,
	mvncc	r0, #0	@,
	bx	lr	@
	.fnend
	.size	IMGQUE_GetLastImageID, .-IMGQUE_GetLastImageID
	.global	g_SpinLockIsr_Image2D
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.27642, %object
	.size	__func__.27642, 11
__func__.27642:
	.ascii	"LockImgQue\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"IMGQUE_InsertImage but the queue is full!!!\012\000"
	.space	3
.LC1:
	.ascii	"%s=(%02d,%02d,%02d) + F%d\012\000"
	.space	1
.LC2:
	.ascii	"%s=(%02d,%02d,%02d) - F%d\012\000"
	.space	1
.LC3:
	.ascii	"%s=(%02d,%02d,%02d) x F%d\012\000"
	.space	1
.LC4:
	.ascii	"[%s][[%d] %d!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_SpinLockIsr_Image2D, %object
	.size	g_SpinLockIsr_Image2D, 8
g_SpinLockIsr_Image2D:
	.space	8
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
