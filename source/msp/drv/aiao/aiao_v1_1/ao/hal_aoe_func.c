/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
 * FileName: hal_aoe_func.c
 * Description: aiao interface of module.
 *
 * History:
 * Version   Date         Author     DefectNum    Description
 * main\1    2012-09-22   z40717     NULL         init.
 ********************************************************************************/
#include <mach/hardware.h>
#include <linux/delay.h>
#include "hi_type.h"
#include "hi_audsp_aoe.h"
#include "hal_aoe_func.h"
#include "hi_drv_mem.h"


#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */

// todo
#define  IO_ADDRESS_TODO(x)  IO_ADDRESS(x)

static volatile S_AOE_REGS_TYPE*        g_pAOEReg;
static volatile S_AIP_REGS_TYPE*        g_pAipReg[AOE_AIP_BUTT];
static volatile S_MIXER_REGS_TYPE*        g_pMixerReg[AOE_ENGINE_BUTT];
static volatile S_AOP_REGS_TYPE*   g_pAopReg[AOE_AOP_BUTT];
static   HI_U32 u32RegMapAddr = 0;
static HI_BOOL g_bSwAoeFlag = HI_TRUE;  /* HI_TRUE: sw; HI_FALSE: hw */

static HI_VOID AoeIOAddressMap(HI_VOID)
{
    AOE_AIP_ID_E aip;
    AOE_AOP_ID_E aop;
    AOE_ENGINE_ID_E engine;

    u32RegMapAddr = (HI_U32 )ioremap_nocache(AOE_COM_REG_BASE, AOE_REG_LENGTH);;

    /* reg map */
    g_pAOEReg = (S_AOE_REGS_TYPE*)(u32RegMapAddr + AOE_COM_REG_OFFSET);
    for (aip = AOE_AIP0; aip < AOE_AIP_BUTT; aip++)
    {
        g_pAipReg[aip] = (S_AIP_REGS_TYPE*)((u32RegMapAddr + AOE_AIP_REG_OFFSET) + AOE_AIP_REG_BANDSIZE * aip);
    }

    for (aop = AOE_AOP0; aop < AOE_AOP_BUTT; aop++)
    {
        g_pAopReg[aop] = (S_AOP_REGS_TYPE*)((u32RegMapAddr + AOE_AOP_REG_OFFSET) + AOE_AOP_REG_BANDSIZE * aop);
    }

    for (engine = AOE_ENGINE0; engine < AOE_ENGINE_BUTT; engine++)
    {
        g_pMixerReg[engine] = (S_MIXER_REGS_TYPE*)((u32RegMapAddr
                              + AOE_ENGINE_REG_OFFSET) + AOE_ENGINE_REG_BANDSIZE * engine);
    }

    return;
}

static HI_VOID IOaddressUnmap(HI_VOID)
{
    AOE_AIP_ID_E aip;
    AOE_AOP_ID_E aop;
    AOE_ENGINE_ID_E engine;

    /* reg map */
    for (aip = AOE_AIP0; aip < AOE_AIP_BUTT; aip++)
    {
        g_pAipReg[aip] = HI_NULL;
    }

    for (aop = AOE_AOP0; aop < AOE_AOP_BUTT; aop++)
    {
        g_pAopReg[aop] = HI_NULL;
    }

    for (engine = AOE_ENGINE0; engine < AOE_ENGINE_BUTT; engine++)
    {
        g_pAipReg[engine] = HI_NULL;
    }
    g_pAOEReg = HI_NULL;
    if (u32RegMapAddr)
    {
        iounmap((HI_VOID*)u32RegMapAddr);
    }

}

HI_S32 iHAL_AOE_Init(HI_BOOL bSwAoeFlag)
{
    AoeIOAddressMap();
    g_bSwAoeFlag = bSwAoeFlag;
    return HI_SUCCESS;
}

HI_VOID iHAL_AOE_DeInit(HI_VOID)
{
    IOaddressUnmap();

    return;
}

HI_VOID iHAL_AOE_GetHwCapability(HI_U32* pu32Capability)
{
    //TODO
}
HI_VOID iHAL_AOE_GetHwVersion(HI_U32* pu32Version)
{
    //TODO
}

static HI_VOID AoeRegBitDepth(HI_U32 u32BitPerSample, HI_U32* pReg)
{
    switch (u32BitPerSample)
    {
        case 16:
            *pReg = 1;
            break;
        case 24:
            *pReg = 2;
            break;
        default:
            *pReg = 0;
            //HI_DSP_PRINT("invalid precision(%d)\n", u32BitPerSample);
    }

    return;
}

static HI_VOID  AoeRegChannels(HI_U32 u32Channels, HI_U32* pReg)
{
    switch (u32Channels)
    {
        case 0x01:
            *pReg = 0;
            break;
        case 0x02:
            *pReg = 1;
            break;
        case 0x08:
            *pReg = 3;
            break;
        default:
            *pReg = 0;
    }

    return;
}

