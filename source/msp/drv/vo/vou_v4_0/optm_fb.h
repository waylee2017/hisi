
/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name     : optm_fb.h
Version       : Initial Draft
Author        : Hisilicon multimedia software group
Created       : 2009/1/16
Last Modified :
Description   :
Function List :
History       :
******************************************************************************/
#ifndef __OPTM_FB_H__
#define __OPTM_FB_H__

#include "optm_basic.h"
#include "optm_define.h"
#include "optm_alg_api.h"
#include "optm_hal.h"
#include "hi_drv_sync.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/* node number of FB maximum buffered of video front frame */
#define OPTM_FFB_MAX_FRAME_NUM  12L

/* frame buff size */
#define OPTM_BLACK_BUFF_SIZE_4K	  		0x1000
#define OPTM_BLACK_BUFF_OFFSET_SIZE		0x800

#define WBC_USE_FILED_MODE 1

#if (1 == WBC_USE_FILED_MODE)
/* WBC0 Address, Y always writeback to the start address, C offset half filed */
#define OPTM_WBC0FB_TOP_FIELD_YADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr + pstWbcFb->stFrameDemo.u32YStride
#define OPTM_WBC0FB_BOTTOM_FIELD_YADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr
#define OPTM_WBC0FB_TOP_FIELD_CADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr + pstWbcFb->stFrameDemo.u32YStride \
                                                 + pstWbcFb->stFrameDemo.u32YStride*pstWbcFb->stFrameDemo.u32Height;
#define OPTM_WBC0FB_BOTTOM_FIELD_CADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr \
                                                 + pstWbcFb->stFrameDemo.u32YStride*pstWbcFb->stFrameDemo.u32Height;
#else
#define OPTM_WBC0FB_TOP_FIELD_YADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr
#define OPTM_WBC0FB_BOTTOM_FIELD_YADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr
#define OPTM_WBC0FB_TOP_FIELD_CADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr \
                                                 + pstWbcFb->stFrameDemo.u32YStride*pstWbcFb->stFrameDemo.u32Height;
#define OPTM_WBC0FB_BOTTOM_FIELD_CADDR(pstWbcFb) pstWbcFb->stMBuf.u32StartPhyAddr \
                                                 + pstWbcFb->stFrameDemo.u32YStride*pstWbcFb->stFrameDemo.u32Height;
#endif

/* Buffer status of VO frame */
typedef enum hiOPTM_FRAME_STATE_E
{
    OPTM_FRAME_NOUSED = 0,  /* no use  */
    OPTM_FRAME_RECEIVED,    /* received */
    //OPTM_FRAME_USED,      /* in use  */

    OPTM_FRAME_STATE_BUTT,
 }OPTM_FRAME_STATE_E;

typedef enum hiFRAME_SOURCE_E
{
    FRAME_SOURCE_VDEC = 0,
    FRAME_SOURCE_STILL,
    FRAME_SOURCE_VI,
    FRAME_SOURCE_IFRAME,
    FRAME_SOURCE_BUTT,
}FRAME_SOURCE_E;


typedef enum tagOPTM_PLAY_STATE_E
{
    OPTM_PLAY_STATE_READY = 0,
    OPTM_PLAY_STATE_PLAYING,
    OPTM_PLAY_STATE_PLAY_OVER,
    OPTM_PLAY_STATE_JUMP,
    OPTM_PLAY_STATE_BUTT,
}OPTM_PLAY_STATE_E;

typedef enum hiVO_IFRAME_MODE_E{
    VO_IFRAME_MODE_NOCOPY = 0,
    VO_IFRAME_MODE_COPY,
    VO_IFRAME_MODE_BUTT,
}VO_IFRAME_MODE_E;

