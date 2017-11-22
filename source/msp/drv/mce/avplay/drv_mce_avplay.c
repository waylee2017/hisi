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
  File Name	: drv_mce_avplay.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/
#include <linux/kernel.h>
#include <linux/string.h>
#include <linux/delay.h>
#include <linux/kthread.h>
#include <linux/vmalloc.h>

#include "drv_mce_avplay.h"
#include "hi_drv_mce.h"
#include "hi_mpi_adec.h"

#include "hi_kernel_adapt.h"

#include "drv_i2c_ext.h"
#include "drv_gpio_ext.h"
#include "drv_gpioi2c_ext.h"
#include "drv_tuner_ext.h"
#include "drv_demux_ext.h"
#include "drv_base_ext_k.h"
#include "drv_vdec_ext.h"
#include "drv_vo_ext.h"
#include "drv_disp_ext.h"
#include "drv_sync_ext.h"
#include "drv_vfmw_ext.h"
#include "drv_adec_ext.h"
#include "drv_ao_ext.h"
#include "drv_file_ext.h"
#include "optm_vo.h"
#include "optm_hifb.h"

#define MCE_MAX_AVPLAY_NUM          1

#define DRV_AVPLAY_LOCK(pMutex)    \
    do{ \
        if(down_interruptible(pMutex)) \
        {       \
            HI_ERR_MCE("ERR: avplay lock error!\n");    \
        }   \
    }while(0)

#define DRV_AVPLAY_UNLOCK(pMutex)    \
    do{ \
        up(pMutex); \
    }while(0)


#define AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay)  \
    do{ \
        pAvplay = &g_stAvplay[hAvplay]; \
    }while(0);


static MCE_AVPLAY_S    g_stAvplay[MCE_MAX_AVPLAY_NUM];
static HI_HANDLE       g_hAvplay[MCE_MAX_AVPLAY_NUM];
static HI_U32 		   g_u32VidenabledCnt = 0;
static HI_BOOL		   g_bClearLogoFlag = HI_FALSE;

HI_S32 DRV_AVPLAY_MallocVidChn(MCE_AVPLAY_S *pAvplay, const HI_VOID *pPara)
{
    HI_S32                      Ret = 0;
    HI_UNF_AVPLAY_OPEN_OPT_S    *pOpenPara = (HI_UNF_AVPLAY_OPEN_OPT_S*)pPara;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;
    DMX_MMZ_BUF_S               stMmzBuf;
    
    Ret = HI_DRV_VDEC_Open();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_Init failed.\n");
        goto ERR1;
    }

    Ret = HI_DRV_VDEC_AllocChan(&pAvplay->hVdec, pOpenPara);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_AllocChan failed.\n");
        goto ERR2;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        memset(&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
        DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_VID;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize;
                         
        Ret = HI_DRV_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxVid, &stMmzBuf, HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_CreateChannel failed.\n");
            goto ERR3;
        }
        
        Ret = HI_DRV_VDEC_ChanBufferInit(pAvplay->hVdec, 0, pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_VDEC_ChanBufferInit failed.\n");
            goto ERR4;
        }
    }
    else if (HI_UNF_AVPLAY_STREAM_TYPE_ES == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_DRV_VDEC_ChanBufferInit(pAvplay->hVdec, pAvplay->AvplayAttr.stStreamAttr.u32VidBufSize, HI_INVALID_HANDLE);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_VDEC_ChanBufferInit failed.\n");
            goto ERR3;
        }
    }

    return HI_SUCCESS;
    
ERR4:
    (HI_VOID)HI_DRV_DMX_DestroyChannel(pAvplay->hDmxVid);
ERR3:
    (HI_VOID)HI_DRV_VDEC_FreeChan(pAvplay->hVdec);
ERR2:
    (HI_VOID)HI_DRV_VDEC_Close();
ERR1:
    return Ret;
}

HI_S32 DRV_AVPLAY_FreeVidChn(MCE_AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    Ret = HI_DRV_VDEC_ChanBufferDeInit(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_ChanBufferDeInit failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        if(HI_INVALID_HANDLE != pAvplay->hDmxVid)
        {
            Ret = HI_DRV_DMX_DestroyChannel(pAvplay->hDmxVid);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("call HI_DRV_DMX_DestroyChannel failed.\n");
                return Ret;
            }

            pAvplay->hDmxVid = HI_INVALID_HANDLE;
        }
    }

    if(HI_INVALID_HANDLE != pAvplay->hVdec)
    {
        Ret = HI_DRV_VDEC_FreeChan(pAvplay->hVdec);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_VDEC_FreeChan failed.\n");
            return Ret;
        }
        
        pAvplay->hVdec = HI_INVALID_HANDLE;
    }

    HI_DRV_VDEC_Close();

    return HI_SUCCESS;
}

HI_S32 DRV_AVPLAY_MallocAudChn(MCE_AVPLAY_S *pAvplay)
{
    HI_S32                      Ret = 0;
    HI_UNF_DMX_CHAN_ATTR_S      DmxChnAttr;
    DMX_MMZ_BUF_S               stMmzBuf;
    ADEC_SLIM_ATTR_S            AdecAttr;
/*    
    Ret = HI_DRV_ADEC_Init();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_ADEC_Init failed.\n");
        goto ERR1;
    }
*/
    AdecAttr.enCodecType = ADEC_KEL_TPYE_MPEG;
    AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize * 2 / 3;
    AdecAttr.u32OutBufNum = AVPLAY_ADEC_FRAME_NUM;
    Ret = HI_DRV_ADEC_Open(&pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_ADEC_Open failed.\n");
        goto ERR1;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        memset(&DmxChnAttr, 0, sizeof(HI_UNF_DMX_CHAN_ATTR_S));
        DmxChnAttr.enOutputMode = HI_UNF_DMX_CHAN_OUTPUT_MODE_PLAY;
        DmxChnAttr.enChannelType = HI_UNF_DMX_CHAN_TYPE_AUD;
        DmxChnAttr.u32BufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize;

        Ret = HI_DRV_DMX_CreateChannel(pAvplay->AvplayAttr.u32DemuxId, &DmxChnAttr, &pAvplay->hDmxAud, &stMmzBuf, HI_NULL);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_CreateChannel failed.\n");
            goto ERR3;
        }
    }
    
    return HI_SUCCESS;
    
