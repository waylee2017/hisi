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
	.file	"vdm_drv.c"
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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=0
@ -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT
@ -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT
@ -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D HI_ADVCA_SUPPORT
@ -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.o
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
	.global	VDMDRV_Init
	.type	VDMDRV_Init, %function
VDMDRV_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L6	@ tmp113,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ VdhId, VdhId
	ldr	r3, [r3]	@ D.37729, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.37729,
	beq	.L2	@,
	blx	r3	@ D.37729
.L3:
	ldr	r4, .L6+4	@ tmp114,
	mov	r0, r5, asl #5	@ tmp117, VdhId,
	add	r0, r0, r5, lsl #3	@ tmp118, tmp117, VdhId,
	mov	r1, #40	@,
	add	r0, r4, r0	@, tmp114, tmp118
	add	r4, r4, r5, lsl #2	@ tmp121, tmp114, VdhId,
	bl	__memzero	@
	mov	r3, #0	@ tmp123,
	str	r3, [r4, #40]	@ tmp123, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2:
	bl	vfmw_dprint_nothing	@
	b	.L3	@
.L7:
	.align	2
.L6:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_Init, .-VDMDRV_Init
	.align	2
	.global	VDMDRV_Reset
	.type	VDMDRV_Reset, %function
VDMDRV_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L9	@ tmp112,
	mov	r3, r0, asl #5	@ tmp115, VdhId,
	add	r0, r3, r0, lsl #3	@ tmp116, tmp115, VdhId,
	mov	r1, #40	@,
	add	r0, r2, r0	@, tmp112, tmp116
	b	__memzero	@
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_Reset, .-VDMDRV_Reset
	.align	2
	.global	VDMDRV_SetPriority
	.type	VDMDRV_SetPriority, %function
VDMDRV_SetPriority:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	mov	lr, #0	@ j,
	ldr	r5, .L24	@ ivtmp.88,
	sub	r7, r0, #4	@ ivtmp.77, pPrioArray,
	mov	r4, lr	@ MaxPrioChanID, j
	mov	r6, lr	@ MaxPrio, j
.L18:
	mov	ip, #0	@ MaxPrio,
	mov	r1, r7	@ ivtmp.77, ivtmp.77
	mov	r3, ip	@ MaxPrioChanID, MaxPrio
.L13:
	ldr	r2, [r1, #4]!	@ MaxPrio, MEM[base: _41, offset: 0B]
	cmp	r2, ip	@ MaxPrio, MaxPrio
	movgt	r4, r3	@ MaxPrioChanID, MaxPrioChanID
	add	r3, r3, #1	@ MaxPrioChanID, MaxPrioChanID,
	movgt	ip, r2	@ MaxPrio, MaxPrio
	cmp	r3, #4	@ MaxPrioChanID,
	bne	.L13	@,
	cmp	ip, #0	@ MaxPrio,
	ble	.L23	@,
	add	lr, lr, #1	@ j, j,
	str	r4, [r5, #4]!	@ MaxPrioChanID, MEM[base: _33, offset: 0B]
	cmp	lr, #4	@ j,
	str	r6, [r0, r4, asl #2]	@ MaxPrio, *_30
	bne	.L18	@,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L23:
	cmp	lr, #3	@ j,
	ldmgtfd	sp!, {r4, r5, r6, r7, pc}	@
	ldr	r0, .L24+4	@ tmp166,
	mov	r2, lr, asl #2	@ ivtmp.68, j,
	mvn	r1, #0	@ tmp168,
.L16:
	add	lr, lr, #1	@ j, j,
	add	r3, r0, r2	@ tmp163, tmp166, ivtmp.68
	cmp	lr, #4	@ j,
	add	r2, r2, #4	@ ivtmp.68, ivtmp.68,
	str	r1, [r3, #60]	@ tmp168, *_36
	bne	.L16	@,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR0+56
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_SetPriority, .-VDMDRV_SetPriority
	.align	2
	.global	VDMDRV_AdjustPriorityAfterDec
	.type	VDMDRV_AdjustPriorityAfterDec, %function
VDMDRV_AdjustPriorityAfterDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, .L38	@ tmp164,
	ldr	r3, [r5, #60]	@ MEM[(HI_S32 *)&g_ChanCtx + 16B], MEM[(HI_S32 *)&g_ChanCtx + 16B]
	cmp	r3, r0	@ MEM[(HI_S32 *)&g_ChanCtx + 16B], CurChanId
	beq	.L33	@,
	ldr	r3, [r5, #64]	@ MEM[(HI_S32 *)&g_ChanCtx + 20B], MEM[(HI_S32 *)&g_ChanCtx + 20B]
	cmp	r3, r0	@ MEM[(HI_S32 *)&g_ChanCtx + 20B], CurChanId
	beq	.L34	@,
	ldr	r3, [r5, #68]	@ MEM[(HI_S32 *)&g_ChanCtx + 24B], MEM[(HI_S32 *)&g_ChanCtx + 24B]
	cmp	r3, r0	@ MEM[(HI_S32 *)&g_ChanCtx + 24B], CurChanId
	beq	.L35	@,
	ldr	r3, [r5, #72]	@ MEM[(HI_S32 *)&g_ChanCtx + 28B], MEM[(HI_S32 *)&g_ChanCtx + 28B]
	cmp	r3, r0	@ MEM[(HI_S32 *)&g_ChanCtx + 28B], CurChanId
	ldmeqfd	sp!, {r4, r5, r6, r7, pc}	@
	mov	lr, #0	@ D.37776,
	mov	r2, #4	@ D.37776,
	mov	r3, lr	@ i, D.37776
.L28:
	ldr	r0, .L38+4	@ tmp163,
	add	r7, r0, r2	@ D.37777, tmp163, D.37776
	ldr	ip, [r0, r2]	@ D.37778, *_53
	cmp	ip, #0	@ D.37778,
	ldmltfd	sp!, {r4, r5, r6, r7, pc}	@
	add	r2, r3, #2	@ D.37776, i,
	mov	r2, r2, asl #2	@ ivtmp.101, D.37776,
	b	.L30	@
.L32:
	ldr	ip, [r0, r2]	@ D.37778, *_17
	add	r2, r2, #4	@ ivtmp.101, ivtmp.101,
	cmp	ip, #0	@ D.37778,
	ldmltfd	sp!, {r4, r5, r6, r7, pc}	@
.L30:
	ldr	r4, [r0, lr, asl #2]	@ D.37778, *_24
	add	r1, r5, ip, lsl #2	@ tmp155, tmp164, D.37778,
	add	r3, r3, #1	@ i, i,
	ldr	r6, [r1, #44]	@ *_21, *_21
	add	r1, r5, r4, lsl #2	@ tmp158, tmp164, D.37778,
	ldr	r1, [r1, #44]	@ *_28, *_28
	cmp	r6, r1	@ *_21, *_28
	strge	ip, [r0, lr, asl #2]	@ D.37778, *_24
	strge	r4, [r7]	@ D.37778, *_41
	cmp	r3, #2	@ i,
	add	r7, r0, r2	@ D.37777, tmp163, ivtmp.101
	mov	lr, r3	@ D.37776, i
	ble	.L32	@,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L33:
	mov	r3, #0	@ i,
.L27:
	add	r2, r3, #1	@ D.37776, i,
	mov	lr, r3	@ D.37776, i
	mov	r2, r2, asl #2	@ D.37776, D.37776,
	b	.L28	@
.L34:
	mov	r3, #1	@ i,
	b	.L27	@
.L35:
	mov	r3, #2	@ i,
	b	.L27	@
.L39:
	.align	2
.L38:
	.word	.LANCHOR0
	.word	.LANCHOR0+60
	.fnend
	.size	VDMDRV_AdjustPriorityAfterDec, .-VDMDRV_AdjustPriorityAfterDec
	.align	2
	.global	VDMDRV_PrepareSleep
	.type	VDMDRV_PrepareSleep, %function
VDMDRV_PrepareSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ VdhId, VdhId
	add	r0, sp, #4	@ tmp138,,
	bl	OSAL_LockIRQ	@
	ldr	r1, .L45	@ tmp116,
	add	r0, r1, r4, lsl #2	@ tmp117, tmp116, VdhId,
	ldr	r3, [r0, #40]	@ tmp119, s_eVdmDrvSleepState
	cmp	r3, #0	@ tmp119,
	bne	.L43	@,
	mov	r2, r4, asl #5	@ tmp123, VdhId,
	add	r4, r2, r4, lsl #3	@ tmp124, tmp123, VdhId,
	ldr	r4, [r1, r4]	@ g_VdmDrvParam[VdhId_5(D)].VdmStateMachine, g_VdmDrvParam[VdhId_5(D)].VdmStateMachine
	cmp	r4, #0	@ g_VdmDrvParam[VdhId_5(D)].VdmStateMachine,
	moveq	r3, #2	@ tmp130,
	movne	r4, r3	@ ret, tmp119
	movne	r3, #1	@ tmp134,
	str	r3, [r0, #40]	@ tmp134, s_eVdmDrvSleepState
.L41:
	add	r0, sp, #4	@ tmp139,,
	bl	OSAL_UnLockIRQ	@
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L43:
	mvn	r4, #0	@ ret,
	b	.L41	@
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_PrepareSleep, .-VDMDRV_PrepareSleep
	.align	2
	.global	VDMDRV_GetSleepStage
	.type	VDMDRV_GetSleepStage, %function
VDMDRV_GetSleepStage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L48	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp114, VdhId,
	ldr	r0, [r0, #40]	@, s_eVdmDrvSleepState
	bx	lr	@
.L49:
	.align	2
.L48:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_GetSleepStage, .-VDMDRV_GetSleepStage
	.align	2
	.global	VDMDRV_ForeceSleep
	.type	VDMDRV_ForeceSleep, %function
VDMDRV_ForeceSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ VdhId, VdhId
	add	r0, sp, #4	@ tmp130,,
	bl	OSAL_LockIRQ	@
	ldr	r3, .L56	@ tmp114,
	add	r5, r3, r4, lsl #2	@ tmp115, tmp114, VdhId,
	ldr	r2, [r5, #40]	@ tmp117, s_eVdmDrvSleepState
	cmp	r2, #2	@ tmp117,
	beq	.L51	@,
	mov	r0, r4, asl #5	@ tmp121, VdhId,
	mov	r1, #40	@,
	add	r0, r0, r4, lsl #3	@ tmp122, tmp121, VdhId,
	add	r0, r3, r0	@, tmp114, tmp122
	bl	__memzero	@
	mov	r3, #2	@ tmp127,
	str	r3, [r5, #40]	@ tmp127, s_eVdmDrvSleepState
.L51:
	add	r0, sp, #4	@ tmp131,,
	bl	OSAL_UnLockIRQ	@
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L57:
	.align	2
.L56:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_ForeceSleep, .-VDMDRV_ForeceSleep
	.align	2
	.global	VDMDRV_ExitSleep
	.type	VDMDRV_ExitSleep, %function
VDMDRV_ExitSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L62	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r3]	@ D.37792, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.37792,
	beq	.L59	@,
	blx	r3	@ D.37792
.L60:
	ldr	r3, .L62+4	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r0, r3, r4, lsl #2	@ tmp114, tmp113, VdhId,
	str	r2, [r0, #40]	@ tmp116, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
.L59:
	bl	vfmw_dprint_nothing	@
	b	.L60	@
.L63:
	.align	2
.L62:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_ExitSleep, .-VDMDRV_ExitSleep
	.align	2
	.global	VDMDRV_StartRepair
	.type	VDMDRV_StartRepair, %function
VDMDRV_StartRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L68	@ tmp113,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ StateAfterRepair, StateAfterRepair
	ldr	r3, [r3, #64]	@ D.37795, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	mov	r4, r1	@ VdhId, VdhId
	cmp	r3, #0	@ D.37795,
	beq	.L65	@,
	mov	r0, r1	@, VdhId
	blx	r3	@ D.37795
.L66:
	mov	r3, r4, asl #5	@ tmp117, VdhId,
	ldr	r2, .L68+4	@ tmp114,
	add	r1, r3, r4, lsl #3	@ tmp118, tmp117, VdhId,
	str	r5, [r2, r1]	@ StateAfterRepair, g_VdmDrvParam[VdhId_4(D)].VdmStateMachine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L65:
	bl	vfmw_dprint_nothing	@
	b	.L66	@
.L69:
	.align	2
.L68:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_StartRepair, .-VDMDRV_StartRepair
	.align	2
	.global	VDMDRV_StartDec
	.type	VDMDRV_StartDec, %function
VDMDRV_StartDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L74	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r3, #68]	@ D.37798, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	cmp	r3, #0	@ D.37798,
	beq	.L71	@,
	blx	r3	@ D.37798
.L72:
	mov	r3, r4, asl #5	@ tmp116, VdhId,
	ldr	r2, .L74+4	@ tmp113,
	add	r0, r3, r4, lsl #3	@ tmp117, tmp116, VdhId,
	mov	r3, #1	@ tmp119,
	str	r3, [r2, r0]	@ tmp119, g_VdmDrvParam[VdhId_4(D)].VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L71:
	bl	vfmw_dprint_nothing	@
	b	.L72	@
.L75:
	.align	2
.L74:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_StartDec, .-VDMDRV_StartDec
	.align	2
	.global	VDMDRV_IsChanDec
	.type	VDMDRV_IsChanDec, %function
VDMDRV_IsChanDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L77	@ tmp116,
	add	r0, r3, r0, lsl #2	@ tmp118, tmp116, ChanID,
	ldr	r0, [r0, #76]	@ tmp121, g_ChanCtx.ChanDecByVdhPlusOne
	adds	r0, r0, #0	@, tmp121,
	movne	r0, #1	@,
	bx	lr	@
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_IsChanDec, .-VDMDRV_IsChanDec
	.align	2
	.global	VDMDRV_SetChanIsDec
	.type	VDMDRV_SetChanIsDec, %function
VDMDRV_SetChanIsDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L80	@ tmp113,
	add	r1, r1, #1	@ D.37806, VdhID,
	add	r3, r3, r0, lsl #2	@ tmp115, tmp113, ChanID,
	str	r1, [r3, #76]	@ D.37806, g_ChanCtx.ChanDecByVdhPlusOne
	b	VDMDRV_AdjustPriorityAfterDec	@
.L81:
	.align	2
.L80:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_SetChanIsDec, .-VDMDRV_SetChanIsDec
	.align	2
	.global	VDMDRV_ClearChanIsDec
	.type	VDMDRV_ClearChanIsDec, %function
VDMDRV_ClearChanIsDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp112, ChanID,
	ldr	r3, .L83	@ tmp111,
	mov	r2, #0	@ tmp115,
	add	r0, r3, r0, lsl #2	@ tmp113, tmp111, tmp112,
	str	r2, [r0, #44]	@ tmp115, g_ChanCtx.ChanDecByVdhPlusOne
	bx	lr	@
.L84:
	.align	2
.L83:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_ClearChanIsDec, .-VDMDRV_ClearChanIsDec
	.align	2
	.global	VDMDRV_GetMb0QpInCurrPic
	.type	VDMDRV_GetMb0QpInCurrPic, %function
VDMDRV_GetMb0QpInCurrPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L86	@ tmp116,
	mov	r3, #180	@ tmp118,
	mla	r0, r3, r0, r2	@ tmp119, tmp118, VdhId, tmp116
	ldr	r0, [r0, #100]	@ g_BackUp[VdhId_2(D)].Mb0QpInCurrPic, g_BackUp[VdhId_2(D)].Mb0QpInCurrPic
	and	r0, r0, #31	@, g_BackUp[VdhId_2(D)].Mb0QpInCurrPic,
	bx	lr	@
.L87:
	.align	2
.L86:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_GetMb0QpInCurrPic, .-VDMDRV_GetMb0QpInCurrPic
	.align	2
	.global	VDMDRV_GetSwitchRounding
	.type	VDMDRV_GetSwitchRounding, %function
VDMDRV_GetSwitchRounding:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L89	@ tmp116,
	mov	r3, #180	@ tmp118,
	mla	r0, r3, r0, r2	@ tmp119, tmp118, VdhId, tmp116
	ldr	r0, [r0, #104]	@ g_BackUp[VdhId_2(D)].SwitchRounding, g_BackUp[VdhId_2(D)].SwitchRounding
	and	r0, r0, #1	@, g_BackUp[VdhId_2(D)].SwitchRounding,
	bx	lr	@
.L90:
	.align	2
.L89:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_GetSwitchRounding, .-VDMDRV_GetSwitchRounding
	.align	2
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #6	@ VidStd,
	beq	.L95	@,
.L94:
	mov	r0, #0	@ D.37821,
	bx	lr	@
.L95:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_5(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_5(D)].PicStruct
	cmp	r3, #1	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_5(D)].PicStruct,
	bne	.L94	@,
	ldr	r3, .L96	@ tmp119,
	movw	r1, #1144	@ tmp121,
	mla	r2, r1, r2, r3	@ tmp122, tmp121, VdhId, tmp119
	ldr	r3, [r2, #824]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_2(D)][0].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_2(D)][0].ValidGroupNum
	cmp	r3, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)&g_RepairParam][VdhId_2(D)][0].ValidGroupNum,
	movgt	r0, #1	@ D.37821,
	movle	r0, #0	@ D.37821,
	bx	lr	@
.L97:
	.align	2
.L96:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_AvsFirstFldNeedRepair, .-VDMDRV_AvsFirstFldNeedRepair
	.align	2
	.global	VDMDRV_AvsSecondFldNeedRepair
	.type	VDMDRV_AvsSecondFldNeedRepair, %function
VDMDRV_AvsSecondFldNeedRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #6	@ VidStd,
	beq	.L102	@,
.L101:
	mov	r0, #0	@ D.37827,
	bx	lr	@
.L102:
	ldrb	r3, [r1, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_6(D)].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)pDecParam_6(D)].PicStruct
	cmp	r3, #1	@ MEM[(struct AVS_DEC_PARAM_S *)pDecParam_6(D)].PicStruct,
	bne	.L101	@,
	ldr	r3, .L103	@ tmp121,
	movw	r1, #1144	@ tmp123,
	mla	r2, r1, r2, r3	@ tmp124, tmp123, VdhId, tmp121
	ldr	r3, [r2, #1124]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_3 + 572B].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_3 + 572B].ValidGroupNum
	cmp	r3, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_3 + 572B].ValidGroupNum,
	movgt	r0, #1	@ D.37827,
	movle	r0, #0	@ D.37827,
	bx	lr	@
.L104:
	.align	2
.L103:
	.word	.LANCHOR0+272
	.fnend
	.size	VDMDRV_AvsSecondFldNeedRepair, .-VDMDRV_AvsSecondFldNeedRepair
	.align	2
	.global	VDMDRV_IsCopy
	.type	VDMDRV_IsCopy, %function
VDMDRV_IsCopy:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pDecParam
	beq	.L115	@,
	sub	r0, r0, #1	@ tmp120, VidStd,
	cmp	r0, #11	@ tmp120,
	ldrls	pc, [pc, r0, asl #2]	@ tmp120
	b	.L112	@
.L109:
	.word	.L111
	.word	.L110
	.word	.L112
	.word	.L112
	.word	.L112
	.word	.L112
	.word	.L112
	.word	.L112
	.word	.L112
	.word	.L111
	.word	.L111
	.word	.L111
.L111:
	ldrb	r0, [r1, #1]	@ zero_extendqisi2	@ MEM[(struct VP6_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy,
	sub	r0, r0, #1	@ D.37835, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy,
	clz	r0, r0	@ D.37835, D.37835
	mov	r0, r0, lsr #5	@ D.37835, D.37835,
	bx	lr	@
.L110:
	ldrb	r0, [r1, #158]	@ zero_extendqisi2	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy
	sub	r0, r0, #1	@ D.37835, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy,
	clz	r0, r0	@ D.37835, D.37835
	mov	r0, r0, lsr #5	@ D.37835, D.37835,
	bx	lr	@
.L112:
	mov	r0, #0	@ D.37835,
	bx	lr	@
.L115:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pDecParam, pDecParam
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.37835, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsCopy, .-VDMDRV_IsCopy
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0	@ VdhId, VdhId
	ldr	r5, .L153	@ tmp348,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r0, .L153+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r5, #60]	@ D.37876, MEM[(HI_S32 *)&g_ChanCtx + 16B]
	cmp	r7, #0	@ D.37876,
	blt	.L119	@,
	mov	r3, r8, asl #3	@ tmp349, VdhId,
	mov	r10, r8, asl #5	@ tmp350, VdhId,
	add	r4, r3, r10	@ tmp354, tmp349, tmp350
	add	r6, r5, #60	@ ivtmp.140, tmp348,
	add	r4, r5, r4	@ tmp355, tmp348, tmp354
	mov	fp, r5	@ tmp353, tmp348
	str	r3, [sp, #4]	@ tmp349, %sfp
.L118:
	mov	r0, r7	@, D.37876
	str	r7, [r4, #8]	@ D.37876, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_IsChanActive	@
	add	r9, r4, #8	@ tmp162, tmp355,
	add	r3, fp, r7, lsl #2	@ tmp165, tmp353, D.37876,
	cmp	r0, #0	@,
	mov	r0, r7	@, D.37876
	bne	.L122	@,
	ldr	r3, [r3, #76]	@ tmp167, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp167,
	bne	.L122	@,
	str	r3, [r4, #16]	@ tmp167, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.37877,
	str	r0, [r4, #16]	@ D.37877, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	beq	.L122	@,
	ldr	r7, [r4, #8]	@ D.37876, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r0, r7	@, D.37876
	bl	VCTRL_GetVidStd	@
	ldr	r2, .L153+8	@ tmp347,
	ldr	r2, [r2]	@ D.37879, AcceleratorCharacter
	cmp	r2, #0	@ D.37879,
	mov	r3, r0	@ D.37875,
	add	r0, sp, #12	@,,
	str	r3, [r9, #4]	@ D.37875, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	beq	.L136	@,
	ldr	r1, [r4, #16]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	str	r7, [sp, #12]	@ D.37876, DecparamInfo.ChanID
	str	r3, [sp, #16]	@ D.37875, DecparamInfo.VidStd
	str	r1, [sp, #20]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, DecparamInfo.pDecParam
	blx	r2	@ D.37879
	cmp	r0, #1	@,
	beq	.L121	@,
	ldr	r3, [r9, #4]	@ D.37875, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
.L136:
	ldr	r2, [sp, #4]	@ tmp349, %sfp
	mov	r0, r3	@, D.37875
	ldr	r6, .L153	@ tmp199,
	add	r4, r2, r10	@ tmp203, tmp349, tmp350
	add	r4, r5, r4	@ tmp204, tmp348, tmp203
	add	r9, r4, #16	@ tmp205, tmp204,
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	VDMDRV_IsCopy	@
	cmp	r0, #0	@,
	bne	.L151	@,
	ldr	r3, .L153+12	@ tmp262,
	ldr	r3, [r3, #72]	@ D.37882, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.37882,
	beq	.L134	@,
	mov	r2, r8	@, VdhId
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	ldr	r0, [r4, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	blx	r3	@ D.37882
	cmp	r0, #0	@,
	beq	.L152	@,
.L134:
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, D.37876
	add	r7, r7, #8	@ tmp284, D.37876,
	mov	r4, #0	@ tmp269,
	mov	r2, r4	@, tmp269
	ldr	r3, [sp, #4]	@ tmp349, %sfp
	add	r10, r3, r10	@ tmp267, tmp349, tmp350
	mov	r3, #100	@ tmp276,
	add	r6, r5, r10	@ tmp268, tmp348, tmp267
	mov	r1, r3	@, tmp276
	str	r4, [r5, r10]	@ tmp269, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	add	r5, r5, r7, lsl #2	@ tmp285, tmp348, tmp284,
	str	r3, [r6, #4]	@ tmp276, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	mov	r0, r6	@, tmp268
	mov	r1, #40	@,
	bl	__memzero	@
	str	r4, [r5, #44]	@ tmp269, g_ChanCtx.ChanDecByVdhPlusOne
.L119:
	ldr	r0, .L153+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L122:
	bl	vfmw_dprint_nothing	@
.L121:
	ldr	r3, .L153+16	@ tmp366,
	cmp	r6, r3	@ ivtmp.140, tmp366
	beq	.L119	@,
	ldr	r7, [r6, #4]!	@ D.37876, MEM[base: _116, offset: 0B]
	cmp	r7, #0	@ D.37876,
	bge	.L118	@,
	b	.L119	@
.L151:
	ldr	r3, [r4, #12]	@ MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	sub	r3, r3, #1	@ tmp215, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd,
	cmp	r3, #11	@ tmp215,
	ldrls	pc, [pc, r3, asl #2]	@ tmp215
	b	.L119	@
.L128:
	.word	.L127
	.word	.L129
	.word	.L119
	.word	.L119
	.word	.L119
	.word	.L119
	.word	.L119
	.word	.L119
	.word	.L119
	.word	.L130
	.word	.L130
	.word	.L130
.L152:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L153+20	@ tmp311,
	mov	r3, r8, asl #6	@ tmp314, VdhId,
	sub	r3, r3, r8, asl #4	@ tmp315, tmp314, VdhId,
	add	r3, r2, r3	@ tmp316, tmp311, tmp315
	mov	r1, r0	@ D.37881,
	mov	r0, r8	@, VdhId
	str	r1, [r3, #4]	@ D.37881, g_VfmwGlobalStat[VdhId_5(D)].u32VdhLastStartTimeInMs
	add	r8, r8, #1	@ D.37876, VdhId,
	str	r1, [r9, #4]	@ D.37881, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	bl	VDMDRV_StartDec	@
	add	r3, r6, r7, lsl #2	@ tmp319, tmp199, D.37876,
	mov	r0, r7	@, D.37876
	str	r8, [r3, #76]	@ D.37876, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_AdjustPriorityAfterDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L119	@,
	bl	OSAL_GetTimeInMs	@
	add	r7, r6, r7, lsl #2	@ tmp323, tmp199, D.37876,
	ldr	r2, .L153+24	@ tmp327,
	ldr	r3, [r7, #1416]	@ tmp326, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.37881, tmp326, currtime
	cmp	r3, r2	@ D.37881, g_TraceFramePeriod
	strhi	r0, [r7, #1416]	@ currtime, last_rec_pos_time
	b	.L119	@
.L130:
	ldr	r3, [sp, #4]	@ tmp349, %sfp
	mov	r1, r8	@, VdhId
	add	r3, r3, r10	@ tmp236, tmp349, tmp350
	add	r3, r5, r3	@ tmp237, tmp348, tmp236
	ldr	r0, [r3, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	PostPro_CopyYuv_Vp6	@
	mov	r3, r0	@ ret,
.L126:
	cmp	r3, #0	@ ret,
	bne	.L119	@,
	ldr	r2, [sp, #4]	@ tmp349, %sfp
	mov	r1, r8	@, VdhId
	mov	r0, #2	@,
	add	r8, r8, #1	@ D.37876, VdhId,
	add	r10, r2, r10	@ tmp244, tmp349, tmp350
	ldr	r4, .L153	@ tmp240,
	add	r10, r5, r10	@ tmp245, tmp348, tmp244
	add	r5, r5, r7, lsl #2	@ tmp249, tmp348, D.37876,
	str	r3, [r10, #4]	@ ret, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ErrRatio
	bl	VDMDRV_StartRepair	@
	mov	r0, r7	@, D.37876
	str	r8, [r5, #76]	@ D.37876, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_AdjustPriorityAfterDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L119	@,
	bl	OSAL_GetTimeInMs	@
	add	r4, r4, r7, lsl #2	@ tmp253, tmp240, D.37876,
	ldr	r2, .L153+24	@ tmp257,
	ldr	r3, [r4, #1416]	@ tmp256, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.37881, tmp256, currtime
	cmp	r3, r2	@ D.37881, g_TraceFramePeriod
	strhi	r0, [r4, #1416]	@ currtime, last_rec_pos_time
	b	.L119	@
.L129:
	ldr	r3, [sp, #4]	@ tmp349, %sfp
	mov	r1, r8	@, VdhId
	add	r3, r3, r10	@ tmp220, tmp349, tmp350
	add	r3, r5, r3	@ tmp221, tmp348, tmp220
	ldr	r0, [r3, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	PostPro_CopyYuv	@
	mov	r3, r0	@ ret,
	b	.L126	@
.L127:
	ldr	r3, [sp, #4]	@ tmp349, %sfp
	mov	r1, r8	@, VdhId
	add	r3, r3, r10	@ tmp228, tmp349, tmp350
	add	r3, r5, r3	@ tmp229, tmp348, tmp228
	ldr	r0, [r3, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	PostPro_CopyYuv_Vc1	@
	mov	r3, r0	@ ret,
	b	.L126	@
.L154:
	.align	2
.L153:
	.word	.LANCHOR0
	.word	g_ActivateLock
	.word	AcceleratorCharacter
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+72
	.word	g_VfmwGlobalStat
	.word	g_TraceFramePeriod
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #148
	sub	sp, sp, #148	@,,
	mov	r6, r0	@ VdhId, VdhId
	mov	r1, #140	@,
	add	r0, sp, #4	@,,
	ldr	r5, .L201	@ tmp638,
	bl	__memzero	@
	mov	r1, #136	@,
	mov	r4, r6, asl #3	@ tmp640, VdhId,
	mov	r8, r6, asl #5	@ tmp641, VdhId,
	add	r0, sp, #8	@ tmp646,,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	add	ip, r4, r8	@ tmp187, tmp640, tmp641
	add	r7, r5, ip	@ tmp188, tmp638, tmp187
	ldr	ip, [r5, ip]	@ D.37902, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_2(D)].VdmStateMachine
	cmp	ip, #2	@ D.37902,
	beq	.L157	@,
	cmp	ip, #3	@ D.37902,
	beq	.L158	@,
	cmp	ip, #1	@ D.37902,
	beq	.L196	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r2, #0	@ tmp627,
	add	r3, r3, #8	@ tmp623, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r5, r5, r3, lsl #2	@ tmp625, tmp638, tmp623,
	str	r2, [r5, #44]	@ tmp627, g_ChanCtx.ChanDecByVdhPlusOne
.L155:
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L196:
	ldr	r3, [r7, #28]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	cmp	r3, #1	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut,
	beq	.L197	@,
	mov	r2, r6	@, VdhId
	ldr	r1, [r7, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	ldr	r0, [r7, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	bl	PostPro_GetErrRatio	@
	str	r0, [r7, #4]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r7, #12]	@ D.37911, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	sub	r3, r0, #8	@ D.37906, D.37911,
	cmp	r0, #5	@ D.37911,
	cmpne	r3, #1	@, D.37906,
	movls	r2, #0	@ tmp272,
	strls	r2, [r7, #4]	@ tmp272, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bls	.L164	@,
	ldr	r3, [r7, #4]	@ D.37903, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r3, #0	@ D.37903,
	beq	.L165	@,
	ldr	r2, .L201+4	@ tmp280,
	ldr	ip, [r2]	@ D.37908, g_event_report
	cmp	ip, #0	@ D.37908,
	beq	.L166	@,
	add	r2, sp, #144	@ tmp281,,
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r1, #114	@,
	str	r3, [r2, #-144]!	@ D.37903, para
	blx	ip	@ D.37908
.L161:
	ldr	r3, [sp, #4]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r3, #1	@ VdmInfoExt.ModuleLowlyEnable,
	beq	.L164	@,
	add	r3, r4, r8	@ tmp295, tmp640, tmp641
	add	r3, r5, r3	@ tmp296, tmp638, tmp295
	ldr	r2, [r3, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r2, #0	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	bne	.L169	@,
.L164:
	mov	r3, #0	@ D.37903,
.L168:
	add	r4, r4, r8	@ tmp324, tmp640, tmp641
	mov	r1, r3	@, D.37903
	add	r4, r5, r4	@ tmp325, tmp638, tmp324
	add	r2, sp, #8	@ tmp647,,
	str	r3, [r4, #4]	@ D.37903, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r4	@, tmp325
	mov	r1, #40	@,
	add	r3, r3, #8	@ tmp352, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	mov	r2, #0	@ tmp356,
	add	r5, r5, r3, lsl #2	@ tmp354, tmp638, tmp352,
	str	r2, [r5, #44]	@ tmp356, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L158:
	ldr	r1, [r7, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	add	r2, sp, #8	@ tmp651,,
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r4, #0	@ tmp564,
	cmp	r1, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	str	r4, [r7, #28]	@ tmp564, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	movge	r1, #100	@ D.37903,
	bic	r1, r1, r1, asr #31	@ D.37903, D.37903
	str	r1, [r7, #4]	@ D.37903, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r7, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r7	@, tmp188
	mov	r1, #40	@,
	add	r3, r3, #8	@ tmp604, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r5, r5, r3, lsl #2	@ tmp606, tmp638, tmp604,
	str	r4, [r5, #44]	@ tmp564, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L157:
	add	r9, r7, #8	@ tmp377, tmp188,
	ldr	r0, [r9, #4]	@ D.37904, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	mov	r2, #0	@ tmp370,
	add	r10, r7, #16	@ tmp384, tmp188,
	cmp	r0, #6	@ D.37904,
	str	r2, [r7, #28]	@ tmp370, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	ldr	r1, [r7, #16]	@ D.37905, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	beq	.L198	@,
.L172:
	bl	VDMDRV_IsCopy	@
	subs	r7, r0, #0	@ D.37903,
	bne	.L199	@,
	add	r4, r4, r8	@ tmp511, tmp640, tmp641
	add	r2, sp, #8	@ tmp650,,
	add	r4, r5, r4	@ tmp512, tmp638, tmp511
	ldr	r1, [r4, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	cmp	r1, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	movge	r1, #100	@ D.37903,
	bic	r1, r1, r1, asr #31	@ D.37903, D.37903
	str	r1, [r4, #4]	@ D.37903, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r4	@, tmp512
	mov	r1, #40	@,
	add	r5, r5, r3, lsl #2	@ tmp548, tmp638, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	str	r7, [r5, #76]	@ D.37903, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L198:
	ldrb	fp, [r1, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)_43].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)_43].PicStruct
	cmp	fp, #1	@ MEM[(struct AVS_DEC_PARAM_S *)_43].PicStruct,
	bne	.L172	@,
	movw	r3, #1144	@ tmp389,
	mla	r3, r3, r6, r5	@ tmp390, tmp389, VdhId, tmp638
	ldr	r3, [r3, #1396]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_44 + 572B].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_44 + 572B].ValidGroupNum
	cmp	r3, r2	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_44 + 572B].ValidGroupNum,
	ble	.L172	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L201+8	@ tmp637,
	ldr	ip, [r3, #84]	@ D.37912, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ D.37912,
	str	r0, [r10, #4]	@, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_2(D)].StartTime
	beq	.L174	@,
	mov	r2, fp	@, MEM[(struct AVS_DEC_PARAM_S *)_43].PicStruct
	ldr	r0, [r9, #4]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	mov	r3, r6	@, VdhId
	ldr	r1, [r7, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	blx	ip	@ D.37912
	cmp	r0, #0	@,
	beq	.L200	@,
.L174:
	add	r4, r4, r8	@ tmp431, tmp640, tmp641
	add	r2, sp, #8	@ tmp648,,
	add	r6, r5, r4	@ tmp432, tmp638, tmp431
	mov	r1, #100	@,
	ldr	r0, [r6, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r6, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r6, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r2, #0	@ tmp455,
	str	r2, [r5, r4]	@ tmp455, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_2(D)].VdmStateMachine
	add	r3, r3, #8	@ tmp451, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r5, r5, r3, lsl #2	@ tmp453, tmp638, tmp451,
	str	r2, [r5, #44]	@ tmp455, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L155	@
.L197:
	mov	r2, r6	@, VdhId
	ldr	r1, [r7, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	ldr	r0, [r7, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	bl	PostPro_SetFullRepair	@
	mov	r2, #100	@ tmp220,
	mov	r3, #0	@ tmp228,
	str	r2, [r7, #4]	@ tmp220, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	str	r3, [r7, #28]	@ tmp228, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	bl	vfmw_dprint_nothing	@
	b	.L161	@
.L169:
	ldr	r0, [r3, #12]	@ D.37911, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
.L176:
	add	r7, r4, r8	@ tmp309, tmp640, tmp641
	add	r7, r5, r7	@ tmp310, tmp638, tmp309
	ldr	r1, [r7, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L155	@,
	ldr	r3, [r7, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r3, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	movge	r3, #100	@ D.37903,
	bic	r3, r3, r3, asr #31	@ D.37903, D.37903
	b	.L168	@
.L199:
	add	r4, r4, r8	@ tmp467, tmp640, tmp641
	mov	r7, #0	@ tmp469,
	add	r4, r5, r4	@ tmp468, tmp638, tmp467
	add	r2, sp, #8	@ tmp649,,
	mov	r1, r7	@, tmp469
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	str	r7, [r4, #4]	@ tmp469, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r4	@, tmp468
	mov	r1, #40	@,
	add	r3, r3, #8	@ tmp496, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r5, r5, r3, lsl #2	@ tmp498, tmp638, tmp496,
	str	r7, [r5, #44]	@ tmp469, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L155	@
.L166:
	ldr	r3, [sp, #4]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r3, #1	@ VdmInfoExt.ModuleLowlyEnable,
	bne	.L176	@,
	b	.L164	@
.L200:
	mov	r1, r6	@, VdhId
	mov	r0, #3	@,
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L155	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #8]	@ D.37903, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	ldr	r2, .L201+12	@ tmp420,
	add	r5, r5, r3, lsl #2	@ tmp416, tmp638, D.37903,
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r3, [r5, #1432]	@ tmp419, last_rec_pos_time
	rsb	r3, r3, r0	@ D.37906, tmp419, currtime
	cmp	r3, r2	@ D.37906, g_TraceFramePeriod
	strhi	r0, [r5, #1432]	@ currtime, last_rec_pos_time
	b	.L155	@
.L165:
	ldr	r2, [sp, #4]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r2, #1	@ VdmInfoExt.ModuleLowlyEnable,
	bne	.L168	@,
	b	.L164	@
.L202:
	.align	2
.L201:
	.word	.LANCHOR0
	.word	g_event_report
	.word	g_vdm_hal_fun_ptr
	.word	g_TraceFramePeriod
	.fnend
	.size	VDMDRV_AfterDec, .-VDMDRV_AfterDec
	.align	2
	.global	VDMDRV_CheckDevice
	.type	VDMDRV_CheckDevice, %function
VDMDRV_CheckDevice:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0, asl #3	@ tmp299, VdhId,
	mov	r7, r0, asl #5	@ tmp300, VdhId,
	ldr	r4, .L238	@ tmp298,
	add	r8, r5, r7	@ tmp138, tmp299, tmp300
	mov	r6, r0	@ VdhId, VdhId
	add	r9, r4, r8	@ tmp139, tmp298, tmp138
	ldr	r0, [r9, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L235	@,
.L204:
	add	r3, r5, r7	@ tmp189, tmp299, tmp300
	add	r8, r4, r3	@ tmp190, tmp298, tmp189
	ldr	r3, [r4, r3]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r3, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	bne	.L236	@,
.L205:
	add	r4, r4, r6, lsl #2	@ tmp291, tmp298, VdhId,
	ldr	r0, [r4, #40]	@ D.37933, s_eVdmDrvSleepState
	cmp	r0, #0	@ D.37933,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r0, #1	@ D.37933,
	beq	.L237	@,
.L209:
	mov	r0, #1	@ D.37926,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L236:
	bl	OSAL_GetTimeInMs	@
	add	r1, r8, #16	@ tmp205, tmp190,
	ldr	r3, [r1, #4]	@ D.37932, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	str	r0, [r8, #24]	@ D.37932, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].CurrTime
	cmp	r0, r3	@ D.37932, D.37932
	bcc	.L207	@,
	clz	r2, r3	@ tmp209, D.37932
	rsb	r3, r3, r0	@ TimeElapse, D.37932, D.37932
	mov	r2, r2, lsr #5	@ tmp209, tmp209,
	orrs	r9, r2, r3, lsr #31	@, tmp213, tmp209, TimeElapse,
	bne	.L207	@,
	cmp	r3, #500	@ TimeElapse,
	bls	.L209	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L238+4	@ tmp228,
	ldr	r3, [r3]	@ D.37934, g_event_report
	cmp	r3, #0	@ D.37934,
	beq	.L212	@,
	mov	r2, r9	@, tmp213
	ldr	r0, [r8, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r1, #101	@,
	blx	r3	@ D.37934
.L212:
	ldr	r3, .L238+8	@ tmp237,
	ldr	r3, [r3, #40]	@ D.37935, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.37935,
	beq	.L213	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.37935
.L214:
	add	r3, r5, r7	@ tmp242, tmp299, tmp300
	mov	r5, #1	@ tmp245,
	add	r4, r4, r3	@ tmp243, tmp298, tmp242
	ldr	r2, .L238	@ tmp238,
	add	lr, r4, #32	@ tmp252, tmp243,
	add	ip, r4, #24	@ tmp244, tmp243,
	ldr	r1, [r4, #36]	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	str	r5, [r4, #28]	@ tmp245, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].VdmTimeOut
	cmp	r1, r5	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag,
	bne	.L215	@,
	ldr	r4, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r1, #0	@ tmp261,
	str	r1, [lr, #4]	@ tmp261, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	mov	r0, r1	@ D.37926, tmp261
	add	lr, r4, #8	@ tmp285, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	str	r1, [r2, r3]	@ tmp261, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	str	r1, [ip, #4]	@ tmp261, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].VdmTimeOut
	add	r2, r2, lr, lsl #2	@ tmp287, tmp238, tmp285,
	str	r1, [r2, #44]	@ tmp261, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L207:
	str	r0, [r1, #4]	@ D.37932, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	mov	r0, #1	@ D.37926,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L237:
	mov	r3, #2	@ tmp296,
	str	r3, [r4, #40]	@ tmp296, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L235:
	ldr	r3, [r4, r8]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r3, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	beq	.L205	@,
	ldr	r3, .L238+8	@ tmp149,
	ldr	r3, [r3, #80]	@ D.37931, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.37931,
	beq	.L206	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.37931
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp157,
	strne	r3, [r9, #36]	@ tmp157, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	bne	.L204	@,
.L206:
	add	r8, r5, r7	@ tmp162, tmp299, tmp300
	mov	r9, #0	@ tmp165,
	add	r8, r4, r8	@ tmp163, tmp298, tmp162
	mov	r1, #40	@,
	mov	r0, r8	@, tmp163
	str	r9, [r8, #36]	@ tmp165, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	bl	__memzero	@
	ldr	r3, [r8, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	add	r3, r3, #8	@ tmp180, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	add	r3, r4, r3, lsl #2	@ tmp182, tmp298, tmp180,
	str	r9, [r3, #44]	@ tmp165, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L204	@
.L215:
	mov	r0, r6	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r5	@ D.37926, tmp245
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L213:
	bl	vfmw_dprint_nothing	@
	b	.L214	@
.L239:
	.align	2
.L238:
	.word	.LANCHOR0
	.word	g_event_report
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_WakeUpVdm
	.type	VDMDRV_WakeUpVdm, %function
VDMDRV_WakeUpVdm:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	VDMDRV_CheckDevice	@
	cmp	r0, #0	@,
	ldmnefd	sp!, {r4, pc}	@
	ldmfd	sp!, {r4, lr}	@
	b	VDMDRV_ActivateVDH	@
	.fnend
	.size	VDMDRV_WakeUpVdm, .-VDMDRV_WakeUpVdm
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_IsrProcess
	.type	VDMDRV_IsrProcess, %function
VDMDRV_IsrProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	ble	.L244	@,
	b	vfmw_dprint_nothing	@
.L244:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ VdhId, VdhId
	ldr	r5, .L282	@ tmp385,
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r0, .L282+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #60]	@ D.37956, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.37956,
	beq	.L246	@,
	mov	r1, r4	@, VdhId
	mov	r0, #2	@,
	blx	r3	@ D.37956
	tst	r0, #1	@,
	beq	.L246	@,
	ldr	r3, [r5, #92]	@ D.37953, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	cmp	r3, #0	@ D.37953,
	beq	.L247	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.37953
.L248:
	ldr	r3, [r5, #48]	@ D.37954, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.37954,
	beq	.L249	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.37954
.L250:
	mov	r8, r4, asl #3	@ tmp386, VdhId,
	mov	r6, r4, asl #5	@ tmp388, VdhId,
	ldr	r7, .L282+8	@ tmp383,
	add	r3, r8, r6	@ tmp169, tmp386, tmp388
	mov	r0, #6	@,
	add	r3, r7, r3	@ tmp170, tmp383, tmp169
	ldr	r5, [r3, #8]	@ D.37955, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L252	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L282+12	@ tmp174,
	ldr	r1, .L282+16	@ tmp178,
	ldr	r3, [r2, r5, asl #2]	@ *_42, *_42
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.37957, *_42, CurTime
	cmp	r3, r1	@ D.37957, g_TraceFramePeriod
	strhi	r0, [r2, r5, asl #2]	@ CurTime, *_42
.L252:
	bl	OSAL_GetTimeInMs	@
	mov	r9, r4, asl #6	@ tmp382, VdhId,
	mov	r1, r4, asl #4	@ tmp387, VdhId,
	ldr	r5, .L282+20	@ tmp384,
	rsb	r2, r1, r9	@ tmp184, tmp387, tmp382
	add	lr, r5, r2	@ tmp185, tmp384, tmp184
	ldr	r3, [lr, #4]	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLastStartTimeInMs
	cmp	r3, #0	@ D.37957,
	beq	.L255	@,
	ldr	r10, [r5, r2]	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	rsb	r9, r1, r9	@ tmp218, tmp387, tmp382
	add	ip, r10, #499712	@ D.37957, D.37957,
	add	ip, ip, #288	@ D.37957, D.37957,
	cmp	r3, ip	@ D.37957, D.37957
	strhi	r3, [r5, r2]	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	add	r5, r5, r9	@ tmp219, tmp384, tmp218
	ldrls	fp, [lr, #8]	@ D.37961, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhWorkTimeInMs
	mov	lr, #180	@ tmp230,
	mla	lr, lr, r4, r7	@ tmp231, tmp230, VdhId, tmp383
	ldr	ip, [r5, #32]	@ MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	movhi	r10, r3	@ D.37957, D.37957
	rsb	r10, r10, r0	@ Period, D.37957, CurTime
	rsb	r0, r3, r0	@ D.37957, D.37957, CurTime
	movhi	fp, #0	@ D.37961,
	add	ip, ip, #1	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum,
	add	r0, r0, fp	@ D.37957, D.37957, D.37961
	str	ip, [r5, #32]	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	cmp	r10, #1000	@ Period,
	ldr	fp, [lr, #116]	@ g_BackUp[VdhId_5(D)].DecCyclePerPic, g_BackUp[VdhId_5(D)].DecCyclePerPic
	add	r3, r5, #8	@ tmp220, tmp219,
	ldr	ip, .L282+20	@ tmp214,
	add	r2, r5, #32	@ tmp241, tmp219,
	ldr	r1, [r5, #36]	@ MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	str	r3, [sp]	@ tmp220, %sfp
	mov	r3, #0	@ tmp227,
	add	fp, r1, fp, lsr #10	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle, g_BackUp[VdhId_5(D)].DecCyclePerPic,
	str	r0, [r5, #8]	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhWorkTimeInMs
	str	r3, [r5, #4]	@ tmp227, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLastStartTimeInMs
	str	r3, [sp, #12]	@ tmp227, %sfp
	str	fp, [r5, #36]	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	str	r2, [sp, #8]	@ tmp241, %sfp
	str	ip, [sp, #4]	@ tmp214, %sfp
	bcc	.L255	@,
	mov	lr, #1000	@ tmp274,
	mov	r1, r10	@, Period
	mul	r0, lr, r0	@, tmp274, D.37957
	bl	__aeabi_uidiv	@
	str	fp, [r5, #40]	@ D.37957, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhKiloCyclePerSecond
	str	r10, [r5, #44]	@ Period, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32Period
	ldr	r3, [sp, #12]	@ tmp227, %sfp
	ldr	ip, [sp, #4]	@ tmp214, %sfp
	ldr	r2, [sp, #8]	@ tmp241, %sfp
	str	r3, [r5, #32]	@ tmp227, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	str	r3, [ip, r9]	@ tmp227, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	str	r3, [r2, #4]	@ tmp227, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	ldr	r3, [sp]	@ tmp220, %sfp
	str	r0, [r3, #4]	@, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLoad
.L255:
	add	r2, r8, r6	@ tmp319, tmp386, tmp388
	ldr	ip, .L282+8	@ tmp315,
	add	r3, r7, r2	@ tmp320, tmp383, tmp319
	add	r1, r3, #32	@ tmp328, tmp320,
	ldr	r0, [r3, #36]	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	ldr	r5, [r3, #8]	@ ChanId, g_VdmDrvParam[VdhId_5(D)].ChanId
	cmp	r0, #1	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag,
	moveq	r3, #0	@ tmp337,
	streq	r3, [r1, #4]	@ tmp337, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	beq	.L260	@,
	ldr	r2, [ip, r2]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r2, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	beq	.L261	@,
	ldr	r9, [r3, #16]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	cmp	r9, #0	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam,
	beq	.L281	@,
.L261:
	mov	r0, r5	@, ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L263	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L263	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L265:
	add	r6, r8, r6	@ tmp357, tmp386, tmp388
	add	r7, r7, r6	@ tmp358, tmp383, tmp357
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_InformVdmFree	@
	ldr	r0, .L282+4	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L263:
	bl	vfmw_dprint_nothing	@
.L260:
	add	r3, r8, r6	@ tmp367, tmp386, tmp388
	mov	r2, #0	@ tmp374,
	add	r1, r7, r3	@ tmp368, tmp383, tmp367
	str	r2, [r7, r3]	@ tmp374, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	ldr	r3, [r1, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	add	r3, r3, #8	@ tmp370, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	add	r3, r7, r3, lsl #2	@ tmp372, tmp383, tmp370,
	str	r2, [r3, #44]	@ tmp374, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L265	@
.L246:
	mov	r0, r4, asl #5	@ tmp157, VdhId,
	ldr	r3, .L282+8	@ tmp154,
	add	r4, r0, r4, lsl #3	@ tmp158, tmp157, VdhId,
	mov	r2, #0	@ tmp160,
	ldr	r0, .L282+4	@,
	str	r2, [r3, r4]	@ tmp160, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L281:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L260	@,
	mov	r2, r9	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	mov	r0, r5	@, ChanId
	mov	r1, #100	@,
	bl	VCTRL_VdmPostProc	@
	b	.L260	@
.L247:
	bl	vfmw_dprint_nothing	@
	b	.L248	@
.L249:
	bl	vfmw_dprint_nothing	@
	b	.L250	@
.L283:
	.align	2
.L282:
	.word	g_vdm_hal_fun_ptr
	.word	g_TaskLock
	.word	.LANCHOR0
	.word	.LANCHOR0+1448
	.word	g_TraceFramePeriod
	.word	g_VfmwGlobalStat
	.fnend
	.size	VDMDRV_IsrProcess, .-VDMDRV_IsrProcess
	.align	2
	.global	VDMDRV_ResetVDH
	.type	VDMDRV_ResetVDH, %function
VDMDRV_ResetVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, .L289	@ tmp118,
	ldr	r3, [r4, #8]	@ g_VdmDrvParam[0].ChanId, g_VdmDrvParam[0].ChanId
	cmp	r3, r0	@ g_VdmDrvParam[0].ChanId, ChanID
	ldmnefd	sp!, {r4, pc}	@
	ldr	r3, .L289+4	@ tmp115,
	ldr	r3, [r3, #40]	@ D.37964, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.37964,
	beq	.L286	@,
	mov	r0, #0	@,
	blx	r3	@ D.37964
.L287:
	mov	r3, #0	@ tmp117,
	str	r3, [r4]	@ tmp117, g_VdmDrvParam[0].VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L286:
	bl	vfmw_dprint_nothing	@
	b	.L287	@
.L290:
	.align	2
.L289:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VDMDRV_ResetVDH, .-VDMDRV_ResetVDH
	.global	__ksymtab_CapItem
	.global	g_VdmDrvParam
	.global	USE_FF_APT_EN
	.global	g_ChanCtx
	.global	g_BackUp
	.global	g_DecReport
	.global	g_RepairParam
	.global	g_HwMem
	.global	g_UpMsg
	.global	CapItem
	.section	__ksymtab_strings,"a",%progbits
	.type	__kstrtab_CapItem, %object
	.size	__kstrtab_CapItem, 8
__kstrtab_CapItem:
	.ascii	"CapItem\000"
	.data
	.align	2
	.type	USE_FF_APT_EN, %object
	.size	USE_FF_APT_EN, 4
USE_FF_APT_EN:
	.word	1
	.type	CapItem, %object
	.size	CapItem, 924
CapItem:
	.word	176
	.word	144
	.word	4
	.word	10
	.word	11
	.word	12
	.word	524288
	.word	352
	.word	288
	.word	4
	.word	10
	.word	11
	.word	12
	.word	786432
	.word	720
	.word	576
	.word	4
	.word	10
	.word	11
	.word	12
	.word	1048576
	.word	1280
	.word	720
	.word	4
	.word	10
	.word	11
	.word	12
	.word	2097152
	.word	1920
	.word	1088
	.word	4
	.word	10
	.word	11
	.word	12
	.word	3145728
	.word	176
	.word	144
	.word	15
	.word	19
	.word	22
	.word	24
	.word	524288
	.word	352
	.word	288
	.word	15
	.word	19
	.word	22
	.word	24
	.word	786432
	.word	720
	.word	576
	.word	9
	.word	15
	.word	16
	.word	17
	.word	1048576
	.word	1280
	.word	720
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1920
	.word	1088
	.word	6
	.word	13
	.word	13
	.word	13
	.word	2097152
	.word	5632
	.word	4224
	.word	1
	.word	3
	.word	3
	.word	3
	.word	16777216
	.word	1280
	.word	800
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	800
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1488
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	1280
	.word	1488
	.word	6
	.word	13
	.word	13
	.word	14
	.word	3145728
	.word	2160
	.word	1280
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	1280
	.word	2176
	.word	6
	.word	13
	.word	13
	.word	13
	.word	3145728
	.word	2160
	.word	2176
	.word	4
	.word	11
	.word	11
	.word	11
	.word	4194304
	.word	4096
	.word	2304
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	2160
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	5242880
	.word	4096
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	8388608
	.word	8192
	.word	4096
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	4096
	.word	8192
	.word	2
	.word	9
	.word	9
	.word	9
	.word	10485760
	.word	8192
	.word	8192
	.word	1
	.word	3
	.word	3
	.word	3
	.word	20971520
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	1
	.word	3
	.word	3
	.word	3
	.word	2097152
	.word	1920
	.word	1088
	.word	17
	.word	26
	.word	26
	.word	26
	.word	2097152
	.word	176
	.word	144
	.word	15
	.word	19
	.word	22
	.word	24
	.word	524288
	.word	352
	.word	288
	.word	15
	.word	19
	.word	22
	.word	24
	.word	786432
	.word	720
	.word	576
	.word	9
	.word	15
	.word	16
	.word	17
	.word	1048576
	.word	1280
	.word	720
	.word	6
	.word	13
	.word	13
	.word	14
	.word	2097152
	.word	1920
	.word	1088
	.word	6
	.word	13
	.word	13
	.word	13
	.word	2097152
	.word	4096
	.word	2304
	.word	4
	.word	4
	.word	4
	.word	4
	.word	16777216
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_VdmDrvParam, %object
	.size	g_VdmDrvParam, 40
g_VdmDrvParam:
	.space	40
	.type	s_eVdmDrvSleepState, %object
	.size	s_eVdmDrvSleepState, 4
s_eVdmDrvSleepState:
	.space	4
	.type	g_ChanCtx, %object
	.size	g_ChanCtx, 48
g_ChanCtx:
	.space	48
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	g_RepairParam, %object
	.size	g_RepairParam, 1144
g_RepairParam:
	.space	1144
	.type	last_rec_pos_time.36990, %object
	.size	last_rec_pos_time.36990, 16
last_rec_pos_time.36990:
	.space	16
	.type	last_rec_pos_time.37037, %object
	.size	last_rec_pos_time.37037, 16
last_rec_pos_time.37037:
	.space	16
	.type	last_rec_pos_time.37109, %object
	.size	last_rec_pos_time.37109, 16
last_rec_pos_time.37109:
	.space	16
	.type	g_DecReport, %object
	.size	g_DecReport, 528
g_DecReport:
	.space	528
	.type	g_HwMem, %object
	.size	g_HwMem, 1140
g_HwMem:
	.space	1140
	.type	g_UpMsg, %object
	.size	g_UpMsg, 2048
g_UpMsg:
	.space	2048
	.section	___ksymtab+CapItem,"a",%progbits
	.align	2
	.type	__ksymtab_CapItem, %object
	.size	__ksymtab_CapItem, 8
__ksymtab_CapItem:
@ value:
	.word	CapItem
@ name:
	.word	__kstrtab_CapItem
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
