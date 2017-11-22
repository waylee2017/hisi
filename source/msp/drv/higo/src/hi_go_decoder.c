//lint -wlib(0)
#include "higo_common.h"
#include "hi_go_decoder.h"
#include "higo_surface.h"
#include "higo_blit.h"
#include "higo_adp_sys.h"

#ifdef HIGO_GIF_SUPPORT
#include "higo_gif.h"
#endif

#ifdef HIGO_BMP_SUPPORT
#include "higo_decbmp.h"
#endif

#ifdef HIGO_PNG_SUPPORT
#include "adp_png.h"
#endif

#ifdef HIGO_JPEG_SUPPORT
#include "adp_jpeg.h"
#endif 

/***************************** Macro Definition ******************************/
//lint -e605
/** max picture count in a file  */
//#define HIGO_DEC_MAX_PICCOUNT 1000
#define HEAD_MAX_LENGTH 10

/*************************** Structure Definition ****************************/


/** sturcture about decoder instance  */
typedef struct _HIGO_DEC_INSTANCE_S
{
    HIGO_DEC_IMGTYPE_E ImgType; /**< deocder image type */
    HI_HANDLE          Decoder; /**<decoder target , after adapt  for example GIF or jpeg decoder instance */
    HI_S32 (*CreateDecoder)(HI_HANDLE * pDecoder, const HIGO_DEC_ATTR_S * pSrcDesc); /**< create instance in adaptive layer */
    HI_S32 (*DestroyDecoder)(HI_HANDLE Decoder); /**< destroy instance on adaptive layer */
    HI_S32 (*ResetDecoder)(HI_HANDLE Decoder); /**< restart instance on adaptive layer  */
    HI_S32 (*DecCommInfo)(HI_HANDLE Decoder, HIGO_DEC_PRIMARYINFO_S * pPrimaryInfo); /**<decoder picture info */
    HI_S32 (*DecImgInfo)(HI_HANDLE Decoder, HI_U32 Index, HIGO_DEC_IMGINFO_S * pImgInfo); /**< decoder index picture info */
    HI_S32 (*DecImgData)(HI_HANDLE Decoder, HI_U32 Index, HIGO_SURFACE_S * pSurface); /**< decoder image data  */
    HI_S32 (*GetActualSize)(HI_HANDLE Decoder, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo); /**< get the size which decoder actual can support */
} HIGO_DEC_INSTANCE_S;  

static HI_S32  s_InitDecCount = 0;

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/


HI_S32 HIGO_ADP_InitDecoder(HI_VOID)
{
#ifdef HIGO_JPEG_SUPPORT
    return HIGO_ADP_JpegInit();
#else
    return HI_SUCCESS;
#endif
}

HI_S32 HIGO_ADP_DeInitDecoder(HI_VOID)
{
#ifdef HIGO_JPEG_SUPPORT
    return HIGO_ADP_JpegDeInit();
#else
    return HI_SUCCESS;
#endif
}

/**
 \brief  decode de initial 
 \param[in] HI_VOID
 \param[out] none
 \retval none
 \return none
 */
HI_S32 HIGO_DeinitDecoder(HI_VOID)
{
     /** avoid has not do initial */
    if (UN_INIT_STATE == s_InitDecCount)
    {
        return HIGO_ERR_NOTINIT;
    }

    /** exit if has do initial */
    if (s_InitDecCount != CLEAR_INIT_STATE)
    {   
        s_InitDecCount--;
        return HI_SUCCESS;
    }
    (HI_VOID)HIGO_ADP_DeInitDecoder();
    s_InitDecCount--;
    return HI_SUCCESS;
}
/**
 \brief decoder initial 
 \param[in] HI_VOID
 \param[out] none
 \retval none
 \return none
 */
HI_S32 HIGO_InitDecoder(HI_VOID)
{
        HI_S32 s32Ret ;
    /** re initial and just remember the times  */
    if (UN_INIT_STATE != s_InitDecCount)
    {
        s_InitDecCount++;
        return HI_SUCCESS;
    }
    s32Ret = HIGO_ADP_InitDecoder();
    if(HI_SUCCESS != s32Ret)
    {
        HIGO_SetError(HI_FAILURE);
        return HI_FAILURE;
    }
    s_InitDecCount++;

    return HI_SUCCESS;
}