ERR3:
    (HI_VOID)HI_DRV_ADEC_Close(pAvplay->hAdec);
/*
ERR2:
    (HI_VOID)HI_DRV_ADEC_DeInit();
*/
ERR1:
    return Ret;
}

HI_S32 DRV_AVPLAY_FreeAudChn(MCE_AVPLAY_S *pAvplay)
{
    HI_S32  Ret;

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        if(HI_INVALID_HANDLE != pAvplay->hDmxAud)
        {
            Ret = HI_DRV_DMX_DestroyChannel(pAvplay->hDmxAud);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("call HI_DRV_DMX_DestroyChannel failed.\n");
                return Ret;
            }

            pAvplay->hDmxAud = HI_INVALID_HANDLE;
        }
    }

    if(HI_INVALID_HANDLE != pAvplay->hAdec)
    {
        Ret = HI_DRV_ADEC_Close(pAvplay->hAdec);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_ADEC_Close failed.\n");
            return Ret;
        }

        pAvplay->hAdec = HI_INVALID_HANDLE;
    }

/*
    Ret = HI_DRV_ADEC_DeInit();
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_ADEC_deInit failed.\n");
    }
*/
    return HI_SUCCESS;
}

HI_S32 DRV_AVPLAY_SetAdecAttr(MCE_AVPLAY_S *pAvplay, const ADEC_SLIM_ATTR_S *pAdecAttr)
{
    HI_S32              Ret;
    ADEC_SLIM_ATTR_S    AdecAttr;

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_MCE("aud chn is close, can not set adec attr.\n");
        return HI_FAILURE;
    }

    if (pAvplay->AudEnable)
    {
        HI_ERR_MCE("aud chn is running, can not set adec attr.\n");
        return HI_FAILURE;
    }

    AdecAttr.enCodecType = pAdecAttr->enCodecType;
    
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize * 2 / 3;
    }
    else
    {
        AdecAttr.u32InBufSize = pAvplay->AvplayAttr.stStreamAttr.u32AudBufSize;
    }
    AdecAttr.u32OutBufNum = AVPLAY_ADEC_FRAME_NUM;

    Ret = HI_DRV_ADEC_SetAttr(pAvplay->hAdec, &AdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_ADEC_SetAttr failed.\n");
        return Ret;
    }

    pAvplay->AdecType = AdecAttr.enCodecType;

    return Ret;
}

HI_S32 DRV_AVPLAY_GetAdecAttr(const MCE_AVPLAY_S *pAvplay, ADEC_SLIM_ATTR_S *pAdecAttr)
{
    HI_S32       Ret;

    if (HI_INVALID_HANDLE == pAvplay->hAdec)
    {
        HI_ERR_MCE("aud chn is close, can not set adec attr.\n");
        return HI_FAILURE;
    }

    Ret = HI_DRV_ADEC_GetAttr(pAvplay->hAdec, pAdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_ADEC_GetAttr failed.\n");
    }
    
    return Ret;
}

HI_S32 DRV_AVPLAY_SetVdecAttr(MCE_AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_UNF_VCODEC_ATTR_S  VdecAttr;
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_MCE("vid chn is close, can not set vdec attr.\n");
        return HI_FAILURE;
    }

    Ret = HI_DRV_VDEC_GetChanAttr(pAvplay->hVdec, &VdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_MPI_VDEC_GetChanAttr failed.\n");
        return Ret;
    }

    if (pAvplay->VidEnable)
    {
        if (VdecAttr.enType != pVdecAttr->enType)
        {
            HI_ERR_MCE("vid chn is running, can not set vdec type.\n");
            return HI_FAILURE;
        }
    }

    Ret = HI_DRV_VDEC_SetChanAttr(pAvplay->hVdec,pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_SetChanAttr failed.\n");
    }

    memcpy(&pAvplay->VdecAttr, pVdecAttr, sizeof(HI_UNF_VCODEC_ATTR_S));

    return Ret;
}

HI_S32 DRV_AVPLAY_GetVdecAttr(const MCE_AVPLAY_S *pAvplay, HI_UNF_VCODEC_ATTR_S *pVdecAttr)
{
    HI_S32                Ret;

    if (HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_MCE("vid chn is close, can not set vdec attr.\n");
        return HI_FAILURE;
    }

    Ret = HI_DRV_VDEC_GetChanAttr(pAvplay->hVdec, pVdecAttr);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_GetChanAttr failed.\n");
    }

    return Ret;
}

HI_S32 DRV_AVPLAY_SetPid(MCE_AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, const HI_U32 *pPid)
{
    HI_S32       Ret = HI_SUCCESS;
    
    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_MCE("avplay is not ts mode.\n");
        return HI_FAILURE;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_MCE("aud chn is close, can not set aud pid.\n");
            return HI_FAILURE;
        }    
    
        if (pAvplay->AudEnable)
        {
            HI_ERR_MCE("aud chn is running, can not set aud pid.\n");
            return HI_FAILURE;
        }    
        
        Ret = HI_DRV_DMX_SetChannelPID(pAvplay->hDmxAud, *pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_SetChannelPID failed.\n");
        }

        pAvplay->DmxAudPid = *pPid;        
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (pAvplay->VidEnable)
        {
            HI_ERR_MCE("vid chn is running, can not set vid pid.\n");
            return HI_FAILURE;
        }

        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_MCE("vid chn is close, can not set vid pid.\n");
            return HI_FAILURE;
        }

        Ret = HI_DRV_DMX_SetChannelPID(pAvplay->hDmxVid, *pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_SetChannelPID failed.\n");
        }

        pAvplay->DmxVidPid = *pPid;
    }

    return Ret;
}

