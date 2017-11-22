























































/******************************************************************************

*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*

******************************************************************************
  File Name             :
  Version               :   Initial Draft
  Author                :   Hisilicon multimedia software group
  Created               :
  Description           :
  History               :
  1.Date                :
  Author                :
  Modification          :   Created file

******************************************************************************/


#include <linux/kthread.h> /* kthread_create()¡¢kthread_run() */
#include "optm_basic.h"
#include "optm_debug.h"
#include "optm_define.h"
#include "optm_hal.h"
#include "drv_mmz.h"
#include "drv_vdec_ext.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* End of #ifdef __cplusplus */


#ifdef HI_DISP_DEBUG_SUPPORT
/* apply memory counter (the size of memory is not recorded but the application times) */
HI_S32 g_MallocMemCount = 0;
HI_S32 g_MallocMemSize = 0;


/* flag of debug equipment initialization */
static HI_S32 g_s32OptmDebugInit = 0;



/****************************************************************
 *                apply function of memory statistics           *
 ****************************************************************/
HI_S32 OPTM_DEBUG_MemSttInit(HI_VOID)
{
      g_MallocMemCount = 0;
      g_MallocMemSize = 0;
      return HI_SUCCESS;
}

HI_VOID OPTM_DEBUG_MemAdd(HI_U32 u32MemSize)
{
      g_MallocMemSize += u32MemSize;
      g_MallocMemCount++;
}

HI_VOID OPTM_DEBUG_MemDel(HI_U32 u32MemSize)
{
      g_MallocMemSize -= u32MemSize;
      g_MallocMemCount--;
}

HI_S32 OPTM_DEBUG_MemReportCount(HI_VOID)
{
      return g_MallocMemCount;
}
HI_S32 OPTM_DEBUG_MemReportSize(HI_VOID)
{
      return g_MallocMemSize;
}

#define __lc_test__

//#define BUFFER_SIZE (1920*1088*2)
#define BUFFER_SIZE ((((1920 + 255) / 256) * ((1088 + 15) / 16) * 256 * 16) * 2)

typedef struct
{
    HI_U32            dump110_Enable;
    HI_BOOL           dumpBusy;
    HI_BOOL           dumpDataAlready;
    HI_BOOL           dumpvhdflag;
    HI_BOOL           dumpvadflag;
    HI_BOOL           dumpvsdflag;
    HI_U32            WaitFlag;

    HI_U8            *pDumpBuffer;
    HI_U32            DumpBufferSize;

    HI_U8            *pSwapBuffer;
    HI_U32            SwapBufferSize;

    HI_U32            layer;
    HI_UNF_VO_FRAMEINFO_S Frame;

    struct task_struct *pkTBebughread;
    wait_queue_head_t   astVOWait;

    struct file        *file_vo_str;
}vo_Dump_t;

static vo_Dump_t g_VoDump = {0};

