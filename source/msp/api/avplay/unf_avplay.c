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
  File Name	: unf_avplay.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: w58735
    Modification	: Created file

*******************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

#include "hi_mpi_avplay.h"
#include "hi_mpi_vdec.h"

static const HI_U8 s_szAvplayVersion[] __attribute__((used)) = "SDK_VERSION:["\
								MKMARCOTOSTR(SDK_VERSION)"] Build Time:["\
								__DATE__", "__TIME__"]";


HI_S32 HI_UNF_AVPLAY_Init(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Init();

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_DeInit(HI_VOID)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_DeInit();

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetDefaultConfig(HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_UNF_AVPLAY_STREAM_TYPE_E enCfg)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetDefaultConfig(pstAvAttr, enCfg);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_Create(const HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_HANDLE *phAvplay)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Create(pstAvAttr, phAvplay);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_Destroy(HI_HANDLE hAvplay)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Destroy(hAvplay);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_ChnOpen(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_VOID *pPara)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_ChnOpen(hAvplay, enChn, pPara);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_ChnClose(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_ChnClose(hAvplay, enChn);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_SetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_SetAttr(hAvplay, enAttrID, pPara);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetAttr(hAvplay, enAttrID, pPara);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_DecodeIFrame(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_I_FRAME_S *pstFrame, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
    HI_S32 s32Ret = HI_FAILURE;

    s32Ret = HI_MPI_AVPLAY_DecodeFrame(hAvplay,pstFrame,pstCapPicture, HI_UNF_FRAME_TYPE_I);
    
    return s32Ret;
}


HI_S32 HI_UNF_AVPLAY_SetDecodeMode(HI_HANDLE hAvplay, HI_UNF_VCODEC_MODE_E enDecodeMode)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_SetDecodeMode(hAvplay, enDecodeMode);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_RegisterEvent(HI_HANDLE      hAvplay,
                                   HI_UNF_AVPLAY_EVENT_E     enEvent,
                                   HI_UNF_AVPLAY_EVENT_CB_FN pfnEventCB)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_RegisterEvent(hAvplay, enEvent, pfnEventCB);
    
    return s32Ret;    
}

HI_S32 HI_UNF_AVPLAY_UnRegisterEvent(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E enEvent)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_UnRegisterEvent(hAvplay, enEvent);
        
    return s32Ret;    
}

HI_S32 HI_UNF_AVPLAY_RegisterAcodecLib(const HI_CHAR *pFileName)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_RegisterAcodecLib(pFileName);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_RegisterVcodecLib(const HI_CHAR *pFileName)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_RegisterVcodecLib(pFileName);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_ConfigAcodec(const HI_U32 enDstCodecID, HI_VOID *pPara)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_ConfigAcodec(enDstCodecID,pPara);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_FoundRegisterDeoder(const HI_U32 enDstCodecID)
{
	HI_S32 s32Ret;

	s32Ret = HI_MPI_AVPLAY_FoundRegisterDeoder(enDstCodecID);

	return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_FoundSupportDeoder(const HA_FORMAT_E enFormat, HI_U32 * penDstCodecID)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_FoundSupportDeoder(enFormat,penDstCodecID);

    return s32Ret;
}

#if 0
HI_S32 HI_UNF_AVPLAY_ControlAcodec( HI_HANDLE hAvplay, HI_VOID *pPara)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_ControlAcodec(hAvplay, pPara);

    return s32Ret;
}
#endif

HI_S32 HI_UNF_AVPLAY_Start(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_START_OPT_S *pstStartOpt)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Start(hAvplay, enChn);

    return s32Ret;
}


HI_S32 HI_UNF_AVPLAY_PreStart(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_PRESTART_OPT_S *pstPreStartOpt)
{
#ifdef HI_AVPLAY_FCC_SUPPORT
    return HI_MPI_AVPLAY_PreStart(hAvplay, enChn);
#else
	HI_ERR_AVPLAY("This function is used only in fcc mode!!\n");
	return HI_ERR_AVPLAY_NOT_SUPPORT;
#endif
}



HI_S32 HI_UNF_AVPLAY_PreStop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_PRESTOP_OPT_S *pstPreStopOpt)
{
#ifdef HI_AVPLAY_FCC_SUPPORT
    return HI_MPI_AVPLAY_PreStop(hAvplay, enChn,pstPreStopOpt);
#else
	HI_ERR_AVPLAY("This function is used only in fcc mode!!\n");
	return HI_ERR_AVPLAY_NOT_SUPPORT;
#endif
}


