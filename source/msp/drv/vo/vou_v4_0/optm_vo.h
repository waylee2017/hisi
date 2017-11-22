
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
  File Name     : optm_vo.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/21
  Last Modified :
  Description   : header file for video output control
  Function List :
  History       :
  1.Date        :
  Author        : g45208
  Modification  : Created file
******************************************************************************/

#ifndef __OPTM_VO_H__
#define  __OPTM_VO_H__

//#include "mpi_priv_vo.h"
#include "drv_vo_ioctl.h"

#include "hi_error_mpi.h"
#include "optm_fb.h"
#include "linux/list.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define     VO_REST_DEI_LAST_FRAME      0
#define     VO_REST_DEI_CURT_FRAME      1
#define     VO_REST_DEI_NEXT_FRAME      2
typedef struct  hiVO_PROC_ATTR_S
{
    HI_UNF_VO_DEV_MODE_E  enVoDevMode;
    HI_BOOL               bEnable;
    HI_U32                Alpha;
    HI_S32                ActWinNum;

    HI_U32                u32Wbc1Unload;

    HI_U32                u32MosaicAcquire;
    HI_U32                u32MosaicAcquired;
    HI_U32                u32MosaicRelease;
    HI_U32                u32MosaicReleased;
    HI_U32                u32MosaicUnload;
    HI_BOOL       bAlgFlag;
    HI_UNF_VO_SHARPEN_INFO_S  Sharpen_info;  
    HI_S32        s32AccRatio;
}HI_VO_PROC_ATTR_S;

typedef struct  hiWIN_PROC_ATTR_S
{
    HI_BOOL                      bEnable;
    HI_BOOL                      bReset;
    HI_UNF_WINDOW_FREEZE_MODE_E  enReset;
    HI_BOOL                      bFreeze;
    HI_UNF_WINDOW_FREEZE_MODE_E  enFreeze;
    HI_UNF_WINDOW_ATTR_S         UsrAttr;
    HI_HANDLE                    hSrc;
    HI_BOOL                      bStepMode;
    HI_BOOL          bFieldMode;
    HI_U32                       MainIndex;
    
    HI_S32                       DetProgressive;
    HI_S32                       DetTopFirst;
    HI_BOOL                      bProgressive;
    HI_BOOL                      bTopFirst;
    HI_U32                       FrameTime;
    HI_U32                       InFrameRate;
    HI_U32                       WinRatio;

    HI_BOOL                      bQuickOutEnable;
    /* add for time static */
    HI_U32                       u32WinRemainFrameTimeMs;

    HI_U32                       In;
    HI_U32                       Next;
    HI_U32                       Current;
    HI_U32                       Previous;
    HI_U32                       PrePrevious;
    
    HI_U32                       LstConfig;
    HI_U32                       LstLstConfig;
    HI_U32                       Release;

    HI_U32                       TryReceiveFrames;
    HI_U32                       ReceiveFrames;
    HI_U32                       UnloadFrames;
    HI_U32                       ConfigFrames;
    HI_U32                       ReleaseFrames;

    HI_U32                       SyncPlayFrames;
    HI_U32                       SyncTPlayFrames;
    HI_U32                       SyncRepeatFrames;
    HI_U32                       SyncDiscardFrames;

    HI_U32                       VirAcquire;
    HI_U32                       VirAcquired;
    HI_U32                       VirRelease;
    HI_U32                       VirReleased;

    HI_BOOL          UseDNRFrame;
}HI_WIN_PROC_ATTR_S;

typedef enum hiVO_MOSAIC_TYPE_E  
{
    HI_VO_MOSAIC_TYPE_NORMAL,
    HI_VO_MOSAIC_TYPE_STANDALONE,
    HI_VO_MOSAIC_TYPE_KTV,
}HI_VO_MOSAIC_TYPE_E; 

typedef struct hiVO_CAPTURE_S 
{
    struct list_head            list; 
    struct mutex            lock;
    OPTM_FRAME_S            stCapFrame;
    OPTM_FRAME_S            *pstFrame;
    HI_U32              s32CapCnt;
}HI_VO_CAPTURE_S; 

