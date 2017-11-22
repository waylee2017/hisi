/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_bmp.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/
//#define SUPPORT_BMP_ENCODE /** debug **/

#ifdef SUPPORT_BMP_ENCODE


/*********************************add include here******************************/
#include <linux/kernel.h> 
#include <linux/module.h> 
#include <linux/fs.h> 
#include <asm/uaccess.h> 
#include <linux/mm.h> 


#include "hi_go.h"
#include "hi_go_errno.h"
#include "higo_common.h"
#include "higo_adp_sys.h"


/*****************************************************************************/


/***************************** Macro Definition ******************************/

#define WININFOHEADERSIZE     40
#define BI_RGB                 0
#define SIZEOF_BMFH           14
#define SIZEOF_BMIH           40

#define MAKEWORD(low, high) ((HI_U16)(((HI_U8)(low)) | (((HI_U16)((HI_U8)(high))) << 8)))

#define HIGO_Fwrite     fp->f_op->write
#define HIGO_FILE       struct file
#define HIGO_FOpen      filp_open
#define HIGO_FClose     filp_close

/*************************** Structure Definition ****************************/
struct _MYBITMAP
{
    HI_U8  depth;
    HI_U32 w;
    HI_U32 h;
    HI_U32 stride;
    HI_U32 size;
    HI_U8* bits;
};

typedef struct BITMAPFILEHEADER
{
    HI_U16 bfType;
    HI_U32 bfSize;
    HI_U16 bfReserved1;
    HI_U16 bfReserved2;
    HI_U32 bfOffBits;
} BITMAPFILEHEADER;

typedef struct WINBMPINFOHEADER  /* size: 40 */
{
    HI_U32 biSize;
    HI_U32 biWidth;
    HI_U32 biHeight;
    HI_U16 biPlanes;
    HI_U16 biBitCount;
    HI_U32 biCompression;
    HI_U32 biSizeImage;
    HI_U32 biXPelsPerMeter;
    HI_U32 biYPelsPerMeter;
    HI_U32 biClrUsed;
    HI_U32 biClrImportant;
} WINBMPINFOHEADER;

typedef struct GAL_Color
{
    HI_U8 r;
    HI_U8 g;
    HI_U8 b;
    HI_U8 a;
} GAL_Color;

typedef struct _MYBITMAP MYBITMAP, * PMYBITMAP;

/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/


/******************************* API realize *****************************/


