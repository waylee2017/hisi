#include "adp_png.h"

#ifdef HIGO_PNG_SUPPORT
#include "png.h"
#include "higo_common.h"
#include "higo_adp_sys.h"
#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifdef HIGO_PNG_SUPPORT
/***************************** Macro Definition ******************************/

#define MEM_IO_SUPPORT 1

//lint -e601 -e10 -e40 -e522 -e1055 -e830 -e534 -e746 -e63 -e1013 -e64
/*************************** Structure Definition ****************************/
typedef struct _PNG_DEC
{
#if MEM_IO_SUPPORT
    IO_HANDLE hStream;
#else
    FILE *pFile;
#endif
    higo_png_structp pPng;
    higo_png_infop   pInfo;
} PNG_DEC_S;

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
#if MEM_IO_SUPPORT
void PNG_Read(higo_png_structp higo_png_ptr, higo_png_bytep data, higo_png_size_t length)
{
    HI_S32 Ret;
    HI_U32 CopyLen;
    HI_BOOL EndFlag;

    if (higo_png_ptr == NULL)
    {
        return;
    }

    Ret = HIGO_ADP_IORead((IO_HANDLE)(higo_png_ptr->io_ptr), (HI_VOID*)data, length, &CopyLen, &EndFlag);
    if ((HI_SUCCESS != Ret) || (CopyLen != length))
    {
        higo_png_error(higo_png_ptr, (const HI_CHAR *)"Read Error");
    }

    return;
}

#endif

/** pixel format 8888 */
HI_VOID PNG_Cvt_8888(const PNG_DEC_S *pPngDec)
{
    HI_S32 ColorType, BitDepth;
    higo_png_structp pPng = pPngDec->pPng;
    higo_png_infop pInfo = pPngDec->pInfo;

    ColorType = higo_png_get_color_type(pPng, pInfo);
    BitDepth = higo_png_get_bit_depth(pPng, pInfo);

    /** bitcount->8 */
    if (ColorType == PNG_COLOR_TYPE_PALETTE)
    {
        higo_png_set_expand(pPng);
    }

    if ((ColorType == PNG_COLOR_TYPE_GRAY) && (BitDepth < 8))
    {
        (HI_VOID)higo_png_set_expand(pPng);
    }

    if (higo_png_get_valid(pPng, pInfo, PNG_INFO_tRNS))
    {
        higo_png_set_expand(pPng);
    }

    if (BitDepth == 16)
    {
        //higo_png_set_swap(pPng);
        higo_png_set_strip_16(pPng);
    }

    /** GRAY->RGB */
    if ((ColorType == PNG_COLOR_TYPE_GRAY)
        || (ColorType == PNG_COLOR_TYPE_GRAY_ALPHA))
    {
        higo_png_set_gray_to_rgb(pPng);
    }

    /** RGB->RGBA */

    //higo_png_set_filler(pPng, 0xff, PNG_FILLER_AFTER);
    higo_png_set_add_alpha(pPng, 0xff, PNG_FILLER_AFTER);

    /** RGBA->BGRA */
    higo_png_set_bgr(pPng);
#if 0
    /** Gamma Correction */
    HI_DOUBLE FileGamma, ScreenGamma;

    ScreenGamma = 2.2; /* A good guess for a  PC monitor in a bright office or a dim room */
    if (higo_png_get_gAMA(pPng, pInfo, &FileGamma))
    {
        higo_png_set_gamma(pPng, ScreenGamma, FileGamma);
    }
#endif


    (HI_VOID)higo_png_read_update_info(pPng, pInfo);

    return;
} /*lint !e818 */