HI_S32 vo_WriteBigTile1DYuv( HI_UNF_VO_FRAMEINFO_S *pframe)
{
    HI_U32 i = 0, j = 0;
    HI_U32 u32Width = 0,u32Height = 0,u32ChromWidth = 0,u32ChromHeight = 0;
    HI_U8 *pYAddress = HI_NULL, *pCAddress = HI_NULL;
    HI_U8 *pDst = HI_NULL, *pSrc = HI_NULL, *pTmp = HI_NULL;
    HI_U8 *p2DYUVBaseAddr = HI_NULL, *p2DVBaseAddr = HI_NULL, *p2DUBaseAddr = HI_NULL;
    HI_UNF_VIDEO_FIELD_MODE_E enFieldMode = HI_UNF_VIDEO_FIELD_BUTT;
    HI_UNF_VIDEO_FORMAT_E enVideoFormat = HI_UNF_FORMAT_YUV_BUTT;
    HI_U32 u32FieldStart = 0;
    HI_U32 u32Stride = 0;
    struct file *fpYuv = g_VoDump.file_vo_str;

    if (HI_NULL == pframe)
    {
        return HI_FAILURE;
    }

    u32Width = pframe->u32Width;
    u32Height = pframe->u32Height;
    enFieldMode = pframe->enFieldMode;
    enVideoFormat = pframe->enVideoFormat;

    u32ChromWidth = u32Width / 2;
    u32ChromHeight = u32Height / 2;

    u32Stride = ((u32Width + (64 * 4 - 1)) & (~(64 * 4 - 1))) * 16;//stride of 1D format, each block's size is 256*16

    pYAddress = g_VoDump.pDumpBuffer;
    pCAddress = pYAddress + ((u32Height + 15) / 16) * u32Stride;
    if ( fpYuv )
    {
        memset(g_VoDump.pSwapBuffer, 0, g_VoDump.SwapBufferSize);

        p2DYUVBaseAddr = g_VoDump.pSwapBuffer;
        p2DUBaseAddr = g_VoDump.pDumpBuffer;
        p2DVBaseAddr = g_VoDump.pDumpBuffer + g_VoDump.DumpBufferSize / 2;

        if (HI_UNF_VIDEO_FIELD_ALL == enFieldMode)//frame mode.
        {
            /* transfer and write Y from 1D format to 2D format. */
            for (i = 0; i < u32Height; i++)
            {
                for (j = 0; j < u32Width; j += 256)
                {
                    pDst  = (unsigned char*)(p2DYUVBaseAddr + u32Width * i + j);
                    pSrc =  pYAddress + u32Stride * (i / 16) + (i % 16) * 256 + (j / 256) * 256 * 16;
                    memcpy(pDst, pSrc, 256);
                }
            }

            vo_klib_fwrite(p2DYUVBaseAddr, u32Width * u32Height, g_VoDump.file_vo_str);
            memset(g_VoDump.pSwapBuffer, 0, g_VoDump.SwapBufferSize);

            /* transfer and write C from 1D format to 2D format. */
            for (i = 0; i < u32Height / 2; i++)
            {
                for (j = 0; j < u32Width; j += 256)
                {
                    pDst  = (unsigned char*)(p2DYUVBaseAddr + u32Width * i + j);
                    pSrc =  pCAddress + (u32Stride / 2) * (i / 8) + (i % 8) * 256 +  (j / 256) * 256 * 8;
                    memcpy(pDst, pSrc, 256);
                }
            }

            /* organize UV's order from the content of C */
            pTmp = p2DYUVBaseAddr;
            if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == enVideoFormat) //yuv420
            {
                for (i = 0; i < u32ChromHeight; i++)
                {
                    for (j = 0; j < u32ChromWidth; j++)
                    {
                        p2DVBaseAddr[i * u32ChromWidth + j] = pTmp[2 * j];
                        p2DUBaseAddr[i * u32ChromWidth + j] = pTmp[2 * j + 1];
                    }
                    pTmp += u32Width;
                }
            }
            else
            {
                //add other
            }

            vo_klib_fwrite(p2DUBaseAddr, u32ChromWidth * u32ChromHeight, g_VoDump.file_vo_str);
            vo_klib_fwrite(p2DVBaseAddr, u32ChromWidth * u32ChromHeight, g_VoDump.file_vo_str);
        }

        /* field mode*/
        else
        {
            if (HI_UNF_VIDEO_FIELD_TOP == enFieldMode) //Top field.
            {
                u32FieldStart = 0;
            }
            else //Bottom field.
            {
                u32FieldStart = 1;
            }

            /* transfer and write Y from 1D format to 2D format. */
            for (i = u32FieldStart; i < u32Height; i += 2)
            {
                for (j = 0; j < u32Width; j += 256)
                {
                    pDst  = (unsigned char*)(p2DYUVBaseAddr + u32Width * (i / 2) + j);
                    pSrc =  pYAddress + u32Stride * (i / 16) + ((i % 16) * 256 ) + (j / 256) * 256 * 16;
                    memcpy(pDst, pSrc, 256);
                }
            }
            vo_klib_fwrite(p2DYUVBaseAddr, u32Width * u32Height / 2, g_VoDump.file_vo_str);
            memset(g_VoDump.pSwapBuffer, 0, g_VoDump.SwapBufferSize);

            /* transfer and write C from 1D format to 2D format. */
            for (i = 0; i < u32Height / 2; i++)
            {
                for (j = 0; j < u32Width; j += 256)
                {
                    pDst  = (unsigned char*)(p2DYUVBaseAddr + u32Width * i + j);
                    pSrc =  pCAddress + (u32Stride / 2) * (i / 8) + ((i % 8) * 256 ) + (j / 256) * 256 * 8;
                    memcpy(pDst, pSrc, 256);
                }
            }

            /* organize UV's order from the content of C */
            pTmp = p2DYUVBaseAddr + u32FieldStart * u32Width;
            if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == enVideoFormat)
            {
                for (i = 0; i < u32ChromHeight; i += 2)
                {
                    for (j = 0; j < u32ChromWidth; j++)
                    {
                        p2DVBaseAddr[(i / 2)*u32ChromWidth + j] = pTmp[2 * j];
                        p2DUBaseAddr[(i / 2)*u32ChromWidth + j] = pTmp[2 * j + 1];
                    }
                    pTmp += u32Width * 2;
                }
            }
            else
            {
                //add other
            }
            vo_klib_fwrite(p2DUBaseAddr, u32ChromWidth * u32ChromHeight / 2, g_VoDump.file_vo_str);
            vo_klib_fwrite(p2DVBaseAddr, u32ChromWidth * u32ChromHeight / 2, g_VoDump.file_vo_str);

        }
    }
    return HI_SUCCESS;
}

