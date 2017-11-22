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
    Author		: 
    Modification	: Created file

*******************************************************************************/
#ifndef __DRV_MCE_AVPLAY_H__
#define __DRV_MCE_AVPLAY_H__

#include <linux/semaphore.h>
#include "hi_type.h"
#include "hi_drv_avplay.h"
#include "hi_mpi_vdec.h"
#include "hi_unf_avplay.h"
#include "hi_unf_common.h"
#include "hi_drv_sync.h"
#include "drv_demux_ext.h"
#include "drv_avplay_ioctl.h"

#ifdef __cplusplus
extern "C" {
#endif


typedef struct tagMCE_AVPLAY_S
{
    HI_UNF_AVPLAY_ATTR_S       AvplayAttr;
    HI_HANDLE                  hAvplay;

    HI_HANDLE                  hVdec;
    HI_UNF_VCODEC_ATTR_S       VdecAttr;
    HI_HANDLE                  hDmxVid;
    HI_U32                     DmxVidPid;

    HI_HANDLE                  hAdec;
    HI_U32                     AdecType; 

    HI_HANDLE                  hDmxAud;
    HI_U32                     DmxAudPid;
    
    HI_HANDLE                  hWindow;
    HI_HANDLE                  hSnd;

    HI_HANDLE                  hSync;

    HI_BOOL                    VidEnable;
    HI_BOOL                    AudEnable;

    HI_BOOL                    AvplayProcContinue;
    HI_BOOL                    AvplayProcDataFlag[AVPLAY_PROC_BUTT];

    VDEC_ES_BUF_S              AvplayVidEsBuf;
    HI_UNF_STREAM_BUF_S        AvplayAudEsBuf;

    DMX_Stream_S               AvplayDmxEsBuf;
    
    HI_UNF_AO_FRAMEINFO_S      AvplayAudFrm;
    SYNC_AUD_INFO_S            AudInfo;
    SYNC_AUD_OPT_S             AudOpt;
    
    HI_BOOL                    AvplayThreadRun;
    struct task_struct         *pAvplayThreadInst;
    struct semaphore           AvplayThreadMutex;
    struct semaphore           AvplayMutex;
    
}MCE_AVPLAY_S;

HI_S32 HI_DRV_AVPLAY_Init(HI_VOID);
HI_S32 HI_DRV_AVPLAY_DeInit(HI_VOID);
HI_S32 HI_DRV_AVPLAY_Create(const HI_UNF_AVPLAY_ATTR_S *pstAvAttr, HI_HANDLE *phAvplay);
HI_S32 HI_DRV_AVPLAY_Destroy(HI_HANDLE hAvplay);
HI_S32 HI_DRV_AVPLAY_ChnOpen(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_VOID *pPara);
HI_S32 HI_DRV_AVPLAY_ChnClose(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn);
HI_S32 HI_DRV_AVPLAY_SetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara);
HI_S32 HI_DRV_AVPLAY_GetAttr(HI_HANDLE hAvplay, HI_UNF_AVPLAY_ATTR_ID_E enAttrID, HI_VOID *pPara);
HI_S32 HI_DRV_AVPLAY_Start(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn);
HI_S32 HI_DRV_AVPLAY_Stop(HI_HANDLE hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_E enChn, const HI_UNF_AVPLAY_STOP_OPT_S *pStop);
HI_S32 HI_DRV_AVPLAY_GetSyncVdecHandle(HI_HANDLE hAvplay, HI_HANDLE *phVdec, HI_HANDLE *phSync);
HI_S32 HI_DRV_AVPLAY_GetSndHandle(HI_HANDLE hAvplay, HI_HANDLE *phSnd);
HI_S32 HI_DRV_AVPLAY_AttachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow);
HI_S32 HI_DRV_AVPLAY_DetachWindow(HI_HANDLE hAvplay, HI_HANDLE hWindow);
HI_S32 HI_DRV_AVPLAY_AttachSnd(HI_HANDLE hAvplay, HI_HANDLE hSnd);
HI_S32 HI_DRV_AVPLAY_DetachSnd(HI_HANDLE hAvplay, HI_HANDLE hSnd);
HI_BOOL HI_DRV_AVPLAY_IsBufEmpty(HI_HANDLE hAvplay);


#ifdef __cplusplus
}
#endif

#endif

