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
  File Name	: drv_sync.h
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: w58735
    Modification	: Created file

*******************************************************************************/
#ifndef __SYNC_DRV_H__
#define __SYNC_DRV_H__

#include "hi_drv_sync.h"
#include "drv_sync_ioctl.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

HI_BOOL SYNC_VerifyHandle(HI_HANDLE hSync);
HI_S32 SYNC_StartSync(HI_HANDLE hSync);
HI_VOID SYNC_VidProc(HI_HANDLE hSync, SYNC_VID_INFO_S *pVidInfo, SYNC_VID_OPT_S *pVidOpt);
HI_VOID SYNC_AudProc(HI_HANDLE hSync, SYNC_AUD_INFO_S *pAudInfo, SYNC_AUD_OPT_S *pAudOpt);
HI_VOID SYNC_PcrProc(HI_HANDLE hSync, HI_U32 PcrTime);
HI_S32 SYNC_PauseSync(HI_U32 SyncId);
HI_S32 SYNC_ResumeSync(HI_U32 SyncId);
HI_S32 SYNC_GetTime(HI_U32 SyncId, HI_U32 *pLocalTime, HI_U32 *pPlayTime);
HI_U32 SYNC_GetLocalTime(SYNC_S *pSync, SYNC_CHAN_E enChn);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif
