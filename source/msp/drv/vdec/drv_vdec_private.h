#ifndef __HI_VDEC_PRIVATE_H__
#define __HI_VDEC_PRIVATE_H__

#include "hi_type.h"
#include "hi_module.h"
#include "drv_sys_ext.h"
#include "hi_drv_mmz.h"
#include "hi_drv_mem.h"
#include "hi_drv_proc.h"
#include "drv_stat_ext.h"
#include "hi_drv_module.h"
#include "drv_vdec_buf_mng.h"
#include "hi_unf_avplay.h"
#include "hi_drv_vdec.h"
#include "vfmw_ext.h"


#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

#define VDEC_DBG_MODULE_VDI         (0x0)
#define VDEC_DEBUG                  (0)

#define VDEC_KUD_MAX_NUM 4      /*max user data num of each frame*/
#define VDEC_KUD_MAX_LEN 256UL  /*max user data length*/
#define VDEC_UDC_MAX_NUM 16

#define HI_KMALLOC_VDEC(size)           HI_KMALLOC(HI_ID_VDEC, size, GFP_KERNEL)
#define HI_KMALLOC_ATOMIC_VDEC(size)    HI_KMALLOC(HI_ID_VDEC, size, GFP_ATOMIC)
#define HI_KFREE_VDEC(addr)             HI_KFREE(HI_ID_VDEC, addr)
#define HI_VMALLOC_VDEC(size)           HI_VMALLOC(HI_ID_VDEC, size)
#define HI_VFREE_VDEC(addr)             HI_VFREE(HI_ID_VDEC, addr)

typedef enum tagVDEC_CHAN_STATE_E
{
    VDEC_CHAN_STATE_STOP = 0,
    VDEC_CHAN_STATE_RUN,
    VDEC_CHAN_STATE_INVALID
} VDEC_CHAN_STATE_E;

typedef struct tagVDEC_CHAN_STATINFO_S
{
    HI_U32 u32TotalVdecOutFrame;    /*the number of total output frames*/
    HI_U32 u32TotalVdecParseIFrame; /*the number of total I frames decoded from stream*/
    HI_U32 u32TotalVdecInByte;      /*total bytes of the input stream*/
    HI_U32 u32TotalVdecHoldByte;    /*bytes of stream in VDEC_Frimware buffer*/
    HI_U32 u32TotalVdecTime;        /*total run time of the vdec channel*/
    HI_U32 u32AvrgVdecFps;          /*the integer part of average output frame rate*/
    HI_U32 u32AvrgVdecFpsLittle;    /*the decimal part of average output frame rate*/
    HI_U32 u32AvrgVdecInBps;        /*the average stream input bit rate(bps)*/
    HI_U32 u32TotalStreamErrNum;    /*the totoal error number of stream*/

    HI_U32 u32VdecRcvFrameTry;      /*the frame number try to acquire*/
    HI_U32 u32VdecRcvFrameOK;       /*the frame number acquire success*/
    HI_U32 u32VdecRlsFrameTry;      /*the frame number try to release*/
    HI_U32 u32VdecRlsFrameOK;       /*the frame number release success*/
    HI_U32 u32VdecRlsFrameFail;     /*the frame number release fail*/
    HI_U32 u32VdecErrFrame;         /*the error frame number*/

    HI_U32 u32VdecAcqBufTry;
    HI_U32 u32VdecAcqBufOK;
    HI_U32 u32VdecRlsBufTry;
    HI_U32 u32VdecRlsBufOK;

    HI_U32 u32UserAcqFrameTry;
    HI_U32 u32UserAcqFrameOK;
    HI_U32 u32UserRlsFrameTry;
    HI_U32 u32UserRlsFrameOK;

    HI_U32 u32FrameType[2];
} VDEC_CHAN_STATINFO_S;

typedef struct
{
    MMZ_BUFFER_S    stMMZBuf;
    MMZ_BUFFER_S    st2dBuf;
    HI_U32          u32ReadTimes;
} VDEC_IFRAME_PARAM_S;

typedef struct
{
    HI_U32 				    u32ReadID;
    HI_U32 				    u32WriteID;
    HI_U8  				    au8Buf[VDEC_UDC_MAX_NUM][MAX_USER_DATA_LEN];
    HI_UNF_VIDEO_USERDATA_S stAttr[VDEC_UDC_MAX_NUM];
} VDEC_USRDATA_PARAM_S;

typedef struct
{
    atomic_t                atmWorking;
    wait_queue_head_t       stWaitQue;
    HI_UNF_VO_FRAMEINFO_S  *pstFrame;
} VDEC_DNR_PARAM_S;
typedef struct
{
    HI_U32                  u32FrameIndex;
    HI_U8                   u8EndFrame;
} VDEC_LAST_DISP_FRAME_INFO_S;