typedef struct hiVO_MMZ_S 
{
    struct list_head            list; 
    MMZ_BUFFER_S            stMMZBuf;
    HI_UNF_CAPTURE_ALLOC_TYPE_E     enMemType;
}HI_VO_MMZ_S; 



/***********************************************************************************
* Function:       VO_Init / VO_DeInit
* Description:    initialize / de-initialize VO device 
* Data Accessed:
* Data Updated:
* Input:
* Output:
* Return:         HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_Init(HI_VOID);
HI_S32 VO_DeInit(HI_VOID);

/***********************************************************************************
* Function:       VO_SetDevMode / VO_GetDevMode
* Description:    set / query VO device mode 
* Data Accessed:
* Data Updated:
* Input:         enDevMode -- mode coefficients 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_SetDevMode(HI_UNF_VO_DEV_MODE_E enDevMode);
HI_S32 VO_GetDevMode(HI_UNF_VO_DEV_MODE_E *penDevMode);

/***********************************************************************************
* Function:      VO_CreateLayer / VO_DestroyLayer
* Description:   create /  destroy  video layer £¬
*                get handle for following interface dependence
* Data Accessed:
* Data Updated:
* Input:         enLayerId -- video layer ID
* Output:        phVo-- device  handle 
* Return:        HI_SUCCESS/errorcode
* Others:        After video layer creation, some coefficients should be set, including created window,
*                which is not enabled, and it will be enabled by VO_SetLayerEnable interface.
***********************************************************************************/
HI_S32 VO_Open(HI_UNF_VO_E enVo);
HI_S32 VO_Close(HI_UNF_VO_E enVo);

/***********************************************************************************
* Function:      VO_SetLayerEnable / VO_GetLayerEnable
* Description:   set / query  video layer enable status 
* Data Accessed:
* Data Updated:
* Input:         hVo -- video layer handle 
*                bEnable -- target status 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_SetLayerEnable(HI_UNF_VO_E enVo, HI_BOOL bEnable);
HI_S32 VO_GetLayerEnable(HI_UNF_VO_E enVo, HI_BOOL *pbEnable);


/*  set video layer screen, used to close video layer temporarily in DISP operation. */
HI_S32 VO_SetLayerMask(HI_UNF_VO_E enVo, HI_BOOL bMasked);


/***********************************************************************************
* Function:      VO_SetAlpha / VO_GetAlpha
* Description:   set / query video layer alpha
* Data Accessed:
* Data Updated:
* Input:         hVo -- video layer handle 
*                u32Alhpa-- target alpha
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_SetAlpha(HI_UNF_VO_E enVo, HI_U32 u32Alpha);
HI_S32 VO_GetAlpha(HI_UNF_VO_E enVo, HI_U32 *pu32Alpha);

/***********************************************************************************
* Function:      VO_SetRect / VO_GetRect
* Description:   set / query  video layer output window 
* Data Accessed:
* Data Updated:
* Input:         hVo -- video layer handle 
*                pstRect-- output window 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_SetRect(HI_UNF_VO_E enVo, HI_RECT_S *pstRect);
HI_S32 VO_GetRect(HI_UNF_VO_E enVo, HI_RECT_S *pstRect);

HI_S32 VO_GetAttrForProc(HI_UNF_VO_E enVo, HI_VO_PROC_ATTR_S *pVoAttr);

/***********************************************************************************
* Function:      VO_CreateWindow / VO_DestroyWindow
* Description:   set / query window 
* Data Accessed:
* Data Updated:
* Input:         phWin -- window handle 
*                pstWinAttr-- window property coefficients 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_CreateWindow(HI_UNF_WINDOW_ATTR_S *pstWinAttr, HI_HANDLE *phWin);
HI_S32 VO_CreateMCEWindow(HI_UNF_WINDOW_ATTR_S * pstWinAttr, HI_HANDLE * phWin);
HI_S32 VO_CreateAttachWindow(HI_UNF_WINDOW_ATTR_S *pstWinAttr, HI_HANDLE *phWin);
HI_S32 VO_CreateReleaseWindow(HI_UNF_WINDOW_ATTR_S *pstWinAttr, HI_HANDLE *phWin);

HI_S32 VO_DestroyWindow(HI_HANDLE hWin);

/***********************************************************************************
* Function:      VO_ResetWindow
* Description:   reset window 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window handle 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_ResetWindow(HI_HANDLE hWin, HI_UNF_WINDOW_FREEZE_MODE_E WinFreezeMode);

/***********************************************************************************
* Function:      VO_SetWindowEnable / VO_GetWindowEnable
* Description:   set / query status of window enable 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window  handle 
*                bEnable-- window target status 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_SetWindowEnable(HI_HANDLE hWin, HI_BOOL bEnable);
HI_S32 VO_GetWindowEnable(HI_HANDLE hWin, HI_BOOL *pbEnable);
HI_S32 VO_SetMainWindowEnable(HI_HANDLE hWin, HI_BOOL bEnable);
HI_S32 VO_GetMainWindowEnable(HI_HANDLE hWin, HI_BOOL *pbEnable);


/*  update MOSACI window background color; it is a inner interface, with no exposion to outside. */
HI_S32 VO_SetMosaicBgcUpdate(HI_UNF_VO_E enVo, HI_BOOL bEnable);

