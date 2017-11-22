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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
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
	add	r2, r2, #100	@ D.30919, pstVoQue_3(D)->ResetMagicWord,
	strh	r3, [r4]	@ movhi	@ tmp115, pstVoQue_3(D)->max_queue_size
	str	r2, [r4, #344]	@ D.30919, pstVoQue_3(D)->ResetMagicWord
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
	cmp	r0, #3	@ eVidStd,
	mov	r3, r1	@ pCtx, pCtx
	beq	.L7	@,
	cmp	r0, #18	@ eVidStd,
	beq	.L8	@,
	cmp	r0, #0	@ eVidStd,
	bxne	lr	@
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	H264DEC_RecycleImage	@
.L8:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	USERDEC_RecycleImage	@
.L7:
	ldr	r1, [r2, #176]	@, p_image_4(D)->image_id
	mov	r0, r3	@, pCtx
	b	MPEG2DEC_RecycleImage	@
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
	sub	r2, r2, #8	@ D.30929, eVidStd,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldrd	r4, [r3, #56]	@ D.30928, tmp125,
	subs	r6, r0, r4	@ D.30928, D.30928, D.30928
	and	r4, r4, r5	@ tmp130, D.30928, D.30928
	sbc	r7, r1, r5	@ D.30928, D.30928, D.30928
	cmp	r7, #0	@ D.30928,
	cmpeq	r6, #5	@ D.30928,
	movls	r3, #1	@ tmp128,
	movhi	r3, #0	@ tmp128,
	adds	r4, r4, #1	@ tmp132, tmp130,
	movne	r4, #1	@ tmp132,
	tst	r3, r4	@ tmp128, tmp132
	beq	.L25	@,
	cmp	r2, #1	@ D.30929,
	mvnhi	r0, #0	@ InferedPTS,
	mvnhi	r1, #0	@ InferedPTS,
	bls	.L15	@,
.L13:
	ldmfd	sp!, {r4, r5, r6, r7}	@
	bx	lr	@
.L25:
	cmp	r2, #1	@ D.30929,
	bhi	.L13	@,
	ldr	r3, [ip, #140]	@ p_image_6(D)->format, p_image_6(D)->format
	and	r3, r3, #3	@ D.30929, p_image_6(D)->format,
	cmp	r3, #2	@ D.30929,
	bne	.L13	@,
.L15:
	mvn	r2, #0	@ tmp142,
	str	r2, [ip]	@ tmp142, p_image_6(D)->SrcPts
	mov	r0, r2	@ InferedPTS, tmp142
	mov	r1, r2	@ InferedPTS, tmp143
	str	r2, [ip, #4]	@ tmp143, p_image_6(D)->SrcPts
	b	.L13	@
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
	ldmfd	sp!, {r4, r6, r7, pc}	@
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
	beq	.L29	@,
	ldr	r3, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	cmp	r3, #0	@ p_image_10(D)->disp_height,
	bne	.L55	@,
.L29:
	ldr	r2, [r4, #144]	@ D.30935, p_image_10(D)->image_width
	ldr	r3, [r4, #148]	@ D.30935, p_image_10(D)->image_height
	mov	r1, r2, lsr #1	@ D.30935, D.30935,
	str	r2, [r4, #152]	@ D.30935, p_image_10(D)->disp_width
	str	r3, [r4, #156]	@ D.30935, p_image_10(D)->disp_height
	mov	r3, r3, lsr #1	@ D.30935, D.30935,
	str	r1, [r4, #160]	@ D.30935, p_image_10(D)->disp_center_x
	str	r3, [r4, #164]	@ D.30935, p_image_10(D)->disp_center_y
.L30:
	str	r2, [r5, #300]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageWidth
	ldr	r3, [r4, #148]	@ D.30935, p_image_10(D)->image_height
	ldr	r2, [r5, #280]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	str	r3, [r5, #304]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageHeight
	ldr	r3, [r4, #140]	@ p_image_10(D)->format, p_image_10(D)->format
	ubfx	r3, r3, #5, #3	@ D.30935, p_image_10(D)->format,,
	str	r3, [r5, #308]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].VideoFormat
	ldr	r3, [r4, #140]	@ D.30935, p_image_10(D)->format
	str	r3, [r5, #312]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].ImageFormat
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.30935, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r3, [r4, #184]	@ D.30935, p_image_10(D)->seq_cnt
	ldr	r6, [r4, #140]	@ D.30935, p_image_10(D)->format
	cmp	r3, r2	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldSeqCnt
	ldr	r8, [r4, #156]	@ p_image_10(D)->disp_height, p_image_10(D)->disp_height
	ldrh	r2, [r4, #164]	@ D.30935, p_image_10(D)->disp_center_y
	ubfx	r10, r6, #14, #3	@ AspectRatio, D.30935,,
	ldr	r9, [r4, #160]	@ p_image_10(D)->disp_center_x, p_image_10(D)->disp_center_x
	ubfx	r6, r6, #8, #2	@ ScanType, D.30935,,
	ldrh	r1, [r4, #152]	@ D.30935, p_image_10(D)->disp_width
	strne	r3, [r5, #320]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqCnt
	ldr	r3, [r5, #316]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	orr	r9, r2, r9, asl #16	@ dcenter, D.30935, p_image_10(D)->disp_center_x,
	orr	r8, r1, r8, asl #16	@ dsize, D.30935, p_image_10(D)->disp_height,
	add	r2, r3, #1	@ D.30935, D.30935,
	str	r2, [r5, #316]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].SeqImgCnt
	str	r3, [r4, #188]	@ D.30935, p_image_10(D)->seq_img_cnt
	ldr	r3, [r5, #272]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
	cmp	r3, r10	@ D.30935, AspectRatio
	beq	.L32	@,
	ldr	r2, .L57	@ tmp206,
	ldr	ip, [r2]	@ D.30937, g_event_report
	cmp	ip, #0	@ D.30937,
	beq	.L33	@,
	strb	r3, [sp]	@ D.30935, para
	mov	r2, sp	@,
	strb	r10, [sp, #1]	@ AspectRatio, para
	mov	r1, #7	@,
	mov	r0, r7	@, ChanID
	blx	ip	@ D.30937
.L33:
	str	r10, [r5, #272]	@ AspectRatio, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldAspectRatio
.L32:
	ldr	r3, [r5, #276]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
	cmp	r3, r6	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType, ScanType
	beq	.L34	@,
	ldr	r3, .L57	@ tmp211,
	ldr	r3, [r3]	@ D.30937, g_event_report
	cmp	r3, #0	@ D.30937,
	beq	.L35	@,
	add	r2, sp, #8	@ tmp213,,
	mov	r1, #4	@,
	mov	r0, r7	@, ChanID
	strb	r6, [r2, #-8]!	@ ScanType, para
	blx	r3	@ D.30937
.L35:
	str	r6, [r5, #276]	@ ScanType, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldScanType
.L34:
	ldr	r3, [r5, #288]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	cmp	r3, r8	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize, dsize
	beq	.L56	@,
.L36:
	ldr	r3, .L57	@ tmp216,
	str	r8, [r5, #288]	@ dsize, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispSize
	str	r9, [r5, #292]	@ dcenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	ldr	r3, [r3]	@ D.30937, g_event_report
	cmp	r3, #0	@ D.30937,
	beq	.L37	@,
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
	blx	r3	@ D.30937
.L37:
	ldr	r3, [r4, #176]	@ p_image_10(D)->image_id, p_image_10(D)->image_id
	add	r3, r3, #2	@ D.30935, p_image_10(D)->image_id,
	str	r3, [r5, #296]	@ D.30935, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].LastImageIdPlus2
	ldr	r2, [r4, #104]	@ D.30935, p_image_10(D)->luma_phy_addr
	ldr	r1, [r4, #108]	@ D.30935, p_image_10(D)->chrom_phy_addr
	ldr	r3, [r4, #172]	@ D.30935, p_image_10(D)->image_stride
	str	r2, [r4, #88]	@ D.30935, p_image_10(D)->top_luma_phy_addr
	str	r1, [r4, #92]	@ D.30935, p_image_10(D)->top_chrom_phy_addr
	add	r2, r3, r2	@ D.30935, D.30935, D.30935
	add	r3, r1, r3	@ D.30935, D.30935, D.30935
	str	r2, [r4, #96]	@ D.30935, p_image_10(D)->btm_luma_phy_addr
	str	r3, [r4, #100]	@ D.30935, p_image_10(D)->btm_chrom_phy_addr
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L55:
	cmp	r1, #15	@ eVidStd,
	cmpne	r1, #0	@, eVidStd,
	ldreq	r2, [r4, #144]	@ D.30935, p_image_10(D)->image_width
	beq	.L30	@,
	b	.L29	@
.L56:
	ldr	r3, [r5, #292]	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter
	cmp	r3, r9	@ MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_8(D) + 272B].OldDispCenter, dcenter
	bne	.L36	@,
	b	.L37	@
.L58:
	.align	2
.L57:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r8, [sp, #40]	@ p_image, p_image
	cmp	r8, #0	@ p_image,
	beq	.L76	@,
	mov	r4, r3	@ pstVoQue, pstVoQue
	mov	r7, r0	@ ChanID, ChanID
	ldr	r0, .L99	@,
	mov	r6, r2	@ pCtx, pCtx
	mov	r5, r1	@ eVidStd, eVidStd
	bl	OSAL_SpinLockIRQ	@
	ldrh	ip, [r4, #4]	@ pstVoQue_14(D)->history, pstVoQue_14(D)->history
	ldrh	r3, [r4, #8]	@ D.30947, pstVoQue_14(D)->tail
	and	ip, ip, #63	@ i, pstVoQue_14(D)->history,
	cmp	r3, ip	@ D.30947, i
	ldrne	r2, [r8, #176]	@ D.30953, p_image_11(D)->image_id
	movne	r1, #1000	@ tmp273,
	beq	.L65	@,
.L66:
	add	r3, r4, ip, lsl #2	@ tmp168, pstVoQue, i,
	add	ip, ip, #1	@ i, i,
	and	ip, ip, #63	@ i, i,
	ldr	r3, [r3, #12]	@ tmp167, pstVoQue_14(D)->image_ptr
	ldr	r3, [r3, #176]	@ _20->image_id, _20->image_id
	cmp	r3, r2	@ _20->image_id, D.30953
	streq	r1, [r8, #180]	@ tmp273, p_image_11(D)->error_level
	ldrh	lr, [r4, #8]	@ D.30947, pstVoQue_14(D)->tail
	cmp	lr, ip	@ D.30947, i
	bne	.L66	@,
.L65:
	ldr	r3, [r8, #180]	@ D.30949, p_image_11(D)->error_level
	cmp	r3, #100	@ D.30949,
	bls	.L96	@,
.L62:
	cmp	r3, #1000	@ D.30949,
	beq	.L68	@,
	mov	r2, r8	@, p_image
	mov	r1, r6	@, pCtx
	mov	r0, r5	@, eVidStd
	bl	ReturnImageToSyntax	@
.L68:
	ldr	r0, .L99	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.30945,
.L60:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L96:
	ldr	r2, [r8, #144]	@ p_image_11(D)->image_width, p_image_11(D)->image_width
	cmp	r2, #31	@ p_image_11(D)->image_width,
	bls	.L62	@,
	ldr	r2, [r8, #148]	@ p_image_11(D)->image_height, p_image_11(D)->image_height
	cmp	r2, #31	@ p_image_11(D)->image_height,
	bls	.L62	@,
	mov	r2, r5	@, eVidStd
	mov	r1, r8	@, p_image
	mov	r0, r4	@, pstVoQue
	mov	r9, r7, asl #3	@ tmp269, ChanID,
	bl	InsertImgToVoQueue_PtsProcess	@
	mov	r1, r5	@, eVidStd
	mov	r3, r8	@, p_image
	mov	r2, r4	@, pstVoQue
	mov	r0, r7	@, ChanID
	mov	r5, r7, asl #5	@ tmp270, ChanID,
	bl	InsertImgToVoQueue_FillImageInfo	@
	ldrh	r3, [r4, #8]	@ D.30946, pstVoQue_14(D)->tail
	ldr	r6, .L99+4	@ tmp271,
	rsb	r2, r9, r5	@ tmp186, tmp269, tmp270
	add	r1, r3, #1	@ tmp179, D.30946,
	ldr	r0, .L99	@,
	add	r3, r4, r3, lsl #2	@ tmp177, pstVoQue, D.30946,
	and	r1, r1, #63	@ tmp181, tmp179,
	add	r2, r6, r2	@ tmp187, tmp271, tmp186
	str	r8, [r3, #12]	@ p_image, pstVoQue_14(D)->image_ptr
	strh	r1, [r4, #8]	@ movhi	@ tmp181, pstVoQue_14(D)->tail
	ldr	r3, [r8, #128]	@ p_image_11(D)->is_fld_save, p_image_11(D)->is_fld_save
	str	r3, [r2, #20]	@ p_image_11(D)->is_fld_save, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32IsFieldFlag
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r8, #300]	@ D.30944, p_image_11(D)->ImageDnr.video_standard
	sub	r2, r3, #10	@ D.30949, D.30944,
	cmp	r2, #2	@ D.30949,
	bls	.L97	@,
.L69:
	sub	r2, r3, #14	@ D.30944, D.30944,
	bics	r2, r2, #4	@ tmp280, D.30944,
	moveq	r2, #1	@ tmp198,
	movne	r2, #0	@ tmp198,
	cmp	r3, #4	@ D.30944,
	movne	r3, r2	@, tmp203, tmp198
	orreq	r3, r2, #1	@,, tmp203, tmp198
	cmp	r3, #0	@ tmp203,
	bne	.L70	@,
.L71:
	mov	r0, #8	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L98	@,
.L73:
	rsb	r7, r9, r5	@ tmp220, tmp269, tmp270
	add	r4, r6, r7	@ tmp221, tmp271, tmp220
	ldr	r3, [r4, #4]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	add	r3, r3, #1	@ D.30949, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum,
	str	r3, [r4, #4]	@ D.30949, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	bl	OSAL_GetTimeInMs	@
	ldr	r1, [r6, r7]	@ MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	rsb	r1, r1, r0	@ Period, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime, CurTime
	mov	r8, r0	@ CurTime,
	cmp	r1, #1000	@ Period,
	movcc	r0, #1	@ D.30945,
	bcc	.L60	@,
	ldr	r3, [r4, #4]	@ D.30949, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	cmp	r3, #0	@ D.30949,
	beq	.L75	@,
	movw	r0, #10000	@ tmp251,
	mul	r0, r0, r3	@, tmp251, D.30949
	bl	__aeabi_uidiv	@
	str	r0, [r4, #8]	@, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrFrameRate
.L75:
	rsb	r5, r9, r5	@ tmp259, tmp269, tmp270
	mov	r2, #0	@ tmp267,
	add	r3, r6, r5	@ tmp260, tmp271, tmp259
	mov	r0, #1	@ D.30945,
	str	r8, [r6, r5]	@ CurTime, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrBeginTime
	str	r2, [r3, #4]	@ tmp267, MEM[(struct VFMW_CHAN_STAT_S *)&g_VfmwChanStat][ChanID_10(D)].u32FrImgNum
	b	.L60	@
.L97:
	ldr	r2, .L99+8	@ tmp192,
	ldr	r2, [r2]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L69	@,
.L70:
	ldr	r3, .L99+12	@ tmp204,
	ldr	r3, [r3]	@ D.30951, g_event_report
	cmp	r3, #0	@ D.30951,
	beq	.L71	@,
	add	r2, sp, #8	@ tmp205,,
	mov	r1, #5	@,
	mov	r0, r7	@, ChanID
	str	r8, [r2, #-4]!	@ p_image, para
	blx	r3	@ D.30951
	b	.L71	@
.L98:
	bl	OSAL_GetTimeInMs	@
	ldr	r3, .L99	@ tmp206,
	ldr	r2, .L99+16	@ tmp211,
	add	r7, r3, r7, lsl #2	@ tmp207, tmp206, ChanID,
	ldr	r3, [r7, #8]	@ tmp210, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.30949, tmp210, CurTime
	cmp	r3, r2	@ D.30949, g_TraceFramePeriod
	strhi	r0, [r7, #8]	@ CurTime, last_rec_pos_time
	b	.L73	@
.L76:
	mvn	r0, #1	@ D.30945,
	b	.L60	@
.L100:
	.align	2
.L99:
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
	ldrh	r3, [r0, #6]	@ D.30956, pstVoQue_4(D)->head
	ldrh	ip, [r0, #4]	@ D.30956, pstVoQue_4(D)->history
	ldrh	r0, [r0, #8]	@ D.30956, pstVoQue_4(D)->tail
	cmp	r3, ip	@ D.30956, D.30956
	addcc	lr, r3, #64	@ D.30957, D.30956,
	rsbcs	ip, ip, r3	@ ReadNum, D.30956, D.30956
	rsbcc	ip, ip, lr	@ ReadNum, D.30956, D.30957
	cmp	r3, r0	@ D.30956, D.30956
	addhi	r0, r0, #64	@ D.30957, D.30956,
	str	ip, [r1]	@ ReadNum, *pReadImgNum_22(D)
	rsb	r3, r3, r0	@ NewNum, D.30956, D.30957
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
	ldr	r3, [r0]	@ D.30962, pSynCtx_3(D)->eVidStd
	cmp	r3, #3	@ D.30962,
	beq	.L110	@,
	cmp	r3, #18	@ D.30962,
	beq	.L111	@,
	cmp	r3, #0	@ D.30962,
	beq	.L111	@,
	mov	r0, #0	@ pstVoQue,
	bx	lr	@
.L111:
	add	r0, r0, #16	@ pstVoQue, pSynCtx,
	bx	lr	@
.L110:
	add	r0, r0, #72704	@ pstVoQue, pSynCtx,
	add	r0, r0, #648	@ pstVoQue, pstVoQue,
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L124	@,
	ldr	r3, [r0]	@ D.30974, pSynCtx_7(D)->eVidStd
	cmp	r3, #3	@ D.30974,
	beq	.L118	@,
	cmp	r3, #18	@ D.30974,
	beq	.L119	@,
	cmp	r3, #0	@ D.30974,
	beq	.L119	@,
.L124:
	mvn	r0, #1	@ D.30967,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L119:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L117:
	cmp	r4, #0	@ pstVoQue,
	beq	.L124	@,
	ldr	r0, .L129	@,
	mov	r5, r1	@ p_image, p_image
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ D.30969, pstVoQue_32->head
	ldrh	r2, [r4, #8]	@ pstVoQue_32->tail, pstVoQue_32->tail
	cmp	r2, r3	@ pstVoQue_32->tail, D.30969
	mvneq	r6, #2	@ ret,
	beq	.L121	@,
	add	r3, r4, r3, lsl #2	@ tmp143, pstVoQue, D.30969,
	mov	r2, #392	@,
	mov	r0, r5	@, p_image
	mov	r6, #1	@ ret,
	ldr	r1, [r3, #12]	@, pstVoQue_32->image_ptr
	bl	memcpy	@
	ldr	r3, [r5, #176]	@ p_image_5(D)->image_id, p_image_5(D)->image_id
	ldr	r2, [r4, #344]	@ pstVoQue_32->ResetMagicWord, pstVoQue_32->ResetMagicWord
	add	r3, r3, r2	@ D.30972, p_image_5(D)->image_id, pstVoQue_32->ResetMagicWord
	str	r3, [r5, #176]	@ D.30972, p_image_5(D)->image_id
	ldr	r3, [r4, #344]	@ D.30972, pstVoQue_32->ResetMagicWord
	str	r3, [r5, #380]	@ D.30972, p_image_5(D)->resetNum
	ldrh	r3, [r4, #6]	@ pstVoQue_32->head, pstVoQue_32->head
	add	r3, r3, r6	@ tmp155, pstVoQue_32->head,
	and	r3, r3, #63	@ tmp157, tmp155,
	strh	r3, [r4, #6]	@ movhi	@ tmp157, pstVoQue_32->head
.L121:
	ldr	r0, .L129	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r6	@ D.30967, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L118:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L117	@
.L130:
	.align	2
.L129:
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
	ldr	r3, [r0]	@ D.30987, pSynCtx_4(D)->eVidStd
	cmp	r3, #0	@ D.30987,
	bne	.L138	@,
	cmp	r1, #0	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L138:
	cmn	r1, #2	@ RetValue,
	beq	.L136	@,
	cmp	r1, #1	@ RetValue,
	mvnne	r0, #19	@ ret,
	moveq	r0, #1	@ ret,
	bx	lr	@
.L136:
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
	ldr	r3, [r0]	@ D.30992, pSynCtx_4(D)->eVidStd
	cmp	r3, #3	@ D.30992,
	beq	.L141	@,
	cmp	r3, #18	@ D.30992,
	beq	.L142	@,
	cmp	r3, #0	@ D.30992,
	mvnne	r1, #1	@ ret,
	beq	.L147	@,
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
.L142:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	USERDEC_RecycleImage	@
	mov	r1, r0	@ ret,
	mov	r0, r4	@, pSynCtx
	ldmfd	sp!, {r4, lr}	@
	b	SYNTAX_ReleaseImage_RecycleImage_CheckRet	@
.L141:
	ldr	r1, [r1, #176]	@, p_image_7(D)->image_id
	add	r0, r0, #8	@, pSynCtx,
	bl	MPEG2DEC_RecycleImage	@
	mov	r1, r0	@ ret,
	mov	r0, r4	@, pSynCtx
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
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	beq	.L164	@,
	ldr	r3, [r0]	@ D.31007, pSynCtx_15(D)->eVidStd
	cmp	r3, #3	@ D.31007,
	beq	.L151	@,
	cmp	r3, #18	@ D.31007,
	beq	.L152	@,
	cmp	r3, #0	@ D.31007,
	beq	.L152	@,
.L164:
	mvn	r0, #1	@ D.31002,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L152:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L150:
	cmp	r4, #0	@ pstVoQue,
	beq	.L164	@,
	mov	r8, r1	@ p_image, p_image
	mov	r6, r0	@ pSynCtx, pSynCtx
	ldr	r0, .L175	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r4, #344]	@ pstVoQue_53->ResetMagicWord, pstVoQue_53->ResetMagicWord
	ldr	r3, [r8, #176]	@ p_image_13(D)->image_id, p_image_13(D)->image_id
	rsb	r3, r2, r3	@ D.31004, pstVoQue_53->ResetMagicWord, p_image_13(D)->image_id
	str	r3, [r8, #176]	@ D.31004, p_image_13(D)->image_id
	ldrh	r2, [r4, #4]	@ pstVoQue_53->history, pstVoQue_53->history
	ldrh	r9, [r4, #6]	@ D.31009, pstVoQue_53->head
	and	r2, r2, #63	@ i, pstVoQue_53->history,
	cmp	r9, r2	@ D.31009, i
	bne	.L161	@,
	b	.L160	@
.L157:
	add	r2, r2, #1	@ i, i,
	and	r2, r2, #63	@ i, i,
	cmp	r2, r9	@ i, D.31009
	beq	.L160	@,
.L161:
	add	lr, r2, #2	@ tmp174, i,
	add	r3, r4, lr, lsl #2	@ tmp157, pstVoQue, tmp174,
	ldr	r3, [r3, #4]	@ D.31006, pstVoQue_53->image_ptr
	cmp	r3, #0	@ D.31006,
	beq	.L165	@,
	ldr	r1, [r3, #176]	@ _29->image_id, _29->image_id
	ldr	r3, [r8, #176]	@ p_image_13(D)->image_id, p_image_13(D)->image_id
	rsb	r1, r1, r3	@ SameImageFlag, _29->image_id, p_image_13(D)->image_id
	clz	r1, r1	@ SameImageFlag, SameImageFlag
	mov	r1, r1, lsr #5	@ SameImageFlag, SameImageFlag,
	cmp	r1, #0	@ SameImageFlag,
	beq	.L157	@,
.L156:
	ldrh	r7, [r4, #4]	@ D.31008, pstVoQue_53->history
	b	.L159	@
.L167:
	mov	r2, ip	@ i, i
.L159:
	cmp	r2, #0	@ i,
	mov	ip, #63	@ i,
	subne	ip, r2, #1	@ i, i,
	add	r5, r4, lr, lsl #2	@ tmp167, pstVoQue, tmp174,
	add	r3, ip, #2	@ tmp163, i,
	cmp	r2, r7	@ i, D.31008
	add	r0, r4, r3, lsl #2	@ tmp164, pstVoQue, tmp163,
	mov	lr, r3	@ tmp174, tmp163
	ldr	r3, [r0, #4]	@ D.31006, pstVoQue_53->image_ptr
	str	r3, [r5, #4]	@ D.31006, pstVoQue_53->image_ptr
	bne	.L167	@,
	cmp	r1, #1	@ SameImageFlag,
	add	r3, r2, #1	@ tmp169, i,
	and	r3, r3, #63	@ tmp171, tmp169,
	strh	r3, [r4, #4]	@ movhi	@ tmp171, pstVoQue_53->history
	bne	.L157	@,
	mov	r1, r8	@, p_image
	mov	r0, r6	@, pSynCtx
	bl	SYNTAX_ReleaseImage_RecycleImage	@
	mov	r4, r0	@ ret,
.L155:
	ldr	r0, .L175	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@ D.31002, ret
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L165:
	mov	r1, #2	@ SameImageFlag,
	b	.L156	@
.L160:
	mvn	r4, #1	@ ret,
	b	.L155	@
.L151:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L150	@
.L176:
	.align	2
.L175:
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
	ldr	r3, [r0]	@ D.31015, pSynCtx_5(D)->eVidStd
	cmp	r3, #3	@ D.31015,
	beq	.L179	@,
	cmp	r3, #18	@ D.31015,
	beq	.L180	@,
	cmp	r3, #0	@ D.31015,
	beq	.L180	@,
	mvn	r0, #1	@ D.31014,
	ldmfd	sp!, {r4, pc}	@
.L180:
	add	r4, r0, #16	@ pstVoQue, pSynCtx,
.L182:
	ldr	r0, .L186	@,
	bl	OSAL_SpinLockIRQ	@
	ldrh	r3, [r4, #6]	@ pstVoQue_1->head, pstVoQue_1->head
	ldr	r0, .L186	@,
	sub	r3, r3, #1	@ tmp123, pstVoQue_1->head,
	and	r3, r3, #63	@ tmp125, tmp123,
	strh	r3, [r4, #6]	@ movhi	@ tmp125, pstVoQue_1->head
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #1	@ D.31014,
	ldmfd	sp!, {r4, pc}	@
.L179:
	add	r4, r0, #72704	@ pstVoQue, pSynCtx,
	add	r4, r4, #648	@ pstVoQue, pstVoQue,
	b	.L182	@
.L187:
	.align	2
.L186:
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
	beq	.L191	@,
.L188:
	add	sp, sp, #36	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L191:
	add	r6, r5, #12288	@ tmp141, pstCtx,
	ldrb	r3, [r6, #1268]	@ zero_extendqisi2	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag,
	bne	.L188	@,
	add	r5, r5, #49152	@ tmp144, pstCtx,
	ldr	r0, [r5, #3688]	@, MEM[(struct H264_CTX_S *)pstCtx_19(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r6, #1268]	@ MEM[(struct H264_CTX_S *)pstCtx_19(D)].pH264DecParam, MEM[(struct H264_CTX_S *)pstCtx_19(D)].IsStreamEndFlag
	b	.L188	@
	.fnend
	.size	DecodeStream_H264, .-DecodeStream_H264
	.align	2
	.global	SegMan
	.type	SegMan, %function
SegMan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pSegMan
	beq	.L212	@,
	ldr	r3, [r1, #8]	@ D.31035, pSegMan_8(D)->CurrSeg.VirAddr
	cmp	r3, #0	@ D.31035,
	beq	.L212	@,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r6, r0	@ ChanID, ChanID
	ldrb	r5, [r1, #13]	@ zero_extendqisi2	@ D.31036, pSegMan_8(D)->CurrSeg.IsLastSeg
	mov	r4, r1	@ pSegMan, pSegMan
	cmp	r5, #1	@ D.31036,
	beq	.L214	@,
	cmp	r5, #0	@ D.31036,
	beq	.L215	@,
.L195:
	mvn	r0, #0	@ D.31033,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L214:
	ldrb	r5, [r1, #2]	@ zero_extendqisi2	@ D.31036, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r5, #0	@ D.31036,
	beq	.L216	@,
	cmp	r5, #1	@ D.31036,
	bne	.L195	@,
	ldr	r0, .L218	@ tmp173,
	mov	r1, #64512	@ tmp202,
	ldr	r2, [r4, #100]	@ D.31034, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	movt	r1, 15	@ tmp202,
	ldr	r0, [r0, r6, asl #2]	@ tmp174, s_pstVfmwChan
	ldr	r0, [r0, #880]	@ _38->eVidStd, _38->eVidStd
	cmp	r0, #6	@ _38->eVidStd,
	movne	r1, #1024	@ D.31034,
	cmp	r1, r2	@ D.31034, D.31034
	bhi	.L217	@,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	add	r0, r4, #168	@, pSegMan,
	bl	memcpy	@
.L201:
	mov	r0, #0	@ tmp199,
	strb	r0, [r4, #2]	@ tmp199, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L215:
	add	r8, r4, #88	@ D.31037, pSegMan,
	add	r7, r4, #168	@ __p, pSegMan,
	mov	r2, #80	@,
	add	r1, r4, #8	@, pSegMan,
	mov	r0, r8	@, D.31037
	bl	memcpy	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldrb	r3, [r4, #2]	@ zero_extendqisi2	@ pSegMan_8(D)->ConvolutionPacketNum, pSegMan_8(D)->ConvolutionPacketNum
	add	r3, r3, #1	@ tmp166, pSegMan_8(D)->ConvolutionPacketNum,
	uxtb	r3, r3	@ D.31036, tmp166
	strb	r3, [r4, #2]	@ D.31036, pSegMan_8(D)->ConvolutionPacketNum
	cmp	r3, #1	@ D.31036,
	bls	.L195	@,
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	ldr	r1, [r4, #184]	@, pSegMan_8(D)->Pack.StreamPack[1].StreamID
	mov	r0, r6	@, ChanID
	bl	SM_ReleaseStreamSeg	@
	mov	r0, r8	@, D.31037
	mov	r1, #80	@,
	bl	__memzero	@
	mov	r0, r7	@, __p
	mov	r1, #80	@,
	bl	__memzero	@
	ldr	r3, .L218+4	@ tmp170,
	ldr	r3, [r3]	@ D.31039, g_event_report
	cmp	r3, #0	@ D.31039,
	beq	.L198	@,
	mov	r2, r5	@, D.31036
	mov	r0, r6	@, ChanID
	mov	r1, #113	@,
	blx	r3	@ D.31039
.L198:
	mov	r3, #0	@ tmp171,
	mvn	r0, #0	@ D.31033,
	strb	r3, [r4, #2]	@ tmp171, pSegMan_8(D)->ConvolutionPacketNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L216:
	mov	r2, #80	@,
	add	r1, r1, #8	@, pSegMan,
	add	r0, r4, #88	@, pSegMan,
	bl	memcpy	@
	add	r0, r4, #168	@, pSegMan,
	mov	r1, #80	@,
	bl	__memzero	@
	strb	r5, [r4, #2]	@ D.31036, pSegMan_8(D)->ConvolutionPacketNum
	mov	r0, r5	@ D.31033, D.31036
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L217:
	rsb	r0, r2, r3	@, D.31034, D.31035
	ldr	r1, [r4, #88]	@, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	bl	memcpy	@
	ldr	r1, [r4, #100]	@ D.31034, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	ip, [r4, #8]	@ pSegMan_8(D)->CurrSeg.VirAddr, pSegMan_8(D)->CurrSeg.VirAddr
	mov	r0, r6	@, ChanID
	ldr	r2, [r4, #16]	@ pSegMan_8(D)->CurrSeg.PhyAddr, pSegMan_8(D)->CurrSeg.PhyAddr
	ldr	r3, [r4, #20]	@ pSegMan_8(D)->CurrSeg.LenInByte, pSegMan_8(D)->CurrSeg.LenInByte
	rsb	ip, r1, ip	@ D.31035, D.31034, pSegMan_8(D)->CurrSeg.VirAddr
	rsb	r2, r1, r2	@ D.31034, D.31034, pSegMan_8(D)->CurrSeg.PhyAddr
	strb	r5, [r4, #93]	@ D.31036, pSegMan_8(D)->Pack.StreamPack[0].IsLastSeg
	add	r3, r3, r1	@ D.31034, pSegMan_8(D)->CurrSeg.LenInByte, D.31034
	str	ip, [r4, #88]	@ D.31035, pSegMan_8(D)->Pack.StreamPack[0].VirAddr
	str	r3, [r4, #100]	@ D.31034, pSegMan_8(D)->Pack.StreamPack[0].LenInByte
	ldr	r1, [r4, #104]	@, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	str	r2, [r4, #96]	@ D.31034, pSegMan_8(D)->Pack.StreamPack[0].PhyAddr
	bl	SM_ReleaseStreamSeg	@
	ldr	r3, [r4, #24]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->CurrSeg.StreamID
	mov	r1, #80	@,
	add	r0, r4, #168	@, pSegMan,
	str	r3, [r4, #104]	@ pSegMan_8(D)->CurrSeg.StreamID, pSegMan_8(D)->Pack.StreamPack[0].StreamID
	bl	__memzero	@
	b	.L201	@
.L212:
	mvn	r0, #0	@ D.31033,
	bx	lr	@
.L219:
	.align	2
.L218:
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
	beq	.L226	@,
.L221:
	mov	r1, r6	@, pSegMan
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	SegMan	@
	cmp	r0, #0	@,
	beq	.L227	@,
.L223:
	ldr	r4, [r4, #4]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam
	cmp	r4, #0	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldrb	r3, [r5, #4081]	@ zero_extendqisi2	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	cmp	r3, #1	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag,
	ldmnefd	sp!, {r4, r5, r6, r7, r8, pc}	@
	ldr	r0, [r5, #4064]	@, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].ChanID
	bl	VCTRL_OutputLastFrame	@
	strb	r4, [r5, #4081]	@ MEM[(struct MP2_CTX_S *)pstCtx_4(D)].pMp2DecParam, MEM[(struct MP2_CTX_S *)pstCtx_4(D)].IsStreamEndFlag
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L227:
	add	r1, r6, #88	@, pSegMan,
	mov	r0, r4	@, pstCtx
	bl	MPEG2DEC_Decode	@
	b	.L223	@
.L226:
	ldr	r3, .L229	@ tmp126,
	ldr	r3, [r3, r7, asl #2]	@ D.31062, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _8->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L228	@,
.L222:
	add	r1, r4, #72704	@, pstCtx,
	mov	r0, r4	@, pstCtx
	add	r1, r1, #96	@,,
	bl	MPEG2DEC_Decode	@
	b	.L221	@
.L228:
	ldr	r3, [r3, #1616]	@ _8->stSynExtraData.s32DSDWaitFlag, _8->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _8->stSynExtraData.s32DSDWaitFlag,
	bne	.L221	@,
	b	.L222	@
.L230:
	.align	2
.L229:
	.word	s_pstVfmwChan
	.fnend
	.size	DecodeStream_MPEG2, .-DecodeStream_MPEG2
	.align	2
	.global	DecodeStream
	.type	DecodeStream, %function
DecodeStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0	@ VideoStandard
	beq	.L233	@,
	cmp	r1, #3	@ VideoStandard,
	bxne	lr	@
	mov	r1, r2	@, pstCtx
	b	DecodeStream_MPEG2	@
.L233:
	mov	r1, r2	@, pstCtx
	b	DecodeStream_H264	@
	.fnend
	.size	DecodeStream, .-DecodeStream
	.align	2
	.global	ReleasePacket
	.type	ReleasePacket, %function
ReleasePacket:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
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
	@ link register save eliminated.
	cmp	r0, #0	@ VidStd
	beq	.L240	@,
	cmp	r0, #3	@ VidStd,
	bxne	lr	@
	mov	r0, r1	@, pCtx
	b	MP2_ClearCurPic	@
.L240:
	mov	r0, r1	@, pCtx
	b	H264_ClearCurrPic	@
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
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.31080, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
	add	r2, r3, #73	@ tmp127, D.31080,
	cmp	r3, #0	@ D.31080,
	cmpne	r3, #179	@, D.31080,
	uxtb	r2, r2	@ tmp129, tmp127
	moveq	ip, #1	@ tmp126,
	movne	ip, #0	@ tmp126,
	cmp	r2, #1	@ tmp129,
	movhi	r2, ip	@, tmp134, tmp126
	orrls	r2, ip, #1	@,, tmp134, tmp126
	cmp	r2, #0	@ tmp134,
	beq	.L248	@,
	ldr	r2, [r0]	@ *pNewPicDetector_10(D), *pNewPicDetector_10(D)
	cmp	r2, #0	@ *pNewPicDetector_10(D),
	bne	.L248	@,
	mov	r3, #1	@ tmp136,
	str	r3, [r0]	@ tmp136, *pNewPicDetector_10(D)
	ldrb	r3, [r1, #3]	@ zero_extendqisi2	@ D.31080, MEM[(HI_U8 *)SegAddr_4(D) + 3B]
.L245:
	cmp	r3, #0	@ D.31080,
	streq	r3, [r0]	@ D.31080, *pNewPicDetector_10(D)
	mov	r0, r2	@, ret
	bx	lr	@
.L248:
	mvn	r2, #0	@ ret,
	b	.L245	@
	.fnend
	.size	CheckNewPicSegMpeg2, .-CheckNewPicSegMpeg2
	.align	2
	.global	CheckNewPicSegByVidStd
	.type	CheckNewPicSegByVidStd, %function
CheckNewPicSegByVidStd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r3, r1, #0	@ VidStd, VidStd
	ldr	r1, [r2]	@ pu8, pStreamSeg_4(D)->VirAddr
	beq	.L251	@,
	cmp	r3, #3	@ VidStd,
	bne	.L255	@,
	b	CheckNewPicSegMpeg2	@
.L255:
	mvn	r0, #0	@,
	bx	lr	@
.L251:
	b	H264_IsNewPicNal	@
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
	str	lr, [sp, #-4]!	@,
	.save {lr}
	movne	r3, #0	@ IsShortHead,
	beq	.L269	@,
.L257:
	ldrb	lr, [ip]	@ zero_extendqisi2	@ *pu8_6, *pu8_6
	cmp	lr, #0	@ *pu8_6,
	bne	.L259	@,
	ldrb	lr, [ip, #1]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pu8_6 + 1B], MEM[(HI_U8 *)pu8_6 + 1B]
	cmp	lr, #0	@ MEM[(HI_U8 *)pu8_6 + 1B],
	bne	.L259	@,
	ldrb	ip, [ip, #2]	@ zero_extendqisi2	@ MEM[(HI_U8 *)pu8_6 + 2B], MEM[(HI_U8 *)pu8_6 + 2B]
	cmp	ip, #1	@ MEM[(HI_U8 *)pu8_6 + 2B],
	bne	.L259	@,
	ldr	lr, [sp], #4	@,
	b	CheckNewPicSegByVidStd	@
.L269:
	ldrb	r3, [r2, #72]	@ zero_extendqisi2	@ *pStreamSeg_5(D), *pStreamSeg_5(D)
	ands	r3, r3, #1	@ IsShortHead, *pStreamSeg_5(D),
	beq	.L257	@,
	ldr	lr, [sp], #4	@,
	b	CheckNewPicSegByVidStd	@
.L259:
	mvn	r0, #0	@,
	ldr	pc, [sp], #4	@
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
	ldr	r3, .L277	@ tmp150,
	add	r0, r3, r0, lsl #2	@ tmp151, tmp150, ChanID,
	ldr	ip, [r0, #12]	@ D.31102, pstVdecUsdPool
	cmp	ip, #0	@ D.31102,
	beq	.L276	@,
.L271:
	mov	r0, #0	@ tmp156,
	add	r1, ip, #205824	@ D.31105, ivtmp.99,
	mov	r3, ip	@ ivtmp.99, D.31102
	mov	r2, r0	@ tmp160, tmp156
	str	r0, [ip]	@ tmp156, _16->s32AccessIdx
.L273:
	str	r2, [r3, #1044]	@ tmp160, MEM[base: _22, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.99, ivtmp.99,
	str	r2, [r3, #-32]	@ tmp160, MEM[base: _22, offset: 1040B]
	cmp	r3, r1	@ ivtmp.99, D.31105
	bne	.L273	@,
	mov	r0, #0	@ D.31103,
	bx	lr	@
.L276:
	cmp	r1, #0	@ Viraddr,
	str	r1, [r0, #12]	@ Viraddr, pstVdecUsdPool
	movne	ip, r1	@ D.31102, Viraddr
	bne	.L271	@
.L274:
	mvn	r0, #0	@ D.31103,
	bx	lr	@
.L278:
	.align	2
.L277:
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
	ldr	r3, .L280	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #12]	@ tmp114, pstVdecUsdPool
	bx	lr	@
.L281:
	.align	2
.L280:
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
	ldr	r3, .L287	@ tmp118,
	add	r0, r3, r0, lsl #2	@ tmp119, tmp118, ChanID,
	ldr	r0, [r0, #12]	@ D.31120, pstVdecUsdPool
	cmp	r0, #0	@ D.31120,
	beq	.L285	@,
	mov	ip, #0	@ tmp121,
	add	r1, r0, #205824	@ D.31122, ivtmp.113,
	mov	r3, r0	@ ivtmp.113, D.31120
	mov	r2, ip	@ tmp125, tmp121
	str	ip, [r0]	@ tmp121, _7->s32AccessIdx
.L284:
	str	r2, [r3, #1044]	@ tmp125, MEM[base: _18, offset: 1044B]
	add	r3, r3, #1072	@ ivtmp.113, ivtmp.113,
	str	r2, [r3, #-32]	@ tmp125, MEM[base: _18, offset: 1040B]
	cmp	r3, r1	@ ivtmp.113, D.31122
	bne	.L284	@,
	mov	r0, #0	@ D.31119,
	bx	lr	@
.L285:
	mvn	r0, #0	@ D.31119,
	bx	lr	@
.L288:
	.align	2
.L287:
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
	ldr	r3, .L298	@ tmp122,
	add	r0, r3, r0, lsl #2	@ tmp123, tmp122, ChanID,
	ldr	r0, [r0, #12]	@ D.31135, pstVdecUsdPool
	cmp	r0, #0	@ D.31135,
	bxeq	lr	@
	mov	r3, r0	@ ivtmp.124, D.31135
	mov	r2, #0	@ i,
	b	.L292	@
.L291:
	add	r2, r2, #1	@ i, i,
	add	r3, r3, #1072	@ ivtmp.124, ivtmp.124,
	cmp	r2, #192	@ i,
	beq	.L297	@,
.L292:
	ldr	r1, [r3, #1044]	@ MEM[base: _26, offset: 1044B], MEM[base: _26, offset: 1044B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1044B],
	bne	.L291	@,
	ldr	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[base: _26, offset: 1040B]
	cmp	r1, #0	@ MEM[base: _26, offset: 1040B],
	bne	.L291	@,
	mov	r3, #1072	@ tmp128,
	movw	ip, #1076	@ tmp168,
	mul	r2, r3, r2	@ tmp127, tmp128, i
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	movw	lr, #1064	@ tmp138,
	add	r3, r0, r2	@ tmp132, D.31135, tmp127
	add	r2, r2, #8	@ tmp129, tmp127,
	mov	r4, #0	@ tmp140,
	mov	r5, #0	@,
	str	r1, [r3, #1040]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].dnr_used_flag
	add	r0, r0, r2	@ pstUsrDat, D.31135, tmp129
	str	r1, [r3, #1056]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].data_size
	str	r1, [r3, #1052]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_img_cnt
	str	r1, [r3, #1048]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_6].stUsrDat[i_7].seq_cnt
	strb	r1, [r3, #1072]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1072B]
	strb	r1, [r3, #1073]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1073B]
	strb	r1, [r3, #1074]	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1074B]
	strd	r4, [r3, lr]	@ tmp140, tmp132, tmp138
	strh	r1, [r3, ip]	@ movhi	@ MEM[base: _26, offset: 1040B], MEM[(struct VDEC_USRDAT_S *)_28 + 1076B]
	ldmfd	sp!, {r4, r5, pc}	@
.L297:
	mov	r0, #0	@ pstUsrDat,
	bx	lr	@
.L299:
	.align	2
.L298:
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
	beq	.L319	@,
	str	lr, [sp, #-4]!	@,
	.save {lr}
	ldrh	r3, [r0, #4]	@ pstVoQue_5(D)->history, pstVoQue_5(D)->history
	ldrh	lr, [r0, #8]	@ D.31151, pstVoQue_5(D)->tail
	and	r3, r3, #63	@ i, pstVoQue_5(D)->history,
	cmp	lr, r3	@ D.31151, i
	beq	.L320	@,
.L318:
	add	r2, r0, r3, lsl #2	@ tmp127, pstVoQue, i,
	add	r3, r3, #1	@ i, i,
	and	r3, r3, #63	@ i, i,
	ldr	r2, [r2, #12]	@ D.31149, pstVoQue_5(D)->image_ptr
	cmp	r2, #0	@ D.31149,
	beq	.L317	@,
	ldr	ip, [r2, #176]	@ _11->image_id, _11->image_id
	ldr	r2, [r1, #176]	@ p_image_3(D)->image_id, p_image_3(D)->image_id
	cmp	ip, r2	@ _11->image_id, p_image_3(D)->image_id
	beq	.L321	@,
.L317:
	cmp	r3, lr	@ i, D.31151
	bne	.L318	@,
.L320:
	mvn	r0, #0	@ D.31147,
	ldr	pc, [sp], #4	@
.L321:
	mov	r0, #0	@ D.31147,
	ldr	pc, [sp], #4	@
.L319:
	mvn	r0, #0	@ D.31147,
	bx	lr	@
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
	b	.L328	@
.L330:
	.word	.L328
	.word	.L331
	.word	.L332
	.word	.L333
	.word	.L334
	.word	.L335
.L328:
	mov	r2, #0	@ tmp124,
	mov	r3, #1	@ tmp125,
	str	r2, [r0, #60]	@ tmp124, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp125, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L334:
	mov	r2, #235	@ tmp120,
	mov	r3, #100	@ tmp121,
	str	r2, [r0, #60]	@ tmp120, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp121, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L335:
	mov	r2, #0	@ tmp122,
	mov	r3, #2	@ tmp123,
	str	r2, [r0, #60]	@ tmp122, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp123, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L331:
	mov	r2, #4	@ tmp114,
	mov	r3, #3	@ tmp115,
	str	r2, [r0, #60]	@ tmp114, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp115, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L332:
	mov	r2, #16	@ tmp116,
	mov	r3, #9	@ tmp117,
	str	r2, [r0, #60]	@ tmp116, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp117, pImg_4(D)->u32AspectHeight
	bx	lr	@
.L333:
	mov	r2, #221	@ tmp118,
	mov	r3, #100	@ tmp119,
	str	r2, [r0, #60]	@ tmp118, pImg_4(D)->u32AspectWidth
	str	r3, [r0, #64]	@ tmp119, pImg_4(D)->u32AspectHeight
	bx	lr	@
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
	ldr	r0, [r0, #296]	@ D.31156, MEM[(struct IMAGE_SIDE_INFO_S *)pstVoQue_2(D) + 272B].LastImageIdPlus2
	cmp	r0, #1	@ D.31156,
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
	.type	last_rec_pos_time.30124, %object
	.size	last_rec_pos_time.30124, 4
last_rec_pos_time.30124:
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
