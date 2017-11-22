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
	.file	"bitplane.c"
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
@ -D KBUILD_BASENAME=KBUILD_STR(bitplane)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/kernel/linux-3.10.y/include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.bitplane.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.o
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
	.global	BPD_CfgReg_GetRegVirAddr
	.type	BPD_CfgReg_GetRegVirAddr, %function
BPD_CfgReg_GetRegVirAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #8]	@ pHwMem_5(D)->pBpdRegVirAddr, pHwMem_5(D)->pBpdRegVirAddr
	cmp	r4, #0	@ pHwMem_5(D)->pBpdRegVirAddr,
	beq	.L7	@,
	mov	r0, #0	@ D.30742,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L7:
	mov	r5, r0	@ pHwMem, pHwMem
	mov	r0, #53248	@,
	movt	r0, 4115	@,
	bl	MEM_Phy2Vir	@
	subs	r3, r0, #0	@ p32,
	beq	.L3	@,
	str	r3, [r5, #8]	@ p32, pHwMem_5(D)->pBpdRegVirAddr
	mov	r0, r4	@ D.30742, pHwMem_5(D)->pBpdRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3:
	ldr	r1, .L8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30742,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L9:
	.align	2
.L8:
	.word	.LC0
	.fnend
	.size	BPD_CfgReg_GetRegVirAddr, .-BPD_CfgReg_GetRegVirAddr
	.align	2
	.global	BPD_CfgReg
	.type	BPD_CfgReg, %function
BPD_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	mov	r4, r0	@ pCodecInfo, pCodecInfo
	mov	r0, r3	@, pHwMem
	mov	r7, r1	@ pBS, pBS
	mov	r3, #0	@ tmp276,
	mov	r5, r2	@ pSyntax, pSyntax
	str	r3, [sp, #4]	@ tmp276, D32
	bl	BPD_CfgReg_GetRegVirAddr	@
	cmp	r0, #0	@ D.30747
	bne	.L25	@,
	ldr	lr, .L43	@ tmp523,
	mvn	r1, #0	@ tmp279,
	mvn	r2, #1	@ tmp282,
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	r1, [r3, #68]	@ tmp279, *_19
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r3, #68]	@ tmp282, *_24
	ldr	r2, [r7, #24]	@ D.30751, pBS_26(D)->TotalPos
	ldr	r1, [r7, #20]	@ pBS_26(D)->BufPos, pBS_26(D)->BufPos
	adds	ip, r2, #31	@ D.30751, D.30751,
	add	r3, r2, #7	@ tmp304, D.30751,
	addmi	ip, r2, #62	@, D.30751, D.30751,
	cmp	r2, #0	@ D.30751,
	bic	ip, ip, #31	@ D.30751, D.30751,
	ldrb	r6, [r4, #3096]	@ zero_extendqisi2	@ pCodecInfo_42(D)->PreParseInfo.IsAdvProfile, pCodecInfo_42(D)->PreParseInfo.IsAdvProfile
	add	ip, ip, r1	@ D.30751, D.30751, pBS_26(D)->BufPos
	movge	r3, r2	@ D.30751, D.30751
	rsb	r1, r2, ip	@ D.30751, D.30751, D.30751
	mov	ip, r3, asr #3	@ D.30751, D.30751,
	ldr	r7, [r7]	@ pBS_26(D)->pHead, pBS_26(D)->pHead
	mov	r3, r1, asr #31	@ tmp293, D.30751,
	mov	r3, r3, lsr #27	@ tmp294, tmp293,
	add	r1, r1, r3	@ tmp295, D.30751, tmp294
	and	r1, r1, #31	@ tmp296, tmp295,
	rsb	r3, r3, r1	@ D.30751, tmp294, tmp296
	cmp	r3, #0	@ D.30751,
	add	r1, r3, #7	@ tmp300, D.30751,
	movlt	r3, r1	@ D.30751, tmp300
	cmp	r6, #0	@ pCodecInfo_42(D)->PreParseInfo.IsAdvProfile,
	add	r3, ip, r3, asr #3	@ D.30754, D.30751, D.30751,
	add	r3, r7, r3	@ pCurStreamVirAddr, pBS_26(D)->pHead, D.30754
	beq	.L12	@,
	ldrb	r1, [r5, #362]	@ zero_extendqisi2	@ pSyntax_44(D)->AdvPicSyntax.MVMODE, pSyntax_44(D)->AdvPicSyntax.MVMODE
	cmp	r1, #0	@ pSyntax_44(D)->AdvPicSyntax.MVMODE,
	beq	.L13	@,
	movw	r1, #362	@ tmp314,
	ldrh	r1, [r5, r1]	@ *pSyntax_44(D), *pSyntax_44(D)
	cmp	r1, #4	@ *pSyntax_44(D),
	beq	.L13	@,
	ldrb	r1, [r5, #197]	@ zero_extendqisi2	@ pSyntax_44(D)->AdvEntSyntax.OVERLAP, pSyntax_44(D)->AdvEntSyntax.OVERLAP
	cmp	r1, #1	@ pSyntax_44(D)->AdvEntSyntax.OVERLAP,
	beq	.L39	@,
.L15:
	ldrb	r1, [r5, #349]	@ zero_extendqisi2	@ D.30756, pSyntax_44(D)->AdvPicSyntax.PTYPE
	ldr	r6, [r5, #392]	@ pSyntax_44(D)->AdvPicSyntax.FCM, pSyntax_44(D)->AdvPicSyntax.FCM
	cmp	r1, #4	@ D.30756,
	ldrb	r7, [r5, #16]	@ zero_extendqisi2	@ pSyntax_44(D)->AdvSeqSyntax.PROFILE, pSyntax_44(D)->AdvSeqSyntax.PROFILE
	andne	ip, r1, #3	@ D.30748, D.30756,
	ldrb	r1, [sp, #6]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_structure
	moveq	ip, #3	@ D.30748,
	cmp	r6, #3	@ pSyntax_44(D)->AdvPicSyntax.FCM,
	bfi	r1, r6, #0, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_structure, pSyntax_44(D)->AdvPicSyntax.FCM,,
	ldrb	r6, [sp, #5]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	bfi	r1, r7, #2, #2	@ MEM[(struct BPD_CFG0 *)&D32].profile, pSyntax_44(D)->AdvSeqSyntax.PROFILE,,
	strb	r1, [sp, #6]	@ MEM[(struct BPD_CFG0 *)&D32].profile, MEM[(struct BPD_CFG0 *)&D32].profile
	bfi	r6, ip, #6, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, D.30748,,
	strb	r6, [sp, #5]	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	beq	.L40	@,
.L18:
	add	ip, r4, #20480	@ tmp524, pCodecInfo,
	movw	r6, #21846	@ tmp383,
	movt	r6, 21845	@ tmp383,
	ldr	r1, [ip, #2084]	@ pCodecInfo_42(D)->MbHeight, pCodecInfo_42(D)->MbHeight
	smull	r6, r7, r1, r6	@ tmp382, pCodecInfo_42(D)->MbHeight, tmp383
	sub	r9, r7, r1, asr #31	@ tmp380,, pCodecInfo_42(D)->MbHeight,
	add	r9, r9, r9, lsl #1	@ tmp387, tmp380, tmp380,
	rsb	r9, r9, r1	@ D.30751, tmp387, pCodecInfo_42(D)->MbHeight
	and	r9, r9, #3	@ D.30748, D.30751,
.L22:
	ldr	r8, [ip, #2080]	@ pCodecInfo_42(D)->MbWidth, pCodecInfo_42(D)->MbWidth
	movw	r6, #21846	@ tmp398,
	movt	r6, 21845	@ tmp398,
	add	r1, r4, #32768	@ tmp522, pCodecInfo,
	ldrb	r10, [sp, #5]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_mbheigt_mod3
	and	r2, r2, #7	@ tmp419, D.30751,
	smull	r6, r7, r8, r6	@ tmp397, pCodecInfo_42(D)->MbWidth, tmp398
	ldr	r6, [r1, #2172]	@ pCodecInfo_42(D)->stCurPacket.BsVirAddr, pCodecInfo_42(D)->stCurPacket.BsVirAddr
	ldr	fp, [r1, #2184]	@ pCodecInfo_42(D)->stCurPacket.BsPhyAddr, pCodecInfo_42(D)->stCurPacket.BsPhyAddr
	bfi	r10, r9, #2, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_mbheigt_mod3, D.30748,,
	rsb	r6, r6, r3	@ D.30751, pCodecInfo_42(D)->stCurPacket.BsVirAddr, pCurStreamVirAddr
	sub	r7, r7, r8, asr #31	@ tmp395,, pCodecInfo_42(D)->MbWidth,
	add	r6, r6, fp	@ D.30757, D.30751, pCodecInfo_42(D)->stCurPacket.BsPhyAddr
	and	r6, r6, #15	@ tmp415, D.30757,
	add	r7, r7, r7, lsl #1	@ tmp402, tmp395, tmp395,
	rsb	r7, r7, r8	@ D.30751, tmp402, pCodecInfo_42(D)->MbWidth
	ldr	r8, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	add	r2, r2, r6, lsl #3	@ tmp422, tmp419, tmp415,
	bfi	r10, r7, #0, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_mbwidth_mod3, D.30751,,
	strb	r2, [sp, #4]	@ tmp422, MEM[(struct BPD_CFG0 *)&D32].bit_offset
	strb	r10, [sp, #5]	@ MEM[(struct BPD_CFG0 *)&D32].pic_mbwidth_mod3, MEM[(struct BPD_CFG0 *)&D32].pic_mbwidth_mod3
	ldr	r2, [sp, #4]	@ D.30751, D32
	str	r2, [r8, #4]	@ D.30751, *_114
	ldr	r7, [r1, #2172]	@ pCodecInfo_42(D)->stCurPacket.BsVirAddr, pCodecInfo_42(D)->stCurPacket.BsVirAddr
	ldr	r6, [r1, #2184]	@ pCodecInfo_42(D)->stCurPacket.BsPhyAddr, pCodecInfo_42(D)->stCurPacket.BsPhyAddr
	ldr	r2, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	rsb	r3, r7, r3	@ D.30751, pCodecInfo_42(D)->stCurPacket.BsVirAddr, pCurStreamVirAddr
	add	r3, r3, r6	@ D.30757, D.30751, pCodecInfo_42(D)->stCurPacket.BsPhyAddr
	bic	r3, r3, #15	@ D.30751, D.30757,
	str	r3, [r2, #8]	@ D.30751, *_130
	ldrb	r3, [r4, #3096]	@ zero_extendqisi2	@ pCodecInfo_42(D)->PreParseInfo.IsAdvProfile, pCodecInfo_42(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInfo_42(D)->PreParseInfo.IsAdvProfile,
	beq	.L23	@,
	ldr	r3, [r5, #392]	@ pSyntax_44(D)->AdvPicSyntax.FCM, pSyntax_44(D)->AdvPicSyntax.FCM
	cmp	r3, #3	@ pSyntax_44(D)->AdvPicSyntax.FCM,
	beq	.L41	@,
.L23:
	ldr	r3, [ip, #2084]	@ pCodecInfo_42(D)->MbHeight, pCodecInfo_42(D)->MbHeight
	sub	r3, r3, #1	@ tmp455, pCodecInfo_42(D)->MbHeight,
	uxth	r3, r3	@ D.30749, tmp455
.L24:
	ldr	r2, [ip, #2080]	@ pCodecInfo_42(D)->MbWidth, pCodecInfo_42(D)->MbWidth
	mov	r4, #3	@ tmp515,
	strh	r3, [sp, #6]	@ movhi	@ D.30749, MEM[(struct BPD_CFG2 *)&D32].pic_mbheight_m1
	mov	r5, #0	@ tmp463,
	sub	r3, r2, #1	@ tmp460, pCodecInfo_42(D)->MbWidth,
	strh	r3, [sp, #4]	@ movhi	@ tmp460, MEM[(struct BPD_CFG2 *)&D32].pic_mbwidth_m1
	ldr	r2, [sp, #4]	@ D.30751, D32
	mov	r6, #0	@ MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding,
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	bfi	r6, r4, #4, #4	@ MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding, tmp515,,
	str	r5, [sp, #4]	@ tmp463, D32
	str	r2, [r3, #12]	@ D.30751, *_151
	ldr	r2, [ip, #2080]	@ pCodecInfo_42(D)->MbWidth, pCodecInfo_42(D)->MbWidth
	ldr	ip, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	adds	r3, r2, #127	@ D.30751, pCodecInfo_42(D)->MbWidth,
	addmi	r3, r2, #254	@, D.30751, pCodecInfo_42(D)->MbWidth,
	mov	r3, r3, lsr r4	@ tmp475, D.30751,
	and	r3, r3, #4080	@ tmp477, tmp475,
	strh	r3, [sp, #4]	@ movhi	@ tmp477, MEM[(struct BPD_CFG3 *)&D32].bp_sride
	ldr	r3, [sp, #4]	@ D.30751, D32
	str	r3, [ip, #16]	@ D.30751, *_165
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [r1, #2256]	@ D.30751, pCodecInfo_42(D)->MVTYPEMB_ADDR
	str	r2, [r3, #20]	@ D.30751, *_174
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [r1, #2260]	@ D.30751, pCodecInfo_42(D)->SKIPMB_ADDR
	str	r2, [r3, #24]	@ D.30751, *_182
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [r1, #2264]	@ D.30751, pCodecInfo_42(D)->DIRECTMB_ADDR
	str	r2, [r3, #28]	@ D.30751, *_190
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [r1, #2268]	@ D.30751, pCodecInfo_42(D)->ACPRED_ADDR
	str	r2, [r3, #32]	@ D.30751, *_198
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [r1, #2272]	@ D.30751, pCodecInfo_42(D)->OVERFLAGS_ADDR
	str	r2, [r3, #36]	@ D.30751, *_206
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [r1, #2276]	@ D.30751, pCodecInfo_42(D)->FIELDTX_ADDR
	str	r2, [r3, #40]	@ D.30751, *_214
	ldr	r2, [r1, #2280]	@ D.30751, pCodecInfo_42(D)->FORWARDMB_ADDR
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r3, #44]	@ D.30751, *_223
	str	r5, [sp, #4]	@ tmp463, D32
	strb	r6, [sp, #4]	@ MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding, MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding
	strb	r4, [sp, #5]	@ tmp515, MEM[(struct BPD_CFG11 *)&D32].axi_wr_outstanding
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [sp, #4]	@ D.30751, D32
	str	r2, [r3, #48]	@ D.30751, *_235
.L11:
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L12:
	ldrb	r1, [r5, #259]	@ zero_extendqisi2	@ D.30756, pSyntax_44(D)->SMPPicSyntax.MVMODE
	cmp	r1, #0	@ D.30756,
	beq	.L19	@,
	cmp	r1, #4	@ D.30756,
	beq	.L42	@,
.L20:
	ldrb	r1, [r5, #251]	@ zero_extendqisi2	@ D.30756, pSyntax_44(D)->SMPPicSyntax.PTYPE
	ldrb	r6, [sp, #5]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	cmp	r1, #4	@ D.30756,
	ldrb	r7, [r5]	@ zero_extendqisi2	@ pSyntax_44(D)->SMPSeqSyntax.PROFILE, pSyntax_44(D)->SMPSeqSyntax.PROFILE
	andne	ip, r1, #3	@ D.30748, D.30756,
	ldrb	r1, [sp, #6]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_structure
	moveq	ip, #3	@ D.30748,
	bfi	r6, ip, #6, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, D.30748,,
	and	r1, r1, #252	@ MEM[(struct BPD_CFG0 *)&D32].profile, MEM[(struct BPD_CFG0 *)&D32].pic_structure,
	strb	r6, [sp, #5]	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	bfi	r1, r7, #2, #2	@ MEM[(struct BPD_CFG0 *)&D32].profile, pSyntax_44(D)->SMPSeqSyntax.PROFILE,,
	strb	r1, [sp, #6]	@ MEM[(struct BPD_CFG0 *)&D32].profile, MEM[(struct BPD_CFG0 *)&D32].profile
	b	.L18	@
.L13:
	ldrb	r1, [sp, #5]	@ zero_extendqisi2	@ MEM[(struct BPD_CFG0 *)&D32].mvmode_en, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	orr	r1, r1, #16	@ tmp319, MEM[(struct BPD_CFG0 *)&D32].mvmode_en,
	strb	r1, [sp, #5]	@ tmp319, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	ldrb	r1, [r5, #197]	@ zero_extendqisi2	@ pSyntax_44(D)->AdvEntSyntax.OVERLAP, pSyntax_44(D)->AdvEntSyntax.OVERLAP
	cmp	r1, #1	@ pSyntax_44(D)->AdvEntSyntax.OVERLAP,
	bne	.L15	@,
.L39:
	ldr	r1, [r5, #464]	@ pSyntax_44(D)->AdvPicSyntax.PQUANT, pSyntax_44(D)->AdvPicSyntax.PQUANT
	cmp	r1, #8	@ pSyntax_44(D)->AdvPicSyntax.PQUANT,
	ldrleb	r1, [sp, #5]	@ zero_extendqisi2	@ MEM[(struct BPD_CFG0 *)&D32].overflag_en, MEM[(struct BPD_CFG0 *)&D32].overflag_en
	orrle	r1, r1, #32	@ tmp325, MEM[(struct BPD_CFG0 *)&D32].overflag_en,
	strleb	r1, [sp, #5]	@ tmp325, MEM[(struct BPD_CFG0 *)&D32].overflag_en
	b	.L15	@
.L42:
	ldrb	r1, [r5, #260]	@ zero_extendqisi2	@ pSyntax_44(D)->SMPPicSyntax.MVMODE2, pSyntax_44(D)->SMPPicSyntax.MVMODE2
	cmp	r1, #0	@ pSyntax_44(D)->SMPPicSyntax.MVMODE2,
	bne	.L20	@,
.L19:
	ldrb	r1, [sp, #5]	@ zero_extendqisi2	@ MEM[(struct BPD_CFG0 *)&D32].mvmode_en, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	orr	r1, r1, #16	@ tmp345, MEM[(struct BPD_CFG0 *)&D32].mvmode_en,
	strb	r1, [sp, #5]	@ tmp345, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	b	.L20	@
.L41:
	ldr	r3, [ip, #2084]	@ pCodecInfo_42(D)->MbHeight, pCodecInfo_42(D)->MbHeight
	add	r3, r3, #1	@ D.30751, pCodecInfo_42(D)->MbHeight,
	add	r3, r3, r3, lsr #31	@ tmp447, D.30751, D.30751,
	mov	r3, r3, asr #1	@ D.30751, tmp447,
	sub	r3, r3, #1	@ tmp450, D.30751,
	uxth	r3, r3	@ D.30749, tmp450
	b	.L24	@
.L40:
	add	ip, r4, #20480	@ tmp524, pCodecInfo,
	movw	r6, #21846	@ tmp370,
	movt	r6, 21845	@ tmp370,
	ldr	r1, [ip, #2084]	@ pCodecInfo_42(D)->MbHeight, pCodecInfo_42(D)->MbHeight
	add	r1, r1, #1	@ D.30751, pCodecInfo_42(D)->MbHeight,
	add	r1, r1, r1, lsr #31	@ tmp366, D.30751, D.30751,
	mov	r9, r1, asr #1	@ D.30751, tmp366,
	smull	r6, r7, r9, r6	@ tmp369, D.30751, tmp370
	sub	r1, r7, r1, asr #31	@ tmp368,, tmp366,
	add	r1, r1, r1, lsl #1	@ tmp374, tmp368, tmp368,
	rsb	r1, r1, r9	@ D.30751, tmp374, D.30751
	and	r9, r1, #3	@ D.30748, D.30751,
	b	.L22	@
.L25:
	mvn	r0, #0	@ D.30747,
	b	.L11	@
.L44:
	.align	2
.L43:
	.word	g_HwMem
	.fnend
	.size	BPD_CfgReg, .-BPD_CfgReg
	.align	2
	.global	BPD_Reset
	.type	BPD_Reset, %function
BPD_Reset:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r0, #22	@,
	ldr	r5, .L62	@ tmp138,
	ldr	r1, .L62+4	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5]	@ D.30768, g_pstRegCrg
	ldr	r4, [r2, #120]	@ u32TmpValue, _5->PERI_CRG30.u32
	orr	r4, r4, #128	@ u32TmpValue, u32TmpValue,
	str	r4, [r2, #120]	@ u32TmpValue, _5->PERI_CRG30.u32
	ldr	r3, [r2, #372]	@ tmp126,
	tst	r3, #8	@ tmp126,
	bne	.L46	@,
	movw	r0, #9999	@ D.30771,
	b	.L47	@
.L61:
	subs	r0, r0, #1	@ D.30771, D.30771,
	beq	.L60	@,
.L47:
	ldr	r3, [r2, #372]	@ tmp130,
	tst	r3, #8	@ tmp130,
	beq	.L61	@,
.L46:
	ldr	r3, .L62+8	@ tmp133,
	bfc	r4, #7, #1	@ u32TmpValue,,
	mvn	r1, #1	@ tmp135,
	str	r4, [r2, #120]	@ u32TmpValue, _32->PERI_CRG30.u32
	ldr	r3, [r3, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	r1, [r3, #52]	@ tmp135, *_21
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L60:
	ldr	r1, .L62+12	@,
	bl	dprint_vfmw	@
	ldr	r2, [r5]	@ D.30768, g_pstRegCrg
	b	.L46	@
.L63:
	.align	2
.L62:
	.word	g_pstRegCrg
	.word	.LC1
	.word	g_HwMem
	.word	.LC2
	.fnend
	.size	BPD_Reset, .-BPD_Reset
	.align	2
	.global	BPD_Start
	.type	BPD_Start, %function
BPD_Start:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L65	@ tmp113,
	mov	r2, #0	@ tmp114,
	mov	r0, #1	@ tmp116,
	ldr	r1, [r3, #8]	@ D.30779, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r1]	@ tmp114, MEM[(volatile HI_S32 *)_2]
	ldr	r1, [r3, #8]	@ D.30779, g_HwMem[0].pBpdRegVirAddr
	str	r0, [r1]	@ tmp116, MEM[(volatile HI_S32 *)_4]
	ldr	r3, [r3, #8]	@ D.30779, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r3]	@ tmp114, MEM[(volatile HI_S32 *)_6]
	bx	lr	@
.L66:
	.align	2
.L65:
	.word	g_HwMem
	.fnend
	.size	BPD_Start, .-BPD_Start
	.align	2
	.global	IsBpd_Ready
	.type	IsBpd_Ready, %function
IsBpd_Ready:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L73	@ tmp120,
	ldr	r0, [r3, #8]	@ D.30785, g_HwMem[0].pBpdRegVirAddr
	cmp	r0, #0	@ D.30785,
	beq	.L72	@,
	ldr	r0, [r0, #64]	@ Data32, *_8
	and	r0, r0, #1	@ D.30784, Data32,
	bx	lr	@
.L72:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r2, #288	@,
	ldr	r3, .L73+4	@,
	ldr	r1, .L73+8	@,
	bl	dprint_vfmw	@
	mvn	r0, #0	@ D.30784,
	ldmfd	sp!, {r4, pc}	@
.L74:
	.align	2
.L73:
	.word	g_HwMem
	.word	.LC3
	.word	.LC4
	.fnend
	.size	IsBpd_Ready, .-IsBpd_Ready
	.align	2
	.global	BPDDRV_WaitBpdReadyIfNoIsr
	.type	BPDDRV_WaitBpdReadyIfNoIsr, %function
BPDDRV_WaitBpdReadyIfNoIsr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, #0	@ cnt_wait,
	mov	r5, r0	@ StartTimeInMs,
	b	.L78	@
.L83:
	bl	OSAL_GetTimeInMs	@
	cmp	r0, r5	@ CurTimeInMs, StartTimeInMs
	movcc	r5, #0	@ StartTimeInMs,
	rsb	r4, r5, r0	@ cnt_wait, StartTimeInMs, CurTimeInMs
	cmp	r4, #4000	@ cnt_wait,
	bcs	.L80	@,
.L78:
	bl	IsBpd_Ready	@
	cmp	r0, #0	@,
	beq	.L83	@,
	cmp	r4, #4000	@ cnt_wait,
	bcs	.L80	@,
	mov	r0, #0	@ D.30797,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L80:
	ldr	r1, .L84	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.30797,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L85:
	.align	2
.L84:
	.word	.LC5
	.fnend
	.size	BPDDRV_WaitBpdReadyIfNoIsr, .-BPDDRV_WaitBpdReadyIfNoIsr
	.align	2
	.global	BPD_GetParam
	.type	BPD_GetParam, %function
BPD_GetParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L94	@ tmp156,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	ip, [ip, #8]	@ D.30804, g_HwMem[0].pBpdRegVirAddr
	ldr	r4, [r2, #16]	@ D.30804, pBS_19(D)->BsLen
	ldr	r3, [r2, #24]	@ D.30804, pBS_19(D)->TotalPos
	ldr	lr, [ip, #80]	@ D.30806, *_10
	rsb	r5, r3, r4, lsl #3	@ D.30804, D.30804, D.30804,
	ldr	ip, [ip, #84]	@ D.30804, *_15
	cmp	lr, r5	@ D.30806, D.30804
	bcs	.L92	@,
	ldrb	r3, [r0, #3096]	@ zero_extendqisi2	@ pCodecInfo_27(D)->PreParseInfo.IsAdvProfile, pCodecInfo_27(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInfo_27(D)->PreParseInfo.IsAdvProfile,
	bne	.L93	@,
	and	r0, ip, #15	@ D.30808, D.30804,
	ubfx	r3, ip, #8, #4	@ D.30808, D.30804,,
	str	r0, [r1, #328]	@ D.30808, pSyntax_31(D)->SMPPicSyntax.MVTYPEMBMode
	ubfx	ip, ip, #4, #4	@ D.30808, D.30804,,
	str	r3, [r1, #332]	@ D.30808, pSyntax_31(D)->SMPPicSyntax.DIRECTMBMode
	str	ip, [r1, #336]	@ D.30808, pSyntax_31(D)->SMPPicSyntax.SKIPMBMode
.L90:
	mov	r1, lr	@, D.30806
	mov	r0, r2	@, pBS
	bl	BsLongSkip	@
	mov	r0, #0	@ D.30802,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L93:
	ubfx	r3, ip, #0, #4	@ tmp164, D.30804,,
	ubfx	r0, ip, #12, #4	@ tmp166, D.30804,,
	strb	r3, [r1, #382]	@ tmp164, pSyntax_31(D)->AdvPicSyntax.MVTYPEMBMode
	ubfx	r3, ip, #16, #4	@ tmp168, D.30804,,
	strb	r0, [r1, #385]	@ tmp166, pSyntax_31(D)->AdvPicSyntax.ACPREDMode
	ubfx	r0, ip, #20, #4	@ tmp170, D.30804,,
	strb	r3, [r1, #386]	@ tmp168, pSyntax_31(D)->AdvPicSyntax.OVERFLAGSMode
	ubfx	r3, ip, #8, #4	@ tmp172, D.30804,,
	strb	r0, [r1, #387]	@ tmp170, pSyntax_31(D)->AdvPicSyntax.FIELDTXMode
	ubfx	r0, ip, #24, #4	@ tmp174, D.30804,,
	strb	r3, [r1, #383]	@ tmp172, pSyntax_31(D)->AdvPicSyntax.DIRECTMBMode
	ubfx	r3, ip, #4, #4	@ tmp176, D.30804,,
	strb	r0, [r1, #388]	@ tmp174, pSyntax_31(D)->AdvPicSyntax.FORWARDMBMode
	ubfx	ip, ip, #28, #2	@ tmp178, D.30804,,
	strb	r3, [r1, #384]	@ tmp176, pSyntax_31(D)->AdvPicSyntax.SKIPMBMode
	strb	ip, [r1, #378]	@ tmp178, pSyntax_31(D)->AdvPicSyntax.CONDOVER
	b	.L90	@
.L92:
	rsb	r3, r3, r4	@, D.30804, D.30804
	mov	r2, lr	@, D.30806
	ldr	r1, .L94+4	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
	mov	r0, #1	@ D.30802,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L95:
	.align	2
.L94:
	.word	g_HwMem
	.word	.LC6
	.fnend
	.size	BPD_GetParam, .-BPD_GetParam
	.align	2
	.global	BPD_Drv
	.type	BPD_Drv, %function
BPD_Drv:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r1, #20480	@ tmp132, pCodecInfo,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pCodecInfo, pCodecInfo
	ldr	r3, [ip, #2084]	@ D.30815, pCodecInfo_4(D)->MbHeight
	cmp	r3, #2	@ D.30815,
	ldrle	r2, [ip, #2080]	@ D.30815, pCodecInfo_4(D)->MbWidth
	ble	.L98	@,
	mov	r6, r2	@ pSyntax, pSyntax
	ldr	r2, [ip, #2080]	@ D.30815, pCodecInfo_4(D)->MbWidth
	cmp	r3, #128	@ D.30815,
	sub	r4, r2, #3	@ D.30817, D.30815,
	movle	lr, #0	@ tmp141,
	movgt	lr, #1	@ tmp141,
	cmp	r4, #125	@ D.30817,
	movls	r4, lr	@, tmp144, tmp141
	orrhi	r4, lr, #1	@,, tmp144, tmp141
	cmp	r4, #0	@ tmp144,
	beq	.L99	@,
.L98:
	mov	r3, r3, asl #4	@, D.30815,
	mov	r2, r2, asl #4	@, D.30815,
	ldr	r1, .L105	@,
	mov	r0, #0	@,
	bl	dprint_vfmw	@
.L100:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L99:
	ldr	r8, .L105+4	@ tmp149,
	mov	r7, r0	@ pBs, pBs
	ldr	r1, .L105+8	@,
	mov	r0, #22	@,
	bl	dprint_vfmw	@
	bl	BPD_Reset	@
	mov	r3, r8	@, tmp149
	mov	r2, r6	@, pSyntax
	mov	r1, r7	@, pBs
	mov	r0, r5	@, pCodecInfo
	bl	BPD_CfgReg	@
	cmn	r0, #1	@,
	beq	.L104	@,
	ldr	r3, [r8, #8]	@ D.30816, g_HwMem[0].pBpdRegVirAddr
	mov	r2, #1	@ tmp154,
	str	r4, [r3]	@ tmp144, MEM[(volatile HI_S32 *)_23]
	ldr	r3, [r8, #8]	@ D.30816, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r3]	@ tmp154, MEM[(volatile HI_S32 *)_24]
	ldr	r3, [r8, #8]	@ D.30816, g_HwMem[0].pBpdRegVirAddr
	str	r4, [r3]	@ tmp144, MEM[(volatile HI_S32 *)_25]
	bl	BPDDRV_WaitBpdReadyIfNoIsr	@
	cmp	r0, #0	@,
	bne	.L100	@,
	mov	r2, r7	@, pBs
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInfo
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	BPD_GetParam	@
.L104:
	mov	r0, r4	@, tmp144
	ldr	r1, .L105+12	@,
	bl	dprint_vfmw	@
	b	.L100	@
.L106:
	.align	2
.L105:
	.word	.LC7
	.word	g_HwMem
	.word	.LC8
	.word	.LC9
	.fnend
	.size	BPD_Drv, .-BPD_Drv
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"BPD register virtual address not mapped, reset fail"
	.ascii	"ed!\012\000"
.LC1:
	.ascii	"*****************reset BPD!!!!******************\012"
	.ascii	"\000"
	.space	2
.LC2:
	.ascii	"Reset BPD Failed!\012\000"
	.space	1
.LC3:
	.ascii	"BPD register not mapped yet!\000"
	.space	3
.LC4:
	.ascii	"L%d: %s\012\000"
	.space	3
.LC5:
	.ascii	"======>>>>> BPD TimeOut!!!\012\000"
.LC6:
	.ascii	" BPD ERROR: EAT TOO MUCH BS %#x, but available bs n"
	.ascii	"um %#x!!!\012\000"
	.space	2
.LC7:
	.ascii	"NOT SUPPORT SIZE %d*%d\012\000"
.LC8:
	.ascii	"----------------BPD_V200_DRV\012\000"
	.space	2
.LC9:
	.ascii	"BPD error: no map reg!\012\000"
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
