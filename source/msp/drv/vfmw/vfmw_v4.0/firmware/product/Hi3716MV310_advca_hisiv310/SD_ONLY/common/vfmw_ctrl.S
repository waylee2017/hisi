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
@ -D VFMW_H264_SUPPORT -D VFMW_MPEG2_SUPPORT -D VFMW_BPD_H_SUPPORT
@ -D VFMW_DNR_SUPPORT -D VFMW_RAW_SUPPORT -D VFMW_USER_SUPPORT
@ -D CFG_MAX_CHAN_NUM=1 -D CFG_MAX_CHAN_NUM=1 -D VFMW_AVSPLUS_SUPPORT
@ -D VFMW_SYSTEM_REG_DISABLE -D REPAIR_ENABLE -D _FORTIFY_SOURCE=2
@ -D CHIP_TYPE_hi3716mv310 -D SDK_VERSION=HiSTBLinuxV100R006C00SPC052
@ -D HI_LOG_SUPPORT=0 -D HI_PROC_SUPPORT=0 -D HI_PNG_DECODER_SUPPORT
@ -D HI_KEYLED_SUPPORT -D HI_HDCP_SUPPORT -D HI_SCI_SUPPORT
@ -D HI_GPIOI2C_SUPPORT -D HI_IR_S2_SUPPORT -D HI_DSC_SUPPORT
@ -D HI_ADVCA_SUPPORT -D HI_ADVCA_TYPE_CONAX -D HI_ADVCA_FUNCTION_RELEASE
@ -D MODULE -D KBUILD_STR(s)=#s -D KBUILD_BASENAME=KBUILD_STR(vfmw_ctrl)
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
	cmp	r0, #0	@ InstID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L17	@,
	ldr	ip, .L21	@ tmp121,
	ldr	r3, [ip]	@ D.40054, s_pstVfmwChan
	cmp	r3, #0	@ D.40054,
	beq	.L17	@,
	ldr	r3, [r3, #20]	@ eType, _8->eAdapterType
	cmp	r3, #0	@ eType,
	beq	.L6	@,
	cmp	r3, #1	@ eType,
	bne	.L17	@,
	ldr	r3, [ip, #152]	@ D.40055, s_VfmwCTrl.event_report_omxvdec
	cmp	r3, #0	@ D.40055,
	beq	.L17	@,
.L19:
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ D.40055
.L6:
	ldr	r3, [ip, #148]	@ D.40055, s_VfmwCTrl.event_report_vdec
	cmp	r3, #0	@ D.40055,
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
	ldr	r6, .L41	@ tmp232,
	mov	r7, r0	@ ChanID, ChanID
	ldr	r8, [sp, #544]	@ D.40060, ChanMemFlag.SelfAllocChanMem_vdh
	ldr	lr, [sp, #548]	@ D.40060, ChanMemFlag.SelfAllocChanMem_scd
	ldr	ip, [r6, r0, asl #2]	@ D.40059, s_pstVfmwChan
	ldr	r5, [sp, #556]	@ ChanMemFlag.SelfAllocChanMem_pmv, ChanMemFlag.SelfAllocChanMem_pmv
	ldr	r0, [sp, #552]	@ D.40060, ChanMemFlag.SelfAllocChanMem_ctx
	add	r4, ip, #217088	@ tmp163, D.40059,
	str	r8, [ip, #216]	@ D.40060, _9->s32SelfAllocChanMem_vdh
	str	lr, [ip, #220]	@ D.40060, _9->s32SelfAllocChanMem_scd
	str	r0, [ip, #224]	@ D.40060, _9->s32SelfAllocChanMem_ctx
	str	r5, [r4, #400]	@ ChanMemFlag.SelfAllocChanMem_pmv, _9->s32SelfAllocChanMem_pmv
	ldr	r4, [r3, #8]	@ pChanOption_18(D)->MemAllocMode, pChanOption_18(D)->MemAllocMode
	ldr	r5, [sp, #480]	@ ChanMemDetail$ChanMemVdh$PhyAddr, MEM[(struct  *)&ChanMemDetail]
	cmp	r0, #1	@ D.40060,
	cmpeq	r4, #3	@, pChanOption_18(D)->MemAllocMode,
	ldr	r9, [sp, #496]	@ ChanMemDetail$ChanMemScd$PhyAddr, MEM[(struct  *)&ChanMemDetail + 16B]
	ldr	r4, [sp, #488]	@ ChanMemDetail$ChanMemVdh$Length, MEM[(struct  *)&ChanMemDetail + 8B]
	moveq	r0, #1	@ tmp170,
	movne	r0, #0	@ tmp170,
	cmp	r8, #0	@ D.40060,
	movne	r0, #0	@, tmp174
	andeq	r0, r0, #1	@,, tmp174, tmp170
	ldr	r8, [sp, #504]	@ ChanMemDetail$ChanMemScd$Length, MEM[(struct  *)&ChanMemDetail + 24B]
	cmp	lr, #0	@ D.40060,
	movne	r0, #0	@, tmp180
	andeq	r0, r0, #1	@,, tmp180, tmp174
	ldr	lr, [sp, #500]	@ ChanMemDetail$ChanMemScd$VirAddr, MEM[(struct  *)&ChanMemDetail + 20B]
	cmp	r0, #0	@ tmp180,
	beq	.L24	@,
	add	r0, r9, r8	@ D.40060, ChanMemDetail$ChanMemScd$PhyAddr, ChanMemDetail$ChanMemScd$Length
	cmp	r2, #1	@ OneChanMemFlag,
	cmpeq	r0, r5	@, D.40060, ChanMemDetail$ChanMemVdh$PhyAddr
	beq	.L40	@,
.L24:
	mov	r2, #0	@ tmp191,
	str	r2, [ip, #148]	@ tmp191, _9->s32OneChanMem
.L25:
	ldr	r2, [r6, r7, asl #2]	@ D.40059, s_pstVfmwChan
	add	r0, r6, r7, lsl #2	@ tmp207, tmp232, ChanID,
	ldr	r10, [sp, #512]	@ ChanMemDetail.ChanMemCtx.PhyAddr, ChanMemDetail.ChanMemCtx.PhyAddr
	ldr	fp, [sp, #484]	@ ChanMemDetail.ChanMemVdh.VirAddr, ChanMemDetail.ChanMemVdh.VirAddr
	add	ip, r2, #217088	@ tmp198, D.40059,
	str	r5, [r2, #176]	@ ChanMemDetail$ChanMemVdh$PhyAddr, _28->stChanMem_vdh.PhyAddr
	str	r10, [r2, #208]	@ ChanMemDetail.ChanMemCtx.PhyAddr, _28->stChanMem_ctx.PhyAddr
	ldr	r10, [sp, #516]	@ tmp234, ChanMemDetail.ChanMemCtx.VirAddr
	str	fp, [r2, #172]	@ ChanMemDetail.ChanMemVdh.VirAddr, _28->stChanMem_vdh.VirAddr
	ldr	fp, [sp, #520]	@ ChanMemDetail.ChanMemCtx.Length, ChanMemDetail.ChanMemCtx.Length
	str	r10, [r2, #204]	@ tmp234, _28->stChanMem_ctx.VirAddr
	ldr	r10, [sp, #528]	@ tmp236, ChanMemDetail.ChanMemPmv.PhyAddr
	str	fp, [r2, #212]	@ ChanMemDetail.ChanMemCtx.Length, _28->stChanMem_ctx.Length
	str	r4, [r2, #180]	@ ChanMemDetail$ChanMemVdh$Length, _28->stChanMem_vdh.Length
	str	r9, [r2, #192]	@ ChanMemDetail$ChanMemScd$PhyAddr, _28->stChanMem_scd.PhyAddr
	str	lr, [r2, #188]	@ ChanMemDetail$ChanMemScd$VirAddr, _28->stChanMem_scd.VirAddr
	str	r8, [r2, #196]	@ ChanMemDetail$ChanMemScd$Length, _28->stChanMem_scd.Length
	ldr	fp, [sp, #536]	@ ChanMemDetail.ChanMemPmv.Length, ChanMemDetail.ChanMemPmv.Length
	str	r10, [ip, #412]	@ tmp236, _28->stChanMem_pmv.PhyAddr
	ldr	r10, [sp, #532]	@ tmp235, ChanMemDetail.ChanMemPmv.VirAddr
	str	fp, [ip, #416]	@ ChanMemDetail.ChanMemPmv.Length, _28->stChanMem_pmv.Length
	str	lr, [r0, #156]	@ ChanMemDetail$ChanMemScd$VirAddr, g_scd_vir
	str	r10, [ip, #408]	@ tmp235, _28->stChanMem_pmv.VirAddr
	ldr	ip, [r2, #1580]	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	str	r5, [r2, #248]	@ ChanMemDetail$ChanMemVdh$PhyAddr, _28->s32SdecMemAddr
	cmp	ip, #1	@ _28->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	str	r4, [r2, #252]	@ ChanMemDetail$ChanMemVdh$Length, _28->s32SdecMemSize
	beq	.L26	@,
	str	r5, [r2, #236]	@ ChanMemDetail$ChanMemVdh$PhyAddr, _28->s32OffLineDnrMemAddr
	cmp	r1, #24	@ eCapLevel,
	ldr	r2, .L41+4	@ tmp210,
	ldrne	r1, [r3, #60]	@ DnrImgNum, pChanOption_18(D)->s32DisplayFrameNum
	moveq	r1, #1	@ DnrImgNum,
	ldr	ip, [r2, #36]	@ D.40064, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.40064,
	beq	.L30	@,
	ldr	r10, [r3, #16]	@ pChanOption_18(D)->s32MaxHeight, pChanOption_18(D)->s32MaxHeight
	add	r0, sp, #24	@ tmp214,,
	ldr	r2, [r3, #12]	@ pChanOption_18(D)->s32MaxWidth, pChanOption_18(D)->s32MaxWidth
	mov	lr, #64	@ tmp213,
	str	r1, [sp, #4]	@ DnrImgNum,
	mvn	r1, #0	@ tmp215,
	str	r0, [sp, #16]	@ tmp214,
	mov	r3, r10	@, pChanOption_18(D)->s32MaxHeight
	mov	r0, #0	@ tmp216,
	str	r1, [sp, #12]	@ tmp215,
	str	r0, [sp, #8]	@ tmp216,
	mov	r1, r4	@, ChanMemDetail$ChanMemVdh$Length
	str	r0, [sp]	@ tmp216,
	mov	r0, r5	@, ChanMemDetail$ChanMemVdh$PhyAddr
	str	lr, [sp, #20]	@ tmp213,
	blx	ip	@ D.40064
	cmp	r0, #0	@,
	bne	.L30	@,
	ldr	r3, [r6, r7, asl #2]	@ tmp219, s_pstVfmwChan
	ldr	r2, [sp, #28]	@ stMemArrange.TotalMemUsed, stMemArrange.TotalMemUsed
	str	r2, [r3, #240]	@ stMemArrange.TotalMemUsed, _61->s32OffLineDNRMemSize
.L31:
	ldr	r3, [r6, r7, asl #2]	@ D.40059, s_pstVfmwChan
	mov	r2, #0	@ tmp227,
	mov	r0, r2	@ D.40058, tmp227
	ldr	r1, [r3, #240]	@ D.40060, _68->s32OffLineDNRMemSize
	str	r9, [r3, #244]	@ ChanMemDetail$ChanMemScd$PhyAddr, _68->s32ScdChanMemAddr
	rsb	r4, r1, r4	@ D.40060, D.40060, ChanMemDetail$ChanMemVdh$Length
	add	r5, r5, r1	@ D.40060, ChanMemDetail$ChanMemVdh$PhyAddr, D.40060
	sub	r4, r4, #16	@ D.40060, D.40060,
	str	r8, [r3, #256]	@ ChanMemDetail$ChanMemScd$Length, _68->s32ScdChanMemSize
	str	r5, [r3, #228]	@ D.40060, _68->s32VdmChanMemAddr
	str	r4, [r3, #232]	@ D.40060, _68->s32VdmChanMemSize
	str	r2, [r3, #260]	@ tmp227, _68->s32BpdChanMemAddr
	str	r2, [r3, #264]	@ tmp227, _68->s32BpdChanMemSize
	str	r2, [r3, #268]	@ tmp227, _68->s32Vp8SegIdChanMemAddr
	str	r2, [r3, #272]	@ tmp227, _68->s32Vp8SegIdChanMemSize
.L29:
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L26:
	mov	r3, #0	@ tmp221,
	str	r3, [r2, #236]	@ tmp221, _28->s32OffLineDnrMemAddr
	str	r3, [r2, #240]	@ tmp221, _28->s32OffLineDNRMemSize
	b	.L31	@
.L40:
	add	r0, r4, r8	@ D.40060, ChanMemDetail$ChanMemVdh$Length, ChanMemDetail$ChanMemScd$Length
	mov	r2, #1	@ tmp190,
	str	r9, [ip, #160]	@ ChanMemDetail$ChanMemScd$PhyAddr, _9->stChanMem.PhyAddr
	str	lr, [ip, #156]	@ ChanMemDetail$ChanMemScd$VirAddr, _9->stChanMem.VirAddr
	str	r0, [ip, #164]	@ D.40060, _9->stChanMem.Length
	str	r2, [ip, #148]	@ tmp190, _9->s32OneChanMem
	b	.L25	@
.L30:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40058,
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
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	beq	.L52	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.40082,
	bl	msleep	@
	b	.L53	@
.L61:
	bl	msleep	@
	subs	r4, r4, #1	@ D.40082, D.40082,
	beq	.L60	@,
.L53:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #1	@ s_VfmwCTrl.eTaskState,
	bne	.L61	@,
.L52:
	mov	r0, #0	@ ret,
.L51:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #36]	@ tmp120, s_VfmwCTrl.eTaskCommand
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
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	beq	.L67	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.40092,
	bl	msleep	@
	b	.L68	@
.L76:
	bl	msleep	@
	subs	r4, r4, #1	@ D.40092, D.40092,
	beq	.L75	@,
.L68:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #2	@ s_VfmwCTrl.eTaskState,
	bne	.L76	@,
.L67:
	mov	r0, #0	@ ret,
.L66:
	mov	r3, #0	@ tmp120,
	str	r3, [r5, #36]	@ tmp120, s_VfmwCTrl.eTaskCommand
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
	mov	r0, #0	@ D.40095,
	ldmfd	sp!, {r4, pc}	@
.L82:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40095,
	ldmfd	sp!, {r4, pc}	@
.L103:
	.align	2
.L102:
	.word	.LANCHOR0+160
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
	mov	r4, #50	@ D.40122,
	mov	r5, r0	@ BeginTime,
	mov	r0, #0	@,
	mvn	r6, r5	@ D.40126, BeginTime
	bl	VDMDRV_PrepareSleep	@
	b	.L111	@
.L110:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.40122, D.40122,
	beq	.L112	@,
.L111:
	mov	r0, #0	@,
	bl	VDMDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L112	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.40126, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L110	@,
	mov	r0, #0	@,
	bl	VDMDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.40122, D.40122,
	bne	.L111	@,
.L112:
	ldr	r7, .L144	@ tmp143,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r7, #4]	@ D.40124, g_vdm_hal_fun_ptr.pfun_VDMDRV_CloseHardware
	cmp	r3, #0	@ D.40124,
	beq	.L141	@,
	mov	r0, #0	@,
	blx	r3	@ D.40124
.L113:
	bl	SCDDRV_PrepareSleep	@
	mov	r4, #50	@ D.40122,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r6, r0	@ D.40126, BeginTime
	b	.L120	@
.L119:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.40122, D.40122,
	beq	.L121	@,
.L120:
	bl	SCDDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L121	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.40126, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L119	@,
	bl	SCDDRV_ForceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.40122, D.40122,
	bne	.L120	@,
.L121:
	ldr	r3, [r7, #12]	@ D.40127, g_vdm_hal_fun_ptr.pfun_SCDDRV_CloseHardware
	cmp	r3, #0	@ D.40127,
	beq	.L142	@,
	blx	r3	@ D.40127
.L122:
	bl	DNRDRV_PrepareSleep	@
	mov	r4, #50	@ D.40122,
	bl	OSAL_GetTimeInMs	@
	mov	r5, r0	@ BeginTime,
	mvn	r6, r0	@ D.40126, BeginTime
	b	.L129	@
.L128:
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.40122, D.40122,
	beq	.L130	@,
.L129:
	bl	DNRDRV_GetSleepStage	@
	cmp	r0, #2	@,
	beq	.L130	@,
	bl	OSAL_GetTimeInMs	@
	cmp	r5, r0	@ BeginTime, CurTime
	add	r3, r6, r0	@ WaitTime, D.40126, CurTime
	rsbls	r3, r5, r0	@ WaitTime, BeginTime, CurTime
	cmp	r3, #200	@ WaitTime,
	bls	.L128	@,
	bl	DNRDRV_ForeceSleep	@
	bl	vfmw_dprint_nothing	@
	mov	r0, #10	@,
	bl	msleep	@
	subs	r4, r4, #1	@ D.40122, D.40122,
	bne	.L129	@,
.L130:
	ldr	r3, .L144+4	@ tmp137,
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	beq	.L143	@,
	bl	OSAL_GetTimeInMs	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}	@
	b	vfmw_dprint_nothing	@
.L143:
	mov	r2, #2	@ tmp142,
	str	r2, [r3, #36]	@ tmp142, s_VfmwCTrl.eTaskCommand
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
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	ldmnefd	sp!, {r4, pc}	@
	str	r2, [r3, #36]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
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
	.word	.LANCHOR0+160
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
	mov	r1, #12	@,
	ldr	r4, .L159	@ tmp110,
	mov	r0, r4	@, tmp110
	bl	__memzero	@
	mvn	r3, #0	@ tmp112,
	str	r3, [r4, #4]	@ tmp112, MEM[(HI_S32 *)&g_ChanCtx + 4B]
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
	ldr	r3, [r5, #188]	@ D.40145, LastEventTime
	cmp	r0, r3	@ CurTime, D.40145
	mov	r4, r0	@ CurTime,
	bls	.L164	@,
	rsb	r3, r3, r0	@ Period, D.40145, CurTime
	cmp	r3, #9	@ Period,
	ldmlsfd	sp!, {r4, r5, r6, pc}	@
	b	.L165	@
.L164:
	str	r0, [r5, #188]	@ CurTime, LastEventTime
.L165:
	ldr	r0, .L168+4	@,
	bl	OSAL_GiveEvent	@
	str	r4, [r5, #188]	@ CurTime, LastEventTime
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L169:
	.align	2
.L168:
	.word	.LANCHOR0
	.word	.LANCHOR0+192
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
	mov	r0, #0	@ D.40148,
	str	r1, [r3, #152]	@ event_report, s_VfmwCTrl.event_report_omxvdec
	ldmfd	sp!, {r4, pc}	@
.L176:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40148,
	ldmfd	sp!, {r4, pc}	@
.L174:
	ldr	r3, .L178	@ tmp114,
	str	r1, [r3, #148]	@ event_report, s_VfmwCTrl.event_report_vdec
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
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L181	@,
	mov	r2, #2	@ tmp116,
	str	r2, [r3, #36]	@ tmp116, s_VfmwCTrl.eTaskCommand
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
	ldr	r2, [r3, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r2, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L185	@,
	str	r2, [r3, #36]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.eTaskCommand
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
	ldr	r0, [r3, r0, asl #2]	@ D.40160, s_pstVfmwChan
	cmp	r0, #0	@ D.40160,
	beq	.L191	@,
	mov	r2, #12	@,
	add	r0, r0, #104	@, D.40160,
	bl	memcpy	@
	mov	r0, #0	@ D.40159,
	ldmfd	sp!, {r4, pc}	@
.L191:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40159,
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
	ldr	r0, [r3, r0, asl #2]	@ D.40168, s_pstVfmwChan
	cmp	r0, #0	@ D.40168,
	addne	r0, r0, #104	@ D.40167, D.40168,
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
	ldr	r0, [r3, r0, asl #2]	@ D.40172, s_pstVfmwChan
	cmp	r0, #0	@ D.40172,
	beq	.L206	@,
	mov	r2, #12	@,
	add	r0, r0, #128	@, D.40172,
	bl	memcpy	@
	mov	r0, #0	@ D.40171,
	ldmfd	sp!, {r4, pc}	@
.L206:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40171,
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
	ldr	r0, [r3, r0, asl #2]	@ D.40180, s_pstVfmwChan
	cmp	r0, #0	@ D.40180,
	addne	r0, r0, #128	@ D.40179, D.40180,
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L221	@,
	ldr	r3, .L227	@ tmp118,
	ldr	r0, [r3]	@ D.40184, s_pstVfmwChan
	cmp	r0, #0	@ D.40184,
	beq	.L221	@,
	ldr	r3, [r0, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r3, #1	@ _6->s32IsOpen,
	bne	.L221	@,
	add	r0, r0, #74752	@, D.40184,
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L232	@,
	cmp	r1, #0	@ pArgs,
	beq	.L232	@,
	ldr	r3, .L241	@ tmp119,
	ldr	r5, [r3]	@ D.40190, s_pstVfmwChan
	cmp	r5, #0	@ D.40190,
	beq	.L232	@,
	add	r0, r5, #1584	@, D.40190,
	mov	r2, #8	@,
	add	r0, r0, #12	@,,
	bl	memcpy	@
	ldr	r3, [r5, #1596]	@ _8->stSynExtraData.stDisParams.s32Mode, _8->stSynExtraData.stDisParams.s32Mode
	mov	r0, r4	@ D.40189, ChanID
	sub	r3, r3, #1	@ D.40193, _8->stSynExtraData.stDisParams.s32Mode,
	cmp	r3, #1	@ D.40193,
	strhi	r4, [r5, #1596]	@ ChanID, _8->stSynExtraData.stDisParams.s32Mode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L232:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40189,
	ldmfd	sp!, {r4, r5, r6, pc}	@
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
	add	r3, r3, r2	@ D.40199, DnrChanState.read_out_frame_num, DnrChanState.new_frame_num
	str	r3, [r4, #88]	@ D.40199, pstChanState_8(D)->wait_disp_frame_num
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
	ldr	r0, [ip, r0, asl #2]	@ D.40213, s_pstVfmwChan
	add	r5, r0, #180224	@ tmp179, D.40213,
	ldrsb	lr, [r5, r3]	@ D.40211, _32->FspInst.s32DecFsNum
	cmp	lr, #0	@ D.40211,
	ble	.L251	@,
	movw	r3, #12950	@ ivtmp.322,
	mov	r4, #0	@ s32DecodedFrameNum,
	movt	r3, 3	@ ivtmp.322,
	add	r3, r0, r3	@ ivtmp.322, D.40213, ivtmp.322
	mov	r0, r4	@ i, s32DecodedFrameNum
.L248:
	ldrsb	ip, [r3]	@ MEM[base: _39, offset: 0B], MEM[base: _39, offset: 0B]
	add	r0, r0, #1	@ i, i,
	add	r3, r3, #52	@ ivtmp.322, ivtmp.322,
	cmp	ip, #3	@ MEM[base: _39, offset: 0B],
	addeq	r4, r4, #1	@ s32DecodedFrameNum, s32DecodedFrameNum,
	cmp	r0, lr	@ i, D.40211
	bne	.L248	@,
.L246:
	str	r4, [r1, #88]	@ D.40209, pstChanState_15(D)->wait_disp_frame_num
	ldrb	r3, [r5, #1546]	@ zero_extendqisi2	@ D.40210, _32->FspInst.s32DecFsNum
	cmp	r3, #0	@ D.40210,
	moveq	r3, #4	@ D.40208,
	mvnne	r0, r2	@ D.40211, RefNum
	sxtabne	r3, r0, r3	@ D.40208, D.40211, D.40210
	str	r3, [r1, #96]	@ D.40208, pstChanState_15(D)->total_disp_frame_num
	ldrb	r3, [r5, #1546]	@ zero_extendqisi2	@ D.40210, _32->FspInst.s32DecFsNum
	sxtb	r3, r3	@ D.40210, D.40210
	cmp	r3, #0	@ D.40210,
	ldmlefd	sp!, {r4, r5, pc}	@
	add	r2, r2, #1	@ D.40211, RefNum,
	cmp	r3, r2	@ D.40210, D.40211
	movle	r3, #0	@ tmp178,
	strle	r3, [r1, #96]	@ tmp178, pstChanState_15(D)->total_disp_frame_num
	ldmfd	sp!, {r4, r5, pc}	@
.L251:
	mov	r4, #0	@ D.40209,
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
	ldr	r0, [r3, r0, asl #2]	@ D.40218, s_pstVfmwChan
	cmp	r0, #0	@ D.40218,
	addne	r0, r0, #116	@ D.40217, D.40218,
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
	subs	r6, r0, #0	@ D.40235,
	bne	.L267	@,
	mov	r2, r9	@, MemSize
	mov	r1, r8	@, MemAddr
	mov	r3, sp	@,
	mov	r0, r7	@, ChanID
	bl	FSP_PartitionFsMemory	@
	cmp	r0, #0	@,
	bne	.L267	@,
	mov	r0, r7	@, ChanID
	add	r1, r4, #204	@, tmp170,
	bl	FSP_GetInstInfo	@
	ldrsb	r3, [r4, #205]	@ D.40238, FspInstInfo.s32DecFsNum
	cmp	r3, #16	@ D.40238,
	movge	r3, #16	@ D.40238,
	cmp	r3, #2	@ D.40238,
	str	r3, [r5, #820]	@ D.40238, pstChan_8->s32UsrdecFrameNum
	ble	.L267	@,
	ldr	r3, [r4, #3540]	@ D.40238, FspInstInfo.s32DecFsSize
	mov	r1, #64	@,
	add	r0, r5, #752	@, pstChan,
	str	r3, [r5, #816]	@ D.40238, pstChan_8->s32UsrdecFrameSize
	bl	__memzero	@
	mov	r1, #64	@,
	add	r0, r5, #688	@, pstChan,
	bl	__memzero	@
	ldr	lr, [r5, #820]	@ D.40238, pstChan_8->s32UsrdecFrameNum
	cmp	lr, #0	@ D.40238,
	ble	.L264	@,
	add	r3, r4, #204	@ ivtmp.333, tmp170,
	add	r1, r5, #748	@ ivtmp.335, pstChan,
	mov	r2, r6	@ i, D.40235
.L269:
	ldr	ip, [r3, #20]	@ D.40238, MEM[base: _64, offset: 20B]
	add	r2, r2, #1	@ i, i,
	cmp	r2, lr	@ i, D.40238
	add	r3, r3, #52	@ ivtmp.333, ivtmp.333,
	str	ip, [r1, #4]!	@ D.40238, MEM[base: _65, offset: 0B]
	bne	.L269	@,
.L264:
	mov	r0, r6	@, D.40235
	add	sp, sp, #44	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L267:
	bl	vfmw_dprint_nothing	@
	mvn	r6, #0	@ D.40235,
	mov	r0, r6	@, D.40235
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
	ldr	r2, [r4, #44]	@ D.40245, pstChan_7(D)->stChanMem_scd.Length
	cmp	r2, #0	@ D.40245,
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
	ldr	r0, [r4, #100]	@ D.40250, pstChan_7(D)->stChanMem_pmv.PhyAddr
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
	ldr	r0, [r4, #56]	@ D.40245, pstChan_7(D)->stChanMem_ctx.PhyAddr
	cmp	r0, #0	@ D.40245,
	beq	.L285	@,
	ldr	r1, [r4, #52]	@, pstChan_7(D)->stChanMem_ctx.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L286	@
.L312:
	cmp	r0, #0	@ D.40250,
	beq	.L288	@,
	ldr	r1, [r4, #96]	@, pstChan_7(D)->stChanMem_pmv.VirAddr
	bl	MEM_ReleaseMemBlock	@
	ldr	r0, [r4, #100]	@ D.40250, pstChan_7(D)->stChanMem_pmv.PhyAddr
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
	str	r0, [r4, #36]	@ D.40249, pstChan_7(D)->stChanMem_scd.VirAddr
	str	r0, [r5, #156]	@ D.40249, g_scd_vir
	b	.L282	@
.L307:
	ldr	r0, [r1, #24]	@ D.40245, pstChan_7(D)->stChanMem_vdh.PhyAddr
	cmp	r0, #0	@ D.40245,
	beq	.L278	@,
	ldr	r1, [r1, #20]	@, pstChan_7(D)->stChanMem_vdh.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L279	@
.L313:
	ldr	r0, [r4, #40]	@ D.40245, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.40245,
	beq	.L281	@,
.L289:
	ldr	r1, [r4, #36]	@, pstChan_7(D)->stChanMem_scd.VirAddr
	bl	MEM_ReleaseMemBlock	@
	b	.L282	@
.L310:
	ldr	r0, [r4, #40]	@ D.40245, pstChan_7(D)->stChanMem_scd.PhyAddr
	cmp	r0, #0	@ D.40245,
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
	movw	r3, #40368	@ tmp112,
	movt	r3, 7	@ tmp112,
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L320	@,
	ldr	r5, .L336	@ tmp141,
	ldr	r3, [r5]	@ D.40259, s_pstVfmwChan
	cmp	r3, #0	@ D.40259,
	beq	.L320	@,
	ldr	r4, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r4, #1	@ _6->s32IsOpen,
	bne	.L320	@,
	ldr	r3, [r3, #880]	@ _6->eVidStd, _6->eVidStd
	cmp	r3, #19	@ _6->eVidStd,
	bne	.L335	@,
.L320:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40258,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L335:
	bl	SM_Start	@
	ldr	r3, [r5]	@ D.40259, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _14->s32Priority, _14->s32Priority
	str	r4, [r3, #8]	@ _6->s32IsOpen, _14->s32IsRun
	cmp	r2, #0	@ _14->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _14->s32StopSyntax
	bne	.L321	@,
	cmp	r3, #0	@ D.40259,
	str	r4, [r3, #12]	@ _6->s32IsOpen, _14->s32Priority
	ldr	r0, .L336+4	@,
	ldrne	r3, .L336+8	@ tmp133,
	ldreq	r2, .L336+8	@ tmp129,
	streq	r3, [r5, #3544]	@ D.40259, PrioArray
	strne	r4, [r3]	@ _6->s32IsOpen, g_ChanCtx.PriorByChanId
	streq	r3, [r2]	@ D.40259, g_ChanCtx.PriorByChanId
	strne	r4, [r5, #3544]	@ _6->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5]	@ D.40259, s_pstVfmwChan
.L321:
	ldr	r3, [r3, #1580]	@ _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _46->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L324	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L324:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40258,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L337:
	.align	2
.L336:
	.word	.LANCHOR0
	.word	.LANCHOR0+3544
	.word	g_ChanCtx
	.fnend
	.size	VCTRL_StartChan, .-VCTRL_StartChan
	.align	2
	.global	VCTRL_StopChan
	.type	VCTRL_StopChan, %function
VCTRL_StopChan:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r0, #0	@ ChanID, ChanID
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L341	@,
	ldr	r5, .L347	@ tmp117,
	ldr	r3, [r5]	@ D.40265, s_pstVfmwChan
	cmp	r3, #0	@ D.40265,
	beq	.L341	@,
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L341	@,
	str	r2, [r3, #16]	@ _6->s32IsOpen, _6->s32StopSyntax
	str	r1, [r3, #8]	@ ChanID, _6->s32IsRun
	bl	SM_Stop	@
	subs	r4, r0, #0	@ s32Ret,
	bne	.L342	@,
	mov	r1, r4	@, s32Ret
	bl	DeleteRawPacketInBuffer	@
	mov	r0, r4	@, s32Ret
	bl	DNR_StopChan	@
	mov	r0, r4	@, s32Ret
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r0, r4	@ D.40264, s32Ret
	str	r4, [r3, #16]	@ s32Ret, _17->s32StopSyntax
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L341:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40264,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L342:
	mvn	r0, #0	@ D.40264,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L348:
	.align	2
.L347:
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L352	@,
	cmp	r1, #0	@ pstCfg,
	mov	r0, r1	@ pstCfg, pstCfg
	beq	.L352	@,
	ldr	r3, .L360	@ tmp116,
	ldr	r1, [r3]	@ D.40270, s_pstVfmwChan
	cmp	r1, #0	@ D.40270,
	beq	.L352	@,
	add	r1, r1, #32	@, D.40270,
	mov	r2, #72	@,
	bl	memcpy	@
	mov	r0, r4	@ D.40269, ChanID
	ldmfd	sp!, {r4, pc}	@
.L352:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40269,
	ldmfd	sp!, {r4, pc}	@
.L361:
	.align	2
.L360:
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
	mov	ip, #0	@ tmp128,
	ldr	r5, .L373	@ tmp144,
	ldr	r2, [r5, r0, asl #2]	@ D.40282, s_pstVfmwChan
	ldr	r3, [r2, #1624]	@ eOldDecCore, _6->eDecCore
	str	ip, [r2, #1624]	@ tmp128, _6->eDecCore
	cmp	r3, ip	@ eOldDecCore,
	beq	.L366	@,
	sub	r3, r3, #1	@ D.40283, eOldDecCore,
	mov	r6, r1	@ pstSoftDecMem, pstSoftDecMem
	cmp	r3, #4	@ D.40283,
	mov	r4, r0	@ ChanID, ChanID
	bhi	.L365	@,
	ldr	r3, [r5, #164]	@ D.40284, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.40284,
	beq	.L365	@,
	add	r0, r2, #217088	@, D.40282,
	add	r0, r0, #432	@,,
	blx	r3	@ D.40284
.L365:
	ldr	r2, [r5, r4, asl #2]	@ D.40282, s_pstVfmwChan
	ldr	r1, .L373	@ tmp133,
	ldr	r3, [r2, #1624]	@ _16->eDecCore, _16->eDecCore
	sub	r3, r3, #1	@ D.40283, _16->eDecCore,
	cmp	r3, #4	@ D.40283,
	bhi	.L366	@,
	ldr	r3, [r1, #160]	@ D.40288, g_SdecFunc.pfun_iMediaSoftDEC_Create
	add	r0, r2, #217088	@ tmp137, D.40282,
	ldr	r1, [r2, #24]	@ _16->eChanCapLevel, _16->eChanCapLevel
	cmp	r3, #0	@ D.40288,
	str	r1, [r0, #444]	@ _16->eChanCapLevel, _16->stSynCtx.unSyntax.stiMediaSoftCtx.eChanCapLevel
	beq	.L368	@,
	ldr	r2, [r2, #880]	@, _16->eVidStd
	mov	r1, r6	@, pstSoftDecMem
	add	r0, r0, #432	@, tmp137,
	blx	r3	@ D.40288
	cmp	r0, #0	@,
	bne	.L368	@,
.L366:
	mov	r0, #0	@ D.40281,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L368:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40281,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L374:
	.align	2
.L373:
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
	ldr	r3, .L389	@ tmp143,
	ldr	r2, [r1]	@ pstCfg_6(D)->eVidStd, pstCfg_6(D)->eVidStd
	ldr	r3, [r3, r0, asl #2]	@ D.40294, s_pstVfmwChan
	ldr	r0, [r3, #32]	@ _4->stChanCfg.eVidStd, _4->stChanCfg.eVidStd
	cmp	r0, r2	@ _4->stChanCfg.eVidStd, pstCfg_6(D)->eVidStd
	bne	.L388	@,
	ldr	r0, [r3, #48]	@ _4->stChanCfg.s32ChanErrThr, _4->stChanCfg.s32ChanErrThr
	ldr	r2, [r1, #16]	@ pstCfg_6(D)->s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanErrThr, pstCfg_6(D)->s32ChanErrThr
	bne	.L388	@,
	ldr	r0, [r3, #44]	@ _4->stChanCfg.s32ChanPriority, _4->stChanCfg.s32ChanPriority
	ldr	r2, [r1, #12]	@ pstCfg_6(D)->s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	cmp	r0, r2	@ _4->stChanCfg.s32ChanPriority, pstCfg_6(D)->s32ChanPriority
	bne	.L388	@,
	ldr	r0, [r3, #52]	@ _4->stChanCfg.s32ChanStrmOFThr, _4->stChanCfg.s32ChanStrmOFThr
	ldr	r2, [r1, #20]	@ pstCfg_6(D)->s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	cmp	r0, r2	@ _4->stChanCfg.s32ChanStrmOFThr, pstCfg_6(D)->s32ChanStrmOFThr
	bne	.L388	@,
	ldr	r0, [r3, #56]	@ _4->stChanCfg.s32DecMode, _4->stChanCfg.s32DecMode
	ldr	r2, [r1, #24]	@ pstCfg_6(D)->s32DecMode, pstCfg_6(D)->s32DecMode
	cmp	r0, r2	@ _4->stChanCfg.s32DecMode, pstCfg_6(D)->s32DecMode
	bne	.L388	@,
	ldr	r0, [r3, #60]	@ _4->stChanCfg.s32DecOrderOutput, _4->stChanCfg.s32DecOrderOutput
	ldr	r2, [r1, #28]	@ pstCfg_6(D)->s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	cmp	r0, r2	@ _4->stChanCfg.s32DecOrderOutput, pstCfg_6(D)->s32DecOrderOutput
	bne	.L388	@,
	ldr	r0, [r3, #68]	@ _4->stChanCfg.s32DnrDispOutEnable, _4->stChanCfg.s32DnrDispOutEnable
	ldr	r2, [r1, #36]	@ pstCfg_6(D)->s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrDispOutEnable, pstCfg_6(D)->s32DnrDispOutEnable
	bne	.L388	@,
	ldr	r0, [r3, #64]	@ _4->stChanCfg.s32DnrTfEnable, _4->stChanCfg.s32DnrTfEnable
	ldr	r2, [r1, #32]	@ pstCfg_6(D)->s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	cmp	r0, r2	@ _4->stChanCfg.s32DnrTfEnable, pstCfg_6(D)->s32DnrTfEnable
	bne	.L388	@,
	ldr	r0, [r3, #76]	@ _4->stChanCfg.s32VcmpEn, _4->stChanCfg.s32VcmpEn
	ldr	r2, [r1, #44]	@ pstCfg_6(D)->s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpEn, pstCfg_6(D)->s32VcmpEn
	bne	.L388	@,
	ldr	r0, [r3, #88]	@ _4->stChanCfg.s32VcmpWmEndLine, _4->stChanCfg.s32VcmpWmEndLine
	ldr	r2, [r1, #56]	@ pstCfg_6(D)->s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmEndLine, pstCfg_6(D)->s32VcmpWmEndLine
	bne	.L388	@,
	ldr	r0, [r3, #84]	@ _4->stChanCfg.s32VcmpWmStartLine, _4->stChanCfg.s32VcmpWmStartLine
	ldr	r2, [r1, #52]	@ pstCfg_6(D)->s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	cmp	r0, r2	@ _4->stChanCfg.s32VcmpWmStartLine, pstCfg_6(D)->s32VcmpWmStartLine
	bne	.L388	@,
	ldr	r0, [r3, #80]	@ _4->stChanCfg.s32WmEn, _4->stChanCfg.s32WmEn
	ldr	r2, [r1, #48]	@ pstCfg_6(D)->s32WmEn, pstCfg_6(D)->s32WmEn
	cmp	r0, r2	@ _4->stChanCfg.s32WmEn, pstCfg_6(D)->s32WmEn
	bne	.L388	@,
	ldr	r3, [r3, #92]	@ _4->stChanCfg.s32SupportAllP, _4->stChanCfg.s32SupportAllP
	ldr	r0, [r1, #60]	@ pstCfg_6(D)->s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	subs	r0, r3, r0	@ D.40293, _4->stChanCfg.s32SupportAllP, pstCfg_6(D)->s32SupportAllP
	mvnne	r0, #0	@ D.40293,
	bx	lr	@
.L388:
	mvn	r0, #0	@ D.40293,
	bx	lr	@
.L390:
	.align	2
.L389:
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
	ldr	r2, .L399	@ tmp129,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2, r0, asl #2]	@ D.40301, s_pstVfmwChan
	ldr	r2, [r5, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r2, #19	@ _4->eVidStd,
	beq	.L396	@,
	mov	r4, r1	@ pstCfg, pstCfg
	bl	VCTRL_CheckCommonParameter	@
	cmp	r0, #0	@ D.40300
	bne	.L396	@,
	ldr	r3, [r5, #32]	@ D.40303, _4->stChanCfg.eVidStd
	cmp	r3, #1	@ D.40303,
	beq	.L398	@,
	sub	r3, r3, #10	@ D.40304, D.40303,
	cmp	r3, #2	@ D.40304,
	ldmhifd	sp!, {r4, r5, r6, pc}	@
	ldr	r3, [r5, #36]	@ _4->stChanCfg.StdExt.Vp6Ext.bReversed, _4->stChanCfg.StdExt.Vp6Ext.bReversed
	ldr	r0, [r4, #4]	@ pstCfg_6(D)->StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	subs	r0, r3, r0	@ D.40300, _4->stChanCfg.StdExt.Vp6Ext.bReversed, pstCfg_6(D)->StdExt.Vp6Ext.bReversed
	mvnne	r0, #0	@ D.40300,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L398:
	ldr	r2, [r5, #36]	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile
	ldr	r3, [r4, #4]	@ pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	cmp	r2, r3	@ _4->stChanCfg.StdExt.Vc1Ext.IsAdvProfile, pstCfg_6(D)->StdExt.Vc1Ext.IsAdvProfile
	bne	.L396	@,
	ldr	r3, [r5, #40]	@ _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion
	ldr	r0, [r4, #8]	@ pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	subs	r0, r3, r0	@ D.40300, _4->stChanCfg.StdExt.Vc1Ext.CodecVersion, pstCfg_6(D)->StdExt.Vc1Ext.CodecVersion
	mvnne	r0, #0	@ D.40300,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L396:
	mvn	r0, #0	@ D.40300,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L400:
	.align	2
.L399:
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
	ldr	r3, .L415	@ tmp135,
	ldr	r2, .L415+4	@ tmp134,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3]	@ D.40318, g_chipID
	ldr	r2, [r2, r0, asl #2]	@ D.40315, s_pstVfmwChan
	cmp	r3, #16	@ D.40318,
	ldr	ip, [r2, #1456]	@ ChanMaxWidth, _6->stSynExtraData.stChanOption.s32MaxWidth
	ldr	lr, [r2, #1460]	@ ChanMaxHeight, _6->stSynExtraData.stChanOption.s32MaxHeight
	bhi	.L402	@,
	mov	r2, #1	@ tmp136,
	movw	r0, #36832	@ tmp137,
	mov	r3, r2, asl r3	@ D.40317, tmp136,
	bfi	r0, r2, #16, #16	@ tmp137, tmp136,,
	ands	r0, r3, r0	@ D.40317, D.40317, tmp137
	bne	.L403	@,
	tst	r3, #31	@ D.40317,
	beq	.L402	@,
	ldr	r3, .L415+8	@ tmp140,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	ip, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L404	@,
	ldr	r3, .L415+12	@ tmp142,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	lr, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ldmlefd	sp!, {r4, pc}	@
.L404:
	ldr	r3, [r1]	@ pstCfg_12(D)->eVidStd, pstCfg_12(D)->eVidStd
	cmp	r3, #18	@ pstCfg_12(D)->eVidStd,
	bne	.L402	@,
.L410:
	mov	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L403:
	ldr	r3, .L415+8	@ tmp145,
	ldr	r3, [r3]	@ g_ChipMaxWidth, g_ChipMaxWidth
	cmp	ip, r3	@ ChanMaxWidth, g_ChipMaxWidth
	bgt	.L406	@,
	ldr	r3, .L415+12	@ tmp147,
	ldr	r3, [r3]	@ g_ChipMaxHeight, g_ChipMaxHeight
	cmp	lr, r3	@ ChanMaxHeight, g_ChipMaxHeight
	ble	.L410	@,
.L406:
	ldr	r0, [r1]	@ D.40316, pstCfg_12(D)->eVidStd
	cmp	r0, #18	@ D.40316,
	cmpne	r0, #0	@, D.40316,
	bic	r0, r0, #2	@ D.40316, D.40316,
	movne	r3, #1	@ tmp153,
	moveq	r3, #0	@ tmp153,
	cmp	r0, #13	@ D.40316,
	moveq	r0, #0	@, tmp160
	andne	r0, r3, #1	@,, tmp160, tmp153
	cmp	r0, #0	@ tmp160,
	bne	.L402	@,
	ldmfd	sp!, {r4, pc}	@
.L402:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ ret,
	ldmfd	sp!, {r4, pc}	@
.L416:
	.align	2
.L415:
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
	ldr	r3, .L423	@ tmp122,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ D.40322, s_pstVfmwChan
	cmp	r3, #0	@ D.40322,
	beq	.L422	@,
	ldr	r3, [r3, #880]	@ D.40323, _5->eVidStd
	cmp	r3, #4	@ D.40323,
	cmpne	r3, #14	@, D.40323,
	beq	.L420	@,
	bl	SM_SeekPts	@
	adds	r0, r0, #0	@ D.40324,,
	movne	r0, #1	@ D.40324,
	rsb	r0, r0, #0	@ D.40321, D.40324
	ldmfd	sp!, {r4, pc}	@
.L420:
	mvn	r0, #0	@ D.40321,
	ldmfd	sp!, {r4, pc}	@
.L422:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40321,
	ldmfd	sp!, {r4, pc}	@
.L424:
	.align	2
.L423:
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
	cmp	r0, #0	@,
	bne	.L429	@,
	ldr	r4, [sp]	@ D.40328, stCfgInfo.eVidStd
	ldr	r6, .L439	@ tmp129,
	cmp	r4, #0	@ D.40328,
	beq	.L438	@,
	sub	r3, r4, #6	@ D.40329, D.40328,
	ldr	r2, [r6, #3548]	@ D.40330, g_DSPState
	clz	r3, r3	@ D.40329, D.40329
	mov	r3, r3, lsr #5	@ D.40329, D.40329,
	cmp	r2, #1	@ D.40330,
	movne	r1, #0	@, tmp154
	andeq	r1, r3, #1	@,, tmp154, D.40329
	cmp	r1, #0	@ tmp154,
	bne	.L429	@,
	cmp	r2, #0	@ D.40330,
	movne	r3, #0	@, tmp164
	andeq	r3, r3, #1	@,, tmp164, D.40329
	cmp	r3, #0	@ tmp164,
	bne	.L433	@,
	mov	r4, r3	@ D.40328, tmp164
.L434:
	mov	r0, r4	@, D.40328
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L438:
	ldr	r3, [sp, #40]	@ stCfgInfo.s32LowdlyEnable, stCfgInfo.s32LowdlyEnable
	ldr	r2, [r6, #3548]	@ D.40330, g_DSPState
	sub	r1, r3, #1	@ D.40329, stCfgInfo.s32LowdlyEnable,
	clz	r1, r1	@ D.40329, D.40329
	cmp	r2, #2	@ D.40330,
	cmpeq	r3, #1	@, stCfgInfo.s32LowdlyEnable,
	mov	r1, r1, lsr #5	@ D.40329, D.40329,
	beq	.L429	@,
	cmp	r2, #0	@ D.40330,
	movne	r2, #0	@, tmp159
	andeq	r2, r1, #1	@,, tmp159, D.40329
	cmp	r2, #0	@ tmp159,
	beq	.L434	@,
	bl	WriteHexFile	@
	add	r5, r6, r5, lsl #2	@ tmp139, tmp129, ChanID,
	mov	r3, #1	@ tmp141,
	mov	r0, r4	@, D.40328
	str	r3, [r5, #3548]	@ tmp141, g_DSPState
	add	sp, sp, #72	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L433:
	add	r5, r6, r5, lsl #2	@ tmp143, tmp147, ChanID,
	mov	r0, r4	@, D.40328
	mov	r4, r1	@ D.40328, tmp154
	bl	WriteHexFile	@
	mov	r3, #2	@ tmp145,
	str	r3, [r5, #3548]	@ tmp145, g_DSPState
	b	.L434	@
.L429:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ D.40328,
	b	.L434	@
.L440:
	.align	2
.L439:
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
	ldr	r3, .L446	@ tmp117,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	cmp	r3, #0	@ tmp118,
	beq	.L445	@,
	bl	SM_Reset	@
	adds	r0, r0, #0	@ D.40334,,
	movne	r0, #1	@ D.40334,
	rsb	r0, r0, #0	@ D.40333, D.40334
	ldmfd	sp!, {r4, pc}	@
.L445:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40333,
	ldmfd	sp!, {r4, pc}	@
.L447:
	.align	2
.L446:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	mov	r5, r1	@ pImage, pImage
	bl	vfmw_dprint_nothing	@
	cmp	r4, #0	@ ChanID,
	bne	.L451	@,
	ldr	r4, .L458	@ tmp122,
	ldr	r3, [r4]	@ D.40340, s_pstVfmwChan
	cmp	r3, #0	@ D.40340,
	beq	.L451	@,
	ldr	r3, [r3, #4]	@ _8->s32IsOpen, _8->s32IsOpen
	cmp	r3, #1	@ _8->s32IsOpen,
	bne	.L451	@,
	ldr	r0, .L458+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4]	@ D.40340, s_pstVfmwChan
	cmp	r0, #0	@ D.40340,
	beq	.L453	@,
	ldr	r3, [r0, #4]	@ _13->s32IsOpen, _13->s32IsOpen
	cmp	r3, #1	@ _13->s32IsOpen,
	bne	.L453	@,
	add	r0, r0, #217088	@, D.40340,
	mov	r1, r5	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReceiveImage	@
	subs	r4, r0, #1	@ D.40339,,
	ldr	r0, .L458+4	@,
	mvnne	r4, #0	@ D.40339,
	bl	OSAL_SpinUnLockIRQ	@
.L450:
	mov	r0, r4	@, D.40339
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L451:
	mvn	r4, #0	@ D.40339,
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, D.40339
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L453:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L458+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ D.40339,
	b	.L450	@
.L459:
	.align	2
.L458:
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	bne	.L463	@,
	ldr	r4, .L473	@ tmp122,
	ldr	r3, [r4]	@ D.40347, s_pstVfmwChan
	cmp	r3, #0	@ D.40347,
	beq	.L463	@,
	ldr	r3, [r3, #4]	@ _7->s32IsOpen, _7->s32IsOpen
	cmp	r3, #1	@ _7->s32IsOpen,
	bne	.L463	@,
	cmp	r1, #0	@ pImage,
	mov	r5, r1	@ pImage, pImage
	beq	.L463	@,
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L473+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r0, [r4]	@ D.40347, s_pstVfmwChan
	cmp	r0, #0	@ D.40347,
	beq	.L465	@,
	ldr	r3, [r0, #4]	@ _15->s32IsOpen, _15->s32IsOpen
	cmp	r3, #1	@ _15->s32IsOpen,
	bne	.L465	@,
	add	r0, r0, #217088	@, D.40347,
	mov	r1, r5	@, pImage
	add	r0, r0, #424	@,,
	bl	SYNTAX_ReleaseImage	@
	subs	r4, r0, #1	@ D.40346,,
	ldr	r0, .L473+4	@,
	mvnne	r4, #0	@ D.40346,
	bl	OSAL_SpinUnLockIRQ	@
.L462:
	mov	r0, r4	@, D.40346
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L465:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L473+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r4, #0	@ D.40346,
	b	.L462	@
.L463:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ D.40346,
	b	.L462	@
.L474:
	.align	2
.L473:
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
	cmp	r0, #0	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L476	@,
	ldr	r3, .L481	@ tmp115,
	ldr	r3, [r3]	@ D.40354, s_pstVfmwChan
	cmp	r3, #0	@ D.40354,
	beq	.L476	@,
	ldr	r2, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r2, #1	@ _5->s32IsOpen,
	beq	.L480	@,
.L476:
	bl	vfmw_dprint_nothing	@
	mov	r0, #19	@ D.40353,
	ldmfd	sp!, {r4, pc}	@
.L480:
	ldr	r0, [r3, #880]	@ D.40353, _5->eVidStd
	ldmfd	sp!, {r4, pc}	@
.L482:
	.align	2
.L481:
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
	cmp	r0, #0	@ ChanId
	bne	.L488	@,
	ldr	r2, .L499	@ tmp119,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r2]	@ D.40362, s_pstVfmwChan
	cmp	r5, #0	@ D.40362,
	moveq	r3, r5	@ D.40360, D.40362
	beq	.L484	@,
	ldr	r2, [r5, #4]	@ _14->s32IsOpen, _14->s32IsOpen
	cmp	r2, #1	@ _14->s32IsOpen,
	beq	.L497	@,
.L491:
	mov	r3, r0	@ D.40360, ChanId
.L484:
	mov	r0, r3	@, D.40360
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L488:
	mov	r3, #0	@ D.40360,
	mov	r0, r3	@, D.40360
	bx	lr	@
.L497:
	ldr	r2, [r5, #8]	@ _14->s32IsRun, _14->s32IsRun
	cmp	r2, #1	@ _14->s32IsRun,
	bne	.L491	@,
	ldr	r3, [r5, #880]	@ VidStd, _14->eVidStd
	cmp	r3, #0	@ VidStd,
	beq	.L486	@,
	cmp	r3, #3	@ VidStd,
	bne	.L493	@,
	add	r3, r5, #217088	@ tmp126, D.40362,
	ldr	r4, [r3, #436]	@ pDecParam, _14->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	cmp	r4, #0	@ pDecParam,
	beq	.L493	@,
.L498:
	bl	OSAL_GetTimeInMs	@
	mov	r3, r4	@ D.40360, pDecParam
	str	r0, [r5, #28]	@, _14->u32timeLastDecParamReady
	mov	r0, r3	@, D.40360
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L486:
	add	r3, r5, #217088	@ tmp124, D.40362,
	ldr	r4, [r3, #792]	@ pDecParam, _14->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	cmp	r4, #0	@ pDecParam,
	bne	.L498	@,
.L493:
	mov	r3, #0	@ D.40360,
	b	.L484	@
.L500:
	.align	2
.L499:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r0, #0	@ ChanId, ChanId
	bne	.L502	@,
	ldr	r5, .L513	@ tmp124,
	ldr	r3, [r5]	@ D.40367, s_pstVfmwChan
	cmp	r3, #0	@ D.40367,
	beq	.L502	@,
	ldr	r2, [r3, #4]	@ _5->s32IsOpen, _5->s32IsOpen
	cmp	r2, #1	@ _5->s32IsOpen,
	bne	.L502	@,
	ldr	r7, [r3, #8]	@ D.40368, _5->s32IsRun
	cmp	r7, #1	@ D.40368,
	beq	.L510	@,
.L502:
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ D.40366,
.L504:
	mov	r0, r4	@, D.40366
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L510:
	bl	VCTRL_GetDecParam	@
	subs	r8, r0, #0	@ pDecParam,
	beq	.L511	@,
	ldr	r3, [r5]	@ D.40367, s_pstVfmwChan
	mov	r4, r6	@ D.40366, ChanId
	str	r6, [r3, #680]	@ ChanId, _16->s32CountNoDecparamFlag
	str	r6, [r3, #684]	@ ChanId, _16->u32NoDecparamStartTime
	b	.L504	@
.L511:
	ldr	r6, [r5]	@ D.40367, s_pstVfmwChan
	ldr	r4, [r6, #680]	@ D.40366, _10->s32CountNoDecparamFlag
	cmp	r4, #0	@ D.40366,
	beq	.L512	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5]	@ D.40367, s_pstVfmwChan
	ldr	r2, [r3, #684]	@ D.40369, _23->u32NoDecparamStartTime
	cmp	r0, r2	@ tmp, D.40369
	bls	.L507	@,
	rsb	r0, r2, r0	@ D.40369, D.40369, tmp
	cmp	r0, #40	@ D.40369,
	movls	r4, r8	@ D.40366, pDecParam
	bls	.L504	@,
.L507:
	str	r8, [r3, #680]	@ pDecParam, _23->s32CountNoDecparamFlag
	mov	r4, r7	@ D.40366, D.40368
	str	r8, [r3, #684]	@ pDecParam, _23->u32NoDecparamStartTime
	b	.L504	@
.L512:
	str	r7, [r6, #680]	@ D.40368, _10->s32CountNoDecparamFlag
	bl	OSAL_GetTimeInMs	@
	str	r0, [r6, #684]	@, _10->u32NoDecparamStartTime
	b	.L504	@
.L514:
	.align	2
.L513:
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
	cmp	r0, #0	@ ChanId,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L518	@,
	ldr	r3, .L525	@ tmp125,
	ldr	r3, [r3]	@ D.40373, s_pstVfmwChan
	cmp	r3, #0	@ D.40373,
	beq	.L518	@,
	cmn	r3, #152	@ D.40373,
	cmpne	r1, #0	@, pstMemRec,
	beq	.L520	@,
	ldr	r2, [r3, #148]	@ _6->s32OneChanMem, _6->s32OneChanMem
	cmp	r2, #1	@ _6->s32OneChanMem,
	bne	.L520	@,
	ldr	r2, [r3, #160]	@ D.40375, MEM[(struct MEM_RECORD_S *)_6 + 152B].PhyAddr
	str	r2, [r1, #8]	@ D.40375, pstMemRec_10(D)->PhyAddr
	ldr	r2, [r3, #156]	@ D.40376, MEM[(struct MEM_RECORD_S *)_6 + 152B].VirAddr
	clz	r0, r2	@ D.40374, D.40376
	str	r2, [r1, #4]	@ D.40376, pstMemRec_10(D)->VirAddr
	ldr	r3, [r3, #164]	@ D.40375, MEM[(struct MEM_RECORD_S *)_6 + 152B].Length
	mov	r0, r0, lsr #5	@ D.40374, D.40374,
	rsb	r0, r0, #0	@ D.40372, D.40374
	str	r3, [r1, #12]	@ D.40375, pstMemRec_10(D)->Length
	ldmfd	sp!, {r4, pc}	@
.L520:
	mvn	r0, #0	@ D.40372,
	ldmfd	sp!, {r4, pc}	@
.L518:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40372,
	ldmfd	sp!, {r4, pc}	@
.L526:
	.align	2
.L525:
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
	ldr	r3, .L532	@ tmp113,
	ldr	r3, [r3, r0, asl #2]	@ D.40381, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ VidStd, _4->eVidStd
	cmp	r2, #0	@ VidStd,
	beq	.L529	@,
	cmp	r2, #3	@ VidStd,
	addeq	r3, r3, #217088	@ tmp119, D.40381,
	moveq	r2, #0	@ tmp120,
	streq	r2, [r3, #436]	@ tmp120, _4->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
	bx	lr	@
.L529:
	add	r3, r3, #217088	@ tmp116, D.40381,
	str	r2, [r3, #792]	@ VidStd, _4->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	bx	lr	@
.L533:
	.align	2
.L532:
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
	cmp	r0, #0	@ ChanId
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L537	@,
	ldr	r3, .L547	@ tmp120,
	ldr	r3, [r3]	@ D.40388, s_pstVfmwChan
	cmp	r3, #0	@ D.40388,
	beq	.L537	@,
	ldr	r2, [r3, #8]	@ _8->s32IsRun, _8->s32IsRun
	cmp	r2, #1	@ _8->s32IsRun,
	bne	.L537	@,
	ldr	r2, [r3, #880]	@ VidStd, _8->eVidStd
	cmp	r2, #0	@ VidStd,
	beq	.L538	@,
	cmp	r2, #3	@ VidStd,
	bne	.L546	@,
	add	r0, r3, #217088	@, D.40388,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	MPEG2DEC_GetImageBuffer	@
.L546:
	ldmfd	sp!, {r4, pc}	@
.L538:
	add	r0, r3, #217088	@, D.40388,
	add	r0, r0, #432	@,,
	ldmfd	sp!, {r4, lr}	@
	b	H264DEC_GetImageBuffer	@
.L537:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40387,
	ldmfd	sp!, {r4, pc}	@
.L548:
	.align	2
.L547:
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
	cmp	r0, #0	@ ChanID
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L552	@,
	ldr	r3, .L557	@ tmp117,
	ldr	r3, [r3]	@ D.40395, s_pstVfmwChan
	ldr	r2, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r2, #1	@ _6->s32IsOpen,
	bne	.L552	@,
	cmp	r1, #0	@ pArgs,
	beq	.L552	@,
	ldr	r2, [r1]	@ D.40396, *pArgs_9(D)
	str	r2, [r3, #1408]	@ D.40396, _6->stSynExtraData.s32FastForwardBackwardSpeed
	ldmfd	sp!, {r4, pc}	@
.L552:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40394,
	ldmfd	sp!, {r4, pc}	@
.L558:
	.align	2
.L557:
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
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ ChanID, ChanID
	bne	.L562	@,
	ldr	r3, .L567	@ tmp117,
	ldr	r0, [r3]	@ D.40400, s_pstVfmwChan
	ldr	r3, [r0, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r3, #1	@ _6->s32IsOpen,
	bne	.L562	@,
	cmp	r1, #0	@ pArgs,
	beq	.L562	@,
	mov	r2, #20	@,
	add	r0, r0, #1424	@, D.40400,
	bl	memcpy	@
	mov	r0, r4	@ D.40399, ChanID
	ldmfd	sp!, {r4, pc}	@
.L562:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40399,
	ldmfd	sp!, {r4, pc}	@
.L568:
	.align	2
.L567:
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
	ldr	r5, .L576	@ tmp141,
	ldr	r2, [r5, r0, asl #2]	@ tmp128, s_pstVfmwChan
	cmp	r2, #0	@ tmp128,
	beq	.L572	@,
	mov	r1, sp	@,
	mov	r4, r0	@ ChanID, ChanID
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L572	@,
	ldr	r3, [sp, #8]	@ SmInstInfo.SegNum, SmInstInfo.SegNum
	cmp	r3, #16	@ SmInstInfo.SegNum,
	bgt	.L573	@,
	ldr	r3, [sp, #16]	@ SmInstInfo.TotalSegSize, SmInstInfo.TotalSegSize
	cmp	r3, #524288	@ SmInstInfo.TotalSegSize,
	ble	.L572	@,
.L573:
	mov	r0, r4	@, ChanID
	bl	VCTRL_GetImageBuffer	@
	subs	r0, r0, #1	@ ret,,
	mvnne	r0, #0	@ ret,
	cmp	r0, #0	@ ret,
	bne	.L571	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [r5, r4, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #28]	@ _18->u32timeLastDecParamReady, _18->u32timeLastDecParamReady
	rsb	r0, r3, r0	@ timePeriod, _18->u32timeLastDecParamReady,
	cmp	r0, #50	@ timePeriod,
	movls	r0, #0	@ D.40409,
	mvnhi	r0, #0	@ D.40409,
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L572:
	mvn	r0, #0	@ D.40409,
.L571:
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, pc}	@
.L577:
	.align	2
.L576:
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
	ldr	r3, .L579	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #672]	@ _4->s32NoStreamFlag, _4->s32NoStreamFlag
	subs	r0, r0, #1	@, _4->s32NoStreamFlag,
	movne	r0, #1	@,
	bx	lr	@
.L580:
	.align	2
.L579:
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
	cmp	r0, #0	@ ChanID,
	bne	.L587	@,
	ldr	r3, .L588	@ tmp120,
	ldr	r3, [r3]	@ D.40421, s_pstVfmwChan
	cmp	r3, #0	@ D.40421,
	beq	.L587	@,
	ldr	r2, [r3, #4]	@ _4->s32IsOpen, _4->s32IsOpen
	cmp	r2, #0	@ _4->s32IsOpen,
	beq	.L587	@,
	ldr	r2, [r3, #8]	@ _4->s32IsRun, _4->s32IsRun
	cmp	r2, #0	@ _4->s32IsRun,
	beq	.L587	@,
	ldr	r2, [r3, #12]	@ _4->s32Priority, _4->s32Priority
	cmp	r2, #0	@ _4->s32Priority,
	beq	.L587	@,
	ldr	r0, [r3, #880]	@ _4->eVidStd, _4->eVidStd
	cmp	r0, #19	@ _4->eVidStd,
	movne	r0, #0	@ D.40420,
	mvneq	r0, #0	@ D.40420,
	bx	lr	@
.L587:
	mvn	r0, #0	@ D.40420,
	bx	lr	@
.L589:
	.align	2
.L588:
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
	ldr	r6, [r0, #352]	@ D.40428, pCtx_4(D)->ImageQue.ResetMagicWord
	mov	r5, r1	@ pstExtraData, pstExtraData
	mov	r1, #368	@,
	bl	__memzero	@
	add	r0, r4, #8	@, pCtx,
	str	r6, [r4, #352]	@ D.40428, pCtx_4(D)->ImageQue.ResetMagicWord
	bl	ResetVoQueue	@
	ldr	r3, .L597	@ tmp122,
	str	r5, [r4]	@ pstExtraData, pCtx_4(D)->pstExtraData
	ldr	r3, [r3]	@ D.40431, s_pstVfmwChan
	cmp	r3, #0	@ D.40431,
	beq	.L591	@,
	add	r3, r3, #217088	@ D.40432, D.40431,
	add	r3, r3, #432	@ D.40432, D.40432,
	subs	r3, r4, r3	@ D.40433, pCtx, D.40432
	mvnne	r3, #0	@ D.40433,
	cmn	r3, #1	@ D.40433,
	str	r3, [r4, #360]	@ D.40433, pCtx_4(D)->ChanID
	beq	.L593	@,
	mov	r0, #1	@ D.40427,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L591:
	mvn	r3, #0	@ tmp128,
	str	r3, [r4, #360]	@ tmp128, pCtx_4(D)->ChanID
.L593:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #19	@ D.40427,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L598:
	.align	2
.L597:
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
	beq	.L600	@,
	ldr	r1, [r5, #192]	@, pImg_10->p_usrdat
	mov	r6, #0	@ tmp125,
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #192]	@ tmp125, pImg_10->p_usrdat
	ldr	r1, [r5, #196]	@, pImg_10->p_usrdat
	ldr	r0, [r4, #360]	@, pCtx_3(D)->ChanID
	bl	FreeUsdByDec	@
	str	r6, [r5, #196]	@ tmp125, pImg_10->p_usrdat
.L600:
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
	beq	.L610	@,
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	beq	.L608	@,
	mov	r1, r0	@, PicBufID
	mov	r2, #0	@,
	mov	r0, r8	@, ChanID
	bl	FSP_ClearLogicFs	@
	mov	r0, #0	@ D.40458,
.L607:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L608:
	ldr	r0, [r6, #36]	@, pstUsrdecFrame_15(D)->s32CbPhyAddr
	bl	MEM_Phy2Vir	@
	subs	r5, r0, #0	@ pSrc,
	beq	.L645	@,
.L609:
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	bl	FSP_GetFsImagePtr	@
	subs	r4, r0, #0	@ pLogic,
	beq	.L610	@,
	str	r7, [r4, #176]	@ PicBufID, pLogic_29->image_id
	mov	r9, #0	@ tmp198,
	ldrd	r2, [r6, #8]	@ D.40461, pstUsrdecFrame,
	mov	r10, #1	@ tmp197,
	strd	r2, [r4]	@ D.40461, pLogic_29->SrcPts
	ldrd	r2, [r6, #8]	@ D.40461, pstUsrdecFrame,
	strd	r2, [r4, #8]	@ D.40461, pLogic,
	ldrd	r2, [r6, #8]	@ D.40461, pstUsrdecFrame,
	strd	r2, [r4, #16]	@ D.40461, pLogic,
	ldrd	r2, [r6, #8]	@ D.40461, pstUsrdecFrame,
	str	r10, [r4, #68]	@ tmp197, pLogic_29->DispEnableFlag
	str	r9, [r4, #72]	@ tmp198, pLogic_29->DispFrameDistance
	strd	r2, [r4, #24]	@ D.40461, pLogic,
	str	r9, [r4, #76]	@ tmp198, pLogic_29->DistanceBeforeFirstFrame
	str	r9, [r4, #80]	@ tmp198, pLogic_29->GopNum
	ldr	r3, [r6, #28]	@ D.40459, pstUsrdecFrame_15(D)->s32LumaPhyAddr
	str	r3, [r4, #88]	@ D.40459, pLogic_29->top_luma_phy_addr
	mov	r0, r3	@, D.40459
	str	r3, [r4, #120]	@ D.40459, pLogic_29->luma_2d_phy_addr
	str	r3, [r4, #104]	@ D.40459, pLogic_29->luma_phy_addr
	ldr	r3, [r6, #36]	@ D.40459, pstUsrdecFrame_15(D)->s32CbPhyAddr
	str	r3, [r4, #92]	@ D.40459, pLogic_29->top_chrom_phy_addr
	str	r3, [r4, #124]	@ D.40459, pLogic_29->chrom_2d_phy_addr
	str	r3, [r4, #108]	@ D.40459, pLogic_29->chrom_phy_addr
	bl	MEM_Phy2Vir	@
	mov	r3, r0	@ D.40462,
	ldr	r0, [r4, #92]	@, pLogic_29->top_chrom_phy_addr
	str	r3, [r4, #48]	@ D.40462, pLogic_29->luma_2d_vir_addr
	str	r3, [r4, #32]	@ D.40462, pLogic_29->luma_vir_addr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r4, #88]	@ pLogic_29->top_luma_phy_addr, pLogic_29->top_luma_phy_addr
	ldr	r3, [r4, #92]	@ pLogic_29->top_chrom_phy_addr, pLogic_29->top_chrom_phy_addr
	movw	r1, #11296	@ tmp217,
	str	r0, [r4, #52]	@ __p, pLogic_29->chrom_2d_vir_addr
	mov	ip, r0	@ __p,
	str	r0, [r4, #36]	@ __p, pLogic_29->chrom_vir_addr
	cmp	r0, r9	@ __p,
	ldr	r0, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	add	r2, r2, r0	@ D.40459, pLogic_29->top_luma_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r2, [r4, #96]	@ D.40459, pLogic_29->btm_luma_phy_addr
	ldr	r2, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r9, [r4, #128]	@ tmp198, pLogic_29->is_fld_save
	add	r3, r3, r2	@ D.40459, pLogic_29->top_chrom_phy_addr, pstUsrdecFrame_15(D)->s32LumaStride
	str	r3, [r4, #100]	@ D.40459, pLogic_29->btm_chrom_phy_addr
	ldr	r3, [r6, #20]	@ pstUsrdecFrame_15(D)->s32YWidth, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #144]	@ pstUsrdecFrame_15(D)->s32YWidth, pLogic_29->image_width
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	str	r3, [r4, #148]	@ pstUsrdecFrame_15(D)->s32YHeight, pLogic_29->image_height
	ldr	r3, [r6, #20]	@ D.40460, pstUsrdecFrame_15(D)->s32YWidth
	str	r3, [r4, #152]	@ D.40460, pLogic_29->disp_width
	mov	r2, r3, lsr r10	@ D.40460, D.40460,
	ldr	r3, [r6, #24]	@ D.40460, pstUsrdecFrame_15(D)->s32YHeight
	str	r2, [r4, #160]	@ D.40460, pLogic_29->disp_center_x
	str	r3, [r4, #156]	@ D.40460, pLogic_29->disp_height
	mov	r3, r3, lsr r10	@ D.40460, D.40460,
	str	r3, [r4, #164]	@ D.40460, pLogic_29->disp_center_y
	ldr	r3, [r6, #32]	@ pstUsrdecFrame_15(D)->s32LumaStride, pstUsrdecFrame_15(D)->s32LumaStride
	str	r10, [r4, #208]	@ tmp197, pLogic_29->chroma_idc
	str	r9, [r4, #168]	@ tmp198, pLogic_29->frame_rate
	str	r3, [r4, #172]	@ pstUsrdecFrame_15(D)->s32LumaStride, pLogic_29->image_stride
	str	r9, [r4, #180]	@ tmp198, pLogic_29->error_level
	str	r9, [r4, #256]	@ tmp198, pLogic_29->line_num_phy_addr
	str	r9, [r4, #56]	@ tmp198, pLogic_29->line_num_vir_addr
	str	r1, [r4, #140]	@ tmp217, pLogic_29->format
	beq	.L610	@,
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	cmp	r3, r10	@ pstUsrdecFrame_15(D)->s32YHeight,
	bgt	.L623	@,
	b	.L624	@
.L647:
	ldr	r2, [r4, #144]	@ __n, pLogic_29->image_width
	cmp	r2, #0	@ __n,
	bne	.L646	@,
.L614:
	ldr	r3, [r6, #24]	@ pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight
	add	r9, r9, #1	@ y, y,
	ldr	r2, [r4, #172]	@ pLogic_29->image_stride, pLogic_29->image_stride
	add	r3, r3, r3, lsr #31	@ tmp250, pstUsrdecFrame_15(D)->s32YHeight, pstUsrdecFrame_15(D)->s32YHeight,
	add	ip, ip, r2	@ __p, __p, pLogic_29->image_stride
	cmp	r9, r3, asr #1	@ y, tmp250,
	bge	.L624	@,
.L623:
	ldr	r3, [r6]	@ D.40463, pstUsrdecFrame_15(D)->enFmt
	cmp	r3, #0	@ D.40463,
	beq	.L647	@,
	cmp	r3, #1	@ D.40463,
	beq	.L614	@,
	cmp	r3, #3	@ D.40463,
	beq	.L648	@,
	cmp	r3, #2	@ D.40463,
	beq	.L649	@,
	cmp	r3, #4	@ D.40463,
	bne	.L625	@,
	ldr	r3, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, #0	@ pLogic_29->image_width,
	movne	r1, r5	@ ivtmp.412, pSrc
	movne	r3, #0	@ x,
	beq	.L622	@,
.L621:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.40464, MEM[base: pSrc_188, index: _117, step: 2, offset: 0B]
	mov	r2, ip	@ D.40462, __p
	add	r1, r1, #4	@ ivtmp.412, ivtmp.412,
	strb	r0, [r2, r3]!	@ D.40464, MEM[base: __p_189, index: _117, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.40464, MEM[base: _118, offset: 1B]
	strb	r0, [r2, #1]	@ D.40464, MEM[base: _112, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, r2	@ x, pLogic_29->image_width
	bcc	.L621	@,
.L622:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	b	.L614	@
.L646:
	mov	r0, ip	@, __p
	mov	r1, #128	@,
	bl	memset	@
	mov	ip, r0	@ __p,
	b	.L614	@
.L648:
	ldr	r3, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, #0	@ pLogic_29->image_width,
	movne	r1, r5	@ ivtmp.404, pSrc
	movne	r3, #0	@ x,
	beq	.L618	@,
.L617:
	ldrb	r0, [r5, r3, asl #1]	@ zero_extendqisi2	@ D.40464, MEM[base: pSrc_188, index: _202, step: 2, offset: 0B]
	mov	r2, ip	@ D.40462, __p
	add	r1, r1, #4	@ ivtmp.404, ivtmp.404,
	strb	r0, [r2, r3]!	@ D.40464, MEM[base: __p_189, index: _202, offset: 0B]
	add	r3, r3, #2	@ x, x,
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2	@ D.40464, MEM[base: _200, offset: 1B]
	strb	r0, [r2, #1]	@ D.40464, MEM[base: _198, offset: 1B]
	ldr	r2, [r4, #144]	@ pLogic_29->image_width, pLogic_29->image_width
	cmp	r3, r2	@ x, pLogic_29->image_width
	bcc	.L617	@,
.L618:
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride
	b	.L614	@
.L624:
	mov	r5, #18	@ tmp221,
	mov	r2, #1	@,
	mov	r1, r7	@, PicBufID
	mov	r0, r8	@, ChanID
	str	r5, [r4, #300]	@ tmp221, pLogic_29->ImageDnr.video_standard
	bl	FSP_SetDisplay	@
	ldr	r3, .L650	@ tmp222,
	mov	r1, r5	@, tmp221
	mov	r0, r8	@, ChanID
	ldr	r2, [r3, r8, asl #2]	@ D.40466, s_pstVfmwChan
	add	r2, r2, #217088	@ tmp224, D.40466,
	add	r3, r2, #440	@, tmp224,
	add	r2, r2, #432	@, tmp224,
	str	r4, [sp]	@ pLogic,
	bl	InsertImgToVoQueue	@
	cmp	r0, #1	@,
	bne	.L612	@,
	mov	r0, #0	@ D.40458,
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L649:
	mov	r1, r5	@, pSrc
	mov	r0, ip	@, __p
	ldr	r2, [r4, #144]	@, pLogic_29->image_width
	bl	memcpy	@
	ldr	r3, [r6, #44]	@ pstUsrdecFrame_15(D)->s32ChromStride, pstUsrdecFrame_15(D)->s32ChromStride
	add	r5, r5, r3, lsl #1	@ pSrc, pSrc, pstUsrdecFrame_15(D)->s32ChromStride,
	mov	ip, r0	@ __p,
	b	.L614	@
.L645:
	ldr	r3, [r6, #4]	@ pstUsrdecFrame_15(D)->s32IsFrameValid, pstUsrdecFrame_15(D)->s32IsFrameValid
	cmp	r3, #1	@ pstUsrdecFrame_15(D)->s32IsFrameValid,
	bne	.L609	@,
.L610:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40458,
	b	.L607	@
.L625:
	mvn	r0, #0	@ D.40458,
	b	.L607	@
.L612:
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
	mvn	r0, #0	@ D.40458,
	b	.L607	@
.L651:
	.align	2
.L650:
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
	ldr	r6, .L669	@ tmp127,
	ldr	r3, [r6, r0, asl #2]	@ D.40476, s_pstVfmwChan
	cmp	r3, #0	@ D.40476,
	beq	.L655	@,
	ldr	r2, [r3, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r2, #18	@ _5->eVidStd,
	bne	.L655	@,
	ldr	r3, [r3, #820]	@ _5->s32UsrdecFrameNum, _5->s32UsrdecFrameNum
	cmp	r3, #2	@ _5->s32UsrdecFrameNum,
	ble	.L655	@,
	mov	r7, r1	@ pMem, pMem
	bl	FSP_IsNewFsAvalible	@
	cmp	r0, #1	@ D.40478,
	bne	.L655	@,
	mov	r1, r0	@, D.40478
	mov	r0, r5	@, ChanID
	bl	FSP_NewLogicFs	@
	subs	r1, r0, #0	@ id,
	blt	.L655	@,
	mov	r0, r5	@, ChanID
	bl	FSP_GetLogicFs	@
	mov	r4, r0	@ pLf,
	bl	vfmw_dprint_nothing	@
	cmp	r4, #0	@ pLf,
	beq	.L655	@,
	ldr	r3, [r4, #408]	@ pLf_18->pstDecodeFs, pLf_18->pstDecodeFs
	cmp	r3, #0	@ pLf_18->pstDecodeFs,
	beq	.L655	@,
	ldr	r3, [r4, #412]	@ pLf_18->pstDispOutFs, pLf_18->pstDispOutFs
	cmp	r3, #0	@ pLf_18->pstDispOutFs,
	beq	.L655	@,
	ldr	r3, [r4, #416]	@ pLf_18->pstTfOutFs, pLf_18->pstTfOutFs
	cmp	r3, #0	@ pLf_18->pstTfOutFs,
	beq	.L655	@,
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #408]	@ pLf_18->pstDecodeFs, pLf_18->pstDecodeFs
	mov	r0, #0	@ D.40475,
	ldr	r3, [r3, #12]	@ D.40478, _25->PhyAddr
	str	r3, [r7]	@ D.40478, pMem_27(D)->PhyAddr
	ldr	r3, [r6, r5, asl #2]	@ tmp135, s_pstVfmwChan
	ldr	r3, [r3, #816]	@ D.40478, _29->s32UsrdecFrameSize
	str	r3, [r7, #8]	@ D.40478, pMem_27(D)->Length
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L655:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40475,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L670:
	.align	2
.L669:
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
	ldr	r3, .L679	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ ChanID, ChanID
	ldr	r0, [r3, r0, asl #2]	@ D.40483, s_pstVfmwChan
	cmp	r0, #0	@ D.40483,
	beq	.L674	@,
	cmp	r1, #0	@ pUsrdecFrame,
	mov	r5, r1	@ pUsrdecFrame, pUsrdecFrame
	beq	.L674	@,
	ldr	r2, [r0, #880]	@ _5->eVidStd, _5->eVidStd
	cmp	r2, #18	@ _5->eVidStd,
	bne	.L674	@,
	mov	r2, #56	@,
	add	r0, r0, #824	@, D.40483,
	bl	memcpy	@
	mov	r1, r5	@, pUsrdecFrame
	mov	r0, r4	@, ChanID
	bl	VDH_PutUsrdecFrame	@
	cmp	r0, #0	@ D.40482
	bne	.L674	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L674:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40482,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L680:
	.align	2
.L679:
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
	ldr	r3, .L690	@ tmp119,
	ldr	r1, [r3, r0, asl #2]	@ D.40493, s_pstVfmwChan
	cmp	r1, #0	@ D.40493,
	beq	.L689	@,
	ldr	r3, [r1, #880]	@ D.40494, _4->eVidStd
	cmp	r3, #3	@ D.40494,
	beq	.L684	@,
	cmp	r3, #18	@ D.40494,
	beq	.L685	@,
	cmp	r3, #0	@ D.40494,
	bxne	lr	@
	add	r0, r1, #217088	@, D.40493,
	add	r1, r1, #888	@, D.40493,
	add	r0, r0, #432	@,,
	b	H264DEC_Init	@
.L685:
	add	r0, r1, #217088	@, D.40493,
	add	r1, r1, #888	@, D.40493,
	add	r0, r0, #432	@,,
	b	USERDEC_Init	@
.L684:
	add	r0, r1, #217088	@, D.40493,
	add	r1, r1, #888	@, D.40493,
	add	r0, r0, #432	@,,
	b	MPEG2DEC_Init	@
.L689:
	b	vfmw_dprint_nothing	@
.L691:
	.align	2
.L690:
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
	ldr	r5, .L711	@ tmp166,
	ldr	r3, [r5, r0, asl #2]	@ D.40502, s_pstVfmwChan
	cmp	r3, #0	@ D.40502,
	beq	.L695	@,
	ldr	r2, [r1]	@ pOption_11(D)->s32KeepBS, pOption_11(D)->s32KeepBS
	mov	r7, r1	@ pOption, pOption
	cmp	r2, #1	@ pOption_11(D)->s32KeepBS,
	bhi	.L695	@,
	ldr	r8, [r3, #8]	@ ChanIsRun, _9->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r5, r4, asl #2]	@ D.40502, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp140, ChanID,
	sub	r3, r3, r4, asl #3	@ tmp141, tmp140, ChanID,
	add	r0, r5, #3552	@ tmp137, tmp166,
	add	r0, r0, r3	@, tmp137, tmp141
	mov	r6, #0	@ tmp134,
	mov	r1, #24	@,
	str	r6, [r2, #680]	@ tmp134, _17->s32CountNoDecparamFlag
	str	r6, [r2, #684]	@ tmp134, _17->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r2, [r7, #4]	@ D.40503, pOption_11(D)->s32KeepSPSPPS
	ldr	r3, [r5, r4, asl #2]	@ tmp144, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r2, [r3, #1412]	@ D.40503, _23->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r3, [r5, r4, asl #2]	@ D.40502, s_pstVfmwChan
	add	r1, r3, #217088	@, D.40502,
	ldr	r0, [r3, #880]	@, _27->eVidStd
	add	r1, r1, #432	@,,
	bl	ReleaseCurPic	@
	ldr	r0, [r5, r4, asl #2]	@ tmp151, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp151,
	bl	__memzero	@
	ldr	r3, [r5, r4, asl #2]	@ D.40502, s_pstVfmwChan
	mvn	r0, #0	@ tmp155,
	mvn	r1, #0	@,
	add	r2, r3, #960	@ tmp157, D.40502,
	add	ip, r3, #944	@ tmp154, D.40502,
	strd	r0, [ip]	@ tmp155, _34->stSynExtraData.pts
	strd	r0, [r2, #-8]	@ tmp155, tmp157,
	mov	r0, r4	@, ChanID
	ldr	r2, [r3, #880]	@ _34->eVidStd, _34->eVidStd
	str	r6, [r3, #1272]	@ tmp134, _34->stSynExtraData.s32NewPicSegDetector
	cmp	r2, #18	@ _34->eVidStd,
	str	r6, [r3, #1620]	@ tmp134, _34->stSynExtraData.s32firstIdecodedflag
	beq	.L696	@,
	bl	FSP_ResetInstance	@
.L697:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	ldr	r3, [r7]	@ pOption_11(D)->s32KeepBS, pOption_11(D)->s32KeepBS
	cmp	r3, #0	@ pOption_11(D)->s32KeepBS,
	beq	.L708	@,
	ldr	r3, [r5, #3576]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L709	@,
.L699:
	cmp	r8, #0	@ ChanIsRun,
	bne	.L710	@,
.L700:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40501,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L708:
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r5, #3576]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	beq	.L699	@,
.L709:
	bl	vfmw_dprint_nothing	@
	cmp	r8, #0	@ ChanIsRun,
	beq	.L700	@,
.L710:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	b	.L700	@
.L696:
	bl	FSP_EmptyInstance	@
	b	.L697	@
.L695:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40501,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L712:
	.align	2
.L711:
	.word	.LANCHOR0
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
	ldr	r6, .L733	@ tmp170,
	ldr	r3, [r6, r0, asl #2]	@ D.40511, s_pstVfmwChan
	cmp	r3, #0	@ D.40511,
	beq	.L729	@,
	ldr	r7, [r3, #8]	@ ChanIsRun, _10->s32IsRun
	bl	VCTRL_StopChan	@
	ldr	r2, [r6, r4, asl #2]	@ D.40511, s_pstVfmwChan
	mov	r3, r4, asl #5	@ tmp134, ChanID,
	sub	r3, r3, r4, asl #3	@ tmp135, tmp134, ChanID,
	add	r0, r6, #3552	@ tmp131, tmp170,
	mov	r5, #0	@ tmp128,
	add	r0, r0, r3	@, tmp131, tmp135
	str	r5, [r2, #680]	@ tmp128, _14->s32CountNoDecparamFlag
	mov	r1, #24	@,
	str	r5, [r2, #684]	@ tmp128, _14->u32NoDecparamStartTime
	bl	__memzero	@
	mov	r0, r4	@, ChanID
	bl	DNR_InformDecChanReset	@
	ldr	r3, [r6, r4, asl #2]	@ tmp138, s_pstVfmwChan
	mov	r0, r4	@, ChanID
	str	r5, [r3, #1412]	@ tmp128, _20->stSynExtraData.s32KeepSPSPPS
	bl	InitSyntaxCtx	@
	ldr	r0, [r6, r4, asl #2]	@ tmp142, s_pstVfmwChan
	mov	r1, #248	@,
	add	r0, r0, #1024	@, tmp142,
	bl	__memzero	@
	ldr	r3, [r6, r4, asl #2]	@ D.40511, s_pstVfmwChan
	mvn	r0, #0	@ tmp146,
	mvn	r1, #0	@,
	add	r2, r3, #217088	@ tmp153, D.40511,
	add	lr, r3, #944	@ tmp145, D.40511,
	add	ip, r3, #960	@ tmp148, D.40511,
	strd	r0, [lr]	@ tmp146, _26->stSynExtraData.pts
	strd	r0, [ip, #-8]	@ tmp146, tmp148,
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
	beq	.L717	@,
	bl	FSP_ResetInstance	@
.L718:
	mov	r0, r4	@, ChanID
	bl	InitUsdPool	@
	mov	r0, r4	@, ChanID
	bl	SM_Reset	@
	ldr	r3, [r6, #3576]	@ g_ResetCreateNewSave, g_ResetCreateNewSave
	cmp	r3, #0	@ g_ResetCreateNewSave,
	bne	.L730	@,
	cmp	r7, #0	@ ChanIsRun,
	bne	.L731	@,
.L720:
	ldr	r3, [r6, r4, asl #2]	@ tmp167, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L732	@,
.L721:
	mov	r0, r4	@, ChanID
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40510,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L730:
	bl	vfmw_dprint_nothing	@
	cmp	r7, #0	@ ChanIsRun,
	beq	.L720	@,
.L731:
	mov	r0, r4	@, ChanID
	bl	VCTRL_StartChan	@
	ldr	r3, [r6, r4, asl #2]	@ tmp167, s_pstVfmwChan
	ldr	r3, [r3, #1580]	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _44->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	bne	.L721	@,
.L732:
	mov	r0, r4	@, ChanID
	bl	DNR_StartChan	@
	b	.L721	@
.L717:
	bl	FSP_EmptyInstance	@
	b	.L718	@
.L729:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40510,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L734:
	.align	2
.L733:
	.word	.LANCHOR0
	.fnend
	.size	VCTRL_ResetChan, .-VCTRL_ResetChan
	.align	2
	.global	VCTRL_StartChanWithOption
	.type	VCTRL_StartChanWithOption, %function
VCTRL_StartChanWithOption:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	subs	r6, r0, #0	@ ChanID, ChanID
	bne	.L738	@,
	ldr	r4, .L754	@ tmp164,
	ldr	r3, [r4]	@ D.40518, s_pstVfmwChan
	cmp	r3, #0	@ D.40518,
	beq	.L738	@,
	ldr	r5, [r3, #4]	@ _11->s32IsOpen, _11->s32IsOpen
	cmp	r5, #1	@ _11->s32IsOpen,
	bne	.L738	@,
	ldr	r3, [r3, #880]	@ _11->eVidStd, _11->eVidStd
	cmp	r3, #19	@ _11->eVidStd,
	bne	.L753	@,
.L738:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40517,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L753:
	mov	r7, r1	@ pChanMemVdh, pChanMemVdh
	bl	VCTRL_ResetChan	@
	ldr	r3, [r4]	@ D.40518, s_pstVfmwChan
	ldr	r2, [r3, #180]	@, _18->stChanMem_vdh.Length
	ldr	r1, [r3, #172]	@, _18->stChanMem_vdh.VirAddr
	ldr	r0, [r3, #176]	@, _18->stChanMem_vdh.PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r8, [r4]	@ D.40518, s_pstVfmwChan
	mov	r1, r7	@, pChanMemVdh
	mov	r2, #16	@,
	add	r0, r8, #168	@, D.40518,
	bl	memcpy	@
	ldr	r2, [r8, #180]	@, _23->stChanMem_vdh.Length
	ldr	r1, [r8, #172]	@, _23->stChanMem_vdh.VirAddr
	ldr	r0, [r8, #176]	@, _23->stChanMem_vdh.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r0, r6	@, ChanID
	bl	SM_Start	@
	ldr	r3, [r4]	@ D.40518, s_pstVfmwChan
	ldr	r2, [r3, #12]	@ _32->s32Priority, _32->s32Priority
	str	r5, [r3, #8]	@ _11->s32IsOpen, _32->s32IsRun
	cmp	r2, #0	@ _32->s32Priority,
	str	r6, [r3, #16]	@ ChanID, _32->s32StopSyntax
	bne	.L739	@,
	cmp	r3, #0	@ D.40518,
	str	r5, [r3, #12]	@ _11->s32IsOpen, _32->s32Priority
	ldr	r0, .L754+4	@,
	ldrne	r3, .L754+8	@ tmp156,
	ldreq	r2, .L754+8	@ tmp152,
	streq	r3, [r4, #3580]	@ D.40518, PrioArray
	strne	r5, [r3]	@ _11->s32IsOpen, g_ChanCtx.PriorByChanId
	streq	r3, [r2]	@ D.40518, g_ChanCtx.PriorByChanId
	strne	r5, [r4, #3580]	@ _11->s32IsOpen, PrioArray
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	ldr	r3, [r4]	@ D.40518, s_pstVfmwChan
.L739:
	ldr	r3, [r3, #1580]	@ _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r3, #1	@ _60->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L742	@,
	mov	r0, #0	@,
	bl	DNR_StartChan	@
.L742:
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, #0	@ D.40517,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L755:
	.align	2
.L754:
	.word	.LANCHOR0
	.word	.LANCHOR0+3580
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
	cmp	r0, #0	@ ChanID,
	mov	r3, #0	@ tmp192,
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r1	@ pstCfg, pstCfg
	.pad #172
	sub	sp, sp, #172	@,,
	str	r3, [r1, #44]	@ tmp192, pstCfg_11(D)->s32VcmpEn
	bne	.L759	@,
	ldr	r6, .L793	@ tmp320,
	ldr	r3, [r6]	@ D.40535, s_pstVfmwChan
	cmp	r3, #0	@ D.40535,
	beq	.L759	@,
	ldr	r7, [r3, #4]	@ _15->s32IsOpen, _15->s32IsOpen
	cmp	r7, #1	@ _15->s32IsOpen,
	bne	.L759	@,
	bl	VCTRL_CheckChanWH	@
	subs	r8, r0, #0	@ D.40536,
	bne	.L759	@,
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	bgt	.L767	@,
	mov	r1, r5	@, pstCfg
	bl	VCTRL_CmpConfigParameter	@
	subs	r4, r0, #0	@ D.40532,
	beq	.L790	@,
	ldr	r4, [r6]	@ D.40535, s_pstVfmwChan
	mov	r2, #72	@,
	mov	r1, r5	@, pstCfg
	add	r9, r5, #4	@ D.40541, pstCfg,
	add	r0, r4, #32	@, D.40535,
	bl	memcpy	@
	ldr	r3, [r5, #12]	@ D.40536, pstCfg_11(D)->s32ChanPriority
	mov	r1, #120	@,
	str	r3, [r4, #12]	@ D.40536, _25->s32Priority
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	str	r3, [r4, #880]	@ pstCfg_11(D)->eVidStd, _25->eVidStd
	add	r0, sp, #48	@ tmp322,,
	bl	__memzero	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #244]	@ D.40536, _34->s32ScdChanMemAddr
	mov	r0, r3	@, D.40536
	str	r3, [sp, #60]	@ D.40536, ScdInstCfg.BufPhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r1, r9	@, D.40541
	ldr	lr, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	mov	r3, #49152	@ tmp212,
	ldr	ip, [r5, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	movt	r3, 4115	@ tmp212,
	ldr	r10, [r2, #256]	@ _40->s32ScdChanMemSize, _40->s32ScdChanMemSize
	mov	r2, #8	@,
	ldr	r4, [r5, #12]	@ pstCfg_11(D)->s32ChanPriority, pstCfg_11(D)->s32ChanPriority
	str	r0, [sp, #48]	@, ScdInstCfg.pBufVirAddr
	add	r0, sp, #72	@,,
	str	r3, [sp, #68]	@ tmp212, ScdInstCfg.RegPhyBaseAddr
	str	lr, [sp, #56]	@ pstCfg_11(D)->eVidStd, ScdInstCfg.VidStd
	str	ip, [sp, #92]	@ pstCfg_11(D)->s32LowdBufEnable, ScdInstCfg.ScdLowBufEnable
	str	r8, [sp, #88]	@ D.40536, ScdInstCfg.ScdLowdlyEnable
	str	r10, [sp, #64]	@ _40->s32ScdChanMemSize, ScdInstCfg.BufSize
	strb	r4, [sp, #52]	@ pstCfg_11(D)->s32ChanPriority, ScdInstCfg.Priority
	bl	memcpy	@
	mov	r0, r8	@, D.40536
	add	r1, sp, #48	@ tmp323,,
	bl	SM_Config	@
	mov	r1, r7	@, _15->s32IsOpen
	add	r0, sp, #15	@ tmp324,,
	bl	__memzero	@
	ldr	r3, [r5, #68]	@ pstCfg_11(D)->s32LowdBufEnable, pstCfg_11(D)->s32LowdBufEnable
	cmp	r3, #0	@ pstCfg_11(D)->s32LowdBufEnable,
	bne	.L791	@,
.L762:
	ldr	r4, [r6]	@ D.40535, s_pstVfmwChan
	mov	r1, r9	@, D.40541
	mov	r7, #0	@ tmp237,
	mov	r2, #8	@,
	add	r0, r4, #1264	@, D.40535,
	ldr	r8, .L793	@ tmp227,
	ldr	fp, [r4, #208]	@ _60->stChanMem_ctx.PhyAddr, _60->stChanMem_ctx.PhyAddr
	add	r0, r0, #12	@,,
	ldr	r3, [r4, #264]	@ _60->s32BpdChanMemSize, _60->s32BpdChanMemSize
	ldr	lr, [r4, #232]	@ _60->s32VdmChanMemSize, _60->s32VdmChanMemSize
	str	fp, [r4, #1392]	@ _60->stChanMem_ctx.PhyAddr, _60->stSynExtraData.s32ContextMemAddr
	str	r3, [r4, #928]	@ _60->s32BpdChanMemSize, _60->stSynExtraData.s32BpdMemSize
	ldr	ip, [r4, #260]	@ _60->s32BpdChanMemAddr, _60->s32BpdChanMemAddr
	ldr	r3, [r4, #268]	@ tmp326, _60->s32Vp8SegIdChanMemAddr
	ldr	r10, [r4, #212]	@ _60->stChanMem_ctx.Length, _60->stChanMem_ctx.Length
	ldr	r9, [r4, #228]	@ _60->s32VdmChanMemAddr, _60->s32VdmChanMemAddr
	ldr	fp, [r4, #272]	@ _60->s32Vp8SegIdChanMemSize, _60->s32Vp8SegIdChanMemSize
	str	lr, [r4, #916]	@ _60->s32VdmChanMemSize, _60->stSynExtraData.s32SyntaxMemSize
	str	ip, [r4, #924]	@ _60->s32BpdChanMemAddr, _60->stSynExtraData.s32BpdMemAddr
	str	r10, [r4, #1396]	@ _60->stChanMem_ctx.Length, _60->stSynExtraData.s32ContextMemSize
	str	r9, [r4, #912]	@ _60->s32VdmChanMemAddr, _60->stSynExtraData.s32SyntaxMemAddr
	str	r3, [r4, #932]	@ tmp326, _60->stSynExtraData.s32Vp8SegIdMemAddr
	str	fp, [r4, #936]	@ _60->s32Vp8SegIdChanMemSize, _60->stSynExtraData.s32Vp8SegIdMemSize
	ldr	r3, [r5, #16]	@ D.40536, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r4, #892]	@ D.40536, _60->stSynExtraData.s32OutErrThr
	ldr	r3, [r5, #16]	@ D.40536, pstCfg_11(D)->s32ChanErrThr
	str	r3, [r4, #888]	@ D.40536, _60->stSynExtraData.s32RefErrThr
	ldr	r3, [r5, #24]	@ pstCfg_11(D)->s32DecMode, pstCfg_11(D)->s32DecMode
	str	r3, [r4, #896]	@ pstCfg_11(D)->s32DecMode, _60->stSynExtraData.s32DecMode
	ldr	r3, [r5, #28]	@ D.40536, pstCfg_11(D)->s32DecOrderOutput
	str	r3, [r4, #900]	@ D.40536, _60->stSynExtraData.s32DecOrderOutput
	ldr	r3, [r5, #32]	@ D.40536, pstCfg_11(D)->s32DnrTfEnable
	str	r3, [r4, #904]	@ D.40536, _60->stSynExtraData.s32DnrTfEnable
	ldr	r3, [r5, #44]	@ D.40536, pstCfg_11(D)->s32VcmpEn
	str	r7, [r4, #1616]	@ tmp237, _60->stSynExtraData.s32DSDWaitFlag
	str	r3, [r4, #1400]	@ D.40536, _60->stSynExtraData.s32Compress_en
	ldr	r3, [r5, #60]	@ pstCfg_11(D)->s32SupportAllP, pstCfg_11(D)->s32SupportAllP
	sub	r3, r3, #1	@ D.40543, pstCfg_11(D)->s32SupportAllP,
	clz	r3, r3	@ D.40543, D.40543
	mov	r3, r3, lsr #5	@ D.40543, D.40543,
	str	r3, [r4, #1416]	@ D.40543, _60->stSynExtraData.s32SupportAllP
	ldr	r3, [r5, #64]	@ D.40536, pstCfg_11(D)->s32ModuleLowlyEnable
	str	r3, [r4, #1420]	@ D.40536, _60->stSynExtraData.s32ModuleLowlyEnable
	bl	memcpy	@
	add	r3, r4, #217088	@ tmp319, D.40535,
	str	r7, [r4, #908]	@ tmp237, _60->stSynExtraData.s32DnrDispOutEnable
	ldr	r2, [r4, #880]	@ D.40534, _60->eVidStd
	ldr	r1, [r3, #424]	@ _60->stSynCtx.eVidStd, _60->stSynCtx.eVidStd
	cmp	r1, r2	@ _60->stSynCtx.eVidStd, D.40534
	beq	.L763	@,
	mov	r0, r7	@, tmp237
	bl	VCTRL_ResetChan	@
	ldr	r3, [r5]	@ pstCfg_11(D)->eVidStd, pstCfg_11(D)->eVidStd
	ldr	r4, [r8]	@ D.40535, s_pstVfmwChan
	cmp	r3, #18	@ pstCfg_11(D)->eVidStd,
	beq	.L764	@,
	ldr	r2, [r4, #880]	@ D.40534, _103->eVidStd
	add	r3, r4, #217088	@ tmp319, D.40535,
.L763:
	str	r2, [r3, #424]	@ D.40534, _179->stSynCtx.eVidStd
	ldr	r3, [r4, #248]	@ D.40536, _179->s32SdecMemAddr
	ldr	r7, .L793	@ tmp259,
	mov	r0, r3	@, D.40536
	str	r3, [sp, #16]	@ D.40536, stMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, [r3, #252]	@ _123->s32SdecMemSize, _123->s32SdecMemSize
	str	r0, [sp, #20]	@, stMem.VirAddr
	add	r1, sp, #16	@,,
	mov	r0, #0	@,
	str	r3, [sp, #24]	@ _123->s32SdecMemSize, stMem.Length
	bl	RefreshDecCore	@
	subs	r4, r0, #0	@ D.40532,
	beq	.L792	@,
.L767:
	mvn	r4, #0	@ D.40532,
.L758:
	mov	r0, r4	@, D.40532
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L790:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, D.40532
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L791:
	add	r1, sp, #15	@ tmp325,,
	mov	r0, r8	@, D.40536
	strb	r7, [sp, #15]	@ _15->s32IsOpen, FspInstCfg.s8LowBufEnable
	bl	FSP_ConfigAttribute	@
	b	.L762	@
.L759:
	bl	vfmw_dprint_nothing	@
	mvn	r4, #0	@ D.40532,
	mov	r0, r4	@, D.40532
	add	sp, sp, #172	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L764:
	ldr	r3, [r4, #1448]	@ MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].Purpose, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].Purpose
	mov	r0, #0	@,
	ldr	ip, [r4, #252]	@ _103->s32SdecMemSize, _103->s32SdecMemSize
	cmp	r3, #2	@ MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].Purpose,
	ldr	r3, [r4, #248]	@ _103->s32SdecMemAddr, _103->s32SdecMemAddr
	ldrne	r1, [r4, #1456]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32MaxWidth
	ldrne	r2, [r4, #1460]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32MaxHeight
	ldreq	r1, [r4, #1508]	@ MaxWidth, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32SlotWidth
	ldreq	r2, [r4, #1512]	@ MaxHeight, MEM[(struct VDEC_CHAN_OPTION_S *)_103 + 1444B].s32SlotHeight
	str	ip, [sp]	@ _103->s32SdecMemSize,
	bl	VCTRL_PartitionMemForStdUser	@
	cmp	r0, #0	@,
	bne	.L759	@,
	ldr	r4, [r6]	@ D.40535, s_pstVfmwChan
	add	r3, r4, #217088	@ tmp319, D.40535,
	ldr	r2, [r4, #880]	@ D.40534, _132->eVidStd
	b	.L763	@
.L792:
	mov	r1, #16	@,
	add	r0, sp, #32	@ tmp327,,
	bl	__memzero	@
	ldr	r3, [r5]	@ D.40536, pstCfg_11(D)->eVidStd
	sub	r2, r3, #10	@ D.40546, D.40536,
	cmp	r2, #2	@ D.40546,
	bhi	.L768	@,
	ldr	r2, [r7, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	beq	.L771	@,
	cmp	r3, #12	@ D.40536,
	beq	.L771	@,
	ldr	r3, [r5, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	eor	r3, r3, #1	@ tmp272, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	and	r3, r3, #1	@ D.40533, tmp272,
	strb	r3, [sp, #32]	@ D.40533, DnrChanCfgArgs.s32MirrorEn
.L770:
	cmp	r3, #0	@ D.40533,
	ldr	r3, [r5, #44]	@ D.40536, pstCfg_11(D)->s32VcmpEn
	movne	r3, #0	@ tmp281,
.L789:
	ldr	r7, [r6]	@ D.40535, s_pstVfmwChan
	ldr	r0, [r5, #48]	@ pstCfg_11(D)->s32WmEn, pstCfg_11(D)->s32WmEn
	ldr	r1, [r5, #52]	@ pstCfg_11(D)->s32VcmpWmStartLine, pstCfg_11(D)->s32VcmpWmStartLine
	ldr	ip, [r7, #1580]	@ _173->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _173->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	ldr	r2, [r5, #56]	@ pstCfg_11(D)->s32VcmpWmEndLine, pstCfg_11(D)->s32VcmpWmEndLine
	strb	r3, [sp, #33]	@ tmp281, DnrChanCfgArgs.s32VcmpEn
	mov	r3, #1	@ tmp287,
	cmp	ip, r3	@ _173->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	strb	r0, [sp, #34]	@ pstCfg_11(D)->s32WmEn, DnrChanCfgArgs.s32WmEn
	str	r1, [sp, #36]	@ pstCfg_11(D)->s32VcmpWmStartLine, DnrChanCfgArgs.s32VcmpWmStartLine
	str	r2, [sp, #40]	@ pstCfg_11(D)->s32VcmpWmEndLine, DnrChanCfgArgs.s32VcmpWmEndLine
	str	r3, [sp, #44]	@ tmp287, DnrChanCfgArgs.s32NeedConfigDnrChan
	ldr	r5, .L793	@ tmp288,
	beq	.L775	@,
	add	r1, sp, #32	@ tmp328,,
	mov	r0, #0	@,
	bl	DNR_ConfigChan	@
	cmp	r0, #0	@,
	bne	.L767	@,
	ldr	r7, [r5]	@ D.40535, s_pstVfmwChan
.L776:
	ldr	r3, .L793+4	@ tmp303,
	cmp	r7, #0	@ D.40535,
	add	r2, r7, #180224	@ tmp300, D.40535,
	mov	r1, #0	@ tmp301,
	ldr	r0, .L793+8	@,
	ldr	r3, [r3, #116]	@ s_SmIIS.pSmInstArray, s_SmIIS.pSmInstArray
	strb	r1, [r2, #1536]	@ tmp301, _142->FspInst.s32InstID
	add	r3, r3, #163840	@ tmp306, s_SmIIS.pSmInstArray,
	ldrne	r2, .L793+12	@ tmp313,
	streq	r7, [r6, #3588]	@ D.40535, PrioArray
	str	r1, [r3, #2408]	@ tmp301, _134->InstID
	ldreq	r3, .L793+12	@ tmp310,
	ldrne	r3, [r7, #12]	@ D.40536, _142->s32Priority
	streq	r7, [r3]	@ D.40535, g_ChanCtx.PriorByChanId
	strne	r3, [r6, #3588]	@ D.40536, PrioArray
	strne	r3, [r2]	@ D.40536, g_ChanCtx.PriorByChanId
	bl	VDMDRV_SetPriority	@
	mov	r0, #0	@,
	bl	VDMDRV_ClearChanIsDec	@
	b	.L758	@
.L768:
	strb	r4, [sp, #32]	@ D.40532, DnrChanCfgArgs.s32MirrorEn
	ldr	r3, [r5, #44]	@ D.40536, pstCfg_11(D)->s32VcmpEn
	b	.L789	@
.L771:
	ldr	r3, [r5, #4]	@ pstCfg_11(D)->StdExt.Vp6Ext.bReversed, pstCfg_11(D)->StdExt.Vp6Ext.bReversed
	and	r3, r3, #1	@ D.40533, pstCfg_11(D)->StdExt.Vp6Ext.bReversed,
	strb	r3, [sp, #32]	@ D.40533, DnrChanCfgArgs.s32MirrorEn
	b	.L770	@
.L775:
	add	r0, r7, #217088	@, D.40535,
	add	r1, sp, #32	@ tmp329,,
	mov	r2, #16	@,
	add	r0, r0, #360	@,,
	bl	memcpy	@
	b	.L776	@
.L794:
	.align	2
.L793:
	.word	.LANCHOR0
	.word	s_SmIIS
	.word	.LANCHOR0+3588
	.word	g_ChanCtx
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
	ldr	r0, [r1, #64]	@ D.40564, pChanOption_4(D)->s32SlotWidth
	cmp	r0, #0	@ D.40564,
	beq	.L796	@,
	ldr	r3, [r1, #68]	@ D.40564, pChanOption_4(D)->s32SlotHeight
	cmp	r3, #0	@ D.40564,
	beq	.L796	@,
	mul	r3, r3, r0	@ D.40564, D.40564, D.40564
	ldr	lr, [r1, #60]	@ pChanOption_4(D)->s32DisplayFrameNum, pChanOption_4(D)->s32DisplayFrameNum
	movw	ip, #40368	@ tmp128,
	mov	r1, #0	@ tmp127,
	movt	ip, 7	@ tmp128,
	mov	r0, r1	@ D.40563, tmp127
	stmib	r2, {r1, ip}	@ pDetailMemSize,,
	str	r1, [r2, #12]	@ tmp127, pDetailMemSize_13(D)->PmvDetailMem
	mla	r3, lr, r3, r3	@ D.40564, pChanOption_4(D)->s32DisplayFrameNum, D.40564, D.40564
	mov	r3, r3, asl #1	@ D.40564, D.40564,
	str	r3, [r2]	@ D.40564, pDetailMemSize_13(D)->VdhDetailMem
	ldmfd	sp!, {r4, pc}	@
.L796:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40563,
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
	blt	.L804	@,
	ldr	r3, [r0, #12]	@ pChanOption_4(D)->s32MaxWidth, pChanOption_4(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxWidth,
	ble	.L804	@,
	ldr	r3, [r0, #16]	@ pChanOption_4(D)->s32MaxHeight, pChanOption_4(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_4(D)->s32MaxHeight,
	ble	.L804	@,
	ldr	r3, [r0, #56]	@ pChanOption_4(D)->s32SCDBufSize, pChanOption_4(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_4(D)->s32SCDBufSize,
	blt	.L804	@,
	ldr	r3, [r0, #44]	@ pChanOption_4(D)->s32SupportH264, pChanOption_4(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_4(D)->s32SupportH264,
	beq	.L809	@,
.L807:
	mov	r0, #0	@ D.40567,
	ldmfd	sp!, {r4, pc}	@
.L809:
	ldr	r3, [r0, #20]	@ pChanOption_4(D)->s32MaxSliceNum, pChanOption_4(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSliceNum,
	ble	.L804	@,
	ldr	r3, [r0, #24]	@ pChanOption_4(D)->s32MaxSpsNum, pChanOption_4(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxSpsNum,
	ble	.L804	@,
	ldr	r3, [r0, #28]	@ pChanOption_4(D)->s32MaxPpsNum, pChanOption_4(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_4(D)->s32MaxPpsNum,
	bgt	.L807	@,
.L804:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40567,
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
	ldr	ip, .L814	@ tmp117,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r0	@ FrmNum, FrmNum
	ldr	ip, [ip, #100]	@ D.40572, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	mov	r5, r3	@ pChanPmvSize, pChanPmvSize
	cmp	ip, #0	@ D.40572,
	mvneq	r0, #0	@ D.40571,
	beq	.L811	@,
	mov	r0, r1	@ Width, Width
	mov	r1, r2	@, Height
	blx	ip	@ D.40572
.L811:
	mul	r4, r4, r0	@ D.40573, FrmNum, D.40571
	str	r4, [r5]	@ D.40573, *pChanPmvSize_11(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L815:
	.align	2
.L814:
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
	subs	r8, r0, #0	@ D.40576,
	bne	.L824	@,
	ldr	r3, [r4, #40]	@ pChanOption_7(D)->s32SupportBFrame, pChanOption_7(D)->s32SupportBFrame
	ldr	r6, [r4, #32]	@ D.40576, pChanOption_7(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_7(D)->s32SupportBFrame,
	moveq	r10, #1	@ PmvNum,
	addeq	r7, r6, r10	@ D.40576, D.40576,
	bne	.L827	@,
.L819:
	ldr	r9, .L829	@ tmp179,
	ldr	r0, [r4, #12]	@ D.40577, pChanOption_7(D)->s32MaxWidth
	ldr	fp, [r4, #60]	@ D.40577, pChanOption_7(D)->s32DisplayFrameNum
	ldr	r3, [r9, #100]	@ D.40580, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetPmvSize
	ldr	r1, [r4, #16]	@ D.40577, pChanOption_7(D)->s32MaxHeight
	cmp	r3, #0	@ D.40580,
	mvneq	r0, #0	@ D.40576,
	beq	.L820	@,
	blx	r3	@ D.40580
.L820:
	mul	r7, r7, r0	@ ChanPmvSize, D.40576, D.40576
	str	r7, [r5, #12]	@ ChanPmvSize, pDetailMemSize_23(D)->PmvDetailMem
	ldr	ip, [r9, #36]	@ D.40578, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.40578,
	beq	.L822	@,
	ldr	r3, [r4, #16]	@ pChanOption_7(D)->s32MaxHeight, pChanOption_7(D)->s32MaxHeight
	add	r1, sp, #24	@ tmp156,,
	ldr	r2, [r4, #12]	@ pChanOption_7(D)->s32MaxWidth, pChanOption_7(D)->s32MaxWidth
	mov	r0, #64	@ tmp155,
	str	r1, [sp, #16]	@ tmp156,
	add	r6, r6, fp	@ FrameNum, D.40576, D.40577
	str	r0, [sp, #20]	@ tmp155,
	mov	r1, #0	@ tmp158,
	mvn	r0, #0	@ tmp157,
	str	r1, [sp, #8]	@ tmp158,
	str	r0, [sp, #12]	@ tmp157,
	mvn	r1, #-2147483648	@,
	str	r6, [sp, #4]	@ FrameNum,
	mov	r0, #1	@,
	str	r10, [sp]	@ PmvNum,
	blx	ip	@ D.40578
	cmp	r0, #0	@,
	bne	.L822	@,
	ldr	r3, [sp, #28]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.40577, MemArrange.TotalMemUsed,
	str	r3, [r5]	@ D.40577, pDetailMemSize_23(D)->VdhDetailMem
	ldr	r3, [r4, #56]	@ pChanOption_7(D)->s32SCDBufSize, pChanOption_7(D)->s32SCDBufSize
	add	r3, r3, #32768	@ D.40577, pChanOption_7(D)->s32SCDBufSize,
	str	r3, [r5, #4]	@ D.40577, pDetailMemSize_23(D)->ScdDetailMem
	ldr	r3, [r4, #44]	@ D.40577, pChanOption_7(D)->s32SupportH264
	cmp	r3, #0	@ D.40577,
	beq	.L828	@,
	ldr	lr, [r4, #24]	@ pChanOption_7(D)->s32MaxSpsNum, pChanOption_7(D)->s32MaxSpsNum
	mov	r0, #4000	@ tmp170,
	ldr	r2, [r4, #20]	@ pChanOption_7(D)->s32MaxSliceNum, pChanOption_7(D)->s32MaxSliceNum
	movw	r3, #4060	@ tmp167,
	ldr	r1, [r4, #28]	@ pChanOption_7(D)->s32MaxPpsNum, pChanOption_7(D)->s32MaxPpsNum
	mov	ip, #2208	@ tmp176,
	mul	r0, r0, lr	@ D.40579, tmp170, pChanOption_7(D)->s32MaxSpsNum
	mla	r3, r3, r2, r0	@ D.40579, tmp167, pChanOption_7(D)->s32MaxSliceNum, D.40579
	add	r3, r3, #495616	@ D.40579, D.40579,
	add	r3, r3, #3504	@ D.40579, D.40579,
	mla	r3, ip, r1, r3	@ D.40579, tmp176, pChanOption_7(D)->s32MaxPpsNum, D.40579
	str	r3, [r5, #8]	@ D.40579, pDetailMemSize_23(D)->ChanCtxDetailMem
.L817:
	mov	r0, r8	@, D.40576
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L827:
	add	r3, r6, #1	@ PmvNum, D.40576,
	cmp	r3, #17	@ PmvNum,
	mov	r7, r3	@ D.40576, PmvNum
	movlt	r10, r3	@ PmvNum, PmvNum
	movge	r10, #17	@ PmvNum,
	b	.L819	@
.L828:
	mov	r8, r3	@ D.40576, D.40577
	movw	r2, #40368	@ tmp164,
	movt	r2, 7	@ tmp164,
	mov	r0, r8	@, D.40576
	str	r2, [r5, #8]	@ tmp164, pDetailMemSize_23(D)->ChanCtxDetailMem
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L822:
	bl	vfmw_dprint_nothing	@
	mvn	r8, #0	@ D.40576,
	mov	r0, r8	@, D.40576
	add	sp, sp, #444	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L824:
	mvn	r8, #0	@ D.40576,
	b	.L817	@
.L830:
	.align	2
.L829:
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
	beq	.L832	@,
	ldr	r4, .L844	@ tmp132,
	ldr	ip, [r1, #32]	@ pChanOption_8(D)->s32MaxRefFrameNum, pChanOption_8(D)->s32MaxRefFrameNum
	ldr	lr, [r1, #60]	@ pChanOption_8(D)->s32DisplayFrameNum, pChanOption_8(D)->s32DisplayFrameNum
	ldr	r5, [r4, #3592]	@ extra_ref, extra_ref
	ldr	r4, [r4, #3596]	@ extra_disp, extra_disp
	add	ip, ip, r5	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum, extra_ref
	cmp	ip, #16	@ TempRefNum,
	add	lr, lr, r4	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum, extra_disp
	movge	ip, #16	@ TempRefNum,
	orrs	r4, ip, lr	@ tmp155, TempRefNum, TempDispNum
	bmi	.L835	@,
	clz	r3, r3	@ tmp153, flag
	cmp	r0, #25	@ eCapLevel,
	str	ip, [r1, #32]	@ TempRefNum, pChanOption_8(D)->s32MaxRefFrameNum
	mov	r3, r3, lsr #5	@ tmp153, tmp153,
	moveq	r3, #0	@ tmp153,
	cmp	r3, #0	@ tmp153,
	str	lr, [r1, #60]	@ TempDispNum, pChanOption_8(D)->s32DisplayFrameNum
	bne	.L835	@,
.L832:
	ldr	r3, [r1, #4]	@ D.40586, pChanOption_8(D)->Purpose
	cmp	r3, #2	@ D.40586,
	bhi	.L835	@,
	beq	.L842	@,
	cmp	r3, #1	@ D.40586,
	beq	.L843	@,
.L834:
	mvn	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L842:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_GetMemSize_onFramePath	@
.L843:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_GetMemSize_onDecode	@
.L835:
	bl	vfmw_dprint_nothing	@
	b	.L834	@
.L845:
	.align	2
.L844:
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
	mov	r3, r0, asl #5	@ tmp303, eCapLevel,
	ldr	fp, .L872	@ tmp301,
	mov	r5, r0, asl #2	@ tmp302, eCapLevel,
	mov	r7, r0	@ eCapLevel, eCapLevel
	rsb	r0, r5, r3	@ tmp165, tmp302, tmp303
	add	r0, fp, r0	@ tmp166, tmp301, tmp165
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
	b	.L847	@
.L849:
	.word	.L860
	.word	.L860
	.word	.L860
	.word	.L860
	.word	.L860
	.word	.L850
	.word	.L850
	.word	.L850
.L860:
	mov	r1, #3	@ MinDnrFspNum,
.L848:
	ldr	r0, .L872+4	@ tmp300,
	rsb	r1, r1, r10	@ s32MaxRefFrameNum, MinDnrFspNum, nMinFrame
	cmp	r1, #15	@ s32MaxRefFrameNum,
	ldr	r6, [r0, #3592]	@ extra_ref, extra_ref
	bic	r6, r6, r6, asr #31	@ extra_ref_tmp, extra_ref
	str	r6, [r0, #3592]	@ extra_ref_tmp, extra_ref
	movgt	r6, #0	@ extra_ref_tmp,
	bgt	.L851	@,
	add	r1, r1, r6	@ D.40592, s32MaxRefFrameNum, extra_ref_tmp
	cmp	r1, #16	@ D.40592,
	rsbgt	r1, r1, #16	@ D.40592, D.40592,
	addgt	r6, r6, r1	@ extra_ref_tmp, extra_ref_tmp, D.40592
.L851:
	add	ip, r4, r6	@ TempPmv, nPmv, extra_ref_tmp
	ldr	r1, [r0, #3596]	@ D.40592, extra_disp
	cmp	ip, #0	@ TempPmv,
	ble	.L870	@,
	cmp	ip, #17	@ TempPmv,
	movlt	r4, ip	@ nPmv, TempPmv
	movge	r4, #17	@ nPmv,
.L853:
	cmp	r7, #23	@ eCapLevel,
	bhi	.L854	@,
	ldr	r2, [sp, #24]	@ nMiddleFrame, %sfp
	add	r6, r6, r1	@ D.40592, extra_ref_tmp, D.40592
	add	r1, r6, r10	@ nMinFrame, D.40592, nMinFrame
	add	r0, r2, r6	@ nMiddleFrame, nMiddleFrame, D.40592
	ldr	r2, [sp, #28]	@ nFluentFrame, %sfp
	cmp	r1, #0	@ nMinFrame,
	cmpgt	r0, #0	@, nMiddleFrame,
	add	r6, r2, r6	@ nFluentFrame, nFluentFrame, D.40592
	movle	ip, #1	@ tmp199,
	movgt	ip, #0	@ tmp199,
	cmp	r6, #0	@ nFluentFrame,
	orrle	ip, ip, #1	@,, tmp205, tmp199
	cmp	ip, #0	@ tmp205,
	streq	r6, [sp, #28]	@ nFluentFrame, %sfp
	streq	r0, [sp, #24]	@ nMiddleFrame, %sfp
	moveq	r10, r1	@ nMinFrame, nMinFrame
	bne	.L871	@,
.L854:
	cmp	r7, #32	@ eCapLevel,
	bhi	.L858	@,
	ldr	r7, .L872+8	@ tmp206,
	ldr	ip, [r7, #36]	@ D.40594, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.40594,
	beq	.L858	@,
	rsb	r5, r5, r3	@ tmp211, tmp302, tmp303
	str	r10, [sp, #4]	@ nMinFrame,
	add	r6, fp, r5	@ tmp212, tmp301, tmp211
	str	r4, [sp]	@ nPmv,
	ldr	r2, [fp, r5]	@ tmp221, CapItem
	mov	r1, #64	@ tmp308,
	ldr	r3, [r6, #4]	@ tmp214, CapItem
	add	fp, sp, #40	@ tmp223,,
	str	r1, [sp, #20]	@ tmp308,
	mov	r0, #0	@ tmp225,
	mvn	r10, #0	@ tmp224,
	str	r0, [sp, #8]	@ tmp225,
	str	fp, [sp, #16]	@ tmp223,
	mvn	r1, #-2147483648	@,
	str	r10, [sp, #12]	@ tmp224,
	mov	r0, #1	@,
	blx	ip	@ D.40594
	cmp	r0, #0	@ ret
	bne	.L858	@,
	ldr	r3, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.40592, MemArrange.TotalMemUsed,
	str	r3, [r9]	@ D.40592, *VdmMemSize_52(D)
	ldr	r3, [r6, #24]	@ tmp236, CapItem
	add	r3, r3, #32768	@ D.40592, tmp236,
	str	r3, [r8]	@ D.40592, *ScdMemSize_56(D)
	ldr	ip, [r7, #36]	@ D.40594, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.40594,
	beq	.L858	@,
	ldr	r2, .L872	@ tmp309,
	mov	lr, #64	@ tmp310,
	ldr	r3, [r6, #4]	@ tmp245, CapItem
	mvn	r1, #-2147483648	@,
	ldr	r2, [r2, r5]	@ tmp252, CapItem
	str	lr, [sp, #20]	@ tmp310,
	ldr	lr, [sp, #24]	@ nMiddleFrame, %sfp
	str	r0, [sp, #8]	@ ret,
	mov	r0, #1	@,
	str	fp, [sp, #16]	@ tmp223,
	stmia	sp, {r4, lr}	@,,
	str	r10, [sp, #12]	@ tmp224,
	blx	ip	@ D.40594
	subs	lr, r0, #0	@ ret,
	bne	.L858	@,
	ldr	r3, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.40592, MemArrange.TotalMemUsed,
	str	r3, [r9, #4]	@ D.40592, MEM[(HI_S32 *)VdmMemSize_52(D) + 4B]
	ldr	r3, [r6, #24]	@ tmp267, CapItem
	add	r3, r3, #32768	@ D.40592, tmp267,
	str	r3, [r8, #4]	@ D.40592, MEM[(HI_S32 *)ScdMemSize_56(D) + 4B]
	ldr	ip, [r7, #36]	@ D.40594, g_vdm_hal_fun_ptr.pfun_VDMHAL_ArrangeMem
	cmp	ip, #0	@ D.40594,
	beq	.L858	@,
	ldr	r3, .L872	@ tmp312,
	mvn	r1, #-2147483648	@,
	mov	r0, #1	@,
	ldr	r2, [r3, r5]	@ tmp283, CapItem
	mov	r5, #64	@ tmp313,
	ldr	r3, [r6, #4]	@ tmp276, CapItem
	str	lr, [sp, #8]	@ ret,
	ldr	lr, [sp, #28]	@ nFluentFrame, %sfp
	str	r5, [sp, #20]	@ tmp313,
	str	fp, [sp, #16]	@ tmp223,
	str	r10, [sp, #12]	@ tmp224,
	stmia	sp, {r4, lr}	@,,
	blx	ip	@ D.40594
	cmp	r0, #0	@ ret
	bne	.L858	@,
	ldr	r3, [sp, #44]	@ MemArrange.TotalMemUsed, MemArrange.TotalMemUsed
	add	r3, r3, #16	@ D.40592, MemArrange.TotalMemUsed,
	str	r3, [r9, #8]	@ D.40592, MEM[(HI_S32 *)VdmMemSize_52(D) + 8B]
	ldr	r3, [r6, #24]	@ tmp298, CapItem
	add	r3, r3, #32768	@ D.40592, tmp298,
	str	r3, [r8, #8]	@ D.40592, MEM[(HI_S32 *)ScdMemSize_56(D) + 8B]
.L856:
	add	sp, sp, #460	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L850:
	mov	r1, #1	@ MinDnrFspNum,
	b	.L848	@
.L871:
	str	r3, [sp, #32]	@ tmp303, %sfp
	bl	vfmw_dprint_nothing	@
	ldr	r3, [sp, #32]	@ tmp303, %sfp
	b	.L854	@
.L847:
	mov	r1, #6	@ MinDnrFspNum,
	b	.L848	@
.L870:
	str	r3, [sp, #36]	@ tmp303, %sfp
	str	r1, [sp, #32]	@ D.40592, %sfp
	bl	vfmw_dprint_nothing	@
	cmp	r4, #17	@ nPmv,
	movge	r4, #17	@ nPmv,
	ldr	r1, [sp, #32]	@ D.40592, %sfp
	ldr	r3, [sp, #36]	@ tmp303, %sfp
	b	.L853	@
.L858:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40591,
	b	.L856	@
.L873:
	.align	2
.L872:
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
	beq	.L875	@,
	ldr	r3, .L910	@ tmp141,
	ldr	r3, [r3, #32]	@ D.40600, g_vdm_hal_fun_ptr.pfun_VDMHAL_CloseHAL
	cmp	r3, #0	@ D.40600,
	beq	.L905	@,
	mov	r0, #0	@,
	blx	r3	@ D.40600
.L878:
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	mov	r0, r4	@, pstDrvMem
	bl	__memzero	@
.L875:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #28]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].Length
	ldr	r6, [r4, #24]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #20]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	bne	.L906	@,
.L879:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #44]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].Length
	ldr	r6, [r4, #40]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #36]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D)].stVdmReg[0].VirAddr
	bne	.L907	@,
.L880:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #76]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].Length
	ldr	r6, [r4, #72]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #68]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 64B].VirAddr
	bne	.L908	@,
.L881:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #60]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].Length
	ldr	r6, [r4, #56]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #52]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 48B].VirAddr
	bne	.L909	@,
.L882:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r5, [r4, #92]	@ Length, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].Length
	ldr	r6, [r4, #88]	@ PhyAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].PhyAddr
	cmp	r5, #0	@ Length,
	ldr	r7, [r4, #84]	@ VirAddr, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 80B].VirAddr
	beq	.L883	@,
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	add	r0, r4, #80	@, pstDrvMem,
	mov	r1, #16	@,
	bl	__memzero	@
.L883:
	mov	r2, r5	@, Length
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_DelMemRecord	@
	ldr	r2, .L910+4	@,
	ldr	r1, .L910+8	@,
	mov	r0, #70	@,
	bl	osal_free_irq	@
	ldr	r2, .L910+4	@,
	ldr	r1, .L910+12	@,
	mov	r0, #73	@,
	bl	osal_free_irq	@
	ldr	r2, .L910+4	@,
	ldr	r1, .L910+16	@,
	mov	r0, #93	@,
	bl	osal_free_irq	@
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L909:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #48	@, pstDrvMem,
	bl	__memzero	@
	b	.L882	@
.L908:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #64	@, pstDrvMem,
	bl	__memzero	@
	b	.L881	@
.L907:
	mov	r1, r7	@, VirAddr
	mov	r0, r6	@, PhyAddr
	bl	MEM_UnmapRegisterAddr	@
	mov	r1, #16	@,
	add	r0, r4, #32	@, pstDrvMem,
	bl	__memzero	@
	b	.L880	@
.L906:
	bl	SM_CloseSCDDrv	@
	ldr	r1, [r4, #20]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].VirAddr
	ldr	r0, [r4, #24]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_13(D) + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	mov	r1, #16	@,
	add	r0, r4, r1	@, pstDrvMem,
	bl	__memzero	@
	b	.L879	@
.L905:
	bl	vfmw_dprint_nothing	@
	b	.L878	@
.L911:
	.align	2
.L910:
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+3600
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
	ldr	r7, .L950	@ tmp216,
	.pad #32
	sub	sp, sp, #32	@,,
	mov	r0, #0	@,
	add	r2, r4, #32	@, pstDrvMem,
	movt	r0, 4115	@,
	mov	r1, #4096	@,
	ldr	r3, [r7]	@ __stack_chk_guard, __stack_chk_guard
	str	r3, [sp, #28]	@ __stack_chk_guard, D.40625
	bl	MEM_MapRegisterAddr	@
	cmp	r0, #0	@,
	bne	.L913	@,
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
	bne	.L946	@,
	ldr	r5, .L950+4	@ tmp167,
	ldr	r3, [r5, #16]	@ D.40621, g_vdm_hal_fun_ptr.pfun_BPDDRV_OpenHardware
	cmp	r3, #0	@ D.40621,
	beq	.L946	@,
	blx	r3	@ D.40621
	cmp	r0, #0	@,
	bne	.L946	@,
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
	bne	.L926	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	movw	r0, #20600	@,
	mov	r2, r8	@, __p
	mov	r1, #4096	@,
	movt	r0, 4127	@,
	bl	MEM_MapRegisterAddr	@
	subs	r6, r0, #0	@ D.40620,
	bne	.L926	@,
	ldr	r2, [r4, #60]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].Length
	ldr	r1, [r4, #52]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].VirAddr
	ldr	r0, [r4, #56]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D) + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, r6	@, D.40620
	ldr	r2, .L950+8	@,
	mov	r1, #20	@,
	add	r0, sp, #8	@ tmp217,,
	bl	snprintf	@
	ldr	r3, [r5, #24]	@ D.40621, g_vdm_hal_fun_ptr.pfun_VDMHAL_GetHalMemSize
	cmp	r3, #0	@ D.40621,
	beq	.L922	@,
	blx	r3	@ D.40621
	subs	r2, r0, #0	@ Size,
	ble	.L922	@,
	str	r6, [sp]	@ D.40620,
	mov	r1, r6	@, D.40620
	add	r0, sp, #8	@ tmp218,,
	mov	r3, r4	@, pstDrvMem
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L926	@,
	ldr	r2, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r1, [r4, #4]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].VirAddr
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r3, [r5, #28]	@ D.40624, g_vdm_hal_fun_ptr.pfun_VDMHAL_OpenHAL
	cmp	r3, #0	@ D.40624,
	beq	.L926	@,
	mov	r2, #0	@,
	ldr	r1, [r4, #12]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].Length
	ldr	r0, [r4, #8]	@, MEM[(struct MEM_RECORD_S *)pstDrvMem_4(D)].stVdmHalMem[0].PhyAddr
	blx	r3	@ D.40624
	subs	r5, r0, #0	@ D.40620,
	bne	.L926	@,
	bl	VDMDRV_Init	@
	add	r6, r4, #16	@ __p, pstDrvMem,
	bl	get_scd_msg_size	@
	mov	r1, r5	@, D.40620
	mov	r3, r6	@, __p
	mov	r2, r0	@,
	str	r5, [sp]	@ D.40620,
	ldr	r0, .L950+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L946	@,
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
	bne	.L946	@,
	ldr	r5, .L950+16	@ tmp202,
	mov	r2, #128	@,
	ldr	r3, .L950+20	@,
	mov	r0, #70	@,
	ldr	r1, .L950+24	@,
	str	r5, [sp]	@ tmp202,
	bl	osal_request_irq	@
	cmp	r0, #0	@,
	bne	.L946	@,
	str	r5, [sp]	@ tmp202,
	mov	r2, #128	@,
	ldr	r3, .L950+28	@,
	mov	r0, #73	@,
	ldr	r1, .L950+32	@,
	bl	osal_request_irq	@
	subs	r8, r0, #0	@ D.40620,
	bne	.L946	@,
	str	r5, [sp]	@ tmp202,
	mov	r2, #128	@,
	ldr	r3, .L950+36	@,
	mov	r0, #93	@,
	ldr	r1, .L950+40	@,
	bl	osal_request_irq	@
	cmp	r0, #0	@ D.40619
	bne	.L948	@,
.L916:
	ldr	r2, [sp, #28]	@ D.40625, D.40625
	ldr	r3, [r7]	@ __stack_chk_guard, __stack_chk_guard
	cmp	r2, r3	@ D.40625, __stack_chk_guard
	bne	.L949	@,
	add	sp, sp, #32	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L948:
	bl	DNR_Close	@
	mov	r0, r8	@ D.40619, D.40620
	b	.L916	@
.L946:
	mov	r0, r6	@, __p
.L945:
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.40619,
	b	.L916	@
.L922:
	mov	r0, #0	@,
	mov	r1, #16	@,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
.L926:
	mov	r0, r8	@, __p
	b	.L945	@
.L913:
	mov	r1, #16	@,
	add	r0, r4, #80	@, pstDrvMem,
	bl	__memzero	@
	mov	r0, r4	@, pstDrvMem
	bl	CloseDrivers	@
	mvn	r0, #0	@ D.40619,
	b	.L916	@
.L949:
	bl	__stack_chk_fail	@
.L951:
	.align	2
.L950:
	.word	__stack_chk_guard
	.word	g_vdm_hal_fun_ptr
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR0+3600
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
	ldr	r5, .L988	@ tmp290,
	ldr	r4, [r5, #4]	@ D.40644, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r4, #0	@ D.40644,
	bne	.L973	@,
	ldr	r7, .L988+4	@ tmp289,
	mov	r2, #1024	@,
	mov	r6, r0	@ event_report, event_report
	ldr	r0, .L988+8	@,
	str	r4, [sp, #4]	@ D.40644, p
	ldr	r1, [r7]	@, saved_command_line
	bl	strlcpy	@
	ldr	r1, .L988+12	@,
	ldr	r0, .L988+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.40642,
	str	r0, [sp, #4]	@ D.40642, p
	beq	.L955	@,
	ldr	r1, .L988+16	@,
	add	r0, sp, #4	@ tmp293,,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L975	@,
	add	r0, sp, #4	@ tmp294,,
	ldr	r1, .L988+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L985	@,
	mov	r2, r4	@, D.40644
	mov	r1, r4	@, D.40644
	bl	simple_strtol	@
	mov	r3, r0	@ D.40641, D.40645
	str	r0, [r5, #3592]	@ D.40645, extra_ref
.L959:
	add	r2, r3, #4992	@ D.40646, D.40641,
	movw	r1, #10000	@ tmp180,
	add	r2, r2, #8	@ D.40646, D.40646,
	movw	r8, #5000	@ tmp178,
	cmp	r2, r1	@ D.40646, tmp180
	bhi	.L960	@,
	cmp	r3, r8	@ D.40641, tmp178
	movw	r2, #60536	@ tmp182,
.L983:
	movt	r2, 65535	@ tmp186,
	movge	r3, r8	@ D.40644, tmp178
	cmp	r3, r2	@ D.40644, tmp186
	movlt	r3, r2	@ D.40644, tmp186
.L956:
	str	r3, [r5, #3592]	@ D.40644, extra_ref
.L958:
	mov	r2, #1024	@,
	ldr	r1, [r7]	@, saved_command_line
	ldr	r0, .L988+8	@,
	mov	r8, #0	@ tmp188,
	str	r8, [sp, #4]	@ tmp188, p
	bl	strlcpy	@
	ldr	r1, .L988+24	@,
	ldr	r0, .L988+8	@,
	bl	strstr	@
	ldr	r9, .L988	@ tmp191,
	cmp	r0, r8	@ D.40642,
	str	r0, [sp, #4]	@ D.40642, p
	beq	.L961	@,
	ldr	r1, .L988+16	@,
	add	r0, sp, #4	@ tmp295,,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L962	@,
	add	r0, sp, #4	@ tmp296,,
	ldr	r1, .L988+20	@,
	bl	strsep	@
	cmp	r0, r8	@,
	beq	.L986	@,
	mov	r2, r8	@, tmp188
	mov	r1, r8	@, tmp2
	bl	simple_strtol	@
	mov	r4, r0	@ D.40641, D.40645
	str	r0, [r9, #3596]	@ D.40645, extra_disp
.L965:
	add	r3, r4, #4992	@ D.40646, D.40641,
	movw	r2, #10000	@ tmp206,
	add	r3, r3, #8	@ D.40646, D.40646,
	movw	r8, #5000	@ tmp204,
	cmp	r3, r2	@ D.40646, tmp206
	bhi	.L966	@,
	cmp	r4, r8	@ D.40641, tmp204
	movw	r3, #60536	@ tmp208,
.L984:
	movt	r3, 65535	@ tmp212,
	movge	r4, r8	@ D.40644, tmp204
	cmp	r4, r3	@ D.40644, tmp212
	movlt	r4, r3	@ D.40644, tmp212
.L962:
	str	r4, [r5, #3596]	@ D.40644, extra_disp
.L964:
	ldr	r5, .L988+28	@ tmp291,
	mov	r3, #0	@ tmp214,
	str	r3, [sp, #4]	@ tmp214, p
	ldr	r4, [r5, #-3556]	@ D.40643, extra_cmd
	cmp	r4, r3	@ D.40643,
	beq	.L967	@,
	ldr	r3, .L988+32	@ tmp220,
	ubfx	r2, r4, #1, #1	@ tmp223, D.40643,,
	and	r1, r4, #1	@ tmp218, D.40643,
	ubfx	r4, r4, #2, #1	@ tmp228, D.40643,,
	strb	r1, [r5, #-3552]	@ tmp218, g_allow_B_before_P
	strb	r2, [r3]	@ tmp223, g_not_direct_8x8_inference_flag
	strb	r4, [r5, #-3551]	@ tmp228, g_not_allow_H264FullPictureRepair_flag
.L968:
	mov	r1, #152	@,
	ldr	r0, .L988+36	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L988	@,
	bl	__memzero	@
	mov	r1, #4	@,
	ldr	r0, .L988+40	@,
	bl	__memzero	@
	cmp	r6, #0	@ event_report,
	ldr	r3, .L988+28	@ tmp262,
	mov	r1, #75497472	@,
	ldreq	r2, .L988+44	@ tmp266,
	mov	r0, #-2013265920	@,
	ldr	r4, .L988	@ tmp267,
	streq	r2, [r3, #-3544]	@ tmp266, g_event_report
	bl	MEM_InitMemManager	@
	bl	FSP_Init	@
	bl	ChanCtx_Init	@
	mov	r1, #4	@,
	ldr	r0, .L988+48	@,
	bl	__memzero	@
	add	r0, r4, #52	@, tmp267,
	bl	OpenDrivers	@
	cmp	r0, #0	@,
	bne	.L973	@,
	bl	DNR_Init	@
	mov	r1, #1	@,
	add	r0, r4, #192	@, tmp267,
	bl	OSAL_InitEvent	@
	ldr	r2, .L988+52	@,
	ldr	r1, .L988+56	@,
	add	r0, r4, #40	@, tmp267,
	bl	OSAL_CreateTask	@
	subs	r5, r0, #0	@ D.40641,
	bne	.L974	@,
	add	r0, r4, #40	@, tmp267,
	bl	OSAL_WakeupTask	@
	mov	r3, #1	@ tmp284,
	str	r3, [r4, #4]	@ tmp284, s_VfmwCTrl.s32IsVCTRLOpen
.L954:
	mov	r0, r5	@, D.40641
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L967:
	ldr	r1, [r7]	@, saved_command_line
	mov	r2, #1024	@,
	ldr	r0, .L988+8	@,
	bl	strlcpy	@
	ldr	r1, .L988+60	@,
	ldr	r0, .L988+8	@,
	bl	strstr	@
	cmp	r0, #0	@ D.40642,
	str	r0, [sp, #4]	@ D.40642, p
	beq	.L968	@,
	ldr	r1, .L988+16	@,
	add	r0, sp, #4	@ tmp297,,
	bl	strsep	@
	cmp	r0, #0	@,
	ldreq	r0, [r5, #-3556]	@ D.40643, extra_cmd
	beq	.L970	@,
	add	r0, sp, #4	@ tmp298,,
	ldr	r1, .L988+20	@,
	bl	strsep	@
	cmp	r0, #0	@,
	beq	.L987	@,
	mov	r2, r4	@, D.40643
	mov	r1, r4	@, tmp2
	bl	simple_strtol	@
	str	r0, [r5, #-3556]	@ D.40643, extra_cmd
.L970:
	ldr	r3, .L988+32	@ tmp249,
	ubfx	r2, r0, #1, #1	@ tmp252, D.40643,,
	and	r1, r0, #1	@ tmp247, D.40643,
	ubfx	r0, r0, #2, #1	@ tmp257, D.40643,,
	strb	r1, [r5, #-3552]	@ tmp247, g_allow_B_before_P
	strb	r2, [r3]	@ tmp252, g_not_direct_8x8_inference_flag
	strb	r0, [r5, #-3551]	@ tmp257, g_not_allow_H264FullPictureRepair_flag
	b	.L968	@
.L961:
	ldr	r4, [r9, #3596]	@ D.40641, extra_disp
	b	.L965	@
.L955:
	ldr	r3, [r5, #3592]	@ D.40641, extra_ref
	b	.L959	@
.L966:
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r5, #3596]	@ extra_disp, extra_disp
	movw	r3, #60536	@ tmp212,
	cmp	r4, r8	@ extra_disp, tmp204
	b	.L984	@
.L960:
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r5, #3592]	@ extra_ref, extra_ref
	movw	r2, #60536	@ tmp186,
	cmp	r3, r8	@ extra_ref, tmp178
	b	.L983	@
.L975:
	mov	r3, r4	@ D.40644, D.40644
	b	.L956	@
.L973:
	mvn	r5, #0	@ D.40641,
	mov	r0, r5	@, D.40641
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L985:
	bl	vfmw_dprint_nothing	@
	b	.L958	@
.L986:
	bl	vfmw_dprint_nothing	@
	b	.L964	@
.L974:
	add	r0, r4, #52	@, tmp267,
	mvn	r5, #0	@ D.40641,
	bl	CloseDrivers	@
	b	.L954	@
.L987:
	bl	vfmw_dprint_nothing	@
	b	.L968	@
.L989:
	.align	2
.L988:
	.word	.LANCHOR0
	.word	saved_command_line
	.word	.LANCHOR0+3604
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR0+4
	.word	.LANCHOR1-3548
	.word	VCTRL_EventReport
	.word	.LANCHOR0+3548
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
	beq	.L994	@,
	cmp	r5, r6	@ Threshould, StreamAmount
	blt	.L995	@,
.L992:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, CurMode
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L995:
	bl	vfmw_dprint_nothing	@
	mov	r4, #3	@ CurMode,
	b	.L992	@
.L994:
	cmp	r5, #0	@ Threshould,
	add	r2, r5, #7	@ tmp117, Threshould,
	movlt	r5, r2	@ Threshould, tmp117
	cmp	r6, r5, asr #3	@ StreamAmount, Threshould,
	bge	.L992	@,
	bl	vfmw_dprint_nothing	@
	mov	r4, #0	@ CurMode,
	b	.L992	@
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
	ldr	r3, .L999	@ tmp117,
	ldr	r3, [r3]	@ D.40661, s_pstVfmwChan
	cmp	r3, #0	@ D.40661,
	beq	.L998	@,
	add	r3, r3, #217088	@ D.40662, D.40661,
	add	r3, r3, #432	@ D.40662, D.40662,
	subs	r0, r0, r3	@ D.40659, pCtx, D.40662
	mvnne	r0, #0	@ D.40659,
	bx	lr	@
.L998:
	mvn	r0, #0	@ D.40659,
	bx	lr	@
.L1000:
	.align	2
.L999:
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
	@ link register save eliminated.
	ldr	r3, .L1008	@ tmp122,
	ldr	r3, [r3]	@ D.40669, s_pstVfmwChan
	cmp	r3, #0	@ D.40669,
	beq	.L1006	@,
	ldr	r2, [r3, #176]	@ D.40667, _16->stChanMem_vdh.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.40667
	blt	.L1004	@,
	ldr	r1, [r3, #180]	@ _16->stChanMem_vdh.Length, _16->stChanMem_vdh.Length
	add	r2, r2, r1	@ D.40667, D.40667, _16->stChanMem_vdh.Length
	cmp	r0, r2	@ PhyAddr, D.40667
	blt	.L1007	@,
.L1004:
	ldr	r2, [r3, #192]	@ D.40667, _16->stChanMem_scd.PhyAddr
	cmp	r0, r2	@ PhyAddr, D.40667
	blt	.L1006	@,
	ldr	r3, [r3, #196]	@ _16->stChanMem_scd.Length, _16->stChanMem_scd.Length
	add	r2, r2, r3	@ D.40667, D.40667, _16->stChanMem_scd.Length
	cmp	r0, r2	@ PhyAddr, D.40667
	movlt	r0, #0	@ D.40666,
	mvnge	r0, #0	@ D.40666,
	bx	lr	@
.L1006:
	mvn	r0, #0	@ D.40666,
	bx	lr	@
.L1007:
	mov	r0, #0	@ D.40666,
	bx	lr	@
.L1009:
	.align	2
.L1008:
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
	ldr	r6, .L1026	@ tmp221,
	ldr	r3, [r6, r0, asl #2]	@ D.40672, s_pstVfmwChan
	ldr	r2, [r3, #32]	@ D.40673, _9->stChanCfg.eVidStd
	sub	ip, r2, #2	@ D.40674, D.40673,
	cmp	r2, #6	@ D.40673,
	cmpne	ip, #1	@, D.40674,
	bls	.L1011	@,
	ldrd	r4, [r1, #32]	@ D.40676, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp165,
	cmp	r5, r7	@ D.40676,
	cmpeq	r4, r6	@ D.40676, tmp165
	addne	r2, r3, #944	@ tmp216, D.40672,
	strned	r4, [r2]	@ D.40676, _9->stSynExtraData.pts
.L1013:
	ldrd	r4, [r1, #48]	@ D.40676, pSegMan,
	add	r0, r3, #960	@ tmp218, D.40672,
	add	r2, r3, #976	@ tmp220, D.40672,
	strd	r4, [r0]	@ D.40676, _9->stSynExtraData.Usertag
	ldrd	r4, [r1, #56]	@ D.40676, pSegMan,
	strd	r4, [r2]	@ D.40676, _9->stSynExtraData.DispTime
	ldr	r2, [r1, #64]	@ D.40677, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	r2, [r3, #992]	@ D.40677, _9->stSynExtraData.DispEnableFlag
	ldr	r2, [r1, #68]	@ D.40677, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	r2, [r3, #996]	@ D.40677, _9->stSynExtraData.DispFrameDistance
	ldr	r2, [r1, #72]	@ D.40677, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r2, [r3, #1000]	@ D.40677, _9->stSynExtraData.DistanceBeforeFirstFrame
	ldr	r2, [r1, #76]	@ D.40677, pSegMan_16(D)->CurrSeg.GopNum
	str	r2, [r3, #1016]	@ D.40677, _9->stSynExtraData.GopNum
.L1024:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L1011:
	mov	r5, r0	@ ChanID, ChanID
	add	r0, r3, #1264	@, D.40672,
	mov	r4, r1	@ pSegMan, pSegMan
	add	r0, r0, #8	@,,
	mov	r1, r2	@, D.40673
	add	r2, r4, #8	@, pSegMan,
	bl	IsNewpicSeg	@
	cmp	r0, #0	@,
	bne	.L1014	@,
	ldr	r1, [r6, r5, asl #2]	@ D.40672, s_pstVfmwChan
	add	r0, r1, #960	@ tmp222, D.40672,
	ldr	r3, [r1, #32]	@ _36->stChanCfg.eVidStd, _36->stChanCfg.eVidStd
	cmp	r3, #3	@ _36->stChanCfg.eVidStd,
	beq	.L1025	@,
	ldrd	r2, [r0, #-8]	@ D.40676, tmp222,
	mvn	r9, #0	@,
	mvn	r8, #0	@ tmp178,
	cmp	r3, r9	@ D.40676,
	cmpeq	r2, r8	@ D.40676, tmp178
	addne	ip, r1, #944	@ tmp180, D.40672,
	strned	r2, [ip]	@ D.40676, _36->stSynExtraData.pts
.L1016:
	add	ip, r1, #976	@ tmp187, D.40672,
	mvn	r2, #0	@ tmp183,
	mvn	r3, #0	@,
	strd	r2, [r0, #-8]	@ tmp183, tmp222,
	ldrd	r2, [ip, #-8]	@ _36->stSynExtraData.NextUsertag, tmp187,
	add	lr, r1, #992	@ tmp192, D.40672,
	strd	r2, [r0]	@ _36->stSynExtraData.NextUsertag, _36->stSynExtraData.Usertag
	ldrd	r2, [lr, #-8]	@ _36->stSynExtraData.NextDispTime, tmp192,
	strd	r2, [ip]	@ _36->stSynExtraData.NextDispTime, _36->stSynExtraData.DispTime
	ldr	r3, [r1, #1020]	@ _36->stSynExtraData.NextGopNum, _36->stSynExtraData.NextGopNum
	ldr	ip, [r1, #1004]	@ _36->stSynExtraData.NextDispEnableFlag, _36->stSynExtraData.NextDispEnableFlag
	ldr	r0, [r1, #1008]	@ _36->stSynExtraData.NextDispFrameDistance, _36->stSynExtraData.NextDispFrameDistance
	ldr	r2, [r1, #1012]	@ _36->stSynExtraData.NextDistanceBeforeFirstFrame, _36->stSynExtraData.NextDistanceBeforeFirstFrame
	str	r3, [r1, #1016]	@ _36->stSynExtraData.NextGopNum, _36->stSynExtraData.GopNum
	str	ip, [r1, #992]	@ _36->stSynExtraData.NextDispEnableFlag, _36->stSynExtraData.DispEnableFlag
	str	r0, [r1, #996]	@ _36->stSynExtraData.NextDispFrameDistance, _36->stSynExtraData.DispFrameDistance
	str	r2, [r1, #1000]	@ _36->stSynExtraData.NextDistanceBeforeFirstFrame, _36->stSynExtraData.DistanceBeforeFirstFrame
	bl	vfmw_dprint_nothing	@
	ldr	r1, [r6, r5, asl #2]	@ D.40672, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _56->stChanCfg.eVidStd, _56->stChanCfg.eVidStd
	cmp	r3, #3	@ _56->stChanCfg.eVidStd,
	bne	.L1017	@,
	ldrd	r2, [r4, #32]	@ D.40676, pSegMan,
	add	lr, r1, #960	@ tmp201, D.40672,
	add	ip, r1, #976	@ tmp203, D.40672,
	add	r0, r1, #992	@ tmp205, D.40672,
	strd	r2, [lr, #-8]	@ D.40676, tmp201,
	ldrd	r2, [r4, #48]	@ D.40676, pSegMan,
	strd	r2, [ip, #-8]	@ D.40676, tmp203,
	ldrd	r2, [r4, #56]	@ D.40676, pSegMan,
	strd	r2, [r0, #-8]	@ D.40676, tmp205,
	ldr	r3, [r4, #64]	@ D.40677, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.40677, _56->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.40677, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.40677, _56->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.40677, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.40677, _56->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.40677, pSegMan_16(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.40677, _56->stSynExtraData.NextGopNum
.L1014:
	ldr	r1, [r6, r5, asl #2]	@ D.40672, s_pstVfmwChan
	ldr	r3, [r1, #32]	@ _72->stChanCfg.eVidStd, _72->stChanCfg.eVidStd
	cmp	r3, #3	@ _72->stChanCfg.eVidStd,
	beq	.L1024	@,
.L1017:
	ldrd	r2, [r4, #32]	@ D.40676, pSegMan,
	mvn	r7, #0	@,
	mvn	r6, #0	@ tmp208,
	cmp	r3, r7	@ D.40676,
	cmpeq	r2, r6	@ D.40676, tmp208
	addne	r0, r1, #960	@ tmp210, D.40672,
	strned	r2, [r0, #-8]	@ D.40676, tmp210,
.L1019:
	ldrd	r2, [r4, #48]	@ D.40676, pSegMan,
	add	ip, r1, #976	@ tmp212, D.40672,
	add	r0, r1, #992	@ tmp214, D.40672,
	strd	r2, [ip, #-8]	@ D.40676, tmp212,
	ldrd	r2, [r4, #56]	@ D.40676, pSegMan,
	strd	r2, [r0, #-8]	@ D.40676, tmp214,
	ldr	r3, [r4, #64]	@ D.40677, pSegMan_16(D)->CurrSeg.DispEnableFlag
	str	r3, [r1, #1004]	@ D.40677, _93->stSynExtraData.NextDispEnableFlag
	ldr	r3, [r4, #68]	@ D.40677, pSegMan_16(D)->CurrSeg.DispFrameDistance
	str	r3, [r1, #1008]	@ D.40677, _93->stSynExtraData.NextDispFrameDistance
	ldr	r3, [r4, #72]	@ D.40677, pSegMan_16(D)->CurrSeg.DistanceBeforeFirstFrame
	str	r3, [r1, #1012]	@ D.40677, _93->stSynExtraData.NextDistanceBeforeFirstFrame
	ldr	r3, [r4, #76]	@ D.40677, pSegMan_16(D)->CurrSeg.GopNum
	str	r3, [r1, #1020]	@ D.40677, _93->stSynExtraData.NextGopNum
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, lr}	@
	b	vfmw_dprint_nothing	@
.L1025:
	ldrd	r2, [r0, #-8]	@ _36->stSynExtraData.NextPts, tmp222,
	add	ip, r1, #944	@ tmp172, D.40672,
	strd	r2, [ip]	@ _36->stSynExtraData.NextPts, _36->stSynExtraData.pts
	b	.L1016	@
.L1027:
	.align	2
.L1026:
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
	ldr	r3, .L1038	@ tmp123,
	ldr	r2, [r3, r0, asl #2]	@ tmp124, s_pstVfmwChan
	ldr	r1, [r2, #880]	@ D.40687, _5->eVidStd
	sub	r2, r1, #10	@ D.40688, D.40687,
	cmp	r2, #2	@ D.40688,
	bhi	.L1029	@,
	ldr	r2, [r3, #3584]	@ g_VdmCharacter, g_VdmCharacter
	ands	r3, r2, #1	@ D.40685, g_VdmCharacter,
	beq	.L1037	@,
.L1029:
	sub	r3, r1, #14	@ D.40687, D.40687,
	bics	r3, r3, #4	@ tmp139, D.40687,
	movne	r3, #1	@ tmp131,
	moveq	r3, #0	@ tmp131,
	cmp	r1, #4	@ D.40687,
	moveq	r3, #0	@, tmp136
	andne	r3, r3, #1	@,, tmp136, tmp131
	cmp	r3, #0	@ tmp136,
	beq	.L1037	@,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	mvnne	r3, #1	@ D.40685,
	moveq	r3, #0	@ D.40685,
	mov	r0, r3	@, D.40685
	ldmfd	sp!, {r4, pc}	@
.L1037:
	mov	r0, r3	@, D.40685
	bx	lr	@
.L1039:
	.align	2
.L1038:
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	bne	.L1043	@,
	ldr	r6, .L1074	@ tmp181,
	ldr	r3, [r6]	@ D.40694, s_pstVfmwChan
	cmp	r3, #0	@ D.40694,
	beq	.L1043	@,
	ldr	r2, [r3, #8]	@ _13->s32IsRun, _13->s32IsRun
	cmp	r2, #1	@ _13->s32IsRun,
	bne	.L1043	@,
	ldr	r4, [r3, #16]	@ D.40695, _13->s32StopSyntax
	cmp	r4, #0	@ D.40695,
	bne	.L1043	@,
	str	r4, [r3, #672]	@ D.40695, _13->s32NoStreamFlag
	bl	OSAL_GetTimeInMs	@
	ldr	r5, .L1074+4	@ tmp182,
	ldr	r2, .L1074+8	@ tmp152,
	ldr	r3, [r5, #-3540]	@ last_rec_pos_time, last_rec_pos_time
	ldr	r2, [r2]	@ g_TraceBsPeriod, g_TraceBsPeriod
	rsb	r3, r3, r0	@ D.40696, last_rec_pos_time, currtime
	mov	r7, r0	@ currtime,
	cmp	r3, r2	@ D.40696, g_TraceBsPeriod
	mov	r0, r4	@, D.40695
	bls	.L1044	@,
	str	r7, [r5, #-3540]	@ currtime, last_rec_pos_time
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.40693,
	mov	r8, r0	@ D.40693,
	bne	.L1045	@,
	bl	vfmw_dprint_nothing	@
.L1060:
	mov	r0, r8	@, D.40693
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1044:
	bl	DecChanCheckDecParam	@
	cmn	r0, #2	@ D.40693,
	mov	r8, r0	@ D.40693,
	beq	.L1060	@,
	mov	r0, r4	@, D.40695
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@,
	mvnne	r8, #2	@ D.40693,
	bne	.L1060	@,
.L1054:
	ldr	r3, [r6]	@ D.40694, s_pstVfmwChan
	add	r8, r3, #1024	@ pSegMan, D.40694,
	ldrb	r2, [r3, #1025]	@ zero_extendqisi2	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec, MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec
	cmp	r2, #0	@ MEM[(struct STREAM_SEG_PACKET_S *)_33 + 1024B].IsCurrSegWaitDec,
	bne	.L1046	@,
	ldr	r0, [r3, #1616]	@ _33->stSynExtraData.s32DSDWaitFlag, _33->stSynExtraData.s32DSDWaitFlag
	cmp	r0, #0	@ _33->stSynExtraData.s32DSDWaitFlag,
	beq	.L1072	@,
.L1046:
	bl	vfmw_dprint_nothing	@
	mov	r1, r8	@, pSegMan
	mov	r0, #0	@,
	bl	DecChanProcessPts	@
	mov	r0, #3	@,
	bl	CHECK_REC_POS_ENABLE	@
	ldr	r3, [r6]	@ D.40694, s_pstVfmwChan
	mov	r0, r8	@, pSegMan
	add	r2, r3, #217088	@, D.40694,
	add	r2, r2, #432	@,,
	ldr	r1, [r3, #880]	@, _53->eVidStd
	bl	DecodeStream	@
	mov	r0, #4	@,
	bl	CHECK_REC_POS_ENABLE	@
	cmp	r0, #0	@,
	bne	.L1050	@,
.L1051:
	mov	r8, #0	@ D.40693,
	b	.L1060	@
.L1045:
	mov	r0, r4	@, D.40695
	bl	VCTRL_GetImageBuffer	@
	cmp	r0, #1	@ D.40695,
	moveq	r4, r0	@ rec_pos_print_flag, D.40695
	beq	.L1054	@,
	bl	vfmw_dprint_nothing	@
	mvn	r8, #2	@ D.40693,
	b	.L1060	@
.L1043:
	bl	vfmw_dprint_nothing	@
	mvn	r8, #0	@ D.40693,
	b	.L1060	@
.L1072:
	add	r1, r8, #8	@, pSegMan,
	bl	SM_ReadSegStream	@
	cmp	r0, #0	@,
	beq	.L1046	@,
	cmp	r4, #1	@ rec_pos_print_flag,
	beq	.L1073	@,
.L1047:
	ldr	r2, .L1074+12	@ tmp163,
	ldr	r3, [r5, #-3536]	@ last_rec_pos_report_time, last_rec_pos_report_time
	ldr	r1, .L1074+4	@ tmp160,
	ldr	r2, [r2]	@ g_NoStreamReportPeriod, g_NoStreamReportPeriod
	rsb	r3, r3, r7	@ D.40696, last_rec_pos_report_time, currtime
	cmp	r3, r2	@ D.40696, g_NoStreamReportPeriod
	bls	.L1048	@,
	ldr	r3, [r1, #-3544]	@ D.40699, g_event_report
	cmp	r3, #0	@ D.40699,
	beq	.L1049	@,
	mov	r2, #0	@,
	mov	r1, #117	@,
	mov	r0, r2	@,
	blx	r3	@ D.40699
.L1049:
	str	r7, [r5, #-3536]	@ currtime, last_rec_pos_report_time
.L1048:
	ldr	r3, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	mov	r2, #1	@ tmp169,
	mvn	r8, #3	@ D.40693,
	str	r2, [r3, #672]	@ tmp169, _48->s32NoStreamFlag
	b	.L1060	@
.L1050:
	bl	OSAL_GetTimeInMs	@
	ldr	r1, .L1074+16	@ tmp177,
	ldr	r3, [r5, #-3532]	@ last_rec_pos_decparam_time, last_rec_pos_decparam_time
	ldr	ip, .L1074+4	@ tmp174,
	ldr	r1, [r1]	@ g_TraceFramePeriod, g_TraceFramePeriod
	rsb	r3, r3, r0	@ D.40696, last_rec_pos_decparam_time, currtime
	mov	r2, r0	@ currtime,
	cmp	r3, r1	@ D.40696, g_TraceFramePeriod
	bls	.L1051	@,
	mov	r0, #0	@,
	str	r2, [ip, #-3532]	@ currtime, last_rec_pos_decparam_time
	mov	r8, r0	@ D.40693,
	bl	VCTRL_GetDecParam	@
	b	.L1060	@
.L1073:
	bl	vfmw_dprint_nothing	@
	b	.L1047	@
.L1075:
	.align	2
.L1074:
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
	ldr	r5, .L1099	@ tmp152,
	mvn	r0, #0	@ ret,
	ldr	r6, .L1099+4	@ tmp153,
	mov	r7, #0	@ tmp155,
	ldr	r9, .L1099	@ tmp156,
	mov	r8, #1	@ tmp157,
	ldr	r3, [r5]	@ D.40710, s_pstVfmwChan
	cmp	r3, #0	@ D.40710,
	ldrne	r3, [r3, #12]	@ D.40713, _69->s32Priority
.L1078:
	cmp	r3, #0	@ D.40713,
	str	r7, [r6, #-3528]	@ tmp155, ChanPriTab
	str	r8, [r5, #48]	@ tmp157, s_VfmwCTrl.s32ThisChanIDPlus1
	mov	r3, #0	@ tmp130,
	ldr	r2, .L1099	@ tmp131,
	ble	.L1080	@,
	ldr	r2, [r9]	@ D.40710, s_pstVfmwChan
	cmp	r2, r3	@ D.40710,
	moveq	r3, r2	@ D.40713, D.40710
	beq	.L1078	@,
	ldr	r1, [r2, #8]	@ _28->s32IsRun, _28->s32IsRun
	cmp	r1, #1	@ _28->s32IsRun,
	bne	.L1078	@,
	ldr	r3, [r2, #52]	@ _28->stChanCfg.s32ChanStrmOFThr, _28->stChanCfg.s32ChanStrmOFThr
	cmp	r3, #0	@ _28->stChanCfg.s32ChanStrmOFThr,
	ble	.L1082	@,
	ldr	r0, [r2, #56]	@ _28->stChanCfg.s32DecMode, _28->stChanCfg.s32DecMode
	cmp	r0, #0	@ _28->stChanCfg.s32DecMode,
	beq	.L1096	@,
.L1082:
	mov	r4, #200	@ D.40709,
	b	.L1086	@
.L1097:
	subs	r4, r4, #1	@ D.40709, D.40709,
	beq	.L1095	@,
.L1086:
	mov	r0, #0	@,
	bl	DecChanSyntax	@
	cmp	r0, #0	@ ret
	beq	.L1097	@,
.L1095:
	ldr	r3, [r6, #-3528]	@ D.40713, ChanPriTab
	b	.L1078	@
.L1080:
	str	r3, [r2, #48]	@ tmp130, s_VfmwCTrl.s32ThisChanIDPlus1
	add	sp, sp, #28	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, pc}	@
.L1096:
	mov	r1, sp	@,
	bl	SM_GetInfo	@
	cmp	r0, #0	@,
	bne	.L1098	@,
.L1083:
	ldr	r4, [r5]	@ D.40710, s_pstVfmwChan
	ldr	r1, [sp, #12]	@, stScdInstInfo.TotalRawSize
	ldr	r2, [r4, #52]	@, _35->stChanCfg.s32ChanStrmOFThr
	ldr	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	bl	GetNextDecodeMode	@
	ldr	r3, [r5]	@ D.40710, s_pstVfmwChan
	str	r0, [r4, #896]	@, _35->stSynExtraData.s32DecMode
	ldr	r2, [r3, #896]	@ _42->stSynExtraData.s32DecMode, _42->stSynExtraData.s32DecMode
	cmp	r2, #0	@ _42->stSynExtraData.s32DecMode,
	strne	r7, [r3, #892]	@ tmp155, _42->stSynExtraData.s32OutErrThr
	strne	r7, [r3, #888]	@ tmp155, _42->stSynExtraData.s32RefErrThr
	ldreq	r2, [r3, #48]	@ D.40711, _42->stChanCfg.s32ChanErrThr
	streq	r2, [r3, #892]	@ D.40711, _42->stSynExtraData.s32OutErrThr
	streq	r2, [r3, #888]	@ D.40711, _42->stSynExtraData.s32RefErrThr
	b	.L1082	@
.L1098:
	mov	r0, sp	@,
	mov	r1, #24	@,
	bl	__memzero	@
	b	.L1083	@
.L1100:
	.align	2
.L1099:
	.word	.LANCHOR0
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
	mov	r3, #100	@ tmp118,
	ldr	r5, .L1113	@ tmp138,
	ldr	r4, .L1113+4	@ tmp137,
	ldr	r0, [r5, #-3524]	@ D.40716, g_SleepTime
	str	r3, [r4, #44]	@ tmp118, s_VfmwCTrl.s32ThreadPos
	cmp	r0, #0	@ D.40716,
	ble	.L1102	@,
	bl	msleep	@
.L1102:
	ldr	r0, .L1113+8	@,
	bl	OSAL_SpinLockIRQ	@
	bl	SM_Wakeup	@
	ldr	r3, [r5, #-3512]	@ g_StopDec, g_StopDec
	mov	r2, #101	@ tmp123,
	str	r2, [r4, #44]	@ tmp123, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #0	@ g_StopDec,
	movne	r5, #0	@ ret,
	beq	.L1111	@,
.L1103:
	mov	r3, #102	@ tmp127,
	str	r3, [r4, #44]	@ tmp127, s_VfmwCTrl.s32ThreadPos
	bl	VDMDRV_WakeUpVdm	@
	bl	SCDDRV_EnableInt	@
	bl	DNR_Wakeup	@
	ldr	r3, .L1113+12	@ tmp128,
	ldr	r3, [r3, #28]	@ D.40718, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.40718,
	beq	.L1104	@,
	blx	r3	@ D.40718
	ldr	r3, .L1113+16	@ tmp129,
	ldr	r3, [r3, #56]	@ D.40719, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.40719,
	beq	.L1112	@,
.L1105:
	mov	r0, #0	@,
	blx	r3	@ D.40719
.L1106:
	mov	r1, #0	@,
	mov	r0, r1	@,
	bl	DeleteRawPacketInBuffer	@
	ldr	r0, .L1113+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r1, #10	@,
	ldr	r0, .L1113+20	@,
	mov	r3, #105	@ tmp133,
	str	r3, [r4, #44]	@ tmp133, s_VfmwCTrl.s32ThreadPos
	bl	OSAL_WaitEvent	@
	mov	r0, r5	@, ret
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1111:
	bl	DecSyntax	@
	mov	r5, r0	@ ret,
	b	.L1103	@
.L1104:
	bl	vfmw_dprint_nothing	@
	ldr	r3, .L1113+16	@ tmp129,
	ldr	r3, [r3, #56]	@ D.40719, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.40719,
	bne	.L1105	@,
.L1112:
	bl	vfmw_dprint_nothing	@
	b	.L1106	@
.L1114:
	.align	2
.L1113:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	.LANCHOR1-3520
	.word	g_dnr_hal_fun_ptr
	.word	g_vdm_hal_fun_ptr
	.word	.LANCHOR0+192
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
	ldr	r4, .L1149	@ tmp188,
	mov	r7, #12288	@ tmp195,
	movt	r8, 9	@ tmp194,
	movt	r7, 65056	@ tmp195,
.L1116:
	mov	r3, #0	@ tmp137,
	str	r3, [r4, #44]	@ tmp137, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #36]	@ D.40723, s_VfmwCTrl.eTaskCommand
	mov	r5, #2	@ tmp139,
	mov	r2, #1	@ tmp141,
	cmp	r3, r5	@ D.40723,
	str	r5, [r4, #32]	@ tmp139, s_VfmwCTrl.eTaskState
	str	r2, [r4, #44]	@ tmp141, s_VfmwCTrl.s32ThreadPos
	bne	.L1123	@,
	b	.L1117	@
.L1121:
	str	r5, [r4, #44]	@ tmp193, s_VfmwCTrl.s32ThreadPos
	bl	VCTRL_RunProcess	@
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #36]	@ D.40723, s_VfmwCTrl.eTaskCommand
	mov	r2, #1	@ tmp174,
	str	r2, [r4, #44]	@ tmp174, s_VfmwCTrl.s32ThreadPos
	cmp	r3, #2	@ D.40723,
	beq	.L1117	@,
.L1123:
	cmp	r3, #3	@ D.40723,
	beq	.L1118	@,
	bl	OSAL_GetTimeInMs	@
	ldr	r3, [sp, #4]	@ enChipVersion, enChipVersion
	cmp	r3, #5	@ enChipVersion,
	bne	.L1121	@,
	clz	r3, r6	@ tmp149, time2
	rsb	r2, r6, r0	@ D.40725, time2, time2
	mov	r3, r3, lsr #5	@ tmp149, tmp149,
	cmp	r2, r8	@ D.40725, tmp194
	orrhi	r3, r3, #1	@,, tmp152, tmp149
	cmp	r3, #0	@ tmp152,
	beq	.L1121	@,
	ldr	r3, [r7, #92]	@ reg_val, MEM[(volatile unsigned int *)4263522396B]
	mov	r6, r0	@ time2, time2
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.40725, reg_val,
	strne	r3, [r7, #92]	@ D.40725, MEM[(volatile unsigned int *)4263522396B]
	ldr	r3, [r7, #96]	@ reg_val, MEM[(volatile unsigned int *)4263522400B]
	cmp	r3, #3	@ reg_val,
	cmpne	r3, #0	@, reg_val,
	bic	r3, r3, #7	@ D.40725, reg_val,
	strne	r3, [r7, #96]	@ D.40725, MEM[(volatile unsigned int *)4263522400B]
	movne	r6, r0	@ time2, time2
	b	.L1121	@
.L1117:
	mov	r3, #4	@ tmp177,
	mov	r5, #5	@ tmp189,
	str	r3, [r4, #44]	@ tmp177, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	mov	r3, #1	@ tmp179,
	str	r3, [r4, #32]	@ tmp179, s_VfmwCTrl.eTaskState
	b	.L1124	@
.L1148:
	bl	msleep	@
.L1124:
	str	r5, [r4, #44]	@ tmp189, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	ldr	r3, [r4, #36]	@ D.40723, s_VfmwCTrl.eTaskCommand
	mov	r0, #10	@,
	cmp	r3, #1	@ D.40723,
	beq	.L1116	@,
	cmp	r3, #3	@ D.40723,
	bne	.L1148	@,
.L1118:
	mov	r3, #6	@ tmp184,
	str	r3, [r4, #44]	@ tmp184, s_VfmwCTrl.s32ThreadPos
	bl	vfmw_dprint_nothing	@
	mov	r3, #0	@ tmp186,
	mov	r0, r3	@, tmp186
	str	r3, [r4, #32]	@ tmp186, s_VfmwCTrl.eTaskState
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1150:
	.align	2
.L1149:
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
	ldr	r3, .L1159	@ tmp118,
	ldr	r0, [r3, r0, asl #2]	@ D.40732, s_pstVfmwChan
	cmp	r0, #0	@ D.40732,
	bxeq	lr	@
	ldr	r3, [r0, #880]	@ D.40733, _5->eVidStd
	cmp	r3, #3	@ D.40733,
	beq	.L1153	@,
	cmp	r3, #18	@ D.40733,
	beq	.L1154	@,
	cmp	r3, #0	@ D.40733,
	beq	.L1154	@,
	mov	r0, #0	@ D.40731,
	bx	lr	@
.L1154:
	add	r0, r0, #217088	@ D.40731, D.40732,
	add	r0, r0, #440	@ D.40731, D.40731,
	bx	lr	@
.L1153:
	add	r0, r0, #290816	@ D.40731, D.40732,
	add	r0, r0, #48	@ D.40731, D.40731,
	bx	lr	@
.L1160:
	.align	2
.L1159:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L1180	@ tmp137,
	ldr	ip, [r5, r0, asl #2]	@ D.40738, s_pstVfmwChan
	cmp	ip, #0	@ D.40738,
	beq	.L1170	@,
	ldr	lr, [ip, #880]	@ D.40739, _4->eVidStd
	cmp	lr, #3	@ D.40739,
	beq	.L1164	@,
	cmp	lr, #18	@ D.40739,
	beq	.L1165	@,
	cmp	lr, #0	@ D.40739,
	movne	ip, #0	@ D.40742,
	beq	.L1165	@,
.L1167:
	str	ip, [r3]	@ D.40742, *pNewImgNum_6(D)
	str	ip, [r2]	@ D.40742, *pReadImgNum_8(D)
	str	ip, [r1]	@ D.40742, *pRefImgNum_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1165:
	add	ip, ip, #217088	@ D.40742, D.40738,
	add	ip, ip, #440	@ D.40742, D.40742,
.L1163:
	cmp	ip, #0	@ D.40742,
	beq	.L1167	@,
	mov	lr, r2	@ pReadImgNum, pReadImgNum
	mov	r4, r0	@ ChanID, ChanID
	mov	r2, r3	@, pNewImgNum
	mov	r6, r1	@ pRefImgNum, pRefImgNum
	mov	r0, ip	@, D.40742
	mov	r1, lr	@, pReadImgNum
	bl	GetQueueImgNum	@
	ldr	r3, [r5, r4, asl #2]	@ D.40738, s_pstVfmwChan
	ldr	r2, [r3, #880]	@ D.40739, _13->eVidStd
	cmp	r2, #0	@ D.40739,
	beq	.L1179	@,
	cmp	r2, #15	@ D.40739,
	beq	.L1170	@,
	mov	r3, #2	@ tmp133,
	str	r3, [r6]	@ tmp133, *pRefImgNum_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1179:
	add	r3, r3, #241664	@ tmp131, D.40738,
	ldr	r3, [r3, #2480]	@ _13->stSynCtx.unSyntax.stH264Ctx.DPB.size, _13->stSynCtx.unSyntax.stH264Ctx.DPB.size
	str	r3, [r6]	@ _13->stSynCtx.unSyntax.stH264Ctx.DPB.size, *pRefImgNum_10(D)
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1164:
	add	ip, ip, #290816	@ D.40742, D.40738,
	add	ip, ip, #48	@ D.40742, D.40742,
	b	.L1163	@
.L1170:
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L1181:
	.align	2
.L1180:
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
	subs	r6, r0, #0	@ ChanID, ChanID
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r3, #0	@ tmp128,
	str	r3, [sp, #12]	@ tmp128, NewNum
	str	r3, [sp, #8]	@ tmp128, ReadNum
	str	r3, [sp, #4]	@ tmp128, RefNum
	bne	.L1185	@,
	cmp	r1, #0	@ pstChanState,
	mov	r4, r1	@ pstChanState, pstChanState
	beq	.L1185	@,
	ldr	r5, .L1197	@ tmp158,
	ldr	r1, [r5]	@ D.40745, s_pstVfmwChan
	cmp	r1, #0	@ D.40745,
	beq	.L1185	@,
	add	r1, r1, #1280	@, D.40745,
	mov	r2, #104	@,
	add	r1, r1, #4	@,,
	mov	r0, r4	@, pstChanState
	bl	memcpy	@
	mov	r0, r6	@, ChanID
	add	r3, sp, #12	@,,
	add	r2, sp, #8	@,,
	add	r1, sp, #4	@,,
	bl	VCTRL_GetChanImgNum	@
	ldr	r3, [r5]	@ D.40745, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _16->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1196	@,
.L1186:
	mov	r1, r4	@, pstChanState
	mov	r0, #0	@,
	bl	VCTRL_GetDispStateWithDNR	@
.L1188:
	ldr	r2, [r5, #3560]	@ g_VfmwChanStat[0].u32FrFrameRate, g_VfmwChanStat[0].u32FrFrameRate
	add	r1, sp, #16	@,,
	ldr	lr, [r5, #3572]	@ g_VfmwChanStat[0].u32IsFieldFlag, g_VfmwChanStat[0].u32IsFieldFlag
	mov	r0, #0	@,
	ldr	ip, [sp, #12]	@ NewNum, NewNum
	ldr	r3, [sp, #8]	@ ReadNum, ReadNum
	str	r2, [r4, #24]	@ g_VfmwChanStat[0].u32FrFrameRate, pstChanState_9(D)->frame_rate
	add	r3, r3, ip	@ D.40747, ReadNum, NewNum
	str	lr, [r4, #100]	@ g_VfmwChanStat[0].u32IsFieldFlag, pstChanState_9(D)->is_field_flg
	str	r3, [r4, #52]	@ D.40747, pstChanState_9(D)->decoded_1d_frame_num
	bl	SM_GetInfo	@
	ldr	r3, [sp, #36]	@ ScdInstInfo.numReadSegFail, ScdInstInfo.numReadSegFail
	ldr	r1, [sp, #32]	@ ScdInstInfo.TotalSegSize, ScdInstInfo.TotalSegSize
	ldr	r2, [sp, #24]	@ ScdInstInfo.SegNum, ScdInstInfo.SegNum
	cmp	r3, #10	@ ScdInstInfo.numReadSegFail,
	str	r1, [r4, #56]	@ ScdInstInfo.TotalSegSize, pstChanState_9(D)->buffered_stream_size
	movle	r3, #0	@ D.40749,
	movgt	r3, #1	@ D.40749,
	str	r2, [r4, #60]	@ ScdInstInfo.SegNum, pstChanState_9(D)->buffered_stream_num
	str	r3, [r4, #84]	@ D.40749, pstChanState_9(D)->stream_not_enough
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1196:
	ldr	r3, [r3, #1604]	@ _16->stSynExtraData.s32DnrEnable, _16->stSynExtraData.s32DnrEnable
	cmp	r3, #1	@ _16->stSynExtraData.s32DnrEnable,
	beq	.L1186	@,
	mov	r0, r6	@, ChanID
	ldr	r2, [sp, #4]	@, RefNum
	mov	r1, r4	@, pstChanState
	bl	VCTRL_GetDispState	@
	b	.L1188	@
.L1185:
	bl	vfmw_dprint_nothing	@
	add	sp, sp, #40	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1198:
	.align	2
.L1197:
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
	ldr	r3, .L1200	@ tmp117,
	ldr	r3, [r3, r0, asl #2]	@ tmp118, s_pstVfmwChan
	ldr	r0, [r3, #1580]	@ _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	sub	r0, r0, #1	@, _4->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	clz	r0, r0	@,
	mov	r0, r0, lsr #5	@,,
	bx	lr	@
.L1201:
	.align	2
.L1200:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	subs	r5, r0, #0	@ ChanID, ChanID
	bne	.L1205	@,
	ldr	r4, .L1222	@ tmp129,
	ldr	r3, [r4]	@ D.40777, s_pstVfmwChan
	cmp	r3, #0	@ D.40777,
	beq	.L1205	@,
	ldr	r3, [r3, #4]	@ _6->s32IsOpen, _6->s32IsOpen
	cmp	r3, #1	@ _6->s32IsOpen,
	bne	.L1205	@,
	cmp	r1, #0	@ pImage,
	beq	.L1205	@,
	ldr	r0, .L1222+4	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r3, [r4]	@ D.40777, s_pstVfmwChan
	cmp	r3, #0	@ D.40777,
	beq	.L1207	@,
	ldr	r3, [r3, #4]	@ _13->s32IsOpen, _13->s32IsOpen
	cmp	r3, #1	@ _13->s32IsOpen,
	bne	.L1207	@,
	ldr	r0, .L1222+8	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r4, [r4]	@ D.40777, s_pstVfmwChan
	movw	r3, #1546	@ tmp142,
	add	r2, r4, #180224	@ tmp140, D.40777,
	ldrsb	r6, [r2, r3]	@ s32AllDecFrameNum, _23->FspInst.s32DecFsNum
	cmp	r6, #0	@ s32AllDecFrameNum,
	addgt	r4, r4, #216064	@ ivtmp.485, D.40777,
	addgt	r4, r4, #376	@ ivtmp.485, ivtmp.485,
	bgt	.L1212	@,
	b	.L1213	@
.L1210:
	cmp	r6, r5	@ s32AllDecFrameNum, i
	add	r4, r4, #16	@ ivtmp.485, ivtmp.485,
	beq	.L1213	@,
.L1212:
	ldr	r3, [r4, #-16]	@ MEM[base: _27, offset: 4294967280B], MEM[base: _27, offset: 4294967280B]
	add	r5, r5, #1	@ i, i,
	cmp	r3, #1	@ MEM[base: _27, offset: 4294967280B],
	bne	.L1210	@,
	ldr	r2, [r4, #-8]	@, MEM[base: _27, offset: 4294967288B]
	mov	r0, #0	@,
	ldr	r1, [r4, #-12]	@, MEM[base: _27, offset: 4294967284B]
	add	r4, r4, #16	@ ivtmp.485, ivtmp.485,
	bl	DNR_FsIsInImgQue	@
	cmp	r0, #0	@ s32UsingCount
	streq	r0, [r4, #-20]	@ s32UsingCount, MEM[base: _27, offset: 4294967292B]
	streq	r0, [r4, #-32]	@ s32UsingCount, MEM[base: _27, offset: 4294967280B]
	cmp	r6, r5	@ s32AllDecFrameNum, i
	bne	.L1212	@,
.L1213:
	ldr	r0, .L1222+8	@,
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1222+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, #0	@ D.40776,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1207:
	bl	vfmw_dprint_nothing	@
	ldr	r0, .L1222+4	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.40776,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1205:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40776,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1223:
	.align	2
.L1222:
	.word	.LANCHOR0
	.word	g_SpinLockIrq_Destroy
	.word	.LANCHOR1-3508
	.fnend
	.size	VCTRL_RlsDSDFrame, .-VCTRL_RlsDSDFrame
	.align	2
	.global	VCTRL_GetChanWidth
	.type	VCTRL_GetChanWidth, %function
VCTRL_GetChanWidth:
	.fnstart
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L1227	@,
	ldr	r3, .L1232	@ tmp114,
	ldr	r3, [r3]	@ D.40786, s_pstVfmwChan
	cmp	r3, #0	@ D.40786,
	beq	.L1227	@,
	ldr	r0, [r3, #1456]	@ D.40785, _6->stSynExtraData.stChanOption.s32MaxWidth
	ldmfd	sp!, {r4, pc}	@
.L1227:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40785,
	ldmfd	sp!, {r4, pc}	@
.L1233:
	.align	2
.L1232:
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
	cmp	r0, #0	@ ChanID,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bne	.L1237	@,
	ldr	r3, .L1242	@ tmp114,
	ldr	r3, [r3]	@ D.40790, s_pstVfmwChan
	cmp	r3, #0	@ D.40790,
	beq	.L1237	@,
	ldr	r0, [r3, #1460]	@ D.40789, _6->stSynExtraData.stChanOption.s32MaxHeight
	ldmfd	sp!, {r4, pc}	@
.L1237:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40789,
	ldmfd	sp!, {r4, pc}	@
.L1243:
	.align	2
.L1242:
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
	cmp	r0, #0	@ ChanID,
	bne	.L1250	@,
	ldr	r3, .L1251	@ tmp114,
	ldr	r3, [r3]	@ D.40794, s_pstVfmwChan
	cmp	r3, #0	@ D.40794,
	ldrne	r0, [r3, #24]	@ D.40793, _6->eChanCapLevel
	moveq	r0, #33	@ D.40793,
	bx	lr	@
.L1250:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40793,
	ldmfd	sp!, {r4, pc}	@
.L1252:
	.align	2
.L1251:
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
	add	r3, r0, #4992	@ D.40797, new_extra_ref,
	movw	r2, #10000	@ tmp125,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r3, #8	@ D.40797, D.40797,
	ldr	r5, .L1261	@ tmp142,
	cmp	r3, r2	@ D.40797, tmp125
	mov	r4, r1	@ new_extra_disp, new_extra_disp
	str	r0, [r5, #3592]	@ new_extra_ref, extra_ref
	bhi	.L1259	@,
.L1254:
	movw	r1, #5000	@ tmp129,
	cmp	r0, r1	@ D.40799, tmp129
	movw	r2, #60536	@ tmp131,
	add	r3, r4, #4992	@ D.40797, new_extra_disp,
	movge	r0, r1	@ D.40798, tmp129
	movt	r2, 65535	@ tmp131,
	cmp	r0, r2	@ D.40798, tmp131
	add	r3, r3, #8	@ D.40797, D.40797,
	movw	r1, #10000	@ tmp135,
	str	r4, [r5, #3596]	@ new_extra_disp, extra_disp
	movlt	r0, r2	@ D.40798, tmp131
	cmp	r3, r1	@ D.40797, tmp135
	str	r0, [r5, #3592]	@ D.40798, extra_ref
	ldr	r6, .L1261	@ tmp127,
	bhi	.L1260	@,
.L1255:
	movw	r2, #5000	@ tmp139,
	cmp	r4, r2	@ D.40799, tmp139
	movw	r3, #60536	@ tmp141,
	movge	r4, r2	@ D.40798, tmp139
	movt	r3, 65535	@ tmp141,
	cmp	r4, r3	@ D.40798, tmp141
	movlt	r4, r3	@ D.40798, tmp141
	str	r4, [r5, #3596]	@ D.40798, extra_disp
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1259:
	bl	vfmw_dprint_nothing	@
	ldr	r0, [r5, #3592]	@ D.40799, extra_ref
	b	.L1254	@
.L1260:
	bl	vfmw_dprint_nothing	@
	ldr	r4, [r6, #3596]	@ D.40799, extra_disp
	b	.L1255	@
.L1262:
	.align	2
.L1261:
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
	ldr	r3, .L1269	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #52]	@ D.40803, g_vdm_hal_fun_ptr.pfun_VDMHAL_MaskInt
	cmp	r3, #0	@ D.40803,
	beq	.L1268	@,
	mov	r0, #0	@,
	blx	r3	@ D.40803
.L1265:
	bl	SCDDRV_MaskInt	@
	ldr	r3, .L1269+4	@ tmp113,
	ldr	r3, [r3, #24]	@ D.40802, g_dnr_hal_fun_ptr.pfun_DNRHAL_MaskInt
	cmp	r3, #0	@ D.40802,
	beq	.L1266	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.40802
.L1266:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L1268:
	bl	vfmw_dprint_nothing	@
	b	.L1265	@
.L1270:
	.align	2
.L1269:
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
	ldr	r3, .L1277	@ tmp112,
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r3, [r3, #56]	@ D.40807, g_vdm_hal_fun_ptr.pfun_VDMHAL_EnableInt
	cmp	r3, #0	@ D.40807,
	beq	.L1276	@,
	mov	r0, #0	@,
	blx	r3	@ D.40807
.L1273:
	bl	SCDDRV_EnableInt	@
	ldr	r3, .L1277+4	@ tmp113,
	ldr	r3, [r3, #28]	@ D.40806, g_dnr_hal_fun_ptr.pfun_DNRHAL_EnableInt
	cmp	r3, #0	@ D.40806,
	beq	.L1274	@,
	ldmfd	sp!, {r4, lr}	@
	bx	r3	@ indirect register sibling call	@ D.40806
.L1274:
	ldmfd	sp!, {r4, lr}	@
	b	vfmw_dprint_nothing	@
.L1276:
	bl	vfmw_dprint_nothing	@
	b	.L1273	@
.L1278:
	.align	2
.L1277:
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
	add	r7, sp, #108	@ tmp754,,
	mov	r6, r0	@ eCapLevel, eCapLevel
	mov	r4, r1	@ pChanOption, pChanOption
	add	r0, sp, #156	@ tmp760,,
	mov	r1, #64	@,
	mov	r5, r2	@ flag, flag
	mov	r8, r3	@ OneChanMemFlag, OneChanMemFlag
	bl	__memzero	@
	mov	r0, r7	@, tmp754
	mov	r1, #16	@,
	bl	__memzero	@
	subs	r2, r6, #25	@ tmp390, eCapLevel,
	ldr	r3, .L1441	@ tmp753,
	movne	r2, #1	@ tmp390,
	cmp	r5, #0	@ flag,
	movne	r2, #0	@ tmp390,
	cmp	r2, #0	@ tmp390,
	str	r4, [r3, #-3500]	@ pChanOption, pOption
	bne	.L1300	@,
	ldr	r3, [r4, #4]	@ D.40906, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.40906,
	bhi	.L1300	@,
	beq	.L1431	@,
	cmp	r3, #1	@ D.40906,
	bne	.L1284	@,
	ldr	r3, [r4, #32]	@ pChanOption_14(D)->s32MaxRefFrameNum, pChanOption_14(D)->s32MaxRefFrameNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxRefFrameNum,
	blt	.L1300	@,
	ldr	r3, [r4, #12]	@ pChanOption_14(D)->s32MaxWidth, pChanOption_14(D)->s32MaxWidth
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxWidth,
	ble	.L1300	@,
	ldr	r3, [r4, #16]	@ pChanOption_14(D)->s32MaxHeight, pChanOption_14(D)->s32MaxHeight
	cmp	r3, #31	@ pChanOption_14(D)->s32MaxHeight,
	ble	.L1300	@,
	ldr	r3, [r4, #56]	@ pChanOption_14(D)->s32SCDBufSize, pChanOption_14(D)->s32SCDBufSize
	cmp	r3, #262144	@ pChanOption_14(D)->s32SCDBufSize,
	blt	.L1300	@,
	ldr	r3, [r4, #44]	@ pChanOption_14(D)->s32SupportH264, pChanOption_14(D)->s32SupportH264
	cmp	r3, #1	@ pChanOption_14(D)->s32SupportH264,
	beq	.L1432	@,
.L1284:
	ldr	r3, [r4, #136]	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	add	r9, sp, #124	@ tmp404,,
	mov	r1, r4	@, pChanOption
	mov	r0, r6	@, eCapLevel
	cmp	r3, #1	@ pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	mov	r2, r9	@, tmp404
	movne	r3, #0	@ tmp403,
	strne	r3, [r4, #136]	@ tmp403, pChanOption_14(D)->DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	mov	r3, r5	@, flag
	bl	VCTRL_GetChanMemSizeWithOption	@
	subs	r5, r0, #0	@ D.40890,
	beq	.L1286	@,
.L1300:
	bl	vfmw_dprint_nothing	@
	mvn	r10, #0	@ D.40890,
.L1410:
	mov	r0, r10	@, D.40890
	add	sp, sp, #332	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, pc}	@
.L1431:
	ldr	r3, [r4, #64]	@ pChanOption_14(D)->s32SlotWidth, pChanOption_14(D)->s32SlotWidth
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotWidth,
	beq	.L1300	@,
	ldr	r3, [r4, #68]	@ pChanOption_14(D)->s32SlotHeight, pChanOption_14(D)->s32SlotHeight
	cmp	r3, #0	@ pChanOption_14(D)->s32SlotHeight,
	bne	.L1284	@,
	b	.L1300	@
.L1432:
	ldr	r3, [r4, #20]	@ pChanOption_14(D)->s32MaxSliceNum, pChanOption_14(D)->s32MaxSliceNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSliceNum,
	ble	.L1300	@,
	ldr	r3, [r4, #24]	@ pChanOption_14(D)->s32MaxSpsNum, pChanOption_14(D)->s32MaxSpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxSpsNum,
	ble	.L1300	@,
	ldr	r3, [r4, #28]	@ pChanOption_14(D)->s32MaxPpsNum, pChanOption_14(D)->s32MaxPpsNum
	cmp	r3, #0	@ pChanOption_14(D)->s32MaxPpsNum,
	bgt	.L1284	@,
	b	.L1300	@
.L1286:
	ldmia	r9, {r0, r1, r2, r3}	@ tmp404,,,,
	add	ip, sp, #140	@ tmp405,,
	ldr	lr, [r4, #8]	@ D.40891, pChanOption_14(D)->MemAllocMode
	cmp	lr, #1	@ D.40891,
	stmia	ip, {r0, r1, r2, r3}	@ tmp405,,,,
	beq	.L1433	@,
	cmp	lr, #2	@ D.40891,
	beq	.L1434	@,
	cmp	lr, #3	@ D.40891,
	bne	.L1300	@,
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp767,,
	ldr	r9, [sp, #148]	@ DetailMemSize$8, MEM[(struct  *)&DetailMemSize + 8B]
	bl	__memzero	@
	ldr	r3, [r4, #108]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.VirAddr,
	beq	.L1301	@,
	ldr	r3, [r4, #112]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemCtx.Length,
	bne	.L1302	@,
.L1301:
	mov	r2, r9	@, DetailMemSize$8
	add	r3, sp, #220	@ tmp768,,
	mov	r9, #1	@ tmp478,
	mov	r1, #0	@,
	str	r9, [sp]	@ tmp478,
	ldr	r0, .L1441+4	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1418	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r9, [sp, #116]	@ tmp478, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	r1, [sp, #188]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	r2, [sp, #192]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r3, [sp, #196]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
.L1305:
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp776,,
	ldr	r9, [sp, #140]	@ DetailMemSize, MEM[(struct  *)&DetailMemSize]
	bl	__memzero	@
	ldr	r3, [r4, #76]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.VirAddr,
	beq	.L1349	@,
	ldr	r3, [r4, #80]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemVdh.Length,
	bne	.L1307	@,
.L1349:
	mov	r1, #0	@ tmp499,
	mov	r2, r9	@, DetailMemSize
	str	r1, [sp]	@ tmp499,
	add	r3, sp, #220	@ tmp769,,
	ldr	r0, .L1441+8	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1423	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, #1	@ tmp512,
	ldr	r0, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #156]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r1, [sp, #160]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r2, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	str	r3, [sp, #108]	@ tmp512, MEM[(HI_S32 *)&ChanMemFlag]
.L1311:
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp777,,
	ldr	r9, [sp, #144]	@ DetailMemSize$4, MEM[(struct  *)&DetailMemSize + 4B]
	bl	__memzero	@
	ldr	r3, [r4, #92]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.VirAddr,
	beq	.L1351	@,
	ldr	r3, [r4, #96]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemScd.Length,
	bne	.L1314	@,
.L1351:
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ pChanOption_14(D)->Purpose,
	beq	.L1315	@,
	mov	r1, #0	@ tmp526,
	mov	r2, r9	@, DetailMemSize$4
	str	r1, [sp]	@ tmp526,
	add	r3, sp, #220	@ tmp771,,
	ldr	r0, .L1441+12	@,
	bl	MEM_AllocMemBlock	@
	cmp	r0, #0	@,
	bne	.L1425	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, #1	@ tmp535,
	ldr	r0, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #172]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r1, [sp, #176]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r2, [sp, #180]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r3, [sp, #112]	@ tmp535, MEM[(HI_S32 *)&ChanMemFlag + 4B]
.L1320:
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp778,,
	ldr	r9, [sp, #152]	@ DetailMemSize$12, MEM[(struct  *)&DetailMemSize + 12B]
	bl	__memzero	@
	ldr	r3, [r4, #124]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.VirAddr,
	beq	.L1353	@,
	ldr	r3, [r4, #128]	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length, MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length
	cmp	r3, #0	@ MEM[(struct VDEC_CHAN_MEM_DETAIL_S *)pChanOption_14(D) + 72B].ChanMemPmv.Length,
	bne	.L1326	@,
.L1353:
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ pChanOption_14(D)->Purpose,
	beq	.L1327	@,
	mov	r1, #0	@ tmp554,
	add	r3, sp, #220	@ tmp772,,
	mov	r2, r9	@, DetailMemSize$12
	str	r1, [sp]	@ tmp554,
	ldr	r0, .L1441+16	@,
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.40890,
	bne	.L1430	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r3, #1	@ tmp564,
	ldr	r0, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r1, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r2, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #204]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r1, [sp, #208]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	str	r2, [sp, #212]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r3, [sp, #120]	@ tmp564, MEM[(HI_S32 *)&ChanMemFlag + 12B]
.L1390:
	ldr	fp, .L1441	@ tmp580,
	ldr	r9, .L1441+20	@ tmp752,
	sub	r0, fp, #3520	@, tmp580,
	bl	OSAL_SpinLockIRQ	@
	bl	VCTRL_MaskAllInt	@
	ldr	r10, [r9]	@ s_pstVfmwChan, s_pstVfmwChan
	adds	r10, r10, #0	@ D.40890, s_pstVfmwChan,
	movne	r10, #1	@ D.40890,
	cmp	r10, #0	@ D.40890,
	bgt	.L1435	@,
	ldr	r2, [sp, #192]	@ D.40894, ChanMemDetail.ChanMemCtx.VirAddr
	add	fp, fp, r10, lsl #2	@ tmp593, tmp580, D.40890,
	ldr	lr, .L1441+24	@ tmp588,
	movw	r1, #29096	@,
	ldr	ip, .L1441+28	@ tmp590,
	movt	r1, 4	@,
	ldr	r3, [fp, #-3548]	@ tmp599, g_ChanTick
	mov	r0, r2	@, D.40894
	str	r2, [r9, r10, asl #2]	@ D.40894, s_pstVfmwChan
	mov	r2, #30	@ tmp589,
	add	r3, r3, #1	@ D.40893, tmp599,
	str	r2, [lr, r10, asl #2]	@ tmp589, g_FrameRate
	str	r3, [fp, #-3548]	@ D.40893, g_ChanTick
	str	r2, [ip, r10, asl #2]	@ tmp589, g_LastFrameRate
	bl	__memzero	@
	ldr	ip, [r9, r10, asl #2]	@ D.40895, s_pstVfmwChan
	mov	r2, #152	@,
	mov	r1, r4	@, pChanOption
	add	r0, ip, #1440	@, D.40895,
	add	r0, r0, #4	@,,
	str	ip, [sp, #84]	@ D.40895, %sfp
	bl	memcpy	@
	ldr	r1, .L1441+32	@ tmp635,
	movw	r2, #11160	@ tmp637,
	movt	r2, 1	@ tmp637,
	mla	r2, r2, r10, r1	@ tmp638, tmp637, D.40890, tmp635
	movw	r1, #40368	@ tmp609,
	movt	r1, 7	@ tmp609,
	add	r2, r2, #75776	@ tmp639, tmp638,
	add	r2, r2, #912	@ tmp639, tmp639,
	ldr	ip, [sp, #84]	@ D.40895, %sfp
	str	r10, [ip]	@ D.40890, _43->s32ChanID
	ldr	r3, [r9, r10, asl #2]	@ D.40895, s_pstVfmwChan
	str	r6, [ip, #24]	@ eCapLevel, _43->eChanCapLevel
	add	r0, r3, #180224	@ tmp613, D.40895,
	str	r1, [ip, #1388]	@ tmp609, _43->stSynExtraData.s32BasicCtxSize
	str	r6, [ip, #920]	@ eCapLevel, _43->stSynExtraData.eCapLevel
	mov	r1, #19	@ tmp615,
	str	r5, [ip, #1404]	@ D.40890, _43->stSynExtraData.s32MoreGapEnable
	strb	r10, [r0, #1536]	@ D.40890, _51->FspInst.s32InstID
	add	r0, r3, #217088	@ tmp617, D.40895,
	ldr	lr, [r4]	@ D.40898, pChanOption_14(D)->eAdapterType
	ldr	ip, [fp, #-3548]	@ tmp634, g_ChanTick
	str	r1, [r3, #880]	@ tmp615, _51->eVidStd
	str	lr, [r3, #20]	@ D.40898, _51->eAdapterType
	add	lr, r3, #163840	@ tmp625, D.40895,
	ldr	r2, [r2, #4]	@ D.40892, s_DnrChan[_244].s32DnrEnable
	str	r1, [r0, #424]	@ tmp615, _51->stSynCtx.eVidStd
	add	r1, r3, #181248	@ D.40900, D.40895,
	str	r10, [lr, #4040]	@ D.40890, MEM[(struct SM_INSTANCE_S *)_51 + 1632B].InstID
	add	r1, r1, #512	@ D.40900, D.40900,
	str	ip, [r0, #420]	@ tmp634, _51->u32ChanTick
	add	ip, r3, #1632	@ D.40899, D.40895,
	str	r2, [r3, #1604]	@ D.40892, _51->stSynExtraData.s32DnrEnable
	ldr	r2, .L1441+36	@ tmp619,
	ldr	r0, [r4, #140]	@ D.40901, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	ldr	lr, .L1441+40	@ tmp626,
	add	r2, r2, r10, lsl #2	@ tmp621, tmp619, D.40890,
	cmp	r0, #0	@ D.40901,
	streq	r5, [r3, #1608]	@ D.40890, _51->stSynExtraData.s32DSDThrWidth
	str	ip, [r2, #116]	@ D.40899, s_SmIIS.pSmInstArray
	str	r1, [lr, r10, asl #2]	@ D.40900, s_pFspInst
	streq	r5, [r3, #1612]	@ D.40890, _51->stSynExtraData.s32DSDThrHeight
	beq	.L1342	@,
	mov	r1, r0, asl #5	@ tmp646, D.40901,
	ldr	r2, .L1441+44	@ tmp643,
	sub	r0, r1, r0, asl #2	@ tmp647, tmp646, D.40901,
	ldr	r1, [r2, r0]	@ D.40892, CapItem
	str	r1, [r3, #1608]	@ D.40892, _51->stSynExtraData.s32DSDThrWidth
	ldr	r0, [r4, #140]	@ pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold
	mov	r1, r0, asl #5	@ tmp653, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	sub	r1, r1, r0, asl #2	@ tmp654, tmp653, pChanOption_14(D)->DynamicSwitchDnrParam.DnrSwitchThreshold,
	add	r2, r2, r1	@ tmp655, tmp643, tmp654
	ldr	r2, [r2, #4]	@ D.40892, CapItem
	str	r2, [r3, #1612]	@ D.40892, _51->stSynExtraData.s32DSDThrHeight
.L1342:
	ldr	r0, [r9, r10, asl #2]	@ D.40895, s_pstVfmwChan
	mov	lr, #0	@ tmp757,
	mov	r3, #-2147483648	@ tmp758,
	add	ip, r0, #216064	@ ivtmp.521, D.40895,
	add	r0, r0, #217088	@ tmp751, D.40895,
	add	ip, ip, #360	@ ivtmp.521, ivtmp.521,
	add	r5, r0, #360	@ D.40909, tmp751,
.L1343:
	str	lr, [ip]	@ tmp757, MEM[base: _336, offset: 0B]
	str	lr, [ip, #12]	@ tmp757, MEM[base: _336, offset: 12B]
	stmib	ip, {r3, lr}	@ ivtmp.521,,
	add	ip, ip, #16	@ ivtmp.521, ivtmp.521,
	cmp	ip, r5	@ ivtmp.521, D.40909
	bne	.L1343	@,
	mov	r1, #16	@,
	add	r0, r0, #360	@, tmp751,
	bl	__memzero	@
	bl	vfmw_dprint_nothing	@
	mov	r0, r10	@, D.40890
	bl	VCTRL_ResetChan	@
	ldmia	r7, {r0, r1, r2, r3}	@ tmp754,,,,
	add	lr, sp, #156	@ tmp773,,
	add	r5, sp, #64	@ tmp663,,
	mov	ip, sp	@ tmp665,
	stmia	r5, {r0, r1, r2, r3}	@ tmp663,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp666,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp665,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp666,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp665,,,,
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp666,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp665,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp666,,,,
	stmia	ip, {r0, r1, r2, r3}	@ tmp665,,,,
	mov	r2, r8	@, OneChanMemFlag
	mov	r1, r6	@, eCapLevel
	mov	r3, r4	@, pChanOption
	mov	r0, r10	@, D.40890
	bl	VCTRL_ConfigMemInfo	@
	cmp	r0, #0	@,
	bne	.L1344	@,
	ldr	r3, [r9, r10, asl #2]	@ tmp668, s_pstVfmwChan
	mov	r0, r10	@, D.40890
	ldr	r5, .L1441+20	@ tmp667,
	str	r10, [r3, #140]	@ D.40890, _89->s32SCDInstID
	bl	FSP_EnableInstance	@
	cmp	r0, #0	@,
	bne	.L1348	@,
	ldr	r3, [r5, r10, asl #2]	@ D.40895, s_pstVfmwChan
	ldr	r2, [r3, #1580]	@ _93->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable, _93->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable
	cmp	r2, #1	@ _93->stSynExtraData.stChanOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable,
	beq	.L1346	@,
	ldr	r3, [r3, #236]	@ D.40892, _93->s32OffLineDnrMemAddr
	mov	r0, r3	@, D.40892
	str	r3, [sp, #92]	@ D.40892, DnrMem.PhyAddr
	bl	MEM_Phy2Vir	@
	ldr	r3, [r5, r10, asl #2]	@ tmp672, s_pstVfmwChan
	ldr	r3, [r3, #240]	@ _100->s32OffLineDNRMemSize, _100->s32OffLineDNRMemSize
	str	r0, [sp, #96]	@, DnrMem.VirAddr
	mov	r0, r10	@, D.40890
	str	r3, [sp, #100]	@ _100->s32OffLineDNRMemSize, DnrMem.Length
	bl	DNR_ChanIsOpen	@
	cmp	r0, #1	@,
	beq	.L1347	@,
	ldr	r3, [r4, #16]	@, pChanOption_14(D)->s32MaxHeight
	add	r1, sp, #92	@,,
	ldr	r2, [r4, #12]	@, pChanOption_14(D)->s32MaxWidth
	mov	r0, r10	@, D.40890
	bl	DNR_EnableChan	@
	cmp	r0, #0	@,
	bne	.L1348	@,
.L1347:
	mov	r0, r10	@, D.40890
	bl	DNR_StartChan	@
	cmp	r0, #0	@,
	bne	.L1348	@,
.L1346:
	mov	r0, r10	@, D.40890
	bl	SM_ClearInst	@
	ldr	r3, [r9, r10, asl #2]	@ tmp678, s_pstVfmwChan
	movw	r1, #31144	@,
	mov	r0, r10	@, D.40890
	movt	r1, 4	@,
	ldr	r3, [r3, #204]	@ _114->stChanMem_ctx.VirAddr, _114->stChanMem_ctx.VirAddr
	add	r1, r3, r1	@, _114->stChanMem_ctx.VirAddr,
	bl	OpenUsdPool_WithMem	@
	ldr	r3, [r9, r10, asl #2]	@ tmp683, s_pstVfmwChan
	mov	r2, #1	@ tmp684,
	mov	r0, r10	@, D.40890
	str	r2, [r3, #4]	@ tmp684, _118->s32IsOpen
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1441+48	@,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1410	@
.L1302:
	mov	r2, #16	@,
	add	r1, r4, #104	@, pChanOption,
	add	r0, sp, #188	@,,
	bl	memcpy	@
	ldr	r2, [sp, #196]	@ D.40892, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	r9, r2	@ DetailMemSize$8, D.40892
	bgt	.L1418	@,
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1305	@
.L1315:
	ldr	r2, [sp, #156]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp538,
	ldr	r3, [sp, #160]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #180]	@ tmp538, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	str	r2, [sp, #172]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	b	.L1320	@
.L1307:
	mov	r2, #16	@,
	add	r1, r4, #72	@, pChanOption,
	add	r0, sp, #156	@ tmp770,,
	bl	memcpy	@
	ldr	r2, [sp, #164]	@ D.40892, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r9, r2	@ DetailMemSize, D.40892
	bgt	.L1423	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1311	@
.L1327:
	ldr	r2, [sp, #156]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	mov	r1, #0	@ tmp567,
	ldr	r3, [sp, #160]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #212]	@ tmp567, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	str	r2, [sp, #204]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	str	r3, [sp, #208]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	b	.L1390	@
.L1430:
	ldr	r3, [sp, #116]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1436	@,
.L1329:
	ldr	r3, [sp, #108]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	beq	.L1437	@,
.L1330:
	ldr	r3, [sp, #112]	@ MEM[(HI_S32 *)&ChanMemFlag + 4B], MEM[(HI_S32 *)&ChanMemFlag + 4B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 4B],
	bne	.L1418	@,
	ldr	r1, [sp, #176]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #172	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
.L1418:
	bl	vfmw_dprint_nothing	@
.L1304:
	mvn	r10, #0	@ D.40890,
	b	.L1410	@
.L1314:
	mov	r2, #16	@,
	add	r1, r4, #88	@, pChanOption,
	add	r0, sp, #172	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.40906, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.40906,
	beq	.L1320	@,
	ldr	r1, [sp, #176]	@ D.40894, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r1, #0	@ D.40894,
	beq	.L1321	@,
	ldr	r2, [sp, #180]	@ D.40892, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r2, r9	@ D.40892, DetailMemSize$4
	bge	.L1322	@,
.L1321:
	cmp	r3, #1	@ D.40906,
	beq	.L1425	@,
	ldr	r2, [sp, #180]	@ D.40892, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
.L1322:
	ldr	r0, [sp, #172]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1320	@
.L1326:
	mov	r2, #16	@,
	add	r1, r4, #120	@, pChanOption,
	add	r0, sp, #204	@,,
	bl	memcpy	@
	ldr	r3, [r4, #4]	@ D.40906, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ D.40906,
	beq	.L1390	@,
	ldr	r1, [sp, #208]	@ D.40894, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].VirAddr
	cmp	r1, #0	@ D.40894,
	beq	.L1334	@,
	ldr	r2, [sp, #212]	@ D.40890, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
	cmp	r9, r2	@ DetailMemSize$12, D.40890
	ble	.L1335	@,
.L1334:
	cmp	r3, #1	@ D.40906,
	beq	.L1430	@,
	ldr	r2, [sp, #212]	@ D.40890, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].Length
.L1335:
	ldr	r0, [sp, #204]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 48B].PhyAddr
	bl	MEM_AddMemRecord	@
	b	.L1390	@
.L1433:
	add	r9, sp, #140	@,,
	mov	r2, #16	@,
	add	r1, r4, #72	@, pChanOption,
	add	r0, sp, #156	@ tmp761,,
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
	beq	.L1418	@,
	ldr	r3, [sp, #196]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	cmp	fp, r3	@ DetailMemSize$ChanCtxDetailMem, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bgt	.L1418	@,
	ldr	r3, [sp, #176]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	cmp	r3, #0	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr,
	beq	.L1291	@,
	ldr	r3, [sp, #180]	@ MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	cmp	r10, r3	@ DetailMemSize$ScdDetailMem, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	ble	.L1292	@,
.L1291:
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #1	@ pChanOption_14(D)->Purpose,
	beq	.L1418	@,
.L1292:
	ldr	r1, [sp, #160]	@ D.40894, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	cmp	r1, #0	@ D.40894,
	beq	.L1418	@,
	ldr	r2, [sp, #164]	@ D.40892, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	cmp	r9, r2	@ DetailMemSize$VdhDetailMem, D.40892
	bgt	.L1418	@,
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_AddMemRecord	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	ldr	r3, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r3, #2	@ pChanOption_14(D)->Purpose,
	beq	.L1390	@,
	add	r0, sp, #172	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_AddMemRecord	@
	b	.L1390	@
.L1434:
	ldr	r3, [sp, #144]	@ DetailMemSize$ScdDetailMem, MEM[(struct  *)&DetailMemSize + 4B]
	mov	r1, #16	@,
	add	r0, sp, #220	@ tmp762,,
	ldr	fp, [sp, #148]	@ DetailMemSize$ChanCtxDetailMem, MEM[(struct  *)&DetailMemSize + 8B]
	ldr	r10, [sp, #140]	@ DetailMemSize$VdhDetailMem, MEM[(struct  *)&DetailMemSize]
	mov	r9, #1	@ tmp445,
	str	r3, [sp, #84]	@ DetailMemSize$ScdDetailMem, %sfp
	bl	__memzero	@
	mov	r1, r5	@, D.40890
	ldr	r0, .L1441+4	@,
	mov	r2, fp	@, DetailMemSize$ChanCtxDetailMem
	add	r3, sp, #220	@ tmp764,,
	str	r9, [sp]	@ tmp445,
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.40892,
	bne	.L1418	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	mov	r1, r5	@, D.40892
	mov	r2, r10	@, DetailMemSize$VdhDetailMem
	ldr	r0, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	add	r3, sp, #220	@ tmp765,,
	ldr	lr, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	ip, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r0, [sp, #192]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	str	r5, [sp]	@ D.40892,
	ldr	r0, .L1441+8	@,
	str	r9, [sp, #116]	@ tmp445, MEM[(HI_S32 *)&ChanMemFlag + 8B]
	str	lr, [sp, #188]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	str	ip, [sp, #196]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].Length
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.40890,
	bne	.L1438	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [r4, #4]	@ pChanOption_14(D)->Purpose, pChanOption_14(D)->Purpose
	cmp	r1, #2	@ pChanOption_14(D)->Purpose,
	ldr	r2, [sp, #228]	@ D.40892, MemRecord.PhyAddr
	ldr	r3, [sp, #224]	@ D.40902, MemRecord.VirAddr
	ldr	r1, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r9, [sp, #108]	@ tmp445, MEM[(HI_S32 *)&ChanMemFlag]
	str	r2, [sp, #156]	@ D.40892, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	str	r3, [sp, #160]	@ D.40902, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	str	r1, [sp, #164]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail].Length
	beq	.L1298	@,
	str	r5, [sp]	@ D.40890,
	mov	r1, r5	@, D.40890
	add	r3, sp, #220	@ tmp766,,
	ldr	r2, [sp, #84]	@, %sfp
	ldr	r0, .L1441+12	@,
	bl	MEM_AllocMemBlock	@
	subs	r5, r0, #0	@ D.40890,
	bne	.L1439	@,
	ldr	r2, [sp, #232]	@, MemRecord.Length
	ldr	r1, [sp, #224]	@, MemRecord.VirAddr
	ldr	r0, [sp, #228]	@, MemRecord.PhyAddr
	bl	MEM_AddMemRecord	@
	ldr	r1, [sp, #228]	@ MemRecord.PhyAddr, MemRecord.PhyAddr
	ldr	r2, [sp, #224]	@ MemRecord.VirAddr, MemRecord.VirAddr
	ldr	r3, [sp, #232]	@ MemRecord.Length, MemRecord.Length
	str	r9, [sp, #112]	@ tmp445, MEM[(HI_S32 *)&ChanMemFlag + 4B]
	str	r1, [sp, #172]	@ MemRecord.PhyAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r2, [sp, #176]	@ MemRecord.VirAddr, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r3, [sp, #180]	@ MemRecord.Length, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1390	@
.L1435:
	bl	vfmw_dprint_nothing	@
	mvn	r10, #0	@ D.40890,
	bl	VCTRL_EnableAllInt	@
	sub	r0, fp, #3520	@, tmp580,
	bl	OSAL_SpinUnLockIRQ	@
	b	.L1410	@
.L1348:
	bl	vfmw_dprint_nothing	@
.L1344:
	mov	r0, r10	@, D.40890
	bl	VCTRL_UnInstallChan	@
	ldr	r4, [r9, r10, asl #2]	@ D.40895, s_pstVfmwChan
	mov	r2, #16	@,
	add	r5, r4, #217088	@ tmp692, D.40895,
	add	r1, r4, #152	@, D.40895,
	ldr	r3, [r4, #224]	@ _126->s32SelfAllocChanMem_ctx, _126->s32SelfAllocChanMem_ctx
	str	r3, [sp, #292]	@ _126->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	add	r0, sp, #220	@ tmp774,,
	ldr	r3, [r4, #216]	@ _126->s32SelfAllocChanMem_vdh, _126->s32SelfAllocChanMem_vdh
	str	r3, [sp, #284]	@ _126->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	ldr	r3, [r4, #220]	@ _126->s32SelfAllocChanMem_scd, _126->s32SelfAllocChanMem_scd
	str	r3, [sp, #288]	@ _126->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	ldr	r3, [r5, #400]	@ _126->s32SelfAllocChanMem_pmv, _126->s32SelfAllocChanMem_pmv
	str	r3, [sp, #296]	@ _126->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r4, #200	@, D.40895,
	mov	r2, #16	@,
	add	r0, sp, #268	@,,
	bl	memcpy	@
	add	r1, r4, #168	@, D.40895,
	mov	r2, #16	@,
	add	r0, sp, #236	@,,
	bl	memcpy	@
	add	r1, r4, #184	@, D.40895,
	mov	r2, #16	@,
	add	r0, sp, #252	@,,
	bl	memcpy	@
	add	r1, r4, #104	@, D.40895,
	mov	r2, #12	@,
	add	r0, sp, #300	@,,
	bl	memcpy	@
	add	r1, r5, #404	@, tmp692,
	mov	r2, #16	@,
	add	r0, sp, #312	@,,
	bl	memcpy	@
	mov	r0, r10	@, D.40890
	mov	r3, #0	@ tmp737,
	str	r3, [r9, r10, asl #2]	@ tmp737, s_pstVfmwChan
	bl	VDMDRV_ClearChanIsDec	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1441+48	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r10	@, D.40890
	mvn	r10, #0	@ D.40890,
	add	r1, sp, #220	@ tmp775,,
	bl	VCTRL_FreeChanResource	@
	b	.L1410	@
.L1423:
	ldr	r3, [sp, #116]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	bne	.L1418	@,
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1418	@
.L1298:
	str	r2, [sp, #172]	@ D.40892, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].PhyAddr
	str	r3, [sp, #176]	@ D.40902, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].VirAddr
	str	r5, [sp, #180]	@ D.40890, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 16B].Length
	b	.L1390	@
.L1425:
	ldr	r3, [sp, #116]	@ MEM[(HI_S32 *)&ChanMemFlag + 8B], MEM[(HI_S32 *)&ChanMemFlag + 8B]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag + 8B],
	beq	.L1440	@,
.L1317:
	ldr	r3, [sp, #108]	@ MEM[(HI_S32 *)&ChanMemFlag], MEM[(HI_S32 *)&ChanMemFlag]
	cmp	r3, #1	@ MEM[(HI_S32 *)&ChanMemFlag],
	bne	.L1418	@,
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1418	@
.L1438:
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	bl	vfmw_dprint_nothing	@
	b	.L1304	@
.L1437:
	ldr	r1, [sp, #160]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].VirAddr
	ldr	r0, [sp, #156]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #156	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1330	@
.L1436:
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1329	@
.L1440:
	ldr	r1, [sp, #192]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].VirAddr
	ldr	r0, [sp, #188]	@, MEM[(struct MEM_DESC_S *)&ChanMemDetail + 32B].PhyAddr
	bl	MEM_ReleaseMemBlock	@
	add	r0, sp, #188	@,,
	ldmia	r0, {r0, r1, r2}	@,,,
	bl	MEM_DelMemRecord	@
	b	.L1317	@
.L1439:
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
	b	.L1418	@
.L1442:
	.align	2
.L1441:
	.word	.LANCHOR1
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LANCHOR0
	.word	g_FrameRate
	.word	g_LastFrameRate
	.word	s_DnrChan
	.word	s_SmIIS
	.word	s_pFspInst
	.word	CapItem
	.word	.LANCHOR1-3520
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
	bhi	.L1466	@,
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
	ldr	r2, .L1467	@ tmp198,
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
	b	.L1446	@
.L1448:
	.word	.L1456
	.word	.L1456
	.word	.L1456
	.word	.L1456
	.word	.L1456
	.word	.L1449
	.word	.L1449
	.word	.L1449
.L1456:
	mov	r0, #3	@ MinDispFspNum,
.L1447:
	rsb	r3, r1, ip	@ tmp162, tmp199, tmp200
	rsb	ip, r1, ip	@ tmp174, tmp199, tmp200
	add	r3, r2, r3	@ tmp163, tmp198, tmp162
	add	r2, r2, ip	@ tmp175, tmp198, tmp174
	mov	r1, #0	@ tmp178,
	str	r0, [sp, #116]	@ MinDispFspNum, stChanOption.s32DisplayFrameNum
	ldr	r3, [r3, #12]	@ D.40962, CapItem
	ldr	r2, [r2, #24]	@ tmp177, CapItem
	cmp	r0, r3	@ MinDispFspNum, D.40962
	str	r1, [sp, #120]	@ tmp178, stChanOption.s32SlotWidth
	rsblt	r3, r0, r3	@ D.40962, MinDispFspNum, D.40962
	str	r1, [sp, #124]	@ tmp178, stChanOption.s32SlotHeight
	movge	r3, #1	@ tmp165,
	str	r2, [sp, #112]	@ tmp177, stChanOption.s32SCDBufSize
	cmp	r4, #24	@ eCapLevel,
	str	r3, [sp, #88]	@ D.40962, stChanOption.s32MaxRefFrameNum
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
	bne	.L1466	@,
	cmp	r5, #0	@ pChanMem,
	beq	.L1457	@,
	ldr	ip, [r5, #8]	@ D.40962, pChanMem_40(D)->Length
	cmp	ip, #0	@ D.40962,
	beq	.L1454	@,
	ldr	r2, [r5]	@ D.40962, pChanMem_40(D)->PhyAddr
	cmp	r2, #0	@ D.40962,
	beq	.L1455	@,
	ldr	r1, [r5, #4]	@ D.40963, pChanMem_40(D)->VirAddr
	cmp	r1, #0	@ D.40963,
	beq	.L1455	@,
	ldr	r3, [sp]	@ VdmChanMemSize, VdmChanMemSize
	ldr	r0, [sp, #12]	@ ScdChanMemSize, ScdChanMemSize
	add	r3, r3, r0	@ D.40962, VdmChanMemSize, ScdChanMemSize
	cmp	ip, r3	@ D.40962, D.40962
	blt	.L1455	@,
	ldr	r5, [sp, #16]	@ D.40962, ScdChanMemSize
	add	r8, sp, #144	@ tmp191,,
	str	r2, [sp, #40]	@ D.40962, scd_MemRecord.PhyAddr
	add	lr, sp, #128	@ tmp193,,
	add	r9, r2, r5	@ D.40962, D.40962, D.40962
	add	r10, r1, r5	@ D.40963, D.40963, D.40962
	str	r5, [sp, #48]	@ D.40962, scd_MemRecord.Length
	rsb	r5, r5, ip	@ D.40962, D.40962, D.40962
	str	r1, [sp, #44]	@ D.40963, scd_MemRecord.VirAddr
	mov	ip, #1	@ OneChanMemFlag,
	ldmia	r7, {r0, r1, r2, r3}	@ tmp201,,,,
	mov	r7, #3	@ tmp187,
	str	r9, [sp, #24]	@ D.40962, vdh_MemRecord.PhyAddr
	str	r10, [sp, #28]	@ D.40963, vdh_MemRecord.VirAddr
	str	r5, [sp, #32]	@ D.40962, vdh_MemRecord.Length
	stmia	r8, {r0, r1, r2, r3}	@ tmp191,,,,
	ldmia	r6, {r0, r1, r2, r3}	@ tmp203,,,,
	str	r7, [sp, #64]	@ tmp187, stChanOption.MemAllocMode
	stmia	lr, {r0, r1, r2, r3}	@ tmp193,,,,
.L1454:
	mov	r3, ip	@, OneChanMemFlag
	add	r1, sp, #56	@ tmp212,,
	mov	r0, r4	@, eCapLevel
	mov	r2, #1	@,
	bl	VCTRL_CreateChanWithOption	@
	orr	r0, r0, r0, asr #31	@ D.40961,
.L1445:
	add	sp, sp, #208	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, pc}	@
.L1449:
	mov	r0, #1	@ MinDispFspNum,
	b	.L1447	@
.L1446:
	mov	r0, #6	@ MinDispFspNum,
	b	.L1447	@
.L1455:
	bl	vfmw_dprint_nothing	@
	bl	vfmw_dprint_nothing	@
.L1466:
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.40961,
	b	.L1445	@
.L1457:
	mov	ip, r5	@ OneChanMemFlag, pChanMem
	b	.L1454	@
.L1468:
	.align	2
.L1467:
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
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r5, r0	@ ChanID, ChanID
	.pad #112
	sub	sp, sp, #112	@,,
	ldr	r0, .L1492	@,
	bl	OSAL_SpinLockIRQ	@
	cmp	r5, #0	@ ChanID,
	bne	.L1472	@,
	ldr	r6, .L1492+4	@ tmp223,
	ldr	r4, [r6]	@ D.40968, s_pstVfmwChan
	cmp	r4, #0	@ D.40968,
	beq	.L1472	@,
	ldr	r3, [r4, #4]	@ _10->s32IsOpen, _10->s32IsOpen
	cmp	r3, #1	@ _10->s32IsOpen,
	bne	.L1472	@,
	ldr	r1, .L1492+8	@ tmp141,
	mov	r3, #30	@ tmp142,
	ldr	r2, .L1492+12	@ tmp143,
	ldr	r0, .L1492+16	@,
	str	r3, [r1]	@ tmp142, g_FrameRate
	str	r3, [r2]	@ tmp142, g_LastFrameRate
	bl	OSAL_SpinLockIRQ	@
	mov	r0, r5	@, ChanID
	bl	VCTRL_StopChan	@
	subs	r5, r0, #0	@ ret,
	ldr	r0, .L1492+16	@,
	bne	.L1490	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r5	@, ret
	bl	VCTRL_ResetChan	@
	ldr	r0, .L1492+16	@,
	bl	OSAL_SpinLockIRQ	@
	ldr	r2, [r6]	@ s_pstVfmwChan, s_pstVfmwChan
	ldr	r3, .L1492+20	@ tmp155,
	ldr	r2, [r2, #1604]	@ D.40969, _28->stSynExtraData.s32DnrEnable
	str	r2, [r3, #2964]	@ D.40969, s_DnrChan[0].s32DnrEnable
	ldr	r3, [r4, #880]	@ D.40970, _10->eVidStd
	cmp	r3, #4	@ D.40970,
	beq	.L1474	@,
	sub	r2, r3, #10	@ D.40971, D.40970,
	cmp	r2, #2	@ D.40971,
	bhi	.L1475	@,
	ldr	r2, [r6, #3584]	@ g_VdmCharacter, g_VdmCharacter
	tst	r2, #1	@ g_VdmCharacter,
	bne	.L1475	@,
.L1474:
	ldr	r3, [r6, #164]	@ D.40972, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.40972,
	beq	.L1476	@,
.L1491:
	add	r0, r4, #217088	@, D.40968,
	add	r0, r0, #432	@,,
	blx	r3	@ D.40972
.L1476:
	mov	r0, #0	@,
	mov	r4, #0	@ tmp213,
	bl	VCTRL_UnInstallChan	@
	ldr	r5, [r6]	@ D.40968, s_pstVfmwChan
	mov	r2, #16	@,
	add	r7, r5, #217088	@ tmp168, D.40968,
	add	r1, r5, #152	@, D.40968,
	ldr	lr, [r5, #224]	@ _39->s32SelfAllocChanMem_ctx, _39->s32SelfAllocChanMem_ctx
	ldr	ip, [r5, #216]	@ _39->s32SelfAllocChanMem_vdh, _39->s32SelfAllocChanMem_vdh
	ldr	r3, [r5, #220]	@ _39->s32SelfAllocChanMem_scd, _39->s32SelfAllocChanMem_scd
	ldr	r8, [r7, #400]	@ _39->s32SelfAllocChanMem_pmv, _39->s32SelfAllocChanMem_pmv
	add	r0, sp, #4	@ tmp224,,
	str	lr, [sp, #76]	@ _39->s32SelfAllocChanMem_ctx, ChanMem.s32SelfAllocChanMem_ctx
	str	ip, [sp, #68]	@ _39->s32SelfAllocChanMem_vdh, ChanMem.s32SelfAllocChanMem_vdh
	str	r3, [sp, #72]	@ _39->s32SelfAllocChanMem_scd, ChanMem.s32SelfAllocChanMem_scd
	str	r8, [sp, #80]	@ _39->s32SelfAllocChanMem_pmv, ChanMem.s32SelfAllocChanMem_pmv
	bl	memcpy	@
	add	r1, r5, #200	@, D.40968,
	mov	r2, #16	@,
	add	r0, sp, #52	@,,
	bl	memcpy	@
	add	r1, r5, #168	@, D.40968,
	mov	r2, #16	@,
	add	r0, sp, #20	@,,
	bl	memcpy	@
	add	r1, r5, #184	@, D.40968,
	mov	r2, #16	@,
	add	r0, sp, #36	@,,
	bl	memcpy	@
	add	r1, r5, #104	@, D.40968,
	mov	r2, #12	@,
	add	r0, sp, #84	@,,
	bl	memcpy	@
	add	r1, r7, #404	@, tmp168,
	mov	r2, #16	@,
	add	r0, sp, #96	@,,
	bl	memcpy	@
	ldr	r2, .L1492+24	@ tmp212,
	ldr	r3, .L1492+28	@ tmp214,
	mov	r0, r4	@, tmp213
	str	r4, [r6]	@ tmp213, s_pstVfmwChan
	str	r4, [r2, #116]	@ tmp213, s_SmIIS.pSmInstArray
	str	r4, [r3]	@ tmp213, s_pFspInst
	bl	VDMDRV_ClearChanIsDec	@
	mov	r0, r4	@, tmp213
	bl	VDMDRV_ResetVDH	@
	mov	r0, r4	@, tmp213
	bl	DNR_CloseChan	@
	ldr	r0, .L1492+16	@,
	bl	OSAL_SpinUnLockIRQ	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1492	@,
	bl	OSAL_SpinUnLockIRQ	@
	mov	r0, r4	@, tmp213
	add	r1, sp, #4	@ tmp225,,
	bl	VCTRL_FreeChanResource	@
	mov	r0, r4	@ D.40967, tmp213
.L1471:
	add	sp, sp, #112	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1475:
	cmp	r3, #14	@ D.40970,
	bne	.L1476	@,
	ldr	r3, [r6, #164]	@ D.40972, g_SdecFunc.pfun_iMediaSoftDEC_Destroy
	cmp	r3, #0	@ D.40972,
	bne	.L1491	@,
	b	.L1476	@
.L1472:
	bl	vfmw_dprint_nothing	@
	bl	VCTRL_EnableAllInt	@
	ldr	r0, .L1492	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.40967,
	add	sp, sp, #112	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L1490:
	bl	OSAL_SpinUnLockIRQ	@
	ldr	r0, .L1492	@,
	bl	OSAL_SpinUnLockIRQ	@
	mvn	r0, #0	@ D.40967,
	b	.L1471	@
.L1493:
	.align	2
.L1492:
	.word	.LANCHOR1-3520
	.word	.LANCHOR0
	.word	g_FrameRate
	.word	g_LastFrameRate
	.word	g_SpinLockIrq_Destroy
	.word	s_DnrChan+73728
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
	ldr	r3, .L1496	@ tmp113,
	mov	r2, #0	@ tmp116,
	add	r3, r3, r4, lsl #2	@ tmp114, tmp113, ChanID,
	str	r2, [r3, #3548]	@ tmp116, g_DSPState
	ldmfd	sp!, {r4, pc}	@
.L1497:
	.align	2
.L1496:
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
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, .L1515	@ tmp140,
	ldr	r3, [r5, #4]	@ s_VfmwCTrl.s32IsVCTRLOpen, s_VfmwCTrl.s32IsVCTRLOpen
	cmp	r3, #1	@ s_VfmwCTrl.s32IsVCTRLOpen,
	bne	.L1504	@,
	ldr	r3, [r5]	@ s_pstVfmwChan, s_pstVfmwChan
	cmp	r3, #0	@ s_pstVfmwChan,
	beq	.L1500	@,
	mov	r0, #0	@,
	bl	VCTRL_DestroyChanWithOption	@
	mov	r3, #0	@ tmp122,
	str	r3, [r5, #3548]	@ tmp122, g_DSPState
.L1500:
	bl	FSP_Exit	@
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r2, #3	@ tmp124,
	str	r2, [r5, #36]	@ tmp124, s_VfmwCTrl.eTaskCommand
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	beq	.L1502	@,
	mov	r0, #10	@,
	mov	r4, #49	@ D.41004,
	bl	msleep	@
	b	.L1503	@
.L1514:
	bl	msleep	@
	subs	r4, r4, #1	@ D.41004, D.41004,
	beq	.L1502	@,
.L1503:
	ldr	r3, [r5, #32]	@ s_VfmwCTrl.eTaskState, s_VfmwCTrl.eTaskState
	mov	r0, #10	@,
	cmp	r3, #0	@ s_VfmwCTrl.eTaskState,
	bne	.L1514	@,
.L1502:
	mov	r1, #4	@,
	ldr	r0, .L1515+4	@,
	mov	r4, #0	@ tmp128,
	str	r4, [r5, #36]	@ tmp128, s_VfmwCTrl.eTaskCommand
	bl	__memzero	@
	bl	DNR_Close	@
	ldr	r0, .L1515+8	@,
	bl	CloseDrivers	@
	str	r4, [r5, #4]	@ tmp128, s_VfmwCTrl.s32IsVCTRLOpen
	mov	r0, r4	@ D.41005, tmp128
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1504:
	mvn	r0, #0	@ D.41005,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1516:
	.align	2
.L1515:
	.word	.LANCHOR0
	.word	.LANCHOR0+3548
	.word	.LANCHOR0+52
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
	mov	r3, r2, asl #1	@ D.41046, Width,
	.pad #20
	sub	sp, sp, #20	@,,
	mov	r8, r1	@ ChromOfst, ChromOfst
	mov	r4, r2	@ Width, Width
	mul	r1, r10, r3	@, Height, D.41046
	str	r2, [sp, #8]	@ Width, %sfp
	ldr	r7, [sp, #56]	@ Stride, Stride
	ldr	r6, [sp, #60]	@ fp, fp
	bl	ioremap	@
	subs	r5, r0, #0	@ pLuma,
	beq	.L1517	@,
	mul	fp, r10, r4	@ D.41046, Height, Width
	add	r8, r5, r8	@ pChrom, pLuma, ChromOfst
	add	r3, fp, fp, lsr #31	@ tmp153, D.41046, D.41046,
	mov	r3, r3, asr #1	@ D.41046, tmp153,
	str	r3, [sp, #12]	@ D.41046, %sfp
	add	r0, r3, #1024	@, D.41046,
	bl	OSAL_AllocVirMem	@
	subs	r3, r0, #0	@ pUV,
	str	r3, [sp, #4]	@ pUV, %sfp
	beq	.L1519	@,
	cmp	fp, #0	@ D.41046,
	add	r9, fp, #3	@ tmp158, D.41046,
	movge	r9, fp	@ D.41046, D.41046
	cmp	r10, #0	@ Height,
	add	r9, r3, r9, asr #2	@ pV, pUV, D.41046,
	movgt	r4, #0	@ y,
	ble	.L1524	@,
.L1523:
	add	r4, r4, #1	@ y, y,
	mov	r2, r6	@, fp
	mov	r1, fp	@, D.41046
	mov	r0, r5	@, pLuma
	bl	klib_fwrite	@
	cmp	r4, r10	@ y, Height
	bne	.L1523	@,
.L1524:
	add	r10, r10, r10, lsr #31	@ tmp161, Height, Height,
	mov	r10, r10, asr #1	@ D.41046, tmp161,
	cmp	r10, #0	@ D.41046,
	ble	.L1522	@,
	ldr	r3, [sp, #8]	@ Width, %sfp
	mov	r0, #0	@ y,
	ldr	fp, [sp, #4]	@ pUV, %sfp
	add	r4, r3, r3, lsr #31	@ tmp164, Width, Width,
	mov	r2, r4, asr #1	@ D.41046, tmp164,
.L1525:
	cmp	r2, #0	@ D.41046,
	ble	.L1527	@,
	sub	ip, fp, #1	@ ivtmp.554, pUV,
	sub	r1, r9, #1	@ ivtmp.565, pV,
	add	r4, r8, r2	@ D.41051, pChrom, D.41046
	mov	r3, r8	@ ivtmp.551, pChrom
.L1526:
	ldrb	lr, [r3]	@ zero_extendqisi2	@ D.41050, MEM[base: _51, offset: 0B]
	strb	lr, [ip, #1]!	@ D.41050, MEM[base: _37, offset: 0B]
	ldrb	lr, [r3, #1]!	@ zero_extendqisi2	@ D.41050, MEM[base: _7, offset: 0B]
	cmp	r4, r3	@ D.41051, ivtmp.551
	strb	lr, [r1, #1]!	@ D.41050, MEM[base: _11, offset: 0B]
	bne	.L1526	@,
	add	fp, fp, r2	@ pUV, pUV, D.41046
	add	r9, r9, r2	@ pV, pV, D.41046
.L1527:
	add	r0, r0, #1	@ y, y,
	add	r8, r8, r7	@ pChrom, pChrom, Stride
	cmp	r0, r10	@ y, D.41046
	bne	.L1525	@,
.L1522:
	mov	r2, r6	@, fp
	ldr	r1, [sp, #12]	@, %sfp
	ldr	r0, [sp, #4]	@, %sfp
	bl	klib_fwrite	@
.L1519:
	mov	r0, r5	@, pLuma
	bl	iounmap	@
	ldr	r3, [sp, #4]	@ pUV, %sfp
	cmp	r3, #0	@ pUV,
	beq	.L1517	@,
	ldr	r0, [sp, #4]	@, %sfp
	add	sp, sp, #20	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, r10, fp, lr}	@
	b	OSAL_FreeVirMem	@
.L1517:
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
	cmp	r0, #0	@ ChanID,
	bne	.L1546	@,
	ldr	r3, .L1547	@ tmp114,
	ldr	r3, [r3]	@ D.41057, s_pstVfmwChan
	cmp	r3, #0	@ D.41057,
	ldrne	r0, [r3, #676]	@ D.41056, _6->s32LastFrameIdPlus2
	mvneq	r0, #0	@ D.41056,
	bx	lr	@
.L1546:
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	bl	vfmw_dprint_nothing	@
	mvn	r0, #0	@ D.41056,
	ldmfd	sp!, {r4, pc}	@
.L1548:
	.align	2
.L1547:
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
	cmp	r0, #0	@ ChanID,
	bne	.L1555	@,
	ldr	r3, .L1556	@ tmp113,
	ldr	r3, [r3]	@ D.41060, s_pstVfmwChan
	cmp	r3, #0	@ D.41060,
	strne	r1, [r3, #676]	@ Value, _5->s32LastFrameIdPlus2
	bx	lr	@
.L1555:
	b	vfmw_dprint_nothing	@
.L1557:
	.align	2
.L1556:
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
	ldr	r6, .L1584	@ tmp147,
	.pad #8
	sub	sp, sp, #8	@,,
	ldr	r3, [r6, r0, asl #2]	@ D.41066, s_pstVfmwChan
	add	r0, r3, #217088	@ tmp128, D.41066,
	ldr	r2, [r0, #424]	@ D.41067, _8->stSynCtx.eVidStd
	cmp	r2, #0	@ D.41067,
	beq	.L1560	@,
	cmp	r2, #3	@ D.41067,
	mvnne	r4, #0	@ ret,
	beq	.L1581	@,
.L1559:
	add	r3, r4, #1	@ tmp134, ret,
	cmp	r3, #1	@ tmp134,
	bhi	.L1562	@,
.L1582:
	ldr	r3, .L1584+4	@ tmp135,
	ldr	r3, [r3, #-3544]	@ D.41070, g_event_report
	cmp	r3, #0	@ D.41070,
	beq	.L1564	@,
	add	r2, sp, #8	@ tmp137,,
	mov	ip, #1	@ tmp136,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	ip, [r2, #-4]!	@ tmp136, para
	blx	r3	@ D.41070
.L1564:
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1581:
	add	r0, r0, #432	@, tmp128,
	bl	MPEG2DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	add	r3, r4, #1	@ tmp134, ret,
	cmp	r3, #1	@ tmp134,
	bls	.L1582	@,
.L1562:
	ldr	r3, .L1584+8	@ tmp138,
	ldr	r3, [r3]	@ D.41072, g_chipID
	cmp	r3, #16	@ D.41072,
	bhi	.L1564	@,
	mov	r1, #1	@ tmp139,
	movw	r2, #32831	@ tmp140,
	mov	r3, r1, asl r3	@ D.41065, tmp139,
	bfi	r2, r1, #16, #16	@ tmp140, tmp139,,
	tst	r3, r2	@ D.41065, tmp140
	bne	.L1565	@,
	tst	r3, #3904	@ D.41065,
	beq	.L1564	@,
	ldr	r3, .L1584+4	@ tmp144,
	ldr	r3, [r3, #-3544]	@ D.41070, g_event_report
	cmp	r3, #0	@ D.41070,
	beq	.L1568	@,
	add	r2, sp, #8	@ tmp145,,
	mov	r0, r5	@, ChanId
	mov	r1, #115	@,
	str	r4, [r2, #-4]!	@ ret, para
	blx	r3	@ D.41070
	b	.L1568	@
.L1560:
	add	r0, r0, #432	@, tmp128,
	bl	H264DEC_GetRemainImg	@
	mov	r4, r0	@ ret,
	b	.L1559	@
.L1565:
	cmp	r5, #0	@ ChanId,
	bne	.L1583	@,
	ldr	r3, [r6]	@ D.41066, s_pstVfmwChan
	cmp	r3, #0	@ D.41066,
	strne	r4, [r3, #676]	@ ret, _34->s32LastFrameIdPlus2
.L1568:
	bl	vfmw_dprint_nothing	@
	mov	r0, r4	@, ret
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1583:
	bl	vfmw_dprint_nothing	@
	b	.L1568	@
.L1585:
	.align	2
.L1584:
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
	ldr	r6, .L1597	@ tmp123,
	ldr	ip, [r6, r0, asl #2]	@ D.41087, s_pstVfmwChan
	cmp	ip, #0	@ D.41087,
	beq	.L1594	@,
	ldr	r5, [ip, #880]	@ VidStd, _4->eVidStd
	mov	r3, r2	@ pLumaInfo, pLumaInfo
	mov	r4, r0	@ ChanId, ChanId
	cmp	r5, #0	@ VidStd,
	beq	.L1589	@,
	cmp	r5, #3	@ VidStd,
	bne	.L1586	@,
	add	r0, ip, #217088	@, D.41087,
	add	r0, r0, #432	@,,
	bl	MPEG2DEC_VDMPostProc	@
	ldr	r3, [r6, r4, asl #2]	@ D.41087, s_pstVfmwChan
	add	r2, r3, #290816	@ tmp146, D.41087,
	ldrb	r2, [r2, #417]	@ zero_extendqisi2	@ _18->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag, _18->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _18->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag,
	beq	.L1595	@,
.L1592:
	add	r3, r3, #217088	@ tmp156, D.41087,
	mov	r2, #0	@ tmp157,
	str	r2, [r3, #436]	@ tmp157, _11->stSynCtx.unSyntax.stMpeg2Ctx.pMp2DecParam
.L1586:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1589:
	add	r0, ip, #217088	@, D.41087,
	mov	r2, #1	@,
	str	r5, [sp]	@ VidStd,
	add	r0, r0, #432	@,,
	bl	H264DEC_VDMPostProc	@
	ldr	r3, [r6, r4, asl #2]	@ D.41087, s_pstVfmwChan
	add	r2, r3, #229376	@ tmp130, D.41087,
	ldrb	r2, [r2, #1700]	@ zero_extendqisi2	@ _13->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag, _13->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	cmp	r2, #1	@ _13->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag,
	beq	.L1596	@,
.L1591:
	add	r3, r3, #217088	@ tmp140, D.41087,
	mov	r2, #0	@ tmp141,
	str	r2, [r3, #792]	@ tmp141, _32->stSynCtx.unSyntax.stH264Ctx.pH264DecParam
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L1595:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp149, s_pstVfmwChan
	mov	r1, #0	@ tmp152,
	add	r2, r3, #290816	@ tmp151, tmp149,
	strb	r1, [r2, #417]	@ tmp152, _20->stSynCtx.unSyntax.stMpeg2Ctx.IsStreamEndFlag
	b	.L1592	@
.L1594:
	add	sp, sp, #8	@,,
	@ sp needed	@
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	vfmw_dprint_nothing	@
.L1596:
	mov	r0, r4	@, ChanId
	bl	VCTRL_OutputLastFrame	@
	ldr	r3, [r6, r4, asl #2]	@ tmp133, s_pstVfmwChan
	add	r2, r3, #229376	@ tmp135, tmp133,
	strb	r5, [r2, #1700]	@ VidStd, _15->stSynCtx.unSyntax.stH264Ctx.IsStreamEndFlag
	b	.L1591	@
.L1598:
	.align	2
.L1597:
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
	subs	ip, r0, #0	@ ChanId, ChanId
	bne	.L1601	@,
	ldr	r3, .L1608	@ tmp116,
	ldr	r3, [r3]	@ D.41093, s_pstVfmwChan
	cmp	r3, #0	@ D.41093,
	beq	.L1601	@,
	ldr	r3, [r3, #8]	@ _5->s32IsRun, _5->s32IsRun
	cmp	r3, #1	@ _5->s32IsRun,
	beq	.L1607	@,
.L1601:
	b	vfmw_dprint_nothing	@
.L1607:
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r6, r2	@ pLumaInfo, pLumaInfo
	mov	r5, r1	@ ErrRatio, ErrRatio
	mov	r4, ip	@ ChanId, ChanId
	bl	VCTRL_GetDecParam	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	mov	r2, r6	@, pLumaInfo
	mov	r1, r5	@, ErrRatio
	mov	r0, r4	@, ChanId
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	VCTRL_PostProc	@
.L1609:
	.align	2
.L1608:
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
	ldr	r3, .L1617	@ tmp114,
	ldr	ip, [r3, #-3544]	@ D.41098, g_event_report
	cmp	ip, #0	@ D.41098,
	bxeq	lr	@
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.pad #12
	sub	sp, sp, #12	@,,
	add	r2, sp, #8	@ tmp116,,
	add	r3, r1, #2	@ D.41099, LastFrameID,
	mov	r1, #115	@,
	str	r3, [r2, #-4]!	@ D.41099, para
	blx	ip	@ D.41098
	add	sp, sp, #12	@,,
	@ sp needed	@
	ldr	pc, [sp], #4	@
.L1618:
	.align	2
.L1617:
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
	ldr	r3, .L1620	@ tmp111,
	mov	r2, #1	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3496]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1621:
	.align	2
.L1620:
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
	ldr	r3, .L1623	@ tmp111,
	mov	r2, #0	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp112, tmp111, ChanID,
	str	r2, [r0, #-3496]	@ tmp114, g_EsBufValidFlag
	bx	lr	@
.L1624:
	.align	2
.L1623:
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
	ldr	r3, .L1626	@ tmp114,
	add	r0, r3, r0, lsl #2	@ tmp115, tmp114, ChanID,
	ldr	r0, [r0, #-3496]	@, g_EsBufValidFlag
	bx	lr	@
.L1627:
	.align	2
.L1626:
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
	b	.L1629	@
.L1631:
	.word	.L1630
	.word	.L1632
	.word	.L1633
	.word	.L1634
	.word	.L1635
	.word	.L1636
	.word	.L1637
.L1637:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #1	@ eYuvFormat,
	movne	r0, #7	@ eYuvFormat,
	bx	lr	@
.L1630:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #0	@ eYuvFormat,
	movne	r0, #6	@ eYuvFormat,
	bx	lr	@
.L1632:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #2	@ eYuvFormat,
	movne	r0, #8	@ eYuvFormat,
	bx	lr	@
.L1633:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #4	@ eYuvFormat,
	movne	r0, #10	@ eYuvFormat,
	bx	lr	@
.L1634:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #3	@ eYuvFormat,
	movne	r0, #9	@ eYuvFormat,
	bx	lr	@
.L1635:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #5	@ eYuvFormat,
	movne	r0, #11	@ eYuvFormat,
	bx	lr	@
.L1636:
	cmp	r0, #1	@ SemiPlanarFlag,
	moveq	r0, #13	@ eYuvFormat,
	movne	r0, #12	@ eYuvFormat,
	bx	lr	@
.L1629:
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
	.size	s_pstVfmwChan, 4
s_pstVfmwChan:
	.space	4
	.type	s_VfmwCTrl, %object
	.size	s_VfmwCTrl, 152
s_VfmwCTrl:
	.space	152
	.type	g_scd_vir, %object
	.size	g_scd_vir, 4
g_scd_vir:
	.space	4
	.type	g_SdecFunc, %object
	.size	g_SdecFunc, 28
g_SdecFunc:
	.space	28
	.type	LastEventTime.35778, %object
	.size	LastEventTime.35778, 4
LastEventTime.35778:
	.space	4
	.type	g_IntEvent, %object
	.size	g_IntEvent, 12
g_IntEvent:
	.space	12
	.type	FspInstInfo.35909, %object
	.size	FspInstInfo.35909, 3340
FspInstInfo.35909:
	.space	3340
	.type	PrioArray.36130, %object
	.size	PrioArray.36130, 4
PrioArray.36130:
	.space	4
	.type	g_DSPState, %object
	.size	g_DSPState, 4
g_DSPState:
	.space	4
	.type	g_VfmwChanStat, %object
	.size	g_VfmwChanStat, 24
g_VfmwChanStat:
	.space	24
	.type	g_ResetCreateNewSave, %object
	.size	g_ResetCreateNewSave, 4
g_ResetCreateNewSave:
	.space	4
	.type	PrioArray.36139, %object
	.size	PrioArray.36139, 4
PrioArray.36139:
	.space	4
	.type	g_VdmCharacter, %object
	.size	g_VdmCharacter, 4
g_VdmCharacter:
	.space	4
	.type	PrioArray.36239, %object
	.size	PrioArray.36239, 4
PrioArray.36239:
	.space	4
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
	.size	g_ChanTick, 4
g_ChanTick:
	.space	4
	.type	g_event_report, %object
	.size	g_event_report, 4
g_event_report:
	.space	4
	.type	last_rec_pos_time.36685, %object
	.size	last_rec_pos_time.36685, 4
last_rec_pos_time.36685:
	.space	4
	.type	last_rec_pos_report_time.36686, %object
	.size	last_rec_pos_report_time.36686, 4
last_rec_pos_report_time.36686:
	.space	4
	.type	last_rec_pos_decparam_time.36687, %object
	.size	last_rec_pos_decparam_time.36687, 4
last_rec_pos_decparam_time.36687:
	.space	4
	.type	ChanPriTab.36635, %object
	.size	ChanPriTab.36635, 4
ChanPriTab.36635:
	.space	4
	.type	g_SleepTime, %object
	.size	g_SleepTime, 4
g_SleepTime:
	.space	4
	.type	g_TaskLock, %object
	.size	g_TaskLock, 8
g_TaskLock:
	.space	8
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
	.size	g_EsBufValidFlag, 4
g_EsBufValidFlag:
	.space	4
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
