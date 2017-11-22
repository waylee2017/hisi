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
@ -D VFMW_AVS_SUPPORT -D VFMW_VC1_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_REAL8_SUPPORT -D VFMW_REAL9_SUPPORT -D VFMW_VP6_SUPPORT
@ -D VFMW_VP8_SUPPORT -D VFMW_DIVX3_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_H263_SUPPORT -D VFMW_JPEG_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=4 -D CFG_MAX_CHAN_NUM=4
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv310
@ -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052 -D HI_LOG_SUPPORT=1
@ -D HI_LOG_LEVEL=4 -D HI_PROC_SUPPORT=1 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT -D MODULE
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(syntax)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/.syntax.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/syntax/syntax.o
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
	add	r2, r2, #100	@ D.34173, pstVoQue_3(D)->ResetMagicWord,
	strh	r3, [r4]	@ movhi	@ tmp115, pstVoQue_3(D)->max_queue_size
	str	r2, [r4, #344]	@ D.34173, pstVoQue_3(D)->ResetMagicWord
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
	ldr	ip, [r1, #16]	@ D.34179, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	ip, #0	@ D.34179,
	bxeq	lr	@
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	bx	ip	@ D.34179
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
	sub	r2, r2, #8	@ D.34185, eVidStd,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldrd	r4, [r3, #56]	@ D.34184, tmp125,
	subs	r6, r0, r4	@ D.34184, D.34184, D.34184
	and	r4, r4, r5	@ tmp130, D.34184, D.34184
	sbc	r7, r1, r5	@ D.34184, D.34184, D.34184
	cmp	r7, #0	@ D.34184,
	cmpeq	r6, #5	@ D.34184,
	movls	r3, #1	@ tmp128,
	movhi	r3, #0	@ tmp128,
	adds	r4, r4, #1	@ tmp132, tmp130,
	movne	r4, #1	@ tmp132,
	tst	r3, r4	@ tmp128, tmp132
	beq	.L46	@,
	cmp	r2, #1	@ D.34185,
	mvnhi	r0, #0	@ InferedPTS,
	mvnhi	r1, #0	@ InferedPTS,
	bls	.L36	@,
.L34:
	ldmfd	sp!, {r4, r5, r6, r7}	@
	bx	lr	@
.L46:
	cmp	r2, #1	@ D.34185,
	bhi	.L34	@,
	ldr	r3, [ip, #140]	@ p_image_6(D)->format, p_image_6(D)->format
	and	r3, r3, #3	@ D.34185, p_image_6(D)->format,
	cmp	r3, #2	@ D.34185,
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
	stmfd	sp!, {r4, r6, r7, r8, r9, lr}	@,
	.save {r4, r6, r7, r8, r9, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	ldrd	r6, [r1, #8]	@ p_image_4(D)->PTS, p_image,
	mov	r4, r1	@ p_image, p_image
	strd	r6, [r1]	@ p_image_4(D)->PTS, p_image_4(D)->SrcPts
	bl	ProduceTimeStamp	@
	ldrd	r8, [r4, #16]	@ p_image_4(D)->Usertag, p_image,
	ldrd	r2, [r4]	@ p_image_4(D)->SrcPts, p_image_4(D)->SrcPts
	mov	r6, r0	@ D.34188,
	mov	r7, r1	@ D.34188,
	mov	r0, #29	@,
	strd	r6, [r4, #8]	@ D.34188, p_image,
	ldr	r1, .L49	@,
	strd	r6, [sp]	@ D.34188,
	strd	r8, [sp, #8]	@ p_image_4(D)->Usertag,,
	bl	dprint_vfmw	@
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r6, r7, r8, r9, pc}	@
.L50:
	.align	2
.L49:
	.word	.LC0
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
	beq	.L52	@,
	ldr	r3, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	cmp	r3, #0	@ p_image_10(D)->disp_height,
	bne	.L78	@,
.L52:
	ldr	r2, [r4, #144]	@ D.34192, p_image_10(D)->image_width
	ldr	r3, [r4, #148]	@ D.34192, p_image_10(D)->image_height
	mov	r1, r2, lsr #1	@ D.34192, D.34192,
	str	r2, [r4, #152]	@ D.34192, p_image_10(D)->disp_width
	str	r3, [r4, #156]	@ D.34192, p_image_10(D)->disp_height
	mov	r3, r3, lsr #1	@ D.34192, D.34192,
	str	r1, [r4, #160]	@ D.34192, p_image_10(D)->disp_center_x
	str	r3, [r4, #164]	@ D.34192, p_image_10(D)->disp_center_y
.L53:
	str	r2, [r5, #300]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageWidth
	ldr	r3, [r4, #148]	@ D.34192, p_image_10(D)->image_height
	ldr	r2, [r5, #280]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	str	r3, [r5, #304]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageHeight
	ldr	r3, [r4, #140]	@ p_image_10(D)->format, p_image_10(D)->format
	ubfx	r3, r3, #5, #3	@ D.34192, p_image_10(D)->format,,
	str	r3, [r5, #308]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].VideoFormat
	ldr	r3, [r4, #140]	@ D.34192, p_image_10(D)->format
	str	r3, [r5, #312]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageFormat
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.34192, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r3, [r4, #184]	@ D.34192, p_image_10(D)->seq_cnt
	ldr	r6, [r4, #140]	@ D.34192, p_image_10(D)->format
	cmp	r3, r2	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	ldr	r8, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	ldrh	r2, [r4, #164]	@ D.34192, p_image_10(D)->disp_center_y
	ubfx	r10, r6, #14, #3	@ AspectRatio, D.34192,,
	ldr	r9, [r4, #160]	@ p_image_10(D)->disp_center_x, p_image_10(D)->disp_center_x
	ubfx	r6, r6, #8, #2	@ ScanType, D.34192,,
	ldrh	r1, [r4, #152]	@ D.34192, p_image_10(D)->disp_width
	strne	r3, [r5, #320]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqCnt
	ldr	r3, [r5, #316]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	orr	r9, r2, r9, asl #16	@ dcenter, D.34192, p_image_10(D)->disp_center_x,
	orr	r8, r1, r8, asl #16	@ dsize, D.34192, p_image_10(D)->disp_height,
	add	r2, r3, #1	@ D.34192, D.34192,
	str	r2, [r5, #316]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	str	r3, [r4, #188]	@ D.34192, p_image_10(D)->seq_img_cnt
	ldr	r3, [r5, #272]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
	cmp	r3, r10	@ D.34192, AspectRatio
	beq	.L55	@,
	ldr	r2, .L80	@ tmp206,
	ldr	ip, [r2]	@ D.34194, g_event_report
	cmp	ip, #0	@ D.34194,
	beq	.L56	@,
	strb	r3, [sp]	@ D.34192, para
	mov	r2, sp	@,
	strb	r10, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r0, r7	@, ChanID
	blx	ip	@ D.34194
.L56:
	str	r10, [r5, #272]	@ AspectRatio, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
.L55:
	ldr	r3, [r5, #276]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
	cmp	r3, r6	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, ScanType
	beq	.L57	@,
	ldr	r3, .L80	@ tmp211,
	ldr	r3, [r3]	@ D.34194, g_event_report
	cmp	r3, #0	@ D.34194,
	beq	.L58	@,
	add	r2, sp, #8	@ tmp213,,
	mov	r1, #4	@,
	mov	r0, r7	@, ChanID
	strb	r6, [r2, #-8]!	@ ScanType, para
	blx	r3	@ D.34194
.L58:
	str	r6, [r5, #276]	@ ScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
.L57:
	ldr	r3, [r5, #288]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	cmp	r3, r8	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, dsize
	beq	.L79	@,
.L59:
	ldr	r3, .L80	@ tmp216,
	str	r8, [r5, #288]	@ dsize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	str	r9, [r5, #292]	@ dcenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	ldr	r3, [r3]	@ D.34194, g_event_report
	cmp	r3, #0	@ D.34194,
	beq	.L60	@,
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
	blx	r3	@ D.34194
.L60:
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.34192, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.34192, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.34192, p_image_10(D)->luma_phy_addr
	ldr	r1, [r4, #108]	@ D.34192, p_image_10(D)->chrom_phy_addr
	ldr	r3, [r4, #172]	@ D.34192, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.34192, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.34192, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.34192, D.34192, D.34192
	add	r3, r1, r3	@ D.34192, D.34192, D.34192
	str	r2, [r4, #96]	@ D.34192, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.34192, p_image_10(D)->btm_chrom_phy_addr
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L78:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r2, [r4, #144]	@ D.34192, p_image_10(D)->image_width
	beq	.L53	@,
	b	.L52	@
.L79:
	ldr	r3, [r5, #292]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	cmp	r3, r9	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, dcenter
	bne	.L59	@,
	b	.L60	@
.L81:
	.align	2
.L80:
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
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r10, [sp, #48]	@ p_image, p_image
	cmp	r10, #0	@ p_image,
	beq	.L119	@,
	mov	r9, r0	@ ChanID, ChanID
	mov	r7, r1	@ eVidStd, eVidStd
	mov	r0, #2	@,
	ldr	r1, .L122	@,
	mov	r5, r3	@ pstVoQue, pstVoQue
	mov	r8, r2	@ pCtx, pCtx
	bl	dprint_vfmw	@
	ldr	r0, .L122+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r4, [r5, #4]	@ pstVoQue_16(D)->history, pstVoQue_16(D)->history
	ldrh	r3, [r5, #8]	@ D.34204, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, pstVoQue_16(D)->history,
	cmp	r3, r4	@ D.34204, i
	movne	r6, #1000	@ tmp291,
	bne	.L90	@,
	b	.L89	@
.L88:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #8]	@ D.34204, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.34204, i
	beq	.L89	@,
.L90:
	add	ip, r5, r4, lsl #2	@ tmp178, pstVoQue, i,
	ldr	r3, [r10, #176]	@ p_image_11(D)->image_id, p_image_11(D)->image_id
	ldr	r2, [ip, #12]	@ tmp177, pstVoQue_16(D)->image_ptr
	ldr	r2, [r2, #176]	@ D.34206, _22->image_id
	cmp	r2, r3	@ D.34206, p_image_11(D)->image_id
	bne	.L88	@,
	ldr	r1, .L122+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	str	r6, [r10, #180]	@ tmp291, p_image_11(D)->error_level
	b	.L88	@
.L89:
	ldr	r2, [r10, #180]	@ D.34206, p_image_11(D)->error_level
	cmp	r2, #100	@ D.34206,
	bhi	.L86	@,
	ldr	r3, [r10, #144]	@ D.34210, p_image_11(D)->image_width
	cmp	r3, #31	@ D.34210,
	bhi	.L120	@,
.L86:
	ldr	r3, [r10, #144]	@ D.34210, p_image_11(D)->image_width
	ldr	r1, [r10, #148]	@ D.34210, p_image_11(D)->image_height
.L91:
	str	r1, [sp]	@ D.34210,
	mov	r0, #0	@,
	ldr	r1, .L122+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r10, #180]	@ p_image_11(D)->error_level, p_image_11(D)->error_level
	cmp	r3, #1000	@ p_image_11(D)->error_level,
	beq	.L93	@,
	mov	r2, r10	@, p_image
	mov	r1, r8	@, pCtx
	mov	r0, r7	@, eVidStd
	bl	ReturnImageToSyntax	@
.L93:
	ldr	r0, .L122+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.34202,
.L84:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L120:
	ldr	r1, [r10, #148]	@ D.34210, p_image_11(D)->image_height
	cmp	r1, #31	@ D.34210,
	bls	.L91	@,
	mov	r2, r7	@, eVidStd
	mov	r1, r10	@, p_image
	mov	r0, r5	@, pstVoQue
	mov	r8, r9, asl #3	@ tmp285, ChanID,
	bl	InsertImgToVoQueue_PtsProcess	@
	mov	r3, r10	@, p_image
	mov	r2, r5	@, pstVoQue
	mov	r1, r7	@, eVidStd
	mov	r0, r9	@, ChanID
	mov	r4, r9, asl #5	@ tmp286, ChanID,
	bl	InsertImgToVoQueue_FillImageInfo	@
	ldr	lr, [r10, #176]	@ p_image_11(D)->image_id, p_image_11(D)->image_id
	ldrh	ip, [r5, #8]	@ pstVoQue_16(D)->tail, pstVoQue_16(D)->tail
	mov	r0, #12	@,
	ldrh	r3, [r5, #6]	@ D.34204, pstVoQue_16(D)->head
	ldrh	r2, [r5, #4]	@ D.34204, pstVoQue_16(D)->history
	ldr	r1, .L122+16	@,
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #8]	@ D.34203, pstVoQue_16(D)->tail
	ldr	r6, .L122+20	@ tmp287,
	rsb	r2, r8, r4	@ tmp202, tmp285, tmp286
	add	r1, r3, #1	@ tmp195, D.34203,
	ldr	r0, .L122+4	@,
	add	r3, r5, r3, lsl #2	@ tmp193, pstVoQue, D.34203,
	and	r1, r1, #63	@ tmp197, tmp195,
	add	r2, r6, r2	@ tmp203, tmp287, tmp202
	str	r10, [r3, #12]	@ p_image, pstVoQue_16(D)->image_ptr
	strh	r1, [r5, #8]	@ movhi	@ tmp197, pstVoQue_16(D)->tail
	ldr	r3, [r10, #128]	@ p_image_11(D)->is_fld_save, p_image_11(D)->is_fld_save
	str	r3, [r2, #20]	@ p_image_11(D)->is_fld_save, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r10, #300]	@ D.34201, p_image_11(D)->ImageDnr.video_standard
	sub	r2, r3, #10	@ D.34206, D.34201,
	cmp	r2, #2	@ D.34206,
	bhi	.L94	@,
	ldr	r2, .L122+24	@ tmp208,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L94	@,
.L95:
	ldr	r3, .L122+28	@ tmp220,
	ldr	r3, [r3]	@ D.34208, g_event_report
	cmp	r3, #0	@ D.34208,
	beq	.L96	@,
	add	r2, sp, #16	@ tmp221,,
	mov	r1, #5	@,
	mov	r0, r9	@, ChanID
	str	r10, [r2, #-4]!	@ p_image, para
	blx	r3	@ D.34208
.L96:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L121	@,
.L98:
	rsb	r7, r8, r4	@ tmp236, tmp285, tmp286
	add	r5, r6, r7	@ tmp237, tmp287, tmp236
	ldr	r3, [r5, #4]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	add	r3, r3, #1	@ D.34206, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum,
	str	r3, [r5, #4]	@ D.34206, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, r7]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	rsb	r1, r1, r0	@ Period, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, CurTime
	mov	r9, r0	@ CurTime,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.34202,
	bcc	.L84	@,
	ldr	r3, [r5, #4]	@ D.34206, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	cmp	r3, #0	@ D.34206,
	beq	.L100	@,
	movw	r0, #10000	@ tmp267,
	mul	r0, r0, r3	@, tmp267, D.34206
	bl	__aeabi_uidiv	@
	str	r0, [r5, #8]	@, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrFrameRate
.L100:
	rsb	r4, r8, r4	@ tmp275, tmp285, tmp286
	mov	r2, #0	@ tmp283,
	add	r3, r6, r4	@ tmp276, tmp287, tmp275
	mov	r0, #1	@ D.34202,
	str	r9, [r6, r4]	@ CurTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	str	r2, [r3, #4]	@ tmp283, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	b	.L84	@
.L94:
	sub	r2, r3, #14	@ D.34201, D.34201,
	bics	r2, r2, #4	@ tmp294, D.34201,
	moveq	r2, #1	@ tmp214,
	movne	r2, #0	@ tmp214,
	cmp	r3, #4	@ D.34201,
	movne	r3, r2	@, tmp219, tmp214
	orreq	r3, r2, #1	@,, tmp219, tmp214
	cmp	r3, #0	@ tmp219,
	beq	.L96	@,
	b	.L95	@
.L121:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L122+4	@ tmp222,
	ldr	r2, .L122+32	@ tmp227,
	add	r9, r3, r9, lsl #2	@ tmp223, tmp222, ChanID,
	ldr	r3, [r9, #8]	@ tmp226, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.34206, tmp226, CurTime
	cmp	r3, r2	@ D.34206, g_TraceFramePeriod
	strhi	r0, [r9, #8]	@ CurTime, last_rec_pos_time
	b	.L98	@
.L119:
	mov	r0, r10	@, p_image
	ldr	r1, .L122+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.34202,
	b	.L84	@
.L123:
	.align	2
.L122:
	.word	.LC2
	.word	.LANCHOR0
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	g_VfmwChanStat
	.word	g_VdmCharacter
	.word	g_event_report
	.word	g_TraceFramePeriod
	.word	.LC1
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
	ldrh	r3, [r0, #6]	@ D.34218, pstVoQue_4(D)->head
	ldrh	ip, [r0, #4]	@ D.34218, pstVoQue_4(D)->history
	ldrh	r0, [r0, #8]	@ D.34218, pstVoQue_4(D)->tail
	cmp	r3, ip	@ D.34218, D.34218
	addcc	lr, r3, #64	@ D.34219, D.34218,
	rsbcs	ip, ip, r3	@ ReadNum, D.34218, D.34218
	rsbcc	ip, ip, lr	@ ReadNum, D.34218, D.34219
	cmp	r3, r0	@ D.34218, D.34218
	addhi	r0, r0, #64	@ D.34219, D.34218,
	str	ip, [r1]	@ ReadNum, *pReadImgNum_22(D)
	rsb	r3, r3, r0	@ NewNum, D.34218, D.34219
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
	b	.L147	@
.L134:
	.word	.L148
	.word	.L135
	.word	.L136
	.word	.L137
	.word	.L138
	.word	.L139
	.word	.L140
	.word	.L147
	.word	.L141
	.word	.L142
	.word	.L143
	.word	.L143
	.word	.L143
	.word	.L144
	.word	.L138
	.word	.L147
	.word	.L147
	.word	.L147
	.word	.L148
.L143:
	ldr	r3, .L150	@ tmp125,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L149	@,
.L138:
	add	r0, r0, #20480	@ pstVoQue, pSynCtx,
.L148:
	add	r0, r0, #16	@ pstVoQue, pstVoQue,
	bx	lr	@
.L139:
	add	r0, r0, #26624	@ pstVoQue, pSynCtx,
	add	r0, r0, #24	@ pstVoQue, pstVoQue,
	bx	lr	@
.L140:
	add	r0, r0, #16064	@ pstVoQue, pSynCtx,
	add	r0, r0, #32	@ pstVoQue, pstVoQue,
	bx	lr	@
.L141:
	add	r0, r0, #38912	@ pstVoQue, pSynCtx,
	add	r0, r0, #64	@ pstVoQue, pstVoQue,
	bx	lr	@
.L142:
	add	r0, r0, #38912	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L135:
	add	r0, r0, #112640	@ pstVoQue, pSynCtx,
	add	r0, r0, #736	@ pstVoQue, pstVoQue,
	bx	lr	@
.L136:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r0, r0, #88	@ pstVoQue, pstVoQue,
	bx	lr	@
.L137:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
	bx	lr	@
.L144:
	add	r0, r0, #8128	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L147:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L149:
	add	r0, r0, #12608	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L151:
	.align	2
.L150:
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
	beq	.L156	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ p_image, p_image
	bl	SYNTAX_GetVoQue	@
	subs	r4, r0, #0	@ pstVoQue,
	beq	.L160	@,
	ldr	r0, .L161	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ D.34236, pstVoQue_11->head
	ldrh	r2, [r4, #8]	@ pstVoQue_11->tail, pstVoQue_11->tail
	cmp	r2, r3	@ pstVoQue_11->tail, D.34236
	mvneq	r6, #2	@ ret,
	beq	.L155	@,
	add	r3, r4, r3, lsl #2	@ tmp149, pstVoQue, D.34236,
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [r3, #12]	@, pstVoQue_11->image_ptr
	bl	memcpy	@
	ldr	r1, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldrh	r3, [r4, #6]	@ D.34237, pstVoQue_11->head
	mov	r0, #12	@,
	ldrh	r2, [r4, #4]	@ D.34237, pstVoQue_11->history
	str	r1, [sp, #4]	@ p_image_5(D)->image_id,
	ldrh	ip, [r4, #8]	@ pstVoQue_11->tail, pstVoQue_11->tail
	ldr	r1, .L161+4	@,
	str	ip, [sp]	@ pstVoQue_11->tail,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldr	r2, [r4, #344]	@ pstVoQue_11->ResetMagicWord, pstVoQue_11->ResetMagicWord
	add	r3, r3, r2	@ D.34239, p_image_5(D)->image_id, pstVoQue_11->ResetMagicWord
	str	r3, [r5, #176]	@ D.34239, p_image_5(D)->image_id
	ldr	r3, [r4, #344]	@ D.34239, pstVoQue_11->ResetMagicWord
	str	r3, [r5, #380]	@ D.34239, p_image_5(D)->resetNum
	ldrh	r3, [r4, #6]	@ pstVoQue_11->head, pstVoQue_11->head
	add	r3, r3, r6	@ tmp166, pstVoQue_11->head,
	and	r3, r3, #63	@ tmp168, tmp166,
	strh	r3, [r4, #6]	@ movhi	@ tmp168, pstVoQue_11->head
.L155:
	ldr	r0, .L161	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.34234, ret
.L153:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L156:
	mvn	r0, #1	@ D.34234,
	bx	lr	@
.L160:
	ldr	r2, .L161+8	@,
	mov	r0, #1	@,
	ldr	r1, .L161+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.34234,
	b	.L153	@
.L162:
	.align	2
.L161:
	.word	.LANCHOR0
	.word	.LC7
	.word	.LANCHOR1
	.word	.LC6
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
	b	.L164	@
.L166:
	.word	.L167
	.word	.L164
	.word	.L164
	.word	.L164
	.word	.L167
	.word	.L164
	.word	.L164
	.word	.L164
	.word	.L164
	.word	.L164
	.word	.L168
	.word	.L168
	.word	.L168
	.word	.L164
	.word	.L167
.L168:
	ldr	r3, .L177	@ tmp118,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L170	@,
.L167:
	cmp	r1, #0	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L164:
	cmn	r1, #2	@ RetValue,
	beq	.L176	@,
.L170:
	cmp	r1, #1	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L176:
	mov	r0, r1	@ ret, RetValue
	bx	lr	@
.L178:
	.align	2
.L177:
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
	b	.L195	@
.L182:
	.word	.L181
	.word	.L183
	.word	.L184
	.word	.L185
	.word	.L186
	.word	.L187
	.word	.L188
	.word	.L195
	.word	.L189
	.word	.L190
	.word	.L191
	.word	.L191
	.word	.L191
	.word	.L192
	.word	.L186
	.word	.L195
	.word	.L195
	.word	.L195
	.word	.L193
.L191:
	ldr	r3, .L202	@ tmp165,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L201	@,
.L186:
	ldr	r3, .L202+4	@ tmp173,
	ldr	r3, [r3, #16]	@ D.34274, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ D.34274,
	mvneq	r1, #0	@ ret,
	beq	.L180	@,
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r4, #8	@, pSynCtx,
	blx	r3	@ D.34274
	mov	r1, r0	@ ret,
.L180:
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L187:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	DIVX3DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L188:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L189:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	REAL8DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L190:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	REAL9DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L192:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VP8DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L193:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L181:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	H264DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L183:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VC1DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L184:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L185:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L195:
	mvn	r1, #1	@ ret,
	b	.L180	@
.L201:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VP6DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L180	@
.L203:
	.align	2
.L202:
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
	beq	.L216	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r7, r0	@ pSynCtx, pSynCtx
	mov	r8, r1	@ p_image, p_image
	bl	SYNTAX_GetVoQue	@
	subs	r5, r0, #0	@ pstVoQue,
	beq	.L222	@,
	ldr	r0, .L223	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	ldr	r2, [r5, #344]	@ pstVoQue_20->ResetMagicWord, pstVoQue_20->ResetMagicWord
	rsb	r3, r2, r3	@ D.34282, pstVoQue_20->ResetMagicWord, p_image_14(D)->image_id
	str	r3, [r8, #176]	@ D.34282, p_image_14(D)->image_id
	ldrh	r4, [r5, #4]	@ pstVoQue_20->history, pstVoQue_20->history
	ldrh	r3, [r5, #6]	@ D.34284, pstVoQue_20->head
	and	r4, r4, #63	@ i, pstVoQue_20->history,
	cmp	r3, r4	@ D.34284, i
	bne	.L215	@,
	b	.L214	@
.L211:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #6]	@ D.34284, pstVoQue_20->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.34284, i
	beq	.L214	@,
.L215:
	add	r6, r4, #2	@ tmp189, i,
	add	r3, r5, r6, lsl #2	@ tmp166, pstVoQue, tmp189,
	ldr	r3, [r3, #4]	@ D.34285, pstVoQue_20->image_ptr
	cmp	r3, #0	@ D.34285,
	beq	.L209	@,
	ldr	lr, [r3, #176]	@ _32->image_id, _32->image_id
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	rsb	lr, lr, r3	@ SameImageFlag, _32->image_id, p_image_14(D)->image_id
	clz	lr, lr	@ SameImageFlag, SameImageFlag
	mov	lr, lr, lsr #5	@ SameImageFlag, SameImageFlag,
	cmp	lr, #0	@ SameImageFlag,
	beq	.L211	@,
.L210:
	ldrh	r0, [r5, #4]	@ D.34286, pstVoQue_20->history
	b	.L213	@
.L218:
	mov	r4, r2	@ i, i
.L213:
	cmp	r4, #0	@ i,
	mov	r2, #63	@ i,
	subne	r2, r4, #1	@ i, i,
	add	ip, r5, r6, lsl #2	@ tmp177, pstVoQue, tmp189,
	add	r3, r2, #2	@ tmp173, i,
	cmp	r4, r0	@ i, D.34286
	add	r1, r5, r3, lsl #2	@ tmp174, pstVoQue, tmp173,
	mov	r6, r3	@ tmp189, tmp173
	ldr	r3, [r1, #4]	@ D.34285, pstVoQue_20->image_ptr
	str	r3, [ip, #4]	@ D.34285, pstVoQue_20->image_ptr
	bne	.L218	@,
	cmp	lr, #1	@ SameImageFlag,
	add	r2, r4, #1	@ tmp179, i,
	and	r2, r2, #63	@ D.34283, tmp179,
	strh	r2, [r5, #4]	@ movhi	@ D.34283, pstVoQue_20->history
	bne	.L211	@,
	ldr	ip, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	mov	r0, #12	@,
	ldrh	r3, [r5, #6]	@ D.34284, pstVoQue_20->head
	ldr	r1, .L223+4	@,
	str	ip, [sp, #4]	@ p_image_14(D)->image_id,
	ldrh	ip, [r5, #8]	@ pstVoQue_20->tail, pstVoQue_20->tail
	str	ip, [sp]	@ pstVoQue_20->tail,
	bl	dprint_vfmw	@
	mov	r1, r8	@, p_image
	mov	r0, r7	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
	b	.L208	@
.L209:
	mov	r2, r4	@, i
	ldr	r1, .L223+8	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	lr, #2	@ SameImageFlag,
	b	.L210	@
.L214:
	mvn	r4, #1	@ ret,
.L208:
	ldr	r0, .L223	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.34280, ret
.L205:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L216:
	mvn	r0, #1	@ D.34280,
	bx	lr	@
.L222:
	ldr	r2, .L223+12	@,
	mov	r0, #1	@,
	ldr	r1, .L223+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.34280,
	b	.L205	@
.L224:
	.align	2
.L223:
	.word	.LANCHOR0
	.word	.LC9
	.word	.LC8
	.word	.LANCHOR1+20
	.word	.LC6
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
	b	.L242	@
.L228:
	.word	.L239
	.word	.L229
	.word	.L230
	.word	.L231
	.word	.L232
	.word	.L233
	.word	.L234
	.word	.L242
	.word	.L235
	.word	.L236
	.word	.L237
	.word	.L237
	.word	.L237
	.word	.L238
	.word	.L232
	.word	.L242
	.word	.L242
	.word	.L242
	.word	.L239
.L239:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L240:
	ldr	r0, .L244	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ pstVoQue_1->head, pstVoQue_1->head
	ldr	r0, .L244	@,
	sub	r3, r3, #1	@ tmp138, pstVoQue_1->head,
	and	r3, r3, #63	@ tmp140, tmp138,
	strh	r3, [r4, #6]	@ movhi	@ tmp140, pstVoQue_1->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.34293,
	ldmfd	sp!, {r4, pc}	@
.L237:
	ldr	r3, .L244+4	@ tmp129,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	addne	r4, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r4, r4, #48	@ pstVoQue, pstVoQue,
	bne	.L240	@,
.L232:
	add	r4, r0, #20480	@ pstVoQue, pSynCtx,
	add	r4, r4, #16	@ pstVoQue, pstVoQue,
	b	.L240	@
.L233:
	add	r4, r0, #26624	@ pstVoQue, pSynCtx,
	add	r4, r4, #24	@ pstVoQue, pstVoQue,
	b	.L240	@
.L234:
	add	r4, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r4, #32	@ pstVoQue, pstVoQue,
	b	.L240	@
.L238:
	add	r4, r0, #8128	@ pstVoQue, pSynCtx,
	add	r4, r4, #48	@ pstVoQue, pstVoQue,
	b	.L240	@
.L231:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L240	@
.L235:
	add	r4, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, r4, #64	@ pstVoQue, pstVoQue,
	b	.L240	@
.L236:
	add	r4, r0, #38912	@ pstVoQue, pSynCtx,
	add	r4, r4, #48	@ pstVoQue, pstVoQue,
	b	.L240	@
.L229:
	add	r4, r0, #112640	@ pstVoQue, pSynCtx,
	add	r4, r4, #736	@ pstVoQue, pstVoQue,
	b	.L240	@
.L230:
	add	r4, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r4, #88	@ pstVoQue, pstVoQue,
	b	.L240	@
.L242:
	mvn	r0, #1	@ D.34293,
	ldmfd	sp!, {r4, pc}	@
.L245:
	.align	2
.L244:
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
	beq	.L249	@,
.L246:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L249:
	add	r6, r5, #12288	@ tmp141, pstCtx,
	ldrb	r0, [r6, #1268]	@ zero_extendqisi2	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag,
	bne	.L246	@,
	add	r5, r5, #49152	@ tmp145, pstCtx,
	ldr	r1, .L250	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #3688]	@, MEM[(struct H264_CTX_S *)pstCtx_19(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r6, #1268]	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	b	.L246	@
.L251:
	.align	2
.L250:
	.word	.LC10
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
	beq	.L261	@,
	add	r6, r0, #88	@ D.34321, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.34321
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.34321
	mov	r0, r5	@, pstCtx
	bl	REAL8DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam
	cmp	r7, #0	@ MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #36864	@ tmp141, pstCtx,
	mov	r0, r6	@, D.34321
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L262	@ tmp143,
	ldr	r3, [r3]	@ D.34324, g_event_report
	cmp	r3, #0	@ D.34324,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].pRv8DecParam
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.34324
.L261:
	add	r5, r1, #36864	@ tmp126, pstCtx,
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #2456]	@, MEM[(struct RV8_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L263:
	.align	2
.L262:
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
	beq	.L273	@,
	add	r6, r0, #88	@ D.34337, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.34337
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.34337
	mov	r0, r5	@, pstCtx
	bl	REAL9DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam
	cmp	r7, #0	@ MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #36864	@ tmp141, pstCtx,
	mov	r0, r6	@, D.34337
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L274	@ tmp143,
	ldr	r3, [r3]	@ D.34340, g_event_report
	cmp	r3, #0	@ D.34340,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].pRv9DecParam
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.34340
.L273:
	add	r5, r1, #36864	@ tmp126, pstCtx,
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #2440]	@, MEM[(struct RV9_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L275:
	.align	2
.L274:
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
	beq	.L285	@,
	add	r6, r0, #88	@ D.34353, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.34353
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.34353
	mov	r0, r5	@, pstCtx
	bl	DIVX3DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam
	cmp	r7, #0	@ MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #24576	@ tmp141, pstCtx,
	mov	r0, r6	@, D.34353
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L286	@ tmp143,
	ldr	r3, [r3]	@ D.34356, g_event_report
	cmp	r3, #0	@ D.34356,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.34356
.L285:
	add	r5, r1, #24576	@ tmp126, pstCtx,
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L287:
	.align	2
.L286:
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
	beq	.L297	@,
	add	r6, r0, #88	@ D.34369, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.34369
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.34369
	mov	r0, r5	@, pstCtx
	bl	VP8DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam
	cmp	r7, #0	@ MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #8192	@ tmp141, pstCtx,
	mov	r0, r6	@, D.34369
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L298	@ tmp143,
	ldr	r3, [r3]	@ D.34372, g_event_report
	cmp	r3, #0	@ D.34372,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.34372
.L297:
	add	r5, r1, #8192	@ tmp126, pstCtx,
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L299:
	.align	2
.L298:
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
	ldr	r3, .L314	@ tmp135,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	mov	r5, r1	@ pstCtx, pstCtx
	ands	r0, r3, #1	@ D.34385, g_VdmCharacter,
	beq	.L301	@,
	ldrb	r3, [r4, #14]	@ zero_extendqisi2	@ pSegMan_6(D)->CurrSeg.IsStreamEnd, pSegMan_6(D)->CurrSeg.IsStreamEnd
	cmp	r3, #1	@ pSegMan_6(D)->CurrSeg.IsStreamEnd,
	beq	.L313	@,
	add	r6, r4, #88	@ D.34388, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r6	@, D.34388
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.34388
	mov	r0, r5	@, pstCtx
	bl	VP6DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam
	cmp	r7, #0	@ MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #12288	@ tmp155, pstCtx,
	mov	r0, r6	@, D.34388
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L314+4	@ tmp157,
	ldr	r3, [r3]	@ D.34392, g_event_report
	cmp	r3, #0	@ D.34392,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.34392
.L301:
	add	r2, r1, #20480	@ tmp163, pstCtx,
	ldr	r2, [r2]	@ MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].pstExtraData, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].pstExtraData
	ldr	r2, [r2, #388]	@ _10->StdExt.Vp6Ext.bReversed, _10->StdExt.Vp6Ext.bReversed
	cmp	r2, #1	@ _10->StdExt.Vp6Ext.bReversed,
	bls	.L306	@,
	ldr	r1, .L314+8	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L306:
	add	ip, r4, #88	@ D.34388, pSegMan,
	mov	r3, #1	@ tmp166,
	mov	r2, #80	@,
	strb	r3, [r4, #1]	@ tmp166, pSegMan_6(D)->IsCurrSegWaitDec
	mov	r0, ip	@, D.34388
	add	r1, r4, #8	@, pSegMan,
	bl	memcpy	@
	ldr	r3, .L314+12	@ tmp173,
	ldr	r3, [r3, #12]	@ D.34389, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.34389,
	beq	.L308	@,
	mov	r1, r0	@, D.34388
	mov	r0, r5	@, pstCtx
	blx	r3	@ D.34389
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L308:
	ldr	r0, [r5]	@, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp176,
	strb	r3, [r4, #1]	@ tmp176, pSegMan_6(D)->IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L313:
	add	r5, r1, #12288	@ tmp140, pstCtx,
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L315:
	.align	2
.L314:
	.word	g_VdmCharacter
	.word	g_event_report
	.word	.LC11
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
	add	ip, r0, #88	@ D.34405, pSegMan,
	mov	r3, #1	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	strb	r3, [r4, #1]	@ tmp118, pSegMan_4(D)->IsCurrSegWaitDec
	mov	r5, r1	@ pstCtx, pstCtx
	mov	r0, ip	@, D.34405
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
	ldr	r3, .L321	@ tmp125,
	ldr	r3, [r3, #12]	@ D.34406, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.34406,
	beq	.L319	@,
	mov	r1, r0	@, D.34405
	mov	r0, r5	@, pstCtx
	blx	r3	@ D.34406
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L319:
	ldr	r0, [r5]	@, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_11(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_4(D)->CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp128,
	strb	r3, [r4, #1]	@ tmp128, pSegMan_4(D)->IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L322:
	.align	2
.L321:
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
	beq	.L324	@,
	ldr	r3, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	cmp	r3, #0	@ pSegMan_8(D)->CurrSeg.VirAddr,
	beq	.L324	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.34416, pSegMan_8(D)->CurrSeg.IsLastSeg
	mov	r6, r0	@ ChanID, ChanID
	cmp	r5, #1	@ D.34416,
	beq	.L346	@,
	cmp	r5, #0	@ D.34416,
	beq	.L347	@,
.L331:
	mvn	r0, #0	@ D.34413,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L346:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.34416, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r5, #0	@ D.34416,
	beq	.L348	@,
	cmp	r5, #1	@ D.34416,
	bne	.L331	@,
	ldr	r1, .L350	@ tmp178,
	mov	r3, #64512	@ tmp211,
	ldr	r2, [r4, #100]	@ pSegMan_8(D)->Pack.StreamPack[0].LenInByte, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	movt	r3, 15	@ tmp211,
	ldr	r1, [r1, r0, asl #2]	@ tmp179, s_pstVfmwChan
	ldr	r1, [r1, #880]	@ _39->eVidStd, _39->eVidStd
	cmp	r1, #6	@ _39->eVidStd,
	movne	r3, #1024	@ D.34414,
	cmp	r3, r2	@ D.34414, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	bhi	.L349	@,
	ldr	r1, .L350+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #168	@, pSegMan,
	bl	memcpy	@
.L334:
	mov	r0, #0	@ tmp208,
	strb	r0, [r4, #2]	@ tmp208, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L347:
	add	r8, r4, #88	@ D.34417, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, D.34417
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r3, [r4, #2]	@ zero_extendqisi2	@ pSegMan_8(D)->ConvolutionPacketNum, pSegMan_8(D)->ConvolutionPacketNum
	add	r3, r3, #1	@ tmp170, pSegMan_8(D)->ConvolutionPacketNum,
	uxtb	r3, r3	@ D.34416, tmp170
	strb	r3, [r4, #2]	@ D.34416, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r3, #1	@ D.34416,
	bls	.L331	@,
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, pSegMan_8(D)->Pack.StreamPack[1].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, D.34417
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldr	r1, .L350+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L350+12	@ tmp175,
	ldr	r3, [r3]	@ D.34419, g_event_report
	cmp	r3, #0	@ D.34419,
	beq	.L330	@,
	mov	r2, r5	@, D.34416
	mov	r0, r6	@, ChanID
	mov	r1, #113	@,
	blx	r3	@ D.34419
.L330:
	mov	r3, #0	@ tmp176,
	mvn	r0, #0	@ D.34413,
	strb	r3, [r4, #2]	@ tmp176, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L348:
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.34416, pSegMan_8(D)->ConvolutionPacketNum
	mov	r0, r5	@ D.34413, D.34416
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L349:
	ldr	r1, .L350+16	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #100]	@ D.34414, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r0, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	rsb	r0, r2, r0	@,, pSegMan_8(D)->CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r1, [r4, #100]	@ D.34414, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	ip, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ pSegMan_8(D)->CurrSeg.PhyAddr, pSegMan_8(D)->CurrSeg.PhyAddr
	ldr	r3, [r4, #20]	@ pSegMan_8(D)->CurrSeg.LenInByte, pSegMan_8(D)->CurrSeg.LenInByte
	rsb	ip, r1, ip	@ D.34415, D.34414, pSegMan_8(D)->CurrSeg.VirAddr
	rsb	r2, r1, r2	@ D.34414, D.34414, pSegMan_8(D)->CurrSeg.PhyAddr
	strb	r5, [r4, #93]	@ D.34416, pSegMan_8(D)->Pack.StreamPack[0].IsLastSeg
	add	r3, r3, r1	@ D.34414, pSegMan_8(D)->CurrSeg.LenInByte, D.34414
	str	ip, [r4, #88]	@ D.34415, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	str	r3, [r4, #100]	@ D.34414, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	str	r2, [r4, #96]	@ D.34414, pSegMan_8(D)->Pack.StreamPack[0].PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->CurrSeg.StreamID
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	str	r3, [r4, #104]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	bl	__memzero	@
	b	.L334	@
.L324:
	ldr	r1, .L350+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34413,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L351:
	.align	2
.L350:
	.word	s_pstVfmwChan
	.word	.LC15
	.word	.LC13
	.word	g_event_report
	.word	.LC14
	.word	.LC12
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
	add	r6, r1, #110592	@ tmp242, pstCtx,
	mov	r4, r0	@ pSegMan, pSegMan
	ldrb	r2, [r0, #13]	@ zero_extendqisi2	@, pSegMan_7(D)->CurrSeg.IsLastSeg
	mov	r5, r1	@ pstCtx, pstCtx
	mov	r0, #22	@,
	ldr	r1, .L381	@,
	ldr	r8, [r6, #3128]	@ ChanID, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, pSegMan_7(D)->CurrSeg.PhyAddr
	mov	r0, #22	@,
	ldr	r1, .L381+4	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, pSegMan_7(D)->CurrSeg.LenInByte
	ldr	r1, .L381+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5]	@ D.34444, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pstExtraData
	ldr	r3, [r2, #388]	@ D.34442, _15->StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ D.34442,
	bhi	.L375	@,
	ldr	r1, [r2, #392]	@ _15->StdExt.Vc1Ext.CodecVersion, _15->StdExt.Vc1Ext.CodecVersion
	cmp	r1, #8	@ _15->StdExt.Vc1Ext.CodecVersion,
	bgt	.L376	@,
	add	r7, r5, #77824	@ tmp241, pstCtx,
	uxtb	r3, r3	@ D.34446, D.34442
	cmp	r3, #1	@ D.34446,
	strb	r3, [r7, #3544]	@ D.34446, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.PreParseInfo.IsAdvProfile
	ldr	r3, [r2, #392]	@ _15->StdExt.Vc1Ext.CodecVersion, _15->StdExt.Vc1Ext.CodecVersion
	strb	r3, [r7, #3546]	@ _15->StdExt.Vc1Ext.CodecVersion, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.PreParseInfo.CodecVersion
	beq	.L377	@,
	ldrb	r3, [r4, #14]	@ zero_extendqisi2	@ pSegMan_7(D)->CurrSeg.IsStreamEnd, pSegMan_7(D)->CurrSeg.IsStreamEnd
	cmp	r3, #1	@ pSegMan_7(D)->CurrSeg.IsStreamEnd,
	beq	.L378	@,
	add	r7, r4, #88	@ D.34450, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r7	@, D.34450
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	ldr	r3, [r4, #100]	@ pSegMan_7(D)->Pack.StreamPack[0].LenInByte, pSegMan_7(D)->Pack.StreamPack[0].LenInByte
	cmp	r3, #15	@ pSegMan_7(D)->Pack.StreamPack[0].LenInByte,
	ldrls	r1, .L381+12	@,
	bls	.L374	@,
	add	r2, r5, #80896	@, pstCtx,
	mov	r1, #16	@,
	add	r2, r2, #472	@,,
	ldr	r0, [r4, #88]	@, pSegMan_7(D)->Pack.StreamPack[0].VirAddr
	bl	Vc1SMPSeqHdr	@
	cmp	r0, #0	@,
	ldrne	r1, .L381+16	@,
	bne	.L374	@,
	ldr	ip, [r4, #100]	@ pSegMan_7(D)->Pack.StreamPack[0].LenInByte, pSegMan_7(D)->Pack.StreamPack[0].LenInByte
	mov	r1, r7	@, D.34450
	ldr	r2, [r4, #88]	@ pSegMan_7(D)->Pack.StreamPack[0].VirAddr, pSegMan_7(D)->Pack.StreamPack[0].VirAddr
	mov	r0, r5	@, pstCtx
	ldr	r3, [r4, #96]	@ pSegMan_7(D)->Pack.StreamPack[0].PhyAddr, pSegMan_7(D)->Pack.StreamPack[0].PhyAddr
	sub	ip, ip, #16	@ D.34443, pSegMan_7(D)->Pack.StreamPack[0].LenInByte,
	add	r2, r2, #16	@ D.34452, pSegMan_7(D)->Pack.StreamPack[0].VirAddr,
	str	ip, [r4, #100]	@ D.34443, pSegMan_7(D)->Pack.StreamPack[0].LenInByte
	str	r2, [r4, #88]	@ D.34452, pSegMan_7(D)->Pack.StreamPack[0].VirAddr
	add	r3, r3, #16	@ D.34442, pSegMan_7(D)->Pack.StreamPack[0].PhyAddr,
	str	r3, [r4, #96]	@ D.34442, pSegMan_7(D)->Pack.StreamPack[0].PhyAddr
	bl	VC1DEC_Decode	@
	mov	r0, r7	@, D.34450
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	__memzero	@
.L374:
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #104]	@, pSegMan_7(D)->Pack.StreamPack[0].StreamID
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L381+20	@ tmp237,
	ldr	r3, [r3]	@ D.34451, g_event_report
	cmp	r3, #0	@ D.34451,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.34451
.L375:
	ldr	r1, .L381+24	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L376:
	ldr	r1, .L381+28	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L378:
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, #24]	@, pSegMan_7(D)->CurrSeg.StreamID
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L377:
	mov	r0, r5	@, pstCtx
	bl	VC1_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L379	@,
.L356:
	mov	r1, r4	@, pSegMan
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L380	@,
.L358:
	ldr	r4, [r5, #4]	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam
	cmp	r4, #0	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r0, [r7, #455]	@ zero_extendqisi2	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L381+32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r7, #455]	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L380:
	add	r4, r4, #88	@ D.34448, pSegMan,
	mov	r0, r5	@, pstCtx
	mov	r1, r4	@, D.34448
	bl	VC1DEC_Decode	@
	mov	r0, r4	@, D.34448
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L358	@
.L379:
	ldr	r3, .L381+36	@ tmp179,
	ldr	r3, [r3, r8, asl #2]	@ D.34447, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L357	@,
	ldr	r3, [r3, #1616]	@ _28->stSynExtraData.s32DSDWaitFlag, _28->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _28->stSynExtraData.s32DSDWaitFlag,
	bne	.L356	@,
.L357:
	add	r1, r7, #288	@, tmp241,
	mov	r0, r5	@, pstCtx
	bl	VC1DEC_Decode	@
	b	.L356	@
.L382:
	.align	2
.L381:
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC22
	.word	.LC23
	.word	g_event_report
	.word	.LC19
	.word	.LC20
	.word	.LC21
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
	add	r5, r1, #69632	@ tmp147, pstCtx,
	mov	r6, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx
	mov	r4, r1	@ pstCtx, pstCtx
	ldr	r7, [r5, #4064]	@ ChanID, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L389	@,
.L384:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L390	@,
.L386:
	ldr	r4, [r4, #4]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam
	cmp	r4, #0	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r0, [r5, #4081]	@ zero_extendqisi2	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L392	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #4081]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L390:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L386	@
.L389:
	ldr	r3, .L392+4	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.34472, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L391	@,
.L385:
	add	r1, r4, #72704	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L384	@
.L391:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L384	@,
	b	.L385	@
.L393:
	.align	2
.L392:
	.word	.LC24
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
	beq	.L400	@,
.L395:
	add	r5, r4, #20480	@ tmp147, pstCtx,
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L401	@,
.L397:
	ldr	r4, [r4, #1036]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam
	cmp	r4, #0	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldrb	r0, [r5, #2516]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, .L403	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #2516]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L401:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L397	@
.L400:
	ldr	r3, .L403+4	@ tmp126,
	ldr	r3, [r3, r5, asl #2]	@ D.34484, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L402	@,
.L396:
	add	r1, r4, #15680	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L395	@
.L402:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L395	@,
	b	.L396	@
.L404:
	.align	2
.L403:
	.word	.LC25
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
	add	r5, r1, #16384	@ tmp147, pstCtx,
	mov	r6, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx
	mov	r4, r1	@ pstCtx, pstCtx
	ldr	r7, [r5, #224]	@ ChanID, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	AVS_GetPacketState	@
	cmp	r0, #0	@,
	bne	.L406	@,
	ldr	r3, .L413	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.34496, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L411	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
.L406:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #224]	@, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L412	@,
.L408:
	ldr	r4, [r4, #4]	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam
	cmp	r4, #0	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r0, [r5, #740]	@ zero_extendqisi2	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L413+4	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #224]	@, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #740]	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L411:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L406	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
	b	.L406	@
.L412:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	AVSDEC_Decode	@
	b	.L408	@
.L414:
	.align	2
.L413:
	.word	s_pstVfmwChan
	.word	.LC26
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
	b	.L415	@
.L418:
	.word	.L417
	.word	.L419
	.word	.L420
	.word	.L421
	.word	.L422
	.word	.L423
	.word	.L424
	.word	.L415
	.word	.L425
	.word	.L426
	.word	.L427
	.word	.L427
	.word	.L427
	.word	.L428
	.word	.L422
.L428:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP8	@
.L417:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L419:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VC1	@
.L420:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG4	@
.L421:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L422:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H263	@
.L423:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_DIVX3	@
.L424:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_AVS	@
.L425:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_REAL8	@
.L426:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_REAL9	@
.L427:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP6	@
.L415:
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
	b	.L430	@
.L432:
	.word	.L429
	.word	.L429
	.word	.L433
	.word	.L429
	.word	.L430
	.word	.L434
	.word	.L435
	.word	.L430
	.word	.L436
	.word	.L437
	.word	.L438
	.word	.L438
	.word	.L438
	.word	.L439
.L437:
	ldr	r4, [r1]	@ D.34509, MEM[(struct RV9_CTX_S *)pCtx_10(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L456	@,
.L445:
	add	r0, r4, #224	@, D.34509,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L439:
	ldr	r4, [r1]	@ D.34509, MEM[(struct VP8_CTX_S *)pCtx_10(D)].pstExtraData
	add	r1, r1, #8192	@ tmp181, pCtx,
	ldr	r0, [r1, #328]	@, MEM[(struct VP8_CTX_S *)pCtx_10(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_30 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_30 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_30 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_30 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L445	@,
	ldr	r1, .L457	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L445	@
.L429:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L433:
	add	r4, r1, #20480	@ tmp145, pCtx,
	ldr	r5, [r4, #1580]	@ D.34509, MEM[(struct MP4_CTX_S *)pCtx_10(D)].pstExtraData
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_10(D)].ChanID
	ldr	r1, [r5, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L440	@,
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_10(D)].ChanID
	ldr	r1, [r5, #320]	@, MEM[(struct STREAM_SEG_PACKET_S *)_12 + 136B].Pack.StreamPack[1].StreamID
	bl	SM_ReleaseStreamSeg	@
.L440:
	add	r0, r5, #224	@, D.34509,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L438:
	ldr	r4, [r1]	@ D.34509, MEM[(struct VP6_CTX_S *)pCtx_10(D)].pstExtraData
	add	r1, r1, #12288	@ tmp189, pCtx,
	ldr	r0, [r1, #712]	@, MEM[(struct VP6_CTX_S *)pCtx_10(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_22 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_22 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_22 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_22 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L445	@,
	ldr	r1, .L457+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L445	@
.L434:
	ldr	r4, [r1]	@ D.34509, MEM[(struct DIVX3_CTX_S *)pCtx_10(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L445	@,
	add	r3, r1, #24576	@ tmp175, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_38 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2416]	@, MEM[(struct DIVX3_CTX_S *)pCtx_10(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L445	@
.L435:
	ldr	r1, .L457+8	@,
	mov	r0, #22	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L436:
	ldr	r4, [r1]	@ D.34509, MEM[(struct RV8_CTX_S *)pCtx_10(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L445	@,
	add	r3, r1, #36864	@ tmp161, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_52 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2456]	@, MEM[(struct RV8_CTX_S *)pCtx_10(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L445	@
.L430:
	mov	r2, r0	@, VidStd
	ldr	r1, .L457+12	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L456:
	add	r3, r1, #36864	@ tmp168, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_45 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2440]	@, MEM[(struct RV9_CTX_S *)pCtx_10(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L445	@
.L458:
	.align	2
.L457:
	.word	.LC28
	.word	.LC29
	.word	.LC27
	.word	.LC30
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
	b	.L460	@
.L462:
	.word	.L461
	.word	.L463
	.word	.L464
	.word	.L465
	.word	.L460
	.word	.L466
	.word	.L467
	.word	.L460
	.word	.L468
	.word	.L469
	.word	.L470
	.word	.L470
	.word	.L470
	.word	.L471
.L471:
	ldr	r4, [r1]	@ D.34518, MEM[(struct VP8_CTX_S *)pCtx_9(D)].pstExtraData
	add	r1, r1, #8192	@ tmp167, pCtx,
	ldr	r0, [r1, #328]	@, MEM[(struct VP8_CTX_S *)pCtx_9(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_23 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_23 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_23 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_23 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L476	@,
	ldr	r1, .L484	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L476:
	add	r0, r4, #224	@, D.34518,
	mov	r1, #160	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L461:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	H264_ClearCurrPic	@
.L463:
	add	r3, r1, #110592	@ tmp161, pCtx,
	add	r0, r1, #77824	@, pCtx,
	add	r0, r0, #448	@,,
	ldr	r1, [r3, #3128]	@, MEM[(struct VC1_CTX_S *)pCtx_9(D)].ChanID
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	VC1_ClearCurPic	@
.L464:
	mov	r0, r1	@, pCtx
	str	r1, [sp, #4]	@ pCtx, %sfp
	bl	MP4_ClearCurPic	@
	ldr	r1, [sp, #4]	@ pCtx, %sfp
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	MP4_Clean_HeadPacket	@
.L465:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	MP2_ClearCurPic	@
.L466:
	ldr	r4, [r1]	@ D.34518, MEM[(struct DIVX3_CTX_S *)pCtx_9(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L476	@,
	add	r3, r1, #24576	@ tmp156, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_34 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2416]	@, MEM[(struct DIVX3_CTX_S *)pCtx_9(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L476	@
.L467:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	AVS_ClearCurPic	@
.L468:
	ldr	r4, [r1]	@ D.34518, MEM[(struct RV8_CTX_S *)pCtx_9(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L476	@,
	add	r3, r1, #36864	@ tmp142, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_48 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2456]	@, MEM[(struct RV8_CTX_S *)pCtx_9(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L476	@
.L469:
	ldr	r4, [r1]	@ D.34518, MEM[(struct RV9_CTX_S *)pCtx_9(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L476	@,
	add	r3, r1, #36864	@ tmp149, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_41 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2440]	@, MEM[(struct RV9_CTX_S *)pCtx_9(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L476	@
.L470:
	ldr	r4, [r1]	@ D.34518, MEM[(struct VP6_CTX_S *)pCtx_9(D)].pstExtraData
	add	r1, r1, #12288	@ tmp175, pCtx,
	ldr	r0, [r1, #712]	@, MEM[(struct VP6_CTX_S *)pCtx_9(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_15 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_15 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_15 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_15 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L476	@,
	ldr	r1, .L484+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L476	@
.L460:
	mov	r2, r0	@, VidStd
	ldr	r1, .L484+8	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L485:
	.align	2
.L484:
	.word	.LC28
	.word	.LC29
	.word	.LC30
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
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.34527, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	add	r2, r3, #73	@ tmp127, D.34527,
	cmp	r3, #0	@ D.34527,
	cmpne	r3, #179	@, D.34527,
	uxtb	r2, r2	@ tmp129, tmp127
	moveq	ip, #1	@ tmp126,
	movne	ip, #0	@ tmp126,
	cmp	r2, #1	@ tmp129,
	movhi	r2, ip	@, tmp134, tmp126
	orrls	r2, ip, #1	@,, tmp134, tmp126
	cmp	r2, #0	@ tmp134,
	beq	.L490	@,
	ldr	r2, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r2, #0	@ *pNewPicDetector_10(D),
	bne	.L490	@,
	mov	r3, #1	@ tmp136,
	str	r3, [r0]	@ tmp136, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.34527, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L487:
	cmp	r3, #0	@ D.34527,
	streq	r3, [r0]	@ D.34527, *pNewPicDetector_10(D)
	mov	r0, r2	@, ret
	bx	lr	@
.L490:
	mvn	r2, #0	@ ret,
	b	.L487	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegMpeg4
	.type	CheckNewPicSegMpeg4, %function
CheckNewPicSegMpeg4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.34533, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	cmp	r3, #179	@ D.34533,
	cmpne	r3, #176	@, D.34533,
	add	ip, r3, #75	@ tmp134, D.34533,
	moveq	lr, #1	@ tmp129,
	movne	lr, #0	@ tmp129,
	uxtb	ip, ip	@ tmp136, tmp134
	cmp	r3, #47	@ D.34533,
	orrls	lr, lr, #1	@,, tmp133, tmp129
	cmp	ip, #1	@ tmp136,
	movhi	ip, lr	@, tmp141, tmp133
	orrls	ip, lr, #1	@,, tmp141, tmp133
	cmp	ip, #0	@ tmp141,
	bne	.L504	@,
.L492:
	cmp	r2, #1	@ IsShortHead,
	bne	.L496	@,
.L493:
	mov	r3, #1	@ tmp143,
	str	r3, [r0]	@ tmp143, *pNewPicDetector_11(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.34533, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	mov	r2, #0	@ ret,
.L494:
	cmp	r3, #182	@ D.34533,
	moveq	r3, #0	@ tmp144,
	streq	r3, [r0]	@ tmp144, *pNewPicDetector_11(D)
	mov	r0, r2	@, ret
	ldr	pc, [sp], #4	@
.L504:
	ldr	ip, [r0]	@ *pNewPicDetector_11(D), *pNewPicDetector_11(D)
	cmp	ip, #0	@ *pNewPicDetector_11(D),
	beq	.L493	@,
	b	.L492	@
.L496:
	mvn	r2, #0	@ ret,
	b	.L494	@
	.fnend
	.size	CheckNewPicSegMpeg4, .-CheckNewPicSegMpeg4
	.align	2
	.global	CheckNewPicSegAVS
	.type	CheckNewPicSegAVS, %function
CheckNewPicSegAVS:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.34540, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	sub	r2, r3, #179	@ D.34537, D.34540,
	clz	r2, r2	@ D.34537, D.34537
	add	ip, r3, #74	@ tmp129, D.34540,
	mov	r2, r2, lsr #5	@ D.34537, D.34537,
	uxtb	ip, ip	@ tmp131, tmp129
	cmp	r3, #176	@ D.34540,
	movne	lr, r2	@, tmp128, D.34537
	orreq	lr, r2, #1	@,, tmp128, D.34537
	cmp	ip, #1	@ tmp131,
	movhi	ip, lr	@, tmp136, tmp128
	orrls	ip, lr, #1	@,, tmp136, tmp128
	cmp	ip, #0	@ tmp136,
	beq	.L509	@,
	ldr	ip, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	ip, #0	@ *pNewPicDetector_10(D),
	bne	.L509	@,
	mov	r3, #1	@ tmp138,
	str	r3, [r0]	@ tmp138, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.34540, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	sub	r2, r3, #179	@ D.34537, D.34540,
	clz	r2, r2	@ D.34537, D.34537
	mov	r2, r2, lsr #5	@ D.34537, D.34537,
.L506:
	cmp	r3, #182	@ D.34540,
	movne	r3, r2	@, tmp145, D.34537
	orreq	r3, r2, #1	@,, tmp145, D.34537
	cmp	r3, #0	@ tmp145,
	movne	r3, #0	@ tmp146,
	strne	r3, [r0]	@ tmp146, *pNewPicDetector_10(D)
	mov	r0, ip	@, ret
	ldr	pc, [sp], #4	@
.L509:
	mvn	ip, #0	@ ret,
	b	.L506	@
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
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.34544, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	sub	r3, r2, #12	@ tmp122, D.34544,
	cmp	r2, #10	@ D.34544,
	cmpne	r3, #3	@, tmp122,
	bhi	.L518	@,
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r3, #0	@ *pNewPicDetector_10(D),
	bne	.L518	@,
	mov	r2, #1	@ tmp130,
	str	r2, [r0]	@ tmp130, *pNewPicDetector_10(D)
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.34544, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L515:
	cmp	r2, #13	@ D.34544,
	moveq	r2, #0	@ tmp131,
	streq	r2, [r0]	@ tmp131, *pNewPicDetector_10(D)
	mov	r0, r3	@, ret
	bx	lr	@
.L518:
	mvn	r3, #0	@ ret,
	b	.L515	@
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
	b	.L520	@
.L522:
	.word	.L521
	.word	.L523
	.word	.L524
	.word	.L525
	.word	.L520
	.word	.L520
	.word	.L526
.L526:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegAVS	@
.L521:
	mov	r1, ip	@, pu8
	b	H264_IsNewPicNal	@
.L523:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegVC1	@
.L524:
	mov	r2, r3	@, IsShortHead
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg4	@
.L525:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg2	@
.L520:
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	movne	r3, #0	@ IsShortHead,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	ip, [r2]	@ pu8, pStreamSeg_5(D)->VirAddr
	beq	.L544	@,
.L528:
	ldrb	lr, [ip]	@ zero_extendqisi2	@ D.34553, *pu8_6
	ldrb	r4, [ip, #1]	@ zero_extendqisi2	@ D.34553, MEM[(HI_U8 *)pu8_6 + 1B]
	cmp	lr, #0	@ D.34553,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ D.34553, MEM[(HI_U8 *)pu8_6 + 2B]
	bne	.L531	@,
	cmp	r4, #0	@ D.34553,
	bne	.L531	@,
	cmp	ip, #1	@ D.34553,
	bne	.L531	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L544:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ *pStreamSeg_5(D), *pStreamSeg_5(D)
	ands	r3, r3, #1	@ IsShortHead, *pStreamSeg_5(D),
	beq	.L528	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L531:
	str	ip, [sp]	@ D.34553,
	mov	r3, r4	@, D.34553
	mov	r2, lr	@, D.34553
	ldr	r1, .L545	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L546:
	.align	2
.L545:
	.word	.LC31
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
	ldr	r3, .L554	@ tmp150,
	add	r0, r3, r0, lsl #2	@ tmp151, tmp150, ChanID,
	ldr	ip, [r0, #24]	@ D.34569, pstVdecUsdPool
	cmp	ip, #0	@ D.34569,
	beq	.L553	@,
.L548:
	mov	r0, #0	@ tmp156,
	add	r1, ip, #205824	@ D.34572, ivtmp.162,
	mov	r3, ip	@ ivtmp.162, D.34569
	mov	r2, r0	@ tmp160, tmp156
	str	r0, [ip]	@ tmp156, _16->s32AccessIdx
.L550:
	str	r2, [r3, #1044]	@ tmp160, MEM[base: _22, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.162, ivtmp.162,
	str	r2, [r3, #-32]	@ tmp160, MEM[base: _22, offset: 1040B]
	cmp	r3, r1	@ ivtmp.162, D.34572
	bne	.L550	@,
	mov	r0, #0	@ D.34570,
	bx	lr	@
.L553:
	cmp	r1, #0	@ Viraddr,
	str	r1, [r0, #24]	@ Viraddr, pstVdecUsdPool
	movne	ip, r1	@ D.34569, Viraddr
	bne	.L548	@
.L551:
	mvn	r0, #0	@ D.34570,
	bx	lr	@
.L555:
	.align	2
.L554:
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
	ldr	r3, .L557	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #24]	@ tmp114, pstVdecUsdPool
	bx	lr	@
.L558:
	.align	2
.L557:
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
	ldr	r3, .L564	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp118, ChanID,
	ldr	r0, [r0, #24]	@ D.34587, pstVdecUsdPool
	cmp	r0, #0	@ D.34587,
	beq	.L562	@,
	mov	ip, #0	@ tmp121,
	add	r1, r0, #205824	@ D.34589, ivtmp.176,
	mov	r3, r0	@ ivtmp.176, D.34587
	mov	r2, ip	@ tmp125, tmp121
	str	ip, [r0]	@ tmp121, _7->s32AccessIdx
.L561:
	str	r2, [r3, #1044]	@ tmp125, MEM[base: _18, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.176, ivtmp.176,
	str	r2, [r3, #-32]	@ tmp125, MEM[base: _18, offset: 1040B]
	cmp	r3, r1	@ ivtmp.176, D.34589
	bne	.L561	@,
	mov	r0, #0	@ D.34586,
	bx	lr	@
.L562:
	mvn	r0, #0	@ D.34586,
	bx	lr	@
.L565:
	.align	2
.L564:
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
	ldr	r3, .L575	@ tmp122,
	add	r0, r3, r0, lsl #2	@ tmp123, tmp122, ChanID,
	ldr	r0, [r0, #24]	@ D.34602, pstVdecUsdPool
	cmp	r0, #0	@ D.34602,
	bxeq	lr	@
	mov	r3, r0	@ ivtmp.187, D.34602
	mov	r2, #0	@ i,
	b	.L569	@
.L568:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #1072	@ ivtmp.187, ivtmp.187,
	cmp	r2, #192	@ i,
	beq	.L574	@,
.L569:
	ldr	r1, [r3, #1044]	@ MEM[base: _26, offset: 1044B], MEM[base: _26, offset: 1044B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1044B],
	bne	.L568	@,
	ldr	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[base: _26, offset: 1040B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1040B],
	bne	.L568	@,
	mov	r3, #1072	@ tmp128,
	movw	ip, #1076	@ tmp168,
	mul	r2, r3, r2	@ tmp127, tmp128, i
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	lr, #1064	@ tmp138,
	add	r3, r0, r2	@ tmp132, D.34602, tmp127
	add	r2, r2, #8	@ tmp129, tmp127,
	mov	r4, #0	@ tmp140,
	mov	r5, #0	@,
	str	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].dnr_used_flag
	add	r0, r0, r2	@ pstUsrDat, D.34602, tmp129
	str	r1, [r3, #1056]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].data_size
	str	r1, [r3, #1052]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_img_cnt
	str	r1, [r3, #1048]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_cnt
	strb	r1, [r3, #1072]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1072B]
	strb	r1, [r3, #1073]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1073B]
	strb	r1, [r3, #1074]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1074B]
	strd	r4, [r3, lr]	@ tmp140, tmp132, tmp138
	strh	r1, [r3, ip]	@ movhi	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1076B]
	ldmfd	sp!, {r4, r5, pc}	@
.L574:
	mov	r0, #0	@ pstUsrDat,
	bx	lr	@
.L576:
	.align	2
.L575:
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
	beq	.L604	@,
	ldrh	r3, [r0, #4]	@ pstVoQue_7(D)->history, pstVoQue_7(D)->history
	ldrh	lr, [r0, #8]	@ D.34618, pstVoQue_7(D)->tail
	and	r3, r3, #63	@ i, pstVoQue_7(D)->history,
	cmp	lr, r3	@ D.34618, i
	beq	.L597	@,
.L596:
	add	r2, r0, r3, lsl #2	@ tmp128, pstVoQue, i,
	add	r3, r3, #1	@ i, i,
	and	r3, r3, #63	@ i, i,
	ldr	r2, [r2, #12]	@ D.34616, pstVoQue_7(D)->image_ptr
	cmp	r2, #0	@ D.34616,
	beq	.L595	@,
	ldr	ip, [r2, #176]	@ _13->image_id, _13->image_id
	ldr	r2, [r1, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	cmp	ip, r2	@ _13->image_id, p_image_4(D)->image_id
	beq	.L598	@,
.L595:
	cmp	r3, lr	@ i, D.34618
	bne	.L596	@,
.L597:
	mvn	r0, #0	@ D.34614,
	ldmfd	sp!, {r4, pc}	@
.L598:
	mov	r0, #0	@ D.34614,
	ldmfd	sp!, {r4, pc}	@
.L604:
	mov	r0, r1	@ p_image, p_image
	ldr	r1, .L605	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.34614,
	ldmfd	sp!, {r4, pc}	@
.L606:
	.align	2
.L605:
	.word	.LC1
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
	mov	r3, r0	@ pImg, pImg
	cmp	r1, #5	@ Code,
	ldrls	pc, [pc, r1, asl #2]	@ Code
	b	.L608	@
.L610:
	.word	.L609
	.word	.L611
	.word	.L612
	.word	.L613
	.word	.L614
	.word	.L615
.L615:
	mov	r1, #0	@ tmp122,
	mov	r2, #2	@ tmp123,
	str	r1, [r0, #60]	@ tmp122, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp123, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L609:
	mov	r1, #0	@ tmp112,
	mov	r2, #1	@ tmp113,
	str	r1, [r0, #60]	@ tmp112, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp113, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L611:
	mov	r1, #4	@ tmp114,
	mov	r2, #3	@ tmp115,
	str	r1, [r0, #60]	@ tmp114, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp115, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L612:
	mov	r1, #16	@ tmp116,
	mov	r2, #9	@ tmp117,
	str	r1, [r0, #60]	@ tmp116, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp117, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L613:
	mov	r1, #221	@ tmp118,
	mov	r2, #100	@ tmp119,
	str	r1, [r0, #60]	@ tmp118, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp119, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L614:
	mov	r1, #235	@ tmp120,
	mov	r2, #100	@ tmp121,
	str	r1, [r0, #60]	@ tmp120, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp121, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L608:
	mov	r0, #1	@ tmp125,
	mov	r2, r1	@, Code
	mov	ip, #0	@ tmp124,
	str	r0, [r3, #64]	@ tmp125, pImg_4(D)->u32AspectHeight
	ldr	r1, .L617	@,
	str	ip, [r3, #60]	@ tmp124, pImg_4(D)->u32AspectWidth
	b	dprint_vfmw	@
.L618:
	.align	2
.L617:
	.word	.LC32
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
	ldr	r0, [r0, #296]	@ D.34624, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_2(D) + 272B].LastImageIdPlus2
	cmp	r0, #1	@ D.34624,
	mvnls	r0, #0	@,
	bx	lr	@
	.fnend
	.size	GetVoLastImageID, .-GetVoLastImageID
	.global	pstVdecUsdPool
	.global	g_SpinLockIrq_Destroy
	.global	g_SpinLock
	.global	g_DnrEnable
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
	.type	__func__.32599, %object
	.size	__func__.32599, 20
__func__.32599:
	.ascii	"SYNTAX_ReceiveImage\000"
	.type	__func__.32644, %object
	.size	__func__.32644, 20
__func__.32644:
	.ascii	"SYNTAX_ReleaseImage\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"out_pts: %lld -> %lld Usertag %lld\012\000"
.LC1:
	.ascii	"image point NULL\012\000"
	.space	2
.LC2:
	.ascii	"call InsertVOQueue\012\000"
.LC3:
	.ascii	"FATAL: p_image(id=%d) has already in the VoQueue!\012"
	.ascii	"\000"
	.space	1
.LC4:
	.ascii	"error=%d,W=%d,H=%d,not acceptable!\012\000"
.LC5:
	.ascii	"Queue=(%02d,%02d,%02d) + F%d\012\000"
	.space	2
.LC6:
	.ascii	"%s, pstVoQue is NULL!!!\012\000"
	.space	3
.LC7:
	.ascii	"Queue=(%02d,%02d,%02d) - F%d\012\000"
	.space	2
.LC8:
	.ascii	"image[%d] null\012\000"
.LC9:
	.ascii	"Queue=(%02d,%02d,%02d) x F%d\012\000"
	.space	2
.LC10:
	.ascii	"H264 last frame decsyntax err!\012\000"
.LC11:
	.ascii	"ERROR: Wrong PreParseInfo about Vp6 bReversed!\012\000"
.LC12:
	.ascii	"pSegMan error!\012\000"
.LC13:
	.ascii	"More than two packet!!!ERROR!!!\012\000"
	.space	3
.LC14:
	.ascii	"*****************copy packets tobe one*************"
	.ascii	"****\012\000"
	.space	3
.LC15:
	.ascii	"*****************two packet*****************\012\000"
	.space	2
.LC16:
	.ascii	"pSegMan->CurrSeg.IsLastSeg=%d\012\000"
	.space	1
.LC17:
	.ascii	"pSegMan->CurrSeg.PhyAddr=%#x\012\000"
	.space	2
.LC18:
	.ascii	"pSegMan->CurrSeg.LenInByte=%#x\012\000"
.LC19:
	.ascii	"ERROR: Wrong PreParseInfo about Vc1 IsAdvProfile!\012"
	.ascii	"\000"
	.space	1
.LC20:
	.ascii	"ERROR: Wrong PreParseInfo about Vc1 CodecVersion!\012"
	.ascii	"\000"
	.space	1
.LC21:
	.ascii	"VC1ap last frame decsyntax err!\012\000"
	.space	3
.LC22:
	.ascii	"LENTH ERROR: VC1 S/MP BS is wrong!\012\000"
.LC23:
	.ascii	"SYNTAX ERROR: VC1 S/MP BS is wrong!\012\000"
	.space	3
.LC24:
	.ascii	"MPEG2 last frame decsyntax err!\012\000"
	.space	3
.LC25:
	.ascii	"MPEG4 last frame decsyntax err!\012\000"
	.space	3
.LC26:
	.ascii	"AVS last frame decsyntax err!\012\000"
	.space	1
.LC27:
	.ascii	"release segbuf together!\012\000"
	.space	2
.LC28:
	.ascii	"ERROR: VFMW_VP8 one packet stream, but IsLastSeg =="
	.ascii	" 0\012\000"
	.space	1
.LC29:
	.ascii	"ERROR: VFMW_VP6 one packet stream, but IsLastSeg =="
	.ascii	" 0\012\000"
	.space	1
.LC30:
	.ascii	"VidStd=%d Error!\012\000"
	.space	2
.LC31:
	.ascii	"pu8[0] = %x,pu8[1] = %x, pu8[2] = %x\012\000"
	.space	2
.LC32:
	.ascii	"WARNNING: aspect ration (%d) is not expected!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_SpinLock, %object
	.size	g_SpinLock, 8
g_SpinLock:
	.space	8
	.type	last_rec_pos_time.32561, %object
	.size	last_rec_pos_time.32561, 16
last_rec_pos_time.32561:
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