HI_VOID PNG_Get_BkgdColor(const PNG_DEC_S *pPngDec, HI_BOOL *pExist, HI_COLOR *pColor)
{
    HI_U8 Red, Green, Blue;
    higo_png_color_16p pBackground;
    higo_png_structp pPng = pPngDec->pPng;
    higo_png_infop pInfo = pPngDec->pInfo;

    /* setjmp() must be called in every function that calls a PNG-reading
     * libpng function */

    if (setjmp(higo_png_jmpbuf(pPng)))
    {
        (HI_VOID)higo_png_destroy_read_struct(&pPng, &pInfo, NULL);
        return;
    }

    if (!higo_png_get_valid(pPng, pInfo, PNG_INFO_bKGD))
    {
        *pExist = HI_FALSE;
        return;
    }

    if (!higo_png_get_bKGD(pPng, pInfo, &pBackground))
    {
        *pExist = HI_FALSE;
        return;
    }

    /** bitdepth has been convert to 8 so*/
    Red     = (HI_U8)pBackground->red;
    Green   = (HI_U8)pBackground->green;
    Blue    = (HI_U8)pBackground->blue;
    *pExist = HI_TRUE;
    *pColor = ((HI_U32)0xFF << 24) | (Red << 16) | (Green << 8) | Blue;

    return;
} /*lint !e818 */
HI_S32 HIGO_ADP_PngGetActualSize(DEC_HANDLE PngDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo)
{
    HIGO_DEC_IMGINFO_S ImgInfo;
    higo_png_infop pInfo;
    PNG_DEC_S *pPngDec = (PNG_DEC_S*)PngDec;
    higo_png_structp pPng;
    HI_S32 ret;

    pPng  = pPngDec->pPng;
    pInfo = pPngDec->pInfo;
    
    ret = (HI_S32)HIGO_ADP_PngDecImgInfo(PngDec, (HI_U32)Index, &ImgInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("dec imginfo error\n", ret);
        return ret;
    }

    pSurInfo->Width = (HI_S32)ImgInfo.Width;
    pSurInfo->Height = (HI_S32)ImgInfo.Height;
    pSurInfo->PixelFormat = ImgInfo.Format;
    pSurInfo->Pitch[0] = (HI_U32)higo_png_get_rowbytes(pPng, pInfo);
    return HI_SUCCESS;
}

HI_S32 HIGO_ADP_PngCreateDecoder(DEC_HANDLE *pPngDec, const HIGO_DEC_ATTR_S *pSrcDesc)
{
    PNG_DEC_S *pstPngDec;
    higo_png_structp pPng;
    higo_png_infop pInfo;

    if ((HI_NULL == pPngDec) || (HI_NULL == pSrcDesc))
    {
   	    HIGO_ADP_SetError(HI_FAILURE);
        return HI_FAILURE;
    }
    /** allocate memory for decode instance*/
    pstPngDec = (PNG_DEC_S*)HIGO_Malloc(sizeof(PNG_DEC_S));
    if (HI_NULL == pstPngDec)
    {
	    HIGO_ADP_SetError(HI_FAILURE);    
        return HI_FAILURE;
    }

    /** initial png decode instance */
#if MEM_IO_SUPPORT
    /**create decode instance handle */
    IO_DESC_S stIODesc;
    IO_HANDLE hStream;
    HI_S32 ret;

    stIODesc.IoInfo.MemInfo.pAddr  = pSrcDesc->SrcInfo.MemInfo.pAddr;
    stIODesc.IoInfo.MemInfo.Length = pSrcDesc->SrcInfo.MemInfo.Length;

    ret = HIGO_ADP_IOCreate(&hStream, &stIODesc);
    if (HI_SUCCESS != ret)
    {
   	    HIGO_ADP_SetError(HI_FAILURE);
        goto ERR1;
    }
    pstPngDec->hStream = hStream;
	
#endif

    pPng = higo_png_create_read_struct((const HI_CHAR *)PNG_LIBPNG_VER_STRING, NULL, NULL, NULL);
    if (HI_NULL == pPng)
    {
	    HIGO_ADP_SetError(HI_FAILURE);    
        goto ERR2;
    }

    pInfo = higo_png_create_info_struct(pPng);
    if (HI_NULL == pInfo)
    {
	    HIGO_ADP_SetError(HI_FAILURE);    
        goto ERR3;
    }

    pstPngDec->pPng  = pPng;
    pstPngDec->pInfo = pInfo;

    /** read png file info*/

    // TODO:think about when needed to call setjmp
    if (setjmp(higo_png_jmpbuf(pPng)))
    {
	    HIGO_ADP_SetError(HI_FAILURE);    
        goto ERR3;
    }

    /** setup the read function */
#if MEM_IO_SUPPORT
    (HI_VOID)higo_png_set_read_fn(pPng, (higo_png_voidp)hStream, PNG_Read);
#else
    higo_png_init_io(pPng, pFile);
#endif

    (HI_VOID)higo_png_read_info(pPng, pInfo);
    PNG_Cvt_8888(pstPngDec);

    *pPngDec = (DEC_HANDLE)pstPngDec;
    return HI_SUCCESS;

ERR3:
    if (HI_NULL == pInfo)
    {
        (HI_VOID)higo_png_destroy_read_struct(&pPng, NULL, NULL);
    }
    else
    {
        (HI_VOID)higo_png_destroy_read_struct(&pPng, &pInfo, NULL);
    }

ERR2:
#if MEM_IO_SUPPORT
    (HI_VOID)HIGO_ADP_IODestroy(hStream);
#endif
ERR1:
    HIGO_Free(pstPngDec);
    pstPngDec = HI_NULL;

    return HI_FAILURE;
} /*lint !e818 */

HI_S32 HIGO_ADP_PngDestroyDecoder(DEC_HANDLE PngDec)
{
    PNG_DEC_S *pPngDec = (PNG_DEC_S*)PngDec;

    if (HI_NULL == pPngDec)
    {
        return HI_FAILURE;
    }

#if MEM_IO_SUPPORT
    HI_S32 Ret;
    Ret = HIGO_ADP_IODestroy(pPngDec->hStream);
    if (HI_SUCCESS != Ret)
    {
        return HI_FAILURE;
    }
#endif


    if (pPngDec->pPng && pPngDec->pInfo)
    {
        (HI_VOID)higo_png_destroy_read_struct(&(pPngDec->pPng), &(pPngDec->pInfo), HI_NULL);
        pPngDec->pPng  = HI_NULL;
        pPngDec->pInfo = HI_NULL;
    }
    HIGO_Free(pPngDec);
    return HI_SUCCESS;
}

HI_S32 HIGO_ADP_PngResetDecoder(DEC_HANDLE PngDec)
{
    return HI_SUCCESS;
}

HI_S32 HIGO_ADP_PngDecCommInfo(DEC_HANDLE PngDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo)
{
    PNG_DEC_S *pPngDec = (PNG_DEC_S*)PngDec;
    higo_png_structp pPng;
    higo_png_infop pInfo;

    if (HI_NULL == pPngDec)
    {
        return HI_FAILURE;
    }

    pPng  = pPngDec->pPng;
    pInfo = pPngDec->pInfo;

    if (setjmp(higo_png_jmpbuf(pPng)))
    {
        return HI_FAILURE;
    }

    pPrimaryInfo->ScrWidth  = (HI_U32)higo_png_get_image_width(pPng, pInfo);
    pPrimaryInfo->ScrHeight = (HI_U32)higo_png_get_image_height(pPng, pInfo);
    PNG_Get_BkgdColor(pPngDec, &(pPrimaryInfo->IsHaveBGColor), &(pPrimaryInfo->BGColor));
    pPrimaryInfo->Count   = 1;
    pPrimaryInfo->ImgType = HIGO_DEC_IMGTYPE_PNG;

    return HI_SUCCESS;
}

HI_S32 HIGO_ADP_PngDecImgInfo(DEC_HANDLE PngDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo)
{
    PNG_DEC_S *pPngDec = (PNG_DEC_S*)PngDec;
    higo_png_structp pPng;
    higo_png_infop pInfo;

    if ((HI_NULL == pPngDec) || (HI_NULL == pImgInfo))
    {
        return HI_FAILURE;
    }

    pPng  = pPngDec->pPng;
    pInfo = pPngDec->pInfo;

    if (setjmp(higo_png_jmpbuf(pPng)))
    {
        return HI_FAILURE;
    }

    pImgInfo->OffSetX = 0;
    pImgInfo->OffSetY = 0;
    pImgInfo->Width  = (HI_U32)higo_png_get_image_width(pPng, pInfo);
    pImgInfo->Height = (HI_U32)higo_png_get_image_height(pPng, pInfo);
    pImgInfo->Alpha = 0xFF;
    pImgInfo->IsHaveKey = HI_FALSE;
    pImgInfo->Format = HIGO_PF_8888;
    pImgInfo->DelayTime = 0;
    pImgInfo->DisposalMethod = (HI_U32)higo_png_get_rowbytes(pPng, pInfo);

    return HI_SUCCESS;
}

HI_S32 HIGO_ADP_PngDecImgData(DEC_HANDLE PngDec, HI_U32 Index, HIGO_SURFACE_S *pSurface)
{
    PNG_DEC_S *pPngDec = (PNG_DEC_S*)PngDec;
    higo_png_structp pPng;
    higo_png_infop pInfo;
    HI_U32 Pitch, Height, Width, i;
    HI_U8 *pData = HI_NULL, **ppLines = HI_NULL;
    HI_PIXELDATA pPixelData;

    HIGO_ASSERT(pPngDec != NULL);
    HIGO_ASSERT(pSurface != NULL);    
   
    pPng  = pPngDec->pPng;
    pInfo = pPngDec->pInfo;

    if (setjmp(higo_png_jmpbuf(pPng)))
    {
        goto ERR1;
    }

    /** request image memory  */
    Pitch  = (HI_U32)higo_png_get_rowbytes(pPng, pInfo);
    Width  = (HI_U32)higo_png_get_image_width(pPng, pInfo);
    Height = (HI_U32)higo_png_get_image_height(pPng, pInfo);


    (HI_VOID)Surface_LockSurface((HIGO_HANDLE)pSurface, pPixelData);
    pData = (HI_U8*)pPixelData[0].pData;
    
    (HI_VOID)Surface_UnlockSurface((HIGO_HANDLE)pSurface);    
    /** request line address memory, and initial it */
    ppLines = (HI_U8**)HIGO_Malloc(Height * sizeof(HI_U8 *));
    if (HI_NULL == ppLines)
    {
        goto ERR1;
    }

    for (i = 0; i < Height; i++)
    {
        ppLines[i] = pData + i * Pitch;
    }

    /* read image data */
    (HI_VOID)higo_png_read_image(pPng, ppLines);

    /** free resource*/
    HIGO_Free(ppLines);
    ppLines = NULL;

    return HI_SUCCESS;

ERR1:
#if 0
    if (HI_NULL != ppLines)
    {
        HIGO_Free(ppLines);
        ppLines = NULL;
    }
#endif
    return HIGO_ERR_DEPEND_PNG;
}
#if 0
HI_S32 HIGO_ADP_PngDecExtendData(DEC_HANDLE PngDec, HIGO_DEC_EXTENDTYPE_E DecExtendType, HI_VOID **pData,
                                 HI_U32 *pLength)
{
    return HI_FAILURE;
} /*lint !e818 */

HI_S32 HIGO_ADP_PngReleaseDecExtendData(DEC_HANDLE PngDec, HIGO_DEC_EXTENDTYPE_E DecExtendType, HI_VOID *pData)
{
    return HI_FAILURE;
} /*lint !e818 */
#endif
//lint   +e550  +e831
//lint +e64  +e1013  +e63  +e746  +e534  +e830  +e1055  +e522  +e40  +e10  +e601
#endif

#ifdef __cplusplus
}
#endif