static HI_S32 vo_KThread_Timer(void* pParm)
{
    HI_U32 Ret, index;
    HI_U8 filename[50];
    HI_UNF_VO_FRAMEINFO_S *pFrame;
    HI_VDEC_PRIV_FRAMEINFO_S* pVdecPriv = HI_NULL;
    HI_U32 UVOffset, UVSize, UIOffset, VIOffset, UOOffset, VOOffset;

    pParm = pParm; /* ignore compire warnning */

    while ( 1 )
    {
        if (kthread_should_stop())
        {
            DEBUG_PRINTK("quit\n");
            break;
        }

        Ret = wait_event_interruptible_timeout(g_VoDump.astVOWait, g_VoDump.WaitFlag, 1000);
        if (Ret <= 0)
        {
            continue;
        }

        if (g_VoDump.dumpDataAlready== HI_FALSE)
        {
            continue;
        }

        /* First to create file node */
        if(g_VoDump.layer == HAL_DISP_LAYER_VIDEO1)
        {
            snprintf(filename, sizeof(filename), "/mnt/vhd_");
        }
        else if(g_VoDump.layer == HAL_DISP_LAYER_VIDEO2)
        {
            snprintf(filename, sizeof(filename), "/mnt/vad_");
        }
        else if(g_VoDump.layer == HAL_DISP_LAYER_VIDEO3)
        {
            snprintf(filename, sizeof(filename), "/mnt/vsd_");
        }
        else
        {
            snprintf(filename, sizeof(filename), "/mnt/unk_");
        }

        pFrame = &g_VoDump.Frame;
        pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S* )(&pFrame->u32VdecInfo[0]);

        /* judge frame's store format: 1D or 2D */
        if (pVdecPriv->u32Is1D)
        {
            if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == pFrame->enVideoFormat)
            {
                snprintf((filename + 9), (sizeof(filename) - 9), "SP_%03d_%03d_420_1D.yuv", pFrame->u32Width, pFrame->u32Height);
            }
            else
            {
                snprintf((filename + 9), (sizeof(filename) - 9), "SP_%03d_%03d_not420_1D.yuv", pFrame->u32Width, pFrame->u32Height);
            }
            g_VoDump.file_vo_str = vo_klib_fopen(filename, O_RDWR | O_CREAT, 0);
            if (NULL == g_VoDump.file_vo_str)
            {
                DEBUG_PRINTK("### can not open %s ###\n", filename);
                g_VoDump.WaitFlag = HI_FALSE;
                g_VoDump.dumpBusy = HI_FALSE;
                g_VoDump.dumpDataAlready = HI_FALSE;
                g_VoDump.dumpvhdflag = HI_FALSE;
                g_VoDump.dumpvadflag = HI_FALSE;
                g_VoDump.dumpvsdflag = HI_FALSE;

                continue;
            }
            DEBUG_PRINTK("prepare to dump data\n");

            Ret = vo_WriteBigTile1DYuv(pFrame);
            if (HI_SUCCESS != Ret)
            {
                DEBUG_PRINTK("dump to file fail!\n");
            }

            DEBUG_PRINTK("finish\n");
            g_VoDump.WaitFlag = HI_FALSE;
            g_VoDump.dumpBusy = HI_FALSE;
            g_VoDump.dumpDataAlready = HI_FALSE;
            g_VoDump.dumpvhdflag = HI_FALSE;
            g_VoDump.dumpvadflag = HI_FALSE;
            g_VoDump.dumpvsdflag = HI_FALSE;
            vo_klib_fclose(g_VoDump.file_vo_str);
        }
        else
        {
            if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == pFrame->enVideoFormat)
            {
                /* Semiplannar must be aligned by 128bytes. -->this comment is wrong in V1R4-310. vdec's 2D frame is aligned by 64bytes */
                snprintf((filename + 9), (sizeof(filename) - 9), "SP_%03d_%03d_420_2D.yuv", pFrame->u32YStride, pFrame->u32Height);

                /* Y:U:V = 4:1:1 */
                UVOffset = (pFrame->u32YStride * pFrame->u32Height);
                UVSize   = (pFrame->u32YStride * pFrame->u32Height) / 2;
                UOOffset = 0;
                VOOffset = UVSize / 2;
                DEBUG_PRINTK("Semiplannar420 u32YStride:%d u32Width:%d, u32Height:%d\n", pFrame->u32YStride, pFrame->u32Width, pFrame->u32Height);

                memset(g_VoDump.pSwapBuffer, 0, g_VoDump.SwapBufferSize);

                for (index = UVOffset; index < UVOffset + UVSize; index +=2)
                {
                    VIOffset = index;
                    UIOffset = index + 1;

                    g_VoDump.pSwapBuffer[UOOffset] = g_VoDump.pDumpBuffer[UIOffset];
                    g_VoDump.pSwapBuffer[VOOffset] = g_VoDump.pDumpBuffer[VIOffset];

                    UOOffset ++;
                    VOOffset ++;
                }
                DEBUG_PRINTK("c\n");

                /* Copy back to DumpBuffer */
                memcpy((g_VoDump.pDumpBuffer + UVOffset), g_VoDump.pSwapBuffer, UVSize);
                }
                else if (HI_UNF_FORMAT_YUV_SEMIPLANAR_422 == pFrame->enVideoFormat)
                {
                    snprintf((filename + 9), (sizeof(filename) - 9), "SP_%03d_%03d_422_2D.yuv", pFrame->u32Width, pFrame->u32Height);

                /* Y:U:V = 4:2:2 */
                UVOffset = (pFrame->u32Width * pFrame->u32Height);
                UVSize   = (pFrame->u32Width * pFrame->u32Height);
                UOOffset = 0;
                VOOffset = UVSize / 2;
                DEBUG_PRINTK("Semiplannar422 u32YStride:%d u32Width:%d, u32Height:%d\n", pFrame->u32YStride, pFrame->u32Width, pFrame->u32Height);

                memset(g_VoDump.pSwapBuffer, 0, g_VoDump.SwapBufferSize);

                for (index = UVOffset; index < UVOffset + UVSize; index +=2)
                {
                    VIOffset = index;
                    UIOffset = index + 1;

                    g_VoDump.pSwapBuffer[UOOffset] = g_VoDump.pDumpBuffer[UIOffset];
                    g_VoDump.pSwapBuffer[VOOffset] = g_VoDump.pDumpBuffer[VIOffset];

                    UOOffset ++;
                    VOOffset ++;
                }
                DEBUG_PRINTK("c\n");

                /* Copy back to DumpBuffer */
                memcpy((g_VoDump.pDumpBuffer + UVOffset), g_VoDump.pSwapBuffer, UVSize);
            }
            else if (HI_UNF_FORMAT_YUV_PACKAGE_UYVY == pFrame->enVideoFormat)
            {
                HI_U32 SwapIndex;

                snprintf((filename + 9), (sizeof(filename) - 9), "SP_%03d_%03d_422_2D.yuv", pFrame->u32YStride / 2, pFrame->u32Height);

                /* Packet Y:U:V = 4:2:2 */
            //UVOffset = (pFrame->u32YStride * pFrame->u32Height);
            //UVSize   = (pFrame->u32YStride * pFrame->u32Height);
            //UOOffset = 0;
            //VOOffset = UVSize / 2;
            DEBUG_PRINTK("UYVY u32YStride:%d u32Width:%d, u32Height:%d\n", pFrame->u32YStride, pFrame->u32Width, pFrame->u32Height);

            /* First to get Y componenet */
            SwapIndex = 0;
            for(index = 0; index < (pFrame->u32YStride * pFrame->u32Height); index +=4)
            {
                g_VoDump.pSwapBuffer[SwapIndex ++] = g_VoDump.pDumpBuffer[index + 1];
                g_VoDump.pSwapBuffer[SwapIndex ++] = g_VoDump.pDumpBuffer[index + 3];
            }

            /* Second to get U componenet */
            for(index = 0; index < (pFrame->u32YStride * pFrame->u32Height); index +=4)
            {
                g_VoDump.pSwapBuffer[SwapIndex ++] = g_VoDump.pDumpBuffer[index];
            }

            /* Third to get U componenet */
            for(index = 0; index < (pFrame->u32YStride * pFrame->u32Height); index +=4)
            {
                g_VoDump.pSwapBuffer[SwapIndex ++] = g_VoDump.pDumpBuffer[index + 2];
            }

                /* Copy back to DumpBuffer */
                memcpy((g_VoDump.pDumpBuffer), g_VoDump.pSwapBuffer, (pFrame->u32YStride * pFrame->u32Height));
            }
            else if (HI_UNF_FORMAT_YUV_PACKAGE_YUYV == pFrame->enVideoFormat)
            {
                DEBUG_PRINTK("YUYV u32YStride:%d u32Width:%d, u32Height:%d\n", pFrame->u32YStride, pFrame->u32Width, pFrame->u32Height);
            }
            else if (HI_UNF_FORMAT_YUV_PACKAGE_YVYU == pFrame->enVideoFormat)
            {
                DEBUG_PRINTK("YVYU u32YStride:%d u32Width:%d, u32Height:%d\n", pFrame->u32YStride, pFrame->u32Width, pFrame->u32Height);
            }


        g_VoDump.file_vo_str = vo_klib_fopen(filename, O_RDWR | O_CREAT, 0);
        if (NULL == g_VoDump.file_vo_str)
        {
            DEBUG_PRINTK("### can not open %s ###\n", filename);
            g_VoDump.WaitFlag = HI_FALSE;
            g_VoDump.dumpBusy = HI_FALSE;
            g_VoDump.dumpDataAlready= HI_FALSE;
            g_VoDump.dumpvhdflag = HI_FALSE;
            g_VoDump.dumpvadflag = HI_FALSE;
            g_VoDump.dumpvsdflag = HI_FALSE;

            continue;
        }
        DEBUG_PRINTK("prepare to dump data\n");

        /* Copy data to file */
        vo_klib_fwrite(g_VoDump.pDumpBuffer, g_VoDump.DumpBufferSize, g_VoDump.file_vo_str);

        /* reset DumpBuffer */
        memset(g_VoDump.pDumpBuffer, 0, g_VoDump.DumpBufferSize);

        DEBUG_PRINTK("finish\n");
        g_VoDump.WaitFlag = HI_FALSE;
        g_VoDump.dumpBusy = HI_FALSE;
        g_VoDump.dumpDataAlready= HI_FALSE;
        g_VoDump.dumpvhdflag = HI_FALSE;
        g_VoDump.dumpvadflag = HI_FALSE;
        g_VoDump.dumpvsdflag = HI_FALSE;
            vo_klib_fclose(g_VoDump.file_vo_str);
        }
    }

	DEBUG_PRINTK("Save to file -->%s\n",filename);
    return HI_SUCCESS;
}

