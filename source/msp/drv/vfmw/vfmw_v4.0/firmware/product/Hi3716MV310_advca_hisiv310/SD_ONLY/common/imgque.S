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
@ options passed:  -nostdinc -I ./arch/arm/include
@ -I arch/arm/include/generated/uapi -I arch/arm/include/generated
@ -I include -I ./arch/arm/include/uapi -I arch/arm/include/generated/uapi
@ -I ./include/uapi -I include/generated/uapi
@ -I arch/arm/mach-hi3716mv310/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/common/drv/include
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/drv/memmap
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/scd
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/softlib
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV200
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV310_advca_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-4.4.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV310 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(imgque)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.imgque.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/imgque.o
@ -g0 -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror=implicit-function-declaration -Wno-maybe-uninitialized
@ -Wframe-larger-than=1024 -Wno-unused-but-set-variable
@ -Wdeclaration-after-statement -Wno-pointer-sign -Werror=implicit-int
@ -Werror=strict-prototypes -Wformat=1 -Wformat-security -std=gnu90
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -fno-ipa-sra
@ -funwind-tables -fomit-frame-pointer -fno-var-tracking-assignments
@ -fno-strict-overflow -fconserve-stack -fno-pic -fstack-protector
@ -fverbose-asm -fno-delete-null-pointer-checks -fdiagnostics-color=auto
@ -fno-aggressive-loop-optimizations -fno-tree-vrp
@ --param allow-store-data-races=0 --param ssp-buffer-size=4
@ options enabled:  -fauto-inc-dec -fbranch-count-reg -fcaller-saves
@ -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
@ -fcrossjumping -fcse-follow-jumps -fdefer-pop -fdevirtualize
@ -fdevirtualize-speculatively -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime
@ -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
@ -fif-conversion -fif-conversion2 -findirect-inlining -finline
@ -finline-atomics -finline-functions-called-once -finline-small-functions
@ -fipa-cp -fipa-profile -fipa-pure-const -fipa-reference
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
@ -fstack-protector -fstrict-volatile-bitfields -fsync-libcalls
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
@ -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
@ -ftree-copy-prop -ftree-copyrename -ftree-cselim -ftree-dce
@ -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
@ -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
@ -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pre
@ -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr
@ -ftree-sra -ftree-switch-conversion -ftree-tail-merge -ftree-ter
@ -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
@ -marm -mglibc -mlittle-endian -mlra -mpic-data-is-text-relative
@ -msched-prolog -mvectorize-with-neon-quad -mword-relocations

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
	ldrb	r3, [r4]	@ zero_extendqisi2	@ D.32131, *QueueName_7(D)
	cmp	r3, #0	@ D.32131,
	strneb	r3, [r5]	@ D.32131, pImageQueue_5(D)->queue_name
	movne	r1, r4	@ ivtmp.30, QueueName
	movne	ip, r5	@ ivtmp.38, pImageQueue
	movne	r3, #1	@ i,
	beq	.L4	@,
