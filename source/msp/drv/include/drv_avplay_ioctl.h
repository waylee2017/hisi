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
  File Name	: drv_avplay_ioctl.h
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: w58735
    Modification	: Created file

*******************************************************************************/
#ifndef __DRV_AVPLAY_IOCTL_H__
#define __DRV_AVPLAY_IOCTL_H__

#include "hi_type.h"
#include "hi_unf_avplay.h"
#include "hi_drv_adec.h"
#include "hi_mpi_mem.h"
#include "hi_mpi_stat.h"
#include "hi_mpi_vdec.h"
#include "hi_mpi_adec.h"
#include "hi_mpi_demux.h"
#include "hi_mpi_sync.h"
#include "hi_mpi_vo.h"
#include "hi_mpi_ao.h"
#include "hi_mpi_demux.h"
#include "hi_drv_avplay.h"
#include "list.h"
#ifdef __cplusplus
#if __cplusplus
    extern "C"{
#endif
#endif

#define    AVPLAY_MAX_NUM                 16
#define    AVPLAY_MAX_WIN                 6
#define    AVPLAY_MAX_DMX_AUD_CHAN_NUM    32
#define    AVPLAY_MAX_TRACK               6

#define    AVPLAY_DFT_VID_SIZE       (5*1024*1024)
#define    AVPLAY_MIN_VID_SIZE       (512*1024)

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3716mv330) 
#define    AVPLAY_MAX_VID_SIZE       (32*1024*1024)
#elif defined (CHIP_TYPE_hi3716mv320)
#define    AVPLAY_MAX_VID_SIZE       (18*1024*1024)
#else
#define    AVPLAY_MAX_VID_SIZE       (6*1024*1024)
#endif

#define    AVPLAY_TS_DFT_AUD_SIZE    (384*1024)
#define    AVPLAY_ES_DFT_AUD_SIZE    (256*1024)
#define    AVPLAY_MIN_AUD_SIZE       (192*1024)
#define    AVPLAY_MAX_AUD_SIZE       (4*1024*1024)

#define    AVPLAY_ADEC_FRAME_NUM     (8)

#define    AVPLAY_SYS_SLEEP_TIME     (10)

#define    AVPLAY_EOS_BUF_MIN_LEN    (1024)
#define    AVPLAY_EOS_TIMEOUT        (200)

#define    AVPLAY_ES_VID_HIGH_PERCENT    70 
#define    AVPLAY_ES_VID_LOW_PERCENT     30 
#define    AVPLAY_ES_VID_FULL_PERCENT    85
#define    AVPLAY_ES_VID_EMPTY_PERCENT   10
#define    AVPLAY_ES_AUD_HIGH_PERCENT    85
#define    AVPLAY_ES_AUD_LOW_PERCENT     10
#define    AVPLAY_ES_AUD_FULL_PERCENT    98
#define    AVPLAY_ES_AUD_EMPTY_PERCENT   5
#define    AVPLAY_VDEC_SEEKPTS_THRESHOLD 5000
#define 	AO_DELAY_LOW_WATERLINE  200
/* max delay time of adec in buffer */
#define    AVPLAY_ADEC_MAX_DELAY        1200

#ifdef HI_AVPLAY_FCC_SUPPORT
/* audio buffer waterline on PreStart mode*/
#define    AVPLAY_AUD_PREBUF_THRESHOLD   40

/* video buffer waterline on PreStart mode*/
#define    AVPLAY_VID_PREBUF_THRESHOLD   50
#endif

typedef    HI_S32 (*AVPLAY_EVT_CB_FN)(HI_HANDLE hAvplay, HI_UNF_AVPLAY_EVENT_E EvtMsg, HI_U32 EvtPara);

typedef enum hiAVPLAY_PROC_ID_E
{
    AVPLAY_PROC_ADEC_AO,
    AVPLAY_PROC_DMX_ADEC,
    AVPLAY_PROC_BUTT
}AVPLAY_PROC_ID_E;

typedef enum hiTHREAD_PRIO_E
{
    THREAD_PRIO_REALTIME,    /*Realtime thread, only 1 permitted*/
    THREAD_PRIO_HIGH,
    THREAD_PRIO_MID,
    THREAD_PRIO_LOW,
    THREAD_PRIO_BUTT
}THREAD_PRIO_E;

#ifdef HI_AVPLAY_FCC_SUPPORT
typedef struct
{
    struct list_head List;
    HI_U8 *Pos;
} FRAME_ENTRY_S;
#endif