/* FB frame node */
typedef struct tagOPTM_FRAME_S
{
    FRAME_SOURCE_E          enFrameSrc;
    HI_UNF_VO_FRAMEINFO_S   VdecFrameInfo;
    OPTM_FRAME_STATE_E      enState;

    HI_BOOL                 bNeedRelease;      /* any frame to be released ? */
    HI_U32                  u32IndexNumber;

    HI_U64                  u64RecvTime;  /* recieve frame time */

    MMZ_BUFFER_S            stMMZBuf;


    /* g45208_20101223 prepare to delete */
    /* display control information */
    HI_U32                  u32DispTime;
    HI_U32                  u32Repeat;

    /* frame rate control: b1-bottom, b0-top */
    HI_U32                  u32CurFld;         /* current display field / frame */
    HI_U32                  u32DoneFld;        /* displayed field / frame  */

    /* slave window display control */
    HI_U32                  u32SlaveState;     /* 0, not display; 1, display; 2, finish display */
    HI_U32                  u32SlaveLstFld;    /* displayed field / frame  */

    /******************************************/
    /* add by g45208_20101220 */
    OPTM_PLAY_STATE_E       enFrameState;

    /* needed times to display */
    HI_U32                  u32F_NdPlayTime;
    HI_U32                  u32T_NdPlayTime;
    HI_U32                  u32B_NdPlayTime;

    /* practical display times */
    HI_U32                  u32F_RlPlayTime;
    HI_U32                  u32T_RlPlayTime;
    HI_U32                  u32B_RlPlayTime;

    HI_U32                  u32CurDispFld;   /* current display field / frame , 1, top; 2, bottum; 3, frame */
    HI_BOOL		    bCaptured;	    /* the frame is captured */
    HI_U32		    index;	    /* Rec frame ID */
    VO_IFRAME_MODE_E enIframeMode;
}OPTM_FRAME_S;

typedef struct tagOPTM_RELEASE_FRAME_S
{
    HI_UNF_VO_FRAMEINFO_S   VdecFrameInfo;
    HI_BOOL                 bNeedRelease;

}OPTM_RELEASE_FRAME_S;


/* FB queue  */
typedef struct hiOPTM_FB_S
{
    OPTM_FRAME_S    OptmFrameBuf[OPTM_FFB_MAX_FRAME_NUM];
    OPTM_FRAME_S    *pCrtFrame;
    OPTM_FRAME_S    *pNextFrame;
    OPTM_FRAME_S    *pPreFrame;

    HI_UNF_VO_FRAMEINFO_S    stcfgF[6];

    HI_U32          In;
    HI_U32          Next;
    HI_U32          Current;
    HI_U32          Previous;
    HI_U32          PrePrevious;

    HI_U32	    Drop;

    HI_U32          LstConfig;
    HI_U32          LstLstConfig;
    HI_U32          Release;
    HI_U32          SafeRelease;

    HI_U32          RepeatFormat;
    HI_S32          CrtFieldFlag;      /* 0, top; 1, bottom; 2, frame */
    HI_BOOL         bProgressive;      /* progressive/interlace information  */
    HI_BOOL         bTopFirst;         /* field order information  */
    HI_BOOL         bQuickOutputMode;

    /* statistic data */
    HI_U32          TryReceiveFrame;
    HI_U32          ReceiveFrame;
    HI_U32          UnloadFrame;
    HI_U32          ConfigFrame;
    HI_U32          ReleaseFrame;

    HI_U32          SyncPlay;
    HI_U32          SyncTPlay;
    HI_U32          SyncRepeat;
    HI_U32          SyncDiscard;

    OPTM_RELEASE_FRAME_S    OptmRlsFrameBuf[OPTM_FFB_MAX_FRAME_NUM];

    HI_U32                  RlsRead;
    HI_U32                  RlsWrite;

    HI_U32                  u32LstFldDropCnt;  /* last lost count */
} OPTM_FB_S;


HI_VOID OPTM_FB_SetQuickOutputMode(OPTM_FB_S *pFb, HI_BOOL bQuickOutputMode);
HI_VOID OPTM_FB_Reset(OPTM_FB_S *pFb, HI_BOOL bQuickOutputMode);
HI_S32 OPTM_FB_BufNum(OPTM_FB_S *pFb);


OPTM_FRAME_S * OPTM_FB_ReceiveGetNext(OPTM_FB_S *pFb);
HI_VOID OPTM_FB_ReceivePutNext(OPTM_FB_S *pFb);

