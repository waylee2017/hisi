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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
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
	ldr	r3, [r3]	@ D.35640, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.35640,
	beq	.L2	@,
	blx	r3	@ D.35640
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
	@ link register save eliminated.
	ldr	r3, [r0]	@ *pPrioArray_16(D), *pPrioArray_16(D)
	cmp	r3, #0	@ *pPrioArray_16(D),
	ldrgt	r2, .L14	@ tmp113,
	movgt	r3, #0	@ tmp114,
	ldrle	r3, .L14	@ tmp116,
	mvnle	r2, #0	@ tmp117,
	strgt	r3, [r2, #48]	@ tmp114, MEM[(HI_S32 *)&g_ChanCtx + 4B]
	strle	r2, [r3, #48]	@ tmp117, MEM[(HI_S32 *)&g_ChanCtx + 4B]
	strgt	r3, [r0]	@ tmp114, *pPrioArray_16(D)
	bx	lr	@
.L15:
	.align	2
.L14:
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
	@ link register save eliminated.
	bx	lr	@
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
	ldr	r1, .L22	@ tmp116,
	add	r0, r1, r4, lsl #2	@ tmp117, tmp116, VdhId,
	ldr	r3, [r0, #40]	@ tmp119, s_eVdmDrvSleepState
	cmp	r3, #0	@ tmp119,
	bne	.L20	@,
	mov	r2, r4, asl #5	@ tmp123, VdhId,
	add	r4, r2, r4, lsl #3	@ tmp124, tmp123, VdhId,
	ldr	r4, [r1, r4]	@ g_VdmDrvParam[VdhId_5(D)].VdmStateMachine, g_VdmDrvParam[VdhId_5(D)].VdmStateMachine
	cmp	r4, #0	@ g_VdmDrvParam[VdhId_5(D)].VdmStateMachine,
	moveq	r3, #2	@ tmp130,
	movne	r4, r3	@ ret, tmp119
	movne	r3, #1	@ tmp134,
	str	r3, [r0, #40]	@ tmp134, s_eVdmDrvSleepState
.L18:
	add	r0, sp, #4	@ tmp139,,
	bl	OSAL_UnLockIRQ	@
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L20:
	mvn	r4, #0	@ ret,
	b	.L18	@
.L23:
	.align	2
.L22:
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
	ldr	r3, .L25	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp114, VdhId,
	ldr	r0, [r0, #40]	@, s_eVdmDrvSleepState
	bx	lr	@
.L26:
	.align	2
.L25:
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
	ldr	r3, .L33	@ tmp114,
	add	r5, r3, r4, lsl #2	@ tmp115, tmp114, VdhId,
	ldr	r2, [r5, #40]	@ tmp117, s_eVdmDrvSleepState
	cmp	r2, #2	@ tmp117,
	beq	.L28	@,
	mov	r0, r4, asl #5	@ tmp121, VdhId,
	mov	r1, #40	@,
	add	r0, r0, r4, lsl #3	@ tmp122, tmp121, VdhId,
	add	r0, r3, r0	@, tmp114, tmp122
	bl	__memzero	@
	mov	r3, #2	@ tmp127,
	str	r3, [r5, #40]	@ tmp127, s_eVdmDrvSleepState
.L28:
	add	r0, sp, #4	@ tmp131,,
	bl	OSAL_UnLockIRQ	@
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L34:
	.align	2
.L33:
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
	ldr	r3, .L39	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r3]	@ D.35659, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.35659,
	beq	.L36	@,
	blx	r3	@ D.35659
.L37:
	ldr	r3, .L39+4	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r0, r3, r4, lsl #2	@ tmp114, tmp113, VdhId,
	str	r2, [r0, #40]	@ tmp116, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
.L36:
	bl	vfmw_dprint_nothing	@
	b	.L37	@
.L40:
	.align	2
.L39:
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
	ldr	r3, .L45	@ tmp113,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ StateAfterRepair, StateAfterRepair
	ldr	r3, [r3, #64]	@ D.35662, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	mov	r4, r1	@ VdhId, VdhId
	cmp	r3, #0	@ D.35662,
	beq	.L42	@,
	mov	r0, r1	@, VdhId
	blx	r3	@ D.35662
.L43:
	mov	r3, r4, asl #5	@ tmp117, VdhId,
	ldr	r2, .L45+4	@ tmp114,
	add	r1, r3, r4, lsl #3	@ tmp118, tmp117, VdhId,
	str	r5, [r2, r1]	@ StateAfterRepair, g_VdmDrvParam[VdhId_4(D)].VdmStateMachine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L42:
	bl	vfmw_dprint_nothing	@
	b	.L43	@
.L46:
	.align	2
.L45:
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
	ldr	r3, .L51	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ VdhId, VdhId
	ldr	r3, [r3, #68]	@ D.35665, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	cmp	r3, #0	@ D.35665,
	beq	.L48	@,
	blx	r3	@ D.35665
.L49:
	mov	r3, r4, asl #5	@ tmp116, VdhId,
	ldr	r2, .L51+4	@ tmp113,
	add	r0, r3, r4, lsl #3	@ tmp117, tmp116, VdhId,
	mov	r3, #1	@ tmp119,
	str	r3, [r2, r0]	@ tmp119, g_VdmDrvParam[VdhId_4(D)].VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L48:
	bl	vfmw_dprint_nothing	@
	b	.L49	@
.L52:
	.align	2
.L51:
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
	ldr	r3, .L54	@ tmp116,
	add	r0, r3, r0, lsl #2	@ tmp118, tmp116, ChanID,
	ldr	r0, [r0, #52]	@ tmp121, g_ChanCtx.ChanDecByVdhPlusOne
	adds	r0, r0, #0	@, tmp121,
	movne	r0, #1	@,
	bx	lr	@
.L55:
	.align	2
.L54:
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
	ldr	r3, .L57	@ tmp113,
	add	r1, r1, #1	@ D.35673, VdhID,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp113, ChanID,
	str	r1, [r0, #52]	@ D.35673, g_ChanCtx.ChanDecByVdhPlusOne
	bx	lr	@
.L58:
	.align	2
.L57:
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
	add	r0, r0, #2	@ tmp112, ChanID,
	ldr	r3, .L60	@ tmp111,
	mov	r2, #0	@ tmp115,
	add	r0, r3, r0, lsl #2	@ tmp113, tmp111, tmp112,
	str	r2, [r0, #44]	@ tmp115, g_ChanCtx.ChanDecByVdhPlusOne
	bx	lr	@
.L61:
	.align	2
.L60:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_ClearChanIsDec, .-VDMDRV_ClearChanIsDec
	.align	2
	.global	VDMDRV_ActivateVDH
	.type	VDMDRV_ActivateVDH, %function
VDMDRV_ActivateVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0	@ VdhId, VdhId
	ldr	r6, .L95	@ tmp306,
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r0, .L95+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r5, [r6, #48]	@ D.35697, MEM[(HI_S32 *)&g_ChanCtx + 4B]
	cmp	r5, #0	@ D.35697,
	blt	.L63	@,
	mov	r8, r7, asl #3	@ tmp304, VdhId,
	mov	r9, r7, asl #5	@ tmp305, VdhId,
	add	r4, r8, r9	@ tmp149, tmp304, tmp305
	mov	r0, r5	@, D.35697
	add	r4, r6, r4	@ tmp150, tmp306, tmp149
	add	r10, r4, #8	@ tmp151, tmp150,
	str	r5, [r4, #8]	@ D.35697, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L66	@,
	add	r3, r6, r5, lsl #2	@ tmp154, tmp306, D.35697,
	ldr	r3, [r3, #52]	@ tmp156, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp156,
	bne	.L66	@,
	mov	r0, r5	@, D.35697
	str	r3, [r4, #16]	@ tmp156, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.35698,
	str	r0, [r4, #16]	@ D.35698, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	beq	.L66	@,
	ldr	r5, [r4, #8]	@ D.35697, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r0, r5	@, D.35697
	bl	VCTRL_GetVidStd	@
	ldr	r3, .L95+8	@ tmp303,
	ldr	r3, [r3]	@ D.35699, AcceleratorCharacter
	cmp	r3, #0	@ D.35699,
	mov	fp, r0	@ D.35696,
	str	r0, [r10, #4]	@ D.35696, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	beq	.L78	@,
	ldr	r2, [r4, #16]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	add	r0, sp, #4	@,,
	stmib	sp, {r5, fp}	@,,
	str	r2, [sp, #12]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, DecparamInfo.pDecParam
	blx	r3	@ D.35699
	cmp	r0, #1	@,
	beq	.L63	@,
	ldr	fp, [r10, #4]	@ D.35696, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
.L78:
	add	r4, r8, r9	@ tmp192, tmp304, tmp305
	ldr	r10, .L95	@ tmp188,
	add	r4, r6, r4	@ tmp193, tmp306, tmp192
	ldr	r0, [r4, #16]	@ D.35698, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	cmp	r0, #0	@ D.35698,
	beq	.L93	@,
	cmp	fp, #2	@ D.35696,
	bne	.L70	@,
	ldrb	r3, [r0, #158]	@ zero_extendqisi2	@ MEM[(struct MP4_DEC_PARAM_S *)_31].IsNvopCopy, MEM[(struct MP4_DEC_PARAM_S *)_31].IsNvopCopy
	cmp	r3, #1	@ MEM[(struct MP4_DEC_PARAM_S *)_31].IsNvopCopy,
	bne	.L70	@,
	mov	r1, r7	@, VdhId
	bl	PostPro_CopyYuv	@
	subs	r3, r0, #0	@ ret,
	bne	.L63	@,
	mov	r1, r7	@, VdhId
	mov	r0, fp	@, D.35696
	str	r3, [r4, #4]	@ ret, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ErrRatio
	add	r7, r7, #1	@ D.35697, VdhId,
	bl	VDMDRV_StartRepair	@
	add	r3, r10, r5, lsl #2	@ tmp205, tmp188, D.35697,
	mov	r0, #7	@,
	str	r7, [r3, #52]	@ D.35697, g_ChanCtx.ChanDecByVdhPlusOne
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L63	@,
	bl	OSAL_GetTimeInMs	@
	add	r5, r10, r5, lsl #2	@ tmp209, tmp188, D.35697,
	ldr	r2, .L95+12	@ tmp213,
	ldr	r3, [r5, #56]	@ tmp212, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.35701, tmp212, currtime
	cmp	r3, r2	@ D.35701, g_TraceFramePeriod
	strhi	r0, [r5, #56]	@ currtime, last_rec_pos_time
.L63:
	ldr	r0, .L95+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L66:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L95+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L93:
	bl	vfmw_dprint_nothing	@
.L70:
	ldr	r3, .L95+16	@ tmp218,
	ldr	ip, [r3, #72]	@ D.35702, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	ip, #0	@ D.35702,
	beq	.L76	@,
	add	r3, r8, r9	@ tmp248, tmp304, tmp305
	mov	r2, r7	@, VdhId
	add	r3, r6, r3	@ tmp249, tmp306, tmp248
	ldr	r4, .L95	@ tmp244,
	add	r10, r3, #16	@ tmp250, tmp249,
	ldr	r1, [r3, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	ldr	r0, [r3, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	blx	ip	@ D.35702
	cmp	r0, #0	@,
	beq	.L94	@,
.L76:
	add	r8, r8, r9	@ tmp223, tmp304, tmp305
	bl	vfmw_dprint_nothing	@
	add	r7, r6, r8	@ tmp224, tmp306, tmp223
	mov	r0, r5	@, D.35697
	add	r5, r5, #2	@ tmp240, D.35697,
	mov	r3, #100	@ tmp232,
	mov	r4, #0	@ tmp225,
	mov	r1, r3	@, tmp232
	mov	r2, r4	@, tmp225
	str	r4, [r6, r8]	@ tmp225, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	str	r3, [r7, #4]	@ tmp232, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ErrRatio
	add	r6, r6, r5, lsl #2	@ tmp241, tmp306, tmp240,
	bl	VCTRL_VdmPostProc	@
	mov	r0, r7	@, tmp224
	mov	r1, #40	@,
	bl	__memzero	@
	str	r4, [r6, #44]	@ tmp225, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L63	@
.L94:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L95+20	@ tmp267,
	mov	r3, r7, asl #6	@ tmp270, VdhId,
	sub	r3, r3, r7, asl #4	@ tmp271, tmp270, VdhId,
	add	r3, r2, r3	@ tmp272, tmp267, tmp271
	mov	r1, r0	@ D.35701,
	mov	r0, r7	@, VdhId
	str	r1, [r3, #4]	@ D.35701, g_VfmwGlobalStat[VdhId_5(D)].u32VdhLastStartTimeInMs
	add	r7, r7, #1	@ D.35697, VdhId,
	str	r1, [r10, #4]	@ D.35701, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	bl	VDMDRV_StartDec	@
	add	r3, r4, r5, lsl #2	@ tmp275, tmp244, D.35697,
	mov	r0, #5	@,
	str	r7, [r3, #52]	@ D.35697, g_ChanCtx.ChanDecByVdhPlusOne
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L63	@,
	bl	OSAL_GetTimeInMs	@
	add	r4, r4, r5, lsl #2	@ tmp279, tmp244, D.35697,
	ldr	r2, .L95+12	@ tmp283,
	ldr	r3, [r4, #56]	@ tmp282, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.35701, tmp282, currtime
	cmp	r3, r2	@ D.35701, g_TraceFramePeriod
	strhi	r0, [r4, #56]	@ currtime, last_rec_pos_time
	b	.L63	@
.L96:
	.align	2
.L95:
	.word	.LANCHOR0
	.word	g_ActivateLock
	.word	AcceleratorCharacter
	.word	g_TraceFramePeriod
	.word	g_vdm_hal_fun_ptr
	.word	g_VfmwGlobalStat
	.fnend
	.size	VDMDRV_ActivateVDH, .-VDMDRV_ActivateVDH
	.align	2
	.global	VDMDRV_AfterDec
	.type	VDMDRV_AfterDec, %function
VDMDRV_AfterDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #148
	sub	sp, sp, #148	@,,
	mov	r6, r0	@ VdhId, VdhId
	mov	r1, #140	@,
	add	r0, sp, #4	@,,
	ldr	r5, .L138	@ tmp541,
	bl	__memzero	@
	mov	r1, #136	@,
	mov	r4, r6, asl #3	@ tmp539, VdhId,
	mov	r8, r6, asl #5	@ tmp540, VdhId,
	add	r0, sp, #8	@ tmp545,,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	add	r3, r4, r8	@ tmp171, tmp539, tmp540
	add	r7, r5, r3	@ tmp172, tmp541, tmp171
	ldr	r3, [r5, r3]	@ D.35724, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_2(D)].VdmStateMachine
	cmp	r3, #2	@ D.35724,
	beq	.L99	@,
	cmp	r3, #3	@ D.35724,
	beq	.L100	@,
	cmp	r3, #1	@ D.35724,
	beq	.L134	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r7, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r2, #0	@ tmp536,
	add	r3, r3, #2	@ tmp532, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r5, r5, r3, lsl #2	@ tmp534, tmp541, tmp532,
	str	r2, [r5, #44]	@ tmp536, g_ChanCtx.ChanDecByVdhPlusOne
.L97:
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L134:
	ldr	r3, [r7, #28]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	cmp	r3, #1	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut,
	beq	.L135	@,
	mov	r2, r6	@, VdhId
	ldr	r1, [r7, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	ldr	r0, [r7, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	bl	PostPro_GetErrRatio	@
	str	r0, [r7, #4]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r7, #12]	@ D.35734, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	sub	r3, r0, #8	@ D.35728, D.35734,
	cmp	r0, #5	@ D.35734,
	cmpne	r3, #1	@, D.35728,
	movls	r2, #0	@ tmp256,
	strls	r2, [r7, #4]	@ tmp256, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bls	.L106	@,
	ldr	r3, [r7, #4]	@ D.35725, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r3, #0	@ D.35725,
	beq	.L107	@,
	ldr	r2, .L138+4	@ tmp264,
	ldr	ip, [r2]	@ D.35730, g_event_report
	cmp	ip, #0	@ D.35730,
	beq	.L108	@,
	add	r2, sp, #144	@ tmp265,,
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r1, #114	@,
	str	r3, [r2, #-144]!	@ D.35725, para
	blx	ip	@ D.35730
.L103:
	ldr	r3, [sp, #4]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r3, #1	@ VdmInfoExt.ModuleLowlyEnable,
	beq	.L106	@,
	add	r3, r4, r8	@ tmp279, tmp539, tmp540
	add	r3, r5, r3	@ tmp280, tmp541, tmp279
	ldr	r2, [r3, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r2, #0	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	bne	.L111	@,
.L106:
	mov	r3, #0	@ D.35725,
.L110:
	add	r4, r4, r8	@ tmp308, tmp539, tmp540
	add	r2, sp, #8	@ tmp546,,
	add	r4, r5, r4	@ tmp309, tmp541, tmp308
	mov	r1, r3	@, D.35725
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	str	r3, [r4, #4]	@ D.35725, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
.L133:
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r4	@, tmp421
	mov	r1, #40	@,
	add	r3, r3, #2	@ tmp455, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	mov	r2, #0	@ tmp459,
	add	r5, r5, r3, lsl #2	@ tmp457, tmp541, tmp455,
	str	r2, [r5, #44]	@ tmp459, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L100:
	ldr	r1, [r7, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	add	r2, sp, #8	@ tmp549,,
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r4, #0	@ tmp473,
	cmp	r1, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	str	r4, [r7, #28]	@ tmp473, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	movge	r1, #100	@ D.35725,
	bic	r1, r1, r1, asr #31	@ D.35725, D.35725
	str	r1, [r7, #4]	@ D.35725, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r7, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r7	@, tmp172
	mov	r1, #40	@,
	add	r3, r3, #2	@ tmp513, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r5, r5, r3, lsl #2	@ tmp515, tmp541, tmp513,
	str	r4, [r5, #44]	@ tmp473, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #148	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L99:
	ldr	r2, [r7, #16]	@ D.35727, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	mov	r9, #0	@ tmp354,
	ldr	r1, [r7, #12]	@ D.35726, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	cmp	r2, r9	@ D.35727,
	str	r9, [r7, #28]	@ tmp354, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	beq	.L136	@,
	cmp	r1, #2	@ D.35726,
	bne	.L114	@,
	ldrb	r3, [r2, #158]	@ zero_extendqisi2	@ MEM[(struct MP4_DEC_PARAM_S *)_43].IsNvopCopy, MEM[(struct MP4_DEC_PARAM_S *)_43].IsNvopCopy
	cmp	r3, #1	@ MEM[(struct MP4_DEC_PARAM_S *)_43].IsNvopCopy,
	beq	.L137	@,
.L114:
	add	r4, r4, r8	@ tmp420, tmp539, tmp540
	add	r2, sp, #8	@ tmp548,,
	add	r4, r5, r4	@ tmp421, tmp541, tmp420
	ldr	r1, [r4, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	cmp	r1, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	movge	r1, #100	@ D.35725,
	bic	r1, r1, r1, asr #31	@ D.35725, D.35725
	str	r1, [r4, #4]	@ D.35725, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	b	.L133	@
.L135:
	mov	r2, r6	@, VdhId
	ldr	r1, [r7, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	ldr	r0, [r7, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	bl	PostPro_SetFullRepair	@
	mov	r2, #100	@ tmp204,
	mov	r3, #0	@ tmp212,
	str	r2, [r7, #4]	@ tmp204, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	str	r3, [r7, #28]	@ tmp212, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	bl	vfmw_dprint_nothing	@
	b	.L103	@
.L137:
	add	r2, sp, #8	@ tmp547,,
	mov	r1, r9	@, tmp354
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	str	r9, [r7, #4]	@ tmp354, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r7, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r7	@, tmp172
	mov	r1, #40	@,
	add	r3, r3, #2	@ tmp405, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r5, r5, r3, lsl #2	@ tmp407, tmp541, tmp405,
	str	r9, [r5, #44]	@ tmp354, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r6	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L97	@
.L111:
	ldr	r0, [r3, #12]	@ D.35734, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
.L117:
	add	r7, r4, r8	@ tmp293, tmp539, tmp540
	add	r7, r5, r7	@ tmp294, tmp541, tmp293
	ldr	r1, [r7, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L97	@,
	ldr	r3, [r7, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r3, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	movge	r3, #100	@ D.35725,
	bic	r3, r3, r3, asr #31	@ D.35725, D.35725
	b	.L110	@
.L108:
	ldr	r3, [sp, #4]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r3, #1	@ VdmInfoExt.ModuleLowlyEnable,
	bne	.L117	@,
	b	.L106	@
.L136:
	bl	vfmw_dprint_nothing	@
	b	.L114	@
.L107:
	ldr	r2, [sp, #4]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r2, #1	@ VdmInfoExt.ModuleLowlyEnable,
	bne	.L110	@,
	b	.L106	@
.L139:
	.align	2
.L138:
	.word	.LANCHOR0
	.word	g_event_report
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
	ldr	r4, .L175	@ tmp298,
	add	r8, r5, r7	@ tmp138, tmp299, tmp300
	mov	r6, r0	@ VdhId, VdhId
	add	r9, r4, r8	@ tmp139, tmp298, tmp138
	ldr	r0, [r9, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L172	@,
.L141:
	add	r3, r5, r7	@ tmp189, tmp299, tmp300
	add	r8, r4, r3	@ tmp190, tmp298, tmp189
	ldr	r3, [r4, r3]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r3, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	bne	.L173	@,
.L142:
	add	r4, r4, r6, lsl #2	@ tmp291, tmp298, VdhId,
	ldr	r0, [r4, #40]	@ D.35754, s_eVdmDrvSleepState
	cmp	r0, #0	@ D.35754,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r0, #1	@ D.35754,
	beq	.L174	@,
.L146:
	mov	r0, #1	@ D.35747,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L173:
	bl	OSAL_GetTimeInMs	@
	add	r1, r8, #16	@ tmp205, tmp190,
	ldr	r3, [r1, #4]	@ D.35753, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	str	r0, [r8, #24]	@ D.35753, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].CurrTime
	cmp	r0, r3	@ D.35753, D.35753
	bcc	.L144	@,
	clz	r2, r3	@ tmp209, D.35753
	rsb	r3, r3, r0	@ TimeElapse, D.35753, D.35753
	mov	r2, r2, lsr #5	@ tmp209, tmp209,
	orrs	r9, r2, r3, lsr #31	@, tmp213, tmp209, TimeElapse,
	bne	.L144	@,
	cmp	r3, #500	@ TimeElapse,
	bls	.L146	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L175+4	@ tmp228,
	ldr	r3, [r3]	@ D.35755, g_event_report
	cmp	r3, #0	@ D.35755,
	beq	.L149	@,
	mov	r2, r9	@, tmp213
	ldr	r0, [r8, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r1, #101	@,
	blx	r3	@ D.35755
.L149:
	ldr	r3, .L175+8	@ tmp237,
	ldr	r3, [r3, #40]	@ D.35756, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35756,
	beq	.L150	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.35756
.L151:
	add	r3, r5, r7	@ tmp242, tmp299, tmp300
	mov	r5, #1	@ tmp245,
	add	r4, r4, r3	@ tmp243, tmp298, tmp242
	ldr	r2, .L175	@ tmp238,
	add	lr, r4, #32	@ tmp252, tmp243,
	add	ip, r4, #24	@ tmp244, tmp243,
	ldr	r1, [r4, #36]	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	str	r5, [r4, #28]	@ tmp245, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].VdmTimeOut
	cmp	r1, r5	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag,
	bne	.L152	@,
	ldr	r4, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r1, #0	@ tmp261,
	str	r1, [lr, #4]	@ tmp261, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	mov	r0, r1	@ D.35747, tmp261
	add	lr, r4, #2	@ tmp285, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	str	r1, [r2, r3]	@ tmp261, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	str	r1, [ip, #4]	@ tmp261, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].VdmTimeOut
	add	r2, r2, lr, lsl #2	@ tmp287, tmp238, tmp285,
	str	r1, [r2, #44]	@ tmp261, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L144:
	str	r0, [r1, #4]	@ D.35753, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	mov	r0, #1	@ D.35747,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L174:
	mov	r3, #2	@ tmp296,
	str	r3, [r4, #40]	@ tmp296, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L172:
	ldr	r3, [r4, r8]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r3, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	beq	.L142	@,
	ldr	r3, .L175+8	@ tmp149,
	ldr	r3, [r3, #80]	@ D.35752, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.35752,
	beq	.L143	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.35752
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp157,
	strne	r3, [r9, #36]	@ tmp157, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	bne	.L141	@,
.L143:
	add	r8, r5, r7	@ tmp162, tmp299, tmp300
	mov	r9, #0	@ tmp165,
	add	r8, r4, r8	@ tmp163, tmp298, tmp162
	mov	r1, #40	@,
	mov	r0, r8	@, tmp163
	str	r9, [r8, #36]	@ tmp165, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	bl	__memzero	@
	ldr	r3, [r8, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	add	r3, r3, #2	@ tmp180, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	add	r3, r4, r3, lsl #2	@ tmp182, tmp298, tmp180,
	str	r9, [r3, #44]	@ tmp165, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L141	@
.L152:
	mov	r0, r6	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r5	@ D.35747, tmp245
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L150:
	bl	vfmw_dprint_nothing	@
	b	.L151	@
.L176:
	.align	2
.L175:
	.word	.LANCHOR0
	.word	g_event_report
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VDMDRV_CheckDevice, .-VDMDRV_CheckDevice
	.align	2
	.global	VDMDRV_GetMb0QpInCurrPic
	.type	VDMDRV_GetMb0QpInCurrPic, %function
VDMDRV_GetMb0QpInCurrPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L178	@ tmp116,
	mov	r3, #180	@ tmp118,
	mla	r0, r3, r0, r2	@ tmp119, tmp118, VdhId, tmp116
	ldr	r0, [r0, #68]	@ g_BackUp[VdhId_2(D)].Mb0QpInCurrPic, g_BackUp[VdhId_2(D)].Mb0QpInCurrPic
	and	r0, r0, #31	@, g_BackUp[VdhId_2(D)].Mb0QpInCurrPic,
	bx	lr	@
.L179:
	.align	2
.L178:
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
	ldr	r2, .L181	@ tmp116,
	mov	r3, #180	@ tmp118,
	mla	r0, r3, r0, r2	@ tmp119, tmp118, VdhId, tmp116
	ldr	r0, [r0, #72]	@ g_BackUp[VdhId_2(D)].SwitchRounding, g_BackUp[VdhId_2(D)].SwitchRounding
	and	r0, r0, #1	@, g_BackUp[VdhId_2(D)].SwitchRounding,
	bx	lr	@
.L182:
	.align	2
.L181:
	.word	.LANCHOR0
	.fnend
	.size	VDMDRV_GetSwitchRounding, .-VDMDRV_GetSwitchRounding
	.global	__aeabi_uidiv
	.align	2
	.global	VDMDRV_IsrProcess
	.type	VDMDRV_IsrProcess, %function
VDMDRV_IsrProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ VdhId
	ble	.L184	@,
	b	vfmw_dprint_nothing	@
.L184:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ VdhId, VdhId
	ldr	r5, .L222	@ tmp384,
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r0, .L222+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #60]	@ D.35784, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.35784,
	beq	.L186	@,
	mov	r1, r4	@, VdhId
	mov	r0, #2	@,
	blx	r3	@ D.35784
	tst	r0, #1	@,
	beq	.L186	@,
	ldr	r3, [r5, #92]	@ D.35781, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	cmp	r3, #0	@ D.35781,
	beq	.L187	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35781
.L188:
	ldr	r3, [r5, #48]	@ D.35782, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.35782,
	beq	.L189	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.35782
.L190:
	mov	r8, r4, asl #3	@ tmp385, VdhId,
	mov	r6, r4, asl #5	@ tmp387, VdhId,
	ldr	r7, .L222+8	@ tmp382,
	add	r3, r8, r6	@ tmp169, tmp385, tmp387
	mov	r0, #6	@,
	add	r3, r7, r3	@ tmp170, tmp382, tmp169
	ldr	r5, [r3, #8]	@ D.35783, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L192	@,
	bl	OSAL_GetTimeInMs	@
	add	r2, r7, #240	@ tmp173, tmp382,
	ldr	r1, .L222+12	@ tmp177,
	ldr	r3, [r2, r5, asl #2]	@ *_42, *_42
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.35785, *_42, CurTime
	cmp	r3, r1	@ D.35785, g_TraceFramePeriod
	strhi	r0, [r2, r5, asl #2]	@ CurTime, *_42
.L192:
	bl	OSAL_GetTimeInMs	@
	mov	r9, r4, asl #6	@ tmp381, VdhId,
	mov	r1, r4, asl #4	@ tmp386, VdhId,
	ldr	r5, .L222+16	@ tmp383,
	rsb	r2, r1, r9	@ tmp183, tmp386, tmp381
	add	lr, r5, r2	@ tmp184, tmp383, tmp183
	ldr	r3, [lr, #4]	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLastStartTimeInMs
	cmp	r3, #0	@ D.35785,
	beq	.L195	@,
	ldr	r10, [r5, r2]	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	rsb	r9, r1, r9	@ tmp217, tmp386, tmp381
	add	ip, r10, #499712	@ D.35785, D.35785,
	add	ip, ip, #288	@ D.35785, D.35785,
	cmp	r3, ip	@ D.35785, D.35785
	strhi	r3, [r5, r2]	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	add	r5, r5, r9	@ tmp218, tmp383, tmp217
	ldrls	fp, [lr, #8]	@ D.35789, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhWorkTimeInMs
	mov	lr, #180	@ tmp229,
	mla	lr, lr, r4, r7	@ tmp230, tmp229, VdhId, tmp382
	ldr	ip, [r5, #32]	@ MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	movhi	r10, r3	@ D.35785, D.35785
	rsb	r10, r10, r0	@ Period, D.35785, CurTime
	rsb	r0, r3, r0	@ D.35785, D.35785, CurTime
	movhi	fp, #0	@ D.35789,
	add	ip, ip, #1	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum,
	add	r0, r0, fp	@ D.35785, D.35785, D.35789
	str	ip, [r5, #32]	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	cmp	r10, #1000	@ Period,
	ldr	fp, [lr, #84]	@ g_BackUp[VdhId_5(D)].DecCyclePerPic, g_BackUp[VdhId_5(D)].DecCyclePerPic
	add	r3, r5, #8	@ tmp219, tmp218,
	ldr	ip, .L222+16	@ tmp213,
	add	r2, r5, #32	@ tmp240, tmp218,
	ldr	r1, [r5, #36]	@ MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	str	r3, [sp]	@ tmp219, %sfp
	mov	r3, #0	@ tmp226,
	add	fp, r1, fp, lsr #10	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle, g_BackUp[VdhId_5(D)].DecCyclePerPic,
	str	r0, [r5, #8]	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhWorkTimeInMs
	str	r3, [r5, #4]	@ tmp226, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLastStartTimeInMs
	str	r3, [sp, #12]	@ tmp226, %sfp
	str	fp, [r5, #36]	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	str	r2, [sp, #8]	@ tmp240, %sfp
	str	ip, [sp, #4]	@ tmp213, %sfp
	bcc	.L195	@,
	mov	lr, #1000	@ tmp273,
	mov	r1, r10	@, Period
	mul	r0, lr, r0	@, tmp273, D.35785
	bl	__aeabi_uidiv	@
	str	fp, [r5, #40]	@ D.35785, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhKiloCyclePerSecond
	str	r10, [r5, #44]	@ Period, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32Period
	ldr	r3, [sp, #12]	@ tmp226, %sfp
	ldr	ip, [sp, #4]	@ tmp213, %sfp
	ldr	r2, [sp, #8]	@ tmp240, %sfp
	str	r3, [r5, #32]	@ tmp226, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	str	r3, [ip, r9]	@ tmp226, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	str	r3, [r2, #4]	@ tmp226, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	ldr	r3, [sp]	@ tmp219, %sfp
	str	r0, [r3, #4]	@, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLoad
.L195:
	add	r2, r8, r6	@ tmp318, tmp385, tmp387
	ldr	ip, .L222+8	@ tmp314,
	add	r3, r7, r2	@ tmp319, tmp382, tmp318
	add	r1, r3, #32	@ tmp327, tmp319,
	ldr	r0, [r3, #36]	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	ldr	r5, [r3, #8]	@ ChanId, g_VdmDrvParam[VdhId_5(D)].ChanId
	cmp	r0, #1	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag,
	moveq	r3, #0	@ tmp336,
	streq	r3, [r1, #4]	@ tmp336, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	beq	.L200	@,
	ldr	r2, [ip, r2]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r2, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	beq	.L201	@,
	ldr	r9, [r3, #16]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	cmp	r9, #0	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam,
	beq	.L221	@,
.L201:
	mov	r0, r5	@, ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L203	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L203	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L205:
	add	r6, r8, r6	@ tmp356, tmp385, tmp387
	add	r7, r7, r6	@ tmp357, tmp382, tmp356
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_InformVdmFree	@
	ldr	r0, .L222+4	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L203:
	bl	vfmw_dprint_nothing	@
.L200:
	add	r3, r8, r6	@ tmp366, tmp385, tmp387
	mov	r2, #0	@ tmp373,
	add	r1, r7, r3	@ tmp367, tmp382, tmp366
	str	r2, [r7, r3]	@ tmp373, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	ldr	r3, [r1, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	add	r3, r3, #2	@ tmp369, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	add	r3, r7, r3, lsl #2	@ tmp371, tmp382, tmp369,
	str	r2, [r3, #44]	@ tmp373, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L205	@
.L186:
	mov	r0, r4, asl #5	@ tmp157, VdhId,
	ldr	r3, .L222+8	@ tmp154,
	add	r4, r0, r4, lsl #3	@ tmp158, tmp157, VdhId,
	mov	r2, #0	@ tmp160,
	ldr	r0, .L222+4	@,
	str	r2, [r3, r4]	@ tmp160, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L221:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L200	@,
	mov	r2, r9	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	mov	r0, r5	@, ChanId
	mov	r1, #100	@,
	bl	VCTRL_VdmPostProc	@
	b	.L200	@
.L187:
	bl	vfmw_dprint_nothing	@
	b	.L188	@
.L189:
	bl	vfmw_dprint_nothing	@
	b	.L190	@
.L223:
	.align	2
.L222:
	.word	g_vdm_hal_fun_ptr
	.word	g_TaskLock
	.word	.LANCHOR0
	.word	g_TraceFramePeriod
	.word	g_VfmwGlobalStat
	.fnend
	.size	VDMDRV_IsrProcess, .-VDMDRV_IsrProcess
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
	.align	2
	.global	VDMDRV_AvsFirstFldNeedRepair
	.type	VDMDRV_AvsFirstFldNeedRepair, %function
VDMDRV_AvsFirstFldNeedRepair:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0	@,
	bx	lr	@
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
	mov	r0, #0	@,
	bx	lr	@
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
	beq	.L237	@,
	cmp	r0, #2	@ VidStd,
	ldreqb	r0, [r1, #158]	@ zero_extendqisi2	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy
	subeq	r0, r0, #1	@ D.35802, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy,
	clzeq	r0, r0	@ D.35802, D.35802
	moveq	r0, r0, lsr #5	@ D.35802, D.35802,
	movne	r0, #0	@ D.35802,
	bx	lr	@
.L237:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pDecParam, pDecParam
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@ D.35802, pDecParam
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VDMDRV_IsCopy, .-VDMDRV_IsCopy
	.align	2
	.global	VDMDRV_ResetVDH
	.type	VDMDRV_ResetVDH, %function
VDMDRV_ResetVDH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, .L243	@ tmp118,
	ldr	r3, [r4, #8]	@ g_VdmDrvParam[0].ChanId, g_VdmDrvParam[0].ChanId
	cmp	r3, r0	@ g_VdmDrvParam[0].ChanId, ChanID
	ldmnefd	sp!, {r4, pc}	@
	ldr	r3, .L243+4	@ tmp115,
	ldr	r3, [r3, #40]	@ D.35807, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.35807,
	beq	.L240	@,
	mov	r0, #0	@,
	blx	r3	@ D.35807
.L241:
	mov	r3, #0	@ tmp117,
	str	r3, [r4]	@ tmp117, g_VdmDrvParam[0].VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L240:
	bl	vfmw_dprint_nothing	@
	b	.L241	@
.L244:
	.align	2
.L243:
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
	.size	g_ChanCtx, 12
g_ChanCtx:
	.space	12
	.type	last_rec_pos_time.34908, %object
	.size	last_rec_pos_time.34908, 4
last_rec_pos_time.34908:
	.space	4
	.type	g_BackUp, %object
	.size	g_BackUp, 180
g_BackUp:
	.space	180
	.type	last_rec_pos_time.35027, %object
	.size	last_rec_pos_time.35027, 4
last_rec_pos_time.35027:
	.space	4
	.type	g_DecReport, %object
	.size	g_DecReport, 528
g_DecReport:
	.space	528
	.type	g_RepairParam, %object
	.size	g_RepairParam, 1144
g_RepairParam:
	.space	1144
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