HI_S32 DRV_AVPLAY_GetPid(const MCE_AVPLAY_S *pAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_U32 *pPid)
{
    HI_S32       Ret = HI_SUCCESS;

    if (pAvplay->AvplayAttr.stStreamAttr.enStreamType != HI_UNF_AVPLAY_STREAM_TYPE_TS)
    {
        HI_ERR_MCE("avplay is not ts mode.\n");
        return HI_FAILURE;
    }

    if (HI_UNF_AVPLAY_ATTR_ID_AUD_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hAdec)
        {
            HI_ERR_MCE("aud chn is close, can not get aud pid.\n");
            return HI_FAILURE;
        }

        Ret = HI_DRV_DMX_GetChannelPID(pAvplay->hDmxAud, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_GetChannelPID failed.\n");
        }
    }
    else if (HI_UNF_AVPLAY_ATTR_ID_VID_PID == enAttrID)
    {
        if (HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            HI_ERR_MCE("vid chn is close, can not get vid pid.\n");
            return HI_FAILURE;
        }

        Ret = HI_DRV_DMX_GetChannelPID(pAvplay->hDmxVid, pPid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_GetChannelPID failed.\n");
        }
    }

    return Ret;
}

HI_S32 DRV_AVPLAY_SetSyncAttr(MCE_AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    return HI_DRV_SYNC_SetAttr(pAvplay->hSync, pSyncAttr);
}

HI_S32 DRV_AVPLAY_GetSyncAttr(MCE_AVPLAY_S *pAvplay, HI_UNF_SYNC_ATTR_S *pSyncAttr)
{
    return HI_DRV_SYNC_GetAttr(pAvplay->hSync, pSyncAttr);
}

HI_S32 DRV_AVPLAY_StartVidChn(const MCE_AVPLAY_S *pAvplay)
{
    HI_S32         Ret;

    Ret = HI_DRV_SYNC_Start(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_SYNC_Start Vid failed.\n");
        goto ERR1;
    }

    Ret = HI_DRV_VDEC_ChanStart(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_ChanStart failed.\n");
        goto ERR2;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_DRV_DMX_OpenChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_OpenChannel failed.\n");
            goto ERR3;
        }
    }

    return HI_SUCCESS;
    
ERR3:
    (HI_VOID)HI_DRV_VDEC_ChanStop(pAvplay->hDmxVid);
ERR2:
    (HI_VOID)HI_DRV_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
ERR1:
    return Ret;
}

HI_S32 DRV_AVPLAY_StopVidChn(const MCE_AVPLAY_S *pAvplay, HI_UNF_AVPLAY_STOP_MODE_E enMode)
{
    HI_S32         Ret;

    Ret = HI_DRV_VDEC_ChanStop(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_ChanStop failed.\n");
        return Ret;
    }

    Ret = HI_DRV_VDEC_ResetChan(pAvplay->hVdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_VDEC_ResetChan failed.\n");
        return Ret;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_DRV_DMX_CloseChannel(pAvplay->hDmxVid);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_CloseChannel failed.\n");
            return Ret;
        }
    }

    if (HI_UNF_AVPLAY_STOP_MODE_STILL == enMode)
    {
        (HI_VOID)HI_DRV_VO_ResetWindow(pAvplay->hWindow, HI_UNF_WINDOW_FREEZE_MODE_LAST);
    }
    else
    {
        (HI_VOID)HI_DRV_VO_ResetWindow(pAvplay->hWindow, HI_UNF_WINDOW_FREEZE_MODE_BLACK);
    }

    Ret = HI_DRV_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_VID);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_SYNC_Stop Vid failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_AVPLAY_StartAudChn(const MCE_AVPLAY_S *pAvplay)
{
    HI_S32         Ret;

    Ret = HI_DRV_SYNC_Start(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_SYNC_Start Aud failed.\n");
        goto ERR1;
    }
/*
    Ret = HI_DRV_ADEC_Start(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_ADEC_Start failed.\n");
        goto ERR2;
    }
*/
	Ret = HI_DRV_AO_Track_Start(pAvplay->hSnd);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_AO_Track_Start failed.\n");
        goto ERR2;
    }

    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_DRV_DMX_OpenChannel(pAvplay->hDmxAud);
        if(HI_SUCCESS != Ret)
        {
            HI_ERR_MCE("call HI_DRV_DMX_OpenChannel failed.\n");
            goto ERR2;
        }
    }

    return HI_SUCCESS;
/*
ERR3:
    (HI_VOID)HI_DRV_ADEC_Stop(pAvplay->hAdec);
*/    
ERR2:
    (HI_VOID)HI_DRV_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
ERR1:
    return Ret;
}