#ifdef VDP_USE_DEI_FB_OPTIMIZE
HI_BOOL OPTM_FB_ConfigGetNext(OPTM_FB_S * pFb, OPTM_AA_DEI_MODE_E enDEIMode);
#else
HI_BOOL OPTM_FB_ConfigGetNext(OPTM_FB_S *pFb);
#endif
HI_VOID OPTM_FB_ConfigPutNext(OPTM_FB_S *pFb, HI_BOOL bForse);
HI_VOID OPTM_FB_ConfigUnload(OPTM_FB_S *pFb);

/*release we can drop frame just now*/
HI_S32 OPTM_FB_GetDropFrame(OPTM_FB_S *pFb, OPTM_FRAME_S **pDrop);
HI_VOID OPTM_FB_PutDropFrame(OPTM_FB_S *pFb);



HI_S32 OPTM_FB_ReleaseGetNext(OPTM_FB_S *pFb, OPTM_FRAME_S **pReleaseFrame);
HI_VOID OPTM_FB_ReleasePutNext(OPTM_FB_S *pFb);

OPTM_FRAME_S *OPTM_FB_GetCurrent(OPTM_FB_S *pFb);
OPTM_FRAME_S *OPTM_FB_GetPrePrevious(OPTM_FB_S *pFb);
OPTM_FRAME_S *OPTM_FB_GetLstConfig(OPTM_FB_S *pFb);
OPTM_FRAME_S *OPTM_FB_GetSpecify(OPTM_FB_S *pFb, HI_U32 Specify);


HI_VOID OPTM_FB_GetDispField2(OPTM_FRAME_S *pCrtFrame, HI_S32 CrtFieldFlag, HI_BOOL bProgressive, HI_BOOL bTopFirst);

/*******************************************************
            display status switch control
*******************************************************/
HI_VOID OPTM_FB_ResetDispFieldInfo(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive);
HI_VOID OPTM_FB_SearchDispField(OPTM_FRAME_S *pCrtFrame, HI_S32 CrtFieldFlag, HI_BOOL bProgressive, HI_BOOL bTopFirst, HI_BOOL *pbRepFlag);
HI_VOID OPTM_FB_GetDispField(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive, HI_BOOL bTopFirst, HI_BOOL *pbRepFlag);
HI_VOID OPTM_FB_PutDispField(OPTM_FRAME_S *pCrtFrame, HI_BOOL bTopFirst);
HI_S32 OPTM_FB_GetDropFieldAtStart(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive, HI_BOOL bTopFirst);
HI_S32 OPTM_FB_GetDropFieldAtEnd(OPTM_FRAME_S *pCrtFrame, HI_BOOL bProgressive, HI_BOOL bTopFirst);

/* Sync handle */
HI_VOID OPTM_FB_SyncHandle(OPTM_FB_S *pFb, SYNC_VID_OPT_S *pstVidOpt);


/*******************************************************
            WBC buffer management interface
 *******************************************************/
typedef struct tagOPTM_FB_LOCAL_F_S
{
    MMZ_BUFFER_S stMMZBuf;
    OPTM_FRAME_S stFrame;
}OPTM_FB_LOCAL_F_S;

/*******************************************************
            black frame  management interface
 *******************************************************/
/* create black frame */
HI_S32 OPTM_CreateBlackFrame(HI_VOID);

/* release black frame */
HI_VOID OPTM_DestroyBlackFrame(HI_VOID);

/* get black frame */
OPTM_FRAME_S * OPTM_GetBlackFrame(HI_VOID);

/* get bgc frame */
OPTM_FB_LOCAL_F_S * OPTM_GetBgcFrame(HI_VOID);

/*******************************************************
            still frame management interface
 *******************************************************/
/* create still frame */
HI_S32 OPTM_CreateStillFrame(OPTM_FB_LOCAL_F_S *pstSF, HI_UNF_VO_FRAMEINFO_S *pstIFrame);

/* release still frame */
HI_VOID OPTM_DestroystillFrame(OPTM_FB_LOCAL_F_S *pstSF);


