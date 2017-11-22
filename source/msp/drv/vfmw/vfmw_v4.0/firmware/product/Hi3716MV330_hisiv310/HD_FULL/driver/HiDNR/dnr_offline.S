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
	.file	"dnr_offline.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(dnr_offline)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_offline.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.o
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
	.global	DNR_DelImageProc
	.type	DNR_DelImageProc, %function
DNR_DelImageProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r3, r0, #0	@ pImageQueue, pImageQueue
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L17	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L4	@,
	ldr	r2, .L19	@ tmp119,
	cmp	r3, r2	@ pImageQueue, tmp119
	beq	.L18	@,
	ldr	r2, .L19+4	@ tmp123,
	cmp	r3, r2	@ pImageQueue, tmp123
	beq	.L10	@,
	ldr	r2, .L19+8	@ tmp126,
	cmp	r3, r2	@ pImageQueue, tmp126
	beq	.L11	@,
	ldr	r2, .L19+12	@ tmp129,
	cmp	r3, r2	@ pImageQueue, tmp129
	moveq	r3, #3	@ ChanID,
	beq	.L5	@,
	ldr	r3, .L19+16	@,
	movw	r2, #1955	@,
	ldr	r1, .L19+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34368,
	ldmfd	sp!, {r4, pc}	@
.L18:
	mov	r3, #0	@ ChanID,
