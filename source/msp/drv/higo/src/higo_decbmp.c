/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : higo_decbmp.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/


/*********************************add include here******************************/
#include "hi_type.h"
#include "hi_go_decoder.h"
#include "higo_decbmp.h"
#include "higo_adp_sys.h"
#include "higo_io.h"
#include "higo_surface.h"
#include "mmz_api.h"
/*****************************************************************************/

#ifdef HIGO_BMP_SUPPORT


/***************************** Macro Definition ******************************/
#define BMP_WORD_LEN                     sizeof(HI_U16)
#define BMP_DWORD_LEN                    sizeof(HI_U32)
#define BMP_FILEHEADER_LEN              0x0E

/*************************** Structure Definition ****************************/
typedef struct tag_HIGO_BITMAPFILEHEADER
{
    HI_U16 bfType;
    HI_U32 bfSize;
    HI_U16 bfReserved1;
    HI_U16 bfReserved2;
    HI_U32 bfOffBits;
} HIGO_BITMAPFILEHEADER;

typedef struct tag_HIGO_BITMAPINFOHEADER
{
    HI_U32 biSize;
    HI_S32 biWidth;
    HI_S32 biHeight;
    HI_U16 biPlanes;
    HI_U16 biBitCount;
    HI_U32 biCompression;
    HI_U32 biSizeImage;
    HI_S32 biXPelsPerMeter;
    HI_S32 biYPelsPerMeter;
    HI_U32 biClrUsed;
    HI_U32 biClrImportant;
} HIGO_BITMAPINFOHEADER;

typedef struct BMP_DECODER
{
    IO_HANDLE             hStream;
    HIGO_BITMAPFILEHEADER FileHeader;
    HIGO_BITMAPINFOHEADER InfoHeader;
} BMP_DECODER_S;


/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/

/** 根据用户设置的分辨率，返回实际可以支持的分辨率*/
HI_S32 BMP_GetActualSize(DEC_HANDLE BmpDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo)
{
    HIGO_DEC_IMGINFO_S ImgInfo;
    HI_S32 ret;
    BMP_DECODER_S *pBmpDec = (BMP_DECODER_S*)BmpDec;

    
    ret = BMP_DecImgInfo(BmpDec, (HI_U32)Index, &ImgInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("dec imginfo error\n", ret);
        return ret;
    }

    pSurInfo->Width = (HI_S32)ImgInfo.Width;
    pSurInfo->Height = (HI_S32)ImgInfo.Height;
    pSurInfo->PixelFormat = ImgInfo.Format;
    pSurInfo->Pitch[0] = ((ImgInfo.Width * pBmpDec->InfoHeader.biBitCount + 31) / 32) * 4;

	#ifndef RGB24
    if(pSurInfo->PixelFormat == HIGO_PF_0888)
    {
	    pSurInfo->Pitch[0] = ((ImgInfo.Width * 32 + 31) / 32) * 4;    
    }
	#endif
    return HI_SUCCESS;
}