/*******************************************************
 Since MMZ memory release interface is blocked interface,
 it can not be called in interrupt, then this interface
 is provided, to release MMZ memory in work queue.
*******************************************************/

typedef HI_VOID (* OPTM_FB_RELEASE_MMZ_CB)(MMZ_BUFFER_S *psMBuf);

typedef struct tagOPTM_FB_RELEASE_BUF_WQ_S
{
    MMZ_BUFFER_S stMMZBuf;
    OPTM_FB_RELEASE_MMZ_CB pWQCB;
    struct work_struct work;
}OPTM_FB_RELEASE_BUF_WQ_S;


HI_S32 OPTM_FB_RelaseMMZBufInWQ(MMZ_BUFFER_S *pstMMZBuf, OPTM_FB_RELEASE_MMZ_CB pFuncWork);


/*******************************************************
                   WBC buffer management interface
 *******************************************************/
/* max buffered frame number */
#define OPTM_WBC_FRAME_NUMBER 8

/* WBC0 single buffer scheme enable */
#define OPTM_WBC0_ONE_BUUFER_ENABLE 1

typedef struct tagOPTM_WBC_FB_S
{
    MMZ_BUFFER_S stMBuf;
    HI_S32 s32FrmSize;
    HI_S32 s32FrmNum;

    HI_UNF_VO_FRAMEINFO_S stFrameDemo;
    HI_UNF_VO_FRAMEINFO_S stFrame[OPTM_WBC_FRAME_NUMBER];  /* frame  information  */
    OPTM_FRAME_STATE_E    enState[OPTM_WBC_FRAME_NUMBER];  /* validity flag of data */
    HI_U32  u32LastWriteYaddr;
    HI_BOOL bIsExternAlloc;

    HI_U32 InPtr;   /* write in pointer */
    HI_U32 CfgPtr;  /* write in pointer */
    HI_U32 RdPtr;   /* read out pointer */
    HI_U32 LsPtr;   /* read out pointer */
    HI_U32 Ls2Ptr;  /* read out pointer */
    HI_U32 RlsPtr;  /* read out pointer */

    HI_U32 s32WBC1RepeatFlag;

    HI_U32 u32StIn;
    HI_U32 u32StOverflow;

    HI_U32 u32StConfig;
    HI_U32 u32StRepeat;
    HI_U32 u32StUnderflow;

    HI_U32     Acquire;
    HI_U32     Acquired;
    HI_U32     Release;

    HI_U32 Released;
}OPTM_WBC_FB_S;

typedef struct tagOPTM_WBC1_FB_S
{
    MMZ_BUFFER_S           stMmzBuf;
    HI_U32                 u32FrameSize;
    HI_U32                 u32FrameNum;
    HI_BOOL                bExternAlloc;
    HI_U32                 u32LastWriteYaddr;

    HI_UNF_VO_FRAMEINFO_S  stFrameDemo;
    HI_UNF_VO_FRAMEINFO_S  stFrame[OPTM_WBC_FRAME_NUMBER];
    OPTM_FRAME_STATE_E     enState[OPTM_WBC_FRAME_NUMBER];

    HI_U32                 u32WritePtr;
    HI_U32                 u32CrtWritePtr;

    HI_U32                 u32ReadPtr;
    HI_U32                 u32LstReadPtr;
    HI_U32                 u32Release;

    HI_U32                 Acquire;
    HI_U32                 Acquired;
    HI_U32                 Release;
    HI_U32                 Released;

    HI_U32                 Unload;

}OPTM_WBC1_FB_S;

/* WBC0 single buffer scheme */
HI_S32 OPTM_WBC0FB_Create(OPTM_WBC_FB_S *pWbc, HI_S32 s32Width, HI_S32 s32Height);
HI_S32 OPTM_WBC0FB_Destroy(OPTM_WBC_FB_S *pWbc);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC0FB_GetBuffer(OPTM_WBC_FB_S *pWbc);