.L5:
	movw	r0, #19174	@ tmp133,
	ldr	r2, .L19+24	@ tmp131,
	mla	r1, r0, r3, r1	@ tmp134, tmp133, ChanID, ImageID
	mov	r3, #0	@ tmp136,
	mov	r0, r3	@ D.34368, tmp136
	add	r1, r1, #178	@ tmp135, tmp134,
	str	r3, [r2, r1, asl #2]	@ tmp136, s_DnrChan[ChanID_13].LogicImageIsUsed
	ldmfd	sp!, {r4, pc}	@
.L10:
	mov	r3, #1	@ ChanID,
	b	.L5	@
.L11:
	mov	r3, #2	@ ChanID,
	b	.L5	@
.L4:
	ldr	r3, .L19+28	@,
	movw	r2, #1934	@,
	ldr	r1, .L19+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34368,
	ldmfd	sp!, {r4, pc}	@
.L17:
	ldr	r3, .L19+32	@,
	movw	r2, #1933	@,
	ldr	r1, .L19+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34368,
	ldmfd	sp!, {r4, pc}	@
.L20:
	.align	2
.L19:
	.word	.LANCHOR0+968
	.word	.LANCHOR0+77664
	.word	.LANCHOR0+154360
	.word	.LANCHOR0+231056
	.word	.LC3
	.word	.LC1
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC0
	.fnend
	.size	DNR_DelImageProc, .-DNR_DelImageProc
	.align	2
	.global	DNRDRV_PrepareSleep
	.type	DNRDRV_PrepareSleep, %function
DNRDRV_PrepareSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L24	@ tmp113,
	ldr	r0, [r3, #3976]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r0, #0	@ s_eDnrDrvSleepStage,
	moveq	r2, #2	@ tmp116,
	mvnne	r0, #0	@ ret,
	streq	r2, [r3, #3976]	@ tmp116, s_eDnrDrvSleepStage
	bx	lr	@
.L25:
	.align	2
.L24:
	.word	.LANCHOR1
	.fnend
	.size	DNRDRV_PrepareSleep, .-DNRDRV_PrepareSleep
	.align	2
	.global	DNRDRV_GetSleepStage
	.type	DNRDRV_GetSleepStage, %function
DNRDRV_GetSleepStage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L27	@ tmp113,
	ldr	r0, [r3, #3976]	@, s_eDnrDrvSleepStage
	bx	lr	@
.L28:
	.align	2
.L27:
	.word	.LANCHOR1
	.fnend
	.size	DNRDRV_GetSleepStage, .-DNRDRV_GetSleepStage
	.align	2
	.global	DNRDRV_ForeceSleep
	.type	DNRDRV_ForeceSleep, %function
DNRDRV_ForeceSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34	@ tmp111,
	ldr	r2, [r3, #3976]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r2, #2	@ s_eDnrDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #3976]	@ tmp114, s_eDnrDrvSleepStage
	bx	lr	@
.L35:
	.align	2
.L34:
	.word	.LANCHOR1
	.fnend
	.size	DNRDRV_ForeceSleep, .-DNRDRV_ForeceSleep
	.align	2
	.global	DNRDRV_ExitSleep
	.type	DNRDRV_ExitSleep, %function
DNRDRV_ExitSleep:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L40	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r3]	@ D.34385, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.34385,
	beq	.L37	@,
	blx	r0	@ D.34385
.L38:
	ldr	r3, .L40+4	@ tmp113,
	mov	r2, #0	@ tmp114,
	str	r2, [r3, #3976]	@ tmp114, s_eDnrDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L37:
	mov	r2, #142	@,
	ldr	r1, .L40+8	@,
	bl	dprint_vfmw	@
	b	.L38	@
.L41:
	.align	2
.L40:
	.word	g_dnr_hal_fun_ptr
	.word	.LANCHOR1
	.word	.LC4
	.fnend
	.size	DNRDRV_ExitSleep, .-DNRDRV_ExitSleep
	.align	2
	.global	DNR_CloseChan
	.type	DNR_CloseChan, %function
DNR_CloseChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	mov	r3, r0	@ ChanID, ChanID
	ldrls	ip, .L45	@ tmp114,
	movwls	r1, #11160	@ tmp116,
	movtls	r1, 1	@ tmp116,
	movls	r2, #0	@ tmp119,
	movls	r0, r2	@ D.34389, tmp119
	mvnhi	r0, #0	@ D.34389,
	mlals	r3, r1, r3, ip	@ tmp117, tmp116, ChanID, tmp114
	strls	r2, [r3, #8]	@ tmp119, s_DnrChan[ChanID_3(D)].s32IsOpen
	strls	r2, [r3, #12]	@ tmp119, s_DnrChan[ChanID_3(D)].InstMode
	bx	lr	@
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.fnend
	.size	DNR_CloseChan, .-DNR_CloseChan
	.align	2
	.global	DNR_GetState
	.type	DNR_GetState, %function
DNR_GetState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstDnrChanState
	bxeq	lr	@
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstDnrChanState, pstDnrChanState
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #80	@,
	mov	r0, r4	@, pstDnrChanState
	bl	__memzero	@
	movw	r2, #11160	@ tmp118,
	movt	r2, 1	@ tmp118,
	ldr	r0, .L50	@ tmp116,
	mul	r3, r2, r5	@ tmp117, tmp118, ChanID
	add	r1, r4, #72	@, pstDnrChanState,
	add	r2, r4, #76	@, pstDnrChanState,
	add	ip, r0, r3	@ tmp119, tmp116, tmp117
	add	r3, r3, #968	@ tmp126, tmp117,
	add	r0, r0, r3	@, tmp116, tmp126
	ldr	r3, [ip, #448]	@ D.34393, s_DnrChan[ChanID_5(D)].s32ValidImgNum
	str	r3, [r4, #68]	@ D.34393, pstDnrChanState_2(D)->total_frame_num
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	IMGQUE_GetImageNum	@
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.fnend
	.size	DNR_GetState, .-DNR_GetState
	.align	2
	.global	DNR_CloseDrivers
	.type	DNR_CloseDrivers, %function
DNR_CloseDrivers:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r2, [r0, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length
	ldr	r1, [r0, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].VirAddr
	ldr	r0, [r0, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #28]	@ MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length
	cmp	r3, #0	@ MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length,
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #16	@, pstDrvMem,
	mov	r1, #16	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
	.fnend
	.size	DNR_CloseDrivers, .-DNR_CloseDrivers
	.align	2
	.global	DNR_Close
	.type	DNR_Close, %function
DNR_Close:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r4, .L57	@ tmp112,
	add	r0, r4, #24	@, tmp112,
	bl	DNR_CloseDrivers	@
	mov	r0, r4	@, tmp112
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L58:
	.align	2
.L57:
	.word	.LANCHOR1+3980
	.fnend
	.size	DNR_Close, .-DNR_Close
	.align	2
	.global	DNR_OpenDrivers
	.type	DNR_OpenDrivers, %function
DNR_OpenDrivers:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r5, r0, #16	@ pstMem, pstDrvMem,
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	mov	r0, #0	@,
	mov	r1, #4096	@,
	mov	r2, r5	@, pstMem
	movt	r0, 4165	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L60	@,
	ldr	r2, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
.L61:
	movw	r0, #20592	@,
	mov	r2, r5	@, pstMem
	movt	r0, 4127	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	beq	.L64	@,
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L60:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	b	.L61	@
.L64:
	ldr	r2, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].PhyAddr
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	MEM_AddMemRecord	@
	.fnend
	.size	DNR_OpenDrivers, .-DNR_OpenDrivers
	.align	2
	.global	DNR_Init
	.type	DNR_Init, %function
DNR_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r8, .L75	@ tmp141,
	ldr	r0, [r8]	@ D.34420, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.34420,
	beq	.L66	@,
	blx	r0	@ D.34420
.L67:
	ldr	r7, .L75+4	@ tmp142,
	ldr	r6, [r7, #3980]	@ D.34419, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r6, #0	@ D.34419,
	bne	.L72	@,
	mov	r1, #60	@,
	ldr	r0, .L75+8	@,
	bl	__memzero	@
	movw	r1, #44640	@,
	movt	r1, 4	@,
	ldr	r0, .L75+12	@,
	bl	__memzero	@
	ldr	r0, .L75+16	@,
	bl	DNR_OpenDrivers	@
	ldr	r4, .L75+20	@ ivtmp.174,
	ldr	r5, .L75+24	@ D.34421,
.L69:
	mov	r0, r4	@, ivtmp.174
	add	r4, r4, #75776	@ ivtmp.174, ivtmp.174,
	add	r4, r4, #920	@ ivtmp.174, ivtmp.174,
	mov	r1, #256	@,
	bl	__memzero	@
	cmp	r4, r5	@ ivtmp.174, D.34421
	bne	.L69	@,
	ldr	r0, [r8, #4]	@ D.34420, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r0, #0	@ D.34420,
	beq	.L70	@,
	blx	r0	@ D.34420
.L71:
	mov	r3, #1	@ tmp139,
	str	r3, [r7, #3980]	@ tmp139, s_DnrCtrl.s32IsVCTRLOpen
.L68:
	mov	r0, r6	@, D.34419
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L66:
	mov	r2, #155	@,
	ldr	r1, .L75+28	@,
	bl	dprint_vfmw	@
	b	.L67	@
.L70:
	mov	r2, #175	@,
	ldr	r1, .L75+28	@,
	bl	dprint_vfmw	@
	b	.L71	@
.L72:
	mvn	r6, #0	@ D.34419,
	b	.L68	@
.L76:
	.align	2
.L75:
	.word	g_dnr_hal_fun_ptr
	.word	.LANCHOR1
	.word	.LANCHOR1+3980
	.word	.LANCHOR0
	.word	.LANCHOR1+4004
	.word	.LANCHOR0+712
	.word	.LANCHOR0+307496
	.word	.LC4
	.fnend
	.size	DNR_Init, .-DNR_Init
	.align	2
	.global	DNR_EnableChan
	.type	DNR_EnableChan, %function
DNR_EnableChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #468
	sub	sp, sp, #468	@,,
	bgt	.L78	@,
	mov	r4, r1	@ pChanMem, pChanMem
	movw	r1, #11160	@ tmp184,
	movt	r1, 1	@ tmp184,
	ldr	r9, .L104	@ tmp254,
	mul	r6, r1, r0	@ tmp186, tmp184, ChanID
	str	r0, [sp, #28]	@ ChanID, %sfp
	mov	r7, r3	@ PicHeight, PicHeight
	mov	r5, r2	@ PicWidth, PicWidth
	add	r10, r9, r6	@ __p, tmp254, tmp186
	mov	r0, r10	@, __p
	bl	__memzero	@
	cmp	r4, #0	@ pChanMem,
	beq	.L78	@,
	ldr	r0, [r4]	@ D.34442, pChanMem_13(D)->PhyAddr
	cmp	r0, #0	@ D.34442,
	beq	.L78	@,
	ldr	r3, [r4, #4]	@ pChanMem_13(D)->VirAddr, pChanMem_13(D)->VirAddr
	cmp	r3, #0	@ pChanMem_13(D)->VirAddr,
	beq	.L78	@,
	ldr	r1, [r4, #8]	@ D.34442, pChanMem_13(D)->Length
	cmp	r1, #0	@ D.34442,
	ble	.L78	@,
	ldr	r3, .L104+4	@ tmp190,
	ldr	ip, [r3, #36]	@ D.34444, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.34444,
	beq	.L79	@,
	mov	lr, #64	@ tmp191,
	mov	r3, r7	@, PicHeight
	mov	r2, r5	@, PicWidth
	str	lr, [sp, #20]	@ tmp191,
	str	lr, [sp, #4]	@ tmp191,
	add	r5, sp, #48	@ tmp192,,
	mov	lr, #0	@ tmp194,
	mvn	r4, #0	@ tmp193,
	str	r5, [sp, #16]	@ tmp192,
	str	r4, [sp, #12]	@ tmp193,
	str	lr, [sp, #8]	@ tmp194,
	str	lr, [sp]	@ tmp194,
	blx	ip	@ D.34444
	subs	r3, r0, #0	@ D.34441,
	str	r3, [sp, #24]	@ D.34441, %sfp
	bne	.L79	@,
	ldr	r1, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r5, sp, #464	@ ivtmp.188,,
	add	r4, r6, #26368	@ tmp201, tmp186,
	ldr	r0, [sp, #60]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r1, #64	@ MemArrange.ValidFrameNum,
	ldr	ip, [r5, #-408]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, #64	@ tmp201, tmp201,
	add	r6, r6, #456	@ D.34447, tmp186,
	movge	r1, #64	@ D.34442,
	rsb	r0, ip, r0	@ D.34442, MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r9, r4	@ pLogicImage, tmp254, tmp201
	add	r6, r9, r6	@ ivtmp.191, tmp254, D.34447
	add	r7, sp, #312	@ D.34449,,
	mov	fp, r10	@ tmp257, __p
	mov	r8, r3	@ i, D.34441
	str	r1, [r10, #448]	@ D.34442, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	str	r0, [r10, #452]	@ D.34442, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	b	.L82	@
.L103:
	ldr	r1, [r5]	@ D.34442, MEM[base: _76, offset: 0B]
	str	r1, [r6]	@ D.34442, MEM[base: _77, offset: 0B]
	mov	r0, r1	@, D.34442
	str	r1, [r4, #120]	@ D.34442, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	r1, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	ldr	r1, [fp, #452]	@ D.34442, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	str	r1, [r4, #360]	@ D.34442, MEM[base: pLogicImage_67, offset: 360B]
.L81:
	add	r5, r5, #4	@ ivtmp.188, ivtmp.188,
	add	r8, r8, #1	@ i, i,
	cmp	r5, r7	@ ivtmp.188, D.34449
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r6, r6, #4	@ ivtmp.191, ivtmp.191,
	beq	.L102	@,
.L82:
	ldr	r1, [fp, #448]	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	cmp	r1, r8	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, i
	bgt	.L103	@,
	ldr	r1, [sp, #56]	@ D.34442, MemArrange.FrameAddr
	str	r1, [r6]	@ D.34442, MEM[base: _79, offset: 0B]
	mov	r0, r1	@, D.34442
	str	r1, [r4, #120]	@ D.34442, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	r1, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	b	.L81	@
.L79:
	mov	r3, #0	@ D.34441,
	str	r3, [sp, #24]	@ D.34441, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L102:
	ldr	r4, [sp, #28]	@ ChanID, %sfp
	mov	r1, #16	@,
	ldr	r2, .L104+8	@,
	add	r0, sp, #32	@ tmp265,,
	mov	r3, r4	@, ChanID
	bl	snprintf	@
	movw	r3, #11160	@ tmp245,
	movt	r3, 1	@ tmp245,
	add	r1, sp, #32	@ tmp266,,
	mul	r8, r3, r4	@ tmp244, tmp245, ChanID
	ldr	r2, .L104+12	@,
	add	r0, r8, #968	@ tmp246, tmp244,
	add	r0, r9, r0	@, tmp254, tmp246
	add	r9, r9, r8	@ tmp251, tmp254, tmp244
	bl	IMGQUE_InitQueue	@
	mov	r3, #1	@ tmp253,
	ldr	r0, [sp, #24]	@, %sfp
	str	r3, [r9, #8]	@ tmp253, s_DnrChan[ChanID_9(D)].s32IsOpen
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L78:
	mvn	r3, #0	@ D.34441,
	str	r3, [sp, #24]	@ D.34441, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L105:
	.align	2
.L104:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.word	.LC5
	.word	DNR_DelImageProc
	.fnend
	.size	DNR_EnableChan, .-DNR_EnableChan
	.align	2
	.global	DNR_ConfigChan
	.type	DNR_ConfigChan, %function
DNR_ConfigChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L117	@,
	ldr	r2, .L121	@ tmp211,
	movw	r3, #11160	@ tmp130,
	movt	r3, 1	@ tmp130,
	mla	r3, r3, r0, r2	@ tmp131, tmp130, ChanID, tmp211
	ldr	ip, [r3, #8]	@ s_DnrChan[ChanID_4(D)].s32IsOpen, s_DnrChan[ChanID_4(D)].s32IsOpen
	cmp	ip, #1	@ s_DnrChan[ChanID_4(D)].s32IsOpen,
	bne	.L118	@,
	cmp	r1, #0	@ pArgs,
	beq	.L119	@,
	add	ip, r3, #75776	@ tmp148, tmp131,
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ D.34457, pArgs_10(D)->s32VcmpEn
	ldr	lr, [ip, #900]	@ s_DnrChan[ChanID_4(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_4(D)].stDSDParam.s32DSDenable
	strb	r4, [r3, #2]	@ D.34457, s_DnrChan[ChanID_4(D)].s32VcmpEn
	cmp	lr, #1	@ s_DnrChan[ChanID_4(D)].stDSDParam.s32DSDenable,
	ldreqsb	r3, [r1]	@ pArgs_10(D)->s32MirrorEn, pArgs_10(D)->s32MirrorEn
	ldrneb	ip, [r1]	@ zero_extendqisi2	@ D.34457, pArgs_10(D)->s32MirrorEn
	streq	r3, [ip, #912]	@ pArgs_10(D)->s32MirrorEn, s_DnrChan[ChanID_4(D)].stDSDParam.s32MirrorEn
	strneb	ip, [r3, #1]	@ D.34457, s_DnrChan[ChanID_4(D)].s32MirrorEn
	ldrsb	r3, [r1, #1]	@ pArgs_10(D)->s32VcmpEn, pArgs_10(D)->s32VcmpEn
	cmp	r3, #1	@ pArgs_10(D)->s32VcmpEn,
	beq	.L113	@,
.L115:
	mov	r0, #0	@ D.34454,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L113:
	movw	r3, #11160	@ tmp165,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ D.34457, pArgs_10(D)->s32WmEn
	movt	r3, 1	@ tmp165,
	mla	r0, r3, r0, r2	@ tmp166, tmp165, ChanID, tmp211
	strb	ip, [r0, #3]	@ D.34457, s_DnrChan[ChanID_4(D)].s32WmEn
	ldrsb	r3, [r1, #2]	@ pArgs_10(D)->s32WmEn, pArgs_10(D)->s32WmEn
	cmp	r3, #1	@ pArgs_10(D)->s32WmEn,
	beq	.L120	@,
	add	r3, r0, #75776	@ tmp207, tmp166,
	movw	r2, #65535	@ tmp202,
	mov	r0, #0	@ D.34454,
	str	r2, [r3, #840]!	@ tmp202, s_DnrChan[ChanID_4(D)].s32VcmpWmStartLine
	str	r2, [r3, #4]	@ tmp202, s_DnrChan[ChanID_4(D)].s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L120:
	ldr	r2, [r1, #4]	@ D.34456, pArgs_10(D)->s32VcmpWmStartLine
	add	r4, r0, #75776	@ tmp174, tmp166,
	mov	r5, r4	@ tmp179, tmp174
	str	r2, [r5, #840]!	@ D.34456, s_DnrChan[ChanID_4(D)].s32VcmpWmStartLine
	ldr	r3, [r1, #8]	@ D.34456, pArgs_10(D)->s32VcmpWmEndLine
	cmp	r2, r3	@ D.34456, D.34456
	str	r3, [r5, #4]	@ D.34456, s_DnrChan[ChanID_4(D)].s32VcmpWmEndLine
	ble	.L115	@,
	ldr	r1, .L121+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	movw	r3, #65535	@ tmp188,
	mov	r0, #0	@ D.34454,
	str	r3, [r4, #840]	@ tmp188, s_DnrChan[ChanID_4(D)].s32VcmpWmStartLine
	str	r3, [r5, #4]	@ tmp188, s_DnrChan[ChanID_4(D)].s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L118:
	ldr	r3, .L121+8	@,
	movw	r2, #365	@,
	ldr	r1, .L121+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34454,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L117:
	ldr	r3, .L121+16	@,
	mov	r2, #364	@,
	ldr	r1, .L121+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34454,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L119:
	mov	r0, r1	@, pArgs
	ldr	r3, .L121+20	@,
	movw	r2, #366	@,
	ldr	r1, .L121+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34454,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L122:
	.align	2
.L121:
	.word	.LANCHOR0
	.word	.LC9
	.word	.LC7
	.word	.LC1
	.word	.LC6
	.word	.LC8
	.fnend
	.size	DNR_ConfigChan, .-DNR_ConfigChan
	.align	2
	.global	DNR_ConfigFFFBSpeed
	.type	DNR_ConfigFFFBSpeed, %function
DNR_ConfigFFFBSpeed:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L129	@,
	ldr	r2, .L132	@ tmp119,
	movw	r3, #11160	@ tmp121,
	movt	r3, 1	@ tmp121,
	mla	r0, r3, r0, r2	@ tmp122, tmp121, ChanID, tmp119
	ldr	r3, [r0, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L130	@,
	cmp	r1, #0	@ pArgs,
	beq	.L131	@,
	ldr	r2, [r1]	@ D.34466, *pArgs_9(D)
	add	r3, r0, #75776	@ tmp134, tmp122,
	mov	r0, #0	@ D.34464,
	str	r2, [r3, #848]	@ D.34466, s_DnrChan[ChanID_3(D)].s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L130:
	ldr	r3, .L132+4	@,
	movw	r2, #410	@,
	ldr	r1, .L132+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34464,
	ldmfd	sp!, {r4, pc}	@
.L129:
	ldr	r3, .L132+12	@,
	movw	r2, #409	@,
	ldr	r1, .L132+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34464,
	ldmfd	sp!, {r4, pc}	@
.L131:
	mov	r0, r1	@, pArgs
	ldr	r3, .L132+16	@,
	movw	r2, #411	@,
	ldr	r1, .L132+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34464,
	ldmfd	sp!, {r4, pc}	@
.L133:
	.align	2
.L132:
	.word	.LANCHOR0
	.word	.LC7
	.word	.LC1
	.word	.LC6
	.word	.LC8
	.fnend
	.size	DNR_ConfigFFFBSpeed, .-DNR_ConfigFFFBSpeed
	.align	2
	.global	DNR_ConfigBackOptimizeFlag
	.type	DNR_ConfigBackOptimizeFlag, %function
DNR_ConfigBackOptimizeFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L140	@,
	ldr	r2, .L143	@ tmp120,
	movw	r3, #11160	@ tmp122,
	movt	r3, 1	@ tmp122,
	mla	r0, r3, r0, r2	@ tmp123, tmp122, ChanID, tmp120
	ldr	r3, [r0, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L141	@,
	cmp	r1, #0	@ pArgs,
	beq	.L142	@,
	ldr	r2, [r1, #12]	@ D.34472, pArgs_9(D)->u32BackwardOptimizeFlag
	add	r3, r0, #75776	@ tmp135, tmp123,
	mov	r0, #0	@ D.34469,
	str	r2, [r3, #852]	@ D.34472, s_DnrChan[ChanID_3(D)].u32BackwardOptimizeFlag
	ldr	r2, [r1, #16]	@ D.34472, pArgs_9(D)->u32DispOptimizeFlag
	str	r2, [r3, #868]	@ D.34472, s_DnrChan[ChanID_3(D)].u32DispOptimizeFlag
	ldmfd	sp!, {r4, pc}	@
.L141:
	ldr	r3, .L143+4	@,
	movw	r2, #422	@,
	ldr	r1, .L143+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34469,
	ldmfd	sp!, {r4, pc}	@
.L140:
	ldr	r3, .L143+12	@,
	movw	r2, #421	@,
	ldr	r1, .L143+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34469,
	ldmfd	sp!, {r4, pc}	@
.L142:
	mov	r0, r1	@, pArgs
	ldr	r3, .L143+16	@,
	movw	r2, #423	@,
	ldr	r1, .L143+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34469,
	ldmfd	sp!, {r4, pc}	@
.L144:
	.align	2
.L143:
	.word	.LANCHOR0
	.word	.LC7
	.word	.LC1
	.word	.LC6
	.word	.LC8
	.fnend
	.size	DNR_ConfigBackOptimizeFlag, .-DNR_ConfigBackOptimizeFlag
	.align	2
	.global	DNR_StartChan
	.type	DNR_StartChan, %function
DNR_StartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L150	@,
	ldr	r2, .L152	@ tmp117,
	movw	r3, #11160	@ tmp119,
	movt	r3, 1	@ tmp119,
	mla	r3, r3, r0, r2	@ tmp120, tmp119, ChanID, tmp117
	ldr	r2, [r3, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r2, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L151	@,
	mov	r0, #0	@ D.34475,
	str	r2, [r3, #12]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].InstMode
	ldmfd	sp!, {r4, pc}	@
.L151:
	ldr	r3, .L152+4	@,
	movw	r2, #433	@,
	ldr	r1, .L152+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34475,
	ldmfd	sp!, {r4, pc}	@
.L150:
	ldr	r3, .L152+12	@,
	mov	r2, #432	@,
	ldr	r1, .L152+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34475,
	ldmfd	sp!, {r4, pc}	@
.L153:
	.align	2
.L152:
	.word	.LANCHOR0
	.word	.LC7
	.word	.LC1
	.word	.LC6
	.fnend
	.size	DNR_StartChan, .-DNR_StartChan
	.align	2
	.global	DNR_StopChan
	.type	DNR_StopChan, %function
DNR_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L159	@,
	ldr	r2, .L161	@ tmp117,
	movw	r3, #11160	@ tmp119,
	movt	r3, 1	@ tmp119,
	mla	r0, r3, r0, r2	@ tmp120, tmp119, ChanID, tmp117
	ldr	r3, [r0, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L160	@,
	add	r3, r0, #8	@ tmp129, tmp120,
	mov	r2, #0	@ tmp130,
	mov	r0, r2	@ D.34482, tmp130
	str	r2, [r3, #4]	@ tmp130, s_DnrChan[ChanID_3(D)].InstMode
	ldmfd	sp!, {r4, pc}	@
.L160:
	ldr	r3, .L161+4	@,
	movw	r2, #575	@,
	ldr	r1, .L161+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34482,
	ldmfd	sp!, {r4, pc}	@
.L159:
	ldr	r3, .L161+12	@,
	movw	r2, #574	@,
	ldr	r1, .L161+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34482,
	ldmfd	sp!, {r4, pc}	@
.L162:
	.align	2
.L161:
	.word	.LANCHOR0
	.word	.LC10
	.word	.LC1
	.word	.LC6
	.fnend
	.size	DNR_StopChan, .-DNR_StopChan
	.align	2
	.global	DNR_DisableChan
	.type	DNR_DisableChan, %function
DNR_DisableChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L168	@,
	ldr	r1, .L170	@ tmp117,
	movw	r2, #11160	@ tmp119,
	movt	r2, 1	@ tmp119,
	mla	r3, r2, r0, r1	@ tmp120, tmp119, ChanID, tmp117
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L169	@,
	bl	DNR_StopChan	@
	mov	r0, #0	@ D.34488,
	ldmfd	sp!, {r4, pc}	@
.L169:
	ldr	r3, .L170+4	@,
	mov	r2, #564	@,
	ldr	r1, .L170+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34488,
	ldmfd	sp!, {r4, pc}	@
.L168:
	ldr	r3, .L170+12	@,
	movw	r2, #563	@,
	ldr	r1, .L170+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34488,
	ldmfd	sp!, {r4, pc}	@
.L171:
	.align	2
.L170:
	.word	.LANCHOR0
	.word	.LC11
	.word	.LC1
	.word	.LC6
	.fnend
	.size	DNR_DisableChan, .-DNR_DisableChan
	.align	2
	.global	DNR_PushTempImageToVOQ
	.type	DNR_PushTempImageToVOQ, %function
DNR_PushTempImageToVOQ:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #11160	@ tmp134,
	movt	r3, 1	@ tmp134,
	mul	r2, r3, r0	@ tmp133, tmp134, InstId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r0	@ InstId, InstId
	ldr	r7, .L188	@ tmp208,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r0, r7, r2	@ tmp135, tmp208, tmp133
	add	r4, r0, #51456	@ tmp137, tmp135,
	add	r4, r4, #64	@ tmp137, tmp137,
	ldr	r5, [r4, #4]	@ D.34504, s_DnrChan[InstId_8(D)].TempImageNum
	cmp	r5, #0	@ D.34504,
	ble	.L186	@,
	sub	r5, r5, #1	@ i, D.34504,
	mov	r3, #392	@ tmp148,
	movw	r1, #51752	@ tmp153,
	mla	r3, r3, r5, r2	@ tmp151, tmp148, i, tmp133
	add	r3, r7, r3	@ tmp152, tmp208, tmp151
	ldr	r2, [r3, r1]	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame, MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame
	cmp	r2, #1	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame,
	moveq	ip, #0	@ tmp165,
	streq	ip, [r3, r1]	@ tmp165, MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame
	streq	r2, [r0, r1]	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame, s_DnrChan[InstId_8(D)].TempImagePool[0].last_frame
	cmp	r5, #0	@ i,
	blt	.L180	@,
	movw	r6, #11160	@ tmp182,
	mov	r4, #392	@ tmp186,
	movt	r6, 1	@ tmp182,
	movw	r8, #19174	@ tmp209,
	mul	r6, r6, r9	@ tmp181, tmp182, InstId
	mla	r4, r4, r5, r6	@ D.34508, tmp186, i, tmp181
	add	r6, r6, #968	@ tmp183, tmp181,
	mul	r8, r8, r9	@ tmp210, tmp209, InstId
	add	r4, r4, #51456	@ D.34508, D.34508,
	add	r4, r4, #72	@ D.34508, D.34508,
	add	r6, r7, r6	@ D.34507, tmp208, tmp183
	add	r4, r7, r4	@ ivtmp.215, tmp208, D.34508
	b	.L179	@
.L187:
	ldr	ip, [r10]	@ D.34506, g_event_report
	add	r3, r8, r3	@ tmp195, tmp210, D.34505
	add	r3, r3, #178	@ tmp196, tmp195,
	add	r2, sp, #8	@ tmp199,,
	cmp	ip, #0	@ D.34506,
	mov	r1, #5	@,
	mov	r0, r9	@, InstId
	str	lr, [r7, r3, asl #2]	@ tmp197, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	beq	.L178	@,
	str	r4, [r2, #-4]!	@ ivtmp.215, para
	blx	ip	@ D.34506
.L178:
	sub	r5, r5, #1	@ i, i,
	sub	r4, r4, #392	@ ivtmp.215, ivtmp.215,
	cmn	r5, #1	@ i,
	beq	.L180	@,
.L179:
	mov	r1, r4	@, ivtmp.215
	mov	r0, r6	@, D.34507
	bl	IMGQUE_InsertImage	@
	mov	ip, #0	@ tmp205,
	movw	r2, #619	@,
	ldr	r1, .L188+4	@,
	ldr	r10, .L188+8	@ tmp198,
	mov	lr, #2	@ tmp197,
	ldr	r3, [r4, #176]	@ D.34505, MEM[base: pTemp_16, offset: 176B]
	cmp	r0, #1	@,
	mov	r0, ip	@, tmp205
	beq	.L187	@,
	add	r3, r8, r3	@ tmp203, tmp210, D.34505
	sub	r5, r5, #1	@ i, i,
	add	r3, r3, #178	@ tmp204, tmp203,
	sub	r4, r4, #392	@ ivtmp.215, ivtmp.215,
	str	ip, [r7, r3, asl #2]	@ tmp205, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	bne	.L179	@,
.L180:
	movw	r3, #11160	@ tmp175,
	mov	r2, #0	@ tmp179,
	movt	r3, 1	@ tmp175,
	mov	r0, r2	@ D.34503, tmp179
	mla	r7, r3, r9, r7	@ tmp176, tmp175, InstId, tmp208
	add	r7, r7, #51456	@ tmp178, tmp176,
	str	r2, [r7, #68]	@ tmp179, s_DnrChan[InstId_8(D)].TempImageNum
.L174:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L186:
	mov	r2, #592	@,
	ldr	r1, .L188+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp145,
	mvn	r0, #0	@ D.34503,
	str	r3, [r4, #4]	@ tmp145, s_DnrChan[InstId_8(D)].TempImageNum
	b	.L174	@
.L189:
	.align	2
.L188:
	.word	.LANCHOR0
	.word	.LC13
	.word	g_event_report
	.word	.LC12
	.fnend
	.size	DNR_PushTempImageToVOQ, .-DNR_PushTempImageToVOQ
	.align	2
	.global	DNR_ClearTempImage
	.type	DNR_ClearTempImage, %function
DNR_ClearTempImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	r4, #11160	@ tmp127,
	movt	r4, 1	@ tmp127,
	ldr	r5, .L199	@ tmp162,
	mul	r4, r4, r0	@ tmp126, tmp127, InstId
	mov	r7, r0	@ InstId, InstId
	add	r6, r5, r4	@ tmp128, tmp162, tmp126
	add	r6, r6, #51456	@ tmp130, tmp128,
	add	r6, r6, #64	@ tmp130, tmp130,
	ldr	r3, [r6, #4]	@ D.34527, s_DnrChan[InstId_6(D)].TempImageNum
	cmp	r3, #0	@ D.34527,
	ble	.L198	@,
	subs	r9, r3, #1	@ i, D.34527,
	bmi	.L195	@,
	mov	r2, #392	@ tmp148,
	movw	r6, #19174	@ tmp163,
	mla	r4, r2, r3, r4	@ D.34529, tmp148, D.34527, tmp126
	mov	r8, #0	@ tmp165,
	mul	r6, r6, r0	@ tmp164, tmp163, InstId
	add	r4, r4, #51200	@ D.34529, D.34529,
	add	r4, r4, #112	@ D.34529, D.34529,
	add	r4, r5, r4	@ ivtmp.226, tmp162, D.34529
.L194:
	ldr	r3, [r4], #-392	@ D.34528, MEM[base: _28, offset: 0B]
	sub	r9, r9, #1	@ i, i,
	movw	r2, #646	@,
	ldr	r1, .L199+4	@,
	add	r3, r6, r3	@ tmp157, tmp164, D.34528
	mov	r0, #22	@,
	add	r3, r3, #178	@ tmp158, tmp157,
	str	r8, [r5, r3, asl #2]	@ tmp165, s_DnrChan[InstId_6(D)].LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r9, #1	@ i,
	bne	.L194	@,
.L195:
	movw	r3, #11160	@ tmp141,
	mov	r2, #0	@ tmp145,
	movt	r3, 1	@ tmp141,
	mov	r0, r2	@ D.34526, tmp145
	mla	r5, r3, r7, r5	@ tmp142, tmp141, InstId, tmp162
	add	r5, r5, #51456	@ tmp144, tmp142,
	add	r5, r5, #64	@ tmp144, tmp144,
	str	r2, [r5, #4]	@ tmp145, s_DnrChan[InstId_6(D)].TempImageNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L198:
	mov	r2, #636	@,
	ldr	r1, .L199+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp138,
	mvn	r0, #0	@ D.34526,
	str	r3, [r6, #4]	@ tmp138, s_DnrChan[InstId_6(D)].TempImageNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L200:
	.align	2
.L199:
	.word	.LANCHOR0
	.word	.LC14
	.word	.LC12
	.fnend
	.size	DNR_ClearTempImage, .-DNR_ClearTempImage
	.align	2
	.global	DNR_InformDecChanReset
	.type	DNR_InformDecChanReset, %function
DNR_InformDecChanReset:
	.fnstart
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r1, #11160	@ tmp189,
	ldr	r5, .L242	@ tmp296,
	mov	r3, #1	@ tmp166,
	mov	r2, r1	@ tmp203, tmp189
	bfi	r1, r3, #16, #16	@ tmp189, tmp166,,
	movw	r10, #11160	@ tmp170,
	movw	r7, #11160	@ tmp182,
	movw	ip, #11160	@ tmp210,
	bfi	r2, r3, #16, #16	@ tmp203, tmp166,,
	mov	r9, r10	@ tmp176, tmp170
	mov	lr, r7	@ tmp196, tmp182
	bfi	r10, r3, #16, #16	@ tmp170, tmp166,,
	bfi	r9, r3, #16, #16	@ tmp176, tmp166,,
	bfi	r7, r3, #16, #16	@ tmp182, tmp166,,
	bfi	lr, r3, #16, #16	@ tmp196, tmp166,,
	mov	r8, ip	@ tmp164, tmp210
	bfi	ip, r3, #16, #16	@ tmp210, tmp166,,
	mla	r1, r1, r0, r5	@ tmp190, tmp189, ChanID, tmp296
	movt	r8, 1	@ tmp164,
	mla	r10, r10, r0, r5	@ tmp171, tmp170, ChanID, tmp296
	movw	r6, #65535	@ tmp193,
	mla	ip, ip, r0, r5	@ tmp211, tmp210, ChanID, tmp296
	add	r1, r1, #75776	@ tmp191, tmp190,
	mla	r2, r2, r0, r5	@ tmp204, tmp203, ChanID, tmp296
	str	r6, [r1, #860]	@ tmp193, s_DnrChan[ChanID_17(D)].LastGopNum
	mla	r9, r9, r0, r5	@ tmp177, tmp176, ChanID, tmp296
	add	r1, ip, #75776	@ tmp213, tmp211,
	mla	r7, r7, r0, r5	@ tmp183, tmp182, ChanID, tmp296
	add	r2, r2, #75776	@ tmp205, tmp204,
	mla	lr, lr, r0, r5	@ tmp197, tmp196, ChanID, tmp296
	movw	ip, #51520	@ tmp184,
	mul	r8, r8, r0	@ tmp163, tmp164, ChanID
	mov	r6, #0	@ tmp173,
	add	lr, lr, #75776	@ tmp199, tmp197,
	.pad #436
	sub	sp, sp, #436	@,,
	mov	r4, r0	@ ChanID, ChanID
	str	r6, [r2, #852]	@ tmp173, s_DnrChan[ChanID_17(D)].u32BackwardOptimizeFlag
	str	r6, [r10, #16]	@ tmp173, s_DnrChan[ChanID_17(D)].NeedStartAgain
	str	r6, [r7, ip]	@ tmp173, s_DnrChan[ChanID_17(D)].GetFirstIFrameFlag
	str	r6, [lr, #856]	@ tmp173, s_DnrChan[ChanID_17(D)].u32BackwardOptimizeDistanceCnt
	str	r6, [r1, #848]	@ tmp173, s_DnrChan[ChanID_17(D)].s32FastForwardBackwardSpeed
	strb	r3, [r5, r8]	@ tmp166, s_DnrChan[ChanID_17(D)].DecChanRstFlag
	str	r6, [r9, #432]	@ tmp173, s_DnrChan[ChanID_17(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetFrameInterface	@
	subs	r10, r0, #0	@ pFrameIntf,
	beq	.L202	@,
	ldr	r3, [r10, #8]	@ pFrameIntf_28->release_frame, pFrameIntf_28->release_frame
	cmp	r3, r6	@ pFrameIntf_28->release_frame,
	beq	.L202	@,
	add	r9, r5, r8	@ tmp219, tmp296, tmp163
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum,
	ble	.L202	@,
	add	r7, r8, #26368	@ D.34588, tmp163,
	add	r8, r8, #708	@ D.34588, tmp163,
	add	r7, r7, #112	@ D.34588, D.34588,
	add	r8, r5, r8	@ ivtmp.268, tmp296, D.34588
	add	r7, r5, r7	@ ivtmp.276, tmp296, D.34588
	b	.L204	@
.L203:
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.276, ivtmp.276,
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, i
	ble	.L202	@,
.L204:
	ldr	r3, [r8, #4]!	@ MEM[base: _115, offset: 0B], MEM[base: _115, offset: 0B]
	add	r6, r6, #1	@ i, i,
	cmp	r3, #0	@ MEM[base: _115, offset: 0B],
	beq	.L203	@,
	ldr	ip, [r7]	@ MEM[base: _116, offset: 0B], MEM[base: _116, offset: 0B]
	add	r1, sp, #28	@ tmp313,,
	ldr	r2, [r7, #72]	@ MEM[base: _116, offset: 72B], MEM[base: _116, offset: 72B]
	mov	r0, r4	@, ChanID
	ldr	r3, [r10, #8]	@ pFrameIntf_28->release_frame, pFrameIntf_28->release_frame
	add	r7, r7, #392	@ ivtmp.276, ivtmp.276,
	str	ip, [sp, #32]	@ MEM[base: _116, offset: 0B], ExtFrame.VirAddr
	str	r2, [sp, #28]	@ MEM[base: _116, offset: 72B], ExtFrame.PhyAddr
	blx	r3	@ pFrameIntf_28->release_frame
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, i
	bgt	.L204	@,
.L202:
	movw	r3, #11160	@ tmp287,
	ldr	r1, .L242	@ tmp285,
	movt	r3, 1	@ tmp287,
	mul	r3, r3, r4	@ tmp286, tmp287, ChanID
	add	r9, r5, r3	@ tmp288, tmp296, tmp286
	add	r9, r9, #75776	@ tmp290, tmp288,
	ldr	r2, [r9, #900]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable
	cmp	r2, #1	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable,
	beq	.L240	@,
.L217:
	movw	r3, #11160	@ tmp278,
	mov	r1, #0	@ tmp298,
	movt	r3, 1	@ tmp278,
	mul	r4, r3, r4	@ D.34588, tmp278, ChanID
	add	r3, r4, #708	@ D.34588, D.34588,
	add	r4, r4, #964	@ D.34588, D.34588,
	add	r3, r5, r3	@ ivtmp.238, tmp296, D.34588
	add	r5, r5, r4	@ D.34583, tmp296, D.34588
.L216:
	ldr	r2, [r3, #4]!	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	r2, #3	@ MEM[base: _3, offset: 0B],
	strne	r1, [r3]	@ tmp298, MEM[base: _3, offset: 0B]
	cmp	r3, r5	@ ivtmp.238, D.34583
	bne	.L216	@,
	add	sp, sp, #436	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L240:
	add	r8, r3, #968	@ tmp295, tmp286,
	movw	r10, #34079	@ tmp300,
	add	r8, r1, r8	@ D.34584, tmp285, tmp295
	movt	r10, 20971	@ tmp300,
	mov	r7, #64	@ D.34583,
	str	r9, [sp, #12]	@ tmp290, %sfp
	str	r3, [sp, #8]	@ tmp286, %sfp
.L213:
	add	r1, sp, #40	@ tmp314,,
	mov	r0, r8	@, D.34584
	mov	r6, #0	@ tmp239,
	str	r6, [sp, #20]	@ tmp239, TopPhyAddr
	str	r6, [sp, #24]	@ tmp239, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@ ret,
	bne	.L205	@,
	ldr	r1, [sp, #216]	@ D.34592, stimage.image_id
	mov	r0, #100	@ tmp245,
	umull	r2, r3, r1, r10	@ tmp242, D.34592, tmp300
	mov	fp, r3, lsr #5	@ RelImgID,,
	mls	fp, r0, fp, r1	@ RelImgID, tmp245, RelImgID, D.34592
	cmp	fp, #63	@ RelImgID,
	bgt	.L241	@,
	add	r3, sp, #24	@,,
	add	r2, sp, #20	@,,
	mov	r0, r8	@, D.34584
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@ ret,
	bne	.L208	@,
	ldr	r3, [sp, #8]	@ tmp303, %sfp
	movw	r2, #19174	@ tmp251,
	mla	fp, r2, r4, fp	@ tmp252, tmp251, ChanID, RelImgID
	add	r3, r5, r3	@ tmp258, tmp296, tmp303
	add	r3, r3, #75776	@ tmp259, tmp258,
	ldr	r1, [sp, #184]	@ stimage.image_width, stimage.image_width
	add	r3, r3, #896	@ tmp259, tmp259,
	add	fp, fp, #178	@ tmp253, tmp252,
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrWidth
	str	r6, [r5, fp, asl #2]	@ tmp239, s_DnrChan[ChanID_17(D)].LogicImageIsUsed
	cmp	r1, r3	@ stimage.image_width, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrWidth
	bhi	.L212	@,
	ldr	r3, [sp, #12]	@ tmp305, %sfp
	ldr	r2, [sp, #188]	@ stimage.image_height, stimage.image_height
	ldr	r3, [r3, #908]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight
	cmp	r2, r3	@ stimage.image_height, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight
	bhi	.L212	@,
	add	r9, sp, #228	@ ivtmp.252,,
	add	fp, sp, #244	@ D.34583,,
.L211:
	ldr	r1, [r9, #4]!	@ D.34593, MEM[base: _43, offset: 0B]
	mov	r0, r4	@, ChanID
	cmp	r1, #0	@ D.34593,
	beq	.L210	@,
	bl	UnMarkUsdByDnr	@
	str	r6, [r9]	@ tmp299, MEM[base: _43, offset: 0B]
.L210:
	cmp	r9, fp	@ ivtmp.252, D.34583
	bne	.L211	@,
.L212:
	subs	r7, r7, #1	@ D.34583, D.34583,
	bne	.L213	@,
	b	.L217	@
.L208:
	ldr	lr, [sp, #216]	@ stimage.image_id, stimage.image_id
	mov	r3, r0	@, ret
	ldr	ip, [sp, #128]	@ stimage.top_luma_phy_addr, stimage.top_luma_phy_addr
	mov	r2, r4	@, ChanID
	ldr	r1, .L242+4	@,
	mov	r0, #31	@,
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	subs	r7, r7, #1	@ D.34583, D.34583,
	bne	.L213	@,
	b	.L217	@
.L205:
	mov	r3, r0	@, ret
	mov	r2, r4	@, ChanID
	ldr	r1, .L242+8	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	b	.L217	@
.L241:
	mov	r2, fp	@, RelImgID
	mov	r0, r6	@, tmp239
	ldr	r1, .L242+12	@,
	bl	dprint_vfmw	@
	b	.L217	@
.L243:
	.align	2
.L242:
	.word	.LANCHOR0
	.word	.LC16
	.word	.LC17
	.word	.LC15
	.fnend
	.size	DNR_InformDecChanReset, .-DNR_InformDecChanReset
	.align	2
	.global	DNR_IsIFrame
	.type	DNR_IsIFrame, %function
DNR_IsIFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #128]	@ D.34600, pImage_3(D)->is_fld_save
	cmp	r3, #0	@ D.34600,
	bne	.L245	@,
	ldr	r3, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r3, #3	@ pImage_3(D)->format,
	moveq	r0, #1	@ D.34599,
	movne	r0, #0	@ D.34599,
	bx	lr	@
.L245:
	cmp	r3, #1	@ D.34600,
	beq	.L250	@,
	mov	r0, #0	@ D.34599,
	bx	lr	@
.L250:
	ldr	r2, [r0, #132]	@ pImage_3(D)->top_fld_type, pImage_3(D)->top_fld_type
	tst	r2, #3	@ pImage_3(D)->top_fld_type,
	bne	.L251	@,
	ldr	r2, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r2, #3	@ pImage_3(D)->format,
	beq	.L249	@,
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	ands	r0, r3, #3	@ D.34599, pImage_3(D)->bottom_fld_type,
	movne	r0, #1	@ D.34599,
	bx	lr	@
.L251:
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	tst	r3, #3	@ pImage_3(D)->bottom_fld_type,
	moveq	r0, #1	@ D.34599,
	movne	r0, #0	@ D.34599,
	bx	lr	@
.L249:
	mov	r0, r3	@ D.34599, D.34600
	bx	lr	@
	.fnend
	.size	DNR_IsIFrame, .-DNR_IsIFrame
	.align	2
	.global	DNR_FastForwardFastBack
	.type	DNR_FastForwardFastBack, %function
DNR_FastForwardFastBack:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L260	@ tmp171,
	movw	r3, #11160	@ tmp123,
	movt	r3, 1	@ tmp123,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1	@ pImage, pImage
	mla	r3, r3, r0, r2	@ tmp124, tmp123, InstId, tmp171
	movw	r9, #51520	@ tmp148,
	mov	r7, r0	@ InstId, InstId
	ldr	r10, .L260	@ tmp144,
	add	r3, r3, #75776	@ tmp126, tmp124,
	ldr	r1, [r3, #868]	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag, s_DnrChan[InstId_6(D)].u32DispOptimizeFlag
	cmp	r1, #1	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag,
	movne	r1, #3	@ tmp141,
	strne	r1, [r3, #864]	@ tmp141, s_DnrChan[InstId_6(D)].u32VoFrmNum
	ldrne	r3, [r8, #140]	@ pImage_11(D)->format, pImage_11(D)->format
	moveq	r1, #7	@ tmp134,
	streq	r1, [r3, #864]	@ tmp134, s_DnrChan[InstId_6(D)].u32VoFrmNum
	orrne	r3, r3, #262144	@ D.34608, pImage_11(D)->format,
	strne	r3, [r8, #140]	@ D.34608, pImage_11(D)->format
	movw	r3, #11160	@ tmp146,
	movt	r3, 1	@ tmp146,
	mul	r5, r3, r0	@ tmp145, tmp146, InstId
	mov	r0, r8	@, pImage
	add	r4, r2, r5	@ tmp147, tmp171, tmp145
	ldr	r6, [r4, r9]	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	cmp	r6, #0	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag,
	bne	.L255	@,
	bl	DNR_IsIFrame	@
	subs	r8, r0, #0	@ D.34609,
	beq	.L256	@,
	mov	r3, #1	@ tmp157,
	mov	r0, r6	@ ret, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	str	r3, [r4, r9]	@ tmp157, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L255:
	bl	DNR_IsIFrame	@
	cmp	r0, #0	@ D.34609
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, r8	@, pImage
	mov	r0, r7	@, InstId
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L256:
	add	r1, r5, #40	@ tmp161, tmp145,
	mov	r0, r7	@, InstId
	add	r1, r10, r1	@, tmp144, tmp161
	bl	VCTRL_ReleaseChanImage	@
	ldr	r1, .L260+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, InstId
	str	r8, [r4, #432]	@ D.34609, s_DnrChan[InstId_6(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L261:
	.align	2
.L260:
	.word	.LANCHOR0
	.word	.LC18
	.fnend
	.size	DNR_FastForwardFastBack, .-DNR_FastForwardFastBack
	.align	2
	.global	DNR_FastBackOptimize
	.type	DNR_FastBackOptimize, %function
DNR_FastBackOptimize:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #11160	@ tmp143,
	ldr	r5, .L284	@ tmp339,
	movt	r3, 1	@ tmp143,
	movw	ip, #51520	@ tmp168,
	mov	r4, r1	@ pImage, pImage
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ InstId, InstId
	mla	r3, r3, r0, r5	@ tmp144, tmp143, InstId, tmp339
	add	r3, r3, #75776	@ tmp146, tmp144,
	ldr	r2, [r3, #868]	@ s_DnrChan[InstId_8(D)].u32DispOptimizeFlag, s_DnrChan[InstId_8(D)].u32DispOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[InstId_8(D)].u32DispOptimizeFlag,
	movne	r2, #3	@ tmp161,
	strne	r2, [r3, #864]	@ tmp161, s_DnrChan[InstId_8(D)].u32VoFrmNum
	ldrne	r3, [r1, #140]	@ pImage_13(D)->format, pImage_13(D)->format
	moveq	r2, #7	@ tmp154,
	streq	r2, [r3, #864]	@ tmp154, s_DnrChan[InstId_8(D)].u32VoFrmNum
	orrne	r3, r3, #262144	@ D.34614, pImage_13(D)->format,
	strne	r3, [r1, #140]	@ D.34614, pImage_13(D)->format
	movw	r3, #11160	@ tmp166,
	movt	r3, 1	@ tmp166,
	ldr	r1, .L284	@ tmp164,
	mul	r3, r3, r0	@ tmp165, tmp166, InstId
	add	r7, r5, r3	@ tmp167, tmp339, tmp165
	ldr	r8, [r7, ip]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].GetFirstIFrameFlag
	cmp	r8, #0	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag,
	bne	.L265	@,
	add	r5, r7, #75776	@ tmp176, tmp167,
	ldr	r0, [r4, #80]	@ D.34614, pImage_13(D)->GopNum
	ldr	lr, [r5, #860]	@ s_DnrChan[InstId_8(D)].LastGopNum, s_DnrChan[InstId_8(D)].LastGopNum
	cmp	r0, lr	@ D.34614, s_DnrChan[InstId_8(D)].LastGopNum
	beq	.L266	@,
	str	r0, [r5, #860]	@ D.34614, s_DnrChan[InstId_8(D)].LastGopNum
	mov	r2, #1	@ tmp196,
	ldr	r0, [r4, #76]	@ D.34614, pImage_13(D)->DistanceBeforeFirstFrame
	str	r2, [r7, ip]	@ tmp196, s_DnrChan[InstId_8(D)].GetFirstIFrameFlag
	cmp	r0, #0	@ D.34614,
	str	r0, [r5, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	ldreq	r3, [r4, #72]	@ D.34614, pImage_13(D)->DispFrameDistance
	streq	r3, [r5, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	bne	.L281	@,
.L268:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L265:
	add	r3, r7, #75776	@ tmp245, tmp167,
	ldr	ip, [r4, #80]	@ D.34614, pImage_13(D)->GopNum
	add	r2, r3, #856	@ tmp244, tmp245,
	ldr	r1, [r3, #860]	@ s_DnrChan[InstId_8(D)].LastGopNum, s_DnrChan[InstId_8(D)].LastGopNum
	cmp	ip, r1	@ D.34614, s_DnrChan[InstId_8(D)].LastGopNum
	beq	.L269	@,
	mov	r1, r4	@, pImage
	str	ip, [r3, #860]	@ D.34614, s_DnrChan[InstId_8(D)].LastGopNum
	bl	DNR_PushTempImageToVOQ	@
	subs	r2, r0, #0	@ ret,
	bne	.L282	@,
.L270:
	movw	r3, #11160	@ tmp256,
	ldr	r0, [r4, #76]	@ D.34614, pImage_13(D)->DistanceBeforeFirstFrame
	movt	r3, 1	@ tmp256,
	ldr	r1, .L284	@ tmp254,
	mul	r3, r3, r6	@ tmp255, tmp256, InstId
	cmp	r0, #0	@ D.34614,
	add	r5, r5, r3	@ tmp257, tmp339, tmp255
	add	r7, r5, #75776	@ tmp259, tmp257,
	str	r0, [r7, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	ldreq	r3, [r4, #72]	@ D.34614, pImage_13(D)->DispFrameDistance
	streq	r3, [r7, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	beq	.L268	@,
	add	r3, r3, #40	@ tmp263, tmp255,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp254, tmp263
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r7, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mov	r2, #0	@ tmp270,
	mvn	r0, #0	@ ret,
	str	r2, [r5, #432]	@ tmp270, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	add	r3, r3, r0	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r7, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L268	@
.L269:
	ldr	r0, [r3, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	ldreq	r2, [r4, #72]	@ D.34614, pImage_13(D)->DispFrameDistance
	streq	r2, [r3, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	beq	.L268	@,
	ldr	r3, [r7, #264]	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame, s_DnrChan[InstId_8(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame,
	beq	.L283	@,
.L273:
	movw	r3, #11160	@ tmp309,
	mov	r0, r6	@, InstId
	movt	r3, 1	@ tmp309,
	mul	r6, r3, r6	@ tmp308, tmp309, InstId
	add	r1, r6, #40	@ tmp310, tmp308,
	add	r1, r5, r1	@, tmp339, tmp310
	add	r5, r5, r6	@ tmp315, tmp339, tmp308
	bl	VCTRL_ReleaseChanImage	@
	add	r2, r5, #75776	@ tmp323, tmp315,
	mov	r3, #0	@ tmp317,
	str	r3, [r5, #432]	@ tmp317, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	ldr	r3, [r2, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mvn	r0, #0	@ ret,
	add	r3, r3, r0	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r2, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L268	@
.L282:
	ldr	r1, .L284+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L270	@
.L266:
	add	r3, r3, #40	@ tmp231, tmp165,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp164, tmp231
	bl	VCTRL_ReleaseChanImage	@
	ldr	r1, .L284+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #432]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	b	.L268	@
.L281:
	add	r3, r3, #40	@ tmp200, tmp165,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp164, tmp200
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #432]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	ldr	r3, [r5, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mvn	r0, #0	@ ret,
	add	r3, r3, r0	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r5, #856]	@ D.34614, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L268	@
.L283:
	ldr	r2, .L284+12	@ tmp304,
	ldr	ip, [r2]	@ D.34617, g_event_report
	cmp	ip, #0	@ D.34617,
	beq	.L273	@,
	add	r2, sp, #8	@ tmp306,,
	mov	r1, #115	@,
	mov	r0, r6	@, InstId
	str	r3, [r2, #-4]!	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame, para
	blx	ip	@ D.34617
	b	.L273	@
.L285:
	.align	2
.L284:
	.word	.LANCHOR0
	.word	.LC19
	.word	.LC18
	.word	g_event_report
	.fnend
	.size	DNR_FastBackOptimize, .-DNR_FastBackOptimize
	.align	2
	.global	DNR_ProcessLastFrameError
	.type	DNR_ProcessLastFrameError, %function
DNR_ProcessLastFrameError:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	movw	r6, #11160	@ tmp125,
	ldr	r4, .L296	@ tmp167,
	movt	r6, 1	@ tmp125,
	movw	r2, #34079	@ tmp131,
	mul	r6, r6, r5	@ tmp124, tmp125, NextInstId
	movt	r2, 20971	@ tmp131,
	mov	lr, #100	@ tmp133,
	add	ip, r4, r6	@ tmp126, tmp167, tmp124
	ldr	r1, [ip, #216]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	umull	r2, r3, r1, r2	@ tmp130, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, tmp131
	mov	r2, r3, lsr #5	@ tmp128,,
	mls	r3, lr, r2, r1	@ D.34621, tmp133, tmp128, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	add	r3, r3, #2	@ D.34621, D.34621,
	cmp	r0, r3	@, D.34621
	beq	.L295	@,
.L287:
	movw	r3, #11160	@ tmp158,
	mov	r0, r5	@, NextInstId
	movt	r3, 1	@ tmp158,
	mul	r5, r3, r5	@ tmp157, tmp158, NextInstId
	add	r1, r5, #40	@ tmp159, tmp157,
	add	r1, r4, r1	@, tmp167, tmp159
	add	r4, r4, r5	@ tmp164, tmp167, tmp157
	bl	VCTRL_ReleaseChanImage	@
	mov	r3, #0	@ tmp166,
	str	r3, [r4, #432]	@ tmp166, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L295:
	ldr	r3, [ip, #188]	@, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	mov	r0, #2	@,
	ldr	r2, [ip, #184]	@, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	ldr	r1, .L296+4	@,
	bl	dprint_vfmw	@
	add	r0, r6, #968	@ tmp152, tmp124,
	add	r0, r4, r0	@, tmp167, tmp152
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L296+8	@ tmp154,
	ldr	ip, [r2]	@ D.34623, g_event_report
	cmp	ip, #0	@ D.34623,
	mov	r3, r0	@ LastFrameId,
	beq	.L288	@,
	cmn	r0, #1	@ LastFrameId,
	add	r2, sp, #8	@ tmp155,,
	mov	r1, #115	@,
	mov	r0, r5	@, NextInstId
	moveq	r3, #1	@ D.34621,
	str	r3, [r2, #-4]!	@ D.34621, para
	blx	ip	@ D.34623
.L288:
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L287	@
.L297:
	.align	2
.L296:
	.word	.LANCHOR0
	.word	.LC20
	.word	g_event_report
	.fnend
	.size	DNR_ProcessLastFrameError, .-DNR_ProcessLastFrameError
	.align	2
	.global	DNR_ProcessWaitTime
	.type	DNR_ProcessWaitTime, %function
DNR_ProcessWaitTime:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, .L305	@ tmp119,
	ldr	r3, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r3, #0	@ g_DnrSleepTime,
	ble	.L303	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r5, .L305+4	@ tmp128,
	ldr	r2, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r3, [r5, #4040]	@ timePrevDo, timePrevDo
	rsb	r0, r3, r0	@ D.34630, timePrevDo,
	cmp	r0, r2	@ D.34630, g_DnrSleepTime
	bcc	.L304	@,
.L301:
	bl	OSAL_GetTimeInMs	@
	mov	r3, #0	@ D.34628,
	str	r0, [r5, #4040]	@, timePrevDo
	mov	r0, r3	@, D.34628
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L304:
	mov	r3, #1	@ D.34628,
	mov	r0, r3	@, D.34628
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L303:
	ldr	r5, .L305+4	@ tmp128,
	b	.L301	@
.L306:
	.align	2
.L305:
	.word	g_DnrSleepTime
	.word	.LANCHOR1
	.fnend
	.size	DNR_ProcessWaitTime, .-DNR_ProcessWaitTime
	.align	2
	.global	DNR_DetNetworkParam
	.type	DNR_DetNetworkParam, %function
DNR_DetNetworkParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #48
	sub	sp, sp, #48	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r6, r1	@ pDnrCfg, pDnrCfg
	add	r0, sp, #4	@ tmp208,,
	mov	r1, #44	@,
	bl	__memzero	@
	ldr	r3, .L317	@ tmp138,
	ldr	r2, [r3]	@ D.34633, g_eVdmVersion
	sub	r3, r2, #3	@ D.34634, D.34633,
	cmp	r3, #1	@ D.34634,
	bls	.L312	@,
	ldr	r3, .L317+4	@ tmp140,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L315	@,
.L312:
	ldr	r4, .L317+8	@ tmp206,
	mov	r3, #1	@ D.34637,
.L308:
	cmp	r2, #3	@ D.34633,
	beq	.L316	@,
.L309:
	cmp	r2, #4	@ D.34633,
	movweq	r2, #11160	@ tmp165,
	movteq	r2, 1	@ tmp165,
	mlaeq	r2, r2, r5, r4	@ tmp166, tmp165, NextInstId, tmp206
	ldreq	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	streq	r2, [r6, #64]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, pDnrCfg_15(D)->dnr_stride_1d
.L310:
	movw	r2, #11160	@ tmp171,
	str	r3, [sp, #44]	@ D.34637, stDetPara.IsFrameStored
	movt	r2, 1	@ tmp171,
	add	r0, sp, #4	@ tmp209,,
	mla	r4, r2, r5, r4	@ tmp172, tmp171, NextInstId, tmp206
	ldr	ip, [r4, #184]	@ D.34637, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_width
	ldr	r1, [r4, #188]	@ D.34637, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_height
	ldr	r5, [r4, #72]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr
	add	r2, ip, #15	@ D.34637, D.34637,
	ldr	lr, [r4, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	add	r3, r1, #15	@ D.34637, D.34637,
	mov	r2, r2, asr #4	@ D.34637, D.34637,
	str	ip, [sp, #24]	@ D.34637, stDetPara.PicWidth
	mov	r3, r3, asr #4	@ D.34637, D.34637,
	str	r1, [sp, #28]	@ D.34637, stDetPara.PicHeight
	str	r2, [sp, #36]	@ D.34637, stDetPara.MbWidth
	str	r3, [sp, #40]	@ D.34637, stDetPara.MbHeight
	str	r5, [sp, #12]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	str	lr, [sp, #32]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, stDetPara.PicStride
	bl	DetPic	@
	str	r0, [r4, #20]	@ D.34637, s_DnrChan[NextInstId_3(D)].IsRwzb
	str	r0, [r4, #396]	@ D.34637, s_DnrChan[NextInstId_3(D)].Cur1DImage.optm_inf.Rwzb
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L315:
	ldr	r4, .L317+8	@ tmp206,
	movw	r1, #11160	@ tmp144,
	movt	r1, 1	@ tmp144,
	mla	r1, r1, r5, r4	@ tmp145, tmp144, NextInstId, tmp206
	ldr	r0, [r1, #340]	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard
	cmp	r0, #0	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard,
	bne	.L308	@,
	ldrb	r3, [r1, #328]	@ zero_extendqisi2	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	cmp	r2, #3	@ D.34633,
	clz	r3, r3	@ D.34637, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	mov	r3, r3, lsr #5	@ D.34637, D.34637,
	bne	.L309	@,
.L316:
	movw	r2, #11160	@ tmp158,
	movt	r2, 1	@ tmp158,
	mla	r2, r2, r5, r4	@ tmp159, tmp158, NextInstId, tmp206
	ldr	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	mov	r2, r2, asl #5	@ D.34634, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride,
	str	r2, [r6, #64]	@ D.34634, pDnrCfg_15(D)->dnr_stride_1d
	b	.L310	@
.L318:
	.align	2
.L317:
	.word	g_eVdmVersion
	.word	USE_FF_APT_EN
	.word	.LANCHOR0
	.fnend
	.size	DNR_DetNetworkParam, .-DNR_DetNetworkParam
	.align	2
	.global	DNR_GetSourceImgType
	.type	DNR_GetSourceImgType, %function
DNR_GetSourceImgType:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L325	@ tmp118,
	ldr	r3, [r3]	@ g_eVdmVersion, g_eVdmVersion
	sub	r3, r3, #3	@ D.34646, g_eVdmVersion,
	cmp	r3, #1	@ D.34646,
	bls	.L323	@,
	ldr	r3, .L325+4	@ tmp121,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L324	@,
.L323:
	mov	r0, #0	@ D.34644,
	bx	lr	@
.L324:
	ldr	r3, [r0, #16]	@ pImageDnr_6(D)->video_standard, pImageDnr_6(D)->video_standard
	cmp	r3, #0	@ pImageDnr_6(D)->video_standard,
	bne	.L323	@,
	ldrb	r0, [r0, #4]	@ zero_extendqisi2	@ D.34644, pImageDnr_6(D)->pic_structure
	bx	lr	@
.L326:
	.align	2
.L325:
	.word	g_eVdmVersion
	.word	USE_FF_APT_EN
	.fnend
	.size	DNR_GetSourceImgType, .-DNR_GetSourceImgType
	.align	2
	.global	DNR_SetDetPara
	.type	DNR_SetDetPara, %function
DNR_SetDetPara:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ NextInstId, NextInstId
	mov	r1, #44	@,
	mov	r4, r0	@ pDetPara, pDetPara
	mov	r6, r2	@ SourceImgStoreType, SourceImgStoreType
	bl	__memzero	@
	ldr	r1, .L329	@ tmp126,
	movw	r3, #11160	@ tmp128,
	movt	r3, 1	@ tmp128,
	clz	r2, r6	@ D.34654, SourceImgStoreType
	mla	r1, r3, r5, r1	@ tmp129, tmp128, NextInstId, tmp126
	mov	r2, r2, lsr #5	@ D.34654, D.34654,
	ldr	r3, [r1, #72]	@ D.34651, s_DnrChan[NextInstId_4(D)].Cur1DImage.luma_vir_addr
	str	r3, [r4, #8]	@ D.34651, pDetPara_1(D)->pPicBufY
	ldr	r0, [r1, #184]	@ D.34653, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	add	r3, r0, #15	@ D.34653, D.34653,
	str	r0, [r4, #20]	@ D.34653, pDetPara_1(D)->PicWidth
	ldr	ip, [r1, #188]	@ D.34653, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	mov	r3, r3, asr #4	@ D.34653, D.34653,
	add	r0, ip, #15	@ D.34653, D.34653,
	str	ip, [r4, #24]	@ D.34653, pDetPara_1(D)->PicHeight
	ldr	ip, [r1, #212]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride
	mov	r1, r0, asr #4	@ D.34653, D.34653,
	str	r2, [r4, #40]	@ D.34654, pDetPara_1(D)->IsFrameStored
	str	r1, [r4, #36]	@ D.34653, pDetPara_1(D)->MbHeight
	str	ip, [r4, #28]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, pDetPara_1(D)->PicStride
	str	r3, [r4, #32]	@ D.34653, pDetPara_1(D)->MbWidth
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L330:
	.align	2
.L329:
	.word	.LANCHOR0
	.fnend
	.size	DNR_SetDetPara, .-DNR_SetDetPara
	.align	2
	.global	DNR_SetDnrCfgDrDbDcEnable
	.type	DNR_SetDnrCfgDrDbDcEnable, %function
DNR_SetDnrCfgDrDbDcEnable:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	ip, #11160	@ tmp130,
	ldr	lr, .L343	@ tmp182,
	movt	ip, 1	@ tmp130,
	mla	ip, ip, r1, lr	@ tmp131, tmp130, NextInstId, tmp182
	ldr	r4, [ip, #20]	@ s_DnrChan[NextInstId_6(D)].IsRwzb, s_DnrChan[NextInstId_6(D)].IsRwzb
	cmp	r4, #0	@ s_DnrChan[NextInstId_6(D)].IsRwzb,
	bne	.L332	@,
	ldr	r2, [r2, #16]	@ D.34659, pImageDnr_8(D)->video_standard
	cmp	r2, #1	@ D.34659,
	cmpne	r2, #8	@, D.34659,
	moveq	r2, #1	@ tmp140,
	movne	r2, #0	@ tmp140,
	beq	.L332	@,
	ldr	r4, [r3, #32]	@ pDetPara_10(D)->MbWidth, pDetPara_10(D)->MbWidth
	cmp	r4, #45	@ pDetPara_10(D)->MbWidth,
	ble	.L342	@,
.L332:
	mov	r3, #0	@ tmp149,
	strb	r3, [r0, #2]	@ tmp149, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp149, pDnrCfg_14(D)->db_en
	strb	r3, [r0]	@ tmp149, pDnrCfg_14(D)->dc_en
.L334:
	ldr	ip, .L343+4	@ tmp183,
	movw	r3, #11160	@ tmp164,
	movt	r3, 1	@ tmp164,
	mla	r3, r3, r1, lr	@ tmp165, tmp164, NextInstId, tmp182
	ldr	r4, [ip, #4044]	@ D.34657, g_DREnable
	cmp	r4, #1	@ D.34657,
	ldrneb	r2, [r0, #2]	@ zero_extendqisi2	@ D.34661, pDnrCfg_14(D)->dr_en
	moveq	r2, r4	@ D.34661, D.34657
	sxtbne	r4, r2	@ D.34657, D.34661
	str	r4, [r3, #28]	@ D.34657, s_DnrChan[NextInstId_6(D)].enDR
	movw	r3, #11160	@ tmp171,
	uxtbne	r2, r2	@ D.34661, D.34661
	movt	r3, 1	@ tmp171,
	strb	r2, [r0, #2]	@ D.34661, pDnrCfg_14(D)->dr_en
	ldr	r4, [ip, #4048]	@ D.34657, g_DBEnable
	mla	r3, r3, r1, lr	@ tmp172, tmp171, NextInstId, tmp182
	cmp	r4, #1	@ D.34657,
	ldrneb	r2, [r0, #1]	@ zero_extendqisi2	@ D.34661, pDnrCfg_14(D)->db_en
	moveq	r2, r4	@ D.34661, D.34657
	sxtbne	r4, r2	@ D.34657, D.34661
	uxtbne	r2, r2	@ D.34661, D.34661
	str	r4, [r3, #32]	@ D.34657, s_DnrChan[NextInstId_6(D)].enDB
	strb	r2, [r0, #1]	@ D.34661, pDnrCfg_14(D)->db_en
	ldr	r2, [ip, #4052]	@ D.34657, g_DCEnable
	movw	ip, #11160	@ tmp178,
	movt	ip, 1	@ tmp178,
	mla	r1, ip, r1, lr	@ tmp179, tmp178, NextInstId, tmp182
	cmp	r2, #1	@ D.34657,
	ldrneb	r3, [r0]	@ zero_extendqisi2	@ D.34661, pDnrCfg_14(D)->dc_en
	moveq	r3, r2	@ D.34661, D.34657
	sxtbne	r2, r3	@ D.34657, D.34661
	uxtbne	r3, r3	@ D.34661, D.34661
	str	r2, [r1, #36]	@ D.34657, s_DnrChan[NextInstId_6(D)].enDC
	strb	r3, [r0]	@ D.34661, pDnrCfg_14(D)->dc_en
	ldmfd	sp!, {r4, pc}	@
.L342:
	ldr	r3, [r3, #36]	@ pDetPara_10(D)->MbHeight, pDetPara_10(D)->MbHeight
	cmp	r3, #36	@ pDetPara_10(D)->MbHeight,
	bgt	.L332	@,
	ldr	r3, [ip, #24]	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state, s_DnrChan[NextInstId_6(D)].userSetRwzb_state
	cmp	r3, #1	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state,
	beq	.L332	@,
	mov	r3, #1	@ tmp155,
	strb	r2, [r0]	@ tmp140, pDnrCfg_14(D)->dc_en
	strb	r3, [r0, #2]	@ tmp155, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp155, pDnrCfg_14(D)->db_en
	b	.L334	@
.L344:
	.align	2
.L343:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.fnend
	.size	DNR_SetDnrCfgDrDbDcEnable, .-DNR_SetDnrCfgDrDbDcEnable
	.align	2
	.global	DNR_SetDnrCfgPicStructure
	.type	DNR_SetDnrCfgPicStructure, %function
DNR_SetDnrCfgPicStructure:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r3, r0	@ pDnrCfg, pDnrCfg
	ldrb	r0, [r0, #3]	@ zero_extendqisi2	@ pDnrCfg_4(D)->pic_structure, pDnrCfg_4(D)->pic_structure
	cmp	r0, #4	@ pDnrCfg_4(D)->pic_structure,
	beq	.L355	@,
	ldr	r4, .L356	@ tmp190,
	movw	lr, #11160	@ tmp192,
	movt	lr, 1	@ tmp192,
	mov	ip, #0	@ tmp195,
	mov	r0, ip	@ D.34669, tmp195
	mla	r1, lr, r1, r4	@ tmp193, tmp192, NextInstId, tmp190
	str	ip, [r1, #16]	@ tmp195, s_DnrChan[NextInstId_6(D)].NeedStartAgain
.L353:
	ldrb	r1, [r2, #8]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->Range_mapuv
	strb	r1, [r3, #8]	@ D.34670, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #7]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.34670, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #6]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->Range_mapy
	strb	r1, [r3, #6]	@ D.34670, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2, #5]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->Range_mapy_flag
	strb	r2, [r3, #5]	@ D.34670, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L355:
	ldr	ip, .L356	@ tmp141,
	movw	r0, #11160	@ tmp143,
	movt	r0, 1	@ tmp143,
	mla	r1, r0, r1, ip	@ tmp144, tmp143, NextInstId, tmp141
	ldr	r0, [r1, #16]	@ D.34669, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	cmp	r0, #0	@ D.34669,
	bne	.L347	@,
	ldr	ip, [r1, #180]	@ D.34671, s_DnrChan[NextInstId_6(D)].Cur1DImage.format
	and	lr, ip, #3072	@ D.34671, D.34671,
	cmp	lr, #3072	@ D.34671,
	moveq	ip, #1	@ tmp157,
	streq	ip, [r1, #16]	@ tmp157, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	streqb	ip, [r3, #3]	@ tmp157, pDnrCfg_4(D)->pic_structure
	beq	.L353	@,
	tst	ip, #2048	@ D.34671,
	movne	r1, #2	@ tmp165,
	strneb	r1, [r3, #3]	@ tmp165, pDnrCfg_4(D)->pic_structure
	bne	.L354	@,
	tst	ip, #1024	@ D.34671,
	beq	.L351	@,
	mov	r1, #1	@ tmp172,
	strb	r1, [r3, #3]	@ tmp172, pDnrCfg_4(D)->pic_structure
	b	.L353	@
.L347:
	mov	r0, #0	@ tmp183,
	mov	ip, #2	@ tmp184,
	str	r0, [r1, #16]	@ tmp183, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	strb	ip, [r3, #3]	@ tmp184, pDnrCfg_4(D)->pic_structure
.L354:
	ldrb	r1, [r2, #3]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->bottom_Range_mapuv
	strb	r1, [r3, #8]	@ D.34670, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->bottom_Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.34670, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->bottom_Range_mapy
	strb	r1, [r3, #6]	@ D.34670, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.34670, pImageDnr_10(D)->bottom_Range_mapy_flag
	strb	r2, [r3, #5]	@ D.34670, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L351:
	mvn	r0, #0	@ D.34669,
	ldmfd	sp!, {r4, pc}	@
.L357:
	.align	2
.L356:
	.word	.LANCHOR0
	.fnend
	.size	DNR_SetDnrCfgPicStructure, .-DNR_SetDnrCfgPicStructure
	.align	2
	.global	DNR_SetDnrCfg
	.type	DNR_SetDnrCfg, %function
DNR_SetDnrCfg:
	.fnstart
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ pDnrCfg, pDnrCfg
	mov	r0, r3	@, pDetPara
	mov	r8, r3	@ pDetPara, pDetPara
	mov	r6, r1	@ NextInstId, NextInstId
	mov	r5, r2	@ pImageDnr, pImageDnr
	ldr	r9, [sp, #32]	@ SourceImgStoreType, SourceImgStoreType
	bl	DetPic	@
	ldr	r7, .L382	@ tmp318,
	movw	r2, #11160	@ tmp185,
	movt	r2, 1	@ tmp185,
	ldr	r3, .L382+4	@ tmp189,
	mla	r2, r2, r6, r7	@ tmp186, tmp185, NextInstId, tmp318
	str	r0, [r2, #20]	@, s_DnrChan[NextInstId_14(D)].IsRwzb
	strb	r9, [r4, #3]	@ SourceImgStoreType, pDnrCfg_18(D)->pic_structure
	ldr	r3, [r3]	@ D.34678, g_eVdmVersion
	cmp	r3, #3	@ D.34678,
	beq	.L379	@,
	cmp	r3, #4	@ D.34678,
	ldreq	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	streq	r3, [r4, #64]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, pDnrCfg_18(D)->dnr_stride_1d
.L360:
	mov	r3, r8	@, pDetPara
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgDrDbDcEnable	@
	ldr	r3, [r5, #16]	@ D.34679, pImageDnr_28(D)->video_standard
	movw	r1, #11160	@ tmp225,
	cmp	r3, #1	@ D.34679,
	movt	r1, 1	@ tmp225,
	str	r3, [r4, #16]	@ D.34679, pDnrCfg_18(D)->video_standard
	ldreqb	r3, [r5, #10]	@ zero_extendqisi2	@ D.34677, pImageDnr_28(D)->vc1_profile
	movne	r3, #3	@ tmp204,
	strneb	r3, [r4, #9]	@ tmp204, pDnrCfg_18(D)->vc1_profile
	mla	r1, r1, r6, r7	@ tmp226, tmp225, NextInstId, tmp318
	streqb	r3, [r4, #9]	@ D.34677, pDnrCfg_18(D)->vc1_profile
	ldreq	r3, [r5, #32]	@ D.34675, pImageDnr_28(D)->Rangedfrm
	streq	r3, [r4, #68]	@ D.34675, pDnrCfg_18(D)->Rangedfrm
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #0	@ pDnrCfg_18(D)->pic_structure,
	movw	r3, #11160	@ tmp209,
	movt	r3, 1	@ tmp209,
	mla	r3, r3, r6, r7	@ tmp210, tmp209, NextInstId, tmp318
	ldr	r8, [r3, #188]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height
	ldr	r3, .L382+8	@ tmp237,
	add	r8, r8, #15	@ D.34676, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height,
	ldr	r2, [r3]	@ g_VdmCharacter, g_VdmCharacter
	mov	r8, r8, lsr #4	@ CurPicHeightInMb, D.34676,
	ldr	r3, [r1, #184]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width
	addne	r8, r8, #1	@ D.34676, D.34676,
	add	r3, r3, #15	@ D.34676, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width,
	movne	r8, r8, lsr #1	@ CurPicHeightInMb, D.34676,
	str	r8, [r4, #28]	@ CurPicHeightInMb, pDnrCfg_18(D)->pic_height_in_mb
	ands	r2, r2, #4	@ D.34675, g_VdmCharacter,
	mov	r3, r3, lsr #4	@ D.34675, D.34676,
	str	r3, [r4, #24]	@ D.34675, pDnrCfg_18(D)->pic_width_in_mb
	mul	r0, r3, r8	@ D.34675, D.34675, CurPicHeightInMb
	mov	r3, r3, asl #4	@ D.34675, D.34675,
	addeq	r3, r3, #63	@ D.34675, D.34675,
	addne	r3, r3, #79	@ D.34675, D.34675,
	bic	r3, r3, #63	@ D.34675, D.34675,
	str	r0, [r4, #20]	@ D.34675, pDnrCfg_18(D)->mbtodec
	ldr	r1, [r1, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r3, [r4, #60]	@ D.34675, pDnrCfg_18(D)->ddr_stride
	ldr	r0, .L382	@ tmp249,
	str	r1, [r4, #32]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_1d
	movw	r1, #11160	@ tmp251,
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ D.34680, pImageDnr_28(D)->use_pic_qp_en
	movt	r1, 1	@ tmp251,
	mul	r1, r1, r6	@ tmp250, tmp251, NextInstId
	strb	r3, [r4, #10]	@ D.34680, pDnrCfg_18(D)->use_pic_qp_en
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ D.34677, pImageDnr_28(D)->chroma_format_idc
	add	ip, r7, r1	@ tmp252, tmp318, tmp250
	strb	r3, [r4, #4]	@ D.34677, pDnrCfg_18(D)->chroma_format_idc
	add	r3, ip, #75776	@ tmp254, tmp252,
	ldr	lr, [r5, #20]	@ D.34675, pImageDnr_28(D)->QP_Y
	str	lr, [r4, #48]	@ D.34675, pDnrCfg_18(D)->QP_Y
	ldr	lr, [r5, #24]	@ D.34675, pImageDnr_28(D)->QP_U
	str	lr, [r4, #52]	@ D.34675, pDnrCfg_18(D)->QP_U
	ldr	lr, [r5, #28]	@ D.34675, pImageDnr_28(D)->QP_V
	str	lr, [r4, #56]	@ D.34675, pDnrCfg_18(D)->QP_V
	ldr	lr, [r3, #872]	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag
	cmp	lr, #1	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag,
	beq	.L380	@,
	ldr	r9, [sp, #36]	@ tmp319, PicBufID
	mov	r3, #392	@ tmp273,
	movw	lr, #26552	@ tmp278,
	mla	r3, r3, r9, r1	@ tmp276, tmp273, tmp319, tmp250
	add	r3, r0, r3	@ tmp277, tmp249, tmp276
	ldr	r3, [r3, lr]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr
	str	r3, [r4, #36]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.34680, s_DnrChan[NextInstId_14(D)].s32MirrorEn
	strb	r3, [r4, #11]	@ D.34680, pDnrCfg_18(D)->s32MirrorEn
.L368:
	cmp	r2, #0	@ D.34675,
	beq	.L369	@,
	movw	r3, #11160	@ tmp288,
	movt	r3, 1	@ tmp288,
	mla	r3, r3, r6, r7	@ tmp289, tmp288, NextInstId, tmp318
	add	r2, r3, #75776	@ tmp296, tmp289,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ D.34680, s_DnrChan[NextInstId_14(D)].s32VcmpEn
	strb	r3, [r4, #12]	@ D.34680, pDnrCfg_18(D)->s32VcmpEn
	ldr	r3, [r2, #840]	@ D.34675, s_DnrChan[NextInstId_14(D)].s32VcmpWmStartLine
	str	r3, [r4, #76]	@ D.34675, pDnrCfg_18(D)->s32VcmpWmStartLine
	ldr	r3, [r2, #844]	@ D.34675, s_DnrChan[NextInstId_14(D)].s32VcmpWmEndLine
	str	r3, [r4, #80]	@ D.34675, pDnrCfg_18(D)->s32VcmpWmEndLine
.L369:
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgPicStructure	@
	cmn	r0, #1	@ D.34674,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #2	@ pDnrCfg_18(D)->pic_structure,
	beq	.L381	@,
	mov	r0, #0	@ D.34674,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L381:
	ldr	r3, [r4, #24]	@ pDnrCfg_18(D)->pic_width_in_mb, pDnrCfg_18(D)->pic_width_in_mb
	movw	r2, #11160	@ tmp312,
	movt	r2, 1	@ tmp312,
	mov	r0, #0	@ D.34674,
	mla	r6, r2, r6, r7	@ tmp313, tmp312, NextInstId, tmp318
	mul	r8, r3, r8	@ D.34675, pDnrCfg_18(D)->pic_width_in_mb, CurPicHeightInMb
	ldr	r2, [r6, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	mov	r3, r8, asl #8	@ tmp308, D.34675,
	add	r8, r3, r8, lsl #7	@ D.34675, tmp308, D.34675,
	add	r8, r8, r2	@ D.34676, D.34675, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r8, [r4, #32]	@ D.34676, pDnrCfg_18(D)->dnr_ystaddr_1d
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L380:
	ldr	r3, [r3, #896]	@ s_DnrChan[NextInstId_14(D)].pCaptureImageOut, s_DnrChan[NextInstId_14(D)].pCaptureImageOut
	ldr	r3, [r3, #120]	@ _82->luma_2d_phy_addr, _82->luma_2d_phy_addr
	str	r3, [r4, #36]	@ _82->luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldr	r3, [ip, #412]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate
	strb	r3, [r4, #11]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, pDnrCfg_18(D)->s32MirrorEn
	b	.L368	@
.L379:
	ldr	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	mov	r3, r3, asl #5	@ D.34676, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride,
	str	r3, [r4, #64]	@ D.34676, pDnrCfg_18(D)->dnr_stride_1d
	b	.L360	@
.L383:
	.align	2
.L382:
	.word	.LANCHOR0
	.word	g_eVdmVersion
	.word	g_VdmCharacter
	.fnend
	.size	DNR_SetDnrCfg, .-DNR_SetDnrCfg
	.align	2
	.global	DNR_SetImageLogic
	.type	DNR_SetImageLogic, %function
DNR_SetImageLogic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #11160	@ tmp183,
	movt	r3, 1	@ tmp183,
	mul	r3, r3, r0	@ tmp182, tmp183, NextInstId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0	@ NextInstId, NextInstId
	ldr	r6, .L401	@ tmp311,
	mov	r7, r1	@ pDnrCfg, pDnrCfg
	add	r1, r3, #40	@ tmp184, tmp182,
	add	r0, r6, r3	@ tmp188, tmp311, tmp182
	add	r1, r6, r1	@ pImg, tmp311, tmp184
	add	r0, r0, #75776	@ tmp190, tmp188,
	ldr	ip, [r0, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	ip, #0	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	moveq	r4, #392	@ tmp194,
	ldrne	r4, [r0, #896]	@ pImageLogic, s_DnrChan[NextInstId_7(D)].pCaptureImageOut
	mlaeq	r4, r4, r2, r3	@ tmp197, tmp194, PicBufID, tmp182
	addeq	r4, r4, #26368	@ tmp199, tmp197,
	addeq	r4, r4, #64	@ tmp199, tmp199,
	addeq	r4, r6, r4	@ pImageLogic, tmp311, tmp199
	cmp	r4, #0	@ pImageLogic,
	beq	.L397	@,
	mov	r2, #392	@,
	mov	r0, r4	@, pImageLogic
	ldr	r8, [r4, #120]	@ luma_2d_phy_addr, pImageLogic_1->luma_2d_phy_addr
	ldr	r9, [r4, #48]	@ luma_2d_vir_addr, pImageLogic_1->luma_2d_vir_addr
	bl	memcpy	@
	movw	r3, #11160	@ tmp214,
	ldr	r2, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	movt	r3, 1	@ tmp214,
	str	r8, [r4, #120]	@ luma_2d_phy_addr, pImageLogic_1->luma_2d_phy_addr
	mla	r3, r3, r5, r6	@ tmp215, tmp214, NextInstId, tmp311
	str	r9, [r4, #48]	@ luma_2d_vir_addr, pImageLogic_1->luma_2d_vir_addr
	str	r2, [r4, #172]	@ pDnrCfg_18(D)->ddr_stride, pImageLogic_1->image_stride
	add	r3, r3, #75776	@ tmp217, tmp215,
	ldr	r3, [r3, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r3, #1	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	beq	.L398	@,
	ldr	r0, [r7, #28]	@ pDnrCfg_18(D)->pic_height_in_mb, pDnrCfg_18(D)->pic_height_in_mb
	ldr	r2, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	ldrb	r3, [r7, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	mov	r0, r0, asl #4	@ D.34685, pDnrCfg_18(D)->pic_height_in_mb,
	cmp	r3, #0	@ pDnrCfg_18(D)->pic_structure,
	mul	r3, r2, r0	@ D.34685, pDnrCfg_18(D)->ddr_stride, D.34685
	moveq	r0, #1	@ D.34685,
	movne	r0, #2	@ D.34685,
	mla	r0, r0, r3, r8	@ D.34686, D.34685, D.34685, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.34686, pImageLogic_1->chrom_2d_phy_addr
.L390:
	bl	MEM_Phy2Vir	@
	movw	r3, #11160	@ tmp230,
	movt	r3, 1	@ tmp230,
	ldr	r9, [r4, #120]	@ D.34686, pImageLogic_1->luma_2d_phy_addr
	mla	r3, r3, r5, r6	@ tmp231, tmp230, NextInstId, tmp311
	ldr	r8, [r4, #124]	@ D.34686, pImageLogic_1->chrom_2d_phy_addr
	str	r9, [r4, #88]	@ D.34686, pImageLogic_1->top_luma_phy_addr
	mov	ip, #1	@ tmp248,
	movw	r2, #11160	@ tmp251,
	bfi	r2, ip, #16, #16	@ tmp251, tmp248,,
	str	r8, [r4, #92]	@ D.34686, pImageLogic_1->top_chrom_phy_addr
	mov	lr, #0	@ tmp247,
	mla	r2, r2, r5, r6	@ tmp252, tmp251, NextInstId, tmp311
	add	r2, r2, #75776	@ tmp254, tmp252,
	str	r0, [r4, #52]	@, pImageLogic_1->chrom_2d_vir_addr
	ldr	r1, [r3, #20]	@ D.34686, s_DnrChan[NextInstId_7(D)].IsRwzb
	str	r1, [r4, #356]	@ D.34686, pImageLogic_1->optm_inf.Rwzb
	ldr	r1, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	add	r0, r1, r9	@ D.34686, pDnrCfg_18(D)->ddr_stride, D.34686
	str	r0, [r4, #96]	@ D.34686, pImageLogic_1->btm_luma_phy_addr
	ldr	r1, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	add	r1, r1, r8	@ D.34686, pDnrCfg_18(D)->ddr_stride, D.34686
	str	r1, [r4, #100]	@ D.34686, pImageLogic_1->btm_chrom_phy_addr
	ldr	r1, [r3, #416]	@ D.34686, MEM[(struct IMAGE *)&s_DnrChan][NextInstId_7(D)].Cur1DImage.u32IsLastFrame
	str	r1, [r4, #376]	@ D.34686, pImageLogic_1->u32IsLastFrame
	ldr	r1, [r3, #452]	@ D.34685, s_DnrChan[NextInstId_7(D)].s32ImgBlockMemSize
	str	ip, [r4, #368]	@ tmp248, pImageLogic_1->is_processed_by_dnr
	str	lr, [r4, #364]	@ tmp247, pImageLogic_1->u32Is1D
	str	r1, [r4, #360]	@ D.34685, pImageLogic_1->ImgSize
	ldr	r2, [r2, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r2, lr	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	beq	.L399	@,
.L392:
	ldr	r3, .L401+4	@ tmp272,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L394	@,
	movw	r1, #11160	@ tmp277,
	ldr	r2, [r4, #148]	@ pImageLogic_1->image_height, pImageLogic_1->image_height
	movt	r1, 1	@ tmp277,
	ldr	r3, [r4, #144]	@ pImageLogic_1->image_width, pImageLogic_1->image_width
	mla	r5, r1, r5, r6	@ tmp278, tmp277, NextInstId, tmp311
	add	r2, r2, #15	@ D.34686, pImageLogic_1->image_height,
	add	r3, r3, #15	@ D.34686, pImageLogic_1->image_width,
	bic	ip, r2, #15	@ D.34685, D.34686,
	bic	r3, r3, #15	@ D.34685, D.34686,
	add	r1, r5, #75776	@ tmp290, tmp278,
	ldrb	r0, [r5, #2]	@ zero_extendqisi2	@ D.34689, s_DnrChan[NextInstId_7(D)].s32VcmpEn
	cmp	r0, #1	@ D.34689,
	strb	r0, [r4, #296]	@ D.34689, pImageLogic_1->ImageDnr.s32VcmpEn
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ D.34689, s_DnrChan[NextInstId_7(D)].s32WmEn
	strb	r0, [r4, #297]	@ D.34689, pImageLogic_1->ImageDnr.s32WmEn
	ldr	r0, [r1, #840]	@ D.34685, s_DnrChan[NextInstId_7(D)].s32VcmpWmStartLine
	str	r0, [r4, #320]	@ D.34685, pImageLogic_1->ImageDnr.s32VcmpWmStartLine
	ldr	r1, [r1, #844]	@ D.34685, s_DnrChan[NextInstId_7(D)].s32VcmpWmEndLine
	str	ip, [r4, #332]	@ D.34685, pImageLogic_1->ImageDnr.s32VcmpFrameHeight
	str	r3, [r4, #328]	@ D.34685, pImageLogic_1->ImageDnr.s32VcmpFrameWidth
	str	r1, [r4, #324]	@ D.34685, pImageLogic_1->ImageDnr.s32VcmpWmEndLine
	beq	.L400	@,
.L394:
	mov	r0, #0	@ D.34684,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L399:
	add	r3, r3, #75776	@ tmp261, tmp231,
	ldr	r1, [r3, #900]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable, s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable
	cmp	r1, ip	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable,
	streq	r2, [r4, #372]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, pImageLogic_1->u32Circumrotate
	ldreq	r3, [r3, #912]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn
	streqb	r3, [r7, #11]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, pDnrCfg_18(D)->s32MirrorEn
	b	.L392	@
.L400:
	ldr	r3, [r4, #172]	@ pImageLogic_1->image_stride, pImageLogic_1->image_stride
	mov	r2, r2, lsr #4	@ D.34686, D.34686,
	ldr	r1, [r4, #88]	@ pImageLogic_1->top_luma_phy_addr, pImageLogic_1->top_luma_phy_addr
	mov	r0, #0	@ D.34684,
	add	r3, r3, #2	@ D.34686, pImageLogic_1->image_stride,
	mov	r3, r3, asl #4	@ D.34686, D.34686,
	mla	r2, r2, r3, r1	@ D.34686, D.34686, D.34686, pImageLogic_1->top_luma_phy_addr
	str	r2, [r4, #92]	@ D.34686, pImageLogic_1->top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L398:
	ldr	r3, [r7, #28]	@ pDnrCfg_18(D)->pic_height_in_mb, pDnrCfg_18(D)->pic_height_in_mb
	ldr	r0, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	mov	r3, r3, asl #4	@ D.34685, pDnrCfg_18(D)->pic_height_in_mb,
	mla	r0, r0, r3, r8	@ D.34686, pDnrCfg_18(D)->ddr_stride, D.34685, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.34686, pImageLogic_1->chrom_2d_phy_addr
	b	.L390	@
.L397:
	movw	r2, #1128	@,
	ldr	r1, .L401+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34684,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L402:
	.align	2
.L401:
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.word	.LC21
	.fnend
	.size	DNR_SetImageLogic, .-DNR_SetImageLogic
	.align	2
	.global	DNR_PrecessChanLastFrame
	.type	DNR_PrecessChanLastFrame, %function
DNR_PrecessChanLastFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #11160	@ tmp131,
	movt	r3, 1	@ tmp131,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mul	r4, r3, r0	@ tmp130, tmp131, NextInstId
	ldr	r7, .L438	@ tmp129,
	mov	r6, r0	@ NextInstId, NextInstId
	add	r5, r4, #40	@ tmp132, tmp130,
	add	r5, r7, r5	@ D.34699, tmp129, tmp132
	mov	r1, r5	@, D.34699
	bl	VCTRL_GetChanImage	@
	subs	r8, r0, #0	@ D.34697,
	bne	.L404	@,
	add	r3, r7, r4	@ tmp136, tmp129, tmp130
	add	r1, r3, #75776	@ tmp138, tmp136,
	ldr	r2, [r1, #852]	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag, s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag,
	beq	.L405	@,
	mov	r0, #1	@ tmp145,
	movw	r2, #11160	@ tmp148,
	bfi	r2, r0, #16, #16	@ tmp148, tmp145,,
	str	r0, [r3, #432]	@ tmp145, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mla	r7, r2, r6, r7	@ tmp149, tmp148, NextInstId, tmp129
	ldr	r2, [r7, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L407	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L407	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	blt	.L437	@,
.L436:
	mov	r8, #0	@ D.34697,
.L410:
	mov	r0, r8	@, D.34697
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L407:
	mov	r0, r6	@, NextInstId
	mov	r8, #1	@ D.34697,
	bl	DNR_ProcessLastFrameError	@
	mov	r0, r8	@, D.34697
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L404:
	mov	r0, r6	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L436	@,
	movw	r3, #1244	@,
	ldr	r2, .L438+4	@,
	ldr	r1, .L438+8	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	add	r0, r4, #968	@ tmp203, tmp130,
	add	r0, r7, r0	@, tmp129, tmp203
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L438+12	@ tmp205,
	ldr	ip, [r2]	@ D.34702, g_event_report
	cmp	ip, #0	@ D.34702,
	mov	r3, r0	@ ret,
	beq	.L413	@,
	cmn	r0, #1	@ ret,
	add	r2, sp, #8	@ tmp206,,
	mov	r1, #115	@,
	mov	r0, r6	@, NextInstId
	moveq	r3, #1	@ D.34698,
	str	r3, [r2, #-4]!	@ D.34698, para
	blx	ip	@ D.34702
.L413:
	mov	r0, r6	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L436	@
.L405:
	ldr	r2, [r3, #108]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag,
	bne	.L407	@,
	ldr	r0, [r3, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	str	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r0, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L407	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L407	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	bge	.L436	@,
	mov	r1, r5	@, D.34699
	mov	r0, r6	@, NextInstId
	bl	DNR_FastBackOptimize	@
	cmp	r0, #0	@,
	beq	.L436	@,
	ldr	r1, .L438+16	@,
	mov	r0, r8	@, D.34697
	bl	dprint_vfmw	@
	b	.L410	@
.L437:
	mov	r1, r5	@, D.34699
	mov	r0, r6	@, NextInstId
	bl	DNR_FastForwardFastBack	@
	cmp	r0, #0	@,
	beq	.L436	@,
	ldr	r1, .L438+20	@,
	mov	r0, r8	@, D.34697
	bl	dprint_vfmw	@
	b	.L410	@
.L439:
	.align	2
.L438:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LC24
	.word	g_event_report
	.word	.LC23
	.word	.LC22
	.fnend
	.size	DNR_PrecessChanLastFrame, .-DNR_PrecessChanLastFrame
	.align	2
	.global	DNR_InsertQueueWithDSD
	.type	DNR_InsertQueueWithDSD, %function
DNR_InsertQueueWithDSD:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #11160	@ tmp145,
	movt	r3, 1	@ tmp145,
	mul	r3, r3, r0	@ tmp144, tmp145, NextInstId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0	@ NextInstId, NextInstId
	ldr	r4, .L459	@ tmp323,
	.pad #16
	sub	sp, sp, #16	@,,
	add	r6, r4, r3	@ tmp146, tmp323, tmp144
	add	r9, r6, #75776	@ tmp148, tmp146,
	ldr	r2, [r9, #848]	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed
	cmp	r2, #0	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed,
	blt	.L441	@,
	ldr	r2, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r8, r3, #40	@ tmp172, tmp144,
	ldr	ip, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r8, r4, r8	@ D.34717, tmp323, tmp172
	add	r0, r3, #968	@ tmp176, tmp144,
	add	r2, r2, #6	@ D.34715, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r3, ip, r2	@ D.34715, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.34715
	add	r0, r4, r0	@, tmp323, tmp176
	mov	r1, r8	@, D.34717
	str	r3, [r6, #216]	@ D.34715, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L442	@,
	ldr	r0, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	movw	r3, #19174	@ tmp185,
	ldr	r1, .L459+4	@ tmp196,
	mov	r7, #0	@ tmp195,
	mov	r2, #2	@ tmp189,
	str	r7, [r6, #432]	@ tmp195, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	mla	r3, r3, r5, r0	@ tmp186, tmp185, NextInstId, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	ip, [r1]	@ D.34718, g_event_report
	cmp	ip, r7	@ D.34718,
	add	r3, r3, #178	@ tmp188, tmp186,
	moveq	r7, ip	@ D.34713, D.34718
	str	r2, [r4, r3, asl #2]	@ tmp189, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	beq	.L443	@,
	add	r2, sp, #16	@ tmp197,,
	mov	r0, r5	@, NextInstId
	mov	r1, #5	@,
	str	r8, [r2, #-4]!	@ D.34717, para
	blx	ip	@ D.34718
.L443:
	mov	r0, r7	@, D.34713
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L441:
	movw	r10, #51520	@ tmp205,
	add	r8, r6, #51456	@ tmp206, tmp146,
	ldr	r7, [r6, r10]	@ D.34713, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
	add	r8, r8, #64	@ tmp206, tmp206,
	cmp	r7, #0	@ D.34713,
	beq	.L457	@,
	ldr	r0, [r8, #4]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	mov	r2, #392	@ tmp239,
	ldr	r1, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r7, r3, #40	@ tmp229, tmp144,
	ldr	ip, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r7, r4, r7	@ D.34717, tmp323, tmp229
	mla	r0, r2, r0, r3	@ tmp242, tmp239, s_DnrChan[NextInstId_4(D)].TempImageNum, tmp144
	add	r3, r1, #6	@ D.34715, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r3, ip, r3	@ D.34715, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.34715
	mov	r1, r7	@, D.34717
	str	r3, [r6, #216]	@ D.34715, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r0, r0, #51456	@ tmp244, tmp242,
	add	r0, r0, #72	@ tmp244, tmp244,
	add	r0, r4, r0	@, tmp323, tmp244
	bl	memcpy	@
	ldr	r2, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	movw	r3, #19174	@ tmp257,
	ldr	ip, [r9, #864]	@ s_DnrChan[NextInstId_4(D)].u32VoFrmNum, s_DnrChan[NextInstId_4(D)].u32VoFrmNum
	ldr	r1, [r6, #448]	@ s_DnrChan[NextInstId_4(D)].s32ValidImgNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	mov	r0, #4	@ tmp261,
	mla	r3, r3, r5, r2	@ tmp258, tmp257, NextInstId, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	r2, [r8, #4]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	rsb	r1, ip, r1	@ D.34715, s_DnrChan[NextInstId_4(D)].u32VoFrmNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	add	r2, r2, #1	@ D.34714, s_DnrChan[NextInstId_4(D)].TempImageNum,
	str	r2, [r8, #4]	@ D.34714, s_DnrChan[NextInstId_4(D)].TempImageNum
	add	r3, r3, #178	@ tmp260, tmp258,
	cmp	r2, r1	@ D.34714, D.34715
	str	r0, [r4, r3, asl #2]	@ tmp261, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	bcc	.L458	@,
	mov	r3, #0	@ tmp301,
	str	r3, [r6, r10]	@ tmp301, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
.L446:
	mov	r1, r7	@, D.34717
	mov	r0, r5	@, NextInstId
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L447	@,
	movw	r3, #11160	@ tmp304,
	movw	r2, #1306	@,
	movt	r3, 1	@ tmp304,
	ldr	r1, .L459+8	@,
	mla	r3, r3, r5, r4	@ tmp305, tmp304, NextInstId, tmp323
	mov	r0, #0	@,
	add	ip, r3, #51456	@ tmp307, tmp305,
	ldr	lr, [r3, #448]	@ s_DnrChan[NextInstId_4(D)].s32ValidImgNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	ldr	r3, [ip, #68]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	str	lr, [sp]	@ s_DnrChan[NextInstId_4(D)].s32ValidImgNum,
	bl	dprint_vfmw	@
	b	.L447	@
.L458:
	ldr	r3, [r6, #264]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame, s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame,
	beq	.L446	@,
.L447:
	movw	r2, #11160	@ tmp318,
	mov	r3, #0	@ tmp321,
	movt	r2, 1	@ tmp318,
	mov	r7, r3	@ D.34713, tmp321
	mla	r4, r2, r5, r4	@ tmp319, tmp318, NextInstId, tmp323
	mov	r0, r7	@, D.34713
	str	r3, [r4, #432]	@ tmp321, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L457:
	bl	DNR_ClearTempImage	@
	mov	r0, r7	@, D.34713
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L442:
	movw	r3, #1274	@,
	ldr	r2, .L459+12	@,
	ldr	r1, .L459+16	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ D.34713,
	b	.L443	@
.L460:
	.align	2
.L459:
	.word	.LANCHOR0
	.word	g_event_report
	.word	.LC26
	.word	.LANCHOR2+28
	.word	.LC25
	.fnend
	.size	DNR_InsertQueueWithDSD, .-DNR_InsertQueueWithDSD
	.align	2
	.global	DNR_IsStdNeedProcess
	.type	DNR_IsStdNeedProcess, %function
DNR_IsStdNeedProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #10	@ D.34727, eVidStd,
	cmp	r3, #2	@ D.34727,
	bhi	.L462	@,
	ldr	r3, .L465	@ tmp122,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L464	@,
.L462:
	sub	r3, r0, #14	@ D.34730, eVidStd,
	bics	r3, r3, #4	@ tmp133, D.34730,
	moveq	r3, #1	@ tmp128,
	movne	r3, #0	@ tmp128,
	cmp	r0, #4	@ eVidStd,
	movne	r0, r3	@, D.34726, tmp128
	orreq	r0, r3, #1	@,, D.34726, tmp128
	bx	lr	@
.L464:
	mov	r0, #1	@ D.34726,
	bx	lr	@
.L466:
	.align	2
.L465:
	.word	g_VdmCharacter
	.fnend
	.size	DNR_IsStdNeedProcess, .-DNR_IsStdNeedProcess
	.align	2
	.global	DNR_DSDProcess
	.type	DNR_DSDProcess, %function
DNR_DSDProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #11160	@ tmp140,
	ldr	r4, .L475	@ tmp138,
	movt	r3, 1	@ tmp140,
	mov	lr, r0	@ NextInstId, NextInstId
	mla	r4, r3, r0, r4	@ tmp141, tmp140, NextInstId, tmp138
	add	r2, r4, #75776	@ tmp143, tmp141,
	add	r5, r2, #896	@ tmp142, tmp143,
	ldr	r3, [r2, #900]	@ D.34740, s_DnrChan[NextInstId_4(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ D.34740,
	movne	r3, #0	@ D.34740,
	beq	.L474	@,
.L468:
	mov	r0, r3	@, D.34740
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L474:
	ldr	ip, [r4, #432]	@ D.34741, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	ip, #1	@ D.34741,
	bne	.L468	@,
	ldr	r3, [r4, #184]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	add	ip, r2, #904	@ tmp158, tmp143,
	ldr	r5, [r2, #904]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrWidth, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrWidth
	add	r7, r4, #184	@ tmp153, tmp141,
	ldr	r6, [r2, #908]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrHeight, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r4, #188]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	cmp	r3, r5	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrWidth
	cmple	r2, r6	@, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrHeight
	movgt	r3, #1	@ tmp181,
	movle	r3, #0	@ tmp181,
	ble	.L468	@,
	ldr	ip, [ip, #8]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn
	mov	r3, r4	@ tmp198, tmp141
	mov	r2, #0	@ tmp187,
	str	r2, [r3, #408]!	@ tmp187, s_DnrChan[NextInstId_4(D)].Cur1DImage.is_processed_by_dnr
	str	r2, [r4, #404]	@ tmp187, s_DnrChan[NextInstId_4(D)].Cur1DImage.u32Is1D
	mov	r5, r0	@ NextInstId, NextInstId
	str	ip, [r3, #4]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_4(D)].Cur1DImage.u32Circumrotate
	bl	DNR_DetNetworkParam	@
	ldr	r2, [r4, #188]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	ldr	r3, [r4, #184]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	mov	r0, r5	@, NextInstId
	add	r2, r2, #31	@ D.34742, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height,
	ldr	r1, [r4, #128]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr
	add	r3, r3, #15	@ D.34742, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width,
	mov	r2, r2, lsr #5	@ D.34742, D.34742,
	bic	r3, r3, #15	@ D.34742, D.34742,
	mul	r3, r2, r3	@ D.34742, D.34742, D.34742
	add	r3, r1, r3, lsl #5	@ D.34742, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, D.34742,
	str	r3, [r4, #132]	@ D.34742, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_chrom_phy_addr
	bl	DNR_InsertQueueWithDSD	@
	cmn	r0, #1	@ D.34740,
	mov	r3, r0	@ D.34740,
	moveq	r3, r0	@ D.34740, D.34740
	movne	r3, #1	@ D.34740,
	b	.L468	@
.L476:
	.align	2
.L475:
	.word	.LANCHOR0
	.fnend
	.size	DNR_DSDProcess, .-DNR_DSDProcess
	.align	2
	.global	DNR_Fsp_Reset
	.type	DNR_Fsp_Reset, %function
DNR_Fsp_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L479	@ tmp113,
	movw	r3, #11160	@ tmp115,
	movt	r3, 1	@ tmp115,
	mov	r1, #256	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mla	r0, r3, r0, r2	@ tmp116, tmp115, ChanID, tmp113
	add	r0, r0, #712	@, tmp116,
	bl	__memzero	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L480:
	.align	2
.L479:
	.word	.LANCHOR0
	.fnend
	.size	DNR_Fsp_Reset, .-DNR_Fsp_Reset
	.align	2
	.global	DNR_Fsp_Init
	.type	DNR_Fsp_Init, %function
DNR_Fsp_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, .L485	@ ivtmp.321,
	ldr	r5, .L485+4	@ D.34756,
.L482:
	mov	r0, r4	@, ivtmp.321
	add	r4, r4, #75776	@ ivtmp.321, ivtmp.321,
	add	r4, r4, #920	@ ivtmp.321, ivtmp.321,
	mov	r1, #256	@,
	bl	__memzero	@
	cmp	r4, r5	@ ivtmp.321, D.34756
	bne	.L482	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L486:
	.align	2
.L485:
	.word	.LANCHOR0+712
	.word	.LANCHOR0+307496
	.fnend
	.size	DNR_Fsp_Init, .-DNR_Fsp_Init
	.align	2
	.global	DNR_Fsp_ShowPic
	.type	DNR_Fsp_ShowPic, %function
DNR_Fsp_ShowPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r5, r1	@ pPicBufID, pPicBufID
	mov	r6, r0	@ ChanID, ChanID
	bl	VCTRL_GetFrameInterface	@
	movw	r3, #11160	@ tmp143,
	movt	r3, 1	@ tmp143,
	ldr	r1, .L507	@ tmp221,
	mul	r3, r3, r6	@ tmp142, tmp143, ChanID
	add	r2, r1, r3	@ tmp144, tmp221, tmp142
	ldr	ip, [r2, #448]	@ D.34775, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	cmp	ip, #0	@ D.34775,
	ble	.L496	@,
	ldr	r2, [r2, #712]	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #1	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed,
	addhi	r3, r3, #712	@ D.34777, tmp142,
	movhi	r4, #0	@ i,
	addhi	r3, r1, r3	@ ivtmp.329, tmp221, D.34777
	bhi	.L492	@,
	b	.L505	@
.L495:
	ldr	r2, [r3, #4]!	@ MEM[base: _4, offset: 0B], MEM[base: _4, offset: 0B]
	cmp	r2, #1	@ MEM[base: _4, offset: 0B],
	bls	.L490	@,
.L492:
	add	r4, r4, #1	@ i, i,
	cmp	r4, ip	@ i, D.34775
	bne	.L495	@,
.L496:
	mvn	r0, #0	@ D.34770,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L505:
	mov	r4, #0	@ i,
.L490:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5]	@ i, *pPicBufID_13(D)
	beq	.L494	@,
	ldr	r3, [r0, #4]	@ D.34773, pstFrameIntf_9->get_frame
	cmp	r3, #0	@ D.34773,
	beq	.L494	@,
	movw	r5, #19174	@ tmp159,
	ldr	r7, .L507	@ tmp157,
	mla	r5, r5, r6, r4	@ tmp160, tmp159, ChanID, i
	add	r5, r5, #178	@ tmp161, tmp160,
	ldr	r2, [r1, r5, asl #2]	@ tmp162, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #0	@ tmp162,
	beq	.L506	@,
.L494:
	movw	r3, #19174	@ tmp216,
	mov	r0, #0	@ D.34770,
	mla	r4, r3, r6, r4	@ tmp217, tmp216, ChanID, i
	mov	r3, #1	@ tmp219,
	add	r4, r4, #178	@ tmp218, tmp217,
	str	r3, [r1, r4, asl #2]	@ tmp219, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L506:
	movw	r2, #11160	@ tmp165,
	mov	r0, r6	@, ChanID
	movt	r2, 1	@ tmp165,
	add	r1, sp, #4	@,,
	mul	r6, r2, r6	@ tmp164, tmp165, ChanID
	add	r2, r7, r6	@ tmp166, tmp157, tmp164
	ldr	ip, [r2, #184]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_width, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width
	ldr	r2, [r2, #188]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_height, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height
	add	ip, ip, #63	@ D.34775, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width,
	add	r2, r2, #15	@ D.34775, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height,
	bic	ip, ip, #63	@ D.34775, D.34775,
	bic	r2, r2, #15	@ D.34775, D.34775,
	mul	r2, r2, ip	@ D.34775, D.34775, D.34775
	add	r2, r2, r2, lsl #1	@ D.34775, D.34775, D.34775,
	mov	r2, r2, asr #1	@, D.34775,
	blx	r3	@ D.34773
	cmp	r0, #0	@ D.34770
	bne	.L496	@,
	mov	r3, #392	@ tmp190,
	ldr	ip, [sp, #8]	@ ExtFrame.VirAddr, ExtFrame.VirAddr
	mla	r6, r3, r4, r6	@ tmp193, tmp190, i, tmp164
	ldr	r2, [sp, #4]	@ ExtFrame.PhyAddr, ExtFrame.PhyAddr
	mov	lr, #1	@ tmp213,
	str	lr, [r7, r5, asl #2]	@ tmp213, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	movw	r1, #26480	@ tmp195,
	movw	r3, #26552	@ tmp205,
	add	r7, r7, r6	@ tmp194, tmp157, tmp193
	str	ip, [r7, r1]	@ ExtFrame.VirAddr, s_DnrChan[ChanID_7(D)].LogicImagePool[i_41].luma_2d_vir_addr
	str	r2, [r7, r3]	@ ExtFrame.PhyAddr, s_DnrChan[ChanID_7(D)].LogicImagePool[i_41].luma_2d_phy_addr
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L508:
	.align	2
.L507:
	.word	.LANCHOR0
	.fnend
	.size	DNR_Fsp_ShowPic, .-DNR_Fsp_ShowPic
	.align	2
	.type	DNR_Get2DFrameStore.part.9, %function
DNR_Get2DFrameStore.part.9:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #11160	@ tmp130,
	ldr	r6, .L518	@ tmp170,
	movt	r3, 1	@ tmp130,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ NextInstId, NextInstId
	mov	r7, r1	@ pPicBufID, pPicBufID
	mla	r3, r3, r0, r6	@ tmp131, tmp130, NextInstId, tmp170
	ldr	r5, [r3, #184]	@ D.34781, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_width
	ldr	r2, [r3, #436]	@ D.34782, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	ldr	r8, [r3, #188]	@ D.34781, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_height
	cmp	r5, r2	@ D.34781, D.34782
	beq	.L517	@,
.L510:
	ldr	r3, .L518+4	@ tmp149,
	ldr	ip, [r3]	@ D.34783, g_event_report
	cmp	ip, #0	@ D.34783,
	beq	.L512	@,
	movw	r3, #11160	@ tmp152,
	strh	r2, [sp]	@ movhi	@ D.34782, para
	movt	r3, 1	@ tmp152,
	strh	r5, [sp, #4]	@ movhi	@ D.34781, para
	mla	r3, r3, r4, r6	@ tmp153, tmp152, NextInstId, tmp170
	strh	r8, [sp, #6]	@ movhi	@ D.34781, para
	mov	r2, sp	@,
	mov	r1, #8	@,
	mov	r0, r4	@, NextInstId
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	strh	r3, [sp, #2]	@ movhi	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, para
	blx	ip	@ D.34783
.L512:
	movw	r3, #11160	@ tmp159,
	movt	r3, 1	@ tmp159,
	mla	r3, r3, r4, r6	@ tmp160, tmp159, NextInstId, tmp170
	str	r5, [r3, #436]	@ D.34781, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	str	r8, [r3, #440]	@ D.34781, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
.L511:
	mov	r1, r7	@, pPicBufID
	mov	r0, r4	@, NextInstId
	bl	DNR_Fsp_ShowPic	@
	adds	r0, r0, #0	@,,
	movne	r0, #1	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L517:
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	cmp	r8, r3	@ D.34781, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	bne	.L510	@,
	b	.L511	@
.L519:
	.align	2
.L518:
	.word	.LANCHOR0
	.word	g_event_report
	.fnend
	.size	DNR_Get2DFrameStore.part.9, .-DNR_Get2DFrameStore.part.9
	.align	2
	.global	DNR_Get2DFrameStore
	.type	DNR_Get2DFrameStore, %function
DNR_Get2DFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L523	@ tmp115,
	movw	r3, #11160	@ tmp117,
	movt	r3, 1	@ tmp117,
	mla	r3, r3, r0, r2	@ tmp118, tmp117, NextInstId, tmp115
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc,
	beq	.L522	@,
	mov	r0, #1	@,
	bx	lr	@
.L522:
	b	DNR_Get2DFrameStore.part.9	@
.L524:
	.align	2
.L523:
	.word	.LANCHOR0
	.fnend
	.size	DNR_Get2DFrameStore, .-DNR_Get2DFrameStore
	.align	2
	.global	DNR_ProcessChannel
	.type	DNR_ProcessChannel, %function
DNR_ProcessChannel:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	r3, #11160	@ tmp131,
	ldr	r6, .L543	@ tmp225,
	movt	r3, 1	@ tmp131,
	mla	r3, r3, r0, r6	@ tmp132, tmp131, NextInstId, tmp225
	ldr	r5, [r3, #16]	@ D.34799, s_DnrChan[NextInstId_5(D)].NeedStartAgain
	cmp	r5, #0	@ D.34799,
	bne	.L526	@,
	mov	r9, r2	@ pDnrCfg, pDnrCfg
	ldr	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mov	r7, r1	@ pPicBufID, pPicBufID
	mov	r8, r0	@ NextInstId, NextInstId
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L527	@,
	add	r3, r3, #75776	@ tmp145, tmp132,
	ldr	r10, [r3, #872]	@ D.34801, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
.L528:
	cmp	r10, #1	@ D.34801,
	beq	.L541	@,
	mov	r1, r9	@, pDnrCfg
	mov	r0, r8	@, NextInstId
	bl	DNR_DSDProcess	@
	cmp	r0, #1	@ result,
	beq	.L536	@,
	cmn	r0, #1	@ result,
	beq	.L535	@,
.L532:
	movw	r3, #11160	@ tmp194,
	mov	r2, #0	@ tmp197,
	movt	r3, 1	@ tmp194,
	mla	r3, r3, r8, r6	@ tmp195, tmp194, NextInstId, tmp225
	add	r1, r3, #75776	@ tmp209, tmp195,
	ldr	r1, [r1, #872]	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	str	r2, [r3, #404]	@ tmp197, s_DnrChan[NextInstId_5(D)].Cur1DImage.u32Is1D
	cmp	r1, r2	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag,
	str	r2, [r3, #408]	@ tmp197, s_DnrChan[NextInstId_5(D)].Cur1DImage.is_processed_by_dnr
	bne	.L530	@,
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L542	@,
.L536:
	mov	r5, #1	@ D.34799,
	mov	r0, r5	@, D.34799
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L526:
	ldr	r3, [r3, #444]	@ D.34800, s_DnrChan[NextInstId_5(D)].CurImageBufID
	mov	r5, #0	@ D.34799,
	str	r3, [r1]	@ D.34800, *pPicBufID_14(D)
.L530:
	mov	r0, r5	@, D.34799
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L527:
	add	r4, r3, #75776	@ tmp151, tmp132,
	ldr	r10, [r4, #872]	@ D.34801, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	cmp	r10, #0	@ D.34801,
	bne	.L528	@,
	bl	DNR_PrecessChanLastFrame	@
	cmp	r0, #1	@,
	ldrne	r10, [r4, #872]	@ D.34801, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	bne	.L528	@,
	b	.L536	@
.L541:
	movw	r0, #11160	@ tmp160,
	mov	r2, #392	@,
	movt	r0, 1	@ tmp160,
	mul	r0, r0, r8	@ tmp159, tmp160, NextInstId
	add	r4, r6, r0	@ tmp166, tmp225, tmp159
	add	r0, r0, #40	@ tmp161, tmp159,
	add	r3, r4, #75776	@ tmp167, tmp166,
	add	r0, r6, r0	@, tmp225, tmp161
	ldr	r1, [r3, #892]	@, s_DnrChan[NextInstId_5(D)].pCaptureImageIn
	bl	memcpy	@
	ldr	r2, [r4, #216]	@ D.34800, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	str	r10, [r4, #432]	@ D.34801, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mov	r0, #0	@,
	ldr	r1, .L543+4	@,
	str	r2, [r7]	@ D.34800, *pPicBufID_14(D)
	ldr	r3, [r4, #412]	@, s_DnrChan[NextInstId_5(D)].Cur1DImage.u32Circumrotate
	bl	dprint_vfmw	@
	b	.L532	@
.L542:
	mov	r1, r7	@, pPicBufID
	mov	r0, r8	@, NextInstId
	bl	DNR_Get2DFrameStore.part.9	@
	sub	r5, r0, #1	@ D.34799,,
	clz	r5, r5	@ D.34799, D.34799
	mov	r5, r5, lsr #5	@ D.34799, D.34799,
	b	.L530	@
.L535:
	mov	r5, r0	@ D.34799, result
	b	.L530	@
.L544:
	.align	2
.L543:
	.word	.LANCHOR0
	.word	.LC27
	.fnend
	.size	DNR_ProcessChannel, .-DNR_ProcessChannel
	.align	2
	.global	DNR_DoNextInstance
	.type	DNR_DoNextInstance, %function
DNR_DoNextInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 240
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #252
	sub	sp, sp, #252	@,,
	ldr	r6, .L589	@ tmp327,
	mov	r7, r0	@ pNextInstId, pNextInstId
	mov	r1, #84	@,
	add	r0, sp, #60	@ tmp336,,
	mov	r3, #0	@ tmp162,
	str	r3, [sp, #12]	@ tmp162, PicBufID
	ldr	r4, [r6, #3992]	@ NextInstId, s_DnrCtrl.ThisInstID
	bl	__memzero	@
	ldr	r8, .L589+4	@ tmp326,
	movw	r9, #11160	@ tmp331,
	movt	r9, 1	@ tmp331,
	mov	r5, #4	@ D.34818,
.L566:
	add	r3, r4, #1	@ D.34819, NextInstId,
	mov	r4, r3, asr #31	@ tmp164, D.34819,
	mov	r4, r4, lsr #30	@ tmp165, tmp164,
	add	r3, r3, r4	@ tmp166, D.34819, tmp165
	and	r3, r3, #3	@ tmp167, tmp166,
	rsb	r4, r4, r3	@ NextInstId, tmp165, tmp167
	mla	r3, r9, r4, r8	@ tmp172, tmp331, NextInstId, tmp326
	add	r10, r3, #75776	@ tmp174, tmp172,
	ldr	fp, [r10, #880]	@ s_DnrChan[NextInstId_20].DNRCaptureEnableFlag, s_DnrChan[NextInstId_20].DNRCaptureEnableFlag
	cmp	fp, #1	@ s_DnrChan[NextInstId_20].DNRCaptureEnableFlag,
	beq	.L588	@,
.L546:
	mla	r3, r9, r4, r8	@ tmp200, tmp331, NextInstId, tmp326
	ldr	r2, [r3, #12]	@ s_DnrChan[NextInstId_20].InstMode, s_DnrChan[NextInstId_20].InstMode
	cmp	r2, #0	@ s_DnrChan[NextInstId_20].InstMode,
	bne	.L547	@,
	add	r3, r3, #75776	@ tmp208, tmp200,
	ldr	r3, [r3, #872]	@ s_DnrChan[NextInstId_20].DNRDataSourceFlag, s_DnrChan[NextInstId_20].DNRDataSourceFlag
	cmp	r3, #1	@ s_DnrChan[NextInstId_20].DNRDataSourceFlag,
	beq	.L547	@,
.L548:
	subs	r5, r5, #1	@ D.34818, D.34818,
	bne	.L566	@,
.L556:
	mvn	r0, #0	@ D.34817,
.L552:
	add	sp, sp, #252	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L547:
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ D.34820, eVidStd,
	cmp	r3, #2	@ D.34820,
	bhi	.L549	@,
	ldr	r3, .L589+8	@ tmp211,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L548	@,
.L549:
	sub	r3, r0, #14	@ D.34816, eVidStd,
	bics	r3, r3, #4	@ tmp334, D.34816,
	moveq	r10, #1	@ tmp217,
	movne	r10, #0	@ tmp217,
	cmp	r0, #4	@ eVidStd,
	orreq	r10, r10, #1	@,, tmp222, tmp217
	cmp	r10, #0	@ tmp222,
	bne	.L548	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L548	@,
	add	r1, sp, #144	@,,
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetChanState	@
	mla	r3, r9, r4, r8	@ tmp227, tmp331, NextInstId, tmp326
	ldr	r1, [sp, #240]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	add	r2, r3, #75776	@ tmp235, tmp227,
	ldr	r2, [r2, #848]	@ s_DnrChan[NextInstId_20].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_20].s32FastForwardBackwardSpeed
	str	r1, [r3, #448]	@ stChanState.total_disp_frame_num, s_DnrChan[NextInstId_20].s32ValidImgNum
	cmp	r2, #0	@ s_DnrChan[NextInstId_20].s32FastForwardBackwardSpeed,
	blt	.L550	@,
	add	r3, r3, #51456	@ tmp242, tmp227,
	mov	r0, r4	@, NextInstId
	str	r10, [r3, #64]	@ tmp222, s_DnrChan[NextInstId_20].GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L550:
	add	r2, sp, #60	@ tmp337,,
	add	r1, sp, #12	@,,
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result,
	beq	.L548	@,
	cmn	r0, #1	@ result,
	beq	.L556	@,
	mla	r3, r9, r4, r8	@ tmp249, tmp331, NextInstId, tmp326
	ldr	r3, [r3, #340]	@ D.34816, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_20].Cur1DImage.ImageDnr.video_standard
	sub	r2, r3, #10	@ D.34820, D.34816,
	cmp	r2, #2	@ D.34820,
	bhi	.L553	@,
	ldr	r2, .L589+8	@ tmp252,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L548	@,
.L553:
	sub	r2, r3, #14	@ D.34816, D.34816,
	bics	r2, r2, #4	@ tmp335, D.34816,
	moveq	r2, #1	@ tmp258,
	movne	r2, #0	@ tmp258,
	cmp	r3, #4	@ D.34816,
	movne	r3, r2	@, tmp263, tmp258
	orreq	r3, r2, #1	@,, tmp263, tmp258
	cmp	r3, #0	@ tmp263,
	bne	.L548	@,
	movw	r5, #11160	@ tmp266,
	ldr	r10, .L589+4	@ tmp264,
	movt	r5, 1	@ tmp266,
	mul	r5, r5, r4	@ tmp265, tmp266, NextInstId
	add	r9, r8, r5	@ tmp268, tmp326, tmp265
	add	r9, r9, #324	@ pImageDnr, tmp268,
	mov	r0, r9	@, pImageDnr
	bl	DNR_GetSourceImgType	@
	mov	r1, r4	@, NextInstId
	mov	r2, r0	@, SourceImgStoreType
	mov	fp, r0	@ SourceImgStoreType,
	add	r0, sp, #16	@ tmp338,,
	bl	DNR_SetDetPara	@
	ldr	r0, [sp, #12]	@ PicBufID, PicBufID
	mov	r2, r9	@, pImageDnr
	str	fp, [sp]	@ SourceImgStoreType,
	add	r3, sp, #16	@ tmp339,,
	mov	r1, r4	@, NextInstId
	str	r0, [sp, #4]	@ PicBufID,
	add	r0, sp, #60	@ tmp340,,
	bl	DNR_SetDnrCfg	@
	cmn	r0, #1	@,
	beq	.L556	@,
	ldr	r2, [sp, #12]	@, PicBufID
	add	r1, sp, #60	@ tmp341,,
	mov	r0, r4	@, NextInstId
	bl	DNR_SetImageLogic	@
	cmn	r0, #1	@,
	beq	.L556	@,
	ldr	r9, .L589+12	@ tmp325,
	add	r5, r10, r5	@ tmp278, tmp264, tmp265
	ldr	r3, [sp, #12]	@ PicBufID, PicBufID
	ldr	r0, [r9, #12]	@ D.34821, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r3, [r5, #444]	@ PicBufID, s_DnrChan[NextInstId_96].CurImageBufID
	cmp	r0, #0	@ D.34821,
	beq	.L557	@,
	blx	r0	@ D.34821
.L558:
	ldr	r3, [r9, #8]	@ D.34822, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.34822,
	beq	.L559	@,
	add	r0, sp, #60	@ tmp342,,
	blx	r3	@ D.34822
.L560:
	movw	r3, #11160	@ tmp288,
	ldr	r0, [r9, #16]	@ D.34821, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	movt	r3, 1	@ tmp288,
	mov	r1, #0	@ tmp290,
	mul	r3, r3, r4	@ tmp287, tmp288, NextInstId
	cmp	r0, r1	@ D.34821,
	add	r2, r8, r3	@ tmp289, tmp326, tmp287
	add	r2, r2, #75776	@ tmp297, tmp289,
	strb	r1, [r8, r3]	@ tmp290, s_DnrChan[NextInstId_96].DecChanRstFlag
	ldr	r3, [r2, #872]	@ s_DnrChan[NextInstId_96].DNRDataSourceFlag, s_DnrChan[NextInstId_96].DNRDataSourceFlag
	str	r3, [r2, #876]	@ s_DnrChan[NextInstId_96].DNRDataSourceFlag, s_DnrChan[NextInstId_96].DNRCaptureStartFlag
	beq	.L561	@,
	blx	r0	@ D.34821
.L562:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L589+16	@ tmp307,
	str	r0, [r3, #20]	@, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L564	@,
	bl	OSAL_GetTimeInMs	@
	add	r6, r6, r4, lsl #2	@ tmp309, tmp327, NextInstId,
	ldr	r2, .L589+20	@ tmp313,
	ldr	r3, [r6, #4056]	@ tmp312, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.34820, tmp312, currtime
	cmp	r3, r2	@ D.34820, g_TraceFramePeriod
	strhi	r0, [r6, #4056]	@ currtime, last_rec_pos_time
.L564:
	movw	r3, #11160	@ tmp320,
	str	r4, [r7]	@ NextInstId, *pNextInstId_78(D)
	movt	r3, 1	@ tmp320,
	mov	r2, #1	@ tmp323,
	mla	r4, r3, r4, r8	@ tmp321, tmp320, NextInstId, tmp326
	mov	r0, #0	@ D.34817,
	str	r2, [r4, #12]	@ tmp323, s_DnrChan[NextInstId_96].InstMode
	b	.L552	@
.L588:
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_20].s321DFrameIsProc, s_DnrChan[NextInstId_20].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_20].s321DFrameIsProc,
	beq	.L546	@,
	ldr	r1, .L589+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp196,
	str	fp, [r10, #872]	@ s_DnrChan[NextInstId_20].DNRCaptureEnableFlag, s_DnrChan[NextInstId_20].DNRDataSourceFlag
	str	r3, [r10, #880]	@ tmp196, s_DnrChan[NextInstId_20].DNRCaptureEnableFlag
	b	.L546	@
.L561:
	movw	r2, #1572	@,
	ldr	r1, .L589+28	@,
	bl	dprint_vfmw	@
	b	.L562	@
.L559:
	mov	r0, r3	@, D.34822
	movw	r2, #1567	@,
	ldr	r1, .L589+28	@,
	bl	dprint_vfmw	@
	b	.L560	@
.L557:
	movw	r2, #1565	@,
	ldr	r1, .L589+28	@,
	bl	dprint_vfmw	@
	b	.L558	@
.L590:
	.align	2
.L589:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
	.word	g_TraceFramePeriod
	.word	.LC28
	.word	.LC4
	.fnend
	.size	DNR_DoNextInstance, .-DNR_DoNextInstance
	.align	2
	.global	DNR_Wakeup
	.type	DNR_Wakeup, %function
DNR_Wakeup:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r4, .L615	@ tmp210,
	ldr	r3, [r4, #3996]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L592	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L612	@,
.L594:
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L592:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #4000]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r0, r3, r0	@ DelayTime, s_DnrCtrl.LastProcessTime,
	cmp	r0, #500	@ DelayTime,
	ble	.L594	@,
	ldr	r0, [r4, #3992]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r5, .L615+4	@ tmp209,
	ldr	r1, [r4, #3992]	@ D.34826, s_DnrCtrl.ThisInstID
	movw	ip, #11160	@ tmp156,
	movt	ip, 1	@ tmp156,
	movw	r2, #34079	@ tmp162,
	movt	r2, 20971	@ tmp162,
	mov	lr, #100	@ tmp164,
	mla	ip, ip, r1, r5	@ tmp157, tmp156, D.34826, tmp209
	ldr	ip, [ip, #216]	@ s_DnrChan[_26].Cur1DImage.image_id, s_DnrChan[_26].Cur1DImage.image_id
	umull	r2, r3, ip, r2	@ tmp161, s_DnrChan[_26].Cur1DImage.image_id, tmp162
	mov	r2, r3, lsr #5	@ tmp159,,
	mls	r3, lr, r2, ip	@ D.34827, tmp164, tmp159, s_DnrChan[_26].Cur1DImage.image_id
	add	r3, r3, #2	@ D.34827, D.34827,
	cmp	r0, r3	@, D.34827
	beq	.L613	@,
.L596:
	movw	r6, #11160	@ tmp192,
	mov	r0, r1	@, D.34826
	movt	r6, 1	@ tmp192,
	mla	r1, r6, r1, r5	@ tmp193, tmp192, D.34826, tmp209
	add	r1, r1, #40	@, tmp193,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r4, #3992]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mov	r2, #0	@ tmp202,
	ldr	r1, .L615+8	@,
	mov	r0, r2	@, tmp202
	mla	r5, r6, r3, r5	@ tmp200, tmp192, s_DnrCtrl.ThisInstID, tmp209
	str	r2, [r5, #432]	@ tmp202, s_DnrChan[_55].s321DFrameIsProc
	bl	dprint_vfmw	@
	ldr	r3, .L615+12	@ tmp204,
	ldr	r0, [r3, #12]	@ D.34831, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r0, #0	@ D.34831,
	beq	.L600	@,
	blx	r0	@ D.34831
.L601:
	mov	r3, #0	@ tmp207,
	mov	r0, #0	@,
	str	r3, [r4, #3996]	@ tmp207, s_DnrCtrl.DNRState
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L612:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp146,
	str	r2, [r4, #3996]	@ tmp146, s_DnrCtrl.DNRState
	str	r3, [r4, #3992]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #4000]	@, s_DnrCtrl.LastProcessTime
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L613:
	ldr	r6, .L615+16	@ tmp211,
	ldr	r3, [r6]	@ D.34828, g_event_report
	cmp	r3, #0	@ D.34828,
	beq	.L597	@,
	add	r2, sp, #8	@ tmp169,,
	mov	r0, r1	@, D.34826
	mov	ip, #1	@ tmp168,
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp168, para
	blx	r3	@ D.34828
.L597:
	ldr	r1, .L615+20	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3992]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r0, #11160	@ tmp175,
	ldr	r7, .L615	@ tmp172,
	movt	r0, 1	@ tmp175,
	mla	r0, r0, r3, r5	@ tmp176, tmp175, s_DnrCtrl.ThisInstID, tmp209
	add	r0, r0, #968	@, tmp176,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r3, r0	@ ret_val,
	beq	.L614	@,
	ldr	ip, [r6]	@ D.34828, g_event_report
	cmp	ip, #0	@ D.34828,
	beq	.L599	@,
	add	r2, sp, #8	@ tmp184,,
	ldr	r0, [r7, #3992]	@, s_DnrCtrl.ThisInstID
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ ret_val, para
	blx	ip	@ D.34828
.L599:
	mov	r1, #0	@,
	ldr	r0, [r4, #3992]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #3992]	@ D.34826, s_DnrCtrl.ThisInstID
	b	.L596	@
.L614:
	ldr	r3, [r6]	@ D.34828, g_event_report
	cmp	r3, #0	@ D.34828,
	beq	.L599	@,
	add	r2, sp, #8	@ tmp180,,
	mov	ip, #1	@ tmp179,
	ldr	r0, [r7, #3992]	@, s_DnrCtrl.ThisInstID
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp179, para
	blx	r3	@ D.34828
	b	.L599	@
.L600:
	movw	r2, #1838	@,
	ldr	r1, .L615+24	@,
	bl	dprint_vfmw	@
	b	.L601	@
.L616:
	.align	2
.L615:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LC30
	.word	g_dnr_hal_fun_ptr
	.word	g_event_report
	.word	.LC29
	.word	.LC4
	.fnend
	.size	DNR_Wakeup, .-DNR_Wakeup
	.align	2
	.global	DNR_PutYuv
	.type	DNR_PutYuv, %function
DNR_PutYuv:
	.fnstart
	@ args = 24, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #84
	sub	sp, sp, #84	@,,
	mov	r8, r1	@ pLuma, pLuma
	add	r1, sp, #72	@,,
	str	r2, [sp, #44]	@ PicWidth, %sfp
	mov	r9, r3	@ PicHeight, PicHeight
	mov	r5, r0	@ ChanID, ChanID
	bl	DNR_Fsp_ShowPic	@
	subs	r1, r0, #0	@ D.34837,
	bne	.L620	@,
	mov	r10, r1	@ D.34837, D.34837
	ldr	r1, [sp, #72]	@ D.34838, PicBufID
	mov	r6, #1	@ tmp217,
	mov	r7, #392	@ tmp157,
	movw	r3, #11160	@ tmp299,
	bfi	r3, r6, #16, #16	@ tmp299, tmp217,,
	mul	r7, r7, r1	@ tmp156, tmp157, D.34838
	ldr	r0, [sp, #120]	@ tmp543, Stride
	mla	r3, r3, r5, r7	@ tmp300, tmp299, ChanID, tmp156
	ldr	r4, .L628	@ tmp539,
	str	r9, [sp, #52]	@ PicHeight, %sfp
	movw	ip, #11160	@ tmp335,
	mul	r0, r9, r0	@ D.34838, PicHeight, tmp543
	str	r1, [sp, #48]	@ D.34838, %sfp
	mov	r9, r1	@ D.34838, D.34838
	add	r1, r4, r3	@ tmp301, tmp539, tmp300
	movw	r3, #11160	@ tmp289,
	str	r1, [sp, #60]	@ tmp301, %sfp
	bfi	r3, r6, #16, #16	@ tmp289, tmp217,,
	movw	r1, #11160	@ tmp353,
	bfi	r1, r6, #16, #16	@ tmp353, tmp217,,
	bfi	ip, r6, #16, #16	@ tmp335, tmp217,,
	mla	r3, r3, r5, r7	@ tmp290, tmp289, ChanID, tmp156
	movw	lr, #11160	@ tmp270,
	mla	r1, r1, r5, r7	@ tmp354, tmp353, ChanID, tmp156
	bfi	lr, r6, #16, #16	@ tmp270, tmp217,,
	mla	ip, ip, r5, r7	@ tmp336, tmp335, ChanID, tmp156
	add	r3, r4, r3	@ tmp291, tmp539, tmp290
	add	r1, r4, r1	@ tmp355, tmp539, tmp354
	str	r0, [sp, #36]	@ D.34838, %sfp
	mla	lr, lr, r5, r7	@ tmp271, tmp270, ChanID, tmp156
	add	r1, r1, #26368	@ tmp357, tmp355,
	add	ip, r4, ip	@ tmp337, tmp539, tmp336
	str	r1, [sp, #28]	@ tmp357, %sfp
	add	r1, r3, #26368	@ tmp293, tmp291,
	movw	r3, #11160	@ tmp344,
	bfi	r3, r6, #16, #16	@ tmp344, tmp217,,
	add	ip, ip, #26368	@ tmp339, tmp337,
	str	ip, [sp, #24]	@ tmp339, %sfp
	movw	ip, #11160	@ tmp326,
	bfi	ip, r6, #16, #16	@ tmp326, tmp217,,
	movw	r0, #11160	@ tmp159,
	mla	r3, r3, r5, r7	@ tmp345, tmp344, ChanID, tmp156
	mov	fp, r0	@ tmp252, tmp159
	mla	ip, ip, r5, r7	@ tmp327, tmp326, ChanID, tmp156
	movt	r0, 1	@ tmp159,
	str	r1, [sp, #20]	@ tmp293, %sfp
	add	lr, r4, lr	@ tmp272, tmp539, tmp271
	ldr	r1, [sp, #24]	@ tmp339, %sfp
	add	lr, lr, #26368	@ tmp274, tmp272,
	mla	r0, r0, r5, r7	@ tmp160, tmp159, ChanID, tmp156
	add	lr, lr, #152	@ tmp274, tmp274,
	add	r3, r4, r3	@ tmp346, tmp539, tmp345
	str	lr, [sp, #56]	@ tmp274, %sfp
	add	lr, r1, #168	@ tmp339, tmp339,
	ldr	r1, [sp, #28]	@ tmp357, %sfp
	add	r3, r3, #26368	@ tmp348, tmp346,
	add	ip, r4, ip	@ tmp328, tmp539, tmp327
	add	r2, r4, r0	@ tmp169, tmp539, tmp160
	add	r1, r1, #184	@ tmp357, tmp357,
	add	ip, ip, #26368	@ tmp330, tmp328,
	str	r1, [sp, #28]	@ tmp357, %sfp
	ldr	r1, [sp, #20]	@ tmp293, %sfp
	add	ip, ip, #96	@ tmp330, tmp330,
	str	lr, [sp, #24]	@ tmp339, %sfp
	mov	lr, r3	@ tmp348, tmp348
	str	ip, [sp, #64]	@ tmp330, %sfp
	movw	r3, #11160	@ tmp232,
	movw	ip, #26608	@ tmp170,
	bfi	r3, r6, #16, #16	@ tmp232, tmp217,,
	str	r9, [r2, ip]	@ D.34838, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_id
	add	r1, r1, #160	@ tmp293, tmp293,
	add	r0, r0, #26368	@ tmp162, tmp160,
	str	r1, [sp, #20]	@ tmp293, %sfp
	mov	r1, r8	@, pLuma
	ldrd	r8, [sp, #136]	@ tmp563,,
	mla	r3, r3, r5, r7	@ tmp233, tmp232, ChanID, tmp156
	add	r0, r0, #64	@ tmp162, tmp162,
	add	r0, r4, r0	@ pLogic, tmp539, tmp162
	str	r0, [sp, #40]	@ pLogic, %sfp
	movw	r0, #26432	@ tmp161,
	bfi	fp, r6, #16, #16	@ tmp252, tmp217,,
	strd	r8, [r2, r0]	@ tmp563, tmp169, tmp161
	movw	r0, #26440	@ tmp188,
	strd	r8, [r2, r0]	@ tmp564, tmp169, tmp188
	movw	r0, #26448	@ tmp197,
	strd	r8, [r2, r0]	@ tmp565, tmp169, tmp197
	add	r3, r4, r3	@ tmp234, tmp539, tmp233
	mla	fp, fp, r5, r7	@ tmp253, tmp252, ChanID, tmp156
	movw	r0, #26456	@ tmp206,
	strd	r8, [r2, r0]	@ tmp566, tmp169, tmp206
	add	r3, r3, #26368	@ tmp236, tmp234,
	movw	r0, #11160	@ tmp261,
	bfi	r0, r6, #16, #16	@ tmp261, tmp217,,
	str	r10, [r3, #140]	@ D.34837, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DistanceBeforeFirstFrame
	add	r2, r2, #26368	@ tmp216, tmp169,
	mla	r0, r0, r5, r7	@ tmp262, tmp261, ChanID, tmp156
	movw	r3, #11160	@ tmp381,
	bfi	r3, r6, #16, #16	@ tmp381, tmp217,,
	add	fp, r4, fp	@ tmp254, tmp539, tmp253
	str	r6, [r2, #132]	@ tmp217, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DispEnableFlag
	movw	r2, #26552	@ tmp255,
	mla	r3, r3, r5, r7	@ tmp382, tmp381, ChanID, tmp156
	add	lr, lr, #112	@ tmp348, tmp348,
	str	lr, [sp, #68]	@ tmp348, %sfp
	add	r0, r4, r0	@ tmp263, tmp539, tmp262
	ldr	lr, [fp, r2]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_phy_addr
	movw	r2, #11160	@ tmp418,
	bfi	r2, r6, #16, #16	@ tmp418, tmp217,,
	movw	r8, #26520	@ tmp264,
	ldr	r9, [sp, #52]	@ PicHeight, %sfp
	add	r3, r4, r3	@ tmp383, tmp539, tmp382
	mla	r2, r2, r5, r7	@ tmp419, tmp418, ChanID, tmp156
	str	lr, [r0, r8]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].top_luma_phy_addr
	movw	r8, #11160	@ tmp317,
	bfi	r8, r6, #16, #16	@ tmp317, tmp217,,
	add	r3, r3, #26368	@ tmp385, tmp383,
	str	r10, [sp, #32]	@ D.34837, %sfp
	mla	r8, r8, r5, r7	@ tmp318, tmp317, ChanID, tmp156
	str	r9, [r3, #212]	@ PicHeight, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_height
	add	r3, r4, r2	@ tmp420, tmp539, tmp419
	movw	r0, #26536	@ tmp320,
	add	r10, r3, #26368	@ tmp422, tmp420,
	movw	r3, #11160	@ tmp279,
	bfi	r3, r6, #16, #16	@ tmp279, tmp217,,
	add	r8, r4, r8	@ tmp319, tmp539, tmp318
	add	r10, r10, #224	@ tmp422, tmp422,
	str	r10, [sp, #52]	@ tmp422, %sfp
	mla	r3, r3, r5, r7	@ tmp280, tmp279, ChanID, tmp156
	str	lr, [r8, r0]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_phy_addr
	ldr	r8, [sp, #56]	@ tmp274, %sfp
	movw	ip, #11160	@ tmp399,
	ldr	r0, [sp, #36]	@ D.34838, %sfp
	bfi	ip, r6, #16, #16	@ tmp399, tmp217,,
	ldr	fp, [sp, #120]	@ tmp572, Stride
	add	r3, r4, r3	@ tmp281, tmp539, tmp280
	add	r0, r0, lr	@ D.34839, D.34838, D.34839
	str	r0, [r8, #4]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].top_chrom_phy_addr
	movw	r8, #26528	@ tmp282,
	add	lr, lr, fp	@ D.34838, D.34839, tmp572
	str	lr, [r3, r8]	@ D.34838, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].btm_luma_phy_addr
	movw	lr, #11160	@ tmp467,
	ldr	r8, [sp, #24]	@ tmp339, %sfp
	bfi	lr, r6, #16, #16	@ tmp467, tmp217,,
	movw	r3, #11160	@ tmp457,
	bfi	r3, r6, #16, #16	@ tmp457, tmp217,,
	mla	lr, lr, r5, r7	@ tmp468, tmp467, ChanID, tmp156
	str	r0, [r8, #4]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_phy_addr
	mla	r3, r3, r5, r7	@ tmp458, tmp457, ChanID, tmp156
	ldr	r8, [sp, #28]	@ tmp357, %sfp
	mla	ip, ip, r5, r7	@ tmp400, tmp399, ChanID, tmp156
	add	lr, r4, lr	@ tmp469, tmp539, tmp468
	str	r0, [r8, #4]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_2d_phy_addr
	add	r3, r4, r3	@ tmp459, tmp539, tmp458
	ldr	r8, [sp, #120]	@ tmp576, Stride
	movw	r2, #11160	@ tmp428,
	ldr	r9, [sp, #20]	@ tmp293, %sfp
	add	ip, r4, ip	@ tmp401, tmp539, tmp400
	add	r0, r8, r0	@ D.34838, tmp576, D.34839
	add	r8, lr, #26368	@ tmp471, tmp469,
	movw	lr, #26640	@ tmp460,
	add	r8, r8, #200	@ tmp471, tmp471,
	str	r6, [r3, lr]	@ tmp217, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chroma_idc
	add	ip, ip, #26368	@ tmp403, tmp401,
	ldr	r3, [sp, #60]	@ tmp301, %sfp
	bfi	r2, r6, #16, #16	@ tmp428, tmp217,,
	str	r0, [r9, #4]	@ D.34838, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].btm_chrom_phy_addr
	movw	r0, #11160	@ tmp308,
	ldr	r9, [sp, #128]	@ tmp582, DispPicHeight
	bfi	r0, r6, #16, #16	@ tmp308, tmp217,,
	str	r8, [sp, #56]	@ tmp471, %sfp
	movw	r8, #26480	@ tmp581,
	ldr	r3, [r3, r8]	@ D.34840, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_vir_addr
	movw	r8, #11160	@ tmp222,
	bfi	r8, r6, #16, #16	@ tmp222, tmp217,,
	str	r9, [ip, #220]	@ tmp582, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_height
	mla	r0, r0, r5, r7	@ tmp309, tmp308, ChanID, tmp156
	movw	lr, #26464	@ tmp311,
	mla	ip, r8, r5, r7	@ tmp223, tmp222, ChanID, tmp156
	movw	fp, #11160	@ tmp447,
	mla	r2, r2, r5, r7	@ tmp429, tmp428, ChanID, tmp156
	add	r0, r4, r0	@ tmp310, tmp539, tmp309
	add	r9, r4, ip	@ tmp224, tmp539, tmp223
	ldr	ip, [sp, #68]	@ tmp348, %sfp
	str	r3, [r0, lr]	@ D.34840, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_vir_addr
	mov	r0, r3	@, D.34840
	ldr	lr, [sp, #36]	@ D.34838, %sfp
	add	r2, r4, r2	@ tmp430, tmp539, tmp429
	str	r9, [sp, #20]	@ tmp224, %sfp
	add	r2, r2, #26368	@ tmp432, tmp430,
	add	r3, r3, lr	@ D.34840, D.34840, D.34838
	ldr	r9, [sp, #64]	@ tmp330, %sfp
	str	r3, [ip, #4]	@ D.34840, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_2d_vir_addr
	add	r8, lr, lr, lsl #1	@ D.34838, D.34838, D.34838,
	ldr	ip, [sp, #120]	@ tmp587, Stride
	bfi	fp, r6, #16, #16	@ tmp447, tmp217,,
	str	r3, [r9, #4]	@ D.34840, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_vir_addr
	movw	lr, #11160	@ tmp372,
	ldr	r3, [sp, #128]	@ tmp586, DispPicHeight
	bfi	lr, r6, #16, #16	@ tmp372, tmp217,,
	str	ip, [r2, #236]	@ tmp587, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_stride
	movw	r10, #11160	@ tmp242,
	ldr	ip, [sp, #52]	@ tmp422, %sfp
	bfi	r10, r6, #16, #16	@ tmp242, tmp217,,
	mla	fp, fp, r5, r7	@ tmp448, tmp447, ChanID, tmp156
	mov	r3, r3, lsr r6	@ D.34839, tmp586,
	mla	lr, lr, r5, r7	@ tmp373, tmp372, ChanID, tmp156
	str	r3, [ip, #4]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_center_y
	movw	r3, #11160	@ tmp408,
	bfi	r3, r6, #16, #16	@ tmp408, tmp217,,
	add	fp, r4, fp	@ tmp449, tmp539, tmp448
	movw	r9, #11160	@ tmp362,
	mla	r3, r3, r5, r7	@ tmp409, tmp408, ChanID, tmp156
	add	lr, r4, lr	@ tmp374, tmp539, tmp373
	bfi	r9, r6, #16, #16	@ tmp362, tmp217,,
	str	lr, [sp, #24]	@ tmp374, %sfp
	ldr	lr, [sp, #32]	@ D.34837, %sfp
	add	fp, fp, #26368	@ tmp451, tmp449,
	mla	r10, r10, r5, r7	@ tmp243, tmp242, ChanID, tmp156
	add	r3, r4, r3	@ tmp410, tmp539, tmp409
	mla	r9, r9, r5, r7	@ tmp363, tmp362, ChanID, tmp156
	str	lr, [fp, #244]	@ D.34837, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].error_level
	str	r3, [sp, #28]	@ tmp410, %sfp
	movw	r2, #11160	@ tmp390,
	ldr	r3, [sp, #20]	@ tmp224, %sfp
	bfi	r2, r6, #16, #16	@ tmp390, tmp217,,
	movw	ip, #11160	@ tmp437,
	bfi	ip, r6, #16, #16	@ tmp437, tmp217,,
	add	r10, r4, r10	@ tmp244, tmp539, tmp243
	movw	fp, #26504	@ tmp225,
	str	lr, [r3, fp]	@ D.34837, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DispFrameDistance
	add	r9, r4, r9	@ tmp364, tmp539, tmp363
	mla	r2, r2, r5, r7	@ tmp391, tmp390, ChanID, tmp156
	movw	fp, #26512	@ tmp245,
	mla	ip, ip, r5, r7	@ tmp438, tmp437, ChanID, tmp156
	str	lr, [r10, fp]	@ D.34837, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].GopNum
	movw	r10, #26560	@ tmp365,
	mov	fp, lr	@ D.34837, D.34837
	str	lr, [r9, r10]	@ D.34837, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].is_fld_save
	add	r2, r4, r2	@ tmp392, tmp539, tmp391
	ldr	lr, [sp, #44]	@ PicWidth, %sfp
	add	ip, r4, ip	@ tmp439, tmp539, tmp438
	ldr	r10, [sp, #24]	@ tmp374, %sfp
	movw	r9, #26576	@ tmp375,
	ldr	r3, [sp, #124]	@ tmp595, DispPicWidth
	add	r8, r8, r8, lsr #31	@ tmp477, D.34838, D.34838,
	str	lr, [r10, r9]	@ PicWidth, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_width
	movw	r10, #26584	@ tmp393,
	movw	r9, #26600	@ tmp431,
	str	r3, [r2, r10]	@ tmp595, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_width
	str	fp, [ip, r9]	@ D.34837, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].frame_rate
	mov	r10, r3, lsr r6	@ D.34839, tmp596,
	ldr	ip, [sp, #56]	@ tmp471, %sfp
	mov	r8, r8, asr r6	@ D.34838, tmp477,
	ldr	r3, [sp, #28]	@ tmp410, %sfp
	movw	lr, #26592	@ tmp411,
	mov	r2, r8	@, D.34838
	str	r10, [r3, lr]	@ D.34839, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_center_x
	movw	r3, #11296	@ tmp472,
	str	r3, [ip, #4]	@ tmp472, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].format
	bl	memcpy	@
	movw	r3, #11160	@ tmp487,
	bfi	r3, r6, #16, #16	@ tmp487, tmp217,,
	mla	r7, r3, r5, r7	@ tmp488, tmp487, ChanID, tmp156
	movw	r3, #26480	@ tmp599,
	add	r7, r4, r7	@ tmp489, tmp539, tmp488
	ldr	r7, [r7, r3]	@ D.34840, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_vir_addr
	mov	r0, r7	@, D.34840
	bl	MEM_Vir2Phy	@
	mov	r2, r8	@, D.34838
	mov	r1, r0	@,
	mov	r0, r7	@, D.34840
	bl	KernelFlushCache	@
	movw	r0, #11160	@ tmp494,
	bfi	r0, r6, #16, #16	@ tmp494, tmp217,,
	ldr	r1, [sp, #40]	@, %sfp
	mla	r0, r0, r5, r4	@ tmp495, tmp494, ChanID, tmp539
	add	r0, r0, #968	@, tmp495,
	bl	IMGQUE_InsertImage	@
	cmp	r0, r6	@,
	beq	.L619	@,
	mov	r0, r6	@, tmp217
	ldr	r1, .L628+4	@,
	bl	dprint_vfmw	@
.L619:
	ldr	r0, [sp, #48]	@ D.34838, %sfp
	movw	r2, #11160	@ tmp509,
	movt	r2, 1	@ tmp509,
	mov	r3, #392	@ tmp507,
	mul	r2, r2, r5	@ tmp508, tmp509, ChanID
	ldr	ip, [sp, #72]	@ PicBufID, PicBufID
	mla	r3, r3, r0, r2	@ tmp510, tmp507, D.34838, tmp508
	movw	r1, #19174	@ tmp500,
	mla	ip, r1, r5, ip	@ tmp501, tmp500, ChanID, PicBufID
	movw	lr, #26440	@ tmp533,
	add	r3, r4, r3	@ tmp511, tmp539, tmp510
	movw	r6, #26448	@ tmp523,
	movw	r2, #26432	@ tmp512,
	add	r2, r3, r2	@, tmp511, tmp512
	ldrd	r8, [r3, lr]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].PTS, tmp511, tmp533
	add	ip, ip, #178	@ tmp503, tmp501,
	ldrd	r6, [r6, r3]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].Usertag, tmp523, tmp511
	mov	r0, #29	@,
	ldrd	r2, [r2]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].SrcPts,
	mov	lr, #2	@ tmp504,
	ldr	r1, .L628+8	@,
	strd	r6, [sp, #8]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].Usertag,,
	strd	r8, [sp]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].PTS,
	str	lr, [r4, ip, asl #2]	@ tmp504, s_DnrChan[ChanID_5(D)].LogicImageIsUsed
	bl	dprint_vfmw	@
	ldr	r3, .L628+12	@ tmp536,
	ldr	r3, [r3]	@ D.34843, g_event_report
	cmp	r3, #0	@ D.34843,
	beq	.L618	@,
	ldr	r1, [sp, #40]	@ pLogic, %sfp
	add	r2, sp, #80	@ tmp537,,
	mov	r0, r5	@, ChanID
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #5	@,
	blx	r3	@ D.34843
.L618:
	ldr	r0, [sp, #32]	@, %sfp
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L620:
	mvn	r3, #0	@ D.34837,
	str	r3, [sp, #32]	@ D.34837, %sfp
	b	.L618	@
.L629:
	.align	2
.L628:
	.word	.LANCHOR0
	.word	.LC31
	.word	.LC32
	.word	g_event_report
	.fnend
	.size	DNR_PutYuv, .-DNR_PutYuv
	.align	2
	.global	DNR_Fsp_ReleasePic
	.type	DNR_Fsp_ReleasePic, %function
DNR_Fsp_ReleasePic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #19174	@ tmp115,
	ldr	r2, .L631	@ tmp113,
	mla	r1, r3, r0, r1	@ tmp116, tmp115, ChanID, PicBufID
	mov	r3, #0	@ tmp118,
	mov	r0, r3	@, tmp118
	add	r1, r1, #178	@ tmp117, tmp116,
	str	r3, [r2, r1, asl #2]	@ tmp118, s_DnrChan[ChanID_2(D)].LogicImageIsUsed
	bx	lr	@
.L632:
	.align	2
.L631:
	.word	.LANCHOR0
	.fnend
	.size	DNR_Fsp_ReleasePic, .-DNR_Fsp_ReleasePic
	.align	2
	.global	CalcFrameCheckSum
	.type	CalcFrameCheckSum, %function
CalcFrameCheckSum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ p_image, p_image
	ldr	r4, [r0, #148]	@ p_image_8(D)->image_height, p_image_8(D)->image_height
	ldr	r0, [r0, #88]	@, p_image_8(D)->top_luma_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r4, r4, lsr #3	@ D.34861, p_image_8(D)->image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L639	@,
	ldr	r6, [r7, #148]	@ D.34861, p_image_8(D)->image_height
	cmp	r6, #0	@ D.34861,
	beq	.L640	@,
	ldr	r5, [r7, #172]	@ p_image_8(D)->image_stride, p_image_8(D)->image_stride
	mov	lr, #0	@ y,
	ldr	ip, [r7, #144]	@ D.34862, p_image_8(D)->image_width
	mov	r0, lr	@ CheckSum, y
	bic	r5, r5, #3	@ D.34861, p_image_8(D)->image_stride,
.L638:
	cmp	ip, #0	@ D.34862,
	add	r1, r1, r5	@ p32, p32, D.34861
	beq	.L636	@,
	mov	r3, #0	@ x,
.L637:
	mov	r2, r3, asr #2	@ D.34863, x,
	add	r3, r3, #1	@ x, x,
	cmp	r3, ip	@ x, D.34862
	ldr	r2, [r1, r2, asl #2]	@ *_29, *_29
	add	r0, r0, r2	@ CheckSum, CheckSum, *_29
	bne	.L637	@,
.L636:
	add	lr, lr, r4	@ y, y, D.34861
	cmp	r6, lr	@ D.34861, y
	bhi	.L638	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L639:
	mov	r0, r1	@ D.34862, p32
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L640:
	mov	r0, r6	@ CheckSum, D.34861
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	CalcFrameCheckSum, .-CalcFrameCheckSum
	.align	2
	.global	DNR_ProcessDnrImage
	.type	DNR_ProcessDnrImage, %function
DNR_ProcessDnrImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r3, #11160	@ tmp163,
	ldr	r6, .L683	@ tmp317,
	movt	r3, 1	@ tmp163,
	.pad #36
	sub	sp, sp, #36	@,,
	mov	r4, r1	@ pLogic, pLogic
	mov	r5, r0	@ ChanID, ChanID
	movw	r9, #34079	@ tmp168,
	mla	r3, r3, r0, r6	@ tmp164, tmp163, ChanID, tmp317
	movt	r9, 20971	@ tmp168,
	mov	r7, #100	@ tmp170,
	ldr	r8, [r3, #444]	@ PicBufID, s_DnrChan[ChanID_12(D)].CurImageBufID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r1, [r4, #176]	@ pLogic_17(D)->image_id, pLogic_17(D)->image_id
	umull	r2, r3, r1, r9	@ tmp167, pLogic_17(D)->image_id, tmp168
	mov	r2, r3, lsr #5	@ D.34883,,
	mls	r2, r7, r2, r1	@ D.34883, tmp170, D.34883, pLogic_17(D)->image_id
	add	r3, r2, #2	@ D.34883, D.34883,
	cmp	r0, r3	@, D.34883
	beq	.L680	@,
.L648:
	movw	r0, #11160	@ tmp184,
	ldr	r9, .L683	@ tmp182,
	movt	r0, 1	@ tmp184,
	mul	r0, r0, r5	@ tmp183, tmp184, ChanID
	add	r7, r6, r0	@ tmp185, tmp317, tmp183
	add	r10, r7, #75776	@ tmp187, tmp185,
	ldr	r3, [r10, #848]	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed,
	blt	.L650	@,
	add	r0, r0, #968	@ tmp192, tmp183,
	str	r8, [r4, #176]	@ PicBufID, pLogic_17(D)->image_id
	add	r0, r9, r0	@, tmp182, tmp192
	mov	r1, r4	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.34881,
	bne	.L678	@,
	movw	r3, #19174	@ tmp196,
	mov	r0, #11	@,
	mla	r8, r3, r5, r8	@ tmp197, tmp196, ChanID, PicBufID
	mov	r3, #2	@ tmp199,
	add	r8, r8, #178	@ tmp198, tmp197,
	str	r3, [r9, r8, asl #2]	@ tmp199, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L681	@,
.L653:
	add	r7, r4, #188	@ ivtmp.374, pLogic,
	add	r8, r4, #204	@ D.34892, pLogic,
.L658:
	ldr	r1, [r7, #4]!	@ D.34887, MEM[base: _94, offset: 0B]
	mov	r0, r5	@, ChanID
	cmp	r1, #0	@ D.34887,
	beq	.L657	@,
	bl	MarkUsdByDnr	@
.L657:
	cmp	r7, r8	@ ivtmp.374, D.34892
	bne	.L658	@,
	ldrd	r10, [r4, #16]	@ pLogic_17(D)->Usertag, pLogic,
	mov	r0, #29	@,
	ldrd	r8, [r4, #8]	@ pLogic_17(D)->PTS, pLogic,
	ldrd	r2, [r4]	@ pLogic_17(D)->SrcPts, pLogic_17(D)->SrcPts
	ldr	r1, .L683+4	@,
	strd	r10, [sp, #8]	@ pLogic_17(D)->Usertag,,
	strd	r8, [sp]	@ pLogic_17(D)->PTS,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #140]	@, pLogic_17(D)->format
	ldr	r1, .L683+8	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pLogic
	bl	CalcFrameCheckSum	@
	ldr	r1, .L683+12	@,
	mov	r2, r0	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	movw	r3, #11160	@ tmp309,
	movt	r3, 1	@ tmp309,
	mla	r6, r3, r5, r6	@ tmp310, tmp309, ChanID, tmp317
	add	r6, r6, #75776	@ tmp312, tmp310,
	ldr	r3, [r6, #848]	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed,
	blt	.L660	@,
	ldr	r3, .L683+16	@ tmp314,
	ldr	r3, [r3]	@ D.34884, g_event_report
	cmp	r3, #0	@ D.34884,
	beq	.L660	@,
	add	r2, sp, #32	@ tmp315,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r4, [r2, #-4]!	@ pLogic, para
	blx	r3	@ D.34884
	mov	r0, #0	@ D.34881,
.L678:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L650:
	movw	r3, #51520	@ tmp214,
	add	fp, r7, #51456	@ tmp215, tmp185,
	ldr	r2, [r7, r3]	@ s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag, s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag
	add	fp, fp, #64	@ tmp215, tmp215,
	cmp	r2, #0	@ s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag,
	bne	.L654	@,
	mov	r0, r5	@, ChanID
	bl	DNR_ClearTempImage	@
	b	.L653	@
.L660:
	mov	r0, #0	@ D.34881,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L680:
	ldr	r3, .L683+16	@ tmp173,
	mov	r1, #1	@ tmp172,
	str	r1, [r4, #224]	@ tmp172, pLogic_17(D)->last_frame
	ldr	r3, [r3]	@ D.34884, g_event_report
	cmp	r3, #0	@ D.34884,
	beq	.L649	@,
	add	r2, sp, #32	@ tmp175,,
	mov	r0, #0	@ tmp174,
	mov	r1, #115	@,
	str	r0, [r2, #-4]!	@ tmp174, para
	mov	r0, r5	@, ChanID
	blx	r3	@ D.34884
	ldr	r1, [r4, #176]	@ pLogic_17(D)->image_id, pLogic_17(D)->image_id
	umull	r2, r3, r1, r9	@ tmp177, pLogic_17(D)->image_id, tmp168
	mov	r2, r3, lsr #5	@ D.34883,,
	mls	r2, r7, r2, r1	@ D.34883, tmp170, D.34883, pLogic_17(D)->image_id
.L649:
	mov	r3, r8	@, PicBufID
	ldr	r1, .L683+20	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L648	@
.L654:
	str	r8, [r4, #176]	@ PicBufID, pLogic_17(D)->image_id
	mov	ip, #392	@ tmp225,
	ldr	lr, [fp, #4]	@ D.34885, s_DnrChan[ChanID_12(D)].TempImageNum
	mov	r2, ip	@, tmp225
	mov	r1, r4	@, pLogic
	str	r3, [sp, #20]	@ tmp214, %sfp
	mla	ip, ip, lr, r0	@ tmp228, tmp225, D.34885, tmp183
	add	r0, ip, #51456	@ tmp230, tmp228,
	add	r0, r0, #72	@ tmp230, tmp230,
	add	r0, r9, r0	@, tmp182, tmp230
	str	ip, [sp, #16]	@ tmp228, %sfp
	bl	memcpy	@
	movw	r2, #19174	@ tmp238,
	mla	r8, r2, r5, r8	@ tmp239, tmp238, ChanID, PicBufID
	ldr	lr, [r10, #864]	@ s_DnrChan[ChanID_12(D)].u32VoFrmNum, s_DnrChan[ChanID_12(D)].u32VoFrmNum
	ldr	r2, [fp, #4]	@ s_DnrChan[ChanID_12(D)].TempImageNum, s_DnrChan[ChanID_12(D)].TempImageNum
	mov	r0, #4	@ tmp241,
	ldr	r1, [r7, #448]	@ s_DnrChan[ChanID_12(D)].s32ValidImgNum, s_DnrChan[ChanID_12(D)].s32ValidImgNum
	add	r2, r2, #1	@ D.34885, s_DnrChan[ChanID_12(D)].TempImageNum,
	add	r8, r8, #178	@ tmp240, tmp239,
	rsb	r1, lr, r1	@ D.34883, s_DnrChan[ChanID_12(D)].u32VoFrmNum, s_DnrChan[ChanID_12(D)].s32ValidImgNum
	str	r2, [fp, #4]	@ D.34885, s_DnrChan[ChanID_12(D)].TempImageNum
	cmp	r2, r1	@ D.34885, D.34883
	str	r0, [r9, r8, asl #2]	@ tmp241, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	ldr	ip, [sp, #16]	@ tmp228, %sfp
	ldr	r3, [sp, #20]	@ tmp214, %sfp
	bcc	.L682	@,
	mov	r2, #0	@ tmp285,
	str	r2, [r7, r3]	@ tmp285, s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag
.L656:
	mov	r1, r4	@, pLogic
	mov	r0, r5	@, ChanID
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L653	@,
	movw	r3, #11160	@ tmp288,
	movw	r2, #2062	@,
	movt	r3, 1	@ tmp288,
	ldr	r1, .L683+24	@,
	mla	r3, r3, r5, r6	@ tmp289, tmp288, ChanID, tmp317
	mov	r0, #0	@,
	add	ip, r3, #51456	@ tmp291, tmp289,
	ldr	lr, [r3, #448]	@ s_DnrChan[ChanID_12(D)].s32ValidImgNum, s_DnrChan[ChanID_12(D)].s32ValidImgNum
	ldr	r3, [ip, #68]	@ s_DnrChan[ChanID_12(D)].TempImageNum, s_DnrChan[ChanID_12(D)].TempImageNum
	str	lr, [sp]	@ s_DnrChan[ChanID_12(D)].s32ValidImgNum,
	bl	dprint_vfmw	@
	b	.L653	@
.L682:
	add	r9, r9, ip	@ tmp275, tmp182, tmp228
	movw	r3, #51752	@ tmp276,
	ldr	r3, [r9, r3]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_50].last_frame, MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_50].last_frame
	cmp	r3, #1	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_50].last_frame,
	bne	.L653	@,
	b	.L656	@
.L681:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L683+28	@ tmp200,
	ldr	r1, .L683+32	@ tmp205,
	add	r3, r3, r5, lsl #2	@ tmp201, tmp200, ChanID,
	ldr	r2, [r3, #4072]	@ tmp204, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r2, r0	@ D.34883, tmp204, currtime
	cmp	r2, r1	@ D.34883, g_TraceFramePeriod
	strhi	r0, [r3, #4072]	@ currtime, last_rec_pos_time
	b	.L653	@
.L684:
	.align	2
.L683:
	.word	.LANCHOR0
	.word	.LC32
	.word	.LC34
	.word	.LC35
	.word	g_event_report
	.word	.LC33
	.word	.LC26
	.word	.LANCHOR1
	.word	g_TraceFramePeriod
	.fnend
	.size	DNR_ProcessDnrImage, .-DNR_ProcessDnrImage
	.align	2
	.global	DNR_ProcessDnrReturn
	.type	DNR_ProcessDnrReturn, %function
DNR_ProcessDnrReturn:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r1, #11160	@ tmp127,
	ldr	ip, .L704	@ tmp200,
	movt	r1, 1	@ tmp127,
	mul	r1, r1, r0	@ tmp126, tmp127, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r3, ip, r1	@ tmp128, tmp200, tmp126
	add	lr, r3, #75776	@ tmp135, tmp128,
	ldr	r3, [r3, #444]	@ PicBufID, s_DnrChan[ChanID_5(D)].CurImageBufID
	ldr	r2, [lr, #872]	@ D.34903, s_DnrChan[ChanID_5(D)].DNRDataSourceFlag
	cmp	r2, #0	@ D.34903,
	bne	.L686	@,
	mov	lr, #392	@ tmp138,
	mla	r1, lr, r3, r1	@ tmp141, tmp138, PicBufID, tmp126
	add	r1, r1, #26368	@ tmp143, tmp141,
	add	r1, r1, #64	@ tmp143, tmp143,
	add	r1, ip, r1	@ pLogic, tmp200, tmp143
.L687:
	cmp	r0, #3	@ ChanID,
	bhi	.L701	@,
	ldr	r3, [r1, #144]	@ pLogic_1->image_width, pLogic_1->image_width
	cmp	r3, #0	@ pLogic_1->image_width,
	beq	.L702	@,
	cmp	r2, #0	@ D.34903,
	beq	.L703	@,
	cmp	r2, #1	@ D.34903,
	bne	.L695	@,
	movw	r3, #11160	@ tmp177,
	movt	r3, 1	@ tmp177,
	mla	ip, r3, r0, ip	@ tmp178, tmp177, ChanID, tmp200
	add	ip, ip, #75776	@ tmp180, tmp178,
	ldr	lr, [ip, #876]	@ s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag, s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag
	cmp	lr, #1	@ s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag,
	bne	.L695	@,
	ldr	r2, .L704+4	@ tmp196,
	mov	r4, #0	@ tmp188,
	str	r4, [ip, #872]	@ tmp188, s_DnrChan[ChanID_5(D)].DNRDataSourceFlag
	str	r4, [ip, #876]	@ tmp188, s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag
	ldr	r3, [r2]	@ D.34907, g_event_report
	cmp	r3, r4	@ D.34907,
	beq	.L696	@,
	add	r2, sp, #8	@ tmp197,,
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #21	@,
	blx	r3	@ D.34907
	mov	r0, r4	@ D.34902, tmp188
.L689:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L686:
	cmp	r2, #1	@ D.34903,
	bne	.L688	@,
	ldr	r1, [lr, #896]	@ pLogic, s_DnrChan[ChanID_5(D)].pCaptureImageOut
	b	.L687	@
.L703:
	movw	r3, #11160	@ tmp158,
	movt	r3, 1	@ tmp158,
	mul	r3, r3, r0	@ tmp157, tmp158, ChanID
	add	lr, ip, r3	@ tmp159, tmp200, tmp157
	ldrsb	r3, [ip, r3]	@ s_DnrChan[ChanID_5(D)].DecChanRstFlag, s_DnrChan[ChanID_5(D)].DecChanRstFlag
	cmp	r3, #1	@ s_DnrChan[ChanID_5(D)].DecChanRstFlag,
	streq	r2, [lr, #16]	@ D.34903, s_DnrChan[ChanID_5(D)].NeedStartAgain
	moveq	r0, r2	@ D.34902, D.34903
	beq	.L689	@,
	ldr	r3, [lr, #16]	@ s_DnrChan[ChanID_5(D)].NeedStartAgain, s_DnrChan[ChanID_5(D)].NeedStartAgain
	cmp	r3, #0	@ s_DnrChan[ChanID_5(D)].NeedStartAgain,
	beq	.L694	@,
.L696:
	mov	r0, #0	@ D.34902,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L694:
	bl	DNR_ProcessDnrImage	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.34908,
	moveq	r0, #1	@ D.34908,
	rsb	r0, r0, #0	@ D.34902, D.34908
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L695:
	ldr	r1, .L704+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34902,
	b	.L689	@
.L688:
	ldr	r1, .L704+12	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34902,
	b	.L689	@
.L701:
	ldr	r3, .L704+16	@,
	movw	r2, #2119	@,
	ldr	r1, .L704+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34902,
	b	.L689	@
.L702:
	mov	r0, r3	@, pLogic_1->image_width
	movw	r2, #2120	@,
	ldr	r3, .L704+24	@,
	ldr	r1, .L704+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34902,
	b	.L689	@
.L705:
	.align	2
.L704:
	.word	.LANCHOR0
	.word	g_event_report
	.word	.LC39
	.word	.LC36
	.word	.LC37
	.word	.LC1
	.word	.LC38
	.fnend
	.size	DNR_ProcessDnrReturn, .-DNR_ProcessDnrReturn
	.global	__aeabi_uidiv
	.align	2
	.global	DNR_IntServeProc
	.type	DNR_IntServeProc, %function
DNR_IntServeProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r4, .L730	@ tmp221,
	ldr	r0, .L730+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #4088]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r3, #44]	@ dat, *_14
	tst	r3, #1	@ dat,
	beq	.L719	@,
	ldr	r3, .L730+8	@ tmp150,
	ldr	r0, [r3, #20]	@ D.34918, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r0, #0	@ D.34918,
	beq	.L708	@,
	blx	r0	@ D.34918
.L709:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L725	@,
	ldr	r5, .L730+12	@ tmp222,
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	bne	.L726	@,
.L714:
	ldr	r3, [r4, #3996]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	ldr	r6, .L730	@ tmp183,
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	beq	.L727	@,
.L719:
	ldr	r0, .L730+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L725:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, #3992]	@ D.34916, s_DnrCtrl.ThisInstID
	ldr	r3, .L730+16	@ tmp153,
	ldr	r1, .L730+20	@ tmp158,
	add	r3, r3, r2, lsl #2	@ tmp154, tmp153, D.34916,
	ldr	r5, .L730+12	@ tmp222,
	ldr	r2, [r3, #-4080]	@ tmp157, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r2, r0	@ D.34919, tmp157, currtime
	cmp	r2, r1	@ D.34919, g_TraceFramePeriod
	strhi	r0, [r3, #-4080]	@ currtime, last_rec_pos_time
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	beq	.L714	@,
.L726:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #16]	@ D.34919, g_VfmwGlobalStat[0].u32DaBeginTime
	ldr	r3, [r5, #20]	@ D.34919, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r6, #0	@ tmp174,
	add	r2, r1, #49920	@ D.34919, D.34919,
	str	r6, [r5, #20]	@ tmp174, g_VfmwGlobalStat[0].u32DaLastStartTime
	add	r2, r2, #80	@ D.34919, D.34919,
	cmp	r2, r3	@ D.34919, D.34919
	strcc	r3, [r5, #16]	@ D.34919, g_VfmwGlobalStat[0].u32DaBeginTime
	movcc	r1, r3	@ D.34919, D.34919
	ldrcs	r2, [r5, #24]	@ D.34921, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	movcc	r2, #0	@ D.34921,
	rsb	r1, r1, r0	@ Period, D.34919, CurTime
	rsb	r0, r3, r0	@ D.34919, D.34919, CurTime
	cmp	r1, #1000	@ Period,
	add	r0, r0, r2	@ D.34919, D.34919, D.34921
	str	r0, [r5, #24]	@ D.34919, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	ldr	r5, .L730+12	@ tmp172,
	bcc	.L714	@,
	mov	r3, #1000	@ tmp177,
	mul	r0, r3, r0	@, tmp177, D.34919
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #3996]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	str	r6, [r5, #16]	@ tmp174, g_VfmwGlobalStat[0].u32DaBeginTime
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	ldr	r6, .L730	@ tmp183,
	str	r0, [r5, #28]	@, g_VfmwGlobalStat[0].u32DaDnrLoad
	bne	.L719	@,
.L727:
	ldr	r0, [r6, #3992]	@ D.34916, s_DnrCtrl.ThisInstID
	movw	r3, #11160	@ tmp188,
	ldr	r5, .L730+24	@ tmp220,
	movt	r3, 1	@ tmp188,
	mla	r3, r3, r0, r5	@ tmp189, tmp188, D.34916, tmp220
	ldr	r3, [r3, #12]	@ s_DnrChan[_51].InstMode, s_DnrChan[_51].InstMode
	cmp	r3, #1	@ s_DnrChan[_51].InstMode,
	beq	.L728	@,
.L720:
	movw	r6, #11160	@ tmp197,
	mov	r3, #0	@ tmp194,
	movt	r6, 1	@ tmp197,
	str	r3, [r4, #3996]	@ tmp194, s_DnrCtrl.DNRState
	mul	r1, r6, r0	@ tmp196, tmp197, D.34916
	ldr	r8, .L730	@ tmp193,
	ldr	r7, .L730+24	@ tmp195,
	add	r5, r5, r1	@ tmp198, tmp220, tmp196
	ldr	r5, [r5, #16]	@ s_DnrChan[_77].NeedStartAgain, s_DnrChan[_77].NeedStartAgain
	cmp	r5, r3	@ s_DnrChan[_77].NeedStartAgain,
	beq	.L729	@,
.L721:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L719	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp218,
	str	r2, [r4, #3996]	@ tmp218, s_DnrCtrl.DNRState
	str	r3, [r4, #3992]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #4000]	@, s_DnrCtrl.LastProcessTime
	b	.L719	@
.L729:
	add	r1, r1, #40	@ tmp204, tmp196,
	add	r1, r7, r1	@, tmp195, tmp204
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #3992]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r6, r6, r3, r7	@ tmp211, tmp197, s_DnrCtrl.ThisInstID, tmp195
	str	r5, [r6, #432]	@ s_DnrChan[_77].NeedStartAgain, s_DnrChan[_59].s321DFrameIsProc
	b	.L721	@
.L708:
	movw	r2, #1697	@,
	ldr	r1, .L730+28	@,
	bl	dprint_vfmw	@
	b	.L709	@
.L728:
	bl	DNR_ProcessDnrReturn	@
	ldr	r0, [r6, #3992]	@ D.34916, s_DnrCtrl.ThisInstID
	b	.L720	@
.L731:
	.align	2
.L730:
	.word	.LANCHOR1
	.word	g_TaskLock
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
	.word	.LANCHOR3
	.word	g_TraceFramePeriod
	.word	.LANCHOR0
	.word	.LC4
	.fnend
	.size	DNR_IntServeProc, .-DNR_IntServeProc
	.align	2
	.global	DNR_NeedDnr
	.type	DNR_NeedDnr, %function
DNR_NeedDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L737	@ tmp122,
	movw	r3, #11160	@ tmp124,
	movt	r3, 1	@ tmp124,
	mla	r0, r3, r0, r2	@ tmp125, tmp124, ChanID, tmp122
	add	r3, r0, #75776	@ tmp127, tmp125,
	ldr	r0, [r3, #900]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable
	cmp	r0, #1	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable,
	beq	.L736	@,
	mov	r0, #1	@ D.34927,
	bx	lr	@
.L736:
	ldr	r2, [r3, #904]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	ldr	r0, [r1, #144]	@ p_image_5(D)->image_width, p_image_5(D)->image_width
	cmp	r0, r2	@ p_image_5(D)->image_width, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	bhi	.L735	@,
	ldr	r0, [r3, #908]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r1, #148]	@ p_image_5(D)->image_height, p_image_5(D)->image_height
	cmp	r2, r0	@ p_image_5(D)->image_height, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	movhi	r0, #0	@ D.34927,
	movls	r0, #1	@ D.34927,
	bx	lr	@
.L735:
	mov	r0, #0	@ D.34927,
	bx	lr	@
.L738:
	.align	2
.L737:
	.word	.LANCHOR0
	.fnend
	.size	DNR_NeedDnr, .-DNR_NeedDnr
	.align	2
	.global	DNR_ReleaseUsrData
	.type	DNR_ReleaseUsrData, %function
DNR_ReleaseUsrData:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	add	r4, r1, #188	@ ivtmp.396, pImage,
	ldr	r8, .L754	@ tmp130,
	add	r7, r1, #204	@ D.34954, pImage,
	ldr	r9, .L754+4	@ tmp131,
	mov	r6, r1	@ pImage, pImage
	mov	r5, r0	@ ChanID, ChanID
	mov	r10, #0	@ tmp132,
.L741:
	ldr	r2, [r4, #4]!	@ D.34947, MEM[base: _21, offset: 0B]
	cmp	r2, #0	@ D.34947,
	beq	.L740	@,
	ldr	r3, [r8, r5, asl #2]	@ tmp123, pstVdecUsdPool
	cmp	r3, #0	@ tmp123,
	beq	.L740	@,
	ldr	r3, [r9, r5, asl #2]	@ D.34949, s_pstVfmwChan
	cmp	r3, #0	@ D.34949,
	add	r1, r3, #208896	@ tmp126, D.34949,
	beq	.L740	@,
	ldr	r3, [r1, #2932]	@ _9->u32ChanTick, _9->u32ChanTick
	ldr	r1, [r6, #384]	@ pImage_5(D)->u32ChanTick, pImage_5(D)->u32ChanTick
	cmp	r1, r3	@ pImage_5(D)->u32ChanTick, _9->u32ChanTick
	beq	.L753	@,
.L740:
	cmp	r4, r7	@ ivtmp.396, D.34954
	bne	.L741	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L753:
	mov	r1, r2	@, D.34947
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r10, [r4]	@ tmp132, MEM[base: _21, offset: 0B]
	b	.L740	@
.L755:
	.align	2
.L754:
	.word	pstVdecUsdPool
	.word	s_pstVfmwChan
	.fnend
	.size	DNR_ReleaseUsrData, .-DNR_ReleaseUsrData
	.align	2
	.global	DNR_ReleaseImage
	.type	DNR_ReleaseImage, %function
DNR_ReleaseImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r0, #3	@ ChanID,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r4, r0	@ ChanID, ChanID
	mov	r0, #0	@ tmp163,
	str	r0, [sp, #8]	@ tmp163, TopPhyAddr
	str	r0, [sp, #12]	@ tmp163, BtmPhyAddr
	bhi	.L781	@,
	cmp	r1, #0	@ p_image,
	mov	r5, r1	@ p_image, p_image
	beq	.L782	@,
	ldr	r3, [r1, #88]	@ p_image_17(D)->top_luma_phy_addr, p_image_17(D)->top_luma_phy_addr
	cmp	r3, #0	@ p_image_17(D)->top_luma_phy_addr,
	beq	.L773	@,
	ldr	r7, .L790	@ tmp289,
	movw	r3, #11160	@ tmp172,
	movt	r3, 1	@ tmp172,
	mla	r3, r3, r4, r7	@ tmp173, tmp172, ChanID, tmp289
	ldr	r0, [r3, #8]	@ s_DnrChan[ChanID_14(D)].s32IsOpen, s_DnrChan[ChanID_14(D)].s32IsOpen
	cmp	r0, #0	@ s_DnrChan[ChanID_14(D)].s32IsOpen,
	beq	.L783	@,
.L760:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.34966, eVidStd,
	bics	r3, r3, #4	@ tmp292, D.34966,
	moveq	r3, #1	@ tmp182,
	movne	r3, #0	@ tmp182,
	cmp	r0, #4	@ eVidStd,
	movne	r0, r3	@, tmp187, tmp182
	orreq	r0, r3, #1	@,, tmp187, tmp182
	cmp	r0, #0	@ tmp187,
	bne	.L784	@,
	ldr	r1, [r5, #176]	@ D.34964, p_image_17(D)->image_id
	movw	r2, #34079	@ tmp191,
	movt	r2, 20971	@ tmp191,
	mov	ip, #100	@ tmp193,
	umull	r2, r3, r1, r2	@ tmp190, D.34964, tmp191
	mov	r8, r3, lsr #5	@ RelImgID,,
	mls	r8, ip, r8, r1	@ RelImgID, tmp193, RelImgID, D.34964
	cmp	r8, #63	@ RelImgID,
	bgt	.L785	@,
.L762:
	movw	r0, #11160	@ tmp199,
	add	r3, sp, #12	@,,
	movt	r0, 1	@ tmp199,
	add	r2, sp, #8	@,,
	mla	r0, r0, r4, r7	@ tmp200, tmp199, ChanID, tmp289
	add	r0, r0, #968	@, tmp200,
	bl	IMGQUE_DeleteImage	@
	mov	r6, r0	@ ret,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L786	@,
.L764:
	movw	r3, #11160	@ tmp216,
	subs	r6, r6, #1	@ ret, ret,
	movt	r3, 1	@ tmp216,
	mla	r3, r3, r4, r7	@ tmp217, tmp216, ChanID, tmp289
	mvnne	r6, #0	@ ret,
	add	r3, r3, #75776	@ tmp219, tmp217,
	ldr	r1, [r3, #900]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable
	cmp	r1, #1	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable,
	beq	.L787	@,
.L766:
	movw	r1, #11160	@ tmp281,
	mov	r3, #392	@ tmp279,
	movt	r1, 1	@ tmp281,
	movw	r0, #26552	@ tmp284,
	mul	r1, r1, r4	@ tmp280, tmp281, ChanID
	ldr	r2, [r5, #88]	@ D.34963, p_image_17(D)->top_luma_phy_addr
	mla	r1, r3, r8, r1	@ tmp282, tmp279, RelImgID, tmp280
	ldr	ip, .L790	@ tmp277,
	add	r3, r7, r1	@ tmp283, tmp289, tmp282
	ldr	r3, [r3, r0]	@ D.34964, MEM[(struct IMAGE *)&s_DnrChan][ChanID_14(D)].LogicImagePool[RelImgID_29].luma_2d_phy_addr
	cmp	r3, r2	@ D.34964, D.34963
	beq	.L788	@,
	str	r2, [sp]	@ D.34963,
	mov	r0, #31	@,
	mov	r2, r8	@, RelImgID
	ldr	r1, .L790+4	@,
	bl	dprint_vfmw	@
	clz	r2, r6	@ D.34961, ret
	mov	r2, r2, lsr #5	@ D.34961, D.34961,
.L768:
	movw	r3, #11160	@ tmp266,
	movt	r3, 1	@ tmp266,
	mla	r3, r3, r4, r7	@ tmp267, tmp266, ChanID, tmp289
	add	r3, r3, #75776	@ tmp268, tmp267,
	add	r3, r3, #896	@ tmp268, tmp268,
	ldr	r3, [r3, #4]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable,
	movne	r2, #0	@, tmp275
	andeq	r2, r2, #1	@,, tmp275, D.34961
	cmp	r2, #0	@ tmp275,
	moveq	r0, r6	@ D.34960, ret
	bne	.L789	@,
.L775:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L784:
	mov	r1, r5	@, p_image
	mov	r0, r4	@, ChanID
	bl	VCTRL_ReleaseChanImage	@
	adds	r0, r0, #0	@ D.34961,,
	movne	r0, #1	@ D.34961,
	rsb	r0, r0, #0	@ D.34960, D.34961
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L783:
	str	r4, [sp]	@ ChanID,
	movw	r3, #2313	@,
	ldr	r2, .L790+8	@,
	ldr	r1, .L790+12	@,
	bl	dprint_vfmw	@
	b	.L760	@
.L785:
	ldr	r1, .L790+16	@,
	mov	r2, r8	@, RelImgID
	bl	dprint_vfmw	@
	ldr	r1, [r5, #176]	@ D.34964, p_image_17(D)->image_id
	b	.L762	@
.L786:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L790+20	@ tmp202,
	ldr	r1, .L790+24	@ tmp207,
	add	r3, r3, r4, lsl #2	@ tmp203, tmp202, ChanID,
	ldr	r2, [r3, #-4064]	@ tmp206, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r2, r2, r0	@ D.34964, tmp206, currtime
	cmp	r2, r1	@ D.34964, g_TraceImgPeriod
	strhi	r0, [r3, #-4064]	@ currtime, last_rec_pos_time
	b	.L764	@
.L787:
	ldr	r2, [r3, #904]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrWidth
	ldr	r1, [r5, #144]	@ p_image_17(D)->image_width, p_image_17(D)->image_width
	cmp	r1, r2	@ p_image_17(D)->image_width, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrWidth
	bhi	.L767	@,
	ldr	r3, [r3, #908]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r5, #148]	@ p_image_17(D)->image_height, p_image_17(D)->image_height
	cmp	r2, r3	@ p_image_17(D)->image_height, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrHeight
	bls	.L766	@,
.L767:
	ldr	r8, [r5, #176]	@ D.34964, p_image_17(D)->image_id
	mov	r1, r5	@, p_image
	ldr	r3, [r5, #380]	@ p_image_17(D)->resetNum, p_image_17(D)->resetNum
	mov	r0, r4	@, ChanID
	add	r3, r8, r3	@ D.34964, D.34964, p_image_17(D)->resetNum
	sub	r3, r3, #6	@ D.34964, D.34964,
	str	r3, [r5, #176]	@ D.34964, p_image_17(D)->image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r6, r0, #0	@ ret,
	strne	r8, [r5, #176]	@ D.34964, p_image_17(D)->image_id
	mvnne	r0, #0	@ D.34960,
	bne	.L775	@,
	ldr	r1, [r5, #176]	@ p_image_17(D)->image_id, p_image_17(D)->image_id
	movw	r3, #19174	@ tmp259,
	mov	r2, #1	@ D.34961,
	mla	r3, r3, r4, r1	@ tmp260, tmp259, ChanID, p_image_17(D)->image_id
	add	r3, r3, #184	@ tmp262, tmp260,
	str	r6, [r7, r3, asl #2]	@ ret, s_DnrChan[ChanID_14(D)].LogicImageIsUsed
	str	r8, [r5, #176]	@ D.34964, p_image_17(D)->image_id
	b	.L768	@
.L788:
	movw	r3, #19174	@ tmp239,
	add	r1, r1, #26368	@ tmp250, tmp282,
	mla	r8, r3, r4, r8	@ tmp240, tmp239, ChanID, RelImgID
	add	r1, r1, #64	@ tmp250, tmp250,
	mov	r3, #0	@ tmp242,
	add	r1, ip, r1	@, tmp277, tmp250
	mov	r0, r4	@, ChanID
	add	r8, r8, #178	@ tmp241, tmp240,
	str	r3, [ip, r8, asl #2]	@ tmp242, s_DnrChan[ChanID_14(D)].LogicImageIsUsed
	bl	DNR_ReleaseUsrData	@
	clz	r2, r6	@ D.34961, ret
	mov	r2, r2, lsr #5	@ D.34961, D.34961,
	b	.L768	@
.L773:
	mvn	r0, #0	@ D.34960,
	b	.L775	@
.L789:
	mov	r1, r5	@, p_image
	mov	r0, r4	@, ChanID
	bl	VCTRL_RlsDSDFrame	@
	b	.L775	@
.L781:
	ldr	r3, .L790+28	@,
	movw	r2, #2303	@,
	ldr	r1, .L790+32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34960,
	b	.L775	@
.L782:
	mov	r0, r1	@, p_image
	ldr	r3, .L790+36	@,
	mov	r2, #2304	@,
	ldr	r1, .L790+32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34960,
	b	.L775	@
.L791:
	.align	2
.L790:
	.word	.LANCHOR0
	.word	.LC42
	.word	.LANCHOR2+52
	.word	.LC41
	.word	.LC15
	.word	.LANCHOR3
	.word	g_TraceImgPeriod
	.word	.LC37
	.word	.LC1
	.word	.LC40
	.fnend
	.size	DNR_ReleaseImage, .-DNR_ReleaseImage
	.align	2
	.global	DNR_ReceiveImage
	.type	DNR_ReceiveImage, %function
DNR_ReceiveImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ ChanID, ChanID
	.pad #8
	sub	sp, sp, #8	@,,
	bhi	.L811	@,
	cmp	r1, #0	@ p_image,
	mov	r4, r1	@ p_image, p_image
	beq	.L812	@,
	movw	r3, #11160	@ tmp149,
	ldr	r7, .L817	@ tmp218,
	movt	r3, 1	@ tmp149,
	mul	r5, r3, r0	@ tmp148, tmp149, ChanID
	add	r3, r7, r5	@ tmp150, tmp218, tmp148
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_6(D)].s32IsOpen, s_DnrChan[ChanID_6(D)].s32IsOpen
	cmp	r3, #0	@ s_DnrChan[ChanID_6(D)].s32IsOpen,
	beq	.L813	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.34979, eVidStd,
	mov	r8, r0	@ eVidStd,
	bics	r3, r3, #4	@ tmp221, D.34979,
	moveq	r3, #1	@ tmp157,
	movne	r3, #0	@ tmp157,
	cmp	r0, #4	@ eVidStd,
	orreq	r3, r3, #1	@,, tmp162, tmp157
	cmp	r3, #0	@ tmp162,
	bne	.L814	@,
	add	r0, r5, #968	@ tmp168, tmp148,
	mov	r1, r4	@, p_image
	add	r0, r7, r0	@, tmp218, tmp168
	bl	IMGQUE_GetImage	@
	mov	r5, r0	@ ret,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L815	@,
.L800:
	cmp	r5, #1	@ ret,
	bne	.L810	@,
	movw	r5, #19174	@ tmp182,
	ldr	r0, [r4, #176]	@ D.34977, p_image_10(D)->image_id
	mul	r5, r5, r6	@ tmp181, tmp182, ChanID
	ldr	r8, .L817	@ tmp180,
	add	r2, r5, r0	@ tmp183, tmp181, D.34977
	add	r2, r2, #178	@ tmp184, tmp183,
	ldr	r1, [r7, r2, asl #2]	@ D.34978, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	cmp	r1, #3	@ D.34978,
	beq	.L816	@,
	movw	r3, #11160	@ tmp191,
	movt	r3, 1	@ tmp191,
	mla	r3, r3, r6, r8	@ tmp192, tmp191, ChanID, tmp180
	add	r3, r3, #75776	@ tmp193, tmp192,
	add	r3, r3, #896	@ tmp193, tmp193,
	ldr	r3, [r3, #4]	@ s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable,
	beq	.L804	@,
	cmp	r1, #2	@ D.34978,
	beq	.L805	@,
	movw	r3, #2238	@,
	ldr	r2, .L817+4	@,
	str	r0, [sp, #4]	@ D.34977,
	mov	r0, #31	@,
	str	r1, [sp]	@ D.34978,
	ldr	r1, .L817+8	@,
	bl	dprint_vfmw	@
	mov	r1, r4	@, p_image
	mov	r0, r6	@, ChanID
	bl	DNR_ReleaseImage	@
	ldr	r2, [r4, #176]	@ D.34977, p_image_10(D)->image_id
	mvn	r0, #0	@ D.34973,
	mov	r3, #0	@ tmp204,
	add	r5, r5, r2	@ tmp202, tmp181, D.34977
	add	r5, r5, #178	@ tmp203, tmp202,
	str	r3, [r8, r5, asl #2]	@ tmp204, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
.L794:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L814:
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.34973
	bne	.L810	@,
	cmp	r8, #18	@ eVidStd,
	beq	.L794	@,
	ldr	r2, [r4, #120]	@ D.34977, p_image_10(D)->luma_2d_phy_addr
	ldr	r1, [r4, #124]	@ D.34977, p_image_10(D)->chrom_2d_phy_addr
	ldr	r3, [r4, #172]	@ D.34977, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.34977, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.34977, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.34977, D.34977, D.34977
	add	r3, r3, r1	@ D.34977, D.34977, D.34977
	str	r2, [r4, #96]	@ D.34977, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.34977, p_image_10(D)->btm_chrom_phy_addr
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L805:
	mov	r3, #3	@ tmp210,
	mov	r0, #0	@ D.34973,
	str	r3, [r8, r2, asl #2]	@ tmp210, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L815:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L817+12	@ tmp170,
	ldr	r1, .L817+16	@ tmp175,
	add	r3, r3, r6, lsl #2	@ tmp171, tmp170, ChanID,
	ldr	r2, [r3, #-4048]	@ tmp174, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r2, r2, r0	@ D.34977, tmp174, currtime
	cmp	r2, r1	@ D.34977, g_TraceImgPeriod
	strhi	r0, [r3, #-4048]	@ currtime, last_rec_pos_time
	b	.L800	@
.L804:
	mov	r3, #3	@ tmp216,
	mov	r0, #0	@ D.34973,
	str	r3, [r8, r2, asl #2]	@ tmp216, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	b	.L794	@
.L816:
	str	r0, [sp, #4]	@ D.34977,
	movw	r3, #2227	@,
	str	r1, [sp]	@ D.34978,
	mov	r0, #31	@,
	ldr	r2, .L817+4	@,
	ldr	r1, .L817+20	@,
	bl	dprint_vfmw	@
.L810:
	mvn	r0, #0	@ D.34973,
	b	.L794	@
.L813:
	mov	r2, r0	@, ChanID
	ldr	r1, .L817+24	@,
	mov	r0, r3	@, s_DnrChan[ChanID_6(D)].s32IsOpen
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34973,
	b	.L794	@
.L811:
	ldr	r3, .L817+28	@,
	movw	r2, #2169	@,
	ldr	r1, .L817+32	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34973,
	b	.L794	@
.L812:
	mov	r0, r1	@, p_image
	ldr	r3, .L817+36	@,
	movw	r2, #2170	@,
	ldr	r1, .L817+32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34973,
	b	.L794	@
.L818:
	.align	2
.L817:
	.word	.LANCHOR0
	.word	.LANCHOR2+72
	.word	.LC45
	.word	.LANCHOR3
	.word	g_TraceImgPeriod
	.word	.LC44
	.word	.LC43
	.word	.LC37
	.word	.LC1
	.word	.LC40
	.fnend
	.size	DNR_ReceiveImage, .-DNR_ReceiveImage
	.align	2
	.global	DNR_GetVoUsingFrameInQue
	.type	DNR_GetVoUsingFrameInQue, %function
DNR_GetVoUsingFrameInQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0	@ ChanID, ChanID
	.pad #24
	sub	sp, sp, #24	@,,
	bhi	.L855	@,
	cmp	r1, #0	@ VoUsingFrameArray,
	mov	r5, r1	@ VoUsingFrameArray, VoUsingFrameArray
	beq	.L856	@,
	mov	r1, #8	@,
	add	r0, sp, #16	@,,
	mov	r4, r2	@ s32Num, s32Num
	bl	__memzero	@
	ldr	r1, .L863	@ tmp254,
	movw	r9, #11160	@ tmp177,
	movt	r9, 1	@ tmp177,
	movw	r3, #26400	@ tmp179,
	mla	r9, r9, r6, r1	@ tmp178, tmp177, ChanID, tmp254
	add	r7, r9, #26368	@ tmp180, tmp178,
	add	r7, r7, #32	@ tmp180, tmp180,
	ldr	r3, [r9, r3]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.history
	ldr	r2, [r7, #4]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ i, i
	beq	.L823	@,
	movw	r8, #19174	@ tmp261,
	mov	lr, #0	@ s32UsingCount,
	mul	r8, r8, r6	@ tmp262, tmp261, ChanID
	b	.L826	@
.L858:
	ldr	ip, [r2, #104]	@ pImage_29->luma_phy_addr, pImage_29->luma_phy_addr
	str	ip, [r5, lr, asl #3]	@ pImage_29->luma_phy_addr, _35->FrameAddr
	add	lr, lr, #1	@ s32UsingCount, s32UsingCount,
	ldr	r2, [r2, #360]	@ D.35005, pImage_29->ImgSize
	str	r2, [r0, #4]	@ D.35005, _35->FrameSize
.L825:
	add	r3, r3, #1	@ i, i,
	ldr	r2, [r7, #4]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head, i
	beq	.L857	@,
.L826:
	add	ip, r8, r3	@ tmp190, tmp262, i
	add	r0, r5, lr, lsl #3	@ D.35000, VoUsingFrameArray, s32UsingCount,
	add	ip, ip, #260	@ tmp192, tmp190,
	add	ip, ip, #2	@ tmp192, tmp192,
	ldr	r2, [r1, ip, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.image_ptr
	adds	ip, r2, #0	@ tmp199, pImage,
	movne	ip, #1	@ tmp199,
	cmp	lr, #63	@ s32UsingCount,
	movgt	ip, #0	@ tmp199,
	cmp	ip, #0	@ tmp199,
	bne	.L858	@,
	cmp	lr, #63	@ s32UsingCount,
	ble	.L825	@,
.L853:
	mvn	r0, #0	@ D.35001,
.L850:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L857:
	movw	r2, #26408	@ tmp213,
	ldr	r2, [r9, r2]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	cmp	r3, r2	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	beq	.L834	@,
.L827:
	movw	r7, #11160	@ tmp257,
	movw	r2, #19174	@ tmp255,
	movt	r7, 1	@ tmp257,
	mla	r7, r7, r6, r1	@ tmp259, tmp257, ChanID, tmp254
	mul	r6, r2, r6	@ tmp256, tmp255, ChanID
	add	r7, r7, #26368	@ tmp260, tmp259,
	add	r7, r7, #40	@ tmp260, tmp260,
	b	.L835	@
.L859:
	ldr	r0, [r2, #104]	@ pImage_46->luma_phy_addr, pImage_46->luma_phy_addr
	str	r0, [r5, lr, asl #3]	@ pImage_46->luma_phy_addr, _52->FrameAddr
	add	lr, lr, #1	@ s32UsingCount, s32UsingCount,
	ldr	r2, [r2, #360]	@ D.35005, pImage_46->ImgSize
	str	r2, [r8, #4]	@ D.35005, _52->FrameSize
.L832:
	add	r3, r3, #1	@ i, i,
	ldr	r2, [r7]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, i
	beq	.L834	@,
.L835:
	add	ip, r6, r3	@ tmp219, tmp256, i
	add	r8, r5, lr, lsl #3	@ D.35000, VoUsingFrameArray, s32UsingCount,
	add	ip, ip, #260	@ tmp221, tmp219,
	add	ip, ip, #2	@ tmp221, tmp221,
	ldr	r2, [r1, ip, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.image_ptr
	adds	r0, r2, #0	@ tmp228, pImage,
	movne	r0, #1	@ tmp228,
	cmp	lr, #63	@ s32UsingCount,
	movgt	r0, #0	@ tmp228,
	cmp	r0, #0	@ tmp228,
	bne	.L859	@,
	cmp	lr, #63	@ s32UsingCount,
	ble	.L832	@,
	b	.L853	@
.L834:
	cmp	lr, #0	@ s32UsingCount,
	ble	.L828	@,
	ldr	r7, [r5]	@ D.35005, VoUsingFrameArray_23(D)->FrameAddr
	cmp	r7, #-2147483648	@ D.35005,
	beq	.L860	@,
	ldr	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, TempVoUsingFrameInfo.FrameAddr
	add	r8, r5, #8	@ ivtmp.420, VoUsingFrameArray,
	ldr	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.411, TempVoUsingFrameInfo.FrameSize
	mov	r6, #0	@ MinIndex,
.L836:
	add	ip, r6, #1	@ MinIndex, MinIndex,
	cmp	ip, lr	@ MinIndex, s32UsingCount
	bge	.L837	@,
	ldr	r1, [r5, ip, asl #3]	@ D.35005, MEM[base: VoUsingFrameArray_23(D), index: _112, step: 8, offset: 0B]
	cmp	r1, #-2147483648	@ D.35005,
	beq	.L861	@,
	mov	r2, r6	@ MinIndex, MinIndex
	mov	r3, ip	@ MinIndex, MinIndex
	b	.L840	@
.L842:
	ldr	r1, [r5, r3, asl #3]	@ D.35005, MEM[base: VoUsingFrameArray_23(D), index: _147, step: 8, offset: 0B]
	cmp	r1, #-2147483648	@ D.35005,
	beq	.L862	@,
.L840:
	ldr	r0, [r5, r2, asl #3]	@ _71->FrameAddr, _71->FrameAddr
	cmp	r0, r1	@ _71->FrameAddr, D.35005
	movgt	r2, r3	@ MinIndex, MinIndex
	add	r3, r3, #1	@ MinIndex, MinIndex,
	cmp	r3, lr	@ MinIndex, s32UsingCount
	blt	.L842	@,
	cmp	r6, r2	@ MinIndex, MinIndex
	beq	.L844	@,
	ldr	r1, [r5, r2, asl #3]	@ D.35005, _80->FrameAddr
	add	r3, r5, r2, lsl #3	@ D.35000, VoUsingFrameArray, MinIndex,
	ldr	r9, [r8, #-4]	@ TempVoUsingFrameInfo_FrameSize_lsm.411, MEM[base: _133, offset: 4294967292B]
	mov	r10, r7	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, D.35005
	str	r1, [r8, #-8]	@ D.35005, MEM[base: _133, offset: 4294967288B]
	ldr	r1, [r3, #4]	@ D.35005, _80->FrameSize
	str	r1, [r8, #-4]	@ D.35005, MEM[base: _133, offset: 4294967292B]
	str	r7, [r5, r2, asl #3]	@ D.35005, _80->FrameAddr
	str	r9, [r3, #4]	@ TempVoUsingFrameInfo_FrameSize_lsm.411, _80->FrameSize
.L844:
	ldr	r7, [r5, ip, asl #3]	@ D.35005, MEM[base: VoUsingFrameArray_23(D), index: _138, step: 8, offset: 0B]
	add	r8, r8, #8	@ ivtmp.420, ivtmp.420,
	mov	r6, ip	@ MinIndex, MinIndex
	cmp	r7, #-2147483648	@ D.35005,
	bne	.L836	@,
	str	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, TempVoUsingFrameInfo.FrameAddr
	str	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.411, TempVoUsingFrameInfo.FrameSize
.L829:
	str	ip, [sp, #4]	@ MinIndex,
	mov	r3, #2464	@,
	str	lr, [sp]	@ s32UsingCount,
	mov	r0, #31	@,
	ldr	r2, .L863+4	@,
	ldr	r1, .L863+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35001,
	b	.L850	@
.L862:
	str	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, TempVoUsingFrameInfo.FrameAddr
	str	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.411, TempVoUsingFrameInfo.FrameSize
.L839:
	str	r3, [sp, #8]	@ MinIndex,
	mov	r0, #31	@,
	movw	r3, #2472	@,
	str	r6, [sp, #4]	@ MinIndex,
	str	lr, [sp]	@ s32UsingCount,
	ldr	r2, .L863+4	@,
	ldr	r1, .L863+12	@,
	bl	dprint_vfmw	@
	b	.L853	@
.L823:
	movw	r2, #26408	@ tmp251,
	mov	lr, #0	@ s32UsingCount,
	ldr	r2, [r9, r2]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	cmp	r3, r2	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	bne	.L827	@,
.L828:
	str	lr, [r4]	@ s32UsingCount, *s32Num_88(D)
	mov	r0, #0	@ D.35001,
	b	.L850	@
.L837:
	bne	.L844	@,
	b	.L828	@
.L861:
	str	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, TempVoUsingFrameInfo.FrameAddr
	mov	r3, ip	@ MinIndex, MinIndex
	str	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.411, TempVoUsingFrameInfo.FrameSize
	b	.L839	@
.L855:
	ldr	r3, .L863+16	@,
	movw	r2, #2405	@,
	ldr	r1, .L863+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35001,
	b	.L850	@
.L860:
	mov	ip, #0	@ MinIndex,
	b	.L829	@
.L856:
	mov	r0, r1	@, VoUsingFrameArray
	ldr	r3, .L863+24	@,
	movw	r2, #2406	@,
	ldr	r1, .L863+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35001,
	b	.L850	@
.L864:
	.align	2
.L863:
	.word	.LANCHOR0
	.word	.LANCHOR2+92
	.word	.LC47
	.word	.LC48
	.word	.LC37
	.word	.LC1
	.word	.LC46
	.fnend
	.size	DNR_GetVoUsingFrameInQue, .-DNR_GetVoUsingFrameInQue
	.align	2
	.global	DNR_FsOccupyByVO
	.type	DNR_FsOccupyByVO, %function
DNR_FsOccupyByVO:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #368]	@ pImage_5(D)->is_processed_by_dnr, pImage_5(D)->is_processed_by_dnr
	cmp	r3, #0	@ pImage_5(D)->is_processed_by_dnr,
	ldr	r3, [r0, #360]	@ pImage_5(D)->ImgSize, pImage_5(D)->ImgSize
	ldreq	ip, [r0, #104]	@ ImgStartAddr, pImage_5(D)->luma_phy_addr
	ldrne	ip, [r0, #120]	@ ImgStartAddr, pImage_5(D)->luma_2d_phy_addr
	cmp	ip, r2	@ ImgStartAddr, DecPhyEndAddr
	add	r3, ip, r3	@ ImgEndAddr, ImgStartAddr, pImage_5(D)->ImgSize
	movlt	r0, #1	@ tmp144,
	movge	r0, #0	@ tmp144,
	cmp	ip, r1	@ ImgStartAddr, DecPhyStartAddr
	movlt	r0, #0	@ tmp144,
	cmp	r0, #0	@ tmp144,
	bne	.L870	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #1	@ tmp151,
	movgt	r0, #0	@ tmp151,
	cmp	r3, r1	@ ImgEndAddr, DecPhyStartAddr
	movle	r0, #0	@ tmp151,
	cmp	r0, #0	@ tmp151,
	bne	.L870	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #0	@ s32Count,
	movgt	r0, #1	@ s32Count,
	cmp	ip, r1	@ ImgStartAddr, DecPhyStartAddr
	movge	r0, #0	@ s32Count,
	bx	lr	@
.L870:
	mov	r0, #1	@ s32Count,
	bx	lr	@
	.fnend
	.size	DNR_FsOccupyByVO, .-DNR_FsOccupyByVO
	.align	2
	.global	DNR_FsIsInImgQue
	.type	DNR_FsIsInImgQue, %function
DNR_FsIsInImgQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r8, r1, #0	@ DecPhy, DecPhy
	beq	.L888	@,
	cmp	r2, #0	@ Size,
	beq	.L889	@,
	ldr	r7, .L890	@ tmp176,
	movw	r3, #11160	@ tmp135,
	movt	r3, 1	@ tmp135,
	movw	r1, #26400	@ tmp137,
	add	r6, r8, r2	@ DecPhyEndAddr, DecPhy, Size
	mov	r10, r0	@ ChanID, ChanID
	mla	r3, r3, r0, r7	@ tmp136, tmp135, ChanID, tmp176
	add	r2, r3, #26368	@ tmp138, tmp136,
	ldr	r4, [r3, r1]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.history
	ldr	r5, [r2, #36]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.head
	and	r4, r4, #63	@ i, i,
	cmp	r5, r4	@ i, i
	beq	.L883	@,
	movw	r9, #19174	@ tmp147,
	mul	r9, r9, r0	@ tmp146, tmp147, ChanID
	add	r3, r9, r4	@ tmp148, tmp146, i
	add	r3, r3, #260	@ tmp150, tmp148,
	add	r3, r3, #2	@ tmp150, tmp150,
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	movne	fp, #0	@ s32Count,
	bne	.L877	@,
	b	.L887	@
.L878:
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L887	@,
.L877:
	mov	r2, r6	@, DecPhyEndAddr
	mov	r1, r8	@, DecPhy
	bl	DNR_FsOccupyByVO	@
	add	r4, r4, #1	@ i, i,
	and	r4, r4, #63	@ i, i,
	add	r3, r9, r4	@ tmp154, tmp180, i
	cmp	r4, r5	@ i, i
	add	r3, r3, #260	@ tmp156, tmp154,
	add	r3, r3, #2	@ tmp156, tmp156,
	add	fp, fp, r0	@ s32Count, s32Count,
	bne	.L878	@,
.L875:
	movw	r3, #11160	@ tmp159,
	movw	r2, #26408	@ tmp161,
	movt	r3, 1	@ tmp159,
	and	r5, r5, #63	@ i, i,
	mla	r3, r3, r10, r7	@ tmp160, tmp159, ChanID, tmp176
	ldr	r1, .L890	@ tmp157,
	ldr	r4, [r3, r2]	@ D.35020, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.tail
	cmp	r4, r5	@ D.35020, i
	beq	.L879	@,
	movw	r3, #19174	@ tmp165,
	mul	r10, r3, r10	@ tmp164, tmp165, ChanID
	add	r3, r10, r5	@ tmp166, tmp164, i
	add	r3, r3, #260	@ tmp168, tmp166,
	add	r3, r3, #2	@ tmp168, tmp168,
	ldr	r0, [r1, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	bne	.L881	@,
	b	.L887	@
.L882:
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L887	@,
.L881:
	mov	r2, r6	@, DecPhyEndAddr
	mov	r1, r8	@, DecPhy
	bl	DNR_FsOccupyByVO	@
	add	r5, r5, #1	@ i, i,
	and	r5, r5, #63	@ i, i,
	add	r3, r10, r5	@ tmp172, tmp178, i
	cmp	r5, r4	@ i, D.35020
	add	r3, r3, #260	@ tmp174, tmp172,
	add	r3, r3, #2	@ tmp174, tmp174,
	add	fp, fp, r0	@ s32Count, s32Count,
	bne	.L882	@,
.L879:
	mov	r0, fp	@ D.35018, s32Count
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L887:
	mvn	r0, #0	@ D.35018,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L883:
	mov	fp, #0	@ s32Count,
	b	.L875	@
.L889:
	mov	r0, r2	@, Size
	ldr	r3, .L890+4	@,
	movw	r2, #2550	@,
	ldr	r1, .L890+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35018,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L888:
	mov	r0, r8	@, DecPhy
	ldr	r3, .L890+12	@,
	movw	r2, #2549	@,
	ldr	r1, .L890+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35018,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L891:
	.align	2
.L890:
	.word	.LANCHOR0
	.word	.LC50
	.word	.LC1
	.word	.LC49
	.fnend
	.size	DNR_FsIsInImgQue, .-DNR_FsIsInImgQue
	.align	2
	.global	DNR_ArrangeMem
	.type	DNR_ArrangeMem, %function
DNR_ArrangeMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	movgt	ip, #0	@ tmp160,
	movle	ip, #1	@ tmp160,
	cmp	r1, #0	@ pChanMem,
	moveq	ip, #0	@ tmp160,
	cmp	ip, #0	@ tmp160,
	beq	.L900	@,
	ldr	ip, [r1]	@ D.35042, pChanMem_9(D)->PhyAddr
	cmp	ip, #0	@ D.35042,
	beq	.L900	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #444
	sub	sp, sp, #444	@,,
	ldr	lr, [r1, #4]	@ pChanMem_9(D)->VirAddr, pChanMem_9(D)->VirAddr
	cmp	lr, #0	@ pChanMem_9(D)->VirAddr,
	beq	.L902	@,
	ldr	r1, [r1, #8]	@ D.35042, pChanMem_9(D)->Length
	cmp	r1, #0	@ D.35042,
	ble	.L902	@,
	ldr	lr, .L907	@ tmp162,
	ldr	r5, [lr, #36]	@ D.35044, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r5, #0	@ D.35044,
	beq	.L895	@,
	mvn	lr, #0	@ tmp165,
	mov	r4, r0	@ ChanID, ChanID
	add	r6, sp, #24	@ tmp164,,
	mov	r0, ip	@, D.35042
	str	r6, [sp, #16]	@ tmp164,
	mov	ip, #64	@ tmp163,
	str	lr, [sp, #12]	@ tmp165,
	str	ip, [sp, #20]	@ tmp163,
	str	ip, [sp, #4]	@ tmp163,
	mov	ip, #0	@ tmp166,
	str	ip, [sp, #8]	@ tmp166,
	str	ip, [sp]	@ tmp166,
	blx	r5	@ D.35044
	cmp	r0, #0	@ D.35042
	bne	.L895	@,
	movw	r3, #11160	@ tmp171,
	ldr	r6, .L907+4	@ tmp206,
	movt	r3, 1	@ tmp171,
	ldr	r2, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mul	r3, r3, r4	@ tmp170, tmp171, ChanID
	add	r5, sp, #440	@ ivtmp.439,,
	cmp	r2, #64	@ MemArrange.ValidFrameNum,
	ldr	ip, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	ldr	lr, [r5, #-408]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r8, sp, #288	@ D.35049,,
	add	r1, r6, r3	@ tmp177, tmp206, tmp170
	add	r4, r3, #26368	@ tmp173, tmp170,
	add	r4, r4, #64	@ tmp173, tmp173,
	add	r3, r3, #456	@ D.35047, tmp170,
	mov	r7, r0	@ i, D.35042
	mov	r9, r1	@ tmp209, tmp177
	add	r4, r6, r4	@ pLogicImage, tmp206, tmp173
	movge	r2, #64	@ D.35042,
	add	r6, r6, r3	@ ivtmp.442, tmp206, D.35047
	str	r2, [r1, #448]	@ D.35042, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	rsb	r3, lr, ip	@ D.35042, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r1, #452]	@ D.35042, s_DnrChan[ChanID_7(D)].s32ImgBlockMemSize
.L898:
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	add	r5, r5, #4	@ ivtmp.439, ivtmp.439,
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r6, r6, #4	@ ivtmp.442, ivtmp.442,
	cmp	r3, r7	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, i
	add	r7, r7, #1	@ i, i,
	ldrgt	r3, [r5, #-4]	@ D.35042, MEM[base: _70, offset: 0B]
	ldrle	r3, [sp, #32]	@ D.35042, MemArrange.FrameAddr
	str	r3, [r6, #-4]	@ D.35042,
	mov	r0, r3	@, D.35042
	str	r3, [r4, #-272]	@ D.35042, MEM[base: pLogicImage_59, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #-272]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 120B]
	cmp	r5, r8	@ ivtmp.439, D.35049
	str	r3, [r4, #-304]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 88B]
	str	r0, [r4, #-344]	@, MEM[base: pLogicImage_59, offset: 48B]
	bne	.L898	@,
.L895:
	mov	r0, #0	@ D.35041,
.L893:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L900:
	mvn	r0, #0	@ D.35041,
	bx	lr	@
.L902:
	mvn	r0, #0	@ D.35041,
	b	.L893	@
.L908:
	.align	2
.L907:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	DNR_ArrangeMem, .-DNR_ArrangeMem
	.align	2
	.global	DNR_EnableChanWithoutArrange
	.type	DNR_EnableChanWithoutArrange, %function
DNR_EnableChanWithoutArrange:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	bgt	.L911	@,
	movw	r1, #11160	@ tmp115,
	movt	r1, 1	@ tmp115,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mul	r5, r1, r0	@ tmp117, tmp115, ChanID
	ldr	r7, .L914	@ tmp116,
	mov	r4, r0	@ ChanID, ChanID
	add	r6, r7, r5	@ __p, tmp116, tmp117
	mov	r0, r6	@, __p
	bl	__memzero	@
	mov	r3, r4	@, ChanID
	mov	r0, sp	@,
	ldr	r2, .L914+4	@,
	mov	r1, #16	@,
	bl	snprintf	@
	add	r0, r5, #968	@ tmp127, tmp117,
	add	r0, r7, r0	@, tmp116, tmp127
	mov	r1, sp	@,
	ldr	r2, .L914+8	@,
	bl	IMGQUE_InitQueue	@
	mov	r3, #1	@ tmp134,
	mov	r0, #0	@ D.35052,
	str	r3, [r6, #8]	@ tmp134, s_DnrChan[ChanID_3(D)].s32IsOpen
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L911:
	mvn	r0, #0	@ D.35052,
	bx	lr	@
.L915:
	.align	2
.L914:
	.word	.LANCHOR0
	.word	.LC5
	.word	DNR_DelImageProc
	.fnend
	.size	DNR_EnableChanWithoutArrange, .-DNR_EnableChanWithoutArrange
	.align	2
	.global	DNR_SetDSDParam
	.type	DNR_SetDSDParam, %function
DNR_SetDSDParam:
	.fnstart
	@ args = 20, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.pad #16
	sub	sp, sp, #16	@,,
	movw	ip, #11160	@ tmp117,
	movt	ip, 1	@ tmp117,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	lr, sp, #12	@ tmp114,,
	ldr	r4, .L918	@ tmp115,
	stmia	lr, {r1, r2, r3}	@ tmp114,,,
	mla	r0, ip, r0, r4	@ tmp118, tmp117, ChanID, tmp115
	ldr	r2, [sp, #16]	@ stDSDParam.s32ThrWidth, stDSDParam.s32ThrWidth
	ldr	ip, [sp, #20]	@ stDSDParam.s32ThrHeight, stDSDParam.s32ThrHeight
	add	r0, r0, #75776	@ tmp120, tmp118,
	str	ip, [r0, #908]	@ stDSDParam.s32ThrHeight, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	str	r1, [r0, #900]	@ stDSDParam.s32DSDenable, s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable
	str	r2, [r0, #904]	@ stDSDParam.s32ThrWidth, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	ldmfd	sp!, {r4, lr}	@
	add	sp, sp, #16	@,,
	bx	lr	@
.L919:
	.align	2
.L918:
	.word	.LANCHOR0
	.fnend
	.size	DNR_SetDSDParam, .-DNR_SetDSDParam
	.align	2
	.global	DNR_ChanIsOpen
	.type	DNR_ChanIsOpen, %function
DNR_ChanIsOpen:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L921	@ tmp114,
	movw	r3, #11160	@ tmp116,
	movt	r3, 1	@ tmp116,
	mla	r0, r3, r0, r2	@ tmp117, tmp116, ChanID, tmp114
	ldr	r0, [r0, #8]	@, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L922:
	.align	2
.L921:
	.word	.LANCHOR0
	.fnend
	.size	DNR_ChanIsOpen, .-DNR_ChanIsOpen
	.align	2
	.global	DNR_OpenChan
	.type	DNR_OpenChan, %function
DNR_OpenChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L924	@ tmp111,
	movw	r3, #11160	@ tmp113,
	movt	r3, 1	@ tmp113,
	mov	r2, #1	@ tmp116,
	mla	r0, r3, r0, r1	@ tmp114, tmp113, ChanID, tmp111
	str	r2, [r0, #8]	@ tmp116, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L925:
	.align	2
.L924:
	.word	.LANCHOR0
	.fnend
	.size	DNR_OpenChan, .-DNR_OpenChan
	.align	2
	.global	DNR_SetDataSource
	.type	DNR_SetDataSource, %function
DNR_SetDataSource:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	mov	ip, r0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L930	@,
	ldr	r4, .L931	@ tmp121,
	movw	r3, #11160	@ tmp123,
	movt	r3, 1	@ tmp123,
	ldr	lr, [r2]	@ D.35066, pstVDecDnrPara_7(D)->pstCaptureInFrm
	mov	r0, #0	@ D.35064,
	mla	r3, r3, ip, r4	@ tmp124, tmp123, ChanID, tmp121
	add	r3, r3, #75776	@ tmp126, tmp124,
	str	lr, [r3, #892]	@ D.35066, s_DnrChan[ChanID_3(D)].pCaptureImageIn
	ldr	r2, [r2, #4]	@ D.35066, pstVDecDnrPara_7(D)->pstCaptureOutFrm
	str	r1, [r3, #880]	@ DNRDataSourceFlag, s_DnrChan[ChanID_3(D)].DNRCaptureEnableFlag
	str	r2, [r3, #896]	@ D.35066, s_DnrChan[ChanID_3(D)].pCaptureImageOut
	ldmfd	sp!, {r4, pc}	@
.L930:
	ldr	r3, .L931+4	@,
	movw	r2, #2713	@,
	ldr	r1, .L931+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.35064,
	ldmfd	sp!, {r4, pc}	@
.L932:
	.align	2
.L931:
	.word	.LANCHOR0
	.word	.LC6
	.word	.LC1
	.fnend
	.size	DNR_SetDataSource, .-DNR_SetDataSource
	.global	g_DCEnable
	.global	g_DREnable
	.global	g_DBEnable
	.global	s_DnrChan
	.global	s_DnrCtrl
	.global	g_DnrHwMem
	.section	.rodata
	.align	2
.LANCHOR2 = . + 0
	.type	__func__.32272, %object
	.size	__func__.32272, 25
__func__.32272:
	.ascii	"DNR_PrecessChanLastFrame\000"
	.space	3
	.type	__func__.32280, %object
	.size	__func__.32280, 23
__func__.32280:
	.ascii	"DNR_InsertQueueWithDSD\000"
	.space	1
	.type	__func__.32472, %object
	.size	__func__.32472, 17
__func__.32472:
	.ascii	"DNR_ReleaseImage\000"
	.space	3
	.type	__func__.32447, %object
	.size	__func__.32447, 17
__func__.32447:
	.ascii	"DNR_ReceiveImage\000"
	.space	3
	.type	__func__.32492, %object
	.size	__func__.32492, 25
__func__.32492:
	.ascii	"DNR_GetVoUsingFrameInQue\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pImageQueue is NULL\000"
.LC1:
	.ascii	"dnr_offline.c,L%d: %s\012\000"
	.space	1
.LC2:
	.ascii	"ImageID out of range\000"
	.space	3
.LC3:
	.ascii	"can not find instance ID\000"
	.space	3
.LC4:
	.ascii	"DNRHAL_NULL_FUN_RETURN,L%d\012\000"
.LC5:
	.ascii	"LQue%d\000"
	.space	1
.LC6:
	.ascii	"ChanID out of range\000"
.LC7:
	.ascii	"can NOT start a not-opened Chan\000"
.LC8:
	.ascii	"NULL == pArgs\000"
	.space	2
.LC9:
	.ascii	"ERROR: s32VcmpWmStartLine > s32VcmpWmEndLine\012\000"
	.space	2
.LC10:
	.ascii	"can NOT stop a not-opened Chan\000"
	.space	1
.LC11:
	.ascii	"can NOT destroy a not-opened Chan\000"
	.space	2
.LC12:
	.ascii	"FATAL ERROR: line %d DNR_PushTempImageToVOQ failed!"
	.ascii	"\012\000"
	.space	3
.LC13:
	.ascii	"FATAL ERROR: line %d IMGQUE_InsertImage failed!\012"
	.ascii	"\000"
	.space	3
.LC14:
	.ascii	"line %d clear all tmp img!\012\000"
.LC15:
	.ascii	"RelImgID=%d more then 64\012\000"
	.space	2
.LC16:
	.ascii	"[ChanID  %d] IMGQUE_DeleteImage failed %#x  [imageA"
	.ascii	"ddr: %#x, id: %d]\012\000"
	.space	2
.LC17:
	.ascii	"[ChanID  %d] IMGQUE_GetImage failed ret %#x\012\000"
	.space	3
.LC18:
	.ascii	"WARNNING:Get first image is not I type!\012\000"
	.space	3
.LC19:
	.ascii	"DNR_PushTempImageToVOQ return %d!\012\000"
	.space	1
.LC20:
	.ascii	"Last frame output failed, image size err!image_widt"
	.ascii	"h: %d, image_height: %d\012\000"
.LC21:
	.ascii	"line: %d pImageLogic is null!\012\000"
	.space	1
.LC22:
	.ascii	"Dnr fast forward fast back failed!\012\000"
.LC23:
	.ascii	"Dnr fast back optimize failed!\012\000"
.LC24:
	.ascii	"Last frame already output: %s, %d.\012\000"
.LC25:
	.ascii	"Error: %s, %d\012\000"
	.space	1
.LC26:
	.ascii	"Line %d Dnr fast forward fast back failed! TempImag"
	.ascii	"eNum %d s32ValidImgNum %d\012\000"
	.space	2
.LC27:
	.ascii	"@@@@DNR Copy VDEC Inframe,image_id is %d,MirrorEn i"
	.ascii	"s %d \012\000"
	.space	2
.LC28:
	.ascii	"DNR receive Capture CMD,set flag to 1\012\000"
	.space	1
.LC29:
	.ascii	"Last frame output failed, DelayTime > 500!\012\000"
.LC30:
	.ascii	"*********************** DNR not ready *************"
	.ascii	"**********\012\000"
	.space	1
.LC31:
	.ascii	"IMGQUE_InsertImage err\012\000"
.LC32:
	.ascii	"dnr_pts: %lld -> %lld Usertag = %lld\012\000"
	.space	2
.LC33:
	.ascii	"Last frame ID changed, vdmQ_id(%d) -> dnrQ_id(%d).\012"
	.ascii	"\000"
.LC34:
	.ascii	"dnr_format: 0x%08x\012\000"
.LC35:
	.ascii	"%u\012\000"
.LC36:
	.ascii	"DNRDataSourceFlag is not expected value!\012\000"
	.space	2
.LC37:
	.ascii	"ChanID out of range!\000"
	.space	3
.LC38:
	.ascii	"image_width out of range!\000"
	.space	2
.LC39:
	.ascii	"WRONG:DNRDataSourceFlag = %d\012\000"
	.space	2
.LC40:
	.ascii	"p_image is NULL\000"
.LC41:
	.ascii	"%s %d, This channel %d is destroyed or doesn't exis"
	.ascii	"t\012\000"
	.space	2
.LC42:
	.ascii	"nnn RelImgID %d  [p_local_img: %#x, p_image: %#x]\012"
	.ascii	"\000"
	.space	1
.LC43:
	.ascii	"This channel %d is destroyed or doesn't exist\012\000"
	.space	1
.LC44:
	.ascii	"######Error: %s, %d state:%d image_id:%d \012\000"
	.space	1
.LC45:
	.ascii	"*****Error: %s, %d state:%d image_id:%d \012\000"
	.space	2
.LC46:
	.ascii	"VoUsingFrameArray is NULL\000"
	.space	2
.LC47:
	.ascii	"Fun: %s, L: %d..Ordering Error1!, Count: %d, i: %d\012"
	.ascii	"\000"
.LC48:
	.ascii	"Fun: %s, L: %d..Ordering Error2!, Count: %d, i: %d,"
	.ascii	" j: %d\012\000"
	.space	1
.LC49:
	.ascii	"DecPhy = NULL\000"
	.space	2
.LC50:
	.ascii	"DecPhy size = 0\000"
	.bss
	.align	3
.LANCHOR0 = . + 0
.LANCHOR1 = . + 302808
.LANCHOR3 = . + 310992
	.type	s_DnrChan, %object
	.size	s_DnrChan, 306784
s_DnrChan:
	.space	306784
	.type	s_eDnrDrvSleepStage, %object
	.size	s_eDnrDrvSleepStage, 4
s_eDnrDrvSleepStage:
	.space	4
	.type	s_DnrCtrl, %object
	.size	s_DnrCtrl, 60
s_DnrCtrl:
	.space	60
	.type	timePrevDo.32217, %object
	.size	timePrevDo.32217, 4
timePrevDo.32217:
	.space	4
	.type	g_DREnable, %object
	.size	g_DREnable, 4
g_DREnable:
	.space	4
	.type	g_DBEnable, %object
	.size	g_DBEnable, 4
g_DBEnable:
	.space	4
	.type	g_DCEnable, %object
	.size	g_DCEnable, 4
g_DCEnable:
	.space	4
	.type	last_rec_pos_time.32315, %object
	.size	last_rec_pos_time.32315, 16
last_rec_pos_time.32315:
	.space	16
	.type	last_rec_pos_time.32426, %object
	.size	last_rec_pos_time.32426, 16
last_rec_pos_time.32426:
	.space	16
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.32346, %object
	.size	last_rec_pos_time.32346, 16
last_rec_pos_time.32346:
	.space	16
	.type	last_rec_pos_time.32470, %object
	.size	last_rec_pos_time.32470, 16
last_rec_pos_time.32470:
	.space	16
	.type	last_rec_pos_time.32445, %object
	.size	last_rec_pos_time.32445, 16
last_rec_pos_time.32445:
	.space	16
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