HI_S32 BMP_Rle8_Decode(const BMP_DECODER_S *pBmpDec, HI_U8 *pDecData)
{
    HI_S32 ret;
    HI_U8 *pRleData, *pRlePos, *pDecPos;
    HI_U32 ImagePitch, CopyLen;
    HI_U32 RleBytes, DecBytes;
    HI_BOOL EndFlag;

    /**alloc memory for ale data*/
    pRleData = (HI_U8*)HIGO_Malloc(pBmpDec->InfoHeader.biSizeImage);
    if (HI_NULL == pRleData)
    {
        return HI_FAILURE;
    }

    /**get rle data*/
    ret = HIGO_ADP_IOSeek(pBmpDec->hStream, IO_POS_SET, (HI_S32)(pBmpDec->FileHeader.bfOffBits));
    if (HI_SUCCESS != ret)
    {
        goto OUT1;
    }

    ret = HIGO_ADP_IORead(pBmpDec->hStream, pRleData, pBmpDec->InfoHeader.biSizeImage, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < pBmpDec->InfoHeader.biSizeImage))
    {
        goto OUT1;
    }

    /*decode rle data*/
    ImagePitch = (((HI_U32)pBmpDec->InfoHeader.biWidth + 3) / 4) * 4;
    pRlePos  = pRleData;
    pDecPos  = pDecData;
    RleBytes = DecBytes = 0;
    while (RleBytes < pBmpDec->InfoHeader.biSizeImage)
    {
        if (0 != pRlePos[0]) /*encode runs*/
        {
            memset(pDecPos, pRlePos[1], pRlePos[0]);
            pDecPos  += pRlePos[0];
            DecBytes += pRlePos[0];
            pRlePos  += 2;
            RleBytes += 2;
            continue;
        }
        else
        {
            if (0 == pRlePos[1])
            {
                /*end-of-line-Marker*/
                pDecPos  = pDecData + ((DecBytes - 1) / ImagePitch + 1) * ImagePitch;
                DecBytes = (HI_U32)(pDecPos - pDecData);
                pRlePos  += 2;
                RleBytes += 2;
                continue;
            }

            if (1 == pRlePos[1])
            {
                /*end-of-rledata-Marker*/
                break;
            }

            if (2 == pRlePos[1])
            {
                /*delta Marker*/
                pDecPos  = pDecData + (DecBytes / ImagePitch + pRlePos[4]) * ImagePitch + pRlePos[3];
                DecBytes = (HI_U32)(pDecPos - pDecData);
                pRlePos  += 4;
                RleBytes += 4;
                continue;
            }
            else /*unencode runs*/
            {
                memcpy(pDecPos, pRlePos + 2, pRlePos[1]);
                pDecPos  += pRlePos[1];
                DecBytes += pRlePos[1];
                RleBytes = RleBytes + ((pRlePos[1] + 1) / 2) * 2 + 2;
                pRlePos  = pRlePos + ((pRlePos[1] + 1) / 2) * 2 + 2;
                
                continue;
            }
        }
    }

OUT1:
    HIGO_Free(pRleData);
    pRleData = NULL;

    return ret;
} /*lint !e818 */

