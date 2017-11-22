/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : mpi_priv_vo.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
    Author      : w58735
    Modification: Created file

******************************************************************************/

#ifndef __MPI_PRIV_VO_H__
#define __MPI_PRIV_VO_H__

#include "hi_unf_vo.h"
#include "hi_debug.h"
//#include "drv_vo_ext.h"
#include "hi_drv_vo.h"
//#include "drv_vo_ioctl.h"


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

/**define the struct of detect contoller func.*/
typedef enum{
    UNKNOW = 0,
    FPSDet,
    ProDet,
    FODDet,
    Reserve0,
    Reserve1,
    Reserve2,
}VO_WIN_DETECT_E;

typedef struct hiVO_WIN_DETECT_S
{
    HI_HANDLE   hWindow;
    VO_WIN_DETECT_E detType;
    HI_BOOL enDet;
}VO_WIN_DETECT_S;
typedef struct hiVO_ENABLE_S
{
    HI_UNF_VO_E   enVo;
    HI_BOOL   bEnable;
}VO_ENABLE_S;

typedef struct hiVO_ALPHA_S
{
    HI_UNF_VO_E    enVo;
    HI_U32     Alhpa;
}VO_ALPHA_S; 

typedef struct hiVO_RECT_S
{
    HI_UNF_VO_E    enVo;
    HI_RECT_S  Rect;
}VO_RECT_S;

typedef struct hiVO_WIN_CREATE_S
{
    HI_HANDLE         hWindow;
    HI_UNF_WINDOW_ATTR_S  WinAttr;
}VO_WIN_CREATE_S;

typedef struct hiVO_WIN_ZORDER_S
{
    HI_HANDLE               hWindow;    
    HI_LAYER_ZORDER_E       ZFlag;
}VO_WIN_ZORDER_S;

typedef struct hiVO_WIN_ORDER_S
{
    HI_HANDLE    hWindow;   
    HI_U32       Order;
}VO_WIN_ORDER_S;

typedef struct hiVO_WIN_ENABLE_S
{
    HI_HANDLE hWindow;
    HI_BOOL   bEnable;
}VO_WIN_ENABLE_S;

typedef struct hiVO_WIN_FIELDMODE_S
{
    HI_HANDLE hWindow;
    HI_BOOL   bEnable;
}VO_WIN_FIELDMODE_S;

typedef struct hiVO_WIN_ATTACH_S
{
    HI_HANDLE              hWindow;
    HI_HANDLE              hSrc;
    HI_HANDLE              hSync;
    HI_MOD_ID_E            ModId;
}VO_WIN_ATTACH_S;

typedef struct hiVO_WIN_RATIO_S
{
    HI_HANDLE             hWindow;
    HI_U32                Ratio;
}VO_WIN_RATIO_S;

typedef struct hiVO_WIN_FREEZE_S
{
    HI_HANDLE                    hWindow;
    HI_BOOL                      bEnable;
    HI_UNF_WINDOW_FREEZE_MODE_E  WinFreezeMode;
}VO_WIN_FREEZE_S;


typedef struct hiVO_WIN_CAPTURE_NEW_S
{
    HI_HANDLE                hWindow;
    HI_UNF_CAPTURE_PICTURE_S CapPicture;
    HI_UNF_CAPTURE_MEM_MODE_S   MemMode;
}VO_WIN_CAPTURE_NEW_S;

typedef struct hiVO_WIN_CAPTURE_RELEASE_S
{
    HI_HANDLE                hWindow;
    HI_UNF_CAPTURE_PICTURE_S CapPicture;
    HI_S32          Reverd;
}VO_WIN_CAPTURE_RELEASE_S;


typedef struct hiVO_WIN_CAPTURE_FREE_S
{
    HI_HANDLE                hWindow;
    HI_UNF_CAPTURE_MEM_MODE_S   MemMode;
    HI_S32          Reverd;
}VO_WIN_CAPTURE_FREE_S;

typedef struct hiVO_WIN_FRAME_S
{
    HI_HANDLE               hWindow;
    HI_UNF_VO_FRAMEINFO_S   Frameinfo;
}VO_WIN_FRAME_S;

typedef struct hiVO_WIN_RESET_S
{
    HI_HANDLE                    hWindow;
    HI_UNF_WINDOW_FREEZE_MODE_E  WinFreezeMode;
}VO_WIN_RESET_S;

typedef struct hiVO_WIN_PAUSE_S
{
    HI_HANDLE        hWindow;
    HI_BOOL          bEnable;
}VO_WIN_PAUSE_S;

typedef struct hiVO_WIN_DELAY_S
{
    HI_HANDLE     hWindow;
    HI_U32        Delay;
}VO_WIN_DELAY_S;