#pragma pack(4)
typedef struct hiAVPLAY_S
{
    HI_UNF_AVPLAY_ATTR_S       AvplayAttr;
    HI_HANDLE                  hAvplay;

    HI_HANDLE                  hVdec;
    HI_UNF_VCODEC_ATTR_S       VdecAttr;         /*vdec attribute*/
    HI_HANDLE                  hDmxVid;
    HI_U32                     DmxVidPid;         /*dmx pid of vid channel*/

    HI_HANDLE                  hAdec;
    HI_U32                     AdecType;         /*audio decode protocol type*/

    HI_U32                     CurDmxAudChn;
    HI_U32                     DmxAudChnNum;
    HI_HANDLE                  hDmxAud[AVPLAY_MAX_DMX_AUD_CHAN_NUM];
    HI_U32                     DmxAudPid[AVPLAY_MAX_DMX_AUD_CHAN_NUM]; 
    HI_UNF_ACODEC_ATTR_S       *pstAcodecAttr;

    HI_HANDLE                  hDmxPcr;

    /*dmx pid of pcr channel, it uses when avplay reset or start, because there's no open/close interface of pcr channel*/
    /*CNcomment: PCR通道没有open/close接口，所以需要记录以供reset，start使用 */
    HI_U32                     DmxPcrPid;         
    
    HI_HANDLE                  hWindow[AVPLAY_MAX_WIN];
    HI_U32                     WindowNum;

    HI_HANDLE                  hSyncTrack;
    HI_HANDLE                  hTrack[AVPLAY_MAX_TRACK];
    HI_U32                     TrackNum;

    HI_HANDLE                  hSync;

    HI_BOOL                    VidEnable;
    HI_BOOL                    AudEnable;

    HI_BOOL                    AudDDPMode; /* for DDP test only */
    HI_U32                     LastAudPts; /* for DDP test only */

    HI_BOOL                    bSetEosFlag;
    HI_BOOL                    bSetAudEos;

    HI_BOOL                    bStandBy;    /*is standby or not*/

	ADEC_SzNameINFO_S          AdecNameInfo;
    
    AVPLAY_EVT_CB_FN           EvtCbFunc[HI_UNF_AVPLAY_EVENT_BUTT];   /*event callback function*/

    HI_UNF_AVPLAY_STATUS_E     LstStatus;        /* last avplay status */
    HI_UNF_AVPLAY_STATUS_E     CurStatus;            /* current avplay status */
	HI_U32                     TplaySpeed;       /* speed of tplay */
    HI_UNF_AVPLAY_OVERFLOW_E   OverflowProc;

    HI_U32                     AcquireAudEsNum;
    HI_U32                     AcquiredAudEsNum;
    HI_U32                     SendAudEsNum;
    HI_U32                     SendedAudEsNum;

    HI_U32                     AcquireAudFrameNum;
    HI_U32                     AcquiredAudFrameNum;
    HI_U32                     SendAudFrameNum;
    HI_U32                     SendedAudFrameNum;

    HI_U32                     VidOverflowNum;
    HI_U32                     AudOverflowNum;

    HI_BOOL                    AvplayProcContinue;
    HI_BOOL                    AvplayProcDataFlag[AVPLAY_PROC_BUTT];

    HI_U32                       VidHighBufWaterline; /* video buffer high waterline, 0-99 */
    HI_U32                       VidLowBufWaterline;    /* video buffer low waterline, 0-99 */

    /* video buffer dither waterline */
    /* CNcomment: 视频缓冲管理抖动水线的百分比，0-99 */
    HI_U32                     VidDitherWaterline;  

    HI_U32                       AudHighBufWaterline;    /* audio buffer high waterline, 0-99 */
    HI_U32                       AudLowBufWaterline;    /* audio buffer low waterline, 0-99 */

    /* video buffer dither waterline */
    /* CNcomment: 音频缓冲管理抖动水线的百分比，0-99 */
    HI_U32                     AudDitherWaterline;  

    VDEC_ES_BUF_S              AvplayVidEsBuf;      /*vdec buffer in es mode*/
    HI_UNF_STREAM_BUF_S        AvplayAudEsBuf;      /*adec buffer in es mode*/
    HI_UNF_ES_BUF_S            AvplayDmxEsBuf;      /*audio denux buffer in ts mode*/
    HI_UNF_AO_FRAMEINFO_S      AvplayAudFrm;        /*audio frames get form adec*/
    SYNC_AUD_INFO_S            AudInfo;
    SYNC_AUD_OPT_S             AudOpt;

    HI_U32                     PreAudEsBuf;         /*audio es buffer size when EOS happens*/
    HI_U32                     PreVidEsBuf;         /*video es buffer size when EOS happens*/
    HI_U32                     PreSystime;          /*system time when EOS happens*/
    HI_U32                     PreVidEsBufWPtr;     /*position of the video es buffer write pointer*/
    HI_U32                     PreAudEsBufWPtr;     /*position of the audio es buffer write pointer*/
    HI_U32                     PreTscnt;            /*ts count when EOS happens*/
    HI_BOOL                    CurBufferEmptyState; /*current buffer state is empty or not*/

    HI_U32                     PreAdecSystime;      /*system time when calculate SucRate for adec module */

    HI_UNF_AVPLAY_BUF_STATE_E   PreVidBufState;     /*the status of video es buffer when CheckBuf*/
    HI_UNF_AVPLAY_BUF_STATE_E   PreAudBufState;     /*the status of audio es buffer when CheckBuf*/
    HI_BOOL                     VidDiscard;

#ifdef HI_AVPLAY_FCC_SUPPORT
	HI_BOOL                         bVidPreEnable;
    HI_BOOL                         bAudPreEnable;
    HI_U32                          VidPreBufThreshold;
    HI_U32                          AudPreBufThreshold;
    HI_U32                          VidPreSysTime;
    HI_U32                          AudPreSysTime;
    HI_U32                          PreAudPts;
    HI_U32                          PreVidPts;
    HI_U32                          PreAudWaterLine;
    HI_U32                          PreVidWaterLine;
    HI_U32                          PreVidFirstWaterLine;
    HI_U32                          PreVidSecondWaterLine;
    HI_U32                          PreVidBufLen;
#endif	

    HI_BOOL                    AvplayThreadRun;
    THREAD_PRIO_E               AvplayThreadPrio;    /*the priority level of avplay thread*/

    HI_U32                     EosStartTime;        /*EOS start time*/
    HI_U32                     EosDurationTime;     /*EOS duration time*/

    HI_U32                     u32DispOptimizeFlag;    /*this is for pvr smooth tplay*/
#ifdef HI_AVPLAY_FCC_SUPPORT
	HI_HANDLE                       hDFCtx;
#endif
#ifndef __KERNEL__
    pthread_t                   AvplayDataThdInst;    /* run handle of avplay thread */  
    pthread_attr_t              AvplayThreadAttr;    /*attribute of avplay thread*/
    pthread_mutex_t             *pAvplayThreadMutex;     /*mutex for data safety use*/
    /*pthread_mutex_t             *pAvplayMutex;             mutex for interface safety use */

    pthread_t                   AvplayStatThdInst;    /* run handle of avplay thread */  
#endif
}AVPLAY_S;
#pragma pack()