HI_S32 BMP_Rle4_Decode(const BMP_DECODER_S *pBmpDec, HI_U8 *pDecData)
{
    HI_S32 ret, i, MaskIdx;
    HI_U8 *pRleData, *pRlePos, *pDecPos;
    HI_U32 ImagePitch, CopyLen;
    HI_U32 RleBytes, DecBytes;
    HI_BOOL EndFlag;
    HI_U8 Mask[2] = {0xF0, 0x0F};

    /**alloc memory for ale data*/
    pRleData = (HI_U8*)HIGO_Malloc(pBmpDec->InfoHeader.biSizeImage);
    if (HI_NULL == pRleData)
    {
        return HI_FAILURE;
    }

    /**get rle data*/
    ret = HIGO_ADP_IOSeek(pBmpDec->hStream, IO_POS_SET, (HI_S32)(pBmpDec->FileHeader.bfOffBits));
    if (HI_SUCCESS != ret)
    {
        goto OUT1;
    }

    ret = HIGO_ADP_IORead(pBmpDec->hStream, pRleData, pBmpDec->InfoHeader.biSizeImage, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < pBmpDec->InfoHeader.biSizeImage))
    {
        goto OUT1;
    }

    /*decode rle data*/
    ImagePitch = (HI_U32)((pBmpDec->InfoHeader.biWidth * 4 + 31) / 32) * 4;
    pRlePos  = pRleData;
    pDecPos  = pDecData;
    RleBytes = DecBytes = 0;
    MaskIdx = 0;
    while (RleBytes < pBmpDec->InfoHeader.biSizeImage)
    {
        if (0 != pRlePos[0])
        {
            /*encode runs*/
            for (i = 0; i < pRlePos[0]; i++)
            {
                pDecPos[0] = pDecPos[0] | (pRlePos[1] & Mask[MaskIdx]);
                MaskIdx = 1 - MaskIdx;
                if (MaskIdx == 0)
                {
                    pDecPos++;
                    DecBytes++;
                }
            }

            pRlePos  += 2;
            RleBytes += 2;
            continue;
        }

        if (0 == pRlePos[1])
        {
            /*end-of-line-Marker*/
            pDecPos  = pDecData + ((DecBytes - 1) / ImagePitch + 1) * ImagePitch;
            DecBytes = (HI_U32)(pDecPos - pDecData);
            MaskIdx   = 0;
            pRlePos  += 2;
            RleBytes += 2;
            continue;
        }

        if (1 == pRlePos[1])
        {
            /*end-of-rledata-Marker*/
            break;
        }

        if (2 == pRlePos[1])
        {
            /*delta Marker*/
            pDecPos  = pDecData + (DecBytes / ImagePitch + pRlePos[4]) * ImagePitch + pRlePos[3];
            DecBytes = (HI_U32)(pDecPos - pDecData);
            MaskIdx   = 0;
            pRlePos  += 4;
            RleBytes += 4;
            continue;
        }
        else /*unencode runs*/
        {
            for (i = 0; i < pRlePos[1]; i++)
            {
                pDecPos[0] = pDecPos[0] | (pRlePos[2 + i / 2] & Mask[MaskIdx]);
                MaskIdx = 1 - MaskIdx;
                if (MaskIdx == 0)
                {
                    pDecPos++;
                    DecBytes++;
                }
            }

            RleBytes = RleBytes + ((pRlePos[1] * 4 + 15) / 16) * 2 + 2;
            pRlePos  = pRlePos + ((pRlePos[1] * 4 + 15) / 16) * 2 + 2;

            continue;
        }
    }

OUT1:
    HIGO_Free(pRleData);
    pRleData = NULL;

    return ret;
} /*lint !e818 */

HI_S32 BMP_NoRle_Decode(const BMP_DECODER_S *pBmpDec, HI_U8 *pDecData)
{
    HI_S32 ret;
    HI_U32 CopyLen;
    HI_BOOL EndFlag;
    HI_U32 uNeedReadSize;
    HI_S32 sHeight;
    //struct timeval Begin,End;
    //HI_U32 EscapeTime;

    ret = HIGO_ADP_IOSeek(pBmpDec->hStream, IO_POS_SET, (HI_S32)(pBmpDec->FileHeader.bfOffBits));
    if (HI_SUCCESS != ret)
    {
        return ret;
    }
    uNeedReadSize = pBmpDec->InfoHeader.biSizeImage;
    if(0 == uNeedReadSize)
    {
        sHeight = pBmpDec->InfoHeader.biHeight;
        if(0 > sHeight)
            sHeight = -sHeight;
        uNeedReadSize = (HI_U32)((pBmpDec->InfoHeader.biWidth * sHeight * pBmpDec->InfoHeader.biBitCount)/8);
    }

    ret = HIGO_ADP_IORead(pBmpDec->hStream, pDecData, uNeedReadSize, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < pBmpDec->InfoHeader.biSizeImage))
    {
        return ret;
    }

    return HI_SUCCESS;
} /*lint !e818 */

HI_S32 BMP_ParseFileHeader(IO_HANDLE hStream, HIGO_BITMAPFILEHEADER *pFileHeader)
{
    HI_S32 ret;
    HI_U8 Bytes[4];
    HI_U32 CopyLen, Reserved;
    HI_BOOL EndFlag;

    /** FileType */
    ret = HIGO_ADP_IORead(hStream, Bytes, 2, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < 2))
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pFileHeader->bfType = Bytes[0] | (Bytes[1] << 8);

    /** FileSize */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < BMP_DWORD_LEN))
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pFileHeader->bfSize = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** Reserver Validation */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < BMP_DWORD_LEN))
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    Reserved = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);
    if (0 != Reserved)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pFileHeader->bfReserved1 = pFileHeader->bfReserved2 = 0;

    /** OffBits */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < BMP_DWORD_LEN))
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pFileHeader->bfOffBits = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    return HI_SUCCESS;
}