HI_VOID vo_debug_frame(HI_U32 layer, HI_VOID *pData, HI_U32 VoDevMode)
{
    HI_U32 *virturaddr = 0, *virBaseddr = 0, viroffset;
    HI_U32 YFrameSize = 0, CFrameSize = 0;
    HI_UNF_VIDEO_FORMAT_E enVideoFormat;
    HI_UNF_VO_FRAMEINFO_S *pFrame;
    HI_VDEC_PRIV_FRAMEINFO_S* pVdecPriv = HI_NULL;

    if (! ((110 == g_VoDump.dump110_Enable)
     && (HI_TRUE == g_VoDump.dumpBusy)) )
    {
        return;
    }

    if (HI_TRUE == g_VoDump.dumpDataAlready)
    {
        return;
    }

    pFrame = (HI_UNF_VO_FRAMEINFO_S *)pData;
    pVdecPriv = (HI_VDEC_PRIV_FRAMEINFO_S* )(&pFrame->u32VdecInfo[0]);

    /* We can get data now */
    switch(layer)
    {
    case HAL_DISP_LAYER_VIDEO1:
        if (HI_TRUE == g_VoDump.dumpvhdflag)
        {
            /* Copy data out to buffer */
            if ((pFrame->u32Width > 1920) || (pFrame->u32Height > 1088))
            {
                DEBUG_PRINTK("too big data, we can not dump it.W:%d,H:%d\n", pFrame->u32Width, pFrame->u32Height);
                g_VoDump.dumpvhdflag = HI_FALSE;
                g_VoDump.dumpBusy    = HI_FALSE;
                return;
            }
            else
            {
                DEBUG_PRINTK("Video1:W:%d,H:%d\n", pFrame->u32Width, pFrame->u32Height);
            }
        }
        else
        {
            return;
        }
        break;
    case HAL_DISP_LAYER_VIDEO2:
        if (HI_TRUE == g_VoDump.dumpvadflag)
        {
            /* Copy data out to buffer */
            if ((pFrame->u32Width > 1920) || (pFrame->u32Height > 1088))
            {
                DEBUG_PRINTK("too big data, we can not dump it.W:%d,H:%d\n", pFrame->u32Width, pFrame->u32Height);
                g_VoDump.dumpvhdflag = HI_FALSE;
                g_VoDump.dumpBusy    = HI_FALSE;
                return;
            }
            else
            {
                DEBUG_PRINTK("Video2:W:%d,H:%d\n", pFrame->u32Width, pFrame->u32Height);
            }
        }
        else
        {
            return;
        }
        break;
    case HAL_DISP_LAYER_VIDEO3:
        if (HI_TRUE == g_VoDump.dumpvsdflag)
        {
            /* Copy data out to buffer */
            if ((pFrame->u32Width > 1920) || (pFrame->u32Height > 1088))
            {
                DEBUG_PRINTK("too big data, we can not dump it.W:%d,H:%d\n", pFrame->u32Width, pFrame->u32Height);
                g_VoDump.dumpvhdflag = HI_FALSE;
                g_VoDump.dumpBusy    = HI_FALSE;
                return;
            }
            else
            {
                DEBUG_PRINTK("Video3:W:%d,H:%d\n", pFrame->u32Width, pFrame->u32Height);
            }
        }
        else
        {
            return;
        }
        break;
    default:
        return;
    }

    /* Now we can dump now */
    enVideoFormat = pFrame->enVideoFormat;

    /* judge frame's store format: 1D or 2D */
    if (pVdecPriv->u32Is1D)
    {
        pFrame->u32YStride = ((pFrame->u32Width + 255) / 256) * 256 * 16;
        pFrame->u32CStride = ((pFrame->u32Width + 255) / 256) * 256 * 8;
        YFrameSize = ((pFrame->u32Height + 15) / 16) * pFrame->u32YStride;
    }
    else
    {
        YFrameSize = pFrame->u32Height * pFrame->u32YStride;
    }

    if ((HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == enVideoFormat)
     || (HI_UNF_FORMAT_YUV_SEMIPLANAR_422 == enVideoFormat))
    {

        if (HI_UNF_FORMAT_YUV_SEMIPLANAR_420 == enVideoFormat)
        {
            if (pVdecPriv->u32Is1D)
            {
                CFrameSize = ((pFrame->u32Height / 2 + 7) / 8) * pFrame->u32CStride;
            }
            else
            {
                CFrameSize = pFrame->u32Height * pFrame->u32CStride / 2;
            }
        }
        else
        {
            if (pVdecPriv->u32Is1D)
            {
                CFrameSize = ((pFrame->u32Height + 7) / 8) * pFrame->u32CStride;
            }
            else
            {
                CFrameSize = pFrame->u32Height * pFrame->u32CStride;
            }
        }
        DEBUG_PRINTK("Copy Y unit u32YStride:%d, H:%d\n", pFrame->u32YStride, pFrame->u32Height);
        virturaddr = vo_klib_mmap(pFrame->u32YAddr, YFrameSize, virBaseddr, &viroffset);
        if (virturaddr != 0)
        {
            memcpy(g_VoDump.pDumpBuffer, virturaddr, YFrameSize);
            DEBUG_PRINTK("copy finisth DumpBuffer:0x%x, virturaddr:0x%x\n", (unsigned int)g_VoDump.pDumpBuffer, (unsigned int)virturaddr);
            vo_klib_unmap((unsigned int)virturaddr, viroffset);
            virturaddr = 0;
        }
        else
        {
            DEBUG_PRINTK("can not map 1\n");
        }
        DEBUG_PRINTK("Copy C unit u32CStride:%d, H:%d\n", pFrame->u32CStride, pFrame->u32Height);
        virturaddr = vo_klib_mmap(pFrame->u32CAddr, CFrameSize, virBaseddr, &viroffset);
        if (virturaddr != 0)
        {
            memcpy((g_VoDump.pDumpBuffer + YFrameSize), virturaddr, CFrameSize);
            DEBUG_PRINTK("copy finisth DumpBuffer:0x%x, virturaddr:0x%x\n", (unsigned int)g_VoDump.pDumpBuffer, (unsigned int)virturaddr);
            vo_klib_unmap((unsigned int)virturaddr, viroffset);
            virturaddr = 0;

            g_VoDump.dumpDataAlready = HI_TRUE;
        }
        else
        {
            DEBUG_PRINTK("can not map 1\n");
        }
    }
    else if((HI_UNF_FORMAT_YUV_PACKAGE_UYVY == enVideoFormat)
         || (HI_UNF_FORMAT_YUV_PACKAGE_YUYV == enVideoFormat)
         || (HI_UNF_FORMAT_YUV_PACKAGE_YVYU == enVideoFormat))
    {
        /* Copy Y unit */
        virturaddr = vo_klib_mmap(pFrame->u32YAddr, YFrameSize, virBaseddr, &viroffset);
        if (virturaddr != 0)
        {
            memcpy(g_VoDump.pDumpBuffer, virturaddr, YFrameSize);
            DEBUG_PRINTK("copy finisth DumpBuffer:0x%x, virturaddr:0x%x\n", (unsigned int)g_VoDump.pDumpBuffer, (unsigned int)virturaddr);
            vo_klib_unmap((unsigned int)virturaddr, viroffset);
            virturaddr = 0;

            g_VoDump.dumpDataAlready = HI_TRUE;
        }
        else
        {
            DEBUG_PRINTK("can not map 1\n");
        }
    }
    else
    {
    }


    if (g_VoDump.dumpDataAlready == HI_TRUE)
    {
        g_VoDump.layer = layer;
        memcpy(&g_VoDump.Frame, pFrame, sizeof(HI_UNF_VO_FRAMEINFO_S));
        g_VoDump.WaitFlag = HI_TRUE;
        wake_up(&g_VoDump.astVOWait);
    }

    return;
}