HI_S32 DRV_AVPLAY_StopAudChn(const MCE_AVPLAY_S *pAvplay)
{
    HI_S32         Ret;
/*
    Ret = HI_DRV_ADEC_Stop(pAvplay->hAdec);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_ADEC_Stop failed.\n");
        return Ret;
    }
*/
    if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        Ret = HI_DRV_DMX_CloseChannel(pAvplay->hDmxAud);
        if (Ret != HI_SUCCESS)
        {
            HI_ERR_MCE("call HI_DRV_DMX_CloseChannel failed.\n");
            return Ret;
        }
    }

	Ret = HI_DRV_AO_Track_Stop(pAvplay->hSnd);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_AO_Track_Stop failed.\n");
        return Ret;
    }

    Ret = HI_DRV_SYNC_Stop(pAvplay->hSync, SYNC_CHAN_AUD);
    if (Ret != HI_SUCCESS)
    {
        HI_ERR_MCE("call HI_DRV_SYNC_Stop Aud failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 DRV_AVPLAY_Reset(MCE_AVPLAY_S *pAvplay)
{
    return HI_SUCCESS;
}

HI_VOID DRV_AVPLAY_ProcAdecToAo(MCE_AVPLAY_S *pAvplay)
{
    HI_S32                  Ret;
    ADEC_EXTFRAMEINFO_S     AdecExtInfo;
    HI_U32                  AoBufTime = 0;
    ADEC_STATUSINFO_S       AdecStatusinfo;
    
    if (!pAvplay->AudEnable)
    {
        return;
    }

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {        
        Ret = HI_DRV_ADEC_ReceiveFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm, &AdecExtInfo);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->AudInfo.SrcPts = AdecExtInfo.u32OrgPtsMs;
            pAvplay->AudInfo.Pts = pAvplay->AvplayAudFrm.u32PtsMs;
            pAvplay->AudInfo.FrameTime = AdecExtInfo.u32FrameDurationMs;
            
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_TRUE;
        }
        else
        {
            (HI_VOID)HI_DRV_ADEC_Pull(pAvplay->hAdec);
        }
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO])
    {
    #if 0
        static struct file    *fpDst = HI_NULL;
        if (HI_NULL == fpDst)
        {
            fpDst = HI_DRV_FILE_Open("/mnt/mce.pcm", 1);
            HI_INFO_MCE("%u %u %u\n", pAvplay->AvplayAudFrm.u32Channels, pAvplay->AvplayAudFrm.s32BitPerSample
            , pAvplay->AvplayAudFrm.u32SampleRate);
        }

        HI_DRV_FILE_Write(fpDst, pAvplay->AvplayAudFrm.ps32PcmBuffer, pAvplay->AvplayAudFrm.u32PcmSamplesPerFrame * 
                     pAvplay->AvplayAudFrm.u32Channels* pAvplay->AvplayAudFrm.s32BitPerSample / 8);

        (HI_VOID)HI_DRV_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
    #endif    
		(HI_VOID)HI_DRV_AO_Track_GetDelayMs(pAvplay->hSnd, &AoBufTime);

        (HI_VOID)HI_DRV_ADEC_GetStatusInfo(pAvplay->hAdec, &AdecStatusinfo);
                                
        pAvplay->AudInfo.BufTime = AoBufTime;
        pAvplay->AudInfo.FrameNum = AdecStatusinfo.u32UsedBufNum;

        Ret = HI_DRV_SYNC_AudJudge(pAvplay->hSync, &pAvplay->AudInfo, &pAvplay->AudOpt);
        if (HI_SUCCESS == Ret)
        {
            if (SYNC_PROC_DISCARD == pAvplay->AudOpt.SyncProc)
            {
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                (HI_VOID)HI_DRV_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
                return;
            }
            else if (SYNC_PROC_REPEAT == pAvplay->AudOpt.SyncProc
                    || SYNC_AUD_SPEED_ADJUST_DOWN == pAvplay->AudOpt.SpeedAdjust)
            {
                (HI_VOID)HI_DRV_ADEC_Pull(pAvplay->hAdec);
                return;
            }
        }
		

        Ret = HI_DRV_AO_Track_SendData(pAvplay->hSnd, &pAvplay->AvplayAudFrm);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            
            (HI_VOID)HI_DRV_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
        }
        else
        {
            if (HI_ERR_AO_OUT_BUF_FULL != Ret
                && HI_ERR_AO_SENDMUTE != Ret) /* Error drop this frame */
            {
                HI_ERR_MCE("Send AudFrame to AO failed:%#x, drop a frame.\n", Ret);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                (HI_VOID)HI_DRV_ADEC_ReleaseFrame(pAvplay->hAdec, &pAvplay->AvplayAudFrm);
            }
        }
    }

    return;
}

HI_VOID DRV_AVPLAY_ProcDmxToAdec(MCE_AVPLAY_S *pAvplay)
{
    HI_UNF_STREAM_BUF_S             AdecEsBuf;
    HI_S32                          Ret;

    if (!pAvplay->AudEnable)
    {
        return;
    }

    if (!pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        Ret = HI_DRV_DMX_AcquireEs(pAvplay->hDmxAud, &(pAvplay->AvplayDmxEsBuf));
        if (HI_SUCCESS == Ret)
        {
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_TRUE;
        }
    }

    if (pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC])
    {
        #if 0
        AdecEsBuf.pu8Data = (HI_U8 *)(pAvplay->AvplayDmxEsBuf.u32BufVirAddr);
        AdecEsBuf.u32Size = pAvplay->AvplayDmxEsBuf.u32BufLen;   
        
        static struct file    *fpDst = HI_NULL;
        if (HI_NULL == fpDst)
        {
            fpDst = HI_DRV_FILE_Open("/mnt/mce.mp3", 1); 
        }
        HI_DRV_FILE_Write(fpDst, AdecEsBuf.pu8Data, AdecEsBuf.u32Size);
        pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
        (HI_VOID)HI_DRV_DMX_ReleaseEs(pAvplay->hDmxAud, &pAvplay->AvplayDmxEsBuf);
        //HI_DRV_FILE_Close(fpDst);
        #endif

        AdecEsBuf.pu8Data = (HI_U8 *)(pAvplay->AvplayDmxEsBuf.u32BufVirAddr);
        AdecEsBuf.u32Size = pAvplay->AvplayDmxEsBuf.u32BufLen;

        Ret = HI_DRV_ADEC_SendStream(pAvplay->hAdec, &AdecEsBuf, pAvplay->AvplayDmxEsBuf.u32PtsMs);
        if (HI_SUCCESS == Ret)
        {
            pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
            pAvplay->AvplayProcContinue = HI_TRUE;
            (HI_VOID)HI_DRV_DMX_ReleaseEs(pAvplay->hDmxAud, &pAvplay->AvplayDmxEsBuf);
        }
        else
        {
            if (HI_ERR_ADEC_IN_BUF_FULL != Ret)
            {
                HI_ERR_MCE("Send AudEs buf to ADEC fail:%#x, drop a pkg.\n", Ret);
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_DMX_ADEC] = HI_FALSE;
                pAvplay->AvplayProcContinue = HI_TRUE;
                (HI_VOID)HI_DRV_DMX_ReleaseEs(pAvplay->hDmxAud, &pAvplay->AvplayDmxEsBuf);
            }
        }
    }

    return;
}

