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
	.file	"bitstream.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(bitstream)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.bitstream.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/bitstream.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/bitstream.o
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
	.global	ZerosMS_32
	.type	ZerosMS_32, %function
ZerosMS_32:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L10	@ tmp125,
	mov	r2, r0	@ data, data
	ldrb	r0, [ip, r0, lsr #24]	@ zero_extendqisi2	@ ZeroNum, CalcZeroNum
	cmp	r0, #8	@ ZeroNum,
	moveq	r2, r2, asl #8	@ data, data,
	moveq	r1, #3	@ D.28107,
	bne	.L9	@,
.L4:
	ldrb	r3, [ip, r2, lsr #24]	@ zero_extendqisi2	@ tmpZeroNum, CalcZeroNum
	mov	r2, r2, asl #8	@ data, data,
	cmp	r3, #8	@ tmpZeroNum,
	add	r0, r0, r3	@ ZeroNum, ZeroNum, tmpZeroNum
	bxne	lr	@
	subs	r1, r1, #1	@ D.28107, D.28107,
	bne	.L4	@,
	bx	lr	@
.L9:
	bx	lr	@
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.fnend
	.size	ZerosMS_32, .-ZerosMS_32
	.align	2
	.global	BsInit
	.type	BsInit, %function
BsInit:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	bic	r3, r1, #3	@ D.28111, pInput,
	str	r2, [r0, #16]	@ length, pBS_6(D)->BsLen
	str	lr, [sp, #-4]!	@,
	.save {lr}
	add	lr, r3, #8	@ D.28111, D.28111,
	str	r3, [r0]	@ D.28111, pBS_6(D)->pHead
	and	r1, r1, #3	@ D.28110, pInput,
	str	lr, [r0, #4]	@ D.28111, pBS_6(D)->pTail
	mov	ip, #0	@ tmp129,
	ldr	r2, [r3]	@ MEM[(HI_U32 *)_4], MEM[(HI_U32 *)_4]
	mov	r1, r1, asl #3	@ D.28110, D.28110,
	rev	r2, r2	@ D.28110, MEM[(HI_U32 *)_4]
	str	r2, [r0, #8]	@ D.28110, pBS_6(D)->Bufa
	ldr	r3, [r3, #4]	@ MEM[(HI_U32 *)_4 + 4B], MEM[(HI_U32 *)_4 + 4B]
	str	r1, [r0, #20]	@ D.28110, pBS_6(D)->BufPos
	rev	r3, r3	@ D.28110, MEM[(HI_U32 *)_4 + 4B]
	str	ip, [r0, #24]	@ tmp129, pBS_6(D)->TotalPos
	str	r3, [r0, #12]	@ D.28110, pBS_6(D)->Bufb
	ldr	pc, [sp], #4	@
	.fnend
	.size	BsInit, .-BsInit
	.align	2
	.global	BsPos
	.type	BsPos, %function
BsPos:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]	@, pBS_2(D)->TotalPos
	bx	lr	@
	.fnend
	.size	BsPos, .-BsPos
	.align	2
	.global	BsGet
	.type	BsGet, %function
BsGet:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r3, r0	@ pBS, pBS
	ldr	r4, [r0, #20]	@ D.28118, pBS_2(D)->BufPos
	add	lr, r1, r4	@ ABBufPos, nBits, D.28118
	cmp	lr, #32	@ ABBufPos,
	rsbgt	r2, r4, #32	@ D.28118, D.28118,
	rsble	r0, r1, #32	@ D.28118, nBits,
	ldrgt	ip, [r0, #12]	@ pBS_2(D)->Bufb, pBS_2(D)->Bufb
	ldrgt	r5, [r0, #8]	@ pBS_2(D)->Bufa, pBS_2(D)->Bufa
	rsbgt	r0, r1, #32	@ D.28118, nBits,
	ldrle	r2, [r3, #8]	@ pBS_2(D)->Bufa, pBS_2(D)->Bufa
	movgt	ip, ip, lsr r2	@ Data1, pBS_2(D)->Bufb,
	orrgt	r2, ip, r5, asl r4	@ Data, Data1, pBS_2(D)->Bufa,
	movle	r2, r2, asl r4	@ D.28119, pBS_2(D)->Bufa,
	cmp	lr, #31	@ ABBufPos,
	subgt	lr, lr, #32	@ D.28118, ABBufPos,
	strgt	lr, [r3, #20]	@ D.28118, pBS_2(D)->BufPos
	mov	r0, r2, lsr r0	@ Data, D.28119,
	ldr	r2, [r3, #24]	@ pBS_2(D)->TotalPos, pBS_2(D)->TotalPos
	strle	lr, [r3, #20]	@ ABBufPos, pBS_2(D)->BufPos
	add	r1, r2, r1	@ D.28118, pBS_2(D)->TotalPos, nBits
	ldrgt	r2, [r3, #4]	@ D.28121, pBS_2(D)->pTail
	str	r1, [r3, #24]	@ D.28118, pBS_2(D)->TotalPos
	ldrgt	r1, [r3, #12]	@ pBS_2(D)->Bufb, pBS_2(D)->Bufb
	strgt	r1, [r3, #8]	@ pBS_2(D)->Bufb, pBS_2(D)->Bufa
	ldrgt	r1, [r2], #4	@ MEM[(HI_U32 *)_25], MEM[(HI_U32 *)_25]
	revgt	r1, r1	@ D.28119, MEM[(HI_U32 *)_25]
	strgt	r2, [r3, #4]	@ D.28121, pBS_2(D)->pTail
	strgt	r1, [r3, #12]	@ D.28119, pBS_2(D)->Bufb
	ldmfd	sp!, {r4, r5, pc}	@
	.fnend
	.size	BsGet, .-BsGet
	.align	2
	.global	BsShow
	.type	BsShow, %function
BsShow:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r0, #20]	@ D.28124, pBS_3(D)->BufPos
	add	r3, ip, r1	@ ABBufPos, D.28124, nBits
	cmp	r3, #32	@ ABBufPos,
	rsbgt	r3, ip, #32	@ D.28124, D.28124,
	rsbgt	r1, r1, #32	@ D.28124, nBits,
	ldrgt	r2, [r0, #12]	@ pBS_3(D)->Bufb, pBS_3(D)->Bufb
	rsble	r1, r1, #32	@ D.28124, nBits,
	ldrgt	r0, [r0, #8]	@ pBS_3(D)->Bufa, pBS_3(D)->Bufa
	ldrle	r3, [r0, #8]	@ pBS_3(D)->Bufa, pBS_3(D)->Bufa
	movgt	r2, r2, lsr r3	@ Data1, pBS_3(D)->Bufb,
	orrgt	r3, r2, r0, asl ip	@ Data, Data1, pBS_3(D)->Bufa,
	movle	r3, r3, asl ip	@ D.28125, pBS_3(D)->Bufa,
	mov	r0, r3, lsr r1	@ Data, D.28125,
	bx	lr	@
	.fnend
	.size	BsShow, .-BsShow
	.align	2
	.global	BsSkip
	.type	BsSkip, %function
BsSkip:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #20]	@ pBS_3(D)->BufPos, pBS_3(D)->BufPos
	mov	r3, r0	@ pBS, pBS
	ldr	r0, [r0, #24]	@ pBS_3(D)->TotalPos, pBS_3(D)->TotalPos
	add	r2, r1, r2	@ ABBufPos, nBits, pBS_3(D)->BufPos
	cmp	r2, #31	@ ABBufPos,
	add	r0, r0, r1	@ D.28129, pBS_3(D)->TotalPos, nBits
	str	r0, [r3, #24]	@ D.28129, pBS_3(D)->TotalPos
	subgt	r2, r2, #32	@ D.28129, ABBufPos,
	ldrgt	r0, [r3, #4]	@ D.28131, pBS_3(D)->pTail
	ldrgt	ip, [r3, #12]	@ pBS_3(D)->Bufb, pBS_3(D)->Bufb
	strgt	r2, [r3, #20]	@ D.28129, pBS_3(D)->BufPos
	strle	r2, [r3, #20]	@ ABBufPos, pBS_3(D)->BufPos
	strgt	ip, [r3, #8]	@ pBS_3(D)->Bufb, pBS_3(D)->Bufa
	ldrgt	r2, [r0], #4	@ MEM[(HI_U32 *)_14], MEM[(HI_U32 *)_14]
	revgt	r2, r2	@ D.28130, MEM[(HI_U32 *)_14]
	strgt	r0, [r3, #4]	@ D.28131, pBS_3(D)->pTail
	mov	r0, r1	@, nBits
	strgt	r2, [r3, #12]	@ D.28130, pBS_3(D)->Bufb
	bx	lr	@
	.fnend
	.size	BsSkip, .-BsSkip
	.align	2
	.global	BsBack
	.type	BsBack, %function
BsBack:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #24]	@ nBits, pBS_4(D)->TotalPos
	mov	r3, r0	@ pBS, pBS
	ldr	ip, [r0, #20]	@ pBS_4(D)->BufPos, pBS_4(D)->BufPos
	cmp	r1, r2	@ nBits, nBits
	movlt	r0, r1	@ nBits, nBits
	movge	r0, r2	@ nBits, nBits
	subs	ip, ip, r0	@ PredBufPos, pBS_4(D)->BufPos, nBits
	rsb	r2, r0, r2	@ D.28134, nBits, nBits
	str	r2, [r3, #24]	@ D.28134, pBS_4(D)->TotalPos
	bmi	.L28	@,
	str	ip, [r3, #20]	@ PredBufPos, pBS_4(D)->BufPos
	bx	lr	@
.L28:
	str	lr, [sp, #-4]!	@,
	.save {lr}
	add	ip, ip, #32	@ D.28134, PredBufPos,
	ldr	r2, [r3, #4]	@ D.28135, pBS_4(D)->pTail
	ldr	r1, [r3, #8]	@ pBS_4(D)->Bufa, pBS_4(D)->Bufa
	sub	lr, r2, #4	@ D.28135, D.28135,
	str	lr, [r3, #4]	@ D.28135, pBS_4(D)->pTail
	str	r1, [r3, #12]	@ pBS_4(D)->Bufa, pBS_4(D)->Bufb
	ldr	r2, [r2, #-12]	@ MEM[(HI_U32 *)_12 + 4294967284B], MEM[(HI_U32 *)_12 + 4294967284B]
	str	ip, [r3, #20]	@ D.28134, pBS_4(D)->BufPos
	rev	r2, r2	@ D.28136, MEM[(HI_U32 *)_12 + 4294967284B]
	str	r2, [r3, #8]	@ D.28136, pBS_4(D)->Bufa
	ldr	pc, [sp], #4	@
	.fnend
	.size	BsBack, .-BsBack
	.align	2
	.global	BsBitsToNextByte
	.type	BsBitsToNextByte, %function
BsBitsToNextByte:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #24]	@ D.28139, pBS_2(D)->TotalPos
	add	r3, r0, #7	@ D.28139, D.28139,
	bic	r3, r3, #7	@ AlignPos, D.28139,
	rsb	r0, r0, r3	@, D.28139, AlignPos
	bx	lr	@
	.fnend
	.size	BsBitsToNextByte, .-BsBitsToNextByte
	.align	2
	.global	BsToNextByte
	.type	BsToNextByte, %function
BsToNextByte:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #24]	@ D.28142, pBS_2(D)->TotalPos
	ldr	r2, [r0, #20]	@ pBS_2(D)->BufPos, pBS_2(D)->BufPos
	add	r3, r1, #7	@ D.28142, D.28142,
	bic	r3, r3, #7	@ AlignPos, D.28142,
	str	r3, [r0, #24]	@ AlignPos, pBS_2(D)->TotalPos
	rsb	r3, r1, r3	@ SkipLen, D.28142, AlignPos
	add	r2, r3, r2	@ ABBufPos, SkipLen, pBS_2(D)->BufPos
	cmp	r2, #31	@ ABBufPos,
	strle	r2, [r0, #20]	@ ABBufPos, pBS_2(D)->BufPos
	subgt	r2, r2, #32	@ D.28142, ABBufPos,
	strgt	r2, [r0, #20]	@ D.28142, pBS_2(D)->BufPos
	ldrgt	ip, [r0, #12]	@ pBS_2(D)->Bufb, pBS_2(D)->Bufb
	ldrgt	r1, [r0, #4]	@ D.28144, pBS_2(D)->pTail
	strgt	ip, [r0, #8]	@ pBS_2(D)->Bufb, pBS_2(D)->Bufa
	ldrgt	r2, [r1], #4	@ MEM[(HI_U32 *)_13], MEM[(HI_U32 *)_13]
	revgt	r2, r2	@ D.28143, MEM[(HI_U32 *)_13]
	strgt	r1, [r0, #4]	@ D.28144, pBS_2(D)->pTail
	strgt	r2, [r0, #12]	@ D.28143, pBS_2(D)->Bufb
	mov	r0, r3	@, SkipLen
	bx	lr	@
	.fnend
	.size	BsToNextByte, .-BsToNextByte
	.align	2
	.global	BsResidBits
	.type	BsResidBits, %function
BsResidBits:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #16]	@ pBS_2(D)->BsLen, pBS_2(D)->BsLen
	ldr	r0, [r0, #24]	@ pBS_2(D)->TotalPos, pBS_2(D)->TotalPos
	rsb	r0, r0, r2, lsl #3	@, pBS_2(D)->TotalPos, pBS_2(D)->BsLen,
	bx	lr	@
	.fnend
	.size	BsResidBits, .-BsResidBits
	.align	2
	.global	BsIsByteAligned
	.type	BsIsByteAligned, %function
BsIsByteAligned:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]	@ pBS_2(D)->TotalPos, pBS_2(D)->TotalPos
	tst	r3, #7	@ pBS_2(D)->TotalPos,
	moveq	r0, #1	@,
	movne	r0, #0	@,
	bx	lr	@
	.fnend
	.size	BsIsByteAligned, .-BsIsByteAligned
	.align	2
	.global	BsNextBitsByteAligned
	.type	BsNextBitsByteAligned, %function
BsNextBitsByteAligned:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	lr, [r0, #24]	@ D.28156, pBS_3(D)->TotalPos
	ldr	r3, [r0, #20]	@ pBS_3(D)->BufPos, pBS_3(D)->BufPos
	and	r2, lr, #7	@ D.28156, D.28156,
	rsb	r2, r2, #8	@ D.28156, D.28156,
	add	r3, r2, r3	@ D.28156, D.28156, pBS_3(D)->BufPos
	add	lr, lr, r2	@ D.28156, D.28156, D.28156
	cmp	r3, #31	@ D.28156,
	str	lr, [r0, #24]	@ D.28156, pBS_3(D)->TotalPos
	ble	.L42	@,
	ldr	ip, [r0, #12]	@ D.28157, pBS_3(D)->Bufb
	sub	r3, r3, #32	@ D.28156, D.28156,
	ldr	lr, [r0, #4]	@ D.28158, pBS_3(D)->pTail
	str	r3, [r0, #20]	@ D.28156, pBS_3(D)->BufPos
	str	ip, [r0, #8]	@ D.28157, pBS_3(D)->Bufa
	ldr	r5, [lr], #4	@ MEM[(HI_U32 *)_30], MEM[(HI_U32 *)_30]
	rev	r5, r5	@ D.28157, MEM[(HI_U32 *)_30]
	str	r5, [r0, #12]	@ D.28157, pBS_3(D)->Bufb
	str	lr, [r0, #4]	@ D.28158, pBS_3(D)->pTail
.L43:
	add	lr, r1, r3	@ ABBufPos, nBits, D.28156
	cmp	lr, #32	@ ABBufPos,
	rsbgt	r5, r3, #32	@ D.28156, D.28156,
	movle	r3, ip, asl r3	@ D.28157, D.28157,
	ldrgt	lr, [r0, #12]	@ pBS_3(D)->Bufb, pBS_3(D)->Bufb
	rsbgt	r4, r1, #32	@ D.28156, nBits,
	rsble	r4, r1, #32	@ D.28156, nBits,
	mov	r1, r2	@, D.28156
	movgt	lr, lr, lsr r5	@ Data1, pBS_3(D)->Bufb,
	orrgt	r3, lr, ip, asl r3	@ Data, Data1, D.28157,
	mov	r4, r3, lsr r4	@ Data, D.28157,
	bl	BsBack	@
	mov	r0, r4	@, Data
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L42:
	ldr	ip, [r0, #8]	@ D.28157, pBS_3(D)->Bufa
	str	r3, [r0, #20]	@ D.28156, pBS_3(D)->BufPos
	b	.L43	@
	.fnend
	.size	BsNextBitsByteAligned, .-BsNextBitsByteAligned
	.align	2
	.global	BsLongSkip
	.type	BsLongSkip, %function
BsLongSkip:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ nBits
	beq	.L60	@,
	cmp	r1, #64	@ nBits,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #20]	@ D.28162, pBS_9(D)->BufPos
	ble	.L62	@,
	rsb	r2, r3, #32	@ bits, pBS_9(D)->BufPos,
	mov	ip, #0	@ tmp174,
	rsb	r1, r2, r1	@ D.28164, bits, nBits
	str	ip, [r0, #20]	@ tmp174, pBS_9(D)->BufPos
	ldr	r3, [r0, #24]	@ pBS_9(D)->TotalPos, pBS_9(D)->TotalPos
	cmp	r1, #0	@ D.28164,
	add	ip, r1, #31	@ tmp176, D.28164,
	ldr	lr, [r0, #4]	@ pBS_9(D)->pTail, pBS_9(D)->pTail
	add	r3, r2, r3	@ D.28164, bits, pBS_9(D)->TotalPos
	movge	r2, r1	@ nBits, D.28164
	movlt	r2, ip	@ nBits, tmp176
	str	r3, [r0, #24]	@ D.28164, pBS_9(D)->TotalPos
	mov	r2, r2, asr #5	@ D.28163, nBits,
	ands	r4, r1, #31	@ bits, D.28164,
	sub	ip, r2, #-1073741823	@ D.28164, D.28163,
	add	r3, r3, r2, lsl #5	@ D.28163, D.28164, D.28163,
	add	r2, lr, ip, lsl #2	@ D.28165, pBS_9(D)->pTail, D.28164,
	str	r2, [r0, #4]	@ D.28165, pBS_9(D)->pTail
	ldr	ip, [lr, ip, asl #2]	@ MEM[(HI_U32 *)_30], MEM[(HI_U32 *)_30]
	add	lr, r2, #4	@ D.28165, D.28165,
	str	lr, [r0, #4]	@ D.28165, pBS_9(D)->pTail
	add	lr, r2, #8	@ D.28165, D.28165,
	rev	ip, ip	@ D.28164, MEM[(HI_U32 *)_30]
	str	ip, [r0, #8]	@ D.28164, pBS_9(D)->Bufa
	ldr	r2, [r2, #4]	@ MEM[(HI_U32 *)_30 + 4B], MEM[(HI_U32 *)_30 + 4B]
	addne	r3, r3, r4	@ D.28163, D.28163, bits
	str	lr, [r0, #4]	@ D.28165, pBS_9(D)->pTail
	rev	r2, r2	@ D.28164, MEM[(HI_U32 *)_30 + 4B]
	strne	r4, [r0, #20]	@ bits, pBS_9(D)->BufPos
	str	r2, [r0, #12]	@ D.28164, pBS_9(D)->Bufb
	str	r3, [r0, #24]	@ D.28163, pBS_9(D)->TotalPos
	mov	r0, r1	@, D.28162
	ldmfd	sp!, {r4, pc}	@
.L62:
	cmp	r1, #32	@ nBits,
	ldr	r2, [r0, #24]	@ pBS_9(D)->TotalPos, pBS_9(D)->TotalPos
	ble	.L52	@,
	add	ip, r3, #32	@ ABBufPos, D.28162,
	add	r2, r2, #32	@ D.28163, pBS_9(D)->TotalPos,
	cmp	ip, #31	@ ABBufPos,
	str	r2, [r0, #24]	@ D.28163, pBS_9(D)->TotalPos
	sub	r1, r1, #32	@ nBits, nBits,
	strle	ip, [r0, #20]	@ ABBufPos, pBS_9(D)->BufPos
	ldrgt	lr, [r0, #12]	@ pBS_9(D)->Bufb, pBS_9(D)->Bufb
	movle	r3, ip	@ D.28162, ABBufPos
	ldrgt	ip, [r0, #4]	@ D.28165, pBS_9(D)->pTail
	strgt	lr, [r0, #8]	@ pBS_9(D)->Bufb, pBS_9(D)->Bufa
	ldrgt	lr, [ip], #4	@ MEM[(HI_U32 *)_69], MEM[(HI_U32 *)_69]
	revgt	lr, lr	@ D.28164, MEM[(HI_U32 *)_69]
	strgt	ip, [r0, #4]	@ D.28165, pBS_9(D)->pTail
	strgt	lr, [r0, #12]	@ D.28164, pBS_9(D)->Bufb
.L52:
	add	r3, r1, r3	@ ABBufPos, nBits, D.28162
	add	r2, r1, r2	@ D.28163, nBits, D.28163
	cmp	r3, #31	@ ABBufPos,
	str	r2, [r0, #24]	@ D.28163, pBS_9(D)->TotalPos
	subgt	r3, r3, #32	@ D.28163, ABBufPos,
	strgt	r3, [r0, #20]	@ D.28163, pBS_9(D)->BufPos
	ldrgt	ip, [r0, #12]	@ pBS_9(D)->Bufb, pBS_9(D)->Bufb
	ldrgt	r2, [r0, #4]	@ D.28165, pBS_9(D)->pTail
	strle	r3, [r0, #20]	@ ABBufPos, pBS_9(D)->BufPos
	strgt	ip, [r0, #8]	@ pBS_9(D)->Bufb, pBS_9(D)->Bufa
	ldrgt	r3, [r2], #4	@ MEM[(HI_U32 *)_86], MEM[(HI_U32 *)_86]
	revgt	r3, r3	@ D.28164, MEM[(HI_U32 *)_86]
	strgt	r2, [r0, #4]	@ D.28165, pBS_9(D)->pTail
	strgt	r3, [r0, #12]	@ D.28164, pBS_9(D)->Bufb
	mov	r0, r1	@, D.28162
	ldmfd	sp!, {r4, pc}	@
.L60:
	mov	r0, r1	@, D.28162
	bx	lr	@
	.fnend
	.size	BsLongSkip, .-BsLongSkip
	.align	2
	.global	BsSkipWithoutCount
	.type	BsSkipWithoutCount, %function
BsSkipWithoutCount:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]	@ pBS_3(D)->BufPos, pBS_3(D)->BufPos
	mov	r2, r0	@ pBS, pBS
	add	r3, r1, r3	@ ABBufPos, nBits, pBS_3(D)->BufPos
	cmp	r3, #31	@ ABBufPos,
	strle	r3, [r2, #20]	@ ABBufPos, pBS_3(D)->BufPos
	subgt	r3, r3, #32	@ D.28168, ABBufPos,
	ldrgt	ip, [r0, #12]	@ pBS_3(D)->Bufb, pBS_3(D)->Bufb
	ldrgt	r0, [r0, #4]	@ D.28170, pBS_3(D)->pTail
	strgt	r3, [r2, #20]	@ D.28168, pBS_3(D)->BufPos
	strgt	ip, [r2, #8]	@ pBS_3(D)->Bufb, pBS_3(D)->Bufa
	ldrgt	r3, [r0], #4	@ MEM[(HI_U32 *)_11], MEM[(HI_U32 *)_11]
	revgt	r3, r3	@ D.28169, MEM[(HI_U32 *)_11]
	strgt	r0, [r2, #4]	@ D.28170, pBS_3(D)->pTail
	mov	r0, r1	@, nBits
	strgt	r3, [r2, #12]	@ D.28169, pBS_3(D)->Bufb
	bx	lr	@
	.fnend
	.size	BsSkipWithoutCount, .-BsSkipWithoutCount
	.align	2
	.global	BsGetNextBytePtr
	.type	BsGetNextBytePtr, %function
BsGetNextBytePtr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]	@ pBS_2(D)->BufPos, pBS_2(D)->BufPos
	ldr	r0, [r0, #4]	@ pBS_2(D)->pTail, pBS_2(D)->pTail
	rsb	r3, r3, #32	@ BitsInBufa, pBS_2(D)->BufPos,
	add	r2, r3, #7	@ tmp125, BitsInBufa,
	cmp	r3, #0	@ BitsInBufa,
	movlt	r3, r2	@ BitsInBufa, tmp125
	mov	r3, r3, asr #3	@ D.28173, BitsInBufa,
	add	r3, r3, #4	@ D.28173, D.28173,
	rsb	r0, r3, r0	@, D.28173, pBS_2(D)->pTail
	bx	lr	@
	.fnend
	.size	BsGetNextBytePtr, .-BsGetNextBytePtr
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
	.type	CalcZeroNum, %object
	.size	CalcZeroNum, 256
CalcZeroNum:
	.byte	8
	.byte	7
	.byte	6
	.byte	6
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