typedef struct hiVO_WIN_LAST_FRAME_S
{
    HI_HANDLE     hWindow;
    HI_BOOL       bLastFrame;
}VO_WIN_LAST_FRAME_S;


typedef struct hiVO_WIN_STEP_MODE_S
{
    HI_HANDLE             hWindow;
    HI_BOOL               bStepMode;
}VO_WIN_STEP_MODE_S;


typedef struct hiVO_STATE_S
{
    HI_BOOL      bSd0Vo;
    HI_BOOL      bHd0Vo;    
    HI_HANDLE    hWin[HI_UNF_VO_BUTT][WINDOW_MAX_NUM];
}VO_STATE_S;

typedef struct hiVO_GLOBAL_STATE_S
{
    HI_U32         Sd0VoNum;
    HI_U32         Hd0VoNum;    
    HI_U32         WinCount[HI_UNF_VO_BUTT];
}VO_GLOBAL_STATE_S;

typedef struct hiVO_WIN_BUF_ATTR_S
{
    HI_HANDLE       hwin;
    HI_S32            FrameNum;
    HI_U32             u32FrameIndex[WINDOW_MAX_NUM];
    HI_U32             u32PhyAddr[WINDOW_MAX_NUM];
    HI_S32             FrameStride;
}VO_WIN_BUF_ATTR_S;

typedef struct hiVO_WIN_SET_QUICK_OUTPUT_S
{
    HI_HANDLE             hWindow;
    HI_BOOL               bQuickOutputEnable;
}VO_WIN_SET_QUICK_OUTPUT_S;

typedef struct hiVO_SET_WINDOW_OUTRECT_S
{
    HI_HANDLE             hWindow;
    HI_RECT_S             WinOutRect;
}VO_SET_WINDOW_OUTRECT_S;

typedef enum hiVO_WIN_CREATE_TYPE_E
{
    VO_WIN_CREATE_TYPE_NORMAL,
    VO_WIN_CREATE_TYPE_ATTACH,
    VO_WIN_CREATE_TYPE_RELEASE,
    VO_WIN_CREATE_TYPE_BUTT
}VO_WIN_CREATE_TYPE_E;

typedef struct hiVO_WIN_FRAMEINFO_S
{
    HI_HANDLE   hWin;
    HI_UNF_VO_FRAMEINFO_S *pFrameInfo;
}VO_WIN_FRAMEINFO_S;

typedef struct hiVO_WIN_RESET_HQ_S
{
    HI_HANDLE   hWin;
    HI_BOOL     bEnable;
}VO_WIN_RESET_HQ_S;
typedef enum hiIOC_VO_E
{
    IOC_VO_SET_DEV_MODE =0,
    IOC_VO_GET_DEV_MODE,
    IOC_VO_OPEN,
    IOC_VO_CLOSE,

    IOC_VO_SET_ENABLE,
    IOC_VO_GET_ENABLE,

    IOC_VO_SET_ALPHA,
    IOC_VO_GET_ALPHA,

    IOC_VO_SET_RECT,
    IOC_VO_GET_RECT,

    IOC_VO_WIN_CREATE,
    IOC_VO_WIN_DESTROY,

    IOC_VO_WIN_CREATE_ATTACH,
    IOC_VO_WIN_CREATE_RELEASE,

    IOC_VO_WIN_SET_ENABLE,
    IOC_VO_WIN_GET_ENABLE,
    IOC_VO_WIN_GET_VIRTUAL,
    IOC_VO_WIN_SET_MAIN_ENABLE,
    IOC_VO_WIN_GET_MAIN_ENABLE,

    IOC_VO_WIN_SET_ATTR,
    IOC_VO_WIN_GET_ATTR,

    IOC_VO_WIN_SET_ZORDER,
    IOC_VO_WIN_GET_ORDER,

    IOC_VO_WIN_ATTACH,
    IOC_VO_WIN_DETACH,

    IOC_VO_WIN_RATIO,        

    IOC_VO_WIN_FREEZE,

    IOC_VO_WIN_CAPTURE,
    IOC_VO_GETLATESTFRAME,

    IOC_VO_WIN_SEND_FRAME,

    IOC_VO_WIN_PUT_FRAME,
    IOC_VO_WIN_GET_FRAME,

    IOC_VO_WIN_ACQUIRE,
    IOC_VO_WIN_RELEASE,

    IOC_VO_WIN_RESET,
    IOC_VO_WIN_PAUSE,
    IOC_VO_WIN_GET_DELAY,

    IOC_VO_WIN_GET_LAST_FRAME_STATE,

    IOC_VO_WIN_STEP_MODE,
    IOC_VO_WIN_STEP_PLAY,

    IOC_VO_WIN_DIE_MODE,
    IOC_VO_WIN_ATTACH_EXTERNBUF,

    IOC_VO_WIN_SET_QUICK_OUTPUT,
    
    IOC_VO_WIN_FIELDMODE,
    IOC_VO_USEDNRFRAME,
    IOC_VO_ALGCONTROL,
    IOC_VO_WIN_DET_MODE,
    IOC_VO_WIN_SET_RESET_HQ,
    IOC_VO_BUTT
} IOC_VO_E;