HI_VOID DRV_AVPLAY_ProcCheckBuf(MCE_AVPLAY_S *pAvplay)
{
    HI_S32                      Ret;
    ADEC_STATUSINFO_S           AudAdecBuf;
    VDEC_STATUSINFO_S           VidVdecBuf;
    HI_MPI_DMX_BUF_STATUS_S     AudDmxBuf;
    HI_MPI_DMX_BUF_STATUS_S     VidDmxBuf;
    HI_U32                      AudBufPercent = 0;
    HI_U32                      VidBufPercent = 0;
    HI_BOOL                     ResetProc = HI_FALSE;
    DMX_PORT_MODE_E             PortMode;
    HI_U32                      PortID;
    
    if(pAvplay->AudEnable)
    {
        Ret = HI_DRV_ADEC_GetStatusInfo(pAvplay->hAdec, &AudAdecBuf);

        if(HI_SUCCESS == Ret)
        {
            if(HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
            {
                Ret = HI_DRV_DMX_GetPESBufferStatus(pAvplay->hDmxAud, &AudDmxBuf);
                if (HI_SUCCESS == Ret)
                {
                    AudBufPercent = (AudDmxBuf.u32UsedSize + AudAdecBuf.u32BufferUsed) * 100 / (AudDmxBuf.u32BufSize + AudAdecBuf.u32BufferSize);
                }
            }
            else
            {
                AudBufPercent = AudAdecBuf.u32BufferUsed * 100 / AudAdecBuf.u32BufferSize;
            }
        }
    }

    if(pAvplay->VidEnable)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_DRV_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidDmxBuf);
            if(HI_SUCCESS == Ret)
            {
                VidBufPercent = VidDmxBuf.u32UsedSize * 100 / VidDmxBuf.u32BufSize;
            }
        }
        else
        {
            Ret = HI_DRV_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VidVdecBuf);
            {
                VidBufPercent = VidVdecBuf.u32BufferUsed * 100 / VidVdecBuf.u32BufferSize;
            }
        }
    }


    if(HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
    {
        (HI_VOID)HI_DRV_DMX_GetPortId(pAvplay->AvplayAttr.u32DemuxId, &PortMode, &PortID);
    }

    if (DMX_PORT_MODE_RAM == PortMode)
    {
        if (AudBufPercent >= AVPLAY_ES_AUD_FULL_PERCENT)
        {
            ResetProc = HI_TRUE;
        }

        if(VidBufPercent >= AVPLAY_ES_VID_FULL_PERCENT)
        {
            ResetProc = HI_TRUE;
        }
    }

    if (ResetProc)
    {
        (HI_VOID)DRV_AVPLAY_Reset(pAvplay);
        
        AudBufPercent = 0;
        VidBufPercent = 0;
    }    

    return;
}


HI_S32 DRV_AVPLAY_ProcThread(HI_VOID *Arg)
{
    MCE_AVPLAY_S        *pAvplay;
    pAvplay = (MCE_AVPLAY_S *)Arg;
        
    while (pAvplay->AvplayThreadRun)
    {       
        DRV_AVPLAY_LOCK(&(pAvplay->AvplayThreadMutex));
 
        pAvplay->AvplayProcContinue = HI_FALSE;
        
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            DRV_AVPLAY_ProcDmxToAdec(pAvplay);
        }
        
        DRV_AVPLAY_ProcAdecToAo(pAvplay);

        DRV_AVPLAY_ProcCheckBuf(pAvplay);

	    if ((pAvplay->VidEnable)&&(HI_FALSE == g_bClearLogoFlag))
        {
           	if (g_u32VidenabledCnt >= 2)
           	{
                HI_DRV_MCE_ClearLogo();
   				g_bClearLogoFlag = HI_TRUE;
           	}
   		    g_u32VidenabledCnt++;
        }

        DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));

        if (pAvplay->AvplayProcContinue)
        {
            continue;
        }

        (HI_VOID)msleep(10);
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_AVPLAY_Init(HI_VOID)
{
    HI_S32 i;

    for(i = 0; i < MCE_MAX_AVPLAY_NUM; i++)
    {
        memset(&g_stAvplay[i], 0x00, sizeof(MCE_AVPLAY_S));
        g_hAvplay[i] = HI_INVALID_HANDLE;
    }

    return HI_SUCCESS;
}

HI_S32 HI_DRV_AVPLAY_DeInit(HI_VOID)
{
    HI_S32 i;

    for(i = 0; i < MCE_MAX_AVPLAY_NUM; i++)
    {
        memset(&g_stAvplay[i], 0x00, sizeof(MCE_AVPLAY_S));
        g_hAvplay[i] = HI_INVALID_HANDLE;
    }

    return HI_SUCCESS;
}
    
