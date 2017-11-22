
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_p_disp.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_P_VO_H__
#define __OPTM_P_VO_H__

#include "optm_m_disp.h"
#include "optm_m_vo.h"
#include "optm_debug.h"
#include "linux/list.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */


/********************************************************************/
 /* max window number for vhd layer */
#ifndef  HI_VO_SINGLE_VIDEO_SUPPORT
#define OPTM_VO_MAX_WIN_CHANNEL  16
#else
#define OPTM_VO_MAX_WIN_CHANNEL  2
#endif

#define OPTM_VO_RESET_FRAME_WIDTH  1920
#define OPTM_VO_RESET_FRAME_HEIGHT 1080

#define OPTM_VO_WBC1_NUM   3
#define OPTM_VO_MCE_WIN_ID OPTM_VO_MAX_WIN_CHANNEL

/********************************************************************/

/********************************************************************/
#define OPTM_VO_MAX_SLAVE_CHANNEL 6

 /* window update flag */
typedef union tagOPTM_WIN_UP_U
{
    struct
    {
        HI_U32 Open       : 1;  /*  open  or  close  */
        HI_U32 Layer      : 1;  /*  switch video layer */
        HI_U32 Reserve    : 30;
    }Bits;

    HI_U32 u32Value;
}OPTM_WIN_UP_U;

 /* window attr update flag */
typedef union tagOPTM_WIN_ATTR_UP_U
{
    struct
    {
        HI_U32 AspCvrs      : 1;/* transformation way of window width/height */
        HI_U32 InRect       : 1;/* tailored region of window */
        HI_U32 OutRect      : 1;/* display region of window on LYAER */
        HI_U32 AspRatio     : 1;/* window width/height ratio */
        HI_U32 Reserve      : 28;
    }Bits;
    HI_U32 u32Value;
}OPTM_WIN_ATTR_UP_U;

typedef struct tagOPTM_VO_WIN_DETECT
{
    HI_BOOL bFPSDet;
    HI_BOOL bProDet;
    HI_BOOL bFODDet;
    HI_BOOL bReserve0;
    HI_BOOL bReserve1;
    HI_BOOL bReserve2;
}OPTM_VO_WIN_DETECT_S;

#if _OPTM_DEBUG_VO_VIRTUAL_
#define OPTM_VO_MAX_VIRTUALWIN_CHANNEL  6
#endif

 /*  length of input PTS information queue */
#define OPTM_VO_IN_PTS_SEQUENCE_LENGTH         30

 /*  threshold of stable input frame rate, employed only when that is larger than threshold */
#define OPTM_VO_INFRAME_RATE_STEADY_THRESHOLD  4

 /* w00136937 */
