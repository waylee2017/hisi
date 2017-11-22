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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(dnr_offline)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/.dnr_offline.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiDNR/dnr_offline.o
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
	.global	DNR_DelImageProc
	.type	DNR_DelImageProc, %function
DNR_DelImageProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pImageQueue
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L4	@,
	cmp	r1, #63	@ ImageID,
	bhi	.L4	@,
	ldr	r3, .L12	@ tmp117,
	cmp	r0, r3	@ pImageQueue, tmp117
	beq	.L7	@,
	ldr	r3, .L12+4	@ tmp119,
	cmp	r0, r3	@ pImageQueue, tmp119
	beq	.L8	@,
	ldr	r3, .L12+8	@ tmp122,
	cmp	r0, r3	@ pImageQueue, tmp122
	beq	.L9	@,
	ldr	r3, .L12+12	@ tmp125,
	cmp	r0, r3	@ pImageQueue, tmp125
	moveq	r3, #3	@ ChanID,
	beq	.L5	@,
.L4:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39197,
	ldmfd	sp!, {r4, pc}	@
.L7:
	mov	r3, #0	@ ChanID,
.L5:
	movw	r0, #19174	@ tmp129,
	ldr	r2, .L12+16	@ tmp127,
	mla	r1, r0, r3, r1	@ tmp130, tmp129, ChanID, ImageID
	mov	r3, #0	@ tmp132,
	mov	r0, r3	@ D.39197, tmp132
	add	r1, r1, #178	@ tmp131, tmp130,
	str	r3, [r2, r1, asl #2]	@ tmp132, s_DnrChan[ChanID_10].LogicImageIsUsed
	ldmfd	sp!, {r4, pc}	@
.L8:
	mov	r3, #1	@ ChanID,
	b	.L5	@
.L9:
	mov	r3, #2	@ ChanID,
	b	.L5	@
.L13:
	.align	2
.L12:
	.word	.LANCHOR0+968
	.word	.LANCHOR0+77664
	.word	.LANCHOR0+154360
	.word	.LANCHOR0+231056
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
	ldr	r3, .L17	@ tmp113,
	ldr	r0, [r3, #3976]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r0, #0	@ s_eDnrDrvSleepStage,
	moveq	r2, #2	@ tmp116,
	mvnne	r0, #0	@ ret,
	streq	r2, [r3, #3976]	@ tmp116, s_eDnrDrvSleepStage
	bx	lr	@
.L18:
	.align	2
.L17:
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
	ldr	r3, .L20	@ tmp113,
	ldr	r0, [r3, #3976]	@, s_eDnrDrvSleepStage
	bx	lr	@
.L21:
	.align	2
.L20:
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
	ldr	r3, .L27	@ tmp111,
	ldr	r2, [r3, #3976]	@ s_eDnrDrvSleepStage, s_eDnrDrvSleepStage
	cmp	r2, #2	@ s_eDnrDrvSleepStage,
	movne	r2, #2	@ tmp114,
	strne	r2, [r3, #3976]	@ tmp114, s_eDnrDrvSleepStage
	bx	lr	@
.L28:
	.align	2
.L27:
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
	ldr	r3, .L33	@ tmp111,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3]	@ D.39210, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.39210,
	beq	.L30	@,
	blx	r3	@ D.39210
.L31:
	ldr	r3, .L33+4	@ tmp112,
	mov	r2, #0	@ tmp113,
	str	r2, [r3, #3976]	@ tmp113, s_eDnrDrvSleepStage
	ldmfd	sp!, {r4, pc}	@
.L30:
	bl	vfmw_dprint_nothing	@
	b	.L31	@
.L34:
	.align	2
.L33:
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
	cmp	r0, #3	@ ChanID,
	mov	r3, r0	@ ChanID, ChanID
	ldrls	ip, .L38	@ tmp114,
	movwls	r1, #11160	@ tmp116,
	movtls	r1, 1	@ tmp116,
	movls	r2, #0	@ tmp119,
	movls	r0, r2	@ D.39213, tmp119
	mvnhi	r0, #0	@ D.39213,
	mlals	r3, r1, r3, ip	@ tmp117, tmp116, ChanID, tmp114
	strls	r2, [r3, #8]	@ tmp119, s_DnrChan[ChanID_3(D)].s32IsOpen
	strls	r2, [r3, #12]	@ tmp119, s_DnrChan[ChanID_3(D)].InstMode
	bx	lr	@
.L39:
	.align	2
.L38:
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
	ldr	r0, .L43	@ tmp116,
	mul	r3, r2, r5	@ tmp117, tmp118, ChanID
	add	r1, r4, #72	@, pstDnrChanState,
	add	r2, r4, #76	@, pstDnrChanState,
	add	ip, r0, r3	@ tmp119, tmp116, tmp117
	add	r3, r3, #968	@ tmp126, tmp117,
	add	r0, r0, r3	@, tmp116, tmp126
	ldr	r3, [ip, #448]	@ D.39217, s_DnrChan[ChanID_5(D)].s32ValidImgNum
	str	r3, [r4, #68]	@ D.39217, pstDnrChanState_2(D)->total_frame_num
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	IMGQUE_GetImageNum	@
.L44:
	.align	2
.L43:
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
	ldr	r4, .L50	@ tmp112,
	add	r0, r4, #24	@, tmp112,
	bl	DNR_CloseDrivers	@
	mov	r0, r4	@, tmp112
	mov	r1, #60	@,
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L51:
	.align	2
.L50:
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
	bne	.L53	@,
	ldr	r2, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].Length
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_2(D) + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
.L54:
	movw	r0, #20592	@,
	mov	r2, r5	@, pstMem
	movt	r0, 4127	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	beq	.L57	@,
	mov	r0, r4	@, pstDrvMem
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	DNR_CloseDrivers	@
.L53:
	mov	r0, r4	@, pstDrvMem
	bl	DNR_CloseDrivers	@
	b	.L54	@
.L57:
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
	ldr	r8, .L68	@ tmp139,
	ldr	r3, [r8]	@ D.39244, g_dnr_hal_fun_ptr.pfun_DNRDRV_OpenHardware
	cmp	r3, #0	@ D.39244,
	beq	.L59	@,
	blx	r3	@ D.39244
.L60:
	ldr	r7, .L68+4	@ tmp140,
	ldr	r6, [r7, #3980]	@ D.39243, s_DnrCtrl.s32IsVCTRLOpen
	cmp	r6, #0	@ D.39243,
	bne	.L65	@,
	mov	r1, #60	@,
	ldr	r0, .L68+8	@,
	bl	__memzero	@
	movw	r1, #44640	@,
	movt	r1, 4	@,
	ldr	r0, .L68+12	@,
	bl	__memzero	@
	ldr	r0, .L68+16	@,
	bl	DNR_OpenDrivers	@
	ldr	r4, .L68+20	@ ivtmp.174,
	ldr	r5, .L68+24	@ D.39245,
.L62:
	mov	r0, r4	@, ivtmp.174
	add	r4, r4, #75776	@ ivtmp.174, ivtmp.174,
	add	r4, r4, #920	@ ivtmp.174, ivtmp.174,
	mov	r1, #256	@,
	bl	__memzero	@
	cmp	r4, r5	@ ivtmp.174, D.39245
	bne	.L62	@,
	ldr	r3, [r8, #4]	@ D.39244, g_dnr_hal_fun_ptr.pfun_DNRHAL_Init
	cmp	r3, #0	@ D.39244,
	beq	.L63	@,
	blx	r3	@ D.39244
.L64:
	mov	r3, #1	@ tmp137,
	str	r3, [r7, #3980]	@ tmp137, s_DnrCtrl.s32IsVCTRLOpen
.L61:
	mov	r0, r6	@, D.39243
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L59:
	bl	vfmw_dprint_nothing	@
	b	.L60	@
.L63:
	bl	vfmw_dprint_nothing	@
	b	.L64	@
.L65:
	mvn	r6, #0	@ D.39243,
	b	.L61	@
.L69:
	.align	2
.L68:
	.word	g_dnr_hal_fun_ptr
	.word	.LANCHOR1
	.word	.LANCHOR1+3980
	.word	.LANCHOR0
	.word	.LANCHOR1+4004
	.word	.LANCHOR0+712
	.word	.LANCHOR0+307496
	.fnend
	.size	DNR_Init, .-DNR_Init
	.align	2
	.global	DNR_EnableChan
	.type	DNR_EnableChan, %function
DNR_EnableChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 448
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r3	@ PicHeight, PicHeight
	ldr	r3, .L100	@ tmp264,
	.pad #476
	sub	sp, sp, #476	@,,
	cmp	r0, #3	@ ChanID,
	mov	r8, r0	@ ChanID, ChanID
	ldr	r3, [r3]	@ __stack_chk_guard, __stack_chk_guard
	str	r3, [sp, #468]	@ __stack_chk_guard, D.39274
	bgt	.L71	@,
	mov	r4, r1	@ pChanMem, pChanMem
	movw	r1, #11160	@ tmp186,
	movt	r1, 1	@ tmp186,
	ldr	r3, .L100+4	@ tmp265,
	mul	r6, r1, r0	@ tmp188, tmp186, ChanID
	mov	r5, r2	@ PicWidth, PicWidth
	add	r10, r3, r6	@ __p, tmp265, tmp188
	mov	r0, r10	@, __p
	bl	__memzero	@
	cmp	r4, #0	@ pChanMem,
	beq	.L71	@,
	ldr	r0, [r4]	@ D.39266, pChanMem_13(D)->PhyAddr
	cmp	r0, #0	@ D.39266,
	beq	.L71	@,
	ldr	r3, [r4, #4]	@ pChanMem_13(D)->VirAddr, pChanMem_13(D)->VirAddr
	cmp	r3, #0	@ pChanMem_13(D)->VirAddr,
	beq	.L71	@,
	ldr	r1, [r4, #8]	@ D.39266, pChanMem_13(D)->Length
	cmp	r1, #0	@ D.39266,
	ble	.L71	@,
	ldr	r3, .L100+8	@ tmp192,
	ldr	ip, [r3, #36]	@ D.39268, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.39268,
	beq	.L72	@,
	mov	lr, #64	@ tmp193,
	mov	r3, fp	@, PicHeight
	mov	r2, r5	@, PicWidth
	str	lr, [sp, #20]	@ tmp193,
	add	r5, sp, #36	@ tmp194,,
	str	lr, [sp, #4]	@ tmp193,
	mvn	r4, #0	@ tmp195,
	mov	lr, #0	@ tmp196,
	str	r5, [sp, #16]	@ tmp194,
	str	r4, [sp, #12]	@ tmp195,
	str	lr, [sp, #8]	@ tmp196,
	str	lr, [sp]	@ tmp196,
	blx	ip	@ D.39268
	subs	r3, r0, #0	@ D.39265,
	str	r3, [sp, #28]	@ D.39265, %sfp
	bne	.L72	@,
	ldr	r0, [sp, #312]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	add	r5, sp, #472	@ ivtmp.188,,
	add	r4, r6, #26368	@ tmp203, tmp188,
	ldr	r2, .L100+4	@ tmp267,
	cmp	r0, #64	@ MemArrange.ValidFrameNum,
	ldr	lr, [r5, #-428]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	ldr	ip, [sp, #48]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r3, r6, #456	@ D.39271, tmp188,
	add	r4, r4, #64	@ tmp203, tmp203,
	movge	r0, #64	@ D.39266,
	rsb	ip, lr, ip	@ D.39266, MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r4, r2, r4	@ pLogicImage, tmp267, tmp203
	add	r9, r2, r3	@ ivtmp.191, tmp268, D.39271
	add	r6, sp, #300	@ D.39273,,
	mov	r7, r10	@ tmp263, __p
	ldr	fp, [sp, #28]	@ i, %sfp
	str	r0, [r10, #448]	@ D.39266, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	str	ip, [r10, #452]	@ D.39266, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	b	.L75	@
.L98:
	ldr	ip, [r5]	@ D.39266, MEM[base: _76, offset: 0B]
	str	ip, [r9]	@ D.39266, MEM[base: _77, offset: 0B]
	mov	r0, ip	@, D.39266
	str	ip, [r4, #120]	@ D.39266, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	ip, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	ldr	r0, [r7, #452]	@ D.39266, s_DnrChan[ChanID_9(D)].s32ImgBlockMemSize
	str	r0, [r4, #360]	@ D.39266, MEM[base: pLogicImage_67, offset: 360B]
.L74:
	add	r5, r5, #4	@ ivtmp.188, ivtmp.188,
	add	fp, fp, #1	@ i, i,
	cmp	r5, r6	@ ivtmp.188, D.39273
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r9, r9, #4	@ ivtmp.191, ivtmp.191,
	beq	.L97	@,
.L75:
	ldr	r0, [r7, #448]	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, s_DnrChan[ChanID_9(D)].s32ValidImgNum
	cmp	r0, fp	@ s_DnrChan[ChanID_9(D)].s32ValidImgNum, i
	bgt	.L98	@,
	ldr	ip, [sp, #44]	@ D.39266, MemArrange.FrameAddr
	str	ip, [r9]	@ D.39266, MEM[base: _79, offset: 0B]
	mov	r0, ip	@, D.39266
	str	ip, [r4, #120]	@ D.39266, MEM[base: pLogicImage_67, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	ip, [r4, #120]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 120B]
	str	ip, [r4, #88]	@ MEM[base: pLogicImage_67, offset: 120B], MEM[base: pLogicImage_67, offset: 88B]
	str	r0, [r4, #48]	@, MEM[base: pLogicImage_67, offset: 48B]
	b	.L74	@
.L72:
	mov	r3, #0	@ D.39265,
	str	r3, [sp, #28]	@ D.39265, %sfp
.L77:
	ldr	r3, .L100	@ tmp270,
	ldr	r2, [sp, #468]	@ D.39274, D.39274
	ldr	r0, [sp, #28]	@, %sfp
	ldr	r3, [r3]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.39274, __stack_chk_guard
	bne	.L99	@,
	add	sp, sp, #476	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L97:
	mov	r3, r8	@, ChanID
	ldr	r2, .L100+12	@,
	mov	r1, #16	@,
	add	r0, sp, #452	@ tmp271,,
	bl	snprintf	@
	movw	r3, #11160	@ tmp247,
	movt	r3, 1	@ tmp247,
	ldr	r2, .L100+16	@,
	mul	r8, r3, r8	@ tmp246, tmp247, ChanID
	ldr	r3, .L100+4	@ tmp273,
	add	r0, r8, #968	@ tmp248, tmp246,
	add	r0, r3, r0	@, tmp273, tmp248
	add	r1, sp, #452	@ tmp272,,
	bl	IMGQUE_InitQueue	@
	ldr	r3, .L100+4	@ tmp274,
	add	r7, r3, r8	@ tmp253, tmp274, tmp246
	mov	r3, #1	@ tmp255,
	str	r3, [r7, #8]	@ tmp255, s_DnrChan[ChanID_9(D)].s32IsOpen
	b	.L77	@
.L71:
	mvn	r3, #0	@ D.39265,
	str	r3, [sp, #28]	@ D.39265, %sfp
	b	.L77	@
.L99:
	bl	__stack_chk_fail	@
.L101:
	.align	2
.L100:
	.word	__stack_chk_guard
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bhi	.L105	@,
	ldr	r2, .L116	@ tmp204,
	movw	r3, #11160	@ tmp128,
	movt	r3, 1	@ tmp128,
	mla	r3, r3, r0, r2	@ tmp129, tmp128, ChanID, tmp204
	ldr	ip, [r3, #8]	@ s_DnrChan[ChanID_4(D)].s32IsOpen, s_DnrChan[ChanID_4(D)].s32IsOpen
	cmp	ip, #1	@ s_DnrChan[ChanID_4(D)].s32IsOpen,
	bne	.L105	@,
	cmp	r1, #0	@ pArgs,
	beq	.L105	@,
	add	ip, r3, #75776	@ tmp142, tmp129,
	ldrb	r4, [r1, #1]	@ zero_extendqisi2	@ D.39284, pArgs_10(D)->s32VcmpEn
	ldr	lr, [ip, #900]	@ s_DnrChan[ChanID_4(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_4(D)].stDSDParam.s32DSDenable
	strb	r4, [r3, #2]	@ D.39284, s_DnrChan[ChanID_4(D)].s32VcmpEn
	cmp	lr, #1	@ s_DnrChan[ChanID_4(D)].stDSDParam.s32DSDenable,
	ldreqsb	r3, [r1]	@ pArgs_10(D)->s32MirrorEn, pArgs_10(D)->s32MirrorEn
	ldrneb	ip, [r1]	@ zero_extendqisi2	@ D.39284, pArgs_10(D)->s32MirrorEn
	streq	r3, [ip, #912]	@ pArgs_10(D)->s32MirrorEn, s_DnrChan[ChanID_4(D)].stDSDParam.s32MirrorEn
	strneb	ip, [r3, #1]	@ D.39284, s_DnrChan[ChanID_4(D)].s32MirrorEn
	ldrsb	r3, [r1, #1]	@ pArgs_10(D)->s32VcmpEn, pArgs_10(D)->s32VcmpEn
	cmp	r3, #1	@ pArgs_10(D)->s32VcmpEn,
	beq	.L108	@,
.L110:
	mov	r0, #0	@ D.39281,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L108:
	movw	r3, #11160	@ tmp159,
	ldrb	ip, [r1, #2]	@ zero_extendqisi2	@ D.39284, pArgs_10(D)->s32WmEn
	movt	r3, 1	@ tmp159,
	mla	r0, r3, r0, r2	@ tmp160, tmp159, ChanID, tmp204
	strb	ip, [r0, #3]	@ D.39284, s_DnrChan[ChanID_4(D)].s32WmEn
	ldrsb	r3, [r1, #2]	@ pArgs_10(D)->s32WmEn, pArgs_10(D)->s32WmEn
	cmp	r3, #1	@ pArgs_10(D)->s32WmEn,
	beq	.L115	@,
	add	r3, r0, #75776	@ tmp200, tmp160,
	movw	r2, #65535	@ tmp195,
	mov	r0, #0	@ D.39281,
	str	r2, [r3, #840]!	@ tmp195, s_DnrChan[ChanID_4(D)].s32VcmpWmStartLine
	str	r2, [r3, #4]	@ tmp195, s_DnrChan[ChanID_4(D)].s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L115:
	ldr	r2, [r1, #4]	@ D.39283, pArgs_10(D)->s32VcmpWmStartLine
	add	r4, r0, #75776	@ tmp168, tmp160,
	mov	r5, r4	@ tmp173, tmp168
	str	r2, [r5, #840]!	@ D.39283, s_DnrChan[ChanID_4(D)].s32VcmpWmStartLine
	ldr	r3, [r1, #8]	@ D.39283, pArgs_10(D)->s32VcmpWmEndLine
	cmp	r2, r3	@ D.39283, D.39283
	str	r3, [r5, #4]	@ D.39283, s_DnrChan[ChanID_4(D)].s32VcmpWmEndLine
	ble	.L110	@,
	bl	vfmw_dprint_nothing	@
	movw	r3, #65535	@ tmp181,
	mov	r0, #0	@ D.39281,
	str	r3, [r4, #840]	@ tmp181, s_DnrChan[ChanID_4(D)].s32VcmpWmStartLine
	str	r3, [r5, #4]	@ tmp181, s_DnrChan[ChanID_4(D)].s32VcmpWmEndLine
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L105:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39281,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L117:
	.align	2
.L116:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L121	@,
	ldr	r2, .L126	@ tmp117,
	movw	r3, #11160	@ tmp119,
	movt	r3, 1	@ tmp119,
	mla	r0, r3, r0, r2	@ tmp120, tmp119, ChanID, tmp117
	ldr	r3, [r0, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L121	@,
	cmp	r1, #0	@ pArgs,
	beq	.L121	@,
	ldr	r2, [r1]	@ D.39289, *pArgs_9(D)
	add	r3, r0, #75776	@ tmp128, tmp120,
	mov	r0, #0	@ D.39287,
	str	r2, [r3, #848]	@ D.39289, s_DnrChan[ChanID_3(D)].s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L121:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39287,
	ldmfd	sp!, {r4, pc}	@
.L127:
	.align	2
.L126:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L131	@,
	ldr	r2, .L136	@ tmp118,
	movw	r3, #11160	@ tmp120,
	movt	r3, 1	@ tmp120,
	mla	r0, r3, r0, r2	@ tmp121, tmp120, ChanID, tmp118
	ldr	r3, [r0, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L131	@,
	cmp	r1, #0	@ pArgs,
	beq	.L131	@,
	ldr	r2, [r1, #12]	@ D.39295, pArgs_9(D)->u32BackwardOptimizeFlag
	add	r3, r0, #75776	@ tmp129, tmp121,
	mov	r0, #0	@ D.39292,
	str	r2, [r3, #852]	@ D.39295, s_DnrChan[ChanID_3(D)].u32BackwardOptimizeFlag
	ldr	r2, [r1, #16]	@ D.39295, pArgs_9(D)->u32DispOptimizeFlag
	str	r2, [r3, #868]	@ D.39295, s_DnrChan[ChanID_3(D)].u32DispOptimizeFlag
	ldmfd	sp!, {r4, pc}	@
.L131:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39292,
	ldmfd	sp!, {r4, pc}	@
.L137:
	.align	2
.L136:
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L141	@,
	ldr	r2, .L143	@ tmp115,
	movw	r3, #11160	@ tmp117,
	movt	r3, 1	@ tmp117,
	mla	r3, r3, r0, r2	@ tmp118, tmp117, ChanID, tmp115
	ldr	r2, [r3, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r2, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L141	@,
	mov	r0, #0	@ D.39298,
	str	r2, [r3, #12]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].InstMode
	ldmfd	sp!, {r4, pc}	@
.L141:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39298,
	ldmfd	sp!, {r4, pc}	@
.L144:
	.align	2
.L143:
	.word	.LANCHOR0
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
	bhi	.L148	@,
	ldr	r2, .L150	@ tmp115,
	movw	r3, #11160	@ tmp117,
	movt	r3, 1	@ tmp117,
	mla	r0, r3, r0, r2	@ tmp118, tmp117, ChanID, tmp115
	ldr	r3, [r0, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L148	@,
	add	r3, r0, #8	@ tmp125, tmp118,
	mov	r2, #0	@ tmp126,
	mov	r0, r2	@ D.39303, tmp126
	str	r2, [r3, #4]	@ tmp126, s_DnrChan[ChanID_3(D)].InstMode
	ldmfd	sp!, {r4, pc}	@
.L148:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39303,
	ldmfd	sp!, {r4, pc}	@
.L151:
	.align	2
.L150:
	.word	.LANCHOR0
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
	bhi	.L155	@,
	ldr	r1, .L157	@ tmp115,
	movw	r2, #11160	@ tmp117,
	movt	r2, 1	@ tmp117,
	mla	r3, r2, r0, r1	@ tmp118, tmp117, ChanID, tmp115
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_3(D)].s32IsOpen, s_DnrChan[ChanID_3(D)].s32IsOpen
	cmp	r3, #1	@ s_DnrChan[ChanID_3(D)].s32IsOpen,
	bne	.L155	@,
	bl	DNR_StopChan	@
	mov	r0, #0	@ D.39308,
	ldmfd	sp!, {r4, pc}	@
.L155:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39308,
	ldmfd	sp!, {r4, pc}	@
.L158:
	.align	2
.L157:
	.word	.LANCHOR0
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
	ldr	r7, .L175	@ tmp206,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r0, r7, r2	@ tmp135, tmp206, tmp133
	add	r4, r0, #51456	@ tmp137, tmp135,
	add	r4, r4, #64	@ tmp137, tmp137,
	ldr	r5, [r4, #4]	@ D.39323, s_DnrChan[InstId_8(D)].TempImageNum
	cmp	r5, #0	@ D.39323,
	ble	.L173	@,
	sub	r5, r5, #1	@ i, D.39323,
	mov	r3, #392	@ tmp147,
	movw	r1, #51752	@ tmp152,
	mla	r3, r3, r5, r2	@ tmp150, tmp147, i, tmp133
	add	r3, r7, r3	@ tmp151, tmp206, tmp150
	ldr	r2, [r3, r1]	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame, MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame
	cmp	r2, #1	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame,
	moveq	ip, #0	@ tmp164,
	streq	ip, [r3, r1]	@ tmp164, MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame
	streq	r2, [r0, r1]	@ MEM[(struct IMAGE *)&s_DnrChan][InstId_8(D)].TempImagePool[i_12].last_frame, s_DnrChan[InstId_8(D)].TempImagePool[0].last_frame
	cmp	r5, #0	@ i,
	blt	.L167	@,
	movw	r6, #11160	@ tmp181,
	mov	r4, #392	@ tmp185,
	movt	r6, 1	@ tmp181,
	movw	r8, #19174	@ tmp207,
	mul	r6, r6, r9	@ tmp180, tmp181, InstId
	ldr	r10, .L175+4	@ tmp209,
	mla	r4, r4, r5, r6	@ D.39327, tmp185, i, tmp180
	add	r6, r6, #968	@ tmp182, tmp180,
	mul	r8, r8, r9	@ tmp208, tmp207, InstId
	add	r4, r4, #51456	@ D.39327, D.39327,
	add	r4, r4, #72	@ D.39327, D.39327,
	add	r6, r7, r6	@ D.39326, tmp206, tmp182
	add	r4, r7, r4	@ ivtmp.215, tmp206, D.39327
	b	.L166	@
.L174:
	ldr	ip, [r10]	@ D.39325, g_event_report
	add	r3, r8, r3	@ tmp194, tmp208, D.39324
	add	r3, r3, #178	@ tmp195, tmp194,
	add	r2, sp, #8	@ tmp198,,
	cmp	ip, #0	@ D.39325,
	mov	r1, #5	@,
	mov	r0, r9	@, InstId
	str	lr, [r7, r3, asl #2]	@ tmp196, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	beq	.L165	@,
	str	r4, [r2, #-4]!	@ ivtmp.215, para
	blx	ip	@ D.39325
.L165:
	sub	r5, r5, #1	@ i, i,
	sub	r4, r4, #392	@ ivtmp.215, ivtmp.215,
	cmn	r5, #1	@ i,
	beq	.L167	@,
.L166:
	mov	r1, r4	@, ivtmp.215
	mov	r0, r6	@, D.39326
	bl	IMGQUE_InsertImage	@
	mov	r2, #0	@ tmp204,
	mov	lr, #2	@ tmp196,
	ldr	r3, [r4, #176]	@ D.39324, MEM[base: pTemp_16, offset: 176B]
	cmp	r0, #1	@,
	beq	.L174	@,
	add	r3, r8, r3	@ tmp202, tmp208, D.39324
	sub	r5, r5, #1	@ i, i,
	add	r3, r3, #178	@ tmp203, tmp202,
	sub	r4, r4, #392	@ ivtmp.215, ivtmp.215,
	str	r2, [r7, r3, asl #2]	@ tmp204, s_DnrChan[InstId_8(D)].LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	cmn	r5, #1	@ i,
	bne	.L166	@,
.L167:
	movw	r3, #11160	@ tmp174,
	mov	r2, #0	@ tmp178,
	movt	r3, 1	@ tmp174,
	mov	r0, r2	@ D.39322, tmp178
	mla	r7, r3, r9, r7	@ tmp175, tmp174, InstId, tmp206
	add	r7, r7, #51456	@ tmp177, tmp175,
	str	r2, [r7, #68]	@ tmp178, s_DnrChan[InstId_8(D)].TempImageNum
.L161:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L173:
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp144,
	mvn	r0, #0	@ D.39322,
	str	r3, [r4, #4]	@ tmp144, s_DnrChan[InstId_8(D)].TempImageNum
	b	.L161	@
.L176:
	.align	2
.L175:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	movw	r4, #11160	@ tmp127,
	movt	r4, 1	@ tmp127,
	ldr	r5, .L186	@ tmp160,
	mul	r4, r4, r0	@ tmp126, tmp127, InstId
	mov	r7, r0	@ InstId, InstId
	add	r6, r5, r4	@ tmp128, tmp160, tmp126
	add	r6, r6, #51456	@ tmp130, tmp128,
	add	r6, r6, #64	@ tmp130, tmp130,
	ldr	r3, [r6, #4]	@ D.39340, s_DnrChan[InstId_6(D)].TempImageNum
	cmp	r3, #0	@ D.39340,
	ble	.L185	@,
	subs	r9, r3, #1	@ i, D.39340,
	bmi	.L182	@,
	mov	r2, #392	@ tmp147,
	movw	r6, #19174	@ tmp161,
	mla	r4, r2, r3, r4	@ D.39342, tmp147, D.39340, tmp126
	mov	r8, #0	@ tmp163,
	mul	r6, r6, r0	@ tmp162, tmp161, InstId
	add	r4, r4, #51200	@ D.39342, D.39342,
	add	r4, r4, #112	@ D.39342, D.39342,
	add	r4, r5, r4	@ ivtmp.226, tmp160, D.39342
.L181:
	ldr	r3, [r4], #-392	@ D.39341, MEM[base: _28, offset: 0B]
	sub	r9, r9, #1	@ i, i,
	add	r3, r6, r3	@ tmp156, tmp162, D.39341
	add	r3, r3, #178	@ tmp157, tmp156,
	str	r8, [r5, r3, asl #2]	@ tmp163, s_DnrChan[InstId_6(D)].LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	cmn	r9, #1	@ i,
	bne	.L181	@,
.L182:
	movw	r3, #11160	@ tmp140,
	mov	r2, #0	@ tmp144,
	movt	r3, 1	@ tmp140,
	mov	r0, r2	@ D.39339, tmp144
	mla	r5, r3, r7, r5	@ tmp141, tmp140, InstId, tmp160
	add	r5, r5, #51456	@ tmp143, tmp141,
	add	r5, r5, #64	@ tmp143, tmp143,
	str	r2, [r5, #4]	@ tmp144, s_DnrChan[InstId_6(D)].TempImageNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L185:
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp137,
	mvn	r0, #0	@ D.39339,
	str	r3, [r6, #4]	@ tmp137, s_DnrChan[InstId_6(D)].TempImageNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L187:
	.align	2
.L186:
	.word	.LANCHOR0
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
	movw	r1, #11160	@ tmp187,
	ldr	r5, .L227	@ tmp289,
	mov	r3, #1	@ tmp164,
	mov	r2, r1	@ tmp201, tmp187
	bfi	r1, r3, #16, #16	@ tmp187, tmp164,,
	movw	r10, #11160	@ tmp168,
	movw	r7, #11160	@ tmp180,
	movw	ip, #11160	@ tmp208,
	bfi	r2, r3, #16, #16	@ tmp201, tmp164,,
	mov	r9, r10	@ tmp174, tmp168
	mov	lr, r7	@ tmp194, tmp180
	bfi	r10, r3, #16, #16	@ tmp168, tmp164,,
	bfi	r9, r3, #16, #16	@ tmp174, tmp164,,
	bfi	r7, r3, #16, #16	@ tmp180, tmp164,,
	bfi	lr, r3, #16, #16	@ tmp194, tmp164,,
	mov	r8, ip	@ tmp162, tmp208
	bfi	ip, r3, #16, #16	@ tmp208, tmp164,,
	mla	r1, r1, r0, r5	@ tmp188, tmp187, ChanID, tmp289
	movt	r8, 1	@ tmp162,
	mla	r10, r10, r0, r5	@ tmp169, tmp168, ChanID, tmp289
	movw	r6, #65535	@ tmp191,
	mla	ip, ip, r0, r5	@ tmp209, tmp208, ChanID, tmp289
	add	r1, r1, #75776	@ tmp189, tmp188,
	mla	r2, r2, r0, r5	@ tmp202, tmp201, ChanID, tmp289
	str	r6, [r1, #860]	@ tmp191, s_DnrChan[ChanID_17(D)].LastGopNum
	mla	r9, r9, r0, r5	@ tmp175, tmp174, ChanID, tmp289
	add	r1, ip, #75776	@ tmp211, tmp209,
	mla	r7, r7, r0, r5	@ tmp181, tmp180, ChanID, tmp289
	add	r2, r2, #75776	@ tmp203, tmp202,
	mla	lr, lr, r0, r5	@ tmp195, tmp194, ChanID, tmp289
	movw	ip, #51520	@ tmp182,
	mul	r8, r8, r0	@ tmp161, tmp162, ChanID
	mov	r6, #0	@ tmp171,
	add	lr, lr, #75776	@ tmp197, tmp195,
	mov	r4, r0	@ ChanID, ChanID
	str	r6, [r2, #852]	@ tmp171, s_DnrChan[ChanID_17(D)].u32BackwardOptimizeFlag
	.pad #428
	sub	sp, sp, #428	@,,
	str	r6, [r10, #16]	@ tmp171, s_DnrChan[ChanID_17(D)].NeedStartAgain
	str	r6, [r7, ip]	@ tmp171, s_DnrChan[ChanID_17(D)].GetFirstIFrameFlag
	str	r6, [lr, #856]	@ tmp171, s_DnrChan[ChanID_17(D)].u32BackwardOptimizeDistanceCnt
	str	r6, [r1, #848]	@ tmp171, s_DnrChan[ChanID_17(D)].s32FastForwardBackwardSpeed
	strb	r3, [r5, r8]	@ tmp164, s_DnrChan[ChanID_17(D)].DecChanRstFlag
	str	r6, [r9, #432]	@ tmp171, s_DnrChan[ChanID_17(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetFrameInterface	@
	subs	r10, r0, #0	@ pFrameIntf,
	beq	.L189	@,
	ldr	r3, [r10, #8]	@ pFrameIntf_28->release_frame, pFrameIntf_28->release_frame
	cmp	r3, r6	@ pFrameIntf_28->release_frame,
	beq	.L189	@,
	add	r9, r5, r8	@ tmp217, tmp289, tmp161
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum,
	ble	.L189	@,
	add	r7, r8, #26368	@ D.39398, tmp161,
	add	r8, r8, #708	@ D.39398, tmp161,
	add	r7, r7, #112	@ D.39398, D.39398,
	add	r8, r5, r8	@ ivtmp.268, tmp289, D.39398
	add	r7, r5, r7	@ ivtmp.276, tmp289, D.39398
	b	.L191	@
.L190:
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	add	r7, r7, #392	@ ivtmp.276, ivtmp.276,
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, i
	ble	.L189	@,
.L191:
	ldr	r3, [r8, #4]!	@ MEM[base: _109, offset: 0B], MEM[base: _109, offset: 0B]
	add	r6, r6, #1	@ i, i,
	cmp	r3, #0	@ MEM[base: _109, offset: 0B],
	beq	.L190	@,
	ldr	ip, [r7]	@ MEM[base: _110, offset: 0B], MEM[base: _110, offset: 0B]
	add	r1, sp, #20	@ tmp306,,
	ldr	r2, [r7, #72]	@ MEM[base: _110, offset: 72B], MEM[base: _110, offset: 72B]
	mov	r0, r4	@, ChanID
	ldr	r3, [r10, #8]	@ pFrameIntf_28->release_frame, pFrameIntf_28->release_frame
	add	r7, r7, #392	@ ivtmp.276, ivtmp.276,
	str	ip, [sp, #24]	@ MEM[base: _110, offset: 0B], ExtFrame.VirAddr
	str	r2, [sp, #20]	@ MEM[base: _110, offset: 72B], ExtFrame.PhyAddr
	blx	r3	@ pFrameIntf_28->release_frame
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, s_DnrChan[ChanID_17(D)].s32ValidImgNum
	cmp	r3, r6	@ s_DnrChan[ChanID_17(D)].s32ValidImgNum, i
	bgt	.L191	@,
.L189:
	movw	r3, #11160	@ tmp280,
	ldr	r1, .L227	@ tmp278,
	movt	r3, 1	@ tmp280,
	mul	r3, r3, r4	@ tmp279, tmp280, ChanID
	add	r9, r5, r3	@ tmp281, tmp289, tmp279
	add	r9, r9, #75776	@ tmp283, tmp281,
	ldr	r2, [r9, #900]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable
	cmp	r2, #1	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32DSDenable,
	beq	.L226	@,
.L203:
	movw	r3, #11160	@ tmp271,
	mov	r1, #0	@ tmp291,
	movt	r3, 1	@ tmp271,
	mul	r4, r3, r4	@ D.39398, tmp271, ChanID
	add	r3, r4, #708	@ D.39398, D.39398,
	add	r4, r4, #964	@ D.39398, D.39398,
	add	r3, r5, r3	@ ivtmp.238, tmp289, D.39398
	add	r5, r5, r4	@ D.39400, tmp289, D.39398
.L202:
	ldr	r2, [r3, #4]!	@ MEM[base: _82, offset: 0B], MEM[base: _82, offset: 0B]
	cmp	r2, #3	@ MEM[base: _82, offset: 0B],
	strne	r1, [r3]	@ tmp291, MEM[base: _82, offset: 0B]
	cmp	r3, r5	@ ivtmp.238, D.39400
	bne	.L202	@,
	add	sp, sp, #428	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L226:
	add	r8, r3, #968	@ tmp288, tmp279,
	movw	r10, #34079	@ tmp293,
	add	r8, r1, r8	@ D.39396, tmp278, tmp288
	movt	r10, 20971	@ tmp293,
	mov	r7, #64	@ D.39400,
	str	r9, [sp, #4]	@ tmp283, %sfp
	str	r3, [sp]	@ tmp279, %sfp
.L200:
	add	r1, sp, #32	@ tmp307,,
	mov	r0, r8	@, D.39396
	mov	r6, #0	@ tmp237,
	str	r6, [sp, #12]	@ tmp237, TopPhyAddr
	str	r6, [sp, #16]	@ tmp237, BtmPhyAddr
	bl	IMGQUE_GetImage	@
	cmp	r0, #1	@,
	bne	.L192	@,
	ldr	r1, [sp, #208]	@ D.39404, stimage.image_id
	mov	r0, #100	@ tmp243,
	umull	r2, r3, r1, r10	@ tmp240, D.39404, tmp293
	mov	fp, r3, lsr #5	@ RelImgID,,
	mls	fp, r0, fp, r1	@ RelImgID, tmp243, RelImgID, D.39404
	cmp	fp, #63	@ RelImgID,
	bgt	.L192	@,
	add	r3, sp, #16	@,,
	add	r2, sp, #12	@,,
	mov	r0, r8	@, D.39396
	bl	IMGQUE_DeleteImage	@
	cmp	r0, #1	@,
	bne	.L195	@,
	ldr	r3, [sp]	@ tmp296, %sfp
	movw	r2, #19174	@ tmp248,
	mla	fp, r2, r4, fp	@ tmp249, tmp248, ChanID, RelImgID
	add	r3, r5, r3	@ tmp255, tmp289, tmp296
	add	r3, r3, #75776	@ tmp256, tmp255,
	ldr	r1, [sp, #176]	@ stimage.image_width, stimage.image_width
	add	r3, r3, #896	@ tmp256, tmp256,
	add	fp, fp, #178	@ tmp250, tmp249,
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrWidth
	str	r6, [r5, fp, asl #2]	@ tmp237, s_DnrChan[ChanID_17(D)].LogicImageIsUsed
	cmp	r1, r3	@ stimage.image_width, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrWidth
	bhi	.L199	@,
	ldr	r3, [sp, #4]	@ tmp298, %sfp
	ldr	r2, [sp, #180]	@ stimage.image_height, stimage.image_height
	ldr	r3, [r3, #908]	@ s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight
	cmp	r2, r3	@ stimage.image_height, s_DnrChan[ChanID_17(D)].stDSDParam.s32ThrHeight
	bhi	.L199	@,
	add	r9, sp, #220	@ ivtmp.252,,
	add	fp, sp, #236	@ D.39400,,
.L198:
	ldr	r1, [r9, #4]!	@ D.39405, MEM[base: _11, offset: 0B]
	mov	r0, r4	@, ChanID
	cmp	r1, #0	@ D.39405,
	beq	.L197	@,
	bl	UnMarkUsdByDnr	@
	str	r6, [r9]	@ tmp292, MEM[base: _11, offset: 0B]
.L197:
	cmp	r9, fp	@ ivtmp.252, D.39400
	bne	.L198	@,
.L199:
	subs	r7, r7, #1	@ D.39400, D.39400,
	bne	.L200	@,
	b	.L203	@
.L195:
	bl	vfmw_dprint_nothing	@
	subs	r7, r7, #1	@ D.39400, D.39400,
	bne	.L200	@,
	b	.L203	@
.L192:
	bl	vfmw_dprint_nothing	@
	b	.L203	@
.L228:
	.align	2
.L227:
	.word	.LANCHOR0
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
	ldr	r3, [r0, #128]	@ D.39409, pImage_3(D)->is_fld_save
	cmp	r3, #0	@ D.39409,
	bne	.L230	@,
	ldr	r3, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r3, #3	@ pImage_3(D)->format,
	moveq	r0, #1	@ D.39408,
	movne	r0, #0	@ D.39408,
	bx	lr	@
.L230:
	cmp	r3, #1	@ D.39409,
	beq	.L235	@,
	mov	r0, #0	@ D.39408,
	bx	lr	@
.L235:
	ldr	r2, [r0, #132]	@ pImage_3(D)->top_fld_type, pImage_3(D)->top_fld_type
	tst	r2, #3	@ pImage_3(D)->top_fld_type,
	bne	.L236	@,
	ldr	r2, [r0, #140]	@ pImage_3(D)->format, pImage_3(D)->format
	tst	r2, #3	@ pImage_3(D)->format,
	beq	.L234	@,
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	ands	r0, r3, #3	@ D.39408, pImage_3(D)->bottom_fld_type,
	movne	r0, #1	@ D.39408,
	bx	lr	@
.L236:
	ldr	r3, [r0, #136]	@ pImage_3(D)->bottom_fld_type, pImage_3(D)->bottom_fld_type
	tst	r3, #3	@ pImage_3(D)->bottom_fld_type,
	moveq	r0, #1	@ D.39408,
	movne	r0, #0	@ D.39408,
	bx	lr	@
.L234:
	mov	r0, r3	@ D.39408, D.39409
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
	ldr	r2, .L245	@ tmp170,
	movw	r3, #11160	@ tmp123,
	movt	r3, 1	@ tmp123,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r1	@ pImage, pImage
	mla	r3, r3, r0, r2	@ tmp124, tmp123, InstId, tmp170
	movw	r9, #51520	@ tmp148,
	mov	r7, r0	@ InstId, InstId
	ldr	r10, .L245	@ tmp144,
	add	r3, r3, #75776	@ tmp126, tmp124,
	ldr	r1, [r3, #868]	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag, s_DnrChan[InstId_6(D)].u32DispOptimizeFlag
	cmp	r1, #1	@ s_DnrChan[InstId_6(D)].u32DispOptimizeFlag,
	movne	r1, #3	@ tmp141,
	strne	r1, [r3, #864]	@ tmp141, s_DnrChan[InstId_6(D)].u32VoFrmNum
	ldrne	r3, [r8, #140]	@ pImage_11(D)->format, pImage_11(D)->format
	moveq	r1, #7	@ tmp134,
	streq	r1, [r3, #864]	@ tmp134, s_DnrChan[InstId_6(D)].u32VoFrmNum
	orrne	r3, r3, #262144	@ D.39417, pImage_11(D)->format,
	strne	r3, [r8, #140]	@ D.39417, pImage_11(D)->format
	movw	r3, #11160	@ tmp146,
	movt	r3, 1	@ tmp146,
	mul	r5, r3, r0	@ tmp145, tmp146, InstId
	mov	r0, r8	@, pImage
	add	r4, r2, r5	@ tmp147, tmp170, tmp145
	ldr	r6, [r4, r9]	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	cmp	r6, #0	@ s_DnrChan[InstId_6(D)].GetFirstIFrameFlag,
	bne	.L240	@,
	bl	DNR_IsIFrame	@
	subs	r8, r0, #0	@ D.39418,
	beq	.L241	@,
	mov	r3, #1	@ tmp157,
	mov	r0, r6	@ ret, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	str	r3, [r4, r9]	@ tmp157, s_DnrChan[InstId_6(D)].GetFirstIFrameFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L240:
	bl	DNR_IsIFrame	@
	cmp	r0, #0	@ D.39418
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	mov	r1, r8	@, pImage
	mov	r0, r7	@, InstId
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	DNR_PushTempImageToVOQ	@
.L241:
	add	r1, r5, #40	@ tmp161, tmp145,
	mov	r0, r7	@, InstId
	add	r1, r10, r1	@, tmp144, tmp161
	bl	VCTRL_ReleaseChanImage	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, InstId
	str	r8, [r4, #432]	@ D.39418, s_DnrChan[InstId_6(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L246:
	.align	2
.L245:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	movw	r3, #11160	@ tmp143,
	ldr	r5, .L269	@ tmp337,
	movt	r3, 1	@ tmp143,
	movw	ip, #51520	@ tmp168,
	mov	r4, r1	@ pImage, pImage
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r6, r0	@ InstId, InstId
	mla	r3, r3, r0, r5	@ tmp144, tmp143, InstId, tmp337
	add	r3, r3, #75776	@ tmp146, tmp144,
	ldr	r2, [r3, #868]	@ s_DnrChan[InstId_8(D)].u32DispOptimizeFlag, s_DnrChan[InstId_8(D)].u32DispOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[InstId_8(D)].u32DispOptimizeFlag,
	movne	r2, #3	@ tmp161,
	strne	r2, [r3, #864]	@ tmp161, s_DnrChan[InstId_8(D)].u32VoFrmNum
	ldrne	r3, [r1, #140]	@ pImage_13(D)->format, pImage_13(D)->format
	moveq	r2, #7	@ tmp154,
	streq	r2, [r3, #864]	@ tmp154, s_DnrChan[InstId_8(D)].u32VoFrmNum
	orrne	r3, r3, #262144	@ D.39422, pImage_13(D)->format,
	strne	r3, [r1, #140]	@ D.39422, pImage_13(D)->format
	movw	r3, #11160	@ tmp166,
	movt	r3, 1	@ tmp166,
	ldr	r1, .L269	@ tmp164,
	mul	r3, r3, r0	@ tmp165, tmp166, InstId
	add	r7, r5, r3	@ tmp167, tmp337, tmp165
	ldr	r8, [r7, ip]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].GetFirstIFrameFlag
	cmp	r8, #0	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag,
	bne	.L250	@,
	add	r5, r7, #75776	@ tmp176, tmp167,
	ldr	r0, [r4, #80]	@ D.39422, pImage_13(D)->GopNum
	ldr	lr, [r5, #860]	@ s_DnrChan[InstId_8(D)].LastGopNum, s_DnrChan[InstId_8(D)].LastGopNum
	cmp	r0, lr	@ D.39422, s_DnrChan[InstId_8(D)].LastGopNum
	beq	.L251	@,
	str	r0, [r5, #860]	@ D.39422, s_DnrChan[InstId_8(D)].LastGopNum
	mov	r2, #1	@ tmp196,
	ldr	r0, [r4, #76]	@ D.39422, pImage_13(D)->DistanceBeforeFirstFrame
	str	r2, [r7, ip]	@ tmp196, s_DnrChan[InstId_8(D)].GetFirstIFrameFlag
	cmp	r0, #0	@ D.39422,
	str	r0, [r5, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	ldreq	r3, [r4, #72]	@ D.39422, pImage_13(D)->DispFrameDistance
	streq	r3, [r5, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	bne	.L266	@,
.L253:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L250:
	add	r3, r7, #75776	@ tmp244, tmp167,
	ldr	ip, [r4, #80]	@ D.39422, pImage_13(D)->GopNum
	add	r2, r3, #856	@ tmp243, tmp244,
	ldr	r1, [r3, #860]	@ s_DnrChan[InstId_8(D)].LastGopNum, s_DnrChan[InstId_8(D)].LastGopNum
	cmp	ip, r1	@ D.39422, s_DnrChan[InstId_8(D)].LastGopNum
	beq	.L254	@,
	mov	r1, r4	@, pImage
	str	ip, [r3, #860]	@ D.39422, s_DnrChan[InstId_8(D)].LastGopNum
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	bne	.L267	@,
.L255:
	movw	r3, #11160	@ tmp254,
	ldr	r0, [r4, #76]	@ D.39422, pImage_13(D)->DistanceBeforeFirstFrame
	movt	r3, 1	@ tmp254,
	ldr	r1, .L269	@ tmp252,
	mul	r3, r3, r6	@ tmp253, tmp254, InstId
	cmp	r0, #0	@ D.39422,
	add	r5, r5, r3	@ tmp255, tmp337, tmp253
	add	r7, r5, #75776	@ tmp257, tmp255,
	str	r0, [r7, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	ldreq	r3, [r4, #72]	@ D.39422, pImage_13(D)->DispFrameDistance
	streq	r3, [r7, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	beq	.L253	@,
	add	r3, r3, #40	@ tmp261, tmp253,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp252, tmp261
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r7, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mov	r2, #0	@ tmp268,
	mvn	r0, #0	@ ret,
	str	r2, [r5, #432]	@ tmp268, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	add	r3, r3, r0	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r7, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L253	@
.L254:
	ldr	r0, [r3, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	cmp	r0, #0	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	ldreq	r2, [r4, #72]	@ D.39422, pImage_13(D)->DispFrameDistance
	streq	r2, [r3, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	beq	.L253	@,
	ldr	r3, [r7, #264]	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame, s_DnrChan[InstId_8(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame,
	beq	.L268	@,
.L258:
	movw	r3, #11160	@ tmp307,
	mov	r0, r6	@, InstId
	movt	r3, 1	@ tmp307,
	mul	r6, r3, r6	@ tmp306, tmp307, InstId
	add	r1, r6, #40	@ tmp308, tmp306,
	add	r1, r5, r1	@, tmp337, tmp308
	add	r5, r5, r6	@ tmp313, tmp337, tmp306
	bl	VCTRL_ReleaseChanImage	@
	add	r2, r5, #75776	@ tmp321, tmp313,
	mov	r3, #0	@ tmp315,
	str	r3, [r5, #432]	@ tmp315, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	ldr	r3, [r2, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mvn	r0, #0	@ ret,
	add	r3, r3, r0	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r2, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L253	@
.L267:
	bl	vfmw_dprint_nothing	@
	b	.L255	@
.L251:
	add	r3, r3, #40	@ tmp231, tmp165,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp164, tmp231
	bl	VCTRL_ReleaseChanImage	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #432]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	mvn	r0, #0	@ ret,
	b	.L253	@
.L266:
	add	r3, r3, #40	@ tmp200, tmp165,
	mov	r0, r6	@, InstId
	add	r1, r1, r3	@, tmp164, tmp200
	bl	VCTRL_ReleaseChanImage	@
	mov	r0, r6	@, InstId
	str	r8, [r7, #432]	@ s_DnrChan[InstId_8(D)].GetFirstIFrameFlag, s_DnrChan[InstId_8(D)].s321DFrameIsProc
	bl	DNR_ClearTempImage	@
	ldr	r3, [r5, #856]	@ s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	mvn	r0, #0	@ ret,
	add	r3, r3, r0	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt,
	str	r3, [r5, #856]	@ D.39422, s_DnrChan[InstId_8(D)].u32BackwardOptimizeDistanceCnt
	b	.L253	@
.L268:
	ldr	r2, .L269+4	@ tmp302,
	ldr	ip, [r2]	@ D.39425, g_event_report
	cmp	ip, #0	@ D.39425,
	beq	.L258	@,
	add	r2, sp, #8	@ tmp304,,
	mov	r1, #115	@,
	mov	r0, r6	@, InstId
	str	r3, [r2, #-4]!	@ s_DnrChan[InstId_8(D)].Cur1DImage.last_frame, para
	blx	ip	@ D.39425
	b	.L258	@
.L270:
	.align	2
.L269:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r0	@ NextInstId, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	movw	r3, #11160	@ tmp123,
	ldr	r4, .L281	@ tmp152,
	movt	r3, 1	@ tmp123,
	movw	r2, #34079	@ tmp129,
	mul	r6, r3, r5	@ tmp122, tmp123, NextInstId
	movt	r2, 20971	@ tmp129,
	mov	ip, #100	@ tmp131,
	add	r3, r4, r6	@ tmp124, tmp152, tmp122
	ldr	r1, [r3, #216]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	umull	r2, r3, r1, r2	@ tmp128, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, tmp129
	mov	r2, r3, lsr #5	@ tmp126,,
	mls	r3, ip, r2, r1	@ D.39428, tmp131, tmp126, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id
	add	r3, r3, #2	@ D.39428, D.39428,
	cmp	r0, r3	@, D.39428
	beq	.L280	@,
.L272:
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
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L280:
	bl	vfmw_dprint_nothing	@
	add	r0, r6, #968	@ tmp137, tmp122,
	add	r0, r4, r0	@, tmp152, tmp137
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L281+4	@ tmp139,
	ldr	ip, [r2]	@ D.39430, g_event_report
	cmp	ip, #0	@ D.39430,
	mov	r3, r0	@ LastFrameId,
	beq	.L273	@,
	cmn	r0, #1	@ LastFrameId,
	add	r2, sp, #8	@ tmp140,,
	mov	r1, #115	@,
	mov	r0, r5	@, NextInstId
	moveq	r3, #1	@ D.39428,
	str	r3, [r2, #-4]!	@ D.39428, para
	blx	ip	@ D.39430
.L273:
	mov	r1, #0	@,
	mov	r0, r5	@, NextInstId
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L272	@
.L282:
	.align	2
.L281:
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
	ldr	r4, .L290	@ tmp119,
	ldr	r3, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	cmp	r3, #0	@ g_DnrSleepTime,
	ble	.L288	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r5, .L290+4	@ tmp128,
	ldr	r2, [r4]	@ g_DnrSleepTime, g_DnrSleepTime
	ldr	r3, [r5, #4040]	@ timePrevDo, timePrevDo
	rsb	r0, r3, r0	@ D.39436, timePrevDo,
	cmp	r0, r2	@ D.39436, g_DnrSleepTime
	bcc	.L289	@,
.L286:
	bl	OSAL_GetTimeInMs	@
	mov	r3, #0	@ D.39434,
	str	r0, [r5, #4040]	@, timePrevDo
	mov	r0, r3	@, D.39434
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L289:
	mov	r3, #1	@ D.39434,
	mov	r0, r3	@, D.39434
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L288:
	ldr	r5, .L290+4	@ tmp128,
	b	.L286	@
.L291:
	.align	2
.L290:
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
	ldr	r3, .L302	@ tmp138,
	ldr	r2, [r3]	@ D.39439, g_eVdmVersion
	sub	r3, r2, #3	@ D.39440, D.39439,
	cmp	r3, #1	@ D.39440,
	bls	.L297	@,
	ldr	r3, .L302+4	@ tmp140,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L300	@,
.L297:
	ldr	r4, .L302+8	@ tmp206,
	mov	r3, #1	@ D.39443,
.L293:
	cmp	r2, #3	@ D.39439,
	beq	.L301	@,
.L294:
	cmp	r2, #4	@ D.39439,
	movweq	r2, #11160	@ tmp165,
	movteq	r2, 1	@ tmp165,
	mlaeq	r2, r2, r5, r4	@ tmp166, tmp165, NextInstId, tmp206
	ldreq	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	streq	r2, [r6, #64]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, pDnrCfg_15(D)->dnr_stride_1d
.L295:
	movw	r2, #11160	@ tmp171,
	str	r3, [sp, #44]	@ D.39443, stDetPara.IsFrameStored
	movt	r2, 1	@ tmp171,
	add	r0, sp, #4	@ tmp209,,
	mla	r4, r2, r5, r4	@ tmp172, tmp171, NextInstId, tmp206
	ldr	ip, [r4, #184]	@ D.39443, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_width
	ldr	r1, [r4, #188]	@ D.39443, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_height
	ldr	r5, [r4, #72]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr
	add	r2, ip, #15	@ D.39443, D.39443,
	ldr	lr, [r4, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	add	r3, r1, #15	@ D.39443, D.39443,
	mov	r2, r2, asr #4	@ D.39443, D.39443,
	str	ip, [sp, #24]	@ D.39443, stDetPara.PicWidth
	mov	r3, r3, asr #4	@ D.39443, D.39443,
	str	r1, [sp, #28]	@ D.39443, stDetPara.PicHeight
	str	r2, [sp, #36]	@ D.39443, stDetPara.MbWidth
	str	r3, [sp, #40]	@ D.39443, stDetPara.MbHeight
	str	r5, [sp, #12]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.luma_vir_addr, stDetPara.pPicBufY
	str	lr, [sp, #32]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, stDetPara.PicStride
	bl	DetPic	@
	str	r0, [r4, #20]	@ D.39443, s_DnrChan[NextInstId_3(D)].IsRwzb
	str	r0, [r4, #396]	@ D.39443, s_DnrChan[NextInstId_3(D)].Cur1DImage.optm_inf.Rwzb
	add	sp, sp, #48	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L300:
	ldr	r4, .L302+8	@ tmp206,
	movw	r1, #11160	@ tmp144,
	movt	r1, 1	@ tmp144,
	mla	r1, r1, r5, r4	@ tmp145, tmp144, NextInstId, tmp206
	ldr	r0, [r1, #340]	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard
	cmp	r0, #0	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.video_standard,
	bne	.L293	@,
	ldrb	r3, [r1, #328]	@ zero_extendqisi2	@ MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	cmp	r2, #3	@ D.39439,
	clz	r3, r3	@ D.39443, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_3(D)].Cur1DImage.ImageDnr.pic_structure
	mov	r3, r3, lsr #5	@ D.39443, D.39443,
	bne	.L294	@,
.L301:
	movw	r2, #11160	@ tmp158,
	movt	r2, 1	@ tmp158,
	mla	r2, r2, r5, r4	@ tmp159, tmp158, NextInstId, tmp206
	ldr	r2, [r2, #212]	@ s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride
	mov	r2, r2, asl #5	@ D.39440, s_DnrChan[NextInstId_3(D)].Cur1DImage.image_stride,
	str	r2, [r6, #64]	@ D.39440, pDnrCfg_15(D)->dnr_stride_1d
	b	.L295	@
.L303:
	.align	2
.L302:
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
	ldr	r3, .L310	@ tmp118,
	ldr	r3, [r3]	@ g_eVdmVersion, g_eVdmVersion
	sub	r3, r3, #3	@ D.39452, g_eVdmVersion,
	cmp	r3, #1	@ D.39452,
	bls	.L308	@,
	ldr	r3, .L310+4	@ tmp121,
	ldr	r3, [r3]	@ USE_FF_APT_EN, USE_FF_APT_EN
	cmp	r3, #1	@ USE_FF_APT_EN,
	beq	.L309	@,
.L308:
	mov	r0, #0	@ D.39450,
	bx	lr	@
.L309:
	ldr	r3, [r0, #16]	@ pImageDnr_6(D)->video_standard, pImageDnr_6(D)->video_standard
	cmp	r3, #0	@ pImageDnr_6(D)->video_standard,
	bne	.L308	@,
	ldrb	r0, [r0, #4]	@ zero_extendqisi2	@ D.39450, pImageDnr_6(D)->pic_structure
	bx	lr	@
.L311:
	.align	2
.L310:
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
	ldr	r1, .L314	@ tmp126,
	movw	r3, #11160	@ tmp128,
	movt	r3, 1	@ tmp128,
	clz	r2, r6	@ D.39460, SourceImgStoreType
	mla	r1, r3, r5, r1	@ tmp129, tmp128, NextInstId, tmp126
	mov	r2, r2, lsr #5	@ D.39460, D.39460,
	ldr	r3, [r1, #72]	@ D.39457, s_DnrChan[NextInstId_4(D)].Cur1DImage.luma_vir_addr
	str	r3, [r4, #8]	@ D.39457, pDetPara_1(D)->pPicBufY
	ldr	r0, [r1, #184]	@ D.39459, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	add	r3, r0, #15	@ D.39459, D.39459,
	str	r0, [r4, #20]	@ D.39459, pDetPara_1(D)->PicWidth
	ldr	ip, [r1, #188]	@ D.39459, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	mov	r3, r3, asr #4	@ D.39459, D.39459,
	add	r0, ip, #15	@ D.39459, D.39459,
	str	ip, [r4, #24]	@ D.39459, pDetPara_1(D)->PicHeight
	ldr	ip, [r1, #212]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride
	mov	r1, r0, asr #4	@ D.39459, D.39459,
	str	r2, [r4, #40]	@ D.39460, pDetPara_1(D)->IsFrameStored
	str	r1, [r4, #36]	@ D.39459, pDetPara_1(D)->MbHeight
	str	ip, [r4, #28]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_stride, pDetPara_1(D)->PicStride
	str	r3, [r4, #32]	@ D.39459, pDetPara_1(D)->MbWidth
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L315:
	.align	2
.L314:
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
	ldr	lr, .L328	@ tmp182,
	movt	ip, 1	@ tmp130,
	mla	ip, ip, r1, lr	@ tmp131, tmp130, NextInstId, tmp182
	ldr	r4, [ip, #20]	@ s_DnrChan[NextInstId_6(D)].IsRwzb, s_DnrChan[NextInstId_6(D)].IsRwzb
	cmp	r4, #0	@ s_DnrChan[NextInstId_6(D)].IsRwzb,
	bne	.L317	@,
	ldr	r2, [r2, #16]	@ D.39465, pImageDnr_8(D)->video_standard
	cmp	r2, #1	@ D.39465,
	cmpne	r2, #8	@, D.39465,
	moveq	r2, #1	@ tmp140,
	movne	r2, #0	@ tmp140,
	beq	.L317	@,
	ldr	r4, [r3, #32]	@ pDetPara_10(D)->MbWidth, pDetPara_10(D)->MbWidth
	cmp	r4, #45	@ pDetPara_10(D)->MbWidth,
	ble	.L327	@,
.L317:
	mov	r3, #0	@ tmp149,
	strb	r3, [r0, #2]	@ tmp149, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp149, pDnrCfg_14(D)->db_en
	strb	r3, [r0]	@ tmp149, pDnrCfg_14(D)->dc_en
.L319:
	ldr	ip, .L328+4	@ tmp183,
	movw	r3, #11160	@ tmp164,
	movt	r3, 1	@ tmp164,
	mla	r3, r3, r1, lr	@ tmp165, tmp164, NextInstId, tmp182
	ldr	r4, [ip, #4044]	@ D.39463, g_DREnable
	cmp	r4, #1	@ D.39463,
	ldrneb	r2, [r0, #2]	@ zero_extendqisi2	@ D.39467, pDnrCfg_14(D)->dr_en
	moveq	r2, r4	@ D.39467, D.39463
	sxtbne	r4, r2	@ D.39463, D.39467
	str	r4, [r3, #28]	@ D.39463, s_DnrChan[NextInstId_6(D)].enDR
	movw	r3, #11160	@ tmp171,
	uxtbne	r2, r2	@ D.39467, D.39467
	movt	r3, 1	@ tmp171,
	strb	r2, [r0, #2]	@ D.39467, pDnrCfg_14(D)->dr_en
	ldr	r4, [ip, #4048]	@ D.39463, g_DBEnable
	mla	r3, r3, r1, lr	@ tmp172, tmp171, NextInstId, tmp182
	cmp	r4, #1	@ D.39463,
	ldrneb	r2, [r0, #1]	@ zero_extendqisi2	@ D.39467, pDnrCfg_14(D)->db_en
	moveq	r2, r4	@ D.39467, D.39463
	sxtbne	r4, r2	@ D.39463, D.39467
	uxtbne	r2, r2	@ D.39467, D.39467
	str	r4, [r3, #32]	@ D.39463, s_DnrChan[NextInstId_6(D)].enDB
	strb	r2, [r0, #1]	@ D.39467, pDnrCfg_14(D)->db_en
	ldr	r2, [ip, #4052]	@ D.39463, g_DCEnable
	movw	ip, #11160	@ tmp178,
	movt	ip, 1	@ tmp178,
	mla	r1, ip, r1, lr	@ tmp179, tmp178, NextInstId, tmp182
	cmp	r2, #1	@ D.39463,
	ldrneb	r3, [r0]	@ zero_extendqisi2	@ D.39467, pDnrCfg_14(D)->dc_en
	moveq	r3, r2	@ D.39467, D.39463
	sxtbne	r2, r3	@ D.39463, D.39467
	uxtbne	r3, r3	@ D.39467, D.39467
	str	r2, [r1, #36]	@ D.39463, s_DnrChan[NextInstId_6(D)].enDC
	strb	r3, [r0]	@ D.39467, pDnrCfg_14(D)->dc_en
	ldmfd	sp!, {r4, pc}	@
.L327:
	ldr	r3, [r3, #36]	@ pDetPara_10(D)->MbHeight, pDetPara_10(D)->MbHeight
	cmp	r3, #36	@ pDetPara_10(D)->MbHeight,
	bgt	.L317	@,
	ldr	r3, [ip, #24]	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state, s_DnrChan[NextInstId_6(D)].userSetRwzb_state
	cmp	r3, #1	@ s_DnrChan[NextInstId_6(D)].userSetRwzb_state,
	beq	.L317	@,
	mov	r3, #1	@ tmp155,
	strb	r2, [r0]	@ tmp140, pDnrCfg_14(D)->dc_en
	strb	r3, [r0, #2]	@ tmp155, pDnrCfg_14(D)->dr_en
	strb	r3, [r0, #1]	@ tmp155, pDnrCfg_14(D)->db_en
	b	.L319	@
.L329:
	.align	2
.L328:
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
	beq	.L340	@,
	ldr	r4, .L341	@ tmp190,
	movw	lr, #11160	@ tmp192,
	movt	lr, 1	@ tmp192,
	mov	ip, #0	@ tmp195,
	mov	r0, ip	@ D.39475, tmp195
	mla	r1, lr, r1, r4	@ tmp193, tmp192, NextInstId, tmp190
	str	ip, [r1, #16]	@ tmp195, s_DnrChan[NextInstId_6(D)].NeedStartAgain
.L338:
	ldrb	r1, [r2, #8]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->Range_mapuv
	strb	r1, [r3, #8]	@ D.39476, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #7]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.39476, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #6]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->Range_mapy
	strb	r1, [r3, #6]	@ D.39476, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2, #5]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->Range_mapy_flag
	strb	r2, [r3, #5]	@ D.39476, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L340:
	ldr	ip, .L341	@ tmp141,
	movw	r0, #11160	@ tmp143,
	movt	r0, 1	@ tmp143,
	mla	r1, r0, r1, ip	@ tmp144, tmp143, NextInstId, tmp141
	ldr	r0, [r1, #16]	@ D.39475, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	cmp	r0, #0	@ D.39475,
	bne	.L332	@,
	ldr	ip, [r1, #180]	@ D.39477, s_DnrChan[NextInstId_6(D)].Cur1DImage.format
	and	lr, ip, #3072	@ D.39477, D.39477,
	cmp	lr, #3072	@ D.39477,
	moveq	ip, #1	@ tmp157,
	streq	ip, [r1, #16]	@ tmp157, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	streqb	ip, [r3, #3]	@ tmp157, pDnrCfg_4(D)->pic_structure
	beq	.L338	@,
	tst	ip, #2048	@ D.39477,
	movne	r1, #2	@ tmp165,
	strneb	r1, [r3, #3]	@ tmp165, pDnrCfg_4(D)->pic_structure
	bne	.L339	@,
	tst	ip, #1024	@ D.39477,
	beq	.L336	@,
	mov	r1, #1	@ tmp172,
	strb	r1, [r3, #3]	@ tmp172, pDnrCfg_4(D)->pic_structure
	b	.L338	@
.L332:
	mov	r0, #0	@ tmp183,
	mov	ip, #2	@ tmp184,
	str	r0, [r1, #16]	@ tmp183, s_DnrChan[NextInstId_6(D)].NeedStartAgain
	strb	ip, [r3, #3]	@ tmp184, pDnrCfg_4(D)->pic_structure
.L339:
	ldrb	r1, [r2, #3]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->bottom_Range_mapuv
	strb	r1, [r3, #8]	@ D.39476, pDnrCfg_4(D)->Range_mapuv
	ldrb	r1, [r2, #2]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->bottom_Range_mapuv_flag
	strb	r1, [r3, #7]	@ D.39476, pDnrCfg_4(D)->Range_mapuv_flag
	ldrb	r1, [r2, #1]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->bottom_Range_mapy
	strb	r1, [r3, #6]	@ D.39476, pDnrCfg_4(D)->Range_mapy
	ldrb	r2, [r2]	@ zero_extendqisi2	@ D.39476, pImageDnr_10(D)->bottom_Range_mapy_flag
	strb	r2, [r3, #5]	@ D.39476, pDnrCfg_4(D)->Range_mapy_flag
	ldmfd	sp!, {r4, pc}	@
.L336:
	mvn	r0, #0	@ D.39475,
	ldmfd	sp!, {r4, pc}	@
.L342:
	.align	2
.L341:
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
	ldr	r7, .L367	@ tmp318,
	movw	r2, #11160	@ tmp185,
	movt	r2, 1	@ tmp185,
	ldr	r3, .L367+4	@ tmp189,
	mla	r2, r2, r6, r7	@ tmp186, tmp185, NextInstId, tmp318
	str	r0, [r2, #20]	@, s_DnrChan[NextInstId_14(D)].IsRwzb
	strb	r9, [r4, #3]	@ SourceImgStoreType, pDnrCfg_18(D)->pic_structure
	ldr	r3, [r3]	@ D.39484, g_eVdmVersion
	cmp	r3, #3	@ D.39484,
	beq	.L364	@,
	cmp	r3, #4	@ D.39484,
	ldreq	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	streq	r3, [r4, #64]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, pDnrCfg_18(D)->dnr_stride_1d
.L345:
	mov	r3, r8	@, pDetPara
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgDrDbDcEnable	@
	ldr	r3, [r5, #16]	@ D.39485, pImageDnr_28(D)->video_standard
	movw	r1, #11160	@ tmp225,
	cmp	r3, #1	@ D.39485,
	movt	r1, 1	@ tmp225,
	str	r3, [r4, #16]	@ D.39485, pDnrCfg_18(D)->video_standard
	ldreqb	r3, [r5, #10]	@ zero_extendqisi2	@ D.39483, pImageDnr_28(D)->vc1_profile
	movne	r3, #3	@ tmp204,
	strneb	r3, [r4, #9]	@ tmp204, pDnrCfg_18(D)->vc1_profile
	mla	r1, r1, r6, r7	@ tmp226, tmp225, NextInstId, tmp318
	streqb	r3, [r4, #9]	@ D.39483, pDnrCfg_18(D)->vc1_profile
	ldreq	r3, [r5, #32]	@ D.39481, pImageDnr_28(D)->Rangedfrm
	streq	r3, [r4, #68]	@ D.39481, pDnrCfg_18(D)->Rangedfrm
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #0	@ pDnrCfg_18(D)->pic_structure,
	movw	r3, #11160	@ tmp209,
	movt	r3, 1	@ tmp209,
	mla	r3, r3, r6, r7	@ tmp210, tmp209, NextInstId, tmp318
	ldr	r8, [r3, #188]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height
	ldr	r3, .L367+8	@ tmp237,
	add	r8, r8, #15	@ D.39482, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_height,
	ldr	r2, [r3]	@ g_VdmCharacter, g_VdmCharacter
	mov	r8, r8, lsr #4	@ CurPicHeightInMb, D.39482,
	ldr	r3, [r1, #184]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width
	addne	r8, r8, #1	@ D.39482, D.39482,
	add	r3, r3, #15	@ D.39482, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_width,
	movne	r8, r8, lsr #1	@ CurPicHeightInMb, D.39482,
	str	r8, [r4, #28]	@ CurPicHeightInMb, pDnrCfg_18(D)->pic_height_in_mb
	ands	r2, r2, #4	@ D.39481, g_VdmCharacter,
	mov	r3, r3, lsr #4	@ D.39481, D.39482,
	str	r3, [r4, #24]	@ D.39481, pDnrCfg_18(D)->pic_width_in_mb
	mul	r0, r3, r8	@ D.39481, D.39481, CurPicHeightInMb
	mov	r3, r3, asl #4	@ D.39481, D.39481,
	addeq	r3, r3, #63	@ D.39481, D.39481,
	addne	r3, r3, #79	@ D.39481, D.39481,
	bic	r3, r3, #63	@ D.39481, D.39481,
	str	r0, [r4, #20]	@ D.39481, pDnrCfg_18(D)->mbtodec
	ldr	r1, [r1, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r3, [r4, #60]	@ D.39481, pDnrCfg_18(D)->ddr_stride
	ldr	r0, .L367	@ tmp249,
	str	r1, [r4, #32]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_1d
	movw	r1, #11160	@ tmp251,
	ldrb	r3, [r5, #11]	@ zero_extendqisi2	@ D.39486, pImageDnr_28(D)->use_pic_qp_en
	movt	r1, 1	@ tmp251,
	mul	r1, r1, r6	@ tmp250, tmp251, NextInstId
	strb	r3, [r4, #10]	@ D.39486, pDnrCfg_18(D)->use_pic_qp_en
	ldrb	r3, [r5, #9]	@ zero_extendqisi2	@ D.39483, pImageDnr_28(D)->chroma_format_idc
	add	ip, r7, r1	@ tmp252, tmp318, tmp250
	strb	r3, [r4, #4]	@ D.39483, pDnrCfg_18(D)->chroma_format_idc
	add	r3, ip, #75776	@ tmp254, tmp252,
	ldr	lr, [r5, #20]	@ D.39481, pImageDnr_28(D)->QP_Y
	str	lr, [r4, #48]	@ D.39481, pDnrCfg_18(D)->QP_Y
	ldr	lr, [r5, #24]	@ D.39481, pImageDnr_28(D)->QP_U
	str	lr, [r4, #52]	@ D.39481, pDnrCfg_18(D)->QP_U
	ldr	lr, [r5, #28]	@ D.39481, pImageDnr_28(D)->QP_V
	str	lr, [r4, #56]	@ D.39481, pDnrCfg_18(D)->QP_V
	ldr	lr, [r3, #872]	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag
	cmp	lr, #1	@ s_DnrChan[NextInstId_14(D)].DNRDataSourceFlag,
	beq	.L365	@,
	ldr	r9, [sp, #36]	@ tmp319, PicBufID
	mov	r3, #392	@ tmp273,
	movw	lr, #26552	@ tmp278,
	mla	r3, r3, r9, r1	@ tmp276, tmp273, tmp319, tmp250
	add	r3, r0, r3	@ tmp277, tmp249, tmp276
	ldr	r3, [r3, lr]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr
	str	r3, [r4, #36]	@ s_DnrChan[NextInstId_14(D)].LogicImagePool[PicBufID_89(D)].luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldrb	r3, [ip, #1]	@ zero_extendqisi2	@ D.39486, s_DnrChan[NextInstId_14(D)].s32MirrorEn
	strb	r3, [r4, #11]	@ D.39486, pDnrCfg_18(D)->s32MirrorEn
.L353:
	cmp	r2, #0	@ D.39481,
	beq	.L354	@,
	movw	r3, #11160	@ tmp288,
	movt	r3, 1	@ tmp288,
	mla	r3, r3, r6, r7	@ tmp289, tmp288, NextInstId, tmp318
	add	r2, r3, #75776	@ tmp296, tmp289,
	ldrb	r3, [r3, #2]	@ zero_extendqisi2	@ D.39486, s_DnrChan[NextInstId_14(D)].s32VcmpEn
	strb	r3, [r4, #12]	@ D.39486, pDnrCfg_18(D)->s32VcmpEn
	ldr	r3, [r2, #840]	@ D.39481, s_DnrChan[NextInstId_14(D)].s32VcmpWmStartLine
	str	r3, [r4, #76]	@ D.39481, pDnrCfg_18(D)->s32VcmpWmStartLine
	ldr	r3, [r2, #844]	@ D.39481, s_DnrChan[NextInstId_14(D)].s32VcmpWmEndLine
	str	r3, [r4, #80]	@ D.39481, pDnrCfg_18(D)->s32VcmpWmEndLine
.L354:
	mov	r2, r5	@, pImageDnr
	mov	r1, r6	@, NextInstId
	mov	r0, r4	@, pDnrCfg
	bl	DNR_SetDnrCfgPicStructure	@
	cmn	r0, #1	@ D.39480,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
	ldrb	r3, [r4, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	cmp	r3, #2	@ pDnrCfg_18(D)->pic_structure,
	beq	.L366	@,
	mov	r0, #0	@ D.39480,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L366:
	ldr	r3, [r4, #24]	@ pDnrCfg_18(D)->pic_width_in_mb, pDnrCfg_18(D)->pic_width_in_mb
	movw	r2, #11160	@ tmp312,
	movt	r2, 1	@ tmp312,
	mov	r0, #0	@ D.39480,
	mla	r6, r2, r6, r7	@ tmp313, tmp312, NextInstId, tmp318
	mul	r8, r3, r8	@ D.39481, pDnrCfg_18(D)->pic_width_in_mb, CurPicHeightInMb
	ldr	r2, [r6, #144]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	mov	r3, r8, asl #8	@ tmp308, D.39481,
	add	r8, r3, r8, lsl #7	@ D.39481, tmp308, D.39481,
	add	r8, r8, r2	@ D.39482, D.39481, s_DnrChan[NextInstId_14(D)].Cur1DImage.luma_phy_addr
	str	r8, [r4, #32]	@ D.39482, pDnrCfg_18(D)->dnr_ystaddr_1d
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L365:
	ldr	r3, [r3, #896]	@ s_DnrChan[NextInstId_14(D)].pCaptureImageOut, s_DnrChan[NextInstId_14(D)].pCaptureImageOut
	ldr	r3, [r3, #120]	@ _82->luma_2d_phy_addr, _82->luma_2d_phy_addr
	str	r3, [r4, #36]	@ _82->luma_2d_phy_addr, pDnrCfg_18(D)->dnr_ystaddr_2d
	ldr	r3, [ip, #412]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate
	strb	r3, [r4, #11]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.u32Circumrotate, pDnrCfg_18(D)->s32MirrorEn
	b	.L353	@
.L364:
	ldr	r3, [r2, #212]	@ s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride
	mov	r3, r3, asl #5	@ D.39482, s_DnrChan[NextInstId_14(D)].Cur1DImage.image_stride,
	str	r3, [r4, #64]	@ D.39482, pDnrCfg_18(D)->dnr_stride_1d
	b	.L345	@
.L368:
	.align	2
.L367:
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
	ldr	r6, .L386	@ tmp310,
	mov	r7, r1	@ pDnrCfg, pDnrCfg
	add	r1, r3, #40	@ tmp184, tmp182,
	add	r0, r6, r3	@ tmp188, tmp310, tmp182
	add	r1, r6, r1	@ pImg, tmp310, tmp184
	add	r0, r0, #75776	@ tmp190, tmp188,
	ldr	ip, [r0, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	ip, #0	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	moveq	r4, #392	@ tmp194,
	ldrne	r4, [r0, #896]	@ pImageLogic, s_DnrChan[NextInstId_7(D)].pCaptureImageOut
	mlaeq	r4, r4, r2, r3	@ tmp197, tmp194, PicBufID, tmp182
	addeq	r4, r4, #26368	@ tmp199, tmp197,
	addeq	r4, r4, #64	@ tmp199, tmp199,
	addeq	r4, r6, r4	@ pImageLogic, tmp310, tmp199
	cmp	r4, #0	@ pImageLogic,
	beq	.L382	@,
	mov	r2, #392	@,
	mov	r0, r4	@, pImageLogic
	ldr	r8, [r4, #120]	@ luma_2d_phy_addr, pImageLogic_1->luma_2d_phy_addr
	ldr	r9, [r4, #48]	@ luma_2d_vir_addr, pImageLogic_1->luma_2d_vir_addr
	bl	memcpy	@
	movw	r3, #11160	@ tmp213,
	ldr	r2, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	movt	r3, 1	@ tmp213,
	str	r8, [r4, #120]	@ luma_2d_phy_addr, pImageLogic_1->luma_2d_phy_addr
	mla	r3, r3, r5, r6	@ tmp214, tmp213, NextInstId, tmp310
	str	r9, [r4, #48]	@ luma_2d_vir_addr, pImageLogic_1->luma_2d_vir_addr
	str	r2, [r4, #172]	@ pDnrCfg_18(D)->ddr_stride, pImageLogic_1->image_stride
	add	r3, r3, #75776	@ tmp216, tmp214,
	ldr	r3, [r3, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r3, #1	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	beq	.L383	@,
	ldr	r0, [r7, #28]	@ pDnrCfg_18(D)->pic_height_in_mb, pDnrCfg_18(D)->pic_height_in_mb
	ldr	r2, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	ldrb	r3, [r7, #3]	@ zero_extendqisi2	@ pDnrCfg_18(D)->pic_structure, pDnrCfg_18(D)->pic_structure
	mov	r0, r0, asl #4	@ D.39491, pDnrCfg_18(D)->pic_height_in_mb,
	cmp	r3, #0	@ pDnrCfg_18(D)->pic_structure,
	mul	r3, r2, r0	@ D.39491, pDnrCfg_18(D)->ddr_stride, D.39491
	moveq	r0, #1	@ D.39491,
	movne	r0, #2	@ D.39491,
	mla	r0, r0, r3, r8	@ D.39492, D.39491, D.39491, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.39492, pImageLogic_1->chrom_2d_phy_addr
.L375:
	bl	MEM_Phy2Vir	@
	movw	r3, #11160	@ tmp229,
	movt	r3, 1	@ tmp229,
	ldr	r9, [r4, #120]	@ D.39492, pImageLogic_1->luma_2d_phy_addr
	mla	r3, r3, r5, r6	@ tmp230, tmp229, NextInstId, tmp310
	ldr	r8, [r4, #124]	@ D.39492, pImageLogic_1->chrom_2d_phy_addr
	str	r9, [r4, #88]	@ D.39492, pImageLogic_1->top_luma_phy_addr
	mov	ip, #1	@ tmp247,
	movw	r2, #11160	@ tmp250,
	bfi	r2, ip, #16, #16	@ tmp250, tmp247,,
	str	r8, [r4, #92]	@ D.39492, pImageLogic_1->top_chrom_phy_addr
	mov	lr, #0	@ tmp246,
	mla	r2, r2, r5, r6	@ tmp251, tmp250, NextInstId, tmp310
	add	r2, r2, #75776	@ tmp253, tmp251,
	str	r0, [r4, #52]	@, pImageLogic_1->chrom_2d_vir_addr
	ldr	r1, [r3, #20]	@ D.39492, s_DnrChan[NextInstId_7(D)].IsRwzb
	str	r1, [r4, #356]	@ D.39492, pImageLogic_1->optm_inf.Rwzb
	ldr	r1, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	add	r0, r1, r9	@ D.39492, pDnrCfg_18(D)->ddr_stride, D.39492
	str	r0, [r4, #96]	@ D.39492, pImageLogic_1->btm_luma_phy_addr
	ldr	r1, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	add	r1, r1, r8	@ D.39492, pDnrCfg_18(D)->ddr_stride, D.39492
	str	r1, [r4, #100]	@ D.39492, pImageLogic_1->btm_chrom_phy_addr
	ldr	r1, [r3, #416]	@ D.39492, MEM[(struct IMAGE *)&s_DnrChan][NextInstId_7(D)].Cur1DImage.u32IsLastFrame
	str	r1, [r4, #376]	@ D.39492, pImageLogic_1->u32IsLastFrame
	ldr	r1, [r3, #452]	@ D.39491, s_DnrChan[NextInstId_7(D)].s32ImgBlockMemSize
	str	ip, [r4, #368]	@ tmp247, pImageLogic_1->is_processed_by_dnr
	str	lr, [r4, #364]	@ tmp246, pImageLogic_1->u32Is1D
	str	r1, [r4, #360]	@ D.39491, pImageLogic_1->ImgSize
	ldr	r2, [r2, #872]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag
	cmp	r2, lr	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag,
	beq	.L384	@,
.L377:
	ldr	r3, .L386+4	@ tmp271,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #4	@ g_VdmCharacter,
	beq	.L379	@,
	movw	r1, #11160	@ tmp276,
	ldr	r2, [r4, #148]	@ pImageLogic_1->image_height, pImageLogic_1->image_height
	movt	r1, 1	@ tmp276,
	ldr	r3, [r4, #144]	@ pImageLogic_1->image_width, pImageLogic_1->image_width
	mla	r5, r1, r5, r6	@ tmp277, tmp276, NextInstId, tmp310
	add	r2, r2, #15	@ D.39492, pImageLogic_1->image_height,
	add	r3, r3, #15	@ D.39492, pImageLogic_1->image_width,
	bic	ip, r2, #15	@ D.39491, D.39492,
	bic	r3, r3, #15	@ D.39491, D.39492,
	add	r1, r5, #75776	@ tmp289, tmp277,
	ldrb	r0, [r5, #2]	@ zero_extendqisi2	@ D.39495, s_DnrChan[NextInstId_7(D)].s32VcmpEn
	cmp	r0, #1	@ D.39495,
	strb	r0, [r4, #296]	@ D.39495, pImageLogic_1->ImageDnr.s32VcmpEn
	ldrb	r0, [r5, #3]	@ zero_extendqisi2	@ D.39495, s_DnrChan[NextInstId_7(D)].s32WmEn
	strb	r0, [r4, #297]	@ D.39495, pImageLogic_1->ImageDnr.s32WmEn
	ldr	r0, [r1, #840]	@ D.39491, s_DnrChan[NextInstId_7(D)].s32VcmpWmStartLine
	str	r0, [r4, #320]	@ D.39491, pImageLogic_1->ImageDnr.s32VcmpWmStartLine
	ldr	r1, [r1, #844]	@ D.39491, s_DnrChan[NextInstId_7(D)].s32VcmpWmEndLine
	str	ip, [r4, #332]	@ D.39491, pImageLogic_1->ImageDnr.s32VcmpFrameHeight
	str	r3, [r4, #328]	@ D.39491, pImageLogic_1->ImageDnr.s32VcmpFrameWidth
	str	r1, [r4, #324]	@ D.39491, pImageLogic_1->ImageDnr.s32VcmpWmEndLine
	beq	.L385	@,
.L379:
	mov	r0, #0	@ D.39490,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L384:
	add	r3, r3, #75776	@ tmp260, tmp230,
	ldr	r1, [r3, #900]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable, s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable
	cmp	r1, ip	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32DSDenable,
	streq	r2, [r4, #372]	@ s_DnrChan[NextInstId_7(D)].DNRDataSourceFlag, pImageLogic_1->u32Circumrotate
	ldreq	r3, [r3, #912]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn
	streqb	r3, [r7, #11]	@ s_DnrChan[NextInstId_7(D)].stDSDParam.s32MirrorEn, pDnrCfg_18(D)->s32MirrorEn
	b	.L377	@
.L385:
	ldr	r3, [r4, #172]	@ pImageLogic_1->image_stride, pImageLogic_1->image_stride
	mov	r2, r2, lsr #4	@ D.39492, D.39492,
	ldr	r1, [r4, #88]	@ pImageLogic_1->top_luma_phy_addr, pImageLogic_1->top_luma_phy_addr
	mov	r0, #0	@ D.39490,
	add	r3, r3, #2	@ D.39492, pImageLogic_1->image_stride,
	mov	r3, r3, asl #4	@ D.39492, D.39492,
	mla	r2, r2, r3, r1	@ D.39492, D.39492, D.39492, pImageLogic_1->top_luma_phy_addr
	str	r2, [r4, #92]	@ D.39492, pImageLogic_1->top_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L383:
	ldr	r3, [r7, #28]	@ pDnrCfg_18(D)->pic_height_in_mb, pDnrCfg_18(D)->pic_height_in_mb
	ldr	r0, [r7, #60]	@ pDnrCfg_18(D)->ddr_stride, pDnrCfg_18(D)->ddr_stride
	mov	r3, r3, asl #4	@ D.39491, pDnrCfg_18(D)->pic_height_in_mb,
	mla	r0, r0, r3, r8	@ D.39492, pDnrCfg_18(D)->ddr_stride, D.39491, luma_2d_phy_addr
	str	r0, [r4, #124]	@ D.39492, pImageLogic_1->chrom_2d_phy_addr
	b	.L375	@
.L382:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39490,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L387:
	.align	2
.L386:
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
	movw	r3, #11160	@ tmp131,
	movt	r3, 1	@ tmp131,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mul	r4, r3, r0	@ tmp130, tmp131, NextInstId
	ldr	r8, .L421	@ tmp129,
	mov	r7, r0	@ NextInstId, NextInstId
	add	r5, r4, #40	@ tmp132, tmp130,
	add	r5, r8, r5	@ D.39504, tmp129, tmp132
	mov	r1, r5	@, D.39504
	bl	VCTRL_GetChanImage	@
	subs	r6, r0, #0	@ D.39502,
	bne	.L389	@,
	add	r3, r8, r4	@ tmp136, tmp129, tmp130
	add	r1, r3, #75776	@ tmp138, tmp136,
	ldr	r2, [r1, #852]	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag, s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].u32BackwardOptimizeFlag,
	beq	.L390	@,
	mov	r0, #1	@ tmp145,
	movw	r2, #11160	@ tmp148,
	bfi	r2, r0, #16, #16	@ tmp148, tmp145,,
	str	r0, [r3, #432]	@ tmp145, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mla	r2, r2, r7, r8	@ tmp149, tmp148, NextInstId, tmp129
	ldr	r2, [r2, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L392	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L392	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	blt	.L420	@,
.L419:
	mov	r6, #0	@ D.39502,
.L395:
	mov	r0, r6	@, D.39502
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L392:
	mov	r0, r7	@, NextInstId
	mov	r6, #1	@ D.39502,
	bl	DNR_ProcessLastFrameError	@
	mov	r0, r6	@, D.39502
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L389:
	mov	r0, r7	@, NextInstId
	bl	VCTRL_GetLastFrameIdPlus2	@
	cmp	r0, #1	@,
	ble	.L419	@,
	bl	vfmw_dprint_nothing	@
	add	r0, r4, #968	@ tmp199, tmp130,
	add	r0, r8, r0	@, tmp129, tmp199
	bl	IMGQUE_GetLastImageID	@
	ldr	r2, .L421+4	@ tmp201,
	ldr	ip, [r2]	@ D.39507, g_event_report
	cmp	ip, #0	@ D.39507,
	mov	r3, r0	@ ret,
	beq	.L399	@,
	cmn	r0, #1	@ ret,
	add	r2, sp, #8	@ tmp202,,
	mov	r1, #115	@,
	mov	r0, r7	@, NextInstId
	moveq	r3, #1	@ D.39503,
	str	r3, [r2, #-4]!	@ D.39503, para
	blx	ip	@ D.39507
.L399:
	mov	r0, r7	@, NextInstId
	mov	r1, #0	@,
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L419	@
.L390:
	ldr	r2, [r3, #108]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag
	cmp	r2, #1	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag,
	bne	.L392	@,
	ldr	r0, [r3, #184]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width
	str	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.DispEnableFlag, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r0, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_width,
	beq	.L392	@,
	ldr	r3, [r3, #188]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_height,
	beq	.L392	@,
	ldr	r3, [r1, #848]	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[NextInstId_5(D)].s32FastForwardBackwardSpeed,
	bge	.L419	@,
	mov	r1, r5	@, D.39504
	mov	r0, r7	@, NextInstId
	bl	DNR_FastBackOptimize	@
	cmp	r0, #0	@,
	beq	.L419	@,
.L398:
	bl	vfmw_dprint_nothing	@
	b	.L395	@
.L420:
	mov	r1, r5	@, D.39504
	mov	r0, r7	@, NextInstId
	bl	DNR_FastForwardFastBack	@
	cmp	r0, #0	@,
	beq	.L419	@,
	b	.L398	@
.L422:
	.align	2
.L421:
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
	movw	r3, #11160	@ tmp143,
	movt	r3, 1	@ tmp143,
	mul	r3, r3, r0	@ tmp142, tmp143, NextInstId
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0	@ NextInstId, NextInstId
	ldr	r4, .L442	@ tmp304,
	.pad #8
	sub	sp, sp, #8	@,,
	add	r6, r4, r3	@ tmp144, tmp304, tmp142
	add	r9, r6, #75776	@ tmp146, tmp144,
	ldr	r2, [r9, #848]	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed
	cmp	r2, #0	@ s_DnrChan[NextInstId_4(D)].s32FastForwardBackwardSpeed,
	blt	.L424	@,
	ldr	r2, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r8, r3, #40	@ tmp170, tmp142,
	ldr	ip, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r8, r4, r8	@ D.39519, tmp304, tmp170
	add	r0, r3, #968	@ tmp174, tmp142,
	add	r2, r2, #6	@ D.39517, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r2, ip, r2	@ D.39517, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.39517
	add	r0, r4, r0	@, tmp304, tmp174
	mov	r1, r8	@, D.39519
	str	r2, [r6, #216]	@ D.39517, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	bne	.L425	@,
	ldr	r0, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	movw	r2, #19174	@ tmp183,
	ldr	r3, .L442+4	@ tmp194,
	mov	r7, #0	@ tmp193,
	mov	r1, #2	@ tmp187,
	str	r7, [r6, #432]	@ tmp193, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	mla	r2, r2, r5, r0	@ tmp184, tmp183, NextInstId, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	r3, [r3]	@ D.39520, g_event_report
	cmp	r3, r7	@ D.39520,
	add	r2, r2, #178	@ tmp186, tmp184,
	moveq	r7, r3	@ D.39515, D.39520
	str	r1, [r4, r2, asl #2]	@ tmp187, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	beq	.L426	@,
	add	r2, sp, #8	@ tmp195,,
	mov	r0, r5	@, NextInstId
	mov	r1, #5	@,
	str	r8, [r2, #-4]!	@ D.39519, para
	blx	r3	@ D.39520
.L426:
	mov	r0, r7	@, D.39515
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L424:
	movw	r10, #51520	@ tmp200,
	add	r8, r6, #51456	@ tmp201, tmp144,
	ldr	r7, [r6, r10]	@ D.39515, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
	add	r8, r8, #64	@ tmp201, tmp201,
	cmp	r7, #0	@ D.39515,
	beq	.L440	@,
	ldr	r0, [r8, #4]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	mov	r2, #392	@ tmp234,
	ldr	r1, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r7, r3, #40	@ tmp224, tmp142,
	ldr	ip, [r6, #420]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum
	add	r7, r4, r7	@ D.39519, tmp304, tmp224
	mla	r0, r2, r0, r3	@ tmp237, tmp234, s_DnrChan[NextInstId_4(D)].TempImageNum, tmp142
	add	r3, r1, #6	@ D.39517, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id,
	rsb	r3, ip, r3	@ D.39517, s_DnrChan[NextInstId_4(D)].Cur1DImage.resetNum, D.39517
	mov	r1, r7	@, D.39519
	str	r3, [r6, #216]	@ D.39517, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	add	r0, r0, #51456	@ tmp239, tmp237,
	add	r0, r0, #72	@ tmp239, tmp239,
	add	r0, r4, r0	@, tmp304, tmp239
	bl	memcpy	@
	ldr	r2, [r6, #216]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	movw	r3, #19174	@ tmp252,
	ldr	ip, [r9, #864]	@ s_DnrChan[NextInstId_4(D)].u32VoFrmNum, s_DnrChan[NextInstId_4(D)].u32VoFrmNum
	ldr	r1, [r6, #448]	@ s_DnrChan[NextInstId_4(D)].s32ValidImgNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	mov	r0, #4	@ tmp256,
	mla	r3, r3, r5, r2	@ tmp253, tmp252, NextInstId, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_id
	ldr	r2, [r8, #4]	@ s_DnrChan[NextInstId_4(D)].TempImageNum, s_DnrChan[NextInstId_4(D)].TempImageNum
	rsb	r1, ip, r1	@ D.39517, s_DnrChan[NextInstId_4(D)].u32VoFrmNum, s_DnrChan[NextInstId_4(D)].s32ValidImgNum
	add	r2, r2, #1	@ D.39516, s_DnrChan[NextInstId_4(D)].TempImageNum,
	str	r2, [r8, #4]	@ D.39516, s_DnrChan[NextInstId_4(D)].TempImageNum
	add	r3, r3, #178	@ tmp255, tmp253,
	cmp	r2, r1	@ D.39516, D.39517
	str	r0, [r4, r3, asl #2]	@ tmp256, s_DnrChan[NextInstId_4(D)].LogicImageIsUsed
	bcc	.L441	@,
	mov	r3, #0	@ tmp296,
	str	r3, [r6, r10]	@ tmp296, s_DnrChan[NextInstId_4(D)].GetFirstIFrameFlag
.L429:
	mov	r1, r7	@, D.39519
	mov	r0, r5	@, NextInstId
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L430	@,
	bl	vfmw_dprint_nothing	@
	b	.L430	@
.L441:
	ldr	r3, [r6, #264]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame, s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.last_frame,
	beq	.L429	@,
.L430:
	movw	r3, #11160	@ tmp299,
	mov	r2, #0	@ tmp302,
	movt	r3, 1	@ tmp299,
	mov	r7, r2	@ D.39515, tmp302
	mla	r3, r3, r5, r4	@ tmp300, tmp299, NextInstId, tmp304
	mov	r0, r7	@, D.39515
	str	r2, [r3, #432]	@ tmp302, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L440:
	bl	DNR_ClearTempImage	@
	mov	r0, r7	@, D.39515
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L425:
	bl	vfmw_dprint_nothing	@
	mvn	r7, #0	@ D.39515,
	b	.L426	@
.L443:
	.align	2
.L442:
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
	sub	r3, r0, #10	@ D.39527, eVidStd,
	cmp	r3, #2	@ D.39527,
	bhi	.L445	@,
	ldr	r3, .L448	@ tmp122,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L447	@,
.L445:
	sub	r3, r0, #14	@ D.39530, eVidStd,
	bics	r3, r3, #4	@ tmp133, D.39530,
	moveq	r3, #1	@ tmp128,
	movne	r3, #0	@ tmp128,
	cmp	r0, #4	@ eVidStd,
	movne	r0, r3	@, D.39526, tmp128
	orreq	r0, r3, #1	@,, D.39526, tmp128
	bx	lr	@
.L447:
	mov	r0, #1	@ D.39526,
	bx	lr	@
.L449:
	.align	2
.L448:
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
	ldr	r4, .L458	@ tmp138,
	movt	r3, 1	@ tmp140,
	mla	r4, r3, r0, r4	@ tmp141, tmp140, NextInstId, tmp138
	add	r2, r4, #75776	@ tmp143, tmp141,
	add	lr, r2, #896	@ tmp142, tmp143,
	ldr	r3, [r2, #900]	@ D.39540, s_DnrChan[NextInstId_4(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ D.39540,
	movne	r3, #0	@ D.39540,
	beq	.L457	@,
.L451:
	mov	r0, r3	@, D.39540
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L457:
	ldr	r5, [r4, #432]	@ D.39541, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	r5, #1	@ D.39541,
	bne	.L451	@,
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
	movle	r3, lr	@ D.39540, tmp181
	ble	.L451	@,
	ldr	ip, [r2, #8]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn
	mov	r2, r4	@ tmp198, tmp141
	str	r3, [r4, #404]	@ D.39540, s_DnrChan[NextInstId_4(D)].Cur1DImage.u32Is1D
	mov	r3, #0	@ tmp193,
	str	r3, [r2, #408]!	@ tmp193, s_DnrChan[NextInstId_4(D)].Cur1DImage.is_processed_by_dnr
	mov	r5, r0	@ NextInstId, NextInstId
	str	ip, [r2, #4]	@ s_DnrChan[NextInstId_4(D)].stDSDParam.s32MirrorEn, s_DnrChan[NextInstId_4(D)].Cur1DImage.u32Circumrotate
	bl	DNR_DetNetworkParam	@
	ldr	r2, [r4, #188]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height
	ldr	r3, [r4, #184]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width
	mov	r0, r5	@, NextInstId
	add	r2, r2, #31	@ D.39542, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_height,
	ldr	r1, [r4, #128]	@ s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr
	add	r3, r3, #255	@ D.39542, s_DnrChan[NextInstId_4(D)].Cur1DImage.image_width,
	mov	r2, r2, lsr #5	@ D.39542, D.39542,
	bic	r3, r3, #255	@ D.39542, D.39542,
	mul	r3, r2, r3	@ D.39542, D.39542, D.39542
	add	r3, r1, r3, lsl #5	@ D.39542, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_luma_phy_addr, D.39542,
	str	r3, [r4, #132]	@ D.39542, s_DnrChan[NextInstId_4(D)].Cur1DImage.top_chrom_phy_addr
	bl	DNR_InsertQueueWithDSD	@
	cmn	r0, #1	@ D.39540,
	mov	r3, r0	@ D.39540,
	moveq	r3, r0	@ D.39540, D.39540
	movne	r3, #1	@ D.39540,
	b	.L451	@
.L459:
	.align	2
.L458:
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
	ldr	r2, .L462	@ tmp113,
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
.L463:
	.align	2
.L462:
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
	ldr	r4, .L468	@ ivtmp.321,
	ldr	r5, .L468+4	@ D.39556,
.L465:
	mov	r0, r4	@, ivtmp.321
	add	r4, r4, #75776	@ ivtmp.321, ivtmp.321,
	add	r4, r4, #920	@ ivtmp.321, ivtmp.321,
	mov	r1, #256	@,
	bl	__memzero	@
	cmp	r4, r5	@ ivtmp.321, D.39556
	bne	.L465	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L469:
	.align	2
.L468:
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
	ldr	r1, .L490	@ tmp221,
	mul	r3, r3, r6	@ tmp142, tmp143, ChanID
	add	r2, r1, r3	@ tmp144, tmp221, tmp142
	ldr	ip, [r2, #448]	@ D.39575, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	cmp	ip, #0	@ D.39575,
	ble	.L479	@,
	ldr	r2, [r2, #712]	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #1	@ s_DnrChan[ChanID_7(D)].LogicImageIsUsed,
	addhi	r3, r3, #712	@ D.39577, tmp142,
	movhi	r4, #0	@ i,
	addhi	r3, r1, r3	@ ivtmp.329, tmp221, D.39577
	bhi	.L475	@,
	b	.L488	@
.L478:
	ldr	r2, [r3, #4]!	@ MEM[base: _4, offset: 0B], MEM[base: _4, offset: 0B]
	cmp	r2, #1	@ MEM[base: _4, offset: 0B],
	bls	.L473	@,
.L475:
	add	r4, r4, #1	@ i, i,
	cmp	r4, ip	@ i, D.39575
	bne	.L478	@,
.L479:
	mvn	r0, #0	@ D.39570,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L488:
	mov	r4, #0	@ i,
.L473:
	cmp	r0, #0	@ pstFrameIntf,
	str	r4, [r5]	@ i, *pPicBufID_13(D)
	beq	.L477	@,
	ldr	r3, [r0, #4]	@ D.39573, pstFrameIntf_9->get_frame
	cmp	r3, #0	@ D.39573,
	beq	.L477	@,
	movw	r5, #19174	@ tmp159,
	ldr	r7, .L490	@ tmp157,
	mla	r5, r5, r6, r4	@ tmp160, tmp159, ChanID, i
	add	r5, r5, #178	@ tmp161, tmp160,
	ldr	r2, [r1, r5, asl #2]	@ tmp162, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	cmp	r2, #0	@ tmp162,
	beq	.L489	@,
.L477:
	movw	r3, #19174	@ tmp216,
	mov	r0, #0	@ D.39570,
	mla	r4, r3, r6, r4	@ tmp217, tmp216, ChanID, i
	mov	r3, #1	@ tmp219,
	add	r4, r4, #178	@ tmp218, tmp217,
	str	r3, [r1, r4, asl #2]	@ tmp219, s_DnrChan[ChanID_7(D)].LogicImageIsUsed
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L489:
	movw	r2, #11160	@ tmp165,
	mov	r0, r6	@, ChanID
	movt	r2, 1	@ tmp165,
	add	r1, sp, #4	@,,
	mul	r6, r2, r6	@ tmp164, tmp165, ChanID
	add	r2, r7, r6	@ tmp166, tmp157, tmp164
	ldr	ip, [r2, #184]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_width, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width
	ldr	r2, [r2, #188]	@ s_DnrChan[ChanID_7(D)].Cur1DImage.image_height, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height
	add	ip, ip, #63	@ D.39575, s_DnrChan[ChanID_7(D)].Cur1DImage.image_width,
	add	r2, r2, #15	@ D.39575, s_DnrChan[ChanID_7(D)].Cur1DImage.image_height,
	bic	ip, ip, #63	@ D.39575, D.39575,
	bic	r2, r2, #15	@ D.39575, D.39575,
	mul	r2, r2, ip	@ D.39575, D.39575, D.39575
	add	r2, r2, r2, lsl #1	@ D.39575, D.39575, D.39575,
	mov	r2, r2, asr #1	@, D.39575,
	blx	r3	@ D.39573
	cmp	r0, #0	@ D.39570
	bne	.L479	@,
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
.L491:
	.align	2
.L490:
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
	ldr	r6, .L501	@ tmp170,
	movt	r3, 1	@ tmp130,
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r4, r0	@ NextInstId, NextInstId
	mov	r7, r1	@ pPicBufID, pPicBufID
	mla	r3, r3, r0, r6	@ tmp131, tmp130, NextInstId, tmp170
	ldr	r5, [r3, #184]	@ D.39581, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_width
	ldr	r2, [r3, #436]	@ D.39582, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	ldr	r8, [r3, #188]	@ D.39581, s_DnrChan[NextInstId_1(D)].Cur1DImage.image_height
	cmp	r5, r2	@ D.39581, D.39582
	beq	.L500	@,
.L493:
	ldr	r3, .L501+4	@ tmp149,
	ldr	ip, [r3]	@ D.39583, g_event_report
	cmp	ip, #0	@ D.39583,
	beq	.L495	@,
	movw	r3, #11160	@ tmp152,
	strh	r2, [sp]	@ movhi	@ D.39582, para
	movt	r3, 1	@ tmp152,
	strh	r5, [sp, #4]	@ movhi	@ D.39581, para
	mla	r3, r3, r4, r6	@ tmp153, tmp152, NextInstId, tmp170
	strh	r8, [sp, #6]	@ movhi	@ D.39581, para
	mov	r2, sp	@,
	mov	r1, #8	@,
	mov	r0, r4	@, NextInstId
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	strh	r3, [sp, #2]	@ movhi	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, para
	blx	ip	@ D.39583
.L495:
	movw	r3, #11160	@ tmp159,
	movt	r3, 1	@ tmp159,
	mla	r3, r3, r4, r6	@ tmp160, tmp159, NextInstId, tmp170
	str	r5, [r3, #436]	@ D.39581, s_DnrChan[NextInstId_1(D)].s32OldImgWidth
	str	r8, [r3, #440]	@ D.39581, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
.L494:
	mov	r1, r7	@, pPicBufID
	mov	r0, r4	@, NextInstId
	bl	DNR_Fsp_ShowPic	@
	adds	r0, r0, #0	@,,
	movne	r0, #1	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L500:
	ldr	r3, [r3, #440]	@ s_DnrChan[NextInstId_1(D)].s32OldImgHeight, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	cmp	r8, r3	@ D.39581, s_DnrChan[NextInstId_1(D)].s32OldImgHeight
	bne	.L493	@,
	b	.L494	@
.L502:
	.align	2
.L501:
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
	ldr	r2, .L506	@ tmp115,
	movw	r3, #11160	@ tmp117,
	movt	r3, 1	@ tmp117,
	mla	r3, r3, r0, r2	@ tmp118, tmp117, NextInstId, tmp115
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc, s_DnrChan[NextInstId_4(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_4(D)].s321DFrameIsProc,
	beq	.L505	@,
	mov	r0, #1	@,
	bx	lr	@
.L505:
	b	DNR_Get2DFrameStore.part.6	@
.L507:
	.align	2
.L506:
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
	ldr	r7, .L526	@ tmp218,
	movt	r3, 1	@ tmp130,
	mla	r3, r3, r0, r7	@ tmp131, tmp130, NextInstId, tmp218
	ldr	r5, [r3, #16]	@ D.39599, s_DnrChan[NextInstId_5(D)].NeedStartAgain
	cmp	r5, #0	@ D.39599,
	bne	.L509	@,
	mov	r9, r2	@ pDnrCfg, pDnrCfg
	ldr	r2, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	mov	r6, r1	@ pPicBufID, pPicBufID
	mov	r8, r0	@ NextInstId, NextInstId
	cmp	r2, #0	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L510	@,
	add	r3, r3, #75776	@ tmp144, tmp131,
	ldr	r10, [r3, #872]	@ D.39601, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
.L511:
	cmp	r10, #1	@ D.39601,
	beq	.L524	@,
	mov	r1, r9	@, pDnrCfg
	mov	r0, r8	@, NextInstId
	bl	DNR_DSDProcess	@
	cmp	r0, #1	@ result,
	beq	.L519	@,
	cmn	r0, #1	@ result,
	beq	.L518	@,
.L515:
	movw	r3, #11160	@ tmp187,
	mov	r2, #0	@ tmp190,
	movt	r3, 1	@ tmp187,
	mla	r3, r3, r8, r7	@ tmp188, tmp187, NextInstId, tmp218
	add	r1, r3, #75776	@ tmp202, tmp188,
	ldr	r1, [r1, #872]	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	str	r2, [r3, #404]	@ tmp190, s_DnrChan[NextInstId_5(D)].Cur1DImage.u32Is1D
	cmp	r1, r2	@ s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag,
	str	r2, [r3, #408]	@ tmp190, s_DnrChan[NextInstId_5(D)].Cur1DImage.is_processed_by_dnr
	bne	.L513	@,
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_5(D)].s321DFrameIsProc,
	beq	.L525	@,
.L519:
	mov	r5, #1	@ D.39599,
	mov	r0, r5	@, D.39599
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L509:
	ldr	r3, [r3, #444]	@ D.39600, s_DnrChan[NextInstId_5(D)].CurImageBufID
	mov	r5, #0	@ D.39599,
	str	r3, [r1]	@ D.39600, *pPicBufID_14(D)
.L513:
	mov	r0, r5	@, D.39599
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L510:
	add	r4, r3, #75776	@ tmp150, tmp131,
	ldr	r10, [r4, #872]	@ D.39601, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	cmp	r10, #0	@ D.39601,
	bne	.L511	@,
	bl	DNR_PrecessChanLastFrame	@
	cmp	r0, #1	@,
	ldrne	r10, [r4, #872]	@ D.39601, s_DnrChan[NextInstId_5(D)].DNRDataSourceFlag
	bne	.L511	@,
	b	.L519	@
.L524:
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
	str	r10, [r4, #432]	@ D.39601, s_DnrChan[NextInstId_5(D)].s321DFrameIsProc
	str	r3, [r6]	@ s_DnrChan[NextInstId_5(D)].Cur1DImage.image_id, *pPicBufID_14(D)
	bl	vfmw_dprint_nothing	@
	b	.L515	@
.L525:
	mov	r1, r6	@, pPicBufID
	mov	r0, r8	@, NextInstId
	bl	DNR_Get2DFrameStore.part.6	@
	sub	r5, r0, #1	@ D.39599,,
	clz	r5, r5	@ D.39599, D.39599
	mov	r5, r5, lsr #5	@ D.39599, D.39599,
	b	.L513	@
.L518:
	mov	r5, r0	@ D.39599, result
	b	.L513	@
.L527:
	.align	2
.L526:
	.word	.LANCHOR0
	.fnend
	.size	DNR_ProcessChannel, .-DNR_ProcessChannel
	.align	2
	.global	DNR_DoNextInstance
	.type	DNR_DoNextInstance, %function
DNR_DoNextInstance:
	.fnstart
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #260
	sub	sp, sp, #260	@,,
	ldr	r7, .L572	@ tmp323,
	mov	r1, #84	@,
	str	r0, [sp, #12]	@ pNextInstId, %sfp
	add	r0, sp, #68	@ tmp332,,
	mov	r3, #0	@ tmp162,
	str	r3, [sp, #20]	@ tmp162, PicBufID
	ldr	r4, [r7, #3992]	@ NextInstId, s_DnrCtrl.ThisInstID
	bl	__memzero	@
	ldr	r9, .L572+4	@ tmp322,
	movw	r10, #11160	@ tmp327,
	ldr	r6, .L572+8	@ tmp328,
	movt	r10, 1	@ tmp327,
	mov	r5, #4	@ D.39617,
.L549:
	add	r3, r4, #1	@ D.39618, NextInstId,
	mov	r4, r3, asr #31	@ tmp164, D.39618,
	mov	r4, r4, lsr #30	@ tmp165, tmp164,
	add	r3, r3, r4	@ tmp166, D.39618, tmp165
	and	r3, r3, #3	@ tmp167, tmp166,
	rsb	r4, r4, r3	@ NextInstId, tmp165, tmp167
	mla	r3, r10, r4, r9	@ tmp172, tmp327, NextInstId, tmp322
	add	fp, r3, #75776	@ tmp174, tmp172,
	ldr	r8, [fp, #880]	@ s_DnrChan[NextInstId_20].DNRCaptureEnableFlag, s_DnrChan[NextInstId_20].DNRCaptureEnableFlag
	cmp	r8, #1	@ s_DnrChan[NextInstId_20].DNRCaptureEnableFlag,
	beq	.L571	@,
.L529:
	mla	r3, r10, r4, r9	@ tmp199, tmp327, NextInstId, tmp322
	ldr	r2, [r3, #12]	@ s_DnrChan[NextInstId_20].InstMode, s_DnrChan[NextInstId_20].InstMode
	cmp	r2, #0	@ s_DnrChan[NextInstId_20].InstMode,
	bne	.L530	@,
	add	r3, r3, #75776	@ tmp207, tmp199,
	ldr	r3, [r3, #872]	@ s_DnrChan[NextInstId_20].DNRDataSourceFlag, s_DnrChan[NextInstId_20].DNRDataSourceFlag
	cmp	r3, #1	@ s_DnrChan[NextInstId_20].DNRDataSourceFlag,
	beq	.L530	@,
.L531:
	subs	r5, r5, #1	@ D.39617, D.39617,
	bne	.L549	@,
.L539:
	mvn	r0, #0	@ D.39616,
.L535:
	add	sp, sp, #260	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L530:
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #10	@ D.39619, eVidStd,
	cmp	r3, #2	@ D.39619,
	bhi	.L532	@,
	ldr	r3, [r6]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L531	@,
.L532:
	sub	r3, r0, #14	@ D.39615, eVidStd,
	bics	r3, r3, #4	@ tmp330, D.39615,
	moveq	fp, #1	@ tmp216,
	movne	fp, #0	@ tmp216,
	cmp	r0, #4	@ eVidStd,
	orreq	fp, fp, #1	@,, tmp221, tmp216
	cmp	fp, #0	@ tmp221,
	bne	.L531	@,
	bl	DNR_ProcessWaitTime	@
	cmp	r0, #1	@,
	beq	.L531	@,
	add	r1, sp, #152	@,,
	mov	r0, r4	@, NextInstId
	bl	VCTRL_GetChanState	@
	mla	r3, r10, r4, r9	@ tmp226, tmp327, NextInstId, tmp322
	add	r2, r3, #75776	@ tmp234, tmp226,
	ldr	r2, [r2, #848]	@ s_DnrChan[NextInstId_20].s32FastForwardBackwardSpeed, s_DnrChan[NextInstId_20].s32FastForwardBackwardSpeed
	cmp	r2, #0	@ s_DnrChan[NextInstId_20].s32FastForwardBackwardSpeed,
	ldr	r1, [sp, #248]	@ stChanState.total_disp_frame_num, stChanState.total_disp_frame_num
	str	r1, [r3, #448]	@ stChanState.total_disp_frame_num, s_DnrChan[NextInstId_20].s32ValidImgNum
	blt	.L533	@,
	add	r3, r3, #51456	@ tmp241, tmp226,
	mov	r0, r4	@, NextInstId
	str	fp, [r3, #64]	@ tmp221, s_DnrChan[NextInstId_20].GetFirstIFrameFlag
	bl	DNR_ClearTempImage	@
.L533:
	add	r2, sp, #68	@ tmp333,,
	add	r1, sp, #20	@,,
	mov	r0, r4	@, NextInstId
	bl	DNR_ProcessChannel	@
	cmp	r0, #1	@ result,
	beq	.L531	@,
	cmn	r0, #1	@ result,
	beq	.L539	@,
	mla	r3, r10, r4, r9	@ tmp248, tmp327, NextInstId, tmp322
	ldr	r3, [r3, #340]	@ D.39615, MEM[(struct IMAGE_DNR_S *)&s_DnrChan][NextInstId_20].Cur1DImage.ImageDnr.video_standard
	sub	r2, r3, #10	@ D.39619, D.39615,
	cmp	r2, #2	@ D.39619,
	bhi	.L536	@,
	ldr	r2, [r6]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L531	@,
.L536:
	sub	r2, r3, #14	@ D.39615, D.39615,
	bics	r2, r2, #4	@ tmp331, D.39615,
	moveq	r2, #1	@ tmp257,
	movne	r2, #0	@ tmp257,
	cmp	r3, #4	@ D.39615,
	movne	r3, r2	@, tmp262, tmp257
	orreq	r3, r2, #1	@,, tmp262, tmp257
	cmp	r3, #0	@ tmp262,
	bne	.L531	@,
	movw	r5, #11160	@ tmp265,
	ldr	r10, .L572+4	@ tmp263,
	movt	r5, 1	@ tmp265,
	mul	r5, r5, r4	@ tmp264, tmp265, NextInstId
	add	r6, r9, r5	@ tmp267, tmp322, tmp264
	add	r6, r6, #324	@ pImageDnr, tmp267,
	mov	r0, r6	@, pImageDnr
	bl	DNR_GetSourceImgType	@
	mov	r1, r4	@, NextInstId
	mov	r2, r0	@, SourceImgStoreType
	mov	fp, r0	@ SourceImgStoreType,
	add	r0, sp, #24	@ tmp334,,
	bl	DNR_SetDetPara	@
	mov	r2, r6	@, pImageDnr
	mov	r1, r4	@, NextInstId
	ldr	ip, [sp, #20]	@ PicBufID, PicBufID
	add	r3, sp, #24	@ tmp335,,
	add	r0, sp, #68	@ tmp336,,
	stmia	sp, {fp, ip}	@,,
	bl	DNR_SetDnrCfg	@
	cmn	r0, #1	@,
	beq	.L539	@,
	ldr	r2, [sp, #20]	@, PicBufID
	add	r1, sp, #68	@ tmp337,,
	mov	r0, r4	@, NextInstId
	bl	DNR_SetImageLogic	@
	cmn	r0, #1	@,
	beq	.L539	@,
	ldr	r6, .L572+12	@ tmp321,
	add	r5, r10, r5	@ tmp277, tmp263, tmp264
	ldr	r2, [sp, #20]	@ PicBufID, PicBufID
	ldr	r3, [r6, #12]	@ D.39620, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	str	r2, [r5, #444]	@ PicBufID, s_DnrChan[NextInstId_96].CurImageBufID
	cmp	r3, #0	@ D.39620,
	beq	.L540	@,
	blx	r3	@ D.39620
.L541:
	ldr	r3, [r6, #8]	@ D.39621, g_dnr_hal_fun_ptr.pfun_DNRHAL_CfgReg
	cmp	r3, #0	@ D.39621,
	beq	.L542	@,
	add	r0, sp, #68	@ tmp338,,
	blx	r3	@ D.39621
.L543:
	movw	r3, #11160	@ tmp285,
	ldr	r1, [r6, #16]	@ D.39620, g_dnr_hal_fun_ptr.pfun_DNRHAL_Start
	movt	r3, 1	@ tmp285,
	mov	r0, #0	@ tmp287,
	mul	r3, r3, r4	@ tmp284, tmp285, NextInstId
	cmp	r1, r0	@ D.39620,
	add	r2, r9, r3	@ tmp286, tmp322, tmp284
	add	r2, r2, #75776	@ tmp294, tmp286,
	strb	r0, [r9, r3]	@ tmp287, s_DnrChan[NextInstId_96].DecChanRstFlag
	ldr	r3, [r2, #872]	@ s_DnrChan[NextInstId_96].DNRDataSourceFlag, s_DnrChan[NextInstId_96].DNRDataSourceFlag
	str	r3, [r2, #876]	@ s_DnrChan[NextInstId_96].DNRDataSourceFlag, s_DnrChan[NextInstId_96].DNRCaptureStartFlag
	beq	.L544	@,
	blx	r1	@ D.39620
.L545:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L572+16	@ tmp303,
	str	r0, [r3, #20]	@, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r0, #9	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	beq	.L547	@,
	bl	OSAL_GetTimeInMs	@
	add	r7, r7, r4, lsl #2	@ tmp305, tmp323, NextInstId,
	ldr	r2, .L572+20	@ tmp309,
	ldr	r3, [r7, #4056]	@ tmp308, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.39619, tmp308, currtime
	cmp	r3, r2	@ D.39619, g_TraceFramePeriod
	strhi	r0, [r7, #4056]	@ currtime, last_rec_pos_time
.L547:
	ldr	r2, [sp, #12]	@ pNextInstId, %sfp
	movw	r3, #11160	@ tmp316,
	movt	r3, 1	@ tmp316,
	mov	r0, #0	@ D.39616,
	str	r4, [r2]	@ NextInstId, *pNextInstId_78(D)
	mov	r2, #1	@ tmp319,
	mla	r4, r3, r4, r9	@ tmp317, tmp316, NextInstId, tmp322
	str	r2, [r4, #12]	@ tmp319, s_DnrChan[NextInstId_96].InstMode
	b	.L535	@
.L571:
	ldr	r3, [r3, #432]	@ s_DnrChan[NextInstId_20].s321DFrameIsProc, s_DnrChan[NextInstId_20].s321DFrameIsProc
	cmp	r3, #1	@ s_DnrChan[NextInstId_20].s321DFrameIsProc,
	beq	.L529	@,
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp195,
	str	r8, [fp, #872]	@ s_DnrChan[NextInstId_20].DNRCaptureEnableFlag, s_DnrChan[NextInstId_20].DNRDataSourceFlag
	str	r3, [fp, #880]	@ tmp195, s_DnrChan[NextInstId_20].DNRCaptureEnableFlag
	b	.L529	@
.L544:
	bl	vfmw_dprint_nothing	@
	b	.L545	@
.L542:
	bl	vfmw_dprint_nothing	@
	b	.L543	@
.L540:
	bl	vfmw_dprint_nothing	@
	b	.L541	@
.L573:
	.align	2
.L572:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
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
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r4, .L598	@ tmp207,
	ldr	r3, [r4, #3996]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	cmp	r3, #0	@ s_DnrCtrl.DNRState,
	bne	.L575	@,
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	beq	.L595	@,
.L577:
	mov	r0, #0	@,
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L575:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r4, #4000]	@ s_DnrCtrl.LastProcessTime, s_DnrCtrl.LastProcessTime
	rsb	r0, r3, r0	@ DelayTime, s_DnrCtrl.LastProcessTime,
	cmp	r0, #500	@ DelayTime,
	ble	.L577	@,
	ldr	r0, [r4, #3992]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r5, .L598+4	@ tmp206,
	ldr	r1, [r4, #3992]	@ D.39624, s_DnrCtrl.ThisInstID
	movw	ip, #11160	@ tmp156,
	movt	ip, 1	@ tmp156,
	movw	r2, #34079	@ tmp162,
	movt	r2, 20971	@ tmp162,
	mov	lr, #100	@ tmp164,
	mla	ip, ip, r1, r5	@ tmp157, tmp156, D.39624, tmp206
	ldr	ip, [ip, #216]	@ s_DnrChan[_26].Cur1DImage.image_id, s_DnrChan[_26].Cur1DImage.image_id
	umull	r2, r3, ip, r2	@ tmp161, s_DnrChan[_26].Cur1DImage.image_id, tmp162
	mov	r2, r3, lsr #5	@ tmp159,,
	mls	r3, lr, r2, ip	@ D.39625, tmp164, tmp159, s_DnrChan[_26].Cur1DImage.image_id
	add	r3, r3, #2	@ D.39625, D.39625,
	cmp	r0, r3	@, D.39625
	beq	.L596	@,
.L579:
	movw	r6, #11160	@ tmp191,
	mov	r0, r1	@, D.39624
	movt	r6, 1	@ tmp191,
	mla	r1, r6, r1, r5	@ tmp192, tmp191, D.39624, tmp206
	add	r1, r1, #40	@, tmp192,
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r4, #3992]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mov	r2, #0	@ tmp201,
	mla	r5, r6, r3, r5	@ tmp199, tmp191, s_DnrCtrl.ThisInstID, tmp206
	str	r2, [r5, #432]	@ tmp201, s_DnrChan[_55].s321DFrameIsProc
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L598+8	@ tmp202,
	ldr	r3, [r3, #12]	@ D.39629, g_dnr_hal_fun_ptr.pfun_DNRHAL_Reset
	cmp	r3, #0	@ D.39629,
	beq	.L583	@,
	blx	r3	@ D.39629
.L584:
	mov	r3, #0	@ tmp204,
	mov	r0, #0	@,
	str	r3, [r4, #3996]	@ tmp204, s_DnrCtrl.DNRState
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, pc}	@
.L595:
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
.L596:
	ldr	r6, .L598+12	@ tmp208,
	ldr	r3, [r6]	@ D.39626, g_event_report
	cmp	r3, #0	@ D.39626,
	beq	.L580	@,
	add	r2, sp, #8	@ tmp169,,
	mov	r0, r1	@, D.39624
	mov	ip, #1	@ tmp168,
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp168, para
	blx	r3	@ D.39626
.L580:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #3992]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	movw	r0, #11160	@ tmp174,
	ldr	r7, .L598	@ tmp171,
	movt	r0, 1	@ tmp174,
	mla	r0, r0, r3, r5	@ tmp175, tmp174, s_DnrCtrl.ThisInstID, tmp206
	add	r0, r0, #968	@, tmp175,
	bl	IMGQUE_GetLastImageID	@
	cmn	r0, #1	@ ret_val,
	mov	r3, r0	@ ret_val,
	beq	.L597	@,
	ldr	ip, [r6]	@ D.39626, g_event_report
	cmp	ip, #0	@ D.39626,
	beq	.L582	@,
	add	r2, sp, #8	@ tmp183,,
	ldr	r0, [r7, #3992]	@, s_DnrCtrl.ThisInstID
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ ret_val, para
	blx	ip	@ D.39626
.L582:
	mov	r1, #0	@,
	ldr	r0, [r4, #3992]	@, s_DnrCtrl.ThisInstID
	bl	VCTRL_SetLastFrameIdPlus2	@
	ldr	r1, [r4, #3992]	@ D.39624, s_DnrCtrl.ThisInstID
	b	.L579	@
.L597:
	ldr	r3, [r6]	@ D.39626, g_event_report
	cmp	r3, #0	@ D.39626,
	beq	.L582	@,
	add	r2, sp, #8	@ tmp179,,
	mov	ip, #1	@ tmp178,
	ldr	r0, [r7, #3992]	@, s_DnrCtrl.ThisInstID
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp178, para
	blx	r3	@ D.39626
	b	.L582	@
.L583:
	bl	vfmw_dprint_nothing	@
	b	.L584	@
.L599:
	.align	2
.L598:
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
	str	r2, [sp, #12]	@ PicWidth, %sfp
	mov	r5, r0	@ ChanID, ChanID
	bl	DNR_Fsp_ShowPic	@
	subs	r3, r0, #0	@ D.39633,
	str	r3, [sp, #4]	@ D.39633, %sfp
	bne	.L603	@,
	ldr	r9, [sp, #48]	@ D.39634, PicBufID
	mov	r6, #1	@ tmp214,
	mov	r7, #392	@ tmp154,
	movw	r3, #11160	@ tmp296,
	bfi	r3, r6, #16, #16	@ tmp296, tmp214,,
	ldr	r4, .L611	@ tmp504,
	mul	r7, r7, r9	@ tmp153, tmp154, D.39634
	ldr	r1, [sp, #96]	@ tmp507, Stride
	mla	r3, r3, r5, r7	@ tmp297, tmp296, ChanID, tmp153
	movw	r0, #11160	@ tmp156,
	mul	r1, fp, r1	@ D.39634, PicHeight, tmp507
	movt	r0, 1	@ tmp156,
	add	ip, r4, r3	@ tmp298, tmp504, tmp297
	str	ip, [sp, #28]	@ tmp298, %sfp
	movw	ip, #11160	@ tmp267,
	bfi	ip, r6, #16, #16	@ tmp267, tmp214,,
	movw	r3, #11160	@ tmp332,
	bfi	r3, r6, #16, #16	@ tmp332, tmp214,,
	mla	ip, ip, r5, r7	@ tmp268, tmp267, ChanID, tmp153
	str	r1, [sp, #16]	@ D.39634, %sfp
	mla	r0, r0, r5, r7	@ tmp157, tmp156, ChanID, tmp153
	mov	r1, r10	@, pLuma
	mla	r3, r3, r5, r7	@ tmp333, tmp332, ChanID, tmp153
	add	ip, r4, ip	@ tmp269, tmp504, tmp268
	add	ip, ip, #26368	@ tmp271, tmp269,
	add	r2, r4, r0	@ tmp166, tmp504, tmp157
	movw	r10, #26608	@ tmp167,
	add	r0, r0, #26368	@ tmp159, tmp157,
	mov	r8, ip	@ tmp271, tmp271
	movw	ip, #11160	@ tmp286,
	bfi	ip, r6, #16, #16	@ tmp286, tmp214,,
	add	r3, r4, r3	@ tmp334, tmp504, tmp333
	str	r9, [r2, r10]	@ D.39634, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_id
	add	r10, r3, #26368	@ tmp336, tmp334,
	movw	r9, #11160	@ tmp350,
	add	r3, r8, #152	@ tmp271, tmp271,
	bfi	r9, r6, #16, #16	@ tmp350, tmp214,,
	str	r3, [sp, #20]	@ tmp271, %sfp
	mla	r3, ip, r5, r7	@ tmp287, tmp286, ChanID, tmp153
	movw	ip, #11160	@ tmp323,
	bfi	ip, r6, #16, #16	@ tmp323, tmp214,,
	add	r0, r0, #64	@ tmp159, tmp159,
	mla	r9, r9, r5, r7	@ tmp351, tmp350, ChanID, tmp153
	add	r3, r4, r3	@ tmp288, tmp504, tmp287
	mla	ip, ip, r5, r7	@ tmp324, tmp323, ChanID, tmp153
	add	r8, r3, #26368	@ tmp290, tmp288,
	movw	r3, #11160	@ tmp341,
	bfi	r3, r6, #16, #16	@ tmp341, tmp214,,
	add	r9, r4, r9	@ tmp352, tmp504, tmp351
	add	r8, r8, #160	@ tmp290, tmp290,
	add	ip, r4, ip	@ tmp325, tmp504, tmp324
	str	r8, [sp, #24]	@ tmp290, %sfp
	mla	r3, r3, r5, r7	@ tmp342, tmp341, ChanID, tmp153
	add	r8, ip, #26368	@ tmp327, tmp325,
	add	r9, r9, #26368	@ tmp354, tmp352,
	add	r8, r8, #96	@ tmp327, tmp327,
	add	r9, r9, #184	@ tmp354, tmp354,
	str	r8, [sp, #32]	@ tmp327, %sfp
	str	r9, [sp, #40]	@ tmp354, %sfp
	add	r0, r4, r0	@ pLogic, tmp504, tmp159
	ldrd	r8, [sp, #112]	@ tmp520,,
	movw	lr, #11160	@ tmp249,
	str	r0, [sp, #8]	@ pLogic, %sfp
	bfi	lr, r6, #16, #16	@ tmp249, tmp214,,
	movw	r0, #26432	@ tmp519,
	add	r3, r4, r3	@ tmp343, tmp504, tmp342
	strd	r8, [r2, r0]	@ tmp520, tmp166, tmp519
	movw	r0, #26440	@ tmp185,
	strd	r8, [r2, r0]	@ tmp521, tmp166, tmp185
	add	r0, r3, #26368	@ tmp345, tmp343,
	mla	lr, lr, r5, r7	@ tmp250, tmp249, ChanID, tmp153
	add	r0, r0, #112	@ tmp345, tmp345,
	movw	ip, #11160	@ tmp258,
	str	r0, [sp, #36]	@ tmp345, %sfp
	bfi	ip, r6, #16, #16	@ tmp258, tmp214,,
	movw	r0, #26448	@ tmp194,
	strd	r8, [r2, r0]	@ tmp525, tmp166, tmp194
	movw	r0, #26456	@ tmp203,
	strd	r8, [r2, r0]	@ tmp526, tmp166, tmp203
	add	r2, r2, #26368	@ tmp213, tmp166,
	mla	ip, ip, r5, r7	@ tmp259, tmp258, ChanID, tmp153
	add	lr, r4, lr	@ tmp251, tmp504, tmp250
	str	r6, [r2, #132]	@ tmp214, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DispEnableFlag
	movw	r2, #26552	@ tmp252,
	ldr	r0, [lr, r2]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_phy_addr
	movw	lr, #26520	@ tmp261,
	add	ip, r4, ip	@ tmp260, tmp504, tmp259
	movw	r3, #11160	@ tmp229,
	bfi	r3, r6, #16, #16	@ tmp229, tmp214,,
	movw	r9, #11160	@ tmp378,
	str	r0, [ip, lr]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].top_luma_phy_addr
	movw	lr, #11160	@ tmp314,
	bfi	lr, r6, #16, #16	@ tmp314, tmp214,,
	bfi	r9, r6, #16, #16	@ tmp378, tmp214,,
	mla	r3, r3, r5, r7	@ tmp230, tmp229, ChanID, tmp153
	ldr	r8, [sp, #4]	@ D.39633, %sfp
	mla	lr, lr, r5, r7	@ tmp315, tmp314, ChanID, tmp153
	movw	ip, #26536	@ tmp317,
	mla	r9, r9, r5, r7	@ tmp379, tmp378, ChanID, tmp153
	add	r3, r4, r3	@ tmp231, tmp504, tmp230
	add	lr, r4, lr	@ tmp316, tmp504, tmp315
	add	r3, r3, #26368	@ tmp233, tmp231,
	str	r0, [lr, ip]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_phy_addr
	movw	lr, #11160	@ tmp276,
	bfi	lr, r6, #16, #16	@ tmp276, tmp214,,
	str	r8, [r3, #140]	@ D.39633, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DistanceBeforeFirstFrame
	add	r2, r4, r9	@ tmp380, tmp504, tmp379
	ldr	r8, [sp, #96]	@ tmp532, Stride
	ldr	r9, [sp, #16]	@ D.39634, %sfp
	add	r2, r2, #26368	@ tmp382, tmp380,
	mla	lr, lr, r5, r7	@ tmp277, tmp276, ChanID, tmp153
	add	ip, r9, r0	@ D.39635, D.39634, D.39635
	add	r0, r0, r8	@ D.39634, D.39635, tmp532
	ldr	r8, [sp, #20]	@ tmp271, %sfp
	str	fp, [r2, #212]	@ PicHeight, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_height
	movw	r2, #11160	@ tmp425,
	add	lr, r4, lr	@ tmp278, tmp504, tmp277
	bfi	r2, r6, #16, #16	@ tmp425, tmp214,,
	str	ip, [r8, #4]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].top_chrom_phy_addr
	movw	r8, #26528	@ tmp279,
	str	r0, [lr, r8]	@ D.39634, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].btm_luma_phy_addr
	movw	r8, #11160	@ tmp464,
	bfi	r8, r6, #16, #16	@ tmp464, tmp214,,
	movw	r3, #11160	@ tmp396,
	mla	r2, r2, r5, r7	@ tmp426, tmp425, ChanID, tmp153
	bfi	r3, r6, #16, #16	@ tmp396, tmp214,,
	mla	r8, r8, r5, r7	@ tmp465, tmp464, ChanID, tmp153
	ldr	lr, [sp, #40]	@ tmp354, %sfp
	mla	r3, r3, r5, r7	@ tmp397, tmp396, ChanID, tmp153
	str	ip, [r10, #172]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_phy_addr
	ldr	r10, [sp, #96]	@ tmp535, Stride
	add	r8, r4, r8	@ tmp466, tmp504, tmp465
	add	r2, r4, r2	@ tmp427, tmp504, tmp426
	str	ip, [lr, #4]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_2d_phy_addr
	add	r2, r2, #26368	@ tmp429, tmp427,
	add	ip, r10, ip	@ D.39634, tmp535, D.39635
	add	r10, r8, #26368	@ tmp468, tmp466,
	add	r2, r2, #232	@ tmp429, tmp429,
	add	r10, r10, #200	@ tmp468, tmp468,
	str	r2, [sp, #44]	@ tmp429, %sfp
	add	r3, r4, r3	@ tmp398, tmp504, tmp397
	ldr	lr, [sp, #24]	@ tmp290, %sfp
	str	r10, [sp, #24]	@ tmp468, %sfp
	add	r3, r3, #26368	@ tmp400, tmp398,
	ldr	r10, [sp, #104]	@ tmp539, DispPicHeight
	movw	r0, #11160	@ tmp454,
	bfi	r0, r6, #16, #16	@ tmp454, tmp214,,
	movw	fp, #11160	@ tmp415,
	bfi	fp, r6, #16, #16	@ tmp415, tmp214,,
	str	ip, [lr, #4]	@ D.39634, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].btm_chrom_phy_addr
	str	r10, [r3, #220]	@ tmp539, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_height
	movw	r3, #11160	@ tmp219,
	mla	r0, r0, r5, r7	@ tmp455, tmp454, ChanID, tmp153
	bfi	r3, r6, #16, #16	@ tmp219, tmp214,,
	mla	fp, fp, r5, r7	@ tmp416, tmp415, ChanID, tmp153
	movw	lr, #11160	@ tmp305,
	mla	r3, r3, r5, r7	@ tmp220, tmp219, ChanID, tmp153
	add	r0, r4, r0	@ tmp456, tmp504, tmp455
	bfi	lr, r6, #16, #16	@ tmp305, tmp214,,
	movw	ip, #26640	@ tmp457,
	add	r8, r9, r9, lsl #1	@ D.39634, D.39634, D.39634,
	str	r6, [r0, ip]	@ tmp214, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chroma_idc
	mla	lr, lr, r5, r7	@ tmp306, tmp305, ChanID, tmp153
	ldr	ip, [sp, #28]	@ tmp298, %sfp
	add	r3, r4, r3	@ tmp221, tmp504, tmp220
	add	fp, r4, fp	@ tmp417, tmp504, tmp416
	str	r3, [sp, #16]	@ tmp221, %sfp
	add	fp, fp, #26368	@ tmp419, tmp417,
	ldr	r3, [sp, #104]	@ tmp543, DispPicHeight
	add	r8, r8, r8, lsr #31	@ tmp474, D.39634, D.39634,
	movw	r0, #26480	@ tmp541,
	add	lr, r4, lr	@ tmp307, tmp504, tmp306
	ldr	ip, [ip, r0]	@ D.39636, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_vir_addr
	movw	r2, #11160	@ tmp444,
	mov	r3, r3, lsr r6	@ D.39635, tmp543,
	str	r3, [fp, #228]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_center_y
	ldr	fp, [sp, #96]	@ tmp549, Stride
	mov	r3, r8, asr r6	@ D.39634, tmp474,
	str	r3, [sp, #28]	@ D.39634, %sfp
	bfi	r2, r6, #16, #16	@ tmp444, tmp214,,
	ldr	r3, [sp, #44]	@ tmp429, %sfp
	movw	r0, #26464	@ tmp308,
	str	ip, [lr, r0]	@ D.39636, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_vir_addr
	movw	r10, #11160	@ tmp239,
	ldr	lr, [sp, #32]	@ tmp327, %sfp
	bfi	r10, r6, #16, #16	@ tmp239, tmp214,,
	str	fp, [r3, #4]	@ tmp549, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_stride
	movw	r3, #11160	@ tmp405,
	mla	r2, r2, r5, r7	@ tmp445, tmp444, ChanID, tmp153
	bfi	r3, r6, #16, #16	@ tmp405, tmp214,,
	mov	r0, ip	@, D.39636
	add	ip, ip, r9	@ D.39636, D.39636, D.39634
	mla	r3, r3, r5, r7	@ tmp406, tmp405, ChanID, tmp153
	str	ip, [lr, #4]	@ D.39636, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_vir_addr
	movw	r9, #11160	@ tmp359,
	ldr	lr, [sp, #36]	@ tmp345, %sfp
	bfi	r9, r6, #16, #16	@ tmp359, tmp214,,
	ldr	r8, [sp, #4]	@ D.39633, %sfp
	mla	r10, r10, r5, r7	@ tmp240, tmp239, ChanID, tmp153
	add	r2, r4, r2	@ tmp446, tmp504, tmp445
	add	r2, r2, #26368	@ tmp448, tmp446,
	str	ip, [lr, #4]	@ D.39636, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].chrom_2d_vir_addr
	mla	r9, r9, r5, r7	@ tmp360, tmp359, ChanID, tmp153
	add	r3, r4, r3	@ tmp407, tmp504, tmp406
	movw	lr, #11160	@ tmp369,
	str	r3, [sp, #20]	@ tmp407, %sfp
	bfi	lr, r6, #16, #16	@ tmp369, tmp214,,
	ldr	r3, [sp, #16]	@ tmp221, %sfp
	str	r8, [r2, #244]	@ D.39633, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].error_level
	movw	ip, #11160	@ tmp387,
	movw	r2, #11160	@ tmp434,
	bfi	ip, r6, #16, #16	@ tmp387, tmp214,,
	bfi	r2, r6, #16, #16	@ tmp434, tmp214,,
	add	r10, r4, r10	@ tmp241, tmp504, tmp240
	mla	lr, lr, r5, r7	@ tmp370, tmp369, ChanID, tmp153
	movw	fp, #26504	@ tmp222,
	mla	r2, r2, r5, r7	@ tmp435, tmp434, ChanID, tmp153
	str	r8, [r3, fp]	@ D.39633, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].DispFrameDistance
	add	r9, r4, r9	@ tmp361, tmp504, tmp360
	movw	fp, #26512	@ tmp242,
	mla	ip, ip, r5, r7	@ tmp388, tmp387, ChanID, tmp153
	str	r8, [r10, fp]	@ D.39633, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].GopNum
	movw	fp, #26560	@ tmp362,
	ldr	r3, [sp, #100]	@ tmp556, DispPicWidth
	str	r8, [r9, fp]	@ D.39633, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].is_fld_save
	add	lr, r4, lr	@ tmp371, tmp504, tmp370
	ldr	fp, [sp, #12]	@ PicWidth, %sfp
	add	r10, r4, r2	@ tmp436, tmp504, tmp435
	add	ip, r4, ip	@ tmp389, tmp504, tmp388
	movw	r9, #26576	@ tmp372,
	movw	r2, #26584	@ tmp390,
	str	fp, [lr, r9]	@ PicWidth, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].image_width
	movw	r9, #26600	@ tmp428,
	ldr	fp, [sp, #28]	@ D.39634, %sfp
	movw	lr, #26592	@ tmp408,
	str	r3, [ip, r2]	@ tmp556, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_width
	mov	ip, r3, lsr r6	@ D.39635, tmp557,
	str	r8, [r10, r9]	@ D.39633, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].frame_rate
	movw	r9, #11296	@ tmp469,
	ldr	r3, [sp, #20]	@ tmp407, %sfp
	mov	r2, fp	@, D.39634
	ldr	r10, [sp, #24]	@ tmp468, %sfp
	str	ip, [r3, lr]	@ D.39635, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].disp_center_x
	str	r9, [r10, #4]	@ tmp469, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].format
	bl	memcpy	@
	movw	r3, #11160	@ tmp484,
	bfi	r3, r6, #16, #16	@ tmp484, tmp214,,
	mla	r7, r3, r5, r7	@ tmp485, tmp484, ChanID, tmp153
	movw	r3, #26480	@ tmp560,
	add	r7, r4, r7	@ tmp486, tmp504, tmp485
	ldr	r7, [r7, r3]	@ D.39636, MEM[(struct IMAGE *)&s_DnrChan][ChanID_5(D)].LogicImagePool[_8].luma_2d_vir_addr
	mov	r0, r7	@, D.39636
	bl	MEM_Vir2Phy	@
	mov	r2, fp	@, D.39634
	mov	r1, r0	@,
	mov	r0, r7	@, D.39636
	bl	KernelFlushCache	@
	movw	r0, #11160	@ tmp491,
	bfi	r0, r6, #16, #16	@ tmp491, tmp214,,
	mla	r0, r0, r5, r4	@ tmp492, tmp491, ChanID, tmp504
	add	r0, r0, #968	@, tmp492,
	ldr	r1, [sp, #8]	@, %sfp
	bl	IMGQUE_InsertImage	@
	cmp	r0, r6	@,
	beq	.L602	@,
	bl	vfmw_dprint_nothing	@
.L602:
	ldr	r1, [sp, #48]	@ PicBufID, PicBufID
	movw	r3, #19174	@ tmp496,
	mov	r2, #2	@ tmp500,
	mla	r3, r3, r5, r1	@ tmp497, tmp496, ChanID, PicBufID
	add	r3, r3, #178	@ tmp499, tmp497,
	str	r2, [r4, r3, asl #2]	@ tmp500, s_DnrChan[ChanID_5(D)].LogicImageIsUsed
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L611+4	@ tmp501,
	ldr	r3, [r3]	@ D.39638, g_event_report
	cmp	r3, #0	@ D.39638,
	beq	.L601	@,
	ldr	r1, [sp, #8]	@ pLogic, %sfp
	add	r2, sp, #56	@ tmp502,,
	mov	r0, r5	@, ChanID
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #5	@,
	blx	r3	@ D.39638
.L601:
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #60	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L603:
	mvn	r3, #0	@ D.39633,
	str	r3, [sp, #4]	@ D.39633, %sfp
	b	.L601	@
.L612:
	.align	2
.L611:
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
	ldr	r2, .L614	@ tmp113,
	mla	r1, r3, r0, r1	@ tmp116, tmp115, ChanID, PicBufID
	mov	r3, #0	@ tmp118,
	mov	r0, r3	@, tmp118
	add	r1, r1, #178	@ tmp117, tmp116,
	str	r3, [r2, r1, asl #2]	@ tmp118, s_DnrChan[ChanID_2(D)].LogicImageIsUsed
	bx	lr	@
.L615:
	.align	2
.L614:
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
	mov	r4, r4, lsr #3	@ D.39654, p_image_8(D)->image_height,
	subs	r1, r0, #0	@ p32,
	beq	.L622	@,
	ldr	r6, [r7, #148]	@ D.39654, p_image_8(D)->image_height
	cmp	r6, #0	@ D.39654,
	beq	.L623	@,
	ldr	r5, [r7, #172]	@ p_image_8(D)->image_stride, p_image_8(D)->image_stride
	mov	lr, #0	@ y,
	ldr	ip, [r7, #144]	@ D.39655, p_image_8(D)->image_width
	mov	r0, lr	@ CheckSum, y
	bic	r5, r5, #3	@ D.39654, p_image_8(D)->image_stride,
.L621:
	cmp	ip, #0	@ D.39655,
	add	r1, r1, r5	@ p32, p32, D.39654
	beq	.L619	@,
	mov	r3, #0	@ x,
.L620:
	mov	r2, r3, asr #2	@ D.39656, x,
	add	r3, r3, #1	@ x, x,
	cmp	r3, ip	@ x, D.39655
	ldr	r2, [r1, r2, asl #2]	@ *_29, *_29
	add	r0, r0, r2	@ CheckSum, CheckSum, *_29
	bne	.L620	@,
.L619:
	add	lr, lr, r4	@ y, y, D.39654
	cmp	r6, lr	@ D.39654, y
	bhi	.L621	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L622:
	mov	r0, r1	@ D.39655, p32
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L623:
	mov	r0, r6	@ CheckSum, D.39654
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
	movw	r3, #11160	@ tmp155,
	ldr	r7, .L666	@ tmp284,
	movt	r3, 1	@ tmp155,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r6, r1	@ pLogic, pLogic
	mov	r5, r0	@ ChanID, ChanID
	movw	r8, #34079	@ tmp161,
	mla	r3, r3, r0, r7	@ tmp156, tmp155, ChanID, tmp284
	movt	r8, 20971	@ tmp161,
	ldr	r4, [r3, #444]	@ PicBufID, s_DnrChan[ChanID_12(D)].CurImageBufID
	bl	VCTRL_GetLastFrameIdPlus2	@
	ldr	r2, [r6, #176]	@ pLogic_17(D)->image_id, pLogic_17(D)->image_id
	mov	r1, #100	@ tmp163,
	umull	r8, r9, r2, r8	@ tmp160, pLogic_17(D)->image_id, tmp161
	mov	r3, r9, lsr #5	@ tmp158,,
	mls	r2, r1, r3, r2	@ D.39675, tmp163, tmp158, pLogic_17(D)->image_id
	add	r2, r2, #2	@ D.39675, D.39675,
	cmp	r0, r2	@, D.39675
	beq	.L663	@,
.L631:
	movw	r0, #11160	@ tmp172,
	ldr	r9, .L666	@ tmp170,
	movt	r0, 1	@ tmp172,
	mul	r0, r0, r5	@ tmp171, tmp172, ChanID
	add	r8, r7, r0	@ tmp173, tmp284, tmp171
	add	r10, r8, #75776	@ tmp175, tmp173,
	ldr	r3, [r10, #848]	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed,
	blt	.L633	@,
	add	r0, r0, #968	@ tmp180, tmp171,
	str	r4, [r6, #176]	@ PicBufID, pLogic_17(D)->image_id
	add	r0, r9, r0	@, tmp170, tmp180
	mov	r1, r6	@, pLogic
	bl	IMGQUE_InsertImage	@
	cmp	r0, #1	@,
	mvnne	r0, #0	@ D.39674,
	bne	.L661	@,
	movw	r3, #19174	@ tmp184,
	mov	r0, #11	@,
	mla	r4, r3, r5, r4	@ tmp185, tmp184, ChanID, PicBufID
	mov	r3, #2	@ tmp187,
	add	r4, r4, #178	@ tmp186, tmp185,
	str	r3, [r9, r4, asl #2]	@ tmp187, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L664	@,
.L636:
	add	r4, r6, #188	@ ivtmp.374, pLogic,
	add	r8, r6, #204	@ D.39683, pLogic,
.L641:
	ldr	r1, [r4, #4]!	@ D.39679, MEM[base: _83, offset: 0B]
	mov	r0, r5	@, ChanID
	cmp	r1, #0	@ D.39679,
	beq	.L640	@,
	bl	MarkUsdByDnr	@
.L640:
	cmp	r4, r8	@ ivtmp.374, D.39683
	bne	.L641	@,
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	movw	r3, #11160	@ tmp276,
	movt	r3, 1	@ tmp276,
	mla	r3, r3, r5, r7	@ tmp277, tmp276, ChanID, tmp284
	add	r3, r3, #75776	@ tmp279, tmp277,
	ldr	r3, [r3, #848]	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed, s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed
	cmp	r3, #0	@ s_DnrChan[ChanID_12(D)].s32FastForwardBackwardSpeed,
	blt	.L643	@,
	ldr	r3, .L666+4	@ tmp281,
	ldr	r3, [r3]	@ D.39676, g_event_report
	cmp	r3, #0	@ D.39676,
	beq	.L643	@,
	add	r2, sp, #16	@ tmp282,,
	mov	r0, r5	@, ChanID
	mov	r1, #5	@,
	str	r6, [r2, #-4]!	@ pLogic, para
	blx	r3	@ D.39676
	mov	r0, #0	@ D.39674,
.L661:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L633:
	movw	r3, #51520	@ tmp202,
	add	fp, r8, #51456	@ tmp203, tmp173,
	ldr	r2, [r8, r3]	@ s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag, s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag
	add	fp, fp, #64	@ tmp203, tmp203,
	cmp	r2, #0	@ s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag,
	bne	.L637	@,
	mov	r0, r5	@, ChanID
	bl	DNR_ClearTempImage	@
	b	.L636	@
.L643:
	mov	r0, #0	@ D.39674,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L663:
	ldr	r3, .L666+4	@ tmp167,
	mov	r2, #1	@ tmp166,
	str	r2, [r6, #224]	@ tmp166, pLogic_17(D)->last_frame
	ldr	r3, [r3]	@ D.39676, g_event_report
	cmp	r3, #0	@ D.39676,
	beq	.L632	@,
	add	r2, sp, #16	@ tmp169,,
	mov	r0, #0	@ tmp168,
	mov	r1, #115	@,
	str	r0, [r2, #-4]!	@ tmp168, para
	mov	r0, r5	@, ChanID
	blx	r3	@ D.39676
.L632:
	bl	vfmw_dprint_nothing	@
	mov	r1, #0	@,
	mov	r0, r5	@, ChanID
	bl	VCTRL_SetLastFrameIdPlus2	@
	b	.L631	@
.L637:
	str	r4, [r6, #176]	@ PicBufID, pLogic_17(D)->image_id
	mov	ip, #392	@ tmp213,
	ldr	lr, [fp, #4]	@ D.39677, s_DnrChan[ChanID_12(D)].TempImageNum
	mov	r2, ip	@, tmp213
	mov	r1, r6	@, pLogic
	str	r3, [sp, #4]	@ tmp202, %sfp
	mla	ip, ip, lr, r0	@ tmp216, tmp213, D.39677, tmp171
	add	r0, ip, #51456	@ tmp218, tmp216,
	add	r0, r0, #72	@ tmp218, tmp218,
	add	r0, r9, r0	@, tmp170, tmp218
	str	ip, [sp]	@ tmp216, %sfp
	bl	memcpy	@
	movw	r2, #19174	@ tmp226,
	mla	r4, r2, r5, r4	@ tmp227, tmp226, ChanID, PicBufID
	ldr	lr, [r10, #864]	@ s_DnrChan[ChanID_12(D)].u32VoFrmNum, s_DnrChan[ChanID_12(D)].u32VoFrmNum
	ldr	r2, [fp, #4]	@ s_DnrChan[ChanID_12(D)].TempImageNum, s_DnrChan[ChanID_12(D)].TempImageNum
	mov	r0, #4	@ tmp229,
	ldr	r1, [r8, #448]	@ s_DnrChan[ChanID_12(D)].s32ValidImgNum, s_DnrChan[ChanID_12(D)].s32ValidImgNum
	add	r2, r2, #1	@ D.39677, s_DnrChan[ChanID_12(D)].TempImageNum,
	add	r4, r4, #178	@ tmp228, tmp227,
	rsb	r1, lr, r1	@ D.39675, s_DnrChan[ChanID_12(D)].u32VoFrmNum, s_DnrChan[ChanID_12(D)].s32ValidImgNum
	str	r2, [fp, #4]	@ D.39677, s_DnrChan[ChanID_12(D)].TempImageNum
	cmp	r2, r1	@ D.39677, D.39675
	str	r0, [r9, r4, asl #2]	@ tmp229, s_DnrChan[ChanID_12(D)].LogicImageIsUsed
	ldr	ip, [sp]	@ tmp216, %sfp
	ldr	r3, [sp, #4]	@ tmp202, %sfp
	bcc	.L665	@,
	mov	r2, #0	@ tmp273,
	str	r2, [r8, r3]	@ tmp273, s_DnrChan[ChanID_12(D)].GetFirstIFrameFlag
.L639:
	mov	r1, r6	@, pLogic
	mov	r0, r5	@, ChanID
	bl	DNR_PushTempImageToVOQ	@
	cmp	r0, #0	@,
	beq	.L636	@,
	bl	vfmw_dprint_nothing	@
	b	.L636	@
.L665:
	add	r9, r9, ip	@ tmp263, tmp170, tmp216
	movw	r3, #51752	@ tmp264,
	ldr	r3, [r9, r3]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_48].last_frame, MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_48].last_frame
	cmp	r3, #1	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_12(D)].TempImagePool[_48].last_frame,
	bne	.L636	@,
	b	.L639	@
.L664:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L666+8	@ tmp188,
	ldr	r1, .L666+12	@ tmp193,
	add	r3, r3, r5, lsl #2	@ tmp189, tmp188, ChanID,
	ldr	r2, [r3, #4072]	@ tmp192, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r2, r0	@ D.39675, tmp192, currtime
	cmp	r2, r1	@ D.39675, g_TraceFramePeriod
	strhi	r0, [r3, #4072]	@ currtime, last_rec_pos_time
	b	.L636	@
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
	movw	r1, #11160	@ tmp127,
	ldr	ip, .L685	@ tmp194,
	movt	r1, 1	@ tmp127,
	mul	r1, r1, r0	@ tmp126, tmp127, ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r3, ip, r1	@ tmp128, tmp194, tmp126
	add	lr, r3, #75776	@ tmp135, tmp128,
	ldr	r2, [r3, #444]	@ PicBufID, s_DnrChan[ChanID_5(D)].CurImageBufID
	ldr	r3, [lr, #872]	@ D.39691, s_DnrChan[ChanID_5(D)].DNRDataSourceFlag
	cmp	r3, #0	@ D.39691,
	bne	.L669	@,
	mov	lr, #392	@ tmp138,
	mla	r1, lr, r2, r1	@ tmp141, tmp138, PicBufID, tmp126
	add	r1, r1, #26368	@ tmp143, tmp141,
	add	r1, r1, #64	@ tmp143, tmp143,
	add	r1, ip, r1	@ pLogic, tmp194, tmp143
.L670:
	cmp	r0, #3	@ ChanID,
	bhi	.L671	@,
	ldr	r2, [r1, #144]	@ pLogic_1->image_width, pLogic_1->image_width
	cmp	r2, #0	@ pLogic_1->image_width,
	beq	.L671	@,
	cmp	r3, #0	@ D.39691,
	beq	.L684	@,
	cmp	r3, #1	@ D.39691,
	bne	.L671	@,
	movw	r3, #11160	@ tmp172,
	movt	r3, 1	@ tmp172,
	mla	ip, r3, r0, ip	@ tmp173, tmp172, ChanID, tmp194
	add	ip, ip, #75776	@ tmp175, tmp173,
	ldr	r2, [ip, #876]	@ s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag, s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag
	cmp	r2, #1	@ s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag,
	bne	.L671	@,
	ldr	r2, .L685+4	@ tmp191,
	mov	r4, #0	@ tmp183,
	str	r4, [ip, #872]	@ tmp183, s_DnrChan[ChanID_5(D)].DNRDataSourceFlag
	str	r4, [ip, #876]	@ tmp183, s_DnrChan[ChanID_5(D)].DNRCaptureStartFlag
	ldr	r3, [r2]	@ D.39695, g_event_report
	cmp	r3, r4	@ D.39695,
	beq	.L676	@,
	add	r2, sp, #8	@ tmp192,,
	str	r1, [r2, #-4]!	@ pLogic, para
	mov	r1, #21	@,
	blx	r3	@ D.39695
	mov	r0, r4	@ D.39690, tmp183
.L672:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L669:
	cmp	r3, #1	@ D.39691,
	bne	.L671	@,
	ldr	r1, [lr, #896]	@ pLogic, s_DnrChan[ChanID_5(D)].pCaptureImageOut
	b	.L670	@
.L684:
	movw	r2, #11160	@ tmp153,
	movt	r2, 1	@ tmp153,
	mul	r2, r2, r0	@ tmp152, tmp153, ChanID
	add	lr, ip, r2	@ tmp154, tmp194, tmp152
	ldrsb	r2, [ip, r2]	@ s_DnrChan[ChanID_5(D)].DecChanRstFlag, s_DnrChan[ChanID_5(D)].DecChanRstFlag
	cmp	r2, #1	@ s_DnrChan[ChanID_5(D)].DecChanRstFlag,
	streq	r3, [lr, #16]	@ D.39691, s_DnrChan[ChanID_5(D)].NeedStartAgain
	moveq	r0, r3	@ D.39690, D.39691
	beq	.L672	@,
	ldr	r3, [lr, #16]	@ s_DnrChan[ChanID_5(D)].NeedStartAgain, s_DnrChan[ChanID_5(D)].NeedStartAgain
	cmp	r3, #0	@ s_DnrChan[ChanID_5(D)].NeedStartAgain,
	beq	.L675	@,
.L676:
	mov	r0, #0	@ D.39690,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L671:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39690,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L675:
	bl	DNR_ProcessDnrImage	@
	cmn	r0, #1	@,
	movne	r0, #0	@ D.39696,
	moveq	r0, #1	@ D.39696,
	rsb	r0, r0, #0	@ D.39690, D.39696
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L686:
	.align	2
.L685:
	.word	.LANCHOR0
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
	ldr	r4, .L711	@ tmp220,
	ldr	r0, .L711+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, #4088]	@ g_DnrHwMem.pDnrRegVirAddr, g_DnrHwMem.pDnrRegVirAddr
	ldr	r3, [r3, #44]	@ dat, *_14
	tst	r3, #1	@ dat,
	beq	.L700	@,
	ldr	r3, .L711+8	@ tmp150,
	ldr	r3, [r3, #20]	@ D.39702, g_dnr_hal_fun_ptr.pfun_DNRHAL_ClearIntState
	cmp	r3, #0	@ D.39702,
	beq	.L689	@,
	blx	r3	@ D.39702
.L690:
	mov	r0, #10	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L706	@,
	ldr	r5, .L711+12	@ tmp221,
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	bne	.L707	@,
.L695:
	ldr	r3, [r4, #3996]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	ldr	r6, .L711	@ tmp182,
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	beq	.L708	@,
.L700:
	ldr	r0, .L711+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L706:
	bl	OSAL_GetTimeInMs	@
	ldr	r2, [r4, #3992]	@ D.39700, s_DnrCtrl.ThisInstID
	ldr	r3, .L711+16	@ tmp152,
	ldr	r1, .L711+20	@ tmp157,
	add	r3, r3, r2, lsl #2	@ tmp153, tmp152, D.39700,
	ldr	r5, .L711+12	@ tmp221,
	ldr	r2, [r3, #-4080]	@ tmp156, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r2, r2, r0	@ D.39703, tmp156, currtime
	cmp	r2, r1	@ D.39703, g_TraceFramePeriod
	strhi	r0, [r3, #-4080]	@ currtime, last_rec_pos_time
	ldr	r3, [r5, #20]	@ g_VfmwGlobalStat[0].u32DaLastStartTime, g_VfmwGlobalStat[0].u32DaLastStartTime
	cmp	r3, #0	@ g_VfmwGlobalStat[0].u32DaLastStartTime,
	beq	.L695	@,
.L707:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r5, #16]	@ D.39703, g_VfmwGlobalStat[0].u32DaBeginTime
	ldr	r3, [r5, #20]	@ D.39703, g_VfmwGlobalStat[0].u32DaLastStartTime
	mov	r6, #0	@ tmp173,
	add	r2, r1, #49920	@ D.39703, D.39703,
	str	r6, [r5, #20]	@ tmp173, g_VfmwGlobalStat[0].u32DaLastStartTime
	add	r2, r2, #80	@ D.39703, D.39703,
	cmp	r2, r3	@ D.39703, D.39703
	strcc	r3, [r5, #16]	@ D.39703, g_VfmwGlobalStat[0].u32DaBeginTime
	movcc	r1, r3	@ D.39703, D.39703
	ldrcs	r2, [r5, #24]	@ D.39705, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	movcc	r2, #0	@ D.39705,
	rsb	r1, r1, r0	@ Period, D.39703, CurTime
	rsb	r0, r3, r0	@ D.39703, D.39703, CurTime
	cmp	r1, #1000	@ Period,
	add	r0, r0, r2	@ D.39703, D.39703, D.39705
	str	r0, [r5, #24]	@ D.39703, g_VfmwGlobalStat[0].u32DaDnrWorkTime
	ldr	r5, .L711+12	@ tmp171,
	bcc	.L695	@,
	mov	r3, #1000	@ tmp176,
	mul	r0, r3, r0	@, tmp176, D.39703
	bl	__aeabi_uidiv	@
	ldr	r3, [r4, #3996]	@ s_DnrCtrl.DNRState, s_DnrCtrl.DNRState
	str	r6, [r5, #16]	@ tmp173, g_VfmwGlobalStat[0].u32DaBeginTime
	cmp	r3, #1	@ s_DnrCtrl.DNRState,
	ldr	r6, .L711	@ tmp182,
	str	r0, [r5, #28]	@, g_VfmwGlobalStat[0].u32DaDnrLoad
	bne	.L700	@,
.L708:
	ldr	r0, [r6, #3992]	@ D.39700, s_DnrCtrl.ThisInstID
	movw	r3, #11160	@ tmp187,
	ldr	r5, .L711+24	@ tmp219,
	movt	r3, 1	@ tmp187,
	mla	r3, r3, r0, r5	@ tmp188, tmp187, D.39700, tmp219
	ldr	r3, [r3, #12]	@ s_DnrChan[_51].InstMode, s_DnrChan[_51].InstMode
	cmp	r3, #1	@ s_DnrChan[_51].InstMode,
	beq	.L709	@,
.L701:
	movw	r6, #11160	@ tmp196,
	mov	r3, #0	@ tmp193,
	movt	r6, 1	@ tmp196,
	str	r3, [r4, #3996]	@ tmp193, s_DnrCtrl.DNRState
	mul	r1, r6, r0	@ tmp195, tmp196, D.39700
	ldr	r8, .L711	@ tmp192,
	ldr	r7, .L711+24	@ tmp194,
	add	r5, r5, r1	@ tmp197, tmp219, tmp195
	ldr	r5, [r5, #16]	@ s_DnrChan[_77].NeedStartAgain, s_DnrChan[_77].NeedStartAgain
	cmp	r5, r3	@ s_DnrChan[_77].NeedStartAgain,
	beq	.L710	@,
.L702:
	add	r0, sp, #4	@,,
	bl	DNR_DoNextInstance	@
	cmp	r0, #0	@,
	bne	.L700	@,
	ldr	r3, [sp, #4]	@ NextInstID, NextInstID
	mov	r2, #1	@ tmp217,
	str	r2, [r4, #3996]	@ tmp217, s_DnrCtrl.DNRState
	str	r3, [r4, #3992]	@ NextInstID, s_DnrCtrl.ThisInstID
	bl	OSAL_GetTimeInMs	@
	str	r0, [r4, #4000]	@, s_DnrCtrl.LastProcessTime
	b	.L700	@
.L710:
	add	r1, r1, #40	@ tmp203, tmp195,
	add	r1, r7, r1	@, tmp194, tmp203
	bl	VCTRL_ReleaseChanImage	@
	ldr	r3, [r8, #3992]	@ s_DnrCtrl.ThisInstID, s_DnrCtrl.ThisInstID
	mla	r6, r6, r3, r7	@ tmp210, tmp196, s_DnrCtrl.ThisInstID, tmp194
	str	r5, [r6, #432]	@ s_DnrChan[_77].NeedStartAgain, s_DnrChan[_59].s321DFrameIsProc
	b	.L702	@
.L689:
	bl	vfmw_dprint_nothing	@
	b	.L690	@
.L709:
	bl	DNR_ProcessDnrReturn	@
	ldr	r0, [r6, #3992]	@ D.39700, s_DnrCtrl.ThisInstID
	b	.L701	@
.L712:
	.align	2
.L711:
	.word	.LANCHOR1
	.word	g_TaskLock
	.word	g_dnr_hal_fun_ptr
	.word	g_VfmwGlobalStat
	.word	.LANCHOR2
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
	ldr	r2, .L718	@ tmp122,
	movw	r3, #11160	@ tmp124,
	movt	r3, 1	@ tmp124,
	mla	r0, r3, r0, r2	@ tmp125, tmp124, ChanID, tmp122
	add	r3, r0, #75776	@ tmp127, tmp125,
	ldr	r0, [r3, #900]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable
	cmp	r0, #1	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32DSDenable,
	beq	.L717	@,
	mov	r0, #1	@ D.39711,
	bx	lr	@
.L717:
	ldr	r2, [r3, #904]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	ldr	r0, [r1, #144]	@ p_image_5(D)->image_width, p_image_5(D)->image_width
	cmp	r0, r2	@ p_image_5(D)->image_width, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrWidth
	bhi	.L716	@,
	ldr	r0, [r3, #908]	@ s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r1, #148]	@ p_image_5(D)->image_height, p_image_5(D)->image_height
	cmp	r2, r0	@ p_image_5(D)->image_height, s_DnrChan[ChanID_3(D)].stDSDParam.s32ThrHeight
	movhi	r0, #0	@ D.39711,
	movls	r0, #1	@ D.39711,
	bx	lr	@
.L716:
	mov	r0, #0	@ D.39711,
	bx	lr	@
.L719:
	.align	2
.L718:
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
	ldr	r8, .L735	@ tmp130,
	add	r7, r1, #204	@ D.39738, pImage,
	ldr	r9, .L735+4	@ tmp131,
	mov	r6, r1	@ pImage, pImage
	mov	r5, r0	@ ChanID, ChanID
	mov	r10, #0	@ tmp132,
.L722:
	ldr	r2, [r4, #4]!	@ D.39731, MEM[base: _21, offset: 0B]
	cmp	r2, #0	@ D.39731,
	beq	.L721	@,
	ldr	r3, [r8, r5, asl #2]	@ tmp123, pstVdecUsdPool
	cmp	r3, #0	@ tmp123,
	beq	.L721	@,
	ldr	r3, [r9, r5, asl #2]	@ D.39733, s_pstVfmwChan
	cmp	r3, #0	@ D.39733,
	add	r1, r3, #217088	@ tmp126, D.39733,
	beq	.L721	@,
	ldr	r3, [r1, #420]	@ _9->u32ChanTick, _9->u32ChanTick
	ldr	r1, [r6, #384]	@ pImage_5(D)->u32ChanTick, pImage_5(D)->u32ChanTick
	cmp	r1, r3	@ pImage_5(D)->u32ChanTick, _9->u32ChanTick
	beq	.L734	@,
.L721:
	cmp	r4, r7	@ ivtmp.396, D.39738
	bne	.L722	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L734:
	mov	r1, r2	@, D.39731
	mov	r0, r5	@, ChanID
	bl	UnMarkUsdByDnr	@
	str	r10, [r4]	@ tmp132, MEM[base: _21, offset: 0B]
	b	.L721	@
.L736:
	.align	2
.L735:
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
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, #0	@ tmp163,
	mov	r4, r0	@ ChanID, ChanID
	str	r3, [sp]	@ tmp163, TopPhyAddr
	str	r3, [sp, #4]	@ tmp163, BtmPhyAddr
	bhi	.L740	@,
	cmp	r1, #0	@ p_image,
	mov	r5, r1	@ p_image, p_image
	beq	.L740	@,
	ldr	r3, [r1, #88]	@ p_image_17(D)->top_luma_phy_addr, p_image_17(D)->top_luma_phy_addr
	cmp	r3, #0	@ p_image_17(D)->top_luma_phy_addr,
	beq	.L754	@,
	ldr	r7, .L772	@ tmp282,
	movw	r3, #11160	@ tmp168,
	movt	r3, 1	@ tmp168,
	mla	r3, r3, r0, r7	@ tmp169, tmp168, ChanID, tmp282
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_14(D)].s32IsOpen, s_DnrChan[ChanID_14(D)].s32IsOpen
	cmp	r3, #0	@ s_DnrChan[ChanID_14(D)].s32IsOpen,
	beq	.L765	@,
.L741:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.39750, eVidStd,
	bics	r3, r3, #4	@ tmp285, D.39750,
	moveq	r3, #1	@ tmp175,
	movne	r3, #0	@ tmp175,
	cmp	r0, #4	@ eVidStd,
	movne	r0, r3	@, tmp180, tmp175
	orreq	r0, r3, #1	@,, tmp180, tmp175
	cmp	r0, #0	@ tmp180,
	bne	.L766	@,
	ldr	r1, [r5, #176]	@ D.39748, p_image_17(D)->image_id
	movw	r2, #34079	@ tmp184,
	movt	r2, 20971	@ tmp184,
	mov	r0, #100	@ tmp186,
	umull	r2, r3, r1, r2	@ tmp183, D.39748, tmp184
	mov	r8, r3, lsr #5	@ RelImgID,,
	mls	r8, r0, r8, r1	@ RelImgID, tmp186, RelImgID, D.39748
	cmp	r8, #63	@ RelImgID,
	bgt	.L767	@,
.L743:
	movw	r0, #11160	@ tmp191,
	add	r3, sp, #4	@,,
	movt	r0, 1	@ tmp191,
	mov	r2, sp	@,
	mla	r0, r0, r4, r7	@ tmp192, tmp191, ChanID, tmp282
	add	r0, r0, #968	@, tmp192,
	bl	IMGQUE_DeleteImage	@
	mov	r6, r0	@ ret,
	mov	r0, #13	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L768	@,
.L745:
	movw	r3, #11160	@ tmp208,
	subs	r6, r6, #1	@ ret, ret,
	movt	r3, 1	@ tmp208,
	mla	r3, r3, r4, r7	@ tmp209, tmp208, ChanID, tmp282
	mvnne	r6, #0	@ ret,
	add	r3, r3, #75776	@ tmp211, tmp209,
	ldr	r1, [r3, #900]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable
	cmp	r1, #1	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable,
	beq	.L769	@,
.L747:
	movw	r1, #11160	@ tmp272,
	mov	r3, #392	@ tmp270,
	movt	r1, 1	@ tmp272,
	movw	r0, #26552	@ tmp275,
	mul	r1, r1, r4	@ tmp271, tmp272, ChanID
	ldr	r2, [r5, #88]	@ p_image_17(D)->top_luma_phy_addr, p_image_17(D)->top_luma_phy_addr
	mla	r1, r3, r8, r1	@ tmp273, tmp270, RelImgID, tmp271
	ldr	ip, .L772	@ tmp268,
	add	r3, r7, r1	@ tmp274, tmp282, tmp273
	ldr	r3, [r3, r0]	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_14(D)].LogicImagePool[RelImgID_29].luma_2d_phy_addr, MEM[(struct IMAGE *)&s_DnrChan][ChanID_14(D)].LogicImagePool[RelImgID_29].luma_2d_phy_addr
	cmp	r3, r2	@ MEM[(struct IMAGE *)&s_DnrChan][ChanID_14(D)].LogicImagePool[RelImgID_29].luma_2d_phy_addr, p_image_17(D)->top_luma_phy_addr
	beq	.L770	@,
	bl	vfmw_dprint_nothing	@
	clz	r2, r6	@ D.39745, ret
	mov	r2, r2, lsr #5	@ D.39745, D.39745,
.L749:
	movw	r3, #11160	@ tmp257,
	movt	r3, 1	@ tmp257,
	mla	r3, r3, r4, r7	@ tmp258, tmp257, ChanID, tmp282
	add	r3, r3, #75776	@ tmp259, tmp258,
	add	r3, r3, #896	@ tmp259, tmp259,
	ldr	r3, [r3, #4]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32DSDenable,
	movne	r2, #0	@, tmp266
	andeq	r2, r2, #1	@,, tmp266, D.39745
	cmp	r2, #0	@ tmp266,
	moveq	r0, r6	@ D.39744, ret
	bne	.L771	@,
.L759:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L766:
	mov	r1, r5	@, p_image
	mov	r0, r4	@, ChanID
	bl	VCTRL_ReleaseChanImage	@
	adds	r0, r0, #0	@ D.39745,,
	movne	r0, #1	@ D.39745,
	rsb	r0, r0, #0	@ D.39744, D.39745
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L765:
	bl	vfmw_dprint_nothing	@
	b	.L741	@
.L767:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #176]	@ D.39748, p_image_17(D)->image_id
	b	.L743	@
.L768:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L772+4	@ tmp194,
	ldr	r1, .L772+8	@ tmp199,
	add	r3, r3, r4, lsl #2	@ tmp195, tmp194, ChanID,
	ldr	r2, [r3, #-4064]	@ tmp198, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r2, r2, r0	@ D.39748, tmp198, currtime
	cmp	r2, r1	@ D.39748, g_TraceImgPeriod
	strhi	r0, [r3, #-4064]	@ currtime, last_rec_pos_time
	b	.L745	@
.L769:
	ldr	r2, [r3, #904]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrWidth, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrWidth
	ldr	r1, [r5, #144]	@ p_image_17(D)->image_width, p_image_17(D)->image_width
	cmp	r1, r2	@ p_image_17(D)->image_width, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrWidth
	bhi	.L748	@,
	ldr	r3, [r3, #908]	@ s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrHeight, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrHeight
	ldr	r2, [r5, #148]	@ p_image_17(D)->image_height, p_image_17(D)->image_height
	cmp	r2, r3	@ p_image_17(D)->image_height, s_DnrChan[ChanID_14(D)].stDSDParam.s32ThrHeight
	bls	.L747	@,
.L748:
	ldr	r8, [r5, #176]	@ D.39748, p_image_17(D)->image_id
	mov	r1, r5	@, p_image
	ldr	r3, [r5, #380]	@ p_image_17(D)->resetNum, p_image_17(D)->resetNum
	mov	r0, r4	@, ChanID
	add	r3, r8, r3	@ D.39748, D.39748, p_image_17(D)->resetNum
	sub	r3, r3, #6	@ D.39748, D.39748,
	str	r3, [r5, #176]	@ D.39748, p_image_17(D)->image_id
	bl	VCTRL_ReleaseChanImage	@
	subs	r6, r0, #0	@ ret,
	strne	r8, [r5, #176]	@ D.39748, p_image_17(D)->image_id
	mvnne	r0, #0	@ D.39744,
	bne	.L759	@,
	ldr	r1, [r5, #176]	@ p_image_17(D)->image_id, p_image_17(D)->image_id
	movw	r3, #19174	@ tmp250,
	mov	r2, #1	@ D.39745,
	mla	r3, r3, r4, r1	@ tmp251, tmp250, ChanID, p_image_17(D)->image_id
	add	r3, r3, #184	@ tmp253, tmp251,
	str	r6, [r7, r3, asl #2]	@ ret, s_DnrChan[ChanID_14(D)].LogicImageIsUsed
	str	r8, [r5, #176]	@ D.39748, p_image_17(D)->image_id
	b	.L749	@
.L770:
	movw	r3, #19174	@ tmp231,
	add	r1, r1, #26368	@ tmp242, tmp273,
	mla	r8, r3, r4, r8	@ tmp232, tmp231, ChanID, RelImgID
	add	r1, r1, #64	@ tmp242, tmp242,
	add	r1, ip, r1	@, tmp268, tmp242
	mov	r0, r4	@, ChanID
	mov	r3, #0	@ tmp234,
	add	r8, r8, #178	@ tmp233, tmp232,
	str	r3, [ip, r8, asl #2]	@ tmp234, s_DnrChan[ChanID_14(D)].LogicImageIsUsed
	bl	DNR_ReleaseUsrData	@
	clz	r2, r6	@ D.39745, ret
	mov	r2, r2, lsr #5	@ D.39745, D.39745,
	b	.L749	@
.L754:
	mvn	r0, #0	@ D.39744,
	b	.L759	@
.L771:
	mov	r1, r5	@, p_image
	mov	r0, r4	@, ChanID
	bl	VCTRL_RlsDSDFrame	@
	b	.L759	@
.L740:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39744,
	b	.L759	@
.L773:
	.align	2
.L772:
	.word	.LANCHOR0
	.word	.LANCHOR2
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
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ ChanID, ChanID
	bhi	.L777	@,
	cmp	r1, #0	@ p_image,
	mov	r4, r1	@ p_image, p_image
	beq	.L777	@,
	movw	r3, #11160	@ tmp145,
	ldr	r7, .L801	@ tmp206,
	movt	r3, 1	@ tmp145,
	mul	r5, r3, r0	@ tmp144, tmp145, ChanID
	add	r3, r7, r5	@ tmp146, tmp206, tmp144
	ldr	r3, [r3, #8]	@ s_DnrChan[ChanID_6(D)].s32IsOpen, s_DnrChan[ChanID_6(D)].s32IsOpen
	cmp	r3, #0	@ s_DnrChan[ChanID_6(D)].s32IsOpen,
	beq	.L777	@,
	bl	VCTRL_GetVidStd	@
	sub	r3, r0, #14	@ D.39760, eVidStd,
	mov	r8, r0	@ eVidStd,
	bics	r3, r3, #4	@ tmp209, D.39760,
	moveq	r3, #1	@ tmp152,
	movne	r3, #0	@ tmp152,
	cmp	r0, #4	@ eVidStd,
	orreq	r3, r3, #1	@,, tmp157, tmp152
	cmp	r3, #0	@ tmp157,
	bne	.L799	@,
	add	r0, r5, #968	@ tmp163, tmp144,
	mov	r1, r4	@, p_image
	add	r0, r7, r0	@, tmp206, tmp163
	bl	IMGQUE_GetImage	@
	mov	r5, r0	@ ret,
	mov	r0, #12	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L800	@,
.L781:
	cmp	r5, #1	@ ret,
	bne	.L783	@,
	movw	r5, #19174	@ tmp177,
	ldr	r2, [r4, #176]	@ D.39758, p_image_10(D)->image_id
	mul	r5, r5, r6	@ tmp176, tmp177, ChanID
	ldr	r8, .L801	@ tmp175,
	add	r2, r5, r2	@ tmp178, tmp176, D.39758
	add	r2, r2, #178	@ tmp179, tmp178,
	ldr	r1, [r7, r2, asl #2]	@ D.39759, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	cmp	r1, #3	@ D.39759,
	beq	.L777	@,
	movw	r3, #11160	@ tmp182,
	movt	r3, 1	@ tmp182,
	mla	r3, r3, r6, r8	@ tmp183, tmp182, ChanID, tmp175
	add	r3, r3, #75776	@ tmp184, tmp183,
	add	r3, r3, #896	@ tmp184, tmp184,
	ldr	r3, [r3, #4]	@ s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable, s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable
	cmp	r3, #1	@ s_DnrChan[ChanID_6(D)].stDSDParam.s32DSDenable,
	beq	.L784	@,
	cmp	r1, #2	@ D.39759,
	beq	.L785	@,
	bl	vfmw_dprint_nothing	@
	mov	r1, r4	@, p_image
	mov	r0, r6	@, ChanID
	bl	DNR_ReleaseImage	@
	ldr	r2, [r4, #176]	@ D.39758, p_image_10(D)->image_id
	mov	r3, #0	@ tmp192,
	mvn	r0, #0	@ D.39754,
	add	r5, r5, r2	@ tmp190, tmp176, D.39758
	add	r5, r5, #178	@ tmp191, tmp190,
	str	r3, [r8, r5, asl #2]	@ tmp192, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L799:
	mov	r0, r6	@, ChanID
	mov	r1, r4	@, p_image
	bl	VCTRL_GetChanImage	@
	cmp	r0, #0	@ D.39754
	bne	.L783	@,
	cmp	r8, #18	@ eVidStd,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r2, [r4, #120]	@ D.39758, p_image_10(D)->luma_2d_phy_addr
	ldr	r1, [r4, #124]	@ D.39758, p_image_10(D)->chrom_2d_phy_addr
	ldr	r3, [r4, #172]	@ D.39758, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.39758, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.39758, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.39758, D.39758, D.39758
	add	r3, r3, r1	@ D.39758, D.39758, D.39758
	str	r2, [r4, #96]	@ D.39758, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.39758, p_image_10(D)->btm_chrom_phy_addr
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L785:
	mov	r3, #3	@ tmp198,
	mov	r0, #0	@ D.39754,
	str	r3, [r8, r2, asl #2]	@ tmp198, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L800:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L801+4	@ tmp165,
	ldr	r1, .L801+8	@ tmp170,
	add	r3, r3, r6, lsl #2	@ tmp166, tmp165, ChanID,
	ldr	r2, [r3, #-4048]	@ tmp169, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceImgPeriod, g_TraceImgPeriod
	rsb	r2, r2, r0	@ D.39758, tmp169, currtime
	cmp	r2, r1	@ D.39758, g_TraceImgPeriod
	strhi	r0, [r3, #-4048]	@ currtime, last_rec_pos_time
	b	.L781	@
.L784:
	mov	r3, #3	@ tmp204,
	mov	r0, #0	@ D.39754,
	str	r3, [r8, r2, asl #2]	@ tmp204, s_DnrChan[ChanID_6(D)].LogicImageIsUsed
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L777:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39754,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L783:
	mvn	r0, #0	@ D.39754,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L802:
	.align	2
.L801:
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	g_TraceImgPeriod
	.fnend
	.size	DNR_ReceiveImage, .-DNR_ReceiveImage
	.align	2
	.global	DNR_GetVoUsingFrameInQue
	.type	DNR_GetVoUsingFrameInQue, %function
DNR_GetVoUsingFrameInQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0	@ ChanID, ChanID
	.pad #20
	sub	sp, sp, #20	@,,
	bhi	.L806	@,
	cmp	r1, #0	@ VoUsingFrameArray,
	mov	r4, r1	@ VoUsingFrameArray, VoUsingFrameArray
	beq	.L806	@,
	mov	r1, #8	@,
	add	r0, sp, r1	@,,
	mov	r6, r2	@ s32Num, s32Num
	bl	__memzero	@
	ldr	ip, .L867	@ tmp244,
	movw	r8, #11160	@ tmp173,
	movt	r8, 1	@ tmp173,
	movw	r3, #26400	@ tmp175,
	mla	r8, r8, r5, ip	@ tmp174, tmp173, ChanID, tmp244
	add	lr, r8, #26368	@ tmp176, tmp174,
	add	lr, lr, #32	@ tmp176, tmp176,
	ldr	r2, [r8, r3]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.history
	ldr	r3, [lr, #4]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head
	and	r2, r2, #63	@ i, i,
	cmp	r3, r2	@ i, i
	beq	.L807	@,
	movw	r7, #19174	@ tmp265,
	mov	r3, #0	@ s32UsingCount,
	mul	r7, r7, r5	@ tmp266, tmp265, ChanID
	b	.L810	@
.L865:
	ldr	r9, [r1, #104]	@ pImage_29->luma_phy_addr, pImage_29->luma_phy_addr
	str	r9, [r4, r3, asl #3]	@ pImage_29->luma_phy_addr, _35->FrameAddr
	add	r3, r3, #1	@ s32UsingCount, s32UsingCount,
	ldr	r1, [r1, #360]	@ D.39786, pImage_29->ImgSize
	str	r1, [r0, #4]	@ D.39786, _35->FrameSize
.L809:
	add	r2, r2, #1	@ i, i,
	ldr	r1, [lr, #4]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head
	and	r2, r2, #63	@ i, i,
	cmp	r1, r2	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.head, i
	beq	.L864	@,
.L810:
	add	r1, r7, r2	@ tmp186, tmp266, i
	add	r0, r4, r3, lsl #3	@ D.39785, VoUsingFrameArray, s32UsingCount,
	add	r1, r1, #260	@ tmp188, tmp186,
	add	r1, r1, #2	@ tmp188, tmp188,
	ldr	r1, [ip, r1, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.image_ptr
	adds	r9, r1, #0	@ tmp195, pImage,
	movne	r9, #1	@ tmp195,
	cmp	r3, #63	@ s32UsingCount,
	movgt	r9, #0	@ tmp195,
	cmp	r9, #0	@ tmp195,
	bne	.L865	@,
	cmp	r3, #63	@ s32UsingCount,
	ble	.L809	@,
.L816:
	mvn	r0, #0	@ D.39781,
.L859:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L864:
	movw	r1, #26408	@ tmp209,
	ldr	r1, [r8, r1]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	cmp	r2, r1	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	beq	.L817	@,
.L811:
	movw	lr, #11160	@ tmp261,
	movw	r1, #19174	@ tmp259,
	movt	lr, 1	@ tmp261,
	mla	lr, lr, r5, ip	@ tmp263, tmp261, ChanID, tmp244
	mul	r5, r1, r5	@ tmp260, tmp259, ChanID
	add	lr, lr, #26368	@ tmp264, tmp263,
	add	lr, lr, #40	@ tmp264, tmp264,
	b	.L818	@
.L866:
	ldr	r0, [r1, #104]	@ pImage_46->luma_phy_addr, pImage_46->luma_phy_addr
	str	r0, [r4, r3, asl #3]	@ pImage_46->luma_phy_addr, _52->FrameAddr
	add	r3, r3, #1	@ s32UsingCount, s32UsingCount,
	ldr	r1, [r1, #360]	@ D.39786, pImage_46->ImgSize
	str	r1, [r7, #4]	@ D.39786, _52->FrameSize
.L815:
	add	r2, r2, #1	@ i, i,
	ldr	r1, [lr]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	and	r2, r2, #63	@ i, i,
	cmp	r1, r2	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, i
	beq	.L817	@,
.L818:
	add	r1, r5, r2	@ tmp215, tmp260, i
	add	r7, r4, r3, lsl #3	@ D.39785, VoUsingFrameArray, s32UsingCount,
	add	r1, r1, #260	@ tmp217, tmp215,
	add	r1, r1, #2	@ tmp217, tmp217,
	ldr	r1, [ip, r1, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.image_ptr
	adds	r0, r1, #0	@ tmp224, pImage,
	movne	r0, #1	@ tmp224,
	cmp	r3, #63	@ s32UsingCount,
	movgt	r0, #0	@ tmp224,
	cmp	r0, #0	@ tmp224,
	bne	.L866	@,
	cmp	r3, #63	@ s32UsingCount,
	ble	.L815	@,
	b	.L816	@
.L817:
	cmp	r3, #0	@ s32UsingCount,
	ble	.L812	@,
	ldr	r8, [r4]	@ D.39786, VoUsingFrameArray_23(D)->FrameAddr
	cmp	r8, #-2147483648	@ D.39786,
	beq	.L806	@,
	ldr	lr, [sp, #8]	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, TempVoUsingFrameInfo.FrameAddr
	mov	r9, #0	@ TempVoUsingFrameInfo_FrameSize_lsm.413,
	ldr	fp, [sp, #12]	@ TempVoUsingFrameInfo_FrameSize_lsm.412, TempVoUsingFrameInfo.FrameSize
	mov	r10, r9	@ TempVoUsingFrameInfo_FrameAddr_lsm.411, TempVoUsingFrameInfo_FrameSize_lsm.413
	mov	r7, r9	@ MinIndex, TempVoUsingFrameInfo_FrameSize_lsm.413
	mov	r5, r4	@ ivtmp.425, VoUsingFrameArray
	mov	ip, r6	@ s32Num, s32Num
.L819:
	add	r6, r7, #1	@ MinIndex, MinIndex,
	cmp	r6, r3	@ MinIndex, s32UsingCount
	bge	.L823	@,
	ldr	r0, [r5, #8]	@ D.39786, MEM[base: _3, offset: 8B]
	cmp	r0, #-2147483648	@ D.39786,
	beq	.L863	@,
	mov	r1, r7	@ MinIndex, MinIndex
	mov	r2, r6	@ MinIndex, MinIndex
	str	ip, [sp, #4]	@ s32Num, %sfp
	b	.L827	@
.L831:
	ldr	r0, [r4, r2, asl #3]	@ D.39786, MEM[base: VoUsingFrameArray_23(D), index: _77, step: 8, offset: 0B]
	cmp	r0, #-2147483648	@ D.39786,
	beq	.L863	@,
.L827:
	ldr	ip, [r4, r1, asl #3]	@ tmp318, _71->FrameAddr
	cmp	ip, r0	@ tmp318, D.39786
	movgt	r1, r2	@ MinIndex, MinIndex
	add	r2, r2, #1	@ MinIndex, MinIndex,
	cmp	r2, r3	@ MinIndex, s32UsingCount
	blt	.L831	@,
	cmp	r1, r7	@ MinIndex, MinIndex
	ldr	ip, [sp, #4]	@ s32Num, %sfp
	beq	.L833	@,
	ldr	r0, [r4, r1, asl #3]	@ D.39786, _80->FrameAddr
	add	r2, r4, r1, lsl #3	@ D.39785, VoUsingFrameArray, MinIndex,
	ldr	fp, [r5, #4]	@ TempVoUsingFrameInfo_FrameSize_lsm.412, MEM[base: _3, offset: 4B]
	mov	r9, #1	@ TempVoUsingFrameInfo_FrameSize_lsm.413,
	mov	lr, r8	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, D.39786
	mov	r10, r9	@ TempVoUsingFrameInfo_FrameAddr_lsm.411, TempVoUsingFrameInfo_FrameSize_lsm.413
	str	r0, [r5]	@ D.39786, MEM[base: _3, offset: 0B]
	ldr	r0, [r2, #4]	@ D.39786, _80->FrameSize
	str	r0, [r5, #4]	@ D.39786, MEM[base: _3, offset: 4B]
	str	r8, [r4, r1, asl #3]	@ D.39786, _80->FrameAddr
	str	fp, [r2, #4]	@ TempVoUsingFrameInfo_FrameSize_lsm.412, _80->FrameSize
.L833:
	ldr	r8, [r5, #8]!	@ D.39786, MEM[base: _92, offset: 0B]
	mov	r7, r6	@ MinIndex, MinIndex
	cmp	r8, #-2147483648	@ D.39786,
	bne	.L819	@,
.L863:
	cmp	r10, #0	@ TempVoUsingFrameInfo_FrameAddr_lsm.411,
	strne	lr, [sp, #8]	@ TempVoUsingFrameInfo_FrameAddr_lsm.410, TempVoUsingFrameInfo.FrameAddr
	cmp	r9, #0	@ TempVoUsingFrameInfo_FrameSize_lsm.413,
	strne	fp, [sp, #12]	@ TempVoUsingFrameInfo_FrameSize_lsm.412, TempVoUsingFrameInfo.FrameSize
.L806:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39781,
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L807:
	movw	r3, #26408	@ tmp241,
	ldr	r3, [r8, r3]	@ MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	cmp	r2, r3	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_19(D)].LogicImageQue.tail
	mov	r3, #0	@ s32UsingCount,
	bne	.L811	@,
.L812:
	str	r3, [r6]	@ s32UsingCount, *s32Num_88(D)
	mov	r0, #0	@ D.39781,
	b	.L859	@
.L823:
	bne	.L833	@,
	mov	r6, ip	@ s32Num, s32Num
	b	.L812	@
.L868:
	.align	2
.L867:
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
	bne	.L874	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #1	@ tmp151,
	movgt	r0, #0	@ tmp151,
	cmp	r3, r1	@ ImgEndAddr, DecPhyStartAddr
	movle	r0, #0	@ tmp151,
	cmp	r0, #0	@ tmp151,
	bne	.L874	@,
	cmp	r3, r2	@ ImgEndAddr, DecPhyEndAddr
	movle	r0, #0	@ s32Count,
	movgt	r0, #1	@ s32Count,
	cmp	ip, r1	@ ImgStartAddr, DecPhyStartAddr
	movge	r0, #0	@ s32Count,
	bx	lr	@
.L874:
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
	beq	.L878	@,
	cmp	r2, #0	@ Size,
	beq	.L878	@,
	ldr	r7, .L895	@ tmp172,
	movw	r3, #11160	@ tmp131,
	movt	r3, 1	@ tmp131,
	movw	r1, #26400	@ tmp133,
	add	r6, r8, r2	@ DecPhyEndAddr, DecPhy, Size
	mov	r10, r0	@ ChanID, ChanID
	mla	r3, r3, r0, r7	@ tmp132, tmp131, ChanID, tmp172
	add	r2, r3, #26368	@ tmp134, tmp132,
	ldr	r4, [r3, r1]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.history
	ldr	r5, [r2, #36]	@ i, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.head
	and	r4, r4, #63	@ i, i,
	cmp	r5, r4	@ i, i
	beq	.L887	@,
	movw	r9, #19174	@ tmp143,
	mul	r9, r9, r0	@ tmp142, tmp143, ChanID
	add	r3, r9, r4	@ tmp144, tmp142, i
	add	r3, r3, #260	@ tmp146, tmp144,
	add	r3, r3, #2	@ tmp146, tmp146,
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	movne	fp, #0	@ s32Count,
	bne	.L881	@,
	b	.L894	@
.L882:
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L894	@,
.L881:
	mov	r2, r6	@, DecPhyEndAddr
	mov	r1, r8	@, DecPhy
	bl	DNR_FsOccupyByVO	@
	add	r4, r4, #1	@ i, i,
	and	r4, r4, #63	@ i, i,
	add	r3, r9, r4	@ tmp150, tmp176, i
	cmp	r4, r5	@ i, i
	add	r3, r3, #260	@ tmp152, tmp150,
	add	r3, r3, #2	@ tmp152, tmp152,
	add	fp, fp, r0	@ s32Count, s32Count,
	bne	.L882	@,
.L879:
	movw	r3, #11160	@ tmp155,
	movw	r2, #26408	@ tmp157,
	movt	r3, 1	@ tmp155,
	and	r5, r5, #63	@ i, i,
	mla	r3, r3, r10, r7	@ tmp156, tmp155, ChanID, tmp172
	ldr	r1, .L895	@ tmp153,
	ldr	r4, [r3, r2]	@ D.39797, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.tail
	cmp	r4, r5	@ D.39797, i
	beq	.L883	@,
	movw	r3, #19174	@ tmp161,
	mul	r10, r3, r10	@ tmp160, tmp161, ChanID
	add	r3, r10, r5	@ tmp162, tmp160, i
	add	r3, r3, #260	@ tmp164, tmp162,
	add	r3, r3, #2	@ tmp164, tmp164,
	ldr	r0, [r1, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	bne	.L885	@,
	b	.L894	@
.L886:
	ldr	r0, [r7, r3, asl #2]	@ pImage, MEM[(struct IMAGE_QUEUE *)&s_DnrChan][ChanID_13(D)].LogicImageQue.image_ptr
	cmp	r0, #0	@ pImage,
	beq	.L894	@,
.L885:
	mov	r2, r6	@, DecPhyEndAddr
	mov	r1, r8	@, DecPhy
	bl	DNR_FsOccupyByVO	@
	add	r5, r5, #1	@ i, i,
	and	r5, r5, #63	@ i, i,
	add	r3, r10, r5	@ tmp168, tmp174, i
	cmp	r5, r4	@ i, D.39797
	add	r3, r3, #260	@ tmp170, tmp168,
	add	r3, r3, #2	@ tmp170, tmp170,
	add	fp, fp, r0	@ s32Count, s32Count,
	bne	.L886	@,
.L883:
	mov	r0, fp	@ D.39795, s32Count
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L894:
	mvn	r0, #0	@ D.39795,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L887:
	mov	fp, #0	@ s32Count,
	b	.L879	@
.L878:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39795,
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L896:
	.align	2
.L895:
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
	cmp	r0, #3	@ ChanID,
	movgt	ip, #0	@ tmp160,
	movle	ip, #1	@ tmp160,
	cmp	r1, #0	@ pChanMem,
	moveq	ip, #0	@ tmp160,
	cmp	ip, #0	@ tmp160,
	beq	.L905	@,
	ldr	ip, [r1]	@ D.39817, pChanMem_9(D)->PhyAddr
	cmp	ip, #0	@ D.39817,
	beq	.L905	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #444
	sub	sp, sp, #444	@,,
	ldr	lr, [r1, #4]	@ pChanMem_9(D)->VirAddr, pChanMem_9(D)->VirAddr
	cmp	lr, #0	@ pChanMem_9(D)->VirAddr,
	beq	.L907	@,
	ldr	r1, [r1, #8]	@ D.39817, pChanMem_9(D)->Length
	cmp	r1, #0	@ D.39817,
	ble	.L907	@,
	ldr	lr, .L912	@ tmp162,
	ldr	r5, [lr, #36]	@ D.39819, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	r5, #0	@ D.39819,
	beq	.L900	@,
	add	r6, sp, #24	@ tmp164,,
	mvn	lr, #0	@ tmp165,
	mov	r4, r0	@ ChanID, ChanID
	str	r6, [sp, #16]	@ tmp164,
	mov	r0, ip	@, D.39817
	str	lr, [sp, #12]	@ tmp165,
	mov	ip, #64	@ tmp163,
	str	ip, [sp, #20]	@ tmp163,
	str	ip, [sp, #4]	@ tmp163,
	mov	ip, #0	@ tmp166,
	str	ip, [sp, #8]	@ tmp166,
	str	ip, [sp]	@ tmp166,
	blx	r5	@ D.39819
	cmp	r0, #0	@ D.39817
	bne	.L900	@,
	movw	r3, #11160	@ tmp171,
	ldr	r6, .L912+4	@ tmp206,
	movt	r3, 1	@ tmp171,
	ldr	r2, [sp, #300]	@ MemArrange.ValidFrameNum, MemArrange.ValidFrameNum
	mul	r3, r3, r4	@ tmp170, tmp171, ChanID
	add	r5, sp, #440	@ ivtmp.441,,
	cmp	r2, #64	@ MemArrange.ValidFrameNum,
	ldr	ip, [sp, #36]	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	ldr	lr, [r5, #-408]!	@ MemArrange.FrameAddr, MemArrange.FrameAddr
	add	r8, sp, #288	@ D.39824,,
	add	r1, r6, r3	@ tmp177, tmp206, tmp170
	add	r4, r3, #26368	@ tmp173, tmp170,
	add	r4, r4, #64	@ tmp173, tmp173,
	add	r3, r3, #456	@ D.39822, tmp170,
	mov	r7, r0	@ i, D.39817
	mov	r9, r1	@ tmp209, tmp177
	add	r4, r6, r4	@ pLogicImage, tmp206, tmp173
	movge	r2, #64	@ D.39817,
	add	r6, r6, r3	@ ivtmp.444, tmp206, D.39822
	str	r2, [r1, #448]	@ D.39817, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	rsb	r3, lr, ip	@ D.39817, MemArrange.FrameAddr, MemArrange.FrameAddr
	str	r3, [r1, #452]	@ D.39817, s_DnrChan[ChanID_7(D)].s32ImgBlockMemSize
.L903:
	ldr	r3, [r9, #448]	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, s_DnrChan[ChanID_7(D)].s32ValidImgNum
	add	r5, r5, #4	@ ivtmp.441, ivtmp.441,
	add	r4, r4, #392	@ pLogicImage, pLogicImage,
	add	r6, r6, #4	@ ivtmp.444, ivtmp.444,
	cmp	r3, r7	@ s_DnrChan[ChanID_7(D)].s32ValidImgNum, i
	add	r7, r7, #1	@ i, i,
	ldrgt	r3, [r5, #-4]	@ D.39817, MEM[base: _70, offset: 0B]
	ldrle	r3, [sp, #32]	@ D.39817, MemArrange.FrameAddr
	str	r3, [r6, #-4]	@ D.39817,
	mov	r0, r3	@, D.39817
	str	r3, [r4, #-272]	@ D.39817, MEM[base: pLogicImage_59, offset: 120B]
	bl	MEM_Phy2Vir	@
	ldr	r3, [r4, #-272]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 120B]
	cmp	r5, r8	@ ivtmp.441, D.39824
	str	r3, [r4, #-304]	@ MEM[base: pLogicImage_59, offset: 120B], MEM[base: pLogicImage_59, offset: 88B]
	str	r0, [r4, #-344]	@, MEM[base: pLogicImage_59, offset: 48B]
	bne	.L903	@,
.L900:
	mov	r0, #0	@ D.39816,
.L898:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L905:
	mvn	r0, #0	@ D.39816,
	bx	lr	@
.L907:
	mvn	r0, #0	@ D.39816,
	b	.L898	@
.L913:
	.align	2
.L912:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	DNR_ArrangeMem, .-DNR_ArrangeMem
	.align	2
	.global	DNR_EnableChanWithoutArrange
	.type	DNR_EnableChanWithoutArrange, %function
DNR_EnableChanWithoutArrange:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	cmp	r0, #3	@ ChanID,
	ldr	r6, .L920	@ tmp141,
	.pad #24
	sub	sp, sp, #24	@,,
	mov	r5, r0	@ ChanID, ChanID
	ldr	r3, [r6]	@ __stack_chk_guard, __stack_chk_guard
	str	r3, [sp, #20]	@ __stack_chk_guard, D.39829
	bgt	.L917	@,
	movw	r1, #11160	@ tmp117,
	ldr	r8, .L920+4	@ tmp118,
	movt	r1, 1	@ tmp117,
	mul	r4, r1, r0	@ tmp119, tmp117, ChanID
	add	r7, r8, r4	@ __p, tmp118, tmp119
	mov	r0, r7	@, __p
	bl	__memzero	@
	mov	r3, r5	@, ChanID
	ldr	r2, .L920+8	@,
	mov	r1, #16	@,
	add	r0, sp, #4	@ tmp142,,
	bl	snprintf	@
	add	r0, r4, #968	@ tmp129, tmp119,
	add	r0, r8, r0	@, tmp118, tmp129
	ldr	r2, .L920+12	@,
	add	r1, sp, #4	@ tmp143,,
	bl	IMGQUE_InitQueue	@
	mov	r0, #0	@ D.39827,
	mov	r3, #1	@ tmp136,
	str	r3, [r7, #8]	@ tmp136, s_DnrChan[ChanID_3(D)].s32IsOpen
.L915:
	ldr	r2, [sp, #20]	@ D.39829, D.39829
	ldr	r3, [r6]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.39829, __stack_chk_guard
	bne	.L919	@,
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L917:
	mvn	r0, #0	@ D.39827,
	b	.L915	@
.L919:
	bl	__stack_chk_fail	@
.L921:
	.align	2
.L920:
	.word	__stack_chk_guard
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
	ldr	r4, .L924	@ tmp115,
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
.L925:
	.align	2
.L924:
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
	ldr	r2, .L927	@ tmp114,
	movw	r3, #11160	@ tmp116,
	movt	r3, 1	@ tmp116,
	mla	r0, r3, r0, r2	@ tmp117, tmp116, ChanID, tmp114
	ldr	r0, [r0, #8]	@, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L928:
	.align	2
.L927:
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
	ldr	r1, .L930	@ tmp111,
	movw	r3, #11160	@ tmp113,
	movt	r3, 1	@ tmp113,
	mov	r2, #1	@ tmp116,
	mla	r0, r3, r0, r1	@ tmp114, tmp113, ChanID, tmp111
	str	r2, [r0, #8]	@ tmp116, s_DnrChan[ChanID_2(D)].s32IsOpen
	bx	lr	@
.L931:
	.align	2
.L930:
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
	bhi	.L936	@,
	ldr	r4, .L937	@ tmp119,
	movw	r3, #11160	@ tmp121,
	movt	r3, 1	@ tmp121,
	ldr	lr, [r2]	@ D.39842, pstVDecDnrPara_7(D)->pstCaptureInFrm
	mov	r0, #0	@ D.39840,
	mla	r3, r3, ip, r4	@ tmp122, tmp121, ChanID, tmp119
	add	r3, r3, #75776	@ tmp124, tmp122,
	str	lr, [r3, #892]	@ D.39842, s_DnrChan[ChanID_3(D)].pCaptureImageIn
	ldr	r2, [r2, #4]	@ D.39842, pstVDecDnrPara_7(D)->pstCaptureOutFrm
	str	r1, [r3, #880]	@ DNRDataSourceFlag, s_DnrChan[ChanID_3(D)].DNRCaptureEnableFlag
	str	r2, [r3, #896]	@ D.39842, s_DnrChan[ChanID_3(D)].pCaptureImageOut
	ldmfd	sp!, {r4, pc}	@
.L936:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.39840,
	ldmfd	sp!, {r4, pc}	@
.L938:
	.align	2
.L937:
	.word	.LANCHOR0
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
.LANCHOR1 = . + 302808
.LANCHOR2 = . + 310992
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
	.type	timePrevDo.37086, %object
	.size	timePrevDo.37086, 4
timePrevDo.37086:
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
	.type	last_rec_pos_time.37182, %object
	.size	last_rec_pos_time.37182, 16
last_rec_pos_time.37182:
	.space	16
	.type	last_rec_pos_time.37293, %object
	.size	last_rec_pos_time.37293, 16
last_rec_pos_time.37293:
	.space	16
	.type	g_DnrHwMem, %object
	.size	g_DnrHwMem, 16
g_DnrHwMem:
	.space	16
	.type	last_rec_pos_time.37213, %object
	.size	last_rec_pos_time.37213, 16
last_rec_pos_time.37213:
	.space	16
	.type	last_rec_pos_time.37336, %object
	.size	last_rec_pos_time.37336, 16
last_rec_pos_time.37336:
	.space	16
	.type	last_rec_pos_time.37312, %object
	.size	last_rec_pos_time.37312, 16
last_rec_pos_time.37312:
	.space	16
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
