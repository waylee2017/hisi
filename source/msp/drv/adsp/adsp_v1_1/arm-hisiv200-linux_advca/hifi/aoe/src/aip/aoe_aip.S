	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"aoe_aip.c"
@ GNU C (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) version 4.4.1 (arm-hisiv200-linux-gnueabi)
@	compiled by GNU C version 4.1.1 20061011 (Red Hat 4.1.1-30), GMP version 4.3.1, MPFR version 2.4.2.
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -nostdinc -I./arch/arm/include
@ -Iarch/arm/include/generated -Iinclude -I./arch/arm/include/uapi
@ -Iarch/arm/include/generated/uapi -I./include/uapi
@ -Iinclude/generated/uapi -Iarch/arm/mach-hi3716mv310/include
@ -I./../../../source/common/include -I./../../../source/common/api/include
@ -I./../../../source/common/drv/include -I./../../../source/msp/include
@ -I./../../../source/msp/api/include -I./../../../source/msp/drv/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/hifi/external/avc/inc
@ -I./../../../source/component/ha_codec/include -I
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/include/comp
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/common/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/include
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iapcm_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1/./hifi/component/codec/iamp3_dec
@ -I./../../../source/msp/drv/adsp/adsp_v1_1 -iprefix
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/
@ -isysroot /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../target
@ -D__KERNEL__ -D__LINUX_ARM_ARCH__=7 -Uarm -DCHIP_TYPE_hi3716mv310
@ -DSDK_VERSION=HiSTBLinuxV100R006C00SPC050 -DHI_LOG_SUPPORT=0
@ -DHI_PROC_SUPPORT=0 -DHI_PNG_DECODER_SUPPORT -DHI_KEYLED_SUPPORT
@ -DHI_HDCP_SUPPORT -DHI_SCI_SUPPORT -DHI_GPIOI2C_SUPPORT
@ -DHI_IR_S2_SUPPORT -DHI_DSC_SUPPORT -DHI_ADVCA_SUPPORT
@ -DHI_ADVCA_TYPE_CONAX -DHI_ADVCA_FUNCTION_RELEASE
@ -DHI_SND_AOE_SWSIMULATE_SUPPORT -DINTERLEAVED_OUTPUT -DHI_SND_AVC_SUPPORT
@ -DMODULE -DKBUILD_STR(s)=#s -DKBUILD_BASENAME=KBUILD_STR(aoe_aip)
@ -DKBUILD_MODNAME=KBUILD_STR(hi_adsp) -isystem
@ /opt/hisi-linux/x86-arm/arm-hisiv200-linux/bin/../lib/gcc/arm-hisiv200-linux-gnueabi/4.4.1/include
@ -include ./include/linux/kconfig.h -MD
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aip/.aoe_aip.o.d
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aip/aoe_aip.c
@ -mlittle-endian -mabi=aapcs-linux -mno-thumb-interwork -mfpu=vfp -marm
@ -march=armv7-a -msoft-float -auxbase-strip
@ /home/f00136911/v1r4/615/work/source/msp/drv/adsp/adsp_v1_1/./hifi/aoe/src/aip/aoe_aip.o
@ -O2 -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
@ -Werror-implicit-function-declaration -Wno-format-security
@ -Wframe-larger-than=1024 -Wdeclaration-after-statement -Wno-pointer-sign
@ -Werror=implicit-int -Werror=strict-prototypes -std=gnu89
@ -fno-strict-aliasing -fno-common -fno-dwarf2-cfi-asm -funwind-tables
@ -fno-delete-null-pointer-checks -fstack-protector -fomit-frame-pointer
@ -fno-strict-overflow -fconserve-stack -fverbose-asm
@ options enabled:  -falign-loops -fargument-alias -fauto-inc-dec
@ -fbranch-count-reg -fcaller-saves -fcprop-registers -fcrossjumping
@ -fcse-follow-jumps -fdefer-pop -fearly-inlining
@ -feliminate-unused-debug-types -fexpensive-optimizations
@ -fforward-propagate -ffunction-cse -fgcse -fgcse-lm
@ -fguess-branch-probability -fident -fif-conversion -fif-conversion2
@ -findirect-inlining -finline -finline-functions-called-once
@ -finline-small-functions -fipa-cp -fipa-pure-const -fipa-reference
@ -fira-share-save-slots -fira-share-spill-slots -fivopts
@ -fkeep-static-consts -fleading-underscore -fmath-errno -fmerge-constants
@ -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
@ -foptimize-register-move -foptimize-sibling-calls -fpeephole -fpeephole2
@ -fpromote-loop-indices -freg-struct-return -fregmove -frename-registers
@ -freorder-blocks -freorder-functions -frerun-cse-after-loop
@ -fsched-interblock -fsched-spec -fsched-stalled-insns-dep
@ -fschedule-insns -fschedule-insns2 -fsection-anchors -fsigned-zeros
@ -fsplit-ivs-in-unroller -fsplit-wide-types -fstack-protector
@ -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-builtin-call-dce
@ -ftree-ccp -ftree-ch -ftree-copy-prop -ftree-copyrename -ftree-cselim
@ -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-fre -ftree-loop-im
@ -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
@ -ftree-pre -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-sra
@ -ftree-switch-conversion -ftree-ter -ftree-vect-loop-version -ftree-vrp
@ -funit-at-a-time -funroll-loops -funwind-tables -fverbose-asm -fweb
@ -fzero-initialized-in-bss -mglibc -mlittle-endian -msched-prolog

@ Compiler executable checksum: fa59e0bd179ef45b3a3c3e6f3383fdac

	.text
	.align	2
	.global	AIPGetCunrStatus
	.type	AIPGetCunrStatus, %function
AIPGetCunrStatus:
	.fnstart