typedef struct tagOPTM_WIN_S
{
    /* TRUE, append in win queue, assign s32CallOrder;
     * FALSE, pop from win queue, release s32CallOrder.
     */
    HI_S32                       s32WindowId;
    HI_BOOL                      bOpened;
    #if _OPTM_DEBUG_VO_VIRTUAL_
    HI_BOOL                      bActiveContain;
    HI_BOOL                      bIsMainWin;
    HI_BOOL                      bIsVirtual;
    HI_BOOL                      RepeatFlag;
    struct tagOPTM_WIN_S*        hSlaveNewWin[OPTM_VO_MAX_SLAVE_CHANNEL];    /* from window list */
    HI_S32                       s32SlaveNewNum;
    struct tagOPTM_WIN_S*        hSlaveWin[OPTM_VO_MAX_SLAVE_CHANNEL];
    struct tagOPTM_WIN_S*        hMainWin;
    HI_S32                       s32SlaveNum;
    HI_S32                       s32SlaveIndex;
    HI_S32                       s32MainIndex;//
    OPTM_WBC1_FB_S               stVirtualWbcWin; /* wbc-related parameters and related output size */
    #endif
    HI_BOOL                      bIsMCE;
    wait_queue_head_t            RstWaitQueue;
    HI_BOOL                      bEnable;         /* TRUE, output; FALSE, close layer output */
    HI_BOOL                      bReset;          /* reset flag */
    HI_RECT_S                    stOutRect;
    HI_UNF_WINDOW_FREEZE_MODE_E  enReset;

    /* I frame needs dynamic memory */
    OPTM_FB_LOCAL_F_S            stI_Frame;
    HI_U32                       u32I_FrameWaitCount;

    /* 0, step1, pause output and start copying current frame;
     * 1, step2, wait copy finish;
     * 2, step3, copy finish, flush fb and putin still frame, resume output.
     */
    HI_U32                       u32ResetStep;

    HI_BOOL                      bStepMode;
    HI_BOOL                      bStepPlay;

    //HI_BOOL                      bDisableSync;      /* 1->disable win sync,  0->enable win sync */
    HI_BOOL                      bDisableDei;       /* 1->disable DEI ,  0->enable DEI */

    // add by g45208, for IFRAME display
    HI_BOOL                      bPaused;           /* static frame function */

    HI_BOOL                      bFreeze;           /* static frame function */
    HI_UNF_WINDOW_FREEZE_MODE_E  enFreeze;

    OPTM_FRAME_S                 stFrzFrame;
    OPTM_FRAME_S                 *pstFrzFrame;
    HI_S32                       s32FrzFrameIsPro;

    HI_HANDLE                    hVoHandle;         /* OPTM_VO_S handle */

    HAL_DISP_LAYER_E             enLayerHalId;      /* video channel ID */

    HI_UNF_WINDOW_ATTR_S         stAttr;            /* attr is used for setting WinM parameters */
    OPTM_WIN_ATTR_UP_U           unAttrUp;

    /*********************
        display channel
    *********************/
    OPTM_M_DISP_INFO_S           stDispInfo;
    HAL_DISP_OUTPUTCHANNEL_E     enDispHalId;

    /*********************
        Frame buffer
    *********************/
    OPTM_FB_S                    WinFrameBuf;
    HI_BOOL                      bQuickOutputMode;
    HI_BOOL                      bReleaseLastFrame;/*bak value for the one above, for the reason of handan pvr.*/

    /* add for time static */
    HI_U32                       u32WinRemainFrameTimeMs;
    HI_U64                       u64LastFrameRecTime;
    OPTM_FRAME_S                 *pstCOFrame;

    /*******************************
         Vdh callback function
    *******************************/
    HI_HANDLE                    hSrc;
    HI_HANDLE                    hSync;
    HI_MOD_ID_E                  enModId;
    HI_S32                       s32UserId;
    VD_IMAGE_FUNC                pfGetImage;
    VD_IMAGE_FUNC                pfPutImage;

    /******************************
           window alg info
    ******************************/
    HI_U32                       InPTSSqn[OPTM_VO_IN_PTS_SEQUENCE_LENGTH]; /* past PTS information  */
    HI_U32                       InPTSPtr; /* pointer of past PTS information, pointing to the oldest frame rate in record */
    HI_U32                       InLastPts;
    HI_BOOL                      bInPtsDown;

    HI_U32                       FrameTime;
    HI_U32                       InFrameRate;         /*  current input frame rate */
    HI_U32                       InFrameRateCal;      /*  calulate input frame rate */
    HI_U32                       InFrameRateLast;     /*  last input frame rate */
    HI_U32                       InFrameRateEqueTime; /*  counter of stable frame rate, to avoid display shake caused by shake of frame rate */

    OPTM_ALG_FRC_S               stAlgFrc;
    HI_U32                       u32DisplayRatio;

    OPTM_CS_E                    enSrcCS;
    OPTM_CS_E                    enDstCS;
    //OPTM_CSC_MODE_E              enCscMode;

    /*****************************
        Algorithm module
    *****************************/
    OPTM_FRAME_S                 stLastFrame;
    HI_BOOL                      bDeiNeedReset;
    OPTM_VD_DIE_S                stDie;
    OPTM_AA_DET_INFO_S           stDetInfo;
    FIR_COEF_ADDR_S              *pstZmeCoefAddr;
    /*****************************
        DetectFunction Control
    *****************************/
    OPTM_VO_WIN_DETECT_S         enDetect;

    /******************************************************
      All parameters above determine the setting of WinM,
      WinM operates based on the parameters.
    ******************************************************/
    OPTM_M_CFG_S                 WinModCfg;
    //DTS2011041800974 add  20110422   used for calculating coordinate of window
    HI_RECT_S                    stOutRecInited;            //coordinate of original window
    OPTM_M_DISP_INFO_S           stDispInfoInited;          //original disp information
    HI_BOOL                      bDrop;          //virtual window in drop frame status
    HI_BOOL                      bFieldMode;     //field mode flag for backward play
    HI_U32                       u32FrameCnt;        //virtual window frame count for transcode.
    struct work_struct           Reset_Work;  //use work_struct for last frame save when reset the window
    OPTM_FB_LOCAL_F_S            stLast_Frame;  //save the lase frame when reset the window
    HI_BOOL                      bUseDNRFrame;   /* when reset window and reset mode is last frame, use the last frame in DNR*/
    HI_UNF_VIDEO_SAMPLE_TYPE_E   VideoType;       /*use to judge a main win's video is or not a Interlace video for mv300
    just effect normal mode*/

    OPTM_M_CFG_S                 WinModCfg_standalone;      /* standalone mode, save VHD WinModCfg */

    /*****************************
        window capture process
    *****************************/
    HI_U32                       captureCnt;
    struct list_head             stCaptureHead;
    struct list_head             stCapMMZHead;
    OPTM_FRAME_S                stRstFrame[3];
    HI_BOOL                     bRstHQ;

    HI_UNF_VO_FRAMEINFO_S   stDebuginfo;       /* define debug frame information */
    HI_U32           u32Debugbits;      /* define which bits is invalid  of debug frame information*/
}OPTM_WIN_S;