/***************************************************************************************
* func          : DEC_GetSrcType
* description   : CNcomment: 获取图片类型 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 DEC_GetSrcType(const HIGO_DEC_ATTR_S *pSrcDesc, HIGO_DEC_IMGTYPE_E * pImgType)
{


	/** is 10 bytes enougch **/
    HI_CHAR HeadInfo[HEAD_MAX_LENGTH];

    /** parser input source and get header info **/
    if (HI_NULL_PTR == pSrcDesc->SrcInfo.MemInfo.pAddr)
    {
        HIGO_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }
    HIGO_MemCopy(HeadInfo, pSrcDesc->SrcInfo.MemInfo.pAddr, HEAD_MAX_LENGTH);

#ifdef HIGO_GIF_SUPPORT
    if (HIGO_Strncmp(HeadInfo, (const HI_CHAR *)"GIF", 3) == 0)
    {
        if (HIGO_Strncmp((HeadInfo + 3), (const HI_CHAR *)"87a", 3) == 0 || HIGO_Strncmp((HeadInfo + 3), (const HI_CHAR *)"89a", 3) == 0)
        {
            *pImgType = HIGO_DEC_IMGTYPE_GIF;
            return HI_SUCCESS;
        }
    }
#endif

#ifdef HIGO_JPEG_SUPPORT
    if ((0xff == *((HI_U8*)HeadInfo)) && (0xD8 == *((HI_U8*)(HeadInfo + 1))))
    {
        *pImgType = HIGO_DEC_IMGTYPE_JPEG;
        return HI_SUCCESS;
    }
#endif

#ifdef HIGO_BMP_SUPPORT
    if ((0x42 == *((HI_U8*)HeadInfo)) && (0x4d == *((HI_U8*)(HeadInfo + 1))))
    {
        *pImgType = HIGO_DEC_IMGTYPE_BMP;
        return HI_SUCCESS;
    }
#endif

#ifdef HIGO_PNG_SUPPORT
    HI_U8 png_signature[8] = {137, 80, 78, 71, 13, 10, 26, 10};
    if (0 == HIGO_MemCmp(HeadInfo, png_signature, 8))
    {
        *pImgType = HIGO_DEC_IMGTYPE_PNG;
        return HI_SUCCESS;
    }
#endif

    HIGO_SetError(HIGO_ERR_INVIMAGETYPE);

    return HIGO_ERR_INVIMAGETYPE;
	
}; /*lint !e818 */


/***************************************************************************************
* func          : HI_GO_CreateDecoder
* description   : CNcomment: 创建解码器 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_GO_CreateDecoder(const HIGO_DEC_ATTR_S *pSrcDesc, HI_HANDLE *pDecoder)
{

    HIGO_DEC_INSTANCE_S *pDecInstance = HI_NULL_PTR;
    HIGO_DEC_IMGTYPE_E ImgType = HIGO_DEC_IMGTPYE_BUTT;
    HI_S32 Ret;

    /** check parameter  **/
    if ((HI_NULL_PTR == pSrcDesc) || (HI_NULL_PTR == pDecoder))
    {
        HIGO_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }
    if (UN_INIT_STATE == s_InitDecCount )
    {
        HIGO_SetError(HIGO_ERR_NOTINIT);
        return HIGO_ERR_NOTINIT;
    }
    /** get file type **/
    Ret = DEC_GetSrcType(pSrcDesc, &ImgType);
    if (Ret != HI_SUCCESS)
    {
        HIGO_SetError(Ret);
        return Ret;
    }
    
    /** create decoder instance **/
    pDecInstance = (HIGO_DEC_INSTANCE_S*)HIGO_Malloc(sizeof (HIGO_DEC_INSTANCE_S));
    if (HI_NULL_PTR == pDecInstance)
    {
        HIGO_SetError(HIGO_ERR_NOMEM);
        return HIGO_ERR_NOMEM;
    }
    HIGO_MemSet(pDecInstance, 0, sizeof (HIGO_DEC_INSTANCE_S));

    switch (ImgType)
    {
		#ifdef HIGO_GIF_SUPPORT
	    case HIGO_DEC_IMGTYPE_GIF:
	    {
	        pDecInstance->ImgType        = HIGO_DEC_IMGTYPE_GIF;
	        pDecInstance->CreateDecoder  = GIF_CreateDecoder; 
	        pDecInstance->DestroyDecoder = GIF_DestroyDecoder;
	        pDecInstance->ResetDecoder   = GIF_ResetDecoder;    
	        pDecInstance->DecCommInfo    = GIF_DecCommInfo;      
	        pDecInstance->DecImgInfo     = GIF_DecImgInfo;     
	        pDecInstance->DecImgData     = GIF_DecImgData;
	        pDecInstance->GetActualSize  = GIF_GetActualSize;
	        break;
	    }
		#endif

		#ifdef HIGO_JPEG_SUPPORT
	    case HIGO_DEC_IMGTYPE_JPEG:
	    {
	        pDecInstance->ImgType        = HIGO_DEC_IMGTYPE_JPEG;
	        pDecInstance->CreateDecoder  = HIGO_ADP_JPGCreateDecoder;
	        pDecInstance->DestroyDecoder = HIGO_ADP_JPGDestroyDecoder;
	        pDecInstance->ResetDecoder   = HIGO_ADP_JPGResetDecoder;
	        pDecInstance->DecCommInfo    = HIGO_ADP_JPGDecCommInfo;
	        pDecInstance->DecImgInfo     = HIGO_ADP_JPGDecImgInfo;
	        pDecInstance->DecImgData     = HIGO_ADP_JPGDecImgData;
	        pDecInstance->GetActualSize  = HIGO_ADP_JPGGetActualSize;
	        break;
	    }
		#endif

		#ifdef HIGO_BMP_SUPPORT
	    case HIGO_DEC_IMGTYPE_BMP:
	    {
	        pDecInstance->ImgType        = HIGO_DEC_IMGTYPE_BMP;
	        pDecInstance->CreateDecoder  = BMP_CreateDecoder;
	        pDecInstance->DestroyDecoder = BMP_DestroyDecoder;
	        pDecInstance->ResetDecoder   = BMP_ResetDecoder;
	        pDecInstance->DecCommInfo    = BMP_DecCommInfo;
	        pDecInstance->DecImgInfo     = BMP_DecImgInfo;
	        pDecInstance->DecImgData     = BMP_DecImgData;      
	        pDecInstance->GetActualSize  = BMP_GetActualSize;
	        break;
	    }
		#endif

		#ifdef HIGO_PNG_SUPPORT
	    case HIGO_DEC_IMGTYPE_PNG:
	    {
	        pDecInstance->ImgType        = HIGO_DEC_IMGTYPE_PNG;
	        pDecInstance->CreateDecoder  = HIGO_ADP_PngCreateDecoder;
	        pDecInstance->DestroyDecoder = HIGO_ADP_PngDestroyDecoder;
	        pDecInstance->ResetDecoder   = HIGO_ADP_PngResetDecoder;
	        pDecInstance->DecCommInfo    = HIGO_ADP_PngDecCommInfo;
	        pDecInstance->DecImgInfo     = HIGO_ADP_PngDecImgInfo;
	        pDecInstance->DecImgData     = HIGO_ADP_PngDecImgData;       
	        pDecInstance->GetActualSize  = HIGO_ADP_PngGetActualSize;
	        break;
	    }
		#endif

	    default:
	    {
	        HIGO_SetError(HIGO_ERR_INVSRCTYPE);
	        Ret = HIGO_ERR_INVSRCTYPE;
	        goto adpfailed;
	    }
    }

    HIGO_ASSERT(HI_NULL_PTR != pDecInstance->CreateDecoder);

    Ret = pDecInstance->CreateDecoder(&(pDecInstance->Decoder), pSrcDesc);
    if (HI_SUCCESS != Ret)
    {
        if (HIGO_ERR_NOMEM != Ret)
        {
            Ret = HIGO_ERR_INVIMGDATA;
        }

        HIGO_SetError(Ret);
        goto adpfailed;
    }

    *pDecoder =  (HI_HANDLE) pDecInstance;

    return HI_SUCCESS;
	