/***********************************************************************************
* Function:      VO_SetWindowAttr / VO_GetWindowAttr
* Description:   set / query window  property 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window  handle 
*                pstWinAttr-- window property coefficients 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_SetWindowAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pstWinAttr);
HI_S32 VO_GetWindowAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pstWinAttr);

HI_S32 VO_SetWindowZorder(HI_HANDLE hWin, HI_LAYER_ZORDER_E ZFlag);
HI_S32 VO_GetWindowOrder(HI_HANDLE hWin, HI_U32 *pOrder);


/***********************************************************************************
* Function:       VO_AttachWindow / VO_DetachWindow
* Description:    attach / detach window data source 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window handle 
*                hSrc-- source handle 
*                WinType-- source type 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
typedef HI_S32 (*VD_IMAGE_FUNC)(HI_S32 nUserId, HI_UNF_VO_FRAMEINFO_S *pstImage);
typedef struct tagVO_SOURCE_HANDLE_S
{
      HI_S32 s32UserId;
      VD_IMAGE_FUNC pfGetImage;
      VD_IMAGE_FUNC pfPutImage;
}VO_SOURCE_HANDLE_S;

HI_S32 VO_AttachWindow(HI_HANDLE hWin, HI_HANDLE hSrc, HI_HANDLE hSync, HI_MOD_ID_E enModId);
HI_S32 VO_DetachWindow(HI_HANDLE hWin, HI_HANDLE hSrc);
HI_S32 VO_SetWindowStepMode(HI_HANDLE hWin, HI_BOOL bStepMode);
HI_S32 VO_SetWindowStepPlay(HI_HANDLE hWin);
HI_S32 VO_DisableDieMode(HI_HANDLE hWin);
HI_S32 VO_AttachExternWbcBufWindows(HI_HANDLE hWin,VO_WIN_BUF_ATTR_S* pstBufAttr);


HI_S32 VO_SetWinOutRect(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pstWinAttr);
/* set die mode after attachwindow */
HI_S32 VO_SetQuickOutputEnable(HI_HANDLE hWin, HI_BOOL bEnable);

/* Only after it attaches decoder or video source for window can play ratio be set.
 * The range of u32PlayRatio is [16, 4096], q8 quantization, where 256 represents one multiple of speed (normal speed).
 */
HI_S32 VO_SetWindowPlayRatio(HI_HANDLE hWin, HI_U32 u32PlayRatio);