HI_S32 BMP_ParseInfoHeader(IO_HANDLE hStream, HIGO_BITMAPINFOHEADER *pInfoHeader)
{
    HI_S32 ret;
    HI_U8 Bytes[4];
    HI_U32 CopyLen;
    HI_BOOL EndFlag;

    /** 可根据HeaderSize的取值判断BMP文件版本 */

    /** 0x0Ch - BMP Version 2(Window2.x OS/2 1.x)
         0x28h - BMP Version 3(Windows3.1, NT)
         0xF0h - OS/2 2.x
         0x6C - BMP Version 4(Windows 95)*/
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    pInfoHeader->biSize = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);
    if (pInfoHeader->biSize != 0x28) /** 仅支持BMP Version 3 */
    {
				HIGO_ADP_SetError(HI_FAILURE);
        return HI_FAILURE;
    }

    /** ImageWidth */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biWidth = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** ImageHeight为正表示负向位图 为负表示正向位图 */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);
        return HI_FAILURE;
    }

    pInfoHeader->biHeight = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** Planes 总为1 */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_WORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biPlanes = Bytes[0] | (Bytes[1] << 8);
    if (1 != pInfoHeader->biPlanes)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    /** BitCount */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_WORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biBitCount = Bytes[0] | (Bytes[1] << 8);

    /** Compression 0-不压缩 1- RLE 8  2-RLE 4 3-Bitfields */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biCompression = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** ImageSize */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biSizeImage = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** HResolution */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biXPelsPerMeter = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** VResolution */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biYPelsPerMeter = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** Colors */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biClrUsed = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    /** Colors Important */
    ret = HIGO_ADP_IORead(hStream, Bytes, BMP_DWORD_LEN, &CopyLen, &EndFlag);
    if (HI_SUCCESS != ret)
    {
		HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    pInfoHeader->biClrImportant = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | (Bytes[3] << 24);

    return HI_SUCCESS;
}

