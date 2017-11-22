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
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiSCDV300
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R001
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R002
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R003
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/model/rawpacket
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310/osal/linux_kernel
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/product/Hi3716MV330_hisiv310
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiBTLV100
@ -I /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/../../../source/msp/drv/vfmw/vfmw_v4.0/firmware/common_test/vdecko
@ -imultilib a9_soft
@ -iprefix /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/
@ -isysroot /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../target
@ -D __KERNEL__ -D __LINUX_ARM_ARCH__=7 -U arm -D CC_HAVE_ASM_GOTO
@ -D Hi3716MV330 -D ENV_ARMLINUX_KERNEL -D OFF_LINE_DNR_ENABLE
@ -D SCD_MP4_SLICE_ENABLE -D SUPPORT_JPEG_444 -D VFMW_EXTRA_TYPE_DEFINE
@ -D PRODUCT_STB -D __VFMW_REGISTER_ISR__ -D VFMW_VDH_V200R004_SUPPORT
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_MPEG4_SUPPORT
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_VP6_SUPPORT -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4
@ -D CFG_MAX_CHAN_NUM=4 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv330 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=1 -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1
@ -D HI_PNG_DECODER_SUPPORT -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT
@ -D HI_SCI_SUPPORT -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT
@ -D HI_DSC_SUPPORT -D MODULE -D KBUILD_STR(s)=#s
@ -D KBUILD_BASENAME=KBUILD_STR(vdm_drv)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vdm_drv.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vdm_drv.o
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
	ldr	r3, [r3]	@ D.32890, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.32890,
	beq	.L2	@,
	blx	r3	@ D.32890
