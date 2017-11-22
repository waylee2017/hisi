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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(bitplane)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/.bitplane.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/driver/HiVDHV200R004/bitplane.o
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
	.global	BPD_CfgReg_GetRegVirAddr
	.type	BPD_CfgReg_GetRegVirAddr, %function
BPD_CfgReg_GetRegVirAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, [r0, #8]	@ pHwMem_4(D)->pBpdRegVirAddr, pHwMem_4(D)->pBpdRegVirAddr
	cmp	r4, #0	@ pHwMem_4(D)->pBpdRegVirAddr,
	beq	.L7	@,
	mov	r0, #0	@ D.35478,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L7:
	mov	r5, r0	@ pHwMem, pHwMem
	mov	r0, #0	@,
	movt	r0, 4116	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	beq	.L3	@,
	str	r0, [r5, #8]	@ p32, pHwMem_4(D)->pBpdRegVirAddr
	mov	r0, r4	@ D.35478, pHwMem_4(D)->pBpdRegVirAddr
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L3:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35478,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	BPD_CfgReg_GetRegVirAddr, .-BPD_CfgReg_GetRegVirAddr
	.align	2
	.global	BPD_CfgReg
	.type	BPD_CfgReg, %function
BPD_CfgReg:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ pCodecInfo, pCodecInfo
	ldr	ip, [r3, #8]	@ pHwMem_13(D)->pBpdRegVirAddr, pHwMem_13(D)->pBpdRegVirAddr
	mov	r0, #0	@ tmp278,
	.pad #24
	sub	sp, sp, #24	@,,
	cmp	ip, r0	@ pHwMem_13(D)->pBpdRegVirAddr,
	str	r0, [sp, #20]	@ tmp278, D32
	beq	.L42	@,
.L9:
	ldr	lr, .L48	@ tmp527,
	mvn	ip, #0	@ tmp494,
	mvn	r0, #1	@ tmp497,
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	ip, [r3, #68]	@ tmp494, *_18
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	r0, [r3, #68]	@ tmp497, *_23
	ldr	r0, [r1, #24]	@ D.35489, pBS_25(D)->TotalPos
	ldr	r6, [r1, #20]	@ pBS_25(D)->BufPos, pBS_25(D)->BufPos
	adds	ip, r0, #31	@ D.35489, D.35489,
	add	r3, r0, #7	@ tmp519, D.35489,
	addmi	ip, r0, #62	@, D.35489, D.35489,
	cmp	r0, #0	@ D.35489,
	bic	ip, ip, #31	@ D.35489, D.35489,
	ldrb	r5, [r4, #3096]	@ zero_extendqisi2	@ pCodecInfo_41(D)->PreParseInfo.IsAdvProfile, pCodecInfo_41(D)->PreParseInfo.IsAdvProfile
	add	ip, ip, r6	@ D.35489, D.35489, pBS_25(D)->BufPos
	ldr	r6, [r1]	@ pBS_25(D)->pHead, pBS_25(D)->pHead
	rsb	r1, r0, ip	@ D.35489, D.35489, D.35489
	movge	r3, r0	@ D.35489, D.35489
	mov	r7, r3, asr #3	@ D.35489, D.35489,
	mov	ip, r1, asr #31	@ tmp508, D.35489,
	mov	ip, ip, lsr #27	@ tmp509, tmp508,
	add	r1, r1, ip	@ tmp510, D.35489, tmp509
	and	r1, r1, #31	@ tmp511, tmp510,
	rsb	r3, ip, r1	@ D.35489, tmp509, tmp511
	cmp	r3, #0	@ D.35489,
	add	r1, r3, #7	@ tmp515, D.35489,
	movlt	r3, r1	@ D.35489, tmp515
	cmp	r5, #0	@ pCodecInfo_41(D)->PreParseInfo.IsAdvProfile,
	add	r3, r7, r3, asr #3	@ D.35492, D.35489, D.35489,
	add	r3, r6, r3	@ pCurStreamVirAddr, pBS_25(D)->pHead, D.35492
	beq	.L43	@,
	ldrb	r1, [r2, #362]	@ zero_extendqisi2	@ pSyntax_43(D)->AdvPicSyntax.MVMODE, pSyntax_43(D)->AdvPicSyntax.MVMODE
	cmp	r1, #0	@ pSyntax_43(D)->AdvPicSyntax.MVMODE,
	beq	.L12	@,
	movw	r1, #362	@ tmp284,
	ldrh	r1, [r2, r1]	@ *pSyntax_43(D), *pSyntax_43(D)
	cmp	r1, #4	@ *pSyntax_43(D),
	beq	.L12	@,
	ldrb	r1, [r2, #197]	@ zero_extendqisi2	@ pSyntax_43(D)->AdvEntSyntax.OVERLAP, pSyntax_43(D)->AdvEntSyntax.OVERLAP
	cmp	r1, #1	@ pSyntax_43(D)->AdvEntSyntax.OVERLAP,
	beq	.L44	@,
.L14:
	ldrb	r1, [r2, #349]	@ zero_extendqisi2	@ D.35494, pSyntax_43(D)->AdvPicSyntax.PTYPE
	ldr	r5, [r2, #392]	@ pSyntax_43(D)->AdvPicSyntax.FCM, pSyntax_43(D)->AdvPicSyntax.FCM
	cmp	r1, #4	@ D.35494,
	ldrb	r6, [r2, #16]	@ zero_extendqisi2	@ pSyntax_43(D)->AdvSeqSyntax.PROFILE, pSyntax_43(D)->AdvSeqSyntax.PROFILE
	andne	ip, r1, #3	@ D.35486, D.35494,
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_structure
	moveq	ip, #3	@ D.35486,
	cmp	r5, #3	@ pSyntax_43(D)->AdvPicSyntax.FCM,
	bfi	r1, r5, #0, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_structure, pSyntax_43(D)->AdvPicSyntax.FCM,,
	ldrb	r5, [sp, #21]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	bfi	r1, r6, #2, #2	@ MEM[(struct BPD_CFG0 *)&D32].profile, pSyntax_43(D)->AdvSeqSyntax.PROFILE,,
	strb	r1, [sp, #22]	@ MEM[(struct BPD_CFG0 *)&D32].profile, MEM[(struct BPD_CFG0 *)&D32].profile
	bfi	r5, ip, #6, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, D.35486,,
	strb	r5, [sp, #21]	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	beq	.L45	@,
.L17:
	add	ip, r4, #20480	@ tmp526, pCodecInfo,
	movw	r6, #21846	@ tmp353,
	movt	r6, 21845	@ tmp353,
	ldr	r1, [ip, #2084]	@ pCodecInfo_41(D)->MbHeight, pCodecInfo_41(D)->MbHeight
	smull	r6, r7, r1, r6	@ tmp352, pCodecInfo_41(D)->MbHeight, tmp353
	sub	r5, r7, r1, asr #31	@ tmp350,, pCodecInfo_41(D)->MbHeight,
	add	r5, r5, r5, lsl #1	@ tmp357, tmp350, tmp350,
	rsb	r1, r5, r1	@ D.35489, tmp357, pCodecInfo_41(D)->MbHeight
	and	r10, r1, #3	@ D.35486, D.35489,
.L21:
	ldr	r9, [ip, #2080]	@ pCodecInfo_41(D)->MbWidth, pCodecInfo_41(D)->MbWidth
	movw	r6, #21846	@ tmp368,
	movt	r6, 21845	@ tmp368,
	add	r1, r4, #32768	@ tmp528, pCodecInfo,
	ldrb	r8, [sp, #21]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_mbheigt_mod3
	and	r0, r0, #7	@ tmp389, D.35489,
	smull	r6, r7, r9, r6	@ tmp367, pCodecInfo_41(D)->MbWidth, tmp368
	ldr	r6, [r1, #2172]	@ pCodecInfo_41(D)->stCurPacket.BsVirAddr, pCodecInfo_41(D)->stCurPacket.BsVirAddr
	ldr	r5, [r1, #2184]	@ pCodecInfo_41(D)->stCurPacket.BsPhyAddr, pCodecInfo_41(D)->stCurPacket.BsPhyAddr
	bfi	r8, r10, #2, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_mbheigt_mod3, D.35486,,
	rsb	r6, r6, r3	@ D.35489, pCodecInfo_41(D)->stCurPacket.BsVirAddr, pCurStreamVirAddr
	sub	r7, r7, r9, asr #31	@ tmp365,, pCodecInfo_41(D)->MbWidth,
	add	r5, r6, r5	@ D.35495, D.35489, pCodecInfo_41(D)->stCurPacket.BsPhyAddr
	and	r5, r5, #15	@ tmp385, D.35495,
	add	r6, r7, r7, lsl #1	@ tmp372, tmp365, tmp365,
	rsb	r9, r6, r9	@ D.35489, tmp372, pCodecInfo_41(D)->MbWidth
	ldr	r6, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	add	r0, r0, r5, lsl #3	@ tmp392, tmp389, tmp385,
	bfi	r8, r9, #0, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_mbwidth_mod3, D.35489,,
	strb	r0, [sp, #20]	@ tmp392, MEM[(struct BPD_CFG0 *)&D32].bit_offset
	strb	r8, [sp, #21]	@ MEM[(struct BPD_CFG0 *)&D32].pic_mbwidth_mod3, MEM[(struct BPD_CFG0 *)&D32].pic_mbwidth_mod3
	ldr	r0, [sp, #20]	@ D.35489, D32
	str	r0, [r6, #4]	@ D.35489, *_113
	ldr	r0, [r1, #2172]	@ pCodecInfo_41(D)->stCurPacket.BsVirAddr, pCodecInfo_41(D)->stCurPacket.BsVirAddr
	ldr	r6, [r1, #2184]	@ pCodecInfo_41(D)->stCurPacket.BsPhyAddr, pCodecInfo_41(D)->stCurPacket.BsPhyAddr
	ldr	r5, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	rsb	r3, r0, r3	@ D.35489, pCodecInfo_41(D)->stCurPacket.BsVirAddr, pCurStreamVirAddr
	add	r3, r3, r6	@ D.35495, D.35489, pCodecInfo_41(D)->stCurPacket.BsPhyAddr
	bic	r3, r3, #15	@ D.35489, D.35495,
	str	r3, [r5, #8]	@ D.35489, *_129
	ldrb	r3, [r4, #3096]	@ zero_extendqisi2	@ pCodecInfo_41(D)->PreParseInfo.IsAdvProfile, pCodecInfo_41(D)->PreParseInfo.IsAdvProfile
	cmp	r3, #0	@ pCodecInfo_41(D)->PreParseInfo.IsAdvProfile,
	beq	.L22	@,
	ldr	r3, [r2, #392]	@ pSyntax_43(D)->AdvPicSyntax.FCM, pSyntax_43(D)->AdvPicSyntax.FCM
	cmp	r3, #3	@ pSyntax_43(D)->AdvPicSyntax.FCM,
	beq	.L46	@,
.L22:
	ldr	r3, [ip, #2084]	@ pCodecInfo_41(D)->MbHeight, pCodecInfo_41(D)->MbHeight
	sub	r3, r3, #1	@ tmp425, pCodecInfo_41(D)->MbHeight,
	uxth	r3, r3	@ D.35487, tmp425
.L23:
	ldr	r0, [ip, #2080]	@ pCodecInfo_41(D)->MbWidth, pCodecInfo_41(D)->MbWidth
	mov	r4, #3	@ tmp485,
	strh	r3, [sp, #22]	@ movhi	@ D.35487, MEM[(struct BPD_CFG2 *)&D32].pic_mbheight_m1
	mov	r2, #0	@ tmp433,
	sub	r3, r0, #1	@ tmp430, pCodecInfo_41(D)->MbWidth,
	strh	r3, [sp, #20]	@ movhi	@ tmp430, MEM[(struct BPD_CFG2 *)&D32].pic_mbwidth_m1
	ldr	r6, [sp, #20]	@ D.35489, D32
	mov	r5, #0	@ MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding,
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	bfi	r5, r4, #4, #4	@ MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding, tmp485,,
	str	r2, [sp, #20]	@ tmp433, D32
	mov	r0, r2	@ D.35485, tmp433
	str	r6, [r3, #12]	@ D.35489, *_150
	ldr	ip, [ip, #2080]	@ pCodecInfo_41(D)->MbWidth, pCodecInfo_41(D)->MbWidth
	ldr	r6, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	adds	r3, ip, #127	@ D.35489, pCodecInfo_41(D)->MbWidth,
	addmi	r3, ip, #254	@, D.35489, pCodecInfo_41(D)->MbWidth,
	mov	r3, r3, lsr r4	@ tmp445, D.35489,
	and	r3, r3, #4080	@ tmp447, tmp445,
	strh	r3, [sp, #20]	@ movhi	@ tmp447, MEM[(struct BPD_CFG3 *)&D32].bp_sride
	ldr	r3, [sp, #20]	@ D.35489, D32
	str	r3, [r6, #16]	@ D.35489, *_164
	ldr	ip, [r1, #2256]	@ D.35489, pCodecInfo_41(D)->MVTYPEMB_ADDR
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	ip, [r3, #20]	@ D.35489, *_173
	ldr	ip, [r1, #2260]	@ D.35489, pCodecInfo_41(D)->SKIPMB_ADDR
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	ip, [r3, #24]	@ D.35489, *_181
	ldr	ip, [r1, #2264]	@ D.35489, pCodecInfo_41(D)->DIRECTMB_ADDR
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	ip, [r3, #28]	@ D.35489, *_189
	ldr	ip, [r1, #2268]	@ D.35489, pCodecInfo_41(D)->ACPRED_ADDR
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	ip, [r3, #32]	@ D.35489, *_197
	ldr	ip, [r1, #2272]	@ D.35489, pCodecInfo_41(D)->OVERFLAGS_ADDR
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	str	ip, [r3, #36]	@ D.35489, *_205
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	ip, [r1, #2276]	@ D.35489, pCodecInfo_41(D)->FIELDTX_ADDR
	str	ip, [r3, #40]	@ D.35489, *_213
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r1, [r1, #2280]	@ D.35489, pCodecInfo_41(D)->FORWARDMB_ADDR
	str	r1, [r3, #44]	@ D.35489, *_222
	str	r2, [sp, #20]	@ tmp433, D32
	strb	r5, [sp, #20]	@ MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding, MEM[(struct BPD_CFG11 *)&D32].axi_rd_outstanding
	strb	r4, [sp, #21]	@ tmp485, MEM[(struct BPD_CFG11 *)&D32].axi_wr_outstanding
	ldr	r3, [lr, #8]	@ g_HwMem[0].pBpdRegVirAddr, g_HwMem[0].pBpdRegVirAddr
	ldr	r2, [sp, #20]	@ D.35489, D32
	str	r2, [r3, #48]	@ D.35489, *_234
.L37:
	add	sp, sp, #24	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L43:
	ldrb	r1, [r2, #259]	@ zero_extendqisi2	@ D.35494, pSyntax_43(D)->SMPPicSyntax.MVMODE
	cmp	r1, #0	@ D.35494,
	beq	.L18	@,
	cmp	r1, #4	@ D.35494,
	beq	.L47	@,
.L19:
	ldrb	r1, [r2, #251]	@ zero_extendqisi2	@ D.35494, pSyntax_43(D)->SMPPicSyntax.PTYPE
	ldrb	r5, [sp, #21]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	cmp	r1, #4	@ D.35494,
	ldrb	r6, [r2]	@ zero_extendqisi2	@ pSyntax_43(D)->SMPSeqSyntax.PROFILE, pSyntax_43(D)->SMPSeqSyntax.PROFILE
	andne	ip, r1, #3	@ D.35486, D.35494,
	ldrb	r1, [sp, #22]	@ zero_extendqisi2	@, MEM[(struct BPD_CFG0 *)&D32].pic_structure
	moveq	ip, #3	@ D.35486,
	bfi	r5, ip, #6, #2	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, D.35486,,
	and	r1, r1, #252	@ MEM[(struct BPD_CFG0 *)&D32].profile, MEM[(struct BPD_CFG0 *)&D32].pic_structure,
	strb	r5, [sp, #21]	@ MEM[(struct BPD_CFG0 *)&D32].pic_coding_type, MEM[(struct BPD_CFG0 *)&D32].pic_coding_type
	bfi	r1, r6, #2, #2	@ MEM[(struct BPD_CFG0 *)&D32].profile, pSyntax_43(D)->SMPSeqSyntax.PROFILE,,
	strb	r1, [sp, #22]	@ MEM[(struct BPD_CFG0 *)&D32].profile, MEM[(struct BPD_CFG0 *)&D32].profile
	b	.L17	@
.L12:
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ MEM[(struct BPD_CFG0 *)&D32].mvmode_en, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	orr	r1, r1, #16	@ tmp289, MEM[(struct BPD_CFG0 *)&D32].mvmode_en,
	strb	r1, [sp, #21]	@ tmp289, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	ldrb	r1, [r2, #197]	@ zero_extendqisi2	@ pSyntax_43(D)->AdvEntSyntax.OVERLAP, pSyntax_43(D)->AdvEntSyntax.OVERLAP
	cmp	r1, #1	@ pSyntax_43(D)->AdvEntSyntax.OVERLAP,
	bne	.L14	@,
.L44:
	ldr	r1, [r2, #464]	@ pSyntax_43(D)->AdvPicSyntax.PQUANT, pSyntax_43(D)->AdvPicSyntax.PQUANT
	cmp	r1, #8	@ pSyntax_43(D)->AdvPicSyntax.PQUANT,
	ldrleb	r1, [sp, #21]	@ zero_extendqisi2	@ MEM[(struct BPD_CFG0 *)&D32].overflag_en, MEM[(struct BPD_CFG0 *)&D32].overflag_en
	orrle	r1, r1, #32	@ tmp295, MEM[(struct BPD_CFG0 *)&D32].overflag_en,
	strleb	r1, [sp, #21]	@ tmp295, MEM[(struct BPD_CFG0 *)&D32].overflag_en
	b	.L14	@
.L47:
	ldrb	r1, [r2, #260]	@ zero_extendqisi2	@ pSyntax_43(D)->SMPPicSyntax.MVMODE2, pSyntax_43(D)->SMPPicSyntax.MVMODE2
	cmp	r1, #0	@ pSyntax_43(D)->SMPPicSyntax.MVMODE2,
	bne	.L19	@,
.L18:
	ldrb	r1, [sp, #21]	@ zero_extendqisi2	@ MEM[(struct BPD_CFG0 *)&D32].mvmode_en, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	orr	r1, r1, #16	@ tmp315, MEM[(struct BPD_CFG0 *)&D32].mvmode_en,
	strb	r1, [sp, #21]	@ tmp315, MEM[(struct BPD_CFG0 *)&D32].mvmode_en
	b	.L19	@
.L46:
	ldr	r3, [ip, #2084]	@ pCodecInfo_41(D)->MbHeight, pCodecInfo_41(D)->MbHeight
	add	r3, r3, #1	@ D.35489, pCodecInfo_41(D)->MbHeight,
	add	r3, r3, r3, lsr #31	@ tmp417, D.35489, D.35489,
	mov	r3, r3, asr #1	@ D.35489, tmp417,
	sub	r3, r3, #1	@ tmp420, D.35489,
	uxth	r3, r3	@ D.35487, tmp420
	b	.L23	@
.L45:
	add	ip, r4, #20480	@ tmp526, pCodecInfo,
	movw	r6, #21846	@ tmp340,
	movt	r6, 21845	@ tmp340,
	ldr	r5, [ip, #2084]	@ pCodecInfo_41(D)->MbHeight, pCodecInfo_41(D)->MbHeight
	add	r5, r5, #1	@ D.35489, pCodecInfo_41(D)->MbHeight,
	add	r5, r5, r5, lsr #31	@ tmp336, D.35489, D.35489,
	mov	r1, r5, asr #1	@ D.35489, tmp336,
	smull	r6, r7, r1, r6	@ tmp339, D.35489, tmp340
	sub	r5, r7, r5, asr #31	@ tmp338,, tmp336,
	add	r5, r5, r5, lsl #1	@ tmp344, tmp338, tmp338,
	rsb	r1, r5, r1	@ D.35489, tmp344, D.35489
	and	r10, r1, #3	@ D.35486, D.35489,
	b	.L21	@
.L42:
	movt	r0, 4116	@,
	stmib	sp, {r1, r2, r3}	@,,,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@ p32
	ldrne	r3, [sp, #12]	@ pHwMem, %sfp
	ldmneib	sp, {r1, r2}	@,,
	strne	r0, [r3, #8]	@ p32, pHwMem_13(D)->pBpdRegVirAddr
	bne	.L9	@
.L10:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35485,
	b	.L37	@
.L49:
	.align	2
.L48:
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
	mov	r0, #0	@,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movt	r0, 4116	@,
	bl	MEM_Phy2Vir	@
	cmp	r0, #0	@,
	beq	.L66	@,
	ldr	r6, .L69	@ tmp141,
	bl	vfmw_dprint_nothing	@
	ldr	r5, .L69+4	@ tmp140,
	ldr	ip, [r6]	@ D.35507, g_pstRegCrg
	ldr	r0, [r5, #8]	@ D.35510, g_HwMem[0].pBpdRegVirAddr
	ldr	r4, [ip, #136]	@ u32TmpValue, _9->PERI_CRG34.u32
	add	r1, r0, #64	@ D.35512, D.35510,
	orr	r4, r4, #16	@ u32TmpValue, u32TmpValue,
	str	r4, [ip, #136]	@ u32TmpValue, _9->PERI_CRG34.u32
	ldr	r3, [r0, #64]	@ dat, *_38
	tst	r3, #65536	@ dat,
	beq	.L52	@,
	movw	r3, #9999	@ D.35511,
	b	.L53	@
.L68:
	subs	r3, r3, #1	@ D.35511, D.35511,
	beq	.L67	@,
.L53:
	ldr	r2, [r1]	@ dat, *_38
	tst	r2, #65536	@ dat,
	bne	.L68	@,
.L52:
	bfc	r4, #4, #1	@ u32TmpValue,,
	mvn	r3, #1	@ tmp137,
	str	r4, [ip, #136]	@ u32TmpValue, _34->PERI_CRG34.u32
	str	r3, [r0, #52]	@ tmp137, *_31
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L67:
	bl	vfmw_dprint_nothing	@
	ldr	ip, [r6]	@ D.35507, g_pstRegCrg
	ldr	r0, [r5, #8]	@ D.35510, g_HwMem[0].pBpdRegVirAddr
	b	.L52	@
.L66:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L70:
	.align	2
.L69:
	.word	g_pstRegCrg
	.word	g_HwMem
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
	ldr	r3, .L72	@ tmp113,
	mov	r2, #0	@ tmp114,
	mov	r0, #1	@ tmp116,
	ldr	r1, [r3, #8]	@ D.35516, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r1]	@ tmp114, MEM[(volatile HI_S32 *)_2]
	ldr	r1, [r3, #8]	@ D.35516, g_HwMem[0].pBpdRegVirAddr
	str	r0, [r1]	@ tmp116, MEM[(volatile HI_S32 *)_4]
	ldr	r3, [r3, #8]	@ D.35516, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r3]	@ tmp114, MEM[(volatile HI_S32 *)_6]
	bx	lr	@
.L73:
	.align	2
.L72:
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
	ldr	r3, .L80	@ tmp120,
	ldr	r3, [r3, #8]	@ D.35520, g_HwMem[0].pBpdRegVirAddr
	cmp	r3, #0	@ D.35520,
	beq	.L79	@,
	ldr	r0, [r3, #64]	@ Data32, *_8
	and	r0, r0, #1	@ D.35519, Data32,
	bx	lr	@
.L79:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.35519,
	ldmfd	sp!, {r4, pc}	@
.L81:
	.align	2
.L80:
	.word	g_HwMem
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
	b	.L85	@
.L90:
	bl	OSAL_GetTimeInMs	@
	cmp	r0, r5	@ CurTimeInMs, StartTimeInMs
	movcc	r5, #0	@ StartTimeInMs,
	rsb	r4, r5, r0	@ cnt_wait, StartTimeInMs, CurTimeInMs
	cmp	r4, #4000	@ cnt_wait,
	bcs	.L87	@,
.L85:
	bl	IsBpd_Ready	@
	cmp	r0, #0	@,
	beq	.L90	@,
	cmp	r4, #4000	@ cnt_wait,
	bcs	.L87	@,
	mov	r0, #0	@ D.35526,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L87:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.35526,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	BPDDRV_WaitBpdReadyIfNoIsr, .-BPDDRV_WaitBpdReadyIfNoIsr
	.align	2
	.global	BPD_GetParam
	.type	BPD_GetParam, %function
BPD_GetParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	lr, .L99	@ tmp155,
	ldr	ip, [r2, #16]	@ pBS_19(D)->BsLen, pBS_19(D)->BsLen
	ldr	r3, [r2, #24]	@ pBS_19(D)->TotalPos, pBS_19(D)->TotalPos
	ldr	lr, [lr, #8]	@ D.35532, g_HwMem[0].pBpdRegVirAddr
	rsb	ip, r3, ip, lsl #3	@ D.35532, pBS_19(D)->TotalPos, pBS_19(D)->BsLen,
	ldr	r4, [lr, #80]	@ D.35534, *_10
	ldr	r3, [lr, #84]	@ D.35532, *_15
	cmp	r4, ip	@ D.35534, D.35532
	bcs	.L97	@,
	ldrb	r0, [r0, #3096]	@ zero_extendqisi2	@ pCodecInfo_26(D)->PreParseInfo.IsAdvProfile, pCodecInfo_26(D)->PreParseInfo.IsAdvProfile
	cmp	r0, #0	@ pCodecInfo_26(D)->PreParseInfo.IsAdvProfile,
	bne	.L98	@,
	and	ip, r3, #15	@ D.35536, D.35532,
	ubfx	r0, r3, #8, #4	@ D.35536, D.35532,,
	str	ip, [r1, #328]	@ D.35536, pSyntax_30(D)->SMPPicSyntax.MVTYPEMBMode
	ubfx	r3, r3, #4, #4	@ D.35536, D.35532,,
	str	r0, [r1, #332]	@ D.35536, pSyntax_30(D)->SMPPicSyntax.DIRECTMBMode
	str	r3, [r1, #336]	@ D.35536, pSyntax_30(D)->SMPPicSyntax.SKIPMBMode
.L95:
	mov	r1, r4	@, D.35534
	mov	r0, r2	@, pBS
	bl	BsLongSkip	@
	mov	r0, #0	@ D.35530,
	ldmfd	sp!, {r4, pc}	@
.L98:
	ubfx	r0, r3, #0, #4	@ tmp163, D.35532,,
	ubfx	ip, r3, #12, #4	@ tmp165, D.35532,,
	strb	r0, [r1, #382]	@ tmp163, pSyntax_30(D)->AdvPicSyntax.MVTYPEMBMode
	ubfx	r0, r3, #16, #4	@ tmp167, D.35532,,
	strb	ip, [r1, #385]	@ tmp165, pSyntax_30(D)->AdvPicSyntax.ACPREDMode
	ubfx	ip, r3, #20, #4	@ tmp169, D.35532,,
	strb	r0, [r1, #386]	@ tmp167, pSyntax_30(D)->AdvPicSyntax.OVERFLAGSMode
	ubfx	r0, r3, #8, #4	@ tmp171, D.35532,,
	strb	ip, [r1, #387]	@ tmp169, pSyntax_30(D)->AdvPicSyntax.FIELDTXMode
	ubfx	ip, r3, #24, #4	@ tmp173, D.35532,,
	strb	r0, [r1, #383]	@ tmp171, pSyntax_30(D)->AdvPicSyntax.DIRECTMBMode
	ubfx	r0, r3, #4, #4	@ tmp175, D.35532,,
	strb	ip, [r1, #388]	@ tmp173, pSyntax_30(D)->AdvPicSyntax.FORWARDMBMode
	ubfx	r3, r3, #28, #2	@ tmp177, D.35532,,
	strb	r0, [r1, #384]	@ tmp175, pSyntax_30(D)->AdvPicSyntax.SKIPMBMode
	strb	r3, [r1, #378]	@ tmp177, pSyntax_30(D)->AdvPicSyntax.CONDOVER
	b	.L95	@
.L97:
	bl	vfmw_dprint_nothing	@
	mov	r0, #1	@ D.35530,
	ldmfd	sp!, {r4, pc}	@
.L100:
	.align	2
.L99:
	.word	g_HwMem
	.fnend
	.size	BPD_GetParam, .-BPD_GetParam
	.align	2
	.global	BPD_Drv
	.type	BPD_Drv, %function
BPD_Drv:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	ip, r1, #20480	@ tmp130, pCodecInfo,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r1	@ pCodecInfo, pCodecInfo
	ldr	r3, [ip, #2084]	@ D.35542, pCodecInfo_4(D)->MbHeight
	cmp	r3, #2	@ D.35542,
	ble	.L102	@,
	ldr	r4, [ip, #2080]	@ pCodecInfo_4(D)->MbWidth, pCodecInfo_4(D)->MbWidth
	cmp	r3, #128	@ D.35542,
	sub	r4, r4, #3	@ D.35544, pCodecInfo_4(D)->MbWidth,
	movle	r3, #0	@ tmp138,
	movgt	r3, #1	@ tmp138,
	cmp	r4, #125	@ D.35544,
	movls	r4, r3	@, tmp141, tmp138
	orrhi	r4, r3, #1	@,, tmp141, tmp138
	cmp	r4, #0	@ tmp141,
	beq	.L103	@,
.L102:
	bl	vfmw_dprint_nothing	@
.L104:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L103:
	ldr	r8, .L110	@ tmp142,
	mov	r7, r0	@ pBs, pBs
	mov	r6, r2	@ pSyntax, pSyntax
	bl	vfmw_dprint_nothing	@
	bl	BPD_Reset	@
	mov	r2, r6	@, pSyntax
	mov	r1, r7	@, pBs
	mov	r0, r5	@, pCodecInfo
	mov	r3, r8	@, tmp142
	bl	BPD_CfgReg	@
	cmn	r0, #1	@,
	beq	.L102	@,
	ldr	r3, [r8, #8]	@ D.35543, g_HwMem[0].pBpdRegVirAddr
	mov	r2, #1	@ tmp146,
	str	r4, [r3]	@ tmp141, MEM[(volatile HI_S32 *)_20]
	ldr	r3, [r8, #8]	@ D.35543, g_HwMem[0].pBpdRegVirAddr
	str	r2, [r3]	@ tmp146, MEM[(volatile HI_S32 *)_21]
	ldr	r3, [r8, #8]	@ D.35543, g_HwMem[0].pBpdRegVirAddr
	str	r4, [r3]	@ tmp141, MEM[(volatile HI_S32 *)_22]
	bl	BPDDRV_WaitBpdReadyIfNoIsr	@
	cmp	r0, #0	@,
	bne	.L104	@,
	mov	r2, r7	@, pBs
	mov	r1, r6	@, pSyntax
	mov	r0, r5	@, pCodecInfo
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	BPD_GetParam	@
.L111:
	.align	2
.L110:
	.word	g_HwMem
	.fnend
	.size	BPD_Drv, .-BPD_Drv
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
