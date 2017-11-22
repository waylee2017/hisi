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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(dnr_offline)
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
	subs	r2, r0, #0	@ pImageQueue, pImageQueue
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L11	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L4	@,
	ldr	ip, .L13	@ tmp120,
	add	r3, ip, #968	@ tmp121, tmp120,
	subs	r3, r2, r3	@ D.32796, pImageQueue, tmp121
	mvnne	r3, #0	@ D.32796,
	cmp	r3, #0	@ D.32796,
	blt	.L12	@,
	movw	r0, #19174	@ tmp128,
	mov	r2, #0	@ tmp131,
	mla	r3, r0, r3, r1	@ tmp129, tmp128, D.32796, ImageID
	mov	r0, r2	@ D.32794, tmp131
	add	r3, r3, #178	@ tmp130, tmp129,
	str	r2, [ip, r3, asl #2]	@ tmp131, s_DnrChan[_20].LogicImageIsUsed
	ldmfd	sp!, {r4, pc}	@
.L4:
	ldr	r3, .L13+4	@,
	movw	r2, #1934	@,
	ldr	r1, .L13+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32794,
	ldmfd	sp!, {r4, pc}	@
.L12:
	ldr	r3, .L13+12	@,
	movw	r2, #1955	@,
	ldr	r1, .L13+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32794,
	ldmfd	sp!, {r4, pc}	@
.L11:
	ldr	r3, .L13+16	@,
	movw	r2, #1933	@,
	ldr	r1, .L13+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32794,
	ldmfd	sp!, {r4, pc}	@
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.word	.LC2
	.word	.LC1
	.word	.LC3
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
	ldr	r3, .L18	@ tmp113,
	ldr	r0, [r3, #3040]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r0, #0	@ s_eDnrDrvSleepStage,
	moveq	r2, #2	@ tmp116,
	mvnne	r0, #0	@ ret,
	streq	r2, [r3, #3040]	@ tmp116, s_eDnrDrvSleepStage
	bx	lr	@
.L19:
	.align	2
.L18:
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
	ldr	r3, .L21	@ tmp113,
	ldr	r0, [r3, #3040]	@, s_eDnrDrvSleepStage
	bx	lr	@
.L22:
	.align	2
.L21:
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
	ldr	r3, .L28	@ tmp111,
	ldr	r2, [r3, #3040]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r2, #2	@ s_eDnrDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #3040]	@ tmp114, s_eDnrDrvSleepStage
	bx	lr	@
.L29:
	.align	2
.L28:
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
	ldr	r3, .L34	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r3]	@ D.32813, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.32813,
	beq	.L31	@,
	blx	r0	@ D.32813
.L32:
	ldr	r3, .L34+4	@ tmp113,
	mov	r2, #0	@ tmp114,
	str	r2, [r3, #3040]	@ tmp114, s_eDnrDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L31:
	mov	r2, #142	@,
	ldr	r1, .L34+8	@,
	bl	dprint_vfmw	@
	b	.L32	@
.L35:
	.align	2
.L34:
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
	subs	r3, r0, #0	@ ChanID, ChanID
	ldreq	r2, .L39	@ tmp113,
	moveq	r0, r3	@ D.32817, ChanID
	mvnne	r0, #0	@ D.32817,
	streq	r3, [r2, #12]	@ ChanID, s_DnrChan[0].InstMode
	streq	r3, [r2, #8]	@ ChanID, s_DnrChan[0].s32IsOpen
	bx	lr	@
.L40:
	.align	2
.L39:
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
	ldr	r0, .L44	@ tmp116,
	mul	r3, r2, r5	@ tmp117, tmp118, ChanID
	add	r1, r4, #72	@, pstDnrChanState,
	add	r2, r4, #76	@, pstDnrChanState,
	add	ip, r0, r3	@ tmp119, tmp116, tmp117
	add	r3, r3, #968	@ tmp126, tmp117,
	add	r0, r0, r3	@, tmp116, tmp126
	ldr	r3, [ip, #448]	@ D.32820, s_DnrChan[ChanID_5(D)].s32ValidImgNum
	str	r3, [r4, #68]	@ D.32820, pstDnrChanState_2(D)->total_frame_num
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	IMGQUE_GetImageNum	@
.L45:
	.align	2
.L44:
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
	ldr	r4, .L51	@ tmp112,
	add	r0, r4, #24	@, tmp112,
	bl	DNR_CloseDrivers	@
	mov	r0, r4	@, tmp112
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L52:
	.align	2
.L51:
	.word	.LANCHOR1+3044
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
	bne	.L54	@,
	ldr	r2, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
.L55:
	movw	r0, #20592	@,
	mov	r2, r5	@, pstMem
	movt	r0, 4127	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	beq	.L58	@,
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L54:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	b	.L55	@
.L58:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, .L67	@ tmp134,
	ldr	r0, [r6]	@ D.32838, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r0, #0	@ D.32838,
	beq	.L60	@,
	blx	r0	@ D.32838
.L61:
	ldr	r5, .L67+4	@ tmp135,
	ldr	r4, [r5, #3044]	@ D.32837, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.32837,
	bne	.L65	@,
	mov	r1, #60	@,
	ldr	r0, .L67+8	@,
	bl	__memzero	@
	movw	r1, #11160	@,
	movt	r1, 1	@,
	ldr	r0, .L67+12	@,
	bl	__memzero	@
	ldr	r0, .L67+16	@,
	bl	DNR_OpenDrivers	@
	mov	r1, #256	@,
	ldr	r0, .L67+20	@,
	bl	__memzero	@
	ldr	r3, [r6, #4]	@ D.32838, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r3, #0	@ D.32838,
	beq	.L63	@,
	blx	r3	@ D.32838
.L64:
	mov	r3, #1	@ tmp132,
	str	r3, [r5, #3044]	@ tmp132, s_DnrCtrl.s32IsVCTRLOpen
.L62:
	mov	r0, r4	@, D.32837
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L60:
	mov	r2, #155	@,
	ldr	r1, .L67+24	@,
	bl	dprint_vfmw	@
	b	.L61	@
.L63:
	mov	r2, #175	@,
	ldr	r1, .L67+24	@,
	mov	r0, r4	@, D.32837
	bl	dprint_vfmw	@
	b	.L64	@
.L65:
	mvn	r4, #0	@ D.32837,
	b	.L62	@
.L68:
	.align	2
.L67:
	.word	g_dnr_hal_fun_ptr
	.word	.LANCHOR1
	.word	.LANCHOR1+3044
	.word	.LANCHOR0
	.word	.LANCHOR1+3068
	.word	.LANCHOR0+712
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
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #468
	sub	sp, sp, #468	@,,
	bgt	.L70	@,
	mov	r4, r1	@ pChanMem, pChanMem
	movw	r1, #11160	@ tmp184,
	movt	r1, 1	@ tmp184,
	ldr	r9, .L96	@ tmp254,
	mul	r6, r1, r0	@ tmp186, tmp184, ChanID
	str	r0, [sp, #28]	@ ChanID, %sfp
	mov	r7, r3	@ PicHeight, PicHeight
	mov	r5, r2	@ PicWidth, PicWidth
	add	fp, r9, r6	@ __p, tmp254, tmp186
	mov	r0, fp	@, __p
	bl	__memzero	@
	cmp	r4, #0	@ pChanMem,
	beq	.L70	@,
	ldr	r0, [r4]	@ D.32860, pChanMem_13(D)->PhyAddr
	cmp	r0, #0	@ D.32860,
	beq	.L70	@,
	ldr	r3, [r4, #4]	@ pChanMem_13(D)->VirAddr, pChanMem_13(D)->VirAddr
	cmp	r3, #0	@ pChanMem_13(D)->VirAddr,
	beq	.L70	@,
	ldr	r1, [r4, #8]	@ D.32860, pChanMem_13(D)->Length
	cmp	r1, #0	@ D.32860,
	ble	.L70	@,
	ldr	r3, .L96+4	@ tmp190,
	ldr	ip, [r3, #36]	@ D.32862, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.32862,
	beq	.L71	@,
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
	blx	ip	@ D.32862
	subs	r3, r0, #0	@ D.32859,
	str	r3, [sp, #24]	@ D.32859, %sfp
	bne	.L71	@,
	ldr	r1, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r5, sp, #464	@ ivtmp.167,,
	add	r4, r6, #26368	@ tmp201, tmp186,
	ldr	r0, [sp, #60]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r1, #64	@ MemArrange.ValidFrameNum,
	ldr	ip, [r5, #-408]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, #64	@ tmp201, tmp201,
	add	r6, r6, #456	@ D.32865, tmp186,
	movge	r1, #64	@ D.32860,
	rsb	r0, ip, r0	@ D.32860, MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r9, r4	@ pLogicImage, tmp254, tmp201
	add	r6, r9, r6	@ ivtmp.170, tmp254, D.32865
	add	r7, sp, #312	@ D.32867,,
	mov	r10, fp	@ tmp257, __p
	mov	r8, r3	@ i, D.32859
	str	r1, [fp, #448]	@ D.32860, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	str	r0, [fp, #452]	@ D.32860, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	b	.L74	@
.L95:
	ldr	r1, [r5]	@ D.32860, MEM[base: _76, offset: 0B]
	str	r1, [r6]	@ D.32860, MEM[base: _77, offset: 0B]
	mov	r0, r1	@, D.32860
	str	r1, [r4, #120]	@ D.32860, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	r1, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	ldr	r1, [r10, #452]	@ D.32860, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	str	r1, [r4, #360]	@ D.32860, MEM[base: pLogicImage_67, offset: 360B]
.L73:
	add	r5, r5, #4	@ ivtmp.167, ivtmp.167,
	add	r8, r8, #1	@ i, i,
	cmp	r5, r7	@ ivtmp.167, D.32867
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r6, r6, #4	@ ivtmp.170, ivtmp.170,
	beq	.L94	@,
.L74:
	ldr	r1, [r10, #448]	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	cmp	r1, r8	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, i
	bgt	.L95	@,
	ldr	r1, [sp, #56]	@ D.32860, MemArrange.FrameAddr
	str	r1, [r6]	@ D.32860, MEM[base: _79, offset: 0B]
	mov	r0, r1	@, D.32860
	str	r1, [r4, #120]	@ D.32860, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	r1, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	b	.L73	@
.L71:
	mov	r3, #0	@ D.32859,
	str	r3, [sp, #24]	@ D.32859, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L70:
	mvn	r3, #0	@ D.32859,
	str	r3, [sp, #24]	@ D.32859, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L94:
	ldr	r4, [sp, #28]	@ ChanID, %sfp
	mov	r1, #16	@,
	ldr	r2, .L96+8	@,
	add	r0, sp, #32	@ tmp265,,
	mov	r3, r4	@, ChanID
	bl	snprintf	@
	movw	r3, #11160	@ tmp245,
	movt	r3, 1	@ tmp245,
	add	r1, sp, #32	@ tmp266,,
	mul	r8, r3, r4	@ tmp244, tmp245, ChanID
	ldr	r2, .L96+12	@,
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
.L97:
	.align	2
.L96:
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L109	@,
	ldr	r3, .L113	@ tmp173,
	ldr	r2, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r2, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L110	@,
	cmp	r1, #0	@ pArgs,
	beq	.L111	@,
	add	r2, r3, #73728	@ tmp174, tmp173,
	ldrb	ip, [r1, #1]	@ zero_extendqisi2	@ D.32874, pArgs_9(D)->s32VcmpEn
	ldr	r0, [r2, #2948]	@ s_DnrChan[0].stDSDParam.s32DSDenable, s_DnrChan[0].stDSDParam.s32DSDenable
	strb	ip, [r3, #2]	@ D.32874, s_DnrChan[0].s32VcmpEn
	cmp	r0, #1	@ s_DnrChan[0].stDSDParam.s32DSDenable,
	ldreqsb	r0, [r1]	@ pArgs_9(D)->s32MirrorEn, pArgs_9(D)->s32MirrorEn
	ldrneb	r0, [r1]	@ zero_extendqisi2	@ D.32874, pArgs_9(D)->s32MirrorEn
	streq	r0, [r2, #2960]	@ pArgs_9(D)->s32MirrorEn, s_DnrChan[0].stDSDParam.s32MirrorEn
	strneb	r0, [r3, #1]	@ D.32874, s_DnrChan[0].s32MirrorEn
	ldrsb	r0, [r1, #1]	@ pArgs_9(D)->s32VcmpEn, pArgs_9(D)->s32VcmpEn
	cmp	r0, #1	@ pArgs_9(D)->s32VcmpEn,
	beq	.L105	@,
.L107:
	mov	r0, #0	@ D.32872,
	ldmfd	sp!, {r4, pc}	@
.L105:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.32874, pArgs_9(D)->s32WmEn
	strb	r0, [r3, #3]	@ D.32874, s_DnrChan[0].s32WmEn
	ldrsb	r3, [r1, #2]	@ pArgs_9(D)->s32WmEn, pArgs_9(D)->s32WmEn
	cmp	r3, #1	@ pArgs_9(D)->s32WmEn,
	beq	.L112	@,
	movw	r3, #65535	@ tmp167,
	mov	r0, #0	@ D.32872,
	str	r3, [r2, #2888]	@ tmp167, s_DnrChan[0].s32VcmpWmStartLine
	str	r3, [r2, #2892]	@ tmp167, s_DnrChan[0].s32VcmpWmEndLine
	ldmfd	sp!, {r4, pc}	@
.L112:
	ldr	r0, [r1, #4]	@ D.32873, pArgs_9(D)->s32VcmpWmStartLine
	ldr	r4, .L113+4	@ tmp151,
	str	r0, [r2, #2888]	@ D.32873, s_DnrChan[0].s32VcmpWmStartLine
	ldr	r3, [r1, #8]	@ D.32873, pArgs_9(D)->s32VcmpWmEndLine
	cmp	r0, r3	@ D.32873, D.32873
	str	r3, [r2, #2892]	@ D.32873, s_DnrChan[0].s32VcmpWmEndLine
	ble	.L107	@,
	ldr	r1, .L113+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	movw	r3, #65535	@ tmp159,
	mov	r0, #0	@ D.32872,
	str	r3, [r4, #2888]	@ tmp159, s_DnrChan[0].s32VcmpWmStartLine
	str	r3, [r4, #2892]	@ tmp159, s_DnrChan[0].s32VcmpWmEndLine
	ldmfd	sp!, {r4, pc}	@
.L110:
	ldr	r3, .L113+12	@,
	movw	r2, #365	@,
	ldr	r1, .L113+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32872,
	ldmfd	sp!, {r4, pc}	@
.L109:
	ldr	r3, .L113+20	@,
	mov	r2, #364	@,
	ldr	r1, .L113+16	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32872,
	ldmfd	sp!, {r4, pc}	@
.L111:
	ldr	r3, .L113+24	@,
	movw	r2, #366	@,
	ldr	r1, .L113+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32872,
	ldmfd	sp!, {r4, pc}	@
.L114:
	.align	2
.L113:
	.word	.LANCHOR0
	.word	.LANCHOR0+73728
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
	subs	r2, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L121	@,
	ldr	r3, .L124	@ tmp118,
	ldr	ip, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	ip, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L122	@,
	cmp	r1, #0	@ pArgs,
	beq	.L123	@,
	ldr	r1, [r1]	@ D.32882, *pArgs_8(D)
	add	r3, r3, #73728	@ tmp126, tmp118,
	mov	r0, r2	@ D.32881, ChanID
	str	r1, [r3, #2896]	@ D.32882, s_DnrChan[0].s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L122:
	ldr	r3, .L124+4	@,
	movw	r2, #410	@,
	ldr	r1, .L124+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32881,
	ldmfd	sp!, {r4, pc}	@
.L121:
	ldr	r3, .L124+12	@,
	movw	r2, #409	@,
	ldr	r1, .L124+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32881,
	ldmfd	sp!, {r4, pc}	@
.L123:
	ldr	r3, .L124+16	@,
	movw	r2, #411	@,
	ldr	r1, .L124+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32881,
	ldmfd	sp!, {r4, pc}	@
.L125:
	.align	2
.L124:
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
	subs	r2, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L132	@,
	ldr	r3, .L135	@ tmp119,
	ldr	ip, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	ip, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L133	@,
	cmp	r1, #0	@ pArgs,
	beq	.L134	@,
	ldr	ip, [r1, #12]	@ D.32887, pArgs_8(D)->u32BackwardOptimizeFlag
	add	r3, r3, #73728	@ tmp127, tmp119,
	mov	r0, r2	@ D.32885, ChanID
	str	ip, [r3, #2900]	@ D.32887, s_DnrChan[0].u32BackwardOptimizeFlag
	ldr	r2, [r1, #16]	@ D.32887, pArgs_8(D)->u32DispOptimizeFlag
	str	r2, [r3, #2916]	@ D.32887, s_DnrChan[0].u32DispOptimizeFlag
	ldmfd	sp!, {r4, pc}	@
.L133:
	ldr	r3, .L135+4	@,
	movw	r2, #422	@,
	ldr	r1, .L135+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32885,
	ldmfd	sp!, {r4, pc}	@
.L132:
	ldr	r3, .L135+12	@,
	movw	r2, #421	@,
	ldr	r1, .L135+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32885,
	ldmfd	sp!, {r4, pc}	@
.L134:
	ldr	r3, .L135+16	@,
	movw	r2, #423	@,
	ldr	r1, .L135+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32885,
	ldmfd	sp!, {r4, pc}	@
.L136:
	.align	2
.L135:
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
	subs	r3, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L142	@,
	ldr	r2, .L144	@ tmp116,
	ldr	r1, [r2, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r1, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L143	@,
	mov	r0, r3	@ D.32890, ChanID
	str	r1, [r2, #12]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].InstMode
	ldmfd	sp!, {r4, pc}	@
.L143:
	ldr	r3, .L144+4	@,
	movw	r2, #433	@,
	ldr	r1, .L144+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32890,
	ldmfd	sp!, {r4, pc}	@
.L142:
	ldr	r3, .L144+12	@,
	mov	r2, #432	@,
	ldr	r1, .L144+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32890,
	ldmfd	sp!, {r4, pc}	@
.L145:
	.align	2
.L144:
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
	subs	r2, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L151	@,
	ldr	r3, .L153	@ tmp116,
	ldr	r1, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r1, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L152	@,
	mov	r0, r2	@ D.32896, ChanID
	str	r2, [r3, #12]	@ ChanID, s_DnrChan[0].InstMode
	ldmfd	sp!, {r4, pc}	@
.L152:
	ldr	r3, .L153+4	@,
	movw	r2, #575	@,
	ldr	r1, .L153+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32896,
	ldmfd	sp!, {r4, pc}	@
.L151:
	ldr	r3, .L153+12	@,
	movw	r2, #574	@,
	ldr	r1, .L153+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32896,
	ldmfd	sp!, {r4, pc}	@
.L154:
	.align	2
.L153:
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L160	@,
	ldr	r3, .L162	@ tmp116,
	ldr	r3, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L161	@,
	bl	DNR_StopChan	@
	mov	r0, r4	@ D.32901, ChanID
	ldmfd	sp!, {r4, pc}	@
.L161:
	ldr	r3, .L162+4	@,
	mov	r2, #564	@,
	ldr	r1, .L162+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32901,
	ldmfd	sp!, {r4, pc}	@
.L160:
	ldr	r3, .L162+12	@,
	movw	r2, #563	@,
	ldr	r1, .L162+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.32901,
	ldmfd	sp!, {r4, pc}	@
.L163:
	.align	2
.L162:
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
	ldr	r7, .L180	@ tmp208,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r0, r7, r2	@ tmp135, tmp208, tmp133
	add	r4, r0, #51456	@ tmp137, tmp135,
	add	r4, r4, #64	@ tmp137, tmp137,
	ldr	r5, [r4, #4]	@ D.32916, s_DnrChan[InstId_8(D)].TempImageNum
	cmp	r5, #0	@ D.32916,
	ble	.L178	@,
	sub	r5, r5, #1	@ i, D.32916,
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
	blt	.L172	@,
	movw	r6, #11160	@ tmp182,
	mov	r4, #392	@ tmp186,
	movt	r6, 1	@ tmp182,
	movw	r8, #19174	@ tmp209,
	mul	r6, r6, r9	@ tmp181, tmp182, InstId
	mla	r4, r4, r5, r6	@ D.32920, tmp186, i, tmp181
	add	r6, r6, #968	@ tmp183, tmp181,
	mul	r8, r8, r9	@ tmp210, tmp209, InstId
	add	r4, r4, #51456	@ D.32920, D.32920,
	add	r4, r4, #72	@ D.32920, D.32920,
	add	r6, r7, r6	@ D.32919, tmp208, tmp183
	add	r4, r7, r4	@ ivtmp.195, tmp208, D.32920
	b	.L171	@
.L179:
	ldr	ip, [r10]	@ D.32918, g_event_report
	add	r3, r8, r3	@ tmp195, tmp210, D.32917
	add	r3, r3, #178	@ tmp196, tmp195,
	add	r2, sp, #8	@ tmp199,,
	cmp	ip, #0	@ D.32918,
	mov	r1, #5	@,
	mov	r0, r9	@, InstId
	str	lr, [r7, r3, asl #2]	@ tmp197, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	beq	.L170	@,
	str	r4, [r2, #-4]!	@ ivtmp.195, para
	blx	ip	@ D.32918
.L170:
	sub	r5, r5, #1	@ i, i,
	sub	r4, r4, #392	@ ivtmp.195, ivtmp.195,
	cmn	r5, #1	@ i,
	beq	.L172	@,
.L171:
	mov	r1, r4	@, ivtmp.195
	mov	r0, r6	@, D.32919
	bl	IMGQUE_InsertImage	@
	mov	ip, #0	@ tmp205,
	movw	r2, #619	@,
	ldr	r1, .L180+4	@,
	ldr	r10, .L180+8	@ tmp198,
	mov	lr, #2	@ tmp197,
	ldr	r3, [r4, #176]	@ D.32917, MEM[base: pTemp_16, offset: 176B]
	cmp	r0, #1	@,
	mov	r0, ip	@, tmp205
	beq	.L179	@,
	add	r3, r8, r3	@ tmp203, tmp210, D.32917
	sub	r5, r5, #1	@ i, i,
	add	r3, r3, #178	@ tmp204, tmp203,
	sub	r4, r4, #392	@ ivtmp.195, ivtmp.195,
	str	ip, [r7, r3, asl #2]	@ tmp205, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r5, #1	@ i,
	bne	.L171	@,
.L172:
	movw	r3, #11160	@ tmp175,
	mov	r2, #0	@ tmp179,
	movt	r3, 1	@ tmp175,
	mov	r0, r2	@ D.32915, tmp179
	mla	r7, r3, r9, r7	@ tmp176, tmp175, InstId, tmp208
	add	r7, r7, #51456	@ tmp178, tmp176,
	str	r2, [r7, #68]	@ tmp179, s_DnrChan[InstId_8(D)].TempImageNum
.L166:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L178:
	mov	r2, #592	@,
	ldr	r1, .L180+12	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp145,
	mvn	r0, #0	@ D.32915,
	str	r3, [r4, #4]	@ tmp145, s_DnrChan[InstId_8(D)].TempImageNum
	b	.L166	@
.L181:
	.align	2
.L180:
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
	ldr	r5, .L191	@ tmp162,
	mul	r4, r4, r0	@ tmp126, tmp127, InstId
	mov	r7, r0	@ InstId, InstId
	add	r6, r5, r4	@ tmp128, tmp162, tmp126
	add	r6, r6, #51456	@ tmp130, tmp128,
	add	r6, r6, #64	@ tmp130, tmp130,
	ldr	r3, [r6, #4]	@ D.32939, s_DnrChan[InstId_6(D)].TempImageNum
	cmp	r3, #0	@ D.32939,
	ble	.L190	@,
	subs	r9, r3, #1	@ i, D.32939,
	bmi	.L187	@,
	mov	r2, #392	@ tmp148,
	movw	r6, #19174	@ tmp163,
	mla	r4, r2, r3, r4	@ D.32941, tmp148, D.32939, tmp126
	mov	r8, #0	@ tmp165,
	mul	r6, r6, r0	@ tmp164, tmp163, InstId
	add	r4, r4, #51200	@ D.32941, D.32941,
	add	r4, r4, #112	@ D.32941, D.32941,
	add	r4, r5, r4	@ ivtmp.206, tmp162, D.32941
.L186:
	ldr	r3, [r4], #-392	@ D.32940, MEM[base: _28, offset: 0B]
	sub	r9, r9, #1	@ i, i,
	movw	r2, #646	@,
	ldr	r1, .L191+4	@,
	add	r3, r6, r3	@ tmp157, tmp164, D.32940
	mov	r0, #22	@,
	add	r3, r3, #178	@ tmp158, tmp157,
	str	r8, [r5, r3, asl #2]	@ tmp165, s_DnrChan[InstId_6(D)].LogicImageIsUsed
	bl	dprint_vfmw	@
	cmn	r9, #1	@ i,
	bne	.L186	@,
.L187:
	movw	r3, #11160	@ tmp141,
	mov	r2, #0	@ tmp145,
	movt	r3, 1	@ tmp141,
	mov	r0, r2	@ D.32938, tmp145
	mla	r5, r3, r7, r5	@ tmp142, tmp141, InstId, tmp162
	add	r5, r5, #51456	@ tmp144, tmp142,
	add	r5, r5, #64	@ tmp144, tmp144,
	str	r2, [r5, #4]	@ tmp145, s_DnrChan[InstId_6(D)].TempImageNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L190:
	mov	r2, #636	@,
	ldr	r1, .L191+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r3, #0	@ tmp138,
	mvn	r0, #0	@ D.32938,
	str	r3, [r6, #4]	@ tmp138, s_DnrChan[InstId_6(D)].TempImageNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L192:
	.align	2
.L191:
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
	ldr	r5, .L234	@ tmp296,
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
	beq	.L194	@,
	ldr	r3, [r10, #8]	@ pFrameIntf_28->release_frame, pFrameIntf_28->release_frame
	cmp	r3, r6	@ pFrameIntf_28->release_frame,
	beq	.L194	@,
	add	r9, r5, r8	@ tmp219, tmp296, tmp163
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum,
	ble	.L194	@,
	add	r7, r8, #26368	@ D.33000, tmp163,
	add	r8, r8, #708	@ D.33000, tmp163,
	add	r7, r7, #112	@ D.33000, D.33000,
	add	r8, r5, r8	@ ivtmp.248, tmp296, D.33000
	add	r7, r5, r7	@ ivtmp.256, tmp296, D.33000
	b	.L196	@
.L195:
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.256, ivtmp.256,
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, i
	ble	.L194	@,
.L196:
	ldr	r3, [r8, #4]!	@ MEM[base: _115, offset: 0B], MEM[base: _115, offset: 0B]
	add	r6, r6, #1	@ i, i,
	cmp	r3, #0	@ MEM[base: _115, offset: 0B],
	beq	.L195	@,
	ldr	ip, [r7]	@ MEM[base: _116, offset: 0B], MEM[base: _116, offset: 0B]
	add	r1, sp, #28	@ tmp313,,
	ldr	r2, [r7, #72]	@ MEM[base: _116, offset: 72B], MEM[base: _116, offset: 72B]
	mov	r0, r4	@, ChanID
	ldr	r3, [r10, #8]	@ pFrameIntf_28->release_frame, pFrameIntf_28->release_frame
	add	r7, r7, #392	@ ivtmp.256, ivtmp.256,
	str	ip, [sp, #32]	@ MEM[base: _116, offset: 0B], ExtFrame.VirAddr
	str	r2, [sp, #28]	@ MEM[base: _116, offset: 72B], ExtFrame.PhyAddr
	blx	r3	@ pFrameIntf_28->release_frame
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, i
	bgt	.L196	@,
.L194:
	movw	r3, #11160	@ tmp287,
	ldr	r1, .L234	@ tmp285,
	movt	r3, 1	@ tmp287,
	mul	r3, r3, r4	@ tmp286, tmp287, ChanID
	add	r9, r5, r3	@ tmp288, tmp296, tmp286
	add	r9, r9, #75776	@ tmp290, tmp288,
	ldr	r2, [r9, #900]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable
	cmp	r2, #1	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable,
	beq	.L232	@,
.L209:
	movw	r3, #11160	@ tmp278,
	mov	r1, #0	@ tmp298,
	movt	r3, 1	@ tmp278,
	mul	r4, r3, r4	@ D.33000, tmp278, ChanID
	add	r3, r4, #708	@ D.33000, D.33000,
	add	r4, r4, #964	@ D.33000, D.33000,
	add	r3, r5, r3	@ ivtmp.218, tmp296, D.33000
	add	r5, r5, r4	@ D.32995, tmp296, D.33000
.L208:
	ldr	r2, [r3, #4]!	@ MEM[base: _3, offset: 0B], MEM[base: _3, offset: 0B]
	cmp	r2, #3	@ MEM[base: _3, offset: 0B],
	strne	r1, [r3]	@ tmp298, MEM[base: _3, offset: 0B]
	cmp	r3, r5	@ ivtmp.218, D.32995
	bne	.L208	@,
	add	sp, sp, #436	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L232:
	add	r8, r3, #968	@ tmp295, tmp286,
	movw	r10, #34079	@ tmp300,
	add	r8, r1, r8	@ D.32996, tmp285, tmp295
	movt	r10, 20971	@ tmp300,
	mov	r7, #64	@ D.32995,
	str	r9, [sp, #12]	@ tmp290, %sfp
	str	r3, [sp, #8]	@ tmp286, %sfp
.L205:
	add	r1, sp, #40	@ tmp314,,
	mov	r0, r8	@, D.32996
	mov	r6, #0	@ tmp239,
	str	r6, [sp, #20]	@ tmp239, TopPhyAddr
	str	r6, [sp, #24]	@ tmp239, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@ ret,
	bne	.L197	@,
	ldr	r1, [sp, #216]	@ D.33004, stimage.image_id
	mov	r0, #100	@ tmp245,
	umull	r2, r3, r1, r10	@ tmp242, D.33004, tmp300
	mov	fp, r3, lsr #5	@ RelImgID,,
	mls	fp, r0, fp, r1	@ RelImgID, tmp245, RelImgID, D.33004
	cmp	fp, #63	@ RelImgID,
	bgt	.L233	@,
	add	r3, sp, #24	@,,
	add	r2, sp, #20	@,,
	mov	r0, r8	@, D.32996
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@ ret,
	bne	.L200	@,
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
	bhi	.L204	@,
	ldr	r3, [sp, #12]	@ tmp305, %sfp
	ldr	r2, [sp, #188]	@ stimage.image_height, stimage.image_height
	ldr	r3, [r3, #908]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight
	cmp	r2, r3	@ stimage.image_height, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight
	bhi	.L204	@,
	add	r9, sp, #228	@ ivtmp.232,,
	add	fp, sp, #244	@ D.32995,,
.L203:
	ldr	r1, [r9, #4]!	@ D.33005, MEM[base: _43, offset: 0B]
	mov	r0, r4	@, ChanID
	cmp	r1, #0	@ D.33005,
	beq	.L202	@,
	bl	UnMarkUsdByDnr	@
	str	r6, [r9]	@ tmp299, MEM[base: _43, offset: 0B]
.L202:
	cmp	r9, fp	@ ivtmp.232, D.32995
	bne	.L203	@,
.L204:
	subs	r7, r7, #1	@ D.32995, D.32995,
	bne	.L205	@,
	b	.L209	@
.L200:
	ldr	lr, [sp, #216]	@ stimage.image_id, stimage.image_id
	mov	r3, r0	@, ret
	ldr	ip, [sp, #128]	@ stimage.top_luma_phy_addr, stimage.top_luma_phy_addr
	mov	r2, r4	@, ChanID
	ldr	r1, .L234+4	@,
	mov	r0, #31	@,
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	subs	r7, r7, #1	@ D.32995, D.32995,
	bne	.L205	@,
	b	.L209	@
.L197:
	mov	r3, r0	@, ret
	mov	r2, r4	@, ChanID
	ldr	r1, .L234+8	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	b	.L209	@
.L233:
	mov	r2, fp	@, RelImgID
	mov	r0, r6	@, tmp239
	ldr	r1, .L234+12	@,
	bl	dprint_vfmw	@
	b	.L209	@
.L235:
	.align	2
.L234:
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
	ldr	r3, [r0, #128]	@ D.33012, pImage_3(D)->is_fld_save
	cmp	r3, #0	@ D.33012,
	bne	.L237	@,
	ldr	r3, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r3, #3	@ pImage_3(D)->format,
	moveq	r0, #1	@ D.33011,
	movne	r0, #0	@ D.33011,
	bx	lr	@
.L237:
	cmp	r3, #1	@ D.33012,
	beq	.L242	@,
	mov	r0, #0	@ D.33011,
	bx	lr	@
.L242:
	ldr	r2, [r0, #132]	@ pImage_3(D)->top_fld_type, pImage_3(D)->top_fld_type
	tst	r2, #3	@ pImage_3(D)->top_fld_type,
	bne	.L243	@,
	ldr	r2, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r2, #3	@ pImage_3(D)->format,
	beq	.L241	@,
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	ands	r0, r3, #3	@ D.33011, pImage_3(D)->bottom_fld_type,
	movne	r0, #1	@ D.33011,
	bx	lr	@
.L243:
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	tst	r3, #3	@ pImage_3(D)->bottom_fld_type,
	moveq	r0, #1	@ D.33011,
	movne	r0, #0	@ D.33011,
	bx	lr	@
.L241:
	mov	r0, r3	@ D.33011, D.33012
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
	ldr	r2, .L252	@ tmp171,
	movw	r3, #11160	@ tmp123,
	movt	r3, 1	@ tmp123,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1	@ pImage, pImage
	mla	r3, r3, r0, r2	@ tmp124, tmp123, InstId, tmp171
	movw	r9, #51520	@ tmp148,
	mov	r7, r0	@ InstId, InstId
	ldr	r10, .L252	@ tmp144,
	add	r3, r3, #75776	@ tmp126, tmp124,
	ldr	r1, [r3, #868]	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag, s_DnrChan[InstId_6(D)].u32DispOptimizeFlag
	cmp	r1, #1	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag,
	movne	r1, #3	@ tmp141,
	strne	r1, [r3, #864]	@ tmp141, s_DnrChan[InstId_6(D)].u32VoFrmNum
	ldrne	r3, [r8, #140]	@ pImage_11(D)->format, pImage_11(D)->format
	moveq	r1, #7	@ tmp134,
	streq	r1, [r3, #864]	@ tmp134, s_DnrChan[InstId_6(D)].u32VoFrmNum
	orrne	r3, r3, #262144	@ D.33020, pImage_11(D)->format,
	strne	r3, [r8, #140]	@ D.33020, pImage_11(D)->format
	movw	r3, #11160	@ tmp146,
	movt	r3, 1	@ tmp146,
	mul	r5, r3, r0	@ tmp145, tmp146, InstId
	mov	r0, r8	@, pImage
	add	r4, r2, r5	@ tmp147, tmp171, tmp145
	ldr	r6, [r4, r9]	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	cmp	r6, #0	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag,
	bne	.L247	@,
	bl	DNR_IsIFrame	@
	subs	r8, r0, #0	@ D.33021,
	beq	.L248	@,
	mov	r3, #1	@ tmp157,
	mov	r0, r6	@ ret, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	str	r3, [r4, r9]	@ tmp157, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L247:
	bl	DNR_IsIFrame	@
	cmp	r0, #0	@ D.33021
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, r8	@, pImage
	mov	r0, r7	@, InstId
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L248:
	add	r1, r5, #40	@ tmp161, tmp145,
	mov	r0, r7	@, InstId
	add	r1, r10, r1	@, tmp144, tmp161
	bl	VCTRL_ReleaseChanImage	@
	ldr	r1, .L252+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r7	@, InstId
	str	r8, [r4, #432]	@ D.33021, s_DnrChan[InstId_6(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L253:
	.align	2
.L252:
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
	ldr	r5, .L276	@ tmp339,
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
	orrne	r3, r3, #262144	@ D.33026, pImage_13(D)->format,
	strne	r3, [r1, #140]	@ D.33026, pImage_13(D)->format
	movw	r3, #11160	@ tmp166,
	movt	r3, 1	@ tmp166,
	ldr	r1, .L276	@ tmp164,
	mul	r3, r3, r0	@ tmp165, tmp166, InstId
	add	r7, r5, r3	@ tmp167, tmp339, tmp165
	ldr	r8, [r7, ip]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].GetFirstIFrameFlag
	cmp	r8, #0	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag,
	bne	.L257	@,
	add	r5, r7, #75776	@ tmp176, tmp167,
	ldr	r0, [r4, #80]	@ D.33026, pImage_13(D)->GopNum
	ldr	lr, [r5, #860]	@ s_DnrChan[InstId_8(D)].LastGopNum, s_DnrChan[InstId_8(D)].LastGopNum
	cmp	r0, lr	@ D.33026, s_DnrChan[InstId_8(D)].LastGopNum
	beq	.L258	@,
	str	r0, [r5, #860]	@ D.33026, s_DnrChan[InstId_8(D)].LastGopNum
	mov	r2, #1	@ tmp196,
	ldr	r0, [r4, #76]	@ D.33026, pImage_13(D)->DistanceBeforeFirstFrame
	str	r2, [r7, ip]	@ tmp196, s_DnrChan[InstId_8(D)].GetFirstIFrameFlag
	cmp	r0, #0	@ D.33026,
	str	r0, [r5, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	ldreq	r3, [r4, #72]	@ D.33026, pImage_13(D)->DispFrameDistance
	streq	r3, [r5, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	bne	.L273	@,
.L260:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L257:
	add	r3, r7, #75776	@ tmp245, tmp167,
	ldr	ip, [r4, #80]	@ D.33026, pImage_13(D)->GopNum
	add	r2, r3, #856	@ tmp244, tmp245,
	ldr	r1, [r3, #860]	@ s_DnrChan[InstId_8(D)].LastGopNum, s_DnrChan[InstId_8(D)].LastGopNum
	cmp	ip, r1	@ D.33026, s_DnrChan[InstId_8(D)].LastGopNum
	beq	.L261	@,
	mov	r1, r4	@, pImage
	str	ip, [r3, #860]	@ D.33026, s_DnrChan[InstId_8(D)].LastGopNum
	bl	DNR_PushTempImageToVOQ	@
	subs	r2, r0, #0	@ ret,
	bne	.L274	@,
.L262:
	movw	r3, #11160	@ tmp256,
	ldr	r0, [r4, #76]	@ D.33026, pImage_13(D)->DistanceBeforeFirstFrame
	movt	r3, 1	@ tmp256,
	ldr	r1, .L276	@ tmp254,
	mul	r3, r3, r6	@ tmp255, tmp256, InstId
	cmp	r0, #0	@ D.33026,
	add	r5, r5, r3	@ tmp257, tmp339, tmp255
	add	r7, r5, #75776	@ tmp259, tmp257,
	str	r0, [r7, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	ldreq	r3, [r4, #72]	@ D.33026, pImage_13(D)->DispFrameDistance
	streq	r3, [r7, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	beq	.L260	@,
	add	r3, r3, #40	@ tmp263, tmp255,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp254, tmp263
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r7, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mov	r2, #0	@ tmp270,
	mvn	r0, #0	@ ret,
	str	r2, [r5, #432]	@ tmp270, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	add	r3, r3, r0	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r7, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L260	@
.L261:
	ldr	r0, [r3, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	ldreq	r2, [r4, #72]	@ D.33026, pImage_13(D)->DispFrameDistance
	streq	r2, [r3, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	beq	.L260	@,
	ldr	r3, [r7, #264]	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame, s_DnrChan[InstId_8(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame,
	beq	.L275	@,
.L265:
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
	add	r3, r3, r0	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r2, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L260	@
.L274:
	ldr	r1, .L276+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	b	.L262	@
.L258:
	add	r3, r3, #40	@ tmp231, tmp165,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp164, tmp231
	bl	VCTRL_ReleaseChanImage	@
	ldr	r1, .L276+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #432]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	b	.L260	@
.L273:
	add	r3, r3, #40	@ tmp200, tmp165,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp164, tmp200
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #432]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	ldr	r3, [r5, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mvn	r0, #0	@ ret,
	add	r3, r3, r0	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r5, #856]	@ D.33026, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L260	@
.L275:
	ldr	r2, .L276+12	@ tmp304,
	ldr	ip, [r2]	@ D.33029, g_event_report
	cmp	ip, #0	@ D.33029,
	beq	.L265	@,
	add	r2, sp, #8	@ tmp306,,
	mov	r1, #115	@,
	mov	r0, r6	@, InstId
	str	r3, [r2, #-4]!	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame, para
	blx	ip	@ D.33029
	b	.L265	@
.L277:
	.align	2
.L276:
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
	ldr	r4, .L288	@ tmp167,
	movt	r6, 1	@ tmp125,
	movw	r2, #34079	@ tmp131,
	mul	r6, r6, r5	@ tmp124, tmp125, NextInstId
	movt	r2, 20971	@ tmp131,
	mov	lr, #100	@ tmp133,
	add	ip, r4, r6	@ tmp126, tmp167, tmp124
	ldr	r1, [ip, #216]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	umull	r2, r3, r1, r2	@ tmp130, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, tmp131
	mov	r2, r3, lsr #5	@ tmp128,,
	mls	r3, lr, r2, r1	@ D.33033, tmp133, tmp128, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	add	r3, r3, #2	@ D.33033, D.33033,
	cmp	r0, r3	@, D.33033
	beq	.L287	@,
.L279:
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
.L287:
	ldr	r3, [ip, #188]	@, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	mov	r0, #2	@,
	ldr	r2, [ip, #184]	@, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	ldr	r1, .L288+4	@,
	bl	dprint_vfmw	@
	add	r0, r6, #968	@ tmp152, tmp124,
	add	r0, r4, r0	@, tmp167, tmp152
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L288+8	@ tmp154,
	ldr	ip, [r2]	@ D.33035, g_event_report
	cmp	ip, #0	@ D.33035,
	mov	r3, r0	@ LastFrameId,
	beq	.L280	@,
	cmn	r0, #1	@ LastFrameId,
	add	r2, sp, #8	@ tmp155,,
	mov	r1, #115	@,
	mov	r0, r5	@, NextInstId
	moveq	r3, #1	@ D.33033,
	str	r3, [r2, #-4]!	@ D.33033, para
	blx	ip	@ D.33035
.L280:
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L279	@
.L289:
	.align	2
.L288:
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
	ldr	r4, .L297	@ tmp119,
	ldr	r3, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r3, #0	@ g_DnrSleepTime,
	ble	.L295	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r5, .L297+4	@ tmp128,
	ldr	r2, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r3, [r5, #3104]	@ timePrevDo, timePrevDo
	rsb	r0, r3, r0	@ D.33042, timePrevDo,
	cmp	r0, r2	@ D.33042, g_DnrSleepTime
	bcc	.L296	@,
.L293:
	bl	OSAL_GetTimeInMs	@
	mov	r3, #0	@ D.33040,
	str	r0, [r5, #3104]	@, timePrevDo
	mov	r0, r3	@, D.33040
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L296:
	mov	r3, #1	@ D.33040,
	mov	r0, r3	@, D.33040
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L295:
	ldr	r5, .L297+4	@ tmp128,
	b	.L293	@
.L298:
	.align	2
.L297:
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
	ldr	r3, .L309	@ tmp138,
	ldr	r2, [r3]	@ D.33045, g_eVdmVersion
	sub	r3, r2, #3	@ D.33046, D.33045,
	cmp	r3, #1	@ D.33046,
	bls	.L304	@,
	ldr	r3, .L309+4	@ tmp140,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L307	@,
.L304:
	ldr	r4, .L309+8	@ tmp206,
	mov	r3, #1	@ D.33049,
.L300:
	cmp	r2, #3	@ D.33045,
	beq	.L308	@,
.L301:
	cmp	r2, #4	@ D.33045,
	movweq	r2, #11160	@ tmp165,
	movteq	r2, 1	@ tmp165,
	mlaeq	r2, r2, r5, r4	@ tmp166, tmp165, NextInstId, tmp206
	ldreq	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	streq	r2, [r6, #64]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, pDnrCfg_15(D)->dnr_stride_1d
.L302:
	movw	r2, #11160	@ tmp171,
	str	r3, [sp, #44]	@ D.33049, stDetPara.IsFrameStored
	movt	r2, 1	@ tmp171,
	add	r0, sp, #4	@ tmp209,,
	mla	r4, r2, r5, r4	@ tmp172, tmp171, NextInstId, tmp206
	ldr	ip, [r4, #184]	@ D.33049, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_width
	ldr	r1, [r4, #188]	@ D.33049, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_height
	ldr	r5, [r4, #72]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr
	add	r2, ip, #15	@ D.33049, D.33049,
	ldr	lr, [r4, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	add	r3, r1, #15	@ D.33049, D.33049,
	mov	r2, r2, asr #4	@ D.33049, D.33049,
	str	ip, [sp, #24]	@ D.33049, stDetPara.PicWidth
	mov	r3, r3, asr #4	@ D.33049, D.33049,
	str	r1, [sp, #28]	@ D.33049, stDetPara.PicHeight
	str	r2, [sp, #36]	@ D.33049, stDetPara.MbWidth
	str	r3, [sp, #40]	@ D.33049, stDetPara.MbHeight
	str	r5, [sp, #12]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	str	lr, [sp, #32]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, stDetPara.PicStride
	bl	DetPic	@
	str	r0, [r4, #20]	@ D.33049, s_DnrChan[NextInstId_3(D)].IsRwzb
	str	r0, [r4, #396]	@ D.33049, s_DnrChan[NextInstId_3(D)].Cur1DImage.optm_inf.Rwzb
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L307:
	ldr	r4, .L309+8	@ tmp206,
	movw	r1, #11160	@ tmp144,
	movt	r1, 1	@ tmp144,
	mla	r1, r1, r5, r4	@ tmp145, tmp144, NextInstId, tmp206
	ldr	r0, [r1, #340]	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard
	cmp	r0, #0	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard,
	bne	.L300	@,
	ldrb	r3, [r1, #328]	@ zero_extendqisi2	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	cmp	r2, #3	@ D.33045,
	clz	r3, r3	@ D.33049, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	mov	r3, r3, lsr #5	@ D.33049, D.33049,
	bne	.L301	@,
.L308:
	movw	r2, #11160	@ tmp158,
	movt	r2, 1	@ tmp158,
	mla	r2, r2, r5, r4	@ tmp159, tmp158, NextInstId, tmp206
	ldr	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	mov	r2, r2, asl #5	@ D.33046, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride,
	str	r2, [r6, #64]	@ D.33046, pDnrCfg_15(D)->dnr_stride_1d
	b	.L302	@
.L310:
	.align	2
.L309:
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
	ldr	r3, .L317	@ tmp118,
	ldr	r3, [r3]	@ g_eVdmVersion, g_eVdmVersion
	sub	r3, r3, #3	@ D.33058, g_eVdmVersion,
	cmp	r3, #1	@ D.33058,
	bls	.L315	@,
	ldr	r3, .L317+4	@ tmp121,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L316	@,
.L315:
	mov	r0, #0	@ D.33056,
	bx	lr	@
.L316:
	ldr	r3, [r0, #16]	@ pImageDnr_6(D)->video_standard, pImageDnr_6(D)->video_standard
	cmp	r3, #0	@ pImageDnr_6(D)->video_standard,
	bne	.L315	@,
	ldrb	r0, [r0, #4]	@ zero_extendqisi2	@ D.33056, pImageDnr_6(D)->pic_structure
	bx	lr	@
.L318:
	.align	2
.L317:
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
	ldr	r1, .L321	@ tmp126,
	movw	r3, #11160	@ tmp128,
	movt	r3, 1	@ tmp128,
	clz	r2, r6	@ D.33066, SourceImgStoreType
	mla	r1, r3, r5, r1	@ tmp129, tmp128, NextInstId, tmp126
	mov	r2, r2, lsr #5	@ D.33066, D.33066,
	ldr	r3, [r1, #72]	@ D.33063, s_DnrChan[NextInstId_4(D)].Cur1DImage.luma_vir_addr
	str	r3, [r4, #8]	@ D.33063, pDetPara_1(D)->pPicBufY
	ldr	r0, [r1, #184]	@ D.33065, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	add	r3, r0, #15	@ D.33065, D.33065,
	str	r0, [r4, #20]	@ D.33065, pDetPara_1(D)->PicWidth
	ldr	ip, [r1, #188]	@ D.33065, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	mov	r3, r3, asr #4	@ D.33065, D.33065,
	add	r0, ip, #15	@ D.33065, D.33065,
	str	ip, [r4, #24]	@ D.33065, pDetPara_1(D)->PicHeight
	ldr	ip, [r1, #212]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride
	mov	r1, r0, asr #4	@ D.33065, D.33065,
	str	r2, [r4, #40]	@ D.33066, pDetPara_1(D)->IsFrameStored
	str	r1, [r4, #36]	@ D.33065, pDetPara_1(D)->MbHeight
	str	ip, [r4, #28]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, pDetPara_1(D)->PicStride
	str	r3, [r4, #32]	@ D.33065, pDetPara_1(D)->MbWidth
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L322:
	.align	2
.L321:
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
	ldr	lr, .L335	@ tmp182,
	movt	ip, 1	@ tmp130,
	mla	ip, ip, r1, lr	@ tmp131, tmp130, NextInstId, tmp182
	ldr	r4, [ip, #20]	@ s_DnrChan[NextInstId_6(D)].IsRwzb, s_DnrChan[NextInstId_6(D)].IsRwzb
	cmp	r4, #0	@ s_DnrChan[NextInstId_6(D)].IsRwzb,
	bne	.L324	@,
	ldr	r2, [r2, #16]	@ D.33071, pImageDnr_8(D)->video_standard
	cmp	r2, #1	@ D.33071,
	cmpne	r2, #8	@, D.33071,
	moveq	r2, #1	@ tmp140,
	movne	r2, #0	@ tmp140,
	beq	.L324	@,
	ldr	r4, [r3, #32]	@ pDetPara_10(D)->MbWidth, pDetPara_10(D)->MbWidth
	cmp	r4, #45	@ pDetPara_10(D)->MbWidth,
	ble	.L334	@,
.L324:
	mov	r3, #0	@ tmp149,
	strb	r3, [r0, #2]	@ tmp149, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp149, pDnrCfg_14(D)->db_en
	strb	r3, [r0]	@ tmp149, pDnrCfg_14(D)->dc_en
.L326:
	ldr	ip, .L335+4	@ tmp183,
	movw	r3, #11160	@ tmp164,
	movt	r3, 1	@ tmp164,
	mla	r3, r3, r1, lr	@ tmp165, tmp164, NextInstId, tmp182
	ldr	r4, [ip, #3108]	@ D.33069, g_DREnable
	cmp	r4, #1	@ D.33069,
	ldrneb	r2, [r0, #2]	@ zero_extendqisi2	@ D.33073, pDnrCfg_14(D)->dr_en
	moveq	r2, r4	@ D.33073, D.33069
	sxtbne	r4, r2	@ D.33069, D.33073
	str	r4, [r3, #28]	@ D.33069, s_DnrChan[NextInstId_6(D)].enDR
	movw	r3, #11160	@ tmp171,
	uxtbne	r2, r2	@ D.33073, D.33073
	movt	r3, 1	@ tmp171,
	strb	r2, [r0, #2]	@ D.33073, pDnrCfg_14(D)->dr_en
	ldr	r4, [ip, #3112]	@ D.33069, g_DBEnable
	mla	r3, r3, r1, lr	@ tmp172, tmp171, NextInstId, tmp182
	cmp	r4, #1	@ D.33069,
	ldrneb	r2, [r0, #1]	@ zero_extendqisi2	@ D.33073, pDnrCfg_14(D)->db_en
	moveq	r2, r4	@ D.33073, D.33069
	sxtbne	r4, r2	@ D.33069, D.33073
	uxtbne	r2, r2	@ D.33073, D.33073
	str	r4, [r3, #32]	@ D.33069, s_DnrChan[NextInstId_6(D)].enDB
	strb	r2, [r0, #1]	@ D.33073, pDnrCfg_14(D)->db_en
	ldr	r2, [ip, #3116]	@ D.33069, g_DCEnable
	movw	ip, #11160	@ tmp178,
	movt	ip, 1	@ tmp178,
	mla	r1, ip, r1, lr	@ tmp179, tmp178, NextInstId, tmp182
	cmp	r2, #1	@ D.33069,
	ldrneb	r3, [r0]	@ zero_extendqisi2	@ D.33073, pDnrCfg_14(D)->dc_en
	moveq	r3, r2	@ D.33073, D.33069
	sxtbne	r2, r3	@ D.33069, D.33073
	uxtbne	r3, r3	@ D.33073, D.33073
	str	r2, [r1, #36]	@ D.33069, s_DnrChan[NextInstId_6(D)].enDC
	strb	r3, [r0]	@ D.33073, pDnrCfg_14(D)->dc_en
	ldmfd	sp!, {r4, pc}	@
.L334:
	ldr	r3, [r3, #36]	@ pDetPara_10(D)->MbHeight, pDetPara_10(D)->MbHeight
	cmp	r3, #36	@ pDetPara_10(D)->MbHeight,
	bgt	.L324	@,
	ldr	r3, [ip, #24]	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state, s_DnrChan[NextInstId_6(D)].userSetRwzb_state
	cmp	r3, #1	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state,
	beq	.L324	@,
	mov	r3, #1	@ tmp155,
	strb	r2, [r0]	@ tmp140, pDnrCfg_14(D)->dc_en
	strb	r3, [r0, #2]	@ tmp155, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp155, pDnrCfg_14(D)->db_en
	b	.L326	@
.L336:
	.align	2
.L335:
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
	beq	.L347	@,
	ldr	r4, .L348	@ tmp190,
	movw	lr, #11160	@ tmp192,
	movt	lr, 1	@ tmp192,
	mov	ip, #0	@ tmp195,
	mov	r0, ip	@ D.33081, tmp195
	mla	r1, lr, r1, r4	@ tmp193, tmp192, NextInstId, tmp190
	str	ip, [r1, #16]	@ tmp195, s_DnrChan[NextInstId_6(D)].NeedStartAgain
.L345:
	ldrb	r1, [r2, #8]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->Range_mapuv
	strb	r1, [r3, #8]	@ D.33082, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #7]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.33082, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #6]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->Range_mapy
	strb	r1, [r3, #6]	@ D.33082, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2, #5]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->Range_mapy_flag
	strb	r2, [r3, #5]	@ D.33082, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L347:
	ldr	ip, .L348	@ tmp141,
	movw	r0, #11160	@ tmp143,
	movt	r0, 1	@ tmp143,
	mla	r1, r0, r1, ip	@ tmp144, tmp143, NextInstId, tmp141
	ldr	r0, [r1, #16]	@ D.33081, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	cmp	r0, #0	@ D.33081,
	bne	.L339	@,
	ldr	ip, [r1, #180]	@ D.33083, s_DnrChan[NextInstId_6(D)].Cur1DImage.format
	and	lr, ip, #3072	@ D.33083, D.33083,
	cmp	lr, #3072	@ D.33083,
	moveq	ip, #1	@ tmp157,
	streq	ip, [r1, #16]	@ tmp157, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	streqb	ip, [r3, #3]	@ tmp157, pDnrCfg_4(D)->pic_structure
	beq	.L345	@,
	tst	ip, #2048	@ D.33083,
	movne	r1, #2	@ tmp165,
	strneb	r1, [r3, #3]	@ tmp165, pDnrCfg_4(D)->pic_structure
	bne	.L346	@,
	tst	ip, #1024	@ D.33083,
	beq	.L343	@,
	mov	r1, #1	@ tmp172,
	strb	r1, [r3, #3]	@ tmp172, pDnrCfg_4(D)->pic_structure
	b	.L345	@
.L339:
	mov	r0, #0	@ tmp183,
	mov	ip, #2	@ tmp184,
	str	r0, [r1, #16]	@ tmp183, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	strb	ip, [r3, #3]	@ tmp184, pDnrCfg_4(D)->pic_structure
.L346:
	ldrb	r1, [r2, #3]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->bottom_Range_mapuv
	strb	r1, [r3, #8]	@ D.33082, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->bottom_Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.33082, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->bottom_Range_mapy
	strb	r1, [r3, #6]	@ D.33082, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.33082, pImageDnr_10(D)->bottom_Range_mapy_flag
	strb	r2, [r3, #5]	@ D.33082, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L343:
	mvn	r0, #0	@ D.33081,
	ldmfd	sp!, {r4, pc}	@
.L349:
	.align	2
.L348:
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
	ldr	r7, .L374	@ tmp318,
	movw	r2, #11160	@ tmp185,
	movt	r2, 1	@ tmp185,
	ldr	r3, .L374+4	@ tmp189,
	mla	r2, r2, r6, r7	@ tmp186, tmp185, NextInstId, tmp318
	str	r0, [r2, #20]	@, s_DnrChan[NextInstId_14(D)].IsRwzb
	strb	r9, [r4, #3]	@ SourceImgStoreType, pDnrCfg_18(D)->pic_structure
	ldr	r3, [r3]	@ D.33090, g_eVdmVersion
	cmp	r3, #3	@ D.33090,
	beq	.L371	@,
	cmp	r3, #4	@ D.33090,
	ldreq	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	streq	r3, [r4, #64]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, pDnrCfg_18(D)->dnr_stride_1d
.L352:
	mov	r3, r8	@, pDetPara
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgDrDbDcEnable	@
	ldr	r3, [r5, #16]	@ D.33091, pImageDnr_28(D)->video_standard
	movw	r1, #11160	@ tmp225,
	cmp	r3, #1	@ D.33091,
	movt	r1, 1	@ tmp225,
	str	r3, [r4, #16]	@ D.33091, pDnrCfg_18(D)->video_standard
	ldreqb	r3, [r5, #10]	@ zero_extendqisi2	@ D.33089, pImageDnr_28(D)->vc1_profile
	movne	r3, #3	@ tmp204,
	strneb	r3, [r4, #9]	@ tmp204, pDnrCfg_18(D)->vc1_profile
	mla	r1, r1, r6, r7	@ tmp226, tmp225, NextInstId, tmp318
	streqb	r3, [r4, #9]	@ D.33089, pDnrCfg_18(D)->vc1_profile
	ldreq	r3, [r5, #32]	@ D.33087, pImageDnr_28(D)->Rangedfrm
	streq	r3, [r4, #68]	@ D.33087, pDnrCfg_18(D)->Rangedfrm
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #0	@ pDnrCfg_18(D)->pic_structure,
	movw	r3, #11160	@ tmp209,
	movt	r3, 1	@ tmp209,
	mla	r3, r3, r6, r7	@ tmp210, tmp209, NextInstId, tmp318
	ldr	r8, [r3, #188]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height
	ldr	r3, .L374+8	@ tmp237,
	add	r8, r8, #15	@ D.33088, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height,
	ldr	r2, [r3]	@ g_VdmCharacter, g_VdmCharacter
	mov	r8, r8, lsr #4	@ CurPicHeightInMb, D.33088,
	ldr	r3, [r1, #184]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width
	addne	r8, r8, #1	@ D.33088, D.33088,
	add	r3, r3, #15	@ D.33088, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width,
	movne	r8, r8, lsr #1	@ CurPicHeightInMb, D.33088,
	str	r8, [r4, #28]	@ CurPicHeightInMb, pDnrCfg_18(D)->pic_height_in_mb
	ands	r2, r2, #4	@ D.33087, g_VdmCharacter,
	mov	r3, r3, lsr #4	@ D.33087, D.33088,
	str	r3, [r4, #24]	@ D.33087, pDnrCfg_18(D)->pic_width_in_mb
	mul	r0, r3, r8	@ D.33087, D.33087, CurPicHeightInMb
	mov	r3, r3, asl #4	@ D.33087, D.33087,
	addeq	r3, r3, #63	@ D.33087, D.33087,
	addne	r3, r3, #79	@ D.33087, D.33087,
	bic	r3, r3, #63	@ D.33087, D.33087,
	str	r0, [r4, #20]	@ D.33087, pDnrCfg_18(D)->mbtodec
	ldr	r1, [r1, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r3, [r4, #60]	@ D.33087, pDnrCfg_18(D)->ddr_stride
	ldr	r0, .L374	@ tmp249,
	str	r1, [r4, #32]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_1d
	movw	r1, #11160	@ tmp251,
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ D.33092, pImageDnr_28(D)->use_pic_qp_en
	movt	r1, 1	@ tmp251,
	mul	r1, r1, r6	@ tmp250, tmp251, NextInstId
	strb	r3, [r4, #10]	@ D.33092, pDnrCfg_18(D)->use_pic_qp_en
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ D.33089, pImageDnr_28(D)->chroma_format_idc
	add	ip, r7, r1	@ tmp252, tmp318, tmp250
	strb	r3, [r4, #4]	@ D.33089, pDnrCfg_18(D)->chroma_format_idc
	add	r3, ip, #75776	@ tmp254, tmp252,
	ldr	lr, [r5, #20]	@ D.33087, pImageDnr_28(D)->QP_Y
	str	lr, [r4, #48]	@ D.33087, pDnrCfg_18(D)->QP_Y
	ldr	lr, [r5, #24]	@ D.33087, pImageDnr_28(D)->QP_U
	str	lr, [r4, #52]	@ D.33087, pDnrCfg_18(D)->QP_U
	ldr	lr, [r5, #28]	@ D.33087, pImageDnr_28(D)->QP_V
	str	lr, [r4, #56]	@ D.33087, pDnrCfg_18(D)->QP_V
	ldr	lr, [r3, #872]	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag
	cmp	lr, #1	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag,
	beq	.L372	@,
	ldr	r9, [sp, #36]	@ tmp319, PicBufID
	mov	r3, #392	@ tmp273,
	movw	lr, #26552	@ tmp278,
	mla	r3, r3, r9, r1	@ tmp276, tmp273, tmp319, tmp250
	add	r3, r0, r3	@ tmp277, tmp249, tmp276
	ldr	r3, [r3, lr]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr
	str	r3, [r4, #36]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.33092, s_DnrChan[NextInstId_14(D)].s32MirrorEn
	strb	r3, [r4, #11]	@ D.33092, pDnrCfg_18(D)->s32MirrorEn
.L360:
	cmp	r2, #0	@ D.33087,
	beq	.L361	@,
	movw	r3, #11160	@ tmp288,
	movt	r3, 1	@ tmp288,
	mla	r3, r3, r6, r7	@ tmp289, tmp288, NextInstId, tmp318
	add	r2, r3, #75776	@ tmp296, tmp289,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ D.33092, s_DnrChan[NextInstId_14(D)].s32VcmpEn
	strb	r3, [r4, #12]	@ D.33092, pDnrCfg_18(D)->s32VcmpEn
	ldr	r3, [r2, #840]	@ D.33087, s_DnrChan[NextInstId_14(D)].s32VcmpWmStartLine
	str	r3, [r4, #76]	@ D.33087, pDnrCfg_18(D)->s32VcmpWmStartLine
	ldr	r3, [r2, #844]	@ D.33087, s_DnrChan[NextInstId_14(D)].s32VcmpWmEndLine
	str	r3, [r4, #80]	@ D.33087, pDnrCfg_18(D)->s32VcmpWmEndLine
.L361:
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgPicStructure	@
	cmn	r0, #1	@ D.33086,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #2	@ pDnrCfg_18(D)->pic_structure,
	beq	.L373	@,
	mov	r0, #0	@ D.33086,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L373:
	ldr	r3, [r4, #24]	@ pDnrCfg_18(D)->pic_width_in_mb, pDnrCfg_18(D)->pic_width_in_mb
	movw	r2, #11160	@ tmp312,
	movt	r2, 1	@ tmp312,
	mov	r0, #0	@ D.33086,
	mla	r6, r2, r6, r7	@ tmp313, tmp312, NextInstId, tmp318
	mul	r8, r3, r8	@ D.33087, pDnrCfg_18(D)->pic_width_in_mb, CurPicHeightInMb
	ldr	r2, [r6, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	mov	r3, r8, asl #8	@ tmp308, D.33087,
	add	r8, r3, r8, lsl #7	@ D.33087, tmp308, D.33087,
	add	r8, r8, r2	@ D.33088, D.33087, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r8, [r4, #32]	@ D.33088, pDnrCfg_18(D)->dnr_ystaddr_1d
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L372:
	ldr	r3, [r3, #896]	@ s_DnrChan[NextInstId_14(D)].pCaptureImageOut, s_DnrChan[NextInstId_14(D)].pCaptureImageOut
	ldr	r3, [r3, #120]	@ _82->luma_2d_phy_addr, _82->luma_2d_phy_addr
	str	r3, [r4, #36]	@ _82->luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldr	r3, [ip, #412]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate
	strb	r3, [r4, #11]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, pDnrCfg_18(D)->s32MirrorEn
	b	.L360	@
.L371:
	ldr	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	mov	r3, r3, asl #5	@ D.33088, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride,
	str	r3, [r4, #64]	@ D.33088, pDnrCfg_18(D)->dnr_stride_1d
	b	.L352	@
.L375:
	.align	2
.L374:
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
	ldr	r6, .L393	@ tmp311,
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
	beq	.L389	@,
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
	beq	.L390	@,
	ldr	r0, [r7, #28]	@ pDnrCfg_18(D)->pic_height_in_mb, pDnrCfg_18(D)->pic_height_in_mb
	ldr	r2, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	ldrb	r3, [r7, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	mov	r0, r0, asl #4	@ D.33097, pDnrCfg_18(D)->pic_height_in_mb,
	cmp	r3, #0	@ pDnrCfg_18(D)->pic_structure,
	mul	r3, r2, r0	@ D.33097, pDnrCfg_18(D)->ddr_stride, D.33097
	moveq	r0, #1	@ D.33097,
	movne	r0, #2	@ D.33097,
	mla	r0, r0, r3, r8	@ D.33098, D.33097, D.33097, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.33098, pImageLogic_1->chrom_2d_phy_addr
.L382:
	bl	MEM_Phy2Vir	@
	movw	r3, #11160	@ tmp230,
	movt	r3, 1	@ tmp230,
	ldr	r9, [r4, #120]	@ D.33098, pImageLogic_1->luma_2d_phy_addr
	mla	r3, r3, r5, r6	@ tmp231, tmp230, NextInstId, tmp311
	ldr	r8, [r4, #124]	@ D.33098, pImageLogic_1->chrom_2d_phy_addr
	str	r9, [r4, #88]	@ D.33098, pImageLogic_1->top_luma_phy_addr
	mov	ip, #1	@ tmp248,
	movw	r2, #11160	@ tmp251,
	bfi	r2, ip, #16, #16	@ tmp251, tmp248,,
	str	r8, [r4, #92]	@ D.33098, pImageLogic_1->top_chrom_phy_addr
	mov	lr, #0	@ tmp247,
	mla	r2, r2, r5, r6	@ tmp252, tmp251, NextInstId, tmp311
	add	r2, r2, #75776	@ tmp254, tmp252,
	str	r0, [r4, #52]	@, pImageLogic_1->chrom_2d_vir_addr
	ldr	r1, [r3, #20]	@ D.33098, s_DnrChan[NextInstId_7(D)].IsRwzb
	str	r1, [r4, #356]	@ D.33098, pImageLogic_1->optm_inf.Rwzb
	ldr	r1, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	add	r0, r1, r9	@ D.33098, pDnrCfg_18(D)->ddr_stride, D.33098
	str	r0, [r4, #96]	@ D.33098, pImageLogic_1->btm_luma_phy_addr
	ldr	r1, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	add	r1, r1, r8	@ D.33098, pDnrCfg_18(D)->ddr_stride, D.33098
	str	r1, [r4, #100]	@ D.33098, pImageLogic_1->btm_chrom_phy_addr
	ldr	r1, [r3, #416]	@ D.33098, MEM[(struct IMAGE *)&s_DnrChan][NextInstId_7(D)].Cur1DImage.u32IsLastFrame
	str	r1, [r4, #376]	@ D.33098, pImageLogic_1->u32IsLastFrame
	ldr	r1, [r3, #452]	@ D.33097, s_DnrChan[NextInstId_7(D)].s32ImgBlockMemSize
	str	ip, [r4, #368]	@ tmp248, pImageLogic_1->is_processed_by_dnr
	str	lr, [r4, #364]	@ tmp247, pImageLogic_1->u32Is1D
	str	r1, [r4, #360]	@ D.33097, pImageLogic_1->ImgSize
	ldr	r2, [r2, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r2, lr	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	beq	.L391	@,
.L384:
	ldr	r3, .L393+4	@ tmp272,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L386	@,
	movw	r1, #11160	@ tmp277,
	ldr	r2, [r4, #148]	@ pImageLogic_1->image_height, pImageLogic_1->image_height
	movt	r1, 1	@ tmp277,
	ldr	r3, [r4, #144]	@ pImageLogic_1->image_width, pImageLogic_1->image_width
	mla	r5, r1, r5, r6	@ tmp278, tmp277, NextInstId, tmp311
	add	r2, r2, #15	@ D.33098, pImageLogic_1->image_height,
	add	r3, r3, #15	@ D.33098, pImageLogic_1->image_width,
	bic	ip, r2, #15	@ D.33097, D.33098,
	bic	r3, r3, #15	@ D.33097, D.33098,
	add	r1, r5, #75776	@ tmp290, tmp278,
	ldrb	r0, [r5, #2]	@ zero_extendqisi2	@ D.33101, s_DnrChan[NextInstId_7(D)].s32VcmpEn
	cmp	r0, #1	@ D.33101,
	strb	r0, [r4, #296]	@ D.33101, pImageLogic_1->ImageDnr.s32VcmpEn
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ D.33101, s_DnrChan[NextInstId_7(D)].s32WmEn
	strb	r0, [r4, #297]	@ D.33101, pImageLogic_1->ImageDnr.s32WmEn
	ldr	r0, [r1, #840]	@ D.33097, s_DnrChan[NextInstId_7(D)].s32VcmpWmStartLine
	str	r0, [r4, #320]	@ D.33097, pImageLogic_1->ImageDnr.s32VcmpWmStartLine
	ldr	r1, [r1, #844]	@ D.33097, s_DnrChan[NextInstId_7(D)].s32VcmpWmEndLine
	str	ip, [r4, #332]	@ D.33097, pImageLogic_1->ImageDnr.s32VcmpFrameHeight
	str	r3, [r4, #328]	@ D.33097, pImageLogic_1->ImageDnr.s32VcmpFrameWidth
	str	r1, [r4, #324]	@ D.33097, pImageLogic_1->ImageDnr.s32VcmpWmEndLine
	beq	.L392	@,
.L386:
	mov	r0, #0	@ D.33096,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L391:
	add	r3, r3, #75776	@ tmp261, tmp231,
	ldr	r1, [r3, #900]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable, s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable
	cmp	r1, ip	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable,
	streq	r2, [r4, #372]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, pImageLogic_1->u32Circumrotate
	ldreq	r3, [r3, #912]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn
	streqb	r3, [r7, #11]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, pDnrCfg_18(D)->s32MirrorEn
	b	.L384	@
.L392:
	ldr	r3, [r4, #172]	@ pImageLogic_1->image_stride, pImageLogic_1->image_stride
	mov	r2, r2, lsr #4	@ D.33098, D.33098,
	ldr	r1, [r4, #88]	@ pImageLogic_1->top_luma_phy_addr, pImageLogic_1->top_luma_phy_addr
	mov	r0, #0	@ D.33096,
	add	r3, r3, #2	@ D.33098, pImageLogic_1->image_stride,
	mov	r3, r3, asl #4	@ D.33098, D.33098,
	mla	r2, r2, r3, r1	@ D.33098, D.33098, D.33098, pImageLogic_1->top_luma_phy_addr
	str	r2, [r4, #92]	@ D.33098, pImageLogic_1->top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L390:
	ldr	r3, [r7, #28]	@ pDnrCfg_18(D)->pic_height_in_mb, pDnrCfg_18(D)->pic_height_in_mb
	ldr	r0, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	mov	r3, r3, asl #4	@ D.33097, pDnrCfg_18(D)->pic_height_in_mb,
	mla	r0, r0, r3, r8	@ D.33098, pDnrCfg_18(D)->ddr_stride, D.33097, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.33098, pImageLogic_1->chrom_2d_phy_addr
	b	.L382	@
.L389:
	movw	r2, #1128	@,
	ldr	r1, .L393+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33096,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L394:
	.align	2
.L393:
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
	ldr	r7, .L430	@ tmp129,
	mov	r6, r0	@ NextInstId, NextInstId
	add	r5, r4, #40	@ tmp132, tmp130,
	add	r5, r7, r5	@ D.33111, tmp129, tmp132
	mov	r1, r5	@, D.33111
	bl	VCTRL_GetChanImage	@
	subs	r8, r0, #0	@ D.33109,
	bne	.L396	@,
	add	r3, r7, r4	@ tmp136, tmp129, tmp130
	add	r1, r3, #75776	@ tmp138, tmp136,
	ldr	r2, [r1, #852]	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag, s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag,
	beq	.L397	@,
	mov	r0, #1	@ tmp145,
	movw	r2, #11160	@ tmp148,
	bfi	r2, r0, #16, #16	@ tmp148, tmp145,,
	str	r0, [r3, #432]	@ tmp145, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mla	r7, r2, r6, r7	@ tmp149, tmp148, NextInstId, tmp129
	ldr	r2, [r7, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L399	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L399	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	blt	.L429	@,
.L428:
	mov	r8, #0	@ D.33109,
.L402:
	mov	r0, r8	@, D.33109
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L399:
	mov	r0, r6	@, NextInstId
	mov	r8, #1	@ D.33109,
	bl	DNR_ProcessLastFrameError	@
	mov	r0, r8	@, D.33109
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L396:
	mov	r0, r6	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L428	@,
	movw	r3, #1244	@,
	ldr	r2, .L430+4	@,
	ldr	r1, .L430+8	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	add	r0, r4, #968	@ tmp203, tmp130,
	add	r0, r7, r0	@, tmp129, tmp203
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L430+12	@ tmp205,
	ldr	ip, [r2]	@ D.33114, g_event_report
	cmp	ip, #0	@ D.33114,
	mov	r3, r0	@ ret,
	beq	.L405	@,
	cmn	r0, #1	@ ret,
	add	r2, sp, #8	@ tmp206,,
	mov	r1, #115	@,
	mov	r0, r6	@, NextInstId
	moveq	r3, #1	@ D.33110,
	str	r3, [r2, #-4]!	@ D.33110, para
	blx	ip	@ D.33114
.L405:
	mov	r0, r6	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L428	@
.L397:
	ldr	r2, [r3, #108]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag,
	bne	.L399	@,
	ldr	r0, [r3, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	str	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r0, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L399	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L399	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	bge	.L428	@,
	mov	r1, r5	@, D.33111
	mov	r0, r6	@, NextInstId
	bl	DNR_FastBackOptimize	@
	cmp	r0, #0	@,
	beq	.L428	@,
	ldr	r1, .L430+16	@,
	mov	r0, r8	@, D.33109
	bl	dprint_vfmw	@
	b	.L402	@
.L429:
	mov	r1, r5	@, D.33111
	mov	r0, r6	@, NextInstId
	bl	DNR_FastForwardFastBack	@
	cmp	r0, #0	@,
	beq	.L428	@,
	ldr	r1, .L430+20	@,
	mov	r0, r8	@, D.33109
	bl	dprint_vfmw	@
	b	.L402	@
.L431:
	.align	2
.L430:
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
	ldr	r4, .L451	@ tmp323,
	.pad #16
	sub	sp, sp, #16	@,,
	add	r6, r4, r3	@ tmp146, tmp323, tmp144
	add	r9, r6, #75776	@ tmp148, tmp146,
	ldr	r2, [r9, #848]	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed
	cmp	r2, #0	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed,
	blt	.L433	@,
	ldr	r2, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r8, r3, #40	@ tmp172, tmp144,
	ldr	ip, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r8, r4, r8	@ D.33129, tmp323, tmp172
	add	r0, r3, #968	@ tmp176, tmp144,
	add	r2, r2, #6	@ D.33127, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r3, ip, r2	@ D.33127, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.33127
	add	r0, r4, r0	@, tmp323, tmp176
	mov	r1, r8	@, D.33129
	str	r3, [r6, #216]	@ D.33127, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L434	@,
	ldr	r0, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	movw	r3, #19174	@ tmp185,
	ldr	r1, .L451+4	@ tmp196,
	mov	r7, #0	@ tmp195,
	mov	r2, #2	@ tmp189,
	str	r7, [r6, #432]	@ tmp195, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	mla	r3, r3, r5, r0	@ tmp186, tmp185, NextInstId, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	ip, [r1]	@ D.33130, g_event_report
	cmp	ip, r7	@ D.33130,
	add	r3, r3, #178	@ tmp188, tmp186,
	moveq	r7, ip	@ D.33125, D.33130
	str	r2, [r4, r3, asl #2]	@ tmp189, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	beq	.L435	@,
	add	r2, sp, #16	@ tmp197,,
	mov	r0, r5	@, NextInstId
	mov	r1, #5	@,
	str	r8, [r2, #-4]!	@ D.33129, para
	blx	ip	@ D.33130
.L435:
	mov	r0, r7	@, D.33125
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L433:
	movw	r10, #51520	@ tmp205,
	add	r8, r6, #51456	@ tmp206, tmp146,
	ldr	r7, [r6, r10]	@ D.33125, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
	add	r8, r8, #64	@ tmp206, tmp206,
	cmp	r7, #0	@ D.33125,
	beq	.L449	@,
	ldr	r0, [r8, #4]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	mov	r2, #392	@ tmp239,
	ldr	r1, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r7, r3, #40	@ tmp229, tmp144,
	ldr	ip, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r7, r4, r7	@ D.33129, tmp323, tmp229
	mla	r0, r2, r0, r3	@ tmp242, tmp239, s_DnrChan[NextInstId_4(D)].TempImageNum, tmp144
	add	r3, r1, #6	@ D.33127, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r3, ip, r3	@ D.33127, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.33127
	mov	r1, r7	@, D.33129
	str	r3, [r6, #216]	@ D.33127, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
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
	rsb	r1, ip, r1	@ D.33127, s_DnrChan[NextInstId_4(D)].u32VoFrmNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	add	r2, r2, #1	@ D.33126, s_DnrChan[NextInstId_4(D)].TempImageNum,
	str	r2, [r8, #4]	@ D.33126, s_DnrChan[NextInstId_4(D)].TempImageNum
	add	r3, r3, #178	@ tmp260, tmp258,
	cmp	r2, r1	@ D.33126, D.33127
	str	r0, [r4, r3, asl #2]	@ tmp261, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	bcc	.L450	@,
	mov	r3, #0	@ tmp301,
	str	r3, [r6, r10]	@ tmp301, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
.L438:
	mov	r1, r7	@, D.33129
	mov	r0, r5	@, NextInstId
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L439	@,
	movw	r3, #11160	@ tmp304,
	movw	r2, #1306	@,
	movt	r3, 1	@ tmp304,
	ldr	r1, .L451+8	@,
	mla	r3, r3, r5, r4	@ tmp305, tmp304, NextInstId, tmp323
	mov	r0, #0	@,
	add	ip, r3, #51456	@ tmp307, tmp305,
	ldr	lr, [r3, #448]	@ s_DnrChan[NextInstId_4(D)].s32ValidImgNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	ldr	r3, [ip, #68]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	str	lr, [sp]	@ s_DnrChan[NextInstId_4(D)].s32ValidImgNum,
	bl	dprint_vfmw	@
	b	.L439	@
.L450:
	ldr	r3, [r6, #264]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame, s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame,
	beq	.L438	@,
.L439:
	movw	r2, #11160	@ tmp318,
	mov	r3, #0	@ tmp321,
	movt	r2, 1	@ tmp318,
	mov	r7, r3	@ D.33125, tmp321
	mla	r4, r2, r5, r4	@ tmp319, tmp318, NextInstId, tmp323
	mov	r0, r7	@, D.33125
	str	r3, [r4, #432]	@ tmp321, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L449:
	bl	DNR_ClearTempImage	@
	mov	r0, r7	@, D.33125
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L434:
	movw	r3, #1274	@,
	ldr	r2, .L451+12	@,
	ldr	r1, .L451+16	@,
	mov	r0, #31	@,
	bl	dprint_vfmw	@
	mvn	r7, #0	@ D.33125,
	b	.L435	@
.L452:
	.align	2
.L451:
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
	sub	r3, r0, #10	@ D.33139, eVidStd,
	cmp	r3, #2	@ D.33139,
	bhi	.L454	@,
	ldr	r3, .L457	@ tmp122,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L456	@,
.L454:
	sub	r3, r0, #14	@ D.33142, eVidStd,
	bics	r3, r3, #4	@ tmp133, D.33142,
	moveq	r3, #1	@ tmp128,
	movne	r3, #0	@ tmp128,
	cmp	r0, #4	@ eVidStd,
	movne	r0, r3	@, D.33138, tmp128
	orreq	r0, r3, #1	@,, D.33138, tmp128
	bx	lr	@
.L456:
	mov	r0, #1	@ D.33138,
	bx	lr	@
.L458:
	.align	2
.L457:
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
	ldr	r4, .L467	@ tmp138,
	movt	r3, 1	@ tmp140,
	mla	r4, r3, r0, r4	@ tmp141, tmp140, NextInstId, tmp138
	add	r2, r4, #75776	@ tmp143, tmp141,
	add	lr, r2, #896	@ tmp142, tmp143,
	ldr	r3, [r2, #900]	@ D.33152, s_DnrChan[NextInstId_4(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ D.33152,
	movne	r3, #0	@ D.33152,
	beq	.L466	@,
.L460:
	mov	r0, r3	@, D.33152
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L466:
	ldr	r5, [r4, #432]	@ D.33153, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	r5, #1	@ D.33153,
	bne	.L460	@,
	ldr	lr, [r4, #188]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	add	r7, r4, #184	@ tmp153, tmp141,
	ldr	r5, [r2, #904]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrWidth, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrWidth
	add	r2, r2, #904	@ tmp158, tmp143,
	ldr	r8, [r2, #4]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrHeight, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrHeight
	ldr	r6, [r4, #184]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	cmp	r6, r5	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrWidth
	cmple	lr, r8	@, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_4(D)].stDSDParam.s32ThrHeight
	movle	lr, #0	@ tmp181,
	movgt	lr, #1	@ tmp181,
	movle	r3, lr	@ D.33152, tmp181
	ble	.L460	@,
	ldr	ip, [r2, #8]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn
	mov	r2, r4	@ tmp198, tmp141
	str	r3, [r4, #404]	@ D.33152, s_DnrChan[NextInstId_4(D)].Cur1DImage.u32Is1D
	mov	r3, #0	@ tmp193,
	str	r3, [r2, #408]!	@ tmp193, s_DnrChan[NextInstId_4(D)].Cur1DImage.is_processed_by_dnr
	mov	r5, r0	@ NextInstId, NextInstId
	str	ip, [r2, #4]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_4(D)].Cur1DImage.u32Circumrotate
	bl	DNR_DetNetworkParam	@
	ldr	r2, [r4, #188]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	ldr	r3, [r4, #184]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	mov	r0, r5	@, NextInstId
	add	r2, r2, #31	@ D.33154, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height,
	ldr	r1, [r4, #128]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr
	add	r3, r3, #255	@ D.33154, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width,
	mov	r2, r2, lsr #5	@ D.33154, D.33154,
	bic	r3, r3, #255	@ D.33154, D.33154,
	mul	r3, r2, r3	@ D.33154, D.33154, D.33154
	add	r3, r1, r3, lsl #5	@ D.33154, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, D.33154,
	str	r3, [r4, #132]	@ D.33154, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_chrom_phy_addr
	bl	DNR_InsertQueueWithDSD	@
	cmn	r0, #1	@ D.33152,
	mov	r3, r0	@ D.33152,
	moveq	r3, r0	@ D.33152, D.33152
	movne	r3, #1	@ D.33152,
	b	.L460	@
.L468:
	.align	2
.L467:
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
	ldr	r2, .L471	@ tmp113,
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
.L472:
	.align	2
.L471:
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
	@ link register save eliminated.
	mov	r1, #256	@,
	ldr	r0, .L474	@,
	b	__memzero	@
.L475:
	.align	2
.L474:
	.word	.LANCHOR0+712
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
	ldr	r1, .L496	@ tmp221,
	mul	r3, r3, r6	@ tmp142, tmp143, ChanID
	add	r2, r1, r3	@ tmp144, tmp221, tmp142
	ldr	ip, [r2, #448]	@ D.33178, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	cmp	ip, #0	@ D.33178,
	ble	.L485	@,
	ldr	r2, [r2, #712]	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #1	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed,
	addhi	r3, r3, #712	@ D.33180, tmp142,
	movhi	r4, #0	@ i,
	addhi	r3, r1, r3	@ ivtmp.301, tmp221, D.33180
	bhi	.L481	@,
	b	.L494	@
.L484:
	ldr	r2, [r3, #4]!	@ MEM[base: _4, offset: 0B], MEM[base: _4, offset: 0B]
	cmp	r2, #1	@ MEM[base: _4, offset: 0B],
	bls	.L479	@,
.L481:
	add	r4, r4, #1	@ i, i,
	cmp	r4, ip	@ i, D.33178
	bne	.L484	@,
.L485:
	mvn	r0, #0	@ D.33173,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L494:
	mov	r4, #0	@ i,
.L479:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5]	@ i, *pPicBufID_13(D)
	beq	.L483	@,
	ldr	r3, [r0, #4]	@ D.33176, pstFrameIntf_9->get_frame
	cmp	r3, #0	@ D.33176,
	beq	.L483	@,
	movw	r5, #19174	@ tmp159,
	ldr	r7, .L496	@ tmp157,
	mla	r5, r5, r6, r4	@ tmp160, tmp159, ChanID, i
	add	r5, r5, #178	@ tmp161, tmp160,
	ldr	r2, [r1, r5, asl #2]	@ tmp162, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #0	@ tmp162,
	beq	.L495	@,
.L483:
	movw	r3, #19174	@ tmp216,
	mov	r0, #0	@ D.33173,
	mla	r4, r3, r6, r4	@ tmp217, tmp216, ChanID, i
	mov	r3, #1	@ tmp219,
	add	r4, r4, #178	@ tmp218, tmp217,
	str	r3, [r1, r4, asl #2]	@ tmp219, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L495:
	movw	r2, #11160	@ tmp165,
	mov	r0, r6	@, ChanID
	movt	r2, 1	@ tmp165,
	add	r1, sp, #4	@,,
	mul	r6, r2, r6	@ tmp164, tmp165, ChanID
	add	r2, r7, r6	@ tmp166, tmp157, tmp164
	ldr	ip, [r2, #184]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_width, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width
	ldr	r2, [r2, #188]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_height, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height
	add	ip, ip, #63	@ D.33178, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width,
	add	r2, r2, #15	@ D.33178, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height,
	bic	ip, ip, #63	@ D.33178, D.33178,
	bic	r2, r2, #15	@ D.33178, D.33178,
	mul	r2, r2, ip	@ D.33178, D.33178, D.33178
	add	r2, r2, r2, lsl #1	@ D.33178, D.33178, D.33178,
	mov	r2, r2, asr #1	@, D.33178,
	blx	r3	@ D.33176
	cmp	r0, #0	@ D.33173
	bne	.L485	@,
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
.L497:
	.align	2
.L496:
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
	ldr	r6, .L507	@ tmp170,
	movt	r3, 1	@ tmp130,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ NextInstId, NextInstId
	mov	r7, r1	@ pPicBufID, pPicBufID
	mla	r3, r3, r0, r6	@ tmp131, tmp130, NextInstId, tmp170
	ldr	r5, [r3, #184]	@ D.33184, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_width
	ldr	r2, [r3, #436]	@ D.33185, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	ldr	r8, [r3, #188]	@ D.33184, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_height
	cmp	r5, r2	@ D.33184, D.33185
	beq	.L506	@,
.L499:
	ldr	r3, .L507+4	@ tmp149,
	ldr	ip, [r3]	@ D.33186, g_event_report
	cmp	ip, #0	@ D.33186,
	beq	.L501	@,
	movw	r3, #11160	@ tmp152,
	strh	r2, [sp]	@ movhi	@ D.33185, para
	movt	r3, 1	@ tmp152,
	strh	r5, [sp, #4]	@ movhi	@ D.33184, para
	mla	r3, r3, r4, r6	@ tmp153, tmp152, NextInstId, tmp170
	strh	r8, [sp, #6]	@ movhi	@ D.33184, para
	mov	r2, sp	@,
	mov	r1, #8	@,
	mov	r0, r4	@, NextInstId
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	strh	r3, [sp, #2]	@ movhi	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, para
	blx	ip	@ D.33186
.L501:
	movw	r3, #11160	@ tmp159,
	movt	r3, 1	@ tmp159,
	mla	r3, r3, r4, r6	@ tmp160, tmp159, NextInstId, tmp170
	str	r5, [r3, #436]	@ D.33184, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	str	r8, [r3, #440]	@ D.33184, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
.L500:
	mov	r1, r7	@, pPicBufID
	mov	r0, r4	@, NextInstId
	bl	DNR_Fsp_ShowPic	@
	adds	r0, r0, #0	@,,
	movne	r0, #1	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L506:
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	cmp	r8, r3	@ D.33184, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	bne	.L499	@,
	b	.L500	@
.L508:
	.align	2
.L507:
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
	ldr	r2, .L512	@ tmp115,
	movw	r3, #11160	@ tmp117,
	movt	r3, 1	@ tmp117,
	mla	r3, r3, r0, r2	@ tmp118, tmp117, NextInstId, tmp115
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc,
	beq	.L511	@,
	mov	r0, #1	@,
	bx	lr	@
.L511:
	b	DNR_Get2DFrameStore.part.9	@
.L513:
	.align	2
.L512:
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
	ldr	r6, .L532	@ tmp225,
	movt	r3, 1	@ tmp131,
	mla	r3, r3, r0, r6	@ tmp132, tmp131, NextInstId, tmp225
	ldr	r5, [r3, #16]	@ D.33202, s_DnrChan[NextInstId_5(D)].NeedStartAgain
	cmp	r5, #0	@ D.33202,
	bne	.L515	@,
	mov	r9, r2	@ pDnrCfg, pDnrCfg
	ldr	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mov	r7, r1	@ pPicBufID, pPicBufID
	mov	r8, r0	@ NextInstId, NextInstId
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L516	@,
	add	r3, r3, #75776	@ tmp145, tmp132,
	ldr	r10, [r3, #872]	@ D.33204, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
.L517:
	cmp	r10, #1	@ D.33204,
	beq	.L530	@,
	mov	r1, r9	@, pDnrCfg
	mov	r0, r8	@, NextInstId
	bl	DNR_DSDProcess	@
	cmp	r0, #1	@ result,
	beq	.L525	@,
	cmn	r0, #1	@ result,
	beq	.L524	@,
.L521:
	movw	r3, #11160	@ tmp194,
	mov	r2, #0	@ tmp197,
	movt	r3, 1	@ tmp194,
	mla	r3, r3, r8, r6	@ tmp195, tmp194, NextInstId, tmp225
	add	r1, r3, #75776	@ tmp209, tmp195,
	ldr	r1, [r1, #872]	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	str	r2, [r3, #404]	@ tmp197, s_DnrChan[NextInstId_5(D)].Cur1DImage.u32Is1D
	cmp	r1, r2	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag,
	str	r2, [r3, #408]	@ tmp197, s_DnrChan[NextInstId_5(D)].Cur1DImage.is_processed_by_dnr
	bne	.L519	@,
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L531	@,
.L525:
	mov	r5, #1	@ D.33202,
	mov	r0, r5	@, D.33202
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L515:
	ldr	r3, [r3, #444]	@ D.33203, s_DnrChan[NextInstId_5(D)].CurImageBufID
	mov	r5, #0	@ D.33202,
	str	r3, [r1]	@ D.33203, *pPicBufID_14(D)
.L519:
	mov	r0, r5	@, D.33202
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L516:
	add	r4, r3, #75776	@ tmp151, tmp132,
	ldr	r10, [r4, #872]	@ D.33204, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	cmp	r10, #0	@ D.33204,
	bne	.L517	@,
	bl	DNR_PrecessChanLastFrame	@
	cmp	r0, #1	@,
	ldrne	r10, [r4, #872]	@ D.33204, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	bne	.L517	@,
	b	.L525	@
.L530:
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
	ldr	r2, [r4, #216]	@ D.33203, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	str	r10, [r4, #432]	@ D.33204, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mov	r0, #0	@,
	ldr	r1, .L532+4	@,
	str	r2, [r7]	@ D.33203, *pPicBufID_14(D)
	ldr	r3, [r4, #412]	@, s_DnrChan[NextInstId_5(D)].Cur1DImage.u32Circumrotate
	bl	dprint_vfmw	@
	b	.L521	@
.L531:
	mov	r1, r7	@, pPicBufID
	mov	r0, r8	@, NextInstId
	bl	DNR_Get2DFrameStore.part.9	@
	sub	r5, r0, #1	@ D.33202,,
	clz	r5, r5	@ D.33202, D.33202
	mov	r5, r5, lsr #5	@ D.33202, D.33202,
	b	.L519	@
.L524:
	mov	r5, r0	@ D.33202, result
	b	.L519	@
.L533:
	.align	2
.L532:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #252
	sub	sp, sp, #252	@,,
	ldr	r4, .L577	@ tmp260,
	mov	r8, r0	@ pNextInstId, pNextInstId
	mov	r1, #84	@,
	add	r0, sp, #60	@ tmp268,,
	add	r5, r4, #73728	@ tmp263, tmp260,
	mov	r6, #0	@ tmp157,
	str	r6, [sp, #12]	@ tmp157, PicBufID
	bl	__memzero	@
	ldr	r7, [r5, #2928]	@ s_DnrChan[0].DNRCaptureEnableFlag, s_DnrChan[0].DNRCaptureEnableFlag
	cmp	r7, #1	@ s_DnrChan[0].DNRCaptureEnableFlag,
	beq	.L574	@,
.L535:
	ldr	r3, [r4, #12]	@ s_DnrChan[0].InstMode, s_DnrChan[0].InstMode
	cmp	r3, #0	@ s_DnrChan[0].InstMode,
	bne	.L536	@,
	ldr	r3, [r5, #2920]	@ s_DnrChan[0].DNRDataSourceFlag, s_DnrChan[0].DNRDataSourceFlag
	cmp	r3, #1	@ s_DnrChan[0].DNRDataSourceFlag,
	beq	.L536	@,
.L537:
	mvn	r0, #0	@ D.33214,
.L540:
	add	sp, sp, #252	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L536:
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ D.33215, eVidStd,
	cmp	r3, #2	@ D.33215,
	bhi	.L538	@,
	ldr	r3, .L577+4	@ tmp181,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L537	@,
.L538:
	sub	r3, r0, #14	@ D.33213, eVidStd,
	bics	r3, r3, #4	@ tmp266, D.33213,
	moveq	r6, #1	@ tmp187,
	movne	r6, #0	@ tmp187,
	cmp	r0, #4	@ eVidStd,
	orreq	r6, r6, #1	@,, tmp192, tmp187
	cmp	r6, #0	@ tmp192,
	bne	.L537	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L537	@,
	add	r1, sp, #144	@,,
	mov	r0, r6	@, tmp192
	bl	VCTRL_GetChanState	@
	ldr	r2, [r5, #2896]	@ s_DnrChan[0].s32FastForwardBackwardSpeed, s_DnrChan[0].s32FastForwardBackwardSpeed
	ldr	r3, [sp, #240]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	cmp	r2, #0	@ s_DnrChan[0].s32FastForwardBackwardSpeed,
	str	r3, [r4, #448]	@ stChanState.total_disp_frame_num, s_DnrChan[0].s32ValidImgNum
	blt	.L539	@,
	ldr	r3, .L577+8	@ tmp202,
	mov	r0, r6	@, tmp192
	str	r6, [r3, #2368]	@ tmp192, s_DnrChan[0].GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L539:
	add	r2, sp, #60	@ tmp269,,
	add	r1, sp, #12	@,,
	mov	r0, #0	@,
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result,
	beq	.L537	@,
	cmn	r0, #1	@ result,
	beq	.L540	@,
	ldr	r3, [r4, #340]	@ D.33213, MEM[(struct IMAGE_DNR_S *)&s_DnrChan + 324B].video_standard
	sub	r2, r3, #10	@ D.33215, D.33213,
	cmp	r2, #2	@ D.33215,
	bls	.L575	@,
.L541:
	sub	r2, r3, #14	@ D.33213, D.33213,
	bics	r2, r2, #4	@ tmp267, D.33213,
	moveq	r6, #1	@ tmp214,
	movne	r6, #0	@ tmp214,
	cmp	r3, #4	@ D.33213,
	orreq	r6, r6, #1	@,, tmp219, tmp214
	cmp	r6, #0	@ tmp219,
	bne	.L537	@,
	ldr	r7, .L577	@ tmp220,
	add	r0, r7, #324	@, tmp220,
	bl	DNR_GetSourceImgType	@
	mov	r1, r6	@, tmp219
	mov	r2, r0	@, SourceImgStoreType
	mov	r9, r0	@ SourceImgStoreType,
	add	r0, sp, #16	@ tmp270,,
	bl	DNR_SetDetPara	@
	ldr	r0, [sp, #12]	@ PicBufID, PicBufID
	str	r9, [sp]	@ SourceImgStoreType,
	add	r3, sp, #16	@ tmp271,,
	add	r2, r7, #324	@, tmp220,
	mov	r1, r6	@, tmp219
	str	r0, [sp, #4]	@ PicBufID,
	add	r0, sp, #60	@ tmp272,,
	bl	DNR_SetDnrCfg	@
	cmn	r0, #1	@,
	beq	.L537	@,
	mov	r0, r6	@, tmp219
	ldr	r2, [sp, #12]	@, PicBufID
	add	r1, sp, #60	@ tmp273,,
	bl	DNR_SetImageLogic	@
	cmn	r0, #1	@,
	beq	.L537	@,
	ldr	r6, .L577+12	@ tmp262,
	ldr	r3, [sp, #12]	@ PicBufID, PicBufID
	ldr	r0, [r6, #12]	@ D.33217, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r3, [r7, #444]	@ PicBufID, s_DnrChan[0].CurImageBufID
	cmp	r0, #0	@ D.33217,
	beq	.L545	@,
	blx	r0	@ D.33217
.L546:
	ldr	r3, [r6, #8]	@ D.33218, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.33218,
	beq	.L547	@,
	add	r0, sp, #60	@ tmp274,,
	blx	r3	@ D.33218
.L548:
	ldr	r0, [r6, #16]	@ D.33217, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	mov	r2, #0	@ tmp238,
	ldr	r3, [r5, #2920]	@ s_DnrChan[0].DNRDataSourceFlag, s_DnrChan[0].DNRDataSourceFlag
	cmp	r0, r2	@ D.33217,
	strb	r2, [r4]	@ tmp238, s_DnrChan[0].DecChanRstFlag
	str	r3, [r5, #2924]	@ s_DnrChan[0].DNRDataSourceFlag, s_DnrChan[0].DNRCaptureStartFlag
	beq	.L549	@,
	blx	r0	@ D.33217
.L550:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L577+16	@ tmp249,
	str	r0, [r3, #20]	@, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L576	@,
.L552:
	mov	r3, #0	@ tmp256,
	mov	r2, #1	@ tmp258,
	str	r3, [r8]	@ tmp256, *pNextInstId_73(D)
	mov	r0, r3	@ D.33214, tmp256
	str	r2, [r4, #12]	@ tmp258, s_DnrChan[0].InstMode
	b	.L540	@
.L574:
	ldr	r3, [r4, #432]	@ s_DnrChan[0].s321DFrameIsProc, s_DnrChan[0].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[0].s321DFrameIsProc,
	beq	.L535	@,
	ldr	r1, .L577+20	@,
	mov	r0, r6	@, tmp157
	bl	dprint_vfmw	@
	str	r7, [r5, #2920]	@ s_DnrChan[0].DNRCaptureEnableFlag, s_DnrChan[0].DNRDataSourceFlag
	str	r6, [r5, #2928]	@ tmp157, s_DnrChan[0].DNRCaptureEnableFlag
	b	.L535	@
.L575:
	ldr	r2, .L577+4	@ tmp208,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L537	@,
	b	.L541	@
.L576:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L577+24	@ tmp250,
	ldr	r1, .L577+28	@ tmp253,
	ldr	r3, [r2, #3120]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.33215, last_rec_pos_time, currtime
	cmp	r3, r1	@ D.33215, g_TraceFramePeriod
	strhi	r0, [r2, #3120]	@ currtime, last_rec_pos_time
	b	.L552	@
.L549:
	movw	r2, #1572	@,
	ldr	r1, .L577+32	@,
	bl	dprint_vfmw	@
	b	.L550	@
.L547:
	mov	r0, r3	@, D.33218
	movw	r2, #1567	@,
	ldr	r1, .L577+32	@,
	bl	dprint_vfmw	@
	b	.L548	@
.L545:
	movw	r2, #1565	@,
	ldr	r1, .L577+32	@,
	bl	dprint_vfmw	@
	b	.L546	@
.L578:
	.align	2
.L577:
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.word	.LANCHOR0+49152
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
	.word	.LC28
	.word	.LANCHOR1
	.word	g_TraceFramePeriod
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
	ldr	r4, .L603	@ tmp210,
	ldr	r3, [r4, #3060]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L580	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L600	@,
.L582:
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L580:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #3064]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r0, r3, r0	@ DelayTime, s_DnrCtrl.LastProcessTime,
	cmp	r0, #500	@ DelayTime,
	ble	.L582	@,
	ldr	r0, [r4, #3056]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r5, .L603+4	@ tmp209,
	ldr	r1, [r4, #3056]	@ D.33223, s_DnrCtrl.ThisInstID
	movw	ip, #11160	@ tmp156,
	movt	ip, 1	@ tmp156,
	movw	r2, #34079	@ tmp162,
	movt	r2, 20971	@ tmp162,
	mov	lr, #100	@ tmp164,
	mla	ip, ip, r1, r5	@ tmp157, tmp156, D.33223, tmp209
	ldr	ip, [ip, #216]	@ s_DnrChan[_26].Cur1DImage.image_id, s_DnrChan[_26].Cur1DImage.image_id
	umull	r2, r3, ip, r2	@ tmp161, s_DnrChan[_26].Cur1DImage.image_id, tmp162
	mov	r2, r3, lsr #5	@ tmp159,,
	mls	r3, lr, r2, ip	@ D.33224, tmp164, tmp159, s_DnrChan[_26].Cur1DImage.image_id
	add	r3, r3, #2	@ D.33224, D.33224,
	cmp	r0, r3	@, D.33224
	beq	.L601	@,
.L584:
	movw	r6, #11160	@ tmp192,
	mov	r0, r1	@, D.33223
	movt	r6, 1	@ tmp192,
	mla	r1, r6, r1, r5	@ tmp193, tmp192, D.33223, tmp209
	add	r1, r1, #40	@, tmp193,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r4, #3056]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mov	r2, #0	@ tmp202,
	ldr	r1, .L603+8	@,
	mov	r0, r2	@, tmp202
	mla	r5, r6, r3, r5	@ tmp200, tmp192, s_DnrCtrl.ThisInstID, tmp209
	str	r2, [r5, #432]	@ tmp202, s_DnrChan[_55].s321DFrameIsProc
	bl	dprint_vfmw	@
	ldr	r3, .L603+12	@ tmp204,
	ldr	r0, [r3, #12]	@ D.33228, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r0, #0	@ D.33228,
	beq	.L588	@,
	blx	r0	@ D.33228
.L589:
	mov	r3, #0	@ tmp207,
	mov	r0, #0	@,
	str	r3, [r4, #3060]	@ tmp207, s_DnrCtrl.DNRState
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L600:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp146,
	str	r2, [r4, #3060]	@ tmp146, s_DnrCtrl.DNRState
	str	r3, [r4, #3056]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3064]	@, s_DnrCtrl.LastProcessTime
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L601:
	ldr	r6, .L603+16	@ tmp211,
	ldr	r3, [r6]	@ D.33225, g_event_report
	cmp	r3, #0	@ D.33225,
	beq	.L585	@,
	add	r2, sp, #8	@ tmp169,,
	mov	r0, r1	@, D.33223
	mov	ip, #1	@ tmp168,
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp168, para
	blx	r3	@ D.33225
.L585:
	ldr	r1, .L603+20	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	ldr	r3, [r4, #3056]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r0, #11160	@ tmp175,
	ldr	r7, .L603	@ tmp172,
	movt	r0, 1	@ tmp175,
	mla	r0, r0, r3, r5	@ tmp176, tmp175, s_DnrCtrl.ThisInstID, tmp209
	add	r0, r0, #968	@, tmp176,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r3, r0	@ ret_val,
	beq	.L602	@,
	ldr	ip, [r6]	@ D.33225, g_event_report
	cmp	ip, #0	@ D.33225,
	beq	.L587	@,
	add	r2, sp, #8	@ tmp184,,
	ldr	r0, [r7, #3056]	@, s_DnrCtrl.ThisInstID
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ ret_val, para
	blx	ip	@ D.33225
.L587:
	mov	r1, #0	@,
	ldr	r0, [r4, #3056]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #3056]	@ D.33223, s_DnrCtrl.ThisInstID
	b	.L584	@
.L602:
	ldr	r3, [r6]	@ D.33225, g_event_report
	cmp	r3, #0	@ D.33225,
	beq	.L587	@,
	add	r2, sp, #8	@ tmp180,,
	mov	ip, #1	@ tmp179,
	ldr	r0, [r7, #3056]	@, s_DnrCtrl.ThisInstID
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp179, para
	blx	r3	@ D.33225
	b	.L587	@
.L588:
	movw	r2, #1838	@,
	ldr	r1, .L603+24	@,
	bl	dprint_vfmw	@
	b	.L589	@
.L604:
	.align	2
.L603:
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
	subs	r1, r0, #0	@ D.33234,
	bne	.L608	@,
	mov	r10, r1	@ D.33234, D.33234
	ldr	r1, [sp, #72]	@ D.33235, PicBufID
	mov	r6, #1	@ tmp217,
	mov	r7, #392	@ tmp157,
	movw	r3, #11160	@ tmp299,
	bfi	r3, r6, #16, #16	@ tmp299, tmp217,,
	mul	r7, r7, r1	@ tmp156, tmp157, D.33235
	ldr	r0, [sp, #120]	@ tmp543, Stride
	mla	r3, r3, r5, r7	@ tmp300, tmp299, ChanID, tmp156
	ldr	r4, .L616	@ tmp539,
	str	r9, [sp, #52]	@ PicHeight, %sfp
	movw	ip, #11160	@ tmp335,
	mul	r0, r9, r0	@ D.33235, PicHeight, tmp543
	str	r1, [sp, #48]	@ D.33235, %sfp
	mov	r9, r1	@ D.33235, D.33235
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
	str	r0, [sp, #36]	@ D.33235, %sfp
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
	str	r9, [r2, ip]	@ D.33235, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_id
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
	str	r10, [r3, #140]	@ D.33234, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DistanceBeforeFirstFrame
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
	ldr	lr, [fp, r2]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_phy_addr
	movw	r2, #11160	@ tmp418,
	bfi	r2, r6, #16, #16	@ tmp418, tmp217,,
	movw	r8, #26520	@ tmp264,
	ldr	r9, [sp, #52]	@ PicHeight, %sfp
	add	r3, r4, r3	@ tmp383, tmp539, tmp382
	mla	r2, r2, r5, r7	@ tmp419, tmp418, ChanID, tmp156
	str	lr, [r0, r8]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].top_luma_phy_addr
	movw	r8, #11160	@ tmp317,
	bfi	r8, r6, #16, #16	@ tmp317, tmp217,,
	add	r3, r3, #26368	@ tmp385, tmp383,
	str	r10, [sp, #32]	@ D.33234, %sfp
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
	str	lr, [r8, r0]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_phy_addr
	ldr	r8, [sp, #56]	@ tmp274, %sfp
	movw	ip, #11160	@ tmp399,
	ldr	r0, [sp, #36]	@ D.33235, %sfp
	bfi	ip, r6, #16, #16	@ tmp399, tmp217,,
	ldr	fp, [sp, #120]	@ tmp572, Stride
	add	r3, r4, r3	@ tmp281, tmp539, tmp280
	add	r0, r0, lr	@ D.33236, D.33235, D.33236
	str	r0, [r8, #4]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].top_chrom_phy_addr
	movw	r8, #26528	@ tmp282,
	add	lr, lr, fp	@ D.33235, D.33236, tmp572
	str	lr, [r3, r8]	@ D.33235, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].btm_luma_phy_addr
	movw	lr, #11160	@ tmp467,
	ldr	r8, [sp, #24]	@ tmp339, %sfp
	bfi	lr, r6, #16, #16	@ tmp467, tmp217,,
	movw	r3, #11160	@ tmp457,
	bfi	r3, r6, #16, #16	@ tmp457, tmp217,,
	mla	lr, lr, r5, r7	@ tmp468, tmp467, ChanID, tmp156
	str	r0, [r8, #4]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_phy_addr
	mla	r3, r3, r5, r7	@ tmp458, tmp457, ChanID, tmp156
	ldr	r8, [sp, #28]	@ tmp357, %sfp
	mla	ip, ip, r5, r7	@ tmp400, tmp399, ChanID, tmp156
	add	lr, r4, lr	@ tmp469, tmp539, tmp468
	str	r0, [r8, #4]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_2d_phy_addr
	add	r3, r4, r3	@ tmp459, tmp539, tmp458
	ldr	r8, [sp, #120]	@ tmp576, Stride
	movw	r2, #11160	@ tmp428,
	ldr	r9, [sp, #20]	@ tmp293, %sfp
	add	ip, r4, ip	@ tmp401, tmp539, tmp400
	add	r0, r8, r0	@ D.33235, tmp576, D.33236
	add	r8, lr, #26368	@ tmp471, tmp469,
	movw	lr, #26640	@ tmp460,
	add	r8, r8, #200	@ tmp471, tmp471,
	str	r6, [r3, lr]	@ tmp217, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chroma_idc
	add	ip, ip, #26368	@ tmp403, tmp401,
	ldr	r3, [sp, #60]	@ tmp301, %sfp
	bfi	r2, r6, #16, #16	@ tmp428, tmp217,,
	str	r0, [r9, #4]	@ D.33235, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].btm_chrom_phy_addr
	movw	r0, #11160	@ tmp308,
	ldr	r9, [sp, #128]	@ tmp582, DispPicHeight
	bfi	r0, r6, #16, #16	@ tmp308, tmp217,,
	str	r8, [sp, #56]	@ tmp471, %sfp
	movw	r8, #26480	@ tmp581,
	ldr	r3, [r3, r8]	@ D.33237, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_vir_addr
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
	str	r3, [r0, lr]	@ D.33237, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_vir_addr
	mov	r0, r3	@, D.33237
	ldr	lr, [sp, #36]	@ D.33235, %sfp
	add	r2, r4, r2	@ tmp430, tmp539, tmp429
	str	r9, [sp, #20]	@ tmp224, %sfp
	add	r2, r2, #26368	@ tmp432, tmp430,
	add	r3, r3, lr	@ D.33237, D.33237, D.33235
	ldr	r9, [sp, #64]	@ tmp330, %sfp
	str	r3, [ip, #4]	@ D.33237, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_2d_vir_addr
	add	r8, lr, lr, lsl #1	@ D.33235, D.33235, D.33235,
	ldr	ip, [sp, #120]	@ tmp587, Stride
	bfi	fp, r6, #16, #16	@ tmp447, tmp217,,
	str	r3, [r9, #4]	@ D.33237, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_vir_addr
	movw	lr, #11160	@ tmp372,
	ldr	r3, [sp, #128]	@ tmp586, DispPicHeight
	bfi	lr, r6, #16, #16	@ tmp372, tmp217,,
	str	ip, [r2, #236]	@ tmp587, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_stride
	movw	r10, #11160	@ tmp242,
	ldr	ip, [sp, #52]	@ tmp422, %sfp
	bfi	r10, r6, #16, #16	@ tmp242, tmp217,,
	mla	fp, fp, r5, r7	@ tmp448, tmp447, ChanID, tmp156
	mov	r3, r3, lsr r6	@ D.33236, tmp586,
	mla	lr, lr, r5, r7	@ tmp373, tmp372, ChanID, tmp156
	str	r3, [ip, #4]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_center_y
	movw	r3, #11160	@ tmp408,
	bfi	r3, r6, #16, #16	@ tmp408, tmp217,,
	add	fp, r4, fp	@ tmp449, tmp539, tmp448
	movw	r9, #11160	@ tmp362,
	mla	r3, r3, r5, r7	@ tmp409, tmp408, ChanID, tmp156
	add	lr, r4, lr	@ tmp374, tmp539, tmp373
	bfi	r9, r6, #16, #16	@ tmp362, tmp217,,
	str	lr, [sp, #24]	@ tmp374, %sfp
	ldr	lr, [sp, #32]	@ D.33234, %sfp
	add	fp, fp, #26368	@ tmp451, tmp449,
	mla	r10, r10, r5, r7	@ tmp243, tmp242, ChanID, tmp156
	add	r3, r4, r3	@ tmp410, tmp539, tmp409
	mla	r9, r9, r5, r7	@ tmp363, tmp362, ChanID, tmp156
	str	lr, [fp, #244]	@ D.33234, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].error_level
	str	r3, [sp, #28]	@ tmp410, %sfp
	movw	r2, #11160	@ tmp390,
	ldr	r3, [sp, #20]	@ tmp224, %sfp
	bfi	r2, r6, #16, #16	@ tmp390, tmp217,,
	movw	ip, #11160	@ tmp437,
	bfi	ip, r6, #16, #16	@ tmp437, tmp217,,
	add	r10, r4, r10	@ tmp244, tmp539, tmp243
	movw	fp, #26504	@ tmp225,
	str	lr, [r3, fp]	@ D.33234, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DispFrameDistance
	add	r9, r4, r9	@ tmp364, tmp539, tmp363
	mla	r2, r2, r5, r7	@ tmp391, tmp390, ChanID, tmp156
	movw	fp, #26512	@ tmp245,
	mla	ip, ip, r5, r7	@ tmp438, tmp437, ChanID, tmp156
	str	lr, [r10, fp]	@ D.33234, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].GopNum
	movw	r10, #26560	@ tmp365,
	mov	fp, lr	@ D.33234, D.33234
	str	lr, [r9, r10]	@ D.33234, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].is_fld_save
	add	r2, r4, r2	@ tmp392, tmp539, tmp391
	ldr	lr, [sp, #44]	@ PicWidth, %sfp
	add	ip, r4, ip	@ tmp439, tmp539, tmp438
	ldr	r10, [sp, #24]	@ tmp374, %sfp
	movw	r9, #26576	@ tmp375,
	ldr	r3, [sp, #124]	@ tmp595, DispPicWidth
	add	r8, r8, r8, lsr #31	@ tmp477, D.33235, D.33235,
	str	lr, [r10, r9]	@ PicWidth, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_width
	movw	r10, #26584	@ tmp393,
	movw	r9, #26600	@ tmp431,
	str	r3, [r2, r10]	@ tmp595, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_width
	str	fp, [ip, r9]	@ D.33234, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].frame_rate
	mov	r10, r3, lsr r6	@ D.33236, tmp596,
	ldr	ip, [sp, #56]	@ tmp471, %sfp
	mov	r8, r8, asr r6	@ D.33235, tmp477,
	ldr	r3, [sp, #28]	@ tmp410, %sfp
	movw	lr, #26592	@ tmp411,
	mov	r2, r8	@, D.33235
	str	r10, [r3, lr]	@ D.33236, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_center_x
	movw	r3, #11296	@ tmp472,
	str	r3, [ip, #4]	@ tmp472, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].format
	bl	memcpy	@
	movw	r3, #11160	@ tmp487,
	bfi	r3, r6, #16, #16	@ tmp487, tmp217,,
	mla	r7, r3, r5, r7	@ tmp488, tmp487, ChanID, tmp156
	movw	r3, #26480	@ tmp599,
	add	r7, r4, r7	@ tmp489, tmp539, tmp488
	ldr	r7, [r7, r3]	@ D.33237, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_vir_addr
	mov	r0, r7	@, D.33237
	bl	MEM_Vir2Phy	@
	mov	r2, r8	@, D.33235
	mov	r1, r0	@,
	mov	r0, r7	@, D.33237
	bl	KernelFlushCache	@
	movw	r0, #11160	@ tmp494,
	bfi	r0, r6, #16, #16	@ tmp494, tmp217,,
	ldr	r1, [sp, #40]	@, %sfp
	mla	r0, r0, r5, r4	@ tmp495, tmp494, ChanID, tmp539
	add	r0, r0, #968	@, tmp495,
	bl	IMGQUE_InsertImage	@
	cmp	r0, r6	@,
	beq	.L607	@,
	mov	r0, r6	@, tmp217
	ldr	r1, .L616+4	@,
	bl	dprint_vfmw	@
.L607:
	ldr	r0, [sp, #48]	@ D.33235, %sfp
	movw	r2, #11160	@ tmp509,
	movt	r2, 1	@ tmp509,
	mov	r3, #392	@ tmp507,
	mul	r2, r2, r5	@ tmp508, tmp509, ChanID
	ldr	ip, [sp, #72]	@ PicBufID, PicBufID
	mla	r3, r3, r0, r2	@ tmp510, tmp507, D.33235, tmp508
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
	ldr	r1, .L616+8	@,
	strd	r6, [sp, #8]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].Usertag,,
	strd	r8, [sp]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].PTS,
	str	lr, [r4, ip, asl #2]	@ tmp504, s_DnrChan[ChanID_5(D)].LogicImageIsUsed
	bl	dprint_vfmw	@
	ldr	r3, .L616+12	@ tmp536,
	ldr	r3, [r3]	@ D.33240, g_event_report
	cmp	r3, #0	@ D.33240,
	beq	.L606	@,
	ldr	r1, [sp, #40]	@ pLogic, %sfp
	add	r2, sp, #80	@ tmp537,,
	mov	r0, r5	@, ChanID
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #5	@,
	blx	r3	@ D.33240
.L606:
	ldr	r0, [sp, #32]	@, %sfp
	add	sp, sp, #84	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L608:
	mvn	r3, #0	@ D.33234,
	str	r3, [sp, #32]	@ D.33234, %sfp
	b	.L606	@
.L617:
	.align	2
.L616:
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
	ldr	r2, .L619	@ tmp113,
	mla	r1, r3, r0, r1	@ tmp116, tmp115, ChanID, PicBufID
	mov	r3, #0	@ tmp118,
	mov	r0, r3	@, tmp118
	add	r1, r1, #178	@ tmp117, tmp116,
	str	r3, [r2, r1, asl #2]	@ tmp118, s_DnrChan[ChanID_2(D)].LogicImageIsUsed
	bx	lr	@
.L620:
	.align	2
.L619:
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
	mov	r4, r4, lsr #3	@ D.33258, p_image_8(D)->image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L627	@,
	ldr	r6, [r7, #148]	@ D.33258, p_image_8(D)->image_height
	cmp	r6, #0	@ D.33258,
	beq	.L628	@,
	ldr	r5, [r7, #172]	@ p_image_8(D)->image_stride, p_image_8(D)->image_stride
	mov	lr, #0	@ y,
	ldr	ip, [r7, #144]	@ D.33259, p_image_8(D)->image_width
	mov	r0, lr	@ CheckSum, y
	bic	r5, r5, #3	@ D.33258, p_image_8(D)->image_stride,
.L626:
	cmp	ip, #0	@ D.33259,
	add	r1, r1, r5	@ p32, p32, D.33258
	beq	.L624	@,
	mov	r3, #0	@ x,
.L625:
	mov	r2, r3, asr #2	@ D.33260, x,
	add	r3, r3, #1	@ x, x,
	cmp	r3, ip	@ x, D.33259
	ldr	r2, [r1, r2, asl #2]	@ *_29, *_29
	add	r0, r0, r2	@ CheckSum, CheckSum, *_29
	bne	.L625	@,
.L624:
	add	lr, lr, r4	@ y, y, D.33258
	cmp	r6, lr	@ D.33258, y
	bhi	.L626	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L627:
	mov	r0, r1	@ D.33259, p32
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L628:
	mov	r0, r6	@ CheckSum, D.33258
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
	ldr	r6, .L671	@ tmp317,
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
	mov	r2, r3, lsr #5	@ D.33280,,
	mls	r2, r7, r2, r1	@ D.33280, tmp170, D.33280, pLogic_17(D)->image_id
	add	r3, r2, #2	@ D.33280, D.33280,
	cmp	r0, r3	@, D.33280
	beq	.L668	@,
.L636:
	movw	r0, #11160	@ tmp184,
	ldr	r9, .L671	@ tmp182,
	movt	r0, 1	@ tmp184,
	mul	r0, r0, r5	@ tmp183, tmp184, ChanID
	add	r7, r6, r0	@ tmp185, tmp317, tmp183
	add	r10, r7, #75776	@ tmp187, tmp185,
	ldr	r3, [r10, #848]	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed,
	blt	.L638	@,
	add	r0, r0, #968	@ tmp192, tmp183,
	str	r8, [r4, #176]	@ PicBufID, pLogic_17(D)->image_id
	add	r0, r9, r0	@, tmp182, tmp192
	mov	r1, r4	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.33278,
	bne	.L666	@,
	movw	r3, #19174	@ tmp196,
	mov	r0, #11	@,
	mla	r8, r3, r5, r8	@ tmp197, tmp196, ChanID, PicBufID
	mov	r3, #2	@ tmp199,
	add	r8, r8, #178	@ tmp198, tmp197,
	str	r3, [r9, r8, asl #2]	@ tmp199, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L669	@,
.L641:
	add	r7, r4, #188	@ ivtmp.341, pLogic,
	add	r8, r4, #204	@ D.33289, pLogic,
.L646:
	ldr	r1, [r7, #4]!	@ D.33284, MEM[base: _94, offset: 0B]
	mov	r0, r5	@, ChanID
	cmp	r1, #0	@ D.33284,
	beq	.L645	@,
	bl	MarkUsdByDnr	@
.L645:
	cmp	r7, r8	@ ivtmp.341, D.33289
	bne	.L646	@,
	ldrd	r10, [r4, #16]	@ pLogic_17(D)->Usertag, pLogic,
	mov	r0, #29	@,
	ldrd	r8, [r4, #8]	@ pLogic_17(D)->PTS, pLogic,
	ldrd	r2, [r4]	@ pLogic_17(D)->SrcPts, pLogic_17(D)->SrcPts
	ldr	r1, .L671+4	@,
	strd	r10, [sp, #8]	@ pLogic_17(D)->Usertag,,
	strd	r8, [sp]	@ pLogic_17(D)->PTS,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #140]	@, pLogic_17(D)->format
	ldr	r1, .L671+8	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	mov	r0, r4	@, pLogic
	bl	CalcFrameCheckSum	@
	ldr	r1, .L671+12	@,
	mov	r2, r0	@,
	mov	r0, #11	@,
	bl	dprint_vfmw	@
	movw	r3, #11160	@ tmp309,
	movt	r3, 1	@ tmp309,
	mla	r6, r3, r5, r6	@ tmp310, tmp309, ChanID, tmp317
	add	r6, r6, #75776	@ tmp312, tmp310,
	ldr	r3, [r6, #848]	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed,
	blt	.L648	@,
	ldr	r3, .L671+16	@ tmp314,
	ldr	r3, [r3]	@ D.33281, g_event_report
	cmp	r3, #0	@ D.33281,
	beq	.L648	@,
	add	r2, sp, #32	@ tmp315,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r4, [r2, #-4]!	@ pLogic, para
	blx	r3	@ D.33281
	mov	r0, #0	@ D.33278,
.L666:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L638:
	movw	r3, #51520	@ tmp214,
	add	fp, r7, #51456	@ tmp215, tmp185,
	ldr	r2, [r7, r3]	@ s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag, s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag
	add	fp, fp, #64	@ tmp215, tmp215,
	cmp	r2, #0	@ s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag,
	bne	.L642	@,
	mov	r0, r5	@, ChanID
	bl	DNR_ClearTempImage	@
	b	.L641	@
.L648:
	mov	r0, #0	@ D.33278,
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L668:
	ldr	r3, .L671+16	@ tmp173,
	mov	r1, #1	@ tmp172,
	str	r1, [r4, #224]	@ tmp172, pLogic_17(D)->last_frame
	ldr	r3, [r3]	@ D.33281, g_event_report
	cmp	r3, #0	@ D.33281,
	beq	.L637	@,
	add	r2, sp, #32	@ tmp175,,
	mov	r0, #0	@ tmp174,
	mov	r1, #115	@,
	str	r0, [r2, #-4]!	@ tmp174, para
	mov	r0, r5	@, ChanID
	blx	r3	@ D.33281
	ldr	r1, [r4, #176]	@ pLogic_17(D)->image_id, pLogic_17(D)->image_id
	umull	r2, r3, r1, r9	@ tmp177, pLogic_17(D)->image_id, tmp168
	mov	r2, r3, lsr #5	@ D.33280,,
	mls	r2, r7, r2, r1	@ D.33280, tmp170, D.33280, pLogic_17(D)->image_id
.L637:
	mov	r3, r8	@, PicBufID
	ldr	r1, .L671+20	@,
	mov	r0, #2	@,
	bl	dprint_vfmw	@
	mov	r1, #0	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L636	@
.L642:
	str	r8, [r4, #176]	@ PicBufID, pLogic_17(D)->image_id
	mov	ip, #392	@ tmp225,
	ldr	lr, [fp, #4]	@ D.33282, s_DnrChan[ChanID_12(D)].TempImageNum
	mov	r2, ip	@, tmp225
	mov	r1, r4	@, pLogic
	str	r3, [sp, #20]	@ tmp214, %sfp
	mla	ip, ip, lr, r0	@ tmp228, tmp225, D.33282, tmp183
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
	add	r2, r2, #1	@ D.33282, s_DnrChan[ChanID_12(D)].TempImageNum,
	add	r8, r8, #178	@ tmp240, tmp239,
	rsb	r1, lr, r1	@ D.33280, s_DnrChan[ChanID_12(D)].u32VoFrmNum, s_DnrChan[ChanID_12(D)].s32ValidImgNum
	str	r2, [fp, #4]	@ D.33282, s_DnrChan[ChanID_12(D)].TempImageNum
	cmp	r2, r1	@ D.33282, D.33280
	str	r0, [r9, r8, asl #2]	@ tmp241, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	ldr	ip, [sp, #16]	@ tmp228, %sfp
	ldr	r3, [sp, #20]	@ tmp214, %sfp
	bcc	.L670	@,
	mov	r2, #0	@ tmp285,
	str	r2, [r7, r3]	@ tmp285, s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag
.L644:
	mov	r1, r4	@, pLogic
	mov	r0, r5	@, ChanID
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L641	@,
	movw	r3, #11160	@ tmp288,
	movw	r2, #2062	@,
	movt	r3, 1	@ tmp288,
	ldr	r1, .L671+24	@,
	mla	r3, r3, r5, r6	@ tmp289, tmp288, ChanID, tmp317
	mov	r0, #0	@,
	add	ip, r3, #51456	@ tmp291, tmp289,
	ldr	lr, [r3, #448]	@ s_DnrChan[ChanID_12(D)].s32ValidImgNum, s_DnrChan[ChanID_12(D)].s32ValidImgNum
	ldr	r3, [ip, #68]	@ s_DnrChan[ChanID_12(D)].TempImageNum, s_DnrChan[ChanID_12(D)].TempImageNum
	str	lr, [sp]	@ s_DnrChan[ChanID_12(D)].s32ValidImgNum,
	bl	dprint_vfmw	@
	b	.L641	@
.L670:
	add	r9, r9, ip	@ tmp275, tmp182, tmp228
	movw	r3, #51752	@ tmp276,
	ldr	r3, [r9, r3]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_50].last_frame, MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_50].last_frame
	cmp	r3, #1	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_50].last_frame,
	bne	.L641	@,
	b	.L644	@
.L669:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L671+28	@ tmp200,
	ldr	r1, .L671+32	@ tmp205,
	add	r3, r3, r5, lsl #2	@ tmp201, tmp200, ChanID,
	ldr	r2, [r3, #3124]	@ tmp204, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r2, r0	@ D.33280, tmp204, currtime
	cmp	r2, r1	@ D.33280, g_TraceFramePeriod
	strhi	r0, [r3, #3124]	@ currtime, last_rec_pos_time
	b	.L641	@
.L672:
	.align	2
.L671:
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
	movw	r3, #11160	@ tmp126,
	ldr	ip, .L692	@ tmp179,
	movt	r3, 1	@ tmp126,
	mul	r3, r3, r0	@ tmp125, tmp126, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	add	r2, ip, r3	@ tmp127, tmp179, tmp125
	.pad #8
	sub	sp, sp, #8	@,,
	add	lr, r2, #75776	@ tmp134, tmp127,
	ldr	r1, [r2, #444]	@ PicBufID, s_DnrChan[ChanID_5(D)].CurImageBufID
	ldr	r0, [lr, #872]	@ D.33300, s_DnrChan[ChanID_5(D)].DNRDataSourceFlag
	cmp	r0, #0	@ D.33300,
	bne	.L674	@,
	mov	r2, #392	@ tmp137,
	mla	r3, r2, r1, r3	@ tmp140, tmp137, PicBufID, tmp125
	add	r3, r3, #26368	@ tmp142, tmp140,
	add	r3, r3, #64	@ tmp142, tmp142,
	add	r3, ip, r3	@ pLogic, tmp179, tmp142
.L675:
	cmp	r4, #0	@ ChanID,
	bne	.L689	@,
	ldr	r2, [r3, #144]	@ pLogic_1->image_width, pLogic_1->image_width
	cmp	r2, #0	@ pLogic_1->image_width,
	beq	.L690	@,
	cmp	r0, #0	@ D.33300,
	beq	.L691	@,
	cmp	r0, #1	@ D.33300,
	bne	.L683	@,
	ldr	r2, .L692+4	@ tmp165,
	ldr	r1, [r2, #2924]	@ s_DnrChan[0].DNRCaptureStartFlag, s_DnrChan[0].DNRCaptureStartFlag
	cmp	r1, #1	@ s_DnrChan[0].DNRCaptureStartFlag,
	bne	.L683	@,
	ldr	r1, .L692+8	@ tmp175,
	str	r4, [r2, #2920]	@ ChanID, s_DnrChan[0].DNRDataSourceFlag
	str	r4, [r2, #2924]	@ ChanID, s_DnrChan[0].DNRCaptureStartFlag
	ldr	ip, [r1]	@ D.33303, g_event_report
	cmp	ip, #0	@ D.33303,
	beq	.L684	@,
	add	r2, sp, #8	@ tmp176,,
	mov	r1, #21	@,
	mov	r0, r4	@, ChanID
	str	r3, [r2, #-4]!	@ pLogic, para
	blx	ip	@ D.33303
	mov	r0, r4	@ D.33299, ChanID
.L677:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L674:
	cmp	r0, #1	@ D.33300,
	bne	.L676	@,
	ldr	r3, [lr, #896]	@ pLogic, s_DnrChan[ChanID_5(D)].pCaptureImageOut
	b	.L675	@
.L691:
	ldrsb	r1, [ip]	@ s_DnrChan[0].DecChanRstFlag, s_DnrChan[0].DecChanRstFlag
	ldr	r2, .L692	@ tmp155,
	cmp	r1, #1	@ s_DnrChan[0].DecChanRstFlag,
	streq	r0, [r2, #16]	@ D.33300, s_DnrChan[0].NeedStartAgain
	beq	.L677	@,
	ldr	r2, [r2, #16]	@ s_DnrChan[0].NeedStartAgain, s_DnrChan[0].NeedStartAgain
	cmp	r2, #0	@ s_DnrChan[0].NeedStartAgain,
	beq	.L682	@,
.L684:
	mov	r0, #0	@ D.33299,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L682:
	mov	r1, r3	@, pLogic
	bl	DNR_ProcessDnrImage	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.33304,
	moveq	r0, #1	@ D.33304,
	rsb	r0, r0, #0	@ D.33299, D.33304
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L683:
	mov	r2, r0	@, D.33300
	ldr	r1, .L692+12	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33299,
	b	.L677	@
.L676:
	ldr	r1, .L692+16	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33299,
	b	.L677	@
.L689:
	ldr	r3, .L692+20	@,
	movw	r2, #2119	@,
	ldr	r1, .L692+24	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33299,
	b	.L677	@
.L690:
	mov	r0, r4	@, ChanID
	ldr	r3, .L692+28	@,
	movw	r2, #2120	@,
	ldr	r1, .L692+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33299,
	b	.L677	@
.L693:
	.align	2
.L692:
	.word	.LANCHOR0
	.word	.LANCHOR0+73728
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
	ldr	r4, .L718	@ tmp221,
	ldr	r0, .L718+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #3128]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r3, #44]	@ dat, *_14
	tst	r3, #1	@ dat,
	beq	.L707	@,
	ldr	r3, .L718+8	@ tmp150,
	ldr	r0, [r3, #20]	@ D.33314, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r0, #0	@ D.33314,
	beq	.L696	@,
	blx	r0	@ D.33314
.L697:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L713	@,
	ldr	r5, .L718+12	@ tmp222,
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	bne	.L714	@,
.L702:
	ldr	r3, [r4, #3060]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	ldr	r6, .L718	@ tmp183,
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	beq	.L715	@,
.L707:
	ldr	r0, .L718+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L713:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #3056]	@ D.33312, s_DnrCtrl.ThisInstID
	ldr	r2, .L718+16	@ tmp158,
	ldr	r5, .L718+12	@ tmp222,
	add	r3, r4, r3, lsl #2	@ tmp154, tmp221, D.33312,
	ldr	r1, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [r3, #3144]	@ tmp157, last_rec_pos_time
	rsb	r2, r2, r0	@ D.33315, tmp157, currtime
	cmp	r2, r1	@ D.33315, g_TraceFramePeriod
	strhi	r0, [r3, #3144]	@ currtime, last_rec_pos_time
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	beq	.L702	@,
.L714:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #16]	@ D.33315, g_VfmwGlobalStat[0].u32DaBeginTime
	ldr	r3, [r5, #20]	@ D.33315, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r6, #0	@ tmp174,
	add	r2, r1, #49920	@ D.33315, D.33315,
	str	r6, [r5, #20]	@ tmp174, g_VfmwGlobalStat[0].u32DaLastStartTime
	add	r2, r2, #80	@ D.33315, D.33315,
	cmp	r2, r3	@ D.33315, D.33315
	strcc	r3, [r5, #16]	@ D.33315, g_VfmwGlobalStat[0].u32DaBeginTime
	movcc	r1, r3	@ D.33315, D.33315
	ldrcs	r2, [r5, #24]	@ D.33317, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	movcc	r2, #0	@ D.33317,
	rsb	r1, r1, r0	@ Period, D.33315, CurTime
	rsb	r0, r3, r0	@ D.33315, D.33315, CurTime
	cmp	r1, #1000	@ Period,
	add	r0, r0, r2	@ D.33315, D.33315, D.33317
	str	r0, [r5, #24]	@ D.33315, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	ldr	r5, .L718+12	@ tmp172,
	bcc	.L702	@,
	mov	r3, #1000	@ tmp177,
	mul	r0, r3, r0	@, tmp177, D.33315
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #3060]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	str	r6, [r5, #16]	@ tmp174, g_VfmwGlobalStat[0].u32DaBeginTime
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	ldr	r6, .L718	@ tmp183,
	str	r0, [r5, #28]	@, g_VfmwGlobalStat[0].u32DaDnrLoad
	bne	.L707	@,
.L715:
	ldr	r0, [r6, #3056]	@ D.33312, s_DnrCtrl.ThisInstID
	movw	r3, #11160	@ tmp188,
	ldr	r5, .L718+20	@ tmp220,
	movt	r3, 1	@ tmp188,
	mla	r3, r3, r0, r5	@ tmp189, tmp188, D.33312, tmp220
	ldr	r3, [r3, #12]	@ s_DnrChan[_51].InstMode, s_DnrChan[_51].InstMode
	cmp	r3, #1	@ s_DnrChan[_51].InstMode,
	beq	.L716	@,
.L708:
	movw	r6, #11160	@ tmp197,
	mov	r3, #0	@ tmp194,
	movt	r6, 1	@ tmp197,
	str	r3, [r4, #3060]	@ tmp194, s_DnrCtrl.DNRState
	mul	r1, r6, r0	@ tmp196, tmp197, D.33312
	ldr	r8, .L718	@ tmp193,
	ldr	r7, .L718+20	@ tmp195,
	add	r5, r5, r1	@ tmp198, tmp220, tmp196
	ldr	r5, [r5, #16]	@ s_DnrChan[_77].NeedStartAgain, s_DnrChan[_77].NeedStartAgain
	cmp	r5, r3	@ s_DnrChan[_77].NeedStartAgain,
	beq	.L717	@,
.L709:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L707	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp218,
	str	r2, [r4, #3060]	@ tmp218, s_DnrCtrl.DNRState
	str	r3, [r4, #3056]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3064]	@, s_DnrCtrl.LastProcessTime
	b	.L707	@
.L717:
	add	r1, r1, #40	@ tmp204, tmp196,
	add	r1, r7, r1	@, tmp195, tmp204
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #3056]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r6, r6, r3, r7	@ tmp211, tmp197, s_DnrCtrl.ThisInstID, tmp195
	str	r5, [r6, #432]	@ s_DnrChan[_77].NeedStartAgain, s_DnrChan[_59].s321DFrameIsProc
	b	.L709	@
.L696:
	movw	r2, #1697	@,
	ldr	r1, .L718+24	@,
	bl	dprint_vfmw	@
	b	.L697	@
.L716:
	bl	DNR_ProcessDnrReturn	@
	ldr	r0, [r6, #3056]	@ D.33312, s_DnrCtrl.ThisInstID
	b	.L708	@
.L719:
	.align	2
.L718:
	.word	.LANCHOR1
	.word	g_TaskLock
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
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
	ldr	r2, .L725	@ tmp122,
	movw	r3, #11160	@ tmp124,
	movt	r3, 1	@ tmp124,
	mla	r0, r3, r0, r2	@ tmp125, tmp124, ChanID, tmp122
	add	r3, r0, #75776	@ tmp127, tmp125,
	ldr	r0, [r3, #900]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable
	cmp	r0, #1	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable,
	beq	.L724	@,
	mov	r0, #1	@ D.33323,
	bx	lr	@
.L724:
	ldr	r2, [r3, #904]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	ldr	r0, [r1, #144]	@ p_image_5(D)->image_width, p_image_5(D)->image_width
	cmp	r0, r2	@ p_image_5(D)->image_width, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	bhi	.L723	@,
	ldr	r0, [r3, #908]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r1, #148]	@ p_image_5(D)->image_height, p_image_5(D)->image_height
	cmp	r2, r0	@ p_image_5(D)->image_height, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	movhi	r0, #0	@ D.33323,
	movls	r0, #1	@ D.33323,
	bx	lr	@
.L723:
	mov	r0, #0	@ D.33323,
	bx	lr	@
.L726:
	.align	2
.L725:
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
	add	r4, r1, #188	@ ivtmp.363, pImage,
	ldr	r8, .L742	@ tmp130,
	add	r7, r1, #204	@ D.33350, pImage,
	ldr	r9, .L742+4	@ tmp131,
	mov	r6, r1	@ pImage, pImage
	mov	r5, r0	@ ChanID, ChanID
	mov	r10, #0	@ tmp132,
.L729:
	ldr	r2, [r4, #4]!	@ D.33343, MEM[base: _21, offset: 0B]
	cmp	r2, #0	@ D.33343,
	beq	.L728	@,
	ldr	r3, [r8, r5, asl #2]	@ tmp123, pstVdecUsdPool
	cmp	r3, #0	@ tmp123,
	beq	.L728	@,
	ldr	r3, [r9, r5, asl #2]	@ D.33345, s_pstVfmwChan
	cmp	r3, #0	@ D.33345,
	add	r1, r3, #217088	@ tmp126, D.33345,
	beq	.L728	@,
	ldr	r3, [r1, #420]	@ _9->u32ChanTick, _9->u32ChanTick
	ldr	r1, [r6, #384]	@ pImage_5(D)->u32ChanTick, pImage_5(D)->u32ChanTick
	cmp	r1, r3	@ pImage_5(D)->u32ChanTick, _9->u32ChanTick
	beq	.L741	@,
.L728:
	cmp	r4, r7	@ ivtmp.363, D.33350
	bne	.L729	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L741:
	mov	r1, r2	@, D.33343
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r10, [r4]	@ tmp132, MEM[base: _21, offset: 0B]
	b	.L728	@
.L743:
	.align	2
.L742:
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
	cmp	r0, #0	@ ChanID,
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r3, #0	@ tmp161,
	str	r3, [sp, #8]	@ tmp161, TopPhyAddr
	str	r3, [sp, #12]	@ tmp161, BtmPhyAddr
	bne	.L769	@,
	cmp	r1, #0	@ p_image,
	mov	r4, r1	@ p_image, p_image
	beq	.L770	@,
	ldr	r3, [r1, #88]	@ p_image_16(D)->top_luma_phy_addr, p_image_16(D)->top_luma_phy_addr
	cmp	r3, #0	@ p_image_16(D)->top_luma_phy_addr,
	beq	.L761	@,
	ldr	r6, .L778	@ tmp254,
	ldr	r3, [r6, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r3, #0	@ s_DnrChan[0].s32IsOpen,
	beq	.L771	@,
.L748:
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.33360, eVidStd,
	bics	r3, r3, #4	@ tmp257, D.33360,
	moveq	r3, #1	@ tmp177,
	movne	r3, #0	@ tmp177,
	cmp	r0, #4	@ eVidStd,
	movne	r0, r3	@, tmp182, tmp177
	orreq	r0, r3, #1	@,, tmp182, tmp177
	cmp	r0, #0	@ tmp182,
	bne	.L772	@,
	ldr	r1, [r4, #176]	@ D.33359, p_image_16(D)->image_id
	movw	r2, #34079	@ tmp186,
	movt	r2, 20971	@ tmp186,
	mov	ip, #100	@ tmp188,
	umull	r2, r3, r1, r2	@ tmp185, D.33359, tmp186
	mov	r7, r3, lsr #5	@ RelImgID,,
	mls	r7, ip, r7, r1	@ RelImgID, tmp188, RelImgID, D.33359
	cmp	r7, #63	@ RelImgID,
	bgt	.L773	@,
.L750:
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	ldr	r0, .L778+4	@,
	bl	IMGQUE_DeleteImage	@
	mov	r5, r0	@ ret,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L774	@,
.L752:
	ldr	r8, .L778+8	@ tmp253,
	subs	r5, r5, #1	@ ret, ret,
	mvnne	r5, #0	@ ret,
	ldr	r3, [r8, #2948]	@ s_DnrChan[0].stDSDParam.s32DSDenable, s_DnrChan[0].stDSDParam.s32DSDenable
	cmp	r3, #1	@ s_DnrChan[0].stDSDParam.s32DSDenable,
	beq	.L775	@,
.L754:
	mov	r1, #392	@ tmp246,
	movw	r3, #26552	@ tmp248,
	mul	r1, r1, r7	@ tmp245, tmp246, RelImgID
	ldr	r2, [r4, #88]	@ D.33358, p_image_16(D)->top_luma_phy_addr
	ldr	ip, .L778	@ tmp244,
	add	r6, r6, r1	@ tmp247, tmp254, tmp245
	ldr	r3, [r6, r3]	@ D.33359, MEM[(struct IMAGE *)&s_DnrChan][0].LogicImagePool[RelImgID_28].luma_2d_phy_addr
	cmp	r3, r2	@ D.33359, D.33358
	beq	.L776	@,
	str	r2, [sp]	@ D.33358,
	mov	r0, #31	@,
	mov	r2, r7	@, RelImgID
	ldr	r1, .L778+12	@,
	bl	dprint_vfmw	@
	clz	r3, r5	@ D.33357, ret
	mov	r3, r3, lsr #5	@ D.33357, D.33357,
.L756:
	ldr	r2, [r8, #2948]	@ s_DnrChan[0].stDSDParam.s32DSDenable, s_DnrChan[0].stDSDParam.s32DSDenable
	cmp	r2, #1	@ s_DnrChan[0].stDSDParam.s32DSDenable,
	movne	r3, #0	@, tmp242
	andeq	r3, r3, #1	@,, tmp242, D.33357
	cmp	r3, #0	@ tmp242,
	moveq	r0, r5	@ D.33356, ret
	bne	.L777	@,
.L763:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L772:
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_ReleaseChanImage	@
	adds	r0, r0, #0	@ D.33357,,
	movne	r0, #1	@ D.33357,
	rsb	r0, r0, #0	@ D.33356, D.33357
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L771:
	str	r3, [sp]	@ s_DnrChan[0].s32IsOpen,
	movw	r3, #2313	@,
	ldr	r2, .L778+16	@,
	ldr	r1, .L778+20	@,
	bl	dprint_vfmw	@
	b	.L748	@
.L773:
	ldr	r1, .L778+24	@,
	mov	r2, r7	@, RelImgID
	bl	dprint_vfmw	@
	ldr	r1, [r4, #176]	@ D.33359, p_image_16(D)->image_id
	b	.L750	@
.L774:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L778+28	@ tmp194,
	ldr	r1, .L778+32	@ tmp197,
	ldr	r3, [r2, #3148]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r3, r3, r0	@ D.33359, last_rec_pos_time, currtime
	cmp	r3, r1	@ D.33359, g_TraceImgPeriod
	strhi	r0, [r2, #3148]	@ currtime, last_rec_pos_time
	b	.L752	@
.L775:
	ldr	r2, [r4, #144]	@ p_image_16(D)->image_width, p_image_16(D)->image_width
	ldr	r3, [r8, #2952]	@ s_DnrChan[0].stDSDParam.s32ThrWidth, s_DnrChan[0].stDSDParam.s32ThrWidth
	cmp	r2, r3	@ p_image_16(D)->image_width, s_DnrChan[0].stDSDParam.s32ThrWidth
	bhi	.L755	@,
	ldr	r2, [r4, #148]	@ p_image_16(D)->image_height, p_image_16(D)->image_height
	ldr	r3, [r8, #2956]	@ s_DnrChan[0].stDSDParam.s32ThrHeight, s_DnrChan[0].stDSDParam.s32ThrHeight
	cmp	r2, r3	@ p_image_16(D)->image_height, s_DnrChan[0].stDSDParam.s32ThrHeight
	bls	.L754	@,
.L755:
	ldr	r7, [r4, #176]	@ D.33359, p_image_16(D)->image_id
	mov	r1, r4	@, p_image
	ldr	r3, [r4, #380]	@ p_image_16(D)->resetNum, p_image_16(D)->resetNum
	mov	r0, #0	@,
	add	r3, r7, r3	@ D.33359, D.33359, p_image_16(D)->resetNum
	sub	r3, r3, #6	@ D.33359, D.33359,
	str	r3, [r4, #176]	@ D.33359, p_image_16(D)->image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r5, r0, #0	@ ret,
	strne	r7, [r4, #176]	@ D.33359, p_image_16(D)->image_id
	mvnne	r0, #0	@ D.33356,
	bne	.L763	@,
	ldr	r2, [r4, #176]	@ p_image_16(D)->image_id, p_image_16(D)->image_id
	mov	r3, #1	@ D.33357,
	add	r2, r2, #184	@ tmp231, p_image_16(D)->image_id,
	str	r5, [r6, r2, asl #2]	@ ret, s_DnrChan[0].LogicImageIsUsed
	str	r7, [r4, #176]	@ D.33359, p_image_16(D)->image_id
	b	.L756	@
.L776:
	add	r1, r1, #26368	@ tmp223, tmp245,
	add	r7, r7, #178	@ tmp217, RelImgID,
	mov	r3, #0	@ tmp218,
	add	r1, r1, #64	@ tmp223, tmp223,
	mov	r0, r3	@, tmp218
	str	r3, [ip, r7, asl #2]	@ tmp218, s_DnrChan[0].LogicImageIsUsed
	add	r1, ip, r1	@, tmp244, tmp223
	bl	DNR_ReleaseUsrData	@
	clz	r3, r5	@ D.33357, ret
	mov	r3, r3, lsr #5	@ D.33357, D.33357,
	b	.L756	@
.L761:
	mvn	r0, #0	@ D.33356,
	b	.L763	@
.L777:
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	VCTRL_RlsDSDFrame	@
	b	.L763	@
.L769:
	mov	r0, r3	@, tmp161
	movw	r2, #2303	@,
	ldr	r3, .L778+36	@,
	ldr	r1, .L778+40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33356,
	b	.L763	@
.L770:
	ldr	r3, .L778+44	@,
	mov	r2, #2304	@,
	ldr	r1, .L778+40	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33356,
	b	.L763	@
.L779:
	.align	2
.L778:
	.word	.LANCHOR0
	.word	.LANCHOR0+968
	.word	.LANCHOR0+73728
	.word	.LC42
	.word	.LANCHOR2+52
	.word	.LC41
	.word	.LC15
	.word	.LANCHOR1
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	subs	r7, r0, #0	@ ChanID, ChanID
	.pad #12
	sub	sp, sp, #12	@,,
	bne	.L799	@,
	cmp	r1, #0	@ p_image,
	mov	r4, r1	@ p_image, p_image
	beq	.L800	@,
	ldr	r6, .L805	@ tmp190,
	ldr	r2, [r6, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r2, #0	@ s_DnrChan[0].s32IsOpen,
	beq	.L801	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.33371, eVidStd,
	mov	r5, r0	@ eVidStd,
	bics	r3, r3, #4	@ tmp193, D.33371,
	moveq	r3, #1	@ tmp151,
	movne	r3, #0	@ tmp151,
	cmp	r0, #4	@ eVidStd,
	orreq	r3, r3, #1	@,, tmp156, tmp151
	cmp	r3, #0	@ tmp156,
	bne	.L802	@,
	mov	r1, r4	@, p_image
	add	r0, r6, #968	@, tmp190,
	bl	IMGQUE_GetImage	@
	mov	r5, r0	@ ret,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L803	@,
.L788:
	cmp	r5, #1	@ ret,
	bne	.L798	@,
	ldr	r1, [r4, #176]	@ D.33369, p_image_9(D)->image_id
	ldr	r5, .L805	@ tmp167,
	add	r3, r1, #178	@ tmp168, D.33369,
	ldr	r2, [r6, r3, asl #2]	@ D.33370, s_DnrChan[0].LogicImageIsUsed
	cmp	r2, #3	@ D.33370,
	beq	.L804	@,
	add	r0, r5, #73728	@ tmp175, tmp167,
	ldr	r0, [r0, #2948]	@ s_DnrChan[0].stDSDParam.s32DSDenable, s_DnrChan[0].stDSDParam.s32DSDenable
	cmp	r0, #1	@ s_DnrChan[0].stDSDParam.s32DSDenable,
	beq	.L792	@,
	cmp	r2, #2	@ D.33370,
	beq	.L793	@,
	movw	r3, #2238	@,
	str	r1, [sp, #4]	@ D.33369,
	str	r2, [sp]	@ D.33370,
	mov	r0, #31	@,
	ldr	r2, .L805+4	@,
	ldr	r1, .L805+8	@,
	bl	dprint_vfmw	@
	mov	r1, r4	@, p_image
	mov	r0, #0	@,
	bl	DNR_ReleaseImage	@
	ldr	r3, [r4, #176]	@ D.33369, p_image_9(D)->image_id
	mvn	r0, #0	@ D.33367,
	mov	r2, #0	@ tmp182,
	add	r3, r3, #178	@ tmp181, D.33369,
	str	r2, [r5, r3, asl #2]	@ tmp182, s_DnrChan[0].LogicImageIsUsed
.L782:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L802:
	mov	r0, r7	@, ChanID
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.33367
	bne	.L798	@,
	cmp	r5, #18	@ eVidStd,
	beq	.L782	@,
	ldr	r2, [r4, #120]	@ D.33369, p_image_9(D)->luma_2d_phy_addr
	ldr	r1, [r4, #124]	@ D.33369, p_image_9(D)->chrom_2d_phy_addr
	ldr	r3, [r4, #172]	@ D.33369, p_image_9(D)->image_stride
	str	r2, [r4, #88]	@ D.33369, p_image_9(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.33369, p_image_9(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.33369, D.33369, D.33369
	add	r3, r3, r1	@ D.33369, D.33369, D.33369
	str	r2, [r4, #96]	@ D.33369, p_image_9(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.33369, p_image_9(D)->btm_chrom_phy_addr
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L793:
	mov	r2, #3	@ tmp185,
	mov	r0, #0	@ D.33367,
	str	r2, [r5, r3, asl #2]	@ tmp185, s_DnrChan[0].LogicImageIsUsed
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L803:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L805+12	@ tmp161,
	ldr	r1, .L805+16	@ tmp164,
	ldr	r3, [r2, #3152]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r3, r3, r0	@ D.33369, last_rec_pos_time, currtime
	cmp	r3, r1	@ D.33369, g_TraceImgPeriod
	strhi	r0, [r2, #3152]	@ currtime, last_rec_pos_time
	b	.L788	@
.L792:
	mov	r2, #3	@ tmp188,
	mov	r0, #0	@ D.33367,
	str	r2, [r5, r3, asl #2]	@ tmp188, s_DnrChan[0].LogicImageIsUsed
	b	.L782	@
.L804:
	str	r1, [sp, #4]	@ D.33369,
	movw	r3, #2227	@,
	str	r2, [sp]	@ D.33370,
	mov	r0, #31	@,
	ldr	r2, .L805+4	@,
	ldr	r1, .L805+20	@,
	bl	dprint_vfmw	@
.L798:
	mvn	r0, #0	@ D.33367,
	b	.L782	@
.L801:
	ldr	r1, .L805+24	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33367,
	b	.L782	@
.L799:
	ldr	r3, .L805+28	@,
	movw	r2, #2169	@,
	ldr	r1, .L805+32	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33367,
	b	.L782	@
.L800:
	ldr	r3, .L805+36	@,
	movw	r2, #2170	@,
	ldr	r1, .L805+32	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33367,
	b	.L782	@
.L806:
	.align	2
.L805:
	.word	.LANCHOR0
	.word	.LANCHOR2+72
	.word	.LC45
	.word	.LANCHOR1
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	.pad #24
	sub	sp, sp, #24	@,,
	bne	.L843	@,
	cmp	r1, #0	@ VoUsingFrameArray,
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	beq	.L844	@,
	add	r0, sp, #16	@,,
	mov	r1, #8	@,
	mov	r5, r2	@ s32Num, s32Num
	bl	__memzero	@
	ldr	r0, .L851	@ tmp230,
	ldr	r3, [r0, #1824]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.history
	ldr	r2, [r0, #1828]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.head
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ i, i
	beq	.L811	@,
	sub	lr, r0, #24576	@ tmp229, tmp230,
	mov	ip, r6	@ s32UsingCount, ChanID
	b	.L814	@
.L846:
	ldr	r2, [r1, #104]	@ pImage_28->luma_phy_addr, pImage_28->luma_phy_addr
	str	r2, [r4, ip, asl #3]	@ pImage_28->luma_phy_addr, _34->FrameAddr
	add	ip, ip, #1	@ s32UsingCount, s32UsingCount,
	ldr	r2, [r1, #360]	@ D.33396, pImage_28->ImgSize
	str	r2, [r6, #4]	@ D.33396, _34->FrameSize
.L813:
	add	r3, r3, #1	@ i, i,
	ldr	r2, [r0, #1828]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.head, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.head
	and	r3, r3, #63	@ i, i,
	ldr	r1, .L851	@ tmp194,
	cmp	r2, r3	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.head, i
	beq	.L845	@,
.L814:
	add	r1, r3, #260	@ tmp182, i,
	add	r6, r4, ip, lsl #3	@ D.33392, VoUsingFrameArray, s32UsingCount,
	add	r1, r1, #2	@ tmp182, tmp182,
	ldr	r1, [lr, r1, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.image_ptr
	adds	r2, r1, #0	@ tmp189, pImage,
	movne	r2, #1	@ tmp189,
	cmp	ip, #63	@ s32UsingCount,
	movgt	r2, #0	@ tmp189,
	cmp	r2, #0	@ tmp189,
	bne	.L846	@,
	cmp	ip, #63	@ s32UsingCount,
	ble	.L813	@,
.L841:
	mvn	r0, #0	@ D.33393,
.L838:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L845:
	ldr	r2, [r1, #1832]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail
	cmp	r3, r2	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail
	bne	.L823	@,
	b	.L822	@
.L847:
	ldr	r2, [r1, #104]	@ pImage_45->luma_phy_addr, pImage_45->luma_phy_addr
	str	r2, [r4, ip, asl #3]	@ pImage_45->luma_phy_addr, _51->FrameAddr
	add	ip, ip, #1	@ s32UsingCount, s32UsingCount,
	ldr	r2, [r1, #360]	@ D.33396, pImage_45->ImgSize
	str	r2, [r6, #4]	@ D.33396, _51->FrameSize
.L820:
	add	r3, r3, #1	@ i, i,
	ldr	r2, [r0, #1832]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail, i
	beq	.L822	@,
.L823:
	add	r1, r3, #260	@ tmp202, i,
	add	r6, r4, ip, lsl #3	@ D.33392, VoUsingFrameArray, s32UsingCount,
	add	r1, r1, #2	@ tmp202, tmp202,
	ldr	r1, [lr, r1, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.image_ptr
	adds	r2, r1, #0	@ tmp209, pImage,
	movne	r2, #1	@ tmp209,
	cmp	ip, #63	@ s32UsingCount,
	movgt	r2, #0	@ tmp209,
	cmp	r2, #0	@ tmp209,
	bne	.L847	@,
	cmp	ip, #63	@ s32UsingCount,
	ble	.L820	@,
	b	.L841	@
.L822:
	cmp	ip, #0	@ s32UsingCount,
	ble	.L816	@,
	ldr	r7, [r4]	@ D.33396, VoUsingFrameArray_22(D)->FrameAddr
	cmp	r7, #-2147483648	@ D.33396,
	beq	.L848	@,
	ldr	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.377, TempVoUsingFrameInfo.FrameAddr
	add	r8, r4, #8	@ ivtmp.387, VoUsingFrameArray,
	ldr	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.378, TempVoUsingFrameInfo.FrameSize
	mov	r6, #0	@ MinIndex,
.L824:
	add	lr, r6, #1	@ MinIndex, MinIndex,
	cmp	lr, ip	@ MinIndex, s32UsingCount
	bge	.L825	@,
	ldr	r1, [r4, lr, asl #3]	@ D.33396, MEM[base: VoUsingFrameArray_22(D), index: _111, step: 8, offset: 0B]
	cmp	r1, #-2147483648	@ D.33396,
	beq	.L849	@,
	mov	r2, r6	@ MinIndex, MinIndex
	mov	r3, lr	@ MinIndex, MinIndex
	b	.L828	@
.L830:
	ldr	r1, [r4, r3, asl #3]	@ D.33396, MEM[base: VoUsingFrameArray_22(D), index: _146, step: 8, offset: 0B]
	cmp	r1, #-2147483648	@ D.33396,
	beq	.L850	@,
.L828:
	ldr	r0, [r4, r2, asl #3]	@ _70->FrameAddr, _70->FrameAddr
	cmp	r0, r1	@ _70->FrameAddr, D.33396
	movgt	r2, r3	@ MinIndex, MinIndex
	add	r3, r3, #1	@ MinIndex, MinIndex,
	cmp	r3, ip	@ MinIndex, s32UsingCount
	blt	.L830	@,
	cmp	r6, r2	@ MinIndex, MinIndex
	beq	.L832	@,
	ldr	r1, [r4, r2, asl #3]	@ D.33396, _79->FrameAddr
	add	r3, r4, r2, lsl #3	@ D.33392, VoUsingFrameArray, MinIndex,
	ldr	r9, [r8, #-4]	@ TempVoUsingFrameInfo_FrameSize_lsm.378, MEM[base: _132, offset: 4294967292B]
	mov	r10, r7	@ TempVoUsingFrameInfo_FrameAddr_lsm.377, D.33396
	str	r1, [r8, #-8]	@ D.33396, MEM[base: _132, offset: 4294967288B]
	ldr	r1, [r3, #4]	@ D.33396, _79->FrameSize
	str	r1, [r8, #-4]	@ D.33396, MEM[base: _132, offset: 4294967292B]
	str	r7, [r4, r2, asl #3]	@ D.33396, _79->FrameAddr
	str	r9, [r3, #4]	@ TempVoUsingFrameInfo_FrameSize_lsm.378, _79->FrameSize
.L832:
	ldr	r7, [r4, lr, asl #3]	@ D.33396, MEM[base: VoUsingFrameArray_22(D), index: _137, step: 8, offset: 0B]
	add	r8, r8, #8	@ ivtmp.387, ivtmp.387,
	mov	r6, lr	@ MinIndex, MinIndex
	cmp	r7, #-2147483648	@ D.33396,
	bne	.L824	@,
	str	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.377, TempVoUsingFrameInfo.FrameAddr
	str	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.378, TempVoUsingFrameInfo.FrameSize
.L817:
	str	lr, [sp, #4]	@ MinIndex,
	mov	r3, #2464	@,
	str	ip, [sp]	@ s32UsingCount,
	mov	r0, #31	@,
	ldr	r2, .L851+4	@,
	ldr	r1, .L851+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33393,
	b	.L838	@
.L850:
	str	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.377, TempVoUsingFrameInfo.FrameAddr
	str	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.378, TempVoUsingFrameInfo.FrameSize
.L827:
	str	r3, [sp, #8]	@ MinIndex,
	mov	r0, #31	@,
	movw	r3, #2472	@,
	str	r6, [sp, #4]	@ MinIndex,
	str	ip, [sp]	@ s32UsingCount,
	ldr	r2, .L851+4	@,
	ldr	r1, .L851+12	@,
	bl	dprint_vfmw	@
	b	.L841	@
.L811:
	ldr	r2, [r0, #1832]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail
	mov	ip, r6	@ s32UsingCount, ChanID
	cmp	r3, r2	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][0].LogicImageQue.tail
	beq	.L816	@,
	sub	lr, r0, #24576	@ tmp229, tmp230,
	b	.L823	@
.L825:
	bne	.L832	@,
.L816:
	str	ip, [r5]	@ s32UsingCount, *s32Num_87(D)
	mov	r0, #0	@ D.33393,
	b	.L838	@
.L849:
	str	r10, [sp, #16]	@ TempVoUsingFrameInfo_FrameAddr_lsm.377, TempVoUsingFrameInfo.FrameAddr
	mov	r3, lr	@ MinIndex, MinIndex
	str	r9, [sp, #20]	@ TempVoUsingFrameInfo_FrameSize_lsm.378, TempVoUsingFrameInfo.FrameSize
	b	.L827	@
.L843:
	ldr	r3, .L851+16	@,
	movw	r2, #2405	@,
	ldr	r1, .L851+20	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33393,
	b	.L838	@
.L848:
	mov	lr, #0	@ MinIndex,
	b	.L817	@
.L844:
	ldr	r3, .L851+24	@,
	movw	r2, #2406	@,
	ldr	r1, .L851+20	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33393,
	b	.L838	@
.L852:
	.align	2
.L851:
	.word	.LANCHOR0+24576
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
	bne	.L858	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #1	@ tmp151,
	movgt	r0, #0	@ tmp151,
	cmp	r3, r1	@ ImgEndAddr, DecPhyStartAddr
	movle	r0, #0	@ tmp151,
	cmp	r0, #0	@ tmp151,
	bne	.L858	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #0	@ s32Count,
	movgt	r0, #1	@ s32Count,
	cmp	ip, r1	@ ImgStartAddr, DecPhyStartAddr
	movge	r0, #0	@ s32Count,
	bx	lr	@
.L858:
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
	beq	.L876	@,
	cmp	r2, #0	@ Size,
	beq	.L877	@,
	ldr	r7, .L878	@ tmp176,
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
	beq	.L871	@,
	movw	r9, #19174	@ tmp147,
	mul	r9, r9, r0	@ tmp146, tmp147, ChanID
	add	r3, r9, r4	@ tmp148, tmp146, i
	add	r3, r3, #260	@ tmp150, tmp148,
	add	r3, r3, #2	@ tmp150, tmp150,
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	movne	fp, #0	@ s32Count,
	bne	.L865	@,
	b	.L875	@
.L866:
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L875	@,
.L865:
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
	bne	.L866	@,
.L863:
	movw	r3, #11160	@ tmp159,
	movw	r2, #26408	@ tmp161,
	movt	r3, 1	@ tmp159,
	and	r5, r5, #63	@ i, i,
	mla	r3, r3, r10, r7	@ tmp160, tmp159, ChanID, tmp176
	ldr	r1, .L878	@ tmp157,
	ldr	r4, [r3, r2]	@ D.33411, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.tail
	cmp	r4, r5	@ D.33411, i
	beq	.L867	@,
	movw	r3, #19174	@ tmp165,
	mul	r10, r3, r10	@ tmp164, tmp165, ChanID
	add	r3, r10, r5	@ tmp166, tmp164, i
	add	r3, r3, #260	@ tmp168, tmp166,
	add	r3, r3, #2	@ tmp168, tmp168,
	ldr	r0, [r1, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	bne	.L869	@,
	b	.L875	@
.L870:
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L875	@,
.L869:
	mov	r2, r6	@, DecPhyEndAddr
	mov	r1, r8	@, DecPhy
	bl	DNR_FsOccupyByVO	@
	add	r5, r5, #1	@ i, i,
	and	r5, r5, #63	@ i, i,
	add	r3, r10, r5	@ tmp172, tmp178, i
	cmp	r5, r4	@ i, D.33411
	add	r3, r3, #260	@ tmp174, tmp172,
	add	r3, r3, #2	@ tmp174, tmp174,
	add	fp, fp, r0	@ s32Count, s32Count,
	bne	.L870	@,
.L867:
	mov	r0, fp	@ D.33409, s32Count
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L875:
	mvn	r0, #0	@ D.33409,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L871:
	mov	fp, #0	@ s32Count,
	b	.L863	@
.L877:
	mov	r0, r2	@, Size
	ldr	r3, .L878+4	@,
	movw	r2, #2550	@,
	ldr	r1, .L878+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33409,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L876:
	mov	r0, r8	@, DecPhy
	ldr	r3, .L878+12	@,
	movw	r2, #2549	@,
	ldr	r1, .L878+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33409,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L879:
	.align	2
.L878:
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
	cmp	r0, #0	@ ChanID,
	movgt	ip, #0	@ tmp160,
	movle	ip, #1	@ tmp160,
	cmp	r1, #0	@ pChanMem,
	moveq	ip, #0	@ tmp160,
	cmp	ip, #0	@ tmp160,
	beq	.L888	@,
	ldr	ip, [r1]	@ D.33433, pChanMem_9(D)->PhyAddr
	cmp	ip, #0	@ D.33433,
	beq	.L888	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #444
	sub	sp, sp, #444	@,,
	ldr	lr, [r1, #4]	@ pChanMem_9(D)->VirAddr, pChanMem_9(D)->VirAddr
	cmp	lr, #0	@ pChanMem_9(D)->VirAddr,
	beq	.L890	@,
	ldr	r1, [r1, #8]	@ D.33433, pChanMem_9(D)->Length
	cmp	r1, #0	@ D.33433,
	ble	.L890	@,
	ldr	lr, .L895	@ tmp162,
	ldr	r4, [lr, #36]	@ D.33435, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r4, #0	@ D.33435,
	beq	.L883	@,
	mvn	lr, #0	@ tmp165,
	mov	r5, r0	@ ChanID, ChanID
	add	r6, sp, #24	@ tmp164,,
	mov	r0, ip	@, D.33433
	str	r6, [sp, #16]	@ tmp164,
	mov	ip, #64	@ tmp163,
	str	lr, [sp, #12]	@ tmp165,
	str	ip, [sp, #20]	@ tmp163,
	str	ip, [sp, #4]	@ tmp163,
	mov	ip, #0	@ tmp166,
	str	ip, [sp, #8]	@ tmp166,
	str	ip, [sp]	@ tmp166,
	blx	r4	@ D.33435
	cmp	r0, #0	@ D.33433
	bne	.L883	@,
	movw	r2, #11160	@ tmp171,
	ldr	r6, .L895+4	@ tmp206,
	movt	r2, 1	@ tmp171,
	ldr	r1, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mul	r3, r2, r5	@ tmp170, tmp171, ChanID
	add	r5, sp, #440	@ ivtmp.406,,
	cmp	r1, #64	@ MemArrange.ValidFrameNum,
	ldr	ip, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	ldr	lr, [r5, #-408]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r8, sp, #288	@ D.33440,,
	add	r2, r6, r3	@ tmp177, tmp206, tmp170
	add	r4, r3, #26368	@ tmp173, tmp170,
	add	r4, r4, #64	@ tmp173, tmp173,
	add	r3, r3, #456	@ D.33438, tmp170,
	mov	r7, r0	@ i, D.33433
	mov	r9, r2	@ tmp209, tmp177
	add	r4, r6, r4	@ pLogicImage, tmp206, tmp173
	movge	r1, #64	@ D.33433,
	add	r6, r6, r3	@ ivtmp.409, tmp206, D.33438
	str	r1, [r2, #448]	@ D.33433, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	rsb	r3, lr, ip	@ D.33433, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r2, #452]	@ D.33433, s_DnrChan[ChanID_7(D)].s32ImgBlockMemSize
.L886:
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	add	r5, r5, #4	@ ivtmp.406, ivtmp.406,
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r6, r6, #4	@ ivtmp.409, ivtmp.409,
	cmp	r3, r7	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, i
	add	r7, r7, #1	@ i, i,
	ldrgt	r3, [r5, #-4]	@ D.33433, MEM[base: _70, offset: 0B]
	ldrle	r3, [sp, #32]	@ D.33433, MemArrange.FrameAddr
	str	r3, [r6, #-4]	@ D.33433,
	mov	r0, r3	@, D.33433
	str	r3, [r4, #-272]	@ D.33433, MEM[base: pLogicImage_59, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #-272]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 120B]
	cmp	r5, r8	@ ivtmp.406, D.33440
	str	r3, [r4, #-304]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 88B]
	str	r0, [r4, #-344]	@, MEM[base: pLogicImage_59, offset: 48B]
	bne	.L886	@,
.L883:
	mov	r0, #0	@ D.33432,
.L881:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L888:
	mvn	r0, #0	@ D.33432,
	bx	lr	@
.L890:
	mvn	r0, #0	@ D.33432,
	b	.L881	@
.L896:
	.align	2
.L895:
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
	cmp	r0, #0	@ ChanID
	bgt	.L899	@,
	movw	r1, #11160	@ tmp115,
	movt	r1, 1	@ tmp115,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mul	r5, r1, r0	@ tmp117, tmp115, ChanID
	ldr	r7, .L902	@ tmp116,
	mov	r4, r0	@ ChanID, ChanID
	add	r6, r7, r5	@ __p, tmp116, tmp117
	mov	r0, r6	@, __p
	bl	__memzero	@
	mov	r3, r4	@, ChanID
	mov	r0, sp	@,
	ldr	r2, .L902+4	@,
	mov	r1, #16	@,
	bl	snprintf	@
	add	r0, r5, #968	@ tmp127, tmp117,
	add	r0, r7, r0	@, tmp116, tmp127
	mov	r1, sp	@,
	ldr	r2, .L902+8	@,
	bl	IMGQUE_InitQueue	@
	mov	r3, #1	@ tmp134,
	mov	r0, #0	@ D.33443,
	str	r3, [r6, #8]	@ tmp134, s_DnrChan[ChanID_3(D)].s32IsOpen
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L899:
	mvn	r0, #0	@ D.33443,
	bx	lr	@
.L903:
	.align	2
.L902:
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
	ldr	r4, .L906	@ tmp115,
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
.L907:
	.align	2
.L906:
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
	ldr	r2, .L909	@ tmp114,
	movw	r3, #11160	@ tmp116,
	movt	r3, 1	@ tmp116,
	mla	r0, r3, r0, r2	@ tmp117, tmp116, ChanID, tmp114
	ldr	r0, [r0, #8]	@, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L910:
	.align	2
.L909:
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
	ldr	r1, .L912	@ tmp111,
	movw	r3, #11160	@ tmp113,
	movt	r3, 1	@ tmp113,
	mov	r2, #1	@ tmp116,
	mla	r0, r3, r0, r1	@ tmp114, tmp113, ChanID, tmp111
	str	r2, [r0, #8]	@ tmp116, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L913:
	.align	2
.L912:
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
	cmp	r0, #0	@ ChanID
	bne	.L919	@,
	ldr	ip, [r2]	@ D.33456, pstVDecDnrPara_6(D)->pstCaptureInFrm
	ldr	r3, .L920	@ tmp122,
	str	ip, [r3, #2940]	@ D.33456, s_DnrChan[0].pCaptureImageIn
	ldr	r2, [r2, #4]	@ D.33456, pstVDecDnrPara_6(D)->pstCaptureOutFrm
	str	r1, [r3, #2928]	@ DNRDataSourceFlag, s_DnrChan[0].DNRCaptureEnableFlag
	str	r2, [r3, #2944]	@ D.33456, s_DnrChan[0].pCaptureImageOut
	bx	lr	@
.L919:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movw	r2, #2713	@,
	ldr	r3, .L920+4	@,
	mov	r0, #0	@,
	ldr	r1, .L920+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33455,
	ldmfd	sp!, {r4, pc}	@
.L921:
	.align	2
.L920:
	.word	.LANCHOR0+73728
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
	.type	__func__.30711, %object
	.size	__func__.30711, 25
__func__.30711:
	.ascii	"DNR_PrecessChanLastFrame\000"
	.space	3
	.type	__func__.30719, %object
	.size	__func__.30719, 23
__func__.30719:
	.ascii	"DNR_InsertQueueWithDSD\000"
	.space	1
	.type	__func__.30911, %object
	.size	__func__.30911, 17
__func__.30911:
	.ascii	"DNR_ReleaseImage\000"
	.space	3
	.type	__func__.30886, %object
	.size	__func__.30886, 17
__func__.30886:
	.ascii	"DNR_ReceiveImage\000"
	.space	3
	.type	__func__.30931, %object
	.size	__func__.30931, 25
__func__.30931:
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
.LANCHOR1 = . + 73656
	.type	s_DnrChan, %object
	.size	s_DnrChan, 76696
s_DnrChan:
	.space	76696
	.type	s_eDnrDrvSleepStage, %object
	.size	s_eDnrDrvSleepStage, 4
s_eDnrDrvSleepStage:
	.space	4
	.type	s_DnrCtrl, %object
	.size	s_DnrCtrl, 60
s_DnrCtrl:
	.space	60
	.type	timePrevDo.30656, %object
	.size	timePrevDo.30656, 4
timePrevDo.30656:
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
	.type	last_rec_pos_time.30754, %object
	.size	last_rec_pos_time.30754, 4
last_rec_pos_time.30754:
	.space	4
	.type	last_rec_pos_time.30865, %object
	.size	last_rec_pos_time.30865, 4
last_rec_pos_time.30865:
	.space	4
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.30785, %object
	.size	last_rec_pos_time.30785, 4
last_rec_pos_time.30785:
	.space	4
	.type	last_rec_pos_time.30909, %object
	.size	last_rec_pos_time.30909, 4
last_rec_pos_time.30909:
	.space	4
	.type	last_rec_pos_time.30884, %object
	.size	last_rec_pos_time.30884, 4
last_rec_pos_time.30884:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