.L3:
	ldr	r4, .L6+4	@ tmp115,
	mov	r0, r5, asl #5	@ tmp118, VdhId,
	add	r0, r0, r5, lsl #3	@ tmp119, tmp118, VdhId,
	mov	r1, #40	@,
	add	r0, r4, r0	@, tmp115, tmp119
	add	r4, r4, r5, lsl #2	@ tmp122, tmp115, VdhId,
	bl	__memzero	@
	mov	r3, #0	@ tmp124,
	str	r3, [r4, #40]	@ tmp124, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L2:
	mov	r0, r3	@, D.32890
	mov	r2, #95	@,
	ldr	r1, .L6+8	@,
	bl	dprint_vfmw	@
	b	.L3	@
.L7:
	.align	2
.L6:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC0
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
	mov	lr, #0	@ D.32938,
	mov	r2, #4	@ D.32938,
	mov	r3, lr	@ i, D.32938
.L28:
	ldr	r0, .L38+4	@ tmp163,
	add	r7, r0, r2	@ D.32939, tmp163, D.32938
	ldr	ip, [r0, r2]	@ D.32940, *_53
	cmp	ip, #0	@ D.32940,
	ldmltfd	sp!, {r4, r5, r6, r7, pc}	@
	add	r2, r3, #2	@ D.32938, i,
	mov	r2, r2, asl #2	@ ivtmp.101, D.32938,
	b	.L30	@
.L32:
	ldr	ip, [r0, r2]	@ D.32940, *_17
	add	r2, r2, #4	@ ivtmp.101, ivtmp.101,
	cmp	ip, #0	@ D.32940,
	ldmltfd	sp!, {r4, r5, r6, r7, pc}	@
.L30:
	ldr	r4, [r0, lr, asl #2]	@ D.32940, *_24
	add	r1, r5, ip, lsl #2	@ tmp155, tmp164, D.32940,
	add	r3, r3, #1	@ i, i,
	ldr	r6, [r1, #44]	@ *_21, *_21
	add	r1, r5, r4, lsl #2	@ tmp158, tmp164, D.32940,
	ldr	r1, [r1, #44]	@ *_28, *_28
	cmp	r6, r1	@ *_21, *_28
	strge	ip, [r0, lr, asl #2]	@ D.32940, *_24
	strge	r4, [r7]	@ D.32940, *_41
	cmp	r3, #2	@ i,
	add	r7, r0, r2	@ D.32939, tmp163, ivtmp.101
	mov	lr, r3	@ D.32938, i
	ble	.L32	@,
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L33:
	mov	r3, #0	@ i,
.L27:
	add	r2, r3, #1	@ D.32938, i,
	mov	lr, r3	@ D.32938, i
	mov	r2, r2, asl #2	@ D.32938, D.32938,
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
	add	r0, sp, #4	@ tmp131,,
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
	add	r0, sp, #4	@ tmp132,,
	bl	OSAL_UnLockIRQ	@
	ldr	r1, .L56+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L57:
	.align	2
.L56:
	.word	.LANCHOR0
	.word	.LC1
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
	ldr	r3, [r3]	@ D.32955, g_vdm_hal_fun_ptr.pfun_VDMDRV_OpenHardware
	cmp	r3, #0	@ D.32955,
	beq	.L59	@,
	blx	r3	@ D.32955
.L60:
	ldr	r3, .L62+4	@ tmp114,
	mov	r2, #0	@ tmp117,
	add	r0, r3, r4, lsl #2	@ tmp115, tmp114, VdhId,
	str	r2, [r0, #40]	@ tmp117, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, pc}	@
.L59:
	mov	r0, r3	@, D.32955
	mov	r2, #242	@,
	ldr	r1, .L62+8	@,
	bl	dprint_vfmw	@
	b	.L60	@
.L63:
	.align	2
.L62:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC0
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
	ldr	r3, [r3, #64]	@ D.32958, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwRepair
	mov	r4, r1	@ VdhId, VdhId
	cmp	r3, #0	@ D.32958,
	beq	.L65	@,
	mov	r0, r1	@, VdhId
	blx	r3	@ D.32958
.L66:
	mov	r3, r4, asl #5	@ tmp118, VdhId,
	ldr	r2, .L68+4	@ tmp115,
	add	r1, r3, r4, lsl #3	@ tmp119, tmp118, VdhId,
	str	r5, [r2, r1]	@ StateAfterRepair, g_VdmDrvParam[VdhId_4(D)].VdmStateMachine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L65:
	mov	r0, r3	@, D.32958
	mov	r2, #250	@,
	ldr	r1, .L68+8	@,
	bl	dprint_vfmw	@
	b	.L66	@
.L69:
	.align	2
.L68:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC0
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
	ldr	r3, [r3, #68]	@ D.32961, g_vdm_hal_fun_ptr.pfun_VDMHAL_StartHwDecode
	cmp	r3, #0	@ D.32961,
	beq	.L71	@,
	blx	r3	@ D.32961
.L72:
	mov	r3, r4, asl #5	@ tmp117, VdhId,
	ldr	r2, .L74+4	@ tmp114,
	add	r0, r3, r4, lsl #3	@ tmp118, tmp117, VdhId,
	mov	r3, #1	@ tmp120,
	str	r3, [r2, r0]	@ tmp120, g_VdmDrvParam[VdhId_4(D)].VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L71:
	mov	r0, r3	@, D.32961
	movw	r2, #258	@,
	ldr	r1, .L74+8	@,
	bl	dprint_vfmw	@
	b	.L72	@
.L75:
	.align	2
.L74:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.word	.LC0
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
	add	r1, r1, #1	@ D.32969, VdhID,
	add	r3, r3, r0, lsl #2	@ tmp115, tmp113, ChanID,
	str	r1, [r3, #76]	@ D.32969, g_ChanCtx.ChanDecByVdhPlusOne
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
	mov	r0, #0	@ D.32984,
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
	movgt	r0, #1	@ D.32984,
	movle	r0, #0	@ D.32984,
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
	mov	r0, #0	@ D.32990,
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
	movgt	r0, #1	@ D.32990,
	movle	r0, #0	@ D.32990,
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
	sub	r0, r0, #1	@ tmp121, VidStd,
	cmp	r0, #11	@ tmp121,
	ldrls	pc, [pc, r0, asl #2]	@ tmp121
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
	sub	r0, r0, #1	@ D.33002, MEM[(struct VP6_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy,
	clz	r0, r0	@ D.33002, D.33002
	mov	r0, r0, lsr #5	@ D.33002, D.33002,
	bx	lr	@
.L110:
	ldrb	r0, [r1, #158]	@ zero_extendqisi2	@ MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy
	sub	r0, r0, #1	@ D.33002, MEM[(struct MP4_DEC_PARAM_S *)pDecParam_3(D)].IsNvopCopy,
	clz	r0, r0	@ D.33002, D.33002
	mov	r0, r0, lsr #5	@ D.33002, D.33002,
	bx	lr	@
.L112:
	mov	r0, #0	@ D.33002,
	bx	lr	@
.L115:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r1	@ pDecParam, pDecParam
	mov	r0, r4	@, pDecParam
	ldr	r1, .L116	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@ D.33002, pDecParam
	ldmfd	sp!, {r4, pc}	@
.L117:
	.align	2
.L116:
	.word	.LC2
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
	ldr	r5, .L154	@ tmp353,
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r0, .L154+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r7, [r5, #60]	@ D.33044, MEM[(HI_S32 *)&g_ChanCtx + 16B]
	cmp	r7, #0	@ D.33044,
	blt	.L121	@,
	mov	r3, r8, asl #3	@ tmp354, VdhId,
	mov	r10, r8, asl #5	@ tmp355, VdhId,
	add	r4, r3, r10	@ tmp359, tmp354, tmp355
	add	r6, r5, #60	@ ivtmp.140, tmp353,
	add	r4, r5, r4	@ tmp360, tmp353, tmp359
	mov	fp, r5	@ tmp358, tmp353
	str	r3, [sp, #4]	@ tmp354, %sfp
.L120:
	mov	r0, r7	@, D.33044
	str	r7, [r4, #8]	@ D.33044, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_IsChanActive	@
	add	r9, r4, #8	@ tmp162, tmp360,
	add	r3, fp, r7, lsl #2	@ tmp167, tmp358, D.33044,
	cmp	r0, #0	@,
	mov	r0, r7	@, D.33044
	bne	.L149	@,
	ldr	r3, [r3, #76]	@ tmp169, g_ChanCtx.ChanDecByVdhPlusOne
	cmp	r3, #0	@ tmp169,
	bne	.L150	@,
	str	r3, [r4, #16]	@ tmp169, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@ D.33045,
	str	r0, [r4, #16]	@ D.33045, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	beq	.L151	@,
	ldr	r7, [r4, #8]	@ D.33044, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r0, r7	@, D.33044
	bl	VCTRL_GetVidStd	@
	ldr	r2, .L154+8	@ tmp352,
	ldr	r2, [r2]	@ D.33047, AcceleratorCharacter
	cmp	r2, #0	@ D.33047,
	mov	r3, r0	@ D.33043,
	add	r0, sp, #12	@,,
	str	r3, [r9, #4]	@ D.33043, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	beq	.L138	@,
	ldr	r1, [r4, #16]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	str	r7, [sp, #12]	@ D.33044, DecparamInfo.ChanID
	str	r3, [sp, #16]	@ D.33043, DecparamInfo.VidStd
	str	r1, [sp, #20]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, DecparamInfo.pDecParam
	blx	r2	@ D.33047
	cmp	r0, #1	@,
	beq	.L123	@,
	ldr	r3, [r9, #4]	@ D.33043, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
.L138:
	ldr	r2, [sp, #4]	@ tmp354, %sfp
	mov	r0, r3	@, D.33043
	ldr	r6, .L154	@ tmp203,
	add	r4, r2, r10	@ tmp207, tmp354, tmp355
	add	r4, r5, r4	@ tmp208, tmp353, tmp207
	add	r9, r4, #16	@ tmp209, tmp208,
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	VDMDRV_IsCopy	@
	cmp	r0, #0	@,
	bne	.L152	@,
	ldr	r3, .L154+12	@ tmp266,
	ldr	r3, [r3, #72]	@ D.33050, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareDec
	cmp	r3, #0	@ D.33050,
	beq	.L136	@,
	mov	r2, r8	@, VdhId
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	ldr	r0, [r4, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	blx	r3	@ D.33050
	cmp	r0, #0	@,
	beq	.L153	@,
.L136:
	ldr	r1, .L154+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [sp, #4]	@ tmp354, %sfp
	mov	r0, r7	@, D.33044
	add	r7, r7, #8	@ tmp289, D.33044,
	add	r10, r3, r10	@ tmp272, tmp354, tmp355
	mov	r4, #0	@ tmp274,
	add	r6, r5, r10	@ tmp273, tmp353, tmp272
	mov	r3, #100	@ tmp281,
	mov	r1, r3	@, tmp281
	mov	r2, r4	@, tmp274
	str	r4, [r5, r10]	@ tmp274, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	add	r5, r5, r7, lsl #2	@ tmp290, tmp353, tmp289,
	str	r3, [r6, #4]	@ tmp281, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	mov	r0, r6	@, tmp273
	mov	r1, #40	@,
	bl	__memzero	@
	str	r4, [r5, #44]	@ tmp274, g_ChanCtx.ChanDecByVdhPlusOne
.L121:
	ldr	r0, .L154+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L149:
	mov	r3, r7	@, D.33044
	ldr	r2, .L154+20	@,
	ldr	r1, .L154+24	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
.L123:
	ldr	r3, .L154+28	@ tmp371,
	cmp	r6, r3	@ ivtmp.140, tmp371
	beq	.L121	@,
	ldr	r7, [r6, #4]!	@ D.33044, MEM[base: _117, offset: 0B]
	cmp	r7, #0	@ D.33044,
	bge	.L120	@,
	b	.L121	@
.L150:
	mov	r2, r7	@, D.33044
	ldr	r1, .L154+32	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L123	@
.L152:
	ldr	r3, [r4, #12]	@ MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd
	sub	r3, r3, #1	@ tmp219, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_5(D)].VidStd,
	cmp	r3, #11	@ tmp219,
	ldrls	pc, [pc, r3, asl #2]	@ tmp219
	b	.L121	@
.L130:
	.word	.L129
	.word	.L131
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L121
	.word	.L132
	.word	.L132
	.word	.L132
.L151:
	mov	r2, r7	@, D.33044
	ldr	r1, .L154+36	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L123	@
.L153:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L154+40	@ tmp316,
	mov	r3, r8, asl #6	@ tmp319, VdhId,
	sub	r3, r3, r8, asl #4	@ tmp320, tmp319, VdhId,
	add	r3, r2, r3	@ tmp321, tmp316, tmp320
	mov	r1, r0	@ D.33049,
	mov	r0, r8	@, VdhId
	str	r1, [r3, #4]	@ D.33049, g_VfmwGlobalStat[VdhId_5(D)].u32VdhLastStartTimeInMs
	add	r8, r8, #1	@ D.33044, VdhId,
	str	r1, [r9, #4]	@ D.33049, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	bl	VDMDRV_StartDec	@
	add	r3, r6, r7, lsl #2	@ tmp324, tmp203, D.33044,
	mov	r0, r7	@, D.33044
	str	r8, [r3, #76]	@ D.33044, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_AdjustPriorityAfterDec	@
	mov	r0, #5	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L121	@,
	bl	OSAL_GetTimeInMs	@
	add	r7, r6, r7, lsl #2	@ tmp328, tmp203, D.33044,
	ldr	r2, .L154+44	@ tmp332,
	ldr	r3, [r7, #1416]	@ tmp331, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.33049, tmp331, currtime
	cmp	r3, r2	@ D.33049, g_TraceFramePeriod
	strhi	r0, [r7, #1416]	@ currtime, last_rec_pos_time
	b	.L121	@
.L132:
	ldr	r3, [sp, #4]	@ tmp354, %sfp
	mov	r1, r8	@, VdhId
	add	r3, r3, r10	@ tmp240, tmp354, tmp355
	add	r3, r5, r3	@ tmp241, tmp353, tmp240
	ldr	r0, [r3, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	PostPro_CopyYuv_Vp6	@
	mov	r3, r0	@ ret,
.L128:
	cmp	r3, #0	@ ret,
	bne	.L121	@,
	ldr	r2, [sp, #4]	@ tmp354, %sfp
	mov	r1, r8	@, VdhId
	mov	r0, #2	@,
	add	r8, r8, #1	@ D.33044, VdhId,
	add	r10, r2, r10	@ tmp248, tmp354, tmp355
	ldr	r4, .L154	@ tmp244,
	add	r10, r5, r10	@ tmp249, tmp353, tmp248
	add	r5, r5, r7, lsl #2	@ tmp253, tmp353, D.33044,
	str	r3, [r10, #4]	@ ret, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ErrRatio
	bl	VDMDRV_StartRepair	@
	mov	r0, r7	@, D.33044
	str	r8, [r5, #76]	@ D.33044, g_ChanCtx.ChanDecByVdhPlusOne
	bl	VDMDRV_AdjustPriorityAfterDec	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L121	@,
	bl	OSAL_GetTimeInMs	@
	add	r4, r4, r7, lsl #2	@ tmp257, tmp244, D.33044,
	ldr	r2, .L154+44	@ tmp261,
	ldr	r3, [r4, #1416]	@ tmp260, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.33049, tmp260, currtime
	cmp	r3, r2	@ D.33049, g_TraceFramePeriod
	strhi	r0, [r4, #1416]	@ currtime, last_rec_pos_time
	b	.L121	@
.L131:
	ldr	r3, [sp, #4]	@ tmp354, %sfp
	mov	r1, r8	@, VdhId
	add	r3, r3, r10	@ tmp224, tmp354, tmp355
	add	r3, r5, r3	@ tmp225, tmp353, tmp224
	ldr	r0, [r3, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	PostPro_CopyYuv	@
	mov	r3, r0	@ ret,
	b	.L128	@
.L129:
	ldr	r3, [sp, #4]	@ tmp354, %sfp
	mov	r1, r8	@, VdhId
	add	r3, r3, r10	@ tmp232, tmp354, tmp355
	add	r3, r5, r3	@ tmp233, tmp353, tmp232
	ldr	r0, [r3, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	PostPro_CopyYuv_Vc1	@
	mov	r3, r0	@ ret,
	b	.L128	@
.L155:
	.align	2
.L154:
	.word	.LANCHOR0
	.word	g_ActivateLock
	.word	AcceleratorCharacter
	.word	g_vdm_hal_fun_ptr
	.word	.LC6
	.word	.LANCHOR1
	.word	.LC3
	.word	.LANCHOR0+72
	.word	.LC4
	.word	.LC5
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
	mov	r5, r0, asl #3	@ tmp677, VdhId,
	ldr	r6, .L202	@ tmp676,
	mov	r10, r0, asl #5	@ tmp678, VdhId,
	.pad #156
	sub	sp, sp, #156	@,,
	add	r7, r5, r10	@ tmp191, tmp677, tmp678
	add	r4, r6, r7	@ tmp192, tmp676, tmp191
	mov	r1, #140	@,
	mov	r8, r0	@ VdhId, VdhId
	add	r0, sp, #12	@,,
	bl	__memzero	@
	add	r0, sp, #16	@ tmp682,,
	mov	r1, #136	@,
	add	r9, r4, #24	@ tmp193, tmp192,
	bl	__memzero	@
	ldr	ip, [r4, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	ldr	r2, [r6, r7]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_2(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_2(D)].VdmStateMachine
	mov	r0, #2	@,
	ldr	r3, [r9, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	ldr	r1, .L202+4	@,
	str	ip, [sp]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	bl	dprint_vfmw	@
	ldr	r7, [r6, r7]	@ D.33077, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_2(D)].VdmStateMachine
	cmp	r7, #2	@ D.33077,
	beq	.L158	@,
	cmp	r7, #3	@ D.33077,
	beq	.L159	@,
	cmp	r7, #1	@ D.33077,
	beq	.L197	@,
	mov	r3, r7	@, D.33077
	ldr	r2, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	ldr	r1, .L202+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r2, #0	@ tmp664,
	add	r3, r3, #8	@ tmp660, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r6, r6, r3, lsl #2	@ tmp662, tmp676, tmp660,
	str	r2, [r6, #44]	@ tmp664, g_ChanCtx.ChanDecByVdhPlusOne
.L156:
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L197:
	ldr	r3, [r9, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	cmp	r3, #1	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut,
	beq	.L198	@,
	mov	r2, r8	@, VdhId
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	ldr	r0, [r4, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	bl	PostPro_GetErrRatio	@
	ldr	r1, .L202+12	@,
	mov	r3, r0	@ D.33076,
	mov	r2, r0	@, D.33076
	str	r3, [r4, #4]	@ D.33076, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	mov	r0, r7	@, D.33077
	bl	dprint_vfmw	@
	ldr	r0, [r4, #12]	@ D.33085, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	sub	r3, r0, #8	@ D.33080, D.33085,
	cmp	r0, #5	@ D.33085,
	cmpne	r3, #1	@, D.33080,
	movls	r2, #0	@ tmp300,
	strls	r2, [r4, #4]	@ tmp300, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bls	.L165	@,
	ldr	r3, [r4, #4]	@ D.33076, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r3, #0	@ D.33076,
	beq	.L166	@,
	ldr	r2, .L202+16	@ tmp308,
	ldr	ip, [r2]	@ D.33082, g_event_report
	cmp	ip, #0	@ D.33082,
	beq	.L167	@,
	add	r2, sp, #152	@ tmp309,,
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r1, #114	@,
	str	r3, [r2, #-144]!	@ D.33076, para
	blx	ip	@ D.33082
.L162:
	ldr	r3, [sp, #12]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r3, #1	@ VdmInfoExt.ModuleLowlyEnable,
	beq	.L165	@,
	add	r3, r5, r10	@ tmp323, tmp677, tmp678
	add	r3, r6, r3	@ tmp324, tmp676, tmp323
	ldr	r2, [r3, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r2, #0	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	bne	.L170	@,
.L165:
	mov	r3, #0	@ D.33076,
.L169:
	add	r5, r5, r10	@ tmp352, tmp677, tmp678
	add	r2, sp, #16	@ tmp683,,
	add	r5, r6, r5	@ tmp353, tmp676, tmp352
	mov	r1, r3	@, D.33076
	str	r3, [r5, #4]	@ D.33076, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	ldr	r0, [r5, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r5, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r5, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r5	@, tmp353
	mov	r1, #40	@,
	add	r3, r3, #8	@ tmp380, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	mov	r2, #0	@ tmp384,
	add	r6, r6, r3, lsl #2	@ tmp382, tmp676, tmp380,
	str	r2, [r6, #44]	@ tmp384, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r8	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L159:
	ldr	r1, [r4, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	add	r2, sp, #16	@ tmp687,,
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r5, #0	@ tmp592,
	cmp	r1, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	str	r5, [r9, #4]	@ tmp592, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	movge	r1, #100	@ D.33076,
	bic	r1, r1, r1, asr #31	@ D.33076, D.33076
	str	r1, [r4, #4]	@ D.33076, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r4	@, tmp192
	mov	r1, #40	@,
	add	r3, r3, #8	@ tmp632, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r6, r6, r3, lsl #2	@ tmp634, tmp676, tmp632,
	str	r5, [r6, #44]	@ tmp592, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r8	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L158:
	add	r7, r4, #8	@ tmp405, tmp192,
	ldr	r0, [r7, #4]	@ D.33078, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	mov	r3, #0	@ tmp398,
	add	fp, r4, #16	@ tmp412, tmp192,
	cmp	r0, #6	@ D.33078,
	str	r3, [r9, #4]	@ tmp398, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	ldr	r1, [r4, #16]	@ D.33079, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	beq	.L199	@,
.L173:
	bl	VDMDRV_IsCopy	@
	subs	r4, r0, #0	@ D.33076,
	bne	.L200	@,
	add	r5, r5, r10	@ tmp539, tmp677, tmp678
	add	r2, sp, #16	@ tmp686,,
	add	r5, r6, r5	@ tmp540, tmp676, tmp539
	ldr	r1, [r5, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	ldr	r0, [r5, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	cmp	r1, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	movge	r1, #100	@ D.33076,
	bic	r1, r1, r1, asr #31	@ D.33076, D.33076
	str	r1, [r5, #4]	@ D.33076, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r5, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r5, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r5	@, tmp540
	mov	r1, #40	@,
	add	r6, r6, r3, lsl #2	@ tmp576, tmp676, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	str	r4, [r6, #76]	@ D.33076, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r8	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	add	sp, sp, #156	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L199:
	ldrb	r9, [r1, #8]	@ zero_extendqisi2	@ MEM[(struct AVS_DEC_PARAM_S *)_46].PicStruct, MEM[(struct AVS_DEC_PARAM_S *)_46].PicStruct
	cmp	r9, #1	@ MEM[(struct AVS_DEC_PARAM_S *)_46].PicStruct,
	bne	.L173	@,
	movw	r3, #1144	@ tmp417,
	mla	r3, r3, r8, r6	@ tmp418, tmp417, VdhId, tmp676
	ldr	r3, [r3, #1396]	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_47 + 572B].ValidGroupNum, MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_47 + 572B].ValidGroupNum
	cmp	r3, #0	@ MEM[(struct VDMHAL_REPAIR_PARAM_S *)pRepairParam_47 + 572B].ValidGroupNum,
	ble	.L173	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L202+20	@ tmp674,
	ldr	ip, [r3, #84]	@ D.33086, g_vdm_hal_fun_ptr.pfun_VDMHAL_PrepareRepair
	cmp	ip, #0	@ D.33086,
	str	r0, [fp, #4]	@, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_2(D)].StartTime
	beq	.L175	@,
	mov	r2, r9	@, MEM[(struct AVS_DEC_PARAM_S *)_46].PicStruct
	ldr	r0, [r7, #4]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	mov	r3, r8	@, VdhId
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	blx	ip	@ D.33086
	cmp	r0, #0	@,
	beq	.L201	@,
.L175:
	add	r5, r5, r10	@ tmp459, tmp677, tmp678
	add	r2, sp, #16	@ tmp684,,
	add	r4, r6, r5	@ tmp460, tmp676, tmp459
	mov	r1, #100	@,
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r4, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r2, #0	@ tmp483,
	str	r2, [r6, r5]	@ tmp483, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_2(D)].VdmStateMachine
	add	r3, r3, #8	@ tmp479, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r6, r6, r3, lsl #2	@ tmp481, tmp676, tmp479,
	str	r2, [r6, #44]	@ tmp483, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L156	@
.L198:
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	mov	r2, r8	@, VdhId
	ldr	r0, [r4, #12]	@, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
	bl	PostPro_SetFullRepair	@
	mov	r3, #0	@ tmp254,
	mov	r0, r3	@, tmp254
	str	r3, [r9, #4]	@ tmp254, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].VdmTimeOut
	ldr	r1, .L202+24	@,
	mov	r3, #100	@ tmp246,
	str	r3, [r4, #4]	@ tmp246, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	dprint_vfmw	@
	b	.L162	@
.L170:
	ldr	r0, [r3, #12]	@ D.33085, MEM[(VID_STD_E *)&g_VdmDrvParam][VdhId_2(D)].VidStd
.L177:
	add	r4, r5, r10	@ tmp337, tmp677, tmp678
	add	r4, r6, r4	@ tmp338, tmp676, tmp337
	ldr	r1, [r4, #16]	@, MEM[(void * *)&g_VdmDrvParam][VdhId_2(D)].pDecParam
	bl	PostPro_GetRepairStratage	@
	cmp	r0, #1	@,
	bne	.L156	@,
	ldr	r3, [r4, #4]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	cmp	r3, #100	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio,
	movge	r3, #100	@ D.33076,
	bic	r3, r3, r3, asr #31	@ D.33076, D.33076
	b	.L169	@
.L200:
	add	r5, r5, r10	@ tmp495, tmp677, tmp678
	mov	r4, #0	@ tmp497,
	add	r5, r6, r5	@ tmp496, tmp676, tmp495
	add	r2, sp, #16	@ tmp685,,
	mov	r1, r4	@, tmp497
	ldr	r0, [r5, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	str	r4, [r5, #4]	@ tmp497, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ErrRatio
	bl	VCTRL_VdmPostProc	@
	ldr	r0, [r5, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	bl	VCTRL_ClearDecparam	@
	ldr	r3, [r5, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	mov	r0, r5	@, tmp496
	mov	r1, #40	@,
	add	r3, r3, #8	@ tmp524, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId,
	add	r6, r6, r3, lsl #2	@ tmp526, tmp676, tmp524,
	str	r4, [r6, #44]	@ tmp497, g_ChanCtx.ChanDecByVdhPlusOne
	bl	__memzero	@
	mov	r0, r8	@, VdhId
	bl	VDMDRV_ActivateVDH	@
	b	.L156	@
.L167:
	ldr	r3, [sp, #12]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r3, #1	@ VdmInfoExt.ModuleLowlyEnable,
	bne	.L177	@,
	b	.L165	@
.L201:
	mov	r1, r8	@, VdhId
	mov	r0, #3	@,
	bl	VDMDRV_StartRepair	@
	mov	r0, #7	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L156	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #8]	@ D.33076, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_2(D)].ChanId
	ldr	r2, .L202+28	@ tmp448,
	add	r6, r6, r3, lsl #2	@ tmp444, tmp676, D.33076,
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r3, [r6, #1432]	@ tmp447, last_rec_pos_time
	rsb	r3, r3, r0	@ D.33080, tmp447, currtime
	cmp	r3, r2	@ D.33080, g_TraceFramePeriod
	strhi	r0, [r6, #1432]	@ currtime, last_rec_pos_time
	b	.L156	@
.L166:
	ldr	r2, [sp, #12]	@ VdmInfoExt.ModuleLowlyEnable, VdmInfoExt.ModuleLowlyEnable
	cmp	r2, #1	@ VdmInfoExt.ModuleLowlyEnable,
	bne	.L169	@,
	b	.L165	@
.L203:
	.align	2
.L202:
	.word	.LANCHOR0
	.word	.LC7
	.word	.LC10
	.word	.LC9
	.word	g_event_report
	.word	g_vdm_hal_fun_ptr
	.word	.LC8
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
	mov	r5, r0, asl #3	@ tmp301, VdhId,
	mov	r7, r0, asl #5	@ tmp302, VdhId,
	ldr	r4, .L239	@ tmp300,
	add	r8, r5, r7	@ tmp138, tmp301, tmp302
	mov	r6, r0	@ VdhId, VdhId
	add	r9, r4, r8	@ tmp139, tmp300, tmp138
	ldr	r0, [r9, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L236	@,
.L205:
	add	r3, r5, r7	@ tmp189, tmp301, tmp302
	add	r8, r4, r3	@ tmp190, tmp300, tmp189
	ldr	r3, [r4, r3]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r3, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	bne	.L237	@,
.L206:
	add	r4, r4, r6, lsl #2	@ tmp293, tmp300, VdhId,
	ldr	r0, [r4, #40]	@ D.33111, s_eVdmDrvSleepState
	cmp	r0, #0	@ D.33111,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	cmp	r0, #1	@ D.33111,
	beq	.L238	@,
.L210:
	mov	r0, #1	@ D.33104,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L237:
	bl	OSAL_GetTimeInMs	@
	add	r3, r8, #16	@ tmp205, tmp190,
	ldr	r2, [r3, #4]	@ D.33110, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	str	r0, [r8, #24]	@ D.33110, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].CurrTime
	cmp	r0, r2	@ D.33110, D.33110
	bcc	.L208	@,
	clz	r1, r2	@ tmp209, D.33110
	rsb	r2, r2, r0	@ TimeElapse, D.33110, D.33110
	mov	r1, r1, lsr #5	@ tmp209, tmp209,
	orrs	r9, r1, r2, lsr #31	@, tmp213, tmp209, TimeElapse,
	bne	.L208	@,
	cmp	r2, #500	@ TimeElapse,
	bls	.L210	@,
	ldr	r1, .L239+4	@,
	mov	r0, r9	@, tmp213
	bl	dprint_vfmw	@
	ldr	r3, .L239+8	@ tmp229,
	ldr	r3, [r3]	@ D.33112, g_event_report
	cmp	r3, #0	@ D.33112,
	beq	.L213	@,
	mov	r2, r9	@, tmp213
	ldr	r0, [r8, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r1, #101	@,
	blx	r3	@ D.33112
.L213:
	ldr	r3, .L239+12	@ tmp238,
	ldr	r3, [r3, #40]	@ D.33113, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.33113,
	beq	.L214	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.33113
.L215:
	add	r3, r5, r7	@ tmp244, tmp301, tmp302
	mov	r5, #1	@ tmp247,
	add	r4, r4, r3	@ tmp245, tmp300, tmp244
	ldr	r2, .L239	@ tmp240,
	add	lr, r4, #32	@ tmp254, tmp245,
	add	ip, r4, #24	@ tmp246, tmp245,
	ldr	r1, [r4, #36]	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	str	r5, [r4, #28]	@ tmp247, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].VdmTimeOut
	cmp	r1, r5	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag,
	bne	.L216	@,
	ldr	r4, [r4, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	mov	r1, #0	@ tmp263,
	str	r1, [lr, #4]	@ tmp263, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	mov	r0, r1	@ D.33104, tmp263
	add	lr, r4, #8	@ tmp287, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	str	r1, [r2, r3]	@ tmp263, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	str	r1, [ip, #4]	@ tmp263, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].VdmTimeOut
	add	r2, r2, lr, lsl #2	@ tmp289, tmp240, tmp287,
	str	r1, [r2, #44]	@ tmp263, g_ChanCtx.ChanDecByVdhPlusOne
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L208:
	str	r0, [r3, #4]	@ D.33110, MEM[(HI_U32 *)&g_VdmDrvParam][VdhId_5(D)].StartTime
	mov	r0, #1	@ D.33104,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L238:
	mov	r3, #2	@ tmp298,
	str	r3, [r4, #40]	@ tmp298, s_eVdmDrvSleepState
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L236:
	ldr	r3, [r4, r8]	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r3, #0	@ MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine,
	beq	.L206	@,
	ldr	r3, .L239+12	@ tmp149,
	ldr	r3, [r3, #80]	@ D.33109, g_vdm_hal_fun_ptr.pfun_VDMHAL_IsVdmRun
	cmp	r3, #0	@ D.33109,
	beq	.L207	@,
	mov	r0, r6	@, VdhId
	blx	r3	@ D.33109
	cmp	r0, #0	@,
	movne	r3, #1	@ tmp157,
	strne	r3, [r9, #36]	@ tmp157, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	bne	.L205	@,
.L207:
	add	r8, r5, r7	@ tmp162, tmp301, tmp302
	mov	r9, #0	@ tmp165,
	add	r8, r4, r8	@ tmp163, tmp300, tmp162
	mov	r1, #40	@,
	mov	r0, r8	@, tmp163
	str	r9, [r8, #36]	@ tmp165, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	bl	__memzero	@
	ldr	r3, [r8, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	add	r3, r3, #8	@ tmp180, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	add	r3, r4, r3, lsl #2	@ tmp182, tmp300, tmp180,
	str	r9, [r3, #44]	@ tmp165, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L205	@
.L216:
	mov	r0, r6	@, VdhId
	bl	VDMDRV_AfterDec	@
	mov	r0, r5	@ D.33104, tmp247
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L214:
	mov	r0, r3	@, D.33113
	movw	r2, #823	@,
	ldr	r1, .L239+16	@,
	bl	dprint_vfmw	@
	b	.L215	@
.L240:
	.align	2
.L239:
	.word	.LANCHOR0
	.word	.LC11
	.word	g_event_report
	.word	g_vdm_hal_fun_ptr
	.word	.LC0
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
	ble	.L245	@,
	movw	r2, #1027	@,
	ldr	r1, .L280	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L245:
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0	@ VdhId, VdhId
	ldr	r5, .L280+4	@ tmp390,
	.pad #20
	sub	sp, sp, #20	@,,
	ldr	r0, .L280+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r5, #60]	@ D.33134, g_vdm_hal_fun_ptr.pfun_VDMHAL_CheckReg
	cmp	r3, #0	@ D.33134,
	beq	.L247	@,
	mov	r1, r4	@, VdhId
	mov	r0, #2	@,
	blx	r3	@ D.33134
	tst	r0, #1	@,
	beq	.L247	@,
	ldr	r3, [r5, #92]	@ D.33131, g_vdm_hal_fun_ptr.pfun_VDMHAL_UpdateHardwareInfo
	cmp	r3, #0	@ D.33131,
	beq	.L248	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.33131
.L249:
	ldr	r3, [r5, #48]	@ D.33132, g_vdm_hal_fun_ptr.pfun_VDMHAL_ClearIntState
	cmp	r3, #0	@ D.33132,
	beq	.L250	@,
	mov	r0, r4	@, VdhId
	blx	r3	@ D.33132
.L251:
	mov	r8, r4, asl #3	@ tmp391, VdhId,
	mov	r6, r4, asl #5	@ tmp393, VdhId,
	ldr	r7, .L280+12	@ tmp389,
	add	r3, r8, r6	@ tmp172, tmp391, tmp393
	mov	r0, #6	@,
	add	r3, r7, r3	@ tmp173, tmp389, tmp172
	ldr	r5, [r3, #8]	@ D.33133, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L253	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L280+16	@ tmp177,
	ldr	r1, .L280+20	@ tmp181,
	ldr	r3, [r2, r5, asl #2]	@ *_42, *_42
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.33135, *_42, CurTime
	cmp	r3, r1	@ D.33135, g_TraceFramePeriod
	strhi	r0, [r2, r5, asl #2]	@ CurTime, *_42
.L253:
	bl	OSAL_GetTimeInMs	@
	mov	r9, r4, asl #6	@ tmp387, VdhId,
	mov	r1, r4, asl #4	@ tmp392, VdhId,
	ldr	r5, .L280+24	@ tmp388,
	rsb	r2, r1, r9	@ tmp187, tmp392, tmp387
	add	lr, r5, r2	@ tmp188, tmp388, tmp187
	ldr	r3, [lr, #4]	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLastStartTimeInMs
	cmp	r3, #0	@ D.33135,
	beq	.L256	@,
	ldr	r10, [r5, r2]	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	rsb	r9, r1, r9	@ tmp221, tmp392, tmp387
	add	ip, r10, #499712	@ D.33135, D.33135,
	add	ip, ip, #288	@ D.33135, D.33135,
	cmp	r3, ip	@ D.33135, D.33135
	strhi	r3, [r5, r2]	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	add	r5, r5, r9	@ tmp222, tmp388, tmp221
	ldrls	fp, [lr, #8]	@ D.33139, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhWorkTimeInMs
	mov	lr, #180	@ tmp233,
	mla	lr, lr, r4, r7	@ tmp234, tmp233, VdhId, tmp389
	ldr	ip, [r5, #32]	@ MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	movhi	r10, r3	@ D.33135, D.33135
	rsb	r10, r10, r0	@ Period, D.33135, CurTime
	rsb	r0, r3, r0	@ D.33135, D.33135, CurTime
	movhi	fp, #0	@ D.33139,
	add	ip, ip, #1	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum,
	add	r0, r0, fp	@ D.33135, D.33135, D.33139
	str	ip, [r5, #32]	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	cmp	r10, #1000	@ Period,
	ldr	fp, [lr, #116]	@ g_BackUp[VdhId_5(D)].DecCyclePerPic, g_BackUp[VdhId_5(D)].DecCyclePerPic
	add	r3, r5, #8	@ tmp223, tmp222,
	ldr	ip, .L280+24	@ tmp217,
	add	r2, r5, #32	@ tmp244, tmp222,
	ldr	r1, [r5, #36]	@ MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	str	r3, [sp]	@ tmp223, %sfp
	mov	r3, #0	@ tmp230,
	add	fp, r1, fp, lsr #10	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle, g_BackUp[VdhId_5(D)].DecCyclePerPic,
	str	r0, [r5, #8]	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhWorkTimeInMs
	str	r3, [r5, #4]	@ tmp230, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLastStartTimeInMs
	str	r3, [sp, #12]	@ tmp230, %sfp
	str	fp, [r5, #36]	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	str	r2, [sp, #8]	@ tmp244, %sfp
	str	ip, [sp, #4]	@ tmp217, %sfp
	bcc	.L256	@,
	mov	lr, #1000	@ tmp277,
	mov	r1, r10	@, Period
	mul	r0, lr, r0	@, tmp277, D.33135
	bl	__aeabi_uidiv	@
	ldr	r3, [sp, #12]	@ tmp230, %sfp
	ldr	ip, [sp, #4]	@ tmp217, %sfp
	ldr	r2, [sp, #8]	@ tmp244, %sfp
	str	r3, [r5, #32]	@ tmp230, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32PicNum
	str	r3, [ip, r9]	@ tmp230, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhStatisticStartTimeInMs
	str	r3, [r2, #4]	@ tmp230, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32AccountVdhKiloCycle
	ldr	r3, [sp]	@ tmp223, %sfp
	str	fp, [r5, #40]	@ D.33135, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhKiloCyclePerSecond
	str	r10, [r5, #44]	@ Period, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32Period
	str	r0, [r3, #4]	@, MEM[(struct VFMW_GLOBAL_STAT_S *)&g_VfmwGlobalStat][VdhId_5(D)].u32VdhLoad
.L256:
	add	r2, r8, r6	@ tmp322, tmp391, tmp393
	ldr	ip, .L280+12	@ tmp318,
	add	r1, r7, r2	@ tmp323, tmp389, tmp322
	ldr	r0, [r1, #36]	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	ldr	r5, [r1, #8]	@ ChanId, g_VdmDrvParam[VdhId_5(D)].ChanId
	cmp	r0, #1	@ g_VdmDrvParam[VdhId_5(D)].ChanResetFlag,
	moveq	r2, #0	@ tmp340,
	streq	r2, [r1, #36]	@ tmp340, g_VdmDrvParam[VdhId_5(D)].ChanResetFlag
	beq	.L261	@,
	ldr	r2, [ip, r2]	@ D.33137, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	cmp	r2, #0	@ D.33137,
	beq	.L262	@,
	ldr	r9, [r1, #16]	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	cmp	r9, #0	@ MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam,
	beq	.L277	@,
.L262:
	mov	r0, r5	@, ChanId
	bl	VCTRL_IsChanActive	@
	cmp	r0, #0	@,
	bne	.L278	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L279	@,
	mov	r0, r4	@, VdhId
	bl	VDMDRV_AfterDec	@
.L265:
	add	r6, r8, r6	@ tmp362, tmp391, tmp393
	add	r7, r7, r6	@ tmp363, tmp389, tmp362
	ldr	r0, [r7, #8]	@, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	bl	VCTRL_InformVdmFree	@
	ldr	r0, .L280+8	@,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L278:
	mov	r3, r5	@, ChanId
	movw	r2, #1002	@,
	ldr	r1, .L280+28	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L261:
	add	r3, r8, r6	@ tmp372, tmp391, tmp393
	mov	r2, #0	@ tmp379,
	add	r1, r7, r3	@ tmp373, tmp389, tmp372
	str	r2, [r7, r3]	@ tmp379, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	ldr	r3, [r1, #8]	@ MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId
	add	r3, r3, #8	@ tmp375, MEM[(HI_S32 *)&g_VdmDrvParam][VdhId_5(D)].ChanId,
	add	r3, r7, r3, lsl #2	@ tmp377, tmp389, tmp375,
	str	r2, [r3, #44]	@ tmp379, g_ChanCtx.ChanDecByVdhPlusOne
	b	.L265	@
.L247:
	mov	r0, r4, asl #5	@ tmp158, VdhId,
	ldr	r3, .L280+12	@ tmp155,
	add	r4, r0, r4, lsl #3	@ tmp159, tmp158, VdhId,
	mov	r2, #0	@ tmp161,
	ldr	r0, .L280+8	@,
	str	r2, [r3, r4]	@ tmp161, MEM[(VDMDRV_STATEMACHINE_E *)&g_VdmDrvParam][VdhId_5(D)].VdmStateMachine
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L277:
	ldr	r1, .L280+32	@,
	mov	r0, r9	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	bl	dprint_vfmw	@
	mov	r0, r5	@, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	beq	.L261	@,
	mov	r2, r9	@, MEM[(void * *)&g_VdmDrvParam][VdhId_5(D)].pDecParam
	mov	r0, r5	@, ChanId
	mov	r1, #100	@,
	bl	VCTRL_VdmPostProc	@
	b	.L261	@
.L248:
	mov	r0, r3	@, D.33131
	movw	r2, #1055	@,
	ldr	r1, .L280+36	@,
	bl	dprint_vfmw	@
	b	.L249	@
.L250:
	mov	r0, r3	@, D.33132
	movw	r2, #1057	@,
	ldr	r1, .L280+36	@,
	bl	dprint_vfmw	@
	b	.L251	@
.L279:
	mov	r3, r5	@, ChanId
	mov	r2, #1008	@,
	ldr	r1, .L280+40	@,
	bl	dprint_vfmw	@
	b	.L261	@
.L281:
	.align	2
.L280:
	.word	.LC12
	.word	g_vdm_hal_fun_ptr
	.word	g_TaskLock
	.word	.LANCHOR0
	.word	.LANCHOR0+1448
	.word	g_TraceFramePeriod
	.word	g_VfmwGlobalStat
	.word	.LC14
	.word	.LC13
	.word	.LC0
	.word	.LC15
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
	ldr	r4, .L287	@ tmp119,
	ldr	r3, [r4, #8]	@ g_VdmDrvParam[0].ChanId, g_VdmDrvParam[0].ChanId
	cmp	r3, r0	@ g_VdmDrvParam[0].ChanId, ChanID
	ldmnefd	sp!, {r4, pc}	@
	ldr	r3, .L287+4	@ tmp115,
	ldr	r3, [r3, #40]	@ D.33146, g_vdm_hal_fun_ptr.pfun_VDMHAL_ResetVdm
	cmp	r3, #0	@ D.33146,
	beq	.L284	@,
	mov	r0, #0	@,
	blx	r3	@ D.33146
.L285:
	mov	r3, #0	@ tmp118,
	str	r3, [r4]	@ tmp118, g_VdmDrvParam[0].VdmStateMachine
	ldmfd	sp!, {r4, pc}	@
.L284:
	mov	r0, r3	@, D.33146
	movw	r2, #1290	@,
	ldr	r1, .L287+8	@,
	bl	dprint_vfmw	@
	b	.L285	@
.L288:
	.align	2
.L287:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.word	.LC0
	.fnend
	.size	VDMDRV_ResetVDH, .-VDMDRV_ResetVDH
	.global	g_VdmDrvParam
	.global	USE_FF_APT_EN
	.global	g_ChanCtx
	.global	g_BackUp
	.global	g_DecReport
	.global	g_RepairParam
	.global	g_HwMem
	.global	g_UpMsg
	.global	CapItem
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.32098, %object
	.size	__func__.32098, 19
__func__.32098:
	.ascii	"VDMDRV_ChnDecReady\000"
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
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"VDMHAL_NULL_FUN_PRINT,L%d\012\000"
	.space	1
.LC1:
	.ascii	"====== forece VDM sleep! ======\012\000"
	.space	3
.LC2:
	.ascii	"VDMDRV_IsProtocolCopy point of picture para null, w"
	.ascii	"ait forever!!!\012\000"
	.space	1
.LC3:
	.ascii	"%s The channel %d is not active\012\000"
	.space	3
.LC4:
	.ascii	"The channel %d is decoding\012\000"
.LC5:
	.ascii	"The channel %d DEC PARAM is not ready\012\000"
	.space	1
.LC6:
	.ascii	"VDM Start Fail 2 !\012\000"
.LC7:
	.ascii	"isr begin: *pVdmStateMachine = %d, timeout = %d, Er"
	.ascii	"rRatio = %d\012\000"
.LC8:
	.ascii	"ISR process vdm timeout!\012\000"
	.space	2
.LC9:
	.ascii	"*pErrRatio = %d\012\000"
	.space	3
.LC10:
	.ascii	"Chan %d VdmStateMachine=%d Error!\012\000"
	.space	1
.LC11:
	.ascii	"Vdm Time Out(%d ms), Reset Vdm!\012\000"
	.space	3
.LC12:
	.ascii	"line: %d\012\000"
	.space	2
.LC13:
	.ascii	"vdm state machine = %d, but DecParam is null!\012\000"
	.space	1
.LC14:
	.ascii	"line :%d ISR called but chan %d is not active!\012\000"
.LC15:
	.ascii	"line :%d ISR called chan %d is active! But Dec Para"
	.ascii	"m in CTX is NULL!!!\012\000"
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
	.type	last_rec_pos_time.32122, %object
	.size	last_rec_pos_time.32122, 16
last_rec_pos_time.32122:
	.space	16
	.type	last_rec_pos_time.32169, %object
	.size	last_rec_pos_time.32169, 16
last_rec_pos_time.32169:
	.space	16
	.type	last_rec_pos_time.32241, %object
	.size	last_rec_pos_time.32241, 16
last_rec_pos_time.32241:
	.space	16
	.type	g_DecReport, %object
	.size	g_DecReport, 528
g_DecReport:
	.space	528
	.type	g_HwMem, %object
	.size	g_HwMem, 1144
g_HwMem:
	.space	1144
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
