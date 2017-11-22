#include <linux/version.h>
#include <linux/proc_fs.h>
#include <linux/ioport.h>
#include <linux/string.h>
#include <linux/ioctl.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include <linux/sched.h>
#include <linux/vmalloc.h>
#include <linux/interrupt.h>
#include <linux/seq_file.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <mach/hardware.h>

#include "hi_unf_avplay.h"
#include "hi_error_mpi.h"

#include "vfmw.h"
#include "drv_vdec_ioctl.h"
#include "hi_drv_vdec.h"
#include "drv_vdec_private.h"
#include "vfmw_ext.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* End of #ifdef __cplusplus */

static HI_S32	VDEC_DRV_WriteProc(struct file *file,
                                   const char __user *buf, size_t count, loff_t *ppos);
static HI_S32	VDEC_DRV_ReadProc(struct seq_file *p, HI_VOID *v);
static long		VDEC_DRV_Ioctl(struct file *filp, unsigned int cmd, unsigned long arg);

static HI_CHAR *s_aszVdecType[HI_UNF_VCODEC_TYPE_BUTT + 1] =
{
    "MPEG2",
    "MPEG4",
    "AVS",
    "H263",
    "H264",
    "REAL8",
    "REAL9",
    "VC1",
    "VP6",
    "VP6F",
    "VP6A",
    "OTHER",
    "SORENSON",
    "DIVX3",
    "RAW",
    "JPEG",
    "VP8",
    "UNKNOWN",
};

static struct file_operations s_stDevFileOpts =
{
    .owner			= THIS_MODULE,
    .open			= VDEC_DRV_Open,
    .unlocked_ioctl = VDEC_DRV_Ioctl,
    .release		= VDEC_DRV_Release,
};

static PM_BASEOPS_S s_stDrvOps =
{
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = VDEC_DRV_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = VDEC_DRV_Resume,
};

static VDEC_REGISTER_PARAM_S s_stProcParam =
{
    .pfnReadProc  = VDEC_DRV_ReadProc,
    .pfnWriteProc = VDEC_DRV_WriteProc,
};

/* the attribute struct of video decoder device */
static UMAP_DEVICE_S s_stVdecUmapDev;

static long VDEC_DRV_Ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
    int ret;

    ret = (long)HI_DRV_UserCopy(filp->f_path.dentry->d_inode, filp, cmd, arg, VDEC_Ioctl);
    return ret;
}