HI_VOID vo_debug_init(void)
{
    if (g_VoDump.dump110_Enable == 110)
    {
        DEBUG_PRINTK("vo dump already setup\n");
        return;
    }
    memset(&g_VoDump, 0, sizeof(vo_Dump_t));

    /* Build up buffer and thread. */
    g_VoDump.pDumpBuffer = vmalloc(BUFFER_SIZE);
    if(g_VoDump.pDumpBuffer == NULL)
    {
        DEBUG_PRINTK("can not allocate memory for VO dump frame\n");
        memset(&g_VoDump, 0, sizeof(vo_Dump_t));
        return;
    }
    g_VoDump.DumpBufferSize = BUFFER_SIZE;
    memset(g_VoDump.pDumpBuffer, 0, g_VoDump.DumpBufferSize);


    g_VoDump.pSwapBuffer = vmalloc(BUFFER_SIZE);
    if(g_VoDump.pSwapBuffer == NULL)
    {
        DEBUG_PRINTK("can not allocate memory for VO dump frame\n");
        vfree(g_VoDump.pDumpBuffer);
        memset(&g_VoDump, 0, sizeof(vo_Dump_t));
        return;
    }
    g_VoDump.SwapBufferSize= BUFFER_SIZE;
    memset(g_VoDump.pSwapBuffer, 0, g_VoDump.SwapBufferSize);

    g_VoDump.WaitFlag = HI_FALSE;
    init_waitqueue_head(&g_VoDump.astVOWait);

    g_VoDump.pkTBebughread = kthread_create(vo_KThread_Timer, NULL, "vo_debug_kthread");

    if ( IS_ERR(g_VoDump.pkTBebughread))
    {
        DEBUG_PRINTK("Unable to start vo debug kernel thread.\n");
        vfree(g_VoDump.pDumpBuffer);
        vfree(g_VoDump.pSwapBuffer);
        memset(&g_VoDump, 0, sizeof(vo_Dump_t));
        return;
    }
    wake_up_process(g_VoDump.pkTBebughread);

    g_VoDump.dump110_Enable = 110;
    return;
}

