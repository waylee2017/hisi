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
  File Name	: hi_drv_mce.h
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/
#ifndef __HI_DRV_MCE_H__
#define __HI_DRV_MCE_H__

#include "hi_type.h"
#include "hi_module.h"
#include "hi_unf_mce.h"
#include "drv_demux_ext.h"
#include "hi_unf_disp.h"
#include "hi_unf_common.h"
#include "hi_go_surface.h"
#include "hi_flash.h"
#include "hi_debug.h"
#include "hi_drv_pdm.h"

#ifdef __cplusplus
extern "C" {
#endif

#define HI_FATAL_MCE(format...)    HI_FATAL_PRINT(HI_ID_FASTPLAY, format)
#define HI_ERR_MCE(format...)      HI_ERR_PRINT(HI_ID_FASTPLAY, format)
#define HI_WARN_MCE(format...)     HI_WARN_PRINT(HI_ID_FASTPLAY, format)
#define HI_INFO_MCE(format...)     HI_INFO_PRINT(HI_ID_FASTPLAY, format)

#define __FASTPLAY_VERISON__ "ver0001\0"

#define CONFIG_MCE_LAYER_ID                 OPTM_GFX_LAYER_AD0
#define CONFIG_MCE_LAYER_HD0                0
#define CONFIG_MCE_LAYER_SD0                1
#define CONFIG_MCE_LAYER_AD0                2
#define CONFIG_MCE_LAYER_MAXNUM             4

typedef enum tagIOC_MCE_E
{
    IOC_MCE_STOP_MCE,
    IOC_MCE_CLEAR_LOGO,
    IOC_MCE_GET_PLAY_CUR_STATUS,
    IOC_MCE_LOGO_EXIT,
    IOC_MCE_VID_EXIT,
    IOC_MCE_GET_PALY_TIME,
    IOC_MCE_BUTT
}IOC_MCE_E;

#define HI_MTD_NAME_LEN     32

typedef struct tagMCE_S
{
    HI_HANDLE               hAvplay;
    HI_HANDLE               hWindow;
	HI_HANDLE				hSnd;
    HI_DISP_PARAM_S         stDispParam;
    HI_GRC_PARAM_S          stGrcParam;
	HI_MCE_PALY_INFO_S		stMceParam;
    HI_U32                  u32PlayDataAddr;

    HI_BOOL                 bPlayStop;
    HI_BOOL                 bLogoClear;
    HI_UNF_MCE_STOPPARM_S   stStopParam;

    HI_BOOL                 bMceExit;

    HI_U32                  BeginTime;
    HI_U32                  EndTime;
    
    HI_BOOL                 TsplayEnd;
    DMX_MMZ_BUF_S           TsBuf;
    struct task_struct      *pTsTask;

}MCE_S;


#define HI_MCE_STOP_FASTPLAY_CMD        _IOWR(HI_ID_FASTPLAY, IOC_MCE_STOP_MCE, HI_UNF_MCE_STOPPARM_S)
#define HI_MCE_CLEAR_LOGO_CMD           _IO(HI_ID_FASTPLAY, IOC_MCE_CLEAR_LOGO)
#define HI_MCE_GET_PLAY_CUR_STATUS_CMD  _IOWR(HI_ID_FASTPLAY, IOC_MCE_GET_PLAY_CUR_STATUS, HI_UNF_MCE_PLAYCURSTATUS_S)
#define HI_MCE_LOGO_EXIT_CMD          _IO(HI_ID_FASTPLAY, IOC_MCE_LOGO_EXIT   )
#define HI_MCE_VID_EXIT_CMD             _IOWR(HI_ID_FASTPLAY, IOC_MCE_VID_EXIT,HI_SYS_PREAV_PARAM_S   )
#define HI_MCE_GET_PALY_TIME           _IOWR(HI_ID_FASTPLAY, IOC_MCE_GET_PALY_TIME ,HI_U32)

HI_VOID HI_DRV_MCE_ClearLogo(HI_VOID);
HI_S32 HI_DRV_MCE_Stop(HI_UNF_MCE_STOPPARM_S *pstStopParam);
HI_S32 HI_DRV_MCE_Exit(HI_VOID);
HI_VOID fastplay_preAV(HI_SYS_PREAV_PARAM_S *pstPreParm);

#ifdef __cplusplus
}
#endif

#endif
