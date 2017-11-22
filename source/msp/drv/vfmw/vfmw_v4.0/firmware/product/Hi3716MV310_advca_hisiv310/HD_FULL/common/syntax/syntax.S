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
	.file	"syntax.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(syntax)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.syntax.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.o
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
	.global	ResetVoQueue
	.type	ResetVoQueue, %function
ResetVoQueue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ pstVoQue, pstVoQue
	ldr	r5, .L3	@ tmp113,
	mvn	r8, #0	@ tmp135,
	mvn	r9, #0	@,
	mov	r6, #0	@ tmp139,
	mov	r7, #0	@,
	mov	r0, r5	@, tmp113
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, #344]	@ pstVoQue_3(D)->ResetMagicWord, pstVoQue_3(D)->ResetMagicWord
	add	r1, r4, #336	@ tmp134, pstVoQue,
	mov	r3, #64	@ tmp115,
	add	r2, r2, #100	@ D.38513, pstVoQue_3(D)->ResetMagicWord,
	strh	r3, [r4]	@ movhi	@ tmp115, pstVoQue_3(D)->max_queue_size
	str	r2, [r4, #344]	@ D.38513, pstVoQue_3(D)->ResetMagicWord
	mov	r3, #0	@ tmp117,
	mvn	r2, #0	@ tmp126,
	strh	r3, [r4, #2]	@ movhi	@ tmp117, pstVoQue_3(D)->queue_size
	strh	r3, [r4, #4]	@ movhi	@ tmp117, pstVoQue_3(D)->history
	mov	r0, r5	@, tmp113
	strh	r3, [r4, #6]	@ movhi	@ tmp117, pstVoQue_3(D)->head
	strh	r3, [r4, #8]	@ movhi	@ tmp117, pstVoQue_3(D)->tail
	str	r3, [r4, #316]	@ tmp117, pstVoQue_3(D)->SideInfo.SeqImgCnt
	str	r2, [r4, #272]	@ tmp126, pstVoQue_3(D)->SideInfo.OldAspectRatio
	str	r2, [r4, #292]	@ tmp126, pstVoQue_3(D)->SideInfo.OldDispCenter
	str	r2, [r4, #288]	@ tmp126, pstVoQue_3(D)->SideInfo.OldDispSize
	str	r2, [r4, #284]	@ tmp126, pstVoQue_3(D)->SideInfo.OldFrameRate
	str	r2, [r4, #276]	@ tmp126, pstVoQue_3(D)->SideInfo.OldScanType
	str	r2, [r4, #280]	@ tmp126, pstVoQue_3(D)->SideInfo.OldSeqCnt
	strd	r8, [r1, #-8]	@ tmp135, tmp134,
	str	r3, [r4, #324]	@ tmp117, pstVoQue_3(D)->SideInfo.PrevNumFramesBtwPTS
	strd	r6, [r1]	@ tmp139, pstVoQue_3(D)->SideInfo.AveragePtsStep
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	OSAL_SpinUnLockIRQ	@
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.fnend
	.size	ResetVoQueue, .-ResetVoQueue
	.align	2
	.global	ReturnImageToSyntax
	.type	ReturnImageToSyntax, %function
ReturnImageToSyntax:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r1	@ pCtx, pCtx
	cmp	r0, #18	@ eVidStd,
	ldrls	pc, [pc, r0, asl #2]	@ eVidStd
	b	.L5	@
.L8:
	.word	.L7
	.word	.L9
	.word	.L10
	.word	.L11
	.word	.L12
	.word	.L13
	.word	.L14
	.word	.L5
	.word	.L15
	.word	.L16
	.word	.L17
	.word	.L17
	.word	.L17
	.word	.L18
	.word	.L12
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L19
.L17:
	ldr	r1, .L31	@ tmp139,
	ldr	r1, [r1]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	bne	.L30	@,
.L12:
	ldr	r1, .L31+4	@ tmp145,
	ldr	ip, [r1, #16]	@ D.38519, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	ip, #0	@ D.38519,
	bxeq	lr	@
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	bx	ip	@ D.38519
.L13:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	DIVX3DEC_RecycleImage	@
.L14:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	AVSDEC_RecycleImage	@
.L15:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	REAL8DEC_RecycleImage	@
.L16:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	REAL9DEC_RecycleImage	@
.L18:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	VP8DEC_RecycleImage	@
.L19:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	USERDEC_RecycleImage	@
.L7:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	H264DEC_RecycleImage	@
.L9:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	VC1DEC_RecycleImage	@
.L10:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	MPEG4DEC_RecycleImage	@
.L11:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	MPEG2DEC_RecycleImage	@
.L5:
	bx	lr	@
.L30:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	VP6DEC_RecycleImage	@
.L32:
	.align	2
.L31:
	.word	g_VdmCharacter
	.word	g_SdecFunc
	.fnend
	.size	ReturnImageToSyntax, .-ReturnImageToSyntax
	.align	2
	.global	ProduceTimeStamp
	.type	ProduceTimeStamp, %function
ProduceTimeStamp:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #18	@ eVidStd,
	mov	ip, r1	@ p_image, p_image
	mov	r3, r0	@ pstVoQue, pstVoQue
	ldrd	r0, [r1, #8]	@ InferedPTS, p_image,
	bxeq	lr	@
	add	r3, r3, #272	@ tmp125, pstVoQue,
	sub	r2, r2, #8	@ D.38525, eVidStd,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldrd	r4, [r3, #56]	@ D.38524, tmp125,
	subs	r6, r0, r4	@ D.38524, D.38524, D.38524
	and	r4, r4, r5	@ tmp130, D.38524, D.38524
	sbc	r7, r1, r5	@ D.38524, D.38524, D.38524
	cmp	r7, #0	@ D.38524,
	cmpeq	r6, #5	@ D.38524,
	movls	r3, #1	@ tmp128,
	movhi	r3, #0	@ tmp128,
	adds	r4, r4, #1	@ tmp132, tmp130,
	movne	r4, #1	@ tmp132,
	tst	r3, r4	@ tmp128, tmp132
	beq	.L46	@,
	cmp	r2, #1	@ D.38525,
	mvnhi	r0, #0	@ InferedPTS,
	mvnhi	r1, #0	@ InferedPTS,
	bls	.L36	@,
.L34:
	ldmfd	sp!, {r4, r5, r6, r7}	@
	bx	lr	@
.L46:
	cmp	r2, #1	@ D.38525,
	bhi	.L34	@,
	ldr	r3, [ip, #140]	@ p_image_6(D)->format, p_image_6(D)->format
	and	r3, r3, #3	@ D.38525, p_image_6(D)->format,
	cmp	r3, #2	@ D.38525,
	bne	.L34	@,
.L36:
	mvn	r2, #0	@ tmp142,
	str	r2, [ip]	@ tmp142, p_image_6(D)->SrcPts
	mov	r0, r2	@ InferedPTS, tmp142
	mov	r1, r2	@ InferedPTS, tmp143
	str	r2, [ip, #4]	@ tmp143, p_image_6(D)->SrcPts
	b	.L34	@
	.fnend
	.size	ProduceTimeStamp, .-ProduceTimeStamp
	.align	2
	.global	InsertImgToVoQueue_PtsProcess
	.type	InsertImgToVoQueue_PtsProcess, %function
InsertImgToVoQueue_PtsProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r6, r7, lr}	@,
	.save {r4, r6, r7, lr}
	mov	r4, r1	@ p_image, p_image
	ldrd	r6, [r1, #8]	@ p_image_4(D)->PTS, p_image,
	strd	r6, [r1]	@ p_image_4(D)->PTS, p_image_4(D)->SrcPts
	bl	ProduceTimeStamp	@
	strd	r0, [r4, #8]	@, p_image,
	ldmfd	sp!, {r4, r6, r7, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	InsertImgToVoQueue_PtsProcess, .-InsertImgToVoQueue_PtsProcess
	.align	2
	.global	InsertImgToVoQueue_FillImageInfo
	.type	InsertImgToVoQueue_FillImageInfo, %function
InsertImgToVoQueue_FillImageInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r3	@ p_image, p_image
	ldr	r3, [r3, #152]	@ p_image_10(D)->disp_width, p_image_10(D)->disp_width
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r7, r0	@ ChanID, ChanID
	mov	r5, r2	@ pstVoQue, pstVoQue
	cmp	r3, #0	@ p_image_10(D)->disp_width,
	beq	.L50	@,
	ldr	r3, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	cmp	r3, #0	@ p_image_10(D)->disp_height,
	bne	.L76	@,
.L50:
	ldr	r2, [r4, #144]	@ D.38531, p_image_10(D)->image_width
	ldr	r3, [r4, #148]	@ D.38531, p_image_10(D)->image_height
	mov	r1, r2, lsr #1	@ D.38531, D.38531,
	str	r2, [r4, #152]	@ D.38531, p_image_10(D)->disp_width
	str	r3, [r4, #156]	@ D.38531, p_image_10(D)->disp_height
	mov	r3, r3, lsr #1	@ D.38531, D.38531,
	str	r1, [r4, #160]	@ D.38531, p_image_10(D)->disp_center_x
	str	r3, [r4, #164]	@ D.38531, p_image_10(D)->disp_center_y
.L51:
	str	r2, [r5, #300]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageWidth
	ldr	r3, [r4, #148]	@ D.38531, p_image_10(D)->image_height
	ldr	r2, [r5, #280]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	str	r3, [r5, #304]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageHeight
	ldr	r3, [r4, #140]	@ p_image_10(D)->format, p_image_10(D)->format
	ubfx	r3, r3, #5, #3	@ D.38531, p_image_10(D)->format,,
	str	r3, [r5, #308]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].VideoFormat
	ldr	r3, [r4, #140]	@ D.38531, p_image_10(D)->format
	str	r3, [r5, #312]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageFormat
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.38531, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r3, [r4, #184]	@ D.38531, p_image_10(D)->seq_cnt
	ldr	r6, [r4, #140]	@ D.38531, p_image_10(D)->format
	cmp	r3, r2	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	ldr	r8, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	ldrh	r2, [r4, #164]	@ D.38531, p_image_10(D)->disp_center_y
	ubfx	r10, r6, #14, #3	@ AspectRatio, D.38531,,
	ldr	r9, [r4, #160]	@ p_image_10(D)->disp_center_x, p_image_10(D)->disp_center_x
	ubfx	r6, r6, #8, #2	@ ScanType, D.38531,,
	ldrh	r1, [r4, #152]	@ D.38531, p_image_10(D)->disp_width
	strne	r3, [r5, #320]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqCnt
	ldr	r3, [r5, #316]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	orr	r9, r2, r9, asl #16	@ dcenter, D.38531, p_image_10(D)->disp_center_x,
	orr	r8, r1, r8, asl #16	@ dsize, D.38531, p_image_10(D)->disp_height,
	add	r2, r3, #1	@ D.38531, D.38531,
	str	r2, [r5, #316]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	str	r3, [r4, #188]	@ D.38531, p_image_10(D)->seq_img_cnt
	ldr	r3, [r5, #272]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
	cmp	r3, r10	@ D.38531, AspectRatio
	beq	.L53	@,
	ldr	r2, .L78	@ tmp206,
	ldr	ip, [r2]	@ D.38533, g_event_report
	cmp	ip, #0	@ D.38533,
	beq	.L54	@,
	strb	r3, [sp]	@ D.38531, para
	mov	r2, sp	@,
	strb	r10, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r0, r7	@, ChanID
	blx	ip	@ D.38533
.L54:
	str	r10, [r5, #272]	@ AspectRatio, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
.L53:
	ldr	r3, [r5, #276]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
	cmp	r3, r6	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, ScanType
	beq	.L55	@,
	ldr	r3, .L78	@ tmp211,
	ldr	r3, [r3]	@ D.38533, g_event_report
	cmp	r3, #0	@ D.38533,
	beq	.L56	@,
	add	r2, sp, #8	@ tmp213,,
	mov	r1, #4	@,
	mov	r0, r7	@, ChanID
	strb	r6, [r2, #-8]!	@ ScanType, para
	blx	r3	@ D.38533
.L56:
	str	r6, [r5, #276]	@ ScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
.L55:
	ldr	r3, [r5, #288]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	cmp	r3, r8	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, dsize
	beq	.L77	@,
.L57:
	ldr	r3, .L78	@ tmp216,
	str	r8, [r5, #288]	@ dsize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	str	r9, [r5, #292]	@ dcenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	ldr	r3, [r3]	@ D.38533, g_event_report
	cmp	r3, #0	@ D.38533,
	beq	.L58	@,
	ldr	r8, [r4, #152]	@ p_image_10(D)->disp_width, p_image_10(D)->disp_width
	mov	r0, r7	@, ChanID
	ldr	r6, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	mov	r2, sp	@,
	ldr	lr, [r4, #160]	@ p_image_10(D)->disp_center_x, p_image_10(D)->disp_center_x
	mov	r1, #1	@,
	ldr	ip, [r4, #164]	@ p_image_10(D)->disp_center_y, p_image_10(D)->disp_center_y
	strh	r8, [sp]	@ movhi	@ p_image_10(D)->disp_width, para
	strh	r6, [sp, #2]	@ movhi	@ p_image_10(D)->disp_height, para
	strh	lr, [sp, #4]	@ movhi	@ p_image_10(D)->disp_center_x, para
	strh	ip, [sp, #6]	@ movhi	@ p_image_10(D)->disp_center_y, para
	blx	r3	@ D.38533
.L58:
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.38531, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.38531, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.38531, p_image_10(D)->luma_phy_addr
	ldr	r1, [r4, #108]	@ D.38531, p_image_10(D)->chrom_phy_addr
	ldr	r3, [r4, #172]	@ D.38531, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.38531, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.38531, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.38531, D.38531, D.38531
	add	r3, r1, r3	@ D.38531, D.38531, D.38531
	str	r2, [r4, #96]	@ D.38531, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.38531, p_image_10(D)->btm_chrom_phy_addr
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L76:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r2, [r4, #144]	@ D.38531, p_image_10(D)->image_width
	beq	.L51	@,
	b	.L50	@
.L77:
	ldr	r3, [r5, #292]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	cmp	r3, r9	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, dcenter
	bne	.L57	@,
	b	.L58	@
.L79:
	.align	2
.L78:
	.word	g_event_report
	.fnend
	.size	InsertImgToVoQueue_FillImageInfo, .-InsertImgToVoQueue_FillImageInfo
	.global	__aeabi_uidiv
	.align	2
	.global	InsertImgToVoQueue
	.type	InsertImgToVoQueue, %function
InsertImgToVoQueue:
	.fnstart
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r10, [sp, #40]	@ p_image, p_image
	cmp	r10, #0	@ p_image,
	beq	.L116	@,
	mov	r5, r3	@ pstVoQue, pstVoQue
	mov	r9, r0	@ ChanID, ChanID
	mov	r7, r1	@ eVidStd, eVidStd
	mov	r8, r2	@ pCtx, pCtx
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L119	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r4, [r5, #4]	@ pstVoQue_16(D)->history, pstVoQue_16(D)->history
	ldrh	r3, [r5, #8]	@ D.38543, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, pstVoQue_16(D)->history,
	cmp	r3, r4	@ D.38543, i
	movne	r6, #1000	@ tmp277,
	bne	.L88	@,
	b	.L87	@
.L86:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #8]	@ D.38543, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.38543, i
	beq	.L87	@,
.L88:
	add	ip, r5, r4, lsl #2	@ tmp170, pstVoQue, i,
	ldr	r3, [r10, #176]	@ p_image_11(D)->image_id, p_image_11(D)->image_id
	ldr	r2, [ip, #12]	@ tmp169, pstVoQue_16(D)->image_ptr
	ldr	r2, [r2, #176]	@ _22->image_id, _22->image_id
	cmp	r2, r3	@ _22->image_id, p_image_11(D)->image_id
	bne	.L86	@,
	bl	vfmw_dprint_nothing	@
	str	r6, [r10, #180]	@ tmp277, p_image_11(D)->error_level
	b	.L86	@
.L87:
	ldr	r3, [r10, #180]	@ p_image_11(D)->error_level, p_image_11(D)->error_level
	cmp	r3, #100	@ p_image_11(D)->error_level,
	bhi	.L84	@,
	ldr	r3, [r10, #144]	@ p_image_11(D)->image_width, p_image_11(D)->image_width
	cmp	r3, #31	@ p_image_11(D)->image_width,
	bhi	.L117	@,
.L84:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #180]	@ p_image_11(D)->error_level, p_image_11(D)->error_level
	cmp	r3, #1000	@ p_image_11(D)->error_level,
	beq	.L90	@,
	mov	r2, r10	@, p_image
	mov	r1, r8	@, pCtx
	mov	r0, r7	@, eVidStd
	bl	ReturnImageToSyntax	@
.L90:
	ldr	r0, .L119	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.38541,
.L82:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L117:
	ldr	r3, [r10, #148]	@ p_image_11(D)->image_height, p_image_11(D)->image_height
	cmp	r3, #31	@ p_image_11(D)->image_height,
	bls	.L84	@,
	mov	r2, r7	@, eVidStd
	mov	r1, r10	@, p_image
	mov	r0, r5	@, pstVoQue
	mov	r8, r9, asl #3	@ tmp274, ChanID,
	bl	InsertImgToVoQueue_PtsProcess	@
	mov	r3, r10	@, p_image
	mov	r2, r5	@, pstVoQue
	mov	r1, r7	@, eVidStd
	mov	r0, r9	@, ChanID
	mov	r4, r9, asl #5	@ tmp275, ChanID,
	bl	InsertImgToVoQueue_FillImageInfo	@
	ldr	r6, .L119+4	@ tmp273,
	bl	vfmw_dprint_nothing	@
	ldrh	r3, [r5, #8]	@ D.38542, pstVoQue_16(D)->tail
	rsb	r2, r8, r4	@ tmp190, tmp274, tmp275
	ldr	r0, .L119	@,
	add	r1, r3, #1	@ tmp183, D.38542,
	add	r2, r6, r2	@ tmp191, tmp273, tmp190
	add	r3, r5, r3, lsl #2	@ tmp181, pstVoQue, D.38542,
	and	r1, r1, #63	@ tmp185, tmp183,
	str	r10, [r3, #12]	@ p_image, pstVoQue_16(D)->image_ptr
	strh	r1, [r5, #8]	@ movhi	@ tmp185, pstVoQue_16(D)->tail
	ldr	r3, [r10, #128]	@ p_image_11(D)->is_fld_save, p_image_11(D)->is_fld_save
	str	r3, [r2, #20]	@ p_image_11(D)->is_fld_save, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r10, #300]	@ D.38540, p_image_11(D)->ImageDnr.video_standard
	sub	r2, r3, #10	@ D.38545, D.38540,
	cmp	r2, #2	@ D.38545,
	bhi	.L91	@,
	ldr	r2, .L119+8	@ tmp196,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L91	@,
.L92:
	ldr	r3, .L119+12	@ tmp208,
	ldr	r3, [r3]	@ D.38547, g_event_report
	cmp	r3, #0	@ D.38547,
	beq	.L93	@,
	add	r2, sp, #8	@ tmp209,,
	mov	r1, #5	@,
	mov	r0, r9	@, ChanID
	str	r10, [r2, #-4]!	@ p_image, para
	blx	r3	@ D.38547
.L93:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L118	@,
.L95:
	rsb	r7, r8, r4	@ tmp224, tmp274, tmp275
	add	r5, r6, r7	@ tmp225, tmp273, tmp224
	ldr	r3, [r5, #4]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	add	r3, r3, #1	@ D.38545, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum,
	str	r3, [r5, #4]	@ D.38545, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, r7]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	rsb	r1, r1, r0	@ Period, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, CurTime
	mov	r9, r0	@ CurTime,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.38541,
	bcc	.L82	@,
	ldr	r3, [r5, #4]	@ D.38545, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	cmp	r3, #0	@ D.38545,
	beq	.L97	@,
	movw	r0, #10000	@ tmp255,
	mul	r0, r0, r3	@, tmp255, D.38545
	bl	__aeabi_uidiv	@
	str	r0, [r5, #8]	@, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrFrameRate
.L97:
	rsb	r4, r8, r4	@ tmp263, tmp274, tmp275
	mov	r2, #0	@ tmp271,
	add	r3, r6, r4	@ tmp264, tmp273, tmp263
	mov	r0, #1	@ D.38541,
	str	r9, [r6, r4]	@ CurTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	str	r2, [r3, #4]	@ tmp271, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	b	.L82	@
.L91:
	sub	r2, r3, #14	@ D.38540, D.38540,
	bics	r2, r2, #4	@ tmp280, D.38540,
	moveq	r2, #1	@ tmp202,
	movne	r2, #0	@ tmp202,
	cmp	r3, #4	@ D.38540,
	movne	r3, r2	@, tmp207, tmp202
	orreq	r3, r2, #1	@,, tmp207, tmp202
	cmp	r3, #0	@ tmp207,
	beq	.L93	@,
	b	.L92	@
.L118:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L119	@ tmp210,
	ldr	r2, .L119+16	@ tmp215,
	add	r9, r3, r9, lsl #2	@ tmp211, tmp210, ChanID,
	ldr	r3, [r9, #8]	@ tmp214, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.38545, tmp214, CurTime
	cmp	r3, r2	@ D.38545, g_TraceFramePeriod
	strhi	r0, [r9, #8]	@ CurTime, last_rec_pos_time
	b	.L95	@
.L116:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.38541,
	b	.L82	@
.L120:
	.align	2
.L119:
	.word	.LANCHOR0
	.word	g_VfmwChanStat
	.word	g_VdmCharacter
	.word	g_event_report
	.word	g_TraceFramePeriod
	.fnend
	.size	InsertImgToVoQueue, .-InsertImgToVoQueue
	.align	2
	.global	GetQueueImgNum
	.type	GetQueueImgNum, %function
GetQueueImgNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldrh	r3, [r0, #6]	@ D.38551, pstVoQue_4(D)->head
	ldrh	ip, [r0, #4]	@ D.38551, pstVoQue_4(D)->history
	ldrh	r0, [r0, #8]	@ D.38551, pstVoQue_4(D)->tail
	cmp	r3, ip	@ D.38551, D.38551
	addcc	lr, r3, #64	@ D.38552, D.38551,
	rsbcs	ip, ip, r3	@ ReadNum, D.38551, D.38551
	rsbcc	ip, ip, lr	@ ReadNum, D.38551, D.38552
	cmp	r3, r0	@ D.38551, D.38551
	addhi	r0, r0, #64	@ D.38552, D.38551,
	str	ip, [r1]	@ ReadNum, *pReadImgNum_22(D)
	rsb	r3, r3, r0	@ NewNum, D.38551, D.38552
	str	r3, [r2]	@ NewNum, *pNewImgNum_24(D)
	ldr	pc, [sp], #4	@
	.fnend
	.size	GetQueueImgNum, .-GetQueueImgNum
	.align	2
	.global	SYNTAX_GetVoQue
	.type	SYNTAX_GetVoQue, %function
SYNTAX_GetVoQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ pSynCtx_3(D)->eVidStd, pSynCtx_3(D)->eVidStd
	cmp	r3, #18	@ pSynCtx_3(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_3(D)->eVidStd
	b	.L144	@
.L131:
	.word	.L145
	.word	.L132
	.word	.L133
	.word	.L134
	.word	.L135
	.word	.L136
	.word	.L137
	.word	.L144
	.word	.L138
	.word	.L139
	.word	.L140
	.word	.L140
	.word	.L140
	.word	.L141
	.word	.L135
	.word	.L144
	.word	.L144
	.word	.L144
	.word	.L145
.L140:
	ldr	r3, .L147	@ tmp125,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L146	@,
.L135:
	add	r0, r0, #20480	@ pstVoQue, pSynCtx,
.L145:
	add	r0, r0, #16	@ pstVoQue, pstVoQue,
	bx	lr	@
.L136:
	add	r0, r0, #26624	@ pstVoQue, pSynCtx,
	add	r0, r0, #24	@ pstVoQue, pstVoQue,
	bx	lr	@
.L137:
	add	r0, r0, #16064	@ pstVoQue, pSynCtx,
	add	r0, r0, #32	@ pstVoQue, pstVoQue,
	bx	lr	@
.L138:
	add	r0, r0, #38912	@ pstVoQue, pSynCtx,
	add	r0, r0, #64	@ pstVoQue, pstVoQue,
	bx	lr	@
.L139:
	add	r0, r0, #38912	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L132:
	add	r0, r0, #112640	@ pstVoQue, pSynCtx,
	add	r0, r0, #736	@ pstVoQue, pstVoQue,
	bx	lr	@
.L133:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r0, r0, #88	@ pstVoQue, pstVoQue,
	bx	lr	@
.L134:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
	bx	lr	@
.L141:
	add	r0, r0, #8128	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L144:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L146:
	add	r0, r0, #12608	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L148:
	.align	2
.L147:
	.word	g_VdmCharacter
	.fnend
	.size	SYNTAX_GetVoQue, .-SYNTAX_GetVoQue
	.align	2
	.global	SYNTAX_ReceiveImage
	.type	SYNTAX_ReceiveImage, %function
SYNTAX_ReceiveImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSynCtx,
	cmpne	r1, #0	@, p_image,
	beq	.L153	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ p_image, p_image
	bl	SYNTAX_GetVoQue	@
	subs	r4, r0, #0	@ pstVoQue,
	beq	.L157	@,
	ldr	r0, .L158	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ D.38569, pstVoQue_11->head
	ldrh	r2, [r4, #8]	@ pstVoQue_11->tail, pstVoQue_11->tail
	cmp	r2, r3	@ pstVoQue_11->tail, D.38569
	mvneq	r6, #2	@ ret,
	beq	.L152	@,
	add	r3, r4, r3, lsl #2	@ tmp140, pstVoQue, D.38569,
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [r3, #12]	@, pstVoQue_11->image_ptr
	bl	memcpy	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldr	r2, [r4, #344]	@ pstVoQue_11->ResetMagicWord, pstVoQue_11->ResetMagicWord
	add	r3, r3, r2	@ D.38572, p_image_5(D)->image_id, pstVoQue_11->ResetMagicWord
	str	r3, [r5, #176]	@ D.38572, p_image_5(D)->image_id
	ldr	r3, [r4, #344]	@ D.38572, pstVoQue_11->ResetMagicWord
	str	r3, [r5, #380]	@ D.38572, p_image_5(D)->resetNum
	ldrh	r3, [r4, #6]	@ pstVoQue_11->head, pstVoQue_11->head
	add	r3, r3, r6	@ tmp152, pstVoQue_11->head,
	and	r3, r3, #63	@ tmp154, tmp152,
	strh	r3, [r4, #6]	@ movhi	@ tmp154, pstVoQue_11->head
.L152:
	ldr	r0, .L158	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.38567, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L153:
	mvn	r0, #1	@ D.38567,
	bx	lr	@
.L157:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.38567,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L159:
	.align	2
.L158:
	.word	.LANCHOR0
	.fnend
	.size	SYNTAX_ReceiveImage, .-SYNTAX_ReceiveImage
	.align	2
	.global	SYNTAX_ReleaseImage_RecycleImage_CheckRet
	.type	SYNTAX_ReleaseImage_RecycleImage_CheckRet, %function
SYNTAX_ReleaseImage_RecycleImage_CheckRet:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]	@ pSynCtx_6(D)->eVidStd, pSynCtx_6(D)->eVidStd
	cmp	r3, #14	@ pSynCtx_6(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_6(D)->eVidStd
	b	.L161	@
.L163:
	.word	.L164
	.word	.L161
	.word	.L161
	.word	.L161
	.word	.L164
	.word	.L161
	.word	.L161
	.word	.L161
	.word	.L161
	.word	.L161
	.word	.L165
	.word	.L165
	.word	.L165
	.word	.L161
	.word	.L164
.L165:
	ldr	r3, .L174	@ tmp118,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L167	@,
.L164:
	cmp	r1, #0	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L161:
	cmn	r1, #2	@ RetValue,
	beq	.L173	@,
.L167:
	cmp	r1, #1	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L173:
	mov	r0, r1	@ ret, RetValue
	bx	lr	@
.L175:
	.align	2
.L174:
	.word	g_VdmCharacter
	.fnend
	.size	SYNTAX_ReleaseImage_RecycleImage_CheckRet, .-SYNTAX_ReleaseImage_RecycleImage_CheckRet
	.align	2
	.global	SYNTAX_ReleaseImage_RecycleImage
	.type	SYNTAX_ReleaseImage_RecycleImage, %function
SYNTAX_ReleaseImage_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ pSynCtx, pSynCtx
	ldr	r3, [r0]	@ pSynCtx_10(D)->eVidStd, pSynCtx_10(D)->eVidStd
	cmp	r3, #18	@ pSynCtx_10(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_10(D)->eVidStd
	b	.L192	@
.L179:
	.word	.L178
	.word	.L180
	.word	.L181
	.word	.L182
	.word	.L183
	.word	.L184
	.word	.L185
	.word	.L192
	.word	.L186
	.word	.L187
	.word	.L188
	.word	.L188
	.word	.L188
	.word	.L189
	.word	.L183
	.word	.L192
	.word	.L192
	.word	.L192
	.word	.L190
.L188:
	ldr	r3, .L199	@ tmp165,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L198	@,
.L183:
	ldr	r3, .L199+4	@ tmp173,
	ldr	r3, [r3, #16]	@ D.38605, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ D.38605,
	mvneq	r1, #0	@ ret,
	beq	.L177	@,
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r4, #8	@, pSynCtx,
	blx	r3	@ D.38605
	mov	r1, r0	@ ret,
.L177:
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L184:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	DIVX3DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L185:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L186:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	REAL8DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L187:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	REAL9DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L189:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VP8DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L190:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L178:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	H264DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L180:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VC1DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L181:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L182:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L192:
	mvn	r1, #1	@ ret,
	b	.L177	@
.L198:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VP6DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L177	@
.L200:
	.align	2
.L199:
	.word	g_VdmCharacter
	.word	g_SdecFunc
	.fnend
	.size	SYNTAX_ReleaseImage_RecycleImage, .-SYNTAX_ReleaseImage_RecycleImage
	.align	2
	.global	SYNTAX_ReleaseImage
	.type	SYNTAX_ReleaseImage, %function
SYNTAX_ReleaseImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ pSynCtx,
	cmpne	r1, #0	@, p_image,
	beq	.L213	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ pSynCtx, pSynCtx
	mov	r8, r1	@ p_image, p_image
	bl	SYNTAX_GetVoQue	@
	subs	r5, r0, #0	@ pstVoQue,
	beq	.L219	@,
	ldr	r0, .L220	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	ldr	r2, [r5, #344]	@ pstVoQue_20->ResetMagicWord, pstVoQue_20->ResetMagicWord
	rsb	r3, r2, r3	@ D.38613, pstVoQue_20->ResetMagicWord, p_image_14(D)->image_id
	str	r3, [r8, #176]	@ D.38613, p_image_14(D)->image_id
	ldrh	r4, [r5, #4]	@ pstVoQue_20->history, pstVoQue_20->history
	ldrh	r3, [r5, #6]	@ D.38615, pstVoQue_20->head
	and	r4, r4, #63	@ i, pstVoQue_20->history,
	cmp	r3, r4	@ D.38615, i
	bne	.L212	@,
	b	.L211	@
.L208:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #6]	@ D.38615, pstVoQue_20->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.38615, i
	beq	.L211	@,
.L212:
	add	r6, r4, #2	@ tmp175, i,
	add	r3, r5, r6, lsl #2	@ tmp157, pstVoQue, tmp175,
	ldr	r3, [r3, #4]	@ D.38616, pstVoQue_20->image_ptr
	cmp	r3, #0	@ D.38616,
	beq	.L206	@,
	ldr	r1, [r3, #176]	@ _32->image_id, _32->image_id
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	rsb	r1, r1, r3	@ SameImageFlag, _32->image_id, p_image_14(D)->image_id
	clz	r1, r1	@ SameImageFlag, SameImageFlag
	mov	r1, r1, lsr #5	@ SameImageFlag, SameImageFlag,
	cmp	r1, #0	@ SameImageFlag,
	beq	.L208	@,
.L207:
	ldrh	lr, [r5, #4]	@ D.38617, pstVoQue_20->history
	b	.L210	@
.L215:
	mov	r4, r2	@ i, i
.L210:
	cmp	r4, #0	@ i,
	mov	r2, #63	@ i,
	subne	r2, r4, #1	@ i, i,
	add	ip, r5, r6, lsl #2	@ tmp167, pstVoQue, tmp175,
	add	r3, r2, #2	@ tmp163, i,
	cmp	r4, lr	@ i, D.38617
	add	r0, r5, r3, lsl #2	@ tmp164, pstVoQue, tmp163,
	mov	r6, r3	@ tmp175, tmp163
	ldr	r3, [r0, #4]	@ D.38616, pstVoQue_20->image_ptr
	str	r3, [ip, #4]	@ D.38616, pstVoQue_20->image_ptr
	bne	.L215	@,
	cmp	r1, #1	@ SameImageFlag,
	add	r3, r4, #1	@ tmp169, i,
	and	r3, r3, #63	@ tmp171, tmp169,
	strh	r3, [r5, #4]	@ movhi	@ tmp171, pstVoQue_20->history
	bne	.L208	@,
	bl	vfmw_dprint_nothing	@
	mov	r1, r8	@, p_image
	mov	r0, r7	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
	b	.L205	@
.L206:
	bl	vfmw_dprint_nothing	@
	mov	r1, #2	@ SameImageFlag,
	b	.L207	@
.L211:
	mvn	r4, #1	@ ret,
.L205:
	ldr	r0, .L220	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.38611, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L213:
	mvn	r0, #1	@ D.38611,
	bx	lr	@
.L219:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.38611,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L221:
	.align	2
.L220:
	.word	.LANCHOR0
	.fnend
	.size	SYNTAX_ReleaseImage, .-SYNTAX_ReleaseImage
	.align	2
	.global	SYNTAX_ReturnImage
	.type	SYNTAX_ReturnImage, %function
SYNTAX_ReturnImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0]	@ pSynCtx_6(D)->eVidStd, pSynCtx_6(D)->eVidStd
	cmp	r3, #18	@ pSynCtx_6(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_6(D)->eVidStd
	b	.L239	@
.L225:
	.word	.L236
	.word	.L226
	.word	.L227
	.word	.L228
	.word	.L229
	.word	.L230
	.word	.L231
	.word	.L239
	.word	.L232
	.word	.L233
	.word	.L234
	.word	.L234
	.word	.L234
	.word	.L235
	.word	.L229
	.word	.L239
	.word	.L239
	.word	.L239
	.word	.L236
.L236:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L237:
	ldr	r0, .L241	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ pstVoQue_1->head, pstVoQue_1->head
	ldr	r0, .L241	@,
	sub	r3, r3, #1	@ tmp138, pstVoQue_1->head,
	and	r3, r3, #63	@ tmp140, tmp138,
	strh	r3, [r4, #6]	@ movhi	@ tmp140, pstVoQue_1->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.38622,
	ldmfd	sp!, {r4, pc}	@
.L234:
	ldr	r3, .L241+4	@ tmp129,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	addne	r4, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r4, r4, #48	@ pstVoQue, pstVoQue,
	bne	.L237	@,
.L229:
	add	r4, r0, #20480	@ pstVoQue, pSynCtx,
	add	r4, r4, #16	@ pstVoQue, pstVoQue,
	b	.L237	@
.L230:
	add	r4, r0, #26624	@ pstVoQue, pSynCtx,
	add	r4, r4, #24	@ pstVoQue, pstVoQue,
	b	.L237	@
.L231:
	add	r4, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r4, #32	@ pstVoQue, pstVoQue,
	b	.L237	@
.L235:
	add	r4, r0, #8128	@ pstVoQue, pSynCtx,
	add	r4, r4, #48	@ pstVoQue, pstVoQue,
	b	.L237	@
.L228:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L237	@
.L232:
	add	r4, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, r4, #64	@ pstVoQue, pstVoQue,
	b	.L237	@
.L233:
	add	r4, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, r4, #48	@ pstVoQue, pstVoQue,
	b	.L237	@
.L226:
	add	r4, r0, #112640	@ pstVoQue, pSynCtx,
	add	r4, r4, #736	@ pstVoQue, pstVoQue,
	b	.L237	@
.L227:
	add	r4, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r4, #88	@ pstVoQue, pstVoQue,
	b	.L237	@
.L239:
	mvn	r0, #1	@ D.38622,
	ldmfd	sp!, {r4, pc}	@
.L242:
	.align	2
.L241:
	.word	.LANCHOR0
	.word	g_VdmCharacter
	.fnend
	.size	SYNTAX_ReturnImage, .-SYNTAX_ReturnImage
	.align	2
	.global	DecodeStream_H264
	.type	DecodeStream_H264, %function
DecodeStream_H264:
	.fnstart
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	.pad #36
	sub	sp, sp, #36	@,,
	ldrd	r2, [r0, #32]	@ pSegMan_2(D)->CurrSeg.Pts, pSegMan,
	ldr	r9, [r4, #8]	@ pSegMan_2(D)->CurrSeg.VirAddr, pSegMan_2(D)->CurrSeg.VirAddr
	mov	r5, r1	@ pstCtx, pstCtx
	ldr	r8, [r4, #16]	@ pSegMan_2(D)->CurrSeg.PhyAddr, pSegMan_2(D)->CurrSeg.PhyAddr
	mov	r0, r1	@, pstCtx
	ldr	r7, [r4, #20]	@ pSegMan_2(D)->CurrSeg.LenInByte, pSegMan_2(D)->CurrSeg.LenInByte
	mov	r1, sp	@,
	ldrb	r6, [r4, #13]	@ zero_extendqisi2	@ pSegMan_2(D)->CurrSeg.IsLastSeg, pSegMan_2(D)->CurrSeg.IsLastSeg
	ldr	lr, [r4, #24]	@ pSegMan_2(D)->CurrSeg.StreamID, pSegMan_2(D)->CurrSeg.StreamID
	ldrb	ip, [r4, #15]	@ zero_extendqisi2	@ pSegMan_2(D)->CurrSeg.DspCheckPicOverFlag, pSegMan_2(D)->CurrSeg.DspCheckPicOverFlag
	strd	r2, [sp, #24]	@ pSegMan_2(D)->CurrSeg.Pts,,
	str	r9, [sp, #4]	@ pSegMan_2(D)->CurrSeg.VirAddr, H264Pack.p_stream
	str	r8, [sp, #8]	@ pSegMan_2(D)->CurrSeg.PhyAddr, H264Pack.strm_phy_addr
	str	r7, [sp, #12]	@ pSegMan_2(D)->CurrSeg.LenInByte, H264Pack.stream_len
	strb	r6, [sp]	@ pSegMan_2(D)->CurrSeg.IsLastSeg, H264Pack.last_pack_in_nal
	str	lr, [sp, #16]	@ pSegMan_2(D)->CurrSeg.StreamID, H264Pack.StreamID
	strb	ip, [sp, #1]	@ pSegMan_2(D)->CurrSeg.DspCheckPicOverFlag, H264Pack.pack_is_pic_over_flag
	bl	H264DEC_DecodePacket	@
	cmn	r0, #2	@,
	movne	r0, #0	@ tmp137,
	moveq	r0, #1	@ tmp137,
	strb	r0, [r4, #1]	@ tmp137, pSegMan_2(D)->IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam
	cmp	r4, #0	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam,
	beq	.L246	@,
.L243:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L246:
	add	r6, r5, #12288	@ tmp141, pstCtx,
	ldrb	r3, [r6, #1268]	@ zero_extendqisi2	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag,
	bne	.L243	@,
	add	r5, r5, #49152	@ tmp144, pstCtx,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #3688]	@, MEM[(struct H264_CTX_S *)pstCtx_19(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r6, #1268]	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	b	.L243	@
	.fnend
	.size	DecodeStream_H264, .-DecodeStream_H264
	.align	2
	.global	DecodeStream_REAL8
	.type	DecodeStream_REAL8, %function
DecodeStream_REAL8:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ pSegMan_2(D)->CurrSeg.IsStreamEnd, pSegMan_2(D)->CurrSeg.IsStreamEnd
	mov	r5, r1	@ pstCtx, pstCtx
	cmp	r3, #1	@ pSegMan_2(D)->CurrSeg.IsStreamEnd,
	beq	.L256	@,
	add	r6, r0, #88	@ D.38649, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.38649
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.38649
	mov	r0, r5	@, pstCtx
	bl	REAL8DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam
	cmp	r7, #0	@ MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #36864	@ tmp141, pstCtx,
	mov	r0, r6	@, D.38649
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L257	@ tmp143,
	ldr	r3, [r3]	@ D.38652, g_event_report
	cmp	r3, #0	@ D.38652,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.38652
.L256:
	add	r5, r1, #36864	@ tmp126, pstCtx,
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L258:
	.align	2
.L257:
	.word	g_event_report
	.fnend
	.size	DecodeStream_REAL8, .-DecodeStream_REAL8
	.align	2
	.global	DecodeStream_REAL9
	.type	DecodeStream_REAL9, %function
DecodeStream_REAL9:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ pSegMan_2(D)->CurrSeg.IsStreamEnd, pSegMan_2(D)->CurrSeg.IsStreamEnd
	mov	r5, r1	@ pstCtx, pstCtx
	cmp	r3, #1	@ pSegMan_2(D)->CurrSeg.IsStreamEnd,
	beq	.L268	@,
	add	r6, r0, #88	@ D.38665, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.38665
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.38665
	mov	r0, r5	@, pstCtx
	bl	REAL9DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam
	cmp	r7, #0	@ MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #36864	@ tmp141, pstCtx,
	mov	r0, r6	@, D.38665
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L269	@ tmp143,
	ldr	r3, [r3]	@ D.38668, g_event_report
	cmp	r3, #0	@ D.38668,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.38668
.L268:
	add	r5, r1, #36864	@ tmp126, pstCtx,
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L270:
	.align	2
.L269:
	.word	g_event_report
	.fnend
	.size	DecodeStream_REAL9, .-DecodeStream_REAL9
	.align	2
	.global	DecodeStream_DIVX3
	.type	DecodeStream_DIVX3, %function
DecodeStream_DIVX3:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ pSegMan_2(D)->CurrSeg.IsStreamEnd, pSegMan_2(D)->CurrSeg.IsStreamEnd
	mov	r5, r1	@ pstCtx, pstCtx
	cmp	r3, #1	@ pSegMan_2(D)->CurrSeg.IsStreamEnd,
	beq	.L280	@,
	add	r6, r0, #88	@ D.38681, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.38681
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.38681
	mov	r0, r5	@, pstCtx
	bl	DIVX3DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam
	cmp	r7, #0	@ MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #24576	@ tmp141, pstCtx,
	mov	r0, r6	@, D.38681
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L281	@ tmp143,
	ldr	r3, [r3]	@ D.38684, g_event_report
	cmp	r3, #0	@ D.38684,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.38684
.L280:
	add	r5, r1, #24576	@ tmp126, pstCtx,
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L282:
	.align	2
.L281:
	.word	g_event_report
	.fnend
	.size	DecodeStream_DIVX3, .-DecodeStream_DIVX3
	.align	2
	.global	DecodeStream_VP8
	.type	DecodeStream_VP8, %function
DecodeStream_VP8:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ pSegMan_2(D)->CurrSeg.IsStreamEnd, pSegMan_2(D)->CurrSeg.IsStreamEnd
	mov	r5, r1	@ pstCtx, pstCtx
	cmp	r3, #1	@ pSegMan_2(D)->CurrSeg.IsStreamEnd,
	beq	.L292	@,
	add	r6, r0, #88	@ D.38697, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.38697
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.38697
	mov	r0, r5	@, pstCtx
	bl	VP8DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam
	cmp	r7, #0	@ MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #8192	@ tmp141, pstCtx,
	mov	r0, r6	@, D.38697
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L293	@ tmp143,
	ldr	r3, [r3]	@ D.38700, g_event_report
	cmp	r3, #0	@ D.38700,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.38700
.L292:
	add	r5, r1, #8192	@ tmp126, pstCtx,
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L294:
	.align	2
.L293:
	.word	g_event_report
	.fnend
	.size	DecodeStream_VP8, .-DecodeStream_VP8
	.align	2
	.global	DecodeStream_VP6
	.type	DecodeStream_VP6, %function
DecodeStream_VP6:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L309	@ tmp135,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	mov	r5, r1	@ pstCtx, pstCtx
	tst	r3, #1	@ g_VdmCharacter,
	beq	.L296	@,
	ldrb	r3, [r0, #14]	@ zero_extendqisi2	@ pSegMan_6(D)->CurrSeg.IsStreamEnd, pSegMan_6(D)->CurrSeg.IsStreamEnd
	cmp	r3, #1	@ pSegMan_6(D)->CurrSeg.IsStreamEnd,
	beq	.L308	@,
	add	r6, r0, #88	@ D.38716, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.38716
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.38716
	mov	r0, r5	@, pstCtx
	bl	VP6DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam
	cmp	r7, #0	@ MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #12288	@ tmp155, pstCtx,
	mov	r0, r6	@, D.38716
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L309+4	@ tmp157,
	ldr	r3, [r3]	@ D.38720, g_event_report
	cmp	r3, #0	@ D.38720,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.38720
.L296:
	add	r3, r1, #20480	@ tmp163, pstCtx,
	ldr	r3, [r3]	@ MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].pstExtraData, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].pstExtraData
	ldr	r3, [r3, #388]	@ _10->StdExt.Vp6Ext.bReversed, _10->StdExt.Vp6Ext.bReversed
	cmp	r3, #1	@ _10->StdExt.Vp6Ext.bReversed,
	bls	.L301	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L301:
	add	ip, r0, #88	@ D.38716, pSegMan,
	mov	r3, #1	@ tmp165,
	mov	r2, #80	@,
	strb	r3, [r0, #1]	@ tmp165, pSegMan_6(D)->IsCurrSegWaitDec
	add	r1, r4, #8	@, pSegMan,
	mov	r0, ip	@, D.38716
	bl	memcpy	@
	ldr	r3, .L309+8	@ tmp172,
	ldr	r3, [r3, #12]	@ D.38717, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.38717,
	beq	.L303	@,
	mov	r1, r0	@, D.38716
	mov	r0, r5	@, pstCtx
	blx	r3	@ D.38717
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L303:
	ldr	r0, [r5]	@, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp175,
	strb	r3, [r4, #1]	@ tmp175, pSegMan_6(D)->IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L308:
	add	r5, r1, #12288	@ tmp140, pstCtx,
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L310:
	.align	2
.L309:
	.word	g_VdmCharacter
	.word	g_event_report
	.word	g_SdecFunc
	.fnend
	.size	DecodeStream_VP6, .-DecodeStream_VP6
	.align	2
	.global	DecodeStream_H263
	.type	DecodeStream_H263, %function
DecodeStream_H263:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r0, #88	@ D.38732, pSegMan,
	mov	r3, #1	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	strb	r3, [r4, #1]	@ tmp118, pSegMan_4(D)->IsCurrSegWaitDec
	mov	r5, r1	@ pstCtx, pstCtx
	mov	r0, ip	@, D.38732
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
	ldr	r3, .L316	@ tmp125,
	ldr	r3, [r3, #12]	@ D.38733, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.38733,
	beq	.L314	@,
	mov	r1, r0	@, D.38732
	mov	r0, r5	@, pstCtx
	blx	r3	@ D.38733
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L314:
	ldr	r0, [r5]	@, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_11(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_4(D)->CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp128,
	strb	r3, [r4, #1]	@ tmp128, pSegMan_4(D)->IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L317:
	.align	2
.L316:
	.word	g_SdecFunc
	.fnend
	.size	DecodeStream_H263, .-DecodeStream_H263
	.align	2
	.global	SegMan
	.type	SegMan, %function
SegMan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r4, r1, #0	@ pSegMan, pSegMan
	beq	.L319	@,
	ldr	r3, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	cmp	r3, #0	@ pSegMan_8(D)->CurrSeg.VirAddr,
	beq	.L319	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.38743, pSegMan_8(D)->CurrSeg.IsLastSeg
	mov	r6, r0	@ ChanID, ChanID
	cmp	r5, #1	@ D.38743,
	beq	.L341	@,
	cmp	r5, #0	@ D.38743,
	beq	.L342	@,
.L326:
	mvn	r0, #0	@ D.38740,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L341:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.38743, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r5, #0	@ D.38743,
	beq	.L343	@,
	cmp	r5, #1	@ D.38743,
	bne	.L326	@,
	ldr	r1, .L345	@ tmp176,
	mov	r3, #64512	@ tmp207,
	ldr	r2, [r4, #100]	@ pSegMan_8(D)->Pack.StreamPack[0].LenInByte, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	movt	r3, 15	@ tmp207,
	ldr	r1, [r1, r0, asl #2]	@ tmp177, s_pstVfmwChan
	ldr	r1, [r1, #880]	@ _39->eVidStd, _39->eVidStd
	cmp	r1, #6	@ _39->eVidStd,
	movne	r3, #1024	@ D.38741,
	cmp	r3, r2	@ D.38741, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	bhi	.L344	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #168	@, pSegMan,
	bl	memcpy	@
.L329:
	mov	r0, #0	@ tmp204,
	strb	r0, [r4, #2]	@ tmp204, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L342:
	add	r8, r4, #88	@ D.38744, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, D.38744
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r3, [r4, #2]	@ zero_extendqisi2	@ pSegMan_8(D)->ConvolutionPacketNum, pSegMan_8(D)->ConvolutionPacketNum
	add	r3, r3, #1	@ tmp169, pSegMan_8(D)->ConvolutionPacketNum,
	uxtb	r3, r3	@ D.38743, tmp169
	strb	r3, [r4, #2]	@ D.38743, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r3, #1	@ D.38743,
	bls	.L326	@,
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, pSegMan_8(D)->Pack.StreamPack[1].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, D.38744
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L345+4	@ tmp173,
	ldr	r3, [r3]	@ D.38746, g_event_report
	cmp	r3, #0	@ D.38746,
	beq	.L325	@,
	mov	r2, r5	@, D.38743
	mov	r0, r6	@, ChanID
	mov	r1, #113	@,
	blx	r3	@ D.38746
.L325:
	mov	r3, #0	@ tmp174,
	mvn	r0, #0	@ D.38740,
	strb	r3, [r4, #2]	@ tmp174, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L343:
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.38743, pSegMan_8(D)->ConvolutionPacketNum
	mov	r0, r5	@ D.38740, D.38743
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L344:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #100]	@ D.38741, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r0, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	rsb	r0, r2, r0	@,, pSegMan_8(D)->CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r1, [r4, #100]	@ D.38741, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	ip, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ pSegMan_8(D)->CurrSeg.PhyAddr, pSegMan_8(D)->CurrSeg.PhyAddr
	ldr	r3, [r4, #20]	@ pSegMan_8(D)->CurrSeg.LenInByte, pSegMan_8(D)->CurrSeg.LenInByte
	rsb	ip, r1, ip	@ D.38742, D.38741, pSegMan_8(D)->CurrSeg.VirAddr
	rsb	r2, r1, r2	@ D.38741, D.38741, pSegMan_8(D)->CurrSeg.PhyAddr
	strb	r5, [r4, #93]	@ D.38743, pSegMan_8(D)->Pack.StreamPack[0].IsLastSeg
	add	r3, r3, r1	@ D.38741, pSegMan_8(D)->CurrSeg.LenInByte, D.38741
	str	ip, [r4, #88]	@ D.38742, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	str	r3, [r4, #100]	@ D.38741, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	str	r2, [r4, #96]	@ D.38741, pSegMan_8(D)->Pack.StreamPack[0].PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->CurrSeg.StreamID
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	str	r3, [r4, #104]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	bl	__memzero	@
	b	.L329	@
.L319:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38740,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L346:
	.align	2
.L345:
	.word	s_pstVfmwChan
	.word	g_event_report
	.fnend
	.size	SegMan, .-SegMan
	.align	2
	.global	DecodeStream_VC1
	.type	DecodeStream_VC1, %function
DecodeStream_VC1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r6, r1, #110592	@ tmp227, pstCtx,
	mov	r4, r1	@ pstCtx, pstCtx
	mov	r5, r0	@ pSegMan, pSegMan
	ldr	r8, [r6, #3128]	@ ChanID, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4]	@ D.38764, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pstExtraData
	ldr	r3, [r2, #388]	@ D.38765, _10->StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ D.38765,
	bhi	.L349	@,
	ldr	r1, [r2, #392]	@ _10->StdExt.Vc1Ext.CodecVersion, _10->StdExt.Vc1Ext.CodecVersion
	cmp	r1, #8	@ _10->StdExt.Vc1Ext.CodecVersion,
	bgt	.L349	@,
	add	r7, r4, #77824	@ tmp226, pstCtx,
	uxtb	r3, r3	@ D.38767, D.38765
	cmp	r3, #1	@ D.38767,
	strb	r3, [r7, #3544]	@ D.38767, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.PreParseInfo.IsAdvProfile
	ldr	r3, [r2, #392]	@ _10->StdExt.Vc1Ext.CodecVersion, _10->StdExt.Vc1Ext.CodecVersion
	strb	r3, [r7, #3546]	@ _10->StdExt.Vc1Ext.CodecVersion, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.PreParseInfo.CodecVersion
	beq	.L369	@,
	ldrb	r3, [r5, #14]	@ zero_extendqisi2	@ pSegMan_29(D)->CurrSeg.IsStreamEnd, pSegMan_29(D)->CurrSeg.IsStreamEnd
	cmp	r3, #1	@ pSegMan_29(D)->CurrSeg.IsStreamEnd,
	beq	.L370	@,
	add	r7, r5, #88	@ D.38772, pSegMan,
	mov	r2, #80	@,
	add	r1, r5, #8	@, pSegMan,
	mov	r0, r7	@, D.38772
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r5, #168	@, pSegMan,
	bl	__memzero	@
	ldr	r3, [r5, #100]	@ pSegMan_29(D)->Pack.StreamPack[0].LenInByte, pSegMan_29(D)->Pack.StreamPack[0].LenInByte
	cmp	r3, #15	@ pSegMan_29(D)->Pack.StreamPack[0].LenInByte,
	bls	.L359	@,
	add	r2, r4, #80896	@, pstCtx,
	mov	r1, #16	@,
	add	r2, r2, #472	@,,
	ldr	r0, [r5, #88]	@, pSegMan_29(D)->Pack.StreamPack[0].VirAddr
	bl	Vc1SMPSeqHdr	@
	cmp	r0, #0	@,
	bne	.L359	@,
	ldr	ip, [r5, #100]	@ pSegMan_29(D)->Pack.StreamPack[0].LenInByte, pSegMan_29(D)->Pack.StreamPack[0].LenInByte
	mov	r1, r7	@, D.38772
	ldr	r2, [r5, #88]	@ pSegMan_29(D)->Pack.StreamPack[0].VirAddr, pSegMan_29(D)->Pack.StreamPack[0].VirAddr
	mov	r0, r4	@, pstCtx
	ldr	r3, [r5, #96]	@ pSegMan_29(D)->Pack.StreamPack[0].PhyAddr, pSegMan_29(D)->Pack.StreamPack[0].PhyAddr
	sub	ip, ip, #16	@ D.38773, pSegMan_29(D)->Pack.StreamPack[0].LenInByte,
	add	r2, r2, #16	@ D.38775, pSegMan_29(D)->Pack.StreamPack[0].VirAddr,
	str	ip, [r5, #100]	@ D.38773, pSegMan_29(D)->Pack.StreamPack[0].LenInByte
	str	r2, [r5, #88]	@ D.38775, pSegMan_29(D)->Pack.StreamPack[0].VirAddr
	add	r3, r3, #16	@ D.38765, pSegMan_29(D)->Pack.StreamPack[0].PhyAddr,
	str	r3, [r5, #96]	@ D.38765, pSegMan_29(D)->Pack.StreamPack[0].PhyAddr
	bl	VC1DEC_Decode	@
	mov	r0, r7	@, D.38772
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	__memzero	@
.L349:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L359:
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r5, #104]	@, pSegMan_29(D)->Pack.StreamPack[0].StreamID
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L373	@ tmp222,
	ldr	r3, [r3]	@ D.38774, g_event_report
	cmp	r3, #0	@ D.38774,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.38774
.L370:
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r5, #24]	@, pSegMan_29(D)->CurrSeg.StreamID
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L369:
	mov	r0, r4	@, pstCtx
	bl	VC1_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L371	@,
.L351:
	mov	r1, r5	@, pSegMan
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L372	@,
.L353:
	ldr	r4, [r4, #4]	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam
	cmp	r4, #0	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r3, [r7, #455]	@ zero_extendqisi2	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r7, #455]	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L372:
	add	r5, r5, #88	@ D.38770, pSegMan,
	mov	r0, r4	@, pstCtx
	mov	r1, r5	@, D.38770
	bl	VC1DEC_Decode	@
	mov	r0, r5	@, D.38770
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L353	@
.L371:
	ldr	r3, .L373+4	@ tmp167,
	ldr	r3, [r3, r8, asl #2]	@ D.38769, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _23->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _23->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _23->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L352	@,
	ldr	r3, [r3, #1616]	@ _23->stSynExtraData.s32DSDWaitFlag, _23->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _23->stSynExtraData.s32DSDWaitFlag,
	bne	.L351	@,
.L352:
	add	r1, r7, #288	@, tmp226,
	mov	r0, r4	@, pstCtx
	bl	VC1DEC_Decode	@
	b	.L351	@
.L374:
	.align	2
.L373:
	.word	g_event_report
	.word	s_pstVfmwChan
	.fnend
	.size	DecodeStream_VC1, .-DecodeStream_VC1
	.align	2
	.global	DecodeStream_MPEG2
	.type	DecodeStream_MPEG2, %function
DecodeStream_MPEG2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r1, #69632	@ tmp146, pstCtx,
	mov	r6, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx
	mov	r4, r1	@ pstCtx, pstCtx
	ldr	r7, [r5, #4064]	@ ChanID, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L381	@,
.L376:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L382	@,
.L378:
	ldr	r4, [r4, #4]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam
	cmp	r4, #0	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r3, [r5, #4081]	@ zero_extendqisi2	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #4081]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L382:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L378	@
.L381:
	ldr	r3, .L384	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.38787, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L383	@,
.L377:
	add	r1, r4, #72704	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L376	@
.L383:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L376	@,
	b	.L377	@
.L385:
	.align	2
.L384:
	.word	s_pstVfmwChan
	.fnend
	.size	DecodeStream_MPEG2, .-DecodeStream_MPEG2
	.align	2
	.global	DecodeStream_MPEG4
	.type	DecodeStream_MPEG4, %function
DecodeStream_MPEG4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r1, #69632	@ tmp125, pstCtx,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx
	mov	r4, r1	@ pstCtx, pstCtx
	ldr	r5, [r3, #4064]	@ ChanID, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	MP4_GetPacketState	@
	cmp	r0, #3	@,
	beq	.L392	@,
.L387:
	add	r5, r4, #20480	@ tmp146, pstCtx,
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L393	@,
.L389:
	ldr	r4, [r4, #1036]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam
	cmp	r4, #0	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldrb	r3, [r5, #2516]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #2516]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L393:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L389	@
.L392:
	ldr	r3, .L395	@ tmp126,
	ldr	r3, [r3, r5, asl #2]	@ D.38798, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L394	@,
.L388:
	add	r1, r4, #15680	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L387	@
.L394:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L387	@,
	b	.L388	@
.L396:
	.align	2
.L395:
	.word	s_pstVfmwChan
	.fnend
	.size	DecodeStream_MPEG4, .-DecodeStream_MPEG4
	.align	2
	.global	DecodeStream_AVS
	.type	DecodeStream_AVS, %function
DecodeStream_AVS:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	add	r5, r1, #16384	@ tmp146, pstCtx,
	mov	r6, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx
	mov	r4, r1	@ pstCtx, pstCtx
	ldr	r7, [r5, #224]	@ ChanID, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	bne	.L398	@,
	ldr	r3, .L405	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.38809, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L403	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
.L398:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #224]	@, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L404	@,
.L400:
	ldr	r4, [r4, #4]	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam
	cmp	r4, #0	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r3, [r5, #740]	@ zero_extendqisi2	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #224]	@, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #740]	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L403:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L398	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
	b	.L398	@
.L404:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	AVSDEC_Decode	@
	b	.L400	@
.L406:
	.align	2
.L405:
	.word	s_pstVfmwChan
	.fnend
	.size	DecodeStream_AVS, .-DecodeStream_AVS
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #14	@ VideoStandard,
	ldrls	pc, [pc, r1, asl #2]	@ VideoStandard
	b	.L407	@
.L410:
	.word	.L409
	.word	.L411
	.word	.L412
	.word	.L413
	.word	.L414
	.word	.L415
	.word	.L416
	.word	.L407
	.word	.L417
	.word	.L418
	.word	.L419
	.word	.L419
	.word	.L419
	.word	.L420
	.word	.L414
.L420:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP8	@
.L409:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L411:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VC1	@
.L412:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG4	@
.L413:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L414:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H263	@
.L415:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_DIVX3	@
.L416:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_AVS	@
.L417:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_REAL8	@
.L418:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_REAL9	@
.L419:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP6	@
.L407:
	bx	lr	@
	.fnend
	.size	DecodeStream, .-DecodeStream
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L422	@
.L424:
	.word	.L421
	.word	.L421
	.word	.L425
	.word	.L421
	.word	.L422
	.word	.L426
	.word	.L422
	.word	.L422
	.word	.L428
	.word	.L429
	.word	.L430
	.word	.L430
	.word	.L430
	.word	.L431
.L422:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L428:
	ldr	r4, [r1]	@ D.38821, MEM[(struct RV8_CTX_S *)pCtx_10(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L451	@,
.L437:
	add	r0, r4, #224	@, D.38821,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L431:
	ldr	r4, [r1]	@ D.38821, MEM[(struct VP8_CTX_S *)pCtx_10(D)].pstExtraData
	add	r1, r1, #8192	@ tmp180, pCtx,
	ldr	r0, [r1, #328]	@, MEM[(struct VP8_CTX_S *)pCtx_10(D)].ChanID
.L450:
	ldr	r1, [r4, #240]	@,
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_22 + 136B].Pack.StreamPack[0].IsLastSeg,
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_22 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L437	@,
	bl	vfmw_dprint_nothing	@
	add	r0, r4, #224	@, D.38821,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L421:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L425:
	add	r4, r1, #20480	@ tmp145, pCtx,
	ldr	r5, [r4, #1580]	@ D.38821, MEM[(struct MP4_CTX_S *)pCtx_10(D)].pstExtraData
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_10(D)].ChanID
	ldr	r1, [r5, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L432	@,
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_10(D)].ChanID
	ldr	r1, [r5, #320]	@, MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[1].StreamID
	bl	SM_ReleaseStreamSeg	@
.L432:
	add	r0, r5, #224	@, D.38821,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L430:
	ldr	r4, [r1]	@ D.38821, MEM[(struct VP6_CTX_S *)pCtx_10(D)].pstExtraData
	add	r1, r1, #12288	@ tmp187, pCtx,
	ldr	r0, [r1, #712]	@, MEM[(struct VP6_CTX_S *)pCtx_10(D)].ChanID
	b	.L450	@
.L426:
	ldr	r4, [r1]	@ D.38821, MEM[(struct DIVX3_CTX_S *)pCtx_10(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L437	@,
	add	r3, r1, #24576	@ tmp174, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2416]	@, MEM[(struct DIVX3_CTX_S *)pCtx_10(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L437	@
.L429:
	ldr	r4, [r1]	@ D.38821, MEM[(struct RV9_CTX_S *)pCtx_10(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L437	@,
	add	r3, r1, #36864	@ tmp167, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2440]	@, MEM[(struct RV9_CTX_S *)pCtx_10(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L437	@
.L451:
	add	r3, r1, #36864	@ tmp160, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2456]	@, MEM[(struct RV8_CTX_S *)pCtx_10(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L437	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r0, #13	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L453	@
.L455:
	.word	.L454
	.word	.L456
	.word	.L457
	.word	.L458
	.word	.L453
	.word	.L459
	.word	.L460
	.word	.L453
	.word	.L461
	.word	.L462
	.word	.L463
	.word	.L463
	.word	.L463
	.word	.L464
.L464:
	ldr	r4, [r1]	@ D.38826, MEM[(struct VP8_CTX_S *)pCtx_9(D)].pstExtraData
	add	r1, r1, #8192	@ tmp167, pCtx,
	ldr	r0, [r1, #328]	@, MEM[(struct VP8_CTX_S *)pCtx_9(D)].ChanID
.L479:
	ldr	r1, [r4, #240]	@,
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_15 + 136B].Pack.StreamPack[0].IsLastSeg,
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_15 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L469	@,
	bl	vfmw_dprint_nothing	@
.L469:
	add	r0, r4, #224	@, D.38826,
	mov	r1, #160	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L454:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	H264_ClearCurrPic	@
.L456:
	add	r3, r1, #110592	@ tmp161, pCtx,
	add	r0, r1, #77824	@, pCtx,
	add	r0, r0, #448	@,,
	ldr	r1, [r3, #3128]	@, MEM[(struct VC1_CTX_S *)pCtx_9(D)].ChanID
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	VC1_ClearCurPic	@
.L457:
	mov	r0, r1	@, pCtx
	str	r1, [sp, #4]	@ pCtx, %sfp
	bl	MP4_ClearCurPic	@
	ldr	r1, [sp, #4]	@ pCtx, %sfp
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	MP4_Clean_HeadPacket	@
.L458:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	MP2_ClearCurPic	@
.L459:
	ldr	r4, [r1]	@ D.38826, MEM[(struct DIVX3_CTX_S *)pCtx_9(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L469	@,
	add	r3, r1, #24576	@ tmp156, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2416]	@, MEM[(struct DIVX3_CTX_S *)pCtx_9(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L469	@
.L460:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	AVS_ClearCurPic	@
.L461:
	ldr	r4, [r1]	@ D.38826, MEM[(struct RV8_CTX_S *)pCtx_9(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L469	@,
	add	r3, r1, #36864	@ tmp142, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2456]	@, MEM[(struct RV8_CTX_S *)pCtx_9(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L469	@
.L462:
	ldr	r4, [r1]	@ D.38826, MEM[(struct RV9_CTX_S *)pCtx_9(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L469	@,
	add	r3, r1, #36864	@ tmp149, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2440]	@, MEM[(struct RV9_CTX_S *)pCtx_9(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L469	@
.L463:
	ldr	r4, [r1]	@ D.38826, MEM[(struct VP6_CTX_S *)pCtx_9(D)].pstExtraData
	add	r1, r1, #12288	@ tmp174, pCtx,
	ldr	r0, [r1, #712]	@, MEM[(struct VP6_CTX_S *)pCtx_9(D)].ChanID
	b	.L479	@
.L453:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
	.fnend
	.size	ReleaseCurPic, .-ReleaseCurPic
	.align	2
	.global	CheckNewPicSegMpeg2
	.type	CheckNewPicSegMpeg2, %function
CheckNewPicSegMpeg2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.38835, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	add	r2, r3, #73	@ tmp127, D.38835,
	cmp	r3, #0	@ D.38835,
	cmpne	r3, #179	@, D.38835,
	uxtb	r2, r2	@ tmp129, tmp127
	moveq	ip, #1	@ tmp126,
	movne	ip, #0	@ tmp126,
	cmp	r2, #1	@ tmp129,
	movhi	r2, ip	@, tmp134, tmp126
	orrls	r2, ip, #1	@,, tmp134, tmp126
	cmp	r2, #0	@ tmp134,
	beq	.L484	@,
	ldr	r2, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r2, #0	@ *pNewPicDetector_10(D),
	bne	.L484	@,
	mov	r3, #1	@ tmp136,
	str	r3, [r0]	@ tmp136, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.38835, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L481:
	cmp	r3, #0	@ D.38835,
	streq	r3, [r0]	@ D.38835, *pNewPicDetector_10(D)
	mov	r0, r2	@, ret
	bx	lr	@
.L484:
	mvn	r2, #0	@ ret,
	b	.L481	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegMpeg4
	.type	CheckNewPicSegMpeg4, %function
CheckNewPicSegMpeg4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.38841, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	cmp	r3, #179	@ D.38841,
	cmpne	r3, #176	@, D.38841,
	add	ip, r3, #75	@ tmp134, D.38841,
	moveq	lr, #1	@ tmp129,
	movne	lr, #0	@ tmp129,
	uxtb	ip, ip	@ tmp136, tmp134
	cmp	r3, #47	@ D.38841,
	orrls	lr, lr, #1	@,, tmp133, tmp129
	cmp	ip, #1	@ tmp136,
	movhi	ip, lr	@, tmp141, tmp133
	orrls	ip, lr, #1	@,, tmp141, tmp133
	cmp	ip, #0	@ tmp141,
	bne	.L498	@,
.L486:
	cmp	r2, #1	@ IsShortHead,
	bne	.L490	@,
.L487:
	mov	r3, #1	@ tmp143,
	str	r3, [r0]	@ tmp143, *pNewPicDetector_11(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.38841, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	mov	r2, #0	@ ret,
.L488:
	cmp	r3, #182	@ D.38841,
	moveq	r3, #0	@ tmp144,
	streq	r3, [r0]	@ tmp144, *pNewPicDetector_11(D)
	mov	r0, r2	@, ret
	ldr	pc, [sp], #4	@
.L498:
	ldr	ip, [r0]	@ *pNewPicDetector_11(D), *pNewPicDetector_11(D)
	cmp	ip, #0	@ *pNewPicDetector_11(D),
	beq	.L487	@,
	b	.L486	@
.L490:
	mvn	r2, #0	@ ret,
	b	.L488	@
	.fnend
	.size	CheckNewPicSegMpeg4, .-CheckNewPicSegMpeg4
	.align	2
	.global	CheckNewPicSegAVS
	.type	CheckNewPicSegAVS, %function
CheckNewPicSegAVS:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.38848, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	sub	r2, r3, #179	@ D.38845, D.38848,
	clz	r2, r2	@ D.38845, D.38845
	add	ip, r3, #74	@ tmp129, D.38848,
	mov	r2, r2, lsr #5	@ D.38845, D.38845,
	uxtb	ip, ip	@ tmp131, tmp129
	cmp	r3, #176	@ D.38848,
	movne	lr, r2	@, tmp128, D.38845
	orreq	lr, r2, #1	@,, tmp128, D.38845
	cmp	ip, #1	@ tmp131,
	movhi	ip, lr	@, tmp136, tmp128
	orrls	ip, lr, #1	@,, tmp136, tmp128
	cmp	ip, #0	@ tmp136,
	beq	.L503	@,
	ldr	ip, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	ip, #0	@ *pNewPicDetector_10(D),
	bne	.L503	@,
	mov	r3, #1	@ tmp138,
	str	r3, [r0]	@ tmp138, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.38848, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	sub	r2, r3, #179	@ D.38845, D.38848,
	clz	r2, r2	@ D.38845, D.38845
	mov	r2, r2, lsr #5	@ D.38845, D.38845,
.L500:
	cmp	r3, #182	@ D.38848,
	movne	r3, r2	@, tmp145, D.38845
	orreq	r3, r2, #1	@,, tmp145, D.38845
	cmp	r3, #0	@ tmp145,
	movne	r3, #0	@ tmp146,
	strne	r3, [r0]	@ tmp146, *pNewPicDetector_10(D)
	mov	r0, ip	@, ret
	ldr	pc, [sp], #4	@
.L503:
	mvn	ip, #0	@ ret,
	b	.L500	@
	.fnend
	.size	CheckNewPicSegAVS, .-CheckNewPicSegAVS
	.align	2
	.global	CheckNewPicSegVC1
	.type	CheckNewPicSegVC1, %function
CheckNewPicSegVC1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.38852, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	sub	r3, r2, #12	@ tmp122, D.38852,
	cmp	r2, #10	@ D.38852,
	cmpne	r3, #3	@, tmp122,
	bhi	.L512	@,
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r3, #0	@ *pNewPicDetector_10(D),
	bne	.L512	@,
	mov	r2, #1	@ tmp130,
	str	r2, [r0]	@ tmp130, *pNewPicDetector_10(D)
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.38852, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L509:
	cmp	r2, #13	@ D.38852,
	moveq	r2, #0	@ tmp131,
	streq	r2, [r0]	@ tmp131, *pNewPicDetector_10(D)
	mov	r0, r3	@, ret
	bx	lr	@
.L512:
	mvn	r3, #0	@ ret,
	b	.L509	@
	.fnend
	.size	CheckNewPicSegVC1, .-CheckNewPicSegVC1
	.align	2
	.global	CheckNewPicSegByVidStd
	.type	CheckNewPicSegByVidStd, %function
CheckNewPicSegByVidStd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, [r2]	@ pu8, pStreamSeg_4(D)->VirAddr
	cmp	r1, #6	@ VidStd,
	ldrls	pc, [pc, r1, asl #2]	@ VidStd
	b	.L514	@
.L516:
	.word	.L515
	.word	.L517
	.word	.L518
	.word	.L519
	.word	.L514
	.word	.L514
	.word	.L520
.L520:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegAVS	@
.L515:
	mov	r1, ip	@, pu8
	b	H264_IsNewPicNal	@
.L517:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegVC1	@
.L518:
	mov	r2, r3	@, IsShortHead
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg4	@
.L519:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg2	@
.L514:
	mvn	r0, #0	@,
	bx	lr	@
	.fnend
	.size	CheckNewPicSegByVidStd, .-CheckNewPicSegByVidStd
	.align	2
	.global	IsNewpicSeg
	.type	IsNewpicSeg, %function
IsNewpicSeg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2	@ VidStd,
	ldr	ip, [r2]	@ pu8, pStreamSeg_5(D)->VirAddr
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movne	r3, #0	@ IsShortHead,
	beq	.L536	@,
.L522:
	ldrb	lr, [ip]	@ zero_extendqisi2	@ *pu8_6, *pu8_6
	cmp	lr, #0	@ *pu8_6,
	bne	.L524	@,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pu8_6 + 1B], MEM[(HI_U8 *)pu8_6 + 1B]
	cmp	lr, #0	@ MEM[(HI_U8 *)pu8_6 + 1B],
	bne	.L524	@,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pu8_6 + 2B], MEM[(HI_U8 *)pu8_6 + 2B]
	cmp	ip, #1	@ MEM[(HI_U8 *)pu8_6 + 2B],
	bne	.L524	@,
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L536:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ *pStreamSeg_5(D), *pStreamSeg_5(D)
	ands	r3, r3, #1	@ IsShortHead, *pStreamSeg_5(D),
	beq	.L522	@,
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L524:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	IsNewpicSeg, .-IsNewpicSeg
	.align	2
	.global	OpenUsdPool_WithMem
	.type	OpenUsdPool_WithMem, %function
OpenUsdPool_WithMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L544	@ tmp150,
	add	r0, r3, r0, lsl #2	@ tmp151, tmp150, ChanID,
	ldr	ip, [r0, #24]	@ D.38875, pstVdecUsdPool
	cmp	ip, #0	@ D.38875,
	beq	.L543	@,
.L538:
	mov	r0, #0	@ tmp156,
	add	r1, ip, #205824	@ D.38878, ivtmp.162,
	mov	r3, ip	@ ivtmp.162, D.38875
	mov	r2, r0	@ tmp160, tmp156
	str	r0, [ip]	@ tmp156, _16->s32AccessIdx
.L540:
	str	r2, [r3, #1044]	@ tmp160, MEM[base: _22, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.162, ivtmp.162,
	str	r2, [r3, #-32]	@ tmp160, MEM[base: _22, offset: 1040B]
	cmp	r3, r1	@ ivtmp.162, D.38878
	bne	.L540	@,
	mov	r0, #0	@ D.38876,
	bx	lr	@
.L543:
	cmp	r1, #0	@ Viraddr,
	str	r1, [r0, #24]	@ Viraddr, pstVdecUsdPool
	movne	ip, r1	@ D.38875, Viraddr
	bne	.L538	@
.L541:
	mvn	r0, #0	@ D.38876,
	bx	lr	@
.L545:
	.align	2
.L544:
	.word	.LANCHOR0
	.fnend
	.size	OpenUsdPool_WithMem, .-OpenUsdPool_WithMem
	.align	2
	.global	CloseUsdPool_WithMem
	.type	CloseUsdPool_WithMem, %function
CloseUsdPool_WithMem:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L547	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #24]	@ tmp114, pstVdecUsdPool
	bx	lr	@
.L548:
	.align	2
.L547:
	.word	.LANCHOR0
	.fnend
	.size	CloseUsdPool_WithMem, .-CloseUsdPool_WithMem
	.align	2
	.global	InitUsdPool
	.type	InitUsdPool, %function
InitUsdPool:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L554	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp118, ChanID,
	ldr	r0, [r0, #24]	@ D.38893, pstVdecUsdPool
	cmp	r0, #0	@ D.38893,
	beq	.L552	@,
	mov	ip, #0	@ tmp121,
	add	r1, r0, #205824	@ D.38895, ivtmp.176,
	mov	r3, r0	@ ivtmp.176, D.38893
	mov	r2, ip	@ tmp125, tmp121
	str	ip, [r0]	@ tmp121, _7->s32AccessIdx
.L551:
	str	r2, [r3, #1044]	@ tmp125, MEM[base: _18, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.176, ivtmp.176,
	str	r2, [r3, #-32]	@ tmp125, MEM[base: _18, offset: 1040B]
	cmp	r3, r1	@ ivtmp.176, D.38895
	bne	.L551	@,
	mov	r0, #0	@ D.38892,
	bx	lr	@
.L552:
	mvn	r0, #0	@ D.38892,
	bx	lr	@
.L555:
	.align	2
.L554:
	.word	.LANCHOR0
	.fnend
	.size	InitUsdPool, .-InitUsdPool
	.align	2
	.global	GetUsd
	.type	GetUsd, %function
GetUsd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L565	@ tmp122,
	add	r0, r3, r0, lsl #2	@ tmp123, tmp122, ChanID,
	ldr	r0, [r0, #24]	@ D.38908, pstVdecUsdPool
	cmp	r0, #0	@ D.38908,
	bxeq	lr	@
	mov	r3, r0	@ ivtmp.187, D.38908
	mov	r2, #0	@ i,
	b	.L559	@
.L558:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #1072	@ ivtmp.187, ivtmp.187,
	cmp	r2, #192	@ i,
	beq	.L564	@,
.L559:
	ldr	r1, [r3, #1044]	@ MEM[base: _26, offset: 1044B], MEM[base: _26, offset: 1044B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1044B],
	bne	.L558	@,
	ldr	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[base: _26, offset: 1040B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1040B],
	bne	.L558	@,
	mov	r3, #1072	@ tmp128,
	movw	ip, #1076	@ tmp168,
	mul	r2, r3, r2	@ tmp127, tmp128, i
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	lr, #1064	@ tmp138,
	add	r3, r0, r2	@ tmp132, D.38908, tmp127
	add	r2, r2, #8	@ tmp129, tmp127,
	mov	r4, #0	@ tmp140,
	mov	r5, #0	@,
	str	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].dnr_used_flag
	add	r0, r0, r2	@ pstUsrDat, D.38908, tmp129
	str	r1, [r3, #1056]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].data_size
	str	r1, [r3, #1052]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_img_cnt
	str	r1, [r3, #1048]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_cnt
	strb	r1, [r3, #1072]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1072B]
	strb	r1, [r3, #1073]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1073B]
	strb	r1, [r3, #1074]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1074B]
	strd	r4, [r3, lr]	@ tmp140, tmp132, tmp138
	strh	r1, [r3, ip]	@ movhi	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1076B]
	ldmfd	sp!, {r4, r5, pc}	@
.L564:
	mov	r0, #0	@ pstUsrDat,
	bx	lr	@
.L566:
	.align	2
.L565:
	.word	.LANCHOR0
	.fnend
	.size	GetUsd, .-GetUsd
	.align	2
	.global	FreeUsdByDec
	.type	FreeUsdByDec, %function
FreeUsdByDec:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pUsrdat
	movne	r3, #0	@ tmp112,
	strne	r3, [r1, #1036]	@ tmp112, pUsrdat_2(D)->from
	bx	lr	@
	.fnend
	.size	FreeUsdByDec, .-FreeUsdByDec
	.align	2
	.global	MarkUsdByDnr
	.type	MarkUsdByDnr, %function
MarkUsdByDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pUsrdat
	movne	r3, #1	@ tmp112,
	strne	r3, [r1, #1032]	@ tmp112, pUsrdat_2(D)->dnr_used_flag
	bx	lr	@
	.fnend
	.size	MarkUsdByDnr, .-MarkUsdByDnr
	.align	2
	.global	UnMarkUsdByDnr
	.type	UnMarkUsdByDnr, %function
UnMarkUsdByDnr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ pUsrdat
	movne	r3, #0	@ tmp112,
	strne	r3, [r1, #1032]	@ tmp112, pUsrdat_2(D)->dnr_used_flag
	bx	lr	@
	.fnend
	.size	UnMarkUsdByDnr, .-UnMarkUsdByDnr
	.align	2
	.global	IsImageInVoQueue
	.type	IsImageInVoQueue, %function
IsImageInVoQueue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ p_image
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L594	@,
	ldrh	r3, [r0, #4]	@ pstVoQue_7(D)->history, pstVoQue_7(D)->history
	ldrh	lr, [r0, #8]	@ D.38924, pstVoQue_7(D)->tail
	and	r3, r3, #63	@ i, pstVoQue_7(D)->history,
	cmp	lr, r3	@ D.38924, i
	beq	.L587	@,
.L586:
	add	r2, r0, r3, lsl #2	@ tmp127, pstVoQue, i,
	add	r3, r3, #1	@ i, i,
	and	r3, r3, #63	@ i, i,
	ldr	r2, [r2, #12]	@ D.38922, pstVoQue_7(D)->image_ptr
	cmp	r2, #0	@ D.38922,
	beq	.L585	@,
	ldr	ip, [r2, #176]	@ _13->image_id, _13->image_id
	ldr	r2, [r1, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	cmp	ip, r2	@ _13->image_id, p_image_4(D)->image_id
	beq	.L588	@,
.L585:
	cmp	r3, lr	@ i, D.38924
	bne	.L586	@,
.L587:
	mvn	r0, #0	@ D.38920,
	ldmfd	sp!, {r4, pc}	@
.L588:
	mov	r0, #0	@ D.38920,
	ldmfd	sp!, {r4, pc}	@
.L594:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.38920,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	IsImageInVoQueue, .-IsImageInVoQueue
	.align	2
	.global	SetAspectRatio
	.type	SetAspectRatio, %function
SetAspectRatio:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #5	@ Code,
	ldrls	pc, [pc, r1, asl #2]	@ Code
	b	.L596	@
.L598:
	.word	.L597
	.word	.L599
	.word	.L600
	.word	.L601
	.word	.L602
	.word	.L603
.L603:
	mov	r2, #0	@ tmp122,
	mov	r3, #2	@ tmp123,
	str	r2, [r0, #60]	@ tmp122, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp123, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L597:
	mov	r2, #0	@ tmp112,
	mov	r3, #1	@ tmp113,
	str	r2, [r0, #60]	@ tmp112, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp113, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L599:
	mov	r2, #4	@ tmp114,
	mov	r3, #3	@ tmp115,
	str	r2, [r0, #60]	@ tmp114, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp115, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L600:
	mov	r2, #16	@ tmp116,
	mov	r3, #9	@ tmp117,
	str	r2, [r0, #60]	@ tmp116, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp117, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L601:
	mov	r2, #221	@ tmp118,
	mov	r3, #100	@ tmp119,
	str	r2, [r0, #60]	@ tmp118, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp119, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L602:
	mov	r2, #235	@ tmp120,
	mov	r3, #100	@ tmp121,
	str	r2, [r0, #60]	@ tmp120, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp121, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L596:
	mov	r2, #0	@ tmp124,
	mov	r3, #1	@ tmp125,
	str	r2, [r0, #60]	@ tmp124, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp125, pImg_4(D)->u32AspectHeight
	b	vfmw_dprint_nothing	@
	.fnend
	.size	SetAspectRatio, .-SetAspectRatio
	.align	2
	.global	GetVoLastImageID
	.type	GetVoLastImageID, %function
GetVoLastImageID:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #296]	@ D.38929, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_2(D) + 272B].LastImageIdPlus2
	cmp	r0, #1	@ D.38929,
	mvnls	r0, #0	@,
	bx	lr	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.global	pstVdecUsdPool
	.global	g_SpinLockIrq_Destroy
	.global	g_SpinLock
	.global	g_DnrEnable
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_SpinLock, %object
	.size	g_SpinLock, 8
g_SpinLock:
	.space	8
	.type	last_rec_pos_time.36919, %object
	.size	last_rec_pos_time.36919, 16
last_rec_pos_time.36919:
	.space	16
	.type	pstVdecUsdPool, %object
	.size	pstVdecUsdPool, 16
pstVdecUsdPool:
	.space	16
	.type	g_SpinLockIrq_Destroy, %object
	.size	g_SpinLockIrq_Destroy, 8
g_SpinLockIrq_Destroy:
	.space	8
	.type	g_DnrEnable, %object
	.size	g_DnrEnable, 4
g_DnrEnable:
	.space	4
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