static HI_VOID  AoeRegSampelRate(HI_U32 u32SampelRate, HI_U32* pReg)
{
    switch (u32SampelRate)
    {
        case 8000:
            *pReg = 0;
            break;
        case 11025:
            *pReg = 1;
            break;
        case 12000:
            *pReg = 2;
            break;
        case 16000:
            *pReg = 3;
            break;
        case 22050:
            *pReg = 4;
            break;
        case 24000:
            *pReg = 5;
            break;
        case 32000:
            *pReg = 6;
            break;
        case 44100:
            *pReg = 7;
            break;
        case 48000:
            *pReg = 8;
            break;
        case 88200:
            *pReg = 9;
            break;
        case 96000:
            *pReg = 10;
            break;
        case 176400:
            *pReg = 11;
            break;
        case 192000:
            *pReg = 12;
            break;
        default:
            *pReg = 0xf; // ext fs
    }

    return;
}

static HI_VOID  AoeRegMixRoute(HI_U32 enAIP, HI_U32* pReg)
{
    switch (enAIP)
    {
        case 0:
            *pReg = 1 << 0;
            break;
        case 1:
            *pReg = 1 << 1;
            break;
        case 2:
            *pReg = 1 << 2;
            break;
        case 3:
            *pReg = 1 << 3;
            break;
        case 4:
            *pReg = 1 << 4;
            break;
        case 5:
            *pReg = 1 << 5;
            break;
        case 6:
            *pReg = 1 << 6;
            break;
        case 7:
            *pReg = 1 << 7;
            break;
        case 8:
            *pReg = 1 << 8;
            break;
        case 9:
            *pReg = 1 << 9;
            break;
        case 10:
            *pReg = 1 << 10;
            break;
        case 11:
            *pReg = 1 << 11;
            break;
        case 12:
            *pReg = 1 << 12;
            break;
        case 13:
            *pReg = 1 << 13;
            break;
        case 14:
            *pReg = 1 << 14;
            break;
        case 15:
            *pReg = 1 << 15;
            break;

        default:
            *pReg = 0x0;
    }

    return;
}

