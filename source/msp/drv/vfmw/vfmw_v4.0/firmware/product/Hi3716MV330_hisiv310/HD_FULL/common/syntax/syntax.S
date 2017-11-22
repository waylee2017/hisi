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
@ -D KBUILD_BASENAME=KBUILD_STR(syntax)
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
	add	r2, r2, #100	@ D.33503, pstVoQue_3(D)->ResetMagicWord,
	strh	r3, [r4]	@ movhi	@ tmp115, pstVoQue_3(D)->max_queue_size
	str	r2, [r4, #344]	@ D.33503, pstVoQue_3(D)->ResetMagicWord
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
	.word	.L5
	.word	.L5
	.word	.L15
	.word	.L15
	.word	.L15
	.word	.L16
	.word	.L12
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L17
.L15:
	ldr	r1, .L29	@ tmp135,
	ldr	r1, [r1]	@ g_VdmCharacter, g_VdmCharacter
	tst	r1, #1	@ g_VdmCharacter,
	bne	.L28	@,
.L12:
	ldr	r1, .L29+4	@ tmp141,
	ldr	ip, [r1, #16]	@ D.33509, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	ip, #0	@ D.33509,
	bxeq	lr	@
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	bx	ip	@ D.33509
.L13:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	DIVX3DEC_RecycleImage	@
.L14:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	AVSDEC_RecycleImage	@
.L16:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	VP8DEC_RecycleImage	@
.L17:
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
.L28:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	VP6DEC_RecycleImage	@
.L30:
	.align	2
.L29:
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
	sub	r2, r2, #8	@ D.33515, eVidStd,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldrd	r4, [r3, #56]	@ D.33514, tmp125,
	subs	r6, r0, r4	@ D.33514, D.33514, D.33514
	and	r4, r4, r5	@ tmp130, D.33514, D.33514
	sbc	r7, r1, r5	@ D.33514, D.33514, D.33514
	cmp	r7, #0	@ D.33514,
	cmpeq	r6, #5	@ D.33514,
	movls	r3, #1	@ tmp128,
	movhi	r3, #0	@ tmp128,
	adds	r4, r4, #1	@ tmp132, tmp130,
	movne	r4, #1	@ tmp132,
	tst	r3, r4	@ tmp128, tmp132
	beq	.L44	@,
	cmp	r2, #1	@ D.33515,
	mvnhi	r0, #0	@ InferedPTS,
	mvnhi	r1, #0	@ InferedPTS,
	bls	.L34	@,
.L32:
	ldmfd	sp!, {r4, r5, r6, r7}	@
	bx	lr	@
.L44:
	cmp	r2, #1	@ D.33515,
	bhi	.L32	@,
	ldr	r3, [ip, #140]	@ p_image_6(D)->format, p_image_6(D)->format
	and	r3, r3, #3	@ D.33515, p_image_6(D)->format,
	cmp	r3, #2	@ D.33515,
	bne	.L32	@,
.L34:
	mvn	r2, #0	@ tmp142,
	str	r2, [ip]	@ tmp142, p_image_6(D)->SrcPts
	mov	r0, r2	@ InferedPTS, tmp142
	mov	r1, r2	@ InferedPTS, tmp143
	str	r2, [ip, #4]	@ tmp143, p_image_6(D)->SrcPts
	b	.L32	@
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
	mov	r6, r0	@ D.33518,
	mov	r7, r1	@ D.33518,
	mov	r0, #29	@,
	strd	r6, [r4, #8]	@ D.33518, p_image,
	ldr	r1, .L47	@,
	strd	r6, [sp]	@ D.33518,
	strd	r8, [sp, #8]	@ p_image_4(D)->Usertag,,
	bl	dprint_vfmw	@
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r6, r7, r8, r9, pc}	@
.L48:
	.align	2
.L47:
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
	beq	.L50	@,
	ldr	r3, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	cmp	r3, #0	@ p_image_10(D)->disp_height,
	bne	.L76	@,
.L50:
	ldr	r2, [r4, #144]	@ D.33522, p_image_10(D)->image_width
	ldr	r3, [r4, #148]	@ D.33522, p_image_10(D)->image_height
	mov	r1, r2, lsr #1	@ D.33522, D.33522,
	str	r2, [r4, #152]	@ D.33522, p_image_10(D)->disp_width
	str	r3, [r4, #156]	@ D.33522, p_image_10(D)->disp_height
	mov	r3, r3, lsr #1	@ D.33522, D.33522,
	str	r1, [r4, #160]	@ D.33522, p_image_10(D)->disp_center_x
	str	r3, [r4, #164]	@ D.33522, p_image_10(D)->disp_center_y
.L51:
	str	r2, [r5, #300]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageWidth
	ldr	r3, [r4, #148]	@ D.33522, p_image_10(D)->image_height
	ldr	r2, [r5, #280]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	str	r3, [r5, #304]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageHeight
	ldr	r3, [r4, #140]	@ p_image_10(D)->format, p_image_10(D)->format
	ubfx	r3, r3, #5, #3	@ D.33522, p_image_10(D)->format,,
	str	r3, [r5, #308]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].VideoFormat
	ldr	r3, [r4, #140]	@ D.33522, p_image_10(D)->format
	str	r3, [r5, #312]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageFormat
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.33522, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r3, [r4, #184]	@ D.33522, p_image_10(D)->seq_cnt
	ldr	r6, [r4, #140]	@ D.33522, p_image_10(D)->format
	cmp	r3, r2	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	ldr	r8, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	ldrh	r2, [r4, #164]	@ D.33522, p_image_10(D)->disp_center_y
	ubfx	r10, r6, #14, #3	@ AspectRatio, D.33522,,
	ldr	r9, [r4, #160]	@ p_image_10(D)->disp_center_x, p_image_10(D)->disp_center_x
	ubfx	r6, r6, #8, #2	@ ScanType, D.33522,,
	ldrh	r1, [r4, #152]	@ D.33522, p_image_10(D)->disp_width
	strne	r3, [r5, #320]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqCnt
	ldr	r3, [r5, #316]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	orr	r9, r2, r9, asl #16	@ dcenter, D.33522, p_image_10(D)->disp_center_x,
	orr	r8, r1, r8, asl #16	@ dsize, D.33522, p_image_10(D)->disp_height,
	add	r2, r3, #1	@ D.33522, D.33522,
	str	r2, [r5, #316]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	str	r3, [r4, #188]	@ D.33522, p_image_10(D)->seq_img_cnt
	ldr	r3, [r5, #272]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
	cmp	r3, r10	@ D.33522, AspectRatio
	beq	.L53	@,
	ldr	r2, .L78	@ tmp206,
	ldr	ip, [r2]	@ D.33524, g_event_report
	cmp	ip, #0	@ D.33524,
	beq	.L54	@,
	strb	r3, [sp]	@ D.33522, para
	mov	r2, sp	@,
	strb	r10, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r0, r7	@, ChanID
	blx	ip	@ D.33524
.L54:
	str	r10, [r5, #272]	@ AspectRatio, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
.L53:
	ldr	r3, [r5, #276]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
	cmp	r3, r6	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, ScanType
	beq	.L55	@,
	ldr	r3, .L78	@ tmp211,
	ldr	r3, [r3]	@ D.33524, g_event_report
	cmp	r3, #0	@ D.33524,
	beq	.L56	@,
	add	r2, sp, #8	@ tmp213,,
	mov	r1, #4	@,
	mov	r0, r7	@, ChanID
	strb	r6, [r2, #-8]!	@ ScanType, para
	blx	r3	@ D.33524
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
	ldr	r3, [r3]	@ D.33524, g_event_report
	cmp	r3, #0	@ D.33524,
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
	blx	r3	@ D.33524
.L58:
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.33522, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.33522, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.33522, p_image_10(D)->luma_phy_addr
	ldr	r1, [r4, #108]	@ D.33522, p_image_10(D)->chrom_phy_addr
	ldr	r3, [r4, #172]	@ D.33522, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.33522, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.33522, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.33522, D.33522, D.33522
	add	r3, r1, r3	@ D.33522, D.33522, D.33522
	str	r2, [r4, #96]	@ D.33522, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.33522, p_image_10(D)->btm_chrom_phy_addr
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L76:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r2, [r4, #144]	@ D.33522, p_image_10(D)->image_width
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
	.pad #16
	sub	sp, sp, #16	@,,
	ldr	r10, [sp, #48]	@ p_image, p_image
	cmp	r10, #0	@ p_image,
	beq	.L117	@,
	mov	r9, r0	@ ChanID, ChanID
	mov	r7, r1	@ eVidStd, eVidStd
	mov	r0, #2	@,
	ldr	r1, .L120	@,
	mov	r5, r3	@ pstVoQue, pstVoQue
	mov	r8, r2	@ pCtx, pCtx
	bl	dprint_vfmw	@
	ldr	r0, .L120+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r4, [r5, #4]	@ pstVoQue_16(D)->history, pstVoQue_16(D)->history
	ldrh	r3, [r5, #8]	@ D.33534, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, pstVoQue_16(D)->history,
	cmp	r3, r4	@ D.33534, i
	movne	r6, #1000	@ tmp291,
	bne	.L88	@,
	b	.L87	@
.L86:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #8]	@ D.33534, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.33534, i
	beq	.L87	@,
.L88:
	add	ip, r5, r4, lsl #2	@ tmp178, pstVoQue, i,
	ldr	r3, [r10, #176]	@ p_image_11(D)->image_id, p_image_11(D)->image_id
	ldr	r2, [ip, #12]	@ tmp177, pstVoQue_16(D)->image_ptr
	ldr	r2, [r2, #176]	@ D.33536, _22->image_id
	cmp	r2, r3	@ D.33536, p_image_11(D)->image_id
	bne	.L86	@,
	ldr	r1, .L120+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	str	r6, [r10, #180]	@ tmp291, p_image_11(D)->error_level
	b	.L86	@
.L87:
	ldr	r2, [r10, #180]	@ D.33536, p_image_11(D)->error_level
	cmp	r2, #100	@ D.33536,
	bhi	.L84	@,
	ldr	r3, [r10, #144]	@ D.33540, p_image_11(D)->image_width
	cmp	r3, #31	@ D.33540,
	bhi	.L118	@,
.L84:
	ldr	r3, [r10, #144]	@ D.33540, p_image_11(D)->image_width
	ldr	r1, [r10, #148]	@ D.33540, p_image_11(D)->image_height
.L89:
	str	r1, [sp]	@ D.33540,
	mov	r0, #0	@,
	ldr	r1, .L120+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r10, #180]	@ p_image_11(D)->error_level, p_image_11(D)->error_level
	cmp	r3, #1000	@ p_image_11(D)->error_level,
	beq	.L91	@,
	mov	r2, r10	@, p_image
	mov	r1, r8	@, pCtx
	mov	r0, r7	@, eVidStd
	bl	ReturnImageToSyntax	@
.L91:
	ldr	r0, .L120+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.33532,
.L82:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L118:
	ldr	r1, [r10, #148]	@ D.33540, p_image_11(D)->image_height
	cmp	r1, #31	@ D.33540,
	bls	.L89	@,
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
	ldrh	r3, [r5, #6]	@ D.33534, pstVoQue_16(D)->head
	ldrh	r2, [r5, #4]	@ D.33534, pstVoQue_16(D)->history
	ldr	r1, .L120+16	@,
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #8]	@ D.33533, pstVoQue_16(D)->tail
	ldr	r6, .L120+20	@ tmp287,
	rsb	r2, r8, r4	@ tmp202, tmp285, tmp286
	add	r1, r3, #1	@ tmp195, D.33533,
	ldr	r0, .L120+4	@,
	add	r3, r5, r3, lsl #2	@ tmp193, pstVoQue, D.33533,
	and	r1, r1, #63	@ tmp197, tmp195,
	add	r2, r6, r2	@ tmp203, tmp287, tmp202
	str	r10, [r3, #12]	@ p_image, pstVoQue_16(D)->image_ptr
	strh	r1, [r5, #8]	@ movhi	@ tmp197, pstVoQue_16(D)->tail
	ldr	r3, [r10, #128]	@ p_image_11(D)->is_fld_save, p_image_11(D)->is_fld_save
	str	r3, [r2, #20]	@ p_image_11(D)->is_fld_save, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r10, #300]	@ D.33531, p_image_11(D)->ImageDnr.video_standard
	sub	r2, r3, #10	@ D.33536, D.33531,
	cmp	r2, #2	@ D.33536,
	bhi	.L92	@,
	ldr	r2, .L120+24	@ tmp208,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L92	@,
.L93:
	ldr	r3, .L120+28	@ tmp220,
	ldr	r3, [r3]	@ D.33538, g_event_report
	cmp	r3, #0	@ D.33538,
	beq	.L94	@,
	add	r2, sp, #16	@ tmp221,,
	mov	r1, #5	@,
	mov	r0, r9	@, ChanID
	str	r10, [r2, #-4]!	@ p_image, para
	blx	r3	@ D.33538
.L94:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L119	@,
.L96:
	rsb	r7, r8, r4	@ tmp236, tmp285, tmp286
	add	r5, r6, r7	@ tmp237, tmp287, tmp236
	ldr	r3, [r5, #4]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	add	r3, r3, #1	@ D.33536, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum,
	str	r3, [r5, #4]	@ D.33536, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, r7]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	rsb	r1, r1, r0	@ Period, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, CurTime
	mov	r9, r0	@ CurTime,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.33532,
	bcc	.L82	@,
	ldr	r3, [r5, #4]	@ D.33536, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	cmp	r3, #0	@ D.33536,
	beq	.L98	@,
	movw	r0, #10000	@ tmp267,
	mul	r0, r0, r3	@, tmp267, D.33536
	bl	__aeabi_uidiv	@
	str	r0, [r5, #8]	@, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrFrameRate
.L98:
	rsb	r4, r8, r4	@ tmp275, tmp285, tmp286
	mov	r2, #0	@ tmp283,
	add	r3, r6, r4	@ tmp276, tmp287, tmp275
	mov	r0, #1	@ D.33532,
	str	r9, [r6, r4]	@ CurTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	str	r2, [r3, #4]	@ tmp283, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	b	.L82	@
.L92:
	sub	r2, r3, #14	@ D.33531, D.33531,
	bics	r2, r2, #4	@ tmp294, D.33531,
	moveq	r2, #1	@ tmp214,
	movne	r2, #0	@ tmp214,
	cmp	r3, #4	@ D.33531,
	movne	r3, r2	@, tmp219, tmp214
	orreq	r3, r2, #1	@,, tmp219, tmp214
	cmp	r3, #0	@ tmp219,
	beq	.L94	@,
	b	.L93	@
.L119:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L120+4	@ tmp222,
	ldr	r2, .L120+32	@ tmp227,
	add	r9, r3, r9, lsl #2	@ tmp223, tmp222, ChanID,
	ldr	r3, [r9, #8]	@ tmp226, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.33536, tmp226, CurTime
	cmp	r3, r2	@ D.33536, g_TraceFramePeriod
	strhi	r0, [r9, #8]	@ CurTime, last_rec_pos_time
	b	.L96	@
.L117:
	mov	r0, r10	@, p_image
	ldr	r1, .L120+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.33532,
	b	.L82	@
.L121:
	.align	2
.L120:
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
	ldrh	r3, [r0, #6]	@ D.33548, pstVoQue_4(D)->head
	ldrh	ip, [r0, #4]	@ D.33548, pstVoQue_4(D)->history
	ldrh	r0, [r0, #8]	@ D.33548, pstVoQue_4(D)->tail
	cmp	r3, ip	@ D.33548, D.33548
	addcc	lr, r3, #64	@ D.33549, D.33548,
	rsbcs	ip, ip, r3	@ ReadNum, D.33548, D.33548
	rsbcc	ip, ip, lr	@ ReadNum, D.33548, D.33549
	cmp	r3, r0	@ D.33548, D.33548
	addhi	r0, r0, #64	@ D.33549, D.33548,
	str	ip, [r1]	@ ReadNum, *pReadImgNum_22(D)
	rsb	r3, r3, r0	@ NewNum, D.33548, D.33549
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
	b	.L143	@
.L132:
	.word	.L144
	.word	.L133
	.word	.L134
	.word	.L135
	.word	.L136
	.word	.L137
	.word	.L138
	.word	.L143
	.word	.L143
	.word	.L143
	.word	.L139
	.word	.L139
	.word	.L139
	.word	.L140
	.word	.L136
	.word	.L143
	.word	.L143
	.word	.L143
	.word	.L144
.L139:
	ldr	r3, .L146	@ tmp123,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L145	@,
.L136:
	add	r0, r0, #20480	@ pstVoQue, pSynCtx,
.L144:
	add	r0, r0, #16	@ pstVoQue, pstVoQue,
	bx	lr	@
.L137:
	add	r0, r0, #26624	@ pstVoQue, pSynCtx,
	add	r0, r0, #24	@ pstVoQue, pstVoQue,
	bx	lr	@
.L138:
	add	r0, r0, #16064	@ pstVoQue, pSynCtx,
	add	r0, r0, #32	@ pstVoQue, pstVoQue,
	bx	lr	@
.L140:
	add	r0, r0, #8128	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L133:
	add	r0, r0, #112640	@ pstVoQue, pSynCtx,
	add	r0, r0, #736	@ pstVoQue, pstVoQue,
	bx	lr	@
.L134:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r0, r0, #88	@ pstVoQue, pstVoQue,
	bx	lr	@
.L135:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
	bx	lr	@
.L143:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L145:
	add	r0, r0, #12608	@ pstVoQue, pSynCtx,
	add	r0, r0, #48	@ pstVoQue, pstVoQue,
	bx	lr	@
.L147:
	.align	2
.L146:
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
	beq	.L152	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r5, r1	@ p_image, p_image
	bl	SYNTAX_GetVoQue	@
	subs	r4, r0, #0	@ pstVoQue,
	beq	.L156	@,
	ldr	r0, .L157	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ D.33566, pstVoQue_11->head
	ldrh	r2, [r4, #8]	@ pstVoQue_11->tail, pstVoQue_11->tail
	cmp	r2, r3	@ pstVoQue_11->tail, D.33566
	mvneq	r6, #2	@ ret,
	beq	.L151	@,
	add	r3, r4, r3, lsl #2	@ tmp149, pstVoQue, D.33566,
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [r3, #12]	@, pstVoQue_11->image_ptr
	bl	memcpy	@
	ldr	r1, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldrh	r3, [r4, #6]	@ D.33567, pstVoQue_11->head
	mov	r0, #12	@,
	ldrh	r2, [r4, #4]	@ D.33567, pstVoQue_11->history
	str	r1, [sp, #4]	@ p_image_5(D)->image_id,
	ldrh	ip, [r4, #8]	@ pstVoQue_11->tail, pstVoQue_11->tail
	ldr	r1, .L157+4	@,
	str	ip, [sp]	@ pstVoQue_11->tail,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldr	r2, [r4, #344]	@ pstVoQue_11->ResetMagicWord, pstVoQue_11->ResetMagicWord
	add	r3, r3, r2	@ D.33569, p_image_5(D)->image_id, pstVoQue_11->ResetMagicWord
	str	r3, [r5, #176]	@ D.33569, p_image_5(D)->image_id
	ldr	r3, [r4, #344]	@ D.33569, pstVoQue_11->ResetMagicWord
	str	r3, [r5, #380]	@ D.33569, p_image_5(D)->resetNum
	ldrh	r3, [r4, #6]	@ pstVoQue_11->head, pstVoQue_11->head
	add	r3, r3, r6	@ tmp166, pstVoQue_11->head,
	and	r3, r3, #63	@ tmp168, tmp166,
	strh	r3, [r4, #6]	@ movhi	@ tmp168, pstVoQue_11->head
.L151:
	ldr	r0, .L157	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.33564, ret
.L149:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L152:
	mvn	r0, #1	@ D.33564,
	bx	lr	@
.L156:
	ldr	r2, .L157+8	@,
	mov	r0, #1	@,
	ldr	r1, .L157+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.33564,
	b	.L149	@
.L158:
	.align	2
.L157:
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
	b	.L160	@
.L162:
	.word	.L163
	.word	.L160
	.word	.L160
	.word	.L160
	.word	.L163
	.word	.L160
	.word	.L160
	.word	.L160
	.word	.L160
	.word	.L160
	.word	.L164
	.word	.L164
	.word	.L164
	.word	.L160
	.word	.L163
.L164:
	ldr	r3, .L173	@ tmp118,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L166	@,
.L163:
	cmp	r1, #0	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L160:
	cmn	r1, #2	@ RetValue,
	beq	.L172	@,
.L166:
	cmp	r1, #1	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L172:
	mov	r0, r1	@ ret, RetValue
	bx	lr	@
.L174:
	.align	2
.L173:
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
	b	.L189	@
.L178:
	.word	.L177
	.word	.L179
	.word	.L180
	.word	.L181
	.word	.L182
	.word	.L183
	.word	.L184
	.word	.L189
	.word	.L189
	.word	.L189
	.word	.L185
	.word	.L185
	.word	.L185
	.word	.L186
	.word	.L182
	.word	.L189
	.word	.L189
	.word	.L189
	.word	.L187
.L185:
	ldr	r3, .L196	@ tmp157,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L195	@,
.L182:
	ldr	r3, .L196+4	@ tmp165,
	ldr	r3, [r3, #16]	@ D.33602, g_SdecFunc.pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ D.33602,
	mvneq	r1, #0	@ ret,
	beq	.L176	@,
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r4, #8	@, pSynCtx,
	blx	r3	@ D.33602
	mov	r1, r0	@ ret,
.L176:
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L183:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	DIVX3DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L184:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L186:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VP8DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L187:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L177:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	H264DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L179:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VC1DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L180:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L181:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L189:
	mvn	r1, #1	@ ret,
	b	.L176	@
.L195:
	ldr	r1, [r1, #176]	@, p_image_13(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	VP6DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	b	.L176	@
.L197:
	.align	2
.L196:
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
	beq	.L210	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r7, r0	@ pSynCtx, pSynCtx
	mov	r8, r1	@ p_image, p_image
	bl	SYNTAX_GetVoQue	@
	subs	r5, r0, #0	@ pstVoQue,
	beq	.L216	@,
	ldr	r0, .L217	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	ldr	r2, [r5, #344]	@ pstVoQue_20->ResetMagicWord, pstVoQue_20->ResetMagicWord
	rsb	r3, r2, r3	@ D.33610, pstVoQue_20->ResetMagicWord, p_image_14(D)->image_id
	str	r3, [r8, #176]	@ D.33610, p_image_14(D)->image_id
	ldrh	r4, [r5, #4]	@ pstVoQue_20->history, pstVoQue_20->history
	ldrh	r3, [r5, #6]	@ D.33612, pstVoQue_20->head
	and	r4, r4, #63	@ i, pstVoQue_20->history,
	cmp	r3, r4	@ D.33612, i
	bne	.L209	@,
	b	.L208	@
.L205:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #6]	@ D.33612, pstVoQue_20->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.33612, i
	beq	.L208	@,
.L209:
	add	r6, r4, #2	@ tmp189, i,
	add	r3, r5, r6, lsl #2	@ tmp166, pstVoQue, tmp189,
	ldr	r3, [r3, #4]	@ D.33613, pstVoQue_20->image_ptr
	cmp	r3, #0	@ D.33613,
	beq	.L203	@,
	ldr	lr, [r3, #176]	@ _32->image_id, _32->image_id
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	rsb	lr, lr, r3	@ SameImageFlag, _32->image_id, p_image_14(D)->image_id
	clz	lr, lr	@ SameImageFlag, SameImageFlag
	mov	lr, lr, lsr #5	@ SameImageFlag, SameImageFlag,
	cmp	lr, #0	@ SameImageFlag,
	beq	.L205	@,
.L204:
	ldrh	r0, [r5, #4]	@ D.33614, pstVoQue_20->history
	b	.L207	@
.L212:
	mov	r4, r2	@ i, i
.L207:
	cmp	r4, #0	@ i,
	mov	r2, #63	@ i,
	subne	r2, r4, #1	@ i, i,
	add	ip, r5, r6, lsl #2	@ tmp177, pstVoQue, tmp189,
	add	r3, r2, #2	@ tmp173, i,
	cmp	r4, r0	@ i, D.33614
	add	r1, r5, r3, lsl #2	@ tmp174, pstVoQue, tmp173,
	mov	r6, r3	@ tmp189, tmp173
	ldr	r3, [r1, #4]	@ D.33613, pstVoQue_20->image_ptr
	str	r3, [ip, #4]	@ D.33613, pstVoQue_20->image_ptr
	bne	.L212	@,
	cmp	lr, #1	@ SameImageFlag,
	add	r2, r4, #1	@ tmp179, i,
	and	r2, r2, #63	@ D.33611, tmp179,
	strh	r2, [r5, #4]	@ movhi	@ D.33611, pstVoQue_20->history
	bne	.L205	@,
	ldr	ip, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	mov	r0, #12	@,
	ldrh	r3, [r5, #6]	@ D.33612, pstVoQue_20->head
	ldr	r1, .L217+4	@,
	str	ip, [sp, #4]	@ p_image_14(D)->image_id,
	ldrh	ip, [r5, #8]	@ pstVoQue_20->tail, pstVoQue_20->tail
	str	ip, [sp]	@ pstVoQue_20->tail,
	bl	dprint_vfmw	@
	mov	r1, r8	@, p_image
	mov	r0, r7	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
	b	.L202	@
.L203:
	mov	r2, r4	@, i
	ldr	r1, .L217+8	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	lr, #2	@ SameImageFlag,
	b	.L204	@
.L208:
	mvn	r4, #1	@ ret,
.L202:
	ldr	r0, .L217	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.33608, ret
.L199:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L210:
	mvn	r0, #1	@ D.33608,
	bx	lr	@
.L216:
	ldr	r2, .L217+12	@,
	mov	r0, #1	@,
	ldr	r1, .L217+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.33608,
	b	.L199	@
.L218:
	.align	2
.L217:
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
	b	.L234	@
.L222:
	.word	.L231
	.word	.L223
	.word	.L224
	.word	.L225
	.word	.L226
	.word	.L227
	.word	.L228
	.word	.L234
	.word	.L234
	.word	.L234
	.word	.L229
	.word	.L229
	.word	.L229
	.word	.L230
	.word	.L226
	.word	.L234
	.word	.L234
	.word	.L234
	.word	.L231
.L231:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L232:
	ldr	r0, .L236	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ pstVoQue_1->head, pstVoQue_1->head
	ldr	r0, .L236	@,
	sub	r3, r3, #1	@ tmp136, pstVoQue_1->head,
	and	r3, r3, #63	@ tmp138, tmp136,
	strh	r3, [r4, #6]	@ movhi	@ tmp138, pstVoQue_1->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.33621,
	ldmfd	sp!, {r4, pc}	@
.L229:
	ldr	r3, .L236+4	@ tmp127,
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	addne	r4, r0, #12608	@ pstVoQue, pSynCtx,
	addne	r4, r4, #48	@ pstVoQue, pstVoQue,
	bne	.L232	@,
.L226:
	add	r4, r0, #20480	@ pstVoQue, pSynCtx,
	add	r4, r4, #16	@ pstVoQue, pstVoQue,
	b	.L232	@
.L225:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L232	@
.L223:
	add	r4, r0, #112640	@ pstVoQue, pSynCtx,
	add	r4, r4, #736	@ pstVoQue, pstVoQue,
	b	.L232	@
.L224:
	add	r4, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r4, #88	@ pstVoQue, pstVoQue,
	b	.L232	@
.L227:
	add	r4, r0, #26624	@ pstVoQue, pSynCtx,
	add	r4, r4, #24	@ pstVoQue, pstVoQue,
	b	.L232	@
.L228:
	add	r4, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r4, #32	@ pstVoQue, pstVoQue,
	b	.L232	@
.L230:
	add	r4, r0, #8128	@ pstVoQue, pSynCtx,
	add	r4, r4, #48	@ pstVoQue, pstVoQue,
	b	.L232	@
.L234:
	mvn	r0, #1	@ D.33621,
	ldmfd	sp!, {r4, pc}	@
.L237:
	.align	2
.L236:
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
	movne	r0, #0	@ tmp136,
	moveq	r0, #1	@ tmp136,
	strb	r0, [r4, #1]	@ tmp136, pSegMan_2(D)->IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_18(D)].pH264DecParam
	cmp	r4, #0	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].pH264DecParam,
	beq	.L241	@,
.L238:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L241:
	add	r6, r5, #12288	@ tmp140, pstCtx,
	ldrb	r0, [r6, #1268]	@ zero_extendqisi2	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag, MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag,
	bne	.L238	@,
	add	r5, r5, #49152	@ tmp144, pstCtx,
	ldr	r1, .L242	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #3688]	@, MEM[(struct H264_CTX_S *)pstCtx_18(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r6, #1268]	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag
	b	.L238	@
.L243:
	.align	2
.L242:
	.word	.LC10
	.fnend
	.size	DecodeStream_H264, .-DecodeStream_H264
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
	beq	.L253	@,
	add	r6, r0, #88	@ D.33649, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.33649
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.33649
	mov	r0, r5	@, pstCtx
	bl	DIVX3DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam
	cmp	r7, #0	@ MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #24576	@ tmp141, pstCtx,
	mov	r0, r6	@, D.33649
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L254	@ tmp143,
	ldr	r3, [r3]	@ D.33652, g_event_report
	cmp	r3, #0	@ D.33652,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].pDivx3DecParam
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.33652
.L253:
	add	r5, r1, #24576	@ tmp126, pstCtx,
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #2416]	@, MEM[(struct DIVX3_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L255:
	.align	2
.L254:
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
	beq	.L265	@,
	add	r6, r0, #88	@ D.33665, pSegMan,
	mov	r2, #80	@,
	add	r1, r0, #8	@, pSegMan,
	mov	r0, r6	@, D.33665
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.33665
	mov	r0, r5	@, pstCtx
	bl	VP8DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam
	cmp	r7, #0	@ MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #8192	@ tmp141, pstCtx,
	mov	r0, r6	@, D.33665
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L266	@ tmp143,
	ldr	r3, [r3]	@ D.33668, g_event_report
	cmp	r3, #0	@ D.33668,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].pVp8DecParam
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.33668
.L265:
	add	r5, r1, #8192	@ tmp126, pstCtx,
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #328]	@, MEM[(struct VP8_CTX_S *)pstCtx_4(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_2(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L267:
	.align	2
.L266:
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
	ldr	r3, .L282	@ tmp135,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	ldr	r3, [r3]	@ g_VdmCharacter, g_VdmCharacter
	mov	r5, r1	@ pstCtx, pstCtx
	ands	r0, r3, #1	@ D.33681, g_VdmCharacter,
	beq	.L269	@,
	ldrb	r3, [r4, #14]	@ zero_extendqisi2	@ pSegMan_6(D)->CurrSeg.IsStreamEnd, pSegMan_6(D)->CurrSeg.IsStreamEnd
	cmp	r3, #1	@ pSegMan_6(D)->CurrSeg.IsStreamEnd,
	beq	.L281	@,
	add	r6, r4, #88	@ D.33684, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r6	@, D.33684
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	mov	r1, r6	@, D.33684
	mov	r0, r5	@, pstCtx
	bl	VP6DEC_Decode	@
	ldr	r7, [r5, #4]	@ MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam
	cmp	r7, #0	@ MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	add	r5, r5, #12288	@ tmp155, pstCtx,
	mov	r0, r6	@, D.33684
	mov	r1, #160	@,
	bl	__memzero	@
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L282+4	@ tmp157,
	ldr	r3, [r3]	@ D.33688, g_event_report
	cmp	r3, #0	@ D.33688,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	mov	r2, r7	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].pVp6DecParam
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.33688
.L269:
	add	r2, r1, #20480	@ tmp163, pstCtx,
	ldr	r2, [r2]	@ MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].pstExtraData, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].pstExtraData
	ldr	r2, [r2, #388]	@ _10->StdExt.Vp6Ext.bReversed, _10->StdExt.Vp6Ext.bReversed
	cmp	r2, #1	@ _10->StdExt.Vp6Ext.bReversed,
	bls	.L274	@,
	ldr	r1, .L282+8	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L274:
	add	ip, r4, #88	@ D.33684, pSegMan,
	mov	r3, #1	@ tmp166,
	mov	r2, #80	@,
	strb	r3, [r4, #1]	@ tmp166, pSegMan_6(D)->IsCurrSegWaitDec
	mov	r0, ip	@, D.33684
	add	r1, r4, #8	@, pSegMan,
	bl	memcpy	@
	ldr	r3, .L282+12	@ tmp173,
	ldr	r3, [r3, #12]	@ D.33685, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.33685,
	beq	.L276	@,
	mov	r1, r0	@, D.33684
	mov	r0, r5	@, pstCtx
	blx	r3	@ D.33685
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L276:
	ldr	r0, [r5]	@, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_8(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp176,
	strb	r3, [r4, #1]	@ tmp176, pSegMan_6(D)->IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L281:
	add	r5, r1, #12288	@ tmp140, pstCtx,
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r0, [r5, #712]	@, MEM[(struct VP6_CTX_S *)pstCtx_8(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_6(D)->CurrSeg.StreamID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L283:
	.align	2
.L282:
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
	add	ip, r0, #88	@ D.33701, pSegMan,
	mov	r3, #1	@ tmp118,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pSegMan, pSegMan
	strb	r3, [r4, #1]	@ tmp118, pSegMan_4(D)->IsCurrSegWaitDec
	mov	r5, r1	@ pstCtx, pstCtx
	mov	r0, ip	@, D.33701
	add	r1, r4, #8	@, pSegMan,
	mov	r2, #80	@,
	bl	memcpy	@
	ldr	r3, .L289	@ tmp125,
	ldr	r3, [r3, #12]	@ D.33702, g_SdecFunc.pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ D.33702,
	beq	.L287	@,
	mov	r1, r0	@, D.33701
	mov	r0, r5	@, pstCtx
	blx	r3	@ D.33702
	cmn	r0, #2	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L287:
	ldr	r0, [r5]	@, MEM[(struct iMediaSDEC_CTX_S *)pstCtx_11(D)].ChanID
	ldr	r1, [r4, #24]	@, pSegMan_4(D)->CurrSeg.StreamID
	bl	SM_ReleaseStreamSeg	@
	mov	r3, #0	@ tmp128,
	strb	r3, [r4, #1]	@ tmp128, pSegMan_4(D)->IsCurrSegWaitDec
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L290:
	.align	2
.L289:
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
	beq	.L292	@,
	ldr	r3, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	cmp	r3, #0	@ pSegMan_8(D)->CurrSeg.VirAddr,
	beq	.L292	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.33712, pSegMan_8(D)->CurrSeg.IsLastSeg
	mov	r6, r0	@ ChanID, ChanID
	cmp	r5, #1	@ D.33712,
	beq	.L314	@,
	cmp	r5, #0	@ D.33712,
	beq	.L315	@,
.L299:
	mvn	r0, #0	@ D.33709,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L314:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.33712, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r5, #0	@ D.33712,
	beq	.L316	@,
	cmp	r5, #1	@ D.33712,
	bne	.L299	@,
	ldr	r1, .L318	@ tmp176,
	mov	r3, #64512	@ tmp209,
	ldr	r2, [r4, #100]	@ pSegMan_8(D)->Pack.StreamPack[0].LenInByte, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	movt	r3, 15	@ tmp209,
	ldr	r1, [r1, r0, asl #2]	@ tmp177, s_pstVfmwChan
	ldr	r1, [r1, #880]	@ _39->eVidStd, _39->eVidStd
	cmp	r1, #6	@ _39->eVidStd,
	movne	r3, #1024	@ D.33710,
	cmp	r3, r2	@ D.33710, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	bhi	.L317	@,
	ldr	r1, .L318+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #168	@, pSegMan,
	bl	memcpy	@
.L302:
	mov	r0, #0	@ tmp206,
	strb	r0, [r4, #2]	@ tmp206, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L315:
	add	r8, r4, #88	@ D.33713, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, D.33713
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r3, [r4, #2]	@ zero_extendqisi2	@ pSegMan_8(D)->ConvolutionPacketNum, pSegMan_8(D)->ConvolutionPacketNum
	add	r3, r3, #1	@ tmp168, pSegMan_8(D)->ConvolutionPacketNum,
	uxtb	r3, r3	@ D.33712, tmp168
	strb	r3, [r4, #2]	@ D.33712, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r3, #1	@ D.33712,
	bls	.L299	@,
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, pSegMan_8(D)->Pack.StreamPack[1].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, D.33713
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldr	r1, .L318+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L318+12	@ tmp173,
	ldr	r3, [r3]	@ D.33715, g_event_report
	cmp	r3, #0	@ D.33715,
	beq	.L298	@,
	mov	r2, r5	@, D.33712
	mov	r0, r6	@, ChanID
	mov	r1, #113	@,
	blx	r3	@ D.33715
.L298:
	mov	r3, #0	@ tmp174,
	mvn	r0, #0	@ D.33709,
	strb	r3, [r4, #2]	@ tmp174, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L316:
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.33712, pSegMan_8(D)->ConvolutionPacketNum
	mov	r0, r5	@ D.33709, D.33712
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L317:
	ldr	r1, .L318+16	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #100]	@ D.33710, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r0, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	rsb	r0, r2, r0	@,, pSegMan_8(D)->CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r1, [r4, #100]	@ D.33710, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	ip, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ pSegMan_8(D)->CurrSeg.PhyAddr, pSegMan_8(D)->CurrSeg.PhyAddr
	ldr	r3, [r4, #20]	@ pSegMan_8(D)->CurrSeg.LenInByte, pSegMan_8(D)->CurrSeg.LenInByte
	rsb	ip, r1, ip	@ D.33711, D.33710, pSegMan_8(D)->CurrSeg.VirAddr
	rsb	r2, r1, r2	@ D.33710, D.33710, pSegMan_8(D)->CurrSeg.PhyAddr
	strb	r5, [r4, #93]	@ D.33712, pSegMan_8(D)->Pack.StreamPack[0].IsLastSeg
	add	r3, r3, r1	@ D.33710, pSegMan_8(D)->CurrSeg.LenInByte, D.33710
	str	ip, [r4, #88]	@ D.33711, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	str	r3, [r4, #100]	@ D.33710, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	str	r2, [r4, #96]	@ D.33710, pSegMan_8(D)->Pack.StreamPack[0].PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->CurrSeg.StreamID
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	str	r3, [r4, #104]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	bl	__memzero	@
	b	.L302	@
.L292:
	ldr	r1, .L318+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33709,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L319:
	.align	2
.L318:
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
	ldr	r1, .L349	@,
	ldr	r8, [r6, #3128]	@ ChanID, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	dprint_vfmw	@
	ldr	r2, [r4, #16]	@, pSegMan_7(D)->CurrSeg.PhyAddr
	mov	r0, #22	@,
	ldr	r1, .L349+4	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #20]	@, pSegMan_7(D)->CurrSeg.LenInByte
	ldr	r1, .L349+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5]	@ D.33740, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pstExtraData
	ldr	r3, [r2, #388]	@ D.33738, _15->StdExt.Vc1Ext.IsAdvProfile
	cmp	r3, #1	@ D.33738,
	bhi	.L343	@,
	ldr	r1, [r2, #392]	@ _15->StdExt.Vc1Ext.CodecVersion, _15->StdExt.Vc1Ext.CodecVersion
	cmp	r1, #8	@ _15->StdExt.Vc1Ext.CodecVersion,
	bgt	.L344	@,
	add	r7, r5, #77824	@ tmp241, pstCtx,
	uxtb	r3, r3	@ D.33742, D.33738
	cmp	r3, #1	@ D.33742,
	strb	r3, [r7, #3544]	@ D.33742, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.PreParseInfo.IsAdvProfile
	ldr	r3, [r2, #392]	@ _15->StdExt.Vc1Ext.CodecVersion, _15->StdExt.Vc1Ext.CodecVersion
	strb	r3, [r7, #3546]	@ _15->StdExt.Vc1Ext.CodecVersion, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.PreParseInfo.CodecVersion
	beq	.L345	@,
	ldrb	r3, [r4, #14]	@ zero_extendqisi2	@ pSegMan_7(D)->CurrSeg.IsStreamEnd, pSegMan_7(D)->CurrSeg.IsStreamEnd
	cmp	r3, #1	@ pSegMan_7(D)->CurrSeg.IsStreamEnd,
	beq	.L346	@,
	add	r7, r4, #88	@ D.33746, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r7	@, D.33746
	bl	memcpy	@
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	bl	__memzero	@
	ldr	r3, [r4, #100]	@ pSegMan_7(D)->Pack.StreamPack[0].LenInByte, pSegMan_7(D)->Pack.StreamPack[0].LenInByte
	cmp	r3, #15	@ pSegMan_7(D)->Pack.StreamPack[0].LenInByte,
	ldrls	r1, .L349+12	@,
	bls	.L342	@,
	add	r2, r5, #80896	@, pstCtx,
	mov	r1, #16	@,
	add	r2, r2, #472	@,,
	ldr	r0, [r4, #88]	@, pSegMan_7(D)->Pack.StreamPack[0].VirAddr
	bl	Vc1SMPSeqHdr	@
	cmp	r0, #0	@,
	ldrne	r1, .L349+16	@,
	bne	.L342	@,
	ldr	ip, [r4, #100]	@ pSegMan_7(D)->Pack.StreamPack[0].LenInByte, pSegMan_7(D)->Pack.StreamPack[0].LenInByte
	mov	r1, r7	@, D.33746
	ldr	r2, [r4, #88]	@ pSegMan_7(D)->Pack.StreamPack[0].VirAddr, pSegMan_7(D)->Pack.StreamPack[0].VirAddr
	mov	r0, r5	@, pstCtx
	ldr	r3, [r4, #96]	@ pSegMan_7(D)->Pack.StreamPack[0].PhyAddr, pSegMan_7(D)->Pack.StreamPack[0].PhyAddr
	sub	ip, ip, #16	@ D.33739, pSegMan_7(D)->Pack.StreamPack[0].LenInByte,
	add	r2, r2, #16	@ D.33748, pSegMan_7(D)->Pack.StreamPack[0].VirAddr,
	str	ip, [r4, #100]	@ D.33739, pSegMan_7(D)->Pack.StreamPack[0].LenInByte
	str	r2, [r4, #88]	@ D.33748, pSegMan_7(D)->Pack.StreamPack[0].VirAddr
	add	r3, r3, #16	@ D.33739, pSegMan_7(D)->Pack.StreamPack[0].PhyAddr,
	str	r3, [r4, #96]	@ D.33739, pSegMan_7(D)->Pack.StreamPack[0].PhyAddr
	bl	VC1DEC_Decode	@
	mov	r0, r7	@, D.33746
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	__memzero	@
.L342:
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	ldr	r1, [r4, #104]	@, pSegMan_7(D)->Pack.StreamPack[0].StreamID
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, .L349+20	@ tmp237,
	ldr	r3, [r3]	@ D.33747, g_event_report
	cmp	r3, #0	@ D.33747,
	ldmeqfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	mov	r2, #0	@,
	mov	r1, #113	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	bx	r3	@ D.33747
.L343:
	ldr	r1, .L349+24	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L344:
	ldr	r1, .L349+28	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	dprint_vfmw	@
.L346:
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	ldr	r1, [r4, #24]	@, pSegMan_7(D)->CurrSeg.StreamID
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	SM_ReleaseStreamSeg	@
.L345:
	mov	r0, r5	@, pstCtx
	bl	VC1_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L347	@,
.L324:
	mov	r1, r4	@, pSegMan
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L348	@,
.L326:
	ldr	r4, [r5, #4]	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam
	cmp	r4, #0	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r0, [r7, #455]	@ zero_extendqisi2	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L349+32	@,
	bl	dprint_vfmw	@
	ldr	r0, [r6, #3128]	@, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r7, #455]	@ MEM[(struct VC1_CTX_S *)pstCtx_5(D)].pVc1DecParam, MEM[(struct VC1_CTX_S *)pstCtx_5(D)].CodecInfo.IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L348:
	add	r4, r4, #88	@ D.33744, pSegMan,
	mov	r0, r5	@, pstCtx
	mov	r1, r4	@, D.33744
	bl	VC1DEC_Decode	@
	mov	r0, r4	@, D.33744
	mov	r1, #160	@,
	bl	__memzero	@
	b	.L326	@
.L347:
	ldr	r3, .L349+36	@ tmp179,
	ldr	r3, [r3, r8, asl #2]	@ D.33743, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L325	@,
	ldr	r3, [r3, #1616]	@ _28->stSynExtraData.s32DSDWaitFlag, _28->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _28->stSynExtraData.s32DSDWaitFlag,
	bne	.L324	@,
.L325:
	add	r1, r7, #288	@, tmp241,
	mov	r0, r5	@, pstCtx
	bl	VC1DEC_Decode	@
	b	.L324	@
.L350:
	.align	2
.L349:
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
	beq	.L357	@,
.L352:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L358	@,
.L354:
	ldr	r4, [r4, #4]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam
	cmp	r4, #0	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r0, [r5, #4081]	@ zero_extendqisi2	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L360	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #4081]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L358:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L354	@
.L357:
	ldr	r3, .L360+4	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.33768, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L359	@,
.L353:
	add	r1, r4, #72704	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L352	@
.L359:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L352	@,
	b	.L353	@
.L361:
	.align	2
.L360:
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
	beq	.L368	@,
.L363:
	add	r5, r4, #20480	@ tmp147, pstCtx,
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L369	@,
.L365:
	ldr	r4, [r4, #1036]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam
	cmp	r4, #0	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldrb	r0, [r5, #2516]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, .L371	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #2516]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L369:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L365	@
.L368:
	ldr	r3, .L371+4	@ tmp126,
	ldr	r3, [r3, r5, asl #2]	@ D.33780, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L370	@,
.L364:
	add	r1, r4, #15680	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L363	@
.L370:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L363	@,
	b	.L364	@
.L372:
	.align	2
.L371:
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
	bne	.L374	@,
	ldr	r3, .L381	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.33792, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L379	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
.L374:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #224]	@, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L380	@,
.L376:
	ldr	r4, [r4, #4]	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam
	cmp	r4, #0	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r0, [r5, #740]	@ zero_extendqisi2	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L381+4	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #224]	@, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #740]	@ MEM[(struct AVS_CTX_S *)pstCtx_4(D)].pAvsDecParam, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L379:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L374	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
	b	.L374	@
.L380:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	AVSDEC_Decode	@
	b	.L376	@
.L382:
	.align	2
.L381:
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
	b	.L383	@
.L386:
	.word	.L385
	.word	.L387
	.word	.L388
	.word	.L389
	.word	.L390
	.word	.L391
	.word	.L392
	.word	.L383
	.word	.L383
	.word	.L383
	.word	.L393
	.word	.L393
	.word	.L393
	.word	.L394
	.word	.L390
.L394:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP8	@
.L385:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L387:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VC1	@
.L388:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG4	@
.L389:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L390:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H263	@
.L391:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_DIVX3	@
.L392:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_AVS	@
.L393:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_VP6	@
.L383:
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
	b	.L396	@
.L398:
	.word	.L395
	.word	.L395
	.word	.L399
	.word	.L395
	.word	.L396
	.word	.L400
	.word	.L401
	.word	.L396
	.word	.L396
	.word	.L396
	.word	.L402
	.word	.L402
	.word	.L402
	.word	.L403
.L401:
	ldr	r1, .L418	@,
	mov	r0, #22	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L403:
	ldr	r4, [r1]	@ D.33805, MEM[(struct VP8_CTX_S *)pCtx_8(D)].pstExtraData
	add	r1, r1, #8192	@ tmp157, pCtx,
	ldr	r0, [r1, #328]	@, MEM[(struct VP8_CTX_S *)pCtx_8(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_28 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_28 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_28 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_28 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L407	@,
	ldr	r1, .L418+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L407:
	add	r0, r4, #224	@, D.33805,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L399:
	add	r4, r1, #20480	@ tmp135, pCtx,
	ldr	r5, [r4, #1580]	@ D.33805, MEM[(struct MP4_CTX_S *)pCtx_8(D)].pstExtraData
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_8(D)].ChanID
	ldr	r1, [r5, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_10 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_10 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_10 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_10 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L404	@,
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_8(D)].ChanID
	ldr	r1, [r5, #320]	@, MEM[(struct STREAM_SEG_PACKET_S *)_10 + 136B].Pack.StreamPack[1].StreamID
	bl	SM_ReleaseStreamSeg	@
.L404:
	add	r0, r5, #224	@, D.33805,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L402:
	ldr	r4, [r1]	@ D.33805, MEM[(struct VP6_CTX_S *)pCtx_8(D)].pstExtraData
	add	r1, r1, #12288	@ tmp165, pCtx,
	ldr	r0, [r1, #712]	@, MEM[(struct VP6_CTX_S *)pCtx_8(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_20 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_20 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_20 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_20 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L407	@,
	ldr	r1, .L418+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L407	@
.L400:
	ldr	r4, [r1]	@ D.33805, MEM[(struct DIVX3_CTX_S *)pCtx_8(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_36 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_36 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_36 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L407	@,
	add	r3, r1, #24576	@ tmp151, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_36 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2416]	@, MEM[(struct DIVX3_CTX_S *)pCtx_8(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L407	@
.L395:
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L396:
	mov	r2, r0	@, VidStd
	ldr	r1, .L418+12	@,
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	dprint_vfmw	@
.L419:
	.align	2
.L418:
	.word	.LC27
	.word	.LC28
	.word	.LC29
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
	b	.L421	@
.L423:
	.word	.L422
	.word	.L424
	.word	.L425
	.word	.L426
	.word	.L421
	.word	.L427
	.word	.L428
	.word	.L421
	.word	.L421
	.word	.L421
	.word	.L429
	.word	.L429
	.word	.L429
	.word	.L430
.L430:
	ldr	r4, [r1]	@ D.33814, MEM[(struct VP8_CTX_S *)pCtx_7(D)].pstExtraData
	add	r1, r1, #8192	@ tmp143, pCtx,
	ldr	r0, [r1, #328]	@, MEM[(struct VP8_CTX_S *)pCtx_7(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_21 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_21 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_21 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_21 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L433	@,
	ldr	r1, .L441	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
.L433:
	add	r0, r4, #224	@, D.33814,
	mov	r1, #160	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	__memzero	@
.L422:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	H264_ClearCurrPic	@
.L424:
	add	r3, r1, #110592	@ tmp137, pCtx,
	add	r0, r1, #77824	@, pCtx,
	add	r0, r0, #448	@,,
	ldr	r1, [r3, #3128]	@, MEM[(struct VC1_CTX_S *)pCtx_7(D)].ChanID
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	VC1_ClearCurPic	@
.L425:
	mov	r0, r1	@, pCtx
	str	r1, [sp, #4]	@ pCtx, %sfp
	bl	MP4_ClearCurPic	@
	ldr	r1, [sp, #4]	@ pCtx, %sfp
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	MP4_Clean_HeadPacket	@
.L426:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	MP2_ClearCurPic	@
.L427:
	ldr	r4, [r1]	@ D.33814, MEM[(struct DIVX3_CTX_S *)pCtx_7(D)].pstExtraData
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_32 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_32 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_32 + 136B].Pack.StreamPack[0].IsLastSeg,
	bne	.L433	@,
	add	r3, r1, #24576	@ tmp132, pCtx,
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_32 + 136B].Pack.StreamPack[0].StreamID
	ldr	r0, [r3, #2416]	@, MEM[(struct DIVX3_CTX_S *)pCtx_7(D)].ChanID
	bl	SM_ReleaseStreamSeg	@
	b	.L433	@
.L428:
	mov	r0, r1	@, pCtx
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	AVS_ClearCurPic	@
.L429:
	ldr	r4, [r1]	@ D.33814, MEM[(struct VP6_CTX_S *)pCtx_7(D)].pstExtraData
	add	r1, r1, #12288	@ tmp151, pCtx,
	ldr	r0, [r1, #712]	@, MEM[(struct VP6_CTX_S *)pCtx_7(D)].ChanID
	ldr	r1, [r4, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_13 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r4, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_13 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_13 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_13 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L433	@,
	ldr	r1, .L441+4	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	b	.L433	@
.L421:
	mov	r2, r0	@, VidStd
	ldr	r1, .L441+8	@,
	mov	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	dprint_vfmw	@
.L442:
	.align	2
.L441:
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
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.33823, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	add	r2, r3, #73	@ tmp127, D.33823,
	cmp	r3, #0	@ D.33823,
	cmpne	r3, #179	@, D.33823,
	uxtb	r2, r2	@ tmp129, tmp127
	moveq	ip, #1	@ tmp126,
	movne	ip, #0	@ tmp126,
	cmp	r2, #1	@ tmp129,
	movhi	r2, ip	@, tmp134, tmp126
	orrls	r2, ip, #1	@,, tmp134, tmp126
	cmp	r2, #0	@ tmp134,
	beq	.L447	@,
	ldr	r2, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r2, #0	@ *pNewPicDetector_10(D),
	bne	.L447	@,
	mov	r3, #1	@ tmp136,
	str	r3, [r0]	@ tmp136, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.33823, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L444:
	cmp	r3, #0	@ D.33823,
	streq	r3, [r0]	@ D.33823, *pNewPicDetector_10(D)
	mov	r0, r2	@, ret
	bx	lr	@
.L447:
	mvn	r2, #0	@ ret,
	b	.L444	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegMpeg4
	.type	CheckNewPicSegMpeg4, %function
CheckNewPicSegMpeg4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.33829, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	cmp	r3, #179	@ D.33829,
	cmpne	r3, #176	@, D.33829,
	add	ip, r3, #75	@ tmp134, D.33829,
	moveq	lr, #1	@ tmp129,
	movne	lr, #0	@ tmp129,
	uxtb	ip, ip	@ tmp136, tmp134
	cmp	r3, #47	@ D.33829,
	orrls	lr, lr, #1	@,, tmp133, tmp129
	cmp	ip, #1	@ tmp136,
	movhi	ip, lr	@, tmp141, tmp133
	orrls	ip, lr, #1	@,, tmp141, tmp133
	cmp	ip, #0	@ tmp141,
	bne	.L461	@,
.L449:
	cmp	r2, #1	@ IsShortHead,
	bne	.L453	@,
.L450:
	mov	r3, #1	@ tmp143,
	str	r3, [r0]	@ tmp143, *pNewPicDetector_11(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.33829, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	mov	r2, #0	@ ret,
.L451:
	cmp	r3, #182	@ D.33829,
	moveq	r3, #0	@ tmp144,
	streq	r3, [r0]	@ tmp144, *pNewPicDetector_11(D)
	mov	r0, r2	@, ret
	ldr	pc, [sp], #4	@
.L461:
	ldr	ip, [r0]	@ *pNewPicDetector_11(D), *pNewPicDetector_11(D)
	cmp	ip, #0	@ *pNewPicDetector_11(D),
	beq	.L450	@,
	b	.L449	@
.L453:
	mvn	r2, #0	@ ret,
	b	.L451	@
	.fnend
	.size	CheckNewPicSegMpeg4, .-CheckNewPicSegMpeg4
	.align	2
	.global	CheckNewPicSegAVS
	.type	CheckNewPicSegAVS, %function
CheckNewPicSegAVS:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.33836, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	sub	r2, r3, #179	@ D.33833, D.33836,
	clz	r2, r2	@ D.33833, D.33833
	add	ip, r3, #74	@ tmp129, D.33836,
	mov	r2, r2, lsr #5	@ D.33833, D.33833,
	uxtb	ip, ip	@ tmp131, tmp129
	cmp	r3, #176	@ D.33836,
	movne	lr, r2	@, tmp128, D.33833
	orreq	lr, r2, #1	@,, tmp128, D.33833
	cmp	ip, #1	@ tmp131,
	movhi	ip, lr	@, tmp136, tmp128
	orrls	ip, lr, #1	@,, tmp136, tmp128
	cmp	ip, #0	@ tmp136,
	beq	.L466	@,
	ldr	ip, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	ip, #0	@ *pNewPicDetector_10(D),
	bne	.L466	@,
	mov	r3, #1	@ tmp138,
	str	r3, [r0]	@ tmp138, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.33836, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	sub	r2, r3, #179	@ D.33833, D.33836,
	clz	r2, r2	@ D.33833, D.33833
	mov	r2, r2, lsr #5	@ D.33833, D.33833,
.L463:
	cmp	r3, #182	@ D.33836,
	movne	r3, r2	@, tmp145, D.33833
	orreq	r3, r2, #1	@,, tmp145, D.33833
	cmp	r3, #0	@ tmp145,
	movne	r3, #0	@ tmp146,
	strne	r3, [r0]	@ tmp146, *pNewPicDetector_10(D)
	mov	r0, ip	@, ret
	ldr	pc, [sp], #4	@
.L466:
	mvn	ip, #0	@ ret,
	b	.L463	@
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
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.33840, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	sub	r3, r2, #12	@ tmp122, D.33840,
	cmp	r2, #10	@ D.33840,
	cmpne	r3, #3	@, tmp122,
	bhi	.L475	@,
	ldr	r3, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r3, #0	@ *pNewPicDetector_10(D),
	bne	.L475	@,
	mov	r2, #1	@ tmp130,
	str	r2, [r0]	@ tmp130, *pNewPicDetector_10(D)
	ldrb	r2, [r1, #3]	@ zero_extendqisi2	@ D.33840, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L472:
	cmp	r2, #13	@ D.33840,
	moveq	r2, #0	@ tmp131,
	streq	r2, [r0]	@ tmp131, *pNewPicDetector_10(D)
	mov	r0, r3	@, ret
	bx	lr	@
.L475:
	mvn	r3, #0	@ ret,
	b	.L472	@
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
	b	.L477	@
.L479:
	.word	.L478
	.word	.L480
	.word	.L481
	.word	.L482
	.word	.L477
	.word	.L477
	.word	.L483
.L483:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegAVS	@
.L478:
	mov	r1, ip	@, pu8
	b	H264_IsNewPicNal	@
.L480:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegVC1	@
.L481:
	mov	r2, r3	@, IsShortHead
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg4	@
.L482:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg2	@
.L477:
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
	beq	.L501	@,
.L485:
	ldrb	lr, [ip]	@ zero_extendqisi2	@ D.33849, *pu8_6
	ldrb	r4, [ip, #1]	@ zero_extendqisi2	@ D.33849, MEM[(HI_U8 *)pu8_6 + 1B]
	cmp	lr, #0	@ D.33849,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ D.33849, MEM[(HI_U8 *)pu8_6 + 2B]
	bne	.L488	@,
	cmp	r4, #0	@ D.33849,
	bne	.L488	@,
	cmp	ip, #1	@ D.33849,
	bne	.L488	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L501:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ *pStreamSeg_5(D), *pStreamSeg_5(D)
	ands	r3, r3, #1	@ IsShortHead, *pStreamSeg_5(D),
	beq	.L485	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L488:
	str	ip, [sp]	@ D.33849,
	mov	r3, r4	@, D.33849
	mov	r2, lr	@, D.33849
	ldr	r1, .L502	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L503:
	.align	2
.L502:
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
	ldr	r3, .L511	@ tmp150,
	add	r0, r3, r0, lsl #2	@ tmp151, tmp150, ChanID,
	ldr	ip, [r0, #24]	@ D.33865, pstVdecUsdPool
	cmp	ip, #0	@ D.33865,
	beq	.L510	@,
.L505:
	mov	r0, #0	@ tmp156,
	add	r1, ip, #205824	@ D.33868, ivtmp.154,
	mov	r3, ip	@ ivtmp.154, D.33865
	mov	r2, r0	@ tmp160, tmp156
	str	r0, [ip]	@ tmp156, _16->s32AccessIdx
.L507:
	str	r2, [r3, #1044]	@ tmp160, MEM[base: _22, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.154, ivtmp.154,
	str	r2, [r3, #-32]	@ tmp160, MEM[base: _22, offset: 1040B]
	cmp	r3, r1	@ ivtmp.154, D.33868
	bne	.L507	@,
	mov	r0, #0	@ D.33866,
	bx	lr	@
.L510:
	cmp	r1, #0	@ Viraddr,
	str	r1, [r0, #24]	@ Viraddr, pstVdecUsdPool
	movne	ip, r1	@ D.33865, Viraddr
	bne	.L505	@
.L508:
	mvn	r0, #0	@ D.33866,
	bx	lr	@
.L512:
	.align	2
.L511:
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
	ldr	r3, .L514	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #24]	@ tmp114, pstVdecUsdPool
	bx	lr	@
.L515:
	.align	2
.L514:
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
	ldr	r3, .L521	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp118, ChanID,
	ldr	r0, [r0, #24]	@ D.33883, pstVdecUsdPool
	cmp	r0, #0	@ D.33883,
	beq	.L519	@,
	mov	ip, #0	@ tmp121,
	add	r1, r0, #205824	@ D.33885, ivtmp.168,
	mov	r3, r0	@ ivtmp.168, D.33883
	mov	r2, ip	@ tmp125, tmp121
	str	ip, [r0]	@ tmp121, _7->s32AccessIdx
.L518:
	str	r2, [r3, #1044]	@ tmp125, MEM[base: _18, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.168, ivtmp.168,
	str	r2, [r3, #-32]	@ tmp125, MEM[base: _18, offset: 1040B]
	cmp	r3, r1	@ ivtmp.168, D.33885
	bne	.L518	@,
	mov	r0, #0	@ D.33882,
	bx	lr	@
.L519:
	mvn	r0, #0	@ D.33882,
	bx	lr	@
.L522:
	.align	2
.L521:
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
	ldr	r3, .L532	@ tmp122,
	add	r0, r3, r0, lsl #2	@ tmp123, tmp122, ChanID,
	ldr	r0, [r0, #24]	@ D.33898, pstVdecUsdPool
	cmp	r0, #0	@ D.33898,
	bxeq	lr	@
	mov	r3, r0	@ ivtmp.179, D.33898
	mov	r2, #0	@ i,
	b	.L526	@
.L525:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #1072	@ ivtmp.179, ivtmp.179,
	cmp	r2, #192	@ i,
	beq	.L531	@,
.L526:
	ldr	r1, [r3, #1044]	@ MEM[base: _26, offset: 1044B], MEM[base: _26, offset: 1044B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1044B],
	bne	.L525	@,
	ldr	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[base: _26, offset: 1040B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1040B],
	bne	.L525	@,
	mov	r3, #1072	@ tmp128,
	movw	ip, #1076	@ tmp168,
	mul	r2, r3, r2	@ tmp127, tmp128, i
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	lr, #1064	@ tmp138,
	add	r3, r0, r2	@ tmp132, D.33898, tmp127
	add	r2, r2, #8	@ tmp129, tmp127,
	mov	r4, #0	@ tmp140,
	mov	r5, #0	@,
	str	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].dnr_used_flag
	add	r0, r0, r2	@ pstUsrDat, D.33898, tmp129
	str	r1, [r3, #1056]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].data_size
	str	r1, [r3, #1052]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_img_cnt
	str	r1, [r3, #1048]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_cnt
	strb	r1, [r3, #1072]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1072B]
	strb	r1, [r3, #1073]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1073B]
	strb	r1, [r3, #1074]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1074B]
	strd	r4, [r3, lr]	@ tmp140, tmp132, tmp138
	strh	r1, [r3, ip]	@ movhi	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1076B]
	ldmfd	sp!, {r4, r5, pc}	@
.L531:
	mov	r0, #0	@ pstUsrDat,
	bx	lr	@
.L533:
	.align	2
.L532:
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
	beq	.L561	@,
	ldrh	r3, [r0, #4]	@ pstVoQue_7(D)->history, pstVoQue_7(D)->history
	ldrh	lr, [r0, #8]	@ D.33914, pstVoQue_7(D)->tail
	and	r3, r3, #63	@ i, pstVoQue_7(D)->history,
	cmp	lr, r3	@ D.33914, i
	beq	.L554	@,
.L553:
	add	r2, r0, r3, lsl #2	@ tmp128, pstVoQue, i,
	add	r3, r3, #1	@ i, i,
	and	r3, r3, #63	@ i, i,
	ldr	r2, [r2, #12]	@ D.33912, pstVoQue_7(D)->image_ptr
	cmp	r2, #0	@ D.33912,
	beq	.L552	@,
	ldr	ip, [r2, #176]	@ _13->image_id, _13->image_id
	ldr	r2, [r1, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	cmp	ip, r2	@ _13->image_id, p_image_4(D)->image_id
	beq	.L555	@,
.L552:
	cmp	r3, lr	@ i, D.33914
	bne	.L553	@,
.L554:
	mvn	r0, #0	@ D.33910,
	ldmfd	sp!, {r4, pc}	@
.L555:
	mov	r0, #0	@ D.33910,
	ldmfd	sp!, {r4, pc}	@
.L561:
	mov	r0, r1	@ p_image, p_image
	ldr	r1, .L562	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.33910,
	ldmfd	sp!, {r4, pc}	@
.L563:
	.align	2
.L562:
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
	b	.L565	@
.L567:
	.word	.L566
	.word	.L568
	.word	.L569
	.word	.L570
	.word	.L571
	.word	.L572
.L572:
	mov	r1, #0	@ tmp122,
	mov	r2, #2	@ tmp123,
	str	r1, [r0, #60]	@ tmp122, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp123, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L566:
	mov	r1, #0	@ tmp112,
	mov	r2, #1	@ tmp113,
	str	r1, [r0, #60]	@ tmp112, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp113, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L568:
	mov	r1, #4	@ tmp114,
	mov	r2, #3	@ tmp115,
	str	r1, [r0, #60]	@ tmp114, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp115, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L569:
	mov	r1, #16	@ tmp116,
	mov	r2, #9	@ tmp117,
	str	r1, [r0, #60]	@ tmp116, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp117, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L570:
	mov	r1, #221	@ tmp118,
	mov	r2, #100	@ tmp119,
	str	r1, [r0, #60]	@ tmp118, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp119, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L571:
	mov	r1, #235	@ tmp120,
	mov	r2, #100	@ tmp121,
	str	r1, [r0, #60]	@ tmp120, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp121, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L565:
	mov	r0, #1	@ tmp125,
	mov	r2, r1	@, Code
	mov	ip, #0	@ tmp124,
	str	r0, [r3, #64]	@ tmp125, pImg_4(D)->u32AspectHeight
	ldr	r1, .L574	@,
	str	ip, [r3, #60]	@ tmp124, pImg_4(D)->u32AspectWidth
	b	dprint_vfmw	@
.L575:
	.align	2
.L574:
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
	ldr	r0, [r0, #296]	@ D.33920, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_2(D) + 272B].LastImageIdPlus2
	cmp	r0, #1	@ D.33920,
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
	.type	__func__.32084, %object
	.size	__func__.32084, 20
__func__.32084:
	.ascii	"SYNTAX_ReceiveImage\000"
	.type	__func__.32127, %object
	.size	__func__.32127, 20
__func__.32127:
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
	.type	last_rec_pos_time.32048, %object
	.size	last_rec_pos_time.32048, 16
last_rec_pos_time.32048:
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
