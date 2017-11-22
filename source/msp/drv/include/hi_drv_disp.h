/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_priv_disp.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   :
  History       :
  1.Date        : 2009/12/15
    Author      : w58735
    Modification: Created file

******************************************************************************/
#ifndef __HI_DRV_DISP_H__
#define __HI_DRV_DISP_H__
    
#include "hi_unf_common.h"
#include "hi_unf_disp.h"

#ifdef __cplusplus
#if __cplusplus
    extern "C"{
#endif
#endif /* End of #ifdef __cplusplus */

#ifndef HI_ADVCA_FUNCTION_RELEASE
#define HI_FATAL_DISP(fmt...) \
            HI_FATAL_PRINT(HI_ID_DISP, fmt)

#define HI_ERR_DISP(fmt...) \
            HI_WARN_PRINT(HI_ID_DISP, fmt)

#define HI_WARN_DISP(fmt...) \
            HI_WARN_PRINT(HI_ID_DISP, fmt)

#define HI_INFO_DISP(fmt...) \
            HI_INFO_PRINT(HI_ID_DISP, fmt)

#define HI_DBG_DISP(fmt...) \
                HI_DBG_PRINT(HI_ID_DISP, fmt)

#define HI_DISP_PRINT(fmt,args...)  \
            HI_PRINT(fmt,##args)

#else

#define HI_FATAL_DISP(fmt...)
#define HI_ERR_DISP(fmt...)
#define HI_WARN_DISP(fmt...)
#define HI_INFO_DISP(fmt...) 
#define HI_DBG_DISP(fmt...) 

#define HI_DISP_PRINT(fmt,args...)


#endif

typedef enum hiDISP_INTF_TYPE_E
{
    DISP_INTF_TYPE_TV = 0,    /**<TV type*/ /**<CNcomment:?????TV*/
    DISP_INTF_TYPE_LCD,       /**<LCD type*/ /**<CNcomment:?????LCD*/
    DISP_INTF_TYPE_BUTT
}DISP_INTF_TYPE_E;


HI_S32 HI_DRV_DISP_ModInit(HI_VOID);


HI_S32  HI_DRV_DISP_Init(HI_VOID);
HI_VOID  HI_DRV_DISP_DeInit(HI_VOID);

HI_S32 HI_DRV_DISP_Open(HI_UNF_DISP_E enDisp);
HI_S32 HI_DRV_DISP_Close(HI_UNF_DISP_E enDisp);
HI_S32 HI_DRV_DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);
HI_S32 HI_DRV_DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp);
//HI_S32 HI_DRV_DISP_AttachIntf(HI_UNF_DISP_E enDisp, const  HI_UNF_DISP_INTF_S *pstIntf, HI_U32 u32IntfNum);
HI_S32 HI_DRV_DISP_SetBgColor(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_BG_COLOR_S *pstBgColor);
HI_S32 HI_DRV_DISP_SetBrightness(HI_UNF_DISP_E enDisp, HI_U32 u32Brightness);
HI_S32 HI_DRV_DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 u32Contrast);
HI_S32 HI_DRV_DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 u32Saturation);
HI_S32 HI_DRV_DISP_SetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 u32HuePlus);
HI_S32 HI_DRV_DISP_SetDacMode(const HI_UNF_DISP_INTERFACE_S *pstDacMode);
//HI_S32 HI_DRV_DISP_SetCustomTiming(HI_UNF_DISP_E enDisp,  HI_UNF_DISP_TIMING_S *pstTiming);
HI_S32 HI_DRV_DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncodingFormat);
HI_S32 HI_DRV_DISP_SetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E enMode, const HI_VOID *pData);
HI_S32 HI_DRV_DISP_SetGfxEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);
HI_S32 HI_DRV_DISP_GetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penFormat);

    
#ifdef __cplusplus
#if __cplusplus
    }
#endif
#endif /* End of #ifdef __cplusplus */
    
#endif /* End of #ifndef __HI_DRV_VO_H__ */