static __inline__ int  VDEC_DRV_RegisterDev(void)
{
    /*register aenc chn device*/
    snprintf(s_stVdecUmapDev.devfs_name, sizeof(s_stVdecUmapDev.devfs_name), UMAP_DEVNAME_VDEC);
    s_stVdecUmapDev.fops   = &s_stDevFileOpts;
    s_stVdecUmapDev.minor  = UMAP_MIN_MINOR_VDEC;
    s_stVdecUmapDev.owner  = THIS_MODULE;
    s_stVdecUmapDev.drvops = &s_stDrvOps;

    if (HI_DRV_DEV_Register(&s_stVdecUmapDev) < 0)
    {
        HI_FATAL_VDEC("FATAL: vdec register device failed\n");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static __inline__ void VDEC_DRV_UnregisterDev(void)
{
    /*unregister aenc chn device*/
    HI_DRV_DEV_UnRegister(&s_stVdecUmapDev);
}

static HI_S32 VDEC_DRV_WriteProc(struct file *file,
                                 const char __user *buf, size_t count, loff_t *ppos)
{
    return HI_DRV_PROC_ModuleWrite(file, buf, count, ppos, VDEC_DRV_DebugCtrl);
}

HI_VOID ReadProc_GetDecMode(HI_CHAR *pDecMode, HI_UNF_VCODEC_MODE_E enMode, HI_U32 Size)
{
    switch (enMode)
    {
        case HI_UNF_VCODEC_MODE_I:
            snprintf(pDecMode, Size, "I");
            break;

        case HI_UNF_VCODEC_MODE_IP:
            snprintf(pDecMode, Size, "IP");
            break;

        case HI_UNF_VCODEC_MODE_NORMAL:
            snprintf(pDecMode, Size, "NORMAL");
            break;

        case HI_UNF_VCODEC_MODE_FIRST_I:
            snprintf(pDecMode, Size, "FIRST I");
            break;

        default:
            snprintf(pDecMode, Size, "UNKNOWN(%d)", enMode);
            break;
    }

    return;
}

HI_VOID ReadProc_GetDisplayNorm(HI_CHAR *pDisplayNorm, HI_UNF_ENC_FMT_E enDisplayNorm, HI_U32 Size)
{
    switch (enDisplayNorm)
    {
        case HI_UNF_ENC_FMT_PAL:
            snprintf(pDisplayNorm, Size, "PAL");
            break;

        case HI_UNF_ENC_FMT_NTSC:
            snprintf(pDisplayNorm, Size, "NTSC");
            break;

        default:
            snprintf(pDisplayNorm, Size, "OTHER(%d)", enDisplayNorm);
            break;
    }

    return;
}

HI_VOID ReadProc_GetSampleType(HI_CHAR *pSampleType, HI_UNF_VIDEO_SAMPLE_TYPE_E enSampleType, HI_U32 Size)
{
    switch (enSampleType)
    {
        case HI_UNF_VIDEO_SAMPLE_TYPE_UNKNOWN:
            snprintf(pSampleType, Size, "Unknown");
            break;

        case HI_UNF_VIDEO_SAMPLE_TYPE_PROGRESSIVE:
            snprintf(pSampleType, Size, "Progressive");
            break;

        case HI_UNF_VIDEO_SAMPLE_TYPE_INTERLACE:
            snprintf(pSampleType, Size, "Interlace");
            break;

        case HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_PROGRESSIVE:
            snprintf(pSampleType, Size, "Infered_Progressive");
            break;

        case HI_UNF_VIDEO_SAMPLE_TYPE_INFERED_INTERLACE:
            snprintf(pSampleType, Size, "Infered_Interlace");
            break;

        default:
            snprintf(pSampleType, Size, "Unknown_Butt");
            break;
    }

    return;
}

HI_VOID ReadProc_GetFieldMode(HI_CHAR *pFieldMode, HI_UNF_VIDEO_FIELD_MODE_E enFieldMode, HI_U32 Size)
{
    switch (enFieldMode)
    {
        case HI_UNF_VIDEO_FIELD_ALL:
            snprintf(pFieldMode, Size, "Frame");
            break;

        case HI_UNF_VIDEO_FIELD_TOP:
            snprintf(pFieldMode, Size, "Top");
            break;

        case HI_UNF_VIDEO_FIELD_BOTTOM:
            snprintf(pFieldMode, Size, "Bottom");
            break;

        default:
            snprintf(pFieldMode, Size, "UNKNOWN");
            break;
    }

    return;
}

HI_VOID ReadProc_GetVideoFormat(HI_CHAR *pYUVType, HI_UNF_VIDEO_FORMAT_E enVideoFormat, HI_U32 Size)
{
    switch (enVideoFormat)
    {
        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422:
            snprintf(pYUVType, Size, "SemiPlanar_422");
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_420:
            snprintf(pYUVType, Size, "SemiPlanar_420");
            break;
#if 0

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_400:
            sprintf(pYUVType, "SemiPlanar_400");
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_411:
            sprintf(pYUVType, "SemiPlanar_411");
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_422_1X2:
            sprintf(pYUVType, "SemiPlanar_422_1X2");
            break;

        case HI_UNF_FORMAT_YUV_SEMIPLANAR_444:
            sprintf(pYUVType, "SemiPlanar_444");
            break;
#endif

        case HI_UNF_FORMAT_YUV_PACKAGE_UYVY:
            snprintf(pYUVType, Size, "Package_UYVY");
            break;

        case HI_UNF_FORMAT_YUV_PACKAGE_YUYV:
            snprintf(pYUVType, Size, "Package_YUYV");
            break;

        case HI_UNF_FORMAT_YUV_PACKAGE_YVYU:
            snprintf(pYUVType, Size, "Package_YVYU");
            break;
#if 0

        case HI_UNF_FORMAT_YUV_PLANAR_400:
            sprintf(pYUVType, "Planar_400");
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_411:
            sprintf(pYUVType, "Planar_411");
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_420:
            sprintf(pYUVType, "Planar_420");
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_422_1X2:
            sprintf(pYUVType, "Planar_422_1X2");
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_422_2X1:
            sprintf(pYUVType, "Planar_422_2X1");
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_444:
            sprintf(pYUVType, "Planar_444");
            break;

        case HI_UNF_FORMAT_YUV_PLANAR_410:
            sprintf(pYUVType, "Planar_410");
            break;
#endif

        case HI_UNF_FORMAT_YUV_BUTT:
        default:
            snprintf(pYUVType, Size, "UNKNOWN");
            break;
    }

    return;
}

HI_VOID ReadProc_GetDecType(HI_CHAR *pDecType, HI_UNF_VCODEC_DEC_TYPE_E enDecType, HI_U32 Size)
{
    switch (enDecType)
    {
        case HI_UNF_VCODEC_DEC_TYPE_NORMAL:
            snprintf(pDecType, Size, "NORMAL");
            break;

        case HI_UNF_VCODEC_DEC_TYPE_ISINGLE:
            snprintf(pDecType, Size, "IFRAME");
            break;

        default:
            snprintf(pDecType, Size, "UNKNOWN");
            break;
    }

    return;
}

HI_VOID ReadProc_GetCapLevel(HI_CHAR *pCapLevel, HI_UNF_VCODEC_CAP_LEVEL_E enCapLevel, HI_U32 Size)
{
    switch (enCapLevel)
    {
        case HI_UNF_VCODEC_CAP_LEVEL_QCIF:
            snprintf(pCapLevel, Size, "QCIF");
            break;

        case HI_UNF_VCODEC_CAP_LEVEL_CIF:
            snprintf(pCapLevel, Size, "CIF");
            break;

        case HI_UNF_VCODEC_CAP_LEVEL_D1:
            snprintf(pCapLevel, Size, "D1");
            break;

        case HI_UNF_VCODEC_CAP_LEVEL_720P:
            snprintf(pCapLevel, Size, "720P");
            break;

        case HI_UNF_VCODEC_CAP_LEVEL_FULLHD:
            snprintf(pCapLevel, Size, "FULLHD");
            break;

        default:
            snprintf(pCapLevel, Size, "UNKNOWN");
            break;
    }

    return;
}

HI_VOID ReadProc_GetProtocolLevel(HI_CHAR *pProtocolLevel, HI_UNF_VCODEC_PRTCL_LEVEL_E enProtocolLevel, HI_U32 Size)
{
    switch (enProtocolLevel)
    {
        case HI_UNF_VCODEC_PRTCL_LEVEL_MPEG:
            snprintf(pProtocolLevel, Size, "NOT_H264");
            break;

        case HI_UNF_VCODEC_PRTCL_LEVEL_H264:
            snprintf(pProtocolLevel, Size, "H264");
            break;

        default:
            snprintf(pProtocolLevel, Size, "UNKNOWN");
            break;
    }

    return;
}

static HI_VOID GetAVSPlusInfo(HI_UNF_VCODEC_TYPE_E enType,
                                      HI_CHAR **pCodecType, HI_U8 bAvsPlus)
{
    if (enType <= HI_UNF_VCODEC_TYPE_BUTT)
    {
        if (bAvsPlus == 1 && enType == HI_UNF_VCODEC_TYPE_AVS)
        {
            *pCodecType = "AVS+";
        }
        else
        {
            *pCodecType = s_aszVdecType[enType];
        }
    }
    else
    {
        *pCodecType = "UNKNOW";
    }

    return;
}


static HI_S32 VDEC_DRV_ReadProc(struct seq_file *p, HI_VOID *v)
{
    HI_S32 i;
    HI_S32 s32Ret;
    VDEC_CHANNEL_S *pstChan;
    VDEC_CHAN_STATINFO_S *pstStatInfo;
    DRV_PROC_ITEM_S *pstProcItem;
    BUFMNG_STATUS_S stBMStatus = {0};
    HI_CHAR aszDecMode[32];
    HI_CHAR aszDisplayNorm[32];
    HI_CHAR aszSampleType[32];
    HI_CHAR aszYUVType[32];
    HI_CHAR aszRatio[16];
    HI_CHAR aszFieldMode[16];
    HI_CHAR aszDecType[10];
    HI_CHAR aszCapLevel[10];
    HI_CHAR aszProtocolLevel[10];
    VFMW_INFO_S s_VfmwInfo = {0};
    VFMW_EXPORT_FUNC_S *pVfmwfun = NULL;

    HI_CHAR *s_CodecType = HI_NULL;

    pstProcItem = p->private;

    if (0 == strncmp(pstProcItem->entry_name, "vdec_ctrl", 9))
    {
        return 0;
    }

    s32Ret = sscanf(pstProcItem->entry_name, "vdec%02d", &i);

    if (s32Ret <= 0)
    {
        PROC_PRINT(p, "Invalid VDEC ID.\n");
        return 0;
    }

    if (i >= HI_VDEC_MAX_INSTANCE)
    {
        PROC_PRINT(p, "Invalid VDEC ID:%d.\n", i);
        return 0;
    }

    pstChan = VDEC_DRV_GetChan(i);
    pVfmwfun = VDEC_DRV_GetVfmwFun();

    if (pstChan)
    {
        pstStatInfo = &(pstChan->stStatInfo);
        ReadProc_GetDecMode(aszDecMode, pstChan->stCurCfg.enMode, sizeof(aszDecMode));
        ReadProc_GetDisplayNorm(aszDisplayNorm, pstChan->enDisplayNorm, sizeof(aszDisplayNorm));
        ReadProc_GetSampleType(aszSampleType, pstChan->stLastFrm.enSampleType, sizeof(aszSampleType));
        snprintf(aszRatio, sizeof(aszRatio) , "%d", pstChan->stLastFrm.enAspectRatio);
        ReadProc_GetFieldMode(aszFieldMode, pstChan->stLastFrm.enFieldMode, sizeof(aszFieldMode));
        ReadProc_GetVideoFormat(aszYUVType, pstChan->stLastFrm.enVideoFormat, sizeof(aszYUVType));
        ReadProc_GetDecType(aszDecType, pstChan->stUserCfgCap.enDecType, sizeof(aszDecType));
        ReadProc_GetCapLevel(aszCapLevel, pstChan->stUserCfgCap.enCapLevel, sizeof(aszCapLevel));
        ReadProc_GetProtocolLevel(aszProtocolLevel, pstChan->stUserCfgCap.enProtocolLevel, sizeof(aszProtocolLevel));

        if ((pVfmwfun != NULL) && (pstChan->enCurState == VDEC_CHAN_STATE_RUN))
        {
            s32Ret = (pVfmwfun->pfnVfmwControl)( pstChan->hChan, VDEC_CID_GET_VFMW_INFO, &s_VfmwInfo);
            HI_INFO_VDEC("[%s][%d] VDEC_CID_GET_VFMW_INFO %d\n", __func__, __LINE__, s32Ret);
        }

        GetAVSPlusInfo(pstChan->stCurCfg.enType, &s_CodecType, pstChan->bAvsPlus);

        PROC_PRINT(p,   "====== VDEC%d ======\n", i);
        PROC_PRINT(p,
                   "Work State   : %s\n",
                   (VDEC_CHAN_STATE_RUN == pstChan->enCurState) ? "RUN" : "STOP");
        PROC_PRINT(p,
                   "Codec ID     : %s(0x%x)\n"
                   "Mode         : %s\n"
                   "Priority     : %u\n"
                   "ErrCover     : %u\n"
                   "OrderOutput  : %u\n"
                   "CtrlOption   : 0x%x\n"
                   "Capbility    : %s/%s/%s\n"
                   "Dynamic Switch Dnr : %s\n"
                   "Stream:\n"
                   "         Source: %s(0x%x)\n"
                   "         Total/Current(Byte): 0x%x/0x%x\n"
                   "         BitRate(bps): %u\n"
                   "Picture:\n"
                   "         Resolution: %d*%d\n"
                   "         Stride(Y/C): %#x/%#x\n"
                   "         FrameRate(fps): %u.%u(%d.%d)\n"
                   "         EncFormat: %s\n"
                   "         Aspect: %s\n"
                   "         FieldMode: %s\n"
                   "         Type: %s\n"
                   "         VideoFormat: %s\n"
                   "         TopFirst: %d\n"
                   "         ErrFrame: %u\n"
                   "         TypeStatistics(P/I): %u/%u\n"
                   "         RefFrmNum: %d\n"
                   "         DecFrmBufNum: %d\n"
                   "         DisFrmBufNum: %d\n\n"
                   ,

                   s_CodecType,
                   pstChan->stCurCfg.enType,

                   aszDecMode,
                   pstChan->stCurCfg.u32Priority,
                   pstChan->stCurCfg.u32ErrCover,
                   pstChan->stCurCfg.bOrderOutput,
                   pstChan->stCurCfg.s32CtrlOptions,

                   aszDecType, aszCapLevel, aszProtocolLevel,

                   (1 == pstChan->stOption.DynamicSwitchDnrParam.s32DynamicSwitchDnrEnable) ? "Enable" : "Disable",

                   (HI_INVALID_HANDLE == pstChan->hDmxVidChn) ? "User" : "Demux",
                   (HI_INVALID_HANDLE == pstChan->hDmxVidChn) ? pstChan->hStrmBuf : pstChan->hDmxVidChn,

                   pstStatInfo->u32TotalVdecInByte,
                   pstStatInfo->u32TotalVdecHoldByte,
                   pstStatInfo->u32AvrgVdecInBps,

                   pstChan->stLastFrm.u32DisplayWidth, pstChan->stLastFrm.u32DisplayHeight,
                   pstChan->stLastFrm.u32YStride,
                   pstChan->stLastFrm.u32CStride,
                   pstStatInfo->u32AvrgVdecFps, pstStatInfo->u32AvrgVdecFpsLittle,
                   pstChan->stLastFrm.stSeqInfo.u32FrameRateExtensionN,
                   pstChan->stLastFrm.stSeqInfo.u32FrameRateExtensionD,
                   aszDisplayNorm, aszRatio, aszFieldMode,
                   aszSampleType, aszYUVType, pstChan->stLastFrm.bTopFieldFirst,

                   pstStatInfo->u32VdecErrFrame,
                   pstStatInfo->u32FrameType[0],
                   pstStatInfo->u32FrameType[1],
                   ((VDEC_CHAN_STATE_RUN == pstChan->enCurState) ? s_VfmwInfo.u32RefNum : 0),
                   ((VDEC_CHAN_STATE_RUN == pstChan->enCurState) ? s_VfmwInfo.s8DecFsNum : 0),
                   ((VDEC_CHAN_STATE_RUN == pstChan->enCurState) ? s_VfmwInfo.s32DisFsNum : 0)

                  );

        if (HI_INVALID_HANDLE == pstChan->hDmxVidChn)
        {
            s32Ret = BUFMNG_GetStatus(pstChan->hStrmBuf, &stBMStatus);

            if (HI_SUCCESS == s32Ret)
            {
                PROC_PRINT(p,
                           "Stream Input(AVPLAY->VDEC): \n"
                           "    Get(Try/OK)   : %d/%d\n"
                           "    Put(Try/OK)   : %d/%d\n",
                           stBMStatus.u32GetTry, stBMStatus.u32GetOK,
                           stBMStatus.u32PutTry, stBMStatus.u32PutOK);
            }
        }

        PROC_PRINT(p,
                   "Frame Output(VDEC->VO): \n"
                   "    Acquire(Try/OK): %d/%d\n"
                   "    Release(Try/OK): %d/%d\n\n",
                   pstStatInfo->u32UserAcqFrameTry, pstStatInfo->u32UserAcqFrameOK,
                   pstStatInfo->u32UserRlsFrameTry, pstStatInfo->u32UserRlsFrameOK);

        if (HI_INVALID_HANDLE == pstChan->hDmxVidChn)
        {
            PROC_PRINT(p,
                       "Firmware: Stream Input(VDEC->Firmware):\n"
                       "    Acquire(Try/OK): %d/%d\n"
                       "    Release(Try/OK): %d/%d\n",
                       stBMStatus.u32RecvTry, stBMStatus.u32RecvOK,
                       stBMStatus.u32RlsTry, stBMStatus.u32RlsOK);
        }
        else
        {
            PROC_PRINT(p,
                       "Firmware: Stream Input(VDEC->Firmware):\n"
                       "    Acquire(Try/OK): %d/%d\n"
                       "    Release(Try/OK): %d/%d\n",
                       pstStatInfo->u32VdecAcqBufTry, pstStatInfo->u32VdecAcqBufOK,
                       pstStatInfo->u32VdecRlsBufTry, pstStatInfo->u32VdecRlsBufOK);
        }

        PROC_PRINT(p,
                   "Firmware: Frame Output(Firmware->VDEC):\n"
                   "    Acquire(Try/OK): %d/%d\n"
                   "    Release(Try/OK): %d/%d\n\n",
                   pstStatInfo->u32VdecRcvFrameTry, pstStatInfo->u32VdecRcvFrameOK,
                   pstStatInfo->u32VdecRlsFrameTry, pstStatInfo->u32VdecRlsFrameOK);
    }
    else
    {
        PROC_PRINT(p, "vdec not init!\n" );
    }

    return 0;
}

HI_S32 VDEC_DRV_ModInit(HI_VOID)
{
    int ret;

#ifndef HI_MCE_SUPPORT
    ret = VDEC_DRV_Init();

    if (HI_SUCCESS != ret)
    {
        HI_FATAL_VDEC("Init drv fail!\n");
        return HI_FAILURE;
    }

#endif


    ret = VDEC_DRV_RegisterProc(&s_stProcParam);

    if (HI_SUCCESS != ret)
    {
        HI_FATAL_VDEC("Reg proc fail!\n");
        return HI_FAILURE;
    }

    ret = VDEC_DRV_RegisterDev();

    if (HI_SUCCESS != ret)
    {
        VDEC_DRV_UnregisterProc();
        HI_FATAL_VDEC("Reg dev fail!\n");
        return HI_FAILURE;
    }

#ifdef MODULE
    HI_PRINT("Load hi_vdec.ko success.\t(%s)\n", VERSION_STRING);
#endif


    return HI_SUCCESS;
}

HI_VOID VDEC_DRV_ModExit(HI_VOID)
{
    VDEC_DRV_UnregisterDev();
    VDEC_DRV_UnregisterProc();

#ifndef HI_MCE_SUPPORT
    VDEC_DRV_Exit();
#endif

    return;
}

#ifdef MODULE
module_init(VDEC_DRV_ModInit);
module_exit(VDEC_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* End of #ifdef __cplusplus */