/***************************************************************************************
* func          : pixel2rgb
* description   : CNcomment: 只支持1555 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static void pixel2rgb (HI_COLOR pixel,GAL_Color* color,HI_S32 depth)
{
    color->r = (HI_U8)((pixel & 0x7C00) >> 7) | 0x07;
    color->g = (HI_U8)((pixel & 0x03E0) >> 2) | 0x07;
    color->b = (HI_U8)((pixel & 0x001F) << 3) | 0x07;
    return;
}

static void bmpGetHighCScanline(const HI_U8* bits,
                                HI_U8*       scanline,
                                HI_S32       pixels,
                                HI_S32       bpp,
                                HI_S32       depth)
{
    HI_S32 i;
    HI_COLOR c;
    GAL_Color color;

    for (i = 0; i < pixels; i++)
    {
        //c = *((HI_COLOR*)bits);
        c = bits[0] | (bits[1] << 8);

        pixel2rgb (c, &color, depth);
        *(scanline) = color.b;
        *(scanline + 1) = color.g;
        *(scanline + 2) = color.r;

        bits += bpp;
        scanline += 3;
    }
}



/***************************************************************************************
* func          : save_mybmp_bmp
* description   : CNcomment: 将数据写到bmp文件中 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32  save_mybmp_bmp(struct file* fp, const MYBITMAP* bmp)
{
    HI_U8* scanline = NULL;
    HI_S32 i, bpp;
    HI_S32 scanlinebytes;

    BITMAPFILEHEADER bmfh;
    WINBMPINFOHEADER bmih;

    HIGO_MemSet (&bmfh, 0, sizeof (BITMAPFILEHEADER));
    bmfh.bfType = MAKEWORD ('B', 'M');
    bmfh.bfReserved1 = 0;
    bmfh.bfReserved2 = 0;

    HIGO_MemSet(&bmih, 0, sizeof (WINBMPINFOHEADER));
    bmih.biSize   = (HI_U32)(WININFOHEADERSIZE);
    bmih.biWidth  = (HI_U32)(bmp->w);
    bmih.biHeight = (HI_U32)(bmp->h);
    bmih.biPlanes = 1;
    bmih.biCompression = BI_RGB;

    bpp = (bmp->depth) >> 3;
    switch (bpp)
    {
	    case 2:
	    {
	        scanlinebytes = (HI_S32)(bmih.biWidth * 3);
	        scanlinebytes = (HI_S32)(((HI_U32)(scanlinebytes + 3) >> 2) << 2);
			
	        if (!(scanline = (HI_U8 *)HIGO_Malloc((HI_U32)scanlinebytes)))
	        {
	            HIGO_SetError(HI_FAILURE);
	            return HI_FAILURE;
	        }
	        HIGO_MemSet(scanline, 0, (HI_U32)scanlinebytes);

	        bmih.biSizeImage = (HI_U32)(bmih.biHeight * (HI_U32)scanlinebytes);
	        bmfh.bfOffBits   = SIZEOF_BMFH + SIZEOF_BMIH;
	        bmfh.bfSize      = bmfh.bfOffBits + bmih.biSizeImage;
	        bmih.biBitCount  = 24;
			
	        fp->f_op->write (fp, (char*)&bmfh.bfType,          sizeof(HI_U16), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmfh.bfSize,          sizeof(HI_U32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmfh.bfReserved1,     sizeof(HI_U16), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmfh.bfReserved2,     sizeof(HI_U16), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmfh.bfOffBits,       sizeof(HI_U32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biSize,          sizeof(HI_U32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biWidth,         sizeof(HI_S32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biHeight,        sizeof(HI_S32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biPlanes,        sizeof(HI_U16), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biBitCount,      sizeof(HI_U16), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biCompression,   sizeof(HI_U32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biSizeImage,     sizeof(HI_U32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biXPelsPerMeter, sizeof(HI_S32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biYPelsPerMeter, sizeof(HI_S32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biClrUsed,       sizeof(HI_U32), &fp->f_pos);
	        fp->f_op->write (fp, (char*)&bmih.biClrImportant,  sizeof(HI_U32), &fp->f_pos);

	        for (i = (HI_S32)bmp->h - 1; i >= 0; i--)
	        {
	            bmpGetHighCScanline (bmp->bits + i * bmp->stride, scanline,bmp->w, bpp, bmp->depth);
	            fp->f_op->write(fp, (char*)scanline, sizeof(HI_S8)*scanlinebytes, &fp->f_pos);
	        }

	        HIGO_Free(scanline);
	        break;
	    }
	    default:
	        break;
    }

    return HI_SUCCESS;
	
}

static HI_S32 SaveMyBitmapToFile (const PMYBITMAP my_bmp, const HI_S8* spFileName)
{
    HI_S32 save_ret;
    HIGO_FILE *fp = NULL;

    if (!(fp = HIGO_FOpen((HI_CHAR *)spFileName, O_RDWR|O_APPEND, 0644)))
    {
        return HI_FAILURE;
    }
    save_ret = save_mybmp_bmp(fp, my_bmp);

	HIGO_FClose(fp,NULL); 
	
    return save_ret;
}

static HI_S32 SaveBitmapDataToFile (HI_U8 *      pBitmapData,
                                    HI_U32       PixelFormat,
                                    HI_U32       Width,
                                    HI_U32       Height,
                                    HI_U32       Stride,
                                    const HI_S8* file_name)
{
    MYBITMAP myBitmap;

    if ((NULL == pBitmapData)
        || (NULL == file_name))
    {
        HIGO_SetError(HI_FAILURE);
        return HI_FAILURE;
    }

    if ((0 == Width) || (0 == Height))
    {
        HIGO_SetError(HI_FAILURE);
        return HI_FAILURE;
    }

    if ((0 == Stride) || (Stride < Width))
    {
        HIGO_SetError(HI_FAILURE);
        return HI_FAILURE;
    }

    switch (PixelFormat)
    {
    case HIGO_PF_1555:
    {
        myBitmap.depth = 16;
        break;
    }
    default:
    {
        HIGO_SetError(HIGO_ERR_UNSUPPORTED);
        return HIGO_ERR_UNSUPPORTED;
    }
    }

    myBitmap.w = Width;
    myBitmap.h = Height;
    myBitmap.stride = Stride;
    myBitmap.size = myBitmap.h * Stride;
    myBitmap.bits = pBitmapData;

    return SaveMyBitmapToFile (&myBitmap, file_name);
}


/***************************************************************************************
* func          : CalCuLateName
* description   : CNcomment: 设置要保存的文件路径 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 CalCuLateName(HI_CHAR *pFileName)
{

	static HI_S32 s32Cnt = 0;

    snprintf(pFileName, 200, "/home/stb/bin/mce-kernel-%d.bmp",s32Cnt);
	
    return HI_SUCCESS;
}


/***************************************************************************************
* func          : HI_GO_Surface2Bmp
* description   : CNcomment: 保存bmp文件 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_GO_Surface2Bmp(HI_HANDLE Surface, const HI_RECT *pRect)
{
    HI_S32 ret = HI_SUCCESS;
    HI_HANDLE DstSurface;
    HIGO_BLTOPT_S BlitOpt;
    HI_CHAR FileName[200];
    HI_PIXELDATA pData;
    HI_U32 Width, Height;
    HI_RECT Rect, RectOut;

    HIGO_MemSet(&BlitOpt, 0, sizeof(HIGO_BLTOPT_S));

    /** 指针为空默认为Surface大小 **/
    ret = HI_GO_GetSurfaceSize(Surface, (HI_S32 *)&Width, (HI_S32 *)&Height);
    if (ret != HI_SUCCESS)
    {
        HIGO_SetError(ret);
        return ret;
    }

    /** 参数判断,重新计算区域 **/
    if (HI_NULL == pRect)
    {
        RectOut.x = 0;
        RectOut.y = 0;
        RectOut.w = Width;
        RectOut.h = Height;
    }
    else
    {
        HI_REGION Region1, Region2;
		HI_REGION RegionOut = {0};
        Rect.x = 0;
        Rect.y = 0;
        Rect.w = Width;
        Rect.h = Height;

        RECT2REGION(Rect, Region1);
        RECT2REGION((*pRect), Region2);
       
        REGION2RECT(RectOut, RegionOut);
    }

    /** 创建临时Surface **/
    ret = HI_GO_CreateSurface(RectOut.w, RectOut.h, HIGO_PF_1555, &DstSurface);
    if (HI_SUCCESS != ret)
    {
        HIGO_SetError(ret);
        return ret;
    }

    /** 进行数据搬移*/
    ret = HI_GO_Blit(Surface, &RectOut, DstSurface, NULL, &BlitOpt);
    if (HI_SUCCESS != ret)
    {
        HIGO_SetError(ret);
        goto err;
    }

    /** 计算文件名称 **/
    ret = CalCuLateName(FileName);
    if (HI_SUCCESS != ret)
    {
        HIGO_SetError(ret);
        goto err;
    }

    /** 进行BMP编码*/
    ret = HI_GO_LockSurface(DstSurface, pData);
    if (HI_SUCCESS != ret)
    {
        HIGO_SetError(ret);
        goto err;
    }

    ret = SaveBitmapDataToFile((HI_U8 *)pData[0].pData, HIGO_PF_1555, RectOut.w, RectOut.h, pData[0].Pitch, (HI_S8*)FileName);
    if (HI_SUCCESS != ret)
    {
        HIGO_SetError(ret);
        goto err1;
    }

    (HI_VOID)HI_GO_UnlockSurface(DstSurface);

    /** 释放资源*/
    (HI_VOID)HI_GO_FreeSurface(DstSurface);
    return HI_SUCCESS;
err1:
    (HI_VOID)HI_GO_UnlockSurface(DstSurface);

err:

    /** 释放资源*/
    (HI_VOID)HI_GO_FreeSurface(DstSurface);
    return ret;
}

#endif/** SUPPORT_BMP_ENCODE **/
