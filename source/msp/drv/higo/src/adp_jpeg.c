/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : mmz_api.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifdef HIGO_JPEG_SUPPORT

/*********************************add include here******************************/

#include <linux/delay.h>

#include "adp_jpeg.h"
#include "hi_go_decoder.h"
#include "jpeg_errcode.h"
#include "jpeg_type.h"
#include "jpeg_decctrl.h"
#include "hi_go_comm.h"
#include "higo_surface.h"
#include "higo_adp_sys.h"
#include "higo_io.h"
#include "higo_common.h"
#include "jpeg_driver.h"

/*****************************************************************************/


/***************************** Macro Definition ******************************/


#define MAXALPHA 255


#define JPGSTREAMISOVER(CurIndex, CurState, DstIndex, Result) \
do {\
    if (((0 == CurIndex) && (0 == DstIndex) && (JPG_STATE_PARSED < CurState)) \
        || ((0 == CurIndex) && (0 != DstIndex)) \
        || ((0 != CurIndex) && (DstIndex != 0) && (CurIndex > DstIndex)) \
        || ((0 != CurIndex) && (DstIndex != 0) \
            && ((JPG_STATE_PARTPARSED == CurState) \
                || (JPG_STATE_THUMBPARSED == CurState) \
                || (JPG_STATE_PARSED < CurState)))) \
    { \
        Result = HI_TRUE; \
    } \
} while (0)


/*get the scaling rate*/
#define ADP_JPEGCALSCALE(num, dem, result) \
do { \
    HI_U32 ScaleTmp; \
    ScaleTmp = (HI_U32)((2*num  + dem)/(dem *2)); \
    if (8 <= ScaleTmp) \
    { \
        result = 3; \
    } \
    else if (4 <= ScaleTmp) \
    { \
        result = 2; \
    } \
    else if (2 <= ScaleTmp) \
    { \
        result = 1; \
    } \
    else \
    { \
        result = 0; \
    } \
}while(0)


/*************************** Structure Definition ****************************/

/** a instance about jpeg decode*/
typedef struct _DEC_JPEGINSTANCE_S
{
	IO_HANDLE  IoHandle;/**< file (virtal ) handle*/
	DEC_HANDLE FirmWare; /**< firmware handle */
	HI_CHAR *  pStreamBuf;/**  a pointer for the stream data buffer */
} DEC_JPEGINSTANCE_S;

/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/


/******************************* API realize *****************************/
HIGO_PF_E ADP_ConverFMTMBJPG2HIGO(JPG_MBCOLORFMT_E JpgFmt)
{
        switch (JpgFmt)
        {
            case JPG_MBCOLOR_FMT_JPG_YCbCr400MBP:
                return HIGO_PF_YUV400;                
            case JPG_MBCOLOR_FMT_JPG_YCbCr420MBP:
                return HIGO_PF_YUV420;
            case JPG_MBCOLOR_FMT_JPG_YCbCr422MBHP:
                return HIGO_PF_YUV422;
            case JPG_MBCOLOR_FMT_JPG_YCbCr422MBVP:
                return HIGO_PF_YUV422_V;
            case JPG_MBCOLOR_FMT_JPG_YCbCr444MBP:
                return HIGO_PF_YUV444;
            default:
                return (HIGO_PF_E)0;
        }
}

HIGO_PF_E ADP_ConverFMTJPG2HIGO(JPG_SOURCEFMT_E JpgFmt)
{
    switch (JpgFmt)
    {
        case JPG_SOURCE_COLOR_FMT_YCBCR400:
            return HIGO_PF_YUV400;                
        case JPG_SOURCE_COLOR_FMT_YCBCR420:
            return HIGO_PF_YUV420;
        case JPG_SOURCE_COLOR_FMT_YCBCR422BHP:
            return HIGO_PF_YUV422;
        case JPG_SOURCE_COLOR_FMT_YCBCR422BVP:
            return HIGO_PF_YUV422_V;
        case JPG_SOURCE_COLOR_FMT_YCBCR444:
            return HIGO_PF_YUV444;
        default:
            //HIGO_SetError(HI_FAILURE);
        return (HIGO_PF_E)0;
    }
}

