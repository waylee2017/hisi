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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
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
	@ link register save eliminated.
	cmp	r0, #0	@ pImageQueue
	beq	.L5	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L5	@,
	ldr	r3, .L7	@ tmp118,
	add	r2, r3, #968	@ tmp119, tmp118,
	subs	r0, r0, r2	@ D.32355, pImageQueue, tmp119
	mvnne	r0, #0	@ D.32355,
	cmp	r0, #0	@ D.32355,
	blt	.L5	@,
	movw	ip, #19174	@ tmp124,
	mov	r2, #0	@ tmp127,
	mla	r1, ip, r0, r1	@ tmp125, tmp124, D.32355, ImageID
	mov	r0, r2	@ D.32353, tmp127
	add	r1, r1, #178	@ tmp126, tmp125,
	str	r2, [r3, r1, asl #2]	@ tmp127, s_DnrChan[_17].LogicImageIsUsed
	bx	lr	@
.L5:
	mvn	r0, #0	@ D.32353,
	bx	lr	@
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
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
	ldr	r3, .L12	@ tmp113,
	ldr	r0, [r3, #3040]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r0, #0	@ s_eDnrDrvSleepStage,
	moveq	r2, #2	@ tmp116,
	mvnne	r0, #0	@ ret,
	streq	r2, [r3, #3040]	@ tmp116, s_eDnrDrvSleepStage
	bx	lr	@
.L13:
	.align	2
.L12:
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
	ldr	r3, .L15	@ tmp113,
	ldr	r0, [r3, #3040]	@, s_eDnrDrvSleepStage
	bx	lr	@
.L16:
	.align	2
.L15:
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
	ldr	r3, .L22	@ tmp111,
	ldr	r2, [r3, #3040]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r2, #2	@ s_eDnrDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #3040]	@ tmp114, s_eDnrDrvSleepStage
	bx	lr	@
.L23:
	.align	2
.L22:
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
	ldr	r3, .L31	@ tmp111,
	ldr	r3, [r3]	@ D.32368, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.32368,
	beq	.L30	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	blx	r3	@ D.32368
	mov	r2, #0	@ tmp113,
	ldr	r3, .L31+4	@ tmp112,
	str	r2, [r3, #3040]	@ tmp113, s_eDnrDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L30:
	ldr	r3, .L31+4	@ tmp112,
	mov	r2, #0	@ tmp113,
	str	r2, [r3, #3040]	@ tmp113, s_eDnrDrvSleepStage
	bx	lr	@
.L32:
	.align	2
.L31:
	.word	g_dnr_hal_fun_ptr
	.word	.LANCHOR1
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
	ldreq	r2, .L36	@ tmp113,
	moveq	r0, r3	@ D.32371, ChanID
	mvnne	r0, #0	@ D.32371,
	streq	r3, [r2, #12]	@ ChanID, s_DnrChan[0].InstMode
	streq	r3, [r2, #8]	@ ChanID, s_DnrChan[0].s32IsOpen
	bx	lr	@
.L37:
	.align	2
.L36:
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
	ldr	r0, .L41	@ tmp116,
	mul	r3, r2, r5	@ tmp117, tmp118, ChanID
	add	r1, r4, #72	@, pstDnrChanState,
	add	r2, r4, #76	@, pstDnrChanState,
	add	ip, r0, r3	@ tmp119, tmp116, tmp117
	add	r3, r3, #968	@ tmp126, tmp117,
	add	r0, r0, r3	@, tmp116, tmp126
	ldr	r3, [ip, #448]	@ D.32374, s_DnrChan[ChanID_5(D)].s32ValidImgNum
	str	r3, [r4, #68]	@ D.32374, pstDnrChanState_2(D)->total_frame_num
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	IMGQUE_GetImageNum	@
.L42:
	.align	2
.L41:
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
	ldr	r4, .L48	@ tmp112,
	add	r0, r4, #24	@, tmp112,
	bl	DNR_CloseDrivers	@
	mov	r0, r4	@, tmp112
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L49:
	.align	2
.L48:
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
	bne	.L51	@,
	ldr	r2, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
.L52:
	movw	r0, #20592	@,
	mov	r2, r5	@, pstMem
	movt	r0, 4127	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	beq	.L55	@,
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L51:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	b	.L52	@
.L55:
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
	ldr	r6, .L68	@ tmp132,
	ldr	r3, [r6]	@ D.32392, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.32392,
	beq	.L57	@,
	blx	r3	@ D.32392
.L57:
	ldr	r5, .L68+4	@ tmp133,
	ldr	r4, [r5, #3044]	@ D.32391, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.32391,
	bne	.L60	@,
	mov	r1, #60	@,
	ldr	r0, .L68+8	@,
	bl	__memzero	@
	movw	r1, #11160	@,
	movt	r1, 1	@,
	ldr	r0, .L68+12	@,
	bl	__memzero	@
	ldr	r0, .L68+16	@,
	bl	DNR_OpenDrivers	@
	mov	r1, #256	@,
	ldr	r0, .L68+20	@,
	bl	__memzero	@
	ldr	r3, [r6, #4]	@ D.32392, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r3, #0	@ D.32392,
	beq	.L59	@,
	blx	r3	@ D.32392
.L59:
	mov	r3, #1	@ tmp130,
	str	r3, [r5, #3044]	@ tmp130, s_DnrCtrl.s32IsVCTRLOpen
.L58:
	mov	r0, r4	@, D.32391
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L60:
	mvn	r4, #0	@ D.32391,
	b	.L58	@
.L69:
	.align	2
.L68:
	.word	g_dnr_hal_fun_ptr
	.word	.LANCHOR1
	.word	.LANCHOR1+3044
	.word	.LANCHOR0
	.word	.LANCHOR1+3068
	.word	.LANCHOR0+712
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
	bgt	.L71	@,
	mov	r4, r1	@ pChanMem, pChanMem
	movw	r1, #11160	@ tmp184,
	movt	r1, 1	@ tmp184,
	ldr	r9, .L97	@ tmp254,
	mul	r6, r1, r0	@ tmp186, tmp184, ChanID
	str	r0, [sp, #28]	@ ChanID, %sfp
	mov	r7, r3	@ PicHeight, PicHeight
	mov	r5, r2	@ PicWidth, PicWidth
	add	fp, r9, r6	@ __p, tmp254, tmp186
	mov	r0, fp	@, __p
	bl	__memzero	@
	cmp	r4, #0	@ pChanMem,
	beq	.L71	@,
	ldr	r0, [r4]	@ D.32414, pChanMem_13(D)->PhyAddr
	cmp	r0, #0	@ D.32414,
	beq	.L71	@,
	ldr	r3, [r4, #4]	@ pChanMem_13(D)->VirAddr, pChanMem_13(D)->VirAddr
	cmp	r3, #0	@ pChanMem_13(D)->VirAddr,
	beq	.L71	@,
	ldr	r1, [r4, #8]	@ D.32414, pChanMem_13(D)->Length
	cmp	r1, #0	@ D.32414,
	ble	.L71	@,
	ldr	r3, .L97+4	@ tmp190,
	ldr	ip, [r3, #36]	@ D.32416, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.32416,
	beq	.L72	@,
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
	blx	ip	@ D.32416
	subs	r3, r0, #0	@ D.32413,
	str	r3, [sp, #24]	@ D.32413, %sfp
	bne	.L72	@,
	ldr	r1, [sp, #324]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r5, sp, #464	@ ivtmp.167,,
	add	r4, r6, #26368	@ tmp201, tmp186,
	ldr	r0, [sp, #60]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	cmp	r1, #64	@ MemArrange.ValidFrameNum,
	ldr	ip, [r5, #-408]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r4, #64	@ tmp201, tmp201,
	add	r6, r6, #456	@ D.32419, tmp186,
	movge	r1, #64	@ D.32414,
	rsb	r0, ip, r0	@ D.32414, MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r9, r4	@ pLogicImage, tmp254, tmp201
	add	r6, r9, r6	@ ivtmp.170, tmp254, D.32419
	add	r7, sp, #312	@ D.32421,,
	mov	r10, fp	@ tmp257, __p
	mov	r8, r3	@ i, D.32413
	str	r1, [fp, #448]	@ D.32414, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	str	r0, [fp, #452]	@ D.32414, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	b	.L75	@
.L96:
	ldr	r1, [r5]	@ D.32414, MEM[base: _76, offset: 0B]
	str	r1, [r6]	@ D.32414, MEM[base: _77, offset: 0B]
	mov	r0, r1	@, D.32414
	str	r1, [r4, #120]	@ D.32414, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	r1, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	ldr	r1, [r10, #452]	@ D.32414, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	str	r1, [r4, #360]	@ D.32414, MEM[base: pLogicImage_67, offset: 360B]
.L74:
	add	r5, r5, #4	@ ivtmp.167, ivtmp.167,
	add	r8, r8, #1	@ i, i,
	cmp	r5, r7	@ ivtmp.167, D.32421
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r6, r6, #4	@ ivtmp.170, ivtmp.170,
	beq	.L95	@,
.L75:
	ldr	r1, [r10, #448]	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	cmp	r1, r8	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, i
	bgt	.L96	@,
	ldr	r1, [sp, #56]	@ D.32414, MemArrange.FrameAddr
	str	r1, [r6]	@ D.32414, MEM[base: _79, offset: 0B]
	mov	r0, r1	@, D.32414
	str	r1, [r4, #120]	@ D.32414, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r1, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	r1, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	b	.L74	@
.L72:
	mov	r3, #0	@ D.32413,
	str	r3, [sp, #24]	@ D.32413, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L71:
	mvn	r3, #0	@ D.32413,
	str	r3, [sp, #24]	@ D.32413, %sfp
	ldr	r0, [sp, #24]	@, %sfp
	add	sp, sp, #468	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L95:
	ldr	r4, [sp, #28]	@ ChanID, %sfp
	mov	r1, #16	@,
	ldr	r2, .L97+8	@,
	add	r0, sp, #32	@ tmp265,,
	mov	r3, r4	@, ChanID
	bl	snprintf	@
	movw	r3, #11160	@ tmp245,
	movt	r3, 1	@ tmp245,
	add	r1, sp, #32	@ tmp266,,
	mul	r8, r3, r4	@ tmp244, tmp245, ChanID
	ldr	r2, .L97+12	@,
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
.L98:
	.align	2
.L97:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.word	.LC0
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
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L107	@,
	ldr	r2, .L109	@ tmp168,
	ldr	r3, [r2, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	subs	r3, r3, #1	@ tmp133, s_DnrChan[0].s32IsOpen,
	movne	r3, #1	@ tmp133,
	cmp	r1, #0	@ pArgs,
	orreq	r3, r3, #1	@,, tmp136, tmp133
	cmp	r3, #0	@ tmp136,
	bne	.L107	@,
	add	r3, r2, #73728	@ tmp169, tmp168,
	ldrb	ip, [r1, #1]	@ zero_extendqisi2	@ D.32428, pArgs_7(D)->s32VcmpEn
	ldr	r0, [r3, #2948]	@ s_DnrChan[0].stDSDParam.s32DSDenable, s_DnrChan[0].stDSDParam.s32DSDenable
	strb	ip, [r2, #2]	@ D.32428, s_DnrChan[0].s32VcmpEn
	cmp	r0, #1	@ s_DnrChan[0].stDSDParam.s32DSDenable,
	ldreqsb	r0, [r1]	@ pArgs_7(D)->s32MirrorEn, pArgs_7(D)->s32MirrorEn
	ldrneb	r0, [r1]	@ zero_extendqisi2	@ D.32428, pArgs_7(D)->s32MirrorEn
	streq	r0, [r3, #2960]	@ pArgs_7(D)->s32MirrorEn, s_DnrChan[0].stDSDParam.s32MirrorEn
	strneb	r0, [r2, #1]	@ D.32428, s_DnrChan[0].s32MirrorEn
	ldrsb	r0, [r1, #1]	@ pArgs_7(D)->s32VcmpEn, pArgs_7(D)->s32VcmpEn
	cmp	r0, #1	@ pArgs_7(D)->s32VcmpEn,
	beq	.L103	@,
.L105:
	mov	r0, #0	@ D.32426,
	bx	lr	@
.L103:
	ldrb	r0, [r1, #2]	@ zero_extendqisi2	@ D.32428, pArgs_7(D)->s32WmEn
	strb	r0, [r2, #3]	@ D.32428, s_DnrChan[0].s32WmEn
	ldrsb	r2, [r1, #2]	@ pArgs_7(D)->s32WmEn, pArgs_7(D)->s32WmEn
	cmp	r2, #1	@ pArgs_7(D)->s32WmEn,
	beq	.L108	@,
.L104:
	movw	r2, #65535	@ tmp162,
	mov	r0, #0	@ D.32426,
	str	r2, [r3, #2888]	@ tmp162, s_DnrChan[0].s32VcmpWmStartLine
	str	r2, [r3, #2892]	@ tmp162, s_DnrChan[0].s32VcmpWmEndLine
	bx	lr	@
.L108:
	ldr	r0, [r1, #4]	@ D.32427, pArgs_7(D)->s32VcmpWmStartLine
	str	r0, [r3, #2888]	@ D.32427, s_DnrChan[0].s32VcmpWmStartLine
	ldr	r2, [r1, #8]	@ D.32427, pArgs_7(D)->s32VcmpWmEndLine
	cmp	r0, r2	@ D.32427, D.32427
	str	r2, [r3, #2892]	@ D.32427, s_DnrChan[0].s32VcmpWmEndLine
	ble	.L105	@,
	b	.L104	@
.L107:
	mvn	r0, #0	@ D.32426,
	bx	lr	@
.L110:
	.align	2
.L109:
	.word	.LANCHOR0
	.fnend
	.size	DNR_ConfigChan, .-DNR_ConfigChan
	.align	2
	.global	DNR_ConfigFFFBSpeed
	.type	DNR_ConfigFFFBSpeed, %function
DNR_ConfigFFFBSpeed:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L114	@,
	ldr	r3, .L115	@ tmp121,
	ldr	r0, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	subs	r0, r0, #1	@ tmp124, s_DnrChan[0].s32IsOpen,
	movne	r0, #1	@ tmp124,
	cmp	r1, #0	@ pArgs,
	orreq	r0, r0, #1	@,, tmp127, tmp124
	cmp	r0, #0	@ tmp127,
	bne	.L114	@,
	ldr	r2, [r1]	@ D.32433, *pArgs_6(D)
	add	r3, r3, #73728	@ tmp130, tmp121,
	str	r2, [r3, #2896]	@ D.32433, s_DnrChan[0].s32FastForwardBackwardSpeed
	bx	lr	@
.L114:
	mvn	r0, #0	@ D.32432,
	bx	lr	@
.L116:
	.align	2
.L115:
	.word	.LANCHOR0
	.fnend
	.size	DNR_ConfigFFFBSpeed, .-DNR_ConfigFFFBSpeed
	.align	2
	.global	DNR_ConfigBackOptimizeFlag
	.type	DNR_ConfigBackOptimizeFlag, %function
DNR_ConfigBackOptimizeFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID,
	bne	.L120	@,
	ldr	r3, .L121	@ tmp122,
	ldr	r0, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	subs	r0, r0, #1	@ tmp125, s_DnrChan[0].s32IsOpen,
	movne	r0, #1	@ tmp125,
	cmp	r1, #0	@ pArgs,
	orreq	r0, r0, #1	@,, tmp128, tmp125
	cmp	r0, #0	@ tmp128,
	bne	.L120	@,
	ldr	r2, [r1, #12]	@ D.32439, pArgs_6(D)->u32BackwardOptimizeFlag
	add	r3, r3, #73728	@ tmp131, tmp122,
	str	r2, [r3, #2900]	@ D.32439, s_DnrChan[0].u32BackwardOptimizeFlag
	ldr	r2, [r1, #16]	@ D.32439, pArgs_6(D)->u32DispOptimizeFlag
	str	r2, [r3, #2916]	@ D.32439, s_DnrChan[0].u32DispOptimizeFlag
	bx	lr	@
.L120:
	mvn	r0, #0	@ D.32437,
	bx	lr	@
.L122:
	.align	2
.L121:
	.word	.LANCHOR0
	.fnend
	.size	DNR_ConfigBackOptimizeFlag, .-DNR_ConfigBackOptimizeFlag
	.align	2
	.global	DNR_StartChan
	.type	DNR_StartChan, %function
DNR_StartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	bne	.L126	@,
	ldr	r3, .L127	@ tmp114,
	ldr	r2, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r2, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L126	@,
	str	r2, [r3, #12]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].InstMode
	bx	lr	@
.L126:
	mvn	r0, #0	@ D.32443,
	bx	lr	@
.L128:
	.align	2
.L127:
	.word	.LANCHOR0
	.fnend
	.size	DNR_StartChan, .-DNR_StartChan
	.align	2
	.global	DNR_InformDecChanReset
	.type	DNR_InformDecChanReset, %function
DNR_InformDecChanReset:
	.fnstart
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #1	@ tmp176,
	ldr	r10, .L170	@ tmp329,
	movw	r3, #11160	@ tmp227,
	bfi	r3, r1, #16, #16	@ tmp227, tmp176,,
	mov	r4, r0	@ ChanID, ChanID
	movw	r8, #11160	@ tmp180,
	movw	r7, #11160	@ tmp192,
	mla	r3, r3, r4, r10	@ tmp228, tmp227, ChanID, tmp329
	movw	r5, #11160	@ tmp220,
	mov	r9, r8	@ tmp186, tmp180
	mov	r6, r7	@ tmp206, tmp192
	mov	r2, r5	@ tmp174, tmp220
	movw	r0, #11160	@ tmp199,
	movw	lr, #11160	@ tmp213,
	bfi	r0, r1, #16, #16	@ tmp199, tmp176,,
	bfi	lr, r1, #16, #16	@ tmp213, tmp176,,
	bfi	r8, r1, #16, #16	@ tmp180, tmp176,,
	bfi	r9, r1, #16, #16	@ tmp186, tmp176,,
	bfi	r7, r1, #16, #16	@ tmp192, tmp176,,
	bfi	r6, r1, #16, #16	@ tmp206, tmp176,,
	bfi	r5, r1, #16, #16	@ tmp220, tmp176,,
	add	r3, r3, #51456	@ tmp230, tmp228,
	movt	r2, 1	@ tmp174,
	mla	r0, r0, r4, r10	@ tmp200, tmp199, ChanID, tmp329
	add	r3, r3, #64	@ tmp230, tmp230,
	mla	lr, lr, r4, r10	@ tmp214, tmp213, ChanID, tmp329
	ldr	r3, [r3, #4]	@ D.32508, s_DnrChan[ChanID_16(D)].TempImageNum
	mla	r8, r8, r4, r10	@ tmp181, tmp180, ChanID, tmp329
	add	r0, r0, #75776	@ tmp201, tmp200,
	mla	r9, r9, r4, r10	@ tmp187, tmp186, ChanID, tmp329
	add	lr, lr, #75776	@ tmp215, tmp214,
	mla	r7, r7, r4, r10	@ tmp193, tmp192, ChanID, tmp329
	cmp	r3, #0	@ D.32508,
	mla	r6, r6, r4, r10	@ tmp207, tmp206, ChanID, tmp329
	movw	ip, #51520	@ tmp194,
	mla	r5, r5, r4, r10	@ tmp221, tmp220, ChanID, tmp329
	movw	fp, #65535	@ tmp203,
	mul	r2, r2, r4	@ tmp173, tmp174, ChanID
	add	r6, r6, #75776	@ tmp209, tmp207,
	add	r5, r5, #75776	@ tmp223, tmp221,
	str	fp, [r0, #860]	@ tmp203, s_DnrChan[ChanID_16(D)].LastGopNum
	.pad #428
	sub	sp, sp, #428	@,,
	mov	r0, #0	@ tmp183,
	str	r0, [lr, #852]	@ tmp183, s_DnrChan[ChanID_16(D)].u32BackwardOptimizeFlag
	str	r0, [r8, #16]	@ tmp183, s_DnrChan[ChanID_16(D)].NeedStartAgain
	str	r0, [r9, #432]	@ tmp183, s_DnrChan[ChanID_16(D)].s321DFrameIsProc
	str	r0, [r7, ip]	@ tmp183, s_DnrChan[ChanID_16(D)].GetFirstIFrameFlag
	str	r0, [r6, #856]	@ tmp183, s_DnrChan[ChanID_16(D)].u32BackwardOptimizeDistanceCnt
	str	r0, [r5, #848]	@ tmp183, s_DnrChan[ChanID_16(D)].s32FastForwardBackwardSpeed
	strb	r1, [r10, r2]	@ tmp176, s_DnrChan[ChanID_16(D)].DecChanRstFlag
	ble	.L134	@,
	subs	r1, r3, #1	@ i, D.32508,
	bmi	.L134	@,
	mov	r5, #392	@ tmp240,
	movw	lr, #19174	@ tmp342,
	mla	r2, r5, r3, r2	@ D.32505, tmp240, D.32508, tmp173
	mul	lr, lr, r4	@ tmp343, tmp342, ChanID
	add	r2, r2, #51200	@ D.32505, D.32505,
	add	r2, r2, #112	@ D.32505, D.32505,
	add	r2, r10, r2	@ ivtmp.239, tmp329, D.32505
.L135:
	ldr	r3, [r2], #-392	@ D.32511, MEM[base: _129, offset: 0B]
	sub	r1, r1, #1	@ i, i,
	cmn	r1, #1	@ i,
	add	r3, lr, r3	@ tmp249, tmp343, D.32511
	add	r3, r3, #178	@ tmp250, tmp249,
	str	r0, [r10, r3, asl #2]	@ tmp344, s_DnrChan[ChanID_16(D)].LogicImageIsUsed
	bne	.L135	@,
.L134:
	movw	r6, #11160	@ tmp233,
	mov	r0, r4	@, ChanID
	movt	r6, 1	@ tmp233,
	mov	r5, #0	@ tmp237,
	mul	r6, r6, r4	@ tmp232, tmp233, ChanID
	ldr	r7, .L170	@ tmp231,
	add	r8, r10, r6	@ tmp234, tmp329, tmp232
	add	r3, r8, #51456	@ tmp236, tmp234,
	str	r5, [r3, #68]	@ tmp237, s_DnrChan[ChanID_16(D)].TempImageNum
	bl	VCTRL_GetFrameInterface	@
	subs	r9, r0, #0	@ pFrameIntf,
	beq	.L132	@,
	ldr	r3, [r9, #8]	@ pFrameIntf_27->release_frame, pFrameIntf_27->release_frame
	cmp	r3, #0	@ pFrameIntf_27->release_frame,
	beq	.L132	@,
	ldr	r3, [r8, #448]	@ s_DnrChan[ChanID_16(D)].s32ValidImgNum, s_DnrChan[ChanID_16(D)].s32ValidImgNum
	cmp	r3, #0	@ s_DnrChan[ChanID_16(D)].s32ValidImgNum,
	ble	.L132	@,
	add	r3, r6, #26368	@ D.32505, tmp232,
	add	r6, r6, #708	@ D.32505, tmp232,
	add	r3, r3, #112	@ D.32505, D.32505,
	add	r6, r7, r6	@ ivtmp.223, tmp231, D.32505
	add	r7, r7, r3	@ ivtmp.231, tmp231, D.32505
	b	.L138	@
.L137:
	ldr	r3, [r8, #448]	@ s_DnrChan[ChanID_16(D)].s32ValidImgNum, s_DnrChan[ChanID_16(D)].s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.231, ivtmp.231,
	cmp	r3, r5	@ s_DnrChan[ChanID_16(D)].s32ValidImgNum, i
	ble	.L132	@,
.L138:
	ldr	r3, [r6, #4]!	@ MEM[base: _116, offset: 0B], MEM[base: _116, offset: 0B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #0	@ MEM[base: _116, offset: 0B],
	beq	.L137	@,
	ldr	lr, [r7]	@ MEM[base: _117, offset: 0B], MEM[base: _117, offset: 0B]
	add	r1, sp, #20	@ tmp349,,
	ldr	r2, [r7, #72]	@ MEM[base: _117, offset: 72B], MEM[base: _117, offset: 72B]
	mov	r0, r4	@, ChanID
	ldr	r3, [r9, #8]	@ pFrameIntf_27->release_frame, pFrameIntf_27->release_frame
	add	r7, r7, #392	@ ivtmp.231, ivtmp.231,
	str	lr, [sp, #24]	@ MEM[base: _117, offset: 0B], ExtFrame.VirAddr
	str	r2, [sp, #20]	@ MEM[base: _117, offset: 72B], ExtFrame.PhyAddr
	blx	r3	@ pFrameIntf_27->release_frame
	ldr	r3, [r8, #448]	@ s_DnrChan[ChanID_16(D)].s32ValidImgNum, s_DnrChan[ChanID_16(D)].s32ValidImgNum
	cmp	r3, r5	@ s_DnrChan[ChanID_16(D)].s32ValidImgNum, i
	bgt	.L138	@,
.L132:
	movw	r3, #11160	@ tmp319,
	ldr	r2, .L170	@ tmp317,
	movt	r3, 1	@ tmp319,
	mul	r8, r3, r4	@ tmp318, tmp319, ChanID
	add	r9, r10, r8	@ tmp320, tmp329, tmp318
	add	r9, r9, #75776	@ tmp322, tmp320,
	ldr	r3, [r9, #900]	@ s_DnrChan[ChanID_16(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_16(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ s_DnrChan[ChanID_16(D)].stDSDParam.s32DSDenable,
	beq	.L169	@,
.L148:
	movw	r3, #11160	@ tmp310,
	mov	r1, #0	@ tmp330,
	movt	r3, 1	@ tmp310,
	mul	r4, r3, r4	@ D.32505, tmp310, ChanID
	add	r3, r4, #708	@ D.32505, D.32505,
	add	r4, r4, #964	@ D.32505, D.32505,
	add	r3, r10, r3	@ ivtmp.193, tmp329, D.32505
	add	ip, r10, r4	@ D.32503, tmp329, D.32505
.L147:
	ldr	r2, [r3, #4]!	@ MEM[base: _9, offset: 0B], MEM[base: _9, offset: 0B]
	cmp	r2, #3	@ MEM[base: _9, offset: 0B],
	strne	r1, [r3]	@ tmp330, MEM[base: _9, offset: 0B]
	cmp	r3, ip	@ ivtmp.193, D.32503
	bne	.L147	@,
	add	sp, sp, #428	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L169:
	add	r7, r8, #968	@ tmp327, tmp318,
	movw	r3, #34079	@ tmp332,
	movt	r3, 20971	@ tmp332,
	str	r9, [sp, #4]	@ tmp322, %sfp
	add	r7, r2, r7	@ D.32513, tmp317, tmp327
	str	r3, [sp]	@ tmp332, %sfp
	mov	r6, #64	@ D.32503,
	b	.L141	@
.L143:
	subs	r6, r6, #1	@ D.32503, D.32503,
	beq	.L148	@,
.L141:
	add	r1, sp, #32	@ tmp350,,
	mov	r0, r7	@, D.32513
	mov	r5, #0	@ tmp276,
	str	r5, [sp, #12]	@ tmp276, TopPhyAddr
	str	r5, [sp, #16]	@ tmp276, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@,
	bne	.L148	@,
	ldr	r1, [sp, #208]	@ D.32511, stimage.image_id
	mov	r0, #100	@ tmp282,
	ldr	r3, [sp]	@ tmp332, %sfp
	umull	r2, r3, r1, r3	@ tmp279, D.32511, tmp332
	mov	fp, r3, lsr #5	@ RelImgID,,
	mls	fp, r0, fp, r1	@ RelImgID, tmp282, RelImgID, D.32511
	cmp	fp, #63	@ RelImgID,
	bgt	.L148	@,
	add	r3, sp, #16	@,,
	add	r2, sp, #12	@,,
	mov	r0, r7	@, D.32513
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@,
	bne	.L143	@,
	add	r3, r10, r8	@ tmp294, tmp329, tmp335
	movw	r2, #19174	@ tmp287,
	add	r3, r3, #75776	@ tmp295, tmp294,
	ldr	r1, [sp, #176]	@ stimage.image_width, stimage.image_width
	add	r3, r3, #896	@ tmp295, tmp295,
	mla	fp, r2, r4, fp	@ tmp288, tmp287, ChanID, RelImgID
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_16(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_16(D)].stDSDParam.s32ThrWidth
	cmp	r1, r3	@ stimage.image_width, s_DnrChan[ChanID_16(D)].stDSDParam.s32ThrWidth
	add	r3, fp, #178	@ tmp289, tmp288,
	str	r5, [r10, r3, asl #2]	@ tmp276, s_DnrChan[ChanID_16(D)].LogicImageIsUsed
	bhi	.L143	@,
	ldr	r3, [sp, #4]	@ tmp337, %sfp
	ldr	r2, [sp, #180]	@ stimage.image_height, stimage.image_height
	ldr	r3, [r3, #908]	@ s_DnrChan[ChanID_16(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_16(D)].stDSDParam.s32ThrHeight
	cmp	r2, r3	@ stimage.image_height, s_DnrChan[ChanID_16(D)].stDSDParam.s32ThrHeight
	bhi	.L143	@,
	add	r9, sp, #220	@ ivtmp.207,,
	add	fp, sp, #236	@ D.32503,,
.L145:
	ldr	r1, [r9, #4]!	@ D.32512, MEM[base: _75, offset: 0B]
	mov	r0, r4	@, ChanID
	cmp	r1, #0	@ D.32512,
	beq	.L144	@,
	bl	UnMarkUsdByDnr	@
	str	r5, [r9]	@ tmp331, MEM[base: _75, offset: 0B]
.L144:
	cmp	r9, fp	@ ivtmp.207, D.32503
	bne	.L145	@,
	b	.L143	@
.L171:
	.align	2
.L170:
	.word	.LANCHOR0
	.fnend
	.size	DNR_InformDecChanReset, .-DNR_InformDecChanReset
	.align	2
	.global	DNR_DisableChan
	.type	DNR_DisableChan, %function
DNR_DisableChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	bne	.L175	@,
	ldr	r3, .L176	@ tmp114,
	ldr	r2, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r2, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L175	@,
	str	r0, [r3, #12]	@ ChanID, s_DnrChan[0].InstMode
	bx	lr	@
.L175:
	mvn	r0, #0	@ D.32516,
	bx	lr	@
.L177:
	.align	2
.L176:
	.word	.LANCHOR0
	.fnend
	.size	DNR_DisableChan, .-DNR_DisableChan
	.align	2
	.global	DNR_StopChan
	.type	DNR_StopChan, %function
DNR_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	bne	.L181	@,
	ldr	r3, .L182	@ tmp114,
	ldr	r2, [r3, #8]	@ s_DnrChan[0].s32IsOpen, s_DnrChan[0].s32IsOpen
	cmp	r2, #1	@ s_DnrChan[0].s32IsOpen,
	bne	.L181	@,
	str	r0, [r3, #12]	@ ChanID, s_DnrChan[0].InstMode
	bx	lr	@
.L181:
	mvn	r0, #0	@ D.32520,
	bx	lr	@
.L183:
	.align	2
.L182:
	.word	.LANCHOR0
	.fnend
	.size	DNR_StopChan, .-DNR_StopChan
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
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r6, .L198	@ tmp206,
	add	ip, r6, r2	@ tmp135, tmp206, tmp133
	add	r3, ip, #51456	@ tmp137, tmp135,
	add	r3, r3, #64	@ tmp137, tmp137,
	ldr	r10, [r3, #4]	@ D.32534, s_DnrChan[InstId_8(D)].TempImageNum
	cmp	r10, #0	@ D.32534,
	movle	r2, #0	@ tmp144,
	mvnle	r0, #0	@ D.32533,
	strle	r2, [r3, #4]	@ tmp144, s_DnrChan[InstId_8(D)].TempImageNum
	ble	.L186	@,
	sub	r10, r10, #1	@ i, D.32534,
	mov	r3, #392	@ tmp147,
	movw	r1, #51752	@ tmp152,
	mov	r8, r0	@ InstId, InstId
	mla	r3, r3, r10, r2	@ tmp150, tmp147, i, tmp133
	add	r3, r6, r3	@ tmp151, tmp206, tmp150
	ldr	r2, [r3, r1]	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_11].last_frame, MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_11].last_frame
	cmp	r2, #1	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_11].last_frame,
	moveq	lr, #0	@ tmp164,
	streq	lr, [r3, r1]	@ tmp164, MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_11].last_frame
	streq	r2, [ip, r1]	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_11].last_frame, s_DnrChan[InstId_8(D)].TempImagePool[0].last_frame
	cmp	r10, #0	@ i,
	blt	.L192	@,
	movw	r5, #11160	@ tmp181,
	mov	r4, #392	@ tmp185,
	movt	r5, 1	@ tmp181,
	movw	r7, #19174	@ tmp207,
	mul	r5, r5, r0	@ tmp180, tmp181, InstId
	ldr	r9, .L198+4	@ tmp209,
	mla	r4, r4, r10, r5	@ D.32538, tmp185, i, tmp180
	add	r5, r5, #968	@ tmp182, tmp180,
	mul	r7, r7, r0	@ tmp208, tmp207, InstId
	add	r4, r4, #51456	@ D.32538, D.32538,
	add	r4, r4, #72	@ D.32538, D.32538,
	add	r5, r6, r5	@ D.32537, tmp206, tmp182
	add	r4, r6, r4	@ ivtmp.253, tmp206, D.32538
	b	.L191	@
.L190:
	sub	r10, r10, #1	@ i, i,
	sub	r4, r4, #392	@ ivtmp.253, ivtmp.253,
	cmn	r10, #1	@ i,
	beq	.L192	@,
.L191:
	mov	r1, r4	@, ivtmp.253
	mov	r0, r5	@, D.32537
	bl	IMGQUE_InsertImage	@
	ldr	r3, [r4, #176]	@ D.32535, MEM[base: pTemp_15, offset: 176B]
	mov	r2, #0	@ tmp204,
	cmp	r0, #1	@,
	addne	r3, r7, r3	@ tmp202, tmp208, D.32535
	addne	r3, r3, #178	@ tmp203, tmp202,
	strne	r2, [r6, r3, asl #2]	@ tmp204, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	bne	.L190	@,
	ldr	ip, [r9]	@ D.32536, g_event_report
	add	r3, r7, r3	@ tmp194, tmp208, D.32535
	add	r3, r3, #178	@ tmp195, tmp194,
	mov	lr, #2	@ tmp196,
	cmp	ip, #0	@ D.32536,
	add	r2, sp, #8	@ tmp198,,
	mov	r1, #5	@,
	mov	r0, r8	@, InstId
	str	lr, [r6, r3, asl #2]	@ tmp196, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	beq	.L190	@,
	str	r4, [r2, #-4]!	@ ivtmp.253, para
	sub	r10, r10, #1	@ i, i,
	blx	ip	@ D.32536
	cmn	r10, #1	@ i,
	sub	r4, r4, #392	@ ivtmp.253, ivtmp.253,
	bne	.L191	@,
.L192:
	movw	r3, #11160	@ tmp174,
	mov	r2, #0	@ tmp178,
	movt	r3, 1	@ tmp174,
	mov	r0, r2	@ D.32533, tmp178
	mla	r6, r3, r8, r6	@ tmp175, tmp174, InstId, tmp206
	add	r6, r6, #51456	@ tmp177, tmp175,
	str	r2, [r6, #68]	@ tmp178, s_DnrChan[InstId_8(D)].TempImageNum
.L186:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L199:
	.align	2
.L198:
	.word	.LANCHOR0
	.word	g_event_report
	.fnend
	.size	DNR_PushTempImageToVOQ, .-DNR_PushTempImageToVOQ
	.align	2
	.global	DNR_ClearTempImage
	.type	DNR_ClearTempImage, %function
DNR_ClearTempImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #11160	@ tmp127,
	ldr	ip, .L208	@ tmp160,
	movt	r2, 1	@ tmp127,
	mul	r2, r2, r0	@ tmp126, tmp127, InstId
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	add	r1, ip, r2	@ tmp128, tmp160, tmp126
	add	r1, r1, #51456	@ tmp130, tmp128,
	add	r1, r1, #64	@ tmp130, tmp130,
	ldr	r3, [r1, #4]	@ D.32551, s_DnrChan[InstId_6(D)].TempImageNum
	cmp	r3, #0	@ D.32551,
	movle	r3, #0	@ tmp137,
	mvnle	lr, #0	@ D.32550,
	strle	r3, [r1, #4]	@ tmp137, s_DnrChan[InstId_6(D)].TempImageNum
	ble	.L202	@,
	subs	r1, r3, #1	@ i, D.32551,
	bmi	.L205	@,
	mov	r4, #392	@ tmp147,
	movw	lr, #19174	@ tmp161,
	mla	r2, r4, r3, r2	@ D.32553, tmp147, D.32551, tmp126
	mov	r4, #0	@ tmp163,
	mul	lr, lr, r0	@ tmp162, tmp161, InstId
	add	r2, r2, #51200	@ D.32553, D.32553,
	add	r2, r2, #112	@ D.32553, D.32553,
	add	r2, ip, r2	@ ivtmp.264, tmp160, D.32553
.L204:
	ldr	r3, [r2], #-392	@ D.32552, MEM[base: _26, offset: 0B]
	sub	r1, r1, #1	@ i, i,
	cmn	r1, #1	@ i,
	add	r3, lr, r3	@ tmp156, tmp162, D.32552
	add	r3, r3, #178	@ tmp157, tmp156,
	str	r4, [ip, r3, asl #2]	@ tmp163, s_DnrChan[InstId_6(D)].LogicImageIsUsed
	bne	.L204	@,
.L205:
	movw	r3, #11160	@ tmp140,
	mov	r2, #0	@ tmp144,
	movt	r3, 1	@ tmp140,
	mov	lr, r2	@ D.32550, tmp144
	mla	ip, r3, r0, ip	@ tmp141, tmp140, InstId, tmp160
	add	ip, ip, #51456	@ tmp143, tmp141,
	str	r2, [ip, #68]	@ tmp144, s_DnrChan[InstId_6(D)].TempImageNum
.L202:
	mov	r0, lr	@, D.32550
	ldmfd	sp!, {r4, pc}	@
.L209:
	.align	2
.L208:
	.word	.LANCHOR0
	.fnend
	.size	DNR_ClearTempImage, .-DNR_ClearTempImage
	.align	2
	.global	DNR_IsIFrame
	.type	DNR_IsIFrame, %function
DNR_IsIFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #128]	@ D.32559, pImage_3(D)->is_fld_save
	cmp	r3, #0	@ D.32559,
	bne	.L211	@,
	ldr	r3, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r3, #3	@ pImage_3(D)->format,
	moveq	r0, #1	@ D.32558,
	movne	r0, #0	@ D.32558,
	bx	lr	@
.L211:
	cmp	r3, #1	@ D.32559,
	beq	.L216	@,
	mov	r0, #0	@ D.32558,
	bx	lr	@
.L216:
	ldr	r2, [r0, #132]	@ pImage_3(D)->top_fld_type, pImage_3(D)->top_fld_type
	tst	r2, #3	@ pImage_3(D)->top_fld_type,
	bne	.L217	@,
	ldr	r2, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r2, #3	@ pImage_3(D)->format,
	beq	.L215	@,
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	ands	r0, r3, #3	@ D.32558, pImage_3(D)->bottom_fld_type,
	movne	r0, #1	@ D.32558,
	bx	lr	@
.L217:
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	tst	r3, #3	@ pImage_3(D)->bottom_fld_type,
	moveq	r0, #1	@ D.32558,
	movne	r0, #0	@ D.32558,
	bx	lr	@
.L215:
	mov	r0, r3	@ D.32558, D.32559
	bx	lr	@
	.fnend
	.size	DNR_IsIFrame, .-DNR_IsIFrame
	.align	2
	.global	DNR_FastForwardFastBack
	.type	DNR_FastForwardFastBack, %function
DNR_FastForwardFastBack:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r3, #11160	@ tmp135,
	ldr	r5, .L232	@ tmp209,
	movt	r3, 1	@ tmp135,
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r6, r0	@ InstId, InstId
	mov	r10, r1	@ pImage, pImage
	ldr	r9, .L232	@ tmp156,
	mla	r3, r3, r0, r5	@ tmp136, tmp135, InstId, tmp209
	add	r3, r3, #75776	@ tmp138, tmp136,
	ldr	r2, [r3, #868]	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag, s_DnrChan[InstId_6(D)].u32DispOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag,
	movne	r2, #3	@ tmp153,
	strne	r2, [r3, #864]	@ tmp153, s_DnrChan[InstId_6(D)].u32VoFrmNum
	ldrne	r3, [r1, #140]	@ pImage_11(D)->format, pImage_11(D)->format
	moveq	r2, #7	@ tmp146,
	streq	r2, [r3, #864]	@ tmp146, s_DnrChan[InstId_6(D)].u32VoFrmNum
	movw	r2, #51520	@ tmp160,
	orrne	r3, r3, #262144	@ D.32578, pImage_11(D)->format,
	strne	r3, [r1, #140]	@ D.32578, pImage_11(D)->format
	movw	r3, #11160	@ tmp158,
	movt	r3, 1	@ tmp158,
	mul	fp, r3, r0	@ tmp157, tmp158, InstId
	add	r7, r5, fp	@ tmp159, tmp209, tmp157
	add	r8, r7, #51456	@ tmp161, tmp159,
	ldr	r4, [r7, r2]	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	add	r8, r8, #64	@ tmp161, tmp161,
	cmp	r4, #0	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag,
	bne	.L221	@,
	mov	r0, r1	@, pImage
	str	r2, [sp, #4]	@ tmp160, %sfp
	bl	DNR_IsIFrame	@
	subs	r10, r0, #0	@ D.32579,
	beq	.L222	@,
	ldr	r2, [sp, #4]	@ tmp160, %sfp
	mov	r0, r4	@ ret, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	mov	r3, #1	@ tmp169,
	str	r3, [r7, r2]	@ tmp169, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
.L223:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L221:
	mov	r0, r1	@, pImage
	bl	DNR_IsIFrame	@
	cmp	r0, #0	@ D.32579
	beq	.L223	@,
	mov	r1, r10	@, pImage
	mov	r0, r6	@, InstId
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L222:
	add	r1, fp, #40	@ tmp173, tmp157,
	mov	r0, r6	@, InstId
	add	r1, r9, r1	@, tmp156, tmp173
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #4]	@ D.32579, s_DnrChan[InstId_6(D)].TempImageNum
	str	r10, [r7, #432]	@ D.32579, s_DnrChan[InstId_6(D)].s321DFrameIsProc
	cmp	r3, #0	@ D.32579,
	ble	.L226	@,
	subs	r2, r3, #1	@ i, D.32579,
	bmi	.L226	@,
	mov	r1, #392	@ tmp196,
	movw	ip, #19174	@ tmp210,
	mla	r3, r1, r3, fp	@ D.32577, tmp196, D.32579, tmp157
	mov	r0, r10	@ tmp212, D.32579
	mul	ip, ip, r6	@ tmp211, tmp210, InstId
	add	r1, r3, #51200	@ D.32577, D.32577,
	add	r1, r1, #112	@ D.32577, D.32577,
	add	r1, r9, r1	@ ivtmp.276, tmp156, D.32577
.L227:
	ldr	r3, [r1], #-392	@ D.32578, MEM[base: _43, offset: 0B]
	sub	r2, r2, #1	@ i, i,
	cmn	r2, #1	@ i,
	add	r3, ip, r3	@ tmp205, tmp211, D.32578
	add	r3, r3, #178	@ tmp206, tmp205,
	str	r0, [r5, r3, asl #2]	@ tmp212, s_DnrChan[InstId_6(D)].LogicImageIsUsed
	bne	.L227	@,
.L226:
	movw	r3, #11160	@ tmp189,
	mov	r2, #0	@ tmp193,
	movt	r3, 1	@ tmp189,
	mvn	r0, #0	@ ret,
	mla	r5, r3, r6, r5	@ tmp190, tmp189, InstId, tmp209
	add	r5, r5, #51456	@ tmp192, tmp190,
	str	r2, [r5, #68]	@ tmp193, s_DnrChan[InstId_6(D)].TempImageNum
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L233:
	.align	2
.L232:
	.word	.LANCHOR0
	.fnend
	.size	DNR_FastForwardFastBack, .-DNR_FastForwardFastBack
	.align	2
	.global	DNR_FastBackOptimize
	.type	DNR_FastBackOptimize, %function
DNR_FastBackOptimize:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r3, #11160	@ tmp166,
	ldr	r4, .L264	@ tmp414,
	movt	r3, 1	@ tmp166,
	mov	r6, r1	@ pImage, pImage
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ InstId, InstId
	ldr	r10, .L264	@ tmp187,
	mla	r3, r3, r0, r4	@ tmp167, tmp166, InstId, tmp414
	add	r3, r3, #75776	@ tmp169, tmp167,
	ldr	r2, [r3, #868]	@ s_DnrChan[InstId_7(D)].u32DispOptimizeFlag, s_DnrChan[InstId_7(D)].u32DispOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[InstId_7(D)].u32DispOptimizeFlag,
	movne	r2, #3	@ tmp184,
	strne	r2, [r3, #864]	@ tmp184, s_DnrChan[InstId_7(D)].u32VoFrmNum
	ldrne	r3, [r1, #140]	@ pImage_12(D)->format, pImage_12(D)->format
	moveq	r2, #7	@ tmp177,
	streq	r2, [r3, #864]	@ tmp177, s_DnrChan[InstId_7(D)].u32VoFrmNum
	orrne	r3, r3, #262144	@ D.32602, pImage_12(D)->format,
	strne	r3, [r1, #140]	@ D.32602, pImage_12(D)->format
	movw	r3, #11160	@ tmp189,
	movt	r3, 1	@ tmp189,
	movw	r1, #51520	@ tmp191,
	mul	r7, r3, r0	@ tmp188, tmp189, InstId
	add	r8, r4, r7	@ tmp190, tmp414, tmp188
	add	fp, r8, #51456	@ tmp192, tmp190,
	ldr	r9, [r8, r1]	@ s_DnrChan[InstId_7(D)].GetFirstIFrameFlag, s_DnrChan[InstId_7(D)].GetFirstIFrameFlag
	add	fp, fp, #64	@ tmp192, tmp192,
	cmp	r9, #0	@ s_DnrChan[InstId_7(D)].GetFirstIFrameFlag,
	bne	.L237	@,
	add	r0, r8, #75776	@ tmp199, tmp190,
	ldr	r2, [r6, #80]	@ D.32602, pImage_12(D)->GopNum
	ldr	ip, [r0, #860]	@ s_DnrChan[InstId_7(D)].LastGopNum, s_DnrChan[InstId_7(D)].LastGopNum
	cmp	r2, ip	@ D.32602, s_DnrChan[InstId_7(D)].LastGopNum
	beq	.L238	@,
	str	r2, [r0, #860]	@ D.32602, s_DnrChan[InstId_7(D)].LastGopNum
	mov	r2, #1	@ tmp219,
	ldr	r3, [r6, #76]	@ D.32602, pImage_12(D)->DistanceBeforeFirstFrame
	str	r2, [r8, r1]	@ tmp219, s_DnrChan[InstId_7(D)].GetFirstIFrameFlag
	cmp	r3, #0	@ D.32602,
	str	r3, [r0, #856]	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	ldreq	r2, [r6, #72]	@ D.32602, pImage_12(D)->DispFrameDistance
	streq	r2, [r0, #856]	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	bne	.L261	@,
.L241:
	mov	r0, r3	@, ret
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L237:
	add	r9, r8, #75776	@ tmp321, tmp190,
	ldr	r2, [r6, #80]	@ D.32602, pImage_12(D)->GopNum
	ldr	r1, [r9, #860]	@ s_DnrChan[InstId_7(D)].LastGopNum, s_DnrChan[InstId_7(D)].LastGopNum
	cmp	r2, r1	@ D.32602, s_DnrChan[InstId_7(D)].LastGopNum
	beq	.L251	@,
	mov	r1, r6	@, pImage
	str	r2, [r9, #860]	@ D.32602, s_DnrChan[InstId_7(D)].LastGopNum
	bl	DNR_PushTempImageToVOQ	@
	ldr	r3, [r6, #76]	@ D.32602, pImage_12(D)->DistanceBeforeFirstFrame
	cmp	r3, #0	@ D.32602,
	str	r3, [r9, #856]	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	bne	.L262	@,
.L253:
	ldr	r2, [r6, #72]	@ D.32602, pImage_12(D)->DispFrameDistance
	mov	r0, r3	@, ret
	str	r2, [r9, #856]	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L251:
	ldr	r3, [r9, #856]	@ s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	cmp	r3, #0	@ s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt,
	beq	.L253	@,
	ldr	r3, [r8, #264]	@ s_DnrChan[InstId_7(D)].Cur1DImage.last_frame, s_DnrChan[InstId_7(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[InstId_7(D)].Cur1DImage.last_frame,
	beq	.L263	@,
.L254:
	movw	r2, #11160	@ tmp384,
	mov	r0, r5	@, InstId
	movt	r2, 1	@ tmp384,
	mul	r5, r2, r5	@ tmp383, tmp384, InstId
	add	r1, r5, #40	@ tmp385, tmp383,
	add	r1, r4, r1	@, tmp414, tmp385
	bl	VCTRL_ReleaseChanImage	@
	add	r2, r4, r5	@ tmp390, tmp414, tmp383
	add	r1, r2, #75776	@ tmp398, tmp390,
	mov	r0, #0	@ tmp392,
	str	r0, [r2, #432]	@ tmp392, s_DnrChan[InstId_7(D)].s321DFrameIsProc
	mvn	r3, #0	@ ret,
	ldr	r2, [r1, #856]	@ s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	add	r2, r2, r3	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt,
	str	r2, [r1, #856]	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	b	.L241	@
.L238:
	add	r1, r7, #40	@ tmp281, tmp188,
	mov	r0, r5	@, InstId
	add	r1, r10, r1	@, tmp187, tmp281
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [fp, #4]	@ D.32603, s_DnrChan[InstId_7(D)].TempImageNum
	str	r9, [r8, #432]	@ s_DnrChan[InstId_7(D)].GetFirstIFrameFlag, s_DnrChan[InstId_7(D)].s321DFrameIsProc
	cmp	r3, #0	@ D.32603,
	ble	.L248	@,
	subs	r1, r3, #1	@ i, D.32603,
	bmi	.L248	@,
	mov	r2, #392	@ tmp304,
	movw	r0, #19174	@ tmp418,
	mla	r3, r2, r3, r7	@ D.32601, tmp304, D.32603, tmp188
	mov	r2, r9	@ tmp420, s_DnrChan[InstId_7(D)].GetFirstIFrameFlag
	mul	r0, r0, r5	@ tmp419, tmp418, InstId
	add	r3, r3, #51200	@ D.32601, D.32601,
	add	r3, r3, #112	@ D.32601, D.32601,
	add	r10, r10, r3	@ ivtmp.294, tmp187, D.32601
.L249:
	ldr	r3, [r10], #-392	@ D.32602, MEM[base: _103, offset: 0B]
	sub	r1, r1, #1	@ i, i,
	cmn	r1, #1	@ i,
	add	r3, r0, r3	@ tmp313, tmp419, D.32602
	add	r3, r3, #178	@ tmp314, tmp313,
	str	r2, [r4, r3, asl #2]	@ tmp420, s_DnrChan[InstId_7(D)].LogicImageIsUsed
	bne	.L249	@,
.L248:
	movw	r2, #11160	@ tmp297,
	mov	r1, #0	@ tmp301,
	movt	r2, 1	@ tmp297,
	mvn	r3, #0	@ ret,
	mla	r2, r2, r5, r4	@ tmp298, tmp297, InstId, tmp414
	add	r2, r2, #51456	@ tmp300, tmp298,
	str	r1, [r2, #68]	@ tmp301, s_DnrChan[InstId_7(D)].TempImageNum
	b	.L241	@
.L261:
	add	r1, r7, #40	@ tmp223, tmp188,
	mov	r0, r5	@, InstId
	add	r1, r10, r1	@, tmp187, tmp223
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [fp, #4]	@ D.32603, s_DnrChan[InstId_7(D)].TempImageNum
	str	r9, [r8, #432]	@ s_DnrChan[InstId_7(D)].GetFirstIFrameFlag, s_DnrChan[InstId_7(D)].s321DFrameIsProc
	cmp	r3, #0	@ D.32603,
	ble	.L243	@,
	subs	r1, r3, #1	@ i, D.32603,
	bmi	.L243	@,
	mov	r2, #392	@ tmp260,
	movw	r0, #19174	@ tmp415,
	mla	r3, r2, r3, r7	@ D.32601, tmp260, D.32603, tmp188
	mov	r2, r9	@ tmp417, s_DnrChan[InstId_7(D)].GetFirstIFrameFlag
	mul	r0, r0, r5	@ tmp416, tmp415, InstId
	add	r3, r3, #51200	@ D.32601, D.32601,
	add	r3, r3, #112	@ D.32601, D.32601,
	add	r10, r10, r3	@ ivtmp.286, tmp187, D.32601
.L244:
	ldr	r3, [r10], #-392	@ D.32602, MEM[base: _92, offset: 0B]
	sub	r1, r1, #1	@ i, i,
	cmn	r1, #1	@ i,
	add	r3, r0, r3	@ tmp269, tmp416, D.32602
	add	r3, r3, #178	@ tmp270, tmp269,
	str	r2, [r4, r3, asl #2]	@ tmp417, s_DnrChan[InstId_7(D)].LogicImageIsUsed
	bne	.L244	@,
.L243:
	movw	r2, #11160	@ tmp239,
	mov	ip, #0	@ tmp243,
	movt	r2, 1	@ tmp239,
	mvn	r3, #0	@ ret,
	mla	r2, r2, r5, r4	@ tmp240, tmp239, InstId, tmp414
	add	r0, r2, #75776	@ tmp249, tmp240,
	add	r2, r2, #51456	@ tmp242, tmp240,
	ldr	r1, [r0, #856]	@ s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	str	ip, [r2, #68]	@ tmp243, s_DnrChan[InstId_7(D)].TempImageNum
	add	r2, r1, r3	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt,
	str	r2, [r0, #856]	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	b	.L241	@
.L262:
	add	r1, r7, #40	@ tmp338, tmp188,
	mov	r0, r5	@, InstId
	add	r1, r10, r1	@, tmp187, tmp338
	bl	VCTRL_ReleaseChanImage	@
	ldr	r2, [r9, #856]	@ s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	mov	r1, #0	@ tmp345,
	mvn	r3, #0	@ ret,
	str	r1, [r8, #432]	@ tmp345, s_DnrChan[InstId_7(D)].s321DFrameIsProc
	add	r2, r2, r3	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt,
	str	r2, [r9, #856]	@ D.32602, s_DnrChan[InstId_7(D)].u32BackwardOptimizeDistanceCnt
	b	.L241	@
.L263:
	ldr	r2, .L264+4	@ tmp379,
	ldr	ip, [r2]	@ D.32605, g_event_report
	cmp	ip, #0	@ D.32605,
	beq	.L254	@,
	add	r2, sp, #8	@ tmp381,,
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ s_DnrChan[InstId_7(D)].Cur1DImage.last_frame, para
	blx	ip	@ D.32605
	b	.L254	@
.L265:
	.align	2
.L264:
	.word	.LANCHOR0
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
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	movw	r3, #11160	@ tmp123,
	ldr	r4, .L276	@ tmp152,
	movt	r3, 1	@ tmp123,
	movw	r2, #34079	@ tmp129,
	mul	r1, r3, r5	@ tmp122, tmp123, NextInstId
	movt	r2, 20971	@ tmp129,
	mov	lr, #100	@ tmp131,
	add	r3, r4, r1	@ tmp124, tmp152, tmp122
	ldr	ip, [r3, #216]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	umull	r2, r3, ip, r2	@ tmp128, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, tmp129
	mov	r2, r3, lsr #5	@ tmp126,,
	mls	r3, lr, r2, ip	@ D.32610, tmp131, tmp126, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	add	r3, r3, #2	@ D.32610, D.32610,
	cmp	r0, r3	@, D.32610
	beq	.L275	@,
.L267:
	movw	r3, #11160	@ tmp143,
	mov	r0, r5	@, NextInstId
	movt	r3, 1	@ tmp143,
	mul	r5, r3, r5	@ tmp142, tmp143, NextInstId
	add	r1, r5, #40	@ tmp144, tmp142,
	add	r1, r4, r1	@, tmp152, tmp144
	add	r4, r4, r5	@ tmp149, tmp152, tmp142
	bl	VCTRL_ReleaseChanImage	@
	mov	r3, #0	@ tmp151,
	str	r3, [r4, #432]	@ tmp151, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L275:
	add	r0, r1, #968	@ tmp137, tmp122,
	add	r0, r4, r0	@, tmp152, tmp137
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L276+4	@ tmp139,
	ldr	ip, [r2]	@ D.32612, g_event_report
	cmp	ip, #0	@ D.32612,
	mov	r3, r0	@ LastFrameId,
	beq	.L268	@,
	cmn	r0, #1	@ LastFrameId,
	add	r2, sp, #8	@ tmp140,,
	mov	r1, #115	@,
	mov	r0, r5	@, NextInstId
	moveq	r3, #1	@ D.32610,
	str	r3, [r2, #-4]!	@ D.32610, para
	blx	ip	@ D.32612
.L268:
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L267	@
.L277:
	.align	2
.L276:
	.word	.LANCHOR0
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
	ldr	r4, .L285	@ tmp119,
	ldr	r3, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r3, #0	@ g_DnrSleepTime,
	ble	.L283	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r5, .L285+4	@ tmp128,
	ldr	r2, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r3, [r5, #3104]	@ timePrevDo, timePrevDo
	rsb	r0, r3, r0	@ D.32618, timePrevDo,
	cmp	r0, r2	@ D.32618, g_DnrSleepTime
	bcc	.L284	@,
.L281:
	bl	OSAL_GetTimeInMs	@
	mov	r3, #0	@ D.32616,
	str	r0, [r5, #3104]	@, timePrevDo
	mov	r0, r3	@, D.32616
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L284:
	mov	r3, #1	@ D.32616,
	mov	r0, r3	@, D.32616
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L283:
	ldr	r5, .L285+4	@ tmp128,
	b	.L281	@
.L286:
	.align	2
.L285:
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
	ldr	r3, .L297	@ tmp138,
	ldr	r2, [r3]	@ D.32621, g_eVdmVersion
	sub	r3, r2, #3	@ D.32622, D.32621,
	cmp	r3, #1	@ D.32622,
	bls	.L292	@,
	ldr	r3, .L297+4	@ tmp140,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L295	@,
.L292:
	ldr	r4, .L297+8	@ tmp206,
	mov	r3, #1	@ D.32625,
.L288:
	cmp	r2, #3	@ D.32621,
	beq	.L296	@,
.L289:
	cmp	r2, #4	@ D.32621,
	movweq	r2, #11160	@ tmp165,
	movteq	r2, 1	@ tmp165,
	mlaeq	r2, r2, r5, r4	@ tmp166, tmp165, NextInstId, tmp206
	ldreq	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	streq	r2, [r6, #64]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, pDnrCfg_15(D)->dnr_stride_1d
.L290:
	movw	r2, #11160	@ tmp171,
	str	r3, [sp, #44]	@ D.32625, stDetPara.IsFrameStored
	movt	r2, 1	@ tmp171,
	add	r0, sp, #4	@ tmp209,,
	mla	r4, r2, r5, r4	@ tmp172, tmp171, NextInstId, tmp206
	ldr	ip, [r4, #184]	@ D.32625, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_width
	ldr	r1, [r4, #188]	@ D.32625, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_height
	ldr	r5, [r4, #72]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr
	add	r2, ip, #15	@ D.32625, D.32625,
	ldr	lr, [r4, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	add	r3, r1, #15	@ D.32625, D.32625,
	mov	r2, r2, asr #4	@ D.32625, D.32625,
	str	ip, [sp, #24]	@ D.32625, stDetPara.PicWidth
	mov	r3, r3, asr #4	@ D.32625, D.32625,
	str	r1, [sp, #28]	@ D.32625, stDetPara.PicHeight
	str	r2, [sp, #36]	@ D.32625, stDetPara.MbWidth
	str	r3, [sp, #40]	@ D.32625, stDetPara.MbHeight
	str	r5, [sp, #12]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	str	lr, [sp, #32]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, stDetPara.PicStride
	bl	DetPic	@
	str	r0, [r4, #20]	@ D.32625, s_DnrChan[NextInstId_3(D)].IsRwzb
	str	r0, [r4, #396]	@ D.32625, s_DnrChan[NextInstId_3(D)].Cur1DImage.optm_inf.Rwzb
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L295:
	ldr	r4, .L297+8	@ tmp206,
	movw	r1, #11160	@ tmp144,
	movt	r1, 1	@ tmp144,
	mla	r1, r1, r5, r4	@ tmp145, tmp144, NextInstId, tmp206
	ldr	r0, [r1, #340]	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard
	cmp	r0, #0	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard,
	bne	.L288	@,
	ldrb	r3, [r1, #328]	@ zero_extendqisi2	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	cmp	r2, #3	@ D.32621,
	clz	r3, r3	@ D.32625, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	mov	r3, r3, lsr #5	@ D.32625, D.32625,
	bne	.L289	@,
.L296:
	movw	r2, #11160	@ tmp158,
	movt	r2, 1	@ tmp158,
	mla	r2, r2, r5, r4	@ tmp159, tmp158, NextInstId, tmp206
	ldr	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	mov	r2, r2, asl #5	@ D.32622, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride,
	str	r2, [r6, #64]	@ D.32622, pDnrCfg_15(D)->dnr_stride_1d
	b	.L290	@
.L298:
	.align	2
.L297:
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
	ldr	r3, .L305	@ tmp118,
	ldr	r3, [r3]	@ g_eVdmVersion, g_eVdmVersion
	sub	r3, r3, #3	@ D.32634, g_eVdmVersion,
	cmp	r3, #1	@ D.32634,
	bls	.L303	@,
	ldr	r3, .L305+4	@ tmp121,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L304	@,
.L303:
	mov	r0, #0	@ D.32632,
	bx	lr	@
.L304:
	ldr	r3, [r0, #16]	@ pImageDnr_6(D)->video_standard, pImageDnr_6(D)->video_standard
	cmp	r3, #0	@ pImageDnr_6(D)->video_standard,
	bne	.L303	@,
	ldrb	r0, [r0, #4]	@ zero_extendqisi2	@ D.32632, pImageDnr_6(D)->pic_structure
	bx	lr	@
.L306:
	.align	2
.L305:
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
	ldr	r1, .L309	@ tmp126,
	movw	r3, #11160	@ tmp128,
	movt	r3, 1	@ tmp128,
	clz	r2, r6	@ D.32642, SourceImgStoreType
	mla	r1, r3, r5, r1	@ tmp129, tmp128, NextInstId, tmp126
	mov	r2, r2, lsr #5	@ D.32642, D.32642,
	ldr	r3, [r1, #72]	@ D.32639, s_DnrChan[NextInstId_4(D)].Cur1DImage.luma_vir_addr
	str	r3, [r4, #8]	@ D.32639, pDetPara_1(D)->pPicBufY
	ldr	r0, [r1, #184]	@ D.32641, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	add	r3, r0, #15	@ D.32641, D.32641,
	str	r0, [r4, #20]	@ D.32641, pDetPara_1(D)->PicWidth
	ldr	ip, [r1, #188]	@ D.32641, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	mov	r3, r3, asr #4	@ D.32641, D.32641,
	add	r0, ip, #15	@ D.32641, D.32641,
	str	ip, [r4, #24]	@ D.32641, pDetPara_1(D)->PicHeight
	ldr	ip, [r1, #212]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride
	mov	r1, r0, asr #4	@ D.32641, D.32641,
	str	r2, [r4, #40]	@ D.32642, pDetPara_1(D)->IsFrameStored
	str	r1, [r4, #36]	@ D.32641, pDetPara_1(D)->MbHeight
	str	ip, [r4, #28]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, pDetPara_1(D)->PicStride
	str	r3, [r4, #32]	@ D.32641, pDetPara_1(D)->MbWidth
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L310:
	.align	2
.L309:
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
	ldr	lr, .L323	@ tmp182,
	movt	ip, 1	@ tmp130,
	mla	ip, ip, r1, lr	@ tmp131, tmp130, NextInstId, tmp182
	ldr	r4, [ip, #20]	@ s_DnrChan[NextInstId_6(D)].IsRwzb, s_DnrChan[NextInstId_6(D)].IsRwzb
	cmp	r4, #0	@ s_DnrChan[NextInstId_6(D)].IsRwzb,
	bne	.L312	@,
	ldr	r2, [r2, #16]	@ D.32647, pImageDnr_8(D)->video_standard
	cmp	r2, #1	@ D.32647,
	cmpne	r2, #8	@, D.32647,
	moveq	r2, #1	@ tmp140,
	movne	r2, #0	@ tmp140,
	beq	.L312	@,
	ldr	r4, [r3, #32]	@ pDetPara_10(D)->MbWidth, pDetPara_10(D)->MbWidth
	cmp	r4, #45	@ pDetPara_10(D)->MbWidth,
	ble	.L322	@,
.L312:
	mov	r3, #0	@ tmp149,
	strb	r3, [r0, #2]	@ tmp149, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp149, pDnrCfg_14(D)->db_en
	strb	r3, [r0]	@ tmp149, pDnrCfg_14(D)->dc_en
.L314:
	ldr	ip, .L323+4	@ tmp183,
	movw	r3, #11160	@ tmp164,
	movt	r3, 1	@ tmp164,
	mla	r3, r3, r1, lr	@ tmp165, tmp164, NextInstId, tmp182
	ldr	r4, [ip, #3108]	@ D.32645, g_DREnable
	cmp	r4, #1	@ D.32645,
	ldrneb	r2, [r0, #2]	@ zero_extendqisi2	@ D.32649, pDnrCfg_14(D)->dr_en
	moveq	r2, r4	@ D.32649, D.32645
	sxtbne	r4, r2	@ D.32645, D.32649
	str	r4, [r3, #28]	@ D.32645, s_DnrChan[NextInstId_6(D)].enDR
	movw	r3, #11160	@ tmp171,
	uxtbne	r2, r2	@ D.32649, D.32649
	movt	r3, 1	@ tmp171,
	strb	r2, [r0, #2]	@ D.32649, pDnrCfg_14(D)->dr_en
	ldr	r4, [ip, #3112]	@ D.32645, g_DBEnable
	mla	r3, r3, r1, lr	@ tmp172, tmp171, NextInstId, tmp182
	cmp	r4, #1	@ D.32645,
	ldrneb	r2, [r0, #1]	@ zero_extendqisi2	@ D.32649, pDnrCfg_14(D)->db_en
	moveq	r2, r4	@ D.32649, D.32645
	sxtbne	r4, r2	@ D.32645, D.32649
	uxtbne	r2, r2	@ D.32649, D.32649
	str	r4, [r3, #32]	@ D.32645, s_DnrChan[NextInstId_6(D)].enDB
	strb	r2, [r0, #1]	@ D.32649, pDnrCfg_14(D)->db_en
	ldr	r2, [ip, #3116]	@ D.32645, g_DCEnable
	movw	ip, #11160	@ tmp178,
	movt	ip, 1	@ tmp178,
	mla	r1, ip, r1, lr	@ tmp179, tmp178, NextInstId, tmp182
	cmp	r2, #1	@ D.32645,
	ldrneb	r3, [r0]	@ zero_extendqisi2	@ D.32649, pDnrCfg_14(D)->dc_en
	moveq	r3, r2	@ D.32649, D.32645
	sxtbne	r2, r3	@ D.32645, D.32649
	uxtbne	r3, r3	@ D.32649, D.32649
	str	r2, [r1, #36]	@ D.32645, s_DnrChan[NextInstId_6(D)].enDC
	strb	r3, [r0]	@ D.32649, pDnrCfg_14(D)->dc_en
	ldmfd	sp!, {r4, pc}	@
.L322:
	ldr	r3, [r3, #36]	@ pDetPara_10(D)->MbHeight, pDetPara_10(D)->MbHeight
	cmp	r3, #36	@ pDetPara_10(D)->MbHeight,
	bgt	.L312	@,
	ldr	r3, [ip, #24]	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state, s_DnrChan[NextInstId_6(D)].userSetRwzb_state
	cmp	r3, #1	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state,
	beq	.L312	@,
	mov	r3, #1	@ tmp155,
	strb	r2, [r0]	@ tmp140, pDnrCfg_14(D)->dc_en
	strb	r3, [r0, #2]	@ tmp155, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp155, pDnrCfg_14(D)->db_en
	b	.L314	@
.L324:
	.align	2
.L323:
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
	beq	.L335	@,
	ldr	r4, .L336	@ tmp190,
	movw	lr, #11160	@ tmp192,
	movt	lr, 1	@ tmp192,
	mov	ip, #0	@ tmp195,
	mov	r0, ip	@ D.32657, tmp195
	mla	r1, lr, r1, r4	@ tmp193, tmp192, NextInstId, tmp190
	str	ip, [r1, #16]	@ tmp195, s_DnrChan[NextInstId_6(D)].NeedStartAgain
.L333:
	ldrb	r1, [r2, #8]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->Range_mapuv
	strb	r1, [r3, #8]	@ D.32658, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #7]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.32658, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #6]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->Range_mapy
	strb	r1, [r3, #6]	@ D.32658, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2, #5]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->Range_mapy_flag
	strb	r2, [r3, #5]	@ D.32658, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L335:
	ldr	ip, .L336	@ tmp141,
	movw	r0, #11160	@ tmp143,
	movt	r0, 1	@ tmp143,
	mla	r1, r0, r1, ip	@ tmp144, tmp143, NextInstId, tmp141
	ldr	r0, [r1, #16]	@ D.32657, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	cmp	r0, #0	@ D.32657,
	bne	.L327	@,
	ldr	ip, [r1, #180]	@ D.32659, s_DnrChan[NextInstId_6(D)].Cur1DImage.format
	and	lr, ip, #3072	@ D.32659, D.32659,
	cmp	lr, #3072	@ D.32659,
	moveq	ip, #1	@ tmp157,
	streq	ip, [r1, #16]	@ tmp157, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	streqb	ip, [r3, #3]	@ tmp157, pDnrCfg_4(D)->pic_structure
	beq	.L333	@,
	tst	ip, #2048	@ D.32659,
	movne	r1, #2	@ tmp165,
	strneb	r1, [r3, #3]	@ tmp165, pDnrCfg_4(D)->pic_structure
	bne	.L334	@,
	tst	ip, #1024	@ D.32659,
	beq	.L331	@,
	mov	r1, #1	@ tmp172,
	strb	r1, [r3, #3]	@ tmp172, pDnrCfg_4(D)->pic_structure
	b	.L333	@
.L327:
	mov	r0, #0	@ tmp183,
	mov	ip, #2	@ tmp184,
	str	r0, [r1, #16]	@ tmp183, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	strb	ip, [r3, #3]	@ tmp184, pDnrCfg_4(D)->pic_structure
.L334:
	ldrb	r1, [r2, #3]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->bottom_Range_mapuv
	strb	r1, [r3, #8]	@ D.32658, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->bottom_Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.32658, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->bottom_Range_mapy
	strb	r1, [r3, #6]	@ D.32658, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.32658, pImageDnr_10(D)->bottom_Range_mapy_flag
	strb	r2, [r3, #5]	@ D.32658, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L331:
	mvn	r0, #0	@ D.32657,
	ldmfd	sp!, {r4, pc}	@
.L337:
	.align	2
.L336:
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
	ldr	r7, .L362	@ tmp318,
	movw	r2, #11160	@ tmp185,
	movt	r2, 1	@ tmp185,
	ldr	r3, .L362+4	@ tmp189,
	mla	r2, r2, r6, r7	@ tmp186, tmp185, NextInstId, tmp318
	str	r0, [r2, #20]	@, s_DnrChan[NextInstId_14(D)].IsRwzb
	strb	r9, [r4, #3]	@ SourceImgStoreType, pDnrCfg_18(D)->pic_structure
	ldr	r3, [r3]	@ D.32666, g_eVdmVersion
	cmp	r3, #3	@ D.32666,
	beq	.L359	@,
	cmp	r3, #4	@ D.32666,
	ldreq	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	streq	r3, [r4, #64]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, pDnrCfg_18(D)->dnr_stride_1d
.L340:
	mov	r3, r8	@, pDetPara
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgDrDbDcEnable	@
	ldr	r3, [r5, #16]	@ D.32667, pImageDnr_28(D)->video_standard
	movw	r1, #11160	@ tmp225,
	cmp	r3, #1	@ D.32667,
	movt	r1, 1	@ tmp225,
	str	r3, [r4, #16]	@ D.32667, pDnrCfg_18(D)->video_standard
	ldreqb	r3, [r5, #10]	@ zero_extendqisi2	@ D.32665, pImageDnr_28(D)->vc1_profile
	movne	r3, #3	@ tmp204,
	strneb	r3, [r4, #9]	@ tmp204, pDnrCfg_18(D)->vc1_profile
	mla	r1, r1, r6, r7	@ tmp226, tmp225, NextInstId, tmp318
	streqb	r3, [r4, #9]	@ D.32665, pDnrCfg_18(D)->vc1_profile
	ldreq	r3, [r5, #32]	@ D.32663, pImageDnr_28(D)->Rangedfrm
	streq	r3, [r4, #68]	@ D.32663, pDnrCfg_18(D)->Rangedfrm
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #0	@ pDnrCfg_18(D)->pic_structure,
	movw	r3, #11160	@ tmp209,
	movt	r3, 1	@ tmp209,
	mla	r3, r3, r6, r7	@ tmp210, tmp209, NextInstId, tmp318
	ldr	r8, [r3, #188]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height
	ldr	r3, .L362+8	@ tmp237,
	add	r8, r8, #15	@ D.32664, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height,
	ldr	r2, [r3]	@ g_VdmCharacter, g_VdmCharacter
	mov	r8, r8, lsr #4	@ CurPicHeightInMb, D.32664,
	ldr	r3, [r1, #184]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width
	addne	r8, r8, #1	@ D.32664, D.32664,
	add	r3, r3, #15	@ D.32664, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width,
	movne	r8, r8, lsr #1	@ CurPicHeightInMb, D.32664,
	str	r8, [r4, #28]	@ CurPicHeightInMb, pDnrCfg_18(D)->pic_height_in_mb
	ands	r2, r2, #4	@ D.32663, g_VdmCharacter,
	mov	r3, r3, lsr #4	@ D.32663, D.32664,
	str	r3, [r4, #24]	@ D.32663, pDnrCfg_18(D)->pic_width_in_mb
	mul	r0, r3, r8	@ D.32663, D.32663, CurPicHeightInMb
	mov	r3, r3, asl #4	@ D.32663, D.32663,
	addeq	r3, r3, #63	@ D.32663, D.32663,
	addne	r3, r3, #79	@ D.32663, D.32663,
	bic	r3, r3, #63	@ D.32663, D.32663,
	str	r0, [r4, #20]	@ D.32663, pDnrCfg_18(D)->mbtodec
	ldr	r1, [r1, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r3, [r4, #60]	@ D.32663, pDnrCfg_18(D)->ddr_stride
	ldr	r0, .L362	@ tmp249,
	str	r1, [r4, #32]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_1d
	movw	r1, #11160	@ tmp251,
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ D.32668, pImageDnr_28(D)->use_pic_qp_en
	movt	r1, 1	@ tmp251,
	mul	r1, r1, r6	@ tmp250, tmp251, NextInstId
	strb	r3, [r4, #10]	@ D.32668, pDnrCfg_18(D)->use_pic_qp_en
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ D.32665, pImageDnr_28(D)->chroma_format_idc
	add	ip, r7, r1	@ tmp252, tmp318, tmp250
	strb	r3, [r4, #4]	@ D.32665, pDnrCfg_18(D)->chroma_format_idc
	add	r3, ip, #75776	@ tmp254, tmp252,
	ldr	lr, [r5, #20]	@ D.32663, pImageDnr_28(D)->QP_Y
	str	lr, [r4, #48]	@ D.32663, pDnrCfg_18(D)->QP_Y
	ldr	lr, [r5, #24]	@ D.32663, pImageDnr_28(D)->QP_U
	str	lr, [r4, #52]	@ D.32663, pDnrCfg_18(D)->QP_U
	ldr	lr, [r5, #28]	@ D.32663, pImageDnr_28(D)->QP_V
	str	lr, [r4, #56]	@ D.32663, pDnrCfg_18(D)->QP_V
	ldr	lr, [r3, #872]	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag
	cmp	lr, #1	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag,
	beq	.L360	@,
	ldr	r9, [sp, #36]	@ tmp319, PicBufID
	mov	r3, #392	@ tmp273,
	movw	lr, #26552	@ tmp278,
	mla	r3, r3, r9, r1	@ tmp276, tmp273, tmp319, tmp250
	add	r3, r0, r3	@ tmp277, tmp249, tmp276
	ldr	r3, [r3, lr]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr
	str	r3, [r4, #36]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.32668, s_DnrChan[NextInstId_14(D)].s32MirrorEn
	strb	r3, [r4, #11]	@ D.32668, pDnrCfg_18(D)->s32MirrorEn
.L348:
	cmp	r2, #0	@ D.32663,
	beq	.L349	@,
	movw	r3, #11160	@ tmp288,
	movt	r3, 1	@ tmp288,
	mla	r3, r3, r6, r7	@ tmp289, tmp288, NextInstId, tmp318
	add	r2, r3, #75776	@ tmp296, tmp289,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ D.32668, s_DnrChan[NextInstId_14(D)].s32VcmpEn
	strb	r3, [r4, #12]	@ D.32668, pDnrCfg_18(D)->s32VcmpEn
	ldr	r3, [r2, #840]	@ D.32663, s_DnrChan[NextInstId_14(D)].s32VcmpWmStartLine
	str	r3, [r4, #76]	@ D.32663, pDnrCfg_18(D)->s32VcmpWmStartLine
	ldr	r3, [r2, #844]	@ D.32663, s_DnrChan[NextInstId_14(D)].s32VcmpWmEndLine
	str	r3, [r4, #80]	@ D.32663, pDnrCfg_18(D)->s32VcmpWmEndLine
.L349:
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgPicStructure	@
	cmn	r0, #1	@ D.32662,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #2	@ pDnrCfg_18(D)->pic_structure,
	beq	.L361	@,
	mov	r0, #0	@ D.32662,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L361:
	ldr	r3, [r4, #24]	@ pDnrCfg_18(D)->pic_width_in_mb, pDnrCfg_18(D)->pic_width_in_mb
	movw	r2, #11160	@ tmp312,
	movt	r2, 1	@ tmp312,
	mov	r0, #0	@ D.32662,
	mla	r6, r2, r6, r7	@ tmp313, tmp312, NextInstId, tmp318
	mul	r8, r3, r8	@ D.32663, pDnrCfg_18(D)->pic_width_in_mb, CurPicHeightInMb
	ldr	r2, [r6, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	mov	r3, r8, asl #8	@ tmp308, D.32663,
	add	r8, r3, r8, lsl #7	@ D.32663, tmp308, D.32663,
	add	r8, r8, r2	@ D.32664, D.32663, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r8, [r4, #32]	@ D.32664, pDnrCfg_18(D)->dnr_ystaddr_1d
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L360:
	ldr	r3, [r3, #896]	@ s_DnrChan[NextInstId_14(D)].pCaptureImageOut, s_DnrChan[NextInstId_14(D)].pCaptureImageOut
	ldr	r3, [r3, #120]	@ _82->luma_2d_phy_addr, _82->luma_2d_phy_addr
	str	r3, [r4, #36]	@ _82->luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldr	r3, [ip, #412]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate
	strb	r3, [r4, #11]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, pDnrCfg_18(D)->s32MirrorEn
	b	.L348	@
.L359:
	ldr	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	mov	r3, r3, asl #5	@ D.32664, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride,
	str	r3, [r4, #64]	@ D.32664, pDnrCfg_18(D)->dnr_stride_1d
	b	.L340	@
.L363:
	.align	2
.L362:
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
	ldr	r7, .L380	@ tmp310,
	add	lr, r3, #40	@ tmp184, tmp182,
	add	ip, r7, r3	@ tmp188, tmp310, tmp182
	add	lr, r7, lr	@ pImg, tmp310, tmp184
	add	ip, ip, #75776	@ tmp190, tmp188,
	ldr	r4, [ip, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r4, #0	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	moveq	r4, #392	@ tmp194,
	ldrne	r4, [ip, #896]	@ pImageLogic, s_DnrChan[NextInstId_7(D)].pCaptureImageOut
	mlaeq	r4, r4, r2, r3	@ tmp197, tmp194, PicBufID, tmp182
	addeq	r4, r4, #26368	@ tmp199, tmp197,
	addeq	r4, r4, #64	@ tmp199, tmp199,
	addeq	r4, r7, r4	@ pImageLogic, tmp310, tmp199
	cmp	r4, #0	@ pImageLogic,
	beq	.L374	@,
	mov	r6, r1	@ pDnrCfg, pDnrCfg
	mov	r5, r0	@ NextInstId, NextInstId
	mov	r2, #392	@,
	mov	r1, lr	@, pImg
	mov	r0, r4	@, pImageLogic
	ldr	r8, [r4, #120]	@ luma_2d_phy_addr, pImageLogic_1->luma_2d_phy_addr
	ldr	r9, [r4, #48]	@ luma_2d_vir_addr, pImageLogic_1->luma_2d_vir_addr
	bl	memcpy	@
	movw	r3, #11160	@ tmp213,
	ldr	r2, [r6, #60]	@ pDnrCfg_17(D)->ddr_stride, pDnrCfg_17(D)->ddr_stride
	movt	r3, 1	@ tmp213,
	str	r8, [r4, #120]	@ luma_2d_phy_addr, pImageLogic_1->luma_2d_phy_addr
	mla	r3, r3, r5, r7	@ tmp214, tmp213, NextInstId, tmp310
	str	r9, [r4, #48]	@ luma_2d_vir_addr, pImageLogic_1->luma_2d_vir_addr
	str	r2, [r4, #172]	@ pDnrCfg_17(D)->ddr_stride, pImageLogic_1->image_stride
	add	r3, r3, #75776	@ tmp216, tmp214,
	ldr	r3, [r3, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r3, #1	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	beq	.L377	@,
	ldr	r0, [r6, #28]	@ pDnrCfg_17(D)->pic_height_in_mb, pDnrCfg_17(D)->pic_height_in_mb
	ldr	r2, [r6, #60]	@ pDnrCfg_17(D)->ddr_stride, pDnrCfg_17(D)->ddr_stride
	ldrb	r3, [r6, #3]	@ zero_extendqisi2	@ pDnrCfg_17(D)->pic_structure, pDnrCfg_17(D)->pic_structure
	mov	r0, r0, asl #4	@ D.32673, pDnrCfg_17(D)->pic_height_in_mb,
	cmp	r3, #0	@ pDnrCfg_17(D)->pic_structure,
	mul	r3, r2, r0	@ D.32673, pDnrCfg_17(D)->ddr_stride, D.32673
	moveq	r0, #1	@ D.32673,
	movne	r0, #2	@ D.32673,
	mla	r0, r0, r3, r8	@ D.32674, D.32673, D.32673, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.32674, pImageLogic_1->chrom_2d_phy_addr
.L369:
	bl	MEM_Phy2Vir	@
	movw	r3, #11160	@ tmp229,
	movt	r3, 1	@ tmp229,
	ldr	r9, [r4, #120]	@ D.32674, pImageLogic_1->luma_2d_phy_addr
	mla	r3, r3, r5, r7	@ tmp230, tmp229, NextInstId, tmp310
	ldr	r8, [r4, #124]	@ D.32674, pImageLogic_1->chrom_2d_phy_addr
	str	r9, [r4, #88]	@ D.32674, pImageLogic_1->top_luma_phy_addr
	mov	ip, #1	@ tmp247,
	movw	r2, #11160	@ tmp250,
	bfi	r2, ip, #16, #16	@ tmp250, tmp247,,
	str	r8, [r4, #92]	@ D.32674, pImageLogic_1->top_chrom_phy_addr
	mov	lr, #0	@ tmp246,
	mla	r2, r2, r5, r7	@ tmp251, tmp250, NextInstId, tmp310
	add	r2, r2, #75776	@ tmp253, tmp251,
	str	r0, [r4, #52]	@, pImageLogic_1->chrom_2d_vir_addr
	ldr	r1, [r3, #20]	@ D.32674, s_DnrChan[NextInstId_7(D)].IsRwzb
	str	r1, [r4, #356]	@ D.32674, pImageLogic_1->optm_inf.Rwzb
	ldr	r1, [r6, #60]	@ pDnrCfg_17(D)->ddr_stride, pDnrCfg_17(D)->ddr_stride
	add	r0, r1, r9	@ D.32674, pDnrCfg_17(D)->ddr_stride, D.32674
	str	r0, [r4, #96]	@ D.32674, pImageLogic_1->btm_luma_phy_addr
	ldr	r1, [r6, #60]	@ pDnrCfg_17(D)->ddr_stride, pDnrCfg_17(D)->ddr_stride
	add	r1, r1, r8	@ D.32674, pDnrCfg_17(D)->ddr_stride, D.32674
	str	r1, [r4, #100]	@ D.32674, pImageLogic_1->btm_chrom_phy_addr
	ldr	r1, [r3, #416]	@ D.32674, MEM[(struct IMAGE *)&s_DnrChan][NextInstId_7(D)].Cur1DImage.u32IsLastFrame
	str	r1, [r4, #376]	@ D.32674, pImageLogic_1->u32IsLastFrame
	ldr	r1, [r3, #452]	@ D.32673, s_DnrChan[NextInstId_7(D)].s32ImgBlockMemSize
	str	ip, [r4, #368]	@ tmp247, pImageLogic_1->is_processed_by_dnr
	str	lr, [r4, #364]	@ tmp246, pImageLogic_1->u32Is1D
	str	r1, [r4, #360]	@ D.32673, pImageLogic_1->ImgSize
	ldr	r2, [r2, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r2, lr	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	beq	.L378	@,
.L371:
	ldr	r3, .L380+4	@ tmp271,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L373	@,
	movw	r0, #11160	@ tmp276,
	ldr	r2, [r4, #148]	@ pImageLogic_1->image_height, pImageLogic_1->image_height
	movt	r0, 1	@ tmp276,
	ldr	r3, [r4, #144]	@ pImageLogic_1->image_width, pImageLogic_1->image_width
	mla	r5, r0, r5, r7	@ tmp277, tmp276, NextInstId, tmp310
	add	r2, r2, #15	@ D.32674, pImageLogic_1->image_height,
	add	r3, r3, #15	@ D.32674, pImageLogic_1->image_width,
	bic	ip, r2, #15	@ D.32673, D.32674,
	bic	r3, r3, #15	@ D.32673, D.32674,
	add	r1, r5, #75776	@ tmp289, tmp277,
	ldrb	r0, [r5, #2]	@ zero_extendqisi2	@ D.32677, s_DnrChan[NextInstId_7(D)].s32VcmpEn
	cmp	r0, #1	@ D.32677,
	strb	r0, [r4, #296]	@ D.32677, pImageLogic_1->ImageDnr.s32VcmpEn
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ D.32677, s_DnrChan[NextInstId_7(D)].s32WmEn
	strb	r0, [r4, #297]	@ D.32677, pImageLogic_1->ImageDnr.s32WmEn
	ldr	r0, [r1, #840]	@ D.32673, s_DnrChan[NextInstId_7(D)].s32VcmpWmStartLine
	str	r0, [r4, #320]	@ D.32673, pImageLogic_1->ImageDnr.s32VcmpWmStartLine
	ldr	r1, [r1, #844]	@ D.32673, s_DnrChan[NextInstId_7(D)].s32VcmpWmEndLine
	str	ip, [r4, #332]	@ D.32673, pImageLogic_1->ImageDnr.s32VcmpFrameHeight
	str	r3, [r4, #328]	@ D.32673, pImageLogic_1->ImageDnr.s32VcmpFrameWidth
	str	r1, [r4, #324]	@ D.32673, pImageLogic_1->ImageDnr.s32VcmpWmEndLine
	beq	.L379	@,
.L373:
	mov	r0, #0	@ D.32672,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L378:
	add	r3, r3, #75776	@ tmp260, tmp230,
	ldr	r1, [r3, #900]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable, s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable
	cmp	r1, ip	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable,
	streq	r2, [r4, #372]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, pImageLogic_1->u32Circumrotate
	ldreq	r3, [r3, #912]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn
	streqb	r3, [r6, #11]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, pDnrCfg_17(D)->s32MirrorEn
	b	.L371	@
.L379:
	ldr	r3, [r4, #172]	@ pImageLogic_1->image_stride, pImageLogic_1->image_stride
	mov	r2, r2, lsr #4	@ D.32674, D.32674,
	ldr	r1, [r4, #88]	@ pImageLogic_1->top_luma_phy_addr, pImageLogic_1->top_luma_phy_addr
	mov	r0, #0	@ D.32672,
	add	r3, r3, #2	@ D.32674, pImageLogic_1->image_stride,
	mov	r3, r3, asl #4	@ D.32674, D.32674,
	mla	r2, r2, r3, r1	@ D.32674, D.32674, D.32674, pImageLogic_1->top_luma_phy_addr
	str	r2, [r4, #92]	@ D.32674, pImageLogic_1->top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L377:
	ldr	r3, [r6, #28]	@ pDnrCfg_17(D)->pic_height_in_mb, pDnrCfg_17(D)->pic_height_in_mb
	ldr	r0, [r6, #60]	@ pDnrCfg_17(D)->ddr_stride, pDnrCfg_17(D)->ddr_stride
	mov	r3, r3, asl #4	@ D.32673, pDnrCfg_17(D)->pic_height_in_mb,
	mla	r0, r0, r3, r8	@ D.32674, pDnrCfg_17(D)->ddr_stride, D.32673, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.32674, pImageLogic_1->chrom_2d_phy_addr
	b	.L369	@
.L374:
	mvn	r0, #0	@ D.32672,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L381:
	.align	2
.L380:
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.fnend
	.size	DNR_SetImageLogic, .-DNR_SetImageLogic
	.align	2
	.global	DNR_PrecessChanLastFrame
	.type	DNR_PrecessChanLastFrame, %function
DNR_PrecessChanLastFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #11160	@ tmp129,
	movt	r3, 1	@ tmp129,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mul	r4, r3, r0	@ tmp128, tmp129, NextInstId
	ldr	r8, .L411	@ tmp127,
	mov	r7, r0	@ NextInstId, NextInstId
	add	r5, r4, #40	@ tmp130, tmp128,
	add	r5, r8, r5	@ D.32686, tmp127, tmp130
	mov	r1, r5	@, D.32686
	bl	VCTRL_GetChanImage	@
	subs	r6, r0, #0	@ D.32684,
	bne	.L383	@,
	add	r3, r8, r4	@ tmp134, tmp127, tmp128
	add	r1, r3, #75776	@ tmp136, tmp134,
	ldr	r2, [r1, #852]	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag, s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag,
	beq	.L384	@,
	mov	r0, #1	@ tmp143,
	movw	r2, #11160	@ tmp146,
	bfi	r2, r0, #16, #16	@ tmp146, tmp143,,
	str	r0, [r3, #432]	@ tmp143, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mla	r2, r2, r7, r8	@ tmp147, tmp146, NextInstId, tmp127
	ldr	r2, [r2, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L386	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L386	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	blt	.L410	@,
.L409:
	mov	r6, #0	@ D.32684,
.L389:
	mov	r0, r6	@, D.32684
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L386:
	mov	r0, r7	@, NextInstId
	mov	r6, #1	@ D.32684,
	bl	DNR_ProcessLastFrameError	@
	mov	r0, r6	@, D.32684
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L383:
	mov	r0, r7	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L409	@,
	add	r0, r4, #968	@ tmp197, tmp128,
	add	r0, r8, r0	@, tmp127, tmp197
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L411+4	@ tmp199,
	ldr	ip, [r2]	@ D.32689, g_event_report
	cmp	ip, #0	@ D.32689,
	mov	r3, r0	@ ret,
	beq	.L392	@,
	cmn	r0, #1	@ ret,
	add	r2, sp, #8	@ tmp200,,
	mov	r1, #115	@,
	mov	r0, r7	@, NextInstId
	moveq	r3, #1	@ D.32685,
	str	r3, [r2, #-4]!	@ D.32685, para
	blx	ip	@ D.32689
.L392:
	mov	r0, r7	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L409	@
.L384:
	ldr	r2, [r3, #108]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag,
	bne	.L386	@,
	ldr	r0, [r3, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	str	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r0, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L386	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L386	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	bge	.L409	@,
	mov	r1, r5	@, D.32686
	mov	r0, r7	@, NextInstId
	bl	DNR_FastBackOptimize	@
	b	.L389	@
.L410:
	mov	r1, r5	@, D.32686
	mov	r0, r7	@, NextInstId
	bl	DNR_FastForwardFastBack	@
	b	.L389	@
.L412:
	.align	2
.L411:
	.word	.LANCHOR0
	.word	g_event_report
	.fnend
	.size	DNR_PrecessChanLastFrame, .-DNR_PrecessChanLastFrame
	.align	2
	.global	DNR_InsertQueueWithDSD
	.type	DNR_InsertQueueWithDSD, %function
DNR_InsertQueueWithDSD:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r2, #11160	@ tmp154,
	movt	r2, 1	@ tmp154,
	mul	ip, r2, r0	@ tmp153, tmp154, NextInstId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0	@ NextInstId, NextInstId
	ldr	r4, .L433	@ tmp342,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r6, r4, ip	@ tmp155, tmp342, tmp153
	add	r8, r6, #75776	@ tmp157, tmp155,
	ldr	r3, [r8, #848]	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed,
	blt	.L414	@,
	ldr	lr, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r7, ip, #40	@ tmp181, tmp153,
	ldr	r3, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r7, r4, r7	@ D.32711, tmp342, tmp181
	add	r0, ip, #968	@ tmp185, tmp153,
	add	lr, lr, #6	@ D.32708, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r3, r3, lr	@ D.32708, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.32708
	add	r0, r4, r0	@, tmp342, tmp185
	mov	r1, r7	@, D.32711
	str	r3, [r6, #216]	@ D.32708, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L425	@,
	ldr	r0, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	movw	r3, #19174	@ tmp194,
	ldr	r1, .L433+4	@ tmp205,
	mov	r8, #0	@ tmp204,
	mov	r2, #2	@ tmp198,
	str	r8, [r6, #432]	@ tmp204, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	mla	r3, r3, r5, r0	@ tmp195, tmp194, NextInstId, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	ip, [r1]	@ D.32712, g_event_report
	cmp	ip, r8	@ D.32712,
	add	r3, r3, #178	@ tmp197, tmp195,
	moveq	r0, ip	@ D.32707, D.32712
	str	r2, [r4, r3, asl #2]	@ tmp198, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	beq	.L415	@,
	add	r2, sp, #8	@ tmp206,,
	mov	r0, r5	@, NextInstId
	mov	r1, #5	@,
	str	r7, [r2, #-4]!	@ D.32711, para
	blx	ip	@ D.32712
	mov	r0, r8	@ D.32707, tmp204
.L415:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L414:
	movw	r9, #51520	@ tmp211,
	add	r7, r6, #51456	@ tmp212, tmp155,
	ldr	r0, [r6, r9]	@ D.32707, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
	add	r7, r7, #64	@ tmp212, tmp212,
	cmp	r0, #0	@ D.32707,
	bne	.L416	@,
	ldr	r3, [r7, #4]	@ D.32709, s_DnrChan[NextInstId_4(D)].TempImageNum
	cmp	r3, #0	@ D.32709,
	ble	.L419	@,
	subs	r1, r3, #1	@ i, D.32709,
	bmi	.L419	@,
	mov	r2, #392	@ tmp228,
	movw	lr, #19174	@ tmp343,
	mla	r2, r2, r3, ip	@ D.32713, tmp228, D.32709, tmp153
	mov	r6, r0	@ tmp345, D.32707
	mul	ip, lr, r5	@ tmp344, tmp343, NextInstId
	add	r2, r2, #51200	@ D.32713, D.32713,
	add	r2, r2, #112	@ D.32713, D.32713,
	add	r2, r4, r2	@ ivtmp.324, tmp342, D.32713
.L420:
	ldr	r3, [r2], #-392	@ D.32708, MEM[base: _70, offset: 0B]
	sub	r1, r1, #1	@ i, i,
	cmn	r1, #1	@ i,
	add	r3, ip, r3	@ tmp237, tmp344, D.32708
	add	r3, r3, #178	@ tmp238, tmp237,
	str	r6, [r4, r3, asl #2]	@ tmp345, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	bne	.L420	@,
.L419:
	movw	r3, #11160	@ tmp221,
	mov	r2, #0	@ tmp225,
	movt	r3, 1	@ tmp221,
	mla	r4, r3, r5, r4	@ tmp222, tmp221, NextInstId, tmp342
	add	r4, r4, #51456	@ tmp224, tmp222,
	str	r2, [r4, #68]	@ tmp225, s_DnrChan[NextInstId_4(D)].TempImageNum
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L425:
	mvn	r0, #0	@ D.32707,
	b	.L415	@
.L416:
	ldr	r0, [r7, #4]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	mov	r2, #392	@ tmp272,
	add	r10, ip, #40	@ tmp262, tmp153,
	ldr	r3, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	lr, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r10, r4, r10	@ D.32711, tmp342, tmp262
	mla	r0, r2, r0, ip	@ tmp275, tmp272, s_DnrChan[NextInstId_4(D)].TempImageNum, tmp153
	add	r3, r3, #6	@ D.32708, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r3, lr, r3	@ D.32708, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.32708
	mov	r1, r10	@, D.32711
	str	r3, [r6, #216]	@ D.32708, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r0, r0, #51456	@ tmp277, tmp275,
	add	r0, r0, #72	@ tmp277, tmp277,
	add	r0, r4, r0	@, tmp342, tmp277
	bl	memcpy	@
	ldr	r2, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	movw	r3, #19174	@ tmp290,
	ldr	ip, [r8, #864]	@ s_DnrChan[NextInstId_4(D)].u32VoFrmNum, s_DnrChan[NextInstId_4(D)].u32VoFrmNum
	ldr	r1, [r6, #448]	@ s_DnrChan[NextInstId_4(D)].s32ValidImgNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	mov	r0, #4	@ tmp294,
	mla	r3, r3, r5, r2	@ tmp291, tmp290, NextInstId, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	r2, [r7, #4]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	rsb	r1, ip, r1	@ D.32708, s_DnrChan[NextInstId_4(D)].u32VoFrmNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	add	r2, r2, #1	@ D.32709, s_DnrChan[NextInstId_4(D)].TempImageNum,
	str	r2, [r7, #4]	@ D.32709, s_DnrChan[NextInstId_4(D)].TempImageNum
	add	r3, r3, #178	@ tmp293, tmp291,
	cmp	r2, r1	@ D.32709, D.32708
	str	r0, [r4, r3, asl #2]	@ tmp294, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	bcc	.L432	@,
	mov	r3, #0	@ tmp334,
	str	r3, [r6, r9]	@ tmp334, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
.L423:
	mov	r1, r10	@, D.32711
	mov	r0, r5	@, NextInstId
	bl	DNR_PushTempImageToVOQ	@
.L424:
	movw	r2, #11160	@ tmp337,
	mov	r3, #0	@ tmp340,
	movt	r2, 1	@ tmp337,
	mov	r0, r3	@ D.32707, tmp340
	mla	r4, r2, r5, r4	@ tmp338, tmp337, NextInstId, tmp342
	str	r3, [r4, #432]	@ tmp340, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L432:
	ldr	r3, [r6, #264]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame, s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame,
	bne	.L424	@,
	b	.L423	@
.L434:
	.align	2
.L433:
	.word	.LANCHOR0
	.word	g_event_report
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
	sub	r3, r0, #10	@ D.32722, eVidStd,
	cmp	r3, #2	@ D.32722,
	bhi	.L436	@,
	ldr	r3, .L439	@ tmp122,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L438	@,
.L436:
	sub	r3, r0, #14	@ D.32725, eVidStd,
	bics	r3, r3, #4	@ tmp133, D.32725,
	moveq	r3, #1	@ tmp128,
	movne	r3, #0	@ tmp128,
	cmp	r0, #4	@ eVidStd,
	movne	r0, r3	@, D.32721, tmp128
	orreq	r0, r3, #1	@,, D.32721, tmp128
	bx	lr	@
.L438:
	mov	r0, #1	@ D.32721,
	bx	lr	@
.L440:
	.align	2
.L439:
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
	ldr	r4, .L449	@ tmp138,
	movt	r3, 1	@ tmp140,
	mov	lr, r0	@ NextInstId, NextInstId
	mla	r4, r3, r0, r4	@ tmp141, tmp140, NextInstId, tmp138
	add	r2, r4, #75776	@ tmp143, tmp141,
	add	r5, r2, #896	@ tmp142, tmp143,
	ldr	r3, [r2, #900]	@ D.32735, s_DnrChan[NextInstId_4(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ D.32735,
	movne	r3, #0	@ D.32735,
	beq	.L448	@,
.L442:
	mov	r0, r3	@, D.32735
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L448:
	ldr	ip, [r4, #432]	@ D.32736, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	ip, #1	@ D.32736,
	bne	.L442	@,
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
	ble	.L442	@,
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
	add	r2, r2, #31	@ D.32737, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height,
	ldr	r1, [r4, #128]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr
	add	r3, r3, #15	@ D.32737, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width,
	mov	r2, r2, lsr #5	@ D.32737, D.32737,
	bic	r3, r3, #15	@ D.32737, D.32737,
	mul	r3, r2, r3	@ D.32737, D.32737, D.32737
	add	r3, r1, r3, lsl #5	@ D.32737, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, D.32737,
	str	r3, [r4, #132]	@ D.32737, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_chrom_phy_addr
	bl	DNR_InsertQueueWithDSD	@
	cmn	r0, #1	@ D.32735,
	mov	r3, r0	@ D.32735,
	moveq	r3, r0	@ D.32735, D.32735
	movne	r3, #1	@ D.32735,
	b	.L442	@
.L450:
	.align	2
.L449:
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
	ldr	r2, .L453	@ tmp113,
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
.L454:
	.align	2
.L453:
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
	ldr	r0, .L456	@,
	b	__memzero	@
.L457:
	.align	2
.L456:
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
	ldr	r1, .L478	@ tmp221,
	mul	r3, r3, r6	@ tmp142, tmp143, ChanID
	add	r2, r1, r3	@ tmp144, tmp221, tmp142
	ldr	ip, [r2, #448]	@ D.32761, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	cmp	ip, #0	@ D.32761,
	ble	.L467	@,
	ldr	r2, [r2, #712]	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #1	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed,
	addhi	r3, r3, #712	@ D.32763, tmp142,
	movhi	r4, #0	@ i,
	addhi	r3, r1, r3	@ ivtmp.341, tmp221, D.32763
	bhi	.L463	@,
	b	.L476	@
.L466:
	ldr	r2, [r3, #4]!	@ MEM[base: _4, offset: 0B], MEM[base: _4, offset: 0B]
	cmp	r2, #1	@ MEM[base: _4, offset: 0B],
	bls	.L461	@,
.L463:
	add	r4, r4, #1	@ i, i,
	cmp	r4, ip	@ i, D.32761
	bne	.L466	@,
.L467:
	mvn	r0, #0	@ D.32756,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L476:
	mov	r4, #0	@ i,
.L461:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5]	@ i, *pPicBufID_13(D)
	beq	.L465	@,
	ldr	r3, [r0, #4]	@ D.32759, pstFrameIntf_9->get_frame
	cmp	r3, #0	@ D.32759,
	beq	.L465	@,
	movw	r5, #19174	@ tmp159,
	ldr	r7, .L478	@ tmp157,
	mla	r5, r5, r6, r4	@ tmp160, tmp159, ChanID, i
	add	r5, r5, #178	@ tmp161, tmp160,
	ldr	r2, [r1, r5, asl #2]	@ tmp162, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #0	@ tmp162,
	beq	.L477	@,
.L465:
	movw	r3, #19174	@ tmp216,
	mov	r0, #0	@ D.32756,
	mla	r4, r3, r6, r4	@ tmp217, tmp216, ChanID, i
	mov	r3, #1	@ tmp219,
	add	r4, r4, #178	@ tmp218, tmp217,
	str	r3, [r1, r4, asl #2]	@ tmp219, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L477:
	movw	r2, #11160	@ tmp165,
	mov	r0, r6	@, ChanID
	movt	r2, 1	@ tmp165,
	add	r1, sp, #4	@,,
	mul	r6, r2, r6	@ tmp164, tmp165, ChanID
	add	r2, r7, r6	@ tmp166, tmp157, tmp164
	ldr	ip, [r2, #184]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_width, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width
	ldr	r2, [r2, #188]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_height, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height
	add	ip, ip, #63	@ D.32761, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width,
	add	r2, r2, #15	@ D.32761, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height,
	bic	ip, ip, #63	@ D.32761, D.32761,
	bic	r2, r2, #15	@ D.32761, D.32761,
	mul	r2, r2, ip	@ D.32761, D.32761, D.32761
	add	r2, r2, r2, lsl #1	@ D.32761, D.32761, D.32761,
	mov	r2, r2, asr #1	@, D.32761,
	blx	r3	@ D.32759
	cmp	r0, #0	@ D.32756
	bne	.L467	@,
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
.L479:
	.align	2
.L478:
	.word	.LANCHOR0
	.fnend
	.size	DNR_Fsp_ShowPic, .-DNR_Fsp_ShowPic
	.align	2
	.type	DNR_Get2DFrameStore.part.6, %function
DNR_Get2DFrameStore.part.6:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #11160	@ tmp130,
	ldr	r6, .L489	@ tmp170,
	movt	r3, 1	@ tmp130,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ NextInstId, NextInstId
	mov	r7, r1	@ pPicBufID, pPicBufID
	mla	r3, r3, r0, r6	@ tmp131, tmp130, NextInstId, tmp170
	ldr	r5, [r3, #184]	@ D.32767, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_width
	ldr	r2, [r3, #436]	@ D.32768, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	ldr	r8, [r3, #188]	@ D.32767, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_height
	cmp	r5, r2	@ D.32767, D.32768
	beq	.L488	@,
.L481:
	ldr	r3, .L489+4	@ tmp149,
	ldr	ip, [r3]	@ D.32769, g_event_report
	cmp	ip, #0	@ D.32769,
	beq	.L483	@,
	movw	r3, #11160	@ tmp152,
	strh	r2, [sp]	@ movhi	@ D.32768, para
	movt	r3, 1	@ tmp152,
	strh	r5, [sp, #4]	@ movhi	@ D.32767, para
	mla	r3, r3, r4, r6	@ tmp153, tmp152, NextInstId, tmp170
	strh	r8, [sp, #6]	@ movhi	@ D.32767, para
	mov	r2, sp	@,
	mov	r1, #8	@,
	mov	r0, r4	@, NextInstId
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	strh	r3, [sp, #2]	@ movhi	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, para
	blx	ip	@ D.32769
.L483:
	movw	r3, #11160	@ tmp159,
	movt	r3, 1	@ tmp159,
	mla	r3, r3, r4, r6	@ tmp160, tmp159, NextInstId, tmp170
	str	r5, [r3, #436]	@ D.32767, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	str	r8, [r3, #440]	@ D.32767, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
.L482:
	mov	r1, r7	@, pPicBufID
	mov	r0, r4	@, NextInstId
	bl	DNR_Fsp_ShowPic	@
	adds	r0, r0, #0	@,,
	movne	r0, #1	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L488:
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	cmp	r8, r3	@ D.32767, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	bne	.L481	@,
	b	.L482	@
.L490:
	.align	2
.L489:
	.word	.LANCHOR0
	.word	g_event_report
	.fnend
	.size	DNR_Get2DFrameStore.part.6, .-DNR_Get2DFrameStore.part.6
	.align	2
	.global	DNR_Get2DFrameStore
	.type	DNR_Get2DFrameStore, %function
DNR_Get2DFrameStore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L494	@ tmp115,
	movw	r3, #11160	@ tmp117,
	movt	r3, 1	@ tmp117,
	mla	r3, r3, r0, r2	@ tmp118, tmp117, NextInstId, tmp115
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc,
	beq	.L493	@,
	mov	r0, #1	@,
	bx	lr	@
.L493:
	b	DNR_Get2DFrameStore.part.6	@
.L495:
	.align	2
.L494:
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
	movw	r3, #11160	@ tmp130,
	ldr	r7, .L514	@ tmp218,
	movt	r3, 1	@ tmp130,
	mla	r3, r3, r0, r7	@ tmp131, tmp130, NextInstId, tmp218
	ldr	r5, [r3, #16]	@ D.32785, s_DnrChan[NextInstId_5(D)].NeedStartAgain
	cmp	r5, #0	@ D.32785,
	bne	.L497	@,
	mov	r9, r2	@ pDnrCfg, pDnrCfg
	ldr	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mov	r6, r1	@ pPicBufID, pPicBufID
	mov	r8, r0	@ NextInstId, NextInstId
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L498	@,
	add	r3, r3, #75776	@ tmp144, tmp131,
	ldr	r10, [r3, #872]	@ D.32787, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
.L499:
	cmp	r10, #1	@ D.32787,
	beq	.L512	@,
	mov	r1, r9	@, pDnrCfg
	mov	r0, r8	@, NextInstId
	bl	DNR_DSDProcess	@
	cmp	r0, #1	@ result,
	beq	.L507	@,
	cmn	r0, #1	@ result,
	beq	.L506	@,
.L503:
	movw	r3, #11160	@ tmp187,
	mov	r2, #0	@ tmp190,
	movt	r3, 1	@ tmp187,
	mla	r3, r3, r8, r7	@ tmp188, tmp187, NextInstId, tmp218
	add	r1, r3, #75776	@ tmp202, tmp188,
	ldr	r1, [r1, #872]	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	str	r2, [r3, #404]	@ tmp190, s_DnrChan[NextInstId_5(D)].Cur1DImage.u32Is1D
	cmp	r1, r2	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag,
	str	r2, [r3, #408]	@ tmp190, s_DnrChan[NextInstId_5(D)].Cur1DImage.is_processed_by_dnr
	bne	.L501	@,
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L513	@,
.L507:
	mov	r5, #1	@ D.32785,
	mov	r0, r5	@, D.32785
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L497:
	ldr	r3, [r3, #444]	@ D.32786, s_DnrChan[NextInstId_5(D)].CurImageBufID
	mov	r5, #0	@ D.32785,
	str	r3, [r1]	@ D.32786, *pPicBufID_14(D)
.L501:
	mov	r0, r5	@, D.32785
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L498:
	add	r4, r3, #75776	@ tmp150, tmp131,
	ldr	r10, [r4, #872]	@ D.32787, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	cmp	r10, #0	@ D.32787,
	bne	.L499	@,
	bl	DNR_PrecessChanLastFrame	@
	cmp	r0, #1	@,
	ldrne	r10, [r4, #872]	@ D.32787, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	bne	.L499	@,
	b	.L507	@
.L512:
	movw	r0, #11160	@ tmp159,
	mov	r2, #392	@,
	movt	r0, 1	@ tmp159,
	mul	r0, r0, r8	@ tmp158, tmp159, NextInstId
	add	r4, r7, r0	@ tmp165, tmp218, tmp158
	add	r0, r0, #40	@ tmp160, tmp158,
	add	r3, r4, #75776	@ tmp166, tmp165,
	add	r0, r7, r0	@, tmp218, tmp160
	ldr	r1, [r3, #892]	@, s_DnrChan[NextInstId_5(D)].pCaptureImageIn
	bl	memcpy	@
	ldr	r3, [r4, #216]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	str	r10, [r4, #432]	@ D.32787, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	str	r3, [r6]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, *pPicBufID_14(D)
	b	.L503	@
.L513:
	mov	r1, r6	@, pPicBufID
	mov	r0, r8	@, NextInstId
	bl	DNR_Get2DFrameStore.part.6	@
	sub	r5, r0, #1	@ D.32785,,
	clz	r5, r5	@ D.32785, D.32785
	mov	r5, r5, lsr #5	@ D.32785, D.32785,
	b	.L501	@
.L506:
	mov	r5, r0	@ D.32785, result
	b	.L501	@
.L515:
	.align	2
.L514:
	.word	.LANCHOR0
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
	ldr	r4, .L571	@ tmp283,
	mov	r7, r0	@ pNextInstId, pNextInstId
	mov	r1, #84	@,
	add	r0, sp, #60	@ tmp291,,
	add	r5, r4, #73728	@ tmp280, tmp283,
	mov	r6, #0	@ tmp166,
	str	r6, [sp, #12]	@ tmp166, PicBufID
	bl	__memzero	@
	ldr	r3, [r5, #2928]	@ s_DnrChan[0].DNRCaptureEnableFlag, s_DnrChan[0].DNRCaptureEnableFlag
	cmp	r3, #1	@ s_DnrChan[0].DNRCaptureEnableFlag,
	beq	.L568	@,
.L517:
	ldr	r3, [r4, #12]	@ s_DnrChan[0].InstMode, s_DnrChan[0].InstMode
	cmp	r3, #0	@ s_DnrChan[0].InstMode,
	bne	.L518	@,
	ldr	r3, [r5, #2920]	@ s_DnrChan[0].DNRDataSourceFlag, s_DnrChan[0].DNRDataSourceFlag
	cmp	r3, #1	@ s_DnrChan[0].DNRDataSourceFlag,
	beq	.L518	@,
.L519:
	mvn	r0, #0	@ D.32804,
.L527:
	add	sp, sp, #252	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L518:
	mov	r0, #0	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ D.32806, eVidStd,
	cmp	r3, #2	@ D.32806,
	bhi	.L520	@,
	ldr	r3, .L571+4	@ tmp189,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L519	@,
.L520:
	sub	r3, r0, #14	@ D.32803, eVidStd,
	bics	r3, r3, #4	@ tmp289, D.32803,
	moveq	r3, #1	@ tmp195,
	movne	r3, #0	@ tmp195,
	cmp	r0, #4	@ eVidStd,
	movne	r6, r3	@, tmp200, tmp195
	orreq	r6, r3, #1	@,, tmp200, tmp195
	cmp	r6, #0	@ tmp200,
	bne	.L519	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L519	@,
	add	r1, sp, #144	@,,
	mov	r0, r6	@, tmp200
	bl	VCTRL_GetChanState	@
	ldr	r2, [r5, #2896]	@ s_DnrChan[0].s32FastForwardBackwardSpeed, s_DnrChan[0].s32FastForwardBackwardSpeed
	ldr	r3, [sp, #240]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	cmp	r2, #0	@ s_DnrChan[0].s32FastForwardBackwardSpeed,
	ldr	r1, .L571	@ tmp202,
	str	r3, [r4, #448]	@ stChanState.total_disp_frame_num, s_DnrChan[0].s32ValidImgNum
	blt	.L521	@,
	add	r0, r1, #49152	@ tmp284, tmp202,
	ldr	r3, [r0, #2372]	@ D.32807, s_DnrChan[0].TempImageNum
	str	r6, [r0, #2368]	@ tmp200, s_DnrChan[0].GetFirstIFrameFlag
	cmp	r3, #0	@ D.32807,
	ble	.L524	@,
	subs	r2, r3, #1	@ i, D.32807,
	bmi	.L524	@,
	mov	ip, #392	@ tmp221,
	mla	r1, ip, r3, r1	@ D.32812, tmp221, D.32807, tmp202
	add	r1, r1, #51200	@ ivtmp.361, D.32812,
	add	r1, r1, #112	@ ivtmp.361, ivtmp.361,
.L525:
	ldr	r3, [r1], #-392	@ D.32806, MEM[base: _82, offset: 0B]
	sub	r2, r2, #1	@ i, i,
	cmn	r2, #1	@ i,
	add	r3, r3, #178	@ tmp225, D.32806,
	str	r6, [r4, r3, asl #2]	@ tmp286, s_DnrChan[0].LogicImageIsUsed
	bne	.L525	@,
.L524:
	mov	r3, #0	@ tmp218,
	str	r3, [r0, #2372]	@ tmp218, s_DnrChan[0].TempImageNum
.L521:
	add	r2, sp, #60	@ tmp292,,
	add	r1, sp, #12	@,,
	mov	r0, #0	@,
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result,
	beq	.L519	@,
	cmn	r0, #1	@ result,
	beq	.L527	@,
	ldr	r3, [r4, #340]	@ D.32803, MEM[(struct IMAGE_DNR_S *)&s_DnrChan + 324B].video_standard
	sub	r2, r3, #10	@ D.32806, D.32803,
	cmp	r2, #2	@ D.32806,
	bls	.L569	@,
.L528:
	sub	r2, r3, #14	@ D.32803, D.32803,
	bics	r2, r2, #4	@ tmp290, D.32803,
	moveq	r6, #1	@ tmp237,
	movne	r6, #0	@ tmp237,
	cmp	r3, #4	@ D.32803,
	orreq	r6, r6, #1	@,, tmp242, tmp237
	cmp	r6, #0	@ tmp242,
	bne	.L519	@,
	ldr	r8, .L571	@ tmp243,
	add	r0, r8, #324	@, tmp243,
	bl	DNR_GetSourceImgType	@
	mov	r1, r6	@, tmp242
	mov	r2, r0	@, SourceImgStoreType
	mov	r9, r0	@ SourceImgStoreType,
	add	r0, sp, #16	@ tmp293,,
	bl	DNR_SetDetPara	@
	ldr	r0, [sp, #12]	@ PicBufID, PicBufID
	str	r9, [sp]	@ SourceImgStoreType,
	add	r3, sp, #16	@ tmp294,,
	add	r2, r8, #324	@, tmp243,
	mov	r1, r6	@, tmp242
	str	r0, [sp, #4]	@ PicBufID,
	add	r0, sp, #60	@ tmp295,,
	bl	DNR_SetDnrCfg	@
	cmn	r0, #1	@,
	beq	.L519	@,
	mov	r0, r6	@, tmp242
	ldr	r2, [sp, #12]	@, PicBufID
	add	r1, sp, #60	@ tmp296,,
	bl	DNR_SetImageLogic	@
	cmn	r0, #1	@,
	beq	.L519	@,
	ldr	r6, .L571+8	@ tmp281,
	ldr	r2, [sp, #12]	@ PicBufID, PicBufID
	ldr	r3, [r6, #12]	@ D.32808, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r2, [r8, #444]	@ PicBufID, s_DnrChan[0].CurImageBufID
	cmp	r3, #0	@ D.32808,
	beq	.L532	@,
	blx	r3	@ D.32808
.L532:
	ldr	r3, [r6, #8]	@ D.32809, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.32809,
	beq	.L533	@,
	add	r0, sp, #60	@ tmp297,,
	blx	r3	@ D.32809
.L533:
	ldr	r3, [r6, #16]	@ D.32808, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	mov	r1, #0	@ tmp259,
	ldr	r2, [r5, #2920]	@ s_DnrChan[0].DNRDataSourceFlag, s_DnrChan[0].DNRDataSourceFlag
	cmp	r3, r1	@ D.32808,
	strb	r1, [r4]	@ tmp259, s_DnrChan[0].DecChanRstFlag
	str	r2, [r5, #2924]	@ s_DnrChan[0].DNRDataSourceFlag, s_DnrChan[0].DNRCaptureStartFlag
	beq	.L534	@,
	blx	r3	@ D.32808
.L534:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L571+12	@ tmp269,
	str	r0, [r3, #20]	@, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L570	@,
.L536:
	mov	r3, #0	@ tmp276,
	mov	r2, #1	@ tmp278,
	str	r3, [r7]	@ tmp276, *pNextInstId_69(D)
	mov	r0, r3	@ D.32804, tmp276
	str	r2, [r4, #12]	@ tmp278, s_DnrChan[0].InstMode
	b	.L527	@
.L568:
	ldr	r2, [r4, #432]	@ s_DnrChan[0].s321DFrameIsProc, s_DnrChan[0].s321DFrameIsProc
	cmp	r2, #1	@ s_DnrChan[0].s321DFrameIsProc,
	strne	r3, [r5, #2920]	@ s_DnrChan[0].DNRCaptureEnableFlag, s_DnrChan[0].DNRDataSourceFlag
	strne	r6, [r5, #2928]	@ tmp166, s_DnrChan[0].DNRCaptureEnableFlag
	b	.L517	@
.L569:
	ldr	r2, .L571+4	@ tmp231,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L519	@,
	b	.L528	@
.L570:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, .L571+16	@ tmp270,
	ldr	r1, .L571+20	@ tmp273,
	ldr	r3, [r2, #3120]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.32806, last_rec_pos_time, currtime
	cmp	r3, r1	@ D.32806, g_TraceFramePeriod
	strhi	r0, [r2, #3120]	@ currtime, last_rec_pos_time
	b	.L536	@
.L572:
	.align	2
.L571:
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
	.word	.LANCHOR1
	.word	g_TraceFramePeriod
	.fnend
	.size	DNR_DoNextInstance, .-DNR_DoNextInstance
	.align	2
	.global	DNR_Wakeup
	.type	DNR_Wakeup, %function
DNR_Wakeup:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r4, .L599	@ tmp205,
	ldr	r3, [r4, #3060]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L574	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L596	@,
.L576:
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L574:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #3064]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r0, r3, r0	@ DelayTime, s_DnrCtrl.LastProcessTime,
	cmp	r0, #500	@ DelayTime,
	ble	.L576	@,
	ldr	r0, [r4, #3056]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r5, .L599+4	@ tmp204,
	ldr	r1, [r4, #3056]	@ D.32815, s_DnrCtrl.ThisInstID
	movw	ip, #11160	@ tmp155,
	movt	ip, 1	@ tmp155,
	movw	r2, #34079	@ tmp161,
	movt	r2, 20971	@ tmp161,
	mov	lr, #100	@ tmp163,
	mla	ip, ip, r1, r5	@ tmp156, tmp155, D.32815, tmp204
	ldr	ip, [ip, #216]	@ s_DnrChan[_26].Cur1DImage.image_id, s_DnrChan[_26].Cur1DImage.image_id
	umull	r2, r3, ip, r2	@ tmp160, s_DnrChan[_26].Cur1DImage.image_id, tmp161
	mov	r2, r3, lsr #5	@ tmp158,,
	mls	r3, lr, r2, ip	@ D.32816, tmp163, tmp158, s_DnrChan[_26].Cur1DImage.image_id
	add	r3, r3, #2	@ D.32816, D.32816,
	cmp	r0, r3	@, D.32816
	beq	.L597	@,
.L578:
	movw	r6, #11160	@ tmp189,
	mov	r0, r1	@, D.32815
	movt	r6, 1	@ tmp189,
	mla	r1, r6, r1, r5	@ tmp190, tmp189, D.32815, tmp204
	add	r1, r1, #40	@, tmp190,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r4, #3056]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	ldr	r1, .L599+8	@ tmp200,
	mov	r2, #0	@ tmp199,
	mla	r5, r6, r3, r5	@ tmp197, tmp189, s_DnrCtrl.ThisInstID, tmp204
	ldr	r3, [r1, #12]	@ D.32820, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r3, r2	@ D.32820,
	str	r2, [r5, #432]	@ tmp199, s_DnrChan[_54].s321DFrameIsProc
	beq	.L582	@,
	blx	r3	@ D.32820
.L582:
	mov	r3, #0	@ tmp202,
	mov	r0, #0	@,
	str	r3, [r4, #3060]	@ tmp202, s_DnrCtrl.DNRState
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L596:
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp145,
	str	r2, [r4, #3060]	@ tmp145, s_DnrCtrl.DNRState
	str	r3, [r4, #3056]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3064]	@, s_DnrCtrl.LastProcessTime
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L597:
	ldr	r6, .L599+12	@ tmp206,
	ldr	r3, [r6]	@ D.32817, g_event_report
	cmp	r3, #0	@ D.32817,
	beq	.L579	@,
	add	r2, sp, #8	@ tmp168,,
	mov	r0, r1	@, D.32815
	mov	ip, #1	@ tmp167,
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp167, para
	blx	r3	@ D.32817
	ldr	r1, [r4, #3056]	@ D.32815, s_DnrCtrl.ThisInstID
.L579:
	movw	r0, #11160	@ tmp172,
	movt	r0, 1	@ tmp172,
	mla	r0, r0, r1, r5	@ tmp173, tmp172, D.32815, tmp204
	add	r0, r0, #968	@, tmp173,
	bl	IMGQUE_GetLastImageID	@
	ldr	r3, [r6]	@ D.32817, g_event_report
	cmn	r0, #1	@ ret_val,
	beq	.L598	@,
	cmp	r3, #0	@ D.32817,
	beq	.L581	@,
	add	r2, sp, #8	@ tmp181,,
	mov	r1, #115	@,
	str	r0, [r2, #-4]!	@ ret_val,
	ldr	r0, [r4, #3056]	@, s_DnrCtrl.ThisInstID
	blx	r3	@ D.32817
.L581:
	mov	r1, #0	@,
	ldr	r0, [r4, #3056]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #3056]	@ D.32815, s_DnrCtrl.ThisInstID
	b	.L578	@
.L598:
	cmp	r3, #0	@ D.32817,
	beq	.L581	@,
	add	r2, sp, #8	@ tmp177,,
	mov	r0, #1	@ tmp176,
	mov	r1, #115	@,
	str	r0, [r2, #-4]!	@ tmp176,
	ldr	r0, [r4, #3056]	@, s_DnrCtrl.ThisInstID
	blx	r3	@ D.32817
	b	.L581	@
.L600:
	.align	2
.L599:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	g_dnr_hal_fun_ptr
	.word	g_event_report
	.fnend
	.size	DNR_Wakeup, .-DNR_Wakeup
	.align	2
	.global	DNR_PutYuv
	.type	DNR_PutYuv, %function
DNR_PutYuv:
	.fnstart
	@ args = 24, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #60
	sub	sp, sp, #60	@,,
	mov	r10, r1	@ pLuma, pLuma
	add	r1, sp, #48	@,,
	mov	fp, r3	@ PicHeight, PicHeight
	str	r2, [sp, #8]	@ PicWidth, %sfp
	mov	r5, r0	@ ChanID, ChanID
	bl	DNR_Fsp_ShowPic	@
	subs	r3, r0, #0	@ D.32824,
	str	r3, [sp, #4]	@ D.32824, %sfp
	bne	.L603	@,
	ldr	r9, [sp, #48]	@ D.32825, PicBufID
	mov	r6, #1	@ tmp213,
	mov	r7, #392	@ tmp153,
	movw	r3, #11160	@ tmp295,
	bfi	r3, r6, #16, #16	@ tmp295, tmp213,,
	ldr	r4, .L608	@ tmp151,
	mul	r7, r7, r9	@ tmp152, tmp153, D.32825
	ldr	r1, [sp, #96]	@ tmp505, Stride
	mla	r3, r3, r5, r7	@ tmp296, tmp295, ChanID, tmp152
	movw	r0, #11160	@ tmp155,
	mul	r1, fp, r1	@ D.32825, PicHeight, tmp505
	movt	r0, 1	@ tmp155,
	add	ip, r4, r3	@ tmp297, tmp151, tmp296
	str	ip, [sp, #28]	@ tmp297, %sfp
	movw	ip, #11160	@ tmp266,
	bfi	ip, r6, #16, #16	@ tmp266, tmp213,,
	movw	r3, #11160	@ tmp331,
	bfi	r3, r6, #16, #16	@ tmp331, tmp213,,
	mla	ip, ip, r5, r7	@ tmp267, tmp266, ChanID, tmp152
	str	r1, [sp, #16]	@ D.32825, %sfp
	mla	r0, r0, r5, r7	@ tmp156, tmp155, ChanID, tmp152
	mov	r1, r10	@, pLuma
	mla	r3, r3, r5, r7	@ tmp332, tmp331, ChanID, tmp152
	add	ip, r4, ip	@ tmp268, tmp151, tmp267
	add	ip, ip, #26368	@ tmp270, tmp268,
	add	r2, r4, r0	@ tmp165, tmp151, tmp156
	movw	r10, #26608	@ tmp166,
	add	r0, r0, #26368	@ tmp158, tmp156,
	mov	r8, ip	@ tmp270, tmp270
	movw	ip, #11160	@ tmp285,
	bfi	ip, r6, #16, #16	@ tmp285, tmp213,,
	add	r3, r4, r3	@ tmp333, tmp151, tmp332
	str	r9, [r2, r10]	@ D.32825, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].image_id
	add	r10, r3, #26368	@ tmp335, tmp333,
	movw	r9, #11160	@ tmp349,
	add	r3, r8, #152	@ tmp270, tmp270,
	bfi	r9, r6, #16, #16	@ tmp349, tmp213,,
	str	r3, [sp, #20]	@ tmp270, %sfp
	mla	r3, ip, r5, r7	@ tmp286, tmp285, ChanID, tmp152
	movw	ip, #11160	@ tmp322,
	bfi	ip, r6, #16, #16	@ tmp322, tmp213,,
	add	r0, r0, #64	@ tmp158, tmp158,
	mla	r9, r9, r5, r7	@ tmp350, tmp349, ChanID, tmp152
	add	r3, r4, r3	@ tmp287, tmp151, tmp286
	mla	ip, ip, r5, r7	@ tmp323, tmp322, ChanID, tmp152
	add	r8, r3, #26368	@ tmp289, tmp287,
	movw	r3, #11160	@ tmp340,
	bfi	r3, r6, #16, #16	@ tmp340, tmp213,,
	add	r9, r4, r9	@ tmp351, tmp151, tmp350
	add	r8, r8, #160	@ tmp289, tmp289,
	add	ip, r4, ip	@ tmp324, tmp151, tmp323
	str	r8, [sp, #24]	@ tmp289, %sfp
	mla	r3, r3, r5, r7	@ tmp341, tmp340, ChanID, tmp152
	add	r8, ip, #26368	@ tmp326, tmp324,
	add	r9, r9, #26368	@ tmp353, tmp351,
	add	r8, r8, #96	@ tmp326, tmp326,
	add	r9, r9, #184	@ tmp353, tmp353,
	str	r8, [sp, #32]	@ tmp326, %sfp
	str	r9, [sp, #40]	@ tmp353, %sfp
	add	r0, r4, r0	@ pLogic, tmp151, tmp158
	ldrd	r8, [sp, #112]	@ tmp518,,
	movw	lr, #11160	@ tmp248,
	str	r0, [sp, #12]	@ pLogic, %sfp
	bfi	lr, r6, #16, #16	@ tmp248, tmp213,,
	movw	r0, #26432	@ tmp517,
	add	r3, r4, r3	@ tmp342, tmp151, tmp341
	strd	r8, [r2, r0]	@ tmp518, tmp165, tmp517
	movw	r0, #26440	@ tmp184,
	strd	r8, [r2, r0]	@ tmp519, tmp165, tmp184
	add	r0, r3, #26368	@ tmp344, tmp342,
	mla	lr, lr, r5, r7	@ tmp249, tmp248, ChanID, tmp152
	add	r0, r0, #112	@ tmp344, tmp344,
	movw	ip, #11160	@ tmp257,
	str	r0, [sp, #36]	@ tmp344, %sfp
	bfi	ip, r6, #16, #16	@ tmp257, tmp213,,
	movw	r0, #26448	@ tmp193,
	strd	r8, [r2, r0]	@ tmp523, tmp165, tmp193
	movw	r0, #26456	@ tmp202,
	strd	r8, [r2, r0]	@ tmp524, tmp165, tmp202
	add	r2, r2, #26368	@ tmp212, tmp165,
	mla	ip, ip, r5, r7	@ tmp258, tmp257, ChanID, tmp152
	add	lr, r4, lr	@ tmp250, tmp151, tmp249
	str	r6, [r2, #132]	@ tmp213, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].DispEnableFlag
	movw	r2, #26552	@ tmp251,
	ldr	r0, [lr, r2]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].luma_2d_phy_addr
	movw	lr, #26520	@ tmp260,
	add	ip, r4, ip	@ tmp259, tmp151, tmp258
	movw	r3, #11160	@ tmp228,
	bfi	r3, r6, #16, #16	@ tmp228, tmp213,,
	movw	r9, #11160	@ tmp377,
	str	r0, [ip, lr]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].top_luma_phy_addr
	movw	lr, #11160	@ tmp313,
	bfi	lr, r6, #16, #16	@ tmp313, tmp213,,
	bfi	r9, r6, #16, #16	@ tmp377, tmp213,,
	mla	r3, r3, r5, r7	@ tmp229, tmp228, ChanID, tmp152
	ldr	r8, [sp, #4]	@ D.32824, %sfp
	mla	lr, lr, r5, r7	@ tmp314, tmp313, ChanID, tmp152
	movw	ip, #26536	@ tmp316,
	mla	r9, r9, r5, r7	@ tmp378, tmp377, ChanID, tmp152
	add	r3, r4, r3	@ tmp230, tmp151, tmp229
	add	lr, r4, lr	@ tmp315, tmp151, tmp314
	add	r3, r3, #26368	@ tmp232, tmp230,
	str	r0, [lr, ip]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].luma_phy_addr
	movw	lr, #11160	@ tmp275,
	bfi	lr, r6, #16, #16	@ tmp275, tmp213,,
	str	r8, [r3, #140]	@ D.32824, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].DistanceBeforeFirstFrame
	add	r2, r4, r9	@ tmp379, tmp151, tmp378
	ldr	r8, [sp, #96]	@ tmp530, Stride
	ldr	r9, [sp, #16]	@ D.32825, %sfp
	add	r2, r2, #26368	@ tmp381, tmp379,
	mla	lr, lr, r5, r7	@ tmp276, tmp275, ChanID, tmp152
	add	ip, r9, r0	@ D.32826, D.32825, D.32826
	add	r0, r0, r8	@ D.32825, D.32826, tmp530
	ldr	r8, [sp, #20]	@ tmp270, %sfp
	str	fp, [r2, #212]	@ PicHeight, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].image_height
	movw	r2, #11160	@ tmp424,
	add	lr, r4, lr	@ tmp277, tmp151, tmp276
	bfi	r2, r6, #16, #16	@ tmp424, tmp213,,
	str	ip, [r8, #4]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].top_chrom_phy_addr
	movw	r8, #26528	@ tmp278,
	str	r0, [lr, r8]	@ D.32825, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].btm_luma_phy_addr
	movw	r8, #11160	@ tmp463,
	bfi	r8, r6, #16, #16	@ tmp463, tmp213,,
	movw	r3, #11160	@ tmp395,
	mla	r2, r2, r5, r7	@ tmp425, tmp424, ChanID, tmp152
	bfi	r3, r6, #16, #16	@ tmp395, tmp213,,
	mla	r8, r8, r5, r7	@ tmp464, tmp463, ChanID, tmp152
	ldr	lr, [sp, #40]	@ tmp353, %sfp
	mla	r3, r3, r5, r7	@ tmp396, tmp395, ChanID, tmp152
	str	ip, [r10, #172]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].chrom_phy_addr
	ldr	r10, [sp, #96]	@ tmp533, Stride
	add	r8, r4, r8	@ tmp465, tmp151, tmp464
	add	r2, r4, r2	@ tmp426, tmp151, tmp425
	str	ip, [lr, #4]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].chrom_2d_phy_addr
	add	r2, r2, #26368	@ tmp428, tmp426,
	add	ip, r10, ip	@ D.32825, tmp533, D.32826
	add	r10, r8, #26368	@ tmp467, tmp465,
	add	r2, r2, #232	@ tmp428, tmp428,
	add	r10, r10, #200	@ tmp467, tmp467,
	str	r2, [sp, #44]	@ tmp428, %sfp
	add	r3, r4, r3	@ tmp397, tmp151, tmp396
	ldr	lr, [sp, #24]	@ tmp289, %sfp
	str	r10, [sp, #24]	@ tmp467, %sfp
	add	r3, r3, #26368	@ tmp399, tmp397,
	ldr	r10, [sp, #104]	@ tmp537, DispPicHeight
	movw	r0, #11160	@ tmp453,
	bfi	r0, r6, #16, #16	@ tmp453, tmp213,,
	movw	fp, #11160	@ tmp414,
	bfi	fp, r6, #16, #16	@ tmp414, tmp213,,
	str	ip, [lr, #4]	@ D.32825, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].btm_chrom_phy_addr
	str	r10, [r3, #220]	@ tmp537, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].disp_height
	movw	r3, #11160	@ tmp218,
	mla	r0, r0, r5, r7	@ tmp454, tmp453, ChanID, tmp152
	bfi	r3, r6, #16, #16	@ tmp218, tmp213,,
	mla	fp, fp, r5, r7	@ tmp415, tmp414, ChanID, tmp152
	movw	lr, #11160	@ tmp304,
	mla	r3, r3, r5, r7	@ tmp219, tmp218, ChanID, tmp152
	bfi	lr, r6, #16, #16	@ tmp304, tmp213,,
	add	r0, r4, r0	@ tmp455, tmp151, tmp454
	movw	ip, #26640	@ tmp456,
	add	r8, r9, r9, lsl #1	@ D.32825, D.32825, D.32825,
	add	fp, r4, fp	@ tmp416, tmp151, tmp415
	str	r6, [r0, ip]	@ tmp213, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].chroma_idc
	add	r3, r4, r3	@ tmp220, tmp151, tmp219
	ldr	ip, [sp, #28]	@ tmp297, %sfp
	add	fp, fp, #26368	@ tmp418, tmp416,
	str	r3, [sp, #16]	@ tmp220, %sfp
	add	r8, r8, r8, lsr #31	@ tmp473, D.32825, D.32825,
	mla	lr, lr, r5, r7	@ tmp305, tmp304, ChanID, tmp152
	ldr	r3, [sp, #104]	@ tmp541, DispPicHeight
	movw	r0, #26480	@ tmp539,
	movw	r2, #11160	@ tmp443,
	ldr	ip, [ip, r0]	@ D.32827, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].luma_2d_vir_addr
	bfi	r2, r6, #16, #16	@ tmp443, tmp213,,
	mov	r3, r3, lsr r6	@ D.32826, tmp541,
	str	r3, [fp, #228]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].disp_center_y
	mov	r3, r8, asr r6	@ D.32825, tmp473,
	ldr	fp, [sp, #96]	@ tmp547, Stride
	str	r3, [sp, #28]	@ D.32825, %sfp
	add	lr, r4, lr	@ tmp306, tmp151, tmp305
	ldr	r3, [sp, #44]	@ tmp428, %sfp
	movw	r0, #26464	@ tmp307,
	str	ip, [lr, r0]	@ D.32827, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].luma_vir_addr
	movw	r10, #11160	@ tmp238,
	ldr	lr, [sp, #32]	@ tmp326, %sfp
	bfi	r10, r6, #16, #16	@ tmp238, tmp213,,
	str	fp, [r3, #4]	@ tmp547, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].image_stride
	movw	r3, #11160	@ tmp404,
	mla	r2, r2, r5, r7	@ tmp444, tmp443, ChanID, tmp152
	bfi	r3, r6, #16, #16	@ tmp404, tmp213,,
	mov	r0, ip	@, D.32827
	add	ip, ip, r9	@ D.32827, D.32827, D.32825
	mla	r3, r3, r5, r7	@ tmp405, tmp404, ChanID, tmp152
	str	ip, [lr, #4]	@ D.32827, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].chrom_vir_addr
	movw	r9, #11160	@ tmp358,
	ldr	lr, [sp, #36]	@ tmp344, %sfp
	bfi	r9, r6, #16, #16	@ tmp358, tmp213,,
	ldr	r8, [sp, #4]	@ D.32824, %sfp
	mla	r10, r10, r5, r7	@ tmp239, tmp238, ChanID, tmp152
	add	r2, r4, r2	@ tmp445, tmp151, tmp444
	add	r2, r2, #26368	@ tmp447, tmp445,
	str	ip, [lr, #4]	@ D.32827, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].chrom_2d_vir_addr
	mla	r9, r9, r5, r7	@ tmp359, tmp358, ChanID, tmp152
	add	r3, r4, r3	@ tmp406, tmp151, tmp405
	movw	lr, #11160	@ tmp368,
	str	r3, [sp, #20]	@ tmp406, %sfp
	bfi	lr, r6, #16, #16	@ tmp368, tmp213,,
	ldr	r3, [sp, #16]	@ tmp220, %sfp
	str	r8, [r2, #244]	@ D.32824, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].error_level
	movw	ip, #11160	@ tmp386,
	movw	r2, #11160	@ tmp433,
	bfi	ip, r6, #16, #16	@ tmp386, tmp213,,
	bfi	r2, r6, #16, #16	@ tmp433, tmp213,,
	add	r10, r4, r10	@ tmp240, tmp151, tmp239
	mla	lr, lr, r5, r7	@ tmp369, tmp368, ChanID, tmp152
	movw	fp, #26504	@ tmp221,
	mla	r2, r2, r5, r7	@ tmp434, tmp433, ChanID, tmp152
	str	r8, [r3, fp]	@ D.32824, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].DispFrameDistance
	add	r9, r4, r9	@ tmp360, tmp151, tmp359
	movw	fp, #26512	@ tmp241,
	mla	ip, ip, r5, r7	@ tmp387, tmp386, ChanID, tmp152
	str	r8, [r10, fp]	@ D.32824, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].GopNum
	movw	fp, #26560	@ tmp361,
	ldr	r3, [sp, #100]	@ tmp554, DispPicWidth
	str	r8, [r9, fp]	@ D.32824, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].is_fld_save
	add	lr, r4, lr	@ tmp370, tmp151, tmp369
	ldr	fp, [sp, #8]	@ PicWidth, %sfp
	add	r10, r4, r2	@ tmp435, tmp151, tmp434
	add	ip, r4, ip	@ tmp388, tmp151, tmp387
	movw	r9, #26576	@ tmp371,
	movw	r2, #26584	@ tmp389,
	str	fp, [lr, r9]	@ PicWidth, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].image_width
	movw	r9, #26600	@ tmp427,
	str	r3, [ip, r2]	@ tmp554, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].disp_width
	mov	ip, r3, lsr r6	@ D.32826, tmp555,
	ldr	fp, [sp, #28]	@ D.32825, %sfp
	movw	lr, #26592	@ tmp407,
	str	r8, [r10, r9]	@ D.32824, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].frame_rate
	movw	r9, #11296	@ tmp468,
	ldr	r3, [sp, #20]	@ tmp406, %sfp
	ldr	r10, [sp, #24]	@ tmp467, %sfp
	mov	r2, fp	@, D.32825
	str	ip, [r3, lr]	@ D.32826, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].disp_center_x
	str	r9, [r10, #4]	@ tmp468, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].format
	bl	memcpy	@
	movw	r3, #11160	@ tmp483,
	bfi	r3, r6, #16, #16	@ tmp483, tmp213,,
	mla	r7, r3, r5, r7	@ tmp484, tmp483, ChanID, tmp152
	movw	r3, #26480	@ tmp558,
	add	r7, r4, r7	@ tmp485, tmp151, tmp484
	ldr	r7, [r7, r3]	@ D.32827, MEM[(struct IMAGE *)&s_DnrChan][ChanID_4(D)].LogicImagePool[_7].luma_2d_vir_addr
	mov	r0, r7	@, D.32827
	bl	MEM_Vir2Phy	@
	mov	r2, fp	@, D.32825
	mov	r1, r0	@,
	mov	r0, r7	@, D.32827
	bl	KernelFlushCache	@
	movw	r0, #11160	@ tmp490,
	bfi	r0, r6, #16, #16	@ tmp490, tmp213,,
	ldr	r6, [sp, #12]	@ pLogic, %sfp
	mla	r0, r0, r5, r4	@ tmp491, tmp490, ChanID, tmp151
	mov	r1, r6	@, pLogic
	add	r0, r0, #968	@, tmp491,
	bl	IMGQUE_InsertImage	@
	ldr	r0, [sp, #48]	@ PicBufID, PicBufID
	movw	r3, #19174	@ tmp495,
	ldr	r1, .L608+4	@ tmp500,
	mov	r2, #2	@ tmp499,
	mla	r3, r3, r5, r0	@ tmp496, tmp495, ChanID, PicBufID
	ldr	ip, [r1]	@ D.32829, g_event_report
	cmp	ip, #0	@ D.32829,
	add	r3, r3, #178	@ tmp498, tmp496,
	str	r2, [r4, r3, asl #2]	@ tmp499, s_DnrChan[ChanID_4(D)].LogicImageIsUsed
	beq	.L602	@,
	add	r2, sp, #56	@ tmp501,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r6, [r2, #-4]!	@ pLogic, para
	blx	ip	@ D.32829
.L602:
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L603:
	mvn	r3, #0	@ D.32824,
	str	r3, [sp, #4]	@ D.32824, %sfp
	b	.L602	@
.L609:
	.align	2
.L608:
	.word	.LANCHOR0
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
	ldr	r2, .L611	@ tmp113,
	mla	r1, r3, r0, r1	@ tmp116, tmp115, ChanID, PicBufID
	mov	r3, #0	@ tmp118,
	mov	r0, r3	@, tmp118
	add	r1, r1, #178	@ tmp117, tmp116,
	str	r3, [r2, r1, asl #2]	@ tmp118, s_DnrChan[ChanID_2(D)].LogicImageIsUsed
	bx	lr	@
.L612:
	.align	2
.L611:
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
	mov	r4, r4, lsr #3	@ D.32845, p_image_8(D)->image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L619	@,
	ldr	r6, [r7, #148]	@ D.32845, p_image_8(D)->image_height
	cmp	r6, #0	@ D.32845,
	beq	.L620	@,
	ldr	r5, [r7, #172]	@ p_image_8(D)->image_stride, p_image_8(D)->image_stride
	mov	lr, #0	@ y,
	ldr	ip, [r7, #144]	@ D.32846, p_image_8(D)->image_width
	mov	r0, lr	@ CheckSum, y
	bic	r5, r5, #3	@ D.32845, p_image_8(D)->image_stride,
.L618:
	cmp	ip, #0	@ D.32846,
	add	r1, r1, r5	@ p32, p32, D.32845
	beq	.L616	@,
	mov	r3, #0	@ x,
.L617:
	mov	r2, r3, asr #2	@ D.32847, x,
	add	r3, r3, #1	@ x, x,
	cmp	r3, ip	@ x, D.32846
	ldr	r2, [r1, r2, asl #2]	@ *_29, *_29
	add	r0, r0, r2	@ CheckSum, CheckSum, *_29
	bne	.L617	@,
.L616:
	add	lr, lr, r4	@ y, y, D.32845
	cmp	r6, lr	@ D.32845, y
	bhi	.L618	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L619:
	mov	r0, r1	@ D.32846, p32
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L620:
	mov	r0, r6	@ CheckSum, D.32845
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
	movw	r3, #11160	@ tmp166,
	ldr	r6, .L666	@ tmp322,
	movt	r3, 1	@ tmp166,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r7, r1	@ pLogic, pLogic
	mov	r5, r0	@ ChanID, ChanID
	mla	r3, r3, r0, r6	@ tmp167, tmp166, ChanID, tmp322
	ldr	r4, [r3, #444]	@ PicBufID, s_DnrChan[ChanID_10(D)].CurImageBufID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r1, [r7, #176]	@ pLogic_15(D)->image_id, pLogic_15(D)->image_id
	movw	r2, #34079	@ tmp172,
	movt	r2, 20971	@ tmp172,
	mov	ip, #100	@ tmp174,
	umull	r2, r3, r1, r2	@ tmp171, pLogic_15(D)->image_id, tmp172
	mov	r2, r3, lsr #5	@ tmp169,,
	mls	r3, ip, r2, r1	@ D.32874, tmp174, tmp169, pLogic_15(D)->image_id
	add	r3, r3, #2	@ D.32874, D.32874,
	cmp	r0, r3	@, D.32874
	beq	.L663	@,
.L628:
	movw	r3, #11160	@ tmp183,
	ldr	r8, .L666	@ tmp181,
	movt	r3, 1	@ tmp183,
	mul	r0, r3, r5	@ tmp182, tmp183, ChanID
	add	r9, r6, r0	@ tmp184, tmp322, tmp182
	add	fp, r9, #75776	@ tmp186, tmp184,
	ldr	r3, [fp, #848]	@ s_DnrChan[ChanID_10(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_10(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_10(D)].s32FastForwardBackwardSpeed,
	blt	.L630	@,
	add	r0, r0, #968	@ tmp191, tmp182,
	str	r4, [r7, #176]	@ PicBufID, pLogic_15(D)->image_id
	add	r0, r8, r0	@, tmp181, tmp191
	mov	r1, r7	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.32873,
	bne	.L661	@,
	movw	r3, #19174	@ tmp195,
	mov	r0, #11	@,
	mla	r4, r3, r5, r4	@ tmp196, tmp195, ChanID, PicBufID
	mov	r3, #2	@ tmp198,
	add	r4, r4, #178	@ tmp197, tmp196,
	str	r3, [r8, r4, asl #2]	@ tmp198, s_DnrChan[ChanID_10(D)].LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L664	@,
.L633:
	add	r4, r7, #188	@ ivtmp.389, pLogic,
	add	r8, r7, #204	@ D.32883, pLogic,
.L643:
	ldr	r1, [r4, #4]!	@ D.32879, MEM[base: _82, offset: 0B]
	mov	r0, r5	@, ChanID
	cmp	r1, #0	@ D.32879,
	beq	.L642	@,
	bl	MarkUsdByDnr	@
.L642:
	cmp	r4, r8	@ ivtmp.389, D.32883
	bne	.L643	@,
	movw	r3, #11160	@ tmp314,
	movt	r3, 1	@ tmp314,
	mla	r6, r3, r5, r6	@ tmp315, tmp314, ChanID, tmp322
	add	r6, r6, #75776	@ tmp317, tmp315,
	ldr	r3, [r6, #848]	@ s_DnrChan[ChanID_10(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_10(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_10(D)].s32FastForwardBackwardSpeed,
	blt	.L645	@,
	ldr	r3, .L666+4	@ tmp319,
	ldr	r3, [r3]	@ D.32875, g_event_report
	cmp	r3, #0	@ D.32875,
	beq	.L645	@,
	add	r2, sp, #16	@ tmp320,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r7, [r2, #-4]!	@ pLogic, para
	blx	r3	@ D.32875
	mov	r0, #0	@ D.32873,
.L661:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L630:
	movw	ip, #51520	@ tmp213,
	add	r10, r9, #51456	@ tmp214, tmp184,
	ldr	lr, [r9, ip]	@ s_DnrChan[ChanID_10(D)].GetFirstIFrameFlag, s_DnrChan[ChanID_10(D)].GetFirstIFrameFlag
	add	r10, r10, #64	@ tmp214, tmp214,
	cmp	lr, #0	@ s_DnrChan[ChanID_10(D)].GetFirstIFrameFlag,
	bne	.L634	@,
	ldr	r3, [r10, #4]	@ D.32876, s_DnrChan[ChanID_10(D)].TempImageNum
	cmp	r3, #0	@ D.32876,
	ble	.L637	@,
	subs	r1, r3, #1	@ i, D.32876,
	bmi	.L637	@,
	mov	r2, #392	@ tmp231,
	movw	ip, #19174	@ tmp324,
	mla	r3, r2, r3, r0	@ D.32878, tmp231, D.32876, tmp182
	mov	r0, lr	@ tmp326, s_DnrChan[ChanID_10(D)].GetFirstIFrameFlag
	mul	ip, ip, r5	@ tmp325, tmp324, ChanID
	add	r3, r3, #51200	@ D.32878, D.32878,
	add	r3, r3, #112	@ D.32878, D.32878,
	add	r2, r8, r3	@ ivtmp.401, tmp181, D.32878
.L638:
	ldr	r3, [r2], #-392	@ D.32874, MEM[base: _96, offset: 0B]
	sub	r1, r1, #1	@ i, i,
	cmn	r1, #1	@ i,
	add	r3, ip, r3	@ tmp240, tmp325, D.32874
	add	r3, r3, #178	@ tmp241, tmp240,
	str	r0, [r6, r3, asl #2]	@ tmp326, s_DnrChan[ChanID_10(D)].LogicImageIsUsed
	bne	.L638	@,
.L637:
	movw	r3, #11160	@ tmp224,
	mov	r2, #0	@ tmp228,
	movt	r3, 1	@ tmp224,
	mla	r3, r3, r5, r6	@ tmp225, tmp224, ChanID, tmp322
	add	r3, r3, #51456	@ tmp227, tmp225,
	str	r2, [r3, #68]	@ tmp228, s_DnrChan[ChanID_10(D)].TempImageNum
	b	.L633	@
.L645:
	mov	r0, #0	@ D.32873,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L663:
	ldr	r3, .L666+4	@ tmp178,
	mov	r2, #1	@ tmp177,
	str	r2, [r7, #224]	@ tmp177, pLogic_15(D)->last_frame
	ldr	r3, [r3]	@ D.32875, g_event_report
	cmp	r3, #0	@ D.32875,
	beq	.L629	@,
	add	r2, sp, #16	@ tmp180,,
	mov	r0, #0	@ tmp179,
	mov	r1, #115	@,
	str	r0, [r2, #-4]!	@ tmp179, para
	mov	r0, r5	@, ChanID
	blx	r3	@ D.32875
.L629:
	mov	r1, #0	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L628	@
.L634:
	str	r4, [r7, #176]	@ PicBufID, pLogic_15(D)->image_id
	mov	r3, #392	@ tmp251,
	ldr	lr, [r10, #4]	@ D.32876, s_DnrChan[ChanID_10(D)].TempImageNum
	mov	r2, r3	@, tmp251
	mov	r1, r7	@, pLogic
	str	ip, [sp, #4]	@ tmp213, %sfp
	mla	r3, r3, lr, r0	@ tmp254, tmp251, D.32876, tmp182
	add	r0, r3, #51456	@ tmp256, tmp254,
	add	r0, r0, #72	@ tmp256, tmp256,
	add	r0, r8, r0	@, tmp181, tmp256
	str	r3, [sp]	@ tmp254, %sfp
	bl	memcpy	@
	movw	r2, #19174	@ tmp264,
	mla	r4, r2, r5, r4	@ tmp265, tmp264, ChanID, PicBufID
	ldr	lr, [fp, #864]	@ s_DnrChan[ChanID_10(D)].u32VoFrmNum, s_DnrChan[ChanID_10(D)].u32VoFrmNum
	ldr	r2, [r10, #4]	@ s_DnrChan[ChanID_10(D)].TempImageNum, s_DnrChan[ChanID_10(D)].TempImageNum
	mov	r0, #4	@ tmp267,
	ldr	r1, [r9, #448]	@ s_DnrChan[ChanID_10(D)].s32ValidImgNum, s_DnrChan[ChanID_10(D)].s32ValidImgNum
	add	r2, r2, #1	@ D.32876, s_DnrChan[ChanID_10(D)].TempImageNum,
	add	r4, r4, #178	@ tmp266, tmp265,
	rsb	r1, lr, r1	@ D.32874, s_DnrChan[ChanID_10(D)].u32VoFrmNum, s_DnrChan[ChanID_10(D)].s32ValidImgNum
	str	r2, [r10, #4]	@ D.32876, s_DnrChan[ChanID_10(D)].TempImageNum
	cmp	r2, r1	@ D.32876, D.32874
	str	r0, [r8, r4, asl #2]	@ tmp267, s_DnrChan[ChanID_10(D)].LogicImageIsUsed
	ldmia	sp, {r3, ip}	@,,
	bcc	.L665	@,
	mov	r3, #0	@ tmp311,
	str	r3, [r9, ip]	@ tmp311, s_DnrChan[ChanID_10(D)].GetFirstIFrameFlag
.L641:
	mov	r1, r7	@, pLogic
	mov	r0, r5	@, ChanID
	bl	DNR_PushTempImageToVOQ	@
	b	.L633	@
.L664:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L666+8	@ tmp199,
	ldr	r1, .L666+12	@ tmp204,
	add	r3, r3, r5, lsl #2	@ tmp200, tmp199, ChanID,
	ldr	r2, [r3, #3124]	@ tmp203, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r2, r0	@ D.32874, tmp203, currtime
	cmp	r2, r1	@ D.32874, g_TraceFramePeriod
	strhi	r0, [r3, #3124]	@ currtime, last_rec_pos_time
	b	.L633	@
.L665:
	add	r2, r8, r3	@ tmp301, tmp181, tmp254
	movw	r3, #51752	@ tmp302,
	ldr	r3, [r2, r3]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_10(D)].TempImagePool[_45].last_frame, MEM[(struct IMAGE *)&s_DnrChan][ChanID_10(D)].TempImagePool[_45].last_frame
	cmp	r3, #1	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_10(D)].TempImagePool[_45].last_frame,
	bne	.L633	@,
	b	.L641	@
.L667:
	.align	2
.L666:
	.word	.LANCHOR0
	.word	g_event_report
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
	ldr	r1, .L686	@ tmp173,
	movt	r3, 1	@ tmp126,
	mul	r3, r3, r0	@ tmp125, tmp126, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r2, r1, r3	@ tmp127, tmp173, tmp125
	add	lr, r2, #75776	@ tmp134, tmp127,
	ldr	r2, [r2, #444]	@ PicBufID, s_DnrChan[ChanID_5(D)].CurImageBufID
	ldr	ip, [lr, #872]	@ D.32892, s_DnrChan[ChanID_5(D)].DNRDataSourceFlag
	cmp	ip, #0	@ D.32892,
	bne	.L669	@,
	mov	lr, #392	@ tmp137,
	mla	r3, lr, r2, r3	@ tmp140, tmp137, PicBufID, tmp125
	add	r3, r3, #26368	@ tmp142, tmp140,
	add	r3, r3, #64	@ tmp142, tmp142,
	add	r3, r1, r3	@ pLogic, tmp173, tmp142
.L670:
	cmp	r0, #0	@ ChanID,
	bne	.L680	@,
	ldr	r2, [r3, #144]	@ pLogic_1->image_width, pLogic_1->image_width
	cmp	r2, #0	@ pLogic_1->image_width,
	beq	.L680	@,
	cmp	ip, #0	@ D.32892,
	mov	r4, r0	@ ChanID, ChanID
	beq	.L685	@,
	cmp	ip, #1	@ D.32892,
	bne	.L680	@,
	ldr	r2, .L686+4	@ tmp160,
	ldr	r1, [r2, #2924]	@ s_DnrChan[0].DNRCaptureStartFlag, s_DnrChan[0].DNRCaptureStartFlag
	cmp	r1, #1	@ s_DnrChan[0].DNRCaptureStartFlag,
	bne	.L680	@,
	ldr	r1, .L686+8	@ tmp170,
	str	r0, [r2, #2920]	@ ChanID, s_DnrChan[0].DNRDataSourceFlag
	str	r0, [r2, #2924]	@ ChanID, s_DnrChan[0].DNRCaptureStartFlag
	ldr	ip, [r1]	@ D.32895, g_event_report
	cmp	ip, #0	@ D.32895,
	beq	.L675	@,
	add	r2, sp, #8	@ tmp171,,
	mov	r1, #21	@,
	str	r3, [r2, #-4]!	@ pLogic, para
	blx	ip	@ D.32895
	mov	r0, r4	@ D.32891, ChanID
.L671:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L669:
	cmp	ip, #1	@ D.32892,
	bne	.L680	@,
	ldr	r3, [lr, #896]	@ pLogic, s_DnrChan[ChanID_5(D)].pCaptureImageOut
	b	.L670	@
.L685:
	ldrsb	r1, [r1]	@ s_DnrChan[0].DecChanRstFlag, s_DnrChan[0].DecChanRstFlag
	ldr	r2, .L686	@ tmp150,
	cmp	r1, #1	@ s_DnrChan[0].DecChanRstFlag,
	streq	ip, [r2, #16]	@ D.32892, s_DnrChan[0].NeedStartAgain
	moveq	r0, ip	@ D.32891, D.32892
	beq	.L671	@,
	ldr	r2, [r2, #16]	@ s_DnrChan[0].NeedStartAgain, s_DnrChan[0].NeedStartAgain
	cmp	r2, #0	@ s_DnrChan[0].NeedStartAgain,
	beq	.L674	@,
.L675:
	mov	r0, #0	@ D.32891,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L680:
	mvn	r0, #0	@ D.32891,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L674:
	mov	r1, r3	@, pLogic
	mov	r0, ip	@, D.32892
	bl	DNR_ProcessDnrImage	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.32896,
	moveq	r0, #1	@ D.32896,
	rsb	r0, r0, #0	@ D.32891, D.32896
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L687:
	.align	2
.L686:
	.word	.LANCHOR0
	.word	.LANCHOR0+73728
	.word	g_event_report
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
	ldr	r4, .L714	@ tmp220,
	ldr	r0, .L714+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #3128]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r3, #44]	@ dat, *_14
	tst	r3, #1	@ dat,
	beq	.L700	@,
	ldr	r3, .L714+8	@ tmp150,
	ldr	r3, [r3, #20]	@ D.32902, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r3, #0	@ D.32902,
	beq	.L690	@,
	blx	r3	@ D.32902
.L690:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L709	@,
	ldr	r5, .L714+12	@ tmp221,
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	bne	.L710	@,
.L695:
	ldr	r3, [r4, #3060]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	ldr	r6, .L714	@ tmp182,
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	beq	.L711	@,
.L700:
	ldr	r0, .L714+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L709:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #3056]	@ D.32900, s_DnrCtrl.ThisInstID
	ldr	r2, .L714+16	@ tmp157,
	ldr	r5, .L714+12	@ tmp221,
	add	r3, r4, r3, lsl #2	@ tmp153, tmp220, D.32900,
	ldr	r1, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	ldr	r2, [r3, #3144]	@ tmp156, last_rec_pos_time
	rsb	r2, r2, r0	@ D.32903, tmp156, currtime
	cmp	r2, r1	@ D.32903, g_TraceFramePeriod
	strhi	r0, [r3, #3144]	@ currtime, last_rec_pos_time
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	beq	.L695	@,
.L710:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #16]	@ D.32903, g_VfmwGlobalStat[0].u32DaBeginTime
	ldr	r3, [r5, #20]	@ D.32903, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r6, #0	@ tmp173,
	add	r2, r1, #49920	@ D.32903, D.32903,
	str	r6, [r5, #20]	@ tmp173, g_VfmwGlobalStat[0].u32DaLastStartTime
	add	r2, r2, #80	@ D.32903, D.32903,
	cmp	r2, r3	@ D.32903, D.32903
	strcc	r3, [r5, #16]	@ D.32903, g_VfmwGlobalStat[0].u32DaBeginTime
	movcc	r1, r3	@ D.32903, D.32903
	ldrcs	r2, [r5, #24]	@ D.32905, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	movcc	r2, #0	@ D.32905,
	rsb	r1, r1, r0	@ Period, D.32903, CurTime
	rsb	r0, r3, r0	@ D.32903, D.32903, CurTime
	cmp	r1, #1000	@ Period,
	add	r0, r0, r2	@ D.32903, D.32903, D.32905
	str	r0, [r5, #24]	@ D.32903, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	ldr	r5, .L714+12	@ tmp171,
	bcc	.L695	@,
	mov	r3, #1000	@ tmp176,
	mul	r0, r3, r0	@, tmp176, D.32903
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #3060]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	str	r6, [r5, #16]	@ tmp173, g_VfmwGlobalStat[0].u32DaBeginTime
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	ldr	r6, .L714	@ tmp182,
	str	r0, [r5, #28]	@, g_VfmwGlobalStat[0].u32DaDnrLoad
	bne	.L700	@,
.L711:
	ldr	r0, [r6, #3056]	@ D.32900, s_DnrCtrl.ThisInstID
	movw	r3, #11160	@ tmp187,
	ldr	r5, .L714+20	@ tmp219,
	movt	r3, 1	@ tmp187,
	mla	r3, r3, r0, r5	@ tmp188, tmp187, D.32900, tmp219
	ldr	r3, [r3, #12]	@ s_DnrChan[_50].InstMode, s_DnrChan[_50].InstMode
	cmp	r3, #1	@ s_DnrChan[_50].InstMode,
	beq	.L712	@,
.L701:
	movw	r6, #11160	@ tmp196,
	mov	r3, #0	@ tmp193,
	movt	r6, 1	@ tmp196,
	str	r3, [r4, #3060]	@ tmp193, s_DnrCtrl.DNRState
	mul	r1, r6, r0	@ tmp195, tmp196, D.32900
	ldr	r8, .L714	@ tmp192,
	ldr	r7, .L714+20	@ tmp194,
	add	r5, r5, r1	@ tmp197, tmp219, tmp195
	ldr	r5, [r5, #16]	@ s_DnrChan[_76].NeedStartAgain, s_DnrChan[_76].NeedStartAgain
	cmp	r5, r3	@ s_DnrChan[_76].NeedStartAgain,
	beq	.L713	@,
.L702:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L700	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp217,
	str	r2, [r4, #3060]	@ tmp217, s_DnrCtrl.DNRState
	str	r3, [r4, #3056]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #3064]	@, s_DnrCtrl.LastProcessTime
	b	.L700	@
.L713:
	add	r1, r1, #40	@ tmp203, tmp195,
	add	r1, r7, r1	@, tmp194, tmp203
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #3056]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r6, r6, r3, r7	@ tmp210, tmp196, s_DnrCtrl.ThisInstID, tmp194
	str	r5, [r6, #432]	@ s_DnrChan[_76].NeedStartAgain, s_DnrChan[_58].s321DFrameIsProc
	b	.L702	@
.L712:
	bl	DNR_ProcessDnrReturn	@
	ldr	r0, [r6, #3056]	@ D.32900, s_DnrCtrl.ThisInstID
	b	.L701	@
.L715:
	.align	2
.L714:
	.word	.LANCHOR1
	.word	g_TaskLock
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
	.word	g_TraceFramePeriod
	.word	.LANCHOR0
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
	ldr	r2, .L721	@ tmp122,
	movw	r3, #11160	@ tmp124,
	movt	r3, 1	@ tmp124,
	mla	r0, r3, r0, r2	@ tmp125, tmp124, ChanID, tmp122
	add	r3, r0, #75776	@ tmp127, tmp125,
	ldr	r0, [r3, #900]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable
	cmp	r0, #1	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable,
	beq	.L720	@,
	mov	r0, #1	@ D.32911,
	bx	lr	@
.L720:
	ldr	r2, [r3, #904]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	ldr	r0, [r1, #144]	@ p_image_5(D)->image_width, p_image_5(D)->image_width
	cmp	r0, r2	@ p_image_5(D)->image_width, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	bhi	.L719	@,
	ldr	r0, [r3, #908]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r1, #148]	@ p_image_5(D)->image_height, p_image_5(D)->image_height
	cmp	r2, r0	@ p_image_5(D)->image_height, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	movhi	r0, #0	@ D.32911,
	movls	r0, #1	@ D.32911,
	bx	lr	@
.L719:
	mov	r0, #0	@ D.32911,
	bx	lr	@
.L722:
	.align	2
.L721:
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
	add	r4, r1, #188	@ ivtmp.419, pImage,
	ldr	r8, .L738	@ tmp130,
	add	r7, r1, #204	@ D.32938, pImage,
	ldr	r9, .L738+4	@ tmp131,
	mov	r6, r1	@ pImage, pImage
	mov	r5, r0	@ ChanID, ChanID
	mov	r10, #0	@ tmp132,
.L725:
	ldr	r2, [r4, #4]!	@ D.32931, MEM[base: _21, offset: 0B]
	cmp	r2, #0	@ D.32931,
	beq	.L724	@,
	ldr	r3, [r8, r5, asl #2]	@ tmp123, pstVdecUsdPool
	cmp	r3, #0	@ tmp123,
	beq	.L724	@,
	ldr	r3, [r9, r5, asl #2]	@ D.32933, s_pstVfmwChan
	cmp	r3, #0	@ D.32933,
	add	r1, r3, #208896	@ tmp126, D.32933,
	beq	.L724	@,
	ldr	r3, [r1, #2932]	@ _9->u32ChanTick, _9->u32ChanTick
	ldr	r1, [r6, #384]	@ pImage_5(D)->u32ChanTick, pImage_5(D)->u32ChanTick
	cmp	r1, r3	@ pImage_5(D)->u32ChanTick, _9->u32ChanTick
	beq	.L737	@,
.L724:
	cmp	r4, r7	@ ivtmp.419, D.32938
	bne	.L725	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L737:
	mov	r1, r2	@, D.32931
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r10, [r4]	@ tmp132, MEM[base: _21, offset: 0B]
	b	.L724	@
.L739:
	.align	2
.L738:
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
	clz	r3, r1	@ tmp168, p_image
	mov	r2, #0	@ tmp163,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, r3, lsr #5	@ tmp168, tmp168,
	cmp	r0, r2	@ ChanID,
	orrne	r3, r3, #1	@,, tmp171, tmp168
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r3, r2	@ tmp171,
	str	r2, [sp]	@ tmp163, TopPhyAddr
	str	r2, [sp, #4]	@ tmp163, BtmPhyAddr
	bne	.L753	@,
	ldr	r3, [r1, #88]	@ p_image_13(D)->top_luma_phy_addr, p_image_13(D)->top_luma_phy_addr
	cmp	r3, r2	@ p_image_13(D)->top_luma_phy_addr,
	beq	.L753	@,
	mov	r6, r0	@ ChanID, ChanID
	mov	r5, r1	@ p_image, p_image
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.32949, eVidStd,
	bics	r3, r3, #4	@ tmp292, D.32949,
	moveq	r3, #1	@ tmp176,
	movne	r3, #0	@ tmp176,
	cmp	r0, #4	@ eVidStd,
	orreq	r3, r3, #1	@,, tmp181, tmp176
	cmp	r3, #0	@ tmp181,
	bne	.L759	@,
	ldr	ip, [r5, #176]	@ D.32947, p_image_13(D)->image_id
	movw	r8, #34079	@ tmp185,
	movt	r8, 20971	@ tmp185,
	ldr	r7, .L762	@ tmp287,
	movw	r0, #11160	@ tmp192,
	mov	lr, #100	@ tmp187,
	umull	r8, r9, ip, r8	@ tmp184, D.32947, tmp185
	movt	r0, 1	@ tmp192,
	mla	r0, r0, r6, r7	@ tmp193, tmp192, ChanID, tmp287
	mov	r1, ip	@, D.32947
	add	r3, sp, #4	@,,
	mov	r2, sp	@,
	mov	r8, r9, lsr #5	@ RelImgID,,
	add	r0, r0, #968	@, tmp193,
	mls	r8, lr, r8, ip	@ RelImgID, tmp187, RelImgID, D.32947
	bl	IMGQUE_DeleteImage	@
	mov	r4, r0	@ ret,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L760	@,
.L744:
	movw	r3, #11160	@ tmp209,
	subs	r4, r4, #1	@ ret, ret,
	movt	r3, 1	@ tmp209,
	mla	r3, r3, r6, r7	@ tmp210, tmp209, ChanID, tmp287
	mvnne	r4, #0	@ ret,
	add	r3, r3, #75776	@ tmp212, tmp210,
	ldr	r0, [r3, #900]	@ D.32946, s_DnrChan[ChanID_12(D)].stDSDParam.s32DSDenable
	cmp	r0, #1	@ D.32946,
	beq	.L761	@,
.L746:
	movw	r2, #11160	@ tmp275,
	mov	r1, #392	@ tmp273,
	movt	r2, 1	@ tmp275,
	movw	ip, #26552	@ tmp278,
	mul	r9, r2, r6	@ tmp274, tmp275, ChanID
	ldr	r3, [r5, #88]	@ p_image_13(D)->top_luma_phy_addr, p_image_13(D)->top_luma_phy_addr
	mla	r1, r1, r8, r9	@ tmp276, tmp273, RelImgID, tmp274
	ldr	r10, .L762	@ tmp271,
	add	r7, r7, r1	@ tmp277, tmp287, tmp276
	ldr	r2, [r7, ip]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].LogicImagePool[RelImgID_22].luma_2d_phy_addr, MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].LogicImagePool[RelImgID_22].luma_2d_phy_addr
	cmp	r2, r3	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].LogicImagePool[RelImgID_22].luma_2d_phy_addr, p_image_13(D)->top_luma_phy_addr
	beq	.L749	@,
	clz	r3, r4	@ D.32944, ret
	mov	r3, r3, lsr #5	@ D.32944, D.32944,
.L748:
	cmp	r0, #1	@ D.32946,
	movne	r3, #0	@, tmp269
	andeq	r3, r3, #1	@,, tmp269, D.32944
	cmp	r3, #0	@ tmp269,
	moveq	r0, r4	@ D.32945, ret
	beq	.L755	@,
	mov	r1, r5	@, p_image
	mov	r0, r6	@, ChanID
	bl	VCTRL_RlsDSDFrame	@
	b	.L755	@
.L759:
	mov	r1, r5	@, p_image
	mov	r0, r6	@, ChanID
	bl	VCTRL_ReleaseChanImage	@
	adds	r0, r0, #0	@ D.32944,,
	movne	r0, #1	@ D.32944,
	rsb	r0, r0, #0	@ D.32945, D.32944
.L755:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L753:
	mvn	r0, #0	@ D.32945,
	b	.L755	@
.L760:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L762+4	@ tmp195,
	ldr	r1, .L762+8	@ tmp200,
	add	r3, r3, r6, lsl #2	@ tmp196, tmp195, ChanID,
	ldr	r2, [r3, #3148]	@ tmp199, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r2, r2, r0	@ D.32947, tmp199, currtime
	cmp	r2, r1	@ D.32947, g_TraceImgPeriod
	strhi	r0, [r3, #3148]	@ currtime, last_rec_pos_time
	b	.L744	@
.L761:
	ldr	r2, [r3, #904]	@ s_DnrChan[ChanID_12(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_12(D)].stDSDParam.s32ThrWidth
	ldr	r1, [r5, #144]	@ p_image_13(D)->image_width, p_image_13(D)->image_width
	cmp	r1, r2	@ p_image_13(D)->image_width, s_DnrChan[ChanID_12(D)].stDSDParam.s32ThrWidth
	bhi	.L747	@,
	ldr	r3, [r3, #908]	@ s_DnrChan[ChanID_12(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_12(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r5, #148]	@ p_image_13(D)->image_height, p_image_13(D)->image_height
	cmp	r2, r3	@ p_image_13(D)->image_height, s_DnrChan[ChanID_12(D)].stDSDParam.s32ThrHeight
	bls	.L746	@,
.L747:
	ldr	r8, [r5, #176]	@ D.32947, p_image_13(D)->image_id
	mov	r1, r5	@, p_image
	ldr	r3, [r5, #380]	@ p_image_13(D)->resetNum, p_image_13(D)->resetNum
	mov	r0, r6	@, ChanID
	add	r3, r8, r3	@ D.32947, D.32947, p_image_13(D)->resetNum
	sub	r3, r3, #6	@ D.32947, D.32947,
	str	r3, [r5, #176]	@ D.32947, p_image_13(D)->image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r4, r0, #0	@ ret,
	strne	r8, [r5, #176]	@ D.32947, p_image_13(D)->image_id
	mvnne	r0, #0	@ D.32945,
	bne	.L755	@,
	ldr	r0, [r5, #176]	@ p_image_13(D)->image_id, p_image_13(D)->image_id
	movw	r2, #11160	@ tmp261,
	movt	r2, 1	@ tmp261,
	movw	r1, #19174	@ tmp254,
	mla	r2, r2, r6, r7	@ tmp262, tmp261, ChanID, tmp287
	mov	r3, #1	@ D.32944,
	mla	r1, r1, r6, r0	@ tmp255, tmp254, ChanID, p_image_13(D)->image_id
	add	r2, r2, #75776	@ tmp263, tmp262,
	add	r1, r1, #184	@ tmp257, tmp255,
	str	r4, [r7, r1, asl #2]	@ ret, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	str	r8, [r5, #176]	@ D.32947, p_image_13(D)->image_id
	ldr	r0, [r2, #900]	@ D.32946, s_DnrChan[ChanID_12(D)].stDSDParam.s32DSDenable
	b	.L748	@
.L749:
	movw	r3, #19174	@ tmp231,
	add	r1, r1, #26368	@ tmp242, tmp276,
	mla	r8, r3, r6, r8	@ tmp232, tmp231, ChanID, RelImgID
	add	r1, r1, #64	@ tmp242, tmp242,
	mov	r0, r6	@, ChanID
	add	r1, r10, r1	@, tmp271, tmp242
	mov	r3, #0	@ tmp234,
	add	r8, r8, #178	@ tmp233, tmp232,
	str	r3, [r10, r8, asl #2]	@ tmp234, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	bl	DNR_ReleaseUsrData	@
	add	r2, r10, r9	@ tmp247, tmp271, tmp274
	clz	r3, r4	@ D.32944, ret
	add	r2, r2, #75776	@ tmp248, tmp247,
	mov	r3, r3, lsr #5	@ D.32944, D.32944,
	ldr	r0, [r2, #900]	@ D.32946, s_DnrChan[ChanID_12(D)].stDSDParam.s32DSDenable
	b	.L748	@
.L763:
	.align	2
.L762:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	g_TraceImgPeriod
	.fnend
	.size	DNR_ReleaseImage, .-DNR_ReleaseImage
	.align	2
	.global	DNR_ReceiveImage
	.type	DNR_ReceiveImage, %function
DNR_ReceiveImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	clz	r3, r1	@ tmp148, p_image
	mov	r3, r3, lsr #5	@ tmp148, tmp148,
	cmp	r0, #0	@ ChanID,
	orrne	r3, r3, #1	@,, tmp151, tmp148
	cmp	r3, #0	@ tmp151,
	bne	.L786	@,
	movw	r3, #11160	@ tmp154,
	movt	r3, 1	@ tmp154,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mul	r5, r3, r0	@ tmp153, tmp154, ChanID
	ldr	r7, .L789	@ tmp215,
	add	r3, r7, r5	@ tmp155, tmp215, tmp153
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_6(D)].s32IsOpen, s_DnrChan[ChanID_6(D)].s32IsOpen
	cmp	r3, #0	@ s_DnrChan[ChanID_6(D)].s32IsOpen,
	beq	.L767	@,
	mov	r8, r0	@ ChanID, ChanID
	mov	r4, r1	@ p_image, p_image
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.32958, eVidStd,
	mov	r6, r0	@ eVidStd,
	bics	r3, r3, #4	@ tmp220, D.32958,
	moveq	r3, #1	@ tmp161,
	movne	r3, #0	@ tmp161,
	cmp	r0, #4	@ eVidStd,
	orreq	r3, r3, #1	@,, tmp166, tmp161
	cmp	r3, #0	@ tmp166,
	bne	.L787	@,
	add	r0, r5, #968	@ tmp172, tmp153,
	mov	r1, r4	@, p_image
	add	r0, r7, r0	@, tmp215, tmp172
	bl	IMGQUE_GetImage	@
	mov	r5, r0	@ ret,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L788	@,
.L770:
	cmp	r5, #1	@ ret,
	bne	.L767	@,
	movw	r5, #19174	@ tmp186,
	ldr	r2, [r4, #176]	@ D.32956, p_image_8(D)->image_id
	mul	r5, r5, r8	@ tmp185, tmp186, ChanID
	ldr	r6, .L789	@ tmp184,
	add	r2, r5, r2	@ tmp187, tmp185, D.32956
	add	r2, r2, #178	@ tmp188, tmp187,
	ldr	r1, [r7, r2, asl #2]	@ D.32957, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	cmp	r1, #3	@ D.32957,
	beq	.L767	@,
	movw	r3, #11160	@ tmp191,
	movt	r3, 1	@ tmp191,
	mla	r3, r3, r8, r6	@ tmp192, tmp191, ChanID, tmp184
	add	r3, r3, #75776	@ tmp193, tmp192,
	add	r3, r3, #896	@ tmp193, tmp193,
	ldr	r3, [r3, #4]	@ s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable,
	beq	.L772	@,
	cmp	r1, #2	@ D.32957,
	beq	.L773	@,
	mov	r0, r8	@, ChanID
	mov	r1, r4	@, p_image
	bl	DNR_ReleaseImage	@
	ldr	r2, [r4, #176]	@ D.32956, p_image_8(D)->image_id
	mov	r3, #0	@ tmp201,
	mvn	r0, #0	@ D.32953,
	add	r5, r5, r2	@ tmp199, tmp185, D.32956
	add	r5, r5, #178	@ tmp200, tmp199,
	str	r3, [r6, r5, asl #2]	@ tmp201, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L787:
	mov	r0, r8	@, ChanID
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.32953
	bne	.L767	@,
	cmp	r6, #18	@ eVidStd,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r2, [r4, #120]	@ D.32956, p_image_8(D)->luma_2d_phy_addr
	ldr	r1, [r4, #124]	@ D.32956, p_image_8(D)->chrom_2d_phy_addr
	ldr	r3, [r4, #172]	@ D.32956, p_image_8(D)->image_stride
	str	r2, [r4, #88]	@ D.32956, p_image_8(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.32956, p_image_8(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.32956, D.32956, D.32956
	add	r3, r3, r1	@ D.32956, D.32956, D.32956
	str	r2, [r4, #96]	@ D.32956, p_image_8(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.32956, p_image_8(D)->btm_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L773:
	mov	r3, #3	@ tmp207,
	mov	r0, #0	@ D.32953,
	str	r3, [r6, r2, asl #2]	@ tmp207, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L767:
	mvn	r0, #0	@ D.32953,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L788:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L789+4	@ tmp174,
	ldr	r1, .L789+8	@ tmp179,
	add	r3, r3, r8, lsl #2	@ tmp175, tmp174, ChanID,
	ldr	r2, [r3, #3152]	@ tmp178, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r2, r2, r0	@ D.32956, tmp178, currtime
	cmp	r2, r1	@ D.32956, g_TraceImgPeriod
	strhi	r0, [r3, #3152]	@ currtime, last_rec_pos_time
	b	.L770	@
.L772:
	mov	r3, #3	@ tmp213,
	mov	r0, #0	@ D.32953,
	str	r3, [r6, r2, asl #2]	@ tmp213, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L786:
	mvn	r0, #0	@ D.32953,
	bx	lr	@
.L790:
	.align	2
.L789:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	g_TraceImgPeriod
	.fnend
	.size	DNR_ReceiveImage, .-DNR_ReceiveImage
	.align	2
	.global	DNR_GetVoUsingFrameInQue
	.type	DNR_GetVoUsingFrameInQue, %function
DNR_GetVoUsingFrameInQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	clz	lr, r1	@ tmp172, VoUsingFrameArray
	.pad #12
	sub	sp, sp, #12	@,,
	mov	lr, lr, lsr #5	@ tmp172, tmp172,
	cmp	r0, #0	@ ChanID,
	moveq	r6, lr	@, tmp175, tmp172
	orrne	r6, lr, #1	@,, tmp175, tmp172
	cmp	r6, #0	@ tmp175,
	bne	.L797	@,
	mov	r7, r0	@ ChanID, ChanID
	mov	r5, r1	@ VoUsingFrameArray, VoUsingFrameArray
	mov	r0, sp	@,
	mov	r1, #8	@,
	mov	r4, r2	@ s32Num, s32Num
	bl	__memzero	@
	ldr	r1, .L832	@ tmp250,
	movw	r9, #11160	@ tmp179,
	movt	r9, 1	@ tmp179,
	movw	r3, #26400	@ tmp181,
	mla	r9, r9, r7, r1	@ tmp180, tmp179, ChanID, tmp250
	add	r0, r9, #26368	@ tmp182, tmp180,
	add	r0, r0, #32	@ tmp182, tmp182,
	ldr	r3, [r9, r3]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.history
	ldr	r2, [r0, #4]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ i, i
	beq	.L794	@,
	movw	r8, #19174	@ tmp257,
	mov	lr, r6	@ s32UsingCount, tmp175
	mul	r8, r8, r7	@ tmp258, tmp257, ChanID
	b	.L798	@
.L830:
	ldr	ip, [r2, #104]	@ pImage_26->luma_phy_addr, pImage_26->luma_phy_addr
	str	ip, [r5, lr, asl #3]	@ pImage_26->luma_phy_addr, _32->FrameAddr
	add	lr, lr, #1	@ s32UsingCount, s32UsingCount,
	ldr	r2, [r2, #360]	@ D.32981, pImage_26->ImgSize
	str	r2, [r6, #4]	@ D.32981, _32->FrameSize
.L796:
	add	r3, r3, #1	@ i, i,
	ldr	r2, [r0, #4]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head, i
	beq	.L829	@,
.L798:
	add	ip, r8, r3	@ tmp192, tmp258, i
	add	r6, r5, lr, lsl #3	@ D.32980, VoUsingFrameArray, s32UsingCount,
	add	ip, ip, #260	@ tmp194, tmp192,
	add	ip, ip, #2	@ tmp194, tmp194,
	ldr	r2, [r1, ip, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.image_ptr
	adds	ip, r2, #0	@ tmp201, pImage,
	movne	ip, #1	@ tmp201,
	cmp	lr, #63	@ s32UsingCount,
	movgt	ip, #0	@ tmp201,
	cmp	ip, #0	@ tmp201,
	bne	.L830	@,
	cmp	lr, #63	@ s32UsingCount,
	ble	.L796	@,
.L797:
	mvn	r0, #0	@ D.32976,
.L827:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L829:
	movw	r2, #26408	@ tmp215,
	ldr	r2, [r9, r2]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	cmp	r3, r2	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	beq	.L804	@,
.L799:
	movw	r6, #11160	@ tmp253,
	movw	r2, #19174	@ tmp251,
	movt	r6, 1	@ tmp253,
	mla	r6, r6, r7, r1	@ tmp255, tmp253, ChanID, tmp250
	mul	r7, r2, r7	@ tmp252, tmp251, ChanID
	add	r6, r6, #26368	@ tmp256, tmp255,
	add	r6, r6, #40	@ tmp256, tmp256,
	b	.L805	@
.L831:
	ldr	r0, [r2, #104]	@ pImage_43->luma_phy_addr, pImage_43->luma_phy_addr
	str	r0, [r5, lr, asl #3]	@ pImage_43->luma_phy_addr, _49->FrameAddr
	add	lr, lr, #1	@ s32UsingCount, s32UsingCount,
	ldr	r2, [r2, #360]	@ D.32981, pImage_43->ImgSize
	str	r2, [r8, #4]	@ D.32981, _49->FrameSize
.L803:
	add	r3, r3, #1	@ i, i,
	ldr	r2, [r6]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	and	r3, r3, #63	@ i, i,
	cmp	r2, r3	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, i
	beq	.L804	@,
.L805:
	add	r0, r7, r3	@ tmp221, tmp252, i
	add	r8, r5, lr, lsl #3	@ D.32980, VoUsingFrameArray, s32UsingCount,
	add	r0, r0, #260	@ tmp223, tmp221,
	add	r0, r0, #2	@ tmp223, tmp223,
	ldr	r2, [r1, r0, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.image_ptr
	adds	ip, r2, #0	@ tmp230, pImage,
	movne	ip, #1	@ tmp230,
	cmp	lr, #63	@ s32UsingCount,
	movgt	ip, #0	@ tmp230,
	cmp	ip, #0	@ tmp230,
	bne	.L831	@,
	cmp	lr, #63	@ s32UsingCount,
	ble	.L803	@,
	b	.L797	@
.L804:
	cmp	lr, #0	@ s32UsingCount,
	ble	.L800	@,
	ldr	r8, [r5]	@ D.32981, VoUsingFrameArray_21(D)->FrameAddr
	cmp	r8, #-2147483648	@ D.32981,
	beq	.L797	@,
	mov	ip, r5	@ ivtmp.446, VoUsingFrameArray
	mov	r7, #0	@ MinIndex,
.L801:
	add	r6, r7, #1	@ MinIndex, MinIndex,
	cmp	r6, lr	@ MinIndex, s32UsingCount
	bge	.L806	@,
	ldr	r1, [ip, #8]	@ D.32981, MEM[base: _12, offset: 8B]
	cmp	r1, #-2147483648	@ D.32981,
	beq	.L797	@,
	mov	r2, r7	@ MinIndex, MinIndex
	mov	r3, r6	@ MinIndex, MinIndex
	b	.L808	@
.L810:
	ldr	r1, [r5, r3, asl #3]	@ D.32981, MEM[base: VoUsingFrameArray_21(D), index: _104, step: 8, offset: 0B]
	cmp	r1, #-2147483648	@ D.32981,
	beq	.L797	@,
.L808:
	ldr	r0, [r5, r2, asl #3]	@ _68->FrameAddr, _68->FrameAddr
	cmp	r0, r1	@ _68->FrameAddr, D.32981
	movgt	r2, r3	@ MinIndex, MinIndex
	add	r3, r3, #1	@ MinIndex, MinIndex,
	cmp	r3, lr	@ MinIndex, s32UsingCount
	blt	.L810	@,
	cmp	r7, r2	@ MinIndex, MinIndex
	beq	.L812	@,
	ldr	r0, [r5, r2, asl #3]	@ D.32981, _76->FrameAddr
	add	r3, r5, r2, lsl #3	@ D.32980, VoUsingFrameArray, MinIndex,
	ldr	r1, [ip, #4]	@ D.32981, MEM[base: _12, offset: 4B]
	str	r0, [ip]	@ D.32981, MEM[base: _12, offset: 0B]
	ldr	r0, [r3, #4]	@ D.32981, _76->FrameSize
	str	r0, [ip, #4]	@ D.32981, MEM[base: _12, offset: 4B]
	str	r8, [r5, r2, asl #3]	@ D.32981, _76->FrameAddr
	str	r1, [r3, #4]	@ D.32981, _76->FrameSize
.L812:
	ldr	r8, [ip, #8]!	@ D.32981, MEM[base: _93, offset: 0B]
	mov	r7, r6	@ MinIndex, MinIndex
	cmp	r8, #-2147483648	@ D.32981,
	bne	.L801	@,
	b	.L797	@
.L794:
	movw	r2, #26408	@ tmp247,
	mov	lr, r6	@ s32UsingCount, tmp175
	ldr	r2, [r9, r2]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	cmp	r3, r2	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	bne	.L799	@,
.L800:
	str	lr, [r4]	@ s32UsingCount, *s32Num_83(D)
	mov	r0, #0	@ D.32976,
	b	.L827	@
.L806:
	bne	.L812	@,
	b	.L800	@
.L833:
	.align	2
.L832:
	.word	.LANCHOR0
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
	bne	.L839	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #1	@ tmp151,
	movgt	r0, #0	@ tmp151,
	cmp	r3, r1	@ ImgEndAddr, DecPhyStartAddr
	movle	r0, #0	@ tmp151,
	cmp	r0, #0	@ tmp151,
	bne	.L839	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #0	@ s32Count,
	movgt	r0, #1	@ s32Count,
	cmp	ip, r1	@ ImgStartAddr, DecPhyStartAddr
	movge	r0, #0	@ s32Count,
	bx	lr	@
.L839:
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
	cmp	r2, #0	@ Size,
	cmpne	r1, #0	@, DecPhy,
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	moveq	fp, #1	@ tmp138,
	movne	fp, #0	@ tmp138,
	beq	.L850	@,
	ldr	r8, .L855	@ tmp182,
	movw	r3, #11160	@ tmp141,
	movt	r3, 1	@ tmp141,
	mov	r7, r1	@ DecPhy, DecPhy
	movw	r1, #26400	@ tmp143,
	add	r6, r7, r2	@ DecPhyEndAddr, DecPhy, Size
	mla	r3, r3, r0, r8	@ tmp142, tmp141, ChanID, tmp182
	mov	r10, r0	@ ChanID, ChanID
	add	r2, r3, #26368	@ tmp144, tmp142,
	ldr	r4, [r3, r1]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_9(D)].LogicImageQue.history
	ldr	r5, [r2, #36]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_9(D)].LogicImageQue.head
	and	r4, r4, #63	@ i, i,
	cmp	r5, r4	@ i, i
	beq	.L842	@,
	movw	r9, #19174	@ tmp153,
	mul	r9, r9, r0	@ tmp152, tmp153, ChanID
	add	r3, r9, r4	@ tmp154, tmp152, i
	add	r3, r3, #260	@ tmp156, tmp154,
	add	r3, r3, #2	@ tmp156, tmp156,
	ldr	r0, [r8, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_9(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	bne	.L844	@,
	b	.L850	@
.L845:
	ldr	r0, [r8, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_9(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L850	@,
.L844:
	mov	r2, r6	@, DecPhyEndAddr
	mov	r1, r7	@, DecPhy
	bl	DNR_FsOccupyByVO	@
	add	r4, r4, #1	@ i, i,
	and	r4, r4, #63	@ i, i,
	add	r3, r9, r4	@ tmp160, tmp186, i
	cmp	r4, r5	@ i, i
	add	r3, r3, #260	@ tmp162, tmp160,
	add	r3, r3, #2	@ tmp162, tmp162,
	add	fp, fp, r0	@ s32Count, s32Count,
	bne	.L845	@,
.L842:
	movw	r3, #11160	@ tmp165,
	movw	r2, #26408	@ tmp167,
	movt	r3, 1	@ tmp165,
	and	r5, r5, #63	@ i, i,
	mla	r3, r3, r10, r8	@ tmp166, tmp165, ChanID, tmp182
	ldr	r1, .L855	@ tmp163,
	ldr	r4, [r3, r2]	@ D.32992, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_9(D)].LogicImageQue.tail
	cmp	r4, r5	@ D.32992, i
	beq	.L846	@,
	movw	r3, #19174	@ tmp171,
	mul	r10, r3, r10	@ tmp170, tmp171, ChanID
	add	r3, r10, r5	@ tmp172, tmp170, i
	add	r3, r3, #260	@ tmp174, tmp172,
	add	r3, r3, #2	@ tmp174, tmp174,
	ldr	r0, [r1, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_9(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	bne	.L848	@,
	b	.L850	@
.L849:
	ldr	r0, [r8, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_9(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L850	@,
.L848:
	mov	r2, r6	@, DecPhyEndAddr
	mov	r1, r7	@, DecPhy
	bl	DNR_FsOccupyByVO	@
	add	r5, r5, #1	@ i, i,
	and	r5, r5, #63	@ i, i,
	add	r3, r10, r5	@ tmp178, tmp184, i
	cmp	r5, r4	@ i, D.32992
	add	r3, r3, #260	@ tmp180, tmp178,
	add	r3, r3, #2	@ tmp180, tmp180,
	add	fp, fp, r0	@ s32Count, s32Count,
	bne	.L849	@,
.L846:
	mov	r0, fp	@ D.32990, s32Count
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L850:
	mvn	r0, #0	@ D.32990,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L856:
	.align	2
.L855:
	.word	.LANCHOR0
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
	beq	.L865	@,
	ldr	ip, [r1]	@ D.33013, pChanMem_9(D)->PhyAddr
	cmp	ip, #0	@ D.33013,
	beq	.L865	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #444
	sub	sp, sp, #444	@,,
	ldr	lr, [r1, #4]	@ pChanMem_9(D)->VirAddr, pChanMem_9(D)->VirAddr
	cmp	lr, #0	@ pChanMem_9(D)->VirAddr,
	beq	.L867	@,
	ldr	r1, [r1, #8]	@ D.33013, pChanMem_9(D)->Length
	cmp	r1, #0	@ D.33013,
	ble	.L867	@,
	ldr	lr, .L872	@ tmp162,
	ldr	r4, [lr, #36]	@ D.33015, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r4, #0	@ D.33015,
	beq	.L860	@,
	mvn	lr, #0	@ tmp165,
	mov	r5, r0	@ ChanID, ChanID
	add	r6, sp, #24	@ tmp164,,
	mov	r0, ip	@, D.33013
	str	r6, [sp, #16]	@ tmp164,
	mov	ip, #64	@ tmp163,
	str	lr, [sp, #12]	@ tmp165,
	str	ip, [sp, #20]	@ tmp163,
	str	ip, [sp, #4]	@ tmp163,
	mov	ip, #0	@ tmp166,
	str	ip, [sp, #8]	@ tmp166,
	str	ip, [sp]	@ tmp166,
	blx	r4	@ D.33015
	cmp	r0, #0	@ D.33013
	bne	.L860	@,
	movw	r2, #11160	@ tmp171,
	ldr	r6, .L872+4	@ tmp206,
	movt	r2, 1	@ tmp171,
	ldr	r1, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mul	r3, r2, r5	@ tmp170, tmp171, ChanID
	add	r5, sp, #440	@ ivtmp.462,,
	cmp	r1, #64	@ MemArrange.ValidFrameNum,
	ldr	ip, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	ldr	lr, [r5, #-408]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r8, sp, #288	@ D.33020,,
	add	r2, r6, r3	@ tmp177, tmp206, tmp170
	add	r4, r3, #26368	@ tmp173, tmp170,
	add	r4, r4, #64	@ tmp173, tmp173,
	add	r3, r3, #456	@ D.33018, tmp170,
	mov	r7, r0	@ i, D.33013
	mov	r9, r2	@ tmp209, tmp177
	add	r4, r6, r4	@ pLogicImage, tmp206, tmp173
	movge	r1, #64	@ D.33013,
	add	r6, r6, r3	@ ivtmp.465, tmp206, D.33018
	str	r1, [r2, #448]	@ D.33013, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	rsb	r3, lr, ip	@ D.33013, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r2, #452]	@ D.33013, s_DnrChan[ChanID_7(D)].s32ImgBlockMemSize
.L863:
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	add	r5, r5, #4	@ ivtmp.462, ivtmp.462,
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r6, r6, #4	@ ivtmp.465, ivtmp.465,
	cmp	r3, r7	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, i
	add	r7, r7, #1	@ i, i,
	ldrgt	r3, [r5, #-4]	@ D.33013, MEM[base: _70, offset: 0B]
	ldrle	r3, [sp, #32]	@ D.33013, MemArrange.FrameAddr
	str	r3, [r6, #-4]	@ D.33013,
	mov	r0, r3	@, D.33013
	str	r3, [r4, #-272]	@ D.33013, MEM[base: pLogicImage_59, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #-272]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 120B]
	cmp	r5, r8	@ ivtmp.462, D.33020
	str	r3, [r4, #-304]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 88B]
	str	r0, [r4, #-344]	@, MEM[base: pLogicImage_59, offset: 48B]
	bne	.L863	@,
.L860:
	mov	r0, #0	@ D.33012,
.L858:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L865:
	mvn	r0, #0	@ D.33012,
	bx	lr	@
.L867:
	mvn	r0, #0	@ D.33012,
	b	.L858	@
.L873:
	.align	2
.L872:
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
	bgt	.L876	@,
	movw	r1, #11160	@ tmp115,
	movt	r1, 1	@ tmp115,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20	@,,
	mul	r5, r1, r0	@ tmp117, tmp115, ChanID
	ldr	r7, .L879	@ tmp116,
	mov	r4, r0	@ ChanID, ChanID
	add	r6, r7, r5	@ __p, tmp116, tmp117
	mov	r0, r6	@, __p
	bl	__memzero	@
	mov	r3, r4	@, ChanID
	mov	r0, sp	@,
	ldr	r2, .L879+4	@,
	mov	r1, #16	@,
	bl	snprintf	@
	add	r0, r5, #968	@ tmp127, tmp117,
	add	r0, r7, r0	@, tmp116, tmp127
	mov	r1, sp	@,
	ldr	r2, .L879+8	@,
	bl	IMGQUE_InitQueue	@
	mov	r3, #1	@ tmp134,
	mov	r0, #0	@ D.33023,
	str	r3, [r6, #8]	@ tmp134, s_DnrChan[ChanID_3(D)].s32IsOpen
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L876:
	mvn	r0, #0	@ D.33023,
	bx	lr	@
.L880:
	.align	2
.L879:
	.word	.LANCHOR0
	.word	.LC0
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
	ldr	r4, .L883	@ tmp115,
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
.L884:
	.align	2
.L883:
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
	ldr	r2, .L886	@ tmp114,
	movw	r3, #11160	@ tmp116,
	movt	r3, 1	@ tmp116,
	mla	r0, r3, r0, r2	@ tmp117, tmp116, ChanID, tmp114
	ldr	r0, [r0, #8]	@, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L887:
	.align	2
.L886:
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
	ldr	r1, .L889	@ tmp111,
	movw	r3, #11160	@ tmp113,
	movt	r3, 1	@ tmp113,
	mov	r2, #1	@ tmp116,
	mla	r0, r3, r0, r1	@ tmp114, tmp113, ChanID, tmp111
	str	r2, [r0, #8]	@ tmp116, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L890:
	.align	2
.L889:
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
	@ link register save eliminated.
	cmp	r0, #0	@ ChanID
	ldreq	ip, [r2]	@ D.33036, pstVDecDnrPara_5(D)->pstCaptureInFrm
	mvnne	r0, #0	@ D.33035,
	ldreq	r3, .L894	@ tmp120,
	streq	ip, [r3, #2940]	@ D.33036, s_DnrChan[0].pCaptureImageIn
	ldreq	r2, [r2, #4]	@ D.33036, pstVDecDnrPara_5(D)->pstCaptureOutFrm
	streq	r1, [r3, #2928]	@ DNRDataSourceFlag, s_DnrChan[0].DNRCaptureEnableFlag
	streq	r2, [r3, #2944]	@ D.33036, s_DnrChan[0].pCaptureImageOut
	bx	lr	@
.L895:
	.align	2
.L894:
	.word	.LANCHOR0+73728
	.fnend
	.size	DNR_SetDataSource, .-DNR_SetDataSource
	.global	g_DCEnable
	.global	g_DREnable
	.global	g_DBEnable
	.global	s_DnrChan
	.global	s_DnrCtrl
	.global	g_DnrHwMem
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"LQue%d\000"
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
	.type	timePrevDo.30231, %object
	.size	timePrevDo.30231, 4
timePrevDo.30231:
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
	.type	last_rec_pos_time.30327, %object
	.size	last_rec_pos_time.30327, 4
last_rec_pos_time.30327:
	.space	4
	.type	last_rec_pos_time.30438, %object
	.size	last_rec_pos_time.30438, 4
last_rec_pos_time.30438:
	.space	4
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.30358, %object
	.size	last_rec_pos_time.30358, 4
last_rec_pos_time.30358:
	.space	4
	.type	last_rec_pos_time.30481, %object
	.size	last_rec_pos_time.30481, 4
last_rec_pos_time.30481:
	.space	4
	.type	last_rec_pos_time.30457, %object
	.size	last_rec_pos_time.30457, 4
last_rec_pos_time.30457:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