HI_S32 OPTM_WBCFB_Create(OPTM_WBC_FB_S *pWbc, HI_S32 s32Width, HI_S32 s32Height, HI_S32 s32BufferLength);
HI_S32 OPTM_WBCFB_Destroy(OPTM_WBC_FB_S *pWbc);
HI_S32 OPTM_WBCFB_Reset(OPTM_WBC_FB_S *pWbc);
HI_S32 OPTM_WBCFB_ExternReset(OPTM_WBC_FB_S* pWbc,VO_WIN_BUF_ATTR_S* pstBufAttr);
HI_S32 OPTM_WBCFB_ExternClear(OPTM_WBC_FB_S* pWbc);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ReceiveGetNext(OPTM_WBC_FB_S *pWbc);
HI_VOID OPTM_WBCFB_ReceivePutConfig(OPTM_WBC_FB_S *pWbc);
HI_S32 OPTM_WBCFB_RecieveStakePutNext(OPTM_WBC_FB_S *pWbc,HI_BOOL StakeFlag);
HI_S32                 OPTM_WBCFB_RecievePutNext(OPTM_WBC_FB_S *pWbc);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigGetNext(OPTM_WBC_FB_S *pWbc);
HI_S32                 OPTM_WBCFB_ConfigPutNext(OPTM_WBC_FB_S *pWbc);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigGetLast(OPTM_WBC_FB_S *pWbc);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigSearch(OPTM_WBC_FB_S *pWbc, HI_UNF_VIDEO_FIELD_MODE_E enDstFeild, HI_S32 *ps32Lst);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBCFB_ConfigGetNewest(OPTM_WBC_FB_S *pWbc);
HI_S32                 OPTM_WBCFB_ReleaseFrame(OPTM_WBC_FB_S *pWbc); /* keep 2 frames */
HI_S32                 OPTM_WBCFB_ReleaseFrameFromUser(OPTM_WBC_FB_S *pWbc);
HI_S32                 OPTM_WBCFB_GetPtrState(OPTM_WBC_FB_S *pWbc);

HI_VOID OPTM_WBC1FB_Reset(OPTM_WBC1_FB_S *pstWbc1);
HI_S32 OPTM_WBC1FB_ExternReset(OPTM_WBC1_FB_S *pstWbc1, VO_WIN_BUF_ATTR_S* pstBufAttr);
HI_S32 OPTM_WBC1FB_ExternClear(OPTM_WBC1_FB_S* pstWbc1);
HI_S32 OPTM_WBC1FB_Create(OPTM_WBC1_FB_S *pstWbc1, HI_UNF_VIDEO_FORMAT_E enVideoFormat, HI_U32 u32Width, HI_U32 u32Height, HI_U32 u32BufNum);
HI_VOID OPTM_WBC1FB_Destroy(OPTM_WBC1_FB_S *pstWbc1);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetWriteBuf(OPTM_WBC1_FB_S *pstWbc1);
HI_VOID OPTM_WBC1FB_AddWriteBuf(OPTM_WBC1_FB_S *pstWbc1);
HI_VOID OPTM_WBC1FB_PutWriteBuf(OPTM_WBC1_FB_S *pstWbc1);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetReadBuf(OPTM_WBC1_FB_S *pstWbc1, HI_BOOL bLast);
HI_VOID OPTM_WBC1FB_PutReadBuf(OPTM_WBC1_FB_S *pstWbc1);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetReadBuf_special(OPTM_WBC1_FB_S *pstWbc1, HI_BOOL bLast);
HI_VOID OPTM_WBC1FB_AddReadPtr(OPTM_WBC1_FB_S *pstWbc1);
HI_BOOL OPTM_WBC1FB_GetBufferState(OPTM_WBC1_FB_S *pstWbc1);
OPTM_FRAME_S *OPTM_FB_FindFrame(OPTM_FB_S *pFb, HI_UNF_VO_FRAMEINFO_S *pRefF);

#if 0
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_GetNewestReadBuf(OPTM_WBC1_FB_S *pstWbc1);
HI_UNF_VO_FRAMEINFO_S *OPTM_WBC1FB_SearchReadBuf(OPTM_WBC1_FB_S *pstWbc1, HI_UNF_VIDEO_FIELD_MODE_E enDstFeild);
#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

#endif /* __OPTM_FB_H__ */