.LFB1024:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp138, Id,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [r1, r0, asl #2]	@ state, g_stAipRm.hAip
	cmp	r3, #0	@ state,
	moveq	r0, #3	@ D.15647,
	ldrne	r0, [r3, #208]	@ D.15647, <variable>.CurStatus
	bx	lr	@
	.fnend
	.size	AIPGetCunrStatus, .-AIPGetCunrStatus
	.align	2
	.global	AIPRouteResampler
	.type	AIPRouteResampler, %function
AIPRouteResampler:
	.fnstart
.LFB1025:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #32000	@ u32InSampleRate,
	beq	.L6	@,
	bhi	.L8	@,
	movw	r3, #12000	@ tmp136,
	cmp	r0, r3	@ u32InSampleRate, tmp136
.L6:
	mov	r0, #1	@ tmp149,
	str	r0, [r1, #0]	@ tmp149,* pu32Resampler
	mov	r0, #0	@,
	bx	lr	@
.L8:
	mov	r0, #1	@ tmp149,
	str	r0, [r1, #0]	@ tmp149,* pu32Resampler
	mov	r0, #0	@,
	bx	lr	@
	.fnend
	.size	AIPRouteResampler, .-AIPRouteResampler
	.align	2
	.global	AIPIsChnAttrChange
	.type	AIPIsChnAttrChange, %function
AIPIsChnAttrChange:
	.fnstart
.LFB1042:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #8	@ tmp164, Id,
	movw	r3, #:lower16:.LANCHOR0	@ tmp162,
	movt	r3, #:upper16:.LANCHOR0	@ tmp162,
	stmfd	sp!, {r4, r5, r6, r7}	@,
	.save {r4, r5, r6, r7}
	ldr	r2, [r3, r2, asl #2]	@ state, g_stAipRm.hAip
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r6, [r2, #124]	@ D.16057, <variable>.stBackRegs.AIP_BUFF_ATTR.u32
	ldr	ip, [r3, #0]	@ D.16058, <variable>.AIP_BUFF_ATTR.u32
	ldr	r7, [r2, #136]	@ D.16060, <variable>.stBackRegs.AIP_SRC_ATTR_EXT.u32
	ldr	r0, [r3, #12]	@ D.16061, <variable>.AIP_SRC_ATTR_EXT.u32
	subs	r4, r6, ip	@ tmp168, D.16057, D.16058
	movne	r4, #1	@ tmp168
	ldr	ip, [r2, #140]	@ D.16063, <variable>.stBackRegs.AIP_BUF_ADDR
	ldr	r5, [r3, #16]	@ D.16064, <variable>.AIP_BUF_ADDR
	cmp	r7, r0	@ D.16060, D.16061
	moveq	r1, r4	@, isChange, tmp168
	addne	r1, r4, #1	@,, isChange, tmp168
	ldr	r7, [r2, #144]	@ D.16066, <variable>.stBackRegs.AIP_BUF_SIZE.u32
	cmp	ip, r5	@ D.16063, D.16064
	moveq	r4, r1	@, isChange.432, isChange
	addne	r4, r1, #1	@,, isChange.432, isChange
	ldr	r6, [r3, #20]	@ D.16067, <variable>.AIP_BUF_SIZE.u32
	ldr	r0, [r2, #128]	@ tmp173,
	ldr	r1, [r3, #4]	@ tmp175,
	cmp	r7, r6	@ D.16066, D.16067
	moveq	ip, r4	@, isChange.433, isChange.432
	addne	ip, r4, #1	@,, isChange.433, isChange.432
	and	r5, r0, #3	@ D.16069, tmp173,
	ldr	r7, [r2, #128]	@ tmp179,
	and	r1, r1, #3	@ D.16070, tmp175,
	ldr	r4, [r3, #4]	@ tmp181,
	cmp	r5, r1	@ D.16069, D.16070
	moveq	r0, ip	@, isChange.434, isChange.433
	addne	r0, ip, #1	@,, isChange.434, isChange.433
	ldr	r6, [r2, #128]	@ tmp185,
	ldr	r1, [r3, #4]	@ tmp187,
	ubfx	r7, r7, #2, #2	@ D.16072, tmp179,,
	ldr	ip, [r2, #128]	@ tmp191,
	ubfx	r5, r4, #2, #2	@ D.16073, tmp181,,
	ldr	r4, [r3, #4]	@ tmp193,
	cmp	r7, r5	@ D.16072, D.16073
	moveq	r5, r0	@, isChange.435, isChange.434
	addne	r5, r0, #1	@,, isChange.435, isChange.434
	ubfx	r6, r6, #4, #4	@ D.16075, tmp185,,
	ldr	r0, [r2, #128]	@ tmp197,
	ubfx	r1, r1, #4, #4	@ D.16076, tmp187,,
	ldr	r2, [r3, #4]	@ tmp199,
	cmp	r6, r1	@ D.16075, D.16076
	moveq	r1, r5	@, isChange.436, isChange.435
	addne	r1, r5, #1	@,, isChange.436, isChange.435
	ubfx	ip, ip, #8, #2	@ D.16078, tmp191,,
	ubfx	r3, r4, #8, #2	@ D.16079, tmp193,,
	ubfx	r2, r2, #10, #6	@ D.16082, tmp199,,
	cmp	ip, r3	@ D.16078, D.16079
	moveq	r3, r1	@, isChange.437, isChange.436
	addne	r3, r1, #1	@,, isChange.437, isChange.436
	ubfx	r0, r0, #10, #6	@ D.16081, tmp197,,
	cmp	r0, r2	@ D.16081, D.16082
	moveq	r0, r3	@,, isChange.437
	addne	r0, r3, #1	@,,, isChange.437
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
	.fnend
	.size	AIPIsChnAttrChange, .-AIPIsChnAttrChange
	.align	2
	.global	AIPGetChnCmd
	.type	AIPGetChnCmd, %function
AIPGetChnCmd:
	.fnstart
.LFB1053:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp140,
	movt	r3, #:upper16:.LANCHOR0	@ tmp140,
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16335,
	tst	r2, #8	@ D.16335,
	movne	r0, #4	@ eNewCmd,
	bne	.L18	@,
	ldr	r0, [r3, #8]	@ tmp142,
	and	r0, r0, #3	@ D.16339, tmp142,
	cmp	r0, #2	@ D.16339,
	beq	.L18	@,
	cmp	r0, #3	@ D.16339,
	beq	.L18	@,
	cmp	r0, #1	@ D.16339,
	movne	r0, #0	@, eNewCmd,
.L18:
	str	r0, [r1, #0]	@ eNewCmd,* newcmd
	bx	lr	@
	.fnend
	.size	AIPGetChnCmd, .-AIPGetChnCmd
	.align	2
	.global	AIPAckChnCmd
	.type	AIPAckChnCmd, %function
AIPAckChnCmd:
	.fnstart
.LFB1054:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16348,
	tst	r2, #8	@ D.16348,
	bxne	lr	@
	ldr	ip, [r3, #8]	@ tmp142,
	bfi	ip, r1, #4, #4	@ tmp142, Ack,,
	str	ip, [r3, #8]	@ tmp142,
	ldr	r1, [r3, #8]	@ tmp143,
	orr	r0, r1, #8	@ tmp145, tmp143,
	str	r0, [r3, #8]	@ tmp145,
	bx	lr	@
	.fnend
	.size	AIPAckChnCmd, .-AIPAckChnCmd
	.align	2
	.global	AIPUpdateChnState
	.type	AIPUpdateChnState, %function
AIPUpdateChnState:
	.fnstart
.LFB1060:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #8	@ tmp144, Id,
	movw	r2, #:lower16:.LANCHOR0	@ tmp142,
	movt	r2, #:upper16:.LANCHOR0	@ tmp142,
	ldr	r3, [r2, r3, asl #2]	@ state, g_stAipRm.hAip
	ldr	r2, [r2, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r3, #0	@ state,
	bxeq	lr	@
	mov	r1, #0	@ tmp145,
	str	r1, [r3, #212]	@ tmp145, <variable>.stGain.bLinearMode
	ldrb	ip, [r2, #36]	@ zero_extendqisi2	@ <variable>.AIP_EXT_CTRL.bits.volume_l, <variable>.AIP_EXT_CTRL.bits.volume_l
	strh	ip, [r3, #216]	@ movhi	@ <variable>.AIP_EXT_CTRL.bits.volume_l, <variable>.stGain.u16LGain
	ldrb	r0, [r2, #37]	@ zero_extendqisi2	@ <variable>.AIP_EXT_CTRL.bits.volume_r, <variable>.AIP_EXT_CTRL.bits.volume_r
	strh	r0, [r3, #218]	@ movhi	@ <variable>.AIP_EXT_CTRL.bits.volume_r, <variable>.stGain.u16RGain
	ldr	r1, [r2, #8]	@ D.16441,
	tst	r1, #1610612736	@ D.16441,
	beq	.L31	@,
	ldr	r1, [r2, #8]	@ D.16448,
	and	ip, r1, #1610612736	@ tmp153, D.16448,
	cmp	ip, #536870912	@ tmp153,
	ldreq	r2, [r2, #8]	@ tmp154,
	ubfxeq	r2, r2, #24, #5	@ D.16452, tmp154,,
	rsbeq	r2, r2, #0	@ tmp156, D.16452
	streq	r2, [r3, #244]	@ tmp156, <variable>.s32UserSpeedAdjust
	bx	lr	@
.L31:
	ldr	r0, [r2, #8]	@ tmp151,
	ubfx	r2, r0, #24, #5	@ D.16445, tmp151,,
	str	r2, [r3, #244]	@ D.16445, <variable>.s32UserSpeedAdjust
	bx	lr	@
	.fnend
	.size	AIPUpdateChnState, .-AIPUpdateChnState
	.align	2
	.global	AIP_GetChnStatus
	.type	AIP_GetChnStatus, %function
AIP_GetChnStatus:
	.fnstart
.LFB1068:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp138, Id,
	movw	ip, #:lower16:.LANCHOR0	@ tmp137,
	movt	ip, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r3, [ip, r0, asl #2]	@ D.16531, g_stAipRm.hAip
	cmp	r3, #0	@ D.16531,
	streq	r3, [r1, #0]	@ D.16531, <variable>.CurnStatus
	ldrne	r2, [r3, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	strne	r2, [r1, #0]	@ <variable>.CurStatus, <variable>.CurnStatus
	ldrne	r3, [r3, #28]	@ <variable>.stAttr.Priority, <variable>.stAttr.Priority
	strne	r3, [r1, #4]	@ <variable>.stAttr.Priority, <variable>.Priority
	bx	lr	@
	.fnend
	.size	AIP_GetChnStatus, .-AIP_GetChnStatus
	.align	2
	.global	AIP_UnderFlowCalc
	.type	AIP_UnderFlowCalc, %function
AIP_UnderFlowCalc:
	.fnstart
.LFB1074:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	ip, r0, #8	@ tmp139, Id,
	movw	r1, #:lower16:.LANCHOR0	@ tmp137,
	movt	r1, #:upper16:.LANCHOR0	@ tmp137,
	ldr	r2, [r1, ip, asl #2]	@ tmp140, g_stAipRm.hAip
	ldr	r3, [r1, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	cmp	r2, #0	@ tmp140,
	ldrneh	r2, [r3, #54]	@ <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	addne	r2, r2, #1	@ tmp143, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt,
	uxthne	r2, r2	@ D.16633, tmp143
	strneh	r2, [r3, #54]	@ movhi	@ D.16633, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	bx	lr	@
	.fnend
	.size	AIP_UnderFlowCalc, .-AIP_UnderFlowCalc
	.align	2
	.global	AIPFlushUnderFlowCalc
	.type	AIPFlushUnderFlowCalc, %function
AIPFlushUnderFlowCalc:
	.fnstart
.LFB1075:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r1, #:lower16:.LANCHOR0	@ tmp135,
	movt	r1, #:upper16:.LANCHOR0	@ tmp135,
	mov	r2, #0	@ movhi	@,
	ldr	r3, [r1, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	strh	r2, [r3, #54]	@ movhi	@, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	bx	lr	@
	.fnend
	.size	AIPFlushUnderFlowCalc, .-AIPFlushUnderFlowCalc
	.align	2
	.global	AIP_QueryFiFoBusy
	.type	AIP_QueryFiFoBusy, %function
AIP_QueryFiFoBusy:
	.fnstart
.LFB1072:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #8	@ tmp139, Id,
	movw	r3, #:lower16:.LANCHOR0	@ tmp138,
	movt	r3, #:upper16:.LANCHOR0	@ tmp138,
	ldr	r3, [r3, r0, asl #2]	@ state, g_stAipRm.hAip
	cmp	r3, #0	@ state,
	beq	.L42	@,
	ldr	r0, [r3, #192]	@ D.16597, <variable>.hRingOut
	cmp	r0, #0	@ D.16597,
	bne	.L44	@,
.L42:
	mov	r0, #0	@,
	bx	lr	@
.L44:
	b	RBUF_QueryBusy	@
	.fnend
	.size	AIP_QueryFiFoBusy, .-AIP_QueryFiFoBusy
	.align	2
	.global	AIP_ReadFiFoComplete
	.type	AIP_ReadFiFoComplete, %function
AIP_ReadFiFoComplete:
	.fnstart
.LFB1073:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r0, #8	@ tmp142, Id,
	movw	r5, #:lower16:.LANCHOR0	@ tmp141,
	movt	r5, #:upper16:.LANCHOR0	@ tmp141,
	mov	r6, r0	@ Id, Id
	ldr	r4, [r5, r3, asl #2]	@ D.16611, g_stAipRm.hAip
	cmp	r4, #0	@ D.16611,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	bl	RBUF_ReadDataComplete	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	ldr	r5, [r5, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	bl	RBUF_QueryBusy	@
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	ldr	r2, [r4, #76]	@, <variable>.stAttr.u32OutSampleRate
	bl	UTIL_LatencyMs	@
	ldr	r1, [r5, #4]	@ tmp150,
	bfi	r1, r0, #16, #6	@ tmp150,,,
	str	r1, [r5, #4]	@ tmp150,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIP_ReadFiFoComplete, .-AIP_ReadFiFoComplete
	.align	2
	.global	AIPSwResetReg
	.type	AIPSwResetReg, %function
AIPSwResetReg:
	.fnstart
.LFB1064:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r1, #64	@,
	mov	r4, r0	@ pAipReg, pAipReg
	bl	__memzero	@
	ldr	ip, [r4, #8]	@ tmp134,
	mov	r2, #121	@ tmp137,
	orr	r1, ip, #8	@ tmp139, tmp134,
	str	r1, [r4, #8]	@ tmp139,
	ldr	r0, [r4, #8]	@ tmp136,
	bfi	r0, r2, #8, #7	@ tmp136, tmp137,,
	str	r0, [r4, #8]	@ tmp136,
	ldr	r3, [r4, #0]	@ tmp138,* pAipReg
	bfc	r3, #10, #1	@ tmp138,,
	str	r3, [r4, #0]	@ tmp138,* pAipReg
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPSwResetReg, .-AIPSwResetReg
	.align	2
	.global	AIP_Init
	.type	AIP_Init, %function
AIP_Init:
	.fnstart
.LFB1065:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp142,
	movt	r4, #:upper16:.LANCHOR0	@ tmp142,
	mov	r6, r0	@ u32AipRegBase, u32AipRegBase
	mov	r5, #0	@ tmp144,
	str	r0, [r4, #0]	@ u32AipRegBase, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r0, r6, #64	@ temp.674, u32AipRegBase,
	str	r5, [r4, #32]	@ tmp144, g_stAipRm.hAip
	str	r0, [r4, #4]	@ temp.674, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r3, r6, #128	@ temp.676, u32AipRegBase,
	str	r5, [r4, #36]	@ tmp144, g_stAipRm.hAip
	str	r3, [r4, #8]	@ temp.676, g_stAipRm.hwAipReg
	mov	r0, r3	@, temp.676
	bl	AIPSwResetReg	@
	add	ip, r6, #192	@ temp.678, u32AipRegBase,
	str	r5, [r4, #40]	@ tmp144, g_stAipRm.hAip
	mov	r0, ip	@, temp.678
	str	ip, [r4, #12]	@ temp.678, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r2, r6, #256	@ temp.680, u32AipRegBase,
	str	r5, [r4, #44]	@ tmp144, g_stAipRm.hAip
	mov	r0, r2	@, temp.680
	str	r2, [r4, #16]	@ temp.680, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r1, r6, #320	@ temp.682, u32AipRegBase,
	str	r5, [r4, #48]	@ tmp144, g_stAipRm.hAip
	mov	r0, r1	@, temp.682
	str	r1, [r4, #20]	@ temp.682, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	add	r3, r6, #384	@ temp.684, u32AipRegBase,
	add	r6, r6, #448	@ D.16507, u32AipRegBase,
	str	r3, [r4, #24]	@ temp.684, g_stAipRm.hwAipReg
	mov	r0, r3	@, temp.684
	str	r5, [r4, #52]	@ tmp144, g_stAipRm.hAip
	bl	AIPSwResetReg	@
	mov	r0, r6	@, D.16507
	str	r5, [r4, #56]	@ tmp144, g_stAipRm.hAip
	str	r6, [r4, #28]	@ D.16507, g_stAipRm.hwAipReg
	bl	AIPSwResetReg	@
	str	r5, [r4, #60]	@ tmp144, g_stAipRm.hAip
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIP_Init, .-AIP_Init
	.align	2
	.global	AIP_QueryFiFoInfo
	.type	AIP_QueryFiFoInfo, %function
AIP_QueryFiFoInfo:
	.fnstart
.LFB1071:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #8	@ tmp137, Id,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	mov	r0, r1	@ pstBufInfo, pstBufInfo
	ldr	r3, [r3, r2, asl #2]	@ D.16580, g_stAipRm.hAip
	cmp	r3, #0	@ D.16580,
	beq	.L55	@,
	ldr	r0, [r3, #192]	@, <variable>.hRingOut
	b	RBUF_QueryInfo	@
.L55:
	mov	r1, #36	@,
	b	__memzero	@
	.fnend
	.size	AIP_QueryFiFoInfo, .-AIP_QueryFiFoInfo
	.align	2
	.global	AIP_ReadFiFoData
	.type	AIP_ReadFiFoData, %function
AIP_ReadFiFoData:
	.fnstart
.LFB1070:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp144,
	add	r3, r0, #8	@ tmp145, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp144,
	mov	r6, r0	@ Id, Id
	ldr	r5, [r4, r3, asl #2]	@ D.16557, g_stAipRm.hAip
	cmp	r5, #0	@ D.16557,
	moveq	r7, r5	@ ReadBytes, D.16557
	beq	.L58	@,
	ldr	r0, [r5, #192]	@, <variable>.hRingOut
	bl	RBUF_ReadData	@
	ldr	r4, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	mov	r7, r0	@ ReadBytes,
	ldr	r0, [r5, #192]	@, <variable>.hRingOut
	bl	RBUF_QueryBusy	@
	ldr	r1, [r5, #1024]	@, <variable>.OutFrameSize
	ldr	r2, [r5, #76]	@, <variable>.stAttr.u32OutSampleRate
	bl	UTIL_LatencyMs	@
	ldr	r1, [r4, #4]	@ tmp153,
	bfi	r1, r0, #16, #6	@ tmp153,,,
	str	r1, [r4, #4]	@ tmp153,
.L58:
	mov	r0, r7	@, ReadBytes
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AIP_ReadFiFoData, .-AIP_ReadFiFoData
	.align	2
	.global	AIP_GetChnAttr
	.type	AIP_GetChnAttr, %function
AIP_GetChnAttr:
	.fnstart
.LFB1069:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r2, r0, #8	@ tmp137, Id,
	movw	r3, #:lower16:.LANCHOR0	@ tmp136,
	movt	r3, #:upper16:.LANCHOR0	@ tmp136,
	ldr	r3, [r3, r2, asl #2]	@ D.16542, g_stAipRm.hAip
	cmp	r3, #0	@ D.16542,
	bxeq	lr	@
	mov	r0, r1	@, pstAttr
	mov	r2, #124	@,
	mov	r1, r3	@, D.16542
	b	memcpy	@
	.fnend
	.size	AIP_GetChnAttr, .-AIP_GetChnAttr
	.align	2
	.global	AIPSpeedAdjProc
	.type	AIPSpeedAdjProc, %function
AIPSpeedAdjProc:
	.fnstart
.LFB1052:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	mov	r7, r0	@ state, state
	ldr	r0, [r0, #196]	@ D.16306, <variable>.hADJ
	mov	r4, r1	@ pstFrame, pstFrame
	cmp	r0, #0	@ D.16306,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	bl	LSRC_CheckDoSRC	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldr	r6, [r4, #12]	@ uPcmSamplesPerFrame, <variable>.u32SamplesPerFrame
	bl	AOE_GetWKBuf	@
	ldr	r1, [r4, #0]	@, <variable>.pDataBuf
	mov	r3, r6	@, uPcmSamplesPerFrame
	mov	r5, r0	@ D.16313,
	ldr	r0, [r7, #196]	@, <variable>.hADJ
	mov	r2, r5	@, D.16313
	bl	LSRC_ProcessFrame	@
	ldr	r1, [r4, #16]	@, <variable>.u32BitPerSample
	str	r5, [r4, #0]	@ D.16313, <variable>.pDataBuf
	str	r0, [r4, #12]	@, <variable>.u32SamplesPerFrame
	ldr	r0, [r4, #20]	@, <variable>.u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	mul	r3, r1, r0	@ tmp147, <variable>.u32SamplesPerFrame,
	str	r3, [r4, #8]	@ tmp147, <variable>.u32DataBytes
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AIPSpeedAdjProc, .-AIPSpeedAdjProc
	.align	2
	.global	AIPCalcOutLatencyThdSize
	.type	AIPCalcOutLatencyThdSize, %function
AIPCalcOutLatencyThdSize:
	.fnstart
.LFB1030:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, state
	ldr	r1, [r4, #68]	@, <variable>.stAttr.u32OutBitPerSample
	ldr	r0, [r0, #72]	@, <variable>.stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #76]	@ <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutSampleRate
	ldr	ip, [r4, #84]	@ <variable>.stAttr.u32OutLatencyThdMs, <variable>.stAttr.u32OutLatencyThdMs
	movw	r3, #:lower16:274877907	@ tmp145,
	movt	r3, #:upper16:274877907	@ tmp145,
	mul	r2, r1, ip	@ tmp139, <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutLatencyThdMs
	umull	r1, ip, r3, r2	@, tmp143, tmp145, tmp139
	mov	r3, ip, lsr #6	@ tmp142, tmp143,
	mul	r0, r3, r0	@, tmp142,
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPCalcOutLatencyThdSize, .-AIPCalcOutLatencyThdSize
	.align	2
	.global	AIPCalcProcBlockSize
	.type	AIPCalcProcBlockSize, %function
AIPCalcProcBlockSize:
	.fnstart
.LFB1029:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, state
	ldr	r1, [r4, #68]	@, <variable>.stAttr.u32OutBitPerSample
	ldr	r0, [r0, #72]	@, <variable>.stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #76]	@ <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutSampleRate
	movw	r2, #:lower16:274877907	@ tmp145,
	movt	r2, #:upper16:274877907	@ tmp145,
	add	r3, r1, r1, asl #2	@, tmp143, <variable>.stAttr.u32OutSampleRate, <variable>.stAttr.u32OutSampleRate,
	umull	r1, ip, r2, r3	@, tmp144, tmp145, tmp143
	mov	r3, ip, lsr #6	@ samples, tmp144,
	tst	r3, #3	@ samples,
	addne	r3, r3, #3	@ tmp147, samples,
	movne	r3, r3, lsr #2	@ D.15726, tmp147,
	movne	r3, r3, asl #2	@ samples, D.15726,
	mul	r0, r0, r3	@, framesize, samples
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPCalcProcBlockSize, .-AIPCalcProcBlockSize
	.align	2
	.global	AIPResamplePcmData
	.type	AIPResamplePcmData, %function
AIPResamplePcmData:
	.fnstart
.LFB1051:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #16
	sub	sp, sp, #16	@,,
	mov	r5, r0	@ state, state
	mov	r4, r1	@ pstFrame, pstFrame
	bl	AOE_GetWKBuf	@
	mov	r6, r0	@ pu32ResampeOutBuf,
	ldr	r0, [r5, #200]	@ D.16282, <variable>.hSRC
	ldr	r5, [r5, #76]	@ outRate, <variable>.stAttr.u32OutSampleRate
	cmp	r0, #0	@ D.16282,
	beq	.L73	@,
	ldr	ip, [r4, #24]	@ <variable>.u32SampleRate, <variable>.u32SampleRate
	mov	r2, r6	@, pu32ResampeOutBuf
	ldr	r1, [r4, #0]	@ <variable>.pDataBuf, <variable>.pDataBuf
	mov	lr, #1	@ tmp145,
	ldr	r3, [r4, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	stmib	sp, {r5, lr}	@ phole stm
	str	ip, [sp, #0]	@ <variable>.u32SampleRate,
	bl	ResamplerProcessFrame	@
.L73:
	str	r0, [r4, #12]	@ prephitmp.840, <variable>.u32SamplesPerFrame
	ldr	r1, [r4, #16]	@, <variable>.u32BitPerSample
	str	r6, [r4, #0]	@ pu32ResampeOutBuf, <variable>.pDataBuf
	str	r5, [r4, #24]	@ outRate, <variable>.u32SampleRate
	ldr	r0, [r4, #20]	@, <variable>.u32Channels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r4, #12]	@ <variable>.u32SamplesPerFrame, <variable>.u32SamplesPerFrame
	mul	r3, r1, r0	@ tmp149, <variable>.u32SamplesPerFrame,
	str	r3, [r4, #8]	@ tmp149, <variable>.u32DataBytes
	add	sp, sp, #16	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	AIPResamplePcmData, .-AIPResamplePcmData
	.align	2
	.global	AIPFadePcmData
	.type	AIPFadePcmData, %function
AIPFadePcmData:
	.fnstart
.LFB1050:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r5, r0	@ state, state
	ldr	r0, [r0, #204]	@ D.16265, <variable>.hFADE
	mov	r4, r1	@ pstFrame, pstFrame
	cmp	r0, #0	@ D.16265,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	ldr	r2, [r4, #16]	@, <variable>.u32BitPerSample
	ldr	r1, [r1, #24]	@, <variable>.u32SampleRate
	ldr	r3, [r4, #20]	@, <variable>.u32Channels
	bl	FADE_Flush	@
	ldr	r0, [r5, #204]	@, <variable>.hFADE
	ldr	r2, [r4, #12]	@, <variable>.u32SamplesPerFrame
	ldr	r1, [r4, #0]	@, <variable>.pDataBuf
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	FADE_InProcess	@
	.fnend
	.size	AIPFadePcmData, .-AIPFadePcmData
	.align	2
	.global	AIPWriteMuteFrame
	.type	AIPWriteMuteFrame, %function
AIPWriteMuteFrame:
	.fnstart
.LFB1049:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r0, #1024]	@ <variable>.OutFrameSize, <variable>.OutFrameSize
	ldr	r3, [r0, #1020]	@ <variable>.OutBlockSize, <variable>.OutBlockSize
	mov	r4, r0	@ state, state
	add	r5, r5, r3	@ u32Size, <variable>.OutFrameSize, <variable>.OutBlockSize
	bl	AOE_GetWKBuf	@
	cmp	r5, #0	@ u32Size,
	mov	r6, r0	@ u8Data,
	bne	.L82	@,
	ldr	r0, [r4, #192]	@ D.16255, <variable>.hRingOut
	cmp	r0, #0	@ D.16255,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L83:
	bl	RBUF_QueryFree	@
	cmp	r5, r0	@ u32Size,
	ldmcsfd	sp!, {r4, r5, r6, pc}	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	mov	r1, r6	@, u8Data
	mov	r2, r5	@, u32Size
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	RBUF_WriteData	@
.L82:
	mov	r1, r5	@, u32Size
	bl	__memzero	@
	ldr	r0, [r4, #192]	@ D.16255, <variable>.hRingOut
	cmp	r0, #0	@ D.16255,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	b	.L83	@
	.fnend
	.size	AIPWriteMuteFrame, .-AIPWriteMuteFrame
	.global	__aeabi_uidiv
	.align	2
	.global	AIPDmaFrame2FiFo
	.type	AIPDmaFrame2FiFo, %function
AIPDmaFrame2FiFo:
	.fnstart
.LFB1034:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	ldr	r3, [r0, #1024]	@ <variable>.OutFrameSize, <variable>.OutFrameSize
	ldr	r2, [r0, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	mov	r4, r0	@ state, state
	mov	r7, r1	@ pstFrame, pstFrame
	ldr	r6, [r0, #1020]	@ block_size, <variable>.OutBlockSize
	mul	r3, r2, r3	@ left_size, <variable>.OutputLeftSamples, <variable>.OutFrameSize
	cmp	r3, #0	@ left_size,
	bne	.L93	@,
.L85:
	cmp	r6, #0	@ block_size,
	moveq	r5, r6	@ block_size.924, block_size
	beq	.L87	@,
	ldr	r5, [r7, #8]	@ block_size.924, <variable>.u32DataBytes
	cmp	r6, r5	@ block_size, block_size.924
	movls	r5, r6	@ block_size.924, block_size
	bhi	.L94	@,
.L89:
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	mov	r2, r5	@, block_size.924
	ldr	r1, [r7, #0]	@, <variable>.pDataBuf
	bl	RBUF_WriteData	@
.L87:
	ldr	r6, [r7, #8]	@ <variable>.u32DataBytes, <variable>.u32DataBytes
	subs	r6, r6, r5	@ left_size.926, <variable>.u32DataBytes, block_size.924
	bne	.L95	@,
	mov	r0, r6	@, left_size.926
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	str	r0, [r4, #248]	@, <variable>.OutputLeftSamples
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L95:
	ldr	r1, [r7, #0]	@ <variable>.pDataBuf, <variable>.pDataBuf
	mov	r2, r6	@, left_size.926
	add	r0, r4, #252	@, state,
	add	r1, r5, r1	@, block_size.924, <variable>.pDataBuf
	bl	memcpy	@
	mov	r0, r6	@, left_size.926
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	str	r0, [r4, #248]	@, <variable>.OutputLeftSamples
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L94:
	cmp	r5, #0	@ block_size.924,
	moveq	r6, r5	@ left_size.926, block_size.924
	bne	.L89	@,
	mov	r0, r6	@, left_size.926
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	str	r0, [r4, #248]	@, <variable>.OutputLeftSamples
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L93:
	add	r1, r4, #252	@, state,
	mov	r2, r3	@, left_size
	ldr	r0, [r0, #192]	@, <variable>.hRingOut
	rsb	r6, r3, r6	@ block_size, left_size, block_size
	bl	RBUF_WriteData	@
	b	.L85	@
	.fnend
	.size	AIPDmaFrame2FiFo, .-AIPDmaFrame2FiFo
	.align	2
	.global	AIPFlushChnFifo
	.type	AIPFlushChnFifo, %function
AIPFlushChnFifo:
	.fnstart
.LFB1047:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #192]	@ D.16221, <variable>.hRingOut
	cmp	r0, #0	@ D.16221,
	bxeq	lr	@
	b	RBUF_Flush	@
	.fnend
	.size	AIPFlushChnFifo, .-AIPFlushChnFifo
	.align	2
	.global	AIPFlushChnRufIn
	.type	AIPFlushChnRufIn, %function
AIPFlushChnRufIn:
	.fnstart
.LFB1046:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #188]	@ D.16215, <variable>.hRingIn
	cmp	r0, #0	@ D.16215,
	bxeq	lr	@
	b	RBUF_Flush	@
	.fnend
	.size	AIPFlushChnRufIn, .-AIPFlushChnRufIn
	.align	2
	.global	AIPFlushChnCtx
	.type	AIPFlushChnCtx, %function
AIPFlushChnCtx:
	.fnstart
.LFB1045:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r4, r0	@ state, state
	ldr	r0, [r0, #200]	@ D.16197, <variable>.hSRC
	.pad #40
	sub	sp, sp, #40	@,,
	cmp	r0, #0	@ D.16197,
	bne	.L108	@,
.L103:
	ldr	r0, [r4, #196]	@ D.16200, <variable>.hADJ
	cmp	r0, #0	@ D.16200,
	bne	.L109	@,
.L104:
	ldr	r0, [r4, #204]	@ D.16203, <variable>.hFADE
	mov	r3, #0	@ tmp138,
	str	r3, [r4, #248]	@ tmp138, <variable>.OutputLeftSamples
	cmp	r0, r3	@ D.16203,
	bne	.L110	@,
.L105:
	ldr	r0, [r4, #1036]	@ <variable>.bAlsa, <variable>.bAlsa
	cmp	r0, #0	@ <variable>.bAlsa,
	beq	.L106	@,
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	add	r1, sp, #4	@,,
	bl	RBUF_QueryInfo	@
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	ldr	r1, [sp, #24]	@, stRbfFiFoInfo.u32TotalDataSize
	bl	RBUF_ReadDataComplete	@
.L106:
	ldr	r3, [r4, #1040]	@ <variable>.Id, <variable>.Id
	movw	ip, #:lower16:.LANCHOR0	@ tmp144,
	movt	ip, #:upper16:.LANCHOR0	@ tmp144,
	mov	r2, #0	@ movhi	@,
	ldr	r1, [ip, r3, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	strh	r2, [r1, #54]	@ movhi	@, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_underflow_cnt
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, pc}
.L110:
	mov	r1, #1	@,
	mov	r2, #8	@,
	bl	FADE_Active	@
	b	.L105	@
.L109:
	bl	LSRC_Flush	@
	b	.L104	@
.L108:
	bl	ResampleFlush	@
	b	.L103	@
	.fnend
	.size	AIPFlushChnCtx, .-AIPFlushChnCtx
	.align	2
	.global	AIPFlushChn
	.type	AIPFlushChn, %function
AIPFlushChn:
	.fnstart
.LFB1048:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	tst	r1, #1	@ type,
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	mov	r4, r1	@ type, type
	mov	r5, r0	@ state, state
	bne	.L116	@,
.L112:
	tst	r4, #2	@ type,
	bne	.L117	@,
	tst	r4, #4	@ type,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L118:
	mov	r0, r5	@, state
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AIPFlushChnFifo	@
.L117:
	mov	r0, r5	@, state
	bl	AIPFlushChnRufIn	@
	tst	r4, #4	@ type,
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
	b	.L118	@
.L116:
	bl	AIPFlushChnCtx	@
	b	.L112	@
	.fnend
	.size	AIPFlushChn, .-AIPFlushChn
	.align	2
	.global	AIPDestroyChn
	.type	AIPDestroyChn, %function
AIPDestroyChn:
	.fnstart
.LFB1044:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	subs	r4, r0, #0	@ inst, inst
	ldmeqfd	sp!, {r4, pc}	@
	ldr	r0, [r4, #188]	@ D.16178, <variable>.hRingIn
	mov	r3, #0	@ tmp140,
	str	r3, [r4, #208]	@ tmp140, <variable>.CurStatus
	cmp	r0, r3	@ D.16178,
	bne	.L127	@,
	ldr	r0, [r4, #192]	@ D.16181, <variable>.hRingOut
	cmp	r0, #0	@ D.16181,
	bne	.L128	@,
.L122:
	ldr	r0, [r4, #204]	@ D.16184, <variable>.hFADE
	cmp	r0, #0	@ D.16184,
	bne	.L129	@,
.L123:
	ldr	r0, [r4, #196]	@ D.16187, <variable>.hADJ
	cmp	r0, #0	@ D.16187,
	bne	.L130	@,
.L124:
	ldr	r0, [r4, #200]	@ D.16190, <variable>.hSRC
	cmp	r0, #0	@ D.16190,
	bne	.L131	@,
.L125:
	mov	r1, r4	@, inst
	mov	r0, #17	@,
	ldmfd	sp!, {r4, lr}	@
	b	HI_ADSP_FREE	@
.L131:
	bl	ResamplerFree	@
	b	.L125	@
.L127:
	bl	RBUF_Destroy	@
	ldr	r0, [r4, #192]	@ D.16181, <variable>.hRingOut
	cmp	r0, #0	@ D.16181,
	beq	.L122	@,
.L128:
	bl	RBUF_Destroy	@
	ldr	r0, [r4, #204]	@ D.16184, <variable>.hFADE
	cmp	r0, #0	@ D.16184,
	beq	.L123	@,
.L129:
	bl	FADE_Destroy	@
	ldr	r0, [r4, #196]	@ D.16187, <variable>.hADJ
	cmp	r0, #0	@ D.16187,
	beq	.L124	@,
.L130:
	bl	LSRC_Destroy	@
	ldr	r0, [r4, #200]	@ D.16190, <variable>.hSRC
	cmp	r0, #0	@ D.16190,
	beq	.L125	@,
	b	.L131	@
	.fnend
	.size	AIPDestroyChn, .-AIPDestroyChn
	.align	2
	.global	AIP_DeInit
	.type	AIP_DeInit, %function
AIP_DeInit:
	.fnstart
.LFB1066:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp133,
	movt	r4, #:upper16:.LANCHOR0	@ tmp133,
	mov	r5, #0	@ tmp136,
	ldr	r0, [r4, #32]	@, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #36]	@, g_stAipRm.hAip
	str	r5, [r4, #32]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #40]	@, g_stAipRm.hAip
	str	r5, [r4, #36]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #44]	@, g_stAipRm.hAip
	str	r5, [r4, #40]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #48]	@, g_stAipRm.hAip
	str	r5, [r4, #44]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #52]	@, g_stAipRm.hAip
	str	r5, [r4, #48]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #56]	@, g_stAipRm.hAip
	str	r5, [r4, #52]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	ldr	r0, [r4, #60]	@, g_stAipRm.hAip
	str	r5, [r4, #56]	@ tmp136, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	str	r5, [r4, #60]	@ tmp136, g_stAipRm.hAip
	ldmfd	sp!, {r3, r4, r5, pc}	@
	.fnend
	.size	AIP_DeInit, .-AIP_DeInit
	.align	2
	.global	AIPGetRbfInAttr
	.type	AIPGetRbfInAttr, %function
AIPGetRbfInAttr:
	.fnstart
.LFB1040:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	movw	r3, #:lower16:.LANCHOR0	@ tmp159,
	movt	r3, #:upper16:.LANCHOR0	@ tmp159,
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	add	r0, r1, #8	@, pstChnAttr,
	ldr	r1, [r5, #0]	@ tmp160,* pAipReg
	and	r1, r1, #3	@, tmp160,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L141	@,
.L135:
	mvn	r0, #0	@ D.15983,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L141:
	ldr	r2, [r5, #0]	@ tmp163,* pAipReg
	add	r0, r4, #12	@, pstChnAttr,
	ubfx	r1, r2, #2, #2	@, tmp163,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L135	@,
	ldr	ip, [r5, #0]	@ tmp166,* pAipReg
	add	r0, r4, #16	@, pstChnAttr,
	ubfx	r1, ip, #4, #4	@, tmp166,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	beq	.L136	@,
	ldr	lr, [r5, #0]	@ D.15996,* pAipReg
	and	r0, lr, #240	@ tmp169, D.15996,
	cmp	r0, #240	@ tmp169,
	beq	.L142	@,
.L136:
	ldr	r1, [r5, #0]	@ tmp176,* pAipReg
	add	r0, r4, #20	@, pstChnAttr,
	ubfx	r1, r1, #8, #2	@, tmp176,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L135	@,
	ldr	ip, [r5, #0]	@ tmp179,* pAipReg
	ldr	r1, [r4, #8]	@, <variable>.u32InBitPerSample
	ubfx	lr, ip, #11, #1	@ D.16017, tmp179,,
	ldr	r0, [r4, #12]	@, <variable>.u32InChannels
	str	lr, [r4, #28]	@ D.16017, <variable>.Priority
	bl	UTIL_CalcFrameSize	@
	mov	ip, r0	@ u32FrameSize,
	mov	r0, #1	@ tmp183,
	str	r0, [r4, #32]	@ tmp183, <variable>.stRbfInAttr.bExtMem
	ldr	r1, [r5, #16]	@ D.16020, <variable>.AIP_BUF_ADDR
	str	r1, [r4, #36]	@ D.16020, <variable>.stRbfInAttr.uBufAddr
	ldr	r2, [r5, #20]	@ tmp184,
	ubfx	r3, r2, #0, #24	@ D.16021, tmp184,,
	str	r3, [r4, #40]	@ D.16021, <variable>.stRbfInAttr.uBufSize
	ldr	r0, [r5, #20]	@ D.16023,
	mov	r3, #0	@ tmp188,
	ldr	r1, [r4, #40]	@ <variable>.stRbfInAttr.uBufSize, <variable>.stRbfInAttr.uBufSize
	tst	r0, #16777216	@ D.16023,
	addeq	r0, r5, #24	@ D.16030, pAipReg,
	streq	r0, [r4, #44]	@ D.16030, <variable>.stRbfInAttr.uBufWptr
	ldrne	r0, [r5, #24]	@ D.16027, <variable>.AIP_BUF_WPTR
	addeq	r0, r5, #28	@ D.16032, pAipReg,
	strne	r0, [r4, #44]	@ D.16027, <variable>.stRbfInAttr.uBufWptr
	ldrne	r0, [r5, #28]	@ D.16028, <variable>.AIP_BUF_RPTR
	str	r0, [r4, #48]	@ D.16032, <variable>.stRbfInAttr.uBufRptr
	mov	r0, r3	@ D.15983, tmp188
	ldr	r2, [r5, #20]	@ tmp186,
	str	ip, [r4, #56]	@ u32FrameSize, <variable>.stRbfInAttr.uFrameSize
	str	r1, [r4, #60]	@ <variable>.stRbfInAttr.uBufSize, <variable>.stRbfInAttr.uLatencySize
	ubfx	ip, r2, #24, #1	@ D.16034, tmp186,,
	mov	r1, #16	@ tmp190,
	mov	r2, #8	@ tmp191,
	str	r1, [r4, #0]	@ tmp190, <variable>.u32FadeinMs
	str	ip, [r4, #52]	@ D.16034, <variable>.stRbfInAttr.uBufFlag
	str	r2, [r4, #4]	@ tmp191, <variable>.u32FadeoutMs
	str	r3, [r4, #24]	@ tmp188, <variable>.u32InPeriondSize
	str	r3, [r4, #64]	@ tmp188, <variable>.stRbfInAttr.uLatencyMs
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L142:
	ldr	ip, [r5, #12]	@ tmp170,
	movw	r3, #:lower16:188000	@ tmp173,
	movt	r3, #:upper16:188000	@ tmp173,
	ubfx	r2, ip, #0, #24	@ D.16000, tmp170,,
	str	r2, [r4, #16]	@ D.16000, <variable>.u32InSampleRate
	sub	r1, r2, #4000	@ tmp171, D.16000,
	cmp	r1, r3	@ tmp171, tmp173
	bhi	.L135	@,
	ldr	r0, [r4, #12]	@ <variable>.u32InChannels, <variable>.u32InChannels
	cmp	r0, #2	@ <variable>.u32InChannels,
	bhi	.L135	@,
	ldr	lr, [r4, #8]	@ <variable>.u32InBitPerSample, <variable>.u32InBitPerSample
	cmp	lr, #16	@ <variable>.u32InBitPerSample,
	bne	.L135	@,
	b	.L136	@
	.fnend
	.size	AIPGetRbfInAttr, .-AIPGetRbfInAttr
	.align	2
	.global	AIPGetRbfFiFoAttr
	.type	AIPGetRbfFiFoAttr, %function
AIPGetRbfFiFoAttr:
	.fnstart
.LFB1039:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #:lower16:.LANCHOR0	@ tmp152,
	movt	r3, #:upper16:.LANCHOR0	@ tmp152,
	stmfd	sp!, {r4, r5, r6, r7, lr}	@,
	.save {r4, r5, r6, r7, lr}
	ldr	r5, [r3, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	add	r0, r1, #68	@, pstChnAttr,
	.pad #12
	sub	sp, sp, #12	@,,
	ldr	r1, [r5, #4]	@ tmp153,
	and	r1, r1, #3	@, tmp153,
	bl	AOE_REG_ReadBitDepth	@
	cmp	r0, #0	@,
	beq	.L147	@,
.L144:
	mvn	r0, #0	@ D.15935,
.L145:
	add	sp, sp, #12	@,,
	ldmfd	sp!, {r4, r5, r6, r7, pc}
.L147:
	ldr	r2, [r5, #4]	@ tmp156,
	add	r0, r4, #72	@, pstChnAttr,
	ubfx	r1, r2, #2, #2	@, tmp156,,
	bl	AOE_REG_ReadChannel	@
	cmp	r0, #0	@,
	bne	.L144	@,
	ldr	ip, [r5, #4]	@ tmp159,
	add	r0, r4, #76	@, pstChnAttr,
	ubfx	r1, ip, #4, #4	@, tmp159,,
	bl	AOE_REG_ReadSampelRate	@
	cmp	r0, #0	@,
	bne	.L144	@,
	ldr	lr, [r5, #4]	@ tmp162,
	add	r0, r4, #80	@, pstChnAttr,
	ubfx	r1, lr, #8, #2	@, tmp162,,
	bl	AOE_REG_ReadDataFormat	@
	cmp	r0, #0	@,
	bne	.L144	@,
	ldr	r6, [r5, #4]	@ tmp165,
	add	r0, sp, #4	@,,
	ubfx	r1, r6, #10, #6	@, tmp165,,
	bl	AOE_REG_ReadBufLatencyMs	@
	subs	r6, r0, #0	@ D.15956,
	bne	.L144	@,
	ldr	r1, [r4, #68]	@, <variable>.u32OutBitPerSample
	ldr	r0, [r4, #72]	@, <variable>.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r2, [r4, #76]	@, <variable>.u32OutSampleRate
	mov	r1, r0	@, u32FrameSize
	mov	r7, r0	@ u32FrameSize,
	ldr	r0, [sp, #4]	@, uLatencyMs
	bl	UTIL_LatencyMs2ByteSize	@
	ldr	r3, [sp, #4]	@ uLatencyMs, uLatencyMs
	add	r1, r5, #60	@ D.15967, pAipReg,
	str	r7, [r4, #112]	@ u32FrameSize, <variable>.stRbfOutAttr.uFrameSize
	add	r5, r5, #56	@ D.15965, pAipReg,
	str	r1, [r4, #104]	@ D.15967, <variable>.stRbfOutAttr.uBufRptr
	str	r3, [r4, #84]	@ uLatencyMs, <variable>.u32OutLatencyThdMs
	str	r5, [r4, #100]	@ D.15965, <variable>.stRbfOutAttr.uBufWptr
	str	r6, [r4, #88]	@ D.15956, <variable>.stRbfOutAttr.bExtMem
	str	r6, [r4, #108]	@ D.15956, <variable>.stRbfOutAttr.uBufFlag
	str	r3, [r4, #120]	@ uLatencyMs, <variable>.stRbfOutAttr.uLatencyMs
	mov	r2, r0	@ uLatencySize,
	mov	r0, r6	@ D.15935, D.15956
	str	r2, [r4, #116]	@ uLatencySize, <variable>.stRbfOutAttr.uLatencySize
	str	r2, [r4, #96]	@ uLatencySize, <variable>.stRbfOutAttr.uBufSize
	b	.L145	@
	.fnend
	.size	AIPGetRbfFiFoAttr, .-AIPGetRbfFiFoAttr
	.align	2
	.global	AIPGetChnCreateAttr
	.type	AIPGetChnCreateAttr, %function
AIPGetChnCreateAttr:
	.fnstart
.LFB1041:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}	@,
	.save {r3, r4, r5, lr}
	mov	r5, r0	@ Id, Id
	mov	r4, r1	@ pstChnAttr, pstChnAttr
	bl	AIPGetRbfInAttr	@
	cmp	r0, #0	@,
	beq	.L152	@,
.L149:
	mvn	r0, #0	@ D.16045,
	ldmfd	sp!, {r3, r4, r5, pc}	@
.L152:
	mov	r0, r5	@, Id
	mov	r1, r4	@, pstChnAttr
	bl	AIPGetRbfFiFoAttr	@
	cmp	r0, #0	@ Ret.1151
	ldmeqfd	sp!, {r3, r4, r5, pc}	@
	b	.L149	@
	.fnend
	.size	AIPGetChnCreateAttr, .-AIPGetChnCreateAttr
	.align	2
	.global	AIPCreateChn
	.type	AIPCreateChn, %function
AIPCreateChn:
	.fnstart
.LFB1043:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}	@,
	.save {r4, r5, r6, r7, r8, r9, sl, lr}
	.pad #184
	sub	sp, sp, #184	@,,
	add	r7, sp, #8	@ tmp221,,
	movw	r4, #:lower16:.LANCHOR0	@ tmp222,
	movt	r4, #:upper16:.LANCHOR0	@ tmp222,
	mov	r6, #0	@ tmp156,
	mov	r1, r7	@, tmp221
	mov	r5, r0	@ Id, Id
	str	r6, [sp, #180]	@ tmp156, hADJ
	str	r6, [sp, #176]	@ tmp156, hFade
	str	r6, [sp, #172]	@ tmp156, hRingIn
	str	r6, [sp, #168]	@ tmp156, hRingOut
	ldr	r8, [r4, r0, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	bl	AIPGetChnCreateAttr	@
	cmp	r0, r6	@,
	beq	.L154	@,
.L163:
	mov	r0, r6	@ D.16107, state
.L155:
	add	sp, sp, #184	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L154:
	mov	r0, #17	@,
	movw	r1, #1048	@,
	bl	HI_ADSP_MALLOC	@
	subs	r6, r0, #0	@ state,
	beq	.L156	@,
	movw	r1, #1048	@,
	bl	__memzero	@
	mov	r0, r6	@, state
	mov	r1, r7	@, tmp221
	mov	r2, #124	@,
	bl	memcpy	@
	str	r5, [r6, #1040]	@ Id, <variable>.Id
	ldr	sl, [r8, #0]	@ D.16116,* pAipReg
	ands	sl, sl, #1024	@ tmp166, D.16116,
	bne	.L164	@,
	ldr	r9, [r8, #20]	@ D.16122,
	ands	r9, r9, #16777216	@ tmp170, D.16122,
	bne	.L165	@,
	add	r0, sp, #172	@,,
	add	r1, r7, #32	@, tmp221,
	bl	RBUF_Create_EXT	@
	mov	sl, r9	@ bAlsa, tmp170
.L158:
	ldr	r3, [sp, #172]	@ hRingIn, hRingIn
	cmp	r3, #0	@ hRingIn,
	beq	.L156	@,
	str	sl, [r6, #1036]	@ bAlsa, <variable>.bAlsa
	add	r1, r7, #88	@, tmp221,
	ldr	r2, [sp, #172]	@ hRingIn, hRingIn
	add	r0, sp, #168	@,,
	str	r2, [r6, #188]	@ hRingIn, <variable>.hRingIn
	bl	RBUF_Create	@
	ldr	r3, [sp, #168]	@ hRingOut.324, hRingOut
	cmp	r3, #0	@ hRingOut.324,
	bne	.L166	@,
.L156:
	mov	r0, r6	@, state
	bl	AIPDestroyChn	@
	mov	r0, #0	@ D.16107,
	b	.L155	@
.L165:
	add	r0, sp, #172	@,,
	add	r1, r7, #32	@, tmp221,
	bl	RBUF_Create_EXT	@
	b	.L158	@
.L164:
	add	r0, sp, #172	@,,
	add	r1, r7, #32	@, tmp221,
	bl	RBUF_Create_EXT	@
	mov	sl, #1	@ bAlsa,
	b	.L158	@
.L166:
	str	r3, [r6, #192]	@ hRingOut.324, <variable>.hRingOut
	add	r1, sp, #132	@,,
	ldr	r0, [sp, #168]	@, hRingOut
	bl	RBUF_QueryInfo	@
	ldr	ip, [sp, #132]	@ D.16132, stRbfOut.u32BasePtr
	str	ip, [r8, #48]	@ D.16132, <variable>.AIP_FIFO_ADDR
	ldrh	r1, [sp, #144]	@ D.16134, stRbfOut.u32BufSize
	strh	r1, [r8, #52]	@ movhi	@ D.16134, <variable>.AIP_FIFO_SIZE.bits.aip_fifo_size
	ldr	r0, [sp, #28]	@ stAttr.u32InDataFormat, stAttr.u32InDataFormat
	cmp	r0, #0	@ stAttr.u32InDataFormat,
	bne	.L160	@,
	ldr	r0, [sp, #24]	@ prephitmp.1178, stAttr.u32InSampleRate
	ldr	lr, [sp, #84]	@ stAttr.u32OutSampleRate, stAttr.u32OutSampleRate
	cmp	r0, lr	@ prephitmp.1178, stAttr.u32OutSampleRate
	beq	.L161	@,
	add	r3, r6, #1040	@, state,
	add	r1, r3, #4	@,,
	bl	AIPRouteResampler	@
	subs	r3, r0, #0	@ D.16143,
	bne	.L156	@,
	str	r3, [sp, #0]	@ D.16143,
	ldr	r0, [sp, #24]	@, stAttr.u32InSampleRate
	ldr	r1, [sp, #84]	@, stAttr.u32OutSampleRate
	ldr	r2, [sp, #80]	@, stAttr.u32OutChannels
	ldr	r3, [sp, #76]	@, stAttr.u32OutBitPerSample
	bl	ResamplerCreate	@
	cmp	r0, #0	@ hSRC
	beq	.L156	@,
	str	r0, [r6, #200]	@ hSRC, <variable>.hSRC
	ldr	r0, [sp, #84]	@ prephitmp.1178, stAttr.u32OutSampleRate
.L161:
	ldr	ip, [sp, #80]	@ stAttr.u32OutChannels, stAttr.u32OutChannels
	mov	r1, r0	@, prephitmp.1178
	ldr	r3, [sp, #76]	@, stAttr.u32OutBitPerSample
	add	r0, sp, #180	@,,
	mov	r2, r1	@,
	str	ip, [sp, #0]	@ stAttr.u32OutChannels,
	bl	LSRC_Create	@
	ldr	r3, [sp, #180]	@ hADJ.326, hADJ
	cmp	r3, #0	@ hADJ.326,
	beq	.L156	@,
	str	r3, [r6, #196]	@ hADJ.326, <variable>.hADJ
	add	r0, sp, #176	@,,
	ldr	r3, [sp, #20]	@, stAttr.u32InChannels
	ldr	r1, [sp, #24]	@, stAttr.u32InSampleRate
	ldr	r2, [sp, #16]	@, stAttr.u32InBitPerSample
	bl	FADE_Create	@
	ldr	r3, [sp, #176]	@ hFade.327, hFade
	cmp	r3, #0	@ hFade.327,
	beq	.L156	@,
	mov	r2, #0	@ tmp201,
	str	r3, [r6, #204]	@ hFade.327, <variable>.hFADE
	str	r2, [r6, #240]	@ tmp201, <variable>.s32FadeState
.L160:
	ldr	lr, [r4, r5, asl #2]	@ tmp203, g_stAipRm.hwAipReg
	add	ip, r6, #124	@ tmp204, state,
	mov	r5, #0	@ tmp206,
	mov	r4, ip	@ tmp223, tmp204
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp205,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp223,,,,
	mov	ip, r4	@ tmp225, tmp223
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp224,,,,
	stmia	ip!, {r0, r1, r2, r3}	@ tmp225,,,,
	mov	r4, ip	@ tmp227, tmp225
	ldmia	lr!, {r0, r1, r2, r3}	@ tmp226,,,,
	stmia	r4!, {r0, r1, r2, r3}	@ tmp227,,,,
	ldmia	lr, {r0, r1, r2, r3}	@ tmp226,,,,
	stmia	r4, {r0, r1, r2, r3}	@ tmp227,,,,
	str	r5, [r6, #212]	@ tmp206, <variable>.stGain.bLinearMode
	mvn	r0, #32768	@ tmp212,
	str	r5, [r6, #228]	@ tmp206, <variable>.u32ChannelMode
	strh	r0, [r6, #224]	@ movhi	@ tmp212, <variable>.s16LinearGainFrac
	mov	r0, r6	@, state
	strh	r5, [r6, #216]	@ movhi	@ tmp206, <variable>.stGain.u16LGain
	strh	r5, [r6, #218]	@ movhi	@ tmp206, <variable>.stGain.u16RGain
	bl	AIPCalcProcBlockSize	@
	str	r0, [r6, #1020]	@, <variable>.OutBlockSize
	mov	r0, r6	@, state
	bl	AIPCalcOutLatencyThdSize	@
	ldr	r1, [r6, #68]	@, <variable>.stAttr.u32OutBitPerSample
	str	r0, [r6, #1032]	@, <variable>.OutLatencySize
	ldr	r0, [r6, #72]	@, <variable>.stAttr.u32OutChannels
	bl	UTIL_CalcFrameSize	@
	ldr	r1, [r6, #8]	@, <variable>.stAttr.u32InBitPerSample
	str	r0, [r6, #1024]	@, <variable>.OutFrameSize
	ldr	r0, [r6, #12]	@, <variable>.stAttr.u32InChannels
	bl	UTIL_CalcFrameSize	@
	mov	r3, #1	@ tmp218,
	mov	r1, r3	@, tmp218
	str	r3, [r6, #208]	@ tmp218, <variable>.CurStatus
	mov	r2, #8	@,
	str	r0, [r6, #1028]	@, <variable>.InFrameSize
	ldr	r0, [r6, #204]	@, <variable>.hFADE
	bl	FADE_Active	@
	b	.L163	@
	.fnend
	.size	AIPCreateChn, .-AIPCreateChn
	.align	2
	.global	AIPStartChnCmdProc
	.type	AIPStartChnCmdProc, %function
AIPStartChnCmdProc:
	.fnstart
.LFB1058:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp170,
	add	r6, r0, #8	@ tmp143, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp170,
	mov	r5, r0	@ Id, Id
	ldr	r7, [r4, r6, asl #2]	@ prephitmp.1212, g_stAipRm.hAip
	cmp	r7, #0	@ prephitmp.1212,
	beq	.L175	@,
	ldr	r3, [r7, #208]	@ D.16399, <variable>.CurStatus
	cmp	r3, #0	@ D.16399,
	beq	.L177	@,
	cmp	r3, #2	@ D.16399,
	beq	.L176	@,
.L169:
	cmp	r7, #0	@ prephitmp.1212,
	bne	.L172	@,
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16692,
	tst	r2, #8	@ D.16692,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldr	ip, [r3, #8]	@ tmp161,
	mov	r2, #1	@ tmp162,
	bfi	ip, r2, #4, #4	@ tmp161, tmp162,,
	str	ip, [r3, #8]	@ tmp161,
	ldr	r1, [r3, #8]	@ tmp163,
	orr	r0, r1, #8	@ tmp171, tmp163,
	str	r0, [r3, #8]	@ tmp171,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L172:
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r0, [r3, #8]	@ D.16699,
	ands	r2, r0, #8	@ tmp166, D.16699,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
	ldr	r0, [r3, #8]	@ tmp167,
	bfi	r0, r2, #4, #4	@ tmp167, tmp166,,
	str	r0, [r3, #8]	@ tmp167,
	ldr	ip, [r3, #8]	@ tmp168,
	orr	r1, ip, #8	@ tmp172, tmp168,
	str	r1, [r3, #8]	@ tmp172,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L177:
	bl	AIPIsChnAttrChange	@
	cmp	r0, #0	@,
	beq	.L176	@,
	ldr	r0, [r4, r6, asl #2]	@, g_stAipRm.hAip
	bl	AIPDestroyChn	@
	mov	r0, r5	@, Id
.L175:
	bl	AIPCreateChn	@
	mov	r7, r0	@ prephitmp.1212,
	str	r0, [r4, r6, asl #2]	@ prephitmp.1212, g_stAipRm.hAip
	b	.L169	@
.L176:
	mov	r1, #1	@ tmp155,
	ldr	r0, [r7, #204]	@, <variable>.hFADE
	str	r1, [r7, #208]	@ tmp155, <variable>.CurStatus
	mov	r2, #8	@,
	bl	FADE_Active	@
	ldr	r7, [r4, r6, asl #2]	@ prephitmp.1212, g_stAipRm.hAip
	b	.L169	@
	.fnend
	.size	AIPStartChnCmdProc, .-AIPStartChnCmdProc
	.align	2
	.global	AIPFadeoutChnData
	.type	AIPFadeoutChnData, %function
AIPFadeoutChnData:
	.fnstart
.LFB1038:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	.pad #40
	sub	sp, sp, #40	@,,
	mov	r4, r0	@ state, state
	add	r1, sp, #4	@,,
	ldr	r0, [r0, #192]	@, <variable>.hRingOut
	bl	RBUF_QueryInfo	@
	ldr	r6, [r4, #112]	@ D.15906, <variable>.stAttr.stRbfOutAttr.uFrameSize
	ldr	r0, [sp, #20]	@, stRbfFifoInfo.u32ContiguousDataSize
	mov	r1, r6	@, D.15906
	bl	__aeabi_uidiv	@
	mov	r1, r6	@, D.15906
	mov	r5, r0	@ tmp141,
	ldr	r0, [sp, #24]	@, stRbfFifoInfo.u32TotalDataSize
	bl	__aeabi_uidiv	@
	mov	r1, #2	@,
	mov	r2, #8	@,
	mov	r6, r0	@ tmp144,
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	bl	FADE_Active	@
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	ldr	r1, [r4, #76]	@, <variable>.stAttr.u32OutSampleRate
	ldr	r2, [r4, #68]	@, <variable>.stAttr.u32OutBitPerSample
	ldr	r3, [r4, #72]	@, <variable>.stAttr.u32OutChannels
	bl	FADE_Flush	@
	ldr	r3, [sp, #4]	@ stRbfFifoInfo.u32BasePtr, stRbfFifoInfo.u32BasePtr
	ldr	r1, [sp, #8]	@ stRbfFifoInfo.u32ReadPtr, stRbfFifoInfo.u32ReadPtr
	mov	r2, r5	@, tmp141
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	add	r1, r1, r3	@, stRbfFifoInfo.u32ReadPtr, stRbfFifoInfo.u32BasePtr
	bl	FADE_OutProcess	@
	rsb	r2, r5, r6	@, tmp141, tmp144
	ldr	r0, [r4, #204]	@, <variable>.hFADE
	ldr	r1, [sp, #4]	@, stRbfFifoInfo.u32BasePtr
	bl	FADE_OutProcess	@
	add	sp, sp, #40	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
	.fnend
	.size	AIPFadeoutChnData, .-AIPFadeoutChnData
	.align	2
	.global	AIPPauseChnCmdProc
	.type	AIPPauseChnCmdProc, %function
AIPPauseChnCmdProc:
	.fnstart
.LFB1057:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	add	r3, r0, #8	@ tmp140, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	mov	r6, r0	@ Id, Id
	ldr	r5, [r4, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L183	@,
	ldr	r7, [r5, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r7, #1	@ <variable>.CurStatus,
	beq	.L187	@,
.L183:
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16713,
	ands	r2, r2, #8	@ tmp149, D.16713,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L188:
	ldr	r0, [r3, #8]	@ tmp150,
	bfi	r0, r2, #4, #4	@ tmp150, tmp149,,
	str	r0, [r3, #8]	@ tmp150,
	ldr	ip, [r3, #8]	@ tmp151,
	orr	r1, ip, #8	@ tmp155, tmp151,
	str	r1, [r3, #8]	@ tmp155,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L187:
	mov	r0, r5	@, state
	bl	AIPFadeoutChnData	@
	mov	r0, r5	@, state
	mov	r1, r7	@, <variable>.CurStatus
	bl	AIPFlushChn	@
	mov	r0, #2	@ tmp147,
	str	r0, [r5, #208]	@ tmp147, <variable>.CurStatus
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16713,
	ands	r2, r2, #8	@ tmp149, D.16713,
	beq	.L188	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AIPPauseChnCmdProc, .-AIPPauseChnCmdProc
	.align	2
	.global	AIFlushChnCmdProc
	.type	AIFlushChnCmdProc, %function
AIFlushChnCmdProc:
	.fnstart
.LFB1056:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}	@,
	.save {r3, r4, r5, r6, r7, lr}
	movw	r4, #:lower16:.LANCHOR0	@ tmp153,
	add	r3, r0, #8	@ tmp140, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp153,
	mov	r5, r0	@ Id, Id
	ldr	r6, [r4, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r6, #0	@ state,
	beq	.L192	@,
	ldr	r7, [r6, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r7, #1	@ <variable>.CurStatus,
	beq	.L196	@,
.L192:
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16727,
	ands	r2, r2, #8	@ tmp149, D.16727,
	ldmnefd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L197:
	ldr	ip, [r3, #8]	@ tmp150,
	bfi	ip, r2, #4, #4	@ tmp150, tmp149,,
	str	ip, [r3, #8]	@ tmp150,
	ldr	r1, [r3, #8]	@ tmp151,
	orr	r0, r1, #8	@ tmp155, tmp151,
	str	r0, [r3, #8]	@ tmp155,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
.L196:
	mov	r0, r6	@, state
	bl	AIPFadeoutChnData	@
	mov	r1, #3	@,
	mov	r0, r6	@, state
	bl	AIPFlushChn	@
	mov	r0, r6	@, state
	bl	AIPWriteMuteFrame	@
	mov	r2, #8	@,
	ldr	r0, [r6, #204]	@, <variable>.hFADE
	mov	r1, r7	@, <variable>.CurStatus
	bl	FADE_Active	@
	ldr	r3, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r2, [r3, #8]	@ D.16727,
	ands	r2, r2, #8	@ tmp149, D.16727,
	beq	.L197	@,
	ldmfd	sp!, {r3, r4, r5, r6, r7, pc}	@
	.fnend
	.size	AIFlushChnCmdProc, .-AIFlushChnCmdProc
	.align	2
	.global	AIPStopChnCmdProc
	.type	AIPStopChnCmdProc, %function
AIPStopChnCmdProc:
	.fnstart
.LFB1055:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	add	r3, r0, #8	@ tmp140, Id,
	movw	r4, #:lower16:.LANCHOR0	@ tmp154,
	movt	r4, #:upper16:.LANCHOR0	@ tmp154,
	mov	r6, r0	@ Id, Id
	ldr	r5, [r4, r3, asl #2]	@ state, g_stAipRm.hAip
	cmp	r5, #0	@ state,
	beq	.L201	@,
	ldr	r1, [r5, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	sub	r0, r1, #1	@ tmp146, <variable>.CurStatus,
	cmp	r0, #1	@ tmp146,
	bls	.L205	@,
.L201:
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	ip, [r3, #8]	@ D.16741,
	ands	r2, ip, #8	@ tmp150, D.16741,
	ldmnefd	sp!, {r4, r5, r6, pc}	@
.L206:
	ldr	ip, [r3, #8]	@ tmp151,
	bfi	ip, r2, #4, #4	@ tmp151, tmp150,,
	str	ip, [r3, #8]	@ tmp151,
	ldr	r1, [r3, #8]	@ tmp152,
	orr	r0, r1, #8	@ tmp156, tmp152,
	str	r0, [r3, #8]	@ tmp156,
	ldmfd	sp!, {r4, r5, r6, pc}	@
.L205:
	mov	r0, r5	@, state
	bl	AIPFadeoutChnData	@
	mov	r0, r5	@, state
	mov	r1, #3	@,
	bl	AIPFlushChn	@
	mov	r0, r5	@, state
	bl	AIPWriteMuteFrame	@
	mov	r2, #0	@ tmp148,
	str	r2, [r5, #208]	@ tmp148, <variable>.CurStatus
	ldr	r3, [r4, r6, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	ip, [r3, #8]	@ D.16741,
	ands	r2, ip, #8	@ tmp150, D.16741,
	beq	.L206	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIPStopChnCmdProc, .-AIPStopChnCmdProc
	.align	2
	.global	AIPProcChnCmd
	.type	AIPProcChnCmd, %function
AIPProcChnCmd:
	.fnstart
.LFB1059:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	.pad #8
	sub	sp, sp, #8	@,,
	add	r1, sp, #4	@,,
	mov	r4, r0	@ Id, Id
	bl	AIPGetChnCmd	@
	cmp	r0, #4	@,
	beq	.L214	@,
	ldr	r3, [sp, #4]	@ newcmd, newcmd
	cmp	r3, #3	@ newcmd,
	ldrls	pc, [pc, r3, asl #2]	@ newcmd
	b	.L214	@
.L213:
	.word	.L209
	.word	.L210
	.word	.L211
	.word	.L212
.L210:
	mov	r0, r4	@, Id
	bl	AIPStopChnCmdProc	@
.L214:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, pc}
.L212:
	mov	r0, r4	@, Id
	bl	AIFlushChnCmdProc	@
	b	.L214	@
.L209:
	mov	r0, r4	@, Id
	bl	AIPStartChnCmdProc	@
	b	.L214	@
.L211:
	mov	r0, r4	@, Id
	bl	AIPPauseChnCmdProc	@
	b	.L214	@
	.fnend
	.size	AIPProcChnCmd, .-AIPProcChnCmd
	.align	2
	.global	AIPCalcRbfInNeedBytes
	.type	AIPCalcRbfInNeedBytes, %function
AIPCalcRbfInNeedBytes:
	.fnstart
.LFB1032:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	ldr	r3, [r0, #20]	@ <variable>.stAttr.u32InDataFormat, <variable>.stAttr.u32InDataFormat
	ldr	r6, [r0, #72]	@ Channel, <variable>.stAttr.u32OutChannels
	.pad #8
	sub	sp, sp, #8	@,,
	cmp	r3, #0	@ <variable>.stAttr.u32InDataFormat,
	mov	r4, r0	@ state, state
	mov	r5, r2	@ pNeedInBytes, pNeedInBytes
	ldr	r8, [r0, #76]	@ SampleRate, <variable>.stAttr.u32OutSampleRate
	ldr	r7, [r0, #68]	@ BitWidth, <variable>.stAttr.u32OutBitPerSample
	movne	r6, r1	@ NeedInBytes, blocksize
	beq	.L224	@,
.L217:
	ldr	r0, [r4, #188]	@, <variable>.hRingIn
	bl	RBUF_QueryBusy	@
	cmp	r6, r0	@ NeedInBytes,
	strcc	r6, [r5, #0]	@ NeedInBytes,* pNeedInBytes
	movcs	r6, #0	@ NeedInBytes,
	mov	r0, r6	@, NeedInBytes
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}
.L224:
	mov	r0, r1	@, blocksize
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	bl	__aeabi_uidiv	@
	ldr	ip, [r4, #196]	@ <variable>.hADJ, <variable>.hADJ
	ldr	lr, [r4, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	mov	r3, r7	@, BitWidth
	mov	r2, r8	@, tmp1
	mov	r1, r8	@, SampleRate
	str	r6, [sp, #0]	@ Channel,
	rsb	r6, lr, r0	@ NeedSampels.1366, <variable>.OutputLeftSamples,
	mov	r0, ip	@, <variable>.hADJ
	bl	LSRC_UpdateChange	@
	ldr	r0, [r4, #196]	@, <variable>.hADJ
	ldr	r1, [r4, #244]	@, <variable>.s32UserSpeedAdjust
	bl	LSRC_SetSpeedAdjust	@
	mov	r1, r6	@, NeedSampels.1366
	ldr	r0, [r4, #196]	@, <variable>.hADJ
	bl	LSRC_GetMinInputNum	@
	mov	r1, r0	@ D.15774,
	ldr	r0, [r4, #200]	@ D.15775, <variable>.hSRC
	cmp	r0, #0	@ D.15775,
	bne	.L225	@,
.L219:
	tst	r1, #3	@ NeedSampels,
	ldr	r0, [r4, #1028]	@ <variable>.InFrameSize, <variable>.InFrameSize
	addne	r1, r1, #3	@ tmp160, NeedSampels,
	bicne	r1, r1, #3	@ NeedSampels, tmp160,
	mul	r6, r0, r1	@ NeedInBytes, <variable>.InFrameSize, NeedSampels
	b	.L217	@
.L225:
	bl	ResamplerGetMinInputNum	@
	mov	r1, r0	@ NeedSampels,
	b	.L219	@
	.fnend
	.size	AIPCalcRbfInNeedBytes, .-AIPCalcRbfInNeedBytes
	.align	2
	.global	AIPCheckRbfOutFree
	.type	AIPCheckRbfOutFree, %function
AIPCheckRbfOutFree:
	.fnstart
.LFB1031:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r0, [r0, #192]	@ D.15745, <variable>.hRingOut
	mov	r4, r1	@ blocksize, blocksize
	cmp	r0, #0	@ D.15745,
	bne	.L231	@,
.L227:
	mov	r4, #0	@ blocksize,
	mov	r0, r4	@, blocksize
	ldmfd	sp!, {r4, pc}	@
.L231:
	bl	RBUF_CheckFree	@
	cmp	r0, #0	@,
	beq	.L227	@,
	mov	r0, r4	@, blocksize
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPCheckRbfOutFree, .-AIPCheckRbfOutFree
	.align	2
	.global	AIPDmaLeftFrame
	.type	AIPDmaLeftFrame, %function
AIPDmaLeftFrame:
	.fnstart
.LFB1036:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	ldr	r1, [r0, #1020]	@, <variable>.OutBlockSize
	mov	r4, r0	@ state, state
	bl	AIPCheckRbfOutFree	@
	cmp	r0, #0	@,
	ldmeqfd	sp!, {r4, pc}	@
	mov	r0, #1	@,
	ldr	r1, [r4, #1040]	@, <variable>.Id
	mov	r2, #20	@,
	bl	TRACE_AOE_FSM	@
	add	r1, r4, #252	@, state,
	ldr	r2, [r4, #1020]	@, <variable>.OutBlockSize
	ldr	r0, [r4, #192]	@, <variable>.hRingOut
	bl	RBUF_WriteData	@
	ldr	r1, [r4, #1024]	@, <variable>.OutFrameSize
	ldr	r0, [r4, #1020]	@, <variable>.OutBlockSize
	bl	__aeabi_uidiv	@
	ldr	r1, [r4, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	rsb	r3, r0, r1	@ tmp145,, <variable>.OutputLeftSamples
	str	r3, [r4, #248]	@ tmp145, <variable>.OutputLeftSamples
	ldmfd	sp!, {r4, pc}	@
	.fnend
	.size	AIPDmaLeftFrame, .-AIPDmaLeftFrame
	.align	2
	.global	AIPDmaFrame
	.type	AIPDmaFrame, %function
AIPDmaFrame:
	.fnstart
.LFB1033:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r5, [r0, #1020]	@ blocksize, <variable>.OutBlockSize
	.pad #8
	sub	sp, sp, #8	@,,
	mov	r3, #0	@ tmp142,
	add	r2, sp, #8	@ tmp143,,
	mov	r6, r1	@ pstInFrame, pstInFrame
	mov	r1, r5	@, blocksize
	mov	r4, r0	@ state, state
	str	r3, [r2, #-4]!	@ tmp142, needsize
	bl	AIPCalcRbfInNeedBytes	@
	cmp	r0, #0	@,
	bne	.L239	@,
.L236:
	mov	r0, #0	@ D.15801,
.L237:
	add	sp, sp, #8	@,,
	ldmfd	sp!, {r4, r5, r6, pc}
.L239:
	mov	r1, r5	@, blocksize
	mov	r0, r4	@, state
	bl	AIPCheckRbfOutFree	@
	cmp	r0, #0	@,
	beq	.L236	@,
	bl	AOE_GetWKBuf	@
	cmp	r0, #0	@ uWkAddr
	beq	.L236	@,
	str	r0, [r6, #0]	@ uWkAddr, <variable>.pDataBuf
	bl	AOE_GetWKBufSize	@
	ldr	r5, [sp, #4]	@ needsize, needsize
	stmib	r6, {r0, r5}	@ phole stm
	mov	r0, r5	@, needsize
	ldr	r1, [r4, #1028]	@, <variable>.InFrameSize
	bl	__aeabi_uidiv	@
	ldr	r1, [r6, #0]	@, <variable>.pDataBuf
	mov	r2, r5	@, needsize
	str	r0, [r6, #12]	@, <variable>.u32SamplesPerFrame
	ldr	r0, [r4, #12]	@ <variable>.stAttr.u32InChannels, <variable>.stAttr.u32InChannels
	str	r0, [r6, #20]	@ <variable>.stAttr.u32InChannels, <variable>.u32Channels
	ldr	r3, [r4, #8]	@ <variable>.stAttr.u32InBitPerSample, <variable>.stAttr.u32InBitPerSample
	str	r3, [r6, #16]	@ <variable>.stAttr.u32InBitPerSample, <variable>.u32BitPerSample
	ldr	ip, [r4, #16]	@ <variable>.stAttr.u32InSampleRate, <variable>.stAttr.u32InSampleRate
	str	ip, [r6, #24]	@ <variable>.stAttr.u32InSampleRate, <variable>.u32SampleRate
	ldr	r0, [r4, #20]	@ <variable>.stAttr.u32InDataFormat, <variable>.stAttr.u32InDataFormat
	str	r0, [r6, #28]	@ <variable>.stAttr.u32InDataFormat, <variable>.u32DataFormat
	ldr	r0, [r4, #188]	@, <variable>.hRingIn
	bl	RBUF_ReadDataDma	@
	ldr	r0, [sp, #4]	@ D.15801, needsize
	b	.L237	@
	.fnend
	.size	AIPDmaFrame, .-AIPDmaFrame
	.align	2
	.global	AIPChannelModePcmData
	.type	AIPChannelModePcmData, %function
AIPChannelModePcmData:
	.fnstart
.LFB1028:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #228]	@ D.15705, <variable>.u32ChannelMode
	ldr	r2, [r0, #68]	@ dstBitDepth, <variable>.stAttr.u32OutBitPerSample
	cmp	r3, #0	@ D.15705,
	bxeq	lr	@
	cmp	r3, #7	@ D.15705,
	bxhi	lr	@
	mov	r0, r1	@, pstFrame
	mov	r1, r3	@, D.15705
	b	UTIL_ChannelModeProcess	@
	.fnend
	.size	AIPChannelModePcmData, .-AIPChannelModePcmData
	.align	2
	.global	AIPGainPcmData
	.type	AIPGainPcmData, %function
AIPGainPcmData:
	.fnstart
.LFB1027:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r0	@ state, state
	mov	r0, r1	@ pstFrame, pstFrame
	ldr	r1, [r2, #212]	@ bLinearMode, <variable>.stGain.bLinearMode
	cmp	r1, #1	@ bLinearMode,
	ldreqh	r2, [r2, #224]	@ VolumeL, <variable>.s16LinearGainFrac
	ldrneh	r3, [r2, #218]	@ VolumeR, <variable>.stGain.u16RGain
	ldrneh	r2, [r2, #216]	@ VolumeL, <variable>.stGain.u16LGain
	moveq	r3, r2	@ VolumeR, VolumeL
	b	UTIL_LRGainProcess	@
	.fnend
	.size	AIPGainPcmData, .-AIPGainPcmData
	.align	2
	.global	AIPUnifyPcmData
	.type	AIPUnifyPcmData, %function
AIPUnifyPcmData:
	.fnstart
.LFB1026:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r6, [r0, #72]	@ dstCh, <variable>.stAttr.u32OutChannels
	ldr	r3, [r1, #20]	@ D.15675, <variable>.u32Channels
	mov	r4, r1	@ pstFrame, pstFrame
	ldr	r5, [r0, #68]	@ dstBitDepth, <variable>.stAttr.u32OutBitPerSample
	cmp	r3, r6	@ D.15675, dstCh
	beq	.L248	@,
	cmp	r6, r3	@ dstCh, D.15675
	bls	.L249	@,
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@ D.15680,
	mov	r0, r6	@, dstCh
	bl	UTIL_UpmixPcmData	@
.L248:
	ldr	r3, [r4, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, r5	@ <variable>.u32BitPerSample, dstBitDepth
	ldmeqfd	sp!, {r4, r5, r6, pc}	@
.L252:
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@ D.15686,
	mov	r0, r5	@, dstBitDepth
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	UTIL_UnifyBitDepthPcmData	@
.L249:
	bl	AOE_GetWKBuf	@
	mov	r2, r4	@, pstFrame
	mov	r1, r0	@ D.15682,
	mov	r0, r6	@, dstCh
	bl	UTIL_DownmixPcmData	@
	ldr	r3, [r4, #16]	@ <variable>.u32BitPerSample, <variable>.u32BitPerSample
	cmp	r3, r5	@ <variable>.u32BitPerSample, dstBitDepth
	bne	.L252	@,
	ldmfd	sp!, {r4, r5, r6, pc}	@
	.fnend
	.size	AIPUnifyPcmData, .-AIPUnifyPcmData
	.align	2
	.global	AIPProcFrame
	.type	AIPProcFrame, %function
AIPProcFrame:
	.fnstart
.LFB1035:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}	@,
	.save {r4, r5, r6, lr}
	ldr	r3, [r0, #20]	@ <variable>.stAttr.u32InDataFormat, <variable>.stAttr.u32InDataFormat
	mov	r4, r0	@ state, state
	mov	r5, r1	@ pstInFrame, pstInFrame
	cmp	r3, #0	@ <variable>.stAttr.u32InDataFormat,
	beq	.L258	@,
.L254:
	ldr	r1, [r4, #1040]	@, <variable>.Id
	mov	r0, #1	@,
	mov	r2, #20	@,
	bl	TRACE_AOE_FSM	@
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	ldmfd	sp!, {r4, r5, r6, lr}	@
	b	AIPDmaFrame2FiFo	@
.L258:
	bl	AIPUnifyPcmData	@
	ldr	r0, [r4, #200]	@ <variable>.hSRC, <variable>.hSRC
	cmp	r0, #0	@ <variable>.hSRC,
	bne	.L259	@,
	ldr	r1, [r4, #196]	@ <variable>.hADJ, <variable>.hADJ
	cmp	r1, #0	@ <variable>.hADJ,
	bne	.L260	@,
.L256:
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPGainPcmData	@
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPChannelModePcmData	@
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPFadePcmData	@
	b	.L254	@
.L259:
	mov	r1, r5	@, pstInFrame
	mov	r0, r4	@, state
	bl	AIPResamplePcmData	@
	ldr	r1, [r4, #196]	@ <variable>.hADJ, <variable>.hADJ
	cmp	r1, #0	@ <variable>.hADJ,
	beq	.L256	@,
.L260:
	mov	r0, r4	@, state
	mov	r1, r5	@, pstInFrame
	bl	AIPSpeedAdjProc	@
	b	.L256	@
	.fnend
	.size	AIPProcFrame, .-AIPProcFrame
	.align	2
	.global	AIPProcChnData
	.type	AIPProcChnData, %function
AIPProcChnData:
	.fnstart
.LFB1037:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}	@,
	.save {r4, r5, lr}
	mov	r4, r0	@ state, state
	.pad #36
	sub	sp, sp, #36	@,,
	bl	AOE_FlushWKBuf	@
	mov	r0, #1	@,
	ldr	r1, [r4, #1040]	@, <variable>.Id
	mov	r2, #18	@,
	bl	TRACE_AOE_FSM	@
	ldr	r0, [r4, #1024]	@ <variable>.OutFrameSize, <variable>.OutFrameSize
	ldr	r1, [r4, #248]	@ <variable>.OutputLeftSamples, <variable>.OutputLeftSamples
	ldr	r3, [r4, #1020]	@ <variable>.OutBlockSize, <variable>.OutBlockSize
	mul	r2, r1, r0	@ tmp136, <variable>.OutputLeftSamples, <variable>.OutFrameSize
	cmp	r2, r3	@ tmp136, <variable>.OutBlockSize
	bcs	.L266	@,
	mov	r0, r4	@, state
	mov	r1, sp	@,
	bl	AIPDmaFrame	@
	mov	r5, sp	@ tmp140,
	cmp	r0, #0	@,
	bne	.L267	@,
.L264:
	bl	AOE_FlushWKBuf	@
.L265:
	add	sp, sp, #36	@,,
	ldmfd	sp!, {r4, r5, pc}
.L266:
	mov	r0, r4	@, state
	bl	AIPDmaLeftFrame	@
	b	.L265	@
.L267:
	ldr	r1, [r4, #1040]	@, <variable>.Id
	mov	r0, #1	@,
	mov	r2, #19	@,
	bl	TRACE_AOE_FSM	@
	mov	r0, r4	@, state
	mov	r1, sp	@,
	bl	AIPProcFrame	@
	b	.L264	@
	.fnend
	.size	AIPProcChnData, .-AIPProcChnData
	.align	2
	.global	AIPProcChn
	.type	AIPProcChn, %function
AIPProcChn:
	.fnstart
.LFB1063:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}	@,
	.save {r4, r5, r6, r7, r8, lr}
	mov	r1, r0	@, Id
	mov	r5, r0	@ Id, Id
	mov	r2, #17	@,
	mov	r0, #1	@,
	movw	r4, #:lower16:.LANCHOR0	@ tmp141,
	add	r6, r5, #8	@ tmp142, Id,
	movt	r4, #:upper16:.LANCHOR0	@ tmp141,
	bl	TRACE_AOE_FSM	@
	mov	r0, r5	@, Id
	bl	AIPProcChnCmd	@
	ldr	r7, [r4, r6, asl #2]	@ state, g_stAipRm.hAip
	cmp	r7, #0	@ state,
	beq	.L269	@,
	ldr	r8, [r7, #208]	@ <variable>.CurStatus, <variable>.CurStatus
	cmp	r8, #1	@ <variable>.CurStatus,
	beq	.L271	@,
.L269:
	mov	r0, #0	@,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
.L271:
	mov	r0, r5	@, Id
	bl	AIPUpdateChnState	@
	mov	r0, r7	@, state
	bl	AIPProcChnData	@
	ldr	r1, [r7, #1040]	@, <variable>.Id
	mov	r0, r8	@, <variable>.CurStatus
	mov	r2, #16	@,
	bl	TRACE_AOE_FSM	@
	ldr	r6, [r4, r6, asl #2]	@ state, g_stAipRm.hAip
	ldr	r4, [r4, r5, asl #2]	@ pAipReg, g_stAipRm.hwAipReg
	ldr	r0, [r6, #192]	@, <variable>.hRingOut
	bl	RBUF_QueryBusy	@
	ldr	r2, [r6, #76]	@, <variable>.stAttr.u32OutSampleRate
	ldr	r1, [r6, #1024]	@, <variable>.OutFrameSize
	bl	UTIL_LatencyMs	@
	ldr	r3, [r4, #4]	@ tmp153,
	bfi	r3, r0, #16, #6	@ tmp153,,,
	mov	r0, #0	@,
	str	r3, [r4, #4]	@ tmp153,
	ldmfd	sp!, {r4, r5, r6, r7, r8, pc}	@
	.fnend
	.size	AIPProcChn, .-AIPProcChn
	.align	2
	.global	AIP_Process
	.type	AIP_Process, %function
AIP_Process:
	.fnstart
.LFB1067:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}	@,
	.save {r4, lr}
	mov	r0, #0	@,
	bl	AIPProcChn	@
	mov	r0, #1	@,
	bl	AIPProcChn	@
	mov	r0, #2	@,
	bl	AIPProcChn	@
	mov	r0, #3	@,
	bl	AIPProcChn	@
	mov	r0, #4	@,
	bl	AIPProcChn	@
	mov	r0, #5	@,
	bl	AIPProcChn	@
	mov	r0, #6	@,
	bl	AIPProcChn	@
	mov	r0, #7	@,
	ldmfd	sp!, {r4, lr}	@
	b	AIPProcChn	@
	.fnend
	.size	AIP_Process, .-AIP_Process
	.bss
	.align	2
.LANCHOR0 = . + 0
	.type	g_stAipRm, %object
	.size	g_stAipRm, 64
g_stAipRm:
	.space	64
	.ident	"GCC: (Hisilicon_v200(gcc4.4-290+glibc-2.11+eabi+nptl)) 4.4.1"
	.section	.note.GNU-stack,"",%progbits