HI_S32                  iHAL_AOE_AIP_SetAttr(AOE_AIP_ID_E enAIP, AOE_AIP_CHN_ATTR_S* pstAttr)
{
    HI_U32 Rate, BitDepth, Ch;
    S_AIP_REGS_TYPE* AipReg = (S_AIP_REGS_TYPE*)g_pAipReg[enAIP];

    BitDepth = 0;

    //set  AIP_BUFF_ATTR
    AipReg->AIP_BUFF_ATTR.bits.aip_format = ( (!pstAttr->stBufInAttr.u32BufDataFormat) ? 0 : 1);
    AoeRegBitDepth(pstAttr->stBufInAttr.u32BufBitPerSample, &BitDepth);
    AipReg->AIP_BUFF_ATTR.bits.aip_precision = BitDepth;
    AoeRegChannels(pstAttr->stBufInAttr.u32BufChannels, &Ch);
    AipReg->AIP_BUFF_ATTR.bits.aip_ch = Ch;
    AoeRegSampelRate(pstAttr->stBufInAttr.u32BufSampleRate, &Rate);
    AipReg->AIP_BUFF_ATTR.bits.aip_fs = Rate;
    AipReg->AIP_BUFF_ATTR.bits.aip_priority = ((HI_TRUE == pstAttr->stBufInAttr.bMixPriority) ? 1 : 0);
    if (0xf == Rate)//nonstandard samplerate
    {
        // todo, #define  AOE_AIP_EXT_FS 0xf
        AipReg->AIP_SRC_ATTR_EXT.bits.fs_ext = pstAttr->stBufInAttr.u32BufSampleRate;
    }

    if (HI_TRUE == pstAttr->stBufInAttr.bFadeEnable)
    {
        AipReg->AIP_CTRL.bits.fade_en = 1;

        //todo , convert to ms
        AipReg->AIP_CTRL.bits.fade_in_rate  = (HI_U32)8;
        AipReg->AIP_CTRL.bits.fade_out_rate = (HI_U32)4;
    }
    else
    {
        AipReg->AIP_CTRL.bits.fade_en = 0;
    }

    //for alsa
    AipReg->AIP_BUFF_ATTR.bits.aip_alsa = pstAttr->stBufInAttr.bAlsaEnable;

    if (HI_TRUE == g_bSwAoeFlag)
    {
        AipReg->AIP_BUF_ADDR = pstAttr->stBufInAttr.stRbfAttr.u32BufVirAddr;
    }
    else
    {
        HI_U32 u32DspRemapAddr = pstAttr->stBufInAttr.stRbfAttr.u32BufPhyAddr;
#if defined(DSP_DDR_DMAREMAP_SUPPORT)
        if ((u32DspRemapAddr >= DSP_DDR_DMAREMAP_BEG_ADDR) && (u32DspRemapAddr < DSP_DDR_DMAREMAP_END_ADDR))
        {
            u32DspRemapAddr += DSP_DDR_DMAREMAP_MAP_ADDR;
            //HI_ERR_AIAO("u32DspRemapAddr=0x%.8x,u32BufPhyAddr=0x%.8x\n",u32DspRemapAddr,pstAttr->stBufInAttr.stRbfAttr.u32BufPhyAddr);
        }
#endif
        AipReg->AIP_BUF_ADDR = u32DspRemapAddr;

    }

    if (pstAttr->stBufInAttr.stRbfAttr.u32BufWptrRptrFlag)
    {
        if (HI_TRUE == g_bSwAoeFlag)
        {
            AipReg->AIP_BUF_WPTR = pstAttr->stBufInAttr.stRbfAttr.u32BufVirWptr;
            AipReg->AIP_BUF_RPTR = pstAttr->stBufInAttr.stRbfAttr.u32BufVirRptr;
        }
        else
        {
            HI_U32 u32DspRemapAddr = pstAttr->stBufInAttr.stRbfAttr.u32BufPhyWptr;
#if defined(DSP_DDR_DMAREMAP_SUPPORT)
            if ((u32DspRemapAddr >= DSP_DDR_DMAREMAP_BEG_ADDR) && (u32DspRemapAddr < DSP_DDR_DMAREMAP_END_ADDR))
            {
                u32DspRemapAddr += DSP_DDR_DMAREMAP_MAP_ADDR;
                //HI_ERR_AIAO("u32DspRemapAddr=0x%.8x,u32BufPhyWptr=0x%.8x\n",u32DspRemapAddr,pstAttr->stBufInAttr.stRbfAttr.u32BufPhyWptr);
            }
#endif
            AipReg->AIP_BUF_WPTR = u32DspRemapAddr;

            u32DspRemapAddr = pstAttr->stBufInAttr.stRbfAttr.u32BufPhyRptr;
#if defined(DSP_DDR_DMAREMAP_SUPPORT)
            if ((u32DspRemapAddr >= DSP_DDR_DMAREMAP_BEG_ADDR) && (u32DspRemapAddr < DSP_DDR_DMAREMAP_END_ADDR))
            {
                u32DspRemapAddr += DSP_DDR_DMAREMAP_MAP_ADDR;
                //HI_ERR_AIAO("u32DspRemapAddr=0x%.8x,u32BufPhyRptr=0x%.8x\n",u32DspRemapAddr,pstAttr->stBufInAttr.stRbfAttr.u32BufPhyRptr);
            }
#endif

            AipReg->AIP_BUF_RPTR = u32DspRemapAddr;
        }
    }
    else
    {
        AipReg->AIP_BUF_WPTR = 0;
        AipReg->AIP_BUF_RPTR = 0;
    }

    AipReg->AIP_BUF_SIZE.bits.buff_flag = pstAttr->stBufInAttr.stRbfAttr.u32BufWptrRptrFlag;
    AipReg->AIP_BUF_SIZE.bits.buff_size = pstAttr->stBufInAttr.stRbfAttr.u32BufSize;
    AipReg->AIP_BUF_TRANS_SIZE.bits.tx_trans_size = 0; // todo

    // Aip Fifo attr reg
    AoeRegBitDepth(pstAttr->stFifoOutAttr.u32FifoBitPerSample, &BitDepth);
    AipReg->AIP_FIFO_ATTR.bits.fifo_precision = BitDepth;
    AoeRegChannels(pstAttr->stFifoOutAttr.u32FifoChannels, &Ch);
    AipReg->AIP_FIFO_ATTR.bits.fifo_ch = Ch;
    AoeRegSampelRate(pstAttr->stFifoOutAttr.u32FifoSampleRate, &Rate);
    AipReg->AIP_FIFO_ATTR.bits.fifo_fs = Rate;
    AipReg->AIP_FIFO_ATTR.bits.fifo_format = ( (!pstAttr->stFifoOutAttr.u32FifoDataFormat) ? 0 : 1);
    AipReg->AIP_FIFO_ATTR.bits.fifo_latency = pstAttr->stFifoOutAttr.u32FiFoLatencyThdMs;

    return HI_SUCCESS;
}
HI_VOID                 iHAL_AOE_AIP_Destroy(AOE_AIP_ID_E enAIP)
{
    return;
}

AOE_AIP_CMD_RET_E  iHAL_AOE_AIP_AckCmd(AOE_AIP_ID_E enAIP)
{
    S_AIP_REGS_TYPE* AipReg = (S_AIP_REGS_TYPE*)g_pAipReg[enAIP];
    volatile HI_U32 loop_outer = 0;
    volatile HI_U32 loop_inner = 0;
    for (loop_outer = 0; loop_outer < 100; loop_outer++)
    {
        for (loop_inner = 0; loop_inner < 8; loop_inner++)
        {
            if (AipReg->AIP_CTRL.bits.cmd_done)
            {
                return (AOE_AIP_CMD_RET_E)AipReg->AIP_CTRL.bits.cmd_return_value;
            }
            udelay(10);
        }
        //udelay(1000);    //for voip atom called
        msleep(1);    //cts
    }
    return AOE_AIP_CMD_ERR_TIMEOUT;
}