HI_VOID vo_debug_deinit(void)
{
    //HI_U32 Ret = 0;

    if (g_VoDump.dump110_Enable != 110)
    {
        DEBUG_PRINTK("vo dump do not setup before!\n");
        return;
    }
    g_VoDump.WaitFlag = HI_TRUE;
    wake_up(&g_VoDump.astVOWait);
    //Ret = kthread_stop(g_VoDump.pkTBebughread);
    kthread_stop(g_VoDump.pkTBebughread);
    vfree(g_VoDump.pDumpBuffer);
    vfree(g_VoDump.pSwapBuffer);
    memset(&g_VoDump, 0, sizeof(vo_Dump_t));
    return;
}

static HI_U32 set_dump_vhd_frame(void)
{
    if (g_VoDump.dump110_Enable != 110)
    {
        DEBUG_PRINTK("vo dump do not setup before!\n");
        return 0;
    }
    if (g_VoDump.dumpBusy == HI_TRUE)
    {
        DEBUG_PRINTK("vo dump is Dumpping now!\n");
        return 0;
    }
    if (HI_TRUE != OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_VIDEO1))
    {
        DEBUG_PRINTK("VHD is not enble\n");
        return 0;
    }
    g_VoDump.dumpvhdflag = HI_TRUE;
    g_VoDump.dumpBusy    = HI_TRUE;
    return 0;
}