typedef struct hiAVPLAY_CREATE_S
{
    HI_U32     AvplayId;
    HI_U32     AvplayPhyAddr;
    HI_UNF_AVPLAY_STREAM_TYPE_E    AvplayStreamtype;
}AVPLAY_CREATE_S;

typedef struct hiAVPLAY_USR_ADDR_S
{
    HI_U32     AvplayId;
    HI_U32     AvplayUsrAddr;    /* AVPLAY address in user model */ 
}AVPLAY_USR_ADDR_S;

typedef struct hiAVPLAY_INFO_S
{
    AVPLAY_S   *pAvplay;         /* AVPLAY pointer in kernel model */
    HI_U32     AvplayPhyAddr;    /* AVPLAY physical address */ 
    HI_U32     File;             /*avplay file handle*//* CNcomment: AVPLAY所在进程句柄 */
    HI_U32     AvplayUsrAddr;    /* AVPLAY address in user model */ 
}AVPLAY_INFO_S;

typedef struct hiAVPLAY_GLOBAL_STATE_S
{
    AVPLAY_INFO_S  AvplayInfo[AVPLAY_MAX_NUM];
    HI_U32         AvplayCount;
}AVPLAY_GLOBAL_STATE_S;


typedef enum hiIOC_AVPLAY_E
{
    IOC_AVPLAY_GET_NUM = 0,

    IOC_AVPLAY_CREATE,
    IOC_AVPLAY_DESTROY,

    IOC_AVPLAY_CHECK_ID,
    IOC_AVPLAY_SET_USRADDR,
    IOC_AVPLAY_CHECK_NUM,

    IOC_AVPLAY_SET_BUTT
}IOC_AVPLAY_E;


#define CMD_AVPLAY_CREATE         _IOWR(HI_ID_AVPLAY, IOC_AVPLAY_CREATE, AVPLAY_CREATE_S)
#define CMD_AVPLAY_DESTROY        _IOW(HI_ID_AVPLAY, IOC_AVPLAY_DESTROY, HI_U32)

#define CMD_AVPLAY_CHECK_ID       _IOWR(HI_ID_AVPLAY, IOC_AVPLAY_CHECK_ID, AVPLAY_USR_ADDR_S)
#define CMD_AVPLAY_SET_USRADDR    _IOW(HI_ID_AVPLAY, IOC_AVPLAY_SET_USRADDR, AVPLAY_USR_ADDR_S)
#define CMD_AVPLAY_CHECK_NUM      _IOWR(HI_ID_AVPLAY, IOC_AVPLAY_CHECK_NUM, HI_U32)

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif

#endif