adpfailed:
    HIGO_Free(pDecInstance);
    pDecInstance = HI_NULL_PTR;
    return Ret;
	
}

HI_S32 HI_GO_DestroyDecoder(HI_HANDLE Decoder)
{
    HIGO_DEC_INSTANCE_S *pDecInstance = HI_NULL_PTR;

    pDecInstance = (HIGO_DEC_INSTANCE_S*)Decoder;
    /** destroy decoderinstance */
    HIGO_ASSERT(HI_NULL_PTR != pDecInstance->DestroyDecoder);
    (HI_VOID)pDecInstance->DestroyDecoder(pDecInstance->Decoder);
    HIGO_Free(pDecInstance);

    return HI_SUCCESS;
};
HI_S32 HI_GO_ResetDecoder(HI_HANDLE Decoder)
{
    HIGO_DEC_INSTANCE_S *pDecInstance = HI_NULL_PTR;
    
    pDecInstance = (HIGO_DEC_INSTANCE_S*)Decoder;
    /**restet decoder */
    HIGO_ASSERT(HI_NULL_PTR != pDecInstance->ResetDecoder);
    return pDecInstance->ResetDecoder(pDecInstance->Decoder);
}

HI_S32 HI_GO_DecCommInfo(HI_HANDLE Decoder, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo)
{
    HI_S32 Ret;
    HIGO_DEC_INSTANCE_S *pDecInstance = HI_NULL_PTR;
    HIGO_DEC_IMGINFO_S ImgInfo;
    /** check parameter*/
    if (HI_NULL_PTR == pPrimaryInfo)
    {
        HIGO_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    pDecInstance = (HIGO_DEC_INSTANCE_S*)Decoder;
    /**decoder common info*/
    HIGO_ASSERT(HI_NULL_PTR != pDecInstance->DecCommInfo);
    Ret = pDecInstance->DecCommInfo(pDecInstance->Decoder, pPrimaryInfo);
    if (HI_SUCCESS != Ret)
    {
        HIGO_SetError(Ret);
        return Ret;
    }

    /**  if width and teigth of screen is 0 ,get the first picture's info*/
    if (( pPrimaryInfo->ScrHeight == 0 )&&(pPrimaryInfo->ScrWidth == 0))
    {
        Ret = pDecInstance->DecImgInfo(pDecInstance->Decoder, 0, &ImgInfo);
        if (HI_SUCCESS != Ret)
        {
            HIGO_SetError(Ret);
            return Ret;
        }
        pPrimaryInfo->ScrWidth = ImgInfo.Width;
        pPrimaryInfo->ScrHeight = ImgInfo.Height;
    }
    return HI_SUCCESS;
}

HI_S32 HI_GO_DecImgInfo(HI_HANDLE Decoder, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo)
{
    HI_S32 Ret;
    HIGO_DEC_INSTANCE_S *pDecInstance = HI_NULL_PTR;
    HIGO_DEC_PRIMARYINFO_S PrimaryInfo;

    /**check parameter*/
    if (HI_NULL_PTR == pImgInfo)
    {
        HIGO_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    pDecInstance = (HIGO_DEC_INSTANCE_S*)Decoder;
    HIGO_ASSERT(HI_NULL_PTR != pDecInstance->DecCommInfo);
    
    Ret = pDecInstance->DecCommInfo(pDecInstance->Decoder, &PrimaryInfo);
    if (HI_SUCCESS != Ret)
    {
        HIGO_SetError(Ret);
        return Ret;
    }

    if (Index >= PrimaryInfo.Count)
    {
        HIGO_SetError(HIGO_ERR_INVINDEX);
        return HIGO_ERR_INVINDEX;
    }


    /**decoder index image info*/
    HIGO_ASSERT(HI_NULL_PTR != pDecInstance->DecImgInfo);
    Ret = pDecInstance->DecImgInfo(pDecInstance->Decoder, Index, pImgInfo);
    if (HI_SUCCESS != Ret)
    {
        HIGO_SetError(Ret);
        return Ret;
    }

    if (pDecInstance->ImgType == HIGO_DEC_IMGTYPE_GIF)
    {
        HIGO_ASSERT(HIGO_PF_8888 == pImgInfo->Format); /**< GIF type  output format can only be HIGO_PF_8888 */
    }
    else if (pDecInstance->ImgType == HIGO_DEC_IMGTYPE_JPEG)
    {
        //HIGO_ASSERT((HIGO_PF_YUV420 == pImgInfo->Format) || (HIGO_PF_YUV422 == pImgInfo->Format));
    }

    // TODO:BMP PNG how to confirm BMP format

    return HI_SUCCESS;
}

HI_S32 HIGO_DecImgDataWithScale(const HIGO_DEC_INSTANCE_S *pDecInstance, HI_U32 Index, HIGO_HANDLE InSurface, 
                                            const HIGO_DEC_IMGATTR_S *pImgAttr,  HIGO_HANDLE *pOutSurface, HIGO_DEC_IMGTYPE_E ImgType)
{
    HIGO_HANDLE TmpSurface = 0, DstSurface = 0;
    HIGO_SURINFO_S SurInfo = {0};
    HI_RECT SrcRect = {0};
    HIGO_DEC_IMGINFO_S ImgInfo;
    HIGO_BLTOPT2_S BlitOpt;

    HI_S32 ret;
    HI_RECT BSrcRect = {0}, BDstRect = {0};

    HIGO_MemSet(&BlitOpt, 0, sizeof(HIGO_BLTOPT2_S));
    /** allocate midddle layer buffer*/        
    /** calculate middle layer buffer size use target buffer*/
    SrcRect.w = (HI_S32)pImgAttr->Width;
    SrcRect.h = (HI_S32)pImgAttr->Height;
    HIGO_MemSet(&SurInfo, 0 , sizeof(HIGO_SURINFO_S));
    (HI_VOID)pDecInstance->GetActualSize(pDecInstance->Decoder, (HI_S32)Index, &SrcRect, &SurInfo);

    ret = HIGO_CreateSurface(&SurInfo, HIGO_MOD_DEC, &TmpSurface, 0);

    if (ret != HI_SUCCESS)
    {
        return ret;
    }


    /** allocate target buffer*/
    if (INVALID_HANDLE != InSurface)
    {
        /** set target buffer */
        DstSurface = InSurface;
    }
    else
    {
        /** HiGo allocate target buffer*/
        HIGO_MemSet(&SurInfo, 0 , sizeof(HIGO_SURINFO_S));
        SurInfo.Width =  (HI_S32)pImgAttr->Width;
        SurInfo.Height = (HI_S32)pImgAttr->Height;
        SurInfo.PixelFormat = pImgAttr->Format;
        ret = HIGO_CreateSurface(&SurInfo, HIGO_MOD_DEC, &DstSurface, 0);

        if (ret != HI_SUCCESS)
        {
            goto err0;
        }            
    } 
    /** start decoding */
    ret = pDecInstance->DecImgData(pDecInstance->Decoder, Index, (HIGO_SURFACE_S*)TmpSurface);
    if (ret != HI_SUCCESS)
    {
        goto  err1;
    }
    /** start scaling */
    (HI_VOID)Surface_GetSurfaceSize( TmpSurface, &(BSrcRect.w), &(BSrcRect.h));
    (HI_VOID)Surface_GetSurfaceSize( DstSurface, &(BDstRect.w), &(BDstRect.h)); 
    ret = Bliter_StretchBlit(TmpSurface, &BSrcRect, DstSurface, &BDstRect, &BlitOpt);
    if (ret != HI_SUCCESS)
    {
        goto  err1;
    }

    /** get index decode image info*/
    ret = pDecInstance->DecImgInfo(pDecInstance->Decoder, Index, &ImgInfo);
    if (HI_SUCCESS != ret)
    {
        goto  err1;        
    }

    /** set alpha value  */
    (HI_VOID)Surface_SetSurfaceAlpha(DstSurface, ImgInfo.Alpha);

    /** set colorkey attribute */
    if (HI_TRUE == ImgInfo.IsHaveKey)
    {
        (HI_VOID)Surface_SetSurfaceColorKey(DstSurface, ImgInfo.Key);
    }

    /** set Surface color palette  */


    HIGO_ASSERT(!IS_CLUT_FORMAT(pImgAttr->Format));

    /** freetemp urface*/
    HIGO_FreeSurface(TmpSurface);
    /**set output */
    if (INVALID_HANDLE == InSurface)
    {
        *pOutSurface =  DstSurface;   
    }

    return HI_SUCCESS;
err1:

    if (INVALID_HANDLE == InSurface)
    {
        HIGO_FreeSurface(DstSurface);
    }

err0:

    HIGO_FreeSurface(TmpSurface);

    return ret;
}

HI_S32 HIGO_DecImgData(const HIGO_DEC_INSTANCE_S *pDecInstance, HI_U32 Index, HIGO_HANDLE InSurface, 
                               const HIGO_DEC_IMGATTR_S *pImgAttr,  HIGO_HANDLE *pOutSurface, HIGO_DEC_IMGTYPE_E ImgType)
{
    HIGO_HANDLE DstSurface = 0;
    HIGO_SURINFO_S SurInfo;
    HIGO_DEC_IMGINFO_S ImgInfo;
    HI_S32 ret;
  
    if (INVALID_HANDLE != InSurface)
    {
        DstSurface = InSurface;
    }
    else
    {
        HIGO_MemSet(&SurInfo, 0 , sizeof(HIGO_SURINFO_S));
        SurInfo.Width =  (HI_S32)pImgAttr->Width;
        SurInfo.Height = (HI_S32)pImgAttr->Height;
        SurInfo.PixelFormat = pImgAttr->Format;

        ret = HIGO_CreateSurface(&SurInfo, HIGO_MOD_DEC, &DstSurface, 0);
		if (ret != HI_SUCCESS)
        {
            HIGO_ERROR("create surface failed\n", ret);
            return ret;
        }            
    }
    ret = pDecInstance->DecImgData(pDecInstance->Decoder, Index, (HIGO_SURFACE_S *)DstSurface);
    if (ret != HI_SUCCESS)
    {
        HIGO_ERROR("create surface failed\n", ret);
        goto err0;
    } 
    
    /** get index decoding image info*/
    ret = pDecInstance->DecImgInfo(pDecInstance->Decoder, Index, &ImgInfo);
    if (HI_SUCCESS != ret)
    {
        goto err0;        
    }

    /** set alpha value  */
    (HI_VOID)Surface_SetSurfaceAlpha(DstSurface, ImgInfo.Alpha);

    /** set colorkey attribute */
    if (HI_TRUE == ImgInfo.IsHaveKey)
    {
        (HI_VOID)Surface_SetSurfaceColorKey(DstSurface, ImgInfo.Key);
    }

    if (INVALID_HANDLE == InSurface)
    {
        *pOutSurface = DstSurface;
    }
    return HI_SUCCESS;
err0:

    if (INVALID_HANDLE == InSurface)
    {
        HIGO_FreeSurface(DstSurface);
    }
    return ret;
}

HI_S32 HI_GO_DecImgData(HI_HANDLE Decoder, HI_U32 Index, const HIGO_DEC_IMGATTR_S *pImgAttr, HI_HANDLE *pSurface)
{
    HI_S32 ret;
    HIGO_DEC_INSTANCE_S *pDecInstance = HI_NULL_PTR;
    HIGO_DEC_IMGINFO_S DecInfo;
    HIGO_HANDLE pOutSurface;
    HIGO_DEC_PRIMARYINFO_S PrimaryInfo = {0};
    HIGO_DEC_IMGATTR_S ExpImgAttr;
    
    /**check parameter */
    if (HI_NULL_PTR == pSurface)
    {
        HIGO_SetError(HIGO_ERR_NULLPTR);
        return HIGO_ERR_NULLPTR;
    }

    /** check param*/
    pDecInstance = (HIGO_DEC_INSTANCE_S *)Decoder;
    ret = pDecInstance->DecCommInfo(pDecInstance->Decoder, &PrimaryInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("get primaryinfo failed\n", ret);
        return ret;
    }

    if (Index >= PrimaryInfo.Count)
    {
        HIGO_ERROR("index outof range\n", HIGO_ERR_INVINDEX);
        return HIGO_ERR_INVINDEX;
    }
    
    ret = pDecInstance->DecImgInfo(pDecInstance->Decoder, Index, &DecInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("get imginfo failed\n", ret);
        return ret;
    }

    if (pImgAttr == NULL)
    {
        ExpImgAttr.Width = DecInfo.Width;
        ExpImgAttr.Height = DecInfo.Height;
        ExpImgAttr.Format = DecInfo.Format;
        
    }
    else
    {
        HIGO_MemCopy(&ExpImgAttr, pImgAttr, sizeof(HIGO_DEC_IMGATTR_S) );
    }

    /** decode imgdata */
    if ((DecInfo.Width != ExpImgAttr.Width) || (DecInfo.Height != ExpImgAttr.Height) || (DecInfo.Format != ExpImgAttr.Format))
    {
        ret = HIGO_DecImgDataWithScale(pDecInstance, Index, (HIGO_HANDLE)NULL, &ExpImgAttr, &pOutSurface, PrimaryInfo.ImgType);
    }
    else
    {
        ret = HIGO_DecImgData(pDecInstance, Index, (HIGO_HANDLE)NULL, &ExpImgAttr , &pOutSurface, PrimaryInfo.ImgType);
    }
    
    if (ret != HI_SUCCESS)
    {
        HIGO_ERROR("decode failed", ret);
        return ret;
    }
    /** capture the surface*/
    *pSurface = (HI_HANDLE)pOutSurface;
    return HI_SUCCESS;

}
HI_S32 HI_GO_DecImgToSurface(HI_HANDLE Decoder, HI_U32 Index, HI_HANDLE Surface)
{
    HI_S32 ret;
    HIGO_HANDLE pDecoder, pSurface;
    HI_S32 u32DstWidth, u32DstHeight;
    HIGO_PF_E DstPF;
    HI_U32 Bpp;
    HIGO_DEC_INSTANCE_S *pDecInstance = HI_NULL_PTR;
    HIGO_DEC_IMGINFO_S DecInfo;
    HIGO_DEC_IMGATTR_S ImgAttr = {0};
    HIGO_DEC_PRIMARYINFO_S PrimaryInfo= {0};

    pDecoder = Decoder;
    pSurface = Surface;
    pDecInstance = (HIGO_DEC_INSTANCE_S *)pDecoder;
    ret = pDecInstance->DecCommInfo(pDecInstance->Decoder, &PrimaryInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("get primaryinfo failed\n", ret);
        return ret;
    }

    if (Index >= PrimaryInfo.Count)
    {
        HIGO_ERROR("index outof range\n", HIGO_ERR_INVINDEX);
        return HIGO_ERR_INVINDEX;
    }
    
    (HI_VOID)Surface_GetSurfaceSize(pSurface, &u32DstWidth, &u32DstHeight);
    (HI_VOID)Surface_GetSurfacePixelFormat(pSurface, &DstPF, &Bpp);
    ret = pDecInstance->DecImgInfo(pDecInstance->Decoder, Index, &DecInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("get imginfo failed\n", ret);
        return ret;
    }
    
    ImgAttr.Format = DstPF;
    ImgAttr.Width = (HI_U32)u32DstWidth;
    ImgAttr.Height = (HI_U32)u32DstHeight;   
    if ((DecInfo.Width != (HI_U32)u32DstWidth) || (DecInfo.Height != (HI_U32)u32DstHeight) || (DecInfo.Format != DstPF))
    {        
        ret = HIGO_DecImgDataWithScale(pDecInstance, Index, pSurface, &ImgAttr, NULL, PrimaryInfo.ImgType);
    }
    else
    {
        ret = HIGO_DecImgData(pDecInstance, Index, pSurface, &ImgAttr , NULL, PrimaryInfo.ImgType);
    }

    return ret;
}
