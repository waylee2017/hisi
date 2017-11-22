#ifndef __DISP_EXT_H__
#define __DISP_EXT_H__

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif /* __cplusplus */

#include "hi_type.h"
#include "hi_unf_common.h"
//#include "hi_drv_disp.h"
#include "drv_disp_ioctl.h"
//#include "drv_dev_ext.h"


typedef HI_S32 (* FN_DISP_GetIntfType)(HI_UNF_DISP_E enDisp, HI_UNF_DISP_INTF_TYPE_E *penIntfType);
typedef HI_S32 (* FN_DISP_GetFormat)(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penEncFmt);
typedef HI_S32 (* FN_DISP_GetLcdFormat)(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penEncFmt);
typedef HI_S32 (* FN_DISP_GetHdmiIntf)(HI_UNF_DISP_E enDisp, DISP_HDMI_SETTING_S *pstCfg);
typedef HI_S32 (* FN_DISP_SetGfxEnable)(HI_UNF_DISP_E enDisp, HI_BOOL bEnable);
typedef HI_S32 (* FN_DISP_MOD_Ioctl)(HI_U32 cmd, HI_VOID *arg);
typedef HI_VOID  (*FN_HIFB_DRV_GetOps)(HI_VOID *pstOps);
typedef HI_S32 (* FN_VOU_MOD_DebugInit)(HI_VOID   *pVouDebugExtFanc,HI_VOID **pDispDebugExportFuncs);
typedef HI_S32 (* FN_VOU_MOD_DebugDeInit)(HI_VOID);
typedef HI_S32 (* FN_DISP_GetSaturation)(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue);
typedef HI_S32 (* FN_DISP_GetContrast)(HI_UNF_DISP_E enDisp, HI_U32 *pCscValue);
typedef HI_S32 (* FN_DISP_GetBright)(HI_UNF_DISP_E enDisp,HI_U32 *pCscValue);
typedef HI_S32 (* FN_DISP_GetHue)(HI_UNF_DISP_E enDisp,HI_U32 *pCscValue);

typedef HI_S32 (* FN_DISP_Suspend)(HI_VOID);
typedef HI_S32 (* FN_DISP_Resume)(HI_VOID);
typedef HI_S32 (* FN_DISP_SetResumeMask)(HI_BOOL bMask);


typedef struct
{
    FN_DISP_GetIntfType   pfnDispGetIntfType;
    FN_DISP_GetFormat   pfnDispGetFormat;
    FN_DISP_GetLcdFormat pfnDsipGetLcdFormat;
    FN_DISP_GetHdmiIntf pfnDsipGetHdmiIntf;
    FN_DISP_SetGfxEnable    pfnDsipSetGfxEnable;
    FN_DISP_MOD_Ioctl      pfnDsipModIoctrl;
    FN_HIFB_DRV_GetOps          pfnHifbGetOp;
    FN_VOU_MOD_DebugInit pfnVOU_MOD_DebugInit;
    FN_VOU_MOD_DebugDeInit pfnVOU_MOD_DebugDeInit;
    FN_DISP_GetSaturation pfnDispGetSaturation;
    FN_DISP_GetContrast pfnDispGetContrast;
    FN_DISP_GetBright pfnDispGetBright;
    FN_DISP_GetHue pfnDispGetHue;
    FN_DISP_Suspend pfnDispSuspend;
    FN_DISP_Resume pfnDispResume;
    FN_DISP_SetResumeMask pfnDispSetResumeMask;
} DISP_EXPORT_FUNC_S;

HI_S32 VPS_DRV_ModInit(HI_VOID);
HI_VOID VPS_DRV_ModExit(HI_VOID);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __DISP_EXT_H__ */