HI_S32 HI_UNF_AVPLAY_Stop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_STOP_OPT_S *pstStopOpt)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Stop(hAvplay, enChn, pstStopOpt);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_Pause(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_PAUSE_OPT_S *pstPauseOpt)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Pause(hAvplay);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_Tplay(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_TPLAY_OPT_S *pstTplayOpt)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Tplay(hAvplay, pstTplayOpt);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_Resume(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_RESUME_OPT_S *pstResumeOpt)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Resume(hAvplay);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_Reset(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_RESET_OPT_S *pstResetOpt)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_Reset(hAvplay, pstResetOpt);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetBuf(HI_HANDLE  hAvplay,
                            HI_UNF_AVPLAY_BUFID_E enBufId,
                            HI_U32                u32ReqLen,
                            HI_UNF_STREAM_BUF_S  *pstData,
                            HI_U32                u32TimeOutMs
                            )
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetBuf(hAvplay, enBufId, u32ReqLen, pstData, u32TimeOutMs);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_PutBuf(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId,
                                       HI_U32 u32ValidDataLen, HI_U32 u32Pts)
{
    HI_S32 s32Ret;

    HI_UNF_AVPLAY_PUTBUFEX_OPT_S    stExOpt;
    
    stExOpt.bContinue = HI_TRUE;
    stExOpt.bEndOfFrm = HI_TRUE;

    s32Ret = HI_MPI_AVPLAY_PutBuf(hAvplay, enBufId, u32ValidDataLen, u32Pts, &stExOpt);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_SetWindowRepeat(HI_HANDLE hAvplay, HI_U32 u32Repeat)
{
    HI_S32 s32Ret;

	s32Ret = HI_MPI_AVPLAY_SetWindowRepeat(hAvplay, u32Repeat);

	return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_PutBufEx(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId,
                                       HI_U32 u32ValidDataLen, HI_U32 u32Pts, HI_UNF_AVPLAY_PUTBUFEX_OPT_S *pPutOpt)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_PutBuf(hAvplay, enBufId, u32ValidDataLen, u32Pts, pPutOpt);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetDmxAudChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxAudChn)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetDmxAudChnHandle(hAvplay, phDmxAudChn);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetDmxVidChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxVidChn)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetDmxVidChnHandle(hAvplay, phDmxVidChn);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetStatusInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STATUS_INFO_S *pstStatusInfo)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetStatusInfo(hAvplay, pstStatusInfo);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetStreamInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STREAM_INFO_S *pstStreamInfo)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetStreamInfo(hAvplay, pstStreamInfo);
    
    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_GetAudioSpectrum(HI_HANDLE hAvplay, HI_U16 *pSpectrum, HI_U32 u32BandNum)
{
    HI_S32 s32Ret;

    s32Ret = HI_MPI_AVPLAY_GetAudioSpectrum(hAvplay, pSpectrum, u32BandNum);
    
    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_IsBuffEmpty(HI_HANDLE hAvplay, HI_BOOL * pbIsEmpty)
{
    HI_S32 s32Ret;
    s32Ret = HI_MPI_AVPLAY_IsBuffEmpty(hAvplay, pbIsEmpty);
    
    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_SwitchDmxAudChn(HI_HANDLE hAvplay, HI_HANDLE hNewDmxAud, HI_HANDLE *phOldDmxAud)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AVPLAY_SwitchDmxAudChn(hAvplay, hNewDmxAud, phOldDmxAud);

    return s32Ret;   
}

HI_S32 HI_UNF_AVPLAY_SetPlayerFFMode(HI_HANDLE hAvplay, HI_BOOL bEnable, HI_U32 u32Speed)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AVPLAY_SetPlayerFFMode(hAvplay, bEnable, u32Speed);

    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_FlushStream(HI_HANDLE hAvplay, HI_UNF_AVPLAY_FLUSH_STREAM_OPT_S *pstFlushOpt)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AVPLAY_FlushStream(hAvplay, pstFlushOpt);

    return s32Ret;   
}

HI_S32 HI_UNF_AVPLAY_Step(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_STEP_OPT_S *pstStepOpt)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AVPLAY_Step(hAvplay, pstStepOpt);
    
    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_Invoke(HI_HANDLE hAvplay, HI_UNF_AVPLAY_INVOKE_TYPE_E enInvokeType, HI_VOID *pPara)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AVPLAY_Invoke(hAvplay, enInvokeType, pPara);
    
    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_AcqUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S *pstUserData, HI_UNF_VIDEO_USERDATA_TYPE_E *penType)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AVPLAY_AcqUserData(hAvplay, pstUserData, penType);
    
    return s32Ret;
}

HI_S32 HI_UNF_AVPLAY_RlsUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S* pstUserData)
{
    HI_S32 s32Ret;
    
    s32Ret = HI_MPI_AVPLAY_RlsUserData(hAvplay, pstUserData);
    
    return s32Ret;
}



