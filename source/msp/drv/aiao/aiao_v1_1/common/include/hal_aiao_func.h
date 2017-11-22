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
File Name     : hal_aiao_func.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2012/09/22
Last Modified :
Description   : aiao
Function List :
History       :
* main\1    2012-09-22   z40717     init.
******************************************************************************/
#ifndef __HI_AIAO_FUNC_H__
#define __HI_AIAO_FUNC_H__

#include "hi_type.h"
#include "hal_aiao_common.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

/* global function */
HI_S32					iHAL_AIAO_Init(HI_VOID);
HI_VOID					iHAL_AIAO_DeInit(HI_VOID);
HI_VOID					iHAL_AIAO_GetHwCapability(HI_U32 *pu32Capability);
HI_VOID					iHAL_AIAO_GetHwVersion(HI_U32 *pu32Version);
HI_VOID					iHAL_AIAO_DBG_RWReg(AIAO_Dbg_Reg_S *pstReg);
HI_VOID					iHAL_AIAO_SetTopInt(HI_U32 u32Multibit);
HI_U32					iHAL_AIAO_GetTopIntRawStatus(HI_VOID);
HI_U32					iHAL_AIAO_GetTopIntStatus(HI_VOID);

/*****************************************************************************
 Description  : AIAO TX/RX Port DSP Control HAL API
*****************************************************************************/
HI_VOID					iHAL_AIAO_P_SetInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit);
HI_VOID					iHAL_AIAO_P_ClrInt(AIAO_PORT_ID_E enPortID, HI_U32 u32Multibit);
HI_U32					iHAL_AIAO_P_GetIntStatusRaw(AIAO_PORT_ID_E enPortID);
HI_U32					iHAL_AIAO_P_GetIntStatus(AIAO_PORT_ID_E enPortID);

/* global port function */
HI_S32					iHAL_AIAO_P_Open(const AIAO_PORT_ID_E enPortID, const AIAO_PORT_USER_CFG_S *pstConfig,
                                        HI_HANDLE *phandle, AIAO_IsrFunc** pIsr);


HI_VOID					iHAL_AIAO_P_Close(HI_HANDLE handle);
HI_S32					iHAL_AIAO_P_Start(HI_HANDLE handle);
HI_S32					iHAL_AIAO_P_Stop(HI_HANDLE handle, AIAO_PORT_STOPMODE_E enStopMode);
HI_S32					iHAL_AIAO_P_Mute(HI_HANDLE handle, HI_BOOL bMute);
HI_S32					iHAL_AIAO_P_SetVolume(HI_HANDLE handle, HI_U32 u32VolumedB);
HI_S32                  iHAL_AIAO_P_SetSpdifCategoryCode(HI_HANDLE handle, AIAO_SPDIF_CATEGORYCODE_E eCategoryCode);
HI_S32                  iHAL_AIAO_P_SetSpdifSCMSMode(HI_HANDLE handle, AIAO_SPDIF_SCMS_MODE_E eSCMSMode);
HI_S32					iHAL_AIAO_P_SetTrackMode(HI_HANDLE handle, AIAO_TRACK_MODE_E enTrackMode);
HI_S32 iAIAO_HAL_P_SetBypass(HI_HANDLE handle, HI_BOOL bByBass);
HI_S32					iHAL_AIAO_P_GetUserCongfig(HI_HANDLE handle, AIAO_PORT_USER_CFG_S *pstUserConfig);
HI_S32					iHAL_AIAO_P_GetStatus(HI_HANDLE handle, AIAO_PORT_STAUTS_S *pstProcInfo);
HI_S32					iHAL_AIAO_P_SelectSpdifSource(HI_HANDLE handle, AIAO_SPDIFPORT_SOURCE_E eSrcChnId);
HI_S32					iHAL_AIAO_P_SetSpdifOutPort(HI_HANDLE handle, HI_S32 bEn);
HI_S32					iHAL_AIAO_P_SetI2SSdSelect(HI_HANDLE handle, AIAO_I2SDataSel_S  *pstSdSel);
HI_S32 iHAL_AIAO_P_SetAttr(HI_HANDLE handle, AIAO_PORT_ATTR_S *pstAttr);
HI_S32 iHAL_AIAO_P_GetAttr(HI_HANDLE handle, AIAO_PORT_ATTR_S *pstAttr);
HI_VOID iHAL_AIAO_P_ProcStatistics(HI_HANDLE handle, HI_U32 u32IntStatus);
HI_S32 iHAL_AIAO_P_SetI2SMasterClk(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttr);
HI_S32 iHAL_AIAO_P_SetI2SlaveClk(AIAO_PORT_ID_E enPortID, AIAO_IfAttr_S *pstIfAttr);