#define CMD_VO_SET_DEV_MODE           _IOW(HI_ID_VO, IOC_VO_SET_DEV_MODE, HI_UNF_VO_DEV_MODE_E)
#define CMD_VO_GET_DEV_MODE           _IOR(HI_ID_VO, IOC_VO_GET_DEV_MODE, HI_UNF_VO_DEV_MODE_E)
#define CMD_VO_OPEN                   _IOW(HI_ID_VO, IOC_VO_OPEN, HI_UNF_VO_E)
#define CMD_VO_CLOSE                  _IOW(HI_ID_VO, IOC_VO_CLOSE, HI_UNF_VO_E)

#define CMD_VO_SET_ENABLE             _IOW(HI_ID_VO, IOC_VO_SET_ENABLE, VO_ENABLE_S)
#define CMD_VO_GET_ENABLE             _IOWR(HI_ID_VO, IOC_VO_GET_ENABLE, VO_ENABLE_S)

#define CMD_VO_SET_ALPHA              _IOW(HI_ID_VO, IOC_VO_SET_ALPHA, VO_ALPHA_S)
#define CMD_VO_GET_ALPHA              _IOWR(HI_ID_VO, IOC_VO_GET_ALPHA, VO_ALPHA_S)

#define CMD_VO_SET_RECT               _IOW(HI_ID_VO, IOC_VO_SET_RECT, VO_RECT_S)
#define CMD_VO_GET_RECT               _IOWR(HI_ID_VO, IOC_VO_GET_RECT, VO_RECT_S)

#define CMD_VO_WIN_CREATE             _IOWR(HI_ID_VO, IOC_VO_WIN_CREATE, VO_WIN_CREATE_S)
#define CMD_VO_WIN_DESTROY            _IOW(HI_ID_VO, IOC_VO_WIN_DESTROY, HI_HANDLE)

#define CMD_VO_WIN_CREATE_ATTACH      _IOWR(HI_ID_VO, IOC_VO_WIN_CREATE_ATTACH, VO_WIN_CREATE_S)
#define CMD_VO_WIN_CREATE_RELEASE     _IOWR(HI_ID_VO, IOC_VO_WIN_CREATE_RELEASE, VO_WIN_CREATE_S)

#define CMD_VO_WIN_SET_ENABLE         _IOW(HI_ID_VO, IOC_VO_WIN_SET_ENABLE, VO_WIN_ENABLE_S)
#define CMD_VO_WIN_GET_ENABLE         _IOWR(HI_ID_VO, IOC_VO_WIN_GET_ENABLE, VO_WIN_ENABLE_S)
#define CMD_VO_WIN_GET_VIRTUAL        _IOWR(HI_ID_VO, IOC_VO_WIN_GET_VIRTUAL, VO_WIN_ENABLE_S)
#define CMD_VO_WIN_SET_MAIN_ENABLE    _IOW(HI_ID_VO, IOC_VO_WIN_SET_MAIN_ENABLE, VO_WIN_ENABLE_S)
#define CMD_VO_WIN_GET_MAIN_ENABLE    _IOWR(HI_ID_VO, IOC_VO_WIN_GET_MAIN_ENABLE, VO_WIN_ENABLE_S)

#define CMD_VO_WIN_SET_ATTR           _IOW(HI_ID_VO, IOC_VO_WIN_SET_ATTR, VO_WIN_CREATE_S)
#define CMD_VO_WIN_GET_ATTR           _IOWR(HI_ID_VO, IOC_VO_WIN_GET_ATTR, VO_WIN_CREATE_S)

#define CMD_VO_WIN_SET_ZORDER         _IOW(HI_ID_VO, IOC_VO_WIN_SET_ZORDER, VO_WIN_ZORDER_S)
#define CMD_VO_WIN_GET_ORDER          _IOWR(HI_ID_VO, IOC_VO_WIN_GET_ORDER, VO_WIN_ORDER_S)

#define CMD_VO_WIN_ATTACH             _IOW(HI_ID_VO, IOC_VO_WIN_ATTACH, VO_WIN_ATTACH_S)
#define CMD_VO_WIN_DETACH             _IOW(HI_ID_VO, IOC_VO_WIN_DETACH, VO_WIN_ATTACH_S)

#define CMD_VO_WIN_RATIO             _IOW(HI_ID_VO, IOC_VO_WIN_RATIO, VO_WIN_RATIO_S)

