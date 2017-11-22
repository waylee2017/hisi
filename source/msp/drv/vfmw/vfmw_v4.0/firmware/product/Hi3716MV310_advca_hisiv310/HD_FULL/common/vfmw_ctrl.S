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
	.file	"vfmw_ctrl.c"
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
@ -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
@ -D KBUILD_MODNAME=KBUILD_STR(hi_vfmw)
@ -isystem /opt/hisi-linux/x86-arm/arm-histbv310-linux/bin/../lib/gcc/arm-gcc492_glibc224-linux-gnueabi/4.9.2/include
@ -include ./include/linux/kconfig.h
@ -MD /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/.vfmw_ctrl.o.d
@ /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -mfloat-abi=soft -mtls-dialect=gnu -mno-unaligned-access
@ -mword-relocations
@ -auxbase-strip /usr1/code/v1r4_v1r6_sourceCode/code/current/v1r6_hi3716mv330_pack/work/source/msp/drv/vfmw/vfmw_v4.0/firmware/common/vfmw_ctrl.o
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
	.global	VCTRL_EventReport
	.type	VCTRL_EventReport, %function
VCTRL_EventReport:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L17	@,
	ldr	ip, .L21	@ tmp122,
	ldr	r3, [ip, r0, asl #2]	@ D.42998, s_pstVfmwChan
	cmp	r3, #0	@ D.42998,
	beq	.L17	@,
	ldr	r3, [r3, #20]	@ eType, _9->eAdapterType
	cmp	r3, #0	@ eType,
	beq	.L6	@,
	cmp	r3, #1	@ eType,
	bne	.L17	@,
	ldr	r3, [ip, #164]	@ D.42999, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.42999,
	beq	.L17	@,
.L19:
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ D.42999
.L6:
	ldr	r3, [ip, #160]	@ D.42999, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.42999,
	bne	.L19	@,
.L17:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L22:
	.align	2
.L21:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_EventReport, .-VCTRL_EventReport
	.align	2
	.type	VCTRL_ConfigMemInfo, %function
VCTRL_ConfigMemInfo:
	.fnstart
	@ args = 80, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #444
	sub	sp, sp, #444	@,,
	ldr	r6, .L41	@ tmp239,
	mov	r7, r0	@ ChanID, ChanID
	ldr	r8, [sp, #544]	@ D.43004, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	lr, [sp, #548]	@ D.43004, ChanMemFlag.SelfAllocChanMem_scd
	ldr	ip, [r6, r0, asl #2]	@ D.43003, s_pstVfmwChan
	ldr	r5, [sp, #556]	@ ChanMemFlag.SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	r0, [sp, #552]	@ D.43004, ChanMemFlag.SelfAllocChanMem_ctx
	add	r4, ip, #217088	@ tmp168, D.43003,
	str	r8, [ip, #216]	@ D.43004, _9->s32SelfAllocChanMem_vdh
	str	lr, [ip, #220]	@ D.43004, _9->s32SelfAllocChanMem_scd
	str	r0, [ip, #224]	@ D.43004, _9->s32SelfAllocChanMem_ctx
	str	r5, [r4, #400]	@ ChanMemFlag.SelfAllocChanMem_pmv, _9->s32SelfAllocChanMem_pmv
	ldr	r5, [r3, #8]	@ pChanOption_18(D)->MemAllocMode, pChanOption_18(D)->MemAllocMode
	ldr	r4, [sp, #480]	@ ChanMemDetail$ChanMemVdh$PhyAddr, MEM[(struct  *)&ChanMemDetail]
	cmp	r0, #1	@ D.43004,
	cmpeq	r5, #3	@, pChanOption_18(D)->MemAllocMode,
	ldr	r9, [sp, #496]	@ ChanMemDetail$ChanMemScd$PhyAddr, MEM[(struct  *)&ChanMemDetail + 16B]
	ldr	r5, [sp, #488]	@ ChanMemDetail$ChanMemVdh$Length, MEM[(struct  *)&ChanMemDetail + 8B]
	moveq	r0, #1	@ tmp175,
	movne	r0, #0	@ tmp175,
	cmp	r8, #0	@ D.43004,
	movne	r0, #0	@, tmp179
	andeq	r0, r0, #1	@,, tmp179, tmp175
	ldr	r8, [sp, #504]	@ ChanMemDetail$ChanMemScd$Length, MEM[(struct  *)&ChanMemDetail + 24B]
	cmp	lr, #0	@ D.43004,
	movne	r0, #0	@, tmp185
	andeq	r0, r0, #1	@,, tmp185, tmp179
	ldr	lr, [sp, #500]	@ ChanMemDetail$ChanMemScd$VirAddr, MEM[(struct  *)&ChanMemDetail + 20B]
	cmp	r0, #0	@ tmp185,
	beq	.L24	@,
	add	r0, r9, r8	@ D.43004, ChanMemDetail$ChanMemScd$PhyAddr, ChanMemDetail$ChanMemScd$Length
	cmp	r2, #1	@ OneChanMemFlag,
	cmpeq	r0, r4	@, D.43004, ChanMemDetail$ChanMemVdh$PhyAddr
	beq	.L40	@,
.L24:
	mov	r2, #0	@ tmp196,
	str	r2, [ip, #148]	@ tmp196, _9->s32OneChanMem
.L25:
	ldr	r2, [r6, r7, asl #2]	@ D.43003, s_pstVfmwChan
	add	r0, r6, r7, lsl #2	@ tmp212, tmp239, ChanID,
	ldr	r10, [sp, #512]	@ ChanMemDetail.ChanMemCtx.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	fp, [sp, #484]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	add	ip, r2, #217088	@ tmp203, D.43003,
	str	r4, [r2, #176]	@ ChanMemDetail$ChanMemVdh$PhyAddr, _28->stChanMem_vdh.PhyAddr
	str	r10, [r2, #208]	@ ChanMemDetail.ChanMemCtx.PhyAddr, _28->stChanMem_ctx.PhyAddr
	ldr	r10, [sp, #516]	@ tmp241, ChanMemDetail.ChanMemCtx.VirAddr
	str	fp, [r2, #172]	@ ChanMemDetail.ChanMemVdh.VirAddr, _28->stChanMem_vdh.VirAddr
	ldr	fp, [sp, #520]	@ ChanMemDetail.ChanMemCtx.Length, ChanMemDetail.ChanMemCtx.Length
	str	r10, [r2, #204]	@ tmp241, _28->stChanMem_ctx.VirAddr
	ldr	r10, [sp, #528]	@ tmp243, ChanMemDetail.ChanMemPmv.PhyAddr
	str	fp, [r2, #212]	@ ChanMemDetail.ChanMemCtx.Length, _28->stChanMem_ctx.Length
	str	r5, [r2, #180]	@ ChanMemDetail$ChanMemVdh$Length, _28->stChanMem_vdh.Length
	str	r9, [r2, #192]	@ ChanMemDetail$ChanMemScd$PhyAddr, _28->stChanMem_scd.PhyAddr
	str	lr, [r2, #188]	@ ChanMemDetail$ChanMemScd$VirAddr, _28->stChanMem_scd.VirAddr
	str	r8, [r2, #196]	@ ChanMemDetail$ChanMemScd$Length, _28->stChanMem_scd.Length
	ldr	fp, [sp, #536]	@ ChanMemDetail.ChanMemPmv.Length, ChanMemDetail.ChanMemPmv.Length
	str	r10, [ip, #412]	@ tmp243, _28->stChanMem_pmv.PhyAddr
	ldr	r10, [sp, #532]	@ tmp242, ChanMemDetail.ChanMemPmv.VirAddr
	str	fp, [ip, #416]	@ ChanMemDetail.ChanMemPmv.Length, _28->stChanMem_pmv.Length
	str	lr, [r0, #168]	@ ChanMemDetail$ChanMemScd$VirAddr, g_scd_vir
	str	r10, [ip, #408]	@ tmp242, _28->stChanMem_pmv.VirAddr
	ldr	ip, [r2, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r4, [r2, #248]	@ ChanMemDetail$ChanMemVdh$PhyAddr, _28->s32SdecMemAddr
	cmp	ip, #1	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	str	r5, [r2, #252]	@ ChanMemDetail$ChanMemVdh$Length, _28->s32SdecMemSize
	beq	.L26	@,
	str	r4, [r2, #236]	@ ChanMemDetail$ChanMemVdh$PhyAddr, _28->s32OffLineDnrMemAddr
	cmp	r1, #24	@ eCapLevel,
	ldr	r2, .L41+4	@ tmp215,
	ldrne	r1, [r3, #60]	@ DnrImgNum, pChanOption_18(D)->s32DisplayFrameNum
	moveq	r1, #1	@ DnrImgNum,
	ldr	ip, [r2, #36]	@ D.43008, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.43008,
	beq	.L30	@,
	ldr	r10, [r3, #16]	@ pChanOption_18(D)->s32MaxHeight, pChanOption_18(D)->s32MaxHeight
	add	r0, sp, #24	@ tmp219,,
	ldr	r2, [r3, #12]	@ pChanOption_18(D)->s32MaxWidth, pChanOption_18(D)->s32MaxWidth
	mov	lr, #64	@ tmp218,
	str	r1, [sp, #4]	@ DnrImgNum,
	mvn	r1, #0	@ tmp220,
	str	r0, [sp, #16]	@ tmp219,
	mov	r3, r10	@, pChanOption_18(D)->s32MaxHeight
	mov	r0, #0	@ tmp221,
	str	r1, [sp, #12]	@ tmp220,
	str	r0, [sp, #8]	@ tmp221,
	mov	r1, r5	@, ChanMemDetail$ChanMemVdh$Length
	str	r0, [sp]	@ tmp221,
	mov	r0, r4	@, ChanMemDetail$ChanMemVdh$PhyAddr
	str	lr, [sp, #20]	@ tmp218,
	blx	ip	@ D.43008
	cmp	r0, #0	@,
	bne	.L30	@,
	ldr	r3, [r6, r7, asl #2]	@ tmp224, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, _61->s32OffLineDNRMemSize
.L31:
	ldr	r3, [r6, r7, asl #2]	@ D.43003, s_pstVfmwChan
	mov	r1, #14336	@ tmp233,
	mov	r0, #0	@ D.43002,
	mov	r2, #32768	@ tmp237,
	ldr	ip, [r3, #240]	@ D.43004, _68->s32OffLineDNRMemSize
	str	r9, [r3, #244]	@ ChanMemDetail$ChanMemScd$PhyAddr, _68->s32ScdChanMemAddr
	rsb	r5, ip, r5	@ D.43004, D.43004, ChanMemDetail$ChanMemVdh$Length
	add	r4, r4, ip	@ D.43004, ChanMemDetail$ChanMemVdh$PhyAddr, D.43004
	sub	r5, r5, #47104	@ D.43004, D.43004,
	str	r4, [r3, #228]	@ D.43004, _68->s32VdmChanMemAddr
	sub	r5, r5, #16	@ D.43004, D.43004,
	str	r8, [r3, #256]	@ ChanMemDetail$ChanMemScd$Length, _68->s32ScdChanMemSize
	add	r4, r4, r5	@ D.43004, D.43004, D.43004
	str	r5, [r3, #232]	@ D.43004, _68->s32VdmChanMemSize
	add	ip, r4, r1	@ D.43004, D.43004,
	add	r4, r4, #15	@ D.43004, D.43004,
	add	ip, ip, #15	@ D.43004, D.43004,
	bic	r4, r4, #15	@ D.43004, D.43004,
	bic	ip, ip, #15	@ D.43004, D.43004,
	str	r4, [r3, #260]	@ D.43004, _68->s32BpdChanMemAddr
	str	ip, [r3, #268]	@ D.43004, _68->s32Vp8SegIdChanMemAddr
	str	r1, [r3, #264]	@ tmp233, _68->s32BpdChanMemSize
	str	r2, [r3, #272]	@ tmp237, _68->s32Vp8SegIdChanMemSize
.L29:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L26:
	mov	r3, #0	@ tmp226,
	str	r3, [r2, #236]	@ tmp226, _28->s32OffLineDnrMemAddr
	str	r3, [r2, #240]	@ tmp226, _28->s32OffLineDNRMemSize
	b	.L31	@
.L40:
	add	r0, r5, r8	@ D.43004, ChanMemDetail$ChanMemVdh$Length, ChanMemDetail$ChanMemScd$Length
	mov	r2, #1	@ tmp195,
	str	r9, [ip, #160]	@ ChanMemDetail$ChanMemScd$PhyAddr, _9->stChanMem.PhyAddr
	str	lr, [ip, #156]	@ ChanMemDetail$ChanMemScd$VirAddr, _9->stChanMem.VirAddr
	str	r0, [ip, #164]	@ D.43004, _9->stChanMem.Length
	str	r2, [ip, #148]	@ tmp195, _9->s32OneChanMem
	b	.L25	@
.L30:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43002,
	b	.L29	@
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VCTRL_ConfigMemInfo, .-VCTRL_ConfigMemInfo
	.align	2
	.global	VCTRL_Isr_0
	.type	VCTRL_Isr_0, %function
VCTRL_Isr_0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Isr_0, .-VCTRL_Isr_0
	.align	2
	.global	VCTRL_Scd_Isr
	.type	VCTRL_Scd_Isr, %function
VCTRL_Scd_Isr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SM_SCDIntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Scd_Isr, .-VCTRL_Scd_Isr
	.align	2
	.global	VCTRL_Dnr_Isr
	.type	VCTRL_Dnr_Isr, %function
VCTRL_Dnr_Isr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	DNR_IntServeProc	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Dnr_Isr, .-VCTRL_Dnr_Isr
	.align	2
	.type	VCTRL_StopVfmw.part.0, %function
VCTRL_StopVfmw.part.0:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L62	@ tmp122,
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L52	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.43026,
	bl	msleep	@
	b	.L53	@
.L61:
	bl	msleep	@
	subs	r4, r4, #1	@ D.43026, D.43026,
	beq	.L60	@,
.L53:
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L61	@,
.L52:
	mov	r0, #0	@ ret,
.L51:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #48]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L60:
	mvn	r0, #0	@ ret,
	b	.L51	@
.L63:
	.align	2
.L62:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopVfmw.part.0, .-VCTRL_StopVfmw.part.0
	.align	2
	.type	VCTRL_StartVfmw.part.1, %function
VCTRL_StartVfmw.part.1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L77	@ tmp122,
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L67	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.43036,
	bl	msleep	@
	b	.L68	@
.L76:
	bl	msleep	@
	subs	r4, r4, #1	@ D.43036, D.43036,
	beq	.L75	@,
.L68:
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L76	@,
.L67:
	mov	r0, #0	@ ret,
.L66:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #48]	@ tmp120, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L75:
	mvn	r0, #0	@ ret,
	b	.L66	@
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StartVfmw.part.1, .-VCTRL_StartVfmw.part.1
	.align	2
	.global	VCTRL_RegisterSoftDecoder
	.type	VCTRL_RegisterSoftDecoder, %function
VCTRL_RegisterSoftDecoder:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Create,
	beq	.L82	@,
	ldr	r3, [r0, #4]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Destroy,
	beq	.L82	@,
	ldr	r3, [r0, #8]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Init,
	beq	.L82	@,
	ldr	r3, [r0, #12]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_Decode,
	beq	.L82	@,
	ldr	r3, [r0, #16]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_RecycleImage,
	beq	.L82	@,
	ldr	r3, [r0, #20]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetRemainImg,
	beq	.L82	@,
	ldr	r3, [r0, #24]	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer, pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer
	cmp	r3, #0	@ pstSdecFunc_4(D)->pfun_iMediaSoftDEC_GetImageBuffer,
	beq	.L82	@,
	mov	r1, r0	@, pstSdecFunc
	mov	r2, #28	@,
	ldr	r0, .L102	@,
	bl	memcpy	@
	mov	r0, #0	@ D.43039,
	ldmfd	sp!, {r4, pc}	@
.L82:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43039,
	ldmfd	sp!, {r4, pc}	@
.L103:
	.align	2
.L102:
	.word	.LANCHOR0+184
	.fnend
	.size	VCTRL_RegisterSoftDecoder, .-VCTRL_RegisterSoftDecoder
	.align	2
	.global	VCTRL_Suspend
	.type	VCTRL_Suspend, %function
VCTRL_Suspend:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bl	OSAL_GetTimeInMs	@
	mov	r4, #50	@ D.43066,
	mov	r5, r0	@ BeginTime,
	mov	r0, #0	@,
	mvn	r6, r5	@ D.43070, BeginTime
	bl	VDMDRV_PrepareSleep	@
	b	.L111	@
.L110:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.43066, D.43066,
	beq	.L112	@,
.L111:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L112	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.43070, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L110	@,
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.43066, D.43066,
	bne	.L111	@,
.L112:
	ldr	r7, .L144	@ tmp143,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #4]	@ D.43068, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.43068,
	beq	.L141	@,
	mov	r0, #0	@,
	blx	r3	@ D.43068
.L113:
	bl	SCDDRV_PrepareSleep	@
	mov	r4, #50	@ D.43066,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r6, r0	@ D.43070, BeginTime
	b	.L120	@
.L119:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.43066, D.43066,
	beq	.L121	@,
.L120:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L121	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.43070, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L119	@,
	bl	SCDDRV_ForceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.43066, D.43066,
	bne	.L120	@,
.L121:
	ldr	r3, [r7, #12]	@ D.43071, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r3, #0	@ D.43071,
	beq	.L142	@,
	blx	r3	@ D.43071
.L122:
	bl	DNRDRV_PrepareSleep	@
	mov	r4, #50	@ D.43066,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r6, r0	@ D.43070, BeginTime
	b	.L129	@
.L128:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.43066, D.43066,
	beq	.L130	@,
.L129:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L130	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.43070, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L128	@,
	bl	DNRDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.43066, D.43066,
	bne	.L129	@,
.L130:
	ldr	r3, .L144+4	@ tmp137,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L143	@,
	bl	OSAL_GetTimeInMs	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L143:
	mov	r2, #2	@ tmp142,
	str	r2, [r3, #48]	@ tmp142, s_VfmwCTrl.eTaskCommand
	bl	VCTRL_StopVfmw.part.0	@
	bl	OSAL_GetTimeInMs	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L142:
	bl	vfmw_dprint_nothing	@
	b	.L122	@
.L141:
	bl	vfmw_dprint_nothing	@
	b	.L113	@
.L145:
	.align	2
.L144:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_Suspend, .-VCTRL_Suspend
	.align	2
	.global	VCTRL_Resume
	.type	VCTRL_Resume, %function
VCTRL_Resume:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	SCDDRV_ExitSleep	@
	bl	DNRDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_ExitSleep	@
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L147	@,
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #0	@,
	bne	.L147	@,
	bl	BPD_OpenHardware	@
	ldr	r3, .L151	@ tmp113,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	ldmnefd	sp!, {r4, pc}	@
	str	r2, [r3, #48]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_StartVfmw.part.1	@
.L147:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L152:
	.align	2
.L151:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_Resume, .-VCTRL_Resume
	.align	2
	.global	VCTRL_UnRegisterSoftDecoder
	.type	VCTRL_UnRegisterSoftDecoder, %function
VCTRL_UnRegisterSoftDecoder:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_Suspend	@
	mov	r1, #28	@,
	ldr	r0, .L155	@,
	bl	__memzero	@
	ldmfd	sp!, {r4, lr}	@
	b	VCTRL_Resume	@
.L156:
	.align	2
.L155:
	.word	.LANCHOR0+184
	.fnend
	.size	VCTRL_UnRegisterSoftDecoder, .-VCTRL_UnRegisterSoftDecoder
	.align	2
	.global	ChanCtx_Init
	.type	ChanCtx_Init, %function
ChanCtx_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #48	@,
	ldr	r4, .L159	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	mvn	r3, #0	@ tmp112,
	str	r3, [r4, #16]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 16B]
	str	r3, [r4, #20]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 20B]
	str	r3, [r4, #24]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 24B]
	str	r3, [r4, #28]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 28B]
	ldmfd	sp!, {r4, pc}	@
.L160:
	.align	2
.L159:
	.word	g_ChanCtx
	.fnend
	.size	ChanCtx_Init, .-ChanCtx_Init
	.align	2
	.global	VCTRL_Isr_1
	.type	VCTRL_Isr_1, %function
VCTRL_Isr_1:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #1	@,
	bl	VDMDRV_IsrProcess	@
	mov	r0, #1	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_Isr_1, .-VCTRL_Isr_1
	.align	2
	.global	VCTRL_InformVdmFree
	.type	VCTRL_InformVdmFree, %function
VCTRL_InformVdmFree:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bl	OSAL_GetTimeInMs	@
	ldr	r5, .L168	@ tmp120,
	ldr	r3, [r5, #212]	@ D.43089, LastEventTime
	cmp	r0, r3	@ CurTime, D.43089
	mov	r4, r0	@ CurTime,
	bls	.L164	@,
	rsb	r3, r3, r0	@ Period, D.43089, CurTime
	cmp	r3, #9	@ Period,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	b	.L165	@
.L164:
	str	r0, [r5, #212]	@ CurTime, LastEventTime
.L165:
	ldr	r0, .L168+4	@,
	bl	OSAL_GiveEvent	@
	str	r4, [r5, #212]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L169:
	.align	2
.L168:
	.word	.LANCHOR0
	.word	.LANCHOR0+216
	.fnend
	.size	VCTRL_InformVdmFree, .-VCTRL_InformVdmFree
	.align	2
	.global	VCTRL_SetCallBack
	.type	VCTRL_SetCallBack, %function
VCTRL_SetCallBack:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ event_report
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L176	@,
	cmp	r0, #0	@ eType,
	beq	.L174	@,
	cmp	r0, #1	@ eType,
	bne	.L176	@,
	ldr	r3, .L178	@ tmp115,
	mov	r0, #0	@ D.43092,
	str	r1, [r3, #164]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r4, pc}	@
.L176:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43092,
	ldmfd	sp!, {r4, pc}	@
.L174:
	ldr	r3, .L178	@ tmp114,
	str	r1, [r3, #160]	@ event_report, s_VfmwCTrl.event_report_vdec
	ldmfd	sp!, {r4, pc}	@
.L179:
	.align	2
.L178:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SetCallBack, .-VCTRL_SetCallBack
	.align	2
	.global	VCTRL_StopVfmw
	.type	VCTRL_StopVfmw, %function
VCTRL_StopVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L182	@ tmp113,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L181	@,
	mov	r2, #2	@ tmp116,
	str	r2, [r3, #48]	@ tmp116, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StopVfmw.part.0	@
.L181:
	mvn	r0, #0	@,
	bx	lr	@
.L183:
	.align	2
.L182:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopVfmw, .-VCTRL_StopVfmw
	.align	2
	.global	VCTRL_StartVfmw
	.type	VCTRL_StartVfmw, %function
VCTRL_StartVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L186	@ tmp113,
	ldr	r2, [r3, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L185	@,
	str	r2, [r3, #48]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
	b	VCTRL_StartVfmw.part.1	@
.L185:
	mvn	r0, #0	@,
	bx	lr	@
.L187:
	.align	2
.L186:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StartVfmw, .-VCTRL_StartVfmw
	.align	2
	.global	VCTRL_SetStreamInterface
	.type	VCTRL_SetStreamInterface, %function
VCTRL_SetStreamInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstStreamIntf,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L191	@,
	ldr	r3, .L196	@ tmp116,
	ldr	r0, [r3, r0, asl #2]	@ D.43104, s_pstVfmwChan
	cmp	r0, #0	@ D.43104,
	beq	.L191	@,
	mov	r2, #12	@,
	add	r0, r0, #104	@, D.43104,
	bl	memcpy	@
	mov	r0, #0	@ D.43103,
	ldmfd	sp!, {r4, pc}	@
.L191:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43103,
	ldmfd	sp!, {r4, pc}	@
.L197:
	.align	2
.L196:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SetStreamInterface, .-VCTRL_SetStreamInterface
	.align	2
	.global	VCTRL_GetStreamInterface
	.type	VCTRL_GetStreamInterface, %function
VCTRL_GetStreamInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L201	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.43112, s_pstVfmwChan
	cmp	r0, #0	@ D.43112,
	addne	r0, r0, #104	@ D.43111, D.43112,
	bx	lr	@
.L202:
	.align	2
.L201:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetStreamInterface, .-VCTRL_GetStreamInterface
	.align	2
	.global	VCTRL_SetFrameInterface
	.type	VCTRL_SetFrameInterface, %function
VCTRL_SetFrameInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0	@ pstFrameIntf,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	beq	.L206	@,
	ldr	r3, .L211	@ tmp116,
	ldr	r0, [r3, r0, asl #2]	@ D.43116, s_pstVfmwChan
	cmp	r0, #0	@ D.43116,
	beq	.L206	@,
	mov	r2, #12	@,
	add	r0, r0, #128	@, D.43116,
	bl	memcpy	@
	mov	r0, #0	@ D.43115,
	ldmfd	sp!, {r4, pc}	@
.L206:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43115,
	ldmfd	sp!, {r4, pc}	@
.L212:
	.align	2
.L211:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SetFrameInterface, .-VCTRL_SetFrameInterface
	.align	2
	.global	VCTRL_GetFrameInterface
	.type	VCTRL_GetFrameInterface, %function
VCTRL_GetFrameInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L216	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.43124, s_pstVfmwChan
	cmp	r0, #0	@ D.43124,
	addne	r0, r0, #128	@ D.43123, D.43124,
	bx	lr	@
.L217:
	.align	2
.L216:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetFrameInterface, .-VCTRL_GetFrameInterface
	.align	2
	.global	VCTRL_GetStreamSize
	.type	VCTRL_GetStreamSize, %function
VCTRL_GetStreamSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L221	@,
	ldr	r3, .L227	@ tmp119,
	ldr	r0, [r3, r0, asl #2]	@ D.43129, s_pstVfmwChan
	cmp	r0, #0	@ D.43129,
	beq	.L221	@,
	ldr	r3, [r0, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L221	@,
	add	r0, r0, #74752	@, D.43129,
	add	r0, r0, #800	@,,
	ldmfd	sp!, {r4, lr}	@
	b	GetSegStreamSize	@
.L221:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
.L228:
	.align	2
.L227:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetStreamSize, .-VCTRL_GetStreamSize
	.align	2
	.global	VCTRL_SetDiscardPicParam
	.type	VCTRL_SetDiscardPicParam, %function
VCTRL_SetDiscardPicParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L232	@,
	cmp	r1, #0	@ pArgs,
	beq	.L232	@,
	ldr	r3, .L241	@ tmp120,
	ldr	r4, [r3, r0, asl #2]	@ D.43136, s_pstVfmwChan
	cmp	r4, #0	@ D.43136,
	beq	.L232	@,
	add	r0, r4, #1584	@, D.43136,
	mov	r2, #8	@,
	add	r0, r0, #12	@,,
	bl	memcpy	@
	ldr	r3, [r4, #1596]	@ _9->stSynExtraData.stDisParams.s32Mode, _9->stSynExtraData.stDisParams.s32Mode
	mov	r0, #0	@ tmp129,
	sub	r3, r3, #1	@ D.43135, _9->stSynExtraData.stDisParams.s32Mode,
	cmp	r3, #1	@ D.43135,
	strhi	r0, [r4, #1596]	@ tmp129, _9->stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r4, pc}	@
.L232:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43134,
	ldmfd	sp!, {r4, pc}	@
.L242:
	.align	2
.L241:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SetDiscardPicParam, .-VCTRL_SetDiscardPicParam
	.align	2
	.global	VCTRL_GetDispStateWithDNR
	.type	VCTRL_GetDispStateWithDNR, %function
VCTRL_GetDispStateWithDNR:
	.fnstart
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #80
	sub	sp, sp, #80	@,,
	mov	r4, r1	@ pstChanState, pstChanState
	mov	r1, sp	@,
	bl	DNR_GetState	@
	add	r1, sp, #68	@,,
	ldmia	r1, {r1, r2, r3}	@,,,
	add	r3, r3, r2	@ D.43144, DnrChanState.read_out_frame_num, DnrChanState.new_frame_num
	str	r3, [r4, #88]	@ D.43144, pstChanState_8(D)->wait_disp_frame_num
	str	r1, [r4, #96]	@ DnrChanState.total_frame_num, pstChanState_8(D)->total_disp_frame_num
	add	sp, sp, #80	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetDispStateWithDNR, .-VCTRL_GetDispStateWithDNR
	.align	2
	.global	VCTRL_GetDispState
	.type	VCTRL_GetDispState, %function
VCTRL_GetDispState:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L255	@ tmp162,
	movw	r3, #1546	@ tmp166,
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	ldr	r0, [ip, r0, asl #2]	@ D.43158, s_pstVfmwChan
	add	r5, r0, #180224	@ tmp179, D.43158,
	ldrsb	lr, [r5, r3]	@ D.43156, _32->FspInst.s32DecFsNum
	cmp	lr, #0	@ D.43156,
	ble	.L251	@,
	movw	r3, #12950	@ ivtmp.367,
	mov	r4, #0	@ s32DecodedFrameNum,
	movt	r3, 3	@ ivtmp.367,
	add	r3, r0, r3	@ ivtmp.367, D.43158, ivtmp.367
	mov	r0, r4	@ i, s32DecodedFrameNum
.L248:
	ldrsb	ip, [r3]	@ MEM[base: _39, offset: 0B], MEM[base: _39, offset: 0B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.367, ivtmp.367,
	cmp	ip, #3	@ MEM[base: _39, offset: 0B],
	addeq	r4, r4, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r0, lr	@ i, D.43156
	bne	.L248	@,
.L246:
	str	r4, [r1, #88]	@ D.43154, pstChanState_15(D)->wait_disp_frame_num
	ldrb	r3, [r5, #1546]	@ zero_extendqisi2	@ D.43155, _32->FspInst.s32DecFsNum
	cmp	r3, #0	@ D.43155,
	moveq	r3, #4	@ D.43153,
	mvnne	r0, r2	@ D.43156, RefNum
	sxtabne	r3, r0, r3	@ D.43153, D.43156, D.43155
	str	r3, [r1, #96]	@ D.43153, pstChanState_15(D)->total_disp_frame_num
	ldrb	r3, [r5, #1546]	@ zero_extendqisi2	@ D.43155, _32->FspInst.s32DecFsNum
	sxtb	r3, r3	@ D.43155, D.43155
	cmp	r3, #0	@ D.43155,
	ldmlefd	sp!, {r4, r5, pc}	@
	add	r2, r2, #1	@ D.43156, RefNum,
	cmp	r3, r2	@ D.43155, D.43156
	movle	r3, #0	@ tmp178,
	strle	r3, [r1, #96]	@ tmp178, pstChanState_15(D)->total_disp_frame_num
	ldmfd	sp!, {r4, r5, pc}	@
.L251:
	mov	r4, #0	@ D.43154,
	b	.L246	@
.L256:
	.align	2
.L255:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetDispState, .-VCTRL_GetDispState
	.align	2
	.global	VCTRL_GetImageInterface
	.type	VCTRL_GetImageInterface, %function
VCTRL_GetImageInterface:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L260	@ tmp114,
	ldr	r0, [r3, r0, asl #2]	@ D.43163, s_pstVfmwChan
	cmp	r0, #0	@ D.43163,
	addne	r0, r0, #116	@ D.43162, D.43163,
	bx	lr	@
.L261:
	.align	2
.L260:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetImageInterface, .-VCTRL_GetImageInterface
	.align	2
	.global	VCTRL_PartitionMemForStdUser
	.type	VCTRL_PartitionMemForStdUser, %function
VCTRL_PartitionMemForStdUser:
	.fnstart
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #31	@ MaxHeight,
	cmpgt	r1, #31	@, MaxWidth,
	ldr	r4, .L273	@ tmp170,
	.pad #44
	sub	sp, sp, #44	@,,
	mov	fp, r1	@ MaxWidth, MaxWidth
	mov	r10, r2	@ MaxHeight, MaxHeight
	mov	r7, r0	@ ChanID, ChanID
	ldr	r9, [sp, #80]	@ MemSize, MemSize
	ldr	r5, [r4, r0, asl #2]	@ pstChan, s_pstVfmwChan
	ble	.L267	@,
	cmp	r9, #0	@ MemSize,
	cmpne	r3, #0	@, MemAddr,
	mov	r8, r3	@ MemAddr, MemAddr
	moveq	r6, #1	@ tmp184,
	movne	r6, #0	@ tmp184,
	beq	.L267	@,
	mov	r1, #36	@,
	add	r0, sp, #4	@ tmp210,,
	bl	__memzero	@
	mov	r0, r7	@, ChanID
	mov	r3, #1	@ tmp196,
	add	r1, sp, #4	@ tmp211,,
	strb	r6, [sp, #4]	@ tmp184, FspInstCfg.s32DispLoopEnable
	strb	r6, [sp, #6]	@ tmp184, FspInstCfg.s32RprEnable
	strb	r6, [sp, #9]	@ tmp184, FspInstCfg.s32ExpectedDecFsNum
	strb	r6, [sp, #11]	@ tmp184, FspInstCfg.s32ExpectedDispFsNum
	strb	r6, [sp, #12]	@ tmp184, FspInstCfg.s32ExpectedPmvNum
	str	fp, [sp, #16]	@ MaxWidth, FspInstCfg.s32DecFsWidth
	str	r10, [sp, #20]	@ MaxHeight, FspInstCfg.s32DecFsHeight
	str	fp, [sp, #32]	@ MaxWidth, FspInstCfg.s32DispFsWidth
	str	r10, [sp, #36]	@ MaxHeight, FspInstCfg.s32DispFsHeight
	strb	r3, [sp, #8]	@ tmp196, FspInstCfg.s32UserDec
	bl	FSP_ConfigInstance	@
	subs	r6, r0, #0	@ D.43180,
	bne	.L267	@,
	mov	r2, r9	@, MemSize
	mov	r1, r8	@, MemAddr
	mov	r3, sp	@,
	mov	r0, r7	@, ChanID
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L267	@,
	mov	r0, r7	@, ChanID
	add	r1, r4, #228	@, tmp170,
	bl	FSP_GetInstInfo	@
	ldrsb	r3, [r4, #229]	@ D.43183, FspInstInfo.s32DecFsNum
	cmp	r3, #16	@ D.43183,
	movge	r3, #16	@ D.43183,
	cmp	r3, #2	@ D.43183,
	str	r3, [r5, #820]	@ D.43183, pstChan_8->s32UsrdecFrameNum
	ble	.L267	@,
	ldr	r3, [r4, #3564]	@ D.43183, FspInstInfo.s32DecFsSize
	mov	r1, #64	@,
	add	r0, r5, #752	@, pstChan,
	str	r3, [r5, #816]	@ D.43183, pstChan_8->s32UsrdecFrameSize
	bl	__memzero	@
	mov	r1, #64	@,
	add	r0, r5, #688	@, pstChan,
	bl	__memzero	@
	ldr	lr, [r5, #820]	@ D.43183, pstChan_8->s32UsrdecFrameNum
	cmp	lr, #0	@ D.43183,
	ble	.L264	@,
	add	r3, r4, #228	@ ivtmp.378, tmp170,
	add	r1, r5, #748	@ ivtmp.380, pstChan,
	mov	r2, r6	@ i, D.43180
.L269:
	ldr	ip, [r3, #20]	@ D.43183, MEM[base: _64, offset: 20B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, lr	@ i, D.43183
	add	r3, r3, #52	@ ivtmp.378, ivtmp.378,
	str	ip, [r1, #4]!	@ D.43183, MEM[base: _65, offset: 0B]
	bne	.L269	@,
.L264:
	mov	r0, r6	@, D.43180
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L267:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ D.43180,
	mov	r0, r6	@, D.43180
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L274:
	.align	2
.L273:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_PartitionMemForStdUser, .-VCTRL_PartitionMemForStdUser
	.align	2
	.global	VCTRL_UnInstallChan
	.type	VCTRL_UnInstallChan, %function
VCTRL_UnInstallChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	DNR_DisableChan	@
	mov	r0, r4	@, ChanID
	bl	FSP_DisableInstance	@
	mov	r0, r4	@, ChanID
	bl	CloseUsdPool_WithMem	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_UnInstallChan, .-VCTRL_UnInstallChan
	.align	2
	.global	VCTRL_FreeChanResource
	.type	VCTRL_FreeChanResource, %function
VCTRL_FreeChanResource:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ pstChan, pstChan
	ldr	r3, [r1, #64]	@ pstChan_7(D)->s32SelfAllocChanMem_vdh, pstChan_7(D)->s32SelfAllocChanMem_vdh
	mov	r5, r0	@ ChanID, ChanID
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_vdh,
	beq	.L307	@,
.L278:
	ldr	r3, [r4, #28]	@ pstChan_7(D)->stChanMem_vdh.Length, pstChan_7(D)->stChanMem_vdh.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_vdh.Length,
	bne	.L308	@,
.L279:
	ldr	r2, [r4, #44]	@ D.43190, pstChan_7(D)->stChanMem_scd.Length
	cmp	r2, #0	@ D.43190,
	bne	.L309	@,
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L310	@,
.L282:
	ldr	r2, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r1, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #72]	@ pstChan_7(D)->s32SelfAllocChanMem_ctx, pstChan_7(D)->s32SelfAllocChanMem_ctx
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_ctx,
	beq	.L311	@,
.L285:
	ldr	r0, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	KernelMunmap	@
.L286:
	ldr	r2, [r4, #60]	@, pstChan_7(D)->stChanMem_ctx.Length
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	ldr	r0, [r4, #56]	@, pstChan_7(D)->stChanMem_ctx.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #76]	@ pstChan_7(D)->s32SelfAllocChanMem_pmv, pstChan_7(D)->s32SelfAllocChanMem_pmv
	ldr	r0, [r4, #100]	@ D.43195, pstChan_7(D)->stChanMem_pmv.PhyAddr
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_pmv,
	beq	.L312	@,
.L288:
	ldr	r2, [r4, #104]	@, pstChan_7(D)->stChanMem_pmv.Length
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_DelMemRecord	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L308:
	ldrsb	r3, [r4, #16]	@ pstChan_7(D)->stChanMem_vdh.IsCached, pstChan_7(D)->stChanMem_vdh.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_vdh.IsCached,
	bne	.L279	@,
	ldr	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #28]	@, pstChan_7(D)->stChanMem_vdh.Length
	ldr	r0, [r4, #24]	@, pstChan_7(D)->stChanMem_vdh.PhyAddr
	bl	KernelMmap	@
	mov	r3, #0	@ tmp162,
	strb	r3, [r4, #16]	@ tmp162, pstChan_7(D)->stChanMem_vdh.IsCached
	str	r0, [r4, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	b	.L279	@
.L311:
	ldr	r0, [r4, #56]	@ D.43190, pstChan_7(D)->stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.43190,
	beq	.L285	@,
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L286	@
.L312:
	cmp	r0, #0	@ D.43195,
	beq	.L288	@,
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #100]	@ D.43195, pstChan_7(D)->stChanMem_pmv.PhyAddr
	b	.L288	@
.L309:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r3, [r4, #68]	@ pstChan_7(D)->s32SelfAllocChanMem_scd, pstChan_7(D)->s32SelfAllocChanMem_scd
	cmp	r3, #1	@ pstChan_7(D)->s32SelfAllocChanMem_scd,
	beq	.L313	@,
.L281:
	ldr	r3, [r4, #44]	@ pstChan_7(D)->stChanMem_scd.Length, pstChan_7(D)->stChanMem_scd.Length
	cmp	r3, #0	@ pstChan_7(D)->stChanMem_scd.Length,
	beq	.L282	@,
	ldrsb	r3, [r4, #32]	@ pstChan_7(D)->stChanMem_scd.IsCached, pstChan_7(D)->stChanMem_scd.IsCached
	cmp	r3, #1	@ pstChan_7(D)->stChanMem_scd.IsCached,
	bne	.L282	@,
	ldr	r0, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	KernelMunmap	@
	ldr	r1, [r4, #44]	@, pstChan_7(D)->stChanMem_scd.Length
	ldr	r0, [r4, #40]	@, pstChan_7(D)->stChanMem_scd.PhyAddr
	bl	KernelMmap	@
	ldr	r3, .L314	@ tmp173,
	mov	r2, #0	@ tmp176,
	strb	r2, [r4, #32]	@ tmp176, pstChan_7(D)->stChanMem_scd.IsCached
	add	r5, r3, r5, lsl #2	@ tmp174, tmp173, ChanID,
	str	r0, [r4, #36]	@ D.43194, pstChan_7(D)->stChanMem_scd.VirAddr
	str	r0, [r5, #168]	@ D.43194, g_scd_vir
	b	.L282	@
.L307:
	ldr	r0, [r1, #24]	@ D.43190, pstChan_7(D)->stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.43190,
	beq	.L278	@,
	ldr	r1, [r1, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L279	@
.L313:
	ldr	r0, [r4, #40]	@ D.43190, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.43190,
	beq	.L281	@,
.L289:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L282	@
.L310:
	ldr	r0, [r4, #40]	@ D.43190, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.43190,
	beq	.L282	@,
	b	.L289	@
.L315:
	.align	2
.L314:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_FreeChanResource, .-VCTRL_FreeChanResource
	.align	2
	.global	VCTRL_GetChanCtxSize
	.type	VCTRL_GetChanCtxSize, %function
VCTRL_GetChanCtxSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #14840	@ tmp112,
	movt	r3, 8	@ tmp112,
	str	r3, [r1]	@ tmp112, *s32ChanCtxSize_2(D)
	bx	lr	@
	.fnend
	.size	VCTRL_GetChanCtxSize, .-VCTRL_GetChanCtxSize
	.align	2
	.global	VCTRL_StartChan
	.type	VCTRL_StartChan, %function
VCTRL_StartChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L320	@,
	ldr	r5, .L337	@ tmp155,
	ldr	r3, [r5, r0, asl #2]	@ D.43215, s_pstVfmwChan
	cmp	r3, #0	@ D.43215,
	beq	.L320	@,
	ldr	r6, [r3, #4]	@ _12->s32IsOpen, _12->s32IsOpen
	cmp	r6, #1	@ _12->s32IsOpen,
	bne	.L320	@,
	ldr	r3, [r3, #880]	@ _12->eVidStd, _12->eVidStd
	cmp	r3, #19	@ _12->eVidStd,
	beq	.L320	@,
	bl	SM_Start	@
	ldr	r3, [r5, r4, asl #2]	@ D.43215, s_pstVfmwChan
	mov	r1, #0	@ tmp140,
	str	r6, [r3, #8]	@ _12->s32IsOpen, _19->s32IsRun
	ldr	r2, [r5, r4, asl #2]	@ D.43215, s_pstVfmwChan
	ldr	r3, [r2, #12]	@ _21->s32Priority, _21->s32Priority
	str	r1, [r2, #16]	@ tmp140, _21->s32StopSyntax
	cmp	r3, r1	@ _21->s32Priority,
	bne	.L321	@,
	ldr	r1, .L337+4	@ ivtmp.408,
	add	r3, r5, #3568	@ ivtmp.407, tmp155,
	add	lr, r5, #3584	@ D.43214, tmp155,
	mov	r0, r5	@ ivtmp.403, tmp155
	str	r6, [r2, #12]	@ _12->s32IsOpen, _21->s32Priority
.L324:
	ldr	r2, [r0], #4	@ D.43215, MEM[base: _47, offset: 0B]
	add	r3, r3, #4	@ ivtmp.407, ivtmp.407,
	add	r1, r1, #4	@ ivtmp.408, ivtmp.408,
	cmp	r2, #0	@ D.43215,
	streq	r2, [r3, #-4]	@ D.43215, MEM[base: _51, offset: 0B]
	ldrne	ip, [r2, #12]	@ D.43216, _25->s32Priority
	strne	ip, [r3, #-4]	@ D.43216, MEM[base: _49, offset: 0B]
	ldrne	r2, [r2, #12]	@ D.43216, _25->s32Priority
	cmp	r3, lr	@ ivtmp.407, D.43214
	str	r2, [r1, #-4]	@ D.43215,
	bne	.L324	@,
	ldr	r0, .L337+8	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
.L321:
	ldr	r3, [r5, r4, asl #2]	@ tmp152, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _35->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _35->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _35->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L325	@,
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
.L325:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.43213,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L320:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43213,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L338:
	.align	2
.L337:
	.word	.LANCHOR0
	.word	g_ChanCtx
	.word	.LANCHOR0+3568
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L342	@,
	ldr	r6, .L348	@ tmp118,
	ldr	r3, [r6, r0, asl #2]	@ D.43223, s_pstVfmwChan
	cmp	r3, #0	@ D.43223,
	beq	.L342	@,
	ldr	r2, [r3, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r2, #1	@ _7->s32IsOpen,
	bne	.L342	@,
	str	r2, [r3, #16]	@ _7->s32IsOpen, _7->s32StopSyntax
	mov	r2, #0	@ tmp121,
	str	r2, [r3, #8]	@ tmp121, _7->s32IsRun
	bl	SM_Stop	@
	subs	r5, r0, #0	@ s32Ret,
	bne	.L343	@,
	mov	r1, r5	@, s32Ret
	mov	r0, r4	@, ChanID
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, ChanID
	bl	DNR_StopChan	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r6, r4, asl #2]	@ tmp123, s_pstVfmwChan
	mov	r0, r5	@ D.43221, s32Ret
	str	r5, [r3, #16]	@ s32Ret, _18->s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L342:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43221,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L343:
	mvn	r0, #0	@ D.43221,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L349:
	.align	2
.L348:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_StopChan, .-VCTRL_StopChan
	.align	2
	.global	VCTRL_GetChanCfg
	.type	VCTRL_GetChanCfg, %function
VCTRL_GetChanCfg:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L353	@,
	cmp	r1, #0	@ pstCfg,
	mov	r3, r1	@ pstCfg, pstCfg
	beq	.L353	@,
	ldr	r2, .L361	@ tmp117,
	ldr	r1, [r2, r0, asl #2]	@ D.43229, s_pstVfmwChan
	cmp	r1, #0	@ D.43229,
	beq	.L353	@,
	add	r1, r1, #32	@, D.43229,
	mov	r0, r3	@, pstCfg
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, #0	@ D.43227,
	ldmfd	sp!, {r4, pc}	@
.L353:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43227,
	ldmfd	sp!, {r4, pc}	@
.L362:
	.align	2
.L361:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanCfg, .-VCTRL_GetChanCfg
	.align	2
	.global	RefreshDecCore
	.type	RefreshDecCore, %function
RefreshDecCore:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r4, .L385	@ tmp171,
	ldr	ip, [r4, r0, asl #2]	@ D.43237, s_pstVfmwChan
	ldr	r3, [ip, #880]	@ _8->eVidStd, _8->eVidStd
	ldr	r2, [ip, #1624]	@ eOldDecCore, _8->eDecCore
	sub	r3, r3, #4	@ tmp137, _8->eVidStd,
	cmp	r3, #10	@ tmp137,
	ldrls	pc, [pc, r3, asl #2]	@ tmp137
	b	.L364	@
.L366:
	.word	.L365
	.word	.L364
	.word	.L364
	.word	.L364
	.word	.L364
	.word	.L364
	.word	.L367
	.word	.L368
	.word	.L369
	.word	.L364
	.word	.L370
.L369:
	ldr	r3, [r4, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	moveq	r3, #5	@ tmp153,
	streq	r3, [ip, #1624]	@ tmp153, _8->eDecCore
	beq	.L371	@,
.L364:
	mov	r3, #0	@ tmp155,
	str	r3, [ip, #1624]	@ tmp155, _8->eDecCore
.L371:
	cmp	r2, r3	@ eOldDecCore, D.43246
	beq	.L378	@,
	sub	r2, r2, #1	@ D.43240, eOldDecCore,
	mov	r6, r1	@ pstSoftDecMem, pstSoftDecMem
	cmp	r2, #4	@ D.43240,
	mov	r5, r0	@ ChanID, ChanID
	bhi	.L377	@,
	ldr	r3, [r4, #188]	@ D.43241, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.43241,
	beq	.L377	@,
	add	r0, ip, #217088	@, D.43237,
	add	r0, r0, #432	@,,
	blx	r3	@ D.43241
.L377:
	ldr	r2, [r4, r5, asl #2]	@ D.43237, s_pstVfmwChan
	ldr	r1, .L385	@ tmp160,
	ldr	r3, [r2, #1624]	@ _31->eDecCore, _31->eDecCore
	sub	r3, r3, #1	@ D.43240, _31->eDecCore,
	cmp	r3, #4	@ D.43240,
	bhi	.L378	@,
	ldr	r3, [r1, #184]	@ D.43245, g_SdecFunc.pfun_iMediaSoftDEC_Create
	add	r0, r2, #217088	@ tmp164, D.43237,
	ldr	r1, [r2, #24]	@ _31->eChanCapLevel, _31->eChanCapLevel
	cmp	r3, #0	@ D.43245,
	str	r1, [r0, #444]	@ _31->eChanCapLevel, _31->stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	beq	.L380	@,
	ldr	r2, [r2, #880]	@, _31->eVidStd
	mov	r1, r6	@, pstSoftDecMem
	add	r0, r0, #432	@, tmp164,
	blx	r3	@ D.43245
	cmp	r0, #0	@,
	bne	.L380	@,
.L378:
	mov	r0, #0	@ D.43236,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L370:
	mov	r3, #2	@ tmp139,
	str	r3, [ip, #1624]	@ tmp139, _8->eDecCore
	b	.L371	@
.L365:
	mov	r3, #1	@ tmp138,
	str	r3, [ip, #1624]	@ tmp138, _8->eDecCore
	b	.L371	@
.L367:
	ldr	r3, [r4, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	moveq	r3, #3	@ tmp143,
	streq	r3, [ip, #1624]	@ tmp143, _8->eDecCore
	beq	.L371	@,
	b	.L364	@
.L368:
	ldr	r3, [r4, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r3, #1	@ g_VdmCharacter,
	moveq	r3, #4	@ tmp148,
	streq	r3, [ip, #1624]	@ tmp148, _8->eDecCore
	beq	.L371	@,
	b	.L364	@
.L380:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43236,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L386:
	.align	2
.L385:
	.word	.LANCHOR0
	.fnend
	.size	RefreshDecCore, .-RefreshDecCore
	.align	2
	.global	VCTRL_CheckCommonParameter
	.type	VCTRL_CheckCommonParameter, %function
VCTRL_CheckCommonParameter:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L401	@ tmp143,
	ldr	r2, [r1]	@ pstCfg_6(D)->eVidStd, pstCfg_6(D)->eVidStd
	ldr	r3, [r3, r0, asl #2]	@ D.43250, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ _4->stChanCfg.eVidStd, _4->stChanCfg.eVidStd
	cmp	r0, r2	@ _4->stChanCfg.eVidStd, pstCfg_6(D)->eVidStd
	bne	.L400	@,
	ldr	r0, [r3, #48]	@ _4->stChanCfg.s32ChanErrThr, _4->stChanCfg.s32ChanErrThr
	ldr	r2, [r1, #16]	@ pstCfg_6(D)->s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	bne	.L400	@,
	ldr	r0, [r3, #44]	@ _4->stChanCfg.s32ChanPriority, _4->stChanCfg.s32ChanPriority
	ldr	r2, [r1, #12]	@ pstCfg_6(D)->s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	cmp	r0, r2	@ _4->stChanCfg.s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	bne	.L400	@,
	ldr	r0, [r3, #52]	@ _4->stChanCfg.s32ChanStrmOFThr, _4->stChanCfg.s32ChanStrmOFThr
	ldr	r2, [r1, #20]	@ pstCfg_6(D)->s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	bne	.L400	@,
	ldr	r0, [r3, #56]	@ _4->stChanCfg.s32DecMode, _4->stChanCfg.s32DecMode
	ldr	r2, [r1, #24]	@ pstCfg_6(D)->s32DecMode, pstCfg_6(D)->s32DecMode
	cmp	r0, r2	@ _4->stChanCfg.s32DecMode, pstCfg_6(D)->s32DecMode
	bne	.L400	@,
	ldr	r0, [r3, #60]	@ _4->stChanCfg.s32DecOrderOutput, _4->stChanCfg.s32DecOrderOutput
	ldr	r2, [r1, #28]	@ pstCfg_6(D)->s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	cmp	r0, r2	@ _4->stChanCfg.s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	bne	.L400	@,
	ldr	r0, [r3, #68]	@ _4->stChanCfg.s32DnrDispOutEnable, _4->stChanCfg.s32DnrDispOutEnable
	ldr	r2, [r1, #36]	@ pstCfg_6(D)->s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	bne	.L400	@,
	ldr	r0, [r3, #64]	@ _4->stChanCfg.s32DnrTfEnable, _4->stChanCfg.s32DnrTfEnable
	ldr	r2, [r1, #32]	@ pstCfg_6(D)->s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	bne	.L400	@,
	ldr	r0, [r3, #76]	@ _4->stChanCfg.s32VcmpEn, _4->stChanCfg.s32VcmpEn
	ldr	r2, [r1, #44]	@ pstCfg_6(D)->s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	bne	.L400	@,
	ldr	r0, [r3, #88]	@ _4->stChanCfg.s32VcmpWmEndLine, _4->stChanCfg.s32VcmpWmEndLine
	ldr	r2, [r1, #56]	@ pstCfg_6(D)->s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	bne	.L400	@,
	ldr	r0, [r3, #84]	@ _4->stChanCfg.s32VcmpWmStartLine, _4->stChanCfg.s32VcmpWmStartLine
	ldr	r2, [r1, #52]	@ pstCfg_6(D)->s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	bne	.L400	@,
	ldr	r0, [r3, #80]	@ _4->stChanCfg.s32WmEn, _4->stChanCfg.s32WmEn
	ldr	r2, [r1, #48]	@ pstCfg_6(D)->s32WmEn, pstCfg_6(D)->s32WmEn
	cmp	r0, r2	@ _4->stChanCfg.s32WmEn, pstCfg_6(D)->s32WmEn
	bne	.L400	@,
	ldr	r3, [r3, #92]	@ _4->stChanCfg.s32SupportAllP, _4->stChanCfg.s32SupportAllP
	ldr	r0, [r1, #60]	@ pstCfg_6(D)->s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	subs	r0, r3, r0	@ D.43249, _4->stChanCfg.s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	mvnne	r0, #0	@ D.43249,
	bx	lr	@
.L400:
	mvn	r0, #0	@ D.43249,
	bx	lr	@
.L402:
	.align	2
.L401:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_CheckCommonParameter, .-VCTRL_CheckCommonParameter
	.align	2
	.global	VCTRL_CmpConfigParameter
	.type	VCTRL_CmpConfigParameter, %function
VCTRL_CmpConfigParameter:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L411	@ tmp129,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2, r0, asl #2]	@ D.43257, s_pstVfmwChan
	ldr	r2, [r5, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #19	@ _4->eVidStd,
	beq	.L408	@,
	mov	r4, r1	@ pstCfg, pstCfg
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@ D.43256
	bne	.L408	@,
	ldr	r3, [r5, #32]	@ D.43259, _4->stChanCfg.eVidStd
	cmp	r3, #1	@ D.43259,
	beq	.L410	@,
	sub	r3, r3, #10	@ D.43260, D.43259,
	cmp	r3, #2	@ D.43260,
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #36]	@ _4->stChanCfg.StdExt.Vp6Ext.bReversed, _4->stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r4, #4]	@ pstCfg_6(D)->StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	subs	r0, r3, r0	@ D.43256, _4->stChanCfg.StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	mvnne	r0, #0	@ D.43256,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L410:
	ldr	r2, [r5, #36]	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r3, [r4, #4]	@ pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, r3	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	bne	.L408	@,
	ldr	r3, [r5, #40]	@ _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r0, [r4, #8]	@ pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	subs	r0, r3, r0	@ D.43256, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	mvnne	r0, #0	@ D.43256,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L408:
	mvn	r0, #0	@ D.43256,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L412:
	.align	2
.L411:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_CmpConfigParameter, .-VCTRL_CmpConfigParameter
	.align	2
	.global	VCTRL_CheckChanWH
	.type	VCTRL_CheckChanWH, %function
VCTRL_CheckChanWH:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L427	@ tmp135,
	ldr	r2, .L427+4	@ tmp134,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3]	@ D.43274, g_chipID
	ldr	r2, [r2, r0, asl #2]	@ D.43271, s_pstVfmwChan
	cmp	r3, #16	@ D.43274,
	ldr	ip, [r2, #1456]	@ ChanMaxWidth, _6->stSynExtraData.stChanOption.s32MaxWidth
	ldr	lr, [r2, #1460]	@ ChanMaxHeight, _6->stSynExtraData.stChanOption.s32MaxHeight
	bhi	.L414	@,
	mov	r2, #1	@ tmp136,
	movw	r0, #36832	@ tmp137,
	mov	r3, r2, asl r3	@ D.43273, tmp136,
	bfi	r0, r2, #16, #16	@ tmp137, tmp136,,
	ands	r0, r3, r0	@ D.43273, D.43273, tmp137
	bne	.L415	@,
	tst	r3, #31	@ D.43273,
	beq	.L414	@,
	ldr	r3, .L427+8	@ tmp140,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	ip, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L416	@,
	ldr	r3, .L427+12	@ tmp142,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	lr, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ldmlefd	sp!, {r4, pc}	@
.L416:
	ldr	r3, [r1]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	cmp	r3, #18	@ pstCfg_12(D)->eVidStd,
	bne	.L414	@,
.L422:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L415:
	ldr	r3, .L427+8	@ tmp145,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	ip, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L418	@,
	ldr	r3, .L427+12	@ tmp147,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	lr, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L422	@,
.L418:
	ldr	r0, [r1]	@ D.43272, pstCfg_12(D)->eVidStd
	cmp	r0, #18	@ D.43272,
	cmpne	r0, #0	@, D.43272,
	bic	r0, r0, #2	@ D.43272, D.43272,
	movne	r3, #1	@ tmp153,
	moveq	r3, #0	@ tmp153,
	cmp	r0, #13	@ D.43272,
	moveq	r0, #0	@, tmp160
	andne	r0, r3, #1	@,, tmp160, tmp153
	cmp	r0, #0	@ tmp160,
	bne	.L414	@,
	ldmfd	sp!, {r4, pc}	@
.L414:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L428:
	.align	2
.L427:
	.word	g_chipID
	.word	.LANCHOR0
	.word	g_ChipMaxWidth
	.word	g_ChipMaxHeight
	.fnend
	.size	VCTRL_CheckChanWH, .-VCTRL_CheckChanWH
	.align	2
	.global	VCTRL_SeekPts
	.type	VCTRL_SeekPts, %function
VCTRL_SeekPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L435	@ tmp122,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ D.43278, s_pstVfmwChan
	cmp	r3, #0	@ D.43278,
	beq	.L434	@,
	ldr	r3, [r3, #880]	@ D.43279, _5->eVidStd
	cmp	r3, #4	@ D.43279,
	cmpne	r3, #14	@, D.43279,
	beq	.L432	@,
	bl	SM_SeekPts	@
	adds	r0, r0, #0	@ D.43280,,
	movne	r0, #1	@ D.43280,
	rsb	r0, r0, #0	@ D.43277, D.43280
	ldmfd	sp!, {r4, pc}	@
.L432:
	mvn	r0, #0	@ D.43277,
	ldmfd	sp!, {r4, pc}	@
.L434:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43277,
	ldmfd	sp!, {r4, pc}	@
.L436:
	.align	2
.L435:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SeekPts, .-VCTRL_SeekPts
	.align	2
	.global	VCTRL_LoadDspCode
	.type	VCTRL_LoadDspCode, %function
VCTRL_LoadDspCode:
	.fnstart
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #72
	sub	sp, sp, #72	@,,
	mov	r5, r0	@ ChanID, ChanID
	mov	r1, #72	@,
	mov	r0, sp	@,
	bl	__memzero	@
	mov	r0, r5	@, ChanID
	mov	r1, sp	@,
	bl	VCTRL_GetChanCfg	@
	subs	r2, r0, #0	@ ret,
	bne	.L444	@,
	ldr	r0, [sp]	@ D.43285, stCfgInfo.eVidStd
	ldr	r6, .L456	@ tmp168,
	cmp	r0, #0	@ D.43285,
	beq	.L453	@,
	ldr	r3, [r6, #3588]	@ D.43287, g_DSPState
	cmp	r3, #0	@ D.43287,
	bne	.L445	@,
	mov	r2, r3	@ D.43286, D.43287
.L448:
	ldr	r3, [r6, #3592]	@ D.43287, g_DSPState
	ldr	r1, .L456	@ tmp133,
	cmp	r3, #0	@ D.43287,
	bne	.L441	@,
	ldr	r3, [r1, #3596]	@ D.43287, g_DSPState
	cmp	r3, #0	@ D.43287,
	bne	.L441	@,
	ldr	r3, [r1, #3600]	@ D.43287, g_DSPState
	cmp	r3, #0	@ D.43287,
	subeq	r1, r0, #6	@ D.43286, D.43285,
	clzeq	r1, r1	@ D.43286, D.43286
	moveq	r1, r1, lsr #5	@ D.43286, D.43286,
	bne	.L441	@,
.L446:
	clz	r3, r3	@ D.43286, D.43287
	mov	r3, r3, lsr #5	@ D.43286, D.43286,
	ands	r4, r3, r2	@ tmp154, D.43286, D.43286
	bne	.L454	@,
	ands	r3, r3, r1	@ tmp161, D.43286, D.43286
	moveq	r0, r3	@ D.43284, tmp161
	bne	.L455	@,
.L451:
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L453:
	ldr	r2, [sp, #40]	@ stCfgInfo.s32LowdlyEnable, stCfgInfo.s32LowdlyEnable
	ldr	r3, [r6, #3588]	@ D.43287, g_DSPState
	sub	r2, r2, #1	@ D.43286, stCfgInfo.s32LowdlyEnable,
	clz	r2, r2	@ D.43286, D.43286
	cmp	r3, #0	@ D.43287,
	mov	r2, r2, lsr #5	@ D.43286, D.43286,
	beq	.L448	@,
.L441:
	cmp	r3, #2	@ D.43287,
	movne	r1, #0	@, tmp140
	andeq	r1, r2, #1	@,, tmp140, D.43286
	cmp	r1, #0	@ tmp140,
	bne	.L444	@,
.L445:
	sub	r1, r0, #6	@ D.43286, D.43285,
	cmp	r3, #1	@ D.43287,
	cmpeq	r0, #6	@, D.43285,
	clz	r1, r1	@ D.43286, D.43286
	mov	r1, r1, lsr #5	@ D.43286, D.43286,
	bne	.L446	@,
.L444:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43284,
	b	.L451	@
.L454:
	bl	WriteHexFile	@
	add	r5, r6, r5, lsl #2	@ tmp156, tmp168, ChanID,
	mov	r3, #1	@ tmp158,
	mov	r0, #0	@ D.43284,
	str	r3, [r5, #3588]	@ tmp158, g_DSPState
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L455:
	add	r5, r6, r5, lsl #2	@ tmp163, tmp168, ChanID,
	bl	WriteHexFile	@
	mov	r3, #2	@ tmp165,
	mov	r0, r4	@ D.43284, tmp154
	str	r3, [r5, #3588]	@ tmp165, g_DSPState
	b	.L451	@
.L457:
	.align	2
.L456:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_LoadDspCode, .-VCTRL_LoadDspCode
	.align	2
	.global	VCTRL_ReleaseStream
	.type	VCTRL_ReleaseStream, %function
VCTRL_ReleaseStream:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L463	@ tmp117,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	cmp	r3, #0	@ tmp118,
	beq	.L462	@,
	bl	SM_Reset	@
	adds	r0, r0, #0	@ D.43291,,
	movne	r0, #1	@ D.43291,
	rsb	r0, r0, #0	@ D.43290, D.43291
	ldmfd	sp!, {r4, pc}	@
.L462:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43290,
	ldmfd	sp!, {r4, pc}	@
.L464:
	.align	2
.L463:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ReleaseStream, .-VCTRL_ReleaseStream
	.align	2
	.global	VCTRL_GetChanImage
	.type	VCTRL_GetChanImage, %function
VCTRL_GetChanImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r6, r1	@ pImage, pImage
	bl	vfmw_dprint_nothing	@
	cmp	r4, #3	@ ChanID,
	bhi	.L468	@,
	ldr	r5, .L475	@ tmp125,
	ldr	r3, [r5, r4, asl #2]	@ D.43298, s_pstVfmwChan
	cmp	r3, #0	@ D.43298,
	beq	.L468	@,
	ldr	r3, [r3, #4]	@ _9->s32IsOpen, _9->s32IsOpen
	cmp	r3, #1	@ _9->s32IsOpen,
	bne	.L468	@,
	ldr	r0, .L475+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ D.43298, s_pstVfmwChan
	cmp	r0, #0	@ D.43298,
	beq	.L470	@,
	ldr	r3, [r0, #4]	@ _14->s32IsOpen, _14->s32IsOpen
	cmp	r3, #1	@ _14->s32IsOpen,
	bne	.L470	@,
	add	r0, r0, #217088	@, D.43298,
	mov	r1, r6	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReceiveImage	@
	subs	r7, r0, #1	@ D.43296,,
	ldr	r0, .L475+4	@,
	mvnne	r7, #0	@ D.43296,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r5, r4, asl #2]	@ tmp137, s_pstVfmwChan
	add	r3, r3, #233472	@ tmp139, tmp137,
	ldrb	r3, [r3, #132]	@ zero_extendqisi2	@ D.43301, _25->stSynCtx.unSyntax.stAvsCtx.SyntaxNew.bAvsPlus
	strb	r3, [r6, #336]	@ D.43301, pImage_21(D)->optm_inf.bAvsPlus
.L467:
	mov	r0, r7	@, D.43296
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L468:
	mvn	r7, #0	@ D.43296,
	bl	vfmw_dprint_nothing	@
	mov	r0, r7	@, D.43296
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L470:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L475+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r7, #0	@ D.43296,
	b	.L467	@
.L476:
	.align	2
.L475:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.fnend
	.size	VCTRL_GetChanImage, .-VCTRL_GetChanImage
	.align	2
	.global	VCTRL_ReleaseChanImage
	.type	VCTRL_ReleaseChanImage, %function
VCTRL_ReleaseChanImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L480	@,
	ldr	r5, .L490	@ tmp123,
	ldr	r3, [r5, r0, asl #2]	@ D.43307, s_pstVfmwChan
	cmp	r3, #0	@ D.43307,
	beq	.L480	@,
	ldr	r3, [r3, #4]	@ _8->s32IsOpen, _8->s32IsOpen
	cmp	r3, #1	@ _8->s32IsOpen,
	bne	.L480	@,
	cmp	r1, #0	@ pImage,
	mov	r6, r1	@ pImage, pImage
	beq	.L480	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L490+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r5, r4, asl #2]	@ D.43307, s_pstVfmwChan
	cmp	r0, #0	@ D.43307,
	beq	.L482	@,
	ldr	r3, [r0, #4]	@ _16->s32IsOpen, _16->s32IsOpen
	cmp	r3, #1	@ _16->s32IsOpen,
	bne	.L482	@,
	add	r0, r0, #217088	@, D.43307,
	mov	r1, r6	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReleaseImage	@
	subs	r4, r0, #1	@ D.43305,,
	ldr	r0, .L490+4	@,
	mvnne	r4, #0	@ D.43305,
	bl	OSAL_SpinUnLockIRQ	@
.L479:
	mov	r0, r4	@, D.43305
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L482:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L490+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ D.43305,
	b	.L479	@
.L480:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ D.43305,
	b	.L479	@
.L491:
	.align	2
.L490:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.fnend
	.size	VCTRL_ReleaseChanImage, .-VCTRL_ReleaseChanImage
	.align	2
	.global	VCTRL_GetVidStd
	.type	VCTRL_GetVidStd, %function
VCTRL_GetVidStd:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L493	@,
	ldr	r3, .L498	@ tmp116,
	ldr	r3, [r3, r0, asl #2]	@ D.43315, s_pstVfmwChan
	cmp	r3, #0	@ D.43315,
	beq	.L493	@,
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	beq	.L497	@,
.L493:
	bl	vfmw_dprint_nothing	@
	mov	r0, #19	@ D.43313,
	ldmfd	sp!, {r4, pc}	@
.L497:
	ldr	r0, [r3, #880]	@ D.43313, _6->eVidStd
	ldmfd	sp!, {r4, pc}	@
.L499:
	.align	2
.L498:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetVidStd, .-VCTRL_GetVidStd
	.align	2
	.global	VCTRL_GetDecParam
	.type	VCTRL_GetDecParam, %function
VCTRL_GetDecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	bhi	.L514	@,
	ldr	r3, .L524	@ tmp120,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r3, r0, asl #2]	@ D.43324, s_pstVfmwChan
	cmp	r5, #0	@ D.43324,
	moveq	r3, r5	@ D.43321, D.43324
	beq	.L501	@,
	ldr	r3, [r5, #4]	@ _23->s32IsOpen, _23->s32IsOpen
	cmp	r3, #1	@ _23->s32IsOpen,
	beq	.L523	@,
.L519:
	mov	r3, #0	@ D.43321,
.L501:
	mov	r0, r3	@, D.43321
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L514:
	mov	r3, #0	@ D.43321,
	mov	r0, r3	@, D.43321
	bx	lr	@
.L523:
	ldr	r3, [r5, #8]	@ _23->s32IsRun, _23->s32IsRun
	cmp	r3, #1	@ _23->s32IsRun,
	bne	.L519	@,
	ldr	r3, [r5, #880]	@ _23->eVidStd, _23->eVidStd
	cmp	r3, #13	@ _23->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _23->eVidStd
	b	.L519	@
.L504:
	.word	.L503
	.word	.L512
	.word	.L506
	.word	.L512
	.word	.L519
	.word	.L512
	.word	.L512
	.word	.L519
	.word	.L512
	.word	.L512
	.word	.L512
	.word	.L512
	.word	.L512
	.word	.L512
.L512:
	add	r3, r5, #217088	@ tmp143, D.43324,
	ldr	r4, [r3, #436]	@ pDecParam,
.L502:
	cmp	r4, #0	@ pDecParam,
	beq	.L519	@,
	bl	OSAL_GetTimeInMs	@
	mov	r3, r4	@ D.43321, pDecParam
	str	r0, [r5, #28]	@, _23->u32timeLastDecParamReady
	mov	r0, r3	@, D.43321
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L503:
	add	r3, r5, #217088	@ tmp125, D.43324,
	ldr	r4, [r3, #792]	@ pDecParam, _23->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	b	.L502	@
.L506:
	add	r3, r5, #217088	@ tmp129, D.43324,
	ldr	r4, [r3, #1468]	@ pDecParam, _23->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	b	.L502	@
.L525:
	.align	2
.L524:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetDecParam, .-VCTRL_GetDecParam
	.align	2
	.global	VCTRL_ChanDecparamInValidFlag
	.type	VCTRL_ChanDecparamInValidFlag, %function
VCTRL_ChanDecparamInValidFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ ChanId, ChanId
	bhi	.L527	@,
	ldr	r6, .L538	@ tmp125,
	ldr	r3, [r6, r0, asl #2]	@ D.43330, s_pstVfmwChan
	cmp	r3, #0	@ D.43330,
	beq	.L527	@,
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L527	@,
	ldr	r7, [r3, #8]	@ D.43331, _6->s32IsRun
	cmp	r7, #1	@ D.43331,
	beq	.L535	@,
.L527:
	bl	vfmw_dprint_nothing	@
	mov	r5, #0	@ D.43328,
.L529:
	mov	r0, r5	@, D.43328
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L535:
	bl	VCTRL_GetDecParam	@
	subs	r8, r0, #0	@ pDecParam,
	beq	.L536	@,
	ldr	r2, [r6, r4, asl #2]	@ D.43330, s_pstVfmwChan
	mov	r3, #0	@ tmp130,
	mov	r5, r3	@ D.43328, tmp130
	str	r3, [r2, #680]	@ tmp130, _17->s32CountNoDecparamFlag
	str	r3, [r2, #684]	@ tmp130, _17->u32NoDecparamStartTime
	b	.L529	@
.L536:
	ldr	r9, [r6, r4, asl #2]	@ D.43330, s_pstVfmwChan
	ldr	r5, [r9, #680]	@ D.43328, _11->s32CountNoDecparamFlag
	cmp	r5, #0	@ D.43328,
	beq	.L537	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r6, r4, asl #2]	@ D.43330, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.43332, _24->u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.43332
	bls	.L532	@,
	rsb	r0, r2, r0	@ D.43332, D.43332, tmp
	cmp	r0, #40	@ D.43332,
	movls	r5, r8	@ D.43328, pDecParam
	bls	.L529	@,
.L532:
	str	r8, [r3, #680]	@ pDecParam, _24->s32CountNoDecparamFlag
	mov	r5, r7	@ D.43328, D.43331
	str	r8, [r3, #684]	@ pDecParam, _24->u32NoDecparamStartTime
	b	.L529	@
.L537:
	str	r7, [r9, #680]	@ D.43331, _11->s32CountNoDecparamFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r9, #684]	@, _11->u32NoDecparamStartTime
	b	.L529	@
.L539:
	.align	2
.L538:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ChanDecparamInValidFlag, .-VCTRL_ChanDecparamInValidFlag
	.align	2
	.global	VCTRL_GetChanMemInfo
	.type	VCTRL_GetChanMemInfo, %function
VCTRL_GetChanMemInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L543	@,
	ldr	r3, .L550	@ tmp126,
	ldr	r3, [r3, r0, asl #2]	@ D.43337, s_pstVfmwChan
	cmp	r3, #0	@ D.43337,
	beq	.L543	@,
	cmn	r3, #152	@ D.43337,
	cmpne	r1, #0	@, pstMemRec,
	beq	.L545	@,
	ldr	r2, [r3, #148]	@ _7->s32OneChanMem, _7->s32OneChanMem
	cmp	r2, #1	@ _7->s32OneChanMem,
	bne	.L545	@,
	ldr	r2, [r3, #160]	@ D.43339, MEM[(struct MEM_RECORD_S *)_7 + 152B].PhyAddr
	str	r2, [r1, #8]	@ D.43339, pstMemRec_11(D)->PhyAddr
	ldr	r2, [r3, #156]	@ D.43340, MEM[(struct MEM_RECORD_S *)_7 + 152B].VirAddr
	clz	r0, r2	@ D.43338, D.43340
	str	r2, [r1, #4]	@ D.43340, pstMemRec_11(D)->VirAddr
	ldr	r3, [r3, #164]	@ D.43339, MEM[(struct MEM_RECORD_S *)_7 + 152B].Length
	mov	r0, r0, lsr #5	@ D.43338, D.43338,
	rsb	r0, r0, #0	@ D.43335, D.43338
	str	r3, [r1, #12]	@ D.43339, pstMemRec_11(D)->Length
	ldmfd	sp!, {r4, pc}	@
.L545:
	mvn	r0, #0	@ D.43335,
	ldmfd	sp!, {r4, pc}	@
.L543:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43335,
	ldmfd	sp!, {r4, pc}	@
.L551:
	.align	2
.L550:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanMemInfo, .-VCTRL_GetChanMemInfo
	.align	2
	.global	VCTRL_ClearDecparam
	.type	VCTRL_ClearDecparam, %function
VCTRL_ClearDecparam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L565	@ tmp113,
	ldr	r3, [r3, r0, asl #2]	@ D.43345, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #13	@ _4->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _4->eVidStd
	b	.L552	@
.L555:
	.word	.L554
	.word	.L564
	.word	.L557
	.word	.L564
	.word	.L552
	.word	.L564
	.word	.L564
	.word	.L552
	.word	.L564
	.word	.L564
	.word	.L564
	.word	.L564
	.word	.L564
	.word	.L564
.L564:
	add	r3, r3, #217088	@ tmp143, D.43345,
	mov	r2, #0	@ tmp144,
	str	r2, [r3, #436]	@ tmp144,
.L552:
	bx	lr	@
.L557:
	add	r3, r3, #217088	@ tmp122, D.43345,
	mov	r2, #0	@ tmp123,
	str	r2, [r3, #1468]	@ tmp123, _4->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	bx	lr	@
.L554:
	add	r3, r3, #217088	@ tmp116, D.43345,
	mov	r2, #0	@ tmp117,
	str	r2, [r3, #792]	@ tmp117, _4->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	bx	lr	@
.L566:
	.align	2
.L565:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ClearDecparam, .-VCTRL_ClearDecparam
	.align	2
	.global	VCTRL_GetImageBuffer
	.type	VCTRL_GetImageBuffer, %function
VCTRL_GetImageBuffer:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L570	@,
	ldr	r1, .L591	@ tmp164,
	ldr	r3, [r1, r0, asl #2]	@ D.43353, s_pstVfmwChan
	cmp	r3, #0	@ D.43353,
	beq	.L570	@,
	ldr	r0, [r3, #8]	@ D.43351, _9->s32IsRun
	cmp	r0, #1	@ D.43351,
	bne	.L570	@,
	ldr	r2, [r3, #880]	@ _9->eVidStd, _9->eVidStd
	cmp	r2, #14	@ _9->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _9->eVidStd
	b	.L583	@
.L572:
	.word	.L571
	.word	.L573
	.word	.L574
	.word	.L575
	.word	.L569
	.word	.L577
	.word	.L578
	.word	.L583
	.word	.L579
	.word	.L580
	.word	.L581
	.word	.L581
	.word	.L581
	.word	.L582
	.word	.L569
.L583:
	mov	r0, #0	@ D.43351,
.L569:
	ldmfd	sp!, {r4, pc}	@
.L575:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L577:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	DIVX3DEC_GetImageBuffer	@
.L578:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	AVSDEC_GetImageBuffer	@
.L579:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL8DEC_GetImageBuffer	@
.L580:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	REAL9DEC_GetImageBuffer	@
.L581:
	ldr	r2, [r1, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	ldmeqfd	sp!, {r4, pc}	@
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP6DEC_GetImageBuffer	@
.L582:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VP8DEC_GetImageBuffer	@
.L571:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L573:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	VC1DEC_GetImageBuffer	@
.L574:
	add	r0, r3, #217088	@, D.43353,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG4DEC_GetImageBuffer	@
.L570:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43351,
	ldmfd	sp!, {r4, pc}	@
.L592:
	.align	2
.L591:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetImageBuffer, .-VCTRL_GetImageBuffer
	.align	2
	.global	VCTRL_ConfigFFFBSpeed
	.type	VCTRL_ConfigFFFBSpeed, %function
VCTRL_ConfigFFFBSpeed:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L596	@,
	ldr	r3, .L601	@ tmp118,
	ldr	r3, [r3, r0, asl #2]	@ D.43369, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r2, #1	@ _7->s32IsOpen,
	bne	.L596	@,
	cmp	r1, #0	@ pArgs,
	beq	.L596	@,
	ldr	r2, [r1]	@ D.43370, *pArgs_10(D)
	mov	r0, #0	@ D.43367,
	str	r2, [r3, #1408]	@ D.43370, _7->stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L596:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43367,
	ldmfd	sp!, {r4, pc}	@
.L602:
	.align	2
.L601:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ConfigFFFBSpeed, .-VCTRL_ConfigFFFBSpeed
	.align	2
	.global	VCTRL_ConfigPVRInfo
	.type	VCTRL_ConfigPVRInfo, %function
VCTRL_ConfigPVRInfo:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L606	@,
	ldr	r3, .L611	@ tmp118,
	ldr	r0, [r3, r0, asl #2]	@ D.43375, s_pstVfmwChan
	ldr	r3, [r0, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L606	@,
	cmp	r1, #0	@ pArgs,
	beq	.L606	@,
	mov	r2, #20	@,
	add	r0, r0, #1424	@, D.43375,
	bl	memcpy	@
	mov	r0, #0	@ D.43373,
	ldmfd	sp!, {r4, pc}	@
.L606:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43373,
	ldmfd	sp!, {r4, pc}	@
.L612:
	.align	2
.L611:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ConfigPVRInfo, .-VCTRL_ConfigPVRInfo
	.align	2
	.global	VCTRL_IsChanDecable
	.type	VCTRL_IsChanDecable, %function
VCTRL_IsChanDecable:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r5, .L620	@ tmp141,
	ldr	r2, [r5, r0, asl #2]	@ tmp128, s_pstVfmwChan
	cmp	r2, #0	@ tmp128,
	beq	.L616	@,
	mov	r1, sp	@,
	mov	r4, r0	@ ChanID, ChanID
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L616	@,
	ldr	r3, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r3, #16	@ SmInstInfo.SegNum,
	bgt	.L617	@,
	ldr	r3, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r3, #524288	@ SmInstInfo.TotalSegSize,
	ble	.L616	@,
.L617:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	subs	r0, r0, #1	@ ret,,
	mvnne	r0, #0	@ ret,
	cmp	r0, #0	@ ret,
	bne	.L615	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, r4, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #28]	@ _18->u32timeLastDecParamReady, _18->u32timeLastDecParamReady
	rsb	r0, r3, r0	@ timePeriod, _18->u32timeLastDecParamReady,
	cmp	r0, #50	@ timePeriod,
	movls	r0, #0	@ D.43384,
	mvnhi	r0, #0	@ D.43384,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L616:
	mvn	r0, #0	@ D.43384,
.L615:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L621:
	.align	2
.L620:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_IsChanDecable, .-VCTRL_IsChanDecable
	.align	2
	.global	VCTRL_IsChanSegEnough
	.type	VCTRL_IsChanSegEnough, %function
VCTRL_IsChanSegEnough:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L623	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ _4->s32NoStreamFlag, _4->s32NoStreamFlag
	subs	r0, r0, #1	@, _4->s32NoStreamFlag,
	movne	r0, #1	@,
	bx	lr	@
.L624:
	.align	2
.L623:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_IsChanSegEnough, .-VCTRL_IsChanSegEnough
	.align	2
	.global	VCTRL_IsChanActive
	.type	VCTRL_IsChanActive, %function
VCTRL_IsChanActive:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	bhi	.L631	@,
	ldr	r3, .L632	@ tmp121,
	ldr	r3, [r3, r0, asl #2]	@ D.43397, s_pstVfmwChan
	cmp	r3, #0	@ D.43397,
	beq	.L631	@,
	ldr	r2, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r2, #0	@ _5->s32IsOpen,
	beq	.L631	@,
	ldr	r2, [r3, #8]	@ _5->s32IsRun, _5->s32IsRun
	cmp	r2, #0	@ _5->s32IsRun,
	beq	.L631	@,
	ldr	r2, [r3, #12]	@ _5->s32Priority, _5->s32Priority
	cmp	r2, #0	@ _5->s32Priority,
	beq	.L631	@,
	ldr	r0, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r0, #19	@ _5->eVidStd,
	movne	r0, #0	@ D.43395,
	mvneq	r0, #0	@ D.43395,
	bx	lr	@
.L631:
	mvn	r0, #0	@ D.43395,
	bx	lr	@
.L633:
	.align	2
.L632:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_IsChanActive, .-VCTRL_IsChanActive
	.align	2
	.global	USERDEC_Init
	.type	USERDEC_Init, %function
USERDEC_Init:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ pCtx, pCtx
	ldr	r6, [r0, #352]	@ D.43415, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.43415, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	ldr	r0, .L652	@ ivtmp.462,
	mov	r2, #0	@ i,
	str	r5, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
.L638:
	ldr	r1, [r0], #4	@ D.43417, MEM[base: _26, offset: 0B]
	cmp	r1, #0	@ D.43417,
	add	r3, r1, #217088	@ D.43418, D.43417,
	add	r3, r3, #432	@ D.43418, D.43418,
	beq	.L635	@,
	cmp	r4, r3	@ pCtx, D.43418
	beq	.L651	@,
.L635:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #4	@ i,
	bne	.L638	@,
	mvn	r3, #0	@ tmp126,
	str	r3, [r4, #360]	@ tmp126, pCtx_4(D)->ChanID
.L636:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.43414,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L651:
	cmn	r2, #1	@ i,
	str	r2, [r4, #360]	@ i, pCtx_4(D)->ChanID
	beq	.L636	@,
	mov	r0, #1	@ D.43414,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L653:
	.align	2
.L652:
	.word	.LANCHOR0
	.fnend
	.size	USERDEC_Init, .-USERDEC_Init
	.align	2
	.global	USERDEC_RecycleImage
	.type	USERDEC_RecycleImage, %function
USERDEC_RecycleImage:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r2, #0	@,
	mov	r5, r1	@ ImgID, ImgID
	mov	r4, r0	@ pCtx, pCtx
	ldr	r0, [r0, #360]	@, pCtx_3(D)->ChanID
	bl	FSP_SetDisplay	@
	mov	r1, r5	@, ImgID
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r5, r0, #0	@ pImg,
	beq	.L655	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp125,
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp125, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp125, pImg_10->p_usrdat
.L655:
	mov	r0, #1	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	USERDEC_RecycleImage, .-USERDEC_RecycleImage
	.align	2
	.global	VDH_PutUsrdecFrame
	.type	VDH_PutUsrdecFrame, %function
VDH_PutUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1	@ pstUsrdecFrame, pstUsrdecFrame
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r1, [r1, #28]	@, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	mov	r8, r0	@ ChanID, ChanID
	bl	FSP_GetLogicIdByPhyAddr	@
	cmn	r0, #1	@ PicBufID,
	mov	r7, r0	@ PicBufID,
	beq	.L665	@,
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	beq	.L663	@,
	mov	r1, r0	@, PicBufID
	mov	r2, #0	@,
	mov	r0, r8	@, ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.43444,
.L662:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L663:
	ldr	r0, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pSrc,
	beq	.L700	@,
.L664:
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L665	@,
	str	r7, [r4, #176]	@ PicBufID, pLogic_29->image_id
	mov	r9, #0	@ tmp198,
	ldrd	r2, [r6, #8]	@ D.43447, pstUsrdecFrame,
	mov	r10, #1	@ tmp197,
	strd	r2, [r4]	@ D.43447, pLogic_29->SrcPts
	ldrd	r2, [r6, #8]	@ D.43447, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ D.43447, pLogic,
	ldrd	r2, [r6, #8]	@ D.43447, pstUsrdecFrame,
	strd	r2, [r4, #16]	@ D.43447, pLogic,
	ldrd	r2, [r6, #8]	@ D.43447, pstUsrdecFrame,
	str	r10, [r4, #68]	@ tmp197, pLogic_29->DispEnableFlag
	str	r9, [r4, #72]	@ tmp198, pLogic_29->DispFrameDistance
	strd	r2, [r4, #24]	@ D.43447, pLogic,
	str	r9, [r4, #76]	@ tmp198, pLogic_29->DistanceBeforeFirstFrame
	str	r9, [r4, #80]	@ tmp198, pLogic_29->GopNum
	ldr	r3, [r6, #28]	@ D.43445, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	str	r3, [r4, #88]	@ D.43445, pLogic_29->top_luma_phy_addr
	mov	r0, r3	@, D.43445
	str	r3, [r4, #120]	@ D.43445, pLogic_29->luma_2d_phy_addr
	str	r3, [r4, #104]	@ D.43445, pLogic_29->luma_phy_addr
	ldr	r3, [r6, #36]	@ D.43445, pstUsrdecFrame_15(D)->s32CbPhyAddr
	str	r3, [r4, #92]	@ D.43445, pLogic_29->top_chrom_phy_addr
	str	r3, [r4, #124]	@ D.43445, pLogic_29->chrom_2d_phy_addr
	str	r3, [r4, #108]	@ D.43445, pLogic_29->chrom_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r3, r0	@ D.43448,
	ldr	r0, [r4, #92]	@, pLogic_29->top_chrom_phy_addr
	str	r3, [r4, #48]	@ D.43448, pLogic_29->luma_2d_vir_addr
	str	r3, [r4, #32]	@ D.43448, pLogic_29->luma_vir_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #88]	@ pLogic_29->top_luma_phy_addr, pLogic_29->top_luma_phy_addr
	ldr	r3, [r4, #92]	@ pLogic_29->top_chrom_phy_addr, pLogic_29->top_chrom_phy_addr
	movw	r1, #11296	@ tmp217,
	str	r0, [r4, #52]	@ __p, pLogic_29->chrom_2d_vir_addr
	mov	ip, r0	@ __p,
	str	r0, [r4, #36]	@ __p, pLogic_29->chrom_vir_addr
	cmp	r0, r9	@ __p,
	ldr	r0, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	add	r2, r2, r0	@ D.43445, pLogic_29->top_luma_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r2, [r4, #96]	@ D.43445, pLogic_29->btm_luma_phy_addr
	ldr	r2, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #128]	@ tmp198, pLogic_29->is_fld_save
	add	r3, r3, r2	@ D.43445, pLogic_29->top_chrom_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r3, [r4, #100]	@ D.43445, pLogic_29->btm_chrom_phy_addr
	ldr	r3, [r6, #20]	@ pstUsrdecFrame_15(D)->s32YWidth, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #144]	@ pstUsrdecFrame_15(D)->s32YWidth, pLogic_29->image_width
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	str	r3, [r4, #148]	@ pstUsrdecFrame_15(D)->s32YHeight, pLogic_29->image_height
	ldr	r3, [r6, #20]	@ D.43446, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #152]	@ D.43446, pLogic_29->disp_width
	mov	r2, r3, lsr r10	@ D.43446, D.43446,
	ldr	r3, [r6, #24]	@ D.43446, pstUsrdecFrame_15(D)->s32YHeight
	str	r2, [r4, #160]	@ D.43446, pLogic_29->disp_center_x
	str	r3, [r4, #156]	@ D.43446, pLogic_29->disp_height
	mov	r3, r3, lsr r10	@ D.43446, D.43446,
	str	r3, [r4, #164]	@ D.43446, pLogic_29->disp_center_y
	ldr	r3, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r10, [r4, #208]	@ tmp197, pLogic_29->chroma_idc
	str	r9, [r4, #168]	@ tmp198, pLogic_29->frame_rate
	str	r3, [r4, #172]	@ pstUsrdecFrame_15(D)->s32LumaStride, pLogic_29->image_stride
	str	r9, [r4, #180]	@ tmp198, pLogic_29->error_level
	str	r9, [r4, #256]	@ tmp198, pLogic_29->line_num_phy_addr
	str	r9, [r4, #56]	@ tmp198, pLogic_29->line_num_vir_addr
	str	r1, [r4, #140]	@ tmp217, pLogic_29->format
	beq	.L665	@,
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	cmp	r3, r10	@ pstUsrdecFrame_15(D)->s32YHeight,
	bgt	.L678	@,
	b	.L679	@
.L702:
	ldr	r2, [r4, #144]	@ __n, pLogic_29->image_width
	cmp	r2, #0	@ __n,
	bne	.L701	@,
.L669:
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	add	r9, r9, #1	@ y, y,
	ldr	r2, [r4, #172]	@ pLogic_29->image_stride, pLogic_29->image_stride
	add	r3, r3, r3, lsr #31	@ tmp250, pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight,
	add	ip, ip, r2	@ __p, __p, pLogic_29->image_stride
	cmp	r9, r3, asr #1	@ y, tmp250,
	bge	.L679	@,
.L678:
	ldr	r3, [r6]	@ D.43449, pstUsrdecFrame_15(D)->enFmt
	cmp	r3, #0	@ D.43449,
	beq	.L702	@,
	cmp	r3, #1	@ D.43449,
	beq	.L669	@,
	cmp	r3, #3	@ D.43449,
	beq	.L703	@,
	cmp	r3, #2	@ D.43449,
	beq	.L704	@,
	cmp	r3, #4	@ D.43449,
	bne	.L680	@,
	ldr	r3, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, #0	@ pLogic_29->image_width,
	movne	r1, r5	@ ivtmp.481, pSrc
	movne	r3, #0	@ x,
	beq	.L677	@,
.L676:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.43450, MEM[base: pSrc_188, index: _117, step: 2, offset: 0B]
	mov	r2, ip	@ D.43448, __p
	add	r1, r1, #4	@ ivtmp.481, ivtmp.481,
	strb	r0, [r2, r3]!	@ D.43450, MEM[base: __p_189, index: _117, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.43450, MEM[base: _118, offset: 1B]
	strb	r0, [r2, #1]	@ D.43450, MEM[base: _112, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, r2	@ x, pLogic_29->image_width
	bcc	.L676	@,
.L677:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	b	.L669	@
.L701:
	mov	r0, ip	@, __p
	mov	r1, #128	@,
	bl	memset	@
	mov	ip, r0	@ __p,
	b	.L669	@
.L703:
	ldr	r3, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, #0	@ pLogic_29->image_width,
	movne	r1, r5	@ ivtmp.473, pSrc
	movne	r3, #0	@ x,
	beq	.L673	@,
.L672:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.43450, MEM[base: pSrc_188, index: _202, step: 2, offset: 0B]
	mov	r2, ip	@ D.43448, __p
	add	r1, r1, #4	@ ivtmp.473, ivtmp.473,
	strb	r0, [r2, r3]!	@ D.43450, MEM[base: __p_189, index: _202, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.43450, MEM[base: _200, offset: 1B]
	strb	r0, [r2, #1]	@ D.43450, MEM[base: _198, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, r2	@ x, pLogic_29->image_width
	bcc	.L672	@,
.L673:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride
	b	.L669	@
.L679:
	mov	r5, #18	@ tmp221,
	mov	r2, #1	@,
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	str	r5, [r4, #300]	@ tmp221, pLogic_29->ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	ldr	r3, .L705	@ tmp222,
	mov	r1, r5	@, tmp221
	mov	r0, r8	@, ChanID
	ldr	r2, [r3, r8, asl #2]	@ D.43452, s_pstVfmwChan
	add	r2, r2, #217088	@ tmp224, D.43452,
	add	r3, r2, #440	@, tmp224,
	add	r2, r2, #432	@, tmp224,
	str	r4, [sp]	@ pLogic,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L667	@,
	mov	r0, #0	@ D.43444,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L704:
	mov	r1, r5	@, pSrc
	mov	r0, ip	@, __p
	ldr	r2, [r4, #144]	@, pLogic_29->image_width
	bl	memcpy	@
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	mov	ip, r0	@ __p,
	b	.L669	@
.L700:
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	bne	.L664	@,
.L665:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43444,
	b	.L662	@
.L680:
	mvn	r0, #0	@ D.43444,
	b	.L662	@
.L667:
	ldr	r1, [r4, #192]	@, pLogic_29->p_usrdat
	mov	r0, r8	@, ChanID
	bl	FreeUsdByDec	@
	mov	r5, #0	@ tmp253,
	ldr	r1, [r4, #196]	@, pLogic_29->p_usrdat
	mov	r0, r8	@, ChanID
	str	r5, [r4, #192]	@ tmp253, pLogic_29->p_usrdat
	bl	FreeUsdByDec	@
	mov	r0, r8	@, ChanID
	str	r5, [r4, #196]	@ tmp253, pLogic_29->p_usrdat
	mov	r2, r5	@, tmp253
	mov	r1, r7	@, PicBufID
	bl	FSP_SetDisplay	@
	mvn	r0, #0	@ D.43444,
	b	.L662	@
.L706:
	.align	2
.L705:
	.word	.LANCHOR0
	.fnend
	.size	VDH_PutUsrdecFrame, .-VDH_PutUsrdecFrame
	.align	2
	.global	VCTRL_GetUsrdecFrame
	.type	VCTRL_GetUsrdecFrame, %function
VCTRL_GetUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ ChanID, ChanID
	ldr	r6, .L724	@ tmp127,
	ldr	r3, [r6, r0, asl #2]	@ D.43462, s_pstVfmwChan
	cmp	r3, #0	@ D.43462,
	beq	.L710	@,
	ldr	r2, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r2, #18	@ _5->eVidStd,
	bne	.L710	@,
	ldr	r3, [r3, #820]	@ _5->s32UsrdecFrameNum, _5->s32UsrdecFrameNum
	cmp	r3, #2	@ _5->s32UsrdecFrameNum,
	ble	.L710	@,
	mov	r7, r1	@ pMem, pMem
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.43464,
	bne	.L710	@,
	mov	r1, r0	@, D.43464
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r1, r0, #0	@ id,
	blt	.L710	@,
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r4, r0	@ pLf,
	bl	vfmw_dprint_nothing	@
	cmp	r4, #0	@ pLf,
	beq	.L710	@,
	ldr	r3, [r4, #408]	@ pLf_18->pstDecodeFs, pLf_18->pstDecodeFs
	cmp	r3, #0	@ pLf_18->pstDecodeFs,
	beq	.L710	@,
	ldr	r3, [r4, #412]	@ pLf_18->pstDispOutFs, pLf_18->pstDispOutFs
	cmp	r3, #0	@ pLf_18->pstDispOutFs,
	beq	.L710	@,
	ldr	r3, [r4, #416]	@ pLf_18->pstTfOutFs, pLf_18->pstTfOutFs
	cmp	r3, #0	@ pLf_18->pstTfOutFs,
	beq	.L710	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #408]	@ pLf_18->pstDecodeFs, pLf_18->pstDecodeFs
	mov	r0, #0	@ D.43461,
	ldr	r3, [r3, #12]	@ D.43464, _25->PhyAddr
	str	r3, [r7]	@ D.43464, pMem_27(D)->PhyAddr
	ldr	r3, [r6, r5, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #816]	@ D.43464, _29->s32UsrdecFrameSize
	str	r3, [r7, #8]	@ D.43464, pMem_27(D)->Length
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L710:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43461,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L725:
	.align	2
.L724:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetUsrdecFrame, .-VCTRL_GetUsrdecFrame
	.align	2
	.global	VCTRL_PutUsrdecFrame
	.type	VCTRL_PutUsrdecFrame, %function
VCTRL_PutUsrdecFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L734	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, [r3, r0, asl #2]	@ D.43469, s_pstVfmwChan
	cmp	r0, #0	@ D.43469,
	beq	.L729	@,
	cmp	r1, #0	@ pUsrdecFrame,
	mov	r5, r1	@ pUsrdecFrame, pUsrdecFrame
	beq	.L729	@,
	ldr	r2, [r0, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r2, #18	@ _5->eVidStd,
	bne	.L729	@,
	mov	r2, #56	@,
	add	r0, r0, #824	@, D.43469,
	bl	memcpy	@
	mov	r1, r5	@, pUsrdecFrame
	mov	r0, r4	@, ChanID
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.43468
	bne	.L729	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L729:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43468,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L735:
	.align	2
.L734:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_PutUsrdecFrame, .-VCTRL_PutUsrdecFrame
	.align	2
	.global	InitSyntaxCtx
	.type	InitSyntaxCtx, %function
InitSyntaxCtx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L763	@ tmp189,
	ldr	r1, [r2, r0, asl #2]	@ D.43479, s_pstVfmwChan
	cmp	r1, #0	@ D.43479,
	beq	.L761	@,
	ldr	r3, [r1, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r3, #18	@ _4->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _4->eVidStd
	b	.L736	@
.L740:
	.word	.L739
	.word	.L741
	.word	.L742
	.word	.L743
	.word	.L744
	.word	.L745
	.word	.L746
	.word	.L736
	.word	.L747
	.word	.L748
	.word	.L749
	.word	.L749
	.word	.L749
	.word	.L750
	.word	.L744
	.word	.L736
	.word	.L736
	.word	.L736
	.word	.L751
.L749:
	ldr	r3, [r2, #3584]	@ g_VdmCharacter, g_VdmCharacter
	ldr	r2, .L763	@ tmp169,
	tst	r3, #1	@ g_VdmCharacter,
	bne	.L762	@,
.L744:
	ldr	r3, [r2, #192]	@ D.43484, g_SdecFunc.pfun_iMediaSoftDEC_Init
	cmp	r3, #0	@ D.43484,
	bxeq	lr	@
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	bx	r3	@ D.43484
.L745:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	DIVX3DEC_Init	@
.L746:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	AVSDEC_Init	@
.L747:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	REAL8DEC_Init	@
.L748:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	REAL9DEC_Init	@
.L750:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	VP8DEC_Init	@
.L751:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	USERDEC_Init	@
.L739:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	H264DEC_Init	@
.L741:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	VC1DEC_Init	@
.L742:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	MPEG4DEC_Init	@
.L743:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	MPEG2DEC_Init	@
.L736:
	bx	lr	@
.L762:
	add	r0, r1, #217088	@, D.43479,
	add	r1, r1, #888	@, D.43479,
	add	r0, r0, #432	@,,
	b	VP6DEC_Init	@
.L761:
	b	vfmw_dprint_nothing	@
.L764:
	.align	2
.L763:
	.word	.LANCHOR0
	.fnend
	.size	InitSyntaxCtx, .-InitSyntaxCtx
	.align	2
	.global	VCTRL_ResetChanWithOption
	.type	VCTRL_ResetChanWithOption, %function
VCTRL_ResetChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r5, .L784	@ tmp167,
	ldr	r3, [r5, r0, asl #2]	@ D.43499, s_pstVfmwChan
	cmp	r3, #0	@ D.43499,
	beq	.L768	@,
	ldr	r2, [r1]	@ pOption_11(D)->s32KeepBS, pOption_11(D)->s32KeepBS
	mov	r6, r1	@ pOption, pOption
	cmp	r2, #1	@ pOption_11(D)->s32KeepBS,
	bhi	.L768	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _9->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ D.43499, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp141, ChanID,
	ldr	r0, .L784+4	@ tmp138,
	sub	r3, r3, r4, asl #3	@ tmp142, tmp141, ChanID,
	mov	r8, #0	@ tmp134,
	mov	r1, #24	@,
	add	r0, r0, r3	@, tmp138, tmp142
	str	r8, [r2, #680]	@ tmp134, _17->s32CountNoDecparamFlag
	str	r8, [r2, #684]	@ tmp134, _17->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r2, [r6, #4]	@ D.43500, pOption_11(D)->s32KeepSPSPPS
	ldr	r3, [r5, r4, asl #2]	@ tmp145, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r2, [r3, #1412]	@ D.43500, _23->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ D.43499, s_pstVfmwChan
	add	r1, r3, #217088	@, D.43499,
	ldr	r0, [r3, #880]	@, _27->eVidStd
	add	r1, r1, #432	@,,
	bl	ReleaseCurPic	@
	ldr	r0, [r5, r4, asl #2]	@ tmp152, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp152,
	bl	__memzero	@
	ldr	r3, [r5, r4, asl #2]	@ D.43499, s_pstVfmwChan
	mvn	r0, #0	@ tmp156,
	mvn	r1, #0	@,
	add	r2, r3, #960	@ tmp158, D.43499,
	add	ip, r3, #944	@ tmp155, D.43499,
	strd	r0, [ip]	@ tmp156, _34->stSynExtraData.pts
	strd	r0, [r2, #-8]	@ tmp156, tmp158,
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #880]	@ _34->eVidStd, _34->eVidStd
	str	r8, [r3, #1272]	@ tmp134, _34->stSynExtraData.s32NewPicSegDetector
	cmp	r2, #18	@ _34->eVidStd,
	str	r8, [r3, #1620]	@ tmp134, _34->stSynExtraData.s32firstIdecodedflag
	beq	.L769	@,
	bl	FSP_ResetInstance	@
.L770:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r3, [r6]	@ pOption_11(D)->s32KeepBS, pOption_11(D)->s32KeepBS
	cmp	r3, #0	@ pOption_11(D)->s32KeepBS,
	beq	.L781	@,
	ldr	r3, [r5, #3700]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L782	@,
.L772:
	cmp	r7, #0	@ ChanIsRun,
	bne	.L783	@,
.L773:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.43498,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L781:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r5, #3700]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	beq	.L772	@,
.L782:
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L773	@,
.L783:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L773	@
.L769:
	bl	FSP_EmptyInstance	@
	b	.L770	@
.L768:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43498,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L785:
	.align	2
.L784:
	.word	.LANCHOR0
	.word	.LANCHOR0+3604
	.fnend
	.size	VCTRL_ResetChanWithOption, .-VCTRL_ResetChanWithOption
	.align	2
	.global	VCTRL_ResetChan
	.type	VCTRL_ResetChan, %function
VCTRL_ResetChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r6, .L806	@ tmp171,
	ldr	r3, [r6, r0, asl #2]	@ D.43508, s_pstVfmwChan
	cmp	r3, #0	@ D.43508,
	beq	.L802	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _10->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r6, r4, asl #2]	@ D.43508, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp135, ChanID,
	ldr	r0, .L806+4	@ tmp132,
	sub	r3, r3, r4, asl #3	@ tmp136, tmp135, ChanID,
	mov	r5, #0	@ tmp128,
	mov	r1, #24	@,
	str	r5, [r2, #680]	@ tmp128, _14->s32CountNoDecparamFlag
	add	r0, r0, r3	@, tmp132, tmp136
	str	r5, [r2, #684]	@ tmp128, _14->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r3, [r6, r4, asl #2]	@ tmp139, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1412]	@ tmp128, _20->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r0, [r6, r4, asl #2]	@ tmp143, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp143,
	bl	__memzero	@
	ldr	r3, [r6, r4, asl #2]	@ D.43508, s_pstVfmwChan
	mvn	r0, #0	@ tmp147,
	mvn	r1, #0	@,
	add	r2, r3, #217088	@ tmp154, D.43508,
	add	lr, r3, #944	@ tmp146, D.43508,
	add	ip, r3, #960	@ tmp149, D.43508,
	strd	r0, [lr]	@ tmp147, _26->stSynExtraData.pts
	strd	r0, [ip, #-8]	@ tmp147, tmp149,
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1272]	@ tmp128, _26->stSynExtraData.s32NewPicSegDetector
	str	r5, [r3, #1620]	@ tmp128, _26->stSynExtraData.s32firstIdecodedflag
	str	r5, [r2, #384]	@ tmp128, _26->s32FindStartCodeCnt
	str	r5, [r2, #376]	@ tmp128, _26->s32H264Score
	str	r5, [r2, #380]	@ tmp128, _26->s32Mpeg2Score
	ldr	r2, [r3, #1580]	@ _26->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _26->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _26->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	streq	r5, [r3, #1616]	@ tmp128, _26->stSynExtraData.s32DSDWaitFlag
	ldr	r3, [r3, #880]	@ _26->eVidStd, _26->eVidStd
	cmp	r3, #18	@ _26->eVidStd,
	beq	.L790	@,
	bl	FSP_ResetInstance	@
.L791:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r6, #3700]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L803	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L804	@,
.L793:
	ldr	r3, [r6, r4, asl #2]	@ tmp168, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L805	@,
.L794:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.43507,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L803:
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L793	@,
.L804:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r3, [r6, r4, asl #2]	@ tmp168, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L794	@,
.L805:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L794	@
.L790:
	bl	FSP_EmptyInstance	@
	b	.L791	@
.L802:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43507,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L807:
	.align	2
.L806:
	.word	.LANCHOR0
	.word	.LANCHOR0+3604
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L811	@,
	ldr	r5, .L828	@ tmp181,
	ldr	r3, [r5, r0, asl #2]	@ D.43529, s_pstVfmwChan
	cmp	r3, #0	@ D.43529,
	beq	.L811	@,
	ldr	r7, [r3, #4]	@ _12->s32IsOpen, _12->s32IsOpen
	cmp	r7, #1	@ _12->s32IsOpen,
	bne	.L811	@,
	ldr	r3, [r3, #880]	@ _12->eVidStd, _12->eVidStd
	cmp	r3, #19	@ _12->eVidStd,
	beq	.L811	@,
	mov	r8, r1	@ pChanMemVdh, pChanMemVdh
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5, r4, asl #2]	@ D.43529, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _19->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _19->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _19->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r6, [r5, r4, asl #2]	@ D.43529, s_pstVfmwChan
	mov	r1, r8	@, pChanMemVdh
	mov	r2, #16	@,
	add	r0, r6, #168	@, D.43529,
	bl	memcpy	@
	ldr	r2, [r6, #180]	@, _24->stChanMem_vdh.Length
	ldr	r1, [r6, #172]	@, _24->stChanMem_vdh.VirAddr
	ldr	r0, [r6, #176]	@, _24->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r4	@, ChanID
	bl	SM_Start	@
	ldr	r3, [r5, r4, asl #2]	@ D.43529, s_pstVfmwChan
	mov	r1, #0	@ tmp163,
	str	r7, [r3, #8]	@ _12->s32IsOpen, _33->s32IsRun
	ldr	r2, [r5, r4, asl #2]	@ D.43529, s_pstVfmwChan
	ldr	r3, [r2, #12]	@ _35->s32Priority, _35->s32Priority
	str	r1, [r2, #16]	@ tmp163, _35->s32StopSyntax
	cmp	r3, r1	@ _35->s32Priority,
	bne	.L812	@,
	ldr	r3, .L828+4	@ ivtmp.511,
	mov	r0, r5	@ ivtmp.507, tmp181
	ldr	r1, .L828+8	@ ivtmp.512,
	add	lr, r3, #16	@ D.43528,,
	str	r7, [r2, #12]	@ _12->s32IsOpen, _35->s32Priority
.L815:
	ldr	r2, [r0], #4	@ D.43529, MEM[base: _61, offset: 0B]
	add	r3, r3, #4	@ ivtmp.511, ivtmp.511,
	add	r1, r1, #4	@ ivtmp.512, ivtmp.512,
	cmp	r2, #0	@ D.43529,
	streq	r2, [r3, #-4]	@ D.43529, MEM[base: _65, offset: 0B]
	ldrne	ip, [r2, #12]	@ D.43530, _39->s32Priority
	strne	ip, [r3, #-4]	@ D.43530, MEM[base: _63, offset: 0B]
	ldrne	r2, [r2, #12]	@ D.43530, _39->s32Priority
	cmp	r3, lr	@ ivtmp.511, D.43528
	str	r2, [r1, #-4]	@ D.43529,
	bne	.L815	@,
	ldr	r0, .L828+4	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
.L812:
	ldr	r3, [r5, r4, asl #2]	@ tmp178, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _49->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L816	@,
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
.L816:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.43527,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L811:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43527,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L829:
	.align	2
.L828:
	.word	.LANCHOR0
	.word	.LANCHOR0+3704
	.word	g_ChanCtx
	.fnend
	.size	VCTRL_StartChanWithOption, .-VCTRL_StartChanWithOption
	.align	2
	.global	VCTRL_ConfigChan
	.type	VCTRL_ConfigChan, %function
VCTRL_ConfigChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	mov	r3, #0	@ tmp328,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0	@ ChanID, ChanID
	.pad #172
	sub	sp, sp, #172	@,,
	mov	r4, r1	@ pstCfg, pstCfg
	str	r3, [r1, #44]	@ tmp328, pstCfg_12(D)->s32VcmpEn
	bhi	.L833	@,
	ldr	r7, .L916	@ tmp587,
	ldr	r3, [r7, r0, asl #2]	@ D.43587, s_pstVfmwChan
	cmp	r3, #0	@ D.43587,
	beq	.L833	@,
	ldr	r3, [r3, #4]	@ _17->s32IsOpen, _17->s32IsOpen
	cmp	r3, #1	@ _17->s32IsOpen,
	bne	.L833	@,
	bl	VCTRL_CheckChanWH	@
	cmp	r0, #0	@ D.43588
	bne	.L833	@,
	ldr	r3, [r4]	@ D.43588, pstCfg_12(D)->eVidStd
	cmp	r3, #18	@ D.43588,
	bgt	.L836	@,
	cmp	r3, #8	@ D.43588,
	str	r0, [sp, #48]	@ D.43588, s32supportFlag
	beq	.L907	@,
.L835:
	cmp	r3, #9	@ D.43588,
	beq	.L908	@,
.L872:
	mov	r1, r4	@, pstCfg
	mov	r0, r6	@, ChanID
	bl	VCTRL_CmpConfigParameter	@
	subs	r5, r0, #0	@ D.43585,
	beq	.L909	@,
	ldr	r5, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
	ldr	r2, [r4]	@ D.43588, pstCfg_12(D)->eVidStd
	ldr	r3, [r5, #32]	@ D.43588, _33->stChanCfg.eVidStd
	cmp	r2, #4	@ D.43588,
	cmpne	r2, #14	@, D.43588,
	moveq	r2, #1	@ tmp346,
	movne	r2, #0	@ tmp346,
	cmp	r3, #4	@ D.43588,
	cmpne	r3, #14	@, D.43588,
	moveq	r3, #1	@ tmp347,
	movne	r3, #0	@ tmp347,
	cmp	r2, r3	@ tmp346, tmp347
	beq	.L840	@,
	ldr	r3, [r5, #148]	@ _33->s32OneChanMem, _33->s32OneChanMem
	ldr	r0, .L916+4	@,
	cmp	r3, #0	@ _33->s32OneChanMem,
	bne	.L841	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r3, [r5, #196]	@ MEM[(struct MEM_RECORD_S *)_33 + 184B].Length, MEM[(struct MEM_RECORD_S *)_33 + 184B].Length
	ldr	r8, [r4]	@ D.43588, pstCfg_12(D)->eVidStd
	cmp	r3, #0	@ MEM[(struct MEM_RECORD_S *)_33 + 184B].Length,
	bne	.L910	@,
.L842:
	ldr	r0, [r5, #172]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].VirAddr
	bl	KernelMunmap	@
	cmp	r8, #4	@ D.43588,
	cmpne	r8, #14	@, D.43588,
	ldr	r1, [r5, #180]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].Length
	moveq	r8, #1	@ tmp361,
	movne	r8, #0	@ tmp361,
	bne	.L843	@,
	ldr	r0, [r5, #176]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].PhyAddr
	mov	r8, #1	@ tmp364,
	bl	KernelMmapCache	@
	ldr	r1, [r5, #196]	@ D.43588, MEM[(struct MEM_RECORD_S *)_33 + 184B].Length
	strb	r8, [r5, #168]	@ tmp364, MEM[(struct MEM_RECORD_S *)_33 + 168B].IsCached
	cmp	r1, #0	@ D.43588,
	mov	r10, r0	@ pVir_vdh,
	bne	.L911	@,
.L875:
	mov	r9, r1	@ pVir_scd, D.43588
.L844:
	ldr	r0, .L916+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r7, r6, asl #2]	@ tmp380, s_pstVfmwChan
	cmp	r3, #0	@ tmp380,
	beq	.L847	@,
	cmp	r10, #0	@ pVir_vdh,
	beq	.L847	@,
	ldr	r2, [r5, #196]	@ MEM[(struct MEM_RECORD_S *)_33 + 184B].Length, MEM[(struct MEM_RECORD_S *)_33 + 184B].Length
	clz	r3, r9	@ tmp388, pVir_scd
	cmp	r2, #0	@ MEM[(struct MEM_RECORD_S *)_33 + 184B].Length,
	mov	r3, r3, lsr #5	@ tmp388, tmp388,
	moveq	r3, #0	@ tmp388,
	cmp	r3, #0	@ tmp388,
	bne	.L847	@,
	ldr	r2, [r5, #180]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].Length
	ldr	r1, [r5, #172]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].VirAddr
	ldr	r0, [r5, #176]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].PhyAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L847	@,
	str	r10, [r5, #172]	@ pVir_vdh, MEM[(struct MEM_RECORD_S *)_33 + 168B].VirAddr
	mov	r1, r10	@, pVir_vdh
	ldr	r2, [r5, #180]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].Length
	ldr	r0, [r5, #176]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	bne	.L847	@,
	ldr	r2, [r5, #196]	@ D.43588, MEM[(struct MEM_RECORD_S *)_33 + 184B].Length
	cmp	r2, #0	@ D.43588,
	bne	.L912	@,
.L873:
	ldr	r3, [r4]	@ D.43588, pstCfg_12(D)->eVidStd
	cmp	r3, #4	@ D.43588,
	cmpne	r3, #14	@, D.43588,
	bne	.L853	@,
	ldr	r2, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
	add	r1, sp, #16	@,,
	mov	r0, r6	@, ChanID
	ldr	r3, [r2, #1460]	@ _203->stSynExtraData.stChanOption.s32MaxHeight, _203->stSynExtraData.stChanOption.s32MaxHeight
	ldr	ip, [r2, #252]	@ D.43588, _203->s32SdecMemSize
	ldr	lr, [r2, #248]	@ _203->s32SdecMemAddr, _203->s32SdecMemAddr
	mov	r3, r3, asl #1	@, _203->stSynExtraData.stChanOption.s32MaxHeight,
	ldr	r2, [r2, #1456]	@, _203->stSynExtraData.stChanOption.s32MaxWidth
	str	ip, [sp, #20]	@ D.43588, stMem.VirAddr
	str	lr, [sp, #16]	@ _203->s32SdecMemAddr, stMem.PhyAddr
	str	ip, [sp, #24]	@ D.43588, stMem.Length
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L847	@,
.L854:
	ldr	r5, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
.L840:
	mov	r2, #72	@,
	mov	r1, r4	@, pstCfg
	add	r0, r5, #32	@, D.43587,
	add	r9, r4, #4	@ D.43594, pstCfg,
	bl	memcpy	@
	ldr	r3, [r4, #12]	@ D.43588, pstCfg_12(D)->s32ChanPriority
	mov	r1, #120	@,
	str	r3, [r5, #12]	@ D.43588, _351->s32Priority
	ldr	r2, [r4]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	ldr	r3, [r7, r6, asl #2]	@ tmp464, s_pstVfmwChan
	str	r2, [r3, #880]	@ pstCfg_12(D)->eVidStd, _45->eVidStd
	add	r0, sp, #48	@ tmp594,,
	bl	__memzero	@
	ldr	r3, [r7, r6, asl #2]	@ tmp468, s_pstVfmwChan
	ldr	r3, [r3, #244]	@ D.43588, _50->s32ScdChanMemAddr
	mov	r0, r3	@, D.43588
	str	r3, [sp, #60]	@ D.43588, ScdInstCfg.BufPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r8, [r7, r6, asl #2]	@ tmp470, s_pstVfmwChan
	mov	r2, #8	@,
	ldr	lr, [r4, #68]	@ pstCfg_12(D)->s32LowdBufEnable, pstCfg_12(D)->s32LowdBufEnable
	mov	r1, r9	@, D.43594
	ldr	r10, [r4, #12]	@ pstCfg_12(D)->s32ChanPriority, pstCfg_12(D)->s32ChanPriority
	mov	r3, #49152	@ tmp475,
	ldr	r5, [r4]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	movt	r3, 4115	@ tmp475,
	mov	ip, #0	@ tmp477,
	str	r0, [sp, #48]	@, ScdInstCfg.pBufVirAddr
	add	r0, sp, #72	@,,
	ldr	r8, [r8, #256]	@ _56->s32ScdChanMemSize, _56->s32ScdChanMemSize
	str	r3, [sp, #68]	@ tmp475, ScdInstCfg.RegPhyBaseAddr
	str	lr, [sp, #92]	@ pstCfg_12(D)->s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	str	ip, [sp, #88]	@ tmp477, ScdInstCfg.ScdLowdlyEnable
	strb	r10, [sp, #52]	@ pstCfg_12(D)->s32ChanPriority, ScdInstCfg.Priority
	str	r8, [sp, #64]	@ _56->s32ScdChanMemSize, ScdInstCfg.BufSize
	str	r5, [sp, #56]	@ pstCfg_12(D)->eVidStd, ScdInstCfg.VidStd
	bl	memcpy	@
	mov	r0, r6	@, ChanID
	add	r1, sp, #48	@ tmp595,,
	bl	SM_Config	@
	mov	r1, #1	@,
	add	r0, sp, #15	@ tmp596,,
	bl	__memzero	@
	ldr	r3, [r4, #68]	@ pstCfg_12(D)->s32LowdBufEnable, pstCfg_12(D)->s32LowdBufEnable
	cmp	r3, #0	@ pstCfg_12(D)->s32LowdBufEnable,
	bne	.L913	@,
.L855:
	ldr	r5, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
	mov	r8, #0	@ tmp500,
	mov	r1, r9	@, D.43594
	mov	r2, #8	@,
	add	r0, r5, #1264	@, D.43587,
	ldr	r9, .L916	@ tmp490,
	ldr	fp, [r5, #208]	@ _76->stChanMem_ctx.PhyAddr, _76->stChanMem_ctx.PhyAddr
	add	r0, r0, #12	@,,
	ldr	r10, [r5, #212]	@ _76->stChanMem_ctx.Length, _76->stChanMem_ctx.Length
	ldr	r3, [r5, #260]	@ _76->s32BpdChanMemAddr, _76->s32BpdChanMemAddr
	str	fp, [r5, #1392]	@ _76->stChanMem_ctx.PhyAddr, _76->stSynExtraData.s32ContextMemAddr
	str	r10, [r5, #1396]	@ _76->stChanMem_ctx.Length, _76->stSynExtraData.s32ContextMemSize
	str	r3, [r5, #924]	@ _76->s32BpdChanMemAddr, _76->stSynExtraData.s32BpdMemAddr
	ldr	lr, [r5, #228]	@ _76->s32VdmChanMemAddr, _76->s32VdmChanMemAddr
	ldr	ip, [r5, #232]	@ _76->s32VdmChanMemSize, _76->s32VdmChanMemSize
	ldr	r3, [r5, #264]	@ tmp598, _76->s32BpdChanMemSize
	ldr	fp, [r5, #268]	@ _76->s32Vp8SegIdChanMemAddr, _76->s32Vp8SegIdChanMemAddr
	ldr	r10, [r5, #272]	@ _76->s32Vp8SegIdChanMemSize, _76->s32Vp8SegIdChanMemSize
	str	lr, [r5, #912]	@ _76->s32VdmChanMemAddr, _76->stSynExtraData.s32SyntaxMemAddr
	str	ip, [r5, #916]	@ _76->s32VdmChanMemSize, _76->stSynExtraData.s32SyntaxMemSize
	str	r3, [r5, #928]	@ tmp598, _76->stSynExtraData.s32BpdMemSize
	str	fp, [r5, #932]	@ _76->s32Vp8SegIdChanMemAddr, _76->stSynExtraData.s32Vp8SegIdMemAddr
	str	r10, [r5, #936]	@ _76->s32Vp8SegIdChanMemSize, _76->stSynExtraData.s32Vp8SegIdMemSize
	ldr	r3, [r4, #16]	@ D.43588, pstCfg_12(D)->s32ChanErrThr
	str	r3, [r5, #892]	@ D.43588, _76->stSynExtraData.s32OutErrThr
	ldr	r3, [r4, #16]	@ D.43588, pstCfg_12(D)->s32ChanErrThr
	str	r3, [r5, #888]	@ D.43588, _76->stSynExtraData.s32RefErrThr
	ldr	r3, [r4, #24]	@ pstCfg_12(D)->s32DecMode, pstCfg_12(D)->s32DecMode
	str	r3, [r5, #896]	@ pstCfg_12(D)->s32DecMode, _76->stSynExtraData.s32DecMode
	ldr	r3, [r4, #28]	@ D.43588, pstCfg_12(D)->s32DecOrderOutput
	str	r3, [r5, #900]	@ D.43588, _76->stSynExtraData.s32DecOrderOutput
	ldr	r3, [r4, #32]	@ D.43588, pstCfg_12(D)->s32DnrTfEnable
	str	r3, [r5, #904]	@ D.43588, _76->stSynExtraData.s32DnrTfEnable
	ldr	r3, [r4, #44]	@ D.43588, pstCfg_12(D)->s32VcmpEn
	str	r8, [r5, #1616]	@ tmp500, _76->stSynExtraData.s32DSDWaitFlag
	str	r3, [r5, #1400]	@ D.43588, _76->stSynExtraData.s32Compress_en
	ldr	r3, [r4, #60]	@ pstCfg_12(D)->s32SupportAllP, pstCfg_12(D)->s32SupportAllP
	sub	r3, r3, #1	@ D.43589, pstCfg_12(D)->s32SupportAllP,
	clz	r3, r3	@ D.43589, D.43589
	mov	r3, r3, lsr #5	@ D.43589, D.43589,
	str	r3, [r5, #1416]	@ D.43589, _76->stSynExtraData.s32SupportAllP
	ldr	r3, [r4, #64]	@ D.43588, pstCfg_12(D)->s32ModuleLowlyEnable
	str	r3, [r5, #1420]	@ D.43588, _76->stSynExtraData.s32ModuleLowlyEnable
	bl	memcpy	@
	add	r2, r5, #217088	@ tmp512, D.43587,
	str	r8, [r5, #908]	@ tmp500, _76->stSynExtraData.s32DnrDispOutEnable
	ldr	r3, [r5, #880]	@ _76->eVidStd, _76->eVidStd
	ldr	r2, [r2, #424]	@ _76->stSynCtx.eVidStd, _76->stSynCtx.eVidStd
	cmp	r2, r3	@ _76->stSynCtx.eVidStd, _76->eVidStd
	beq	.L856	@,
	mov	r0, r6	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	ldr	r0, [r9, r6, asl #2]	@ D.43587, s_pstVfmwChan
	cmp	r3, #18	@ pstCfg_12(D)->eVidStd,
	beq	.L914	@,
.L857:
	ldr	r2, [r0, #880]	@ _328->eVidStd, _328->eVidStd
	add	r3, r0, #217088	@ tmp523, D.43587,
	ldr	r8, .L916	@ tmp525,
	str	r2, [r3, #424]	@ _328->eVidStd, _328->stSynCtx.eVidStd
	ldr	r3, [r0, #248]	@ D.43588, _328->s32SdecMemAddr
	mov	r0, r3	@, D.43588
	str	r3, [sp, #16]	@ D.43588, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r7, r6, asl #2]	@ tmp526, s_pstVfmwChan
	ldr	r3, [r3, #252]	@ _139->s32SdecMemSize, _139->s32SdecMemSize
	str	r0, [sp, #20]	@, stMem.VirAddr
	add	r1, sp, #16	@,,
	mov	r0, r6	@, ChanID
	str	r3, [sp, #24]	@ _139->s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	r5, r0, #0	@ D.43585,
	bne	.L836	@,
	mov	r1, #16	@,
	add	r0, sp, #32	@ tmp599,,
	bl	__memzero	@
	ldr	r3, [r4]	@ D.43588, pstCfg_12(D)->eVidStd
	sub	r2, r3, #10	@ D.43586, D.43588,
	cmp	r2, #2	@ D.43586,
	bhi	.L860	@,
	ldr	r2, [r8, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L861	@,
.L863:
	ldr	r3, [r4, #4]	@ pstCfg_12(D)->StdExt.Vp6Ext.bReversed, pstCfg_12(D)->StdExt.Vp6Ext.bReversed
	and	r3, r3, #1	@ D.43597, pstCfg_12(D)->StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #32]	@ D.43597, DnrChanCfgArgs.s32MirrorEn
.L862:
	cmp	r3, #0	@ D.43597,
	ldr	r3, [r4, #44]	@ D.43588, pstCfg_12(D)->s32VcmpEn
	movne	r3, #0	@ tmp547,
	b	.L906	@
.L860:
	ldr	r3, [r4, #44]	@ D.43588, pstCfg_12(D)->s32VcmpEn
	strb	r5, [sp, #32]	@ D.43585, DnrChanCfgArgs.s32MirrorEn
.L906:
	ldr	r0, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
	ldr	ip, [r4, #48]	@ pstCfg_12(D)->s32WmEn, pstCfg_12(D)->s32WmEn
	ldr	r1, [r4, #52]	@ pstCfg_12(D)->s32VcmpWmStartLine, pstCfg_12(D)->s32VcmpWmStartLine
	ldr	lr, [r0, #1580]	@ _317->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _317->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r2, [r4, #56]	@ pstCfg_12(D)->s32VcmpWmEndLine, pstCfg_12(D)->s32VcmpWmEndLine
	strb	r3, [sp, #33]	@ tmp547, DnrChanCfgArgs.s32VcmpEn
	mov	r3, #1	@ tmp553,
	cmp	lr, r3	@ _317->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	strb	ip, [sp, #34]	@ pstCfg_12(D)->s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r1, [sp, #36]	@ pstCfg_12(D)->s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #40]	@ pstCfg_12(D)->s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	str	r3, [sp, #44]	@ tmp553, DnrChanCfgArgs.s32NeedConfigDnrChan
	beq	.L867	@,
	add	r1, sp, #32	@ tmp600,,
	mov	r0, r6	@, ChanID
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L836	@,
.L868:
	ldr	r2, .L916+8	@ tmp569,
	ldr	r3, .L916	@ ivtmp.522,
	add	r2, r2, r6, lsl #2	@ tmp572, tmp569, ChanID,
	ldr	ip, [r7, r6, asl #2]	@ tmp565, s_pstVfmwChan
	ldr	r1, .L916+12	@ ivtmp.527,
	add	lr, r3, #16	@ D.43586, ivtmp.522,
	ldr	r0, [r2, #236]	@ tmp571, s_SmIIS.pSmInstArray
	add	ip, ip, #180224	@ tmp567, tmp565,
	add	r2, r3, #3728	@ ivtmp.526, ivtmp.522,
	add	r0, r0, #163840	@ tmp575, tmp571,
	strb	r6, [ip, #1536]	@ ChanID, _147->FspInst.s32InstID
	str	r6, [r0, #2408]	@ ChanID, _150->InstID
.L871:
	ldr	r0, [r3], #4	@ D.43587, MEM[base: _210, offset: 0B]
	add	r2, r2, #4	@ ivtmp.526, ivtmp.526,
	add	r1, r1, #4	@ ivtmp.527, ivtmp.527,
	cmp	r0, #0	@ D.43587,
	streq	r0, [r2, #-4]	@ D.43587, MEM[base: _180, offset: 0B]
	ldrne	ip, [r0, #12]	@ D.43588, _152->s32Priority
	ldrne	r0, [r3, #-4]	@ MEM[base: _205, offset: 4294967292B], MEM[base: _205, offset: 4294967292B]
	strne	ip, [r2, #-4]	@ D.43588, MEM[base: _208, offset: 0B]
	ldrne	r0, [r0, #12]	@ D.43588, _155->s32Priority
	cmp	r3, lr	@ ivtmp.522, D.43586
	str	r0, [r1, #-4]	@ D.43587,
	bne	.L871	@,
	ldr	r0, .L916+16	@,
	bl	VDMDRV_SetPriority	@
	mov	r0, r6	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r5	@, D.43585
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L841:
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, [r5, #156]	@, MEM[(struct MEM_RECORD_S *)_33 + 152B].VirAddr
	bl	KernelMunmap	@
	ldr	r3, [r4]	@ D.43588, pstCfg_12(D)->eVidStd
	ldr	r1, [r5, #164]	@, MEM[(struct MEM_RECORD_S *)_33 + 152B].Length
	cmp	r3, #4	@ D.43588,
	cmpne	r3, #14	@, D.43588,
	ldr	r0, [r5, #160]	@, MEM[(struct MEM_RECORD_S *)_33 + 152B].PhyAddr
	beq	.L915	@,
	bl	KernelMmap	@
	mov	r8, r0	@ pVir,
.L851:
	ldr	r0, .L916+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
	ldr	r9, .L916	@ tmp413,
	cmp	r3, #0	@ D.43587,
	beq	.L847	@,
	cmp	r8, #0	@ pVir,
	beq	.L847	@,
	ldr	r2, [r3, #196]	@, _196->stChanMem_scd.Length
	ldr	r1, [r3, #188]	@, _196->stChanMem_scd.VirAddr
	ldr	r0, [r3, #192]	@, _196->stChanMem_scd.PhyAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L847	@,
	ldr	r3, [r9, r6, asl #2]	@ D.43587, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _271->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _271->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _271->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L847	@,
	ldr	r3, [r9, r6, asl #2]	@ D.43587, s_pstVfmwChan
	str	r8, [r5, #156]	@ pVir, MEM[(struct MEM_RECORD_S *)_33 + 152B].VirAddr
	ldr	r2, [r3, #196]	@ _276->stChanMem_scd.Length, _276->stChanMem_scd.Length
	str	r8, [r3, #188]	@ pVir, _276->stChanMem_scd.VirAddr
	add	r8, r8, r2	@ D.43599, pVir, _276->stChanMem_scd.Length
	str	r8, [r3, #172]	@ D.43599, _276->stChanMem_vdh.VirAddr
	ldr	r2, [r5, #164]	@, MEM[(struct MEM_RECORD_S *)_33 + 152B].Length
	ldr	r1, [r5, #156]	@, MEM[(struct MEM_RECORD_S *)_33 + 152B].VirAddr
	ldr	r0, [r5, #160]	@, MEM[(struct MEM_RECORD_S *)_33 + 152B].PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	bne	.L847	@,
	ldr	r3, [r9, r6, asl #2]	@ D.43587, s_pstVfmwChan
	ldr	r2, [r3, #196]	@, _284->stChanMem_scd.Length
	ldr	r1, [r3, #188]	@, _284->stChanMem_scd.VirAddr
	ldr	r0, [r3, #192]	@, _284->stChanMem_scd.PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	bne	.L847	@,
	ldr	r3, [r9, r6, asl #2]	@ D.43587, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _289->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _289->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _289->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L873	@,
.L847:
	bl	vfmw_dprint_nothing	@
.L836:
	mvn	r5, #0	@ D.43585,
	mov	r0, r5	@, D.43585
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L913:
	add	r1, sp, #15	@ tmp597,,
	mov	r0, r6	@, ChanID
	mov	r3, #1	@ tmp487,
	strb	r3, [sp, #15]	@ tmp487, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L855	@
.L856:
	ldr	r0, [r9, r6, asl #2]	@ D.43587, s_pstVfmwChan
	b	.L857	@
.L861:
	cmp	r3, #12	@ D.43588,
	beq	.L863	@,
	ldr	r3, [r4, #4]	@ pstCfg_12(D)->StdExt.Vp6Ext.bReversed, pstCfg_12(D)->StdExt.Vp6Ext.bReversed
	eor	r3, r3, #1	@ tmp538, pstCfg_12(D)->StdExt.Vp6Ext.bReversed,
	and	r3, r3, #1	@ D.43597, tmp538,
	strb	r3, [sp, #32]	@ D.43597, DnrChanCfgArgs.s32MirrorEn
	b	.L862	@
.L843:
	ldr	r0, [r5, #176]	@, MEM[(struct MEM_RECORD_S *)_33 + 168B].PhyAddr
	bl	KernelMmap	@
	ldr	r1, [r5, #196]	@ D.43588, MEM[(struct MEM_RECORD_S *)_33 + 184B].Length
	strb	r8, [r5, #168]	@ tmp361, MEM[(struct MEM_RECORD_S *)_33 + 168B].IsCached
	cmp	r1, #0	@ D.43588,
	mov	r10, r0	@ pVir_vdh,
	beq	.L875	@,
	ldr	r0, [r5, #192]	@, MEM[(struct MEM_RECORD_S *)_33 + 184B].PhyAddr
	bl	KernelMmap	@
	strb	r8, [r5, #184]	@ tmp361, MEM[(struct MEM_RECORD_S *)_33 + 184B].IsCached
	mov	r9, r0	@ pVir_scd,
	b	.L844	@
.L915:
	bl	KernelMmapCache	@
	mov	r8, r0	@ pVir,
	b	.L851	@
.L910:
	ldr	r0, [r5, #188]	@, MEM[(struct MEM_RECORD_S *)_33 + 184B].VirAddr
	bl	KernelMunmap	@
	b	.L842	@
.L853:
	ldr	r3, [r7, r6, asl #2]	@ tmp452, s_pstVfmwChan
	ldr	r3, [r3, #236]	@ D.43588, _215->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.43588
	str	r3, [sp, #16]	@ D.43588, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
	ldr	ip, [r2, #240]	@ _218->s32OffLineDNRMemSize, _218->s32OffLineDNRMemSize
	ldr	r3, [r2, #1460]	@, _218->stSynExtraData.stChanOption.s32MaxHeight
	ldr	r2, [r2, #1456]	@, _218->stSynExtraData.stChanOption.s32MaxWidth
	str	r0, [sp, #20]	@, stMem.VirAddr
	add	r1, sp, #16	@,,
	mov	r0, r6	@, ChanID
	str	ip, [sp, #24]	@ _218->s32OffLineDNRMemSize, stMem.Length
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	beq	.L854	@,
	b	.L847	@
.L909:
	bl	vfmw_dprint_nothing	@
	mov	r0, r5	@, D.43585
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L908:
	add	r0, sp, #48	@,,
	bl	REAL9DEC_Support	@
	ldr	r3, [sp, #48]	@ D.43588, s32supportFlag
	cmp	r3, #0	@ D.43588,
	bne	.L872	@,
	b	.L836	@
.L867:
	add	r0, r0, #217088	@, D.43587,
	add	r1, sp, #32	@ tmp601,,
	mov	r2, #16	@,
	add	r0, r0, #360	@,,
	bl	memcpy	@
	b	.L868	@
.L833:
	bl	vfmw_dprint_nothing	@
	mvn	r5, #0	@ D.43585,
	mov	r0, r5	@, D.43585
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L914:
	ldr	r3, [r0, #1448]	@ MEM[(struct VDEC_CHAN_OPTION_S *)_119 + 1444B].Purpose, MEM[(struct VDEC_CHAN_OPTION_S *)_119 + 1444B].Purpose
	ldr	ip, [r0, #252]	@ _119->s32SdecMemSize, _119->s32SdecMemSize
	cmp	r3, #2	@ MEM[(struct VDEC_CHAN_OPTION_S *)_119 + 1444B].Purpose,
	ldr	r3, [r0, #248]	@ _119->s32SdecMemAddr, _119->s32SdecMemAddr
	ldrne	r1, [r0, #1456]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_119 + 1444B].s32MaxWidth
	ldrne	r2, [r0, #1460]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_119 + 1444B].s32MaxHeight
	ldreq	r1, [r0, #1508]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_119 + 1444B].s32SlotWidth
	ldreq	r2, [r0, #1512]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_119 + 1444B].s32SlotHeight
	mov	r0, r6	@, ChanID
	str	ip, [sp]	@ _119->s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L833	@,
	ldr	r0, [r7, r6, asl #2]	@ D.43587, s_pstVfmwChan
	b	.L857	@
.L907:
	add	r0, sp, #48	@,,
	bl	REAL8DEC_Support	@
	ldr	r3, [sp, #48]	@ s32supportFlag, s32supportFlag
	cmp	r3, #0	@ s32supportFlag,
	beq	.L836	@,
	ldr	r3, [r4]	@ D.43588, pstCfg_12(D)->eVidStd
	b	.L835	@
.L912:
	ldr	r1, [r5, #188]	@, MEM[(struct MEM_RECORD_S *)_33 + 184B].VirAddr
	ldr	r0, [r5, #192]	@, MEM[(struct MEM_RECORD_S *)_33 + 184B].PhyAddr
	bl	MEM_DelMemRecord	@
	cmp	r0, #0	@,
	bne	.L847	@,
	str	r9, [r5, #188]	@ pVir_scd, MEM[(struct MEM_RECORD_S *)_33 + 184B].VirAddr
	mov	r1, r9	@, pVir_scd
	ldr	r2, [r5, #196]	@, MEM[(struct MEM_RECORD_S *)_33 + 184B].Length
	ldr	r0, [r5, #192]	@, MEM[(struct MEM_RECORD_S *)_33 + 184B].PhyAddr
	bl	MEM_AddMemRecord	@
	cmp	r0, #0	@,
	beq	.L873	@,
	b	.L847	@
.L911:
	ldr	r0, [r5, #192]	@, MEM[(struct MEM_RECORD_S *)_33 + 184B].PhyAddr
	bl	KernelMmapCache	@
	strb	r8, [r5, #184]	@ tmp364, MEM[(struct MEM_RECORD_S *)_33 + 184B].IsCached
	mov	r9, r0	@ pVir_scd,
	b	.L844	@
.L917:
	.align	2
.L916:
	.word	.LANCHOR0
	.word	.LANCHOR0+3720
	.word	s_SmIIS
	.word	g_ChanCtx
	.word	.LANCHOR0+3728
	.fnend
	.size	VCTRL_ConfigChan, .-VCTRL_ConfigChan
	.align	2
	.global	VCTRL_GetMemSize_onFramePath
	.type	VCTRL_GetMemSize_onFramePath, %function
VCTRL_GetMemSize_onFramePath:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r1, #64]	@ D.43619, pChanOption_4(D)->s32SlotWidth
	cmp	r0, #0	@ D.43619,
	beq	.L919	@,
	ldr	r3, [r1, #68]	@ D.43619, pChanOption_4(D)->s32SlotHeight
	cmp	r3, #0	@ D.43619,
	beq	.L919	@,
	mul	r3, r3, r0	@ D.43619, D.43619, D.43619
	ldr	lr, [r1, #60]	@ pChanOption_4(D)->s32DisplayFrameNum, pChanOption_4(D)->s32DisplayFrameNum
	movw	ip, #14840	@ tmp128,
	mov	r1, #0	@ tmp127,
	movt	ip, 8	@ tmp128,
	mov	r0, r1	@ D.43618, tmp127
	stmib	r2, {r1, ip}	@ pDetailMemSize,,
	str	r1, [r2, #12]	@ tmp127, pDetailMemSize_13(D)->PmvDetailMem
	mla	r3, lr, r3, r3	@ D.43619, pChanOption_4(D)->s32DisplayFrameNum, D.43619, D.43619
	mov	r3, r3, asl #1	@ D.43619, D.43619,
	str	r3, [r2]	@ D.43619, pDetailMemSize_13(D)->VdhDetailMem
	ldmfd	sp!, {r4, pc}	@
.L919:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43618,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_GetMemSize_onFramePath, .-VCTRL_GetMemSize_onFramePath
	.align	2
	.global	VCTRL_VarifyOption_onDecode
	.type	VCTRL_VarifyOption_onDecode, %function
VCTRL_VarifyOption_onDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r0, #32]	@ pChanOption_4(D)->s32MaxRefFrameNum, pChanOption_4(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxRefFrameNum,
	blt	.L927	@,
	ldr	r3, [r0, #12]	@ pChanOption_4(D)->s32MaxWidth, pChanOption_4(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxWidth,
	ble	.L927	@,
	ldr	r3, [r0, #16]	@ pChanOption_4(D)->s32MaxHeight, pChanOption_4(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxHeight,
	ble	.L927	@,
	ldr	r3, [r0, #56]	@ pChanOption_4(D)->s32SCDBufSize, pChanOption_4(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_4(D)->s32SCDBufSize,
	blt	.L927	@,
	ldr	r3, [r0, #44]	@ pChanOption_4(D)->s32SupportH264, pChanOption_4(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_4(D)->s32SupportH264,
	beq	.L932	@,
.L930:
	mov	r0, #0	@ D.43622,
	ldmfd	sp!, {r4, pc}	@
.L932:
	ldr	r3, [r0, #20]	@ pChanOption_4(D)->s32MaxSliceNum, pChanOption_4(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSliceNum,
	ble	.L927	@,
	ldr	r3, [r0, #24]	@ pChanOption_4(D)->s32MaxSpsNum, pChanOption_4(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSpsNum,
	ble	.L927	@,
	ldr	r3, [r0, #28]	@ pChanOption_4(D)->s32MaxPpsNum, pChanOption_4(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxPpsNum,
	bgt	.L930	@,
.L927:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43622,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	VCTRL_VarifyOption_onDecode, .-VCTRL_VarifyOption_onDecode
	.align	2
	.global	VCTRL_GetChanPmvSize
	.type	VCTRL_GetChanPmvSize, %function
VCTRL_GetChanPmvSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L937	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ FrmNum, FrmNum
	ldr	ip, [ip, #100]	@ D.43627, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.43627,
	mvneq	r0, #0	@ D.43626,
	beq	.L934	@,
	mov	r0, r1	@ Width, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.43627
.L934:
	mul	r4, r4, r0	@ D.43628, FrmNum, D.43626
	str	r4, [r5]	@ D.43628, *pChanPmvSize_11(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L938:
	.align	2
.L937:
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VCTRL_GetChanPmvSize, .-VCTRL_GetChanPmvSize
	.align	2
	.global	VCTRL_GetMemSize_onDecode
	.type	VCTRL_GetMemSize_onDecode, %function
VCTRL_GetMemSize_onDecode:
	.fnstart
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, r1	@, pChanOption
	.pad #444
	sub	sp, sp, #444	@,,
	mov	r4, r1	@ pChanOption, pChanOption
	mov	r5, r2	@ pDetailMemSize, pDetailMemSize
	bl	VCTRL_VarifyOption_onDecode	@
	subs	r6, r0, #0	@ D.43631,
	bne	.L947	@,
	ldr	r3, [r4, #40]	@ pChanOption_7(D)->s32SupportBFrame, pChanOption_7(D)->s32SupportBFrame
	ldr	r10, [r4, #32]	@ D.43632, pChanOption_7(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_7(D)->s32SupportBFrame,
	moveq	r7, #1	@ PmvNum,
	addeq	fp, r10, r7	@ D.43631, D.43632,
	bne	.L950	@,
.L942:
	ldr	r9, .L952	@ tmp180,
	ldr	r0, [r4, #12]	@ D.43632, pChanOption_7(D)->s32MaxWidth
	ldr	r8, [r4, #60]	@ D.43632, pChanOption_7(D)->s32DisplayFrameNum
	ldr	r2, [r9, #100]	@ D.43635, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	ldr	r1, [r4, #16]	@ D.43632, pChanOption_7(D)->s32MaxHeight
	cmp	r2, #0	@ D.43635,
	mvneq	r0, #0	@ D.43631,
	beq	.L943	@,
	blx	r2	@ D.43635
.L943:
	mul	r3, r0, fp	@ ChanPmvSize, D.43631, D.43631
	str	r3, [r5, #12]	@ ChanPmvSize, pDetailMemSize_23(D)->PmvDetailMem
	ldr	ip, [r9, #36]	@ D.43633, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.43633,
	beq	.L945	@,
	ldr	r3, [r4, #16]	@ pChanOption_7(D)->s32MaxHeight, pChanOption_7(D)->s32MaxHeight
	add	r1, sp, #24	@ tmp156,,
	ldr	r2, [r4, #12]	@ pChanOption_7(D)->s32MaxWidth, pChanOption_7(D)->s32MaxWidth
	mov	r0, #64	@ tmp155,
	str	r1, [sp, #16]	@ tmp156,
	add	r8, r8, r10	@ FrameNum, D.43632, D.43632
	str	r0, [sp, #20]	@ tmp155,
	mov	r1, #0	@ tmp158,
	mvn	r0, #0	@ tmp157,
	str	r1, [sp, #8]	@ tmp158,
	str	r0, [sp, #12]	@ tmp157,
	mvn	r1, #-2147483648	@,
	str	r8, [sp, #4]	@ FrameNum,
	mov	r0, #1	@,
	str	r7, [sp]	@ PmvNum,
	blx	ip	@ D.43633
	cmp	r0, #0	@,
	bne	.L945	@,
	ldr	r3, [sp, #28]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #47104	@ D.43632, MemArrange.TotalMemUsed,
	add	r3, r3, #16	@ D.43632, D.43632,
	str	r3, [r5]	@ D.43632, pDetailMemSize_23(D)->VdhDetailMem
	ldr	r3, [r4, #56]	@ pChanOption_7(D)->s32SCDBufSize, pChanOption_7(D)->s32SCDBufSize
	add	r3, r3, #32768	@ D.43632, pChanOption_7(D)->s32SCDBufSize,
	str	r3, [r5, #4]	@ D.43632, pDetailMemSize_23(D)->ScdDetailMem
	ldr	r3, [r4, #44]	@ D.43632, pChanOption_7(D)->s32SupportH264
	cmp	r3, #0	@ D.43632,
	beq	.L951	@,
	ldr	r1, [r4, #24]	@ pChanOption_7(D)->s32MaxSpsNum, pChanOption_7(D)->s32MaxSpsNum
	mov	ip, #4000	@ tmp171,
	ldr	r0, [r4, #20]	@ pChanOption_7(D)->s32MaxSliceNum, pChanOption_7(D)->s32MaxSliceNum
	movw	lr, #4060	@ tmp168,
	ldr	r2, [r4, #28]	@ pChanOption_7(D)->s32MaxPpsNum, pChanOption_7(D)->s32MaxPpsNum
	movw	r3, #14840	@ D.43634,
	mul	r1, ip, r1	@ D.43634, tmp171, pChanOption_7(D)->s32MaxSpsNum
	movt	r3, 8	@ D.43634,
	mla	r1, lr, r0, r1	@ D.43634, tmp168, pChanOption_7(D)->s32MaxSliceNum, D.43634
	mov	r0, #2208	@ tmp177,
	add	r3, r1, r3	@ D.43634, D.43634, D.43634
	mla	r3, r0, r2, r3	@ D.43634, tmp177, pChanOption_7(D)->s32MaxPpsNum, D.43634
	str	r3, [r5, #8]	@ D.43634, pDetailMemSize_23(D)->ChanCtxDetailMem
.L940:
	mov	r0, r6	@, D.43631
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L950:
	add	r7, r10, #1	@ PmvNum, D.43632,
	cmp	r7, #17	@ PmvNum,
	mov	fp, r7	@ D.43631, PmvNum
	movge	r7, #17	@ PmvNum,
	b	.L942	@
.L951:
	mov	r6, r3	@ D.43631, D.43632
	movw	r2, #14840	@ tmp165,
	movt	r2, 8	@ tmp165,
	mov	r0, r6	@, D.43631
	str	r2, [r5, #8]	@ tmp165, pDetailMemSize_23(D)->ChanCtxDetailMem
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L945:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ D.43631,
	mov	r0, r6	@, D.43631
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L947:
	mvn	r6, #0	@ D.43631,
	b	.L940	@
.L953:
	.align	2
.L952:
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VCTRL_GetMemSize_onDecode, .-VCTRL_GetMemSize_onDecode
	.align	2
	.global	VCTRL_GetChanMemSizeWithOption
	.type	VCTRL_GetChanMemSizeWithOption, %function
VCTRL_GetChanMemSizeWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #2	@ flag,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	beq	.L955	@,
	ldr	r4, .L967	@ tmp132,
	ldr	ip, [r1, #32]	@ pChanOption_8(D)->s32MaxRefFrameNum, pChanOption_8(D)->s32MaxRefFrameNum
	ldr	lr, [r1, #60]	@ pChanOption_8(D)->s32DisplayFrameNum, pChanOption_8(D)->s32DisplayFrameNum
	ldr	r5, [r4, #3744]	@ extra_ref, extra_ref
	ldr	r4, [r4, #3748]	@ extra_disp, extra_disp
	add	ip, ip, r5	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum, extra_ref
	cmp	ip, #16	@ TempRefNum,
	add	lr, lr, r4	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum, extra_disp
	movge	ip, #16	@ TempRefNum,
	orrs	r4, ip, lr	@ tmp155, TempRefNum, TempDispNum
	bmi	.L958	@,
	clz	r3, r3	@ tmp153, flag
	cmp	r0, #25	@ eCapLevel,
	str	ip, [r1, #32]	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum
	mov	r3, r3, lsr #5	@ tmp153, tmp153,
	moveq	r3, #0	@ tmp153,
	cmp	r3, #0	@ tmp153,
	str	lr, [r1, #60]	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum
	bne	.L958	@,
.L955:
	ldr	r3, [r1, #4]	@ D.43641, pChanOption_8(D)->Purpose
	cmp	r3, #2	@ D.43641,
	bhi	.L958	@,
	beq	.L965	@,
	cmp	r3, #1	@ D.43641,
	beq	.L966	@,
.L957:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L965:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_GetMemSize_onFramePath	@
.L966:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_GetMemSize_onDecode	@
.L958:
	bl	vfmw_dprint_nothing	@
	b	.L957	@
.L968:
	.align	2
.L967:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanMemSizeWithOption, .-VCTRL_GetChanMemSizeWithOption
	.align	2
	.global	VCTRL_GetChanMemSize
	.type	VCTRL_GetChanMemSize, %function
VCTRL_GetChanMemSize:
	.fnstart
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0, asl #5	@ tmp306, eCapLevel,
	ldr	fp, .L995	@ tmp304,
	mov	r5, r0, asl #2	@ tmp305, eCapLevel,
	mov	r7, r0	@ eCapLevel, eCapLevel
	rsb	r0, r5, r3	@ tmp165, tmp305, tmp306
	add	r0, fp, r0	@ tmp166, tmp304, tmp165
	mov	r8, r2	@ ScdMemSize, ScdMemSize
	.pad #460
	sub	sp, sp, #460	@,,
	sub	ip, r7, #18	@ tmp189, eCapLevel,
	ldr	r2, [r0, #16]	@ nMiddleFrame, CapItem
	mov	r9, r1	@ VdmMemSize, VdmMemSize
	ldr	r10, [r0, #12]	@ nMinFrame, CapItem
	ldr	r4, [r0, #8]	@ nPmv, CapItem
	str	r2, [sp, #24]	@ nMiddleFrame, %sfp
	ldr	r2, [r0, #20]	@ nFluentFrame, CapItem
	str	r2, [sp, #28]	@ nFluentFrame, %sfp
	cmp	ip, #7	@ tmp189,
	ldrls	pc, [pc, ip, asl #2]	@ tmp189
	b	.L970	@
.L972:
	.word	.L983
	.word	.L983
	.word	.L983
	.word	.L983
	.word	.L983
	.word	.L973
	.word	.L973
	.word	.L973
.L983:
	mov	r1, #3	@ MinDnrFspNum,
.L971:
	ldr	r0, .L995+4	@ tmp303,
	rsb	r1, r1, r10	@ s32MaxRefFrameNum, MinDnrFspNum, nMinFrame
	cmp	r1, #15	@ s32MaxRefFrameNum,
	ldr	r6, [r0, #3744]	@ extra_ref, extra_ref
	bic	r6, r6, r6, asr #31	@ extra_ref_tmp, extra_ref
	str	r6, [r0, #3744]	@ extra_ref_tmp, extra_ref
	movgt	r6, #0	@ extra_ref_tmp,
	bgt	.L974	@,
	add	r1, r1, r6	@ D.43647, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r1, #16	@ D.43647,
	rsbgt	r1, r1, #16	@ D.43647, D.43647,
	addgt	r6, r6, r1	@ extra_ref_tmp, extra_ref_tmp, D.43647
.L974:
	add	ip, r4, r6	@ TempPmv, nPmv, extra_ref_tmp
	ldr	r1, [r0, #3748]	@ D.43647, extra_disp
	cmp	ip, #0	@ TempPmv,
	ble	.L993	@,
	cmp	ip, #17	@ TempPmv,
	movlt	r4, ip	@ nPmv, TempPmv
	movge	r4, #17	@ nPmv,
.L976:
	cmp	r7, #23	@ eCapLevel,
	bhi	.L977	@,
	ldr	r2, [sp, #24]	@ nMiddleFrame, %sfp
	add	r6, r6, r1	@ D.43647, extra_ref_tmp, D.43647
	add	r1, r6, r10	@ nMinFrame, D.43647, nMinFrame
	add	r0, r2, r6	@ nMiddleFrame, nMiddleFrame, D.43647
	ldr	r2, [sp, #28]	@ nFluentFrame, %sfp
	cmp	r1, #0	@ nMinFrame,
	cmpgt	r0, #0	@, nMiddleFrame,
	add	r6, r2, r6	@ nFluentFrame, nFluentFrame, D.43647
	movle	ip, #1	@ tmp199,
	movgt	ip, #0	@ tmp199,
	cmp	r6, #0	@ nFluentFrame,
	orrle	ip, ip, #1	@,, tmp205, tmp199
	cmp	ip, #0	@ tmp205,
	streq	r6, [sp, #28]	@ nFluentFrame, %sfp
	streq	r0, [sp, #24]	@ nMiddleFrame, %sfp
	moveq	r10, r1	@ nMinFrame, nMinFrame
	bne	.L994	@,
.L977:
	cmp	r7, #32	@ eCapLevel,
	bhi	.L981	@,
	ldr	r7, .L995+8	@ tmp206,
	ldr	ip, [r7, #36]	@ D.43649, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.43649,
	beq	.L981	@,
	rsb	r5, r5, r3	@ tmp211, tmp305, tmp306
	str	r10, [sp, #4]	@ nMinFrame,
	add	r6, fp, r5	@ tmp212, tmp304, tmp211
	str	r4, [sp]	@ nPmv,
	ldr	r2, [fp, r5]	@ tmp221, CapItem
	mov	r1, #64	@ tmp311,
	ldr	r3, [r6, #4]	@ tmp214, CapItem
	add	fp, sp, #40	@ tmp223,,
	str	r1, [sp, #20]	@ tmp311,
	mov	r0, #0	@ tmp225,
	mvn	r10, #0	@ tmp224,
	str	r0, [sp, #8]	@ tmp225,
	str	fp, [sp, #16]	@ tmp223,
	mvn	r1, #-2147483648	@,
	str	r10, [sp, #12]	@ tmp224,
	mov	r0, #1	@,
	blx	ip	@ D.43649
	cmp	r0, #0	@ ret
	bne	.L981	@,
	ldr	r3, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #47104	@ D.43647, MemArrange.TotalMemUsed,
	add	r3, r3, #16	@ D.43647, D.43647,
	str	r3, [r9]	@ D.43647, *VdmMemSize_52(D)
	ldr	r3, [r6, #24]	@ tmp237, CapItem
	add	r3, r3, #32768	@ D.43647, tmp237,
	str	r3, [r8]	@ D.43647, *ScdMemSize_60(D)
	ldr	ip, [r7, #36]	@ D.43649, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.43649,
	beq	.L981	@,
	ldr	r2, .L995	@ tmp312,
	mov	lr, #64	@ tmp313,
	ldr	r3, [r6, #4]	@ tmp246, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r2, r5]	@ tmp253, CapItem
	str	lr, [sp, #20]	@ tmp313,
	ldr	lr, [sp, #24]	@ nMiddleFrame, %sfp
	str	r0, [sp, #8]	@ ret,
	mov	r0, #1	@,
	str	fp, [sp, #16]	@ tmp223,
	stmia	sp, {r4, lr}	@,,
	str	r10, [sp, #12]	@ tmp224,
	blx	ip	@ D.43649
	subs	lr, r0, #0	@ ret,
	bne	.L981	@,
	ldr	r3, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #47104	@ D.43647, MemArrange.TotalMemUsed,
	add	r3, r3, #16	@ D.43647, D.43647,
	str	r3, [r9, #4]	@ D.43647, MEM[(HI_S32 *)VdmMemSize_52(D) + 4B]
	ldr	r3, [r6, #24]	@ tmp269, CapItem
	add	r3, r3, #32768	@ D.43647, tmp269,
	str	r3, [r8, #4]	@ D.43647, MEM[(HI_S32 *)ScdMemSize_60(D) + 4B]
	ldr	ip, [r7, #36]	@ D.43649, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.43649,
	beq	.L981	@,
	ldr	r3, .L995	@ tmp315,
	mvn	r1, #-2147483648	@,
	mov	r0, #1	@,
	ldr	r2, [r3, r5]	@ tmp285, CapItem
	mov	r5, #64	@ tmp316,
	ldr	r3, [r6, #4]	@ tmp278, CapItem
	str	lr, [sp, #8]	@ ret,
	ldr	lr, [sp, #28]	@ nFluentFrame, %sfp
	str	r5, [sp, #20]	@ tmp316,
	str	fp, [sp, #16]	@ tmp223,
	str	r10, [sp, #12]	@ tmp224,
	stmia	sp, {r4, lr}	@,,
	blx	ip	@ D.43649
	cmp	r0, #0	@ ret
	bne	.L981	@,
	ldr	r3, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #47104	@ D.43647, MemArrange.TotalMemUsed,
	add	r3, r3, #16	@ D.43647, D.43647,
	str	r3, [r9, #8]	@ D.43647, MEM[(HI_S32 *)VdmMemSize_52(D) + 8B]
	ldr	r3, [r6, #24]	@ tmp301, CapItem
	add	r3, r3, #32768	@ D.43647, tmp301,
	str	r3, [r8, #8]	@ D.43647, MEM[(HI_S32 *)ScdMemSize_60(D) + 8B]
.L979:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L973:
	mov	r1, #1	@ MinDnrFspNum,
	b	.L971	@
.L994:
	str	r3, [sp, #32]	@ tmp306, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #32]	@ tmp306, %sfp
	b	.L977	@
.L970:
	mov	r1, #6	@ MinDnrFspNum,
	b	.L971	@
.L993:
	str	r3, [sp, #36]	@ tmp306, %sfp
	str	r1, [sp, #32]	@ D.43647, %sfp
	bl	vfmw_dprint_nothing	@
	cmp	r4, #17	@ nPmv,
	movge	r4, #17	@ nPmv,
	ldr	r1, [sp, #32]	@ D.43647, %sfp
	ldr	r3, [sp, #36]	@ tmp306, %sfp
	b	.L976	@
.L981:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43646,
	b	.L979	@
.L996:
	.align	2
.L995:
	.word	CapItem
	.word	.LANCHOR0
	.word	g_vdm_hal_fun_ptr
	.fnend
	.size	VCTRL_GetChanMemSize, .-VCTRL_GetChanMemSize
	.align	2
	.global	CloseDrivers
	.type	CloseDrivers, %function
CloseDrivers:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r5, [r0, #12]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].Length
	ldr	r6, [r0, #8]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r0, #4]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
	beq	.L998	@,
	ldr	r3, .L1033	@ tmp141,
	ldr	r3, [r3, #32]	@ D.43655, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.43655,
	beq	.L1028	@,
	mov	r0, #0	@,
	blx	r3	@ D.43655
.L1001:
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
.L998:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].Length
	ldr	r6, [r4, #24]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #20]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	bne	.L1029	@,
.L1002:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].Length
	ldr	r6, [r4, #40]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #36]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].VirAddr
	bne	.L1030	@,
.L1003:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].Length
	ldr	r6, [r4, #72]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #68]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].VirAddr
	bne	.L1031	@,
.L1004:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].Length
	ldr	r6, [r4, #56]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #52]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].VirAddr
	bne	.L1032	@,
.L1005:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #92]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].Length
	ldr	r6, [r4, #88]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #84]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].VirAddr
	beq	.L1006	@,
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L1006:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r2, .L1033+4	@,
	ldr	r1, .L1033+8	@,
	mov	r0, #70	@,
	bl	osal_free_irq	@
	ldr	r2, .L1033+4	@,
	ldr	r1, .L1033+12	@,
	mov	r0, #73	@,
	bl	osal_free_irq	@
	ldr	r2, .L1033+4	@,
	ldr	r1, .L1033+16	@,
	mov	r0, #93	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1032:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #48	@, pstDrvMem,
	bl	__memzero	@
	b	.L1005	@
.L1031:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #64	@, pstDrvMem,
	bl	__memzero	@
	b	.L1004	@
.L1030:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #32	@, pstDrvMem,
	bl	__memzero	@
	b	.L1003	@
.L1029:
	bl	SM_CloseSCDDrv	@
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, r4, r1	@, pstDrvMem,
	bl	__memzero	@
	b	.L1002	@
.L1028:
	bl	vfmw_dprint_nothing	@
	b	.L1001	@
.L1034:
	.align	2
.L1033:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+3752
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.fnend
	.size	CloseDrivers, .-CloseDrivers
	.align	2
	.global	OpenDrivers
	.type	OpenDrivers, %function
OpenDrivers:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r4, r0	@ pstDrvMem, pstDrvMem
	ldr	r7, .L1073	@ tmp219,
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r0, #0	@,
	add	r2, r4, #32	@, pstDrvMem,
	movt	r0, 4115	@,
	mov	r1, #4096	@,
	ldr	r3, [r7]	@ __stack_chk_guard, __stack_chk_guard
	str	r3, [sp, #28]	@ __stack_chk_guard, D.43680
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L1036	@,
	ldr	r2, [r4, #44]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].Length
	add	r6, r4, #64	@ __p, pstDrvMem,
	ldr	r1, [r4, #36]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].VirAddr
	ldr	r0, [r4, #40]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmReg[0].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, #0	@,
	mov	r2, r6	@, __p
	movt	r0, 4116	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L1069	@,
	ldr	r5, .L1073+4	@ tmp167,
	ldr	r3, [r5, #16]	@ D.43676, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.43676,
	beq	.L1069	@,
	blx	r3	@ D.43676
	cmp	r0, #0	@,
	bne	.L1069	@,
	ldr	r2, [r4, #76]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 64B].Length
	add	r8, r4, #48	@ __p, pstDrvMem,
	ldr	r1, [r4, #68]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 64B].VirAddr
	ldr	r0, [r4, #72]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 64B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, #49152	@,
	mov	r2, r8	@, __p
	movt	r0, 4115	@,
	mov	r1, #4096	@,
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L1049	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #20600	@,
	mov	r2, r8	@, __p
	mov	r1, #4096	@,
	movt	r0, 4127	@,
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.43675,
	bne	.L1049	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.43675
	ldr	r2, .L1073+8	@,
	mov	r1, #20	@,
	add	r0, sp, #8	@ tmp220,,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.43676, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.43676,
	beq	.L1045	@,
	blx	r3	@ D.43676
	subs	r2, r0, #0	@ Size,
	ble	.L1045	@,
	str	r6, [sp]	@ D.43675,
	mov	r1, r6	@, D.43675
	add	r0, sp, #8	@ tmp221,,
	mov	r3, r4	@, pstDrvMem
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1049	@,
	ldr	r2, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.43679, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.43679,
	beq	.L1049	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	blx	r3	@ D.43679
	subs	r5, r0, #0	@ D.43675,
	bne	.L1049	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ __p, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r5	@, D.43675
	mov	r3, r6	@, __p
	mov	r2, r0	@,
	str	r5, [sp]	@ D.43675,
	ldr	r0, .L1073+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1069	@,
	ldr	r2, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].Length
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r3, #20600	@,
	mov	r2, #49152	@,
	movt	r3, 4127	@,
	movt	r2, 4115	@,
	ldr	r1, [r4, #28]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].Length
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 16B].PhyAddr
	bl	SM_OpenSCDDrv	@
	cmp	r0, #0	@,
	bne	.L1069	@,
	ldr	r5, .L1073+16	@ tmp203,
	mov	r2, #128	@,
	ldr	r3, .L1073+20	@,
	mov	r0, #70	@,
	ldr	r1, .L1073+24	@,
	str	r5, [sp]	@ tmp203,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L1069	@,
	str	r5, [sp]	@ tmp203,
	mov	r2, #128	@,
	ldr	r3, .L1073+28	@,
	mov	r0, #73	@,
	ldr	r1, .L1073+32	@,
	bl	osal_request_irq	@
	subs	r8, r0, #0	@ D.43675,
	bne	.L1069	@,
	str	r5, [sp]	@ tmp203,
	mov	r2, #128	@,
	ldr	r3, .L1073+36	@,
	mov	r0, #93	@,
	ldr	r1, .L1073+40	@,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.43674
	bne	.L1071	@,
.L1039:
	ldr	r2, [sp, #28]	@ D.43680, D.43680
	ldr	r3, [r7]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.43680, __stack_chk_guard
	bne	.L1072	@,
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1071:
	bl	DNR_Close	@
	mov	r0, r8	@ D.43674, D.43675
	b	.L1039	@
.L1069:
	mov	r0, r6	@, __p
.L1068:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.43674,
	b	.L1039	@
.L1045:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L1049:
	mov	r0, r8	@, __p
	b	.L1068	@
.L1036:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.43674,
	b	.L1039	@
.L1072:
	bl	__stack_chk_fail	@
.L1074:
	.align	2
.L1073:
	.word	__stack_chk_guard
	.word	g_vdm_hal_fun_ptr
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR0+3752
	.word	.LC0
	.word	VCTRL_Isr_0
	.word	.LC1
	.word	VCTRL_Scd_Isr
	.word	.LC2
	.word	VCTRL_Dnr_Isr
	.fnend
	.size	OpenDrivers, .-OpenDrivers
	.align	2
	.global	VCTRL_OpenVfmw
	.type	VCTRL_OpenVfmw, %function
VCTRL_OpenVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r5, .L1111	@ tmp290,
	ldr	r4, [r5, #16]	@ D.43699, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.43699,
	bne	.L1096	@,
	ldr	r7, .L1111+4	@ tmp289,
	mov	r2, #1024	@,
	mov	r6, r0	@ event_report, event_report
	ldr	r0, .L1111+8	@,
	str	r4, [sp, #4]	@ D.43699, p
	ldr	r1, [r7]	@, saved_command_line
	bl	strlcpy	@
	ldr	r1, .L1111+12	@,
	ldr	r0, .L1111+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.43697,
	str	r0, [sp, #4]	@ D.43697, p
	beq	.L1078	@,
	ldr	r1, .L1111+16	@,
	add	r0, sp, #4	@ tmp293,,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1098	@,
	add	r0, sp, #4	@ tmp294,,
	ldr	r1, .L1111+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1108	@,
	mov	r2, r4	@, D.43699
	mov	r1, r4	@, D.43699
	bl	simple_strtol	@
	mov	r3, r0	@ D.43696, D.43700
	str	r0, [r5, #3744]	@ D.43700, extra_ref
.L1082:
	add	r2, r3, #4992	@ D.43701, D.43696,
	movw	r1, #10000	@ tmp180,
	add	r2, r2, #8	@ D.43701, D.43701,
	movw	r8, #5000	@ tmp178,
	cmp	r2, r1	@ D.43701, tmp180
	bhi	.L1083	@,
	cmp	r3, r8	@ D.43696, tmp178
	movw	r2, #60536	@ tmp182,
.L1106:
	movt	r2, 65535	@ tmp186,
	movge	r3, r8	@ D.43699, tmp178
	cmp	r3, r2	@ D.43699, tmp186
	movlt	r3, r2	@ D.43699, tmp186
.L1079:
	str	r3, [r5, #3744]	@ D.43699, extra_ref
.L1081:
	mov	r2, #1024	@,
	ldr	r1, [r7]	@, saved_command_line
	ldr	r0, .L1111+8	@,
	mov	r8, #0	@ tmp188,
	str	r8, [sp, #4]	@ tmp188, p
	bl	strlcpy	@
	ldr	r1, .L1111+24	@,
	ldr	r0, .L1111+8	@,
	bl	strstr	@
	ldr	r9, .L1111	@ tmp191,
	cmp	r0, r8	@ D.43697,
	str	r0, [sp, #4]	@ D.43697, p
	beq	.L1084	@,
	ldr	r1, .L1111+16	@,
	add	r0, sp, #4	@ tmp295,,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1085	@,
	add	r0, sp, #4	@ tmp296,,
	ldr	r1, .L1111+20	@,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L1109	@,
	mov	r2, r8	@, tmp188
	mov	r1, r8	@, tmp2
	bl	simple_strtol	@
	mov	r4, r0	@ D.43696, D.43700
	str	r0, [r9, #3748]	@ D.43700, extra_disp
.L1088:
	add	r3, r4, #4992	@ D.43701, D.43696,
	movw	r2, #10000	@ tmp206,
	add	r3, r3, #8	@ D.43701, D.43701,
	movw	r8, #5000	@ tmp204,
	cmp	r3, r2	@ D.43701, tmp206
	bhi	.L1089	@,
	cmp	r4, r8	@ D.43696, tmp204
	movw	r3, #60536	@ tmp208,
.L1107:
	movt	r3, 65535	@ tmp212,
	movge	r4, r8	@ D.43699, tmp204
	cmp	r4, r3	@ D.43699, tmp212
	movlt	r4, r3	@ D.43699, tmp212
.L1085:
	str	r4, [r5, #3748]	@ D.43699, extra_disp
.L1087:
	ldr	r5, .L1111+28	@ tmp291,
	mov	r3, #0	@ tmp214,
	str	r3, [sp, #4]	@ tmp214, p
	ldr	r4, [r5, #-3404]	@ D.43698, extra_cmd
	cmp	r4, r3	@ D.43698,
	beq	.L1090	@,
	ldr	r3, .L1111+32	@ tmp220,
	ubfx	r2, r4, #1, #1	@ tmp223, D.43698,,
	and	r1, r4, #1	@ tmp218, D.43698,
	ubfx	r4, r4, #2, #1	@ tmp228, D.43698,,
	strb	r1, [r5, #-3400]	@ tmp218, g_allow_B_before_P
	strb	r2, [r3]	@ tmp223, g_not_direct_8x8_inference_flag
	strb	r4, [r5, #-3399]	@ tmp228, g_not_allow_H264FullPictureRepair_flag
.L1091:
	mov	r1, #152	@,
	ldr	r0, .L1111+36	@,
	bl	__memzero	@
	mov	r1, #16	@,
	ldr	r0, .L1111	@,
	bl	__memzero	@
	mov	r1, #16	@,
	ldr	r0, .L1111+40	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	ldr	r3, .L1111+28	@ tmp262,
	mov	r1, #75497472	@,
	ldreq	r2, .L1111+44	@ tmp266,
	mov	r0, #-2013265920	@,
	ldr	r4, .L1111	@ tmp267,
	streq	r2, [r3, #-3380]	@ tmp266, g_event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	mov	r1, #16	@,
	ldr	r0, .L1111+48	@,
	bl	__memzero	@
	add	r0, r4, #64	@, tmp267,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L1096	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	add	r0, r4, #216	@, tmp267,
	bl	OSAL_InitEvent	@
	ldr	r2, .L1111+52	@,
	ldr	r1, .L1111+56	@,
	add	r0, r4, #52	@, tmp267,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.43696,
	bne	.L1097	@,
	add	r0, r4, #52	@, tmp267,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp284,
	str	r3, [r4, #16]	@ tmp284, s_VfmwCTrl.s32IsVCTRLOpen
.L1077:
	mov	r0, r5	@, D.43696
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1090:
	ldr	r1, [r7]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L1111+8	@,
	bl	strlcpy	@
	ldr	r1, .L1111+60	@,
	ldr	r0, .L1111+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.43697,
	str	r0, [sp, #4]	@ D.43697, p
	beq	.L1091	@,
	ldr	r1, .L1111+16	@,
	add	r0, sp, #4	@ tmp297,,
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r5, #-3404]	@ D.43698, extra_cmd
	beq	.L1093	@,
	add	r0, sp, #4	@ tmp298,,
	ldr	r1, .L1111+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L1110	@,
	mov	r2, r4	@, D.43698
	mov	r1, r4	@, tmp2
	bl	simple_strtol	@
	str	r0, [r5, #-3404]	@ D.43698, extra_cmd
.L1093:
	ldr	r3, .L1111+32	@ tmp249,
	ubfx	r2, r0, #1, #1	@ tmp252, D.43698,,
	and	r1, r0, #1	@ tmp247, D.43698,
	ubfx	r0, r0, #2, #1	@ tmp257, D.43698,,
	strb	r1, [r5, #-3400]	@ tmp247, g_allow_B_before_P
	strb	r2, [r3]	@ tmp252, g_not_direct_8x8_inference_flag
	strb	r0, [r5, #-3399]	@ tmp257, g_not_allow_H264FullPictureRepair_flag
	b	.L1091	@
.L1084:
	ldr	r4, [r9, #3748]	@ D.43696, extra_disp
	b	.L1088	@
.L1078:
	ldr	r3, [r5, #3744]	@ D.43696, extra_ref
	b	.L1082	@
.L1089:
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r5, #3748]	@ extra_disp, extra_disp
	movw	r3, #60536	@ tmp212,
	cmp	r4, r8	@ extra_disp, tmp204
	b	.L1107	@
.L1083:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #3744]	@ extra_ref, extra_ref
	movw	r2, #60536	@ tmp186,
	cmp	r3, r8	@ extra_ref, tmp178
	b	.L1106	@
.L1098:
	mov	r3, r4	@ D.43699, D.43699
	b	.L1079	@
.L1096:
	mvn	r5, #0	@ D.43696,
	mov	r0, r5	@, D.43696
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1108:
	bl	vfmw_dprint_nothing	@
	b	.L1081	@
.L1109:
	bl	vfmw_dprint_nothing	@
	b	.L1087	@
.L1097:
	add	r0, r4, #64	@, tmp267,
	mvn	r5, #0	@ D.43696,
	bl	CloseDrivers	@
	b	.L1077	@
.L1110:
	bl	vfmw_dprint_nothing	@
	b	.L1091	@
.L1112:
	.align	2
.L1111:
	.word	.LANCHOR0
	.word	saved_command_line
	.word	.LANCHOR0+3756
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR0+16
	.word	.LANCHOR1-3396
	.word	VCTRL_EventReport
	.word	.LANCHOR0+3588
	.word	VFMW_CTRL_thread_proc
	.word	.LC10
	.word	.LC9
	.fnend
	.size	VCTRL_OpenVfmw, .-VCTRL_OpenVfmw
	.align	2
	.global	GetNextDecodeMode
	.type	GetNextDecodeMode, %function
GetNextDecodeMode:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ CurMode, CurMode
	mov	r6, r1	@ StreamAmount, StreamAmount
	mov	r5, r2	@ Threshould, Threshould
	bl	vfmw_dprint_nothing	@
	cmp	r4, #3	@ CurMode,
	beq	.L1117	@,
	cmp	r5, r6	@ Threshould, StreamAmount
	blt	.L1118	@,
.L1115:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, CurMode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1118:
	bl	vfmw_dprint_nothing	@
	mov	r4, #3	@ CurMode,
	b	.L1115	@
.L1117:
	cmp	r5, #0	@ Threshould,
	add	r2, r5, #7	@ tmp117, Threshould,
	movlt	r5, r2	@ Threshould, tmp117
	cmp	r6, r5, asr #3	@ StreamAmount, Threshould,
	bge	.L1115	@,
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ CurMode,
	b	.L1115	@
	.fnend
	.size	GetNextDecodeMode, .-GetNextDecodeMode
	.align	2
	.global	VCTRL_GetChanIDByCtx
	.type	VCTRL_GetChanIDByCtx, %function
VCTRL_GetChanIDByCtx:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	ip, .L1128	@ ivtmp.557,
	mov	r2, #0	@ i,
.L1122:
	ldr	r1, [ip], #4	@ D.43726, MEM[base: _14, offset: 0B]
	cmp	r1, #0	@ D.43726,
	add	r3, r1, #217088	@ D.43727, D.43726,
	add	r3, r3, #432	@ D.43727, D.43727,
	beq	.L1120	@,
	cmp	r0, r3	@ pCtx, D.43727
	beq	.L1123	@,
.L1120:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #4	@ i,
	bne	.L1122	@,
	mvn	r0, #0	@ D.43725,
	bx	lr	@
.L1123:
	mov	r0, r2	@ D.43725, i
	bx	lr	@
.L1129:
	.align	2
.L1128:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanIDByCtx, .-VCTRL_GetChanIDByCtx
	.align	2
	.global	VCTRL_GetChanIDByMemAddr
	.type	VCTRL_GetChanIDByMemAddr, %function
VCTRL_GetChanIDByMemAddr:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L1142	@ ivtmp.570,
	mov	r2, #0	@ i,
	str	lr, [sp, #-4]!	@,
	.save {lr}
.L1134:
	ldr	r3, [ip], #4	@ D.43743, MEM[base: _20, offset: 0B]
	cmp	r3, #0	@ D.43743,
	beq	.L1131	@,
	ldr	r1, [r3, #176]	@ D.43744, _4->stChanMem_vdh.PhyAddr
	cmp	r1, r0	@ D.43744, PhyAddr
	bgt	.L1132	@,
	ldr	lr, [r3, #180]	@ _4->stChanMem_vdh.Length, _4->stChanMem_vdh.Length
	add	r1, r1, lr	@ D.43744, D.43744, _4->stChanMem_vdh.Length
	cmp	r0, r1	@ PhyAddr, D.43744
	blt	.L1136	@,
.L1132:
	ldr	r1, [r3, #192]	@ D.43744, _4->stChanMem_scd.PhyAddr
	cmp	r0, r1	@ PhyAddr, D.43744
	blt	.L1131	@,
	ldr	r3, [r3, #196]	@ _4->stChanMem_scd.Length, _4->stChanMem_scd.Length
	add	r1, r1, r3	@ D.43744, D.43744, _4->stChanMem_scd.Length
	cmp	r0, r1	@ PhyAddr, D.43744
	blt	.L1136	@,
.L1131:
	add	r2, r2, #1	@ i, i,
	cmp	r2, #4	@ i,
	bne	.L1134	@,
	mvn	r0, #0	@ D.43742,
	ldr	pc, [sp], #4	@
.L1136:
	mov	r0, r2	@ D.43742, i
	ldr	pc, [sp], #4	@
.L1143:
	.align	2
.L1142:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanIDByMemAddr, .-VCTRL_GetChanIDByMemAddr
	.align	2
	.global	DecChanProcessPts
	.type	DecChanProcessPts, %function
DecChanProcessPts:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L1163	@ tmp230,
	ldr	r3, [r6, r0, asl #2]	@ D.43748, s_pstVfmwChan
	ldr	r2, [r3, #32]	@ D.43749, _10->stChanCfg.eVidStd
	cmp	r2, #1	@ D.43749,
	beq	.L1160	@,
	sub	ip, r2, #2	@ D.43755, D.43755,
	cmp	r2, #6	@ D.43755,
	cmpne	ip, #1	@, D.43755,
	bls	.L1154	@,
.L1146:
	ldrd	r4, [r1, #32]	@ D.43751, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp214,
	cmp	r5, r7	@ D.43751,
	cmpeq	r4, r6	@ D.43751, tmp214
	addne	r2, r3, #944	@ tmp216, D.43748,
	strned	r4, [r2]	@ D.43751, _10->stSynExtraData.pts
.L1153:
	ldrd	r4, [r1, #48]	@ D.43751, pSegMan,
	add	r0, r3, #960	@ tmp218, D.43748,
	add	r2, r3, #976	@ tmp220, D.43748,
	strd	r4, [r0]	@ D.43751, _10->stSynExtraData.Usertag
	ldrd	r4, [r1, #56]	@ D.43751, pSegMan,
	strd	r4, [r2]	@ D.43751, _10->stSynExtraData.DispTime
	ldr	r2, [r1, #64]	@ D.43752, pSegMan_20(D)->CurrSeg.DispEnableFlag
	str	r2, [r3, #992]	@ D.43752, _10->stSynExtraData.DispEnableFlag
	ldr	r2, [r1, #68]	@ D.43752, pSegMan_20(D)->CurrSeg.DispFrameDistance
	str	r2, [r3, #996]	@ D.43752, _10->stSynExtraData.DispFrameDistance
	ldr	r2, [r1, #72]	@ D.43752, pSegMan_20(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r2, [r3, #1000]	@ D.43752, _10->stSynExtraData.DistanceBeforeFirstFrame
	ldr	r2, [r1, #76]	@ D.43752, pSegMan_20(D)->CurrSeg.GopNum
	str	r2, [r3, #1016]	@ D.43752, _10->stSynExtraData.GopNum
.L1159:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L1160:
	add	r2, r3, #217088	@ tmp161, D.43748,
	ldr	r2, [r2, #432]	@ MEM[(struct VC1_CTX_S *)_10 + 217520B].pstExtraData, MEM[(struct VC1_CTX_S *)_10 + 217520B].pstExtraData
	ldr	r2, [r2, #388]	@ _12->StdExt.Vc1Ext.IsAdvProfile, _12->StdExt.Vc1Ext.IsAdvProfile
	sxtb	r2, r2	@ _12->StdExt.Vc1Ext.IsAdvProfile, _12->StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, #1	@ _12->StdExt.Vc1Ext.IsAdvProfile,
	bne	.L1146	@,
.L1154:
	mov	r5, r0	@ ChanID, ChanID
	add	r0, r3, #1264	@, D.43748,
	mov	r4, r1	@ pSegMan, pSegMan
	add	r0, r0, #8	@,,
	mov	r1, r2	@, D.43755
	add	r2, r4, #8	@, pSegMan,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L1147	@,
	ldr	r1, [r6, r5, asl #2]	@ D.43748, s_pstVfmwChan
	add	r0, r1, #960	@ tmp229, D.43748,
	ldr	r3, [r1, #32]	@ _40->stChanCfg.eVidStd, _40->stChanCfg.eVidStd
	cmp	r3, #3	@ _40->stChanCfg.eVidStd,
	beq	.L1161	@,
	ldrd	r2, [r0, #-8]	@ D.43751, tmp229,
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp177,
	cmp	r3, r9	@ D.43751,
	cmpeq	r2, r8	@ D.43751, tmp177
	addne	ip, r1, #944	@ tmp179, D.43748,
	strned	r2, [ip]	@ D.43751, _40->stSynExtraData.pts
.L1149:
	add	ip, r1, #976	@ tmp186, D.43748,
	mvn	r2, #0	@ tmp182,
	mvn	r3, #0	@,
	strd	r2, [r0, #-8]	@ tmp182, tmp229,
	ldrd	r2, [ip, #-8]	@ _40->stSynExtraData.NextUsertag, tmp186,
	add	lr, r1, #992	@ tmp191, D.43748,
	strd	r2, [r0]	@ _40->stSynExtraData.NextUsertag, _40->stSynExtraData.Usertag
	ldrd	r2, [lr, #-8]	@ _40->stSynExtraData.NextDispTime, tmp191,
	strd	r2, [ip]	@ _40->stSynExtraData.NextDispTime, _40->stSynExtraData.DispTime
	ldr	r3, [r1, #1020]	@ _40->stSynExtraData.NextGopNum, _40->stSynExtraData.NextGopNum
	ldr	ip, [r1, #1004]	@ _40->stSynExtraData.NextDispEnableFlag, _40->stSynExtraData.NextDispEnableFlag
	ldr	r0, [r1, #1008]	@ _40->stSynExtraData.NextDispFrameDistance, _40->stSynExtraData.NextDispFrameDistance
	ldr	r2, [r1, #1012]	@ _40->stSynExtraData.NextDistanceBeforeFirstFrame, _40->stSynExtraData.NextDistanceBeforeFirstFrame
	str	r3, [r1, #1016]	@ _40->stSynExtraData.NextGopNum, _40->stSynExtraData.GopNum
	str	ip, [r1, #992]	@ _40->stSynExtraData.NextDispEnableFlag, _40->stSynExtraData.DispEnableFlag
	str	r0, [r1, #996]	@ _40->stSynExtraData.NextDispFrameDistance, _40->stSynExtraData.DispFrameDistance
	str	r2, [r1, #1000]	@ _40->stSynExtraData.NextDistanceBeforeFirstFrame, _40->stSynExtraData.DistanceBeforeFirstFrame
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, r5, asl #2]	@ D.43748, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _60->stChanCfg.eVidStd, _60->stChanCfg.eVidStd
	cmp	r3, #3	@ _60->stChanCfg.eVidStd,
	beq	.L1162	@,
.L1150:
	ldrd	r2, [r4, #32]	@ D.43751, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp207,
	cmp	r3, r7	@ D.43751,
	cmpeq	r2, r6	@ D.43751, tmp207
	addne	r0, r1, #960	@ tmp209, D.43748,
	strned	r2, [r0, #-8]	@ D.43751, tmp209,
.L1152:
	ldrd	r2, [r4, #48]	@ D.43751, pSegMan,
	add	ip, r1, #976	@ tmp211, D.43748,
	add	r0, r1, #992	@ tmp213, D.43748,
	strd	r2, [ip, #-8]	@ D.43751, tmp211,
	ldrd	r2, [r4, #56]	@ D.43751, pSegMan,
	strd	r2, [r0, #-8]	@ D.43751, tmp213,
	ldr	r3, [r4, #64]	@ D.43752, pSegMan_20(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.43752, _116->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.43752, pSegMan_20(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.43752, _116->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.43752, pSegMan_20(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.43752, _116->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.43752, pSegMan_20(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.43752, _116->stSynExtraData.NextGopNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L1162:
	ldrd	r2, [r4, #32]	@ D.43751, pSegMan,
	add	lr, r1, #960	@ tmp200, D.43748,
	add	ip, r1, #976	@ tmp202, D.43748,
	add	r0, r1, #992	@ tmp204, D.43748,
	strd	r2, [lr, #-8]	@ D.43751, tmp200,
	ldrd	r2, [r4, #48]	@ D.43751, pSegMan,
	strd	r2, [ip, #-8]	@ D.43751, tmp202,
	ldrd	r2, [r4, #56]	@ D.43751, pSegMan,
	strd	r2, [r0, #-8]	@ D.43751, tmp204,
	ldr	r3, [r4, #64]	@ D.43752, pSegMan_20(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.43752, _60->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.43752, pSegMan_20(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.43752, _60->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.43752, pSegMan_20(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.43752, _60->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.43752, pSegMan_20(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.43752, _60->stSynExtraData.NextGopNum
.L1147:
	ldr	r1, [r6, r5, asl #2]	@ D.43748, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _76->stChanCfg.eVidStd, _76->stChanCfg.eVidStd
	cmp	r3, #3	@ _76->stChanCfg.eVidStd,
	bne	.L1150	@,
	b	.L1159	@
.L1161:
	ldrd	r2, [r0, #-8]	@ _40->stSynExtraData.NextPts, tmp229,
	add	ip, r1, #944	@ tmp171, D.43748,
	strd	r2, [ip]	@ _40->stSynExtraData.NextPts, _40->stSynExtraData.pts
	b	.L1149	@
.L1164:
	.align	2
.L1163:
	.word	.LANCHOR0
	.fnend
	.size	DecChanProcessPts, .-DecChanProcessPts
	.align	2
	.global	DecChanCheckDecParam
	.type	DecChanCheckDecParam, %function
DecChanCheckDecParam:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1175	@ tmp123,
	ldr	r2, [r3, r0, asl #2]	@ tmp124, s_pstVfmwChan
	ldr	r1, [r2, #880]	@ D.43764, _5->eVidStd
	sub	r2, r1, #10	@ D.43765, D.43764,
	cmp	r2, #2	@ D.43765,
	bhi	.L1166	@,
	ldr	r2, [r3, #3584]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r2, #1	@ D.43762, g_VdmCharacter,
	beq	.L1174	@,
.L1166:
	sub	r3, r1, #14	@ D.43764, D.43764,
	bics	r3, r3, #4	@ tmp139, D.43764,
	movne	r3, #1	@ tmp131,
	moveq	r3, #0	@ tmp131,
	cmp	r1, #4	@ D.43764,
	moveq	r3, #0	@, tmp136
	andne	r3, r3, #1	@,, tmp136, tmp131
	cmp	r3, #0	@ tmp136,
	beq	.L1174	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r3, #1	@ D.43762,
	moveq	r3, #0	@ D.43762,
	mov	r0, r3	@, D.43762
	ldmfd	sp!, {r4, pc}	@
.L1174:
	mov	r0, r3	@, D.43762
	bx	lr	@
.L1176:
	.align	2
.L1175:
	.word	.LANCHOR0
	.fnend
	.size	DecChanCheckDecParam, .-DecChanCheckDecParam
	.align	2
	.global	DecChanSyntax
	.type	DecChanSyntax, %function
DecChanSyntax:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L1180	@,
	ldr	r6, .L1211	@ tmp195,
	ldr	r3, [r6, r0, asl #2]	@ D.43772, s_pstVfmwChan
	cmp	r3, #0	@ D.43772,
	beq	.L1180	@,
	ldr	r2, [r3, #8]	@ _14->s32IsRun, _14->s32IsRun
	cmp	r2, #1	@ _14->s32IsRun,
	bne	.L1180	@,
	ldr	r5, [r3, #16]	@ D.43773, _14->s32StopSyntax
	cmp	r5, #0	@ D.43773,
	bne	.L1180	@,
	str	r5, [r3, #672]	@ D.43773, _14->s32NoStreamFlag
	mov	r7, r0, asl #2	@ tmp194, ChanID,
	bl	OSAL_GetTimeInMs	@
	ldr	r8, .L1211+4	@ tmp196,
	ldr	r1, .L1211+8	@ tmp155,
	add	r2, r8, r7	@ tmp151, tmp196, tmp194
	ldr	r3, [r2, #-3376]	@ tmp154, last_rec_pos_time
	ldr	r1, [r1]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.43774, tmp154, currtime
	mov	r9, r0	@ currtime,
	cmp	r3, r1	@ D.43774, g_TraceBsPeriod
	mov	r0, r4	@, ChanID
	bls	.L1181	@,
	str	r9, [r2, #-3376]	@ currtime, last_rec_pos_time
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.43770,
	mov	r10, r0	@ D.43770,
	bne	.L1182	@,
	bl	vfmw_dprint_nothing	@
.L1197:
	mov	r0, r10	@, D.43770
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1181:
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.43770,
	mov	r10, r0	@ D.43770,
	beq	.L1197	@,
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	mvnne	r10, #2	@ D.43770,
	bne	.L1197	@,
.L1191:
	ldr	r3, [r6, r4, asl #2]	@ D.43772, s_pstVfmwChan
	add	r10, r3, #1024	@ pSegMan, D.43772,
	ldrb	r2, [r3, #1025]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].IsCurrSegWaitDec, MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].IsCurrSegWaitDec
	cmp	r2, #0	@ MEM[(struct STREAM_SEG_PACKET_S *)_34 + 1024B].IsCurrSegWaitDec,
	bne	.L1183	@,
	ldr	r3, [r3, #1616]	@ _34->stSynExtraData.s32DSDWaitFlag, _34->stSynExtraData.s32DSDWaitFlag
	cmp	r3, #0	@ _34->stSynExtraData.s32DSDWaitFlag,
	beq	.L1209	@,
.L1183:
	bl	vfmw_dprint_nothing	@
	mov	r1, r10	@, pSegMan
	mov	r0, r4	@, ChanID
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r6, r4, asl #2]	@ D.43772, s_pstVfmwChan
	mov	r0, r10	@, pSegMan
	add	r2, r3, #217088	@, D.43772,
	add	r2, r2, #432	@,,
	ldr	r1, [r3, #880]	@, _54->eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1187	@,
.L1188:
	mov	r10, #0	@ D.43770,
	b	.L1197	@
.L1182:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@ D.43773,
	moveq	r5, r0	@ rec_pos_print_flag, D.43773
	beq	.L1191	@,
	bl	vfmw_dprint_nothing	@
	mvn	r10, #2	@ D.43770,
	b	.L1197	@
.L1180:
	bl	vfmw_dprint_nothing	@
	mvn	r10, #0	@ D.43770,
	b	.L1197	@
.L1209:
	add	r1, r10, #8	@, pSegMan,
	mov	r0, r4	@, ChanID
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L1183	@,
	cmp	r5, #1	@ rec_pos_print_flag,
	beq	.L1210	@,
.L1184:
	add	r3, r8, r7	@ tmp166, tmp196, tmp194
	ldr	r2, .L1211+12	@ tmp170,
	ldr	r1, .L1211+4	@ tmp165,
	ldr	r3, [r3, #-3360]	@ tmp169, last_rec_pos_report_time
	ldr	r2, [r2]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r3, r3, r9	@ D.43774, tmp169, currtime
	cmp	r3, r2	@ D.43774, g_NoStreamReportPeriod
	bls	.L1185	@,
	ldr	r3, [r1, #-3380]	@ D.43777, g_event_report
	cmp	r3, #0	@ D.43777,
	beq	.L1186	@,
	mov	r2, #0	@,
	mov	r1, #117	@,
	mov	r0, r4	@, ChanID
	blx	r3	@ D.43777
.L1186:
	add	r7, r8, r7	@ tmp174, tmp196, tmp194
	str	r9, [r7, #-3360]	@ currtime, last_rec_pos_report_time
.L1185:
	ldr	r3, [r6, r4, asl #2]	@ tmp177, s_pstVfmwChan
	mov	r2, #1	@ tmp178,
	mvn	r10, #3	@ D.43770,
	str	r2, [r3, #672]	@ tmp178, _49->s32NoStreamFlag
	b	.L1197	@
.L1187:
	bl	OSAL_GetTimeInMs	@
	add	r7, r8, r7	@ tmp184, tmp196, tmp194
	ldr	r1, .L1211+16	@ tmp188,
	ldr	r3, [r7, #-3344]	@ tmp187, last_rec_pos_decparam_time
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.43774, tmp187, currtime
	mov	r2, r0	@ currtime,
	cmp	r3, r1	@ D.43774, g_TraceFramePeriod
	bls	.L1188	@,
	mov	r0, r4	@, ChanID
	str	r2, [r7, #-3344]	@ currtime, last_rec_pos_decparam_time
	mov	r10, #0	@ D.43770,
	bl	VCTRL_GetDecParam	@
	b	.L1197	@
.L1210:
	bl	vfmw_dprint_nothing	@
	b	.L1184	@
.L1212:
	.align	2
.L1211:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	g_TraceBsPeriod
	.word	g_NoStreamReportPeriod
	.word	g_TraceFramePeriod
	.fnend
	.size	DecChanSyntax, .-DecChanSyntax
	.align	2
	.global	DecSyntax
	.type	DecSyntax, %function
DecSyntax:
	.fnstart
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	.pad #28
	sub	sp, sp, #28	@,,
	ldr	r7, .L1241	@ tmp172,
	ldr	r3, .L1241+4	@ ivtmp.598,
	add	r0, r3, #16	@ D.43800, ivtmp.598,
	mov	r1, r7	@ ivtmp.594, tmp172
.L1216:
	ldr	r2, [r1], #4	@ D.43801, MEM[base: _1, offset: 0B]
	add	r3, r3, #4	@ ivtmp.598, ivtmp.598,
	cmp	r2, #0	@ D.43801,
	ldrne	r2, [r2, #12]	@ D.43802, _17->s32Priority
	str	r2, [r3, #-4]	@ D.43801,
	cmp	r3, r0	@ ivtmp.598, D.43800
	bne	.L1216	@,
	ldr	r6, .L1241+8	@ tmp173,
	mvn	r0, #0	@ ret,
	ldr	r8, .L1241	@ tmp176,
	mov	r9, #0	@ MaxPriChan,
.L1217:
	ldr	r3, [r6, #-3328]	@ MaxPri, ChanPriTab
	mov	r1, #0	@ tmp152,
	ldr	r2, [r6, #-3324]	@ MaxPri, ChanPriTab
	cmp	r3, r2	@ MaxPri, MaxPri
	movlt	r3, r2	@ MaxPri, MaxPri
	ldr	r2, [r6, #-3320]	@ MaxPri, ChanPriTab
	movlt	r5, #1	@ MaxPriChan,
	movge	r5, #0	@ MaxPriChan,
	cmp	r3, r2	@ MaxPri, MaxPri
	movlt	r3, r2	@ MaxPri, MaxPri
	ldr	r2, [r6, #-3316]	@ MaxPri, ChanPriTab
	movlt	r5, #2	@ MaxPriChan,
	cmp	r3, r2	@ MaxPri, MaxPri
	movlt	r5, #3	@ MaxPriChan,
	movlt	r3, r2	@ MaxPri, MaxPri
	cmp	r3, #0	@ MaxPri,
	add	r3, r6, r5, lsl #2	@ tmp150, tmp173, MaxPriChan,
	add	r2, r5, #1	@ D.43802, MaxPriChan,
	str	r2, [r7, #60]	@ D.43802, s_VfmwCTrl.s32ThisChanIDPlus1
	str	r9, [r3, #-3328]	@ MaxPriChan, ChanPriTab
	ldr	r3, .L1241	@ tmp153,
	ble	.L1221	@,
	ldr	r3, [r8, r5, asl #2]	@ D.43801, s_pstVfmwChan
	cmp	r3, r1	@ D.43801,
	beq	.L1217	@,
	ldr	r2, [r3, #8]	@ _28->s32IsRun, _28->s32IsRun
	cmp	r2, #1	@ _28->s32IsRun,
	bne	.L1217	@,
	ldr	r2, [r3, #52]	@ _28->stChanCfg.s32ChanStrmOFThr, _28->stChanCfg.s32ChanStrmOFThr
	cmp	r2, r1	@ _28->stChanCfg.s32ChanStrmOFThr,
	ble	.L1223	@,
	ldr	r3, [r3, #56]	@ _28->stChanCfg.s32DecMode, _28->stChanCfg.s32DecMode
	cmp	r3, r1	@ _28->stChanCfg.s32DecMode,
	beq	.L1238	@,
.L1223:
	mov	r4, #200	@ D.43800,
	b	.L1226	@
.L1239:
	subs	r4, r4, #1	@ D.43800, D.43800,
	beq	.L1217	@,
.L1226:
	mov	r0, r5	@, MaxPriChan
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	beq	.L1239	@,
	b	.L1217	@
.L1221:
	str	r1, [r3, #60]	@ tmp152, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1238:
	mov	r0, r5	@, MaxPriChan
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1240	@,
.L1224:
	ldr	r4, [r7, r5, asl #2]	@ D.43801, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [r4, #52]	@, _35->stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	bl	GetNextDecodeMode	@
	ldr	r3, [r7, r5, asl #2]	@ D.43801, s_pstVfmwChan
	str	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	ldr	r2, [r3, #896]	@ _42->stSynExtraData.s32DecMode, _42->stSynExtraData.s32DecMode
	cmp	r2, #0	@ _42->stSynExtraData.s32DecMode,
	strne	r9, [r3, #892]	@ MaxPriChan, _42->stSynExtraData.s32OutErrThr
	strne	r9, [r3, #888]	@ MaxPriChan, _42->stSynExtraData.s32RefErrThr
	ldreq	r2, [r3, #48]	@ D.43802, _42->stChanCfg.s32ChanErrThr
	streq	r2, [r3, #892]	@ D.43802, _42->stSynExtraData.s32OutErrThr
	streq	r2, [r3, #888]	@ D.43802, _42->stSynExtraData.s32RefErrThr
	b	.L1223	@
.L1240:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L1224	@
.L1242:
	.align	2
.L1241:
	.word	.LANCHOR0
	.word	.LANCHOR1-3328
	.word	.LANCHOR1
	.fnend
	.size	DecSyntax, .-DecSyntax
	.align	2
	.global	VCTRL_RunProcess
	.type	VCTRL_RunProcess, %function
VCTRL_RunProcess:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r3, #100	@ tmp119,
	ldr	r4, .L1259	@ tmp141,
	ldr	r5, .L1259+4	@ tmp140,
	ldr	r0, [r4, #-3312]	@ D.43811, g_SleepTime
	str	r3, [r5, #56]	@ tmp119, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ D.43811,
	ble	.L1244	@,
	bl	msleep	@
.L1244:
	ldr	r0, .L1259+8	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r3, [r4, #-3308]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp125,
	str	r2, [r5, #56]	@ tmp125, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #0	@ g_StopDec,
	movne	r6, #0	@ ret,
	beq	.L1257	@,
.L1245:
	mov	r3, #102	@ tmp129,
	str	r3, [r5, #56]	@ tmp129, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	ldr	r3, .L1259+12	@ tmp130,
	ldr	r3, [r3, #28]	@ D.43813, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.43813,
	beq	.L1246	@,
	blx	r3	@ D.43813
.L1249:
	ldr	r3, .L1259+16	@ tmp131,
	ldr	r3, [r3, #56]	@ D.43814, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.43814,
	beq	.L1258	@,
	mov	r0, #0	@,
	blx	r3	@ D.43814
.L1248:
	mov	r4, #0	@ i,
.L1250:
	mov	r0, r4	@, i
	mov	r1, #0	@,
	add	r4, r4, #1	@ i, i,
	bl	DeleteRawPacketInBuffer	@
	cmp	r4, #4	@ i,
	bne	.L1250	@,
	ldr	r0, .L1259+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1259+20	@,
	mov	r3, #105	@ tmp136,
	str	r3, [r5, #56]	@ tmp136, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r6	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1257:
	bl	DecSyntax	@
	mov	r6, r0	@ ret,
	b	.L1245	@
.L1258:
	bl	vfmw_dprint_nothing	@
	b	.L1248	@
.L1246:
	bl	vfmw_dprint_nothing	@
	b	.L1249	@
.L1260:
	.align	2
.L1259:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LANCHOR0+3720
	.word	g_dnr_hal_fun_ptr
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+216
	.fnend
	.size	VCTRL_RunProcess, .-VCTRL_RunProcess
	.align	2
	.global	VFMW_CTRL_thread_proc
	.type	VFMW_CTRL_thread_proc, %function
VFMW_CTRL_thread_proc:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r1, sp, #8	@ tmp134,,
	mov	r3, #4	@ tmp133,
	mov	r0, sp	@,
	mov	r6, #0	@ tmp132,
	str	r3, [r1, #-4]!	@ tmp133, enChipVersion
	movw	r8, #10175	@ tmp194,
	str	r6, [sp]	@ tmp132, enChipType
	bl	HI_DRV_SYS_GetChipVersion	@
	ldr	r4, .L1295	@ tmp188,
	mov	r7, #12288	@ tmp195,
	movt	r8, 9	@ tmp194,
	movt	r7, 65056	@ tmp195,
.L1262:
	mov	r3, #0	@ tmp137,
	str	r3, [r4, #56]	@ tmp137, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #48]	@ D.43818, s_VfmwCTrl.eTaskCommand
	mov	r5, #2	@ tmp139,
	mov	r2, #1	@ tmp141,
	cmp	r3, r5	@ D.43818,
	str	r5, [r4, #44]	@ tmp139, s_VfmwCTrl.eTaskState
	str	r2, [r4, #56]	@ tmp141, s_VfmwCTrl.s32ThreadPos
	bne	.L1269	@,
	b	.L1263	@
.L1267:
	str	r5, [r4, #56]	@ tmp193, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #48]	@ D.43818, s_VfmwCTrl.eTaskCommand
	mov	r2, #1	@ tmp174,
	str	r2, [r4, #56]	@ tmp174, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.43818,
	beq	.L1263	@,
.L1269:
	cmp	r3, #3	@ D.43818,
	beq	.L1264	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sp, #4]	@ enChipVersion, enChipVersion
	cmp	r3, #5	@ enChipVersion,
	bne	.L1267	@,
	clz	r3, r6	@ tmp149, time2
	rsb	r2, r6, r0	@ D.43820, time2, time2
	mov	r3, r3, lsr #5	@ tmp149, tmp149,
	cmp	r2, r8	@ D.43820, tmp194
	orrhi	r3, r3, #1	@,, tmp152, tmp149
	cmp	r3, #0	@ tmp152,
	beq	.L1267	@,
	ldr	r3, [r7, #92]	@ reg_val, MEM[(volatile unsigned int *)4263522396B]
	mov	r6, r0	@ time2, time2
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.43820, reg_val,
	strne	r3, [r7, #92]	@ D.43820, MEM[(volatile unsigned int *)4263522396B]
	ldr	r3, [r7, #96]	@ reg_val, MEM[(volatile unsigned int *)4263522400B]
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.43820, reg_val,
	strne	r3, [r7, #96]	@ D.43820, MEM[(volatile unsigned int *)4263522400B]
	movne	r6, r0	@ time2, time2
	b	.L1267	@
.L1263:
	mov	r3, #4	@ tmp177,
	mov	r5, #5	@ tmp189,
	str	r3, [r4, #56]	@ tmp177, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ tmp179,
	str	r3, [r4, #44]	@ tmp179, s_VfmwCTrl.eTaskState
	b	.L1270	@
.L1294:
	bl	msleep	@
.L1270:
	str	r5, [r4, #56]	@ tmp189, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #48]	@ D.43818, s_VfmwCTrl.eTaskCommand
	mov	r0, #10	@,
	cmp	r3, #1	@ D.43818,
	beq	.L1262	@,
	cmp	r3, #3	@ D.43818,
	bne	.L1294	@,
.L1264:
	mov	r3, #6	@ tmp184,
	str	r3, [r4, #56]	@ tmp184, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp186,
	mov	r0, r3	@, tmp186
	str	r3, [r4, #44]	@ tmp186, s_VfmwCTrl.eTaskState
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1296:
	.align	2
.L1295:
	.word	.LANCHOR0
	.fnend
	.size	VFMW_CTRL_thread_proc, .-VFMW_CTRL_thread_proc
	.align	2
	.global	VCTRL_GetChanVoQue
	.type	VCTRL_GetChanVoQue, %function
VCTRL_GetChanVoQue:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L1316	@ tmp149,
	ldr	r3, [r1, r0, asl #2]	@ D.43827, s_pstVfmwChan
	cmp	r3, #0	@ D.43827,
	beq	.L1313	@,
	ldr	r2, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r2, #18	@ _5->eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _5->eVidStd
	b	.L1314	@
.L1300:
	.word	.L1311
	.word	.L1301
	.word	.L1302
	.word	.L1303
	.word	.L1304
	.word	.L1305
	.word	.L1306
	.word	.L1314
	.word	.L1307
	.word	.L1308
	.word	.L1309
	.word	.L1309
	.word	.L1309
	.word	.L1310
	.word	.L1304
	.word	.L1314
	.word	.L1314
	.word	.L1314
	.word	.L1311
.L1311:
	add	r0, r3, #217088	@ D.43826, D.43827,
	add	r0, r0, #440	@ D.43826, D.43826,
	bx	lr	@
.L1309:
	ldr	r2, [r1, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1315	@,
.L1304:
	add	r0, r3, #237568	@ D.43826, D.43827,
	add	r0, r0, #440	@ D.43826, D.43826,
	bx	lr	@
.L1303:
	add	r0, r3, #290816	@ D.43826, D.43827,
	add	r0, r0, #48	@ D.43826, D.43826,
	bx	lr	@
.L1301:
	movw	r0, #3208	@ D.43826,
	movt	r0, 5	@ D.43826,
	add	r0, r3, r0	@ D.43826, D.43827, D.43826
	bx	lr	@
.L1302:
	add	r0, r3, #239616	@ D.43826, D.43827,
	add	r0, r0, #512	@ D.43826, D.43826,
	bx	lr	@
.L1305:
	add	r0, r3, #243712	@ D.43826, D.43827,
	add	r0, r0, #448	@ D.43826, D.43826,
	bx	lr	@
.L1306:
	add	r0, r3, #233472	@ D.43826, D.43827,
	add	r0, r0, #136	@ D.43826, D.43826,
	bx	lr	@
.L1307:
	add	r0, r3, #256000	@ D.43826, D.43827,
	add	r0, r0, #488	@ D.43826, D.43826,
	bx	lr	@
.L1308:
	add	r0, r3, #256000	@ D.43826, D.43827,
	add	r0, r0, #472	@ D.43826, D.43826,
	bx	lr	@
.L1310:
	add	r0, r3, #225280	@ D.43826, D.43827,
	add	r0, r0, #408	@ D.43826, D.43826,
	bx	lr	@
.L1314:
	mov	r0, #0	@ D.43826,
	bx	lr	@
.L1315:
	add	r0, r3, #229376	@ D.43826, D.43827,
	add	r0, r0, #792	@ D.43826, D.43826,
	bx	lr	@
.L1313:
	mov	r0, r3	@ D.43826, D.43827
	bx	lr	@
.L1317:
	.align	2
.L1316:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanVoQue, .-VCTRL_GetChanVoQue
	.align	2
	.global	VCTRL_GetChanImgNum
	.type	VCTRL_GetChanImgNum, %function
VCTRL_GetChanImgNum:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r7, .L1329	@ tmp120,
	ldr	lr, [r7, r0, asl #2]	@ tmp121, s_pstVfmwChan
	cmp	lr, #0	@ tmp121,
	beq	.L1323	@,
	mov	r6, r3	@ pNewImgNum, pNewImgNum
	mov	r5, r2	@ pReadImgNum, pReadImgNum
	mov	r8, r1	@ pRefImgNum, pRefImgNum
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_GetChanVoQue	@
	subs	r3, r0, #0	@ pstVoQue,
	beq	.L1320	@,
	mov	r2, r6	@, pNewImgNum
	mov	r1, r5	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r3, [r7, r4, asl #2]	@ D.43832, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ D.43833, _14->eVidStd
	cmp	r2, #0	@ D.43833,
	beq	.L1328	@,
	cmp	r2, #15	@ D.43833,
	beq	.L1323	@,
	mov	r3, #2	@ tmp126,
	str	r3, [r8]	@ tmp126, *pRefImgNum_11(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1328:
	add	r3, r3, #241664	@ tmp124, D.43832,
	ldr	r3, [r3, #2480]	@ _14->stSynCtx.unSyntax.stH264Ctx.DPB.size, _14->stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r8]	@ _14->stSynCtx.unSyntax.stH264Ctx.DPB.size, *pRefImgNum_11(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1320:
	str	r3, [r6]	@ pstVoQue, *pNewImgNum_7(D)
	str	r3, [r5]	@ pstVoQue, *pReadImgNum_9(D)
	str	r3, [r8]	@ pstVoQue, *pRefImgNum_11(D)
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1323:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L1330:
	.align	2
.L1329:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanImgNum, .-VCTRL_GetChanImgNum
	.align	2
	.global	VCTRL_GetChanState
	.type	VCTRL_GetChanState, %function
VCTRL_GetChanState:
	.fnstart
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	cmp	r0, #3	@ ChanID,
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r3, #0	@ tmp132,
	mov	r5, r0	@ ChanID, ChanID
	str	r3, [sp, #12]	@ tmp132, NewNum
	str	r3, [sp, #8]	@ tmp132, ReadNum
	str	r3, [sp, #4]	@ tmp132, RefNum
	bhi	.L1334	@,
	cmp	r1, #0	@ pstChanState,
	mov	r4, r1	@ pstChanState, pstChanState
	beq	.L1334	@,
	ldr	r6, .L1346	@ tmp188,
	ldr	r1, [r6, r0, asl #2]	@ D.43839, s_pstVfmwChan
	cmp	r1, #0	@ D.43839,
	beq	.L1334	@,
	add	r1, r1, #1280	@, D.43839,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	mov	r0, r5	@, ChanID
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r6, r5, asl #2]	@ D.43839, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _17->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1345	@,
.L1335:
	mov	r1, r4	@, pstChanState
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDispStateWithDNR	@
.L1337:
	mov	r3, r5, asl #5	@ tmp155, ChanID,
	ldr	r0, [sp, #12]	@ NewNum, NewNum
	sub	r3, r3, r5, asl #3	@ tmp156, tmp155, ChanID,
	ldr	r2, [sp, #8]	@ ReadNum, ReadNum
	add	r3, r6, r3	@ tmp157, tmp188, tmp156
	add	r1, sp, #16	@,,
	add	r2, r2, r0	@ D.43841, ReadNum, NewNum
	str	r2, [r4, #52]	@ D.43841, pstChanState_10(D)->decoded_1d_frame_num
	ldr	r2, [r3, #3624]	@ g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag, g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag
	mov	r0, r5	@, ChanID
	ldr	r3, [r3, #3612]	@ D.43842, g_VfmwChanStat[ChanID_7(D)].u32FrFrameRate
	str	r2, [r4, #100]	@ g_VfmwChanStat[ChanID_7(D)].u32IsFieldFlag, pstChanState_10(D)->is_field_flg
	str	r3, [r4, #24]	@ D.43842, pstChanState_10(D)->frame_rate
	bl	SM_GetInfo	@
	ldr	r3, [r6, r5, asl #2]	@ tmp176, s_pstVfmwChan
	add	r3, r3, #229376	@ tmp183, tmp176,
	ldr	r2, [sp, #36]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	ldr	r0, [sp, #32]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	ldr	r1, [sp, #24]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	cmp	r2, #10	@ ScdInstInfo.numReadSegFail,
	str	r0, [r4, #56]	@ ScdInstInfo.TotalSegSize, pstChanState_10(D)->buffered_stream_size
	movle	r2, #0	@ D.43843,
	movgt	r2, #1	@ D.43843,
	str	r1, [r4, #60]	@ ScdInstInfo.SegNum, pstChanState_10(D)->buffered_stream_num
	str	r2, [r4, #84]	@ D.43843, pstChanState_10(D)->stream_not_enough
	ldrb	r3, [r3, #4008]	@ zero_extendqisi2	@ MEM[(struct MP4_CTX_S *)_40 + 217520B], MEM[(struct MP4_CTX_S *)_40 + 217520B]
	and	r3, r3, #1	@ D.43844, MEM[(struct MP4_CTX_S *)_40 + 217520B],
	str	r3, [r4, #92]	@ D.43844, pstChanState_10(D)->mpeg4_shorthead
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1345:
	ldr	r3, [r3, #1604]	@ _17->stSynExtraData.s32DnrEnable, _17->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _17->stSynExtraData.s32DnrEnable,
	beq	.L1335	@,
	ldr	r2, [sp, #4]	@, RefNum
	mov	r1, r4	@, pstChanState
	mov	r0, r5	@, ChanID
	bl	VCTRL_GetDispState	@
	b	.L1337	@
.L1334:
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1347:
	.align	2
.L1346:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanState, .-VCTRL_GetChanState
	.align	2
	.global	VCTRL_GetDSDFlag
	.type	VCTRL_GetDSDFlag, %function
VCTRL_GetDSDFlag:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1349	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	sub	r0, r0, #1	@, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
.L1350:
	.align	2
.L1349:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetDSDFlag, .-VCTRL_GetDSDFlag
	.align	2
	.global	VCTRL_RlsDSDFrame
	.type	VCTRL_RlsDSDFrame, %function
VCTRL_RlsDSDFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r7, r0	@ ChanID, ChanID
	bhi	.L1354	@,
	ldr	r4, .L1371	@ tmp130,
	ldr	r3, [r4, r0, asl #2]	@ D.43873, s_pstVfmwChan
	cmp	r3, #0	@ D.43873,
	beq	.L1354	@,
	ldr	r3, [r3, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L1354	@,
	cmp	r1, #0	@ pImage,
	beq	.L1354	@,
	ldr	r0, .L1371+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4, r7, asl #2]	@ D.43873, s_pstVfmwChan
	cmp	r3, #0	@ D.43873,
	beq	.L1356	@,
	ldr	r3, [r3, #4]	@ _14->s32IsOpen, _14->s32IsOpen
	cmp	r3, #1	@ _14->s32IsOpen,
	bne	.L1356	@,
	ldr	r0, .L1371+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r4, [r4, r7, asl #2]	@ D.43873, s_pstVfmwChan
	movw	r3, #1546	@ tmp143,
	add	r2, r4, #180224	@ tmp141, D.43873,
	ldrsb	r6, [r2, r3]	@ s32AllDecFrameNum, _25->FspInst.s32DecFsNum
	cmp	r6, #0	@ s32AllDecFrameNum,
	addgt	r4, r4, #216064	@ ivtmp.619, D.43873,
	movgt	r5, #0	@ i,
	addgt	r4, r4, #376	@ ivtmp.619, ivtmp.619,
	bgt	.L1361	@,
	b	.L1362	@
.L1359:
	cmp	r6, r5	@ s32AllDecFrameNum, i
	add	r4, r4, #16	@ ivtmp.619, ivtmp.619,
	beq	.L1362	@,
.L1361:
	ldr	r3, [r4, #-16]	@ MEM[base: _29, offset: 4294967280B], MEM[base: _29, offset: 4294967280B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #1	@ MEM[base: _29, offset: 4294967280B],
	bne	.L1359	@,
	ldr	r2, [r4, #-8]	@, MEM[base: _29, offset: 4294967288B]
	mov	r0, r7	@, ChanID
	ldr	r1, [r4, #-12]	@, MEM[base: _29, offset: 4294967284B]
	add	r4, r4, #16	@ ivtmp.619, ivtmp.619,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-20]	@ s32UsingCount, MEM[base: _29, offset: 4294967292B]
	streq	r0, [r4, #-32]	@ s32UsingCount, MEM[base: _29, offset: 4294967280B]
	cmp	r6, r5	@ s32AllDecFrameNum, i
	bne	.L1361	@,
.L1362:
	ldr	r0, .L1371+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1371+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.43871,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1356:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L1371+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.43871,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1354:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43871,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1372:
	.align	2
.L1371:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.word	.LANCHOR1-3304
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L1376	@,
	ldr	r3, .L1381	@ tmp115,
	ldr	r3, [r3, r0, asl #2]	@ D.43883, s_pstVfmwChan
	cmp	r3, #0	@ D.43883,
	beq	.L1376	@,
	ldr	r0, [r3, #1456]	@ D.43881, _7->stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r4, pc}	@
.L1376:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43881,
	ldmfd	sp!, {r4, pc}	@
.L1382:
	.align	2
.L1381:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanWidth, .-VCTRL_GetChanWidth
	.align	2
	.global	VCTRL_GetChanHeight
	.type	VCTRL_GetChanHeight, %function
VCTRL_GetChanHeight:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bhi	.L1386	@,
	ldr	r3, .L1391	@ tmp115,
	ldr	r3, [r3, r0, asl #2]	@ D.43888, s_pstVfmwChan
	cmp	r3, #0	@ D.43888,
	beq	.L1386	@,
	ldr	r0, [r3, #1460]	@ D.43886, _7->stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r4, pc}	@
.L1386:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43886,
	ldmfd	sp!, {r4, pc}	@
.L1392:
	.align	2
.L1391:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanHeight, .-VCTRL_GetChanHeight
	.align	2
	.global	VCTRL_GetChanCapLevel
	.type	VCTRL_GetChanCapLevel, %function
VCTRL_GetChanCapLevel:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	bhi	.L1399	@,
	ldr	r3, .L1400	@ tmp115,
	ldr	r3, [r3, r0, asl #2]	@ D.43893, s_pstVfmwChan
	cmp	r3, #0	@ D.43893,
	ldrne	r0, [r3, #24]	@ D.43891, _7->eChanCapLevel
	moveq	r0, #33	@ D.43891,
	bx	lr	@
.L1399:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43891,
	ldmfd	sp!, {r4, pc}	@
.L1401:
	.align	2
.L1400:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetChanCapLevel, .-VCTRL_GetChanCapLevel
	.align	2
	.global	VCTRL_SetVdecExtra
	.type	VCTRL_SetVdecExtra, %function
VCTRL_SetVdecExtra:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #4992	@ D.43896, new_extra_ref,
	movw	r2, #10000	@ tmp125,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r3, #8	@ D.43896, D.43896,
	ldr	r5, .L1410	@ tmp142,
	cmp	r3, r2	@ D.43896, tmp125
	mov	r4, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r5, #3744]	@ new_extra_ref, extra_ref
	bhi	.L1408	@,
.L1403:
	movw	r1, #5000	@ tmp129,
	cmp	r0, r1	@ D.43898, tmp129
	movw	r2, #60536	@ tmp131,
	add	r3, r4, #4992	@ D.43896, new_extra_disp,
	movge	r0, r1	@ D.43897, tmp129
	movt	r2, 65535	@ tmp131,
	cmp	r0, r2	@ D.43897, tmp131
	add	r3, r3, #8	@ D.43896, D.43896,
	movw	r1, #10000	@ tmp135,
	str	r4, [r5, #3748]	@ new_extra_disp, extra_disp
	movlt	r0, r2	@ D.43897, tmp131
	cmp	r3, r1	@ D.43896, tmp135
	str	r0, [r5, #3744]	@ D.43897, extra_ref
	ldr	r6, .L1410	@ tmp127,
	bhi	.L1409	@,
.L1404:
	movw	r2, #5000	@ tmp139,
	cmp	r4, r2	@ D.43898, tmp139
	movw	r3, #60536	@ tmp141,
	movge	r4, r2	@ D.43897, tmp139
	movt	r3, 65535	@ tmp141,
	cmp	r4, r3	@ D.43897, tmp141
	movlt	r4, r3	@ D.43897, tmp141
	str	r4, [r5, #3748]	@ D.43897, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1408:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #3744]	@ D.43898, extra_ref
	b	.L1403	@
.L1409:
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r6, #3748]	@ D.43898, extra_disp
	b	.L1404	@
.L1411:
	.align	2
.L1410:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SetVdecExtra, .-VCTRL_SetVdecExtra
	.align	2
	.global	VCTRL_MaskAllInt
	.type	VCTRL_MaskAllInt, %function
VCTRL_MaskAllInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1418	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.43902, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.43902,
	beq	.L1417	@,
	mov	r0, #0	@,
	blx	r3	@ D.43902
.L1414:
	bl	SCDDRV_MaskInt	@
	ldr	r3, .L1418+4	@ tmp113,
	ldr	r3, [r3, #24]	@ D.43901, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r3, #0	@ D.43901,
	beq	.L1415	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.43901
.L1415:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L1417:
	bl	vfmw_dprint_nothing	@
	b	.L1414	@
.L1419:
	.align	2
.L1418:
	.word	g_vdm_hal_fun_ptr
	.word	g_dnr_hal_fun_ptr
	.fnend
	.size	VCTRL_MaskAllInt, .-VCTRL_MaskAllInt
	.align	2
	.global	VCTRL_EnableAllInt
	.type	VCTRL_EnableAllInt, %function
VCTRL_EnableAllInt:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1426	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.43906, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.43906,
	beq	.L1425	@,
	mov	r0, #0	@,
	blx	r3	@ D.43906
.L1422:
	bl	SCDDRV_EnableInt	@
	ldr	r3, .L1426+4	@ tmp113,
	ldr	r3, [r3, #28]	@ D.43905, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.43905,
	beq	.L1423	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.43905
.L1423:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L1425:
	bl	vfmw_dprint_nothing	@
	b	.L1422	@
.L1427:
	.align	2
.L1426:
	.word	g_vdm_hal_fun_ptr
	.word	g_dnr_hal_fun_ptr
	.fnend
	.size	VCTRL_EnableAllInt, .-VCTRL_EnableAllInt
	.align	2
	.global	VCTRL_CreateChanWithOption
	.type	VCTRL_CreateChanWithOption, %function
VCTRL_CreateChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #332
	sub	sp, sp, #332	@,,
	add	r5, sp, #108	@ tmp832,,
	mov	r6, r0	@ eCapLevel, eCapLevel
	mov	r4, r1	@ pChanOption, pChanOption
	add	r0, sp, #156	@ tmp840,,
	mov	r1, #64	@,
	mov	r10, r2	@ flag, flag
	mov	r8, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, r5	@, tmp832
	mov	r1, #16	@,
	bl	__memzero	@
	subs	r3, r6, #25	@ tmp393, eCapLevel,
	ldr	r7, .L1598	@ tmp835,
	movne	r3, #1	@ tmp393,
	cmp	r10, #0	@ flag,
	movne	r3, #0	@ tmp393,
	cmp	r3, #0	@ tmp393,
	str	r4, [r7, #-3296]	@ pChanOption, pOption
	bne	.L1449	@,
	ldr	r3, [r4, #4]	@ D.44005, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.44005,
	bhi	.L1449	@,
	beq	.L1589	@,
	cmp	r3, #1	@ D.44005,
	bne	.L1433	@,
	ldr	r3, [r4, #32]	@ pChanOption_14(D)->s32MaxRefFrameNum, pChanOption_14(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxRefFrameNum,
	blt	.L1449	@,
	ldr	r3, [r4, #12]	@ pChanOption_14(D)->s32MaxWidth, pChanOption_14(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxWidth,
	ble	.L1449	@,
	ldr	r3, [r4, #16]	@ pChanOption_14(D)->s32MaxHeight, pChanOption_14(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxHeight,
	ble	.L1449	@,
	ldr	r3, [r4, #56]	@ pChanOption_14(D)->s32SCDBufSize, pChanOption_14(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_14(D)->s32SCDBufSize,
	blt	.L1449	@,
	ldr	r3, [r4, #44]	@ pChanOption_14(D)->s32SupportH264, pChanOption_14(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_14(D)->s32SupportH264,
	beq	.L1590	@,
.L1433:
	ldr	r3, [r4, #136]	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r9, sp, #124	@ tmp407,,
	mov	r1, r4	@, pChanOption
	mov	r0, r6	@, eCapLevel
	cmp	r3, #1	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	mov	r2, r9	@, tmp407
	movne	r3, #0	@ tmp406,
	strne	r3, [r4, #136]	@ tmp406, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r10	@, flag
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	fp, r0, #0	@ D.43989,
	bne	.L1449	@,
	ldmia	r9, {r0, r1, r2, r3}	@ tmp407,,,,
	add	lr, sp, #140	@ tmp408,,
	ldr	r9, [r4, #8]	@ D.43991, pChanOption_14(D)->MemAllocMode
	cmp	r9, #1	@ D.43991,
	stmia	lr, {r0, r1, r2, r3}	@ tmp408,,,,
	beq	.L1591	@,
	cmp	r9, #2	@ D.43991,
	beq	.L1592	@,
	cmp	r9, #3	@ D.43991,
	bne	.L1449	@,
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp847,,
	ldr	r9, [sp, #148]	@ DetailMemSize$8, MEM[(struct  *)&DetailMemSize + 8B]
	bl	__memzero	@
	ldr	r3, [r4, #108]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr,
	beq	.L1450	@,
	ldr	r3, [r4, #112]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length,
	bne	.L1451	@,
.L1450:
	mov	r2, r9	@, DetailMemSize$8
	add	r3, sp, #220	@ tmp848,,
	mov	r9, #1	@ tmp496,
	mov	r1, #0	@,
	str	r9, [sp]	@ tmp496,
	ldr	r0, .L1598+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1574	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r9, [sp, #116]	@ tmp496, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	r1, [sp, #188]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	r2, [sp, #192]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r3, [sp, #196]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
.L1454:
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp856,,
	ldr	r9, [sp, #140]	@ DetailMemSize, MEM[(struct  *)&DetailMemSize]
	bl	__memzero	@
	ldr	r3, [r4, #76]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr,
	beq	.L1499	@,
	ldr	r3, [r4, #80]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length,
	bne	.L1456	@,
.L1499:
	mov	r1, #0	@ tmp517,
	mov	r2, r9	@, DetailMemSize
	str	r1, [sp]	@ tmp517,
	add	r3, sp, #220	@ tmp849,,
	ldr	r0, .L1598+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1579	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, #1	@ tmp530,
	ldr	r0, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r1, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r2, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	str	r3, [sp, #108]	@ tmp530, MEM[(HI_S32 *)&ChanMemFlag]
.L1460:
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp857,,
	ldr	r9, [sp, #144]	@ DetailMemSize$4, MEM[(struct  *)&DetailMemSize + 4B]
	bl	__memzero	@
	ldr	r3, [r4, #92]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr,
	beq	.L1501	@,
	ldr	r3, [r4, #96]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length,
	bne	.L1463	@,
.L1501:
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ pChanOption_14(D)->Purpose,
	beq	.L1464	@,
	mov	r1, #0	@ tmp549,
	mov	r2, r9	@, DetailMemSize$4
	str	r1, [sp]	@ tmp549,
	add	r3, sp, #220	@ tmp851,,
	ldr	r0, .L1598+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1581	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, #1	@ tmp568,
	ldr	r0, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #172]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r1, [sp, #176]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r2, [sp, #180]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r3, [sp, #112]	@ tmp568, MEM[(HI_S32 *)&ChanMemFlag + 4B]
.L1469:
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp858,,
	ldr	r9, [sp, #152]	@ DetailMemSize$12, MEM[(struct  *)&DetailMemSize + 12B]
	bl	__memzero	@
	ldr	r3, [r4, #124]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr,
	beq	.L1503	@,
	ldr	r3, [r4, #128]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length,
	bne	.L1475	@,
.L1503:
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ pChanOption_14(D)->Purpose,
	beq	.L1476	@,
	mov	r1, #0	@ tmp597,
	add	r3, sp, #220	@ tmp852,,
	mov	r2, r9	@, DetailMemSize$12
	str	r1, [sp]	@ tmp597,
	ldr	r0, .L1598+16	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1586	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, #1	@ tmp622,
	ldr	r0, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #204]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r1, [sp, #208]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	str	r2, [sp, #212]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r3, [sp, #120]	@ tmp622, MEM[(HI_S32 *)&ChanMemFlag + 12B]
.L1545:
	ldr	r10, .L1598+20	@ tmp834,
	ldr	r0, .L1598+24	@,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r3, [r10]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1508	@,
	ldr	r3, [r10, #4]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1509	@,
	ldr	r3, [r10, #8]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1510	@,
	ldr	r3, [r10, #12]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	moveq	r9, #3	@ ChanID,
	beq	.L1490	@,
	bl	vfmw_dprint_nothing	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1598+24	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.43989,
.L1565:
	add	sp, sp, #332	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1589:
	ldr	r3, [r4, #64]	@ pChanOption_14(D)->s32SlotWidth, pChanOption_14(D)->s32SlotWidth
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotWidth,
	beq	.L1449	@,
	ldr	r3, [r4, #68]	@ pChanOption_14(D)->s32SlotHeight, pChanOption_14(D)->s32SlotHeight
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotHeight,
	bne	.L1433	@,
.L1449:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.43989,
	add	sp, sp, #332	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1451:
	mov	r2, #16	@,
	add	r1, r4, #104	@, pChanOption,
	add	r0, sp, #188	@,,
	bl	memcpy	@
	ldr	r2, [sp, #196]	@ D.43992, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r9, r2	@ DetailMemSize$8, D.43992
	bgt	.L1574	@,
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1454	@
.L1590:
	ldr	r3, [r4, #20]	@ pChanOption_14(D)->s32MaxSliceNum, pChanOption_14(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSliceNum,
	ble	.L1449	@,
	ldr	r3, [r4, #24]	@ pChanOption_14(D)->s32MaxSpsNum, pChanOption_14(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSpsNum,
	ble	.L1449	@,
	ldr	r3, [r4, #28]	@ pChanOption_14(D)->s32MaxPpsNum, pChanOption_14(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxPpsNum,
	bgt	.L1433	@,
	b	.L1449	@
.L1464:
	ldr	r2, [sp, #156]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp571,
	ldr	r3, [sp, #160]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #180]	@ tmp571, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r2, [sp, #172]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	b	.L1469	@
.L1456:
	mov	r2, #16	@,
	add	r1, r4, #72	@, pChanOption,
	add	r0, sp, #156	@ tmp850,,
	bl	memcpy	@
	ldr	r2, [sp, #164]	@ D.43992, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r2, r9	@ D.43992, DetailMemSize
	blt	.L1579	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1460	@
.L1476:
	ldr	r2, [sp, #156]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp625,
	ldr	r3, [sp, #160]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #212]	@ tmp625, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r2, [sp, #204]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r3, [sp, #208]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	b	.L1545	@
.L1586:
	ldr	r3, [sp, #116]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1593	@,
.L1478:
	ldr	r3, [sp, #108]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1594	@,
.L1479:
	ldr	r3, [sp, #112]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	bne	.L1574	@,
	ldr	r1, [sp, #176]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #172	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1574:
	bl	vfmw_dprint_nothing	@
.L1453:
	mvn	r0, #0	@ D.43989,
	add	sp, sp, #332	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1463:
	mov	r2, #16	@,
	add	r1, r4, #88	@, pChanOption,
	add	r0, sp, #172	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.44005, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.44005,
	beq	.L1469	@,
	ldr	r1, [sp, #176]	@ D.43993, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r1, #0	@ D.43993,
	beq	.L1470	@,
	ldr	r2, [sp, #180]	@ D.43992, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r9, r2	@ DetailMemSize$4, D.43992
	ble	.L1471	@,
.L1470:
	cmp	r3, #1	@ D.44005,
	beq	.L1581	@,
	ldr	r2, [sp, #180]	@ D.43992, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
.L1471:
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1469	@
.L1475:
	mov	r2, #16	@,
	add	r1, r4, #120	@, pChanOption,
	add	r0, sp, #204	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.44005, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.44005,
	beq	.L1545	@,
	ldr	r1, [sp, #208]	@ D.43993, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	cmp	r1, #0	@ D.43993,
	beq	.L1483	@,
	ldr	r2, [sp, #212]	@ D.43989, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	cmp	r2, r9	@ D.43989, DetailMemSize$12
	bge	.L1484	@,
.L1483:
	cmp	r3, #1	@ D.44005,
	beq	.L1586	@,
	ldr	r2, [sp, #212]	@ D.43989, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
.L1484:
	ldr	r0, [sp, #204]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1545	@
.L1591:
	add	r9, sp, #140	@,,
	mov	r2, #16	@,
	add	r1, r4, #72	@, pChanOption,
	add	r0, sp, #156	@ tmp841,,
	ldmia	r9, {r9, r10, fp}	@,,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, r4, #88	@, pChanOption,
	add	r0, sp, #172	@,,
	bl	memcpy	@
	mov	r2, #16	@,
	add	r1, r4, #104	@, pChanOption,
	add	r0, sp, #188	@,,
	bl	memcpy	@
	ldr	r3, [sp, #192]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr,
	beq	.L1574	@,
	ldr	r3, [sp, #196]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r3, fp	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, DetailMemSize$ChanCtxDetailMem
	blt	.L1574	@,
	ldr	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr,
	beq	.L1440	@,
	ldr	r3, [sp, #180]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r10, r3	@ DetailMemSize$ScdDetailMem, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ble	.L1441	@,
.L1440:
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #1	@ pChanOption_14(D)->Purpose,
	beq	.L1574	@,
.L1441:
	ldr	r1, [sp, #160]	@ D.43993, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	cmp	r1, #0	@ D.43993,
	beq	.L1574	@,
	ldr	r2, [sp, #164]	@ D.43992, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r9, r2	@ DetailMemSize$VdhDetailMem, D.43992
	bgt	.L1574	@,
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ pChanOption_14(D)->Purpose,
	beq	.L1545	@,
	add	r0, sp, #172	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	b	.L1545	@
.L1592:
	ldr	r3, [sp, #144]	@ DetailMemSize$ScdDetailMem, MEM[(struct  *)&DetailMemSize + 4B]
	mov	r1, #16	@,
	ldr	r2, [sp, #148]	@ DetailMemSize$ChanCtxDetailMem, MEM[(struct  *)&DetailMemSize + 8B]
	add	r0, sp, #220	@ tmp842,,
	ldr	r10, [sp, #140]	@ DetailMemSize$VdhDetailMem, MEM[(struct  *)&DetailMemSize]
	mov	r9, #1	@ tmp448,
	str	r3, [sp, #84]	@ DetailMemSize$ScdDetailMem, %sfp
	str	r2, [sp, #80]	@ DetailMemSize$ChanCtxDetailMem, %sfp
	bl	__memzero	@
	mov	r1, fp	@, D.43989
	ldr	r0, .L1598+4	@,
	add	r3, sp, #220	@ tmp844,,
	ldr	r2, [sp, #80]	@ DetailMemSize$ChanCtxDetailMem, %sfp
	str	r9, [sp]	@ tmp448,
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.43992,
	bne	.L1574	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r2, r10	@, DetailMemSize$VdhDetailMem
	mov	r1, fp	@, D.43992
	ldr	r0, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	add	r3, sp, #220	@ tmp845,,
	ldr	lr, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r10, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #192]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	fp, [sp]	@ D.43992,
	ldr	r0, .L1598+8	@,
	str	r9, [sp, #116]	@ tmp448, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	lr, [sp, #188]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	r10, [sp, #196]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bl	MEM_AllocMemBlock	@
	subs	fp, r0, #0	@ D.43989,
	bne	.L1595	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r1, #2	@ pChanOption_14(D)->Purpose,
	ldr	r2, [sp, #228]	@ D.43992, MemRecord.PhyAddr
	ldr	r3, [sp, #224]	@ D.44001, MemRecord.VirAddr
	ldr	r1, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r9, [sp, #108]	@ tmp448, MEM[(HI_S32 *)&ChanMemFlag]
	str	r2, [sp, #156]	@ D.43992, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r3, [sp, #160]	@ D.44001, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	beq	.L1447	@,
	str	fp, [sp]	@ D.43989,
	add	r3, sp, #220	@ tmp846,,
	ldr	r2, [sp, #84]	@, %sfp
	mov	r1, fp	@, D.43989
	ldr	r0, .L1598+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1596	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r9, [sp, #112]	@ tmp448, MEM[(HI_S32 *)&ChanMemFlag + 4B]
	str	r1, [sp, #172]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r2, [sp, #176]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r3, [sp, #180]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1545	@
.L1510:
	mov	r9, #2	@ ChanID,
.L1490:
	uxtb	fp, r9	@ D.44008, ChanID
.L1489:
	add	ip, r7, r9, lsl #2	@ tmp780, tmp835, ChanID,
	ldr	r2, [sp, #192]	@ D.43993, ChanMemDetail.ChanMemCtx.VirAddr
	ldr	lr, .L1598+28	@ tmp777,
	mov	r1, #3568	@,
	ldr	r7, .L1598+32	@ tmp775,
	movt	r1, 5	@,
	ldr	r3, [ip, #-3396]	@ tmp786, g_ChanTick
	mov	r0, r2	@, D.43993
	str	ip, [sp, #80]	@ tmp780, %sfp
	add	r3, r3, #1	@ D.43995, tmp786,
	str	r2, [r10, r9, asl #2]	@ D.43993, s_pstVfmwChan
	str	r3, [ip, #-3396]	@ D.43995, g_ChanTick
	mov	r2, #30	@ tmp776,
	str	r2, [lr, r9, asl #2]	@ tmp776, g_LastFrameRate
	str	r2, [r7, r9, asl #2]	@ tmp776, g_FrameRate
	bl	__memzero	@
	ldr	r7, [r10, r9, asl #2]	@ D.43994, s_pstVfmwChan
	mov	r2, #152	@,
	mov	r1, r4	@, pChanOption
	add	r0, r7, #1440	@, D.43994,
	add	r0, r0, #4	@,,
	bl	memcpy	@
	ldr	r1, .L1598+36	@ tmp822,
	movw	r2, #11160	@ tmp824,
	str	r9, [r7]	@ ChanID, _43->s32ChanID
	movt	r2, 1	@ tmp824,
	ldr	r3, [r10, r9, asl #2]	@ D.43994, s_pstVfmwChan
	mla	r2, r2, r9, r1	@ tmp825, tmp824, ChanID, tmp822
	add	r0, r3, #180224	@ tmp800, D.43994,
	movw	r1, #14840	@ tmp796,
	str	r6, [r7, #24]	@ eCapLevel, _43->eChanCapLevel
	str	r6, [r7, #920]	@ eCapLevel, _43->stSynExtraData.eCapLevel
	movt	r1, 8	@ tmp796,
	str	r1, [r7, #1388]	@ tmp796, _43->stSynExtraData.s32BasicCtxSize
	mov	r1, #0	@ tmp797,
	str	r1, [r7, #1404]	@ tmp797, _43->stSynExtraData.s32MoreGapEnable
	add	r2, r2, #75776	@ tmp826, tmp825,
	strb	fp, [r0, #1536]	@ D.44008, _51->FspInst.s32InstID
	add	lr, r3, #217088	@ tmp804, D.43994,
	ldr	r7, [r4]	@ D.43997, pChanOption_14(D)->eAdapterType
	add	fp, r3, #163840	@ tmp812, D.43994,
	ldr	r1, .L1598+40	@ tmp806,
	mov	r0, #19	@ tmp802,
	str	r0, [r3, #880]	@ tmp802, _51->eVidStd
	str	r7, [r3, #20]	@ D.43997, _51->eAdapterType
	add	r1, r1, r9, lsl #2	@ tmp808, tmp806, ChanID,
	str	r0, [lr, #424]	@ tmp802, _51->stSynCtx.eVidStd
	add	r7, r3, #1632	@ D.43998, D.43994,
	str	r9, [fp, #4040]	@ ChanID, MEM[(struct SM_INSTANCE_S *)_51 + 1632B].InstID
	add	r0, r3, #181248	@ D.43999, D.43994,
	str	r7, [r1, #236]	@ D.43998, s_SmIIS.pSmInstArray
	add	r0, r0, #512	@ D.43999, D.43999,
	ldr	ip, [sp, #80]	@ tmp780, %sfp
	ldr	ip, [ip, #-3396]	@ tmp821, g_ChanTick
	str	ip, [lr, #420]	@ tmp821, _51->u32ChanTick
	ldr	ip, [r2, #916]	@ D.43992, s_DnrChan[ChanID_576].s32DnrEnable
	ldr	r2, .L1598+44	@ tmp813,
	str	ip, [r3, #1604]	@ D.43992, _51->stSynExtraData.s32DnrEnable
	ldr	r1, [r4, #140]	@ D.44000, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	str	r0, [r2, r9, asl #2]	@ D.43999, s_pFspInst
	cmp	r1, #0	@ D.44000,
	streq	r1, [r3, #1608]	@ D.44000, _51->stSynExtraData.s32DSDThrWidth
	streq	r1, [r3, #1612]	@ D.44000, _51->stSynExtraData.s32DSDThrHeight
	beq	.L1492	@,
	mov	r0, r1, asl #5	@ tmp672, D.44000,
	ldr	r2, .L1598+48	@ tmp669,
	sub	r1, r0, r1, asl #2	@ tmp673, tmp672, D.44000,
	ldr	r1, [r2, r1]	@ D.43992, CapItem
	str	r1, [r3, #1608]	@ D.43992, _51->stSynExtraData.s32DSDThrWidth
	ldr	r0, [r4, #140]	@ pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	mov	r1, r0, asl #5	@ tmp679, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	sub	r1, r1, r0, asl #2	@ tmp680, tmp679, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r2, r2, r1	@ tmp681, tmp669, tmp680
	ldr	r2, [r2, #4]	@ D.43992, CapItem
	str	r2, [r3, #1612]	@ D.43992, _51->stSynExtraData.s32DSDThrHeight
.L1492:
	ldr	r0, [r10, r9, asl #2]	@ D.43994, s_pstVfmwChan
	mov	r2, #0	@ tmp837,
	mov	ip, #-2147483648	@ tmp838,
	add	r3, r0, #216064	@ ivtmp.655, D.43994,
	add	r0, r0, #217088	@ tmp831, D.43994,
	add	r3, r3, #360	@ ivtmp.655, ivtmp.655,
	add	r1, r0, #360	@ D.43990, tmp831,
.L1493:
	str	r2, [r3, #8]	@ tmp837, MEM[base: _27, offset: 8B]
	str	r2, [r3, #12]	@ tmp837, MEM[base: _27, offset: 12B]
	stmia	r3, {r2, ip}	@ ivtmp.655,,
	add	r3, r3, #16	@ ivtmp.655, ivtmp.655,
	cmp	r3, r1	@ ivtmp.655, D.43990
	bne	.L1493	@,
	mov	r1, #16	@,
	add	r0, r0, #360	@, tmp831,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r9	@, ChanID
	bl	VCTRL_ResetChan	@
	ldmia	r5, {r0, r1, r2, r3}	@ tmp832,,,,
	add	lr, sp, #156	@ tmp853,,
	add	r5, sp, #64	@ tmp689,,
	mov	ip, sp	@ tmp691,
	stmia	r5, {r0, r1, r2, r3}	@ tmp689,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp692,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp691,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp692,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp691,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp692,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp691,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp692,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp691,,,,
	mov	r2, r8	@, OneChanMemFlag
	mov	r1, r6	@, eCapLevel
	mov	r3, r4	@, pChanOption
	mov	r0, r9	@, ChanID
	bl	VCTRL_ConfigMemInfo	@
	cmp	r0, #0	@,
	bne	.L1494	@,
	ldr	r3, [r10, r9, asl #2]	@ tmp694, s_pstVfmwChan
	mov	r0, r9	@, ChanID
	ldr	r5, .L1598+20	@ tmp693,
	str	r9, [r3, #140]	@ ChanID, _89->s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1498	@,
	ldr	r3, [r5, r9, asl #2]	@ D.43994, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _93->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _93->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _93->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1496	@,
	ldr	r3, [r3, #236]	@ D.43992, _93->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.43992
	str	r3, [sp, #92]	@ D.43992, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r9, asl #2]	@ tmp698, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _100->s32OffLineDNRMemSize, _100->s32OffLineDNRMemSize
	str	r0, [sp, #96]	@, DnrMem.VirAddr
	mov	r0, r9	@, ChanID
	str	r3, [sp, #100]	@ _100->s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1497	@,
	ldr	r3, [r4, #16]	@, pChanOption_14(D)->s32MaxHeight
	add	r1, sp, #92	@,,
	ldr	r2, [r4, #12]	@, pChanOption_14(D)->s32MaxWidth
	mov	r0, r9	@, ChanID
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1498	@,
.L1497:
	mov	r0, r9	@, ChanID
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1498	@,
.L1496:
	mov	r0, r9	@, ChanID
	bl	SM_ClearInst	@
	ldr	r3, [r10, r9, asl #2]	@ tmp704, s_pstVfmwChan
	mov	r0, r9	@, ChanID
	ldr	r1, [r3, #204]	@ _114->stChanMem_ctx.VirAddr, _114->stChanMem_ctx.VirAddr
	add	r1, r1, #331776	@, _114->stChanMem_ctx.VirAddr,
	add	r1, r1, #1520	@,,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r10, r9, asl #2]	@ D.43994, s_pstVfmwChan
	mov	r2, #1	@ tmp709,
	mov	r0, r9	@, ChanID
	str	r2, [r3, #4]	@ tmp709, _118->s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1598+24	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r9	@ D.43989, ChanID
	add	sp, sp, #332	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1498:
	bl	vfmw_dprint_nothing	@
.L1494:
	mov	r0, r9	@, ChanID
	bl	VCTRL_UnInstallChan	@
	ldr	r4, [r10, r9, asl #2]	@ D.43994, s_pstVfmwChan
	mov	r2, #16	@,
	add	r5, r4, #217088	@ tmp718, D.43994,
	add	r1, r4, #152	@, D.43994,
	ldr	r3, [r4, #224]	@ _126->s32SelfAllocChanMem_ctx, _126->s32SelfAllocChanMem_ctx
	str	r3, [sp, #292]	@ _126->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r0, sp, #220	@ tmp854,,
	ldr	r3, [r4, #216]	@ _126->s32SelfAllocChanMem_vdh, _126->s32SelfAllocChanMem_vdh
	str	r3, [sp, #284]	@ _126->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r3, [r4, #220]	@ _126->s32SelfAllocChanMem_scd, _126->s32SelfAllocChanMem_scd
	str	r3, [sp, #288]	@ _126->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r3, [r5, #400]	@ _126->s32SelfAllocChanMem_pmv, _126->s32SelfAllocChanMem_pmv
	str	r3, [sp, #296]	@ _126->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r4, #200	@, D.43994,
	mov	r2, #16	@,
	add	r0, sp, #268	@,,
	bl	memcpy	@
	add	r1, r4, #168	@, D.43994,
	mov	r2, #16	@,
	add	r0, sp, #236	@,,
	bl	memcpy	@
	add	r1, r4, #184	@, D.43994,
	mov	r2, #16	@,
	add	r0, sp, #252	@,,
	bl	memcpy	@
	add	r1, r4, #104	@, D.43994,
	mov	r2, #12	@,
	add	r0, sp, #300	@,,
	bl	memcpy	@
	add	r1, r5, #404	@, tmp718,
	mov	r2, #16	@,
	add	r0, sp, #312	@,,
	bl	memcpy	@
	mov	r0, r9	@, ChanID
	mov	r3, #0	@ tmp763,
	str	r3, [r10, r9, asl #2]	@ tmp763, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1598+24	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r9	@, ChanID
	add	r1, sp, #220	@ tmp855,,
	bl	VCTRL_FreeChanResource	@
	mvn	r0, #0	@ D.43989,
	b	.L1565	@
.L1579:
	ldr	r3, [sp, #116]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1574	@,
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1574	@
.L1447:
	str	r2, [sp, #172]	@ D.43992, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #176]	@ D.44001, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	fp, [sp, #180]	@ D.43989, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1545	@
.L1508:
	mov	fp, r3	@ D.44008, s_pstVfmwChan
	mov	r9, r3	@ ChanID, D.44008
	b	.L1489	@
.L1509:
	mov	r9, #1	@ ChanID,
	b	.L1490	@
.L1581:
	ldr	r3, [sp, #116]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1597	@,
.L1466:
	ldr	r3, [sp, #108]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1574	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1574	@
.L1595:
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	bl	vfmw_dprint_nothing	@
	b	.L1453	@
.L1594:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1479	@
.L1593:
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1478	@
.L1597:
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1466	@
.L1596:
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1574	@
.L1599:
	.align	2
.L1598:
	.word	.LANCHOR1
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LANCHOR0
	.word	.LANCHOR0+3720
	.word	g_LastFrameRate
	.word	g_FrameRate
	.word	s_DnrChan
	.word	s_SmIIS
	.word	s_pFspInst
	.word	CapItem
	.fnend
	.size	VCTRL_CreateChanWithOption, .-VCTRL_CreateChanWithOption
	.align	2
	.global	VCTRL_CreateChan
	.type	VCTRL_CreateChan, %function
VCTRL_CreateChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #24	@ eCapLevel,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0	@ eCapLevel, eCapLevel
	.pad #208
	sub	sp, sp, #208	@,,
	bhi	.L1623	@,
	add	r6, sp, #24	@ tmp203,,
	add	r7, sp, #40	@ tmp201,,
	add	r0, sp, #56	@ tmp211,,
	mov	r5, r1	@ pChanMem, pChanMem
	mov	r1, #152	@,
	mov	r9, #2	@ tmp138,
	bl	__memzero	@
	mov	r0, r6	@, tmp203
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r7	@, tmp201
	mov	r1, #16	@,
	bl	__memzero	@
	ldr	r2, .L1624	@ tmp198,
	mov	r1, r4, asl #2	@ tmp199, eCapLevel,
	mov	ip, r4, asl #5	@ tmp200, eCapLevel,
	rsb	r0, r1, ip	@ tmp143, tmp199, tmp200
	sub	r3, r4, #18	@ tmp157, eCapLevel,
	add	r8, r2, r0	@ tmp144, tmp198, tmp143
	mov	lr, #1	@ tmp137,
	ldr	r0, [r2, r0]	@ tmp145, CapItem
	ldr	r10, [r8, #4]	@ tmp153, CapItem
	mov	r8, #136	@ tmp154,
	str	lr, [sp, #60]	@ tmp137, stChanOption.Purpose
	mov	lr, #32	@ tmp155,
	str	r0, [sp, #68]	@ tmp145, stChanOption.s32MaxWidth
	mov	r0, #256	@ tmp156,
	str	r10, [sp, #72]	@ tmp153, stChanOption.s32MaxHeight
	str	r9, [sp, #64]	@ tmp138, stChanOption.MemAllocMode
	str	r8, [sp, #76]	@ tmp154, stChanOption.s32MaxSliceNum
	str	lr, [sp, #80]	@ tmp155, stChanOption.s32MaxSpsNum
	str	r0, [sp, #84]	@ tmp156, stChanOption.s32MaxPpsNum
	cmp	r3, #7	@ tmp157,
	ldrls	pc, [pc, r3, asl #2]	@ tmp157
	b	.L1603	@
.L1605:
	.word	.L1613
	.word	.L1613
	.word	.L1613
	.word	.L1613
	.word	.L1613
	.word	.L1606
	.word	.L1606
	.word	.L1606
.L1613:
	mov	r0, #3	@ MinDispFspNum,
.L1604:
	rsb	r3, r1, ip	@ tmp162, tmp199, tmp200
	rsb	ip, r1, ip	@ tmp174, tmp199, tmp200
	add	r3, r2, r3	@ tmp163, tmp198, tmp162
	add	r2, r2, ip	@ tmp175, tmp198, tmp174
	mov	r1, #0	@ tmp178,
	str	r0, [sp, #116]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	ldr	r3, [r3, #12]	@ D.44061, CapItem
	ldr	r2, [r2, #24]	@ tmp177, CapItem
	cmp	r0, r3	@ MinDispFspNum, D.44061
	str	r1, [sp, #120]	@ tmp178, stChanOption.s32SlotWidth
	rsblt	r3, r0, r3	@ D.44061, MinDispFspNum, D.44061
	str	r1, [sp, #124]	@ tmp178, stChanOption.s32SlotHeight
	movge	r3, #1	@ tmp165,
	str	r2, [sp, #112]	@ tmp177, stChanOption.s32SCDBufSize
	cmp	r4, #24	@ eCapLevel,
	str	r3, [sp, #88]	@ D.44061, stChanOption.s32MaxRefFrameNum
	add	r2, sp, #12	@,,
	streq	r1, [sp, #88]	@ tmp178, stChanOption.s32MaxRefFrameNum
	mov	r0, r4	@, eCapLevel
	mov	r1, sp	@,
	mov	r3, #1	@ tmp167,
	streq	r3, [sp, #116]	@ tmp167, stChanOption.s32DisplayFrameNum
	str	r3, [sp, #96]	@ tmp167, stChanOption.s32SupportBFrame
	str	r3, [sp, #100]	@ tmp167, stChanOption.s32SupportH264
	str	r3, [sp, #108]	@ tmp167, stChanOption.s32ReRangeEn
	bl	VCTRL_GetChanMemSize	@
	cmp	r0, #0	@,
	bne	.L1623	@,
	cmp	r5, #0	@ pChanMem,
	beq	.L1614	@,
	ldr	ip, [r5, #8]	@ D.44061, pChanMem_40(D)->Length
	cmp	ip, #0	@ D.44061,
	beq	.L1611	@,
	ldr	r2, [r5]	@ D.44061, pChanMem_40(D)->PhyAddr
	cmp	r2, #0	@ D.44061,
	beq	.L1612	@,
	ldr	r1, [r5, #4]	@ D.44062, pChanMem_40(D)->VirAddr
	cmp	r1, #0	@ D.44062,
	beq	.L1612	@,
	ldr	r3, [sp]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r0, [sp, #12]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r3, r0	@ D.44061, VdmChanMemSize, ScdChanMemSize
	cmp	ip, r3	@ D.44061, D.44061
	blt	.L1612	@,
	ldr	r5, [sp, #16]	@ D.44061, ScdChanMemSize
	add	r8, sp, #144	@ tmp191,,
	str	r2, [sp, #40]	@ D.44061, scd_MemRecord.PhyAddr
	add	lr, sp, #128	@ tmp193,,
	add	r9, r2, r5	@ D.44061, D.44061, D.44061
	add	r10, r1, r5	@ D.44062, D.44062, D.44061
	str	r5, [sp, #48]	@ D.44061, scd_MemRecord.Length
	rsb	r5, r5, ip	@ D.44061, D.44061, D.44061
	str	r1, [sp, #44]	@ D.44062, scd_MemRecord.VirAddr
	mov	ip, #1	@ OneChanMemFlag,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp201,,,,
	mov	r7, #3	@ tmp187,
	str	r9, [sp, #24]	@ D.44061, vdh_MemRecord.PhyAddr
	str	r10, [sp, #28]	@ D.44062, vdh_MemRecord.VirAddr
	str	r5, [sp, #32]	@ D.44061, vdh_MemRecord.Length
	stmia	r8, {r0, r1, r2, r3}	@ tmp191,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp203,,,,
	str	r7, [sp, #64]	@ tmp187, stChanOption.MemAllocMode
	stmia	lr, {r0, r1, r2, r3}	@ tmp193,,,,
.L1611:
	mov	r3, ip	@, OneChanMemFlag
	add	r1, sp, #56	@ tmp212,,
	mov	r0, r4	@, eCapLevel
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.44060,
.L1602:
	add	sp, sp, #208	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1606:
	mov	r0, #1	@ MinDispFspNum,
	b	.L1604	@
.L1603:
	mov	r0, #6	@ MinDispFspNum,
	b	.L1604	@
.L1612:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L1623:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.44060,
	b	.L1602	@
.L1614:
	mov	ip, r5	@ OneChanMemFlag, pChanMem
	b	.L1611	@
.L1625:
	.align	2
.L1624:
	.word	CapItem
	.fnend
	.size	VCTRL_CreateChan, .-VCTRL_CreateChan
	.align	2
	.global	VCTRL_DestroyChanWithOption
	.type	VCTRL_DestroyChanWithOption, %function
VCTRL_DestroyChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0	@ ChanID, ChanID
	.pad #116
	sub	sp, sp, #116	@,,
	ldr	r0, .L1649	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r4, #3	@ ChanID,
	ldr	r7, .L1649+4	@ tmp234,
	bhi	.L1629	@,
	ldr	r5, [r7, r4, asl #2]	@ D.44068, s_pstVfmwChan
	cmp	r5, #0	@ D.44068,
	beq	.L1629	@,
	ldr	r3, [r5, #4]	@ _11->s32IsOpen, _11->s32IsOpen
	cmp	r3, #1	@ _11->s32IsOpen,
	bne	.L1629	@,
	ldr	r1, .L1649+8	@ tmp144,
	mov	r3, #30	@ tmp145,
	ldr	r2, .L1649+12	@ tmp146,
	ldr	r0, .L1649+16	@,
	str	r3, [r1, r4, asl #2]	@ tmp145, g_FrameRate
	str	r3, [r2, r4, asl #2]	@ tmp145, g_LastFrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_StopChan	@
	cmp	r0, #0	@,
	ldr	r0, .L1649+16	@,
	bne	.L1647	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	bl	VCTRL_ResetChan	@
	ldr	r0, .L1649+16	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r1, .L1649+20	@ tmp157,
	movw	r3, #11160	@ tmp159,
	ldr	r2, [r7, r4, asl #2]	@ tmp156, s_pstVfmwChan
	movt	r3, 1	@ tmp159,
	mla	r3, r3, r4, r1	@ tmp160, tmp159, ChanID, tmp157
	ldr	r2, [r2, #1604]	@ D.44069, _29->stSynExtraData.s32DnrEnable
	add	r3, r3, #75776	@ tmp161, tmp160,
	str	r2, [r3, #916]	@ D.44069, s_DnrChan[ChanID_6(D)].s32DnrEnable
	ldr	r3, [r5, #880]	@ D.44070, _11->eVidStd
	cmp	r3, #4	@ D.44070,
	beq	.L1631	@,
	sub	r2, r3, #10	@ D.44071, D.44070,
	cmp	r2, #2	@ D.44071,
	bhi	.L1632	@,
	ldr	r2, [r7, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1632	@,
.L1631:
	ldr	r3, [r7, #188]	@ D.44072, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.44072,
	beq	.L1633	@,
.L1648:
	add	r0, r5, #217088	@, D.44068,
	add	r0, r0, #432	@,,
	blx	r3	@ D.44072
.L1633:
	mov	r0, r4	@, ChanID
	mov	r6, #0	@ tmp223,
	bl	VCTRL_UnInstallChan	@
	ldr	r5, [r7, r4, asl #2]	@ D.44068, s_pstVfmwChan
	mov	r2, #16	@,
	add	r8, r5, #217088	@ tmp175, D.44068,
	add	r1, r5, #152	@, D.44068,
	ldr	lr, [r5, #224]	@ _40->s32SelfAllocChanMem_ctx, _40->s32SelfAllocChanMem_ctx
	ldr	ip, [r5, #216]	@ _40->s32SelfAllocChanMem_vdh, _40->s32SelfAllocChanMem_vdh
	ldr	r3, [r5, #220]	@ _40->s32SelfAllocChanMem_scd, _40->s32SelfAllocChanMem_scd
	ldr	r9, [r8, #400]	@ _40->s32SelfAllocChanMem_pmv, _40->s32SelfAllocChanMem_pmv
	add	r0, sp, #4	@ tmp235,,
	str	lr, [sp, #76]	@ _40->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	str	ip, [sp, #68]	@ _40->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	str	r3, [sp, #72]	@ _40->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	str	r9, [sp, #80]	@ _40->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r5, #200	@, D.44068,
	mov	r2, #16	@,
	add	r0, sp, #52	@,,
	bl	memcpy	@
	add	r1, r5, #168	@, D.44068,
	mov	r2, #16	@,
	add	r0, sp, #20	@,,
	bl	memcpy	@
	add	r1, r5, #184	@, D.44068,
	mov	r2, #16	@,
	add	r0, sp, #36	@,,
	bl	memcpy	@
	add	r1, r5, #104	@, D.44068,
	mov	r2, #12	@,
	add	r0, sp, #84	@,,
	bl	memcpy	@
	add	r1, r8, #404	@, tmp175,
	mov	r2, #16	@,
	add	r0, sp, #96	@,,
	bl	memcpy	@
	add	r1, r4, #58	@ tmp220, ChanID,
	ldr	r3, .L1649+24	@ tmp219,
	mov	r0, r4	@, ChanID
	ldr	r2, .L1649+28	@ tmp224,
	add	r3, r3, r1, lsl #2	@ tmp221, tmp219, tmp220,
	str	r6, [r7, r4, asl #2]	@ tmp223, s_pstVfmwChan
	str	r6, [r2, r4, asl #2]	@ tmp223, s_pFspInst
	str	r6, [r3, #4]	@ tmp223, s_SmIIS.pSmInstArray
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, ChanID
	bl	DNR_CloseChan	@
	ldr	r0, .L1649+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1649	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, ChanID
	add	r1, sp, #4	@ tmp236,,
	bl	VCTRL_FreeChanResource	@
	mov	r0, r6	@ D.44066, tmp223
.L1628:
	add	sp, sp, #116	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1632:
	cmp	r3, #14	@ D.44070,
	bne	.L1633	@,
	ldr	r3, [r7, #188]	@ D.44072, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.44072,
	bne	.L1648	@,
	b	.L1633	@
.L1629:
	bl	vfmw_dprint_nothing	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1649	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.44066,
	add	sp, sp, #116	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1647:
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1649	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.44066,
	b	.L1628	@
.L1650:
	.align	2
.L1649:
	.word	.LANCHOR0+3720
	.word	.LANCHOR0
	.word	g_FrameRate
	.word	g_LastFrameRate
	.word	g_SpinLockIrq_Destroy
	.word	s_DnrChan
	.word	s_SmIIS
	.word	s_pFspInst
	.fnend
	.size	VCTRL_DestroyChanWithOption, .-VCTRL_DestroyChanWithOption
	.align	2
	.global	VCTRL_DestroyChan
	.type	VCTRL_DestroyChan, %function
VCTRL_DestroyChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ ChanID, ChanID
	bl	VCTRL_DestroyChanWithOption	@
	ldr	r3, .L1653	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r3, r3, r4, lsl #2	@ tmp114, tmp113, ChanID,
	str	r2, [r3, #3588]	@ tmp116, g_DSPState
	ldmfd	sp!, {r4, pc}	@
.L1654:
	.align	2
.L1653:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_DestroyChan, .-VCTRL_DestroyChan
	.align	2
	.global	VCTRL_CloseVfmw
	.type	VCTRL_CloseVfmw, %function
VCTRL_CloseVfmw:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r5, .L1674	@ tmp147,
	ldr	r3, [r5, #16]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L1662	@,
	ldr	r8, .L1674+4	@ tmp149,
	mov	r4, #0	@ i,
	mov	r7, r4	@ tmp150, i
	mov	r6, r5	@ ivtmp.682, tmp147
.L1658:
	ldr	r3, [r6], #4	@ D.44120, MEM[base: _2, offset: 0B]
	mov	r0, r4	@, i
	cmp	r3, #0	@ D.44120,
	beq	.L1657	@,
	bl	VCTRL_DestroyChanWithOption	@
	str	r7, [r8, r4, asl #2]	@ tmp150, MEM[symbol: g_DSPState, index: _34, offset: 0B]
.L1657:
	add	r4, r4, #1	@ i, i,
	cmp	r4, #4	@ i,
	bne	.L1658	@,
	bl	FSP_Exit	@
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r2, #3	@ tmp131,
	str	r2, [r5, #48]	@ tmp131, s_VfmwCTrl.eTaskCommand
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1660	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.44122,
	bl	msleep	@
	b	.L1661	@
.L1673:
	bl	msleep	@
	subs	r4, r4, #1	@ D.44122, D.44122,
	beq	.L1660	@,
.L1661:
	ldr	r3, [r5, #44]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1673	@,
.L1660:
	mov	r1, #16	@,
	ldr	r0, .L1674+4	@,
	mov	r4, #0	@ tmp135,
	str	r4, [r5, #48]	@ tmp135, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1674+8	@,
	bl	CloseDrivers	@
	str	r4, [r5, #16]	@ tmp135, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r0, r4	@ D.44117, tmp135
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1662:
	mvn	r0, #0	@ D.44117,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1675:
	.align	2
.L1674:
	.word	.LANCHOR0
	.word	.LANCHOR0+3588
	.word	.LANCHOR0+64
	.fnend
	.size	VCTRL_CloseVfmw, .-VCTRL_CloseVfmw
	.align	2
	.global	Save2DYuv
	.type	Save2DYuv, %function
Save2DYuv:
	.fnstart
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r3	@ Height, Height
	mov	r3, r2, asl #1	@ D.44160, Width,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r8, r1	@ ChromOfst, ChromOfst
	mov	r4, r2	@ Width, Width
	mul	r1, r10, r3	@, Height, D.44160
	str	r2, [sp, #8]	@ Width, %sfp
	ldr	r7, [sp, #56]	@ Stride, Stride
	ldr	r6, [sp, #60]	@ fp, fp
	bl	ioremap	@
	subs	r5, r0, #0	@ pLuma,
	beq	.L1676	@,
	mul	fp, r10, r4	@ D.44160, Height, Width
	add	r8, r5, r8	@ pChrom, pLuma, ChromOfst
	add	r3, fp, fp, lsr #31	@ tmp153, D.44160, D.44160,
	mov	r3, r3, asr #1	@ D.44160, tmp153,
	str	r3, [sp, #12]	@ D.44160, %sfp
	add	r0, r3, #1024	@, D.44160,
	bl	OSAL_AllocVirMem	@
	subs	r3, r0, #0	@ pUV,
	str	r3, [sp, #4]	@ pUV, %sfp
	beq	.L1678	@,
	cmp	fp, #0	@ D.44160,
	add	r9, fp, #3	@ tmp158, D.44160,
	movge	r9, fp	@ D.44160, D.44160
	cmp	r10, #0	@ Height,
	add	r9, r3, r9, asr #2	@ pV, pUV, D.44160,
	movgt	r4, #0	@ y,
	ble	.L1683	@,
.L1682:
	add	r4, r4, #1	@ y, y,
	mov	r2, r6	@, fp
	mov	r1, fp	@, D.44160
	mov	r0, r5	@, pLuma
	bl	klib_fwrite	@
	cmp	r4, r10	@ y, Height
	bne	.L1682	@,
.L1683:
	add	r10, r10, r10, lsr #31	@ tmp161, Height, Height,
	mov	r10, r10, asr #1	@ D.44160, tmp161,
	cmp	r10, #0	@ D.44160,
	ble	.L1681	@,
	ldr	r3, [sp, #8]	@ Width, %sfp
	mov	r0, #0	@ y,
	ldr	fp, [sp, #4]	@ pUV, %sfp
	add	r4, r3, r3, lsr #31	@ tmp164, Width, Width,
	mov	r2, r4, asr #1	@ D.44160, tmp164,
.L1684:
	cmp	r2, #0	@ D.44160,
	ble	.L1686	@,
	sub	ip, fp, #1	@ ivtmp.700, pUV,
	sub	r1, r9, #1	@ ivtmp.711, pV,
	add	r4, r8, r2	@ D.44165, pChrom, D.44160
	mov	r3, r8	@ ivtmp.697, pChrom
.L1685:
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.44164, MEM[base: _51, offset: 0B]
	strb	lr, [ip, #1]!	@ D.44164, MEM[base: _37, offset: 0B]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2	@ D.44164, MEM[base: _7, offset: 0B]
	cmp	r4, r3	@ D.44165, ivtmp.697
	strb	lr, [r1, #1]!	@ D.44164, MEM[base: _11, offset: 0B]
	bne	.L1685	@,
	add	fp, fp, r2	@ pUV, pUV, D.44160
	add	r9, r9, r2	@ pV, pV, D.44160
.L1686:
	add	r0, r0, #1	@ y, y,
	add	r8, r8, r7	@ pChrom, pChrom, Stride
	cmp	r0, r10	@ y, D.44160
	bne	.L1684	@,
.L1681:
	mov	r2, r6	@, fp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L1678:
	mov	r0, r5	@, pLuma
	bl	iounmap	@
	ldr	r3, [sp, #4]	@ pUV, %sfp
	cmp	r3, #0	@ pUV,
	beq	.L1676	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_FreeVirMem	@
.L1676:
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
	.fnend
	.size	Save2DYuv, .-Save2DYuv
	.align	2
	.global	VCTRL_SetDbgOption
	.type	VCTRL_SetDbgOption, %function
VCTRL_SetDbgOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r0, #19	@,
	bx	lr	@
	.fnend
	.size	VCTRL_SetDbgOption, .-VCTRL_SetDbgOption
	.align	2
	.global	VCTRL_GetLastFrameIdPlus2
	.type	VCTRL_GetLastFrameIdPlus2, %function
VCTRL_GetLastFrameIdPlus2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanID,
	bhi	.L1705	@,
	ldr	r3, .L1706	@ tmp115,
	ldr	r3, [r3, r0, asl #2]	@ D.44172, s_pstVfmwChan
	cmp	r3, #0	@ D.44172,
	ldrne	r0, [r3, #676]	@ D.44170, _7->s32LastFrameIdPlus2
	mvneq	r0, #0	@ D.44170,
	bx	lr	@
.L1705:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.44170,
	ldmfd	sp!, {r4, pc}	@
.L1707:
	.align	2
.L1706:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_GetLastFrameIdPlus2, .-VCTRL_GetLastFrameIdPlus2
	.align	2
	.global	VCTRL_SetLastFrameIdPlus2
	.type	VCTRL_SetLastFrameIdPlus2, %function
VCTRL_SetLastFrameIdPlus2:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #3	@ ChanID,
	bhi	.L1714	@,
	ldr	r3, .L1715	@ tmp114,
	ldr	r3, [r3, r0, asl #2]	@ D.44176, s_pstVfmwChan
	cmp	r3, #0	@ D.44176,
	strne	r1, [r3, #676]	@ Value, _6->s32LastFrameIdPlus2
	bx	lr	@
.L1714:
	b	vfmw_dprint_nothing	@
.L1716:
	.align	2
.L1715:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_SetLastFrameIdPlus2, .-VCTRL_SetLastFrameIdPlus2
	.align	2
	.global	VCTRL_OutputLastFrame
	.type	VCTRL_OutputLastFrame, %function
VCTRL_OutputLastFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ ChanId, ChanId
	ldr	r6, .L1749	@ tmp172,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r6, r0, asl #2]	@ D.44181, s_pstVfmwChan
	add	r0, r3, #217088	@ tmp173, D.44181,
	ldr	r2, [r0, #424]	@ _7->stSynCtx.eVidStd, _7->stSynCtx.eVidStd
	cmp	r2, #13	@ _7->stSynCtx.eVidStd,
	ldrls	pc, [pc, r2, asl #2]	@ _7->stSynCtx.eVidStd
	b	.L1737	@
.L1720:
	.word	.L1719
	.word	.L1721
	.word	.L1722
	.word	.L1723
	.word	.L1737
	.word	.L1724
	.word	.L1725
	.word	.L1737
	.word	.L1726
	.word	.L1727
	.word	.L1728
	.word	.L1728
	.word	.L1728
	.word	.L1729
.L1729:
	add	r0, r0, #432	@, tmp173,
	bl	VP8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
.L1718:
	add	r3, r4, #1	@ tmp159, ret,
	cmp	r3, #1	@ tmp159,
	bhi	.L1730	@,
	ldr	r3, .L1749+4	@ tmp160,
	ldr	r3, [r3, #-3380]	@ D.44194, g_event_report
	cmp	r3, #0	@ D.44194,
	beq	.L1732	@,
	add	r2, sp, #8	@ tmp162,,
	mov	ip, #1	@ tmp161,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp161, para
	blx	r3	@ D.44194
.L1732:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1719:
	add	r0, r0, #432	@, tmp173,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1721:
	add	r0, r0, #432	@, tmp173,
	bl	VC1DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1722:
	add	r0, r0, #432	@, tmp173,
	bl	MPEG4DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1723:
	add	r0, r0, #432	@, tmp173,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1724:
	add	r0, r0, #432	@, tmp173,
	bl	DIVX3DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1725:
	add	r0, r0, #432	@, tmp173,
	bl	AVSDEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1726:
	add	r0, r0, #432	@, tmp173,
	bl	REAL8DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1727:
	add	r0, r0, #432	@, tmp173,
	bl	REAL9DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1728:
	add	r0, r0, #432	@, tmp173,
	bl	VP6DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1718	@
.L1730:
	ldr	r3, .L1749+8	@ tmp163,
	ldr	r3, [r3]	@ D.44196, g_chipID
	cmp	r3, #16	@ D.44196,
	bhi	.L1732	@,
	mov	r1, #1	@ tmp164,
	movw	r2, #32831	@ tmp165,
	mov	r3, r1, asl r3	@ D.44190, tmp164,
	bfi	r2, r1, #16, #16	@ tmp165, tmp164,,
	tst	r3, r2	@ D.44190, tmp165
	bne	.L1733	@,
	tst	r3, #3904	@ D.44190,
	beq	.L1732	@,
	ldr	r3, .L1749+4	@ tmp169,
	ldr	r3, [r3, #-3380]	@ D.44194, g_event_report
	cmp	r3, #0	@ D.44194,
	beq	.L1736	@,
	add	r2, sp, #8	@ tmp170,,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ D.44194
.L1736:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1733:
	cmp	r5, #3	@ ChanId,
	bhi	.L1748	@,
	ldr	r3, [r6, r5, asl #2]	@ D.44181, s_pstVfmwChan
	cmp	r3, #0	@ D.44181,
	strne	r4, [r3, #676]	@ ret, _60->s32LastFrameIdPlus2
	b	.L1736	@
.L1737:
	mvn	r4, #0	@ ret,
	b	.L1718	@
.L1748:
	bl	vfmw_dprint_nothing	@
	b	.L1736	@
.L1750:
	.align	2
.L1749:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	g_chipID
	.fnend
	.size	VCTRL_OutputLastFrame, .-VCTRL_OutputLastFrame
	.align	2
	.global	VCTRL_PostProc
	.type	VCTRL_PostProc, %function
VCTRL_PostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r4, .L1775	@ tmp278,
	ldr	ip, [r4, r0, asl #2]	@ D.44221, s_pstVfmwChan
	cmp	ip, #0	@ D.44221,
	beq	.L1771	@,
	ldr	r3, [ip, #880]	@ _4->eVidStd, _4->eVidStd
	mov	r6, r1	@ ErrRatio, ErrRatio
	mov	r5, r0	@ ChanId, ChanId
	cmp	r3, #13	@ _4->eVidStd,
	ldrls	pc, [pc, r3, asl #2]	@ _4->eVidStd
	b	.L1751	@
.L1755:
	.word	.L1754
	.word	.L1756
	.word	.L1757
	.word	.L1758
	.word	.L1751
	.word	.L1759
	.word	.L1760
	.word	.L1751
	.word	.L1761
	.word	.L1762
	.word	.L1763
	.word	.L1763
	.word	.L1763
	.word	.L1764
.L1756:
	add	r0, ip, #217088	@, D.44221,
	ldr	r6, .L1775	@ tmp250,
	add	r0, r0, #432	@,,
	bl	VC1DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ D.44221, s_pstVfmwChan
	add	r2, r3, #294912	@ tmp252, D.44221,
	ldrb	r2, [r2, #887]	@ zero_extendqisi2	@ _68->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag, _68->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag
	cmp	r2, #1	@ _68->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag,
	beq	.L1772	@,
.L1769:
	add	r3, r3, #217088	@ tmp262, D.44221,
	mov	r2, #0	@ tmp263,
	str	r2, [r3, #436]	@ tmp263,
.L1751:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1764:
	add	r0, ip, #217088	@, D.44221,
	add	r0, r0, #432	@,,
	bl	VP8DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp274, s_pstVfmwChan
	mov	r2, #0	@ tmp277,
	add	r3, r3, #217088	@ tmp276, tmp274,
	str	r2, [r3, #436]	@ tmp277,
	b	.L1751	@
.L1754:
	add	r0, ip, #217088	@, D.44221,
	mov	r3, r2	@, pLumaInfo
	add	r0, r0, #432	@,,
	mov	r2, #1	@,
	mov	r6, #0	@ tmp158,
	str	r6, [sp]	@ tmp158,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ D.44221, s_pstVfmwChan
	ldr	r4, .L1775	@ tmp159,
	add	r2, r3, #229376	@ tmp161, D.44221,
	ldrb	r2, [r2, #1700]	@ zero_extendqisi2	@ _48->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, _48->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _48->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L1773	@,
.L1765:
	add	r3, r3, #217088	@ tmp171, D.44221,
	mov	r2, #0	@ tmp172,
	str	r2, [r3, #792]	@ tmp172, _100->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	b	.L1751	@
.L1757:
	add	r0, ip, #217088	@, D.44221,
	add	r0, r0, #432	@,,
	bl	MPEG4DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ D.44221, s_pstVfmwChan
	ldr	r4, .L1775	@ tmp191,
	add	r2, r3, #237568	@ tmp193, D.44221,
	ldrb	r2, [r2, #2948]	@ zero_extendqisi2	@ _58->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag, _58->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _58->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag,
	beq	.L1774	@,
.L1767:
	add	r3, r3, #217088	@ tmp203, D.44221,
	mov	r2, #0	@ tmp204,
	str	r2, [r3, #1468]	@ tmp204, _96->stSynCtx.unSyntax.stMpeg4Ctx.pMp4DecParam
	b	.L1751	@
.L1758:
	add	r0, ip, #217088	@, D.44221,
	ldr	r6, .L1775	@ tmp175,
	add	r0, r0, #432	@,,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ D.44221, s_pstVfmwChan
	add	r2, r3, #290816	@ tmp177, D.44221,
	ldrb	r2, [r2, #417]	@ zero_extendqisi2	@ _53->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, _53->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _53->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	bne	.L1769	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp180, s_pstVfmwChan
	mov	r1, #0	@ tmp183,
	add	r2, r3, #290816	@ tmp182, tmp180,
	strb	r1, [r2, #417]	@ tmp183, _55->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	b	.L1769	@
.L1759:
	mov	r0, #0	@,
	bl	VDMDRV_GetSwitchRounding	@
	ldr	r3, [r4, r5, asl #2]	@ tmp241, s_pstVfmwChan
	mov	r1, r6	@, ErrRatio
	mov	r2, r0	@,
	add	r0, r3, #217088	@, tmp241,
	add	r0, r0, #432	@,,
	bl	DIVX3DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp244, s_pstVfmwChan
	mov	r2, #0	@ tmp247,
	add	r3, r3, #217088	@ tmp246, tmp244,
	str	r2, [r3, #436]	@ tmp247,
	b	.L1751	@
.L1760:
	add	r0, ip, #217088	@, D.44221,
	ldr	r6, .L1775	@ tmp207,
	add	r0, r0, #432	@,,
	bl	AVSDEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ D.44221, s_pstVfmwChan
	add	r2, r3, #233472	@ tmp209, D.44221,
	ldrb	r2, [r2, #1172]	@ zero_extendqisi2	@ _63->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag, _63->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	cmp	r2, #1	@ _63->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag,
	bne	.L1769	@,
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp212, s_pstVfmwChan
	mov	r1, #0	@ tmp215,
	add	r2, r3, #233472	@ tmp214, tmp212,
	strb	r1, [r2, #1172]	@ tmp215, _65->stSynCtx.unSyntax.stAvsCtx.IsStreamEndFlag
	b	.L1769	@
.L1761:
	mov	r0, #0	@,
	bl	VDMDRV_GetMb0QpInCurrPic	@
	ldr	r3, [r4, r5, asl #2]	@ tmp223, s_pstVfmwChan
	mov	r1, r6	@, ErrRatio
	mov	r2, r0	@,
	add	r0, r3, #217088	@, tmp223,
	add	r0, r0, #432	@,,
	bl	REAL8DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp226, s_pstVfmwChan
	mov	r2, #0	@ tmp229,
	add	r3, r3, #217088	@ tmp228, tmp226,
	str	r2, [r3, #436]	@ tmp229,
	b	.L1751	@
.L1762:
	mov	r0, #0	@,
	bl	VDMDRV_GetMb0QpInCurrPic	@
	ldr	r3, [r4, r5, asl #2]	@ tmp232, s_pstVfmwChan
	mov	r1, r6	@, ErrRatio
	mov	r2, r0	@,
	add	r0, r3, #217088	@, tmp232,
	add	r0, r0, #432	@,,
	bl	REAL9DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp235, s_pstVfmwChan
	mov	r2, #0	@ tmp238,
	add	r3, r3, #217088	@ tmp237, tmp235,
	str	r2, [r3, #436]	@ tmp238,
	b	.L1751	@
.L1763:
	add	r0, ip, #217088	@, D.44221,
	add	r0, r0, #432	@,,
	bl	VP6DEC_VDMPostProc	@
	ldr	r3, [r4, r5, asl #2]	@ tmp267, s_pstVfmwChan
	mov	r2, #0	@ tmp270,
	add	r3, r3, #217088	@ tmp269, tmp267,
	str	r2, [r3, #436]	@ tmp270,
	b	.L1751	@
.L1771:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L1774:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp196, s_pstVfmwChan
	mov	r1, #0	@ tmp199,
	add	r2, r3, #237568	@ tmp198, tmp196,
	strb	r1, [r2, #2948]	@ tmp199, _60->stSynCtx.unSyntax.stMpeg4Ctx.IsStreamEndFlag
	b	.L1767	@
.L1772:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r5, asl #2]	@ tmp255, s_pstVfmwChan
	mov	r1, #0	@ tmp258,
	add	r2, r3, #294912	@ tmp257, tmp255,
	strb	r1, [r2, #887]	@ tmp258, _70->stSynCtx.unSyntax.stVc1Ctx.CodecInfo.IsStreamEndFlag
	b	.L1769	@
.L1773:
	mov	r0, r5	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r4, r5, asl #2]	@ tmp164, s_pstVfmwChan
	add	r2, r3, #229376	@ tmp166, tmp164,
	strb	r6, [r2, #1700]	@ tmp158, _50->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	b	.L1765	@
.L1776:
	.align	2
.L1775:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_PostProc, .-VCTRL_PostProc
	.align	2
	.global	VCTRL_VdmPostProc
	.type	VCTRL_VdmPostProc, %function
VCTRL_VdmPostProc:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #3	@ ChanId,
	bhi	.L1779	@,
	ldr	ip, .L1786	@ tmp117,
	ldr	ip, [ip, r0, asl #2]	@ D.44237, s_pstVfmwChan
	cmp	ip, #0	@ D.44237,
	beq	.L1779	@,
	ldr	ip, [ip, #8]	@ _6->s32IsRun, _6->s32IsRun
	cmp	ip, #1	@ _6->s32IsRun,
	beq	.L1785	@,
.L1779:
	b	vfmw_dprint_nothing	@
.L1785:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r2	@ pLumaInfo, pLumaInfo
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r4, r0	@ ChanId, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r6	@, pLumaInfo
	mov	r1, r5	@, ErrRatio
	mov	r0, r4	@, ChanId
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_PostProc	@
.L1787:
	.align	2
.L1786:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_VdmPostProc, .-VCTRL_VdmPostProc
	.align	2
	.global	VCTRL_SvdecLastFrame
	.type	VCTRL_SvdecLastFrame, %function
VCTRL_SvdecLastFrame:
	.fnstart
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L1795	@ tmp114,
	ldr	ip, [r3, #-3380]	@ D.44242, g_event_report
	cmp	ip, #0	@ D.44242,
	bxeq	lr	@
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r2, sp, #8	@ tmp116,,
	add	r3, r1, #2	@ D.44243, LastFrameID,
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ D.44243, para
	blx	ip	@ D.44242
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L1796:
	.align	2
.L1795:
	.word	.LANCHOR1
	.fnend
	.size	VCTRL_SvdecLastFrame, .-VCTRL_SvdecLastFrame
	.align	2
	.global	VCTRL_EnableEsBuf
	.type	VCTRL_EnableEsBuf, %function
VCTRL_EnableEsBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1798	@ tmp111,
	mov	r2, #1	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3292]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1799:
	.align	2
.L1798:
	.word	.LANCHOR1
	.fnend
	.size	VCTRL_EnableEsBuf, .-VCTRL_EnableEsBuf
	.align	2
	.global	VCTRL_DisableEsBuf
	.type	VCTRL_DisableEsBuf, %function
VCTRL_DisableEsBuf:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1801	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3292]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1802:
	.align	2
.L1801:
	.word	.LANCHOR1
	.fnend
	.size	VCTRL_DisableEsBuf, .-VCTRL_DisableEsBuf
	.align	2
	.global	VCTRL_IsEsBufEnable
	.type	VCTRL_IsEsBufEnable, %function
VCTRL_IsEsBufEnable:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L1804	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp114, ChanID,
	ldr	r0, [r0, #-3292]	@, g_EsBufValidFlag
	bx	lr	@
.L1805:
	.align	2
.L1804:
	.word	.LANCHOR1
	.fnend
	.size	VCTRL_IsEsBufEnable, .-VCTRL_IsEsBufEnable
	.align	2
	.global	Get_YuvFormat
	.type	Get_YuvFormat, %function
Get_YuvFormat:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #6	@ enFmt,
	ldrls	pc, [pc, r1, asl #2]	@ enFmt
	b	.L1807	@
.L1809:
	.word	.L1808
	.word	.L1810
	.word	.L1811
	.word	.L1812
	.word	.L1813
	.word	.L1814
	.word	.L1815
.L1815:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #1	@ eYuvFormat,
	movne	r0, #7	@ eYuvFormat,
	bx	lr	@
.L1808:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #0	@ eYuvFormat,
	movne	r0, #6	@ eYuvFormat,
	bx	lr	@
.L1810:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	bx	lr	@
.L1811:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	bx	lr	@
.L1812:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	bx	lr	@
.L1813:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	bx	lr	@
.L1814:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	bx	lr	@
.L1807:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mov	r0, #13	@ eYuvFormat,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	Get_YuvFormat, .-Get_YuvFormat
	.global	g_DnrIrqHandle
	.global	g_VdecIrqHandle
	.global	g_StopDec
	.global	g_DnrSleepTime
	.global	g_SleepTime
	.global	pOption
	.global	g_eVdmVersion
	.global	g_VdmCharacter
	.global	g_CurProcChan
	.global	g_ResetCreateNewSave
	.global	save_yuv_chan_num
	.global	vfmw_save_yuv_file
	.global	save_seg_chan_num
	.global	vfmw_save_seg_file
	.global	save_str_chan_num
	.global	vfmw_save_str_file
	.global	g_pDbgMemVir
	.global	g_DbgMemPhy
	.global	g_not_allow_H264FullPictureRepair_flag
	.global	g_not_direct_8x8_inference_flag
	.global	g_allow_B_before_P
	.global	extra_cmd
	.global	extra_disp
	.global	extra_ref
	.global	g_VfmwGlobalStat
	.global	g_VfmwChanStat
	.global	s_pstVfmwChan
	.global	AcceleratorCharacter
	.global	g_event_report
	.global	g_ActivateLock
	.global	g_IntEvent
	.global	g_DSDLock
	.global	g_TaskLock
	.global	g_SdecFunc
	.global	g_ChanTick
	.global	g_scd_vir
	.global	g_DSPState
	.section	__param,"a",%progbits
	.align	2
	.type	__param_extra_cmd, %object
	.size	__param_extra_cmd, 20
__param_extra_cmd:
@ name:
	.word	__param_str_extra_cmd
@ mod:
	.word	__this_module
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.byte	-1
@ flags:
	.byte	0
@ <anonymous>:
@ arg:
	.word	extra_cmd
	.type	__param_extra_disp, %object
	.size	__param_extra_disp, 20
__param_extra_disp:
@ name:
	.word	__param_str_extra_disp
@ mod:
	.word	__this_module
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.byte	-1
@ flags:
	.byte	0
@ <anonymous>:
@ arg:
	.word	extra_disp
	.type	__param_extra_ref, %object
	.size	__param_extra_ref, 20
__param_extra_ref:
@ name:
	.word	__param_str_extra_ref
@ mod:
	.word	__this_module
@ ops:
	.word	param_ops_int
@ perm:
	.short	0
@ level:
	.byte	-1
@ flags:
	.byte	0
@ <anonymous>:
@ arg:
	.word	extra_ref
	.section	.rodata
	.align	2
	.type	__param_str_extra_cmd, %object
	.size	__param_str_extra_cmd, 10
__param_str_extra_cmd:
	.ascii	"extra_cmd\000"
	.space	2
	.type	__param_str_extra_disp, %object
	.size	__param_str_extra_disp, 11
__param_str_extra_disp:
	.ascii	"extra_disp\000"
	.space	1
	.type	__param_str_extra_ref, %object
	.size	__param_str_extra_ref, 10
__param_str_extra_ref:
	.ascii	"extra_ref\000"
	.section	.modinfo,"a",%progbits
	.type	__UNIQUE_ID_extra_cmdtype2, %object
	.size	__UNIQUE_ID_extra_cmdtype2, 23
__UNIQUE_ID_extra_cmdtype2:
	.ascii	"parmtype=extra_cmd:int\000"
	.type	__UNIQUE_ID_extra_disptype1, %object
	.size	__UNIQUE_ID_extra_disptype1, 24
__UNIQUE_ID_extra_disptype1:
	.ascii	"parmtype=extra_disp:int\000"
	.type	__UNIQUE_ID_extra_reftype0, %object
	.size	__UNIQUE_ID_extra_reftype0, 23
__UNIQUE_ID_extra_reftype0:
	.ascii	"parmtype=extra_ref:int\000"
	.data
.LANCHOR2 = . + 0
	.type	g_not_direct_8x8_inference_flag, %object
	.size	g_not_direct_8x8_inference_flag, 1
g_not_direct_8x8_inference_flag:
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"vdec_vdh\000"
	.space	3
.LC1:
	.ascii	"vdec_scd\000"
	.space	3
.LC2:
	.ascii	"vdec_dnr\000"
	.space	3
.LC3:
	.ascii	"VFMW_Hal_%d\000"
.LC4:
	.ascii	"VFMW_Scd_Msg\000"
	.space	3
.LC5:
	.ascii	"extra_ref=\000"
	.space	1
.LC6:
	.ascii	"=\000"
	.space	2
.LC7:
	.ascii	" \000"
	.space	2
.LC8:
	.ascii	"extra_disp=\000"
.LC9:
	.ascii	"extra_cmd=\000"
	.space	1
.LC10:
	.ascii	"HI_VFMW_VideoDecode\000"
.LC11:
	.ascii	"VFMW_Chan_Ctx\000"
	.space	2
.LC12:
	.ascii	"VFMW_Chan_Vdh\000"
	.space	2
.LC13:
	.ascii	"VFMW_Chan_Scd\000"
	.space	2
.LC14:
	.ascii	"VFMW_Chan_Pmv\000"
	.bss
	.align	2
.LANCHOR0 = . + 0
.LANCHOR1 = . + 8184
	.type	s_pstVfmwChan, %object
	.size	s_pstVfmwChan, 16
s_pstVfmwChan:
	.space	16
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	g_scd_vir, %object
	.size	g_scd_vir, 16
g_scd_vir:
	.space	16
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	LastEventTime.38313, %object
	.size	LastEventTime.38313, 4
LastEventTime.38313:
	.space	4
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	FspInstInfo.38444, %object
	.size	FspInstInfo.38444, 3340
FspInstInfo.38444:
	.space	3340
	.type	PrioArray.38665, %object
	.size	PrioArray.38665, 16
PrioArray.38665:
	.space	16
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	g_DSPState, %object
	.size	g_DSPState, 16
g_DSPState:
	.space	16
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 96
g_VfmwChanStat:
	.space	96
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	PrioArray.38674, %object
	.size	PrioArray.38674, 16
PrioArray.38674:
	.space	16
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
	.type	PrioArray.38780, %object
	.size	PrioArray.38780, 16
PrioArray.38780:
	.space	16
	.type	extra_ref, %object
	.size	extra_ref, 4
extra_ref:
	.space	4
	.type	extra_disp, %object
	.size	extra_disp, 4
extra_disp:
	.space	4
	.type	g_VfmwIrqHandle, %object
	.size	g_VfmwIrqHandle, 4
g_VfmwIrqHandle:
	.space	4
	.type	cmdline, %object
	.size	cmdline, 1024
cmdline:
	.space	1024
	.type	extra_cmd, %object
	.size	extra_cmd, 4
extra_cmd:
	.space	4
	.type	g_allow_B_before_P, %object
	.size	g_allow_B_before_P, 1
g_allow_B_before_P:
	.space	1
	.type	g_not_allow_H264FullPictureRepair_flag, %object
	.size	g_not_allow_H264FullPictureRepair_flag, 1
g_not_allow_H264FullPictureRepair_flag:
	.space	1
	.space	2
	.type	g_ChanTick, %object
	.size	g_ChanTick, 16
g_ChanTick:
	.space	16
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	last_rec_pos_time.39296, %object
	.size	last_rec_pos_time.39296, 16
last_rec_pos_time.39296:
	.space	16
	.type	last_rec_pos_report_time.39297, %object
	.size	last_rec_pos_report_time.39297, 16
last_rec_pos_report_time.39297:
	.space	16
	.type	last_rec_pos_decparam_time.39298, %object
	.size	last_rec_pos_decparam_time.39298, 16
last_rec_pos_decparam_time.39298:
	.space	16
	.type	ChanPriTab.39246, %object
	.size	ChanPriTab.39246, 16
ChanPriTab.39246:
	.space	16
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_StopDec, %object
	.size	g_StopDec, 4
g_StopDec:
	.space	4
	.type	g_DSDLock, %object
	.size	g_DSDLock, 8
g_DSDLock:
	.space	8
	.type	pOption, %object
	.size	pOption, 4
pOption:
	.space	4
	.type	g_EsBufValidFlag, %object
	.size	g_EsBufValidFlag, 16
g_EsBufValidFlag:
	.space	16
	.type	g_DnrIrqHandle, %object
	.size	g_DnrIrqHandle, 4
g_DnrIrqHandle:
	.space	4
	.type	g_VdecIrqHandle, %object
	.size	g_VdecIrqHandle, 4
g_VdecIrqHandle:
	.space	4
	.type	g_DnrSleepTime, %object
	.size	g_DnrSleepTime, 4
g_DnrSleepTime:
	.space	4
	.type	g_eVdmVersion, %object
	.size	g_eVdmVersion, 4
g_eVdmVersion:
	.space	4
	.type	g_CurProcChan, %object
	.size	g_CurProcChan, 4
g_CurProcChan:
	.space	4
	.type	save_yuv_chan_num, %object
	.size	save_yuv_chan_num, 4
save_yuv_chan_num:
	.space	4
	.type	vfmw_save_yuv_file, %object
	.size	vfmw_save_yuv_file, 4
vfmw_save_yuv_file:
	.space	4
	.type	save_seg_chan_num, %object
	.size	save_seg_chan_num, 4
save_seg_chan_num:
	.space	4
	.type	vfmw_save_seg_file, %object
	.size	vfmw_save_seg_file, 4
vfmw_save_seg_file:
	.space	4
	.type	save_str_chan_num, %object
	.size	save_str_chan_num, 4
save_str_chan_num:
	.space	4
	.type	vfmw_save_str_file, %object
	.size	vfmw_save_str_file, 4
vfmw_save_str_file:
	.space	4
	.type	g_pDbgMemVir, %object
	.size	g_pDbgMemVir, 4
g_pDbgMemVir:
	.space	4
	.type	g_DbgMemPhy, %object
	.size	g_DbgMemPhy, 4
g_DbgMemPhy:
	.space	4
	.type	g_VfmwGlobalStat, %object
	.size	g_VfmwGlobalStat, 48
g_VfmwGlobalStat:
	.space	48
	.type	AcceleratorCharacter, %object
	.size	AcceleratorCharacter, 4
AcceleratorCharacter:
	.space	4
	.type	g_ActivateLock, %object
	.size	g_ActivateLock, 8
g_ActivateLock:
	.space	8
	.ident	"GCC: (gcc-linaro-4.9-2014.09 + glibc-2.24 (Build by czyong) Wed Dec 21 10:39:16 CST 2016) 4.9.2 20140904 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