HI_U32  iHAL_AOE_AIP_Group_AckCmd(HI_U32 u32AckCmdMask)
{
    S_AIP_REGS_TYPE* AipReg[AOE_MAX_AIP_NUM] = {HI_NULL};
    HI_U32 u32CmdDoneMask = 0;
    HI_U32 u32AipId = 0;
    volatile HI_U32 u32LoopOuter = 0;
    volatile HI_U32 u32LoopInner = 0;

    for (u32AipId = 0; u32AipId < AOE_MAX_AIP_NUM; u32AipId++)
    {
        if ((1 << u32AipId) & u32AckCmdMask)
        {
            AipReg[u32AipId] = (S_AIP_REGS_TYPE*)g_pAipReg[u32AipId];
        }
    }

    for (u32LoopOuter = 0; u32LoopOuter < 100; u32LoopOuter++)
    {
        for (u32LoopInner = 0; u32LoopInner < 8; u32LoopInner++)
        {
            for (u32AipId = 0; u32AipId < AOE_MAX_AIP_NUM; u32AipId++)
            {
                if ((1 << u32AipId) & u32AckCmdMask)
                {
                    if (AipReg[u32AipId]->AIP_CTRL.bits.cmd_done)
                    {
                        u32CmdDoneMask |= (1 << u32AipId);
                    }
                }
            }

            if (u32AckCmdMask == u32CmdDoneMask)
            {
                return u32CmdDoneMask;
            }

            udelay(10);
        }

        msleep(1);
    }

    return u32CmdDoneMask;
}

AOE_AIP_CMD_RET_E  iHAL_AOE_AIP_NoBlock_AckCmd(AOE_AIP_ID_E enAIP)
{
    S_AIP_REGS_TYPE* AipReg = (S_AIP_REGS_TYPE*)g_pAipReg[enAIP];
    volatile HI_U32 loop = 0;

    for (loop = 0; loop < 800; loop++)
    {
        if (AipReg->AIP_CTRL.bits.cmd_done)
        {
            return (AOE_AIP_CMD_RET_E)AipReg->AIP_CTRL.bits.cmd_return_value;
        }
    }
    return AOE_AIP_CMD_DONE;
}


HI_S32 iHAL_AOE_AIP_SetCmd(AOE_AIP_ID_E enAIP, AOE_AIP_CMD_E newcmd)
{
    S_AIP_REGS_TYPE* AipReg = (S_AIP_REGS_TYPE*)g_pAipReg[enAIP];
    AOE_AIP_CMD_RET_E Ack;

    switch (newcmd)
    {
        case AOE_AIP_CMD_START:
            AipReg->AIP_CTRL.bits.cmd = AOE_AIP_CMD_START;
            break;

        case AOE_AIP_CMD_PAUSE:
            AipReg->AIP_CTRL.bits.cmd = AOE_AIP_CMD_PAUSE;
            break;

        case AOE_AIP_CMD_FLUSH:
            AipReg->AIP_CTRL.bits.cmd = AOE_AIP_CMD_FLUSH;
            break;

        case AOE_AIP_CMD_STOP:
            AipReg->AIP_CTRL.bits.cmd = AOE_AIP_CMD_STOP;
            break;
        default:

            //HI_WARN_AO("AIP unknow Cmd(0x%x)",newcmd);
            return HI_SUCCESS;
    }

    AipReg->AIP_CTRL.bits.cmd_done = 0;
#ifdef AIAO_ALSA_DRV_V2
    if (1)
#else
    if (HI_FALSE == AipReg->AIP_BUFF_ATTR.bits.aip_alsa)
#endif
    {
        Ack = iHAL_AOE_AIP_AckCmd(enAIP);
        if (AOE_AIP_CMD_DONE != Ack)
        {
            HI_ERR_AO("\nAIP SetCmd(0x%x) failed(0x%x)", newcmd, Ack);
            return HI_FAILURE;
        }
    }
    else    //for alsa
    {
        Ack = iHAL_AOE_AIP_NoBlock_AckCmd(enAIP);
    }

    return HI_SUCCESS;
}

HI_U32 iHAL_AOE_AIP_Group_SetCmd(AOE_AIP_CMD_E newcmd, HI_U32 u32SetCmdMask)
{
    S_AIP_REGS_TYPE* AipReg[AOE_MAX_AIP_NUM] = {HI_NULL};
    HI_U32 u32AipId = 0;
    HI_U32 u32CmdDone = 0;

    for (u32AipId = 0; u32AipId < AOE_MAX_AIP_NUM; u32AipId++)
    {
        if ((1 << u32AipId) & u32SetCmdMask)
        {
            AipReg[u32AipId] = (S_AIP_REGS_TYPE*)g_pAipReg[u32AipId];
        }
    }

    switch (newcmd)
    {
        case AOE_AIP_CMD_STOP:
            for (u32AipId = 0; u32AipId < AOE_MAX_AIP_NUM; u32AipId++)
            {
                if ((1 << u32AipId) & u32SetCmdMask)
                {
                    AipReg[u32AipId]->AIP_CTRL.bits.cmd = AOE_AIP_CMD_STOP;
                }
            }
            break;

        default:
            //HI_WARN_AO("AIP unknow Cmd(0x%x)",newcmd);
            return u32SetCmdMask;
    }

    for (u32AipId = 0; u32AipId < AOE_MAX_AIP_NUM; u32AipId++)
    {
        if ((1 << u32AipId) & u32SetCmdMask)
        {
            AipReg[u32AipId]->AIP_CTRL.bits.cmd_done = 0;
        }
    }

    u32CmdDone = iHAL_AOE_AIP_Group_AckCmd(u32SetCmdMask);

    return u32CmdDone;
}