#define CMD_VO_WIN_FREEZE             _IOW(HI_ID_VO, IOC_VO_WIN_FREEZE, VO_WIN_FREEZE_S)

#define CMD_VO_WIN_CAPTURE            _IOWR(HI_ID_VO, IOC_VO_WIN_CAPTURE, VO_WIN_CAPTURE_S)

#define CMD_VO_WIN_SEND_FRAME         _IOW(HI_ID_VO, IOC_VO_WIN_SEND_FRAME, VO_WIN_FRAME_S)

#define CMD_VO_WIN_PUT_FRAME          _IOW(HI_ID_VO, IOC_VO_WIN_PUT_FRAME, VO_WIN_FRAME_S)
#define CMD_VO_WIN_GET_FRAME          _IOWR(HI_ID_VO, IOC_VO_WIN_GET_FRAME, VO_WIN_FRAME_S)

#define CMD_VIRTUAL_ACQUIRE_FRAME     _IOWR(HI_ID_VO,IOC_VO_WIN_ACQUIRE,VO_WIN_FRAME_S)
#define CMD_VIRTUAL_RELEASE_FRAME     _IOWR(HI_ID_VO,IOC_VO_WIN_RELEASE,VO_WIN_FRAME_S)

#define CMD_VO_WIN_RESET              _IOW(HI_ID_VO, IOC_VO_WIN_RESET, VO_WIN_RESET_S)
#define CMD_VO_WIN_PAUSE              _IOW(HI_ID_VO, IOC_VO_WIN_PAUSE, VO_WIN_PAUSE_S)

#define CMD_VO_WIN_GET_DELAY          _IOWR(HI_ID_VO, IOC_VO_WIN_GET_DELAY, VO_WIN_DELAY_S)

#define CMD_VO_WIN_GET_LAST_FRAME_STATE  _IOWR(HI_ID_VO, IOC_VO_WIN_GET_LAST_FRAME_STATE, VO_WIN_LAST_FRAME_S)


#define CMD_VO_WIN_STEP_MODE          _IOW(HI_ID_VO, IOC_VO_WIN_STEP_MODE, VO_WIN_STEP_MODE_S)

#define CMD_VO_WIN_STEP_PLAY          _IOW(HI_ID_VO, IOC_VO_WIN_STEP_PLAY, HI_HANDLE)

#define CMD_VO_WIN_DIE_MODE           _IOW(HI_ID_VO, IOC_VO_WIN_DIE_MODE, HI_HANDLE)

#define CMD_VO_WIN_DET_MODE           _IOW(HI_ID_VO, IOC_VO_WIN_DET_MODE, VO_WIN_DETECT_S)
#define CMD_VO_WIN_ATTACH_EXTERNBUF   _IOW(HI_ID_VO,IOC_VO_WIN_ATTACH_EXTERNBUF,VO_WIN_BUF_ATTR_S)

#define CMD_VO_WIN_SET_QUICK_OUTPUT   _IOW(HI_ID_VO,IOC_VO_WIN_SET_QUICK_OUTPUT,VO_WIN_SET_QUICK_OUTPUT_S)

#define CMD_VO_WIN_FIELDMODE             _IOW(HI_ID_VO, IOC_VO_WIN_FIELDMODE, VO_WIN_FIELDMODE_S)
#define CMD_VO_USEDNRFRAME             _IOW(HI_ID_VO, IOC_VO_USEDNRFRAME, VO_ENABLE_S)
#define CMD_VO_ALGCONTROL             _IOW(HI_ID_VO, IOC_VO_ALGCONTROL, HI_UNF_ALG_CONTROL_S)
#define CMD_VO_WIN_CAPTURE_START    _IOWR(HI_ID_VO, IOC_VO_WIN_CAPTURE, VO_WIN_CAPTURE_NEW_S)
#define CMD_VO_WIN_CAPTURE_RELEASE    _IOWR(HI_ID_VO, IOC_VO_WIN_CAPTURE, VO_WIN_CAPTURE_RELEASE_S)
#define CMD_VO_WIN_CAPTURE_FREE    _IOWR(HI_ID_VO, IOC_VO_WIN_CAPTURE, VO_WIN_CAPTURE_FREE_S)
#define CMD_VO_WIN_GETLATESTFRAME   _IOWR(HI_ID_VO, IOC_VO_GETLATESTFRAME, VO_WIN_FRAMEINFO_S)

#define CMD_VO_WIN_SET_RESET_HQ     _IOWR(HI_ID_VO, IOC_VO_WIN_SET_RESET_HQ, VO_WIN_RESET_HQ_S)


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */

#endif /* End of #ifndef __MPI_PRIV_VO_H__ */


