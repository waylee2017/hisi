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
  File Name     : drv_adsp_intf_k.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/04/17
  Description   :
  History       :
  1.Date        : 2013/04/17
    Author      : zgjie
    Modification: Created file

******************************************************************************/

/******************************* Include Files *******************************/

/* Sys headers */
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/vmalloc.h>
#include <asm/uaccess.h>
#include <asm/io.h>

/* Unf headers */
#include "hi_error_mpi.h"
#include "hi_reg_common.h"

/* Drv headers */
#include "drv_adsp_private.h"
#include "drv_adsp_ext.h"
#include "hi_audsp_common.h"
#include "hi_audsp_aoe.h"
//#include "hi_audsp_aflt.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#if defined (HI_SND_AOE_SWSIMULATE_SUPPORT)
extern HI_S32 AOE_SwEngineCreate(HI_VOID);
extern HI_S32 AOE_SwEngineDestory(HI_VOID);
#endif

#define ADSP_NAME "HI_ADSP"

/*************************** Structure Definition ****************************/

/* Global parameter */
typedef struct
{
    atomic_t                atmOpenCnt;     /* Open times */
    HI_BOOL                 bReady;         /* Init flag */
    ADSP_REGISTER_PARAM_S*  pstProcParam;   /* ADSP Proc functions */

    ADSP_EXPORT_FUNC_S stExtFunc;      /* ADSP extenal functions */
    ADSP_SETTINGS_S stADSPSetting;
} ADSP_GLOBAL_PARAM_S;

static volatile S_ADSP_CHN_REGS_TYPE *        g_pADSPSysCrg = NULL;

#ifndef HI_ADVCA_FUNCTION_RELEASE
static HI_U32 g_u32AoeRegAddr = 0;
#endif

/***************************** Global Definition *****************************/

/***************************** Static Definition *****************************/
static HI_S32 ADSP_LoadFirmware(ADSP_CODEID_E u32DspCodeId)
{
    HI_S32 sRet = HI_FAILURE;

    switch (u32DspCodeId)
    {
    case ADSP_CODE_AOE:
#if defined (HI_SND_AOE_SWSIMULATE_SUPPORT)
        sRet = AOE_SwEngineCreate();
#else
        sRet = ADSP_AOE_SetCmd(ADSP_AOE_CMD_START);
#endif
        break;
    default:
        HI_ERR_ADSP("dont support DspCode(%d)\n", u32DspCodeId);
        break;
    }

    return sRet;
}

static HI_S32 ADSP_UnLoadFirmware(ADSP_CODEID_E u32DspCodeId)
{
    HI_S32 sRet = HI_SUCCESS;

    switch (u32DspCodeId)
    {
    case ADSP_CODE_AOE:
#if defined (HI_SND_AOE_SWSIMULATE_SUPPORT)
        sRet = AOE_SwEngineDestory();
#else
        sRet = ADSP_AOE_SetCmd(ADSP_AOE_CMD_STOP);
#endif
        break;
    default:
        HI_WARN_ADSP("dont support DspCode(%d)\n", u32DspCodeId);
        break;
    }

    return sRet;
}