.L6:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2	@ D.32131, MEM[base: _1, offset: 0B]
	cmp	r2, #0	@ D.32131,
	beq	.L4	@,
	add	r3, r3, #1	@ i, i,
	strb	r2, [ip, #1]!	@ D.32131, MEM[base: _3, offset: 0B]
	cmp	r3, #15	@ i,
	bne	.L6	@,
.L4:
	mov	r2, #0	@ tmp170,
	ldr	r0, .L15	@,
	strb	r2, [r5, r3]	@ tmp170, pImageQueue_5(D)->queue_name
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.32129,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L7:
	mvn	r0, #1	@ D.32129,
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
	add	r1, r1, #100	@ D.32150, pImageQueue_5(D)->ResetCount,
	str	r2, [r3, #852]	@ tmp127, pImageQueue_5(D)->queue_size
	str	r1, [r3, #868]	@ D.32150, pImageQueue_5(D)->ResetCount
	str	r2, [r3, #856]	@ tmp127, pImageQueue_5(D)->history
	str	r2, [r3, #860]	@ tmp127, pImageQueue_5(D)->head
	str	r2, [r3, #864]	@ tmp127, pImageQueue_5(D)->tail
	ldrsb	r3, [r4]	@ pImageQueue_5(D)->queue_name, pImageQueue_5(D)->queue_name
	cmp	r3, r2	@ pImageQueue_5(D)->queue_name,
	beq	.L19	@,
	add	r1, r4, #15	@ D.32148, pImageQueue,
	mov	r3, r4	@ ivtmp.55, pImageQueue
.L20:
	ldrsb	r2, [r3, #1]!	@ MEM[base: _25, offset: 0B], MEM[base: _25, offset: 0B]
	cmp	r2, #0	@ MEM[base: _25, offset: 0B],
	beq	.L19	@,
	cmp	r3, r1	@ ivtmp.55, D.32148
	bne	.L20	@,
	mov	r3, #0	@ tmp147,
	strb	r3, [r4]	@ tmp147, pImageQueue_5(D)->queue_name
.L19:
	ldr	r0, .L30	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.32149,
	ldmfd	sp!, {r4, pc}	@
.L23:
	mvn	r0, #1	@ D.32149,
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
	add	r5, r0, #24576	@ tmp184, pImageQueue,
	mov	r4, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L42	@,
	mov	r7, r1	@ p_image, p_image
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r5, #864]	@ D.32158, pImageQueue_6(D)->tail
	ldr	r3, [r5, #860]	@ D.32158, pImageQueue_6(D)->head
	cmp	r2, r3	@ D.32158, D.32158
	addlt	r2, r2, #64	@ D.32158, D.32158,
	rsb	r3, r3, r2	@ queue_size, D.32158, D.32158
	ldr	r2, [r5, #848]	@ pImageQueue_6(D)->max_queue_size, pImageQueue_6(D)->max_queue_size
	cmp	r3, r2	@ queue_size, pImageQueue_6(D)->max_queue_size
	bge	.L41	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #864]	@ pImageQueue_6(D)->tail, pImageQueue_6(D)->tail
	mov	r6, #392	@ tmp158,
	mov	r1, r7	@, p_image
	mov	r2, r6	@, tmp158
	ldr	r8, [r7, #140]	@ p_image_4(D)->format, p_image_4(D)->format
	mla	r0, r6, r0, r4	@ tmp159, tmp158, pImageQueue_6(D)->tail, pImageQueue
	ubfx	r8, r8, #10, #2	@ FieldValidFlag, p_image_4(D)->format,,
	add	r0, r0, #336	@, tmp159,
	bl	memcpy	@
	ldr	r3, [r5, #864]	@ D.32158, pImageQueue_6(D)->tail
	ldr	r0, .L42	@,
	add	r1, r3, #20	@ tmp167, D.32158,
	add	r2, r4, r3	@ tmp172, pImageQueue, D.32158
	mla	r6, r6, r3, r4	@ tmp170, tmp158, D.32158, pImageQueue
	add	r3, r3, #1	@ D.32158, D.32158,
	and	r3, r3, #63	@ D.32158, D.32158,
	add	r6, r6, #336	@ D.32160, tmp170,
	str	r6, [r4, r1, asl #2]	@ D.32160, pImageQueue_6(D)->image_ptr
	strb	r8, [r2, #16]	@ FieldValidFlag, pImageQueue_6(D)->ImageValid
	str	r3, [r5, #864]	@ D.32158, pImageQueue_6(D)->tail
	ldr	r3, [r7, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	add	r3, r3, #2	@ D.32159, p_image_4(D)->image_id,
	str	r3, [r5, #876]	@ D.32159, pImageQueue_6(D)->last_image_id_plus2
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.32156,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L37:
	mvn	r0, #1	@ D.32156,
	bx	lr	@
.L41:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L42	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #1	@ D.32156,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L43:
	.align	2
.L42:
	.word	.LANCHOR0
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
	ldr	r0, .L51	@,
	mov	r5, r2	@ pNewImgNum, pNewImgNum
	mov	r6, r1	@ pReadImgNum, pReadImgNum
	bl	OSAL_SpinLockIRQ	@
	add	r0, r4, #24576	@ tmp136, pImageQueue,
	ldr	r3, [r0, #860]	@ D.32168, pImageQueue_5(D)->head
	ldr	ip, [r0, #856]	@ D.32168, pImageQueue_5(D)->history
	ldr	r0, [r0, #864]	@ D.32168, pImageQueue_5(D)->tail
	cmp	r3, ip	@ D.32168, D.32168
	addlt	r2, r3, #64	@ D.32168, D.32168,
	rsbge	ip, ip, r3	@ ReadNum, D.32168, D.32168
	rsblt	ip, ip, r2	@ ReadNum, D.32168, D.32168
	cmp	r3, r0	@ D.32168, D.32168
	addgt	r0, r0, #64	@ D.32168, D.32168,
	str	ip, [r6]	@ ReadNum, *pReadImgNum_20(D)
	rsb	r3, r3, r0	@ NewNum, D.32168, D.32168
	ldr	r0, .L51	@,
	str	r3, [r5]	@ NewNum, *pNewImgNum_23(D)
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L52:
	.align	2
.L51:
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
	beq	.L55	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r0, #24576	@ tmp126, pImageQueue,
	ldr	r2, [r4, #860]	@ pImageQueue_5(D)->head, pImageQueue_5(D)->head
	ldr	r3, [r4, #864]	@ pImageQueue_5(D)->tail, pImageQueue_5(D)->tail
	cmp	r2, r3	@ pImageQueue_5(D)->head, pImageQueue_5(D)->tail
	beq	.L56	@,
	mov	r6, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L58	@,
	mov	r5, r1	@ p_image, p_image
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #860]	@ pImageQueue_5(D)->head, pImageQueue_5(D)->head
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	add	r3, r3, #20	@ tmp132, pImageQueue_5(D)->head,
	ldr	r1, [r6, r3, asl #2]	@, pImageQueue_5(D)->image_ptr
	bl	memcpy	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #176]	@ p_image_3(D)->image_id, p_image_3(D)->image_id
	ldr	r2, [r4, #868]	@ pImageQueue_5(D)->ResetCount, pImageQueue_5(D)->ResetCount
	ldr	r0, .L58	@,
	add	r3, r3, r2	@ D.32174, p_image_3(D)->image_id, pImageQueue_5(D)->ResetCount
	str	r3, [r5, #176]	@ D.32174, p_image_3(D)->image_id
	ldr	r3, [r4, #860]	@ pImageQueue_5(D)->head, pImageQueue_5(D)->head
	add	r3, r3, #1	@ D.32172, pImageQueue_5(D)->head,
	and	r3, r3, #63	@ D.32172, D.32172,
	str	r3, [r4, #860]	@ D.32172, pImageQueue_5(D)->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.32171,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L56:
	mvn	r0, #2	@ D.32171,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L55:
	mvn	r0, #1	@ D.32171,
	bx	lr	@
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
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
	ldr	r5, .L62	@ tmp115,
	mov	r0, r5	@, tmp115
	bl	OSAL_SpinLockIRQ	@
	add	r2, r4, #24576	@ tmp117, pImageQueue,
	mov	r0, r5	@, tmp115
	ldr	r3, [r2, #860]	@ pImageQueue_3(D)->head, pImageQueue_3(D)->head
	sub	r3, r3, #1	@ D.32180, pImageQueue_3(D)->head,
	and	r3, r3, #63	@ D.32180, D.32180,
	str	r3, [r2, #860]	@ D.32180, pImageQueue_3(D)->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.fnend
	.size	IMGQUE_ReturnImage, .-IMGQUE_ReturnImage
	.align	2
	.global	IMGQUE_DeleteField
	.type	IMGQUE_DeleteField, %function
IMGQUE_DeleteField:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue,
	cmpne	r3, #0	@, pFieldAddr,
	moveq	ip, #1	@ tmp154,
	movne	ip, #0	@ tmp154,
	beq	.L76	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r10, r0, #24576	@ tmp206, pImageQueue,
	str	ip, [r3]	@ tmp154, *pFieldAddr_16(D)
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r4, [r10, #856]	@ i, pImageQueue_18(D)->history
	mov	r9, r0	@ pImageQueue, pImageQueue
	mov	r7, r2	@ IsTopField, IsTopField
	mov	r6, r1	@ ImageID, ImageID
	str	r3, [sp, #4]	@ pFieldAddr, %sfp
.L92:
	ldr	r3, [r10, #860]	@ pImageQueue_18(D)->head, pImageQueue_18(D)->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ pImageQueue_18(D)->head, i
	beq	.L93	@,
.L75:
	add	r2, r9, r4, lsl #2	@ D.32192, pImageQueue, i,
	ldr	r3, [r2, #80]	@ D.32189, MEM[(struct IMAGE_QUEUE *)_56 + 80B]
	cmp	r3, #0	@ D.32189,
	beq	.L77	@,
	ldr	r1, [r3, #176]	@ _26->image_id, _26->image_id
	cmp	r6, r1	@ ImageID, _26->image_id
	beq	.L94	@,
.L68:
	add	r4, r4, #1	@ D.32188, i,
	ldr	r3, [r10, #860]	@ pImageQueue_18(D)->head, pImageQueue_18(D)->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ pImageQueue_18(D)->head, i
	bne	.L75	@,
.L93:
	mov	r0, #1	@ D.32184,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L94:
	add	fp, r9, r4	@ tmp207, pImageQueue, i
	cmp	r7, #1	@ IsTopField,
	ldrb	r1, [fp, #16]	@ zero_extendqisi2	@ D.32185, pImageQueue_18(D)->ImageValid
	beq	.L95	@,
	tst	r1, #2	@ D.32185,
	beq	.L70	@,
	ldr	r3, [r3, #96]	@ DelBtmAddr, _26->btm_luma_phy_addr
	ldr	r1, [sp, #4]	@ pFieldAddr, %sfp
	str	r3, [r1]	@ DelBtmAddr, *pFieldAddr_16(D)
	ldrb	r1, [fp, #16]	@ zero_extendqisi2	@ tmp181, pImageQueue_18(D)->ImageValid
	and	r1, r1, #253	@ D.32185, tmp181,
	strb	r1, [fp, #16]	@ D.32185, pImageQueue_18(D)->ImageValid
.L70:
	cmp	r1, #0	@ D.32185,
	bne	.L68	@,
	ldr	r3, [r2, #80]	@ MEM[(struct IMAGE_QUEUE *)_56 + 80B], MEM[(struct IMAGE_QUEUE *)_56 + 80B]
	ldr	r8, [r3, #176]	@ DelImageID, _47->image_id
.L67:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #856]	@ D.32184, pImageQueue_18(D)->history
	b	.L72	@
.L79:
	mov	r4, lr	@ i, i
.L72:
	cmp	r4, #0	@ i,
	mov	lr, #63	@ i,
	subne	lr, r4, #1	@ i, i,
	add	r2, r4, #20	@ tmp187, i,
	add	r5, lr, #20	@ tmp186, i,
	add	ip, r9, lr	@ tmp188, pImageQueue, i
	cmp	r4, r3	@ i, D.32184
	ldr	r0, [r9, r5, asl #2]	@ D.32189, pImageQueue_18(D)->image_ptr
	str	r0, [r9, r2, asl #2]	@ D.32189, pImageQueue_18(D)->image_ptr
	ldrb	r2, [ip, #16]	@ zero_extendqisi2	@ D.32191, pImageQueue_18(D)->ImageValid
	strb	r2, [fp, #16]	@ D.32191, pImageQueue_18(D)->ImageValid
	mov	fp, ip	@ tmp207, tmp188
	bne	.L79	@,
	add	r4, r4, #1	@ D.32188, i,
	cmp	r8, #0	@ DelImageID,
	mov	r3, r4, asr #31	@ tmp193, D.32188,
	mov	r2, r3, lsr #26	@ tmp194, tmp193,
	add	r3, r4, r2	@ tmp195, D.32188, tmp194
	and	r3, r3, #63	@ tmp196, tmp195,
	rsb	r3, r2, r3	@ D.32188, tmp194, tmp196
	str	r3, [r10, #856]	@ D.32188, pImageQueue_18(D)->history
	blt	.L92	@,
	ldr	r3, [r10, #880]	@ D.32193, pImageQueue_18(D)->DelImageProc
	cmp	r3, #0	@ D.32193,
	beq	.L92	@,
	mov	r1, r8	@, DelImageID
	mov	r0, r9	@, pImageQueue
	blx	r3	@ D.32193
	b	.L92	@
.L77:
	add	fp, r9, r4	@ tmp207, pImageQueue, i
	mvn	r8, #0	@ DelImageID,
	b	.L67	@
.L95:
	tst	r1, #1	@ D.32185,
	beq	.L70	@,
	ldr	r3, [r3, #88]	@ DelTopAddr, _26->top_luma_phy_addr
	ldr	r1, [sp, #4]	@ pFieldAddr, %sfp
	str	r3, [r1]	@ DelTopAddr, *pFieldAddr_16(D)
	ldrb	r1, [fp, #16]	@ zero_extendqisi2	@ tmp170, pImageQueue_18(D)->ImageValid
	and	r1, r1, #254	@ D.32185, tmp170,
	strb	r1, [fp, #16]	@ D.32185, pImageQueue_18(D)->ImageValid
	b	.L70	@
.L76:
	mvn	r0, #1	@ D.32184,
	bx	lr	@
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
	beq	.L98	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ pImageQueue, pImageQueue
	ldr	r0, .L101	@,
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
	ldr	r0, .L101	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.32197,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L98:
	mvn	r0, #1	@ D.32197,
	bx	lr	@
.L102:
	.align	2
.L101:
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
	mov	r4, r0	@ pImageQueue, pImageQueue
	bl	vfmw_dprint_nothing	@
#APP
@ 28 "./arch/arm/include/asm/irqflags.h" 1
		mrs	r3, cpsr	@ arch_local_irq_save	@ lock
	cpsid	i
@ 0 "" 2
	add	r4, r4, #24576	@ tmp114, pImageQueue,
	str	r3, [r4, #872]	@ lock, pImageQueue_2(D)->queue_mutex
	ldmfd	sp!, {r4, pc}	@
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
	add	r0, r0, #24576	@ tmp113, pImageQueue,
	ldr	r3, [r0, #872]	@ lock, pImageQueue_2(D)->queue_mutex
#APP
@ 170 "./arch/arm/include/asm/irqflags.h" 1
		msr	cpsr_c, r3	@ local_irq_restore	@ lock
@ 0 "" 2
	str	r3, [r0, #872]	@ lock, pImageQueue_2(D)->queue_mutex
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
	ldr	r0, [r0, #876]	@ D.32207, pImageQueue_3(D)->last_image_id_plus2
	cmp	r0, #2	@ D.32207,
	mvncc	r0, #0	@,
	bx	lr	@
	.fnend
	.size	IMGQUE_GetLastImageID, .-IMGQUE_GetLastImageID
	.global	g_SpinLockIsr_Image2D
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_SpinLockIsr_Image2D, %object
	.size	g_SpinLockIsr_Image2D, 8
g_SpinLockIsr_Image2D:
	.space	8
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