typedef struct tagVDEC_CHANNEL_S
{
    /* For configurate */
    HI_UNF_VCODEC_ATTR_S    stCurCfg;       /* Configurate */
    HI_UNF_AVPLAY_OPEN_OPT_S stUserCfgCap;

    /* State */
    VDEC_CHAN_STATE_E 	    enCurState;

    /* Parameters from or to VFMW */
    VDEC_CHAN_CAP_LEVEL_E   enCapToFmw;
    DETAIL_MEM_SIZE         stMemSize;
    VDEC_CHAN_OPTION_S      stOption;
    MMZ_BUFFER_S            stSCDMMZBuf;
    MMZ_BUFFER_S            stVDHMMZBuf;
    STREAM_INTF_S   	    stStrmIntf ;
    IMAGE_INTF_S 		    stImageIntf;
    VDEC_USRDAT_S          *pu8UsrDataForWaterMark[4];

    /* Save last frame */
    HI_UNF_VO_FRAMEINFO_S   stLastFrm;
    HI_U32                  u32LastFrmId;
    HI_U32                  u32LastFrmTryTimes;
    HI_U32                  u32EndFrmFlag;
    HI_BOOL                 bEndOfStrm;
    HI_UNF_ENC_FMT_E        enDisplayNorm;

    /* Last display frame info */
    VDEC_LAST_DISP_FRAME_INFO_S stLastDispFrameInfo;

    HI_U32                  u32BitRate;
    HI_U32                  u32Profile;
    HI_U32                  u32Level;

    /* Channel status */
    VDEC_CHAN_STATINFO_S    stStatInfo;

    /* For stream buffer */
    HI_HANDLE               hChan;          /* VFMW handle */
    HI_HANDLE               hDmxVidChn;     /* Dmx handle */
    HI_U32                  u32DmxID;
    HI_U32                  u32DmxBufSize;  /* Dmx buffer size */
    HI_HANDLE               hStrmBuf;       /* Stream buffer handle */
    HI_U32                  u32StrmBufSize; /* Stream buffer size */

    /* For event */
    HI_BOOL                             bNormChange;
    HI_UNF_NORMCHANGE_PARAM_S           stNormChangeParam;
    HI_BOOL                             bFramePackingChange;
    HI_UNF_VIDEO_FRAME_PACKING_TYPE_E   enFramePackingType;
    HI_BOOL                             bNewSeq;
    HI_BOOL                 bNewFrame;      /* use tlastFrm */
    HI_BOOL                 bNewUserData;
    HI_BOOL                 bIFrameErr;

    HI_U8                   bAvsPlus;
    /*0: 1st and 2nd not get; 1: 1st get 2nd not get; 2: 1st and 2nd both get*/
    HI_U32                  u32ValidPtsFlag;

    HI_BOOL                 bFirstValidPts;
    HI_U32                  u32FirstValidPts;
    HI_BOOL                 bSecondValidPts;
    HI_U32                  u32SecondValidPts;

    /* For I frame decode */
    VDEC_IFRAME_PARAM_S     stIFrame;

    /* For user data */
    VDEC_USRDATA_PARAM_S   *pstUsrData;

    VDEC_DNR_PARAM_S       stDNR;
    /* For frame rate */
    HI_UNF_AVPLAY_FRAMERATE_PARAM_S stFrameRateParam;

    /* For stream discontinue */
    HI_U32                  u32DiscontinueCount;

    /* For trick mode */
    HI_S32                  s32Speed;

    /* For end of stream flag */
    MMZ_BUFFER_S            stEOSBuffer;
    HI_BOOL                 bSetEosFlag;

    /* For resolution change */
    HI_U8                   u8ResolutionChange;

    HI_UNF_VIDEO_SAMPLE_TYPE_E enUserSetSampleType;
    VDEC_PROBE_STREAM_INFO_S stProbeStreamInfo;
    MMZ_BUFFER_S            stPMVMMZBuf;
} VDEC_CHANNEL_S;

typedef struct tagVDEC_REGISTER_PARAM_S
{
    DRV_PROC_READ_FN  pfnReadProc;
    DRV_PROC_WRITE_FN pfnWriteProc;
} VDEC_REGISTER_PARAM_S;

typedef struct tagVDEC_PREMMZ_NODE_S
{
    HI_U32  u32StartVirAddr;
    HI_U32  u32StartPhyAddr;
    HI_U32  u32Size;
    HI_U32  u32NodeState;/*0:have MMZ not used,1:have MMZ but used 2:invalid*/
} VDEC_PREMMZ_NODE_S;


typedef int (*FN_VDEC_Watermark)(HI_UNF_VO_FRAMEINFO_S *, VDEC_USRDAT_S *pu8UsrDataForWaterMark[4]);

HI_S32 VDEC_DRV_RegWatermarkFunc(FN_VDEC_Watermark pfnFunc);
HI_VOID VDEC_DRV_UnRegWatermarkFunc(HI_VOID);

HI_S32 VDEC_DRV_RegisterProc(VDEC_REGISTER_PARAM_S *pstParam);
HI_VOID VDEC_DRV_UnregisterProc(HI_VOID);
HI_S32 VDEC_DRV_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
HI_S32 VDEC_DRV_Resume(PM_BASEDEV_S *pdev);
HI_S32 VDEC_DRV_DebugCtrl(HI_U32 u32Para1, HI_U32 u32Para2);
VDEC_CHANNEL_S *VDEC_DRV_GetChan(HI_HANDLE hHandle);
VFMW_EXPORT_FUNC_S *VDEC_DRV_GetVfmwFun(HI_VOID);


HI_S32 VDEC_DRV_Init(HI_VOID);
HI_VOID VDEC_DRV_Exit(HI_VOID);
HI_S32 VDEC_DRV_Open(struct inode *inode,  struct file  *filp);
HI_S32 VDEC_DRV_Release(struct inode *inode,  struct file  *filp);
HI_S32 VDEC_Ioctl(struct inode *inode,  struct file  *filp,  unsigned int  cmd,  void *arg);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __HI_VDEC_KER_TEST_H__ */