static HI_S32 ADSP_GetFirmwareInfo(ADSP_CODEID_E u32DspCodeId, ADSP_FIRMWARE_INFO_S* pstFrm)
{
    if ((HI_NULL == pstFrm))
    {
        HI_ERR_ADSP("Bad param!\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 ADSP_GetAoeFwmInfo(ADSP_CODEID_E u32DspCodeId, ADSP_FIRMWARE_AOE_INFO_S* pstInfo)
{
    HI_S32 Ret = HI_SUCCESS;

    switch (u32DspCodeId)
    {
    case ADSP_CODE_AOE:
#if defined (HI_SND_AOE_SWSIMULATE_SUPPORT)
        pstInfo->bAoeSwFlag = HI_TRUE;
#else
        pstInfo->bAoeSwFlag = HI_FALSE;
#endif
        break;
    default:
        HI_ERR_ADSP("dont support DspCode(%d)\n", u32DspCodeId);
        Ret= HI_FAILURE;
        break;
    }

    return Ret;
}

static ADSP_GLOBAL_PARAM_S s_stAdspDrv =
{
    .atmOpenCnt                    = ATOMIC_INIT(0),
    .bReady                        = HI_FALSE,
    .pstProcParam                  = HI_NULL,
    .stExtFunc                     =
    {
        .pfnADSP_LoadFirmware      = ADSP_LoadFirmware,
        .pfnADSP_UnLoadFirmware    = ADSP_UnLoadFirmware,
        .pfnADSP_GetFirmwareInfo   = ADSP_GetFirmwareInfo,
        .pfnADSP_GetAoeFwmInfo     = ADSP_GetAoeFwmInfo,
		.pfnADSP_DrvResume         = ADSP_DRV_Resume,
		.pfnADSP_DrvSuspend        = ADSP_DRV_Suspend,
    }
};

/*********************************** Code ************************************/

HI_S32 ADSP_DRV_Open(struct inode *inode, struct file  *filp)
{
    if (atomic_inc_return(&s_stAdspDrv.atmOpenCnt) == 1)
    {}

    return HI_SUCCESS;
}

HI_S32 ADSP_DRV_Release(struct inode *inode, struct file  *filp)
{
    /* Not the last close, only close the channel match with the 'filp' */
    if (atomic_dec_return(&s_stAdspDrv.atmOpenCnt) != 0)
    {}
    /* Last close */
    else
    {}

    return HI_SUCCESS;
}

#if defined (HI_SND_AOE_SWSIMULATE_SUPPORT)

#define  ADSP_DEBUG_PROC
#ifdef ADSP_DEBUG_PROC

HI_VOID ADSP_Debug_Proc(HI_U32 u32DebugId, HI_U32 u32DebugVal)
{
    if(DSP_DEBUG_REG_NUM <= u32DebugId)
    {
        return;
    }

    if(HI_NULL == g_pADSPSysCrg)
    {
        return;
    }
    
    g_pADSPSysCrg->ADSP_DEBUG[u32DebugId] = u32DebugVal;
    
    return;
}
#endif 

#endif

#ifndef HI_ADVCA_FUNCTION_RELEASE  
const HI_U32 ADSP_AOE_RateProc(HI_U32 u32Rate)
{
    HI_U32 g_u32RateTab[] = 
    {
      8000,
      11025,
      12000,
      16000,
      22050,
      24000,
      32000,
      44100,
      48000,
      88200,
      96000,
      176400,
      192000,  
    };

    if (u32Rate < sizeof(g_u32RateTab)/sizeof(g_u32RateTab[0]))
    {
        return g_u32RateTab[u32Rate];
    }
    
    return 0;
}

const HI_U32  ADSP_AOE_ChProc(HI_U32 ch)
{
    switch (ch)
    {
    case 0x00:
        return 1;
    case 0x01:
        return 2;
    case 0x03:
        return 8;
    default:
        return 0;
    }
}

const HI_U32  ADSP_AOE_WidthProc(HI_U32 width)
{
    switch (width)
    {
    case 0x00:
        return 8;
    case 0x01:
        return 16;
    case 0x02:
        return 24;
    default:
        return 0;
    }
}

const HI_CHAR *  ADSP_AOE_StatusName(HI_U32 u32Cmd, HI_U32 u32Done)
{ 
    const HI_CHAR *apcName[4] =
    {
        "start",
        "stop",
        "pause",
        "flush",
    };

    if(u32Done == 0 || u32Cmd >= 4)
    {
        return "invalid";
    }

    return apcName[u32Cmd];
}

const HI_U32 ADSP_BufUsedSizeProc(HI_U32 u32Size, HI_U32 u32ReadPtr, HI_U32 u32WritePtr)
{
    if(u32ReadPtr <= u32WritePtr)
    {
        return u32WritePtr - u32ReadPtr;
    }
    else
    {
        return u32Size - (u32ReadPtr - u32WritePtr);
    }
}

const HI_U32 ADSP_BufUsedPercProc(HI_U32 u32Size, HI_U32 u32UsedSize)
{
    if(0 == u32Size)
    {
        return 0;
    }
    else
    {
        return u32UsedSize * 100 / u32Size;
    }
}

const HI_U32 ADSP_BufLatencyMsProc(HI_U32 u32UsedSize, HI_U32 u32FrameSize, HI_U32 u32Rate)
{
    if(0 == u32FrameSize || 0 == u32Rate)
    {
        return 0;
    }
    else
    {
        return (u32UsedSize / u32FrameSize) * 1000 / u32Rate;
    }
}
const HI_U32 ADSP_FrameSizeProc(HI_U32 u32BitWidth, HI_U32 u32Channel)
{
    if(16 == u32BitWidth)
    {
        return u32Channel * sizeof(HI_S16);
    }
    else
    {
        return u32Channel * sizeof(HI_S32);
    }
}
static HI_VOID ADSP_AOE_Proc(struct seq_file *p, HI_VOID *v)
{
    HI_U32 i;
    HI_U32 j = 0;
    S_AOE_REGS_TYPE   *pComReg;
    S_MIXER_REGS_TYPE *pEneReg;
    S_AIP_REGS_TYPE   *pAipReg;  
    S_AOP_REGS_TYPE   *pAopReg;  
    HI_U32* pRptr;
    HI_U32* pWptr;
    HI_U32 u32UsedSize = 0, u32FrameSize = 0;
#ifdef HI_SND_TIMER_CAST
    S_CAST_REGS_TYPE   *pCastReg;
    HI_U32 tmp = 0;
#endif
    
    PROC_PRINT( p, "\n---------------------------------  AOE Status  -------------------------------------------\n");

    pComReg =  (S_AOE_REGS_TYPE *)g_u32AoeRegAddr;
    PROC_PRINT( p,
            "CommonStatus   :ExecuteTimeOutCnt(%d), ScheduleTimeOutCnt(%d)\n",
             pComReg->AOE_STATUS1.bits.excute_timeout_cnt, pComReg->AOE_STATUS1.bits.schedule_timeout_cnt);

    for(i = 0; i < AOE_MAX_ENGINE_NUM; i++)
    {
        pEneReg = (S_MIXER_REGS_TYPE *)(g_u32AoeRegAddr + AOE_ENGINE_REG_OFFSET + i * sizeof(S_MIXER_REGS_TYPE));
        if((pEneReg->ENGINE_CTRL.bits.cmd == 0 || pEneReg->ENGINE_CTRL.bits.cmd == 2)  //when start or pause, proc
            && pEneReg->ENGINE_CTRL.bits.cmd_done == 1)
        {
            PROC_PRINT( p,
                        "ENGINE(%d)   :Status(%s), Format(%s), Rate(%d), Ch(%d), Width(%d), AefMask(0x%x)\n",
                         i,
                         ADSP_AOE_StatusName(pEneReg->ENGINE_CTRL.bits.cmd, pEneReg->ENGINE_CTRL.bits.cmd_done),
                         pEneReg->ENGINE_ATTR.bits.format == 0 ? "pcm" : "iec61937",
                         ADSP_AOE_RateProc(pEneReg->ENGINE_ATTR.bits.fs),
                         ADSP_AOE_ChProc(pEneReg->ENGINE_ATTR.bits.ch),
                         ADSP_AOE_WidthProc(pEneReg->ENGINE_ATTR.bits.precision),
                         pEneReg->ENGINE_ATT_AEF.bits.aef_att_ena);
            
            for (j = 0; j < AOE_MAX_AIP_NUM; j++)
            {
                if((pEneReg->ENGINE_MIX_SRC.bits.aip_fifo_ena) & (1L<<j))
                {
                    pAipReg = (S_AIP_REGS_TYPE *)(g_u32AoeRegAddr + AOE_AIP_REG_OFFSET + j * sizeof(S_AIP_REGS_TYPE));
                    PROC_PRINT( p,
                                "Aip(%d)      :Status(%s), Mute(%s), Vol(%ddB/%ddB), ChMode(%d)\n",
                                 j,
                                 ADSP_AOE_StatusName(pAipReg->AIP_CTRL.bits.cmd, pAipReg->AIP_CTRL.bits.cmd_done),
                                 (0 == pAipReg->AIP_EXT_CTRL.bits.mute) ? "Off" : "On",
                                 (HI_S32)(pAipReg->AIP_EXT_CTRL.bits.volume_l) - 0x79,
                                 (HI_S32)(pAipReg->AIP_EXT_CTRL.bits.volume_r) - 0x79,                     
                                          pAipReg->AIP_EXT_CTRL.bits.channel_mode);
                    if(1 == pAipReg->AIP_BUF_SIZE.bits.buff_flag)
                    {
#ifdef HI_SND_DSP_HW_SUPPORT                        
                        pRptr = (HI_U32*)IO_ADDRESS(pAipReg->AIP_BUF_RPTR);
                        pWptr = (HI_U32*)IO_ADDRESS(pAipReg->AIP_BUF_WPTR);
#else                        
                        pRptr = (HI_U32*)pAipReg->AIP_BUF_RPTR;
                        pWptr = (HI_U32*)pAipReg->AIP_BUF_WPTR;
#endif  
                    }
                    else
                    {
                        pRptr = (HI_U32 *)(&pAipReg->AIP_BUF_RPTR);
                        pWptr = (HI_U32 *)(&pAipReg->AIP_BUF_WPTR);
                    }
                    u32UsedSize = ADSP_BufUsedSizeProc(pAipReg->AIP_BUF_SIZE.bits.buff_size, *pRptr, *pWptr);
                    u32FrameSize = ADSP_FrameSizeProc(ADSP_AOE_WidthProc(pAipReg->AIP_BUFF_ATTR.bits.aip_precision), ADSP_AOE_ChProc(pAipReg->AIP_BUFF_ATTR.bits.aip_ch));
                    PROC_PRINT( p,
                                "            :Buff Format(%s), Rate(%.6d), Ch(%d), Width(%d), Addr(0x%.8x), Size/Used/Latency(0x%.6x/%d%%/%dms), Rptr/Wptr(0x%.6x/0x%.6x)\n",
                                 (0 == pAipReg->AIP_BUFF_ATTR.bits.aip_format) ? "pcm" : "iec61937",
                                 ADSP_AOE_RateProc(pAipReg->AIP_BUFF_ATTR.bits.aip_fs),
                                 ADSP_AOE_ChProc(pAipReg->AIP_BUFF_ATTR.bits.aip_ch),
                                 ADSP_AOE_WidthProc(pAipReg->AIP_BUFF_ATTR.bits.aip_precision),
                                 pAipReg->AIP_BUF_ADDR,
                                 pAipReg->AIP_BUF_SIZE.bits.buff_size,
                                 ADSP_BufUsedPercProc(pAipReg->AIP_BUF_SIZE.bits.buff_size, u32UsedSize),
                                 ADSP_BufLatencyMsProc(u32UsedSize, u32FrameSize, ADSP_AOE_RateProc(pAipReg->AIP_BUFF_ATTR.bits.aip_fs)),
                                 *pRptr,
                                 *pWptr);
                    u32UsedSize = ADSP_BufUsedSizeProc(pAipReg->AIP_FIFO_SIZE.bits.aip_fifo_size, pAipReg->AIP_FIFO_RPTR, pAipReg->AIP_FIFO_WPTR);
                    u32FrameSize = ADSP_FrameSizeProc(ADSP_AOE_WidthProc(pAipReg->AIP_FIFO_ATTR.bits.fifo_precision), ADSP_AOE_ChProc(pAipReg->AIP_FIFO_ATTR.bits.fifo_ch));
                    PROC_PRINT( p,
                                "            :Fifo Format(%s), Rate(%.6d), Ch(%d), Width(%d), Addr(0x%.8x), Size/Used/Latency(0x%.4x/%d%%/%dms), Rptr/Wptr(0x%.4x/0x%.4x)\n",
                                 (0 == pAipReg->AIP_FIFO_ATTR.bits.fifo_format) ? "pcm" : "iec61937",
                                 ADSP_AOE_RateProc(pAipReg->AIP_FIFO_ATTR.bits.fifo_fs),
                                 ADSP_AOE_ChProc(pAipReg->AIP_FIFO_ATTR.bits.fifo_ch),
                                 ADSP_AOE_WidthProc(pAipReg->AIP_FIFO_ATTR.bits.fifo_precision),
                                 pAipReg->AIP_FIFO_ADDR,
                                 pAipReg->AIP_FIFO_SIZE.bits.aip_fifo_size,
                                 ADSP_BufUsedPercProc(pAipReg->AIP_FIFO_SIZE.bits.aip_fifo_size, u32UsedSize),
                                 ADSP_BufLatencyMsProc(u32UsedSize, u32FrameSize, ADSP_AOE_RateProc(pAipReg->AIP_FIFO_ATTR.bits.fifo_fs)),
                                 pAipReg->AIP_FIFO_RPTR,
                                 pAipReg->AIP_FIFO_WPTR);
                }
            }
            for (j = 0; j < AOE_MAX_AOP_NUM; j++)
            {
                if((pEneReg->ENGINE_ROU_DST.bits.aop_buf_ena) & (1L<<j))
                {
                    pAopReg = (S_AOP_REGS_TYPE *)(g_u32AoeRegAddr + AOE_AOP_REG_OFFSET + j * sizeof(S_AOP_REGS_TYPE));
#ifdef HI_SND_TIMER_CAST
                    if(pAopReg->AOP_BUFF_ATTR.bits.buf_priority == HI_FALSE)
                    {
                    PROC_PRINT( p,
                            "Aop(%d,Cast) :Status(%s), AefBypass(%s), Vol(%ddB/%ddB), Mute(%s)\n",
                                 j,
                                 ADSP_AOE_StatusName(pAopReg->AOP_CTRL.bits.cmd, pAopReg->AOP_CTRL.bits.cmd_done),
                             (0 == pAopReg->AOP_CTRL.bits.ena_aef_bypass) ? "Off" : "On",   
                             (HI_S32)(pAopReg->AOP_EXT_CTRL.bits.volume_l) - 0x79,
                             (HI_S32)(pAopReg->AOP_EXT_CTRL.bits.volume_l) - 0x79,
                             (0 == pAopReg->AOP_EXT_CTRL.bits.mute) ? "Off" : "On");
                    }
                    else
#endif
                    {
                        PROC_PRINT( p,
                                    "Aop(%d)      :Status(%s), AefBypass(%s), Vol(%ddB/%ddB), mute(%s)\n",
                                     j,
                                     ADSP_AOE_StatusName(pAopReg->AOP_CTRL.bits.cmd, pAopReg->AOP_CTRL.bits.cmd_done),
                                     (0 == pAopReg->AOP_CTRL.bits.ena_aef_bypass) ? "Off" : "On",
                                     (HI_S32)(pAopReg->AOP_EXT_CTRL.bits.volume_l) - 0x79,       
                                     (HI_S32)(pAopReg->AOP_EXT_CTRL.bits.volume_r) - 0x79,
                                     (0 == pAopReg->AOP_EXT_CTRL.bits.mute) ? "Off" : "On");
                    }
                    if(1 == pAopReg->AOP_BUF_SIZE.bits.buff_flag)    
                    {
#ifdef HI_SND_DSP_HW_SUPPORT                        
                        pRptr = (HI_U32*)IO_ADDRESS(pAopReg->AOP_BUF_RPTR);
                        pWptr = (HI_U32*)IO_ADDRESS(pAopReg->AOP_BUF_WPTR);
#else                        
                        pRptr = (HI_U32*)pAopReg->AOP_BUF_RPTR;
                        pWptr = (HI_U32*)pAopReg->AOP_BUF_WPTR;
#endif   
                    }
                    else  //Aop is Cast          
                    {
                        pRptr = (HI_U32 *)(&pAopReg->AOP_BUF_RPTR);
                        pWptr = (HI_U32 *)(&pAopReg->AOP_BUF_WPTR); 
                    }
                    u32UsedSize = ADSP_BufUsedSizeProc(pAopReg->AOP_BUF_SIZE.bits.buff_size, *pRptr, *pWptr);
                    u32FrameSize = ADSP_FrameSizeProc(ADSP_AOE_WidthProc(pAopReg->AOP_BUFF_ATTR.bits.buf_precision), ADSP_AOE_ChProc(pAopReg->AOP_BUFF_ATTR.bits.buf_ch));
                    PROC_PRINT( p,
                            "            :Buff Format(%s), Rate(%.6d), Ch(%d), Width(%d), Addr(0x%.8x), Size/Used/Latency(0x%.4x/%d%%/%dms), Rptr/Wptr(0x%.4x/0x%.4x)\n",
                                 pAopReg->AOP_BUFF_ATTR.bits.buf_format == 0 ? "pcm" : "iec61937",
                                 ADSP_AOE_RateProc(pAopReg->AOP_BUFF_ATTR.bits.buf_fs),
                                 ADSP_AOE_ChProc(pAopReg->AOP_BUFF_ATTR.bits.buf_ch),
                             ADSP_AOE_WidthProc(pAopReg->AOP_BUFF_ATTR.bits.buf_precision),
                             pAopReg->AOP_BUF_ADDR,
                             pAopReg->AOP_BUF_SIZE.bits.buff_size,
                             ADSP_BufUsedPercProc(pAopReg->AOP_BUF_SIZE.bits.buff_size, u32UsedSize),
                             ADSP_BufLatencyMsProc(u32UsedSize, u32FrameSize, ADSP_AOE_RateProc(pAopReg->AOP_BUFF_ATTR.bits.buf_fs)),
                             *pRptr,  
                             *pWptr
                             ); 
#ifdef HI_SND_TIMER_CAST
                    if(pAopReg->AOP_BUFF_ATTR.bits.buf_priority == HI_FALSE)//Aop is Cast
                    {
                        for (tmp = 0; tmp < AOE_MAX_CAST_NUM; tmp++)
                        {
                            pCastReg = (S_CAST_REGS_TYPE *)(g_u32AoeRegAddr + AOE_CAST_REG_OFFSET + tmp * sizeof(S_CAST_REGS_TYPE)); 
                            if(pCastReg->CAST_ATTR == j)
                            {                                                                             
                                PROC_PRINT( p,
                                            "            :BuffWritCnt(Total/Nomal/AddMute)(%.6u/%.6u/%.6u), BuffOverWriteCnt(%.6u)\n",
                                            pCastReg->CAST_BUF_WRITETOTAL_CNT,
                                            pCastReg->CAST_BUF_WRITEOK_CNT,
                                            pCastReg->CAST_BUF_WRITEMUTE_CNT,                                                                                    
                                            pCastReg->CAST_BUF_OVERWRITE_CNT); 

                                u32UsedSize = ADSP_BufUsedSizeProc(pCastReg->CAST_FIFO_SIZE, pCastReg->CAST_FIFO_RPTR, pCastReg->CAST_FIFO_WPTR);
                                PROC_PRINT( p,
                                            "            :FIFO Size/Used/Latency(0x%.4x/%d%%/%dms), Rptr/Wptr(0x%.4x/0x%.4x), FIFOWrite(Try/OK)(%.6u/%.6u), ForceFIFOReadCnt(%.6u)\n",
                                             pCastReg->CAST_FIFO_SIZE,
                                            ADSP_BufUsedPercProc(pCastReg->CAST_FIFO_SIZE, u32UsedSize),
                                            ADSP_BufLatencyMsProc(u32UsedSize, u32FrameSize, ADSP_AOE_RateProc(pAopReg->AOP_BUFF_ATTR.bits.buf_fs)),
                                             pCastReg->CAST_FIFO_RPTR,  
                                            pCastReg->CAST_FIFO_WPTR,

                                            pCastReg->CAST_FIFO_TRY_CNT, 
                                            pCastReg->CAST_FIFO_OK_CNT, 
                                            pCastReg->CAST_FIFO_FORCE_READ_CNT); 
                            }
            
                        }
                    } 
#endif

                }
            }
            PROC_PRINT( p, "\n");
        }
    }
  
    return;
}
static HI_VOID ADSP_COM_Proc(struct seq_file *p, HI_VOID *v)
{
    HI_U32 j;
    
    PROC_PRINT( p, "\n---------------------------------  Common Status  ------------------------------------------\n");
    PROC_PRINT( p, "DebugValue     :");
    for(j = 0; j < DSP_DEBUG_REG_NUM; j++)
    {
        PROC_PRINT( p,
                    "Debug%d(0x%x/%d)",
                     j,
                     g_pADSPSysCrg->ADSP_DEBUG[j],
                     g_pADSPSysCrg->ADSP_DEBUG[j]);
        if((j + 1) % 4)  //a line 4 reg
        {
            PROC_PRINT( p, ", ");
        }
        else
        {
            PROC_PRINT( p, "\n                ");
        }
    }
    PROC_PRINT( p, "\n");
    return;
}
HI_S32 ADSP_DRV_ReadProc(struct seq_file *p, HI_VOID *v)
{
    ADSP_AOE_Proc(p, v);
    ADSP_COM_Proc(p, v);
    return HI_SUCCESS;
    }

HI_S32 ADSP_DRV_WriteProc(struct file * file,
                                   const char __user * buf, size_t count, loff_t *ppos)
{
    return count;
}


HI_S32 ADSP_DRV_RegisterProc(ADSP_REGISTER_PARAM_S *pstParam)
{  
    HI_CHAR aszBuf[16];
    DRV_PROC_ITEM_S*  pProcItem;
    
    /* Check parameters */
    if (HI_NULL == pstParam)
    {
        return HI_FAILURE;
    }

    s_stAdspDrv.pstProcParam = pstParam;

    /* Create proc */
    snprintf(aszBuf, sizeof(aszBuf), "*adsp");
    pProcItem = HI_DRV_PROC_AddModule(aszBuf, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_FATAL_ADSP("Create adsp proc entry fail!\n");
        return HI_FAILURE;
    }

    /* Set functions */
    pProcItem->read  = s_stAdspDrv.pstProcParam->pfnReadProc;
    pProcItem->write = s_stAdspDrv.pstProcParam->pfnWriteProc;
  
    return HI_SUCCESS;
}


HI_VOID ADSP_DRV_UnregisterProc(HI_VOID)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE  

    HI_CHAR aszBuf[16];
    
    snprintf(aszBuf, sizeof(aszBuf), "*adsp");
    HI_DRV_PROC_RemoveModule(aszBuf);
    /* Unregister */

    /* Clear param */
    s_stAdspDrv.pstProcParam = HI_NULL;
#endif    
    return;
}
#endif

HI_S32 ADSP_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE
    HI_PRINT("ADSP suspend OK\n");
#endif
    return HI_SUCCESS;
}
HI_S32 HI_DRV_ADSP_Init(HI_VOID)
{
    return ADSP_DRV_Init();
}

HI_VOID HI_DRV_ADSP_DeInit(HI_VOID)
{
    ADSP_DRV_Exit();
}

HI_S32 ADSP_DRV_Resume(PM_BASEDEV_S *pdev)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE
    HI_PRINT("ADSP resume OK\n");
#endif
    return HI_SUCCESS;
}

HI_S32 ADSP_DRV_Init(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = HI_DRV_MODULE_Register(HI_ID_ADSP, ADSP_NAME, (HI_VOID*)&s_stAdspDrv.stExtFunc);
    if (HI_SUCCESS != s32Ret)
    {
        HI_FATAL_ADSP("Reg module fail:%#x!\n", s32Ret);
        return s32Ret;
    }
        g_pADSPSysCrg = (volatile S_ADSP_CHN_REGS_TYPE * )ioremap_nocache(DSP0_SHARESRAM_CHAN0_BASEADDR, sizeof(S_ADSP_CHN_REGS_TYPE));

#ifndef HI_ADVCA_FUNCTION_RELEASE
    g_u32AoeRegAddr = (HI_U32 )ioremap_nocache(AOE_COM_REG_BASE, AOE_REG_LENGTH);
#endif     
    return HI_SUCCESS;
}

HI_VOID ADSP_DRV_Exit(HI_VOID)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE
    if(g_u32AoeRegAddr)
        iounmap((HI_VOID*)g_u32AoeRegAddr);
#endif 

    if(g_pADSPSysCrg)
        iounmap((HI_VOID*)g_pADSPSysCrg);

    HI_DRV_MODULE_UnRegister(HI_ID_ADSP);

    return;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* End of #ifdef __cplusplus */
