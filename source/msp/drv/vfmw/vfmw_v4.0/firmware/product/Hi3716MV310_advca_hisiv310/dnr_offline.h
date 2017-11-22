
/***********************************************************************
*
* Copyright (c) 2006 HUAWEI - All Rights Reserved
*
* File: $dnr_offline.h$
* Date: $2010/07/27$
* Revision: $v1.0$
* Purpose: interface header file of Office DNR
*
*
* Change History:
*
* Date             Author            Change
* ====             ======            ======
* 2010/07/27       l57648            Original
*
*
* Dependencies:
*
************************************************************************/

#ifndef __DNR_FIRMWARE_H__
#define __DNR_FIRMWARE_H__

#include "vfmw.h"
#include "vfmw_osal.h"
#include "mem_manage.h"
#include "imgque.h"

#ifdef __cplusplus
extern "C" {
#endif

/***********************************************************************
      constants
 ***********************************************************************/
#define OUTPUT_IN_DEC            1
#define OUTPUT_IN_DSP            0

// 实例状态
#define DNR_INST_MODE_IDLE   0
#define DNR_INST_MODE_WORK   1
#define DNR_INST_MODE_WAIT   2

#define DNR_DB_EN 1
#define DNR_DR_EN 1
#define DNR_DC_EN 0

/* VFMW API 返回值 */
#define  DNR_OK                 0
#define  DNR_ERR               -1
#define  DNR_ERR_WRONG_PARAM   -2
#define  DNR_ERR_NO_MEM        -3
#define  DNR_ERR_VDEC_BUSY     -4
#define  DNR_ERR_CHAN_FULL     -5
#define  DNR_ERR_CHAN_RUN      -6
#define  DNR_ERR_CHAN_STOP     -7
#define  DNR_ERR_UNSUPPORT     -8

/* －－－之前返回值定义，由于底层某些代码没有清理,暂时放在这里，以后要删掉－－－ */
#define  DNR_VFMW_OK                   1
#define  DNR_VFMW_NO_MEM              -1
#define  DNR_VFMW_ERR_PARAM           -2
#define  DNR_VFMW_TIME_OUT            -3
#define  DNR_VFMW_VDM_ERR             -4
#define  DNR_VFMW_FORCE_STOP          -5
#define  DNR_VFMW_ERR_SYS             -20
#define  DNR_VFMW_ERR_SPS             -21
#define  DNR_VFMW_ERR_PPS             -22
#define  DNR_VFMW_ERR_SLICE           -23

/* 极限值 */
//#define MAX_USRDAT_SIZE         256
#define MAX_DNRFSP_NUM          64
#define MAX_DNRTEMPFSP_NUM      64
//#define MIN_DNRFSP_NUM          6
#define PVR_BACKWARD_VO_NUM_OF_DISABLE_DEI  3
#define PVR_BACKWARD_VO_NUM_OF_ENABLE_DEI   7

#define PVR_BACKWARD_ENABLE_DEI_FLAG   1
#define PVR_BACKWARD_DISABLE_DEI_FLAG  0


/***********************************************************************
      enums
 ***********************************************************************/
// standard type

typedef enum
{
    DNR_STD_START_RESERVED = 0,
    DNR_STD_H264 = 0,
    DNR_STD_VC1,
    DNR_STD_MPEG4,
    DNR_STD_MPEG2,
    DNR_STD_H263,
    DNR_STD_DIVX3,
    DNR_STD_AVS,
    DNR_STD_JPEG,
    DNR_STD_VP6,
    DNR_STD_VP8,
    DNR_STD_END_RESERVED
} DNR_VID_STD_E;


/* 事件类型 */
typedef enum
{
    DNR_EVNT_DISP_EREA = 1,
    DNR_EVNT_IMG_SIZE_CHANGE,
    DNR_EVNT_FRMRATE_CHANGE,
    DNR_EVNT_SCAN_CHANGE,
    DNR_EVNT_NEW_IMAGE,
    DNR_EVNT_USRDAT,
    DNR_EVNT_ASPR_CHANGE,
    DNR_EVNT_VDM_ERR = 101,
    DNR_EVNT_UNSUPPORT,
    DNR_EVNT_SE_ERR,
    DNR_EVNT_OVER_REFTHR,
    DNR_EVNT_OVER_OUTTHR
} DNR_EVNT_TYPE_E;

typedef enum
{
    DNRDRV_SLEEP_STAGE_NONE = 0,      // 未休眠
    DNRDRV_SLEEP_STAGE_PREPARE,       // 收到休眠命令，但还未完成休眠
    DNRDRV_SLEEP_STAGE_SLEEP          // 已休眠
} DNRDRV_SLEEP_STAGE_E;


/***********************************************************************
      structures
 ***********************************************************************/
/* VDEC能力描述 */
typedef struct hiDNR_CAP_S
{
    SINT32    s32MaxChanNum;
    SINT32    s32MaxBitRate;
    SINT32    s32MaxFrameWidth;
    SINT32    s32MaxFrameHeight;
    SINT32    s32MaxPixelPerSec;
    //VID_STD_E SupportedStd[16];
} DNR_CAP_S;

/* 通道配置信息 */
typedef struct hiDNR_CHAN_CFG_S
{
    //    SINT32    eVidStd;            /* 协议类型 */
    //    SINT32    s32ChanPriority;    /* 通道优先级 */
    //    SINT32    s32DnrTfEnable;
    //    SINT32    s32DnrDispOutEnable;
    SINT8	  s32MirrorEn;
    SINT8     s32VcmpEn;           /*压缩使能位*/
    SINT8     s32WmEn;             /*压缩水印使能位*/
    SINT32    s32VcmpWmStartLine; /*水印起始行号*/
    SINT32    s32VcmpWmEndLine;	/*水印结束行号*/
    SINT32    s32NeedConfigDnrChan; /*需要重新配置*///l00273086
} DNR_CHAN_CFG_S;


/* 解码图象描述 */
typedef struct
{
    UINT8      *luma_vir_addr;
    UINT8      *chrom_vir_addr;
    UINT8      *luma_tf_vir_addr;
    UINT8      *chrom_tf_vir_addr;
    UINT8      *luma_2d_vir_addr;
    UINT8      *chrom_2d_vir_addr;

    UINT64      SrcPts;
    UINT64      PTS;
    UINT64      Usertag;
    UINT64      DispTime;
    UINT32      DispEnableFlag;
    UINT32      DispFrameDistance;
    UINT32      DistanceBeforeFirstFrame;
    UINT32      GopNum;

    UINT32      luma_phy_addr;
    UINT32      chrom_phy_addr;
    UINT32      luma_tf_phy_addr;
    UINT32      chrom_tf_phy_addr;
    UINT32      luma_2d_phy_addr;
    UINT32      chrom_2d_phy_addr;

    UINT32      format;
    UINT32      image_width;
    UINT32      image_height;
    UINT32      disp_width;
    UINT32      disp_height;
    UINT32      disp_center_x;
    UINT32      disp_center_y;
    UINT32      image_stride;
    UINT32      image_id;
    UINT32      error_level;
    UINT32      seq_cnt;
    UINT32      seq_img_cnt;

    UINT32      chroma_idc;
    UINT32      frame_num;
} DNR_IMAGE;

/* 全局配置信息 */
typedef struct
{
    SINT32      reserved;
} DNR_GLOBAL_CFG_S;

/* 全局状态信息 */
typedef struct
{
    SINT8   *vfmw_version_desc;
    UINT32  VFMW_version_number;
    SINT32  total_chan_num;
    SINT32  active_chan_num;
    SINT32  print_device;
    SINT32  print_enable;
} DNR_GLOBAL_STATE_S;

/* 通道状态信息 */
typedef struct
{
    UINT8   *mem_print_buf;

    UINT32  image_width;
    UINT32  image_height;
    UINT32  aspect_ratio;
    UINT32  scan_type;
    UINT32  video_format;
    UINT32  frame_rate;
    UINT32  bit_rate;
    UINT32  sub_video_standard;
    UINT32  profile;
    UINT32  level;
    SINT32  total_frames_decoded;
    SINT32  chan_mem_address;
    SINT32  chan_mem_size;
    SINT32  total_fstore_num;
    SINT32  total_pmv_num;
    SINT32  voque_detail;

    SINT32  total_frame_num;
    SINT32  new_frame_num;
    SINT32  read_out_frame_num;

} DNR_CHAN_STATE_S;

/* 图象接口 */
typedef struct hiDNRIMAGE_INTF_S
{
    SINT32  image_provider_inst_id;
    SINT32  (*read_image)(SINT32 InstID, DNR_IMAGE *pImage );
    SINT32  (*release_image)(SINT32 InstID, DNR_IMAGE *pImage );
} DNR_IMAGE_INTF_S;

/* 码流包结构 */
#if 0
typedef struct hiSTREAM_PACKET_S
{
    SINT32      PhyAddr;
    UINT8      *VirAddr;
    SINT32      Length;
    UINT64      Pts;
    UINT32      Index;
} STREAM_DATA_S;
#endif

/* 通道内存预算 */
typedef struct hiDNRCHAN_MEM_BUDGET
{
    SINT32  MinMemSize;
    SINT32  NormalMemSize;
    SINT32  FluentMemSize;
} DNRCHAN_MEM_BUDGET_S;


typedef struct
{
    MEM_RECORD_S  stDnrCmnMem;      /* Dnr 公共内存 */
    MEM_RECORD_S  stDnrReg;
} DNR_MEM_S;


typedef struct hiDNR_CTRL_DATA_S
{
    SINT32        s32IsVCTRLOpen;   /* 标志VCTRL是否被全局打开 */
    //OSAL_TASK_MUTEX stDecMutex;
    //OSAL_EVENT    eventVdmReady;

    //TASK_STATE_E  eTaskState;       /* 线程状态 */
    //TASK_CMD_E    eTaskCommand;     /* 线程指令 */
    //OSAL_TASK     hThread;          /* 线程句柄 */

    SINT32        s32ThreadPos;    /* 线程位置 */

    SINT32        s32ThisChanIDPlus1;    /* 当前正在进行语法解码的通道号 */
    SINT32        ThisInstID;
    SINT32        DNRState;   /* 标记DNR正在处理 */
    SINT32        LastProcessTime; /*上次进行支持的时间点*/
    DNR_MEM_S     stDnrMem;
    SINT32        (*event_report)(SINT32 ChanID, SINT32 type, VOID *p_args );
} DNR_CTRL_DATA_S;

typedef struct
{
    SINT32 pic_width_in_mb;
    SINT32 pic_height_in_mb;
} DNR_PIC_CFG;

typedef enum
{
    LOGIC_IMAGE_STATE_IDLE,           /* 帧存处于空闲状态 */
    LOGIC_IMAGE_STATE_ALLOCATED,      /* DNR已申请到了帧存资源，但DNR还未进行工作 */
    LOGIC_IMAGE_STATE_WAIT_RECYCLE,   /* DNR工作完成，图像已插入到待显示队列，此为沿用之前的描述方式 */
    LOGIC_IMAGE_STATE_OUTPUT_VO,      /* VO已拿走且未归还的帧存资源 */
    LOGIC_IMAGE_STATE_IN_TMP,         /* DNR工作完成，此时图像没有插入到待显示队列，
                                         而被放到了一个临时的缓冲BUF里面，为快退时
                                         特有的一种状态
                                      */
    LOGIC_IMAGE_STATE_BUTT
} LOGIC_IMAGE_STATE_E;

//l00273086
typedef struct
{
    SINT32          s32DSDenable;//l00273086
    SINT32          s32ThrWidth;//l00273086
    SINT32          s32ThrHeight;//l00273086
    SINT32          s32MirrorEn;//l00273086
} DNR_DSDPARAM_S;

typedef struct
{
    SINT32 FrameAddr;
    SINT32 FrameSize;
} DNR_VoUsingFrameInfo_S;

/* 解码通道 */
typedef struct hiDNR_CHAN_S
{
    SINT8           DecChanRstFlag;
    SINT8			s32MirrorEn;
    SINT8           s32VcmpEn;           /*压缩使能位*/
    SINT8           s32WmEn;           /*压缩水印使能位*/

    SINT32         s32ChanID;       /* 通道ID */
    SINT32         s32IsOpen;       /* 0: 未打开，1: 打开 */
    //SINT32         s32IsRun;        /* 0: 不被调度, 1: 运行，可被调度  */
    //SINT32         s32Priority;     /* 优先级，0：最低优先级(从不调度) ~ 255(最高优先级，最优先调度) */
    //SINT32         s32IsProc;       /*为避免重重调度，0：表示没有被调度过；1：表示已经被调度过了*/
    SINT32         InstMode;      /* 0: 非工作模式,  1: 工作模式   */
    SINT32         NeedStartAgain; /* 0: not need start again; 1: need start again */
    UINT32         IsRwzb;
    UINT32         userSetRwzb_state;
    UINT32         enDR;
    UINT32         enDB;
    UINT32         enDC;

    IMAGE           Cur1DImage;
    SINT32          s321DFrameIsProc;       /*为避免重重调度，0：表示没有帧被调度过；1：表示已经帧被调度过了*/
    SINT32          s32OldImgWidth;
    SINT32          s32OldImgHeight;

    SINT32          CurImageBufID;
    SINT32          s32ValidImgNum;
    SINT32          s32ImgBlockMemSize;
    SINT32          s32ImageAddr[MAX_DNRFSP_NUM];
    LOGIC_IMAGE_STATE_E      LogicImageIsUsed[MAX_DNRFSP_NUM];
    IMAGE_QUEUE     LogicImageQue;
    IMAGE           LogicImagePool[MAX_DNRFSP_NUM];

    SINT32          GetFirstIFrameFlag;
    SINT32          TempImageNum;
    IMAGE           TempImagePool[MAX_DNRTEMPFSP_NUM];
    SINT32          s32VcmpWmStartLine; /*水印起始行号*/
    SINT32          s32VcmpWmEndLine;	/*水印结束行号*/
    SINT32          s32FastForwardBackwardSpeed;/* 0 表示正常播放 负数为快退 正数为快进 */
    UINT32          u32BackwardOptimizeFlag;
    UINT32          u32BackwardOptimizeDistanceCnt;
    UINT32          LastGopNum;
    UINT32          u32VoFrmNum;
    UINT32          u32DispOptimizeFlag;
    UINT32          DNRDataSourceFlag;/*DNR的数据源 0:vdh 1:vo*/
    UINT32          DNRCaptureStartFlag;
    UINT32          DNRCaptureEnableFlag;
    SINT32          s32OffLineDnrMemAddr;
    SINT32          s32OffLineDNRMemSize;
    IMAGE          *pCaptureImageIn;
    IMAGE          *pCaptureImageOut;
    DNR_DSDPARAM_S  stDSDParam; //l00273086
    SINT32          s32DnrEnable;
} DNR_CHAN_S;


extern UINT32  g_DBEnable;  // 0:自动, 1: 强制打开, 2: 强制关闭
extern UINT32  g_DREnable;  // 0:自动, 1: 强制打开, 2: 强制关闭
extern UINT32  g_DCEnable;  // 0:自动, 1: 强制打开, 2: 强制关闭

/***********************************************************************
      functions
 ***********************************************************************/
SINT32 DNR_Init( SINT32 (*VdecCallback)( SINT32 ChanID, SINT32 eEventID, VOID *pArgs ) );
VOID DNR_OpenDrivers(DNR_MEM_S *pstDrvMem);
VOID DNR_CloseDrivers(DNR_MEM_S *pstDrvMem);
SINT32 DNR_CloseChan(SINT32 ChanID);
VOID DNR_GetState(SINT32 ChanID, DNR_CHAN_STATE_S *pstDnrChanState);
SINT32 DNR_GetChanMemSize(DNR_VID_STD_E eVidStd);
SINT32 DNR_DestroyChan(SINT32 ChanID);
SINT32 DNR_ConfigChan(SINT32 ChanID, DNR_CHAN_CFG_S *pArgs);
SINT32 DNR_ConfigFFFBSpeed(SINT32 ChanID, SINT32 *pArgs);
SINT32 DNR_ConfigBackOptimizeFlag(SINT32 ChanID, VFMW_CONTROLINFO_S *pArgs);
SINT32 DNR_StartChan(SINT32 ChanID);
SINT32 DNR_StopChan(SINT32 ChanID);
//SINT32 DNR_ResetChan(SINT32 ChanID);
SINT32 DNR_ClearTempImage(SINT32 InstId);
VOID   DNR_InformDecChanReset(SINT32 ChanID);

SINT32 DNR_Exit( VOID );

SINT32  DNR_ReceiveImage ( SINT32 ChanID, IMAGE *p_image );
SINT32  DNR_ReleaseImage ( SINT32 ChanID, IMAGE *p_image );

SINT32 DNR_Fsp_ShowPic(SINT32 ChanID, SINT32 *pPicBufID);
//SINT32 DNR_Fsp_GetPic(SINT32 ChanID, SINT32 *pPicBufID, SINT32 *pAddr, SINT32 *pSize);

SINT32 DNR_PutYuv(SINT32 ChanID, UINT8 *pLuma, SINT32 PicWidth, SINT32 PicHeight, SINT32 Stride, SINT32 DispPicWidth, SINT32 DispPicHeight, UINT64 PTS);

VOID DNR_IntServeProc ( VOID );
SINT32 DNR_Wakeup(VOID);
SINT32 DNR_EnableChan(SINT32 ChanID, MEM_DESC_S *pChanMem, SINT32 PicWidth, SINT32 PicHeight);
SINT32 DNR_DisableChan(SINT32 ChanID);

//VOID Dnr_PrintDnrState(SINT32 ChanID);
VOID DNR_Close(VOID);
VOID DNR_OpenChan(SINT32 ChanID);

SINT32 DNRDRV_PrepareSleep(VOID);
DNRDRV_SLEEP_STAGE_E DNRDRV_GetSleepStage(VOID);
VOID DNRDRV_ForeceSleep(VOID);
VOID DNRDRV_ExitSleep(VOID);
UINT32  CalcFrameCheckSum(IMAGE *p_image);

SINT32 DNR_FsIsInImgQue(SINT32 ChanID, SINT32 PhyDec, SINT32 Size);//l00273086
SINT32 DNR_ArrangeMem(SINT32 ChanID, MEM_DESC_S *pChanMem, SINT32 PicWidth, SINT32 PicHeight);//l00273086
SINT32 DNR_ChanIsOpen(SINT32 ChanID);//l00273086
VOID   DNR_SetDSDParam(SINT32 ChanID, DNR_DSDPARAM_S stDSDParam);//l00273086
SINT32 DNR_EnableChanWithoutArrange(SINT32 ChanID);//l00273086
SINT32 DNR_GetVoUsingFrameInQue(SINT32 ChanID, DNR_VoUsingFrameInfo_S *VoUsingFrame, SINT32 *s32Num);//l00273086
SINT32 DNR_SetDataSource(SINT32 ChanID, SINT32 DNRDataSourceFlag, VDEC_DNR_Capture *pstVDecDnrPara);

#ifdef __cplusplus
}
#endif

#endif  // __DNR_FIRMWARE_H__