typedef struct screenshare_list_S
{
    //HI_UNF_DISP_MIRROR_FRAME_S  mirror_frame;
    struct list_head   listnode;
    HI_U32  usedflag;
    HI_S32  workingstatus;
}screenshare_list_node_S;

#define  SCREEN_SHARE_BUFFER_SIZE    16
#define  MIRACAST_FRAMERATE_MAX      30
typedef struct  tagOPTM_WBC0_S
{
    HI_BOOL                  bMasked;      /* screen function, used for temporary close of LAYER in DISP operation */
    HI_BOOL                  bEnable;
    HAL_DISP_LAYER_E         enLayerId;

    HAL_DISP_LAYER_E         enSrcLayerId;
    HAL_DISP_OUTPUTCHANNEL_E enSrcDispCh;
    HAL_DISP_OUTPUTCHANNEL_E enDstDispCh;

    HI_S32                   s32TBSwtich;  /* 0, t; 1, b */
    HI_BOOL                  bHDSDFieldMatch;

    OPTM_M_WBC0_S            stTask;
    HI_S32                   s32TaskCount;
    OPTM_WBC_FB_S            *pstWbcBuf;
}OPTM_WBC0_S;
#if 1
typedef struct tagOPTM_MIRACAST_WIN_S
{
    OPTM_WBC0_S                  stWbc;
    HI_BOOL                      bWbcEnable;
    /*we use list instead of array*/
    struct list_head   free_list;
    struct list_head   working_list;
    struct list_head   full_list;

    HI_U32   list_vmalloc_addr;
    HI_U32   init_list_nodenum;
    MMZ_BUFFER_S screensharebuf;

    HI_BOOL  mirror_enable_status;
    HI_U32   mirror_create_flag;
    HI_BOOL  mirror_enable_change_status;
    //HI_UNF_DISP_CAST_CFG_S    user_cfg_info;
    HI_U32  s32RecvFrameCnt;
}OPTM_MIRACAST_WIN_S;
#endif
typedef struct tagOPTM_SHADOW_WIN_S
{
    HI_BOOL                      bOpened;
    HI_BOOL                      bMasked;        /* screen function, used for temporary close of LAYER in DISP operation */
    HI_BOOL                      bEnable;        /* TRUE, output;  FALSE, close layer output */
    HI_BOOL                      bMiracast;

    HI_U32                       Switch;

    HI_BOOL                      bWbcMode;       /* HI_TRUE, in wbc;  HI_FALSE, in 1to2 */

    OPTM_WBC0_S                  stWbc;
    OPTM_WBC_FB_S                stWbcBuf;

     /*  in 1to2 mode */
    OPTM_WIN_S                   *pMainWin;
    /*
     * When SD writeback fetch point is 0(after DEI), SD need calculate its position independently, it need refer to HD windows's position.
     * pMainWin's stAttr member can't be updated when user set window attr,
     * so add pRealMainWin to build the relationship between wbc and HD window.
     */
    OPTM_WIN_S                   *pRealMainWin;
    HI_HANDLE                    hVoHandle;      /* OPTM_VO_S handle */
    HAL_DISP_LAYER_E             enLayerHalId;   /* video  channel ID */

    HI_BOOL                      bRpeat;

    HI_U32                       Config;
    HI_U32                       CurFld;
    HI_U32                       DoneFld;

    OPTM_WIN_UP_U                unUpdate;       /* TRUE, detect bOpen */
    HI_UNF_WINDOW_ATTR_S         stAttr;         /* attr is used to set WinM parameters */
    OPTM_WIN_ATTR_UP_U           unAttrUp;

    /******************************************************************
                   common part
    ******************************************************************/

    /*********************
        display channel
    *********************/
    OPTM_M_DISP_INFO_S           stDispInfo;
    HAL_DISP_OUTPUTCHANNEL_E     enDispHalId;

    /*****************************
        Algorithm module
    *****************************/
    FIR_COEF_ADDR_S              *pstZmeCoefAddr;
    OPTM_VD_DIE_S                stDie;
    OPTM_AA_DET_INFO_S           stDetInfo; /* detect information  */

    OPTM_CS_E                    enSrcCS;
    OPTM_CS_E                    enDstCS;

    /******************************************************
      All parameters above determine the setting of WinM,
      WinM operates based on the parameters.
    ******************************************************/
    OPTM_M_CFG_S                 WinModCfg;

    OPTM_WIN_S                *pstSlaveWin; /* add standalone slave window for standalone mode in shadow*/
    OPTM_WBC1_FB_S            stWbcBuf_standalone;  /* add wbc1 buffer for standalone mode */
    HI_RECT_S stOutRect;    /* add rect for standalone mode */
    HI_RECT_S stInRect; /* add rect for standalone mode */
    HI_UNF_VO_FRAMEINFO_S  *pstwbc1frame;   /* add frame record for standalone */
}OPTM_SHADOW_WIN_S;