HI_VOID iHAL_AOE_AIP_SetLRVolume(AOE_AIP_ID_E enAIP, HI_U32 u32VolumeLdB, HI_U32 u32VolumeRdB)
{
    S_AIP_REGS_TYPE* AipReg = (S_AIP_REGS_TYPE*)g_pAipReg[enAIP];

    AipReg->AIP_EXT_CTRL.bits.volume_l = u32VolumeLdB;
    AipReg->AIP_EXT_CTRL.bits.volume_r = u32VolumeRdB;

    return;
}

HI_S32 iHAL_AOE_AIP_SetSpeed(AOE_AIP_ID_E enAIP, HI_S32 s32AdjSpeed)
{
    S_AIP_REGS_TYPE* AipReg = (S_AIP_REGS_TYPE*)g_pAipReg[enAIP];
    if (s32AdjSpeed >= 0)
    {
        AipReg->AIP_CTRL.bits.dst_fs_adj_dir = 0;
        AipReg->AIP_CTRL.bits.dst_fs_adj_step = s32AdjSpeed;
    }
    else
    {
        AipReg->AIP_CTRL.bits.dst_fs_adj_dir = 1;
        AipReg->AIP_CTRL.bits.dst_fs_adj_step = -s32AdjSpeed;
    }
    return HI_SUCCESS;
}

HI_VOID iHAL_AOE_AIP_GetRptrAndWptrRegAddr(AOE_AIP_ID_E enAIP, HI_U32* pu32WptrReg, HI_U32* pu32RptrReg)
{
    *pu32WptrReg = (HI_U32)(&(g_pAipReg[enAIP]->AIP_BUF_WPTR));
    *pu32RptrReg = (HI_U32)(&(g_pAipReg[enAIP]->AIP_BUF_RPTR));
}

HI_U32 iHAL_AOE_AIP_GetFiFoDelayMs(AOE_AIP_ID_E enAIP)
{
    S_AIP_REGS_TYPE* AipReg = (S_AIP_REGS_TYPE*)g_pAipReg[enAIP];

    return AipReg->AIP_FIFO_ATTR.bits.fifo_latency_real;
}

/* aop func */
HI_VOID iHAL_AOE_AOP_SetMute(AOE_AOP_ID_E enAOP, HI_BOOL bMute)
{
    S_AOP_REGS_TYPE* AopReg = (S_AOP_REGS_TYPE*)g_pAopReg[enAOP];

    AopReg->AOP_EXT_CTRL.bits.mute = (HI_U32)bMute;

    return;
}

HI_VOID iHAL_AOE_AOP_SetLRVolume(AOE_AOP_ID_E enAOP, HI_U32 u32VolumeLdB, HI_U32 u32VolumeRdB)
{
    S_AOP_REGS_TYPE* AopReg = (S_AOP_REGS_TYPE*)g_pAopReg[enAOP];

    AopReg->AOP_EXT_CTRL.bits.volume_l = u32VolumeLdB;
    AopReg->AOP_EXT_CTRL.bits.volume_r = u32VolumeRdB;

    return;
}

HI_VOID iHAL_AOE_AOP_GetRptrAndWptrRegAddr(AOE_AOP_ID_E enAOP, HI_U32* pu32WptrReg, HI_U32* pu32RptrReg)
{
    *pu32WptrReg = (HI_U32)(&(g_pAopReg[enAOP]->AOP_BUF_WPTR));
    *pu32RptrReg = (HI_U32)(&(g_pAopReg[enAOP]->AOP_BUF_RPTR));
}