/***************************************************************************************
* func          : ADP_JPGSendStream
* description   : CNcomment: 送码流数据 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_VOID ADP_JPGSendStream(const DEC_JPEGINSTANCE_S *pDecJpegInstance)
{
    JPGDEC_WRITESTREAM_S StreamInfo;
    HI_U32 CopyLen;
    HI_U32 FreeSize;
    HI_BOOL EndFlag = HI_FALSE;
    HI_VOID *pAddr = HI_NULL_PTR;
    HI_S32 Ret;
    IO_TYPE_E IoType;
    
    (HI_VOID)HIGO_ADP_IOGetType(pDecJpegInstance->IoHandle,  &IoType);

	while (HI_SUCCESS == JPG_IsNeedStream(pDecJpegInstance->FirmWare, &pAddr, &FreeSize))
    {
        /**
         ** if return value is 0, it means there is enouch 
         ** bitstream data, and go into sleep 
         **/
        if (0 == FreeSize)
        {           
            
            (HI_VOID)msleep(5);
            
            continue;
        }
        /** 
         ** get the bitstream data, if file read fail, return
		 **/
        Ret = HIGO_ADP_IORead(pDecJpegInstance->IoHandle, pAddr, FreeSize, &CopyLen, &EndFlag);
        if (HI_SUCCESS != Ret)
        {
            return;
        }
        if (IoType == IO_TYPE_STREAM)
        {
            continue;
        }

        /** send bitstream to decode **/
        StreamInfo.pStreamAddr  = pAddr;
        StreamInfo.StreamLen    = CopyLen;
        StreamInfo.CopyLen      = 0;
        StreamInfo.NeedCopyFlag = HI_FALSE;
        StreamInfo.EndFlag      = EndFlag;

        Ret = JPG_SendStream(pDecJpegInstance->FirmWare, &StreamInfo);
        if (StreamInfo.CopyLen != StreamInfo.StreamLen)
        {
            (HI_VOID)HIGO_ADP_IOSeek(pDecJpegInstance->IoHandle,IO_POS_CUR, (HI_S32)StreamInfo.CopyLen - (HI_S32)StreamInfo.StreamLen);
        }

        if (Ret != HI_SUCCESS)
        {
        }

        /** if to the file end, stop read data, and send the remain data  **/
        if ((HI_TRUE == EndFlag) && (StreamInfo.CopyLen == StreamInfo.StreamLen))
        {   
            return;
        }
    }

    return;
	
}
/***************************************************************************************
* func          : HIGO_ADP_JpegInit
* description   : CNcomment: 解码器初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIGO_ADP_JpegInit(HI_VOID)
{
    return HI_JPG_Open();
}


/***************************************************************************************
* func          : HIGO_ADP_JpegDeInit
* description   : CNcomment: 解码器去初始化 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIGO_ADP_JpegDeInit(HI_VOID)
{
    return HI_JPG_Close();
}

/***************************************************************************************
* func          : HIGO_ADP_JPGCreateDecoder
* description   : CNcomment: 创建解码器 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIGO_ADP_JPGCreateDecoder(DEC_HANDLE *pJpegDec, const HIGO_DEC_ATTR_S *pSrcDesc)
{


    DEC_JPEGINSTANCE_S *pDecJpegInstance;
    IO_DESC_S DecIoDesc;
    HI_S32 Ret = 0;
    HI_U32 Length = 0;
    
    /** check parameter*/
    if (HI_NULL_PTR == pSrcDesc)
    {
        HIGO_ADP_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    /** create decode instance*/
    pDecJpegInstance = (DEC_JPEGINSTANCE_S *)HIGO_Malloc(sizeof(DEC_JPEGINSTANCE_S));
    if(HI_NULL_PTR == pDecJpegInstance)
    {
        HIGO_ADP_SetError(HIGO_ERR_NOMEM);
        return HIGO_ERR_NOMEM;
    }

    HIGO_MemSet((HI_VOID *)pDecJpegInstance, 0x0, sizeof(DEC_JPEGINSTANCE_S));
    pDecJpegInstance->pStreamBuf = HI_NULL_PTR;

    /** create the virtual file system according the inout parameter*/
    DecIoDesc.IoInfo.MemInfo.pAddr  = pSrcDesc->SrcInfo.MemInfo.pAddr;
    DecIoDesc.IoInfo.MemInfo.Length = pSrcDesc->SrcInfo.MemInfo.Length;

	Ret = HIGO_ADP_IOCreate(&(pDecJpegInstance->IoHandle), &DecIoDesc);
    if (HI_SUCCESS != Ret)
    {
        HIGO_ADP_SetError(HI_FAILURE);
        Ret = HI_FAILURE;
        goto creatiofailed;
    }

    /** start firmware*/
    (HI_VOID)HIGO_ADP_IOGetLength(pDecJpegInstance->IoHandle, &Length);

    Ret = JPG_CreateDecoder(&(pDecJpegInstance->FirmWare), JPG_IMGTYPE_NORMAL, Length);

    if (HI_SUCCESS != Ret)
    {
        HIGO_ADP_SetError(Ret);
        goto creatiofailed;
    }

    /** allocate decode handle*/
    *pJpegDec = (DEC_HANDLE)pDecJpegInstance;

    return HI_SUCCESS;

creatiofailed:
	
    HIGO_Free(pDecJpegInstance);

    return Ret;
	
} /*lint !e818 */