/* port buffer function */
HI_U32                  iHAL_AIAO_P_ReadData_NotUpRptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize, HI_U32 *pu32Rptr, HI_U32 *pu32Wptr);
HI_U32					iHAL_AIAO_P_ReadData(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32					iHAL_AIAO_P_WriteData(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen);
HI_U32					iHAL_AIAO_P_PrepareData(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen);
HI_U32                  iHAL_AIAO_P_QueryBufData_ProvideRptr(HI_HANDLE handle, HI_U32 *pu32Rptr);
HI_U32					iHAL_AIAO_P_QueryBufData(HI_HANDLE handle);
HI_U32					iHAL_AIAO_P_QueryBufFree(HI_HANDLE handle);
HI_U32					iHAL_AIAO_P_UpdateRptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32					iHAL_AIAO_P_UpdateWptr(HI_HANDLE handle, HI_U8 * pu32Src, HI_U32 u3SrcLen);
HI_S32                  iHAL_AIAO_P_GetRbfAttr(HI_HANDLE handle, AIAO_RBUF_ATTR_S *pstRbfAttr);
HI_VOID iHAL_AIAO_P_GetDelayMs(HI_HANDLE handle, HI_U32 * pu32Delayms);
#ifdef HI_ALSA_AI_SUPPORT
HI_U32 iHAL_AIAO_P_ALSA_UpdateRptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32 iHAL_AIAO_P_ALSA_QueryWritePos (HI_HANDLE handle);
HI_U32 iHAL_AIAO_P_ALSA_QueryReadPos (HI_HANDLE handle);

HI_U32 iHAL_AIAO_P_ALSA_UpdateWptr(HI_HANDLE handle, HI_U8 * pu32Dest, HI_U32 u32DestSize);
HI_U32 iHAL_AIAO_P_ALSA_FLASH(HI_HANDLE handle);
#endif
#if 1//def HI_SND_HDMI_I2S_SPDIF_MUX
HI_S32 iHAL_AIAO_P_SetOpType(AIAO_PORT_ID_E enPortID, AIAO_OP_TYPE_E enOpType);
#endif
#ifdef HI_AIAO_TIMER_SUPPORT
HI_S32 iHAL_AIAO_T_Create(AIAO_TIMER_ID_E enTimerID,const AIAO_Timer_Create_S *pstParam, HI_HANDLE *phandle,AIAO_TimerIsrFunc** pIsr);
HI_VOID iHAL_AIAO_T_Destroy(HI_HANDLE handle);
HI_S32 iHAL_AIAO_T_SetTimerAttr(HI_HANDLE handle,const AIAO_TIMER_Attr_S *pstAttrParam);
HI_S32 iHAL_AIAO_T_SetTimerEnalbe(HI_HANDLE handle,HI_BOOL bEnalbe);
HI_S32 iHAL_AIAO_T_GetStatus(HI_HANDLE handle, AIAO_TIMER_Status_S *pstStatus);
HI_VOID iHAL_AIAO_T_TIMERProcess(HI_HANDLE handle);
#endif
#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  // __HI_AIAO_FUNC_H__
