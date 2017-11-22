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
@ -D VFMW_AVS_SUPPORT -D VFMW_BPD_H_SUPPORT -D VFMW_DNR_SUPPORT
@ -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT -D CFG_MAX_CHAN_NUM=1
@ -D CFG_MAX_CHAN_NUM=1 -D VFMW_DPRINT_SUPPORT -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(syntax)
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
	add	r2, r2, #100	@ D.36102, pstVoQue_3(D)->ResetMagicWord,
	strh	r3, [r4]	@ movhi	@ tmp115, pstVoQue_3(D)->max_queue_size
	str	r2, [r4, #344]	@ D.36102, pstVoQue_3(D)->ResetMagicWord
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
	.word	.L11
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
	.word	.L12
.L12:
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
	b	MPEG4DEC_RecycleImage	@
.L10:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	MPEG2DEC_RecycleImage	@
.L11:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	AVSDEC_RecycleImage	@
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
	sub	r2, r2, #8	@ D.36112, eVidStd,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldrd	r4, [r3, #56]	@ D.36111, tmp125,
	subs	r6, r0, r4	@ D.36111, D.36111, D.36111
	and	r4, r4, r5	@ tmp130, D.36111, D.36111
	sbc	r7, r1, r5	@ D.36111, D.36111, D.36111
	cmp	r7, #0	@ D.36111,
	cmpeq	r6, #5	@ D.36111,
	movls	r3, #1	@ tmp128,
	movhi	r3, #0	@ tmp128,
	adds	r4, r4, #1	@ tmp132, tmp130,
	movne	r4, #1	@ tmp132,
	tst	r3, r4	@ tmp128, tmp132
	beq	.L27	@,
	cmp	r2, #1	@ D.36112,
	mvnhi	r0, #0	@ InferedPTS,
	mvnhi	r1, #0	@ InferedPTS,
	bls	.L17	@,
.L15:
	ldmfd	sp!, {r4, r5, r6, r7}	@
	bx	lr	@
.L27:
	cmp	r2, #1	@ D.36112,
	bhi	.L15	@,
	ldr	r3, [ip, #140]	@ p_image_6(D)->format, p_image_6(D)->format
	and	r3, r3, #3	@ D.36112, p_image_6(D)->format,
	cmp	r3, #2	@ D.36112,
	bne	.L15	@,
.L17:
	mvn	r2, #0	@ tmp142,
	str	r2, [ip]	@ tmp142, p_image_6(D)->SrcPts
	mov	r0, r2	@ InferedPTS, tmp142
	mov	r1, r2	@ InferedPTS, tmp143
	str	r2, [ip, #4]	@ tmp143, p_image_6(D)->SrcPts
	b	.L15	@
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
	beq	.L31	@,
	ldr	r3, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	cmp	r3, #0	@ p_image_10(D)->disp_height,
	bne	.L57	@,
.L31:
	ldr	r2, [r4, #144]	@ D.36118, p_image_10(D)->image_width
	ldr	r3, [r4, #148]	@ D.36118, p_image_10(D)->image_height
	mov	r1, r2, lsr #1	@ D.36118, D.36118,
	str	r2, [r4, #152]	@ D.36118, p_image_10(D)->disp_width
	str	r3, [r4, #156]	@ D.36118, p_image_10(D)->disp_height
	mov	r3, r3, lsr #1	@ D.36118, D.36118,
	str	r1, [r4, #160]	@ D.36118, p_image_10(D)->disp_center_x
	str	r3, [r4, #164]	@ D.36118, p_image_10(D)->disp_center_y
.L32:
	str	r2, [r5, #300]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageWidth
	ldr	r3, [r4, #148]	@ D.36118, p_image_10(D)->image_height
	ldr	r2, [r5, #280]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	str	r3, [r5, #304]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageHeight
	ldr	r3, [r4, #140]	@ p_image_10(D)->format, p_image_10(D)->format
	ubfx	r3, r3, #5, #3	@ D.36118, p_image_10(D)->format,,
	str	r3, [r5, #308]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].VideoFormat
	ldr	r3, [r4, #140]	@ D.36118, p_image_10(D)->format
	str	r3, [r5, #312]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageFormat
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.36118, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r3, [r4, #184]	@ D.36118, p_image_10(D)->seq_cnt
	ldr	r6, [r4, #140]	@ D.36118, p_image_10(D)->format
	cmp	r3, r2	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	ldr	r8, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	ldrh	r2, [r4, #164]	@ D.36118, p_image_10(D)->disp_center_y
	ubfx	r10, r6, #14, #3	@ AspectRatio, D.36118,,
	ldr	r9, [r4, #160]	@ p_image_10(D)->disp_center_x, p_image_10(D)->disp_center_x
	ubfx	r6, r6, #8, #2	@ ScanType, D.36118,,
	ldrh	r1, [r4, #152]	@ D.36118, p_image_10(D)->disp_width
	strne	r3, [r5, #320]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqCnt
	ldr	r3, [r5, #316]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	orr	r9, r2, r9, asl #16	@ dcenter, D.36118, p_image_10(D)->disp_center_x,
	orr	r8, r1, r8, asl #16	@ dsize, D.36118, p_image_10(D)->disp_height,
	add	r2, r3, #1	@ D.36118, D.36118,
	str	r2, [r5, #316]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	str	r3, [r4, #188]	@ D.36118, p_image_10(D)->seq_img_cnt
	ldr	r3, [r5, #272]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
	cmp	r3, r10	@ D.36118, AspectRatio
	beq	.L34	@,
	ldr	r2, .L59	@ tmp206,
	ldr	ip, [r2]	@ D.36120, g_event_report
	cmp	ip, #0	@ D.36120,
	beq	.L35	@,
	strb	r3, [sp]	@ D.36118, para
	mov	r2, sp	@,
	strb	r10, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r0, r7	@, ChanID
	blx	ip	@ D.36120
.L35:
	str	r10, [r5, #272]	@ AspectRatio, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
.L34:
	ldr	r3, [r5, #276]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
	cmp	r3, r6	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, ScanType
	beq	.L36	@,
	ldr	r3, .L59	@ tmp211,
	ldr	r3, [r3]	@ D.36120, g_event_report
	cmp	r3, #0	@ D.36120,
	beq	.L37	@,
	add	r2, sp, #8	@ tmp213,,
	mov	r1, #4	@,
	mov	r0, r7	@, ChanID
	strb	r6, [r2, #-8]!	@ ScanType, para
	blx	r3	@ D.36120
.L37:
	str	r6, [r5, #276]	@ ScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
.L36:
	ldr	r3, [r5, #288]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	cmp	r3, r8	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, dsize
	beq	.L58	@,
.L38:
	ldr	r3, .L59	@ tmp216,
	str	r8, [r5, #288]	@ dsize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	str	r9, [r5, #292]	@ dcenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	ldr	r3, [r3]	@ D.36120, g_event_report
	cmp	r3, #0	@ D.36120,
	beq	.L39	@,
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
	blx	r3	@ D.36120
.L39:
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.36118, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.36118, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.36118, p_image_10(D)->luma_phy_addr
	ldr	r1, [r4, #108]	@ D.36118, p_image_10(D)->chrom_phy_addr
	ldr	r3, [r4, #172]	@ D.36118, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.36118, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.36118, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.36118, D.36118, D.36118
	add	r3, r1, r3	@ D.36118, D.36118, D.36118
	str	r2, [r4, #96]	@ D.36118, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.36118, p_image_10(D)->btm_chrom_phy_addr
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L57:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r2, [r4, #144]	@ D.36118, p_image_10(D)->image_width
	beq	.L32	@,
	b	.L31	@
.L58:
	ldr	r3, [r5, #292]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	cmp	r3, r9	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, dcenter
	bne	.L38	@,
	b	.L39	@
.L60:
	.align	2
.L59:
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
	beq	.L97	@,
	mov	r5, r3	@ pstVoQue, pstVoQue
	mov	r9, r0	@ ChanID, ChanID
	mov	r7, r1	@ eVidStd, eVidStd
	mov	r8, r2	@ pCtx, pCtx
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L100	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r4, [r5, #4]	@ pstVoQue_16(D)->history, pstVoQue_16(D)->history
	ldrh	r3, [r5, #8]	@ D.36130, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, pstVoQue_16(D)->history,
	cmp	r3, r4	@ D.36130, i
	movne	r6, #1000	@ tmp277,
	bne	.L69	@,
	b	.L68	@
.L67:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #8]	@ D.36130, pstVoQue_16(D)->tail
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.36130, i
	beq	.L68	@,
.L69:
	add	ip, r5, r4, lsl #2	@ tmp170, pstVoQue, i,
	ldr	r3, [r10, #176]	@ p_image_11(D)->image_id, p_image_11(D)->image_id
	ldr	r2, [ip, #12]	@ tmp169, pstVoQue_16(D)->image_ptr
	ldr	r2, [r2, #176]	@ _22->image_id, _22->image_id
	cmp	r2, r3	@ _22->image_id, p_image_11(D)->image_id
	bne	.L67	@,
	bl	vfmw_dprint_nothing	@
	str	r6, [r10, #180]	@ tmp277, p_image_11(D)->error_level
	b	.L67	@
.L68:
	ldr	r3, [r10, #180]	@ p_image_11(D)->error_level, p_image_11(D)->error_level
	cmp	r3, #100	@ p_image_11(D)->error_level,
	bhi	.L65	@,
	ldr	r3, [r10, #144]	@ p_image_11(D)->image_width, p_image_11(D)->image_width
	cmp	r3, #31	@ p_image_11(D)->image_width,
	bhi	.L98	@,
.L65:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r10, #180]	@ p_image_11(D)->error_level, p_image_11(D)->error_level
	cmp	r3, #1000	@ p_image_11(D)->error_level,
	beq	.L71	@,
	mov	r2, r10	@, p_image
	mov	r1, r8	@, pCtx
	mov	r0, r7	@, eVidStd
	bl	ReturnImageToSyntax	@
.L71:
	ldr	r0, .L100	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.36128,
.L63:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L98:
	ldr	r3, [r10, #148]	@ p_image_11(D)->image_height, p_image_11(D)->image_height
	cmp	r3, #31	@ p_image_11(D)->image_height,
	bls	.L65	@,
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
	ldr	r6, .L100+4	@ tmp273,
	bl	vfmw_dprint_nothing	@
	ldrh	r3, [r5, #8]	@ D.36129, pstVoQue_16(D)->tail
	rsb	r2, r8, r4	@ tmp190, tmp274, tmp275
	ldr	r0, .L100	@,
	add	r1, r3, #1	@ tmp183, D.36129,
	add	r2, r6, r2	@ tmp191, tmp273, tmp190
	add	r3, r5, r3, lsl #2	@ tmp181, pstVoQue, D.36129,
	and	r1, r1, #63	@ tmp185, tmp183,
	str	r10, [r3, #12]	@ p_image, pstVoQue_16(D)->image_ptr
	strh	r1, [r5, #8]	@ movhi	@ tmp185, pstVoQue_16(D)->tail
	ldr	r3, [r10, #128]	@ p_image_11(D)->is_fld_save, p_image_11(D)->is_fld_save
	str	r3, [r2, #20]	@ p_image_11(D)->is_fld_save, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r10, #300]	@ D.36127, p_image_11(D)->ImageDnr.video_standard
	sub	r2, r3, #10	@ D.36132, D.36127,
	cmp	r2, #2	@ D.36132,
	bhi	.L72	@,
	ldr	r2, .L100+8	@ tmp196,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L72	@,
.L73:
	ldr	r3, .L100+12	@ tmp208,
	ldr	r3, [r3]	@ D.36134, g_event_report
	cmp	r3, #0	@ D.36134,
	beq	.L74	@,
	add	r2, sp, #8	@ tmp209,,
	mov	r1, #5	@,
	mov	r0, r9	@, ChanID
	str	r10, [r2, #-4]!	@ p_image, para
	blx	r3	@ D.36134
.L74:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L99	@,
.L76:
	rsb	r7, r8, r4	@ tmp224, tmp274, tmp275
	add	r5, r6, r7	@ tmp225, tmp273, tmp224
	ldr	r3, [r5, #4]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	add	r3, r3, #1	@ D.36132, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum,
	str	r3, [r5, #4]	@ D.36132, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, r7]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	rsb	r1, r1, r0	@ Period, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, CurTime
	mov	r9, r0	@ CurTime,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.36128,
	bcc	.L63	@,
	ldr	r3, [r5, #4]	@ D.36132, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	cmp	r3, #0	@ D.36132,
	beq	.L78	@,
	movw	r0, #10000	@ tmp255,
	mul	r0, r0, r3	@, tmp255, D.36132
	bl	__aeabi_uidiv	@
	str	r0, [r5, #8]	@, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrFrameRate
.L78:
	rsb	r4, r8, r4	@ tmp263, tmp274, tmp275
	mov	r2, #0	@ tmp271,
	add	r3, r6, r4	@ tmp264, tmp273, tmp263
	mov	r0, #1	@ D.36128,
	str	r9, [r6, r4]	@ CurTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	str	r2, [r3, #4]	@ tmp271, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	b	.L63	@
.L72:
	sub	r2, r3, #14	@ D.36127, D.36127,
	bics	r2, r2, #4	@ tmp280, D.36127,
	moveq	r2, #1	@ tmp202,
	movne	r2, #0	@ tmp202,
	cmp	r3, #4	@ D.36127,
	movne	r3, r2	@, tmp207, tmp202
	orreq	r3, r2, #1	@,, tmp207, tmp202
	cmp	r3, #0	@ tmp207,
	beq	.L74	@,
	b	.L73	@
.L99:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L100	@ tmp210,
	ldr	r2, .L100+16	@ tmp215,
	add	r9, r3, r9, lsl #2	@ tmp211, tmp210, ChanID,
	ldr	r3, [r9, #8]	@ tmp214, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.36132, tmp214, CurTime
	cmp	r3, r2	@ D.36132, g_TraceFramePeriod
	strhi	r0, [r9, #8]	@ CurTime, last_rec_pos_time
	b	.L76	@
.L97:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.36128,
	b	.L63	@
.L101:
	.align	2
.L100:
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
	ldrh	r3, [r0, #6]	@ D.36138, pstVoQue_4(D)->head
	ldrh	ip, [r0, #4]	@ D.36138, pstVoQue_4(D)->history
	ldrh	r0, [r0, #8]	@ D.36138, pstVoQue_4(D)->tail
	cmp	r3, ip	@ D.36138, D.36138
	addcc	lr, r3, #64	@ D.36139, D.36138,
	rsbcs	ip, ip, r3	@ ReadNum, D.36138, D.36138
	rsbcc	ip, ip, lr	@ ReadNum, D.36138, D.36139
	cmp	r3, r0	@ D.36138, D.36138
	addhi	r0, r0, #64	@ D.36139, D.36138,
	str	ip, [r1]	@ ReadNum, *pReadImgNum_22(D)
	rsb	r3, r3, r0	@ NewNum, D.36138, D.36139
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
	b	.L117	@
.L112:
	.word	.L116
	.word	.L117
	.word	.L113
	.word	.L114
	.word	.L117
	.word	.L117
	.word	.L115
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L117
	.word	.L116
.L116:
	add	r0, r0, #16	@ pstVoQue, pSynCtx,
	bx	lr	@
.L115:
	add	r0, r0, #16064	@ pstVoQue, pSynCtx,
	add	r0, r0, #32	@ pstVoQue, pstVoQue,
	bx	lr	@
.L113:
	add	r0, r0, #22528	@ pstVoQue, pSynCtx,
	add	r0, r0, #88	@ pstVoQue, pstVoQue,
	bx	lr	@
.L114:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
	bx	lr	@
.L117:
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
	cmp	r3, #18	@ pSynCtx_7(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_7(D)->eVidStd
	b	.L132	@
.L122:
	.word	.L126
	.word	.L132
	.word	.L123
	.word	.L124
	.word	.L132
	.word	.L132
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
	.word	.L126
.L126:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L120:
	cmp	r4, #0	@ pstVoQue,
	beq	.L132	@,
	ldr	r0, .L135	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ D.36151, pstVoQue_36->head
	ldrh	r2, [r4, #8]	@ pstVoQue_36->tail, pstVoQue_36->tail
	cmp	r2, r3	@ pstVoQue_36->tail, D.36151
	mvneq	r6, #2	@ ret,
	beq	.L128	@,
	add	r3, r4, r3, lsl #2	@ tmp145, pstVoQue, D.36151,
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [r3, #12]	@, pstVoQue_36->image_ptr
	bl	memcpy	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldr	r2, [r4, #344]	@ pstVoQue_36->ResetMagicWord, pstVoQue_36->ResetMagicWord
	add	r3, r3, r2	@ D.36154, p_image_5(D)->image_id, pstVoQue_36->ResetMagicWord
	str	r3, [r5, #176]	@ D.36154, p_image_5(D)->image_id
	ldr	r3, [r4, #344]	@ D.36154, pstVoQue_36->ResetMagicWord
	str	r3, [r5, #380]	@ D.36154, p_image_5(D)->resetNum
	ldrh	r3, [r4, #6]	@ pstVoQue_36->head, pstVoQue_36->head
	add	r3, r3, r6	@ tmp157, pstVoQue_36->head,
	and	r3, r3, #63	@ tmp159, tmp157,
	strh	r3, [r4, #6]	@ movhi	@ tmp159, pstVoQue_36->head
.L128:
	ldr	r0, .L135	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.36149, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L125:
	add	r4, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r4, #32	@ pstVoQue, pstVoQue,
	b	.L120	@
.L123:
	add	r4, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r4, #88	@ pstVoQue, pstVoQue,
	b	.L120	@
.L124:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L120	@
.L132:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.36149,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L129:
	mvn	r0, #1	@ D.36149,
	bx	lr	@
.L136:
	.align	2
.L135:
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
	ldr	r3, [r0]	@ D.36169, pSynCtx_4(D)->eVidStd
	cmp	r3, #0	@ D.36169,
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
	b	.L153	@
.L148:
	.word	.L147
	.word	.L153
	.word	.L149
	.word	.L150
	.word	.L153
	.word	.L153
	.word	.L151
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L153
	.word	.L152
.L152:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	mov	r1, r0	@ ret,
.L146:
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
.L149:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG4DEC_RecycleImage	@
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
.L151:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	AVSDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L153:
	mvn	r1, #1	@ ret,
	b	.L146	@
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
	beq	.L174	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ pSynCtx, pSynCtx
	ldr	r3, [r0]	@ pSynCtx_16(D)->eVidStd, pSynCtx_16(D)->eVidStd
	mov	r8, r1	@ p_image, p_image
	cmp	r3, #18	@ pSynCtx_16(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_16(D)->eVidStd
	b	.L179	@
.L159:
	.word	.L163
	.word	.L179
	.word	.L160
	.word	.L161
	.word	.L179
	.word	.L179
	.word	.L162
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L179
	.word	.L163
.L163:
	add	r5, r0, #16	@ pstVoQue, pSynCtx,
.L157:
	cmp	r5, #0	@ pstVoQue,
	beq	.L179	@,
	ldr	r0, .L182	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	ldr	r2, [r5, #344]	@ pstVoQue_59->ResetMagicWord, pstVoQue_59->ResetMagicWord
	rsb	r3, r2, r3	@ D.36188, pstVoQue_59->ResetMagicWord, p_image_14(D)->image_id
	str	r3, [r8, #176]	@ D.36188, p_image_14(D)->image_id
	ldrh	r4, [r5, #4]	@ pstVoQue_59->history, pstVoQue_59->history
	ldrh	r3, [r5, #6]	@ D.36190, pstVoQue_59->head
	and	r4, r4, #63	@ i, pstVoQue_59->history,
	cmp	r3, r4	@ D.36190, i
	bne	.L173	@,
	b	.L172	@
.L169:
	add	r4, r4, #1	@ i, i,
	ldrh	r3, [r5, #6]	@ D.36190, pstVoQue_59->head
	and	r4, r4, #63	@ i, i,
	cmp	r3, r4	@ D.36190, i
	beq	.L172	@,
.L173:
	add	r6, r4, #2	@ tmp180, i,
	add	r3, r5, r6, lsl #2	@ tmp162, pstVoQue, tmp180,
	ldr	r3, [r3, #4]	@ D.36191, pstVoQue_59->image_ptr
	cmp	r3, #0	@ D.36191,
	beq	.L167	@,
	ldr	r1, [r3, #176]	@ _31->image_id, _31->image_id
	ldr	r3, [r8, #176]	@ p_image_14(D)->image_id, p_image_14(D)->image_id
	rsb	r1, r1, r3	@ SameImageFlag, _31->image_id, p_image_14(D)->image_id
	clz	r1, r1	@ SameImageFlag, SameImageFlag
	mov	r1, r1, lsr #5	@ SameImageFlag, SameImageFlag,
	cmp	r1, #0	@ SameImageFlag,
	beq	.L169	@,
.L168:
	ldrh	lr, [r5, #4]	@ D.36193, pstVoQue_59->history
	b	.L171	@
.L177:
	mov	r4, r2	@ i, i
.L171:
	cmp	r4, #0	@ i,
	mov	r2, #63	@ i,
	subne	r2, r4, #1	@ i, i,
	add	ip, r5, r6, lsl #2	@ tmp172, pstVoQue, tmp180,
	add	r3, r2, #2	@ tmp168, i,
	cmp	r4, lr	@ i, D.36193
	add	r0, r5, r3, lsl #2	@ tmp169, pstVoQue, tmp168,
	mov	r6, r3	@ tmp180, tmp168
	ldr	r3, [r0, #4]	@ D.36191, pstVoQue_59->image_ptr
	str	r3, [ip, #4]	@ D.36191, pstVoQue_59->image_ptr
	bne	.L177	@,
	cmp	r1, #1	@ SameImageFlag,
	add	r3, r4, #1	@ tmp174, i,
	and	r3, r3, #63	@ tmp176, tmp174,
	strh	r3, [r5, #4]	@ movhi	@ tmp176, pstVoQue_59->history
	bne	.L169	@,
	bl	vfmw_dprint_nothing	@
	mov	r1, r8	@, p_image
	mov	r0, r7	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
.L166:
	ldr	r0, .L182	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.36186, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L167:
	bl	vfmw_dprint_nothing	@
	mov	r1, #2	@ SameImageFlag,
	b	.L168	@
.L172:
	mvn	r4, #1	@ ret,
	b	.L166	@
.L162:
	add	r5, r0, #16064	@ pstVoQue, pSynCtx,
	add	r5, r5, #32	@ pstVoQue, pstVoQue,
	b	.L157	@
.L160:
	add	r5, r0, #22528	@ pstVoQue, pSynCtx,
	add	r5, r5, #88	@ pstVoQue, pstVoQue,
	b	.L157	@
.L161:
	add	r5, r0, #72704	@ pstVoQue, pSynCtx,
	add	r5, r5, #648	@ pstVoQue, pstVoQue,
	b	.L157	@
.L179:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #1	@ D.36186,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L174:
	mvn	r0, #1	@ D.36186,
	bx	lr	@
.L183:
	.align	2
.L182:
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
	ldr	r3, [r0]	@ pSynCtx_5(D)->eVidStd, pSynCtx_5(D)->eVidStd
	cmp	r3, #18	@ pSynCtx_5(D)->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ pSynCtx_5(D)->eVidStd
	b	.L193	@
.L187:
	.word	.L191
	.word	.L193
	.word	.L188
	.word	.L189
	.word	.L193
	.word	.L193
	.word	.L190
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L193
	.word	.L191
.L191:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L192:
	ldr	r0, .L195	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ pstVoQue_1->head, pstVoQue_1->head
	ldr	r0, .L195	@,
	sub	r3, r3, #1	@ tmp125, pstVoQue_1->head,
	and	r3, r3, #63	@ tmp127, tmp125,
	strh	r3, [r4, #6]	@ movhi	@ tmp127, pstVoQue_1->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.36198,
	ldmfd	sp!, {r4, pc}	@
.L190:
	add	r4, r0, #16064	@ pstVoQue, pSynCtx,
	add	r4, r4, #32	@ pstVoQue, pstVoQue,
	b	.L192	@
.L188:
	add	r4, r0, #22528	@ pstVoQue, pSynCtx,
	add	r4, r4, #88	@ pstVoQue, pstVoQue,
	b	.L192	@
.L189:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L192	@
.L193:
	mvn	r0, #1	@ D.36198,
	ldmfd	sp!, {r4, pc}	@
.L196:
	.align	2
.L195:
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
	movne	r0, #0	@ tmp137,
	moveq	r0, #1	@ tmp137,
	strb	r0, [r4, #1]	@ tmp137, pSegMan_2(D)->IsCurrSegWaitDec
	ldr	r4, [r5, #360]	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam
	cmp	r4, #0	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam,
	beq	.L200	@,
.L197:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L200:
	add	r6, r5, #12288	@ tmp141, pstCtx,
	ldrb	r3, [r6, #1268]	@ zero_extendqisi2	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag,
	bne	.L197	@,
	add	r5, r5, #49152	@ tmp144, pstCtx,
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #3688]	@, MEM[(struct H264_CTX_S *)pstCtx_19(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r6, #1268]	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	b	.L197	@
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
	beq	.L202	@,
	ldr	r3, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	cmp	r3, #0	@ pSegMan_8(D)->CurrSeg.VirAddr,
	beq	.L202	@,
	ldrb	r5, [r4, #13]	@ zero_extendqisi2	@ D.36220, pSegMan_8(D)->CurrSeg.IsLastSeg
	mov	r6, r0	@ ChanID, ChanID
	cmp	r5, #1	@ D.36220,
	beq	.L224	@,
	cmp	r5, #0	@ D.36220,
	beq	.L225	@,
.L209:
	mvn	r0, #0	@ D.36217,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L224:
	ldrb	r5, [r4, #2]	@ zero_extendqisi2	@ D.36220, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r5, #0	@ D.36220,
	beq	.L226	@,
	cmp	r5, #1	@ D.36220,
	bne	.L209	@,
	ldr	r1, .L228	@ tmp176,
	mov	r3, #64512	@ tmp207,
	ldr	r2, [r4, #100]	@ pSegMan_8(D)->Pack.StreamPack[0].LenInByte, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	movt	r3, 15	@ tmp207,
	ldr	r1, [r1, r0, asl #2]	@ tmp177, s_pstVfmwChan
	ldr	r1, [r1, #880]	@ _39->eVidStd, _39->eVidStd
	cmp	r1, #6	@ _39->eVidStd,
	movne	r3, #1024	@ D.36218,
	cmp	r3, r2	@ D.36218, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	bhi	.L227	@,
	bl	vfmw_dprint_nothing	@
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #168	@, pSegMan,
	bl	memcpy	@
.L212:
	mov	r0, #0	@ tmp204,
	strb	r0, [r4, #2]	@ tmp204, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L225:
	add	r8, r4, #88	@ D.36221, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, D.36221
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r3, [r4, #2]	@ zero_extendqisi2	@ pSegMan_8(D)->ConvolutionPacketNum, pSegMan_8(D)->ConvolutionPacketNum
	add	r3, r3, #1	@ tmp169, pSegMan_8(D)->ConvolutionPacketNum,
	uxtb	r3, r3	@ D.36220, tmp169
	strb	r3, [r4, #2]	@ D.36220, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r3, #1	@ D.36220,
	bls	.L209	@,
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, pSegMan_8(D)->Pack.StreamPack[1].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, D.36221
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L228+4	@ tmp173,
	ldr	r3, [r3]	@ D.36223, g_event_report
	cmp	r3, #0	@ D.36223,
	beq	.L208	@,
	mov	r2, r5	@, D.36220
	mov	r0, r6	@, ChanID
	mov	r1, #113	@,
	blx	r3	@ D.36223
.L208:
	mov	r3, #0	@ tmp174,
	mvn	r0, #0	@ D.36217,
	strb	r3, [r4, #2]	@ tmp174, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L226:
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.36220, pSegMan_8(D)->ConvolutionPacketNum
	mov	r0, r5	@ D.36217, D.36220
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L227:
	bl	vfmw_dprint_nothing	@
	ldr	r2, [r4, #100]	@ D.36218, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r0, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	ldr	r1, [r4, #88]	@, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	rsb	r0, r2, r0	@,, pSegMan_8(D)->CurrSeg.VirAddr
	bl	memcpy	@
	ldr	r1, [r4, #100]	@ D.36218, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	ip, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ pSegMan_8(D)->CurrSeg.PhyAddr, pSegMan_8(D)->CurrSeg.PhyAddr
	ldr	r3, [r4, #20]	@ pSegMan_8(D)->CurrSeg.LenInByte, pSegMan_8(D)->CurrSeg.LenInByte
	rsb	ip, r1, ip	@ D.36219, D.36218, pSegMan_8(D)->CurrSeg.VirAddr
	rsb	r2, r1, r2	@ D.36218, D.36218, pSegMan_8(D)->CurrSeg.PhyAddr
	strb	r5, [r4, #93]	@ D.36220, pSegMan_8(D)->Pack.StreamPack[0].IsLastSeg
	add	r3, r3, r1	@ D.36218, pSegMan_8(D)->CurrSeg.LenInByte, D.36218
	str	ip, [r4, #88]	@ D.36219, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	str	r3, [r4, #100]	@ D.36218, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	str	r2, [r4, #96]	@ D.36218, pSegMan_8(D)->Pack.StreamPack[0].PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->CurrSeg.StreamID
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	str	r3, [r4, #104]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	bl	__memzero	@
	b	.L212	@
.L202:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36217,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L229:
	.align	2
.L228:
	.word	s_pstVfmwChan
	.word	g_event_report
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
	add	r5, r1, #69632	@ tmp146, pstCtx,
	mov	r6, r0	@ pSegMan, pSegMan
	mov	r0, r1	@, pstCtx
	mov	r4, r1	@ pstCtx, pstCtx
	ldr	r7, [r5, #4064]	@ ChanID, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	MP2_GetPacketState	@
	cmp	r0, #2	@,
	beq	.L236	@,
.L231:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L237	@,
.L233:
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
.L237:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L233	@
.L236:
	ldr	r3, .L239	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.36246, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L238	@,
.L232:
	add	r1, r4, #72704	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L231	@
.L238:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L231	@,
	b	.L232	@
.L240:
	.align	2
.L239:
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
	beq	.L247	@,
.L242:
	add	r5, r4, #20480	@ tmp146, pstCtx,
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #2480]	@, MEM[(struct MP4_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L248	@,
.L244:
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
.L248:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG4DEC_Decode	@
	b	.L244	@
.L247:
	ldr	r3, .L250	@ tmp126,
	ldr	r3, [r3, r5, asl #2]	@ D.36257, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L249	@,
.L243:
	add	r1, r4, #15680	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #24	@,,
	bl	MPEG4DEC_Decode	@
	b	.L242	@
.L249:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L242	@,
	b	.L243	@
.L251:
	.align	2
.L250:
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
	bne	.L253	@,
	ldr	r3, .L260	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.36268, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L258	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
.L253:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #224]	@, MEM[(struct AVS_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L259	@,
.L255:
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
.L258:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L253	@,
	add	r1, r4, #16384	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #64	@,,
	bl	AVSDEC_Decode	@
	b	.L253	@
.L259:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	AVSDEC_Decode	@
	b	.L255	@
.L261:
	.align	2
.L260:
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
	cmp	r1, #6	@ VideoStandard,
	ldrls	pc, [pc, r1, asl #2]	@ VideoStandard
	b	.L262	@
.L265:
	.word	.L264
	.word	.L262
	.word	.L266
	.word	.L267
	.word	.L262
	.word	.L262
	.word	.L268
.L268:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_AVS	@
.L267:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L266:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG4	@
.L264:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
.L262:
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
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L270	@
.L272:
	.word	.L269
	.word	.L270
	.word	.L273
	.word	.L269
	.word	.L270
	.word	.L270
	.word	.L270
.L270:
	b	vfmw_dprint_nothing	@
.L273:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r4, r1, #20480	@ tmp120, pCtx,
	ldr	r5, [r4, #1580]	@ D.36280, MEM[(struct MP4_CTX_S *)pCtx_5(D)].pstExtraData
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_5(D)].ChanID
	ldr	r1, [r5, #240]	@, MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].StreamID
	bl	SM_ReleaseStreamSeg	@
	ldrb	r3, [r5, #229]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].IsLastSeg, MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].IsLastSeg
	cmp	r3, #1	@ MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[0].IsLastSeg,
	beq	.L275	@,
	ldr	r0, [r4, #2480]	@, MEM[(struct MP4_CTX_S *)pCtx_5(D)].ChanID
	ldr	r1, [r5, #320]	@, MEM[(struct STREAM_SEG_PACKET_S *)_7 + 136B].Pack.StreamPack[1].StreamID
	bl	SM_ReleaseStreamSeg	@
.L275:
	add	r0, r5, #224	@, D.36280,
	mov	r1, #160	@,
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	__memzero	@
.L269:
	bx	lr	@
	.fnend
	.size	ReleasePacket, .-ReleasePacket
	.align	2
	.global	ReleaseCurPic
	.type	ReleaseCurPic, %function
ReleaseCurPic:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #6	@ VidStd,
	ldrls	pc, [pc, r0, asl #2]	@ VidStd
	b	.L281	@
.L283:
	.word	.L282
	.word	.L281
	.word	.L284
	.word	.L285
	.word	.L281
	.word	.L281
	.word	.L286
.L286:
	mov	r0, r1	@, pCtx
	b	AVS_ClearCurPic	@
.L285:
	mov	r0, r1	@, pCtx
	b	MP2_ClearCurPic	@
.L284:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, r1	@, pCtx
	mov	r4, r1	@ pCtx, pCtx
	bl	MP4_ClearCurPic	@
	mov	r0, r4	@, pCtx
	ldmfd	sp!, {r4, lr}	@
	b	MP4_Clean_HeadPacket	@
.L282:
	mov	r0, r1	@, pCtx
	b	H264_ClearCurrPic	@
.L281:
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
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.36289, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	add	r2, r3, #73	@ tmp127, D.36289,
	cmp	r3, #0	@ D.36289,
	cmpne	r3, #179	@, D.36289,
	uxtb	r2, r2	@ tmp129, tmp127
	moveq	ip, #1	@ tmp126,
	movne	ip, #0	@ tmp126,
	cmp	r2, #1	@ tmp129,
	movhi	r2, ip	@, tmp134, tmp126
	orrls	r2, ip, #1	@,, tmp134, tmp126
	cmp	r2, #0	@ tmp134,
	beq	.L292	@,
	ldr	r2, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r2, #0	@ *pNewPicDetector_10(D),
	bne	.L292	@,
	mov	r3, #1	@ tmp136,
	str	r3, [r0]	@ tmp136, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.36289, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L289:
	cmp	r3, #0	@ D.36289,
	streq	r3, [r0]	@ D.36289, *pNewPicDetector_10(D)
	mov	r0, r2	@, ret
	bx	lr	@
.L292:
	mvn	r2, #0	@ ret,
	b	.L289	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegMpeg4
	.type	CheckNewPicSegMpeg4, %function
CheckNewPicSegMpeg4:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.36295, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	cmp	r3, #179	@ D.36295,
	cmpne	r3, #176	@, D.36295,
	add	ip, r3, #75	@ tmp134, D.36295,
	moveq	lr, #1	@ tmp129,
	movne	lr, #0	@ tmp129,
	uxtb	ip, ip	@ tmp136, tmp134
	cmp	r3, #47	@ D.36295,
	orrls	lr, lr, #1	@,, tmp133, tmp129
	cmp	ip, #1	@ tmp136,
	movhi	ip, lr	@, tmp141, tmp133
	orrls	ip, lr, #1	@,, tmp141, tmp133
	cmp	ip, #0	@ tmp141,
	bne	.L306	@,
.L294:
	cmp	r2, #1	@ IsShortHead,
	bne	.L298	@,
.L295:
	mov	r3, #1	@ tmp143,
	str	r3, [r0]	@ tmp143, *pNewPicDetector_11(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.36295, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	mov	r2, #0	@ ret,
.L296:
	cmp	r3, #182	@ D.36295,
	moveq	r3, #0	@ tmp144,
	streq	r3, [r0]	@ tmp144, *pNewPicDetector_11(D)
	mov	r0, r2	@, ret
	ldr	pc, [sp], #4	@
.L306:
	ldr	ip, [r0]	@ *pNewPicDetector_11(D), *pNewPicDetector_11(D)
	cmp	ip, #0	@ *pNewPicDetector_11(D),
	beq	.L295	@,
	b	.L294	@
.L298:
	mvn	r2, #0	@ ret,
	b	.L296	@
	.fnend
	.size	CheckNewPicSegMpeg4, .-CheckNewPicSegMpeg4
	.align	2
	.global	CheckNewPicSegAVS
	.type	CheckNewPicSegAVS, %function
CheckNewPicSegAVS:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.36302, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	str	lr, [sp, #-4]!	@,
	.save {lr}
	sub	r2, r3, #179	@ D.36299, D.36302,
	clz	r2, r2	@ D.36299, D.36299
	add	ip, r3, #74	@ tmp129, D.36302,
	mov	r2, r2, lsr #5	@ D.36299, D.36299,
	uxtb	ip, ip	@ tmp131, tmp129
	cmp	r3, #176	@ D.36302,
	movne	lr, r2	@, tmp128, D.36299
	orreq	lr, r2, #1	@,, tmp128, D.36299
	cmp	ip, #1	@ tmp131,
	movhi	ip, lr	@, tmp136, tmp128
	orrls	ip, lr, #1	@,, tmp136, tmp128
	cmp	ip, #0	@ tmp136,
	beq	.L311	@,
	ldr	ip, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	ip, #0	@ *pNewPicDetector_10(D),
	bne	.L311	@,
	mov	r3, #1	@ tmp138,
	str	r3, [r0]	@ tmp138, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.36302, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	sub	r2, r3, #179	@ D.36299, D.36302,
	clz	r2, r2	@ D.36299, D.36299
	mov	r2, r2, lsr #5	@ D.36299, D.36299,
.L308:
	cmp	r3, #182	@ D.36302,
	movne	r3, r2	@, tmp145, D.36299
	orreq	r3, r2, #1	@,, tmp145, D.36299
	cmp	r3, #0	@ tmp145,
	movne	r3, #0	@ tmp146,
	strne	r3, [r0]	@ tmp146, *pNewPicDetector_10(D)
	mov	r0, ip	@, ret
	ldr	pc, [sp], #4	@
.L311:
	mvn	ip, #0	@ ret,
	b	.L308	@
	.fnend
	.size	CheckNewPicSegAVS, .-CheckNewPicSegAVS
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
	b	.L317	@
.L319:
	.word	.L318
	.word	.L317
	.word	.L320
	.word	.L321
	.word	.L317
	.word	.L317
	.word	.L322
.L322:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegAVS	@
.L321:
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg2	@
.L320:
	mov	r2, r3	@, IsShortHead
	mov	r1, ip	@, pu8
	b	CheckNewPicSegMpeg4	@
.L318:
	mov	r1, ip	@, pu8
	b	H264_IsNewPicNal	@
.L317:
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
	beq	.L338	@,
.L324:
	ldrb	lr, [ip]	@ zero_extendqisi2	@ *pu8_6, *pu8_6
	cmp	lr, #0	@ *pu8_6,
	bne	.L326	@,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pu8_6 + 1B], MEM[(HI_U8 *)pu8_6 + 1B]
	cmp	lr, #0	@ MEM[(HI_U8 *)pu8_6 + 1B],
	bne	.L326	@,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pu8_6 + 2B], MEM[(HI_U8 *)pu8_6 + 2B]
	cmp	ip, #1	@ MEM[(HI_U8 *)pu8_6 + 2B],
	bne	.L326	@,
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L338:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ *pStreamSeg_5(D), *pStreamSeg_5(D)
	ands	r3, r3, #1	@ IsShortHead, *pStreamSeg_5(D),
	beq	.L324	@,
	ldmfd	sp!, {r4, lr}	@
	b	CheckNewPicSegByVidStd	@
.L326:
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
	ldr	r3, .L346	@ tmp150,
	add	r0, r3, r0, lsl #2	@ tmp151, tmp150, ChanID,
	ldr	ip, [r0, #12]	@ D.36323, pstVdecUsdPool
	cmp	ip, #0	@ D.36323,
	beq	.L345	@,
.L340:
	mov	r0, #0	@ tmp156,
	add	r1, ip, #205824	@ D.36326, ivtmp.111,
	mov	r3, ip	@ ivtmp.111, D.36323
	mov	r2, r0	@ tmp160, tmp156
	str	r0, [ip]	@ tmp156, _16->s32AccessIdx
.L342:
	str	r2, [r3, #1044]	@ tmp160, MEM[base: _22, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.111, ivtmp.111,
	str	r2, [r3, #-32]	@ tmp160, MEM[base: _22, offset: 1040B]
	cmp	r3, r1	@ ivtmp.111, D.36326
	bne	.L342	@,
	mov	r0, #0	@ D.36324,
	bx	lr	@
.L345:
	cmp	r1, #0	@ Viraddr,
	str	r1, [r0, #12]	@ Viraddr, pstVdecUsdPool
	movne	ip, r1	@ D.36323, Viraddr
	bne	.L340	@
.L343:
	mvn	r0, #0	@ D.36324,
	bx	lr	@
.L347:
	.align	2
.L346:
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
	ldr	r3, .L349	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #12]	@ tmp114, pstVdecUsdPool
	bx	lr	@
.L350:
	.align	2
.L349:
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
	ldr	r3, .L356	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp118, ChanID,
	ldr	r0, [r0, #12]	@ D.36341, pstVdecUsdPool
	cmp	r0, #0	@ D.36341,
	beq	.L354	@,
	mov	ip, #0	@ tmp121,
	add	r1, r0, #205824	@ D.36343, ivtmp.125,
	mov	r3, r0	@ ivtmp.125, D.36341
	mov	r2, ip	@ tmp125, tmp121
	str	ip, [r0]	@ tmp121, _7->s32AccessIdx
.L353:
	str	r2, [r3, #1044]	@ tmp125, MEM[base: _18, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.125, ivtmp.125,
	str	r2, [r3, #-32]	@ tmp125, MEM[base: _18, offset: 1040B]
	cmp	r3, r1	@ ivtmp.125, D.36343
	bne	.L353	@,
	mov	r0, #0	@ D.36340,
	bx	lr	@
.L354:
	mvn	r0, #0	@ D.36340,
	bx	lr	@
.L357:
	.align	2
.L356:
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
	ldr	r3, .L367	@ tmp122,
	add	r0, r3, r0, lsl #2	@ tmp123, tmp122, ChanID,
	ldr	r0, [r0, #12]	@ D.36356, pstVdecUsdPool
	cmp	r0, #0	@ D.36356,
	bxeq	lr	@
	mov	r3, r0	@ ivtmp.136, D.36356
	mov	r2, #0	@ i,
	b	.L361	@
.L360:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #1072	@ ivtmp.136, ivtmp.136,
	cmp	r2, #192	@ i,
	beq	.L366	@,
.L361:
	ldr	r1, [r3, #1044]	@ MEM[base: _26, offset: 1044B], MEM[base: _26, offset: 1044B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1044B],
	bne	.L360	@,
	ldr	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[base: _26, offset: 1040B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1040B],
	bne	.L360	@,
	mov	r3, #1072	@ tmp128,
	movw	ip, #1076	@ tmp168,
	mul	r2, r3, r2	@ tmp127, tmp128, i
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	lr, #1064	@ tmp138,
	add	r3, r0, r2	@ tmp132, D.36356, tmp127
	add	r2, r2, #8	@ tmp129, tmp127,
	mov	r4, #0	@ tmp140,
	mov	r5, #0	@,
	str	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].dnr_used_flag
	add	r0, r0, r2	@ pstUsrDat, D.36356, tmp129
	str	r1, [r3, #1056]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].data_size
	str	r1, [r3, #1052]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_img_cnt
	str	r1, [r3, #1048]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_cnt
	strb	r1, [r3, #1072]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1072B]
	strb	r1, [r3, #1073]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1073B]
	strb	r1, [r3, #1074]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1074B]
	strd	r4, [r3, lr]	@ tmp140, tmp132, tmp138
	strh	r1, [r3, ip]	@ movhi	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1076B]
	ldmfd	sp!, {r4, r5, pc}	@
.L366:
	mov	r0, #0	@ pstUsrDat,
	bx	lr	@
.L368:
	.align	2
.L367:
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
	beq	.L396	@,
	ldrh	r3, [r0, #4]	@ pstVoQue_7(D)->history, pstVoQue_7(D)->history
	ldrh	lr, [r0, #8]	@ D.36372, pstVoQue_7(D)->tail
	and	r3, r3, #63	@ i, pstVoQue_7(D)->history,
	cmp	lr, r3	@ D.36372, i
	beq	.L389	@,
.L388:
	add	r2, r0, r3, lsl #2	@ tmp127, pstVoQue, i,
	add	r3, r3, #1	@ i, i,
	and	r3, r3, #63	@ i, i,
	ldr	r2, [r2, #12]	@ D.36370, pstVoQue_7(D)->image_ptr
	cmp	r2, #0	@ D.36370,
	beq	.L387	@,
	ldr	ip, [r2, #176]	@ _13->image_id, _13->image_id
	ldr	r2, [r1, #176]	@ p_image_4(D)->image_id, p_image_4(D)->image_id
	cmp	ip, r2	@ _13->image_id, p_image_4(D)->image_id
	beq	.L390	@,
.L387:
	cmp	r3, lr	@ i, D.36372
	bne	.L388	@,
.L389:
	mvn	r0, #0	@ D.36368,
	ldmfd	sp!, {r4, pc}	@
.L390:
	mov	r0, #0	@ D.36368,
	ldmfd	sp!, {r4, pc}	@
.L396:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.36368,
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
	b	.L398	@
.L400:
	.word	.L399
	.word	.L401
	.word	.L402
	.word	.L403
	.word	.L404
	.word	.L405
.L405:
	mov	r2, #0	@ tmp122,
	mov	r3, #2	@ tmp123,
	str	r2, [r0, #60]	@ tmp122, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp123, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L399:
	mov	r2, #0	@ tmp112,
	mov	r3, #1	@ tmp113,
	str	r2, [r0, #60]	@ tmp112, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp113, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L401:
	mov	r2, #4	@ tmp114,
	mov	r3, #3	@ tmp115,
	str	r2, [r0, #60]	@ tmp114, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp115, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L402:
	mov	r2, #16	@ tmp116,
	mov	r3, #9	@ tmp117,
	str	r2, [r0, #60]	@ tmp116, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp117, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L403:
	mov	r2, #221	@ tmp118,
	mov	r3, #100	@ tmp119,
	str	r2, [r0, #60]	@ tmp118, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp119, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L404:
	mov	r2, #235	@ tmp120,
	mov	r3, #100	@ tmp121,
	str	r2, [r0, #60]	@ tmp120, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp121, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L398:
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
	ldr	r0, [r0, #296]	@ D.36377, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_2(D) + 272B].LastImageIdPlus2
	cmp	r0, #1	@ D.36377,
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
	.type	last_rec_pos_time.35146, %object
	.size	last_rec_pos_time.35146, 4
last_rec_pos_time.35146:
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