typedef struct tagOPTM_MOSAIC_WIN_S
{
    HI_BOOL                      bOpened;
    HI_BOOL                      bMasked;        /* screen function, used for temporary close of LAYER in DISP operation */
    HI_BOOL                      bEnable;        /* TRUE, output;  FALSE, close layer output */

    OPTM_WBC1_FB_S               stWbcBuf;

     /*  in 1to2 mode */
    HI_UNF_WINDOW_ATTR_S         stAttr;         /* attr is used to set WinM parameters */
    OPTM_WIN_ATTR_UP_U           unAttrUp;

    /*********************
        display channel
    *********************/
    HAL_DISP_LAYER_E             enLayerHalId;   /* video channel ID */
    OPTM_M_DISP_INFO_S           stDispInfo;
    HAL_DISP_OUTPUTCHANNEL_E     enDispHalId;

    /*****************************
        Algorithm module
    *****************************/
    FIR_COEF_ADDR_S              *pstZmeCoefAddr;

    /******************************************************
      All parameters above determine the setting of WinM,
      WinM operates based on the parameters.
    ******************************************************/
    OPTM_M_CFG_S                 WinModCfg;
    //DTS2011041800974 add 20110422   used for calculating coordinate of window(mosaic window)
    HI_RECT_S                    stOutputRectInited;    //coordinate of original window
    OPTM_M_DISP_INFO_S           stDispInfoInited;      //original disp information
    OPTM_WIN_S  *pstSlaveWin;   /* add standalone slave window for standalone mode*/
    HI_S32      stPutShadow;
}OPTM_MOSAIC_WIN_S;

 /* vo update flag */
typedef union tagOPTM_VO_UP_U
{
    struct
    {
        HI_U32 Win        : 1;  /* open  or  close */
        HI_U32 Order      : 1;  /* switch video layer */
        HI_U32 Attr       : 1;  /* Attr update */
        HI_U32 OutRect    : 1;  /* adjust of OUT RECT effects the assignment of vidoe layers */
        HI_U32 Reserve    : 28;
    }Bits;
    HI_U32 u32Value;
}OPTM_VO_UP_U;