HI_S32 BMP_ParseFile(IO_HANDLE hStream, BMP_DECODER_S *pDecoder)
{
    HI_S32 ret;

    /** hStream */
    pDecoder->hStream = hStream;

    /** 读取FileHeader */
    ret = BMP_ParseFileHeader(hStream, &(pDecoder->FileHeader));
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    /** 读取InfoHeader */
    ret = BMP_ParseInfoHeader(hStream, &(pDecoder->InfoHeader));
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/** 从BMP文件中提取调色板数据 */
HI_S32 BMP_GetPalette(const BMP_DECODER_S *pBmpDec, HI_PALETTE Palette)
{
    HI_S32 ret;
    HI_U32 ColorUsed, i;
    HI_U8 Bytes[4];
    HI_U32 CopyLen;
    HI_BOOL EndFlag;

    if (pBmpDec->InfoHeader.biBitCount > 8)
    {
        return HI_SUCCESS;
    }

    if (0 == pBmpDec->InfoHeader.biClrUsed)
    {
        ColorUsed = 1 << pBmpDec->InfoHeader.biBitCount;
    }
    else
    {
        ColorUsed = pBmpDec->InfoHeader.biClrUsed;
    }

    ret = HIGO_ADP_IOSeek(pBmpDec->hStream, IO_POS_SET,
                          (HI_S32)(pBmpDec->InfoHeader.biSize + BMP_FILEHEADER_LEN));
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    for (i = 0; i < ColorUsed; i++)
    {
        ret = HIGO_ADP_IORead(pBmpDec->hStream, Bytes, 4, &CopyLen, &EndFlag);
        if ((HI_SUCCESS != ret) || (CopyLen < 4))
        {
            return HI_FAILURE;
        }

        /** Bytes[4]在BMP中为保留位  此处扩展为Alpha位 设为0xFF */
        Palette[i] = Bytes[0] | (Bytes[1] << 8) | (Bytes[2] << 16) | ((HI_U32)0xFF << 24);
    }

    return HI_SUCCESS;
} /*lint !e818 */

HI_S32 BMP_CreateDecoder(DEC_HANDLE *pBmpDec, const HIGO_DEC_ATTR_S *pSrcDesc)
{
    HI_S32 ret;
    IO_HANDLE hStream;
    IO_DESC_S stIODesc;
    BMP_DECODER_S *pBmpDecoder;

    /**分配解码器实例空间 */
    pBmpDecoder = (BMP_DECODER_S*)HIGO_Malloc(sizeof(BMP_DECODER_S));
    if (HI_NULL == pBmpDecoder)
    {
        return HIGO_ERR_NOMEM;
    }

    HIGO_MemSet(pBmpDecoder, 0, sizeof(BMP_DECODER_S));

    /**创建BMP文件句柄, 用以屏蔽BMP码流以文件或内存形式的区别 */
    stIODesc.IoInfo.MemInfo.pAddr  = pSrcDesc->SrcInfo.MemInfo.pAddr;
    stIODesc.IoInfo.MemInfo.Length = pSrcDesc->SrcInfo.MemInfo.Length;

    ret = HIGO_ADP_IOCreate(&hStream, &stIODesc);
    if (HI_SUCCESS != ret)
    {
        goto ERR1;
    }

    /** 解析BMP文件或码流 初始化解码器 */
    ret = BMP_ParseFile(hStream, pBmpDecoder);
    if (HI_SUCCESS != ret)
    {
        goto ERR2;
    }

    *pBmpDec = (DEC_HANDLE)pBmpDecoder;
    return HI_SUCCESS;
ERR2:
    ret |= HIGO_ADP_IODestroy(hStream);

ERR1:
    if (HI_NULL != pBmpDecoder)
    {
        HIGO_Free(pBmpDecoder);
        pBmpDecoder = HI_NULL;
    }

    return ret;
} /*lint !e818 */

HI_S32 BMP_DestroyDecoder(DEC_HANDLE BmpDec)
{
    HI_S32 ret;
    BMP_DECODER_S *pBmpDecoder = (BMP_DECODER_S*)BmpDec;

    HIGO_ASSERT(HI_NULL != pBmpDecoder);

    /** 关闭IO Stream */
    ret = HIGO_ADP_IODestroy(pBmpDecoder->hStream);

    /** 释放Decoder */
    HIGO_Free(pBmpDecoder);
    pBmpDecoder = HI_NULL;

    return ret;
}

HI_S32 BMP_ResetDecoder(DEC_HANDLE BmpDec)
{
    return HI_SUCCESS;
}

HI_S32 BMP_DecCommInfo(DEC_HANDLE BmpDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo)
{
    BMP_DECODER_S *pBmpDec = (BMP_DECODER_S*)BmpDec;

    HIGO_ASSERT(HI_NULL != pBmpDec);
    HIGO_ASSERT(HI_NULL != pPrimaryInfo);

    pPrimaryInfo->Count     = 1;
    pPrimaryInfo->ImgType   = HIGO_DEC_IMGTYPE_BMP;
    pPrimaryInfo->ScrWidth  = (HI_U32)(pBmpDec->InfoHeader.biWidth);
    pPrimaryInfo->ScrHeight = (HI_U32)abs(pBmpDec->InfoHeader.biHeight);
    pPrimaryInfo->IsHaveBGColor = HI_FALSE;

    return HI_SUCCESS;
}

#define IS_565_ColorMask(Mask) \
    (0x1F == Mask[8] && 0x00 == Mask[9] && 0x00 == Mask[10] && 0x00 == Mask[11] \
     && 0xE0 == Mask[4] && 0x07 == Mask[5] && 0x00 == Mask[6] && 0x00 == Mask[7] \
     && 0x00 == Mask[0] && 0xF8 == Mask[1] && 0x00 == Mask[2] && 0x00 == Mask[3])
#define IS_555_ColorMask(Mask) \
    (0x1F == Mask[8] && 0x00 == Mask[9] && 0x00 == Mask[10] && 0x00 == Mask[11] \
     && 0xE0 == Mask[4] && 0x03 == Mask[5] && 0x00 == Mask[6] && 0x00 == Mask[7] \
     && 0x00 == Mask[0] && 0x7C == Mask[1] && 0x00 == Mask[2] && 0x00 == Mask[3])
#define IS_888_ColorMask(Mask) \
    (0xFF == Mask[8] && 0x00 == Mask[9] && 0x00 == Mask[10] && 0x00 == Mask[11] \
     && 0x00 == Mask[4] && 0xFF == Mask[5] && 0x00 == Mask[6] && 0x00 == Mask[7] \
     && 0x00 == Mask[0] && 0x00 == Mask[1] && 0xFF == Mask[2] && 0x00 == Mask[3])

/** 16位 32位属于Windows NT下的BMP图像 */
/** A Windown NT BMP file will always have a Compression value of 3 */
HIGO_PF_E PixFmt_Of_NtBmp(const BMP_DECODER_S *pBmpDec)
{
    HI_S32 ret;
    HI_U8 Bytes[12];
    HI_U32 CopyLen;
    HI_BOOL EndFlag;

    ret = HIGO_ADP_IOSeek(pBmpDec->hStream, IO_POS_SET,
                          (HI_S32)(pBmpDec->InfoHeader.biSize + BMP_FILEHEADER_LEN));
    if (HI_SUCCESS != ret)
    {
        return HIGO_PF_BUTT;
    }

    ret = HIGO_ADP_IORead(pBmpDec->hStream, Bytes, 12, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != ret) || (CopyLen < 3))
    {
        return HIGO_PF_BUTT;
    }

    /** 存在特例 */
    if (pBmpDec->InfoHeader.biCompression == 0)
    {
        if (16 == pBmpDec->InfoHeader.biBitCount)
        {
            return HIGO_PF_0555;
        }
        else if (32 == pBmpDec->InfoHeader.biBitCount)
        {
	            return HIGO_PF_8888;
        }
    }

    /** 565 */
    if (IS_565_ColorMask(Bytes))
    {
        return HIGO_PF_565;
    }

    /** 555 */
    if (IS_555_ColorMask(Bytes))
    {
        return HIGO_PF_0555;
    }

    /** 888 */
    if (IS_888_ColorMask(Bytes))
    {
	          return HIGO_PF_0888;

    }

    /** unsupported this version */
    return HIGO_PF_BUTT;
} /*lint !e818 */

HIGO_PF_E PixFmt_Of_32BitBmp(const BMP_DECODER_S *pBmpDec)
{
    HI_S32 ret;
    HI_U8 Bytes[12];
    HI_U32 CopyLen;
    HI_BOOL EndFlag;

    if (0 == pBmpDec->InfoHeader.biCompression) /** BI_RGB */
    {
        return HIGO_PF_0888;
    }
    else if (3 == pBmpDec->InfoHeader.biCompression)/** BI_BITFIELDS */
    {
        ret = HIGO_ADP_IOSeek(pBmpDec->hStream, IO_POS_SET,
                              (HI_S32)(pBmpDec->InfoHeader.biSize + BMP_FILEHEADER_LEN));
        if (HI_SUCCESS != ret)
        {
            return HIGO_PF_BUTT;
        }

        ret = HIGO_ADP_IORead(pBmpDec->hStream, Bytes, 12, &CopyLen, &EndFlag);
        if ((HI_SUCCESS != ret) || (CopyLen < 3))
        {
            return HIGO_PF_BUTT;
        }

        /** 888 */
        if (IS_888_ColorMask(Bytes))
        {
            return HIGO_PF_0888;
        }

        /** unsupported this version */
        return HIGO_PF_BUTT;
    }

    return HIGO_PF_BUTT;
} /*lint !e818 */

// 

/***************************************************************************************
* func          : BMP_GetPixelFmt
* description   : CNcomment: 获取BMP的像素格式 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID BMP_GetPixelFmt(const BMP_DECODER_S *pBmpDec, HIGO_PF_E *pFormat)
{

    HIGO_ASSERT(HI_NULL != pBmpDec);
    HIGO_ASSERT(HI_NULL != pFormat);

    switch (pBmpDec->InfoHeader.biBitCount)
    {
	    /** Window 3.x BMP file **/
	    case 1:
	        *pFormat = HIGO_PF_CLUT1;
	        break;
	    case 4:
	        *pFormat = HIGO_PF_CLUT4;
	        break;
	    case 8:
	        *pFormat = HIGO_PF_CLUT8;
	        break;
	    case 24:
	        *pFormat = HIGO_PF_0888;
	        break;
	    /** Window NT BMP file **/
	    case 16:
	    case 32:
	        *pFormat = PixFmt_Of_NtBmp(pBmpDec);
	        break;
	    default:
	        *pFormat = HIGO_PF_BUTT;
    }
	
    return;
	
}
HI_S32 BMP_DecImgInfo(DEC_HANDLE BmpDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo)
{
    BMP_DECODER_S *pBmpDec = (BMP_DECODER_S*)BmpDec;

    HIGO_ASSERT(HI_NULL != pBmpDec);
    HIGO_ASSERT(HI_NULL != pImgInfo);
    pImgInfo->OffSetX = pImgInfo->OffSetY = 0;
    pImgInfo->Width  = (HI_U32)pBmpDec->InfoHeader.biWidth;
    pImgInfo->Height = (HI_U32)abs(pBmpDec->InfoHeader.biHeight);
    pImgInfo->Alpha = 255;
    pImgInfo->IsHaveKey = HI_FALSE;
    BMP_GetPixelFmt(pBmpDec, &(pImgInfo->Format));
    pImgInfo->DelayTime = 0;
    pImgInfo->DisposalMethod = 0;

    return HI_SUCCESS;
}


/***************************************************************************************
* func          : BMP_DecImgData
* description   : CNcomment: 解码bmp图片数据 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 BMP_DecImgData(DEC_HANDLE BmpDec, HI_U32 Index, HIGO_SURFACE_S *pSurface)
{

    HI_S32 ret;
    HI_U32 i,DstPitch, SrcPitch, Width, Height;
    HI_U8 *pDstData, *pDstLine,*pSrcData, *pSrcLine;
    HIGO_PF_E PixFmt;
    BMP_DECODER_S *pBmpDec = (BMP_DECODER_S*)BmpDec;
	HI_U32 SrcLen = 0 ;
    HI_PIXELDATA pData;
    HI_COLOR *Palatte   = NULL;
	HI_U32 j = 0;
	HI_U8 *pDstPos = NULL;
	HI_U8 *pSrcPos = NULL;

    HIGO_ASSERT(HI_NULL != pBmpDec);
    
    /**
     ** 从MMZ上分配空间 
     **/
    Width  = (HI_U32)(pBmpDec->InfoHeader.biWidth);
    Height = (HI_U32)abs( pBmpDec->InfoHeader.biHeight);
	
    BMP_GetPixelFmt(pBmpDec, &PixFmt);
    if(HIGO_PF_BUTT == PixFmt)
    {
        return HI_FAILURE;
    }

	/** 分配内存，要要防止TDE操作还没有完成*/
	(HI_VOID)Surface_LockSurface((HIGO_HANDLE)pSurface, pData);
    DstPitch = pData[0].Pitch;
    pDstData = (HI_U8*)pData[0].pData;
	(HI_VOID)Surface_UnlockSurface((HIGO_HANDLE)pSurface);

    SrcPitch = ((Width * pBmpDec->InfoHeader.biBitCount + 31) / 32) * 4;
    SrcLen = MAX((Height * SrcPitch),(pBmpDec->InfoHeader.biSizeImage));

    pSrcData = (HI_U8*)HIGO_MMZ_Malloc(SrcLen);
    if (HI_NULL == pSrcData)
    {
        HIGO_ERROR("dec bmp no mem\n", HIGO_ERR_NOMEM);
        return HIGO_ERR_NOMEM;
    }
   
    HIGO_MemSet(pDstData, 0, Height * DstPitch);
    HIGO_MemSet(pSrcData, 0, SrcLen);

    /** 获取源图像数据 */
    if (1 == pBmpDec->InfoHeader.biCompression)
    {
        ret = BMP_Rle8_Decode(pBmpDec, pSrcData);
    }
    else if (2 == pBmpDec->InfoHeader.biCompression)
    {
        ret = BMP_Rle4_Decode(pBmpDec, pSrcData);
    }
    else
    {
        ret = BMP_NoRle_Decode(pBmpDec, pSrcData);
    }

    if (HI_SUCCESS != ret)
    {
        goto ERR2;
    }
    /** 转换为目标图像数据 */
    for (i = 0; i < Height; i++)
    {
	        /** 计算目标地址 */
	        if (Height > 0)  /** 负向图像 */
	        {
	            pDstLine = pDstData + ((Height - 1) - i) * DstPitch;
	        }
	        else/** 正向图像 */
	        {
	            pDstLine = pDstData + i * DstPitch;
	        }

	        /** 计算源地址 */
	        pSrcLine = pSrcData + i * SrcPitch;

	        if (pBmpDec->InfoHeader.biBitCount == 24)
	        {
		        /** 24位Bmp SrcPitch与DstPitch不等 */
	            #ifdef RGB24    
	           		HIGO_MemCopy(pDstLine, pSrcLine, SrcPitch);
	            #else
	                pSrcPos = pSrcLine;
		            pDstPos = pDstLine;
		            for (j = 0; j < Width; j++)
		            {
		                HIGO_MemCopy(pDstPos, pSrcPos, 3);
		                pDstPos[3] = 0;
		                pDstPos += 4;
		                pSrcPos += 3;
		            }
	            #endif
	        }
            else if (pBmpDec->InfoHeader.biBitCount == 32)
            {
                pSrcPos = pSrcLine;
                pDstPos = pDstLine;
                for (j = 0; j < Width; j++)
                {
                    HIGO_MemCopy(pDstPos, pSrcPos, 4);
                    pDstPos[3] = 0xff;
                    pDstPos += 4;
                    pSrcPos += 4;
                }
            }
            else
            {
                HIGO_MemCopy(pDstLine, pSrcLine, SrcPitch);
            }	        
	}

    /** 填充调色板数据 */
	Palatte  = HIGO_Malloc(sizeof(HI_U32) * MAX_PALETTE_COLOR_SIZE);
	if(NULL == Palatte)
	{
		goto ERR2;
	}
    if (pBmpDec->InfoHeader.biBitCount <= 8)
    {
        ret = BMP_GetPalette(pBmpDec, Palatte);
        if (HI_SUCCESS != ret)
        {
            goto ERR2;
        }
        (HI_VOID)Surface_SetSurfacePalette((HIGO_HANDLE)pSurface, Palatte);
    }

    HIGO_MMZ_Free(pSrcData);

    return HI_SUCCESS;

ERR2:
	if(NULL != Palatte)
	{
		HIGO_Free(Palatte);
		Palatte = NULL;
	}
	
    HIGO_MMZ_Free(pSrcData);

	return HI_FAILURE;

}

#endif