static HI_U32 set_dump_vad_frame(void)
{
    if (g_VoDump.dump110_Enable != 110)
    {
        DEBUG_PRINTK("vo dump do not setup before!\n");
        return 0;
    }
    if (g_VoDump.dumpBusy == HI_TRUE)
    {
        DEBUG_PRINTK("vo dump is Dumpping now!\n");
        return 0;
    }
    if (HI_TRUE != OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_VIDEO2))
    {
        DEBUG_PRINTK("VAD is not enble\n");
        return 0;
    }
    g_VoDump.dumpvadflag = HI_TRUE;
    g_VoDump.dumpBusy    = HI_TRUE;
    return 0;
}

static HI_U32 set_dump_vsd_frame(void)
{
    if (g_VoDump.dump110_Enable != 110)
    {
        DEBUG_PRINTK("vo dump do not setup before!\n");
        return 0;
    }
    if (g_VoDump.dumpBusy == HI_TRUE)
    {
        DEBUG_PRINTK("vo dump is Dumpping now!\n");
        return 0;
    }
    if (HI_TRUE != OPTM_HAL_GetLayerEnable(HAL_DISP_LAYER_VIDEO3))
    {
        DEBUG_PRINTK("VSD is not enble\n");
        return 0;
    }
    g_VoDump.dumpvsdflag = HI_TRUE;
    g_VoDump.dumpBusy    = HI_TRUE;
    return 0;
}




