/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : hi_drv_vi.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2013/04/18
  Description   :
  History       :
  1.Date        : 2013/04/18
    Author      : z00184432
    Modification: Created file

******************************************************************************/

#ifndef __HI_DRV_VI_H__
#define __HI_DRV_VI_H__

#include "hi_debug.h"
#include "hi_module.h"
#include "hi_unf_vi.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#define VI_MAX_NUM 2

#define HI_FATAL_VI(fmt...) HI_FATAL_PRINT(HI_ID_VI, fmt)
#define HI_ERR_VI(fmt...) HI_ERR_PRINT(HI_ID_VI, fmt)
#define HI_WARN_VI(fmt...) HI_WARN_PRINT(HI_ID_VI, fmt)
#define HI_INFO_VI(fmt...) HI_INFO_PRINT(HI_ID_VI, fmt)
#define HI_DEBUG_VI(fmt...) HI_DBG_PRINT(HI_ID_VI, fmt)

HI_S32 HI_DRV_VI_AcquireFrame(HI_S32 handle, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame);
HI_S32 HI_DRV_VI_ReleaseFrame(HI_S32 handle, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame);
HI_S32 HI_DRV_VI_GetUsrID(HI_U32 u32ChnID, HI_MOD_ID_E enUserMode, HI_U32 *pu32Uid);
HI_S32 HI_DRV_VI_PutUsrID(HI_U32 u32ChnID, HI_U32 u32Uid);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif //__HI_DRV_VI_H__