HI_S32 HIGO_ADP_JPGDestroyDecoder(DEC_HANDLE JpegDec)
{
    DEC_JPEGINSTANCE_S *pDecJpegInstance;

    /** paramter check */
    pDecJpegInstance = (DEC_JPEGINSTANCE_S *)JpegDec;

    /** destroy virtual file system*/
    (HI_VOID)HIGO_ADP_IODestroy(pDecJpegInstance->IoHandle);

    /** clsoe firmware*/
    (HI_VOID)JPG_DestroyDecoder(pDecJpegInstance->FirmWare);

    /** destroy decode instance*/
    HIGO_Free(pDecJpegInstance);

    return HI_SUCCESS;
}

HI_S32 HIGO_ADP_JPGResetDecoder(DEC_HANDLE JpegDec)
{
    HI_S32 Ret;
    DEC_JPEGINSTANCE_S *pDecJpegInstance;

    /** get current decode instance*/
    pDecJpegInstance = (DEC_JPEGINSTANCE_S *)JpegDec;

    /** start new decoder */
    (HI_VOID)JPG_ResetDecoder(pDecJpegInstance->FirmWare);

    /** reset the position of virtual fs*/
    Ret = HIGO_ADP_IOSeek(pDecJpegInstance->IoHandle, IO_POS_SET, 0);
    if (HI_SUCCESS != Ret)
    {
        HIGO_ADP_SetError(HI_FAILURE);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}


HI_S32 HIGO_ADP_JPGDecCommInfo(DEC_HANDLE JpegDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo)
{
    HI_S32 Ret;
    DEC_JPEGINSTANCE_S *pDecJpegInstance;
    JPG_PRIMARYINFO_S *pFirmPrimaryInfo;

    /** check parameter*/
    if (HI_NULL_PTR == pPrimaryInfo)
    {
        HIGO_ADP_SetError(HI_NULL_PTR);
        return HI_NULL_PTR;
    }

    /** get decode instance*/
    pDecJpegInstance = (DEC_JPEGINSTANCE_S *)JpegDec;



    /** query system info*/
    Ret = JPG_GetPrimaryInfo(pDecJpegInstance->FirmWare, &pFirmPrimaryInfo);
    if (HI_SUCCESS == Ret)
    {
        pPrimaryInfo->Count   = pFirmPrimaryInfo->Count;
        pPrimaryInfo->ImgType = HIGO_DEC_IMGTYPE_JPEG;
        pPrimaryInfo->IsHaveBGColor = HI_FALSE;
        pPrimaryInfo->ScrHeight = 0;
        pPrimaryInfo->ScrWidth = 0;
        pPrimaryInfo->BGColor = 0;
        (HI_VOID)JPG_ReleasePrimaryInfo(pDecJpegInstance->FirmWare, pFirmPrimaryInfo);
        return HI_SUCCESS;
    }
    else if (Ret != HI_ERR_JPG_WANT_STREAM)
    {
        Ret = HIGO_ERR_INVIMGDATA;
        HIGO_ADP_SetError(Ret);
        return Ret;
    }

    /** sending  bitstream */
    ADP_JPGSendStream(pDecJpegInstance);

    /** query info agian*/
    Ret = JPG_GetPrimaryInfo(pDecJpegInstance->FirmWare, &pFirmPrimaryInfo);
    if (HI_SUCCESS == Ret)
    {
        pPrimaryInfo->Count   = pFirmPrimaryInfo->Count;
        pPrimaryInfo->ImgType = HIGO_DEC_IMGTYPE_JPEG;
        pPrimaryInfo->IsHaveBGColor = HI_FALSE;
        pPrimaryInfo->ScrHeight = 0;
        pPrimaryInfo->ScrWidth = 0;
        pPrimaryInfo->BGColor = 0;
        (HI_VOID)JPG_ReleasePrimaryInfo(pDecJpegInstance->FirmWare, pFirmPrimaryInfo);
        return HI_SUCCESS;
    }

    return HIGO_ERR_INVIMGDATA;
}


HI_S32 HIGO_ADP_JPGDecImgInfo(DEC_HANDLE JpegDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo)
{
    HI_S32 Ret;
    DEC_JPEGINSTANCE_S *pDecJpegInstance;
    JPG_PICINFO_S PicInfo;

    /** check parameter*/
    if (HI_NULL_PTR == pImgInfo)
    {
        HIGO_ADP_SetError(HI_NULL_PTR);
        return HI_NULL_PTR;
    }

    /** get current decode instance*/
    pDecJpegInstance = (DEC_JPEGINSTANCE_S *)JpegDec;


    /** query system info*/
    Ret = JPG_GetPicInfo(pDecJpegInstance->FirmWare, &PicInfo, Index);
    if (HI_SUCCESS == Ret)
    {
        /** return picture info*/
        pImgInfo->OffSetX = 0;
        pImgInfo->OffSetY = 0;
        pImgInfo->Width  = PicInfo.Width;
        pImgInfo->Height = PicInfo.Height;

        pImgInfo->Format = ADP_ConverFMTJPG2HIGO(PicInfo.EncodeFormat);
        pImgInfo->IsHaveKey = HI_FALSE;
        pImgInfo->Key   = 0;
        pImgInfo->Alpha = MAXALPHA;
        pImgInfo->DelayTime = 0;
        pImgInfo->DisposalMethod = 0;        
        return HI_SUCCESS;
    }
    else if (Ret != HI_ERR_JPG_WANT_STREAM)
    {
        Ret = HIGO_ERR_INVIMGDATA;
        HIGO_ADP_SetError(Ret);
        return Ret;
    }


    ADP_JPGSendStream(pDecJpegInstance);

    /** query system status*/
    Ret = JPG_GetPicInfo(pDecJpegInstance->FirmWare, &PicInfo, Index);
    if (HI_SUCCESS == Ret)
    {
        /** return picture info */
        pImgInfo->OffSetX = 0;
        pImgInfo->OffSetY = 0;
        pImgInfo->Width  = PicInfo.Width;
        pImgInfo->Height = PicInfo.Height;
        pImgInfo->Format = ADP_ConverFMTJPG2HIGO(PicInfo.EncodeFormat);
        pImgInfo->IsHaveKey = HI_FALSE;
        pImgInfo->Key   = 0;
        pImgInfo->Alpha = MAXALPHA;
        pImgInfo->DelayTime = 0;
        pImgInfo->DisposalMethod = 0;        
        return HI_SUCCESS;
    }
    return HIGO_ERR_INVIMGDATA;
}
/***************************************************************************************
* func          : HIGO_ADP_JPGDecImgData
* description   : CNcomment: 解图片数据 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HIGO_ADP_JPGDecImgData(DEC_HANDLE JpegDec, HI_U32 Index, HIGO_SURFACE_S * pSurface)
{
    HI_S32 Ret = 0;
    DEC_JPEGINSTANCE_S *pDecJpegInstance;
    JPG_PICINFO_S PicInfo = {0};
    JPG_STATE_E DecState;
    HI_U32 CurIndex = 0;
    HI_BOOL OverFlag = HI_FALSE;
    JPG_SURFACE_S JpegSurface;
    HI_U32 DecCount= 0;
    HI_PIXELDATA pData;
    HI_S32 s32Ret = 0;
    
    /** check parameter */
    if (HI_NULL_PTR == pSurface)
    {
        HIGO_ADP_SetError(HI_NULL_PTR);
        return HI_NULL_PTR;
    }

    /** get current decode instance **/
    pDecJpegInstance = (DEC_JPEGINSTANCE_S *)JpegDec;

decagain:

    /**
     ** query systeam status，这里获取到两个信息，一个是解码状态的赋值，一个是解哪一张图片
     **/
    (HI_VOID)JPG_GetStatus(pDecJpegInstance->FirmWare, &DecState, &CurIndex);
    
    /** stustus wrong, restart the decode **/
    JPGSTREAMISOVER(CurIndex, DecState, Index, OverFlag);
    if (HI_TRUE == OverFlag)
    {
        /** restart the decode **/
        (HI_VOID)JPG_ResetDecoder(pDecJpegInstance->FirmWare);

        /** restart virtual fs **/
        Ret = HIGO_ADP_IOSeek(pDecJpegInstance->IoHandle, IO_POS_SET, 0);
        if (HI_SUCCESS != Ret)
        {
            HIGO_ADP_SetError(HI_FAILURE);
            return HI_FAILURE;
        }
    }

    /** query if needed to send bitstream **/
    Ret = JPG_GetPicInfo(pDecJpegInstance->FirmWare, &PicInfo, Index);
    if ((HI_SUCCESS != Ret) && (HI_ERR_JPG_WANT_STREAM != Ret))
    {
        HIGO_ADP_SetError(HI_FAILURE);
        return HI_FAILURE;
    }
    
    /** send bitstream **/
    if (HI_ERR_JPG_WANT_STREAM == Ret)
    {

        ADP_JPGSendStream(pDecJpegInstance);

        /** check is reach the position which decode needed*/
        Ret = JPG_GetPicInfo(pDecJpegInstance->FirmWare, &PicInfo, Index);
        if ((HI_SUCCESS != Ret) && (HI_ERR_JPG_WANT_STREAM != Ret))
        {
            HIGO_ADP_SetError(HI_FAILURE);
            return HI_FAILURE;
        }
    }

    /** get  info decode needed*/
    Ret = JPG_GetPicInfo(pDecJpegInstance->FirmWare, &PicInfo, Index);
    HIGO_ADP_ASSERT(HI_SUCCESS == Ret);
    

    JpegSurface.OutType = JPG_OUTTYPE_MACROBLOCK;
    (HI_VOID)Surface_LockSurface((HIGO_HANDLE)pSurface, pData);
    (HI_VOID)Surface_GetSurfaceSize((HIGO_HANDLE)pSurface, (HI_S32*)&JpegSurface.SurfaceInfo.MbSurface.YWidth, (HI_S32*)&JpegSurface.SurfaceInfo.MbSurface.YHeight);
    if (PicInfo.EncodeFormat == JPG_SOURCE_COLOR_FMT_YCBCR422BHP)
    {
        JpegSurface.SurfaceInfo.MbSurface.MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr422MBHP;
    }
    else if (PicInfo.EncodeFormat == JPG_SOURCE_COLOR_FMT_YCBCR420)
    {
        JpegSurface.SurfaceInfo.MbSurface.MbFmt  = JPG_MBCOLOR_FMT_JPG_YCbCr420MBP;
    }
    else if (PicInfo.EncodeFormat == JPG_SOURCE_COLOR_FMT_YCBCR400)
    {
        JpegSurface.SurfaceInfo.MbSurface.MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr400MBP;
    }
    else if (PicInfo.EncodeFormat == JPG_SOURCE_COLOR_FMT_YCBCR422BVP)
    {
        JpegSurface.SurfaceInfo.MbSurface.MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr422MBVP;
    }
    else if (PicInfo.EncodeFormat == JPG_SOURCE_COLOR_FMT_YCBCR444)
    {
        JpegSurface.SurfaceInfo.MbSurface.MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr444MBP;
    }
    else
    {
        JpegSurface.SurfaceInfo.MbSurface.MbFmt = JPG_MBCOLOR_FMT_JPG_YCbCr400MBP;
    }
    
    JpegSurface.SurfaceInfo.MbSurface.YPhyAddr     = (HI_U32)pData[0].pPhyData;
    JpegSurface.SurfaceInfo.MbSurface.YVirtAddr    = pData[0].pData;
    JpegSurface.SurfaceInfo.MbSurface.YStride      = pData[0].Pitch;
    JpegSurface.SurfaceInfo.MbSurface.CbCrPhyAddr  = (HI_U32)pData[1].pPhyData;
    JpegSurface.SurfaceInfo.MbSurface.CbCrVirtAddr =  pData[1].pData;
    JpegSurface.SurfaceInfo.MbSurface.CbCrStride   = pData[1].Pitch;

    /** start decode **/
    Ret = JPG_Decode(pDecJpegInstance->FirmWare, &JpegSurface, Index);
    if (Ret != HI_SUCCESS)
    {
        HIGO_ADP_SetError(Ret);
        if (Ret == HI_ERR_JPG_NO_MEM)
        {
            return HIGO_ERR_NOMEM;
        }
        else
        {
            return HIGO_ERR_INTERNAL;
        }
    }
    /** send bitstream **/
    ADP_JPGSendStream(pDecJpegInstance);

    /** wait for decode fininsh **/

    (HI_VOID)JPG_GetStatus(pDecJpegInstance->FirmWare, &DecState, &CurIndex);
    {
        HI_U32 FreeSize;
        HI_VOID *pAddr = HI_NULL_PTR; 
        while((JPG_STATE_DECODED != DecState)&&(JPG_STATE_DECODEERR != DecState)&&(JPG_STATE_PARSEERR != DecState))
        {
            s32Ret = JPG_IsNeedStream(pDecJpegInstance->FirmWare, &pAddr, &FreeSize);
            if(HI_SUCCESS != s32Ret)
            {
            }
            s32Ret = JPG_GetStatus(pDecJpegInstance->FirmWare, &DecState, &CurIndex);
            if(HI_SUCCESS != s32Ret)
            {
            }
        }
    }

    if ((JPG_STATE_DECODED == DecState) && (CurIndex == Index))
    {
        return HI_SUCCESS;
    }

    /** if hw decode fail, switch to software decode **/
    DecCount++;
    if(DecCount <= 1)
    {
        goto decagain; 
    }
	
    HIGO_ADP_SetError(HIGO_ERR_INVIMGDATA);
	
    return HIGO_ERR_INVIMGDATA;
	
}
HI_S32 HIGO_ADP_JPGGetActualSize(DEC_HANDLE JpegDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo)
{
    HIGO_DEC_IMGINFO_S ImgInfo;
    HI_U32 XScale, YScale;
    HI_S32 ret;

    
    ret = HIGO_ADP_JPGDecImgInfo(JpegDec, (HI_U32)Index, &ImgInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("dec imginfo error\n", ret);
        return ret;
    }
    
    /*scaling rate is the same both  for height and witdh, and the rate can be 2,4,8, send the parameter to decoder*/
    ADP_JPEGCALSCALE(ImgInfo.Width, pSrcRect->w,XScale);
    ADP_JPEGCALSCALE(ImgInfo.Height, pSrcRect->h,YScale);
    if (YScale > XScale)
    {
        XScale = YScale;
    }
    
    pSurInfo->Width = (HI_S32)((ImgInfo.Width  + (1 << XScale) - 1) >> XScale);
    pSurInfo->Height = (HI_S32)((ImgInfo.Height + (1 << XScale) - 1) >> XScale);
    pSurInfo->PixelFormat = ImgInfo.Format;
    pSurInfo->Pitch[0] = 0;
    pSurInfo->Pitch[1] = 0;
    return HI_SUCCESS;
}

#endif