HI_S32 HI_DRV_AVPLAY_Create(const HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_HANDLE *phAvplay)
{
    HI_S32              Ret;
    HI_S32              i;
    HI_UNF_SYNC_ATTR_S  SyncAttr;

    for(i = 0; i < MCE_MAX_AVPLAY_NUM; i++)
    {
        if(HI_INVALID_HANDLE == g_hAvplay[i])
        {
            break;
        }
    } 

    if(MCE_MAX_AVPLAY_NUM == i)
    {
        return HI_FAILURE;
    }

    memcpy(&(g_stAvplay[i].AvplayAttr), pstAvAttr, sizeof(HI_UNF_AVPLAY_ATTR_S)); 

    g_stAvplay[i].hAvplay = HI_INVALID_HANDLE;

    g_stAvplay[i].hVdec = HI_INVALID_HANDLE;
    g_stAvplay[i].VdecAttr.enType = HI_UNF_VCODEC_TYPE_BUTT;
    g_stAvplay[i].VdecAttr.enMode = HI_UNF_VCODEC_MODE_NORMAL;
    g_stAvplay[i].VdecAttr.u32ErrCover = 0;
    g_stAvplay[i].VdecAttr.u32Priority = 0;
    g_stAvplay[i].hDmxVid   = HI_INVALID_HANDLE;
    g_stAvplay[i].DmxVidPid = 0x1fff;

    g_stAvplay[i].hAdec = HI_INVALID_HANDLE;
    g_stAvplay[i].AdecType = 0xffffffff;
    g_stAvplay[i].hDmxAud   = HI_INVALID_HANDLE;
    g_stAvplay[i].DmxAudPid = 0x1fff;

    g_stAvplay[i].hWindow = HI_INVALID_HANDLE;

    g_stAvplay[i].hSnd = HI_INVALID_HANDLE;

    g_stAvplay[i].VidEnable = HI_FALSE;
    g_stAvplay[i].AudEnable = HI_FALSE;

    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
    SyncAttr.stSyncStartRegion.s32VidPlusTime = 100;
    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -100;
    SyncAttr.stSyncStartRegion.bSmoothPlay = HI_TRUE;
    SyncAttr.stSyncNovelRegion.s32VidPlusTime = 3000;
    SyncAttr.stSyncNovelRegion.s32VidNegativeTime = -3000;
    SyncAttr.stSyncNovelRegion.bSmoothPlay = HI_FALSE;
    SyncAttr.s32VidPtsAdjust = 0; 
    SyncAttr.s32AudPtsAdjust = 0; 
    SyncAttr.u32PreSyncTimeoutMs = 0;
    SyncAttr.bQuickOutput = HI_TRUE;
    Ret = HI_DRV_SYNC_Create(&SyncAttr, &g_stAvplay[i].hSync);
    if (HI_SUCCESS != Ret)
    {
        HI_ERR_MCE("create sync err!\n");
        return HI_FAILURE;        
    }

    HI_INIT_MUTEX(&g_stAvplay[i].AvplayMutex);
    HI_INIT_MUTEX(&g_stAvplay[i].AvplayThreadMutex);

    g_stAvplay[i].AvplayThreadRun = HI_TRUE;

    g_stAvplay[i].pAvplayThreadInst = kthread_create(DRV_AVPLAY_ProcThread, &(g_stAvplay[i]), "mce_avplay");
    if (IS_ERR(g_stAvplay[i].pAvplayThreadInst) < 0)
    {
        HI_ERR_MCE("create mce avplay thread err!\n");
        HI_DRV_SYNC_Destroy(g_stAvplay[i].hSync);
        return HI_FAILURE;
    }
    
    wake_up_process(g_stAvplay[i].pAvplayThreadInst);

    g_hAvplay[i] = i;
    *phAvplay = g_hAvplay[i];

    return HI_SUCCESS;
    
}

HI_S32 HI_DRV_AVPLAY_Destroy(HI_HANDLE hAvplay)
{
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex));
    
    pAvplay->AvplayThreadRun = HI_FALSE;

    if(HI_NULL != pAvplay->pAvplayThreadInst)
    {
        pAvplay->AvplayThreadRun = HI_FALSE;
        
        kthread_stop(pAvplay->pAvplayThreadInst);

        pAvplay->pAvplayThreadInst = HI_NULL;
    }

    HI_DRV_SYNC_Destroy(pAvplay->hSync);
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
    
    memset(pAvplay, 0x00, sizeof(MCE_AVPLAY_S));
    g_hAvplay[hAvplay] = HI_INVALID_HANDLE;
    
    return HI_SUCCESS;
}

HI_S32 HI_DRV_AVPLAY_ChnOpen(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_VOID *pPara)
{
    HI_S32          Ret;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex));

    if(enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if(HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            Ret = DRV_AVPLAY_MallocVidChn(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("Avplay malloc vid chn failed.\n");
                goto ERR1;
            }
        }
    }
    
    if(enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if(HI_INVALID_HANDLE == pAvplay->hVdec)
        {
            Ret = DRV_AVPLAY_MallocAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("Avplay malloc vid chn failed.\n");
                goto ERR2;
            }
        }
    }

    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));  
    return Ret;

ERR2:
    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        (HI_VOID)DRV_AVPLAY_FreeVidChn(pAvplay);
    }

ERR1:
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
    return Ret;
    
}

HI_S32 HI_DRV_AVPLAY_ChnClose(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    HI_S32          Ret;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex));
    
    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (pAvplay->VidEnable)
        {
            HI_ERR_MCE("vid chn is enable, can not colsed.\n");
            DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
            return HI_FAILURE;
        }

        if (pAvplay->hWindow != HI_INVALID_HANDLE)
        {
            HI_ERR_MCE("window is attach to vdec, can not colsed.\n");
            DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
            return HI_FAILURE;
        }

        if (pAvplay->hVdec != HI_INVALID_HANDLE)
        {
            Ret = DRV_AVPLAY_FreeVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("Avplay free vid chn failed.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
                return Ret;
            }
        }
    }

    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (pAvplay->AudEnable)
        {
            HI_ERR_MCE("aud chn is enable, can not colsed.\n");
            DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
            return HI_FAILURE;
        }

        if (pAvplay->hSnd!= HI_INVALID_HANDLE)
        {
            HI_ERR_MCE("snd is attach to adec, can not colsed.\n");
            DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
            return HI_FAILURE;
        }

        if (pAvplay->hAdec != HI_INVALID_HANDLE)
        {
            Ret = DRV_AVPLAY_FreeAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("Avplay free aud chn failed.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
                return Ret;
            }
        }
    }

    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
    return HI_SUCCESS;
}

HI_S32 HI_DRV_AVPLAY_SetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex));
    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            Ret = DRV_AVPLAY_SetAdecAttr(pAvplay, (ADEC_SLIM_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("set adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = DRV_AVPLAY_SetVdecAttr(pAvplay, (HI_UNF_VCODEC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("set vdec attr failed.\n");
            }
            break;
                
        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = DRV_AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("set aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = DRV_AVPLAY_SetPid(pAvplay, enAttrID, (HI_U32 *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("set vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
            break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = DRV_AVPLAY_SetSyncAttr(pAvplay, (HI_UNF_SYNC_ATTR_S *)pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("set sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            break;

       case HI_UNF_AVPLAY_ATTR_ID_MULTIAUD:
            break;
                        
        default:
            break;
    }

    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
    return Ret;
}

HI_S32 HI_DRV_AVPLAY_GetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex));
    switch (enAttrID)
    {
        case HI_UNF_AVPLAY_ATTR_ID_STREAM_MODE:
            break;

        case HI_UNF_AVPLAY_ATTR_ID_ADEC:
            Ret = DRV_AVPLAY_GetAdecAttr(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("get adec attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VDEC:
            Ret = DRV_AVPLAY_GetVdecAttr(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("get vdec attr failed.\n");
            }
            break;
            
        case HI_UNF_AVPLAY_ATTR_ID_AUD_PID:
            Ret = DRV_AVPLAY_GetPid(pAvplay, enAttrID, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("get aud pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_VID_PID:
            Ret = DRV_AVPLAY_GetPid(pAvplay, enAttrID, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("get vid pid failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_PCR_PID:
             break;

        case HI_UNF_AVPLAY_ATTR_ID_SYNC:
            Ret = DRV_AVPLAY_GetSyncAttr(pAvplay, pPara);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("get sync attr failed.\n");
            }
            break;

        case HI_UNF_AVPLAY_ATTR_ID_OVERFLOW:
            break;
            
        default:
            break;
    }

    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
    return Ret;
}

HI_S32 HI_DRV_AVPLAY_Start(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex));
    DRV_AVPLAY_LOCK(&(pAvplay->AvplayThreadMutex));
    
    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
    {
        if (!pAvplay->VidEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hVdec)
            {
                HI_ERR_MCE("vid chn is close, can not start.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
                return HI_FAILURE;
            }

            if (HI_INVALID_HANDLE == pAvplay->hWindow)
            {
                HI_ERR_MCE("window is not attached, can not start.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));            
                return HI_FAILURE;
            }
            
            Ret = DRV_AVPLAY_StartVidChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("start vid chn failed.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
                return Ret;
            }
            
            Ret = HI_DRV_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("call HI_MPI_SYNC_Play Vid failed.\n");
            }
            
            pAvplay->VidEnable = HI_TRUE;
        }
    }
    
    if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
    {
        if (!pAvplay->AudEnable)
        {
            if (HI_INVALID_HANDLE == pAvplay->hAdec)
            {
                HI_ERR_MCE("aud chn is close, can not start.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
                return HI_FAILURE;
            }

            if (HI_INVALID_HANDLE == pAvplay->hSnd)
            {
                HI_ERR_MCE("snd is not attached, can not start.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));           
                return HI_FAILURE;
            }
            
            Ret = DRV_AVPLAY_StartAudChn(pAvplay);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("start aud chn failed.\n");
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));            
                return Ret;
            }

            Ret = HI_DRV_SYNC_Play(pAvplay->hSync);
            if (Ret != HI_SUCCESS)
            {
                HI_ERR_MCE("call HI_MPI_SYNC_Play Aud failed.\n");
            }

            pAvplay->AudEnable = HI_TRUE;
        }
    }

    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));
    return HI_SUCCESS;
}

HI_S32 HI_DRV_AVPLAY_Stop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_STOP_OPT_S *pStop)
{
    HI_UNF_AVPLAY_STOP_OPT_S   StopOpt;

    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    if (pStop)
    {
        StopOpt.u32TimeoutMs = pStop->u32TimeoutMs;
        StopOpt.enMode = pStop->enMode;
    }
    else
    {
        StopOpt.u32TimeoutMs = 0;
        StopOpt.enMode = HI_UNF_AVPLAY_STOP_MODE_STILL;
    }

    /*The relevant channel is already stopped*/
    if ( ((HI_UNF_AVPLAY_MEDIA_CHAN_AUD == enChn) && (!pAvplay->AudEnable) )
       || ((HI_UNF_AVPLAY_MEDIA_CHAN_VID == enChn) && (!pAvplay->VidEnable))
       || ((((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD | (HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID) == enChn)
           && (!pAvplay->AudEnable) && (!pAvplay->VidEnable)))
    {
        HI_INFO_MCE("The chn is already stoped\n");
        return HI_SUCCESS;
    }
    
    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex));  
    DRV_AVPLAY_LOCK(&(pAvplay->AvplayThreadMutex));
    
    if (0 == StopOpt.u32TimeoutMs)
    {
        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_VID))
        {
            if (pAvplay->VidEnable)
            {
                Ret = DRV_AVPLAY_StopVidChn(pAvplay, StopOpt.enMode);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_MCE("stop vid chn failed.\n");
                    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));                    
                    return Ret;
                }

                pAvplay->VidEnable = HI_FALSE;
            }
        }

        if (enChn & ((HI_U32)HI_UNF_AVPLAY_MEDIA_CHAN_AUD))
        {
            if (pAvplay->AudEnable)
            {
                Ret = DRV_AVPLAY_StopAudChn(pAvplay);
                if (Ret != HI_SUCCESS)
                {
                    HI_ERR_MCE("stop aud chn failed.\n");
                    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
                    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));                     
                    return Ret;
                }

                pAvplay->AudEnable = HI_FALSE;
                pAvplay->AvplayProcDataFlag[AVPLAY_PROC_ADEC_AO] = HI_FALSE; /* avoid there is frame at avplay, when stop avplay, we drop this frame  */
            }
        }
    }
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayThreadMutex));
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex)); 
    return HI_SUCCESS;
}


HI_S32 HI_DRV_AVPLAY_GetSyncVdecHandle(HI_HANDLE hAvplay, HI_HANDLE *phVdec, HI_HANDLE *phSync)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex)); 

    if(HI_INVALID_HANDLE == pAvplay->hVdec)
    {
        HI_ERR_MCE("ERR: vdec handle is invalid\n");
        return HI_FAILURE;
    }

    if(HI_INVALID_HANDLE == pAvplay->hSync)
    {
        HI_ERR_MCE("ERR: sync handle is invalid\n");
        return HI_FAILURE;
    }  

    *phVdec = pAvplay->hVdec;
    *phSync = pAvplay->hSync;
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex)); 

    return Ret;
}

HI_S32 HI_DRV_AVPLAY_GetSndHandle(HI_HANDLE hAvplay, HI_HANDLE *phSnd)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex)); 

    if(HI_INVALID_HANDLE == pAvplay->hSnd)
    {
        HI_ERR_MCE("ERR: Snd handle is invalid\n");
        return HI_FAILURE;
    }

    *phSnd = pAvplay->hSnd;
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex)); 

    return Ret;
}

HI_S32 HI_DRV_AVPLAY_AttachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex)); 

    pAvplay->hWindow = hWindow;
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex)); 

    return Ret;
}

HI_S32 HI_DRV_AVPLAY_DetachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex)); 

    pAvplay->hWindow = HI_INVALID_HANDLE;
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex));

    return Ret;
}

HI_S32 HI_DRV_AVPLAY_AttachSnd(HI_HANDLE hAvplay, HI_HANDLE hSnd)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex)); 

    pAvplay->hSnd = hSnd;
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex)); 

    return Ret;
}

HI_S32 HI_DRV_AVPLAY_DetachSnd(HI_HANDLE hAvplay, HI_HANDLE hSnd)
{
    HI_S32          Ret = HI_SUCCESS;
    MCE_AVPLAY_S    *pAvplay = HI_NULL;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex)); 

    pAvplay->hSnd = HI_INVALID_HANDLE;
    
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex)); 

    return Ret;
}


HI_BOOL HI_DRV_AVPLAY_IsBufEmpty(HI_HANDLE hAvplay)
{
    HI_S32                      Ret = HI_SUCCESS;
    MCE_AVPLAY_S                *pAvplay = HI_NULL;

    ADEC_STATUSINFO_S           AdecBuf;
    VDEC_STATUSINFO_S           VdecBuf;
    HI_MPI_DMX_BUF_STATUS_S     VidDmxBuf;

    HI_U32                      WinDelay = 0;
    HI_U32                      SndDelay = 0;

    HI_U32                      VidPercent = 0;
    HI_U32                      AudPercent = 0;
    
    AVPLAY_GET_BY_HANDLE(hAvplay, pAvplay);

    DRV_AVPLAY_LOCK(&(pAvplay->AvplayMutex)); 

    if (pAvplay->AudEnable)
    {
        Ret = HI_DRV_ADEC_GetStatusInfo(pAvplay->hAdec, &AdecBuf);
        if (HI_SUCCESS == Ret)
        {
            AudPercent = AdecBuf.u32BufferUsed * 100 / AdecBuf.u32BufferSize;
        }        
		(HI_VOID)HI_DRV_AO_Track_GetDelayMs(pAvplay->hSnd, &SndDelay);
    }

    if (pAvplay->VidEnable)
    {
        if (HI_UNF_AVPLAY_STREAM_TYPE_TS == pAvplay->AvplayAttr.stStreamAttr.enStreamType)
        {
            Ret = HI_DRV_DMX_GetPESBufferStatus(pAvplay->hDmxVid, &VidDmxBuf);
            if(HI_SUCCESS == Ret)
            {
                VidPercent = VidDmxBuf.u32UsedSize * 100 / VidDmxBuf.u32BufSize;
            }
        }
        else
        {
            Ret = HI_DRV_VDEC_GetChanStatusInfo(pAvplay->hVdec, &VdecBuf);
            if(HI_SUCCESS == Ret)
            {
                VidPercent = VdecBuf.u32BufferUsed * 100 / VdecBuf.u32BufferSize;
            }
        }    

        (HI_VOID)HI_DRV_VO_GetWindowDelay(pAvplay->hWindow, &WinDelay);
    }

    if (WinDelay < 50 && SndDelay < 20 && AudPercent < 1 && VidPercent < 1)
    {
        Ret = HI_TRUE;
    }
    else
    {
        Ret = HI_FALSE;
    }

   
    DRV_AVPLAY_UNLOCK(&(pAvplay->AvplayMutex)); 

    return Ret;


}