HI_S32 iHAL_AOE_AOP_SetAttr(AOE_AOP_ID_E enAOP, AOE_AOP_CHN_ATTR_S* pstAttr)
{
    HI_U32 Rate, BitDepth, Ch;
    S_AOP_REGS_TYPE* AopReg = (S_AOP_REGS_TYPE*)g_pAopReg[enAOP];

    //set  AOP_BUFF_ATTR
    if (HI_TRUE == g_bSwAoeFlag)
    {
        AopReg->AOP_BUF_ADDR = pstAttr->stRbfOutAttr.stRbfAttr.u32BufVirAddr;
    }
    else
    {
        HI_U32 u32DspRemapAddr = pstAttr->stRbfOutAttr.stRbfAttr.u32BufPhyAddr;
#if defined (DSP_DDR_DMAREMAP_SUPPORT)
        if ((u32DspRemapAddr >= DSP_DDR_DMAREMAP_BEG_ADDR) && (u32DspRemapAddr < DSP_DDR_DMAREMAP_END_ADDR))
        {
            u32DspRemapAddr += DSP_DDR_DMAREMAP_MAP_ADDR;

            //HI_ERR_AIAO("u32DspRemapAddr=0x%.8x,u32BufPhyAddr=0x%.8x\n",u32DspRemapAddr,pstAttr->stRbfOutAttr.stRbfAttr.u32BufPhyAddr);
        }
#endif

        AopReg->AOP_BUF_ADDR = u32DspRemapAddr;
    }

    if (pstAttr->stRbfOutAttr.stRbfAttr.u32BufWptrRptrFlag)
    {
        if (HI_TRUE == g_bSwAoeFlag)
        {
            AopReg->AOP_BUF_WPTR = pstAttr->stRbfOutAttr.stRbfAttr.u32BufVirWptr;
            AopReg->AOP_BUF_RPTR = pstAttr->stRbfOutAttr.stRbfAttr.u32BufVirRptr;
        }
        else
        {
            HI_U32 u32DspRemapAddr;
            u32DspRemapAddr = pstAttr->stRbfOutAttr.stRbfAttr.u32BufPhyWptr;
#if defined (DSP_DDR_DMAREMAP_SUPPORT)
            if ((u32DspRemapAddr >= DSP_DDR_DMAREMAP_BEG_ADDR) && (u32DspRemapAddr < DSP_DDR_DMAREMAP_END_ADDR))
            {
                u32DspRemapAddr += DSP_DDR_DMAREMAP_MAP_ADDR;

                //HI_ERR_AIAO("u32DspRemapAddr=0x%.8x,u32BufPhyWptr=0x%.8x\n",u32DspRemapAddr,pstAttr->stRbfOutAttr.stRbfAttr.u32BufPhyWptr);
            }
#endif

            AopReg->AOP_BUF_WPTR = u32DspRemapAddr;

            u32DspRemapAddr = pstAttr->stRbfOutAttr.stRbfAttr.u32BufPhyRptr;
#if defined (DSP_DDR_DMAREMAP_SUPPORT)
            if ((u32DspRemapAddr >= DSP_DDR_DMAREMAP_BEG_ADDR) && (u32DspRemapAddr < DSP_DDR_DMAREMAP_END_ADDR))
            {
                u32DspRemapAddr += DSP_DDR_DMAREMAP_MAP_ADDR;

                //HI_ERR_AIAO("u32DspRemapAddr=0x%.8x,u32BufPhyRptr=0x%.8x\n",u32DspRemapAddr,pstAttr->stRbfOutAttr.stRbfAttr.u32BufPhyRptr);
            }
#endif

            AopReg->AOP_BUF_RPTR = u32DspRemapAddr;
        }
    }
    else
    {
        AopReg->AOP_BUF_WPTR = 0;
        AopReg->AOP_BUF_RPTR = 0;
    }

    AopReg->AOP_BUF_SIZE.bits.buff_size = pstAttr->stRbfOutAttr.stRbfAttr.u32BufSize;
    AopReg->AOP_BUF_SIZE.bits.buff_flag = pstAttr->stRbfOutAttr.stRbfAttr.u32BufWptrRptrFlag; /* u32BufWptrRptrFlag */

    //set fifo attr
    AopReg->AOP_BUFF_ATTR.bits.buf_format = ((!pstAttr->stRbfOutAttr.u32BufDataFormat) ? 0 : 1);
    AoeRegBitDepth(pstAttr->stRbfOutAttr.u32BufBitPerSample, &BitDepth);
    AopReg->AOP_BUFF_ATTR.bits.buf_precision = BitDepth;
    AoeRegChannels(pstAttr->stRbfOutAttr.u32BufChannels, &Ch);
    AopReg->AOP_BUFF_ATTR.bits.buf_ch = Ch;
    AoeRegSampelRate(pstAttr->stRbfOutAttr.u32BufSampleRate, &Rate);
    AopReg->AOP_BUFF_ATTR.bits.buf_fs = Rate;

    AopReg->AOP_BUFF_ATTR.bits.buf_priority = ((HI_TRUE == pstAttr->stRbfOutAttr.bRbfHwPriority) ? 1 : 0);

    AopReg->AOP_BUFF_ATTR.bits.buf_latency = pstAttr->stRbfOutAttr.u32BufLatencyThdMs;

    return HI_SUCCESS;
}

AOE_AOP_CMD_RET_E  iHAL_AOE_AOP_AckCmd(AOE_AOP_ID_E enAOP)
{
    S_AOP_REGS_TYPE* AopReg = (S_AOP_REGS_TYPE*)g_pAopReg[enAOP];
    volatile HI_S32 loop = 0;

    for (loop = 0; loop < 100; loop++)
    {
        //udelay(1000);
        if (AopReg->AOP_CTRL.bits.cmd_done)
        {
            return (AOE_AOP_CMD_RET_E)AopReg->AOP_CTRL.bits.cmd_return_value;
        }
        msleep(1);    //TO check
    }
    return AOE_AOP_CMD_ERR_TIMEOUT;
}

HI_S32 iHAL_AOE_AOP_SetCmd(AOE_AOP_ID_E enAOP, AOE_AOP_CMD_E newcmd)
{
    S_AOP_REGS_TYPE* AopReg = (S_AOP_REGS_TYPE*)g_pAopReg[enAOP];
    AOE_AOP_CMD_RET_E Ack;

    switch (newcmd)
    {
        case AOE_AOP_CMD_START:
            AopReg->AOP_CTRL.bits.cmd = AOE_AOP_CMD_START;
            break;

        case AOE_AOP_CMD_STOP:
            AopReg->AOP_CTRL.bits.cmd = AOE_AOP_CMD_STOP;
            break;
        default:

            //HI_WARN_AO("AIP unknow Cmd(0x%x)",newcmd);
            return HI_SUCCESS;
    }

    AopReg->AOP_CTRL.bits.cmd_done = 0;
    Ack = iHAL_AOE_AOP_AckCmd(enAOP);
    if (AOE_AOP_CMD_DONE != Ack)
    {
        HI_ERR_AO("\nAOP SetCmd(0x%x) failed(0x%x)", newcmd, Ack);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID                 iHAL_AOE_AOP_Destroy(AOE_AOP_ID_E enAOP)
{
    return;
}
/* ENGINE function */

AOE_ENGINE_CMD_RET_E  iHAL_AOE_ENGINE_AckCmd(AOE_ENGINE_ID_E enEngine)
{
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];
    volatile HI_S32 loop = 0;

    for (loop = 0; loop < 100; loop++)
    {
        //udelay(1000);
        if (MixerReg->ENGINE_CTRL.bits.cmd_done)
        {
            return (AOE_ENGINE_CMD_RET_E)MixerReg->ENGINE_CTRL.bits.cmd_return_value;
        }
        msleep(1);
    }
    return AOE_ENGINE_CMD_ERR_TIMEOUT;
}

HI_S32 iHAL_AOE_ENGINE_SetCmd(AOE_ENGINE_ID_E enEngine, AOE_ENGINE_CMD_E newcmd)
{
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];
    AOE_ENGINE_CMD_RET_E Ack;

    switch (newcmd)
    {
        case AOE_ENGINE_CMD_START:
            MixerReg->ENGINE_CTRL.bits.cmd = AOE_ENGINE_CMD_START;
            break;

        case AOE_ENGINE_CMD_STOP:
            MixerReg->ENGINE_CTRL.bits.cmd = AOE_ENGINE_CMD_STOP;
            break;
        default:

            //HI_WARN_AO("Mixer unknow Cmd(0x%x)",newcmd);
            return HI_SUCCESS;
    }

    MixerReg->ENGINE_CTRL.bits.cmd_done = 0;
    Ack = iHAL_AOE_ENGINE_AckCmd(enEngine);
    if (AOE_ENGINE_CMD_DONE != Ack)
    {
        HI_ERR_AO("ENGINE SetCmd(0x%x) failed(0x%x)\n", newcmd, Ack);  //HI_ERR_AO
        return HI_FAILURE;  //return HI_FAILURE;  //TO DO
    }

    return HI_SUCCESS;
}

HI_S32 iHAL_AOE_ENGINE_SetAttr(AOE_ENGINE_ID_E enEngine, AOE_ENGINE_CHN_ATTR_S stAttr)
{
    HI_U32 Rate, BitDepth, Ch;
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];

    AoeRegBitDepth(stAttr.u32BitPerSample, &BitDepth);
    MixerReg->ENGINE_ATTR.bits.precision = BitDepth;
    AoeRegChannels(stAttr.u32Channels, &Ch);
    MixerReg->ENGINE_ATTR.bits.ch = Ch;
    AoeRegSampelRate(stAttr.u32SampleRate, &Rate);
    MixerReg->ENGINE_ATTR.bits.fs = Rate;
    MixerReg->ENGINE_ATTR.bits.format = (!stAttr.u32DataFormat) ? 0 : 1; //verify stAttr.u32DataFormat;

    return HI_SUCCESS;
}

