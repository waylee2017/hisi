/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mapi_main.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：wangyafeng : 
* Date ：2010-08-11
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：wangyafeng  : 
* 		Date ：2010-08-11
*		Record : Create File 
****************************************************************************/

#ifndef	__MLM_INNER_H__ /* 防止头文件被重复引用 */
#define	__MLM_INNER_H__

/*----------------------Standard Include-------------------------*/


/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#include "mlm_debug.h"
#include "mapi_main.h"

#define FP_IS_USE_SAR 0
#define FP_IS_USE_FD650 1


extern  MMT_STB_ErrorCode_E MLF_TunerInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_TunerTerm(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_SmartCardInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_SmartCardTerm(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_SysInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_FlashInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_ImgInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_FlashTerm(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_DmxInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_DmxTerm(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_DsmInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_DsmTerm(MBT_VOID);

extern MMT_STB_ErrorCode_E MLF_FPInit(MBT_VOID);
extern  MMT_STB_ErrorCode_E MLF_FPTerm(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_UsbInit(MBT_VOID);

extern  MMT_STB_ErrorCode_E MLF_UsbTerm(MBT_VOID);

extern MMT_STB_ErrorCode_E MLF_BlastInit(MBT_VOID);

extern MMT_STB_ErrorCode_E MLF_BlastTerm(MBT_VOID);

extern MMT_STB_ErrorCode_E MLMF_AV_Init(MBT_VOID);

extern MMT_STB_ErrorCode_E MLMF_AV_Term(MBT_VOID);

extern MMT_STB_ErrorCode_E MLMF_AV_Disp_Init(MBT_VOID);

extern MMT_STB_ErrorCode_E MLMF_Uart_Init(MBT_VOID);

extern MMT_STB_ErrorCode_E MLF_OSDInit(MBT_VOID);

extern MMT_STB_ErrorCode_E MLF_OSDTerm(MBT_VOID);

extern MMT_AV_HDResolution_E MLF_OSD_GetCurVideoMode(MBT_VOID);

extern MBT_VOID MLF_OSD_SetCurVideoMode(MMT_AV_HDResolution_E u8VideoMode);
extern MBT_VOID MLF_ConnectVideo2DSM(MBT_U16 u32VduPID);
extern MBT_VOID MLF_ConnectAudio2DSM(MBT_U16 u32AudPID);
extern MBT_VOID MLF_ApplyVideoWinSet(MBT_VOID);
extern MBT_VOID MLF_OSD_ResizeOSD(MBT_VOID);
extern MBT_VOID MLF_OSD_GetOSDSize(MBT_U32 *pu32Width,MBT_U32 *pu32Height);
extern MBT_VOID MLF_AV_EnableFastZap(MBT_VOID);
extern MBT_VOID MLF_AV_DisableFastZap(MBT_VOID);
extern MBT_U8 MLMF_FP_GetFPMode(MBT_VOID);


#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_APIMAIN_H__ */

/*----------------------End of mapi_main.h-------------------------*/