typedef struct  tagOPTM_VO_S
{
    HI_BOOL                  bOpened;        /* enable flag: TRUE, create win, register ISR; FALSE, destroy all win, un-register ISR */

    HI_BOOL                  bMasked;        /* screen function, used for temporary close of LAYER in DISP operation */
    HI_BOOL                  bEnable;        /* enable: TRUE, allow display of win; FALSE, stop win update */

    HI_BOOL                  bOffLineModeEn; /* if in mosaic mode */
    HI_U32                   u32WbcUnload;

    OPTM_WBC1_FB_S           *pstWbcBuf;

    HI_UNF_VO_FRAMEINFO_S   *psWbcFrame;
    HI_S32                   s32WbcWinIndex;
    HI_BOOL                  bBeBusy;

    OPTM_VO_UP_U             unUpFlag;       /* update flag */

    HI_UNF_VO_E              enUnfVo;        /* video layer ID */
    HI_UNF_DISP_LAYER_E      enDispLayer;
    OPTM_M_DISP_INFO_S       stDispInfo;
    HI_S32                   NextBtmflag;

    HI_S32                   s32HalVoNUmber;
    HAL_DISP_LAYER_E         enVoHalId[3];   /* owned physical video layer */

    HI_UNF_DISP_E            enUnfDisp;
    HAL_DISP_OUTPUTCHANNEL_E enDispHalId;

    HI_U32                   u32Alpha;
    HI_RECT_S                stOutRect;

    OPTM_CS_E                enDstCS;
    OPTM_CS_E                enSrcCS;
    //OPTM_CSC_MODE_E         enCscMode;
    HI_BOOL                  bWbc1FillBlack;
    HI_U32                   u32Wbc1FillAddr[OPTM_VO_WBC1_NUM];
    HI_U32                   u32Wbc1FillNum;
    HI_BOOL                  bWbc1FillTask;

    /* support one window, temporarily */
    OPTM_WIN_S               stWin[OPTM_VO_MAX_WIN_CHANNEL];      /* queue of window */
    HI_S32                   s32ActWinNum;

    HI_S32                   s32NewActWinNum;

     /* w00136937 */
    #if _OPTM_DEBUG_VO_VIRTUAL_
    OPTM_WIN_S               stMainWin[OPTM_VO_MAX_WIN_CHANNEL];
    OPTM_WIN_S*              ahNewMainWin[OPTM_VO_MAX_WIN_CHANNEL];
    HI_S32                   s32NewMainWinNum;
    OPTM_WIN_S*              ahMainWin[OPTM_VO_MAX_WIN_CHANNEL];
    HI_S32                   s32MainWinNum;
    #endif
    HI_BOOL          bAlgFlag;
} OPTM_VO_S;

HI_S32 VO_SetVoAttach(HI_UNF_VO_E enMasterVo, HI_UNF_VO_E enSlaveVo);
HI_VOID VO_SetVoDetach(HI_UNF_VO_E enMasterVo, HI_UNF_VO_E enSlaveVo);
HI_VOID VO_SwitchVoAttach(HI_BOOL bWbcMode, OPTM_VO_S *pstVo);

HI_VOID VO_SetWbcOpen(HI_BOOL bEnable);
HI_VOID VO_SetWbcEnable(HI_BOOL bEnable);
HI_S32 VO_ReleaseFrame(OPTM_WIN_S  *pstWin, OPTM_FRAME_S *pstOptmFrame);


/*****************************************************************
 *             task management of offline write-back             *
 *****************************************************************/
#define OPTM_VO_OFL_TASK_LIST_MAX_LENGTH    4

typedef HI_S32 (*OPTM_TASK_FUNC)(HI_U32 u32Param0, HI_U32 u32Param1);

typedef struct tagOPTM_OFL_TASK_S{
    OPTM_TASK_FUNC  pfTaskStart;
    OPTM_TASK_FUNC  pfTaskFinish;
    HI_U32          u32Param0;
    HI_U32          u32Param1;
    HI_S32          s32TaskIndex;
}OPTM_OFL_TASK_S;

typedef struct tagOPTM_OFL_TASK_MNG_S{
    OPTM_OFL_TASK_S astTaskList[OPTM_VO_OFL_TASK_LIST_MAX_LENGTH];
    HI_S32          s32TaskListLength;
    HI_S32          s32TaskRead;

    OPTM_OFL_TASK_S astNewTaskList[OPTM_VO_OFL_TASK_LIST_MAX_LENGTH];
    HI_S32          s32NewTaskListLength;

    HI_BOOL         bUpdateList;
    HI_BOOL         bBeBusy;
}OPTM_OFL_TASK_MNG_S;




#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /*  __OPTM_P_VO_H__  */