HI_S32 iHAL_AOE_ENGINE_SetAvcAttr(AOE_ENGINE_ID_E enEngine, HI_UNF_SND_AVC_ATTR_S* pstAvcAttr)
{
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];
    U_ENGINE_AVC_TIME_ATTR* AvcTimeReg = (U_ENGINE_AVC_TIME_ATTR*)(&MixerReg->ENGINE_AVC_TIME_ATTR);
    U_ENGINE_AVC_LEVEL_ATTR* AvcLevelReg = (U_ENGINE_AVC_LEVEL_ATTR*)(&MixerReg->ENGINE_AVC_LEVEL_ATTR);

    AvcTimeReg->bits.attack_time = pstAvcAttr->u32AttackTime;
    AvcTimeReg->bits.release_time = pstAvcAttr->u32ReleaseTime;
    AvcLevelReg->bits.limiter_level = -(pstAvcAttr->s32LimiterLevel);
    AvcLevelReg->bits.threshold_level = -(pstAvcAttr->s32ThresholdLevel);
    AvcLevelReg->bits.gain = pstAvcAttr->s32Gain;
    HI_INFO_AO("attack_time %d\n", AvcTimeReg->bits.attack_time);
    HI_INFO_AO("release_time %d\n", AvcTimeReg->bits.release_time);
    HI_INFO_AO("limiter_level %d\n", AvcLevelReg->bits.limiter_level);
    HI_INFO_AO("threshold_level %d\n", AvcLevelReg->bits.threshold_level);
    HI_INFO_AO("gain %d\n", AvcLevelReg->bits.gain);

    return HI_SUCCESS;
}

HI_S32 iHAL_AOE_ENGINE_SetAvcChangeAttr(AOE_ENGINE_ID_E enEngine, HI_BOOL bEnable)
{
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];
    MixerReg->ENGINE_CTRL.bits.avc_change_attr = (HI_TRUE == bEnable) ? 1 : 0;

    HI_INFO_AO("avc_change_attr %d\n", MixerReg->ENGINE_CTRL.bits.avc_change_attr);
    return HI_SUCCESS;
}

HI_S32 iHAL_AOE_ENGINE_AttachAip(AOE_ENGINE_ID_E enEngine, AOE_AIP_ID_E enAIP)
{
    HI_U32 Src;
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];

    AoeRegMixRoute((HI_U32)enAIP, &Src);

    MixerReg->ENGINE_MIX_SRC.bits.aip_fifo_ena |= Src;
    return HI_SUCCESS;

}

HI_S32 iHAL_AOE_ENGINE_DetachAip(AOE_ENGINE_ID_E enEngine, AOE_AIP_ID_E enAIP)
{
    HI_U32 Src;
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];

    AoeRegMixRoute((HI_U32)enAIP, &Src);
    if (MixerReg->ENGINE_MIX_SRC.bits.aip_fifo_ena & Src)
    {
        MixerReg->ENGINE_MIX_SRC.bits.aip_fifo_ena &= ~Src;
        return HI_SUCCESS;
    }
    return HI_FAILURE;
}

HI_S32 iHAL_AOE_ENGINE_AttachAop(AOE_ENGINE_ID_E enEngine, AOE_AOP_ID_E enAOP)
{
    HI_U32 Dst;
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];

    AoeRegMixRoute((HI_U32)enAOP, &Dst);

    MixerReg->ENGINE_ROU_DST.bits.aop_buf_ena |= Dst;
    return HI_SUCCESS;
}

HI_S32 iHAL_AOE_ENGINE_DetachAop(AOE_ENGINE_ID_E enEngine, AOE_AOP_ID_E enAOP)
{
    HI_U32 Dst;
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];

    AoeRegMixRoute((HI_U32)enAOP, &Dst);

    if (MixerReg->ENGINE_ROU_DST.bits.aop_buf_ena & Dst)
    {
        MixerReg->ENGINE_ROU_DST.bits.aop_buf_ena &= ~Dst;
        return HI_SUCCESS;
    }
    return HI_FAILURE;
}

HI_S32 iHAL_AOE_ENGINE_SetAvcEnable(AOE_ENGINE_ID_E enEngine, HI_BOOL bEnable)
{
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];

    MixerReg->ENGINE_CTRL.bits.ena_avc = (HI_TRUE == bEnable) ? 1 : 0;

    HI_INFO_AO("bEnable %d\n", bEnable);

    return HI_SUCCESS;
}

#ifdef HI_SND_SUPPORT_INTERNAL_OP_MAXGAIN
HI_S32 iHAL_AOE_ENGINE_SetPreGainEnable(AOE_ENGINE_ID_E enEngine, SND_ENGINE_PREGAIN_S* pstPreGain)
{
    S_MIXER_REGS_TYPE* MixerReg = (S_MIXER_REGS_TYPE*)g_pMixerReg[enEngine];

    MixerReg->ENGINE_CTRL.bits.ena_pregain = (HI_TRUE == pstPreGain->bPreGainEn) ? 1 : 0;
    MixerReg->ENGINE_CTRL.bits.pregain_int = pstPreGain->u32PreGainInt;

    if (pstPreGain->s32PreGainDec >= 0)
    {
        MixerReg->ENGINE_CTRL.bits.pregain_dec_dir = 0;
        MixerReg->ENGINE_CTRL.bits.pregain_dec = pstPreGain->s32PreGainDec;
    }
    else
    {
        MixerReg->ENGINE_CTRL.bits.pregain_dec_dir = 1;
        MixerReg->ENGINE_CTRL.bits.pregain_dec = -pstPreGain->s32PreGainDec;
    }

    return HI_SUCCESS;
}
#endif

HI_VOID iHAL_AOE_ENGINE_Destroy(AOE_ENGINE_ID_E enENGINE)
{
    return;
}

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */
