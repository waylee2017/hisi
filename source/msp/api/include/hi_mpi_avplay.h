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
  File Name	: drv_mce_avplay.h
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: w58735
    Modification	: Created file

*******************************************************************************/
#ifndef __MPI_AVPLAY_H__
#define __MPI_AVPLAY_H__

#include "hi_drv_avplay.h"
#include "drv_avplay_ioctl.h"

#ifdef __cplusplus
#if __cplusplus
	extern "C"
	{
#endif
#endif

HI_S32 HI_MPI_AVPLAY_Init(HI_VOID);
HI_S32 HI_MPI_AVPLAY_DeInit(HI_VOID);
HI_S32 HI_MPI_AVPLAY_GetDefaultConfig(HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_UNF_AVPLAY_STREAM_TYPE_E enCfg);
HI_S32 HI_MPI_AVPLAY_RegisterAcodecLib(const HI_CHAR *pFileName);
HI_S32 HI_MPI_AVPLAY_RegisterVcodecLib(const HI_CHAR *pFileName);
HI_S32 HI_MPI_AVPLAY_FoundRegisterDeoder(const HI_U32 enDstCodecID);
HI_S32 HI_MPI_AVPLAY_FoundSupportDeoder(const HA_FORMAT_E enFormat,HI_U32 * penDstCodecID);
HI_S32 HI_MPI_AVPLAY_ConfigAcodec( const HI_U32 enDstCodecID, HI_VOID *pstConfigStructure);
HI_S32 HI_MPI_AVPLAY_Create(const HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_HANDLE *phAvplay);
HI_S32 HI_MPI_AVPLAY_Destroy(HI_HANDLE hAvplay);
HI_S32 HI_MPI_AVPLAY_ChnOpen(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_VOID *pPara);
HI_S32 HI_MPI_AVPLAY_ChnClose(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn);
HI_S32 HI_MPI_AVPLAY_SetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara);
HI_S32 HI_MPI_AVPLAY_GetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara);
HI_S32 HI_MPI_AVPLAY_DecodeFrame(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_I_FRAME_S *pstIframe, 
                                                HI_UNF_CAPTURE_PICTURE_S *pstCapPicture, HI_UNF_VIDEO_FRAME_TYPE_E enFrameType);
HI_S32 HI_MPI_AVPLAY_SetDecodeMode(HI_HANDLE hAvplay, HI_UNF_VCODEC_MODE_E enDecodeMode);
HI_S32 HI_MPI_AVPLAY_RegisterEvent(HI_HANDLE      hAvplay,
                                   HI_UNF_AVPLAY_EVENT_E     enEvent,
                                   HI_UNF_AVPLAY_EVENT_CB_FN pfnEventCB);
HI_S32 HI_MPI_AVPLAY_UnRegisterEvent(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E enEvent);
#ifdef HI_AVPLAY_FCC_SUPPORT
HI_S32 HI_MPI_AVPLAY_PreStart(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn);
HI_S32 HI_MPI_AVPLAY_PreStop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn,const HI_UNF_AVPLAY_PRESTOP_OPT_S *pPreStopOpt);
#endif
HI_S32 HI_MPI_AVPLAY_Start(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn);
HI_S32 HI_MPI_AVPLAY_Stop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_STOP_OPT_S *pStop);
HI_S32 HI_MPI_AVPLAY_Pause(HI_HANDLE hAvplay);
HI_S32 HI_MPI_AVPLAY_Tplay(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_TPLAY_OPT_S *pstTplayOpt);
HI_S32 HI_MPI_AVPLAY_Resume(HI_HANDLE hAvplay);
HI_S32 HI_MPI_AVPLAY_Reset(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_RESET_OPT_S *pstResetOpt);
HI_S32 HI_MPI_AVPLAY_GetBuf(HI_HANDLE  hAvplay,
                            HI_UNF_AVPLAY_BUFID_E enBufId,
                            HI_U32                u32ReqLen,
                            HI_UNF_STREAM_BUF_S  *pstData, 
                            HI_U32                u32TimeOutMs);
                            
HI_S32 HI_MPI_AVPLAY_PutBuf(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId,
                                       HI_U32 u32ValidDataLen, HI_U32 u32Pts, HI_UNF_AVPLAY_PUTBUFEX_OPT_S *pstExOpt);
HI_S32 HI_MPI_AVPLAY_GetSyncVdecHandle(HI_HANDLE hAvplay, HI_HANDLE *phVdec, HI_HANDLE *phSync);
HI_S32 HI_MPI_AVPLAY_GetSndHandle(HI_HANDLE hAvplay, HI_HANDLE *phSnd);
HI_S32 HI_MPI_AVPLAY_GetWindowHandle(HI_HANDLE hAvplay, HI_HANDLE *phWindow);
HI_S32 HI_MPI_AVPLAY_AttachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow);
HI_S32 HI_MPI_AVPLAY_DetachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow);
HI_S32 HI_MPI_AVPLAY_SetWindowRepeat(HI_HANDLE hAvplay, HI_U32 u32Repeat);
HI_S32 HI_MPI_AVPLAY_SetWindowStepMode(HI_HANDLE hAvplay, HI_BOOL bStepMode);
HI_S32 HI_MPI_AVPLAY_AttachSnd(HI_HANDLE hAvplay, HI_HANDLE hSnd);
HI_S32 HI_MPI_AVPLAY_DetachSnd(HI_HANDLE hAvplay, HI_HANDLE hSnd);
HI_S32 HI_MPI_AVPLAY_PlayTrickMode(HI_HANDLE hAvplay, HI_S32 s32Speed);
HI_S32 HI_MPI_AVPLAY_GetDmxAudChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxAudChn);
HI_S32 HI_MPI_AVPLAY_GetDmxVidChnHandle(HI_HANDLE hAvplay, HI_HANDLE *phDmxVidChn);
HI_S32 HI_MPI_AVPLAY_GetStatusInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STATUS_INFO_S *pstStatusInfo);
HI_S32 HI_MPI_AVPLAY_GetStreamInfo(HI_HANDLE hAvplay, HI_UNF_AVPLAY_STREAM_INFO_S *pstStreamInfo);
HI_S32 HI_MPI_AVPLAY_GetAudioSpectrum(HI_HANDLE hAvplay, HI_U16 *pSpectrum, HI_U32 u32BandNum);
HI_S32 HI_MPI_AVPLAY_IsBuffEmpty(HI_HANDLE hAvplay, HI_BOOL *pbIsEmpty);
HI_S32 HI_MPI_AVPLAY_SetEosFlag(HI_HANDLE hAvplay, HI_UNF_AVPLAY_BUFID_E enBufId);
HI_S32 HI_MPI_AVPLAY_SwitchDmxAudChn(HI_HANDLE hAvplay, HI_HANDLE hNewDmxAud, HI_HANDLE *phOldDmxAud);
HI_S32 HI_MPI_AVPLAY_PutAudPts(HI_HANDLE hAvplay, HI_U32 u32AudPts);
HI_S32 HI_MPI_AVPLAY_SetPlayerFFMode(HI_HANDLE hAvplay, HI_BOOL bEnable, HI_U32 u32Speed);
HI_S32 HI_MPI_AVPLAY_FlushStream(HI_HANDLE hAvplay, HI_UNF_AVPLAY_FLUSH_STREAM_OPT_S *pstFlushOpt);
HI_S32 HI_MPI_AVPLAY_Step(HI_HANDLE hAvplay, const HI_UNF_AVPLAY_STEP_OPT_S *pstStepOpt);
HI_S32 HI_MPI_AVPLAY_Invoke(HI_HANDLE hAvplay, HI_UNF_AVPLAY_INVOKE_TYPE_E enInvokeType, HI_VOID *pPara);
HI_S32 HI_MPI_AVPLAY_AcqUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S *pstUserData, HI_UNF_VIDEO_USERDATA_TYPE_E *penType);
HI_S32 HI_MPI_AVPLAY_RlsUserData(HI_HANDLE hAvplay, HI_UNF_VIDEO_USERDATA_S* pstUserData);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
#endif