/***********************************************************************************
* Function:      VO_FreezeWindow
* Description:   window pause 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window handle 
*                bEnable-- pause enable 
*                enFreezeMode-- window pause mode 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_FreezeWindow(HI_HANDLE hWin, HI_BOOL bEnable, HI_UNF_WINDOW_FREEZE_MODE_E enFreezeMode);

HI_S32 VO_PauseWindow(HI_HANDLE hWin, HI_BOOL bEnable);

/***********************************************************************************
* Function:      Vo_SetWindowFieldMode
* Description:   window filed mode 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window handle 
*                bEnable-- field mode enable 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 Vo_SetWindowFieldMode(HI_HANDLE hWin, HI_BOOL bEnable);


/***********************************************************************************
* Function:      VO_CapturePicture
* Description:   capture window image 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window handle 
* Output:        pstCapPicture-- captured image information 
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_CapturePicture(HI_HANDLE hWin, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture);

/***********************************************************************************
* Function:      VO_SendFrame
* Description:   send frames to window 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window handle 
*                pstFrameinfo-- frame information 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_SendFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pstFrameinfo,VO_IFRAME_MODE_E enIframeMode);

/***********************************************************************************
* Function:      VO_GetFrame
* Description:   capture window frame 
* Data Accessed:
* Data Updated:
* Input:         hWin -- window handle 
*                pstFrameinfo -- frame information 
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 VO_PutFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pstFrameinfo);

HI_S32 VO_GetFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pstFrameinfo);

HI_S32 VO_GetWindowDelay(HI_HANDLE hWin, HI_U32 *pDelay);

HI_S32 VO_GetWindowLastFrameState(HI_HANDLE hWin, HI_BOOL *pbLastFrameState);

HI_S32 VO_GetWinAttrForProc(HI_HANDLE hWin, HI_WIN_PROC_ATTR_S *pWinAttr);

HI_S32 Window_SetWinAttrFromProc(HI_HANDLE hWin, HI_CHAR *pItem,HI_CHAR *pValue);
HI_S32 VO_Set_Det_Mode(VO_WIN_DETECT_S enDet);
HI_VOID VO_SaveVXD(HI_UNF_VO_E enVo);

HI_VOID VO_RestoreVXD(HI_UNF_VO_E enVo);

HI_S32 VO_GetMosaicBufSizeFlag(HI_VOID);
HI_S32 VO_SetMosaicBufSizeFlag(HI_S32 BufFlag);
HI_VOID VO_LstCFrame_Copy(struct work_struct *work);
HI_S32 VO_UseDNRFrame(HI_HANDLE hWin, HI_BOOL bEnable);
HI_S32 VO_AlgControl(const HI_UNF_ALG_CONTROL_S *pAlgControl);
HI_VOID VO_SetDNREnable(HI_BOOL bEnable);
HI_VOID VOISR_Wbc0Isr_standalone(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_MosaicPlay_standalone(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_ShadowIsr_standalone(HI_U32 u32Param0, HI_U32 u32Param1);
HI_S32 VO_GetMosaicType(HI_VO_MOSAIC_TYPE_E *penVoMosaicType);
HI_S32 VO_SetWinAttrFromProc(HI_UNF_VO_E voidnum, HI_CHAR *pItem,HI_CHAR *pValue);
HI_S32 VO_CapturePictureWithMem(HI_HANDLE hWin, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture, HI_UNF_CAPTURE_MEM_MODE_S *MemMode);
HI_S32 VO_CapturePictureRelease(HI_HANDLE hWin, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture);
HI_S32 VO_CapturePictureReleaseMMZ(HI_HANDLE hWin, HI_UNF_CAPTURE_MEM_MODE_S *pMemMode);
HI_S32 VO_GetDisplayFrame(HI_HANDLE hWin, HI_UNF_VO_FRAMEINFO_S *pFrame);
HI_BOOL OPTM_VSDIsRWZBProcess(HI_UNF_VO_FRAMEINFO_S *pFrame);
HI_S32  VO_SetWinRstHQ(HI_HANDLE hWin, HI_BOOL bEnable);

HI_BOOL VO_WBC0FieldMatch(HI_VOID);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif  /* __OPTM_VO_H__ */

