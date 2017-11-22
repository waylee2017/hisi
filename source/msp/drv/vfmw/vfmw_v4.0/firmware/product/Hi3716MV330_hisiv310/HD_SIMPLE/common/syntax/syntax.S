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
@ -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT
@ -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1
@ -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT -D VFMW_SYSTEM_REG_DISABLE
@ -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2 -D CHIP_TYPE_hi3716mv330
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
	add	r2, r2, #100	@ D.31298, pstVoQue_3(D)->ResetMagicWord,
	strh	r3, [r4]	@ movhi	@ tmp115, pstVoQue_3(D)->max_queue_size
	str	r2, [r4, #344]	@ D.31298, pstVoQue_3(D)->ResetMagicWord
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
	.word	.L5
	.word	.L9
	.word	.L10
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L5
	.word	.L11
.L11:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	USERDEC_RecycleImage	@
.L10:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	MPEG2DEC_RecycleImage	@
.L9:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	MPEG4DEC_RecycleImage	@
.L7:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	H264DEC_RecycleImage	@
.L5:
	bx	lr	@
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
	sub	r2, r2, #8	@ D.31308, eVidStd,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldrd	r4, [r3, #56]	@ D.31307, tmp125,
	subs	r6, r0, r4	@ D.31307, D.31307, D.31307
	and	r4, r4, r5	@ tmp130, D.31307, D.31307
	sbc	r7, r1, r5	@ D.31307, D.31307, D.31307
	cmp	r7, #0	@ D.31307,
	cmpeq	r6, #5	@ D.31307,
	movls	r3, #1	@ tmp128,
	movhi	r3, #0	@ tmp128,
	adds	r4, r4, #1	@ tmp132, tmp130,
	movne	r4, #1	@ tmp132,
	tst	r3, r4	@ tmp128, tmp132
	beq	.L26	@,
	cmp	r2, #1	@ D.31308,
	mvnhi	r0, #0	@ InferedPTS,
	mvnhi	r1, #0	@ InferedPTS,
	bls	.L16	@,
.L14:
	ldmfd	sp!, {r4, r5, r6, r7}	@
	bx	lr	@
.L26:
	cmp	r2, #1	@ D.31308,
	bhi	.L14	@,
	ldr	r3, [ip, #140]	@ p_image_6(D)->format, p_image_6(D)->format
	and	r3, r3, #3	@ D.31308, p_image_6(D)->format,
	cmp	r3, #2	@ D.31308,
	bne	.L14	@,
.L16:
	mvn	r2, #0	@ tmp142,
	str	r2, [ip]	@ tmp142, p_image_6(D)->SrcPts
	mov	r0, r2	@ InferedPTS, tmp142
	mov	r1, r2	@ InferedPTS, tmp143
	str	r2, [ip, #4]	@ tmp143, p_image_6(D)->SrcPts
	b	.L14	@
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
	mov	r6, r0	@ D.31311,
	mov	r7, r1	@ D.31311,
	mov	r0, #29	@,
	strd	r6, [r4, #8]	@ D.31311, p_image,
	ldr	r1, .L29	@,
	strd	r6, [sp]	@ D.31311,
	strd	r8, [sp, #8]	@ p_image_4(D)->Usertag,,
	bl	dprint_vfmw	@
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r6, r7, r8, r9, pc}	@
.L30:
	.align	2
.L29:
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
	beq	.L32	@,
	ldr	r3, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	cmp	r3, #0	@ p_image_10(D)->disp_height,
	bne	.L58	@,
.L32:
	ldr	r2, [r4, #144]	@ D.31315, p_image_10(D)->image_width
	ldr	r3, [r4, #148]	@ D.31315, p_image_10(D)->image_height
	mov	r1, r2, lsr #1	@ D.31315, D.31315,
	str	r2, [r4, #152]	@ D.31315, p_image_10(D)->disp_width
	str	r3, [r4, #156]	@ D.31315, p_image_10(D)->disp_height
	mov	r3, r3, lsr #1	@ D.31315, D.31315,
	str	r1, [r4, #160]	@ D.31315, p_image_10(D)->disp_center_x
	str	r3, [r4, #164]	@ D.31315, p_image_10(D)->disp_center_y
.L33:
	str	r2, [r5, #300]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageWidth
	ldr	r3, [r4, #148]	@ D.31315, p_image_10(D)->image_height
	ldr	r2, [r5, #280]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	str	r3, [r5, #304]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageHeight
	ldr	r3, [r4, #140]	@ p_image_10(D)->format, p_image_10(D)->format
	ubfx	r3, r3, #5, #3	@ D.31315, p_image_10(D)->format,,
	str	r3, [r5, #308]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].VideoFormat
	ldr	r3, [r4, #140]	@ D.31315, p_image_10(D)->format
	str	r3, [r5, #312]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageFormat
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.31315, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r3, [r4, #184]	@ D.31315, p_image_10(D)->seq_cnt
	ldr	r6, [r4, #140]	@ D.31315, p_image_10(D)->format
	cmp	r3, r2	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	ldr	r8, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	ldrh	r2, [r4, #164]	@ D.31315, p_image_10(D)->disp_center_y
	ubfx	r10, r6, #14, #3	@ AspectRatio, D.31315,,
	ldr	r9, [r4, #160]	@ p_image_10(D)->disp_center_x, p_image_10(D)->disp_center_x
	ubfx	r6, r6, #8, #2	@ ScanType, D.31315,,
	ldrh	r1, [r4, #152]	@ D.31315, p_image_10(D)->disp_width
	strne	r3, [r5, #320]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqCnt
	ldr	r3, [r5, #316]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	orr	r9, r2, r9, asl #16	@ dcenter, D.31315, p_image_10(D)->disp_center_x,
	orr	r8, r1, r8, asl #16	@ dsize, D.31315, p_image_10(D)->disp_height,
	add	r2, r3, #1	@ D.31315, D.31315,
	str	r2, [r5, #316]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	str	r3, [r4, #188]	@ D.31315, p_image_10(D)->seq_img_cnt
	ldr	r3, [r5, #272]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
	cmp	r3, r10	@ D.31315, AspectRatio
	beq	.L35	@,
	ldr	r2, .L60	@ tmp206,
	ldr	ip, [r2]	@ D.31317, g_event_report
	cmp	ip, #0	@ D.31317,
	beq	.L36	@,
	strb	r3, [sp]	@ D.31315, para
	mov	r2, sp	@,
	strb	r10, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r0, r7	@, ChanID
	blx	ip	@ D.31317
.L36:
	str	r10, [r5, #272]	@ AspectRatio, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
.L35:
	ldr	r3, [r5, #276]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
	cmp	r3, r6	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, ScanType
	beq	.L37	@,
	ldr	r3, .L60	@ tmp211,
	ldr	r3, [r3]	@ D.31317, g_event_report
	cmp	r3, #0	@ D.31317,
	beq	.L38	@,
	add	r2, sp, #8	@ tmp213,,
	mov	r1, #4	@,
	mov	r0, r7	@, ChanID
	strb	r6, [r2, #-8]!	@ ScanType, para
	blx	r3	@ D.31317
.L38:
	str	r6, [r5, #276]	@ ScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
.L37:
	ldr	r3, [r5, #288]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	cmp	r3, r8	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, dsize
	beq	.L59	@,
.L39:
	ldr	r3, .L60	@ tmp216,
	str	r8, [r5, #288]	@ dsize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	str	r9, [r5, #292]	@ dcenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	ldr	r3, [r3]	@ D.31317, g_event_report
	cmp	r3, #0	@ D.31317,
	beq	.L40	@,
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
	blx	r3	@ D.31317
.L40:
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.31315, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.31315, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.31315, p_image_10(D)->luma_phy_addr
	ldr	r1, [r4, #108]	@ D.31315, p_image_10(D)->chrom_phy_addr
	ldr	r3, [r4, #172]	@ D.31315, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.31315, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.31315, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.31315, D.31315, D.31315
	add	r3, r1, r3	@ D.31315, D.31315, D.31315
	str	r2, [r4, #96]	@ D.31315, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.31315, p_image_10(D)->btm_chrom_phy_addr
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L58:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r2, [r4, #144]	@ D.31315, p_image_10(D)->image_width
	beq	.L33	@,
	b	.L32	@
.L59:
	ldr	r3, [r5, #292]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	cmp	r3, r9	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, dcenter
	bne	.L39	@,
	b	.L40	@
.L61:
	.align	2
.L60:
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
	beq	.L99	@,
	mov	r9, r0	@ ChanID, ChanID
	mov	r7, r1	@ eVidStd, eVidStd
	mov	r0, #2	@,
	ldr	r1, .L102	@,
	mov	r5, r3	@ pstVoQue, pstVoQue
	mov	r8, r2	@ pCtx, pCtx
	bl	dprint_vfmw	@
	ldr	r0, .L102+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r4, [r5, #4]	@ pstVoQue_16(D)->history, pstVoQue_16(D)->history
	ldrh	r3, [r5, #8]	@ D.31327, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, pstVoQue_16(D)->history,
	cmp	r3, r4	@ D.31327, i
	movne	r6, #1000	@ tmp291,
	bne	.L70	@,
	b	.L69	@
.L68:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #8]	@ D.31327, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.31327, i
	beq	.L69	@,
.L70:
	add	ip, r5, r4, lsl #2	@ tmp178, pstVoQue, i,
	ldr	r3, [r10, #176]	@ p_image_11(D)->image_id, p_image_11(D)->image_id
	ldr	r2, [ip, #12]	@ tmp177, pstVoQue_16(D)->image_ptr
	ldr	r2, [r2, #176]	@ D.31329, _22->image_id
	cmp	r2, r3	@ D.31329, p_image_11(D)->image_id
	bne	.L68	@,
	ldr	r1, .L102+8	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	str	r6, [r10, #180]	@ tmp291, p_image_11(D)->error_level
	b	.L68	@
.L69:
	ldr	r2, [r10, #180]	@ D.31329, p_image_11(D)->error_level
	cmp	r2, #100	@ D.31329,
	bhi	.L66	@,
	ldr	r3, [r10, #144]	@ D.31333, p_image_11(D)->image_width
	cmp	r3, #31	@ D.31333,
	bhi	.L100	@,
.L66:
	ldr	r3, [r10, #144]	@ D.31333, p_image_11(D)->image_width
	ldr	r1, [r10, #148]	@ D.31333, p_image_11(D)->image_height
.L71:
	str	r1, [sp]	@ D.31333,
	mov	r0, #0	@,
	ldr	r1, .L102+12	@,
	bl	dprint_vfmw	@
	ldr	r3, [r10, #180]	@ p_image_11(D)->error_level, p_image_11(D)->error_level
	cmp	r3, #1000	@ p_image_11(D)->error_level,
	beq	.L73	@,
	mov	r2, r10	@, p_image
	mov	r1, r8	@, pCtx
	mov	r0, r7	@, eVidStd
	bl	ReturnImageToSyntax	@
.L73:
	ldr	r0, .L102+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.31325,
.L64:
	add	sp, sp, #16	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L100:
	ldr	r1, [r10, #148]	@ D.31333, p_image_11(D)->image_height
	cmp	r1, #31	@ D.31333,
	bls	.L71	@,
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
	ldrh	r3, [r5, #6]	@ D.31327, pstVoQue_16(D)->head
	ldrh	r2, [r5, #4]	@ D.31327, pstVoQue_16(D)->history
	ldr	r1, .L102+16	@,
	stmia	sp, {ip, lr}	@,,
	bl	dprint_vfmw	@
	ldrh	r3, [r5, #8]	@ D.31326, pstVoQue_16(D)->tail
	ldr	r6, .L102+20	@ tmp287,
	rsb	r2, r8, r4	@ tmp202, tmp285, tmp286
	add	r1, r3, #1	@ tmp195, D.31326,
	ldr	r0, .L102+4	@,
	add	r3, r5, r3, lsl #2	@ tmp193, pstVoQue, D.31326,
	and	r1, r1, #63	@ tmp197, tmp195,
	add	r2, r6, r2	@ tmp203, tmp287, tmp202
	str	r10, [r3, #12]	@ p_image, pstVoQue_16(D)->image_ptr
	strh	r1, [r5, #8]	@ movhi	@ tmp197, pstVoQue_16(D)->tail
	ldr	r3, [r10, #128]	@ p_image_11(D)->is_fld_save, p_image_11(D)->is_fld_save
	str	r3, [r2, #20]	@ p_image_11(D)->is_fld_save, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r10, #300]	@ D.31324, p_image_11(D)->ImageDnr.video_standard
	sub	r2, r3, #10	@ D.31329, D.31324,
	cmp	r2, #2	@ D.31329,
	bhi	.L74	@,
	ldr	r2, .L102+24	@ tmp208,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L74	@,
.L75:
	ldr	r3, .L102+28	@ tmp220,
	ldr	r3, [r3]	@ D.31331, g_event_report
	cmp	r3, #0	@ D.31331,
	beq	.L76	@,
	add	r2, sp, #16	@ tmp221,,
	mov	r1, #5	@,
	mov	r0, r9	@, ChanID
	str	r10, [r2, #-4]!	@ p_image, para
	blx	r3	@ D.31331
.L76:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L101	@,
.L78:
	rsb	r7, r8, r4	@ tmp236, tmp285, tmp286
	add	r5, r6, r7	@ tmp237, tmp287, tmp236
	ldr	r3, [r5, #4]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	add	r3, r3, #1	@ D.31329, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum,
	str	r3, [r5, #4]	@ D.31329, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, r7]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	rsb	r1, r1, r0	@ Period, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, CurTime
	mov	r9, r0	@ CurTime,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.31325,
	bcc	.L64	@,
	ldr	r3, [r5, #4]	@ D.31329, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	cmp	r3, #0	@ D.31329,
	beq	.L80	@,
	movw	r0, #10000	@ tmp267,
	mul	r0, r0, r3	@, tmp267, D.31329
	bl	__aeabi_uidiv	@
	str	r0, [r5, #8]	@, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrFrameRate
.L80:
	rsb	r4, r8, r4	@ tmp275, tmp285, tmp286
	mov	r2, #0	@ tmp283,
	add	r3, r6, r4	@ tmp276, tmp287, tmp275
	mov	r0, #1	@ D.31325,
	str	r9, [r6, r4]	@ CurTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	str	r2, [r3, #4]	@ tmp283, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	b	.L64	@
.L74:
	sub	r2, r3, #14	@ D.31324, D.31324,
	bics	r2, r2, #4	@ tmp294, D.31324,
	moveq	r2, #1	@ tmp214,
	movne	r2, #0	@ tmp214,
	cmp	r3, #4	@ D.31324,
	movne	r3, r2	@, tmp219, tmp214
	orreq	r3, r2, #1	@,, tmp219, tmp214
	cmp	r3, #0	@ tmp219,
	beq	.L76	@,
	b	.L75	@
.L101:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L102+4	@ tmp222,
	ldr	r2, .L102+32	@ tmp227,
	add	r9, r3, r9, lsl #2	@ tmp223, tmp222, ChanID,
	ldr	r3, [r9, #8]	@ tmp226, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.31329, tmp226, CurTime
	cmp	r3, r2	@ D.31329, g_TraceFramePeriod
	strhi	r0, [r9, #8]	@ CurTime, last_rec_pos_time
	b	.L78	@
.L99:
	mov	r0, r10	@, p_image
	ldr	r1, .L102+36	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.31325,
	b	.L64	@
.L103:
	.align	2
.L102:
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
	ldrh	r3, [r0, #6]	@ D.31341, pstVoQue_4(D)->head
	ldrh	ip, [r0, #4]	@ D.31341, pstVoQue_4(D)->history
	ldrh	r0, [r0, #8]	@ D.31341, pstVoQue_4(D)->tail
	cmp	r3, ip	@ D.31341, D.31341
	addcc	lr, r3, #64	@ D.31342, D.31341,
	rsbcs	ip, ip, r3	@ ReadNum, D.31341, D.31341
	rsbcc	ip, ip, lr	@ ReadNum, D.31341, D.31342
	cmp	r3, r0	@ D.31341, D.31341
	addhi	r0, r0, #64	@ D.31342, D.31341,
	str	ip, [r1]	@ ReadNum, *pReadImgNum_22(D)
	rsb	r3, r3, r0	@ NewNum, D.31341, D.31342
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
	b	.L118	@
.L114:
	.word	.L117
	.word	.L118
	.word	.L115
	.word	.L116
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L118
	.word	.L117
.L117:
	add	r0, r0, #16	@ pstVoQue, pSynCtx,
	bx	lr	@
.L116:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
	bx	lr	@
.L115:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r0, r0, #88	@ pstVoQue, pstVoQue,
	bx	lr	@
.L118:
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
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
	beq	.L129	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r1	@ p_image, p_image
	ldr	r3, [r0]	@ pSynCtx_7(D)->eVidStd, pSynCtx_7(D)->eVidStd
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r3, #18	@ pSynCtx_7(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_7(D)->eVidStd
	b	.L132	@
.L123:
	.word	.L126
	.word	.L132
	.word	.L124
	.word	.L125
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L132
	.word	.L126
.L126:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L121:
	cmp	r4, #0	@ pstVoQue,
	beq	.L132	@,
	ldr	r0, .L135	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ D.31354, pstVoQue_42->head
	ldrh	r2, [r4, #8]	@ pstVoQue_42->tail, pstVoQue_42->tail
	cmp	r2, r3	@ pstVoQue_42->tail, D.31354
	mvneq	r6, #2	@ ret,
	beq	.L128	@,
	add	r3, r4, r3, lsl #2	@ tmp153, pstVoQue, D.31354,
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [r3, #12]	@, pstVoQue_42->image_ptr
	bl	memcpy	@
	ldr	r1, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldrh	r3, [r4, #6]	@ D.31355, pstVoQue_42->head
	mov	r0, #12	@,
	ldrh	r2, [r4, #4]	@ D.31355, pstVoQue_42->history
	str	r1, [sp, #4]	@ p_image_5(D)->image_id,
	ldrh	ip, [r4, #8]	@ pstVoQue_42->tail, pstVoQue_42->tail
	ldr	r1, .L135+4	@,
	str	ip, [sp]	@ pstVoQue_42->tail,
	bl	dprint_vfmw	@
	ldr	r3, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldr	r2, [r4, #344]	@ pstVoQue_42->ResetMagicWord, pstVoQue_42->ResetMagicWord
	add	r3, r3, r2	@ D.31357, p_image_5(D)->image_id, pstVoQue_42->ResetMagicWord
	str	r3, [r5, #176]	@ D.31357, p_image_5(D)->image_id
	ldr	r3, [r4, #344]	@ D.31357, pstVoQue_42->ResetMagicWord
	str	r3, [r5, #380]	@ D.31357, p_image_5(D)->resetNum
	ldrh	r3, [r4, #6]	@ pstVoQue_42->head, pstVoQue_42->head
	add	r3, r3, r6	@ tmp170, pstVoQue_42->head,
	and	r3, r3, #63	@ tmp172, tmp170,
	strh	r3, [r4, #6]	@ movhi	@ tmp172, pstVoQue_42->head
.L128:
	ldr	r0, .L135	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.31352, ret
.L120:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L125:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L121	@
.L124:
	add	r4, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r4, #88	@ pstVoQue, pstVoQue,
	b	.L121	@
.L132:
	ldr	r2, .L135+8	@,
	mov	r0, #1	@,
	ldr	r1, .L135+12	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.31352,
	b	.L120	@
.L129:
	mvn	r0, #1	@ D.31352,
	bx	lr	@
.L136:
	.align	2
.L135:
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
	ldr	r3, [r0]	@ D.31374, pSynCtx_4(D)->eVidStd
	cmp	r3, #0	@ D.31374,
	bne	.L144	@,
	cmp	r1, #0	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L144:
	cmn	r1, #2	@ RetValue,
	beq	.L142	@,
	cmp	r1, #1	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L142:
	mov	r0, r1	@ ret, RetValue
	bx	lr	@
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
	ldr	r3, [r0]	@ pSynCtx_4(D)->eVidStd, pSynCtx_4(D)->eVidStd
	cmp	r3, #18	@ pSynCtx_4(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_4(D)->eVidStd
	b	.L152	@
.L148:
	.word	.L147
	.word	.L152
	.word	.L149
	.word	.L150
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L152
	.word	.L151
.L151:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L150:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L149:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L147:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	H264DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L152:
	mov	r0, r4	@, pSynCtx
	mvn	r1, #1	@ ret,
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
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
	beq	.L172	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ pSynCtx, pSynCtx
	ldr	r3, [r0]	@ pSynCtx_16(D)->eVidStd, pSynCtx_16(D)->eVidStd
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r8, r1	@ p_image, p_image
	cmp	r3, #18	@ pSynCtx_16(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_16(D)->eVidStd
	b	.L177	@
.L158:
	.word	.L161
	.word	.L177
	.word	.L159
	.word	.L160
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L177
	.word	.L161
.L161:
	add	r5, r0, #16	@ pstVoQue, pSynCtx,
.L156:
	cmp	r5, #0	@ pstVoQue,
	beq	.L177	@,
	ldr	r0, .L180	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	ldr	r2, [r5, #344]	@ pstVoQue_65->ResetMagicWord, pstVoQue_65->ResetMagicWord
	rsb	r3, r2, r3	@ D.31392, pstVoQue_65->ResetMagicWord, p_image_14(D)->image_id
	str	r3, [r8, #176]	@ D.31392, p_image_14(D)->image_id
	ldrh	r4, [r5, #4]	@ pstVoQue_65->history, pstVoQue_65->history
	ldrh	r3, [r5, #6]	@ D.31394, pstVoQue_65->head
	and	r4, r4, #63	@ i, pstVoQue_65->history,
	cmp	r3, r4	@ D.31394, i
	bne	.L171	@,
	b	.L170	@
.L167:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #6]	@ D.31394, pstVoQue_65->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.31394, i
	beq	.L170	@,
.L171:
	add	r6, r4, #2	@ tmp193, i,
	add	r3, r5, r6, lsl #2	@ tmp170, pstVoQue, tmp193,
	ldr	r3, [r3, #4]	@ D.31395, pstVoQue_65->image_ptr
	cmp	r3, #0	@ D.31395,
	beq	.L165	@,
	ldr	lr, [r3, #176]	@ _31->image_id, _31->image_id
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	rsb	lr, lr, r3	@ SameImageFlag, _31->image_id, p_image_14(D)->image_id
	clz	lr, lr	@ SameImageFlag, SameImageFlag
	mov	lr, lr, lsr #5	@ SameImageFlag, SameImageFlag,
	cmp	lr, #0	@ SameImageFlag,
	beq	.L167	@,
.L166:
	ldrh	r0, [r5, #4]	@ D.31397, pstVoQue_65->history
	b	.L169	@
.L175:
	mov	r4, r2	@ i, i
.L169:
	cmp	r4, #0	@ i,
	mov	r2, #63	@ i,
	subne	r2, r4, #1	@ i, i,
	add	ip, r5, r6, lsl #2	@ tmp181, pstVoQue, tmp193,
	add	r3, r2, #2	@ tmp177, i,
	cmp	r4, r0	@ i, D.31397
	add	r1, r5, r3, lsl #2	@ tmp178, pstVoQue, tmp177,
	mov	r6, r3	@ tmp193, tmp177
	ldr	r3, [r1, #4]	@ D.31395, pstVoQue_65->image_ptr
	str	r3, [ip, #4]	@ D.31395, pstVoQue_65->image_ptr
	bne	.L175	@,
	cmp	lr, #1	@ SameImageFlag,
	add	r2, r4, #1	@ tmp183, i,
	and	r2, r2, #63	@ D.31393, tmp183,
	strh	r2, [r5, #4]	@ movhi	@ D.31393, pstVoQue_65->history
	bne	.L167	@,
	ldr	ip, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	mov	r0, #12	@,
	ldrh	r3, [r5, #6]	@ D.31394, pstVoQue_65->head
	ldr	r1, .L180+4	@,
	str	ip, [sp, #4]	@ p_image_14(D)->image_id,
	ldrh	ip, [r5, #8]	@ pstVoQue_65->tail, pstVoQue_65->tail
	str	ip, [sp]	@ pstVoQue_65->tail,
	bl	dprint_vfmw	@
	mov	r1, r8	@, p_image
	mov	r0, r7	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
.L164:
	ldr	r0, .L180	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.31390, ret
.L155:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L165:
	mov	r2, r4	@, i
	ldr	r1, .L180+8	@,
	mov	r0, #12	@,
	bl	dprint_vfmw	@
	mov	lr, #2	@ SameImageFlag,
	b	.L166	@
.L170:
	mvn	r4, #1	@ ret,
	b	.L164	@
.L160:
	add	r5, r0, #72704	@ pstVoQue, pSynCtx,
	add	r5, r5, #648	@ pstVoQue, pstVoQue,
	b	.L156	@
.L159:
	add	r5, r0, #22528	@ pstVoQue, pSynCtx,
	add	r5, r5, #88	@ pstVoQue, pstVoQue,
	b	.L156	@
.L177:
	ldr	r2, .L180+12	@,
	mov	r0, #1	@,
	ldr	r1, .L180+16	@,
	bl	dprint_vfmw	@
	mvn	r0, #1	@ D.31390,
	b	.L155	@
.L172:
	mvn	r0, #1	@ D.31390,
	bx	lr	@
.L181:
	.align	2
.L180:
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
	ldr	r3, [r0]	@ pSynCtx_5(D)->eVidStd, pSynCtx_5(D)->eVidStd
	cmp	r3, #18	@ pSynCtx_5(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_5(D)->eVidStd
	b	.L190	@
.L185:
	.word	.L188
	.word	.L190
	.word	.L186
	.word	.L187
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L190
	.word	.L188
.L188:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L189:
	ldr	r0, .L192	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ pstVoQue_1->head, pstVoQue_1->head
	ldr	r0, .L192	@,
	sub	r3, r3, #1	@ tmp124, pstVoQue_1->head,
	and	r3, r3, #63	@ tmp126, tmp124,
	strh	r3, [r4, #6]	@ movhi	@ tmp126, pstVoQue_1->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.31404,
	ldmfd	sp!, {r4, pc}	@
.L187:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L189	@
.L186:
	add	r4, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r4, #88	@ pstVoQue, pstVoQue,
	b	.L189	@
.L190:
	mvn	r0, #1	@ D.31404,
	ldmfd	sp!, {r4, pc}	@
.L193:
	.align	2
.L192:
	.word	.LANCHOR0
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
	beq	.L197	@,
.L194:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L197:
	add	r6, r5, #12288	@ tmp140, pstCtx,
	ldrb	r0, [r6, #1268]	@ zero_extendqisi2	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag, MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag,
	bne	.L194	@,
	add	r5, r5, #49152	@ tmp144, pstCtx,
	ldr	r1, .L198	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #3688]	@, MEM[(struct H264_CTX_S *)pstCtx_18(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r6, #1268]	@ MEM[(struct H264_CTX_S *)pstCtx_18(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_18(D)].IsStreamEndFlag
	b	.L194	@
.L199:
	.align	2
.L198:
	.word	.LC10
	.fnend
	.size	DecodeStream_H264, .-DecodeStream_H264
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
	beq	.L201	@,
	ldr	r3, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	cmp	r3, #0	@ pSegMan_8(D)->CurrSeg.VirAddr,
	beq	.L201	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.31427, pSegMan_8(D)->CurrSeg.IsLastSeg
	mov	r6, r0	@ ChanID, ChanID
	cmp	r5, #1	@ D.31427,
	beq	.L223	@,
	cmp	r5, #0	@ D.31427,
	beq	.L224	@,
.L208:
	mvn	r0, #0	@ D.31424,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L223:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.31427, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r5, #0	@ D.31427,
	beq	.L225	@,
	cmp	r5, #1	@ D.31427,
	bne	.L208	@,
	ldr	r1, .L227	@ tmp176,
	mov	r3, #64512	@ tmp209,
	ldr	r2, [r4, #100]	@ pSegMan_8(D)->Pack.StreamPack[0].LenInByte, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	movt	r3, 15	@ tmp209,
	ldr	r1, [r1, r0, asl #2]	@ tmp177, s_pstVfmwChan
	ldr	r1, [r1, #880]	@ _39->eVidStd, _39->eVidStd
	cmp	r1, #6	@ _39->eVidStd,
	movne	r3, #1024	@ D.31425,
	cmp	r3, r2	@ D.31425, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	bhi	.L226	@,
	ldr	r1, .L227+4	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #168	@, pSegMan,
	bl	memcpy	@
.L211:
	mov	r0, #0	@ tmp206,
	strb	r0, [r4, #2]	@ tmp206, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L224:
	add	r8, r4, #88	@ D.31428, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, D.31428
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r3, [r4, #2]	@ zero_extendqisi2	@ pSegMan_8(D)->ConvolutionPacketNum, pSegMan_8(D)->ConvolutionPacketNum
	add	r3, r3, #1	@ tmp168, pSegMan_8(D)->ConvolutionPacketNum,
	uxtb	r3, r3	@ D.31427, tmp168
	strb	r3, [r4, #2]	@ D.31427, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r3, #1	@ D.31427,
	bls	.L208	@,
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, pSegMan_8(D)->Pack.StreamPack[1].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, D.31428
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldr	r1, .L227+8	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	ldr	r3, .L227+12	@ tmp173,
	ldr	r3, [r3]	@ D.31430, g_event_report
	cmp	r3, #0	@ D.31430,
	beq	.L207	@,
	mov	r2, r5	@, D.31427
	mov	r0, r6	@, ChanID
	mov	r1, #113	@,
	blx	r3	@ D.31430
.L207:
	mov	r3, #0	@ tmp174,
	mvn	r0, #0	@ D.31424,
	strb	r3, [r4, #2]	@ tmp174, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L225:
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.31427, pSegMan_8(D)->ConvolutionPacketNum
	mov	r0, r5	@ D.31424, D.31427
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L226:
	ldr	r1, .L227+16	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	ldr	r2, [r4, #100]	@ D.31425, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r0, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	rsb	r0, r2, r0	@,, pSegMan_8(D)->CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r1, [r4, #100]	@ D.31425, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	ip, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ pSegMan_8(D)->CurrSeg.PhyAddr, pSegMan_8(D)->CurrSeg.PhyAddr
	ldr	r3, [r4, #20]	@ pSegMan_8(D)->CurrSeg.LenInByte, pSegMan_8(D)->CurrSeg.LenInByte
	rsb	ip, r1, ip	@ D.31426, D.31425, pSegMan_8(D)->CurrSeg.VirAddr
	rsb	r2, r1, r2	@ D.31425, D.31425, pSegMan_8(D)->CurrSeg.PhyAddr
	strb	r5, [r4, #93]	@ D.31427, pSegMan_8(D)->Pack.StreamPack[0].IsLastSeg
	add	r3, r3, r1	@ D.31425, pSegMan_8(D)->CurrSeg.LenInByte, D.31425
	str	ip, [r4, #88]	@ D.31426, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	str	r3, [r4, #100]	@ D.31425, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	str	r2, [r4, #96]	@ D.31425, pSegMan_8(D)->Pack.StreamPack[0].PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->CurrSeg.StreamID
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	str	r3, [r4, #104]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	bl	__memzero	@
	b	.L211	@
.L201:
	ldr	r1, .L227+20	@,
	mov	r0, #1	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31424,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L228:
	.align	2
.L227:
	.word	s_pstVfmwChan
	.word	.LC14
	.word	.LC12
	.word	g_event_report
	.word	.LC13
	.word	.LC11
	.fnend
	.size	SegMan, .-SegMan
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
	beq	.L235	@,
.L230:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L236	@,
.L232:
	ldr	r4, [r4, #4]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam
	cmp	r4, #0	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r0, [r5, #4081]	@ zero_extendqisi2	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r1, .L238	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #4081]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L236:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L232	@
.L235:
	ldr	r3, .L238+4	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.31457, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L237	@,
.L231:
	add	r1, r4, #72704	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L230	@
.L237:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L230	@,
	b	.L231	@
.L239:
	.align	2
.L238:
	.word	.LC15
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
	beq	.L246	@,
.L241:
	add	r5, r4, #20480	@ tmp147, pstCtx,
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L247	@,
.L243:
	ldr	r4, [r4, #1036]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam
	cmp	r4, #0	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldrb	r0, [r5, #2516]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r0, #1	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
	ldr	r1, .L249	@,
	bl	dprint_vfmw	@
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #2516]	@ MEM[(struct MP4_CTX_S *)pstCtx_4(D)].pMp4DecParam, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L247:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L243	@
.L246:
	ldr	r3, .L249+4	@ tmp126,
	ldr	r3, [r3, r5, asl #2]	@ D.31469, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L248	@,
.L242:
	add	r1, r4, #15680	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L241	@
.L248:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L241	@,
	b	.L242	@
.L250:
	.align	2
.L249:
	.word	.LC16
	.word	s_pstVfmwChan
	.fnend
	.size	DecodeStream_MPEG4, .-DecodeStream_MPEG4
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #2	@ VideoStandard,
	beq	.L253	@,
	cmp	r1, #3	@ VideoStandard,
	beq	.L254	@,
	cmp	r1, #0	@ VideoStandard,
	bxne	lr	@
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L254:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L253:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG4	@
	.fnend
	.size	DecodeStream, .-DecodeStream
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #2	@ VidStd,
	beq	.L259	@,
	cmp	r0, #3	@ VidStd,
	bxeq	lr	@
	cmp	r0, #0	@ VidStd,
	beq	.L274	@,
	mov	r2, r0	@, VidStd
	ldr	r1, .L275	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L259:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r1, #20480	@ tmp120, pCtx,
	ldr	r5, [r4, #1580]	@ D.31482, MEM[(struct MP4_CTX_S *)pCtx_5(D)].pstExtraData
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_5(D)].ChanID
	ldr	r1, [r5, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L261	@,
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_5(D)].ChanID
	ldr	r1, [r5, #320]	@, MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[1].StreamID
	bl	SM_ReleaseStreamSeg	@
.L261:
	add	r0, r5, #224	@, D.31482,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L274:
	bx	lr	@
.L276:
	.align	2
.L275:
	.word	.LC17
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #2	@ VidStd,
	beq	.L279	@,
	cmp	r0, #3	@ VidStd,
	beq	.L280	@,
	cmp	r0, #0	@ VidStd,
	beq	.L284	@,
	mov	r2, r0	@, VidStd
	ldr	r1, .L285	@,
	mov	r0, #0	@,
	b	dprint_vfmw	@
.L284:
	mov	r0, r1	@, pCtx
	b	H264_ClearCurrPic	@
.L280:
	mov	r0, r1	@, pCtx
	b	MP2_ClearCurPic	@
.L279:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@, pCtx
	mov	r4, r1	@ pCtx, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	ldmfd	sp!, {r4, lr}	@
	b	MP4_Clean_HeadPacket	@
.L286:
	.align	2
.L285:
	.word	.LC17
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
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.31492, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	add	r2, r3, #73	@ tmp127, D.31492,
	cmp	r3, #0	@ D.31492,
	cmpne	r3, #179	@, D.31492,
	uxtb	r2, r2	@ tmp129, tmp127
	moveq	ip, #1	@ tmp126,
	movne	ip, #0	@ tmp126,
	cmp	r2, #1	@ tmp129,
	movhi	r2, ip	@, tmp134, tmp126
	orrls	r2, ip, #1	@,, tmp134, tmp126
	cmp	r2, #0	@ tmp134,
	beq	.L291	@,
	ldr	r2, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r2, #0	@ *pNewPicDetector_10(D),
	bne	.L291	@,
	mov	r3, #1	@ tmp136,
	str	r3, [r0]	@ tmp136, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.31492, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L288:
	cmp	r3, #0	@ D.31492,
	streq	r3, [r0]	@ D.31492, *pNewPicDetector_10(D)
	mov	r0, r2	@, ret
	bx	lr	@
.L291:
	mvn	r2, #0	@ ret,
	b	.L288	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegMpeg4
	.type	CheckNewPicSegMpeg4, %function
CheckNewPicSegMpeg4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.31498, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	cmp	r3, #179	@ D.31498,
	cmpne	r3, #176	@, D.31498,
	add	ip, r3, #75	@ tmp134, D.31498,
	moveq	lr, #1	@ tmp129,
	movne	lr, #0	@ tmp129,
	uxtb	ip, ip	@ tmp136, tmp134
	cmp	r3, #47	@ D.31498,
	orrls	lr, lr, #1	@,, tmp133, tmp129
	cmp	ip, #1	@ tmp136,
	movhi	ip, lr	@, tmp141, tmp133
	orrls	ip, lr, #1	@,, tmp141, tmp133
	cmp	ip, #0	@ tmp141,
	bne	.L305	@,
.L293:
	cmp	r2, #1	@ IsShortHead,
	bne	.L297	@,
.L294:
	mov	r3, #1	@ tmp143,
	str	r3, [r0]	@ tmp143, *pNewPicDetector_11(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.31498, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	mov	r2, #0	@ ret,
.L295:
	cmp	r3, #182	@ D.31498,
	moveq	r3, #0	@ tmp144,
	streq	r3, [r0]	@ tmp144, *pNewPicDetector_11(D)
	mov	r0, r2	@, ret
	ldr	pc, [sp], #4	@
.L305:
	ldr	ip, [r0]	@ *pNewPicDetector_11(D), *pNewPicDetector_11(D)
	cmp	ip, #0	@ *pNewPicDetector_11(D),
	beq	.L294	@,
	b	.L293	@
.L297:
	mvn	r2, #0	@ ret,
	b	.L295	@
	.fnend
	.size	CheckNewPicSegMpeg4, .-CheckNewPicSegMpeg4
	.align	2
	.global	CheckNewPicSegByVidStd
	.type	CheckNewPicSegByVidStd, %function
CheckNewPicSegByVidStd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #2	@ VidStd,
	ldr	ip, [r2]	@ pu8, pStreamSeg_4(D)->VirAddr
	beq	.L308	@,
	cmp	r1, #3	@ VidStd,
	beq	.L309	@,
	cmp	r1, #0	@ VidStd,
	beq	.L312	@,
	mvn	r0, #0	@,
	bx	lr	@
.L312:
	mov	r1, ip	@, pu8
	b	H264_IsNewPicNal	@
.L309:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg2	@
.L308:
	mov	r2, r3	@, IsShortHead
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg4	@
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
	beq	.L330	@,
.L314:
	ldrb	lr, [ip]	@ zero_extendqisi2	@ D.31506, *pu8_6
	ldrb	r4, [ip, #1]	@ zero_extendqisi2	@ D.31506, MEM[(HI_U8 *)pu8_6 + 1B]
	cmp	lr, #0	@ D.31506,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ D.31506, MEM[(HI_U8 *)pu8_6 + 2B]
	bne	.L317	@,
	cmp	r4, #0	@ D.31506,
	bne	.L317	@,
	cmp	ip, #1	@ D.31506,
	bne	.L317	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L330:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ *pStreamSeg_5(D), *pStreamSeg_5(D)
	ands	r3, r3, #1	@ IsShortHead, *pStreamSeg_5(D),
	beq	.L314	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L317:
	str	ip, [sp]	@ D.31506,
	mov	r3, r4	@, D.31506
	mov	r2, lr	@, D.31506
	ldr	r1, .L331	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
.L332:
	.align	2
.L331:
	.word	.LC18
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
	ldr	r3, .L340	@ tmp150,
	add	r0, r3, r0, lsl #2	@ tmp151, tmp150, ChanID,
	ldr	ip, [r0, #12]	@ D.31522, pstVdecUsdPool
	cmp	ip, #0	@ D.31522,
	beq	.L339	@,
.L334:
	mov	r0, #0	@ tmp156,
	add	r1, ip, #205824	@ D.31525, ivtmp.105,
	mov	r3, ip	@ ivtmp.105, D.31522
	mov	r2, r0	@ tmp160, tmp156
	str	r0, [ip]	@ tmp156, _16->s32AccessIdx
.L336:
	str	r2, [r3, #1044]	@ tmp160, MEM[base: _22, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.105, ivtmp.105,
	str	r2, [r3, #-32]	@ tmp160, MEM[base: _22, offset: 1040B]
	cmp	r3, r1	@ ivtmp.105, D.31525
	bne	.L336	@,
	mov	r0, #0	@ D.31523,
	bx	lr	@
.L339:
	cmp	r1, #0	@ Viraddr,
	str	r1, [r0, #12]	@ Viraddr, pstVdecUsdPool
	movne	ip, r1	@ D.31522, Viraddr
	bne	.L334	@
.L337:
	mvn	r0, #0	@ D.31523,
	bx	lr	@
.L341:
	.align	2
.L340:
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
	ldr	r3, .L343	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #12]	@ tmp114, pstVdecUsdPool
	bx	lr	@
.L344:
	.align	2
.L343:
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
	ldr	r3, .L350	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp118, ChanID,
	ldr	r0, [r0, #12]	@ D.31540, pstVdecUsdPool
	cmp	r0, #0	@ D.31540,
	beq	.L348	@,
	mov	ip, #0	@ tmp121,
	add	r1, r0, #205824	@ D.31542, ivtmp.119,
	mov	r3, r0	@ ivtmp.119, D.31540
	mov	r2, ip	@ tmp125, tmp121
	str	ip, [r0]	@ tmp121, _7->s32AccessIdx
.L347:
	str	r2, [r3, #1044]	@ tmp125, MEM[base: _18, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.119, ivtmp.119,
	str	r2, [r3, #-32]	@ tmp125, MEM[base: _18, offset: 1040B]
	cmp	r3, r1	@ ivtmp.119, D.31542
	bne	.L347	@,
	mov	r0, #0	@ D.31539,
	bx	lr	@
.L348:
	mvn	r0, #0	@ D.31539,
	bx	lr	@
.L351:
	.align	2
.L350:
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
	ldr	r3, .L361	@ tmp122,
	add	r0, r3, r0, lsl #2	@ tmp123, tmp122, ChanID,
	ldr	r0, [r0, #12]	@ D.31555, pstVdecUsdPool
	cmp	r0, #0	@ D.31555,
	bxeq	lr	@
	mov	r3, r0	@ ivtmp.130, D.31555
	mov	r2, #0	@ i,
	b	.L355	@
.L354:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #1072	@ ivtmp.130, ivtmp.130,
	cmp	r2, #192	@ i,
	beq	.L360	@,
.L355:
	ldr	r1, [r3, #1044]	@ MEM[base: _26, offset: 1044B], MEM[base: _26, offset: 1044B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1044B],
	bne	.L354	@,
	ldr	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[base: _26, offset: 1040B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1040B],
	bne	.L354	@,
	mov	r3, #1072	@ tmp128,
	movw	ip, #1076	@ tmp168,
	mul	r2, r3, r2	@ tmp127, tmp128, i
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	lr, #1064	@ tmp138,
	add	r3, r0, r2	@ tmp132, D.31555, tmp127
	add	r2, r2, #8	@ tmp129, tmp127,
	mov	r4, #0	@ tmp140,
	mov	r5, #0	@,
	str	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].dnr_used_flag
	add	r0, r0, r2	@ pstUsrDat, D.31555, tmp129
	str	r1, [r3, #1056]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].data_size
	str	r1, [r3, #1052]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_img_cnt
	str	r1, [r3, #1048]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_cnt
	strb	r1, [r3, #1072]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1072B]
	strb	r1, [r3, #1073]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1073B]
	strb	r1, [r3, #1074]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1074B]
	strd	r4, [r3, lr]	@ tmp140, tmp132, tmp138
	strh	r1, [r3, ip]	@ movhi	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1076B]
	ldmfd	sp!, {r4, r5, pc}	@
.L360:
	mov	r0, #0	@ pstUsrDat,
	bx	lr	@
.L362:
	.align	2
.L361:
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
	beq	.L390	@,
	ldrh	r3, [r0, #4]	@ pstVoQue_7(D)->history, pstVoQue_7(D)->history
	ldrh	lr, [r0, #8]	@ D.31571, pstVoQue_7(D)->tail
	and	r3, r3, #63	@ i, pstVoQue_7(D)->history,
	cmp	lr, r3	@ D.31571, i
	beq	.L383	@,
.L382:
	add	r2, r0, r3, lsl #2	@ tmp128, pstVoQue, i,
	add	r3, r3, #1	@ i, i,
	and	r3, r3, #63	@ i, i,
	ldr	r2, [r2, #12]	@ D.31569, pstVoQue_7(D)->image_ptr
	cmp	r2, #0	@ D.31569,
	beq	.L381	@,
	ldr	ip, [r2, #176]	@ _13->image_id, _13->image_id
	ldr	r2, [r1, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	cmp	ip, r2	@ _13->image_id, p_image_4(D)->image_id
	beq	.L384	@,
.L381:
	cmp	r3, lr	@ i, D.31571
	bne	.L382	@,
.L383:
	mvn	r0, #0	@ D.31567,
	ldmfd	sp!, {r4, pc}	@
.L384:
	mov	r0, #0	@ D.31567,
	ldmfd	sp!, {r4, pc}	@
.L390:
	mov	r0, r1	@ p_image, p_image
	ldr	r1, .L391	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.31567,
	ldmfd	sp!, {r4, pc}	@
.L392:
	.align	2
.L391:
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
	b	.L394	@
.L396:
	.word	.L395
	.word	.L397
	.word	.L398
	.word	.L399
	.word	.L400
	.word	.L401
.L401:
	mov	r1, #0	@ tmp122,
	mov	r2, #2	@ tmp123,
	str	r1, [r0, #60]	@ tmp122, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp123, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L395:
	mov	r1, #0	@ tmp112,
	mov	r2, #1	@ tmp113,
	str	r1, [r0, #60]	@ tmp112, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp113, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L397:
	mov	r1, #4	@ tmp114,
	mov	r2, #3	@ tmp115,
	str	r1, [r0, #60]	@ tmp114, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp115, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L398:
	mov	r1, #16	@ tmp116,
	mov	r2, #9	@ tmp117,
	str	r1, [r0, #60]	@ tmp116, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp117, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L399:
	mov	r1, #221	@ tmp118,
	mov	r2, #100	@ tmp119,
	str	r1, [r0, #60]	@ tmp118, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp119, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L400:
	mov	r1, #235	@ tmp120,
	mov	r2, #100	@ tmp121,
	str	r1, [r0, #60]	@ tmp120, pImg_4(D)->u32AspectWidth
	str	r2, [r0, #64]	@ tmp121, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L394:
	mov	r0, #1	@ tmp125,
	mov	r2, r1	@, Code
	mov	ip, #0	@ tmp124,
	str	r0, [r3, #64]	@ tmp125, pImg_4(D)->u32AspectHeight
	ldr	r1, .L403	@,
	str	ip, [r3, #60]	@ tmp124, pImg_4(D)->u32AspectWidth
	b	dprint_vfmw	@
.L404:
	.align	2
.L403:
	.word	.LC19
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
	ldr	r0, [r0, #296]	@ D.31577, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_2(D) + 272B].LastImageIdPlus2
	cmp	r0, #1	@ D.31577,
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
	.type	__func__.30433, %object
	.size	__func__.30433, 20
__func__.30433:
	.ascii	"SYNTAX_ReceiveImage\000"
	.type	__func__.30462, %object
	.size	__func__.30462, 20
__func__.30462:
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
	.ascii	"pSegMan error!\012\000"
.LC12:
	.ascii	"More than two packet!!!ERROR!!!\012\000"
	.space	3
.LC13:
	.ascii	"*****************copy packets tobe one*************"
	.ascii	"****\012\000"
	.space	3
.LC14:
	.ascii	"*****************two packet*****************\012\000"
	.space	2
.LC15:
	.ascii	"MPEG2 last frame decsyntax err!\012\000"
	.space	3
.LC16:
	.ascii	"MPEG4 last frame decsyntax err!\012\000"
	.space	3
.LC17:
	.ascii	"VidStd=%d Error!\012\000"
	.space	2
.LC18:
	.ascii	"pu8[0] = %x,pu8[1] = %x, pu8[2] = %x\012\000"
	.space	2
.LC19:
	.ascii	"WARNNING: aspect ration (%d) is not expected!\012\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_SpinLock, %object
	.size	g_SpinLock, 8
g_SpinLock:
	.space	8
	.type	last_rec_pos_time.30406, %object
	.size	last_rec_pos_time.30406, 4
last_rec_pos_time.30406:
	.space	4
	.type	pstVdecUsdPool, %object
	.size	pstVdecUsdPool, 4
pstVdecUsdPool:
	.space	4
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