/* Store stream into file */
struct file *vo_klib_fopen(const char *filename, int flags, int mode)
{
        struct file *filp = filp_open(filename, flags, mode);
        return (IS_ERR(filp)) ? NULL : filp;
}

void vo_klib_fclose(struct file *filp)
{
        if (filp)
            filp_close(filp, NULL);
}

int vo_klib_fread(char *buf, unsigned int len, struct file *filp)
{
        int readlen;
        mm_segment_t oldfs;

        if (filp == NULL)
                return -ENOENT;
        if (filp->f_op->read == NULL)
                return -ENOSYS;
        if (((filp->f_flags & O_ACCMODE) & (O_RDONLY | O_RDWR)) == 0)
                return -EACCES;
        oldfs = get_fs();
        set_fs(KERNEL_DS);
        readlen = filp->f_op->read(filp, buf, len, &filp->f_pos);
        set_fs(oldfs);

        return readlen;
}

int vo_klib_fwrite(char *buf, int len, struct file *filp)
{
        int writelen;
        mm_segment_t oldfs;

        if (filp == NULL)
                return -ENOENT;
        if (filp->f_op->write == NULL)
                return -ENOSYS;
        if (((filp->f_flags & O_ACCMODE) & (O_WRONLY | O_RDWR)) == 0)
                return -EACCES;
        oldfs = get_fs();
        set_fs(KERNEL_DS);
        writelen = filp->f_op->write(filp, buf, len, &filp->f_pos);
        set_fs(oldfs);

        return writelen;
}

unsigned int *vo_klib_mmap(unsigned int phyaddr, unsigned int len, unsigned int *virbaseadd, unsigned int *Ooffset)
{
    unsigned long viradd = 0;
    viradd = (unsigned long)remap_mmb_2(phyaddr, (unsigned long *)virbaseadd, (unsigned long *)Ooffset);
    return ((unsigned int *)viradd);
}

unsigned int *vo_klib_unmap(unsigned int phyaddr, unsigned int offset)
{
    return ((unsigned int *)unmap_mmb_2((void *)phyaddr, offset));
}



/*********************************************************************************
 *                        set debug options for VDM                              *
 *********************************************************************************/
HI_U32  VO_SetDbgOption ( HI_U32 opt, HI_U32* p_args )
{
    HI_U32 data;

    if ( NULL== p_args )
    {
        return HI_FAILURE;
    }

    data = *((HI_U32*)p_args);
    DEBUG_PRINTK("opt:0x%x, dat:0x%x\n", opt, data);
    switch ( opt )
    {
    case 0x100: /* Setup dump */
        DEBUG_PRINTK("dump setup\n");
        vo_debug_init();
        break;

    case 0x101: /* Close dump */
        DEBUG_PRINTK("dump exit\n");
        vo_debug_deinit();
        break;
    case 0x110: /* Dump one frame */
        if (data == 0)
        {
            DEBUG_PRINTK("dump vhd frame\n");
            set_dump_vhd_frame();
        }
        else if (data == 1)
        {
            DEBUG_PRINTK("dump vad frame\n");
            set_dump_vad_frame();
        }
        else if (data == 2)
        {
            DEBUG_PRINTK("dump vsd frame\n");
            set_dump_vsd_frame();
        }
        break;
    default:
        ;
    }

    return HI_SUCCESS;
}

/****************************************************************
 *    Init / de-init for DEBUG main equipment                   *
 ****************************************************************/
HI_VOID OPTM_DEBUG_Init(HI_VOID)
{
     /* initialize counter of memory statistics */
     OPTM_DEBUG_MemSttInit();

     g_s32OptmDebugInit = 1;
}

HI_VOID OPTM_DEBUG_DeInit(HI_VOID)
{
    if (g_s32OptmDebugInit != 0){

         g_s32OptmDebugInit = 0;
    }
}

#else
HI_VOID vo_debug_frame(HI_U32 layer, HI_VOID *pData, HI_U32 VoDevMode)
{

}

HI_U32  VO_SetDbgOption ( HI_U32 opt, HI_U32* p_args )
{
return HI_SUCCESS;
}

#endif

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */

