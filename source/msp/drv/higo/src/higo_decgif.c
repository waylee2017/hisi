#include "hi_type.h"
#include "higo_common.h"
#include "higo_surface.h"
#include "higo_gif.h"
#include "higo_io.h"
#include "higo_adp_sys.h"
#include "higo_surface.h"

#ifdef HIGO_GIF_SUPPORT
//#define GIF_MAIN_FUNC
//#define GIF_PRINT_DBGINFO

#define GIF_MAX_IMAGE 128     /**< max image in  GIF  */
#define GIF_MAX_LWZ_BITS 12   /**< max bits of LWZ */

//#define GIF_INTERLACE 0x40
//#define GIF_LOCALCOLORMAP 0x80
//lint -e751
/**memory allocate mode  */
typedef enum _GIF_MALLOC_MEMORY
{
    GIF_MALLOC_SYS = 0, /**<use the way malloc*/
    GIF_MALLOC_HIGO,    /**< use the way umap*/
    GIF_MALLOC_BUTT
} GIF_MALLOC_MEMORY;
//lint +e751
//lint -e754
/**image extend part control block */
typedef struct
{
    HI_U8  active;           /**< flag of extension control block exsit  */
    HI_U8  disposalMethod;   /**<ignore  */
    HI_U8  userInputFlag;    /**flag of wait for user input */
    HI_U8  trsFlag;          /**< flag of transparence  */
    HI_U16 delayTime;        /**< delay time unit (10ms) */
    HI_U8  trsColorIndex;    /** transparence color index */
    HI_U8  reserved;         /**<resever for align */
} GIF_GCTRLEXT;

/**single picture info */
typedef struct
{
    HI_U32       dataindex;     /**< offset position of picture data in the file */
    HI_U16       imageLPos;     /**< margin of left */
    HI_U16       imageTPos;     /**<margin of top */
    HI_U16       imageWidth;    /**< image width */
    HI_U16       imageHeight;   
    HI_U8        lFlag;         /**< flag: is local color palette */
    HI_U8        interlaceFlag; /**< flag: is interlace */
    HI_U8        sortFlag;      /**< flag is  local color palette by priority */
    HI_U8        reserved;      /**< resever for align */
    HI_U32       lSize;         /**< size of local color palette */
    HI_U8 *      pColorTable;   /**< pointer for local color palette */
    HI_U8 *      dataBuf;       /**< pointer of image data buffer  */
    HI_U32       format;        /**< image output format  */
    GIF_GCTRLEXT ctrlExt;       /**< extension control block */
    HI_BOOL      bMPalate;      /**< flag  is  color palette modified*/
} GIF_IMAGE_INFO;

/**GIFglobal info */
typedef struct
{
    HI_U16 scrWidth;         
    HI_U16 scrHeight;        
    HI_U8  gFlag;            
    HI_U8  colorRes;      
    HI_U8  gSort;            
    HI_U8  BKColorIdx;     
    HI_U8  pixelAspectRatio; 
    HI_U8  reserved[3];      
    HI_U32 gSize;           
    HI_U8 *gColorTable;     
} GIF_GLOBAL_INFO;
//lint +e754
/**GIF structure about decoder instance */
typedef struct
{
    DEC_HANDLE      gifDecoder;                  /**decoder handle */
    IO_HANDLE       gifIo;                      /**< file handle*/
    HI_U32          gifVer;                     /**< GIF version */
    GIF_GLOBAL_INFO gifGlobalInfo;              /**< GIF global  */
    GIF_IMAGE_INFO  gifImageInfo[GIF_MAX_IMAGE]; /**< GIF frame info */
    HI_U32          gifImageCount;              /**< pictures counts contained in the GIF file*/
    /** variables used by LWZ */
    HI_S32  fresh;
    HI_S32  code_size;
    HI_S32  set_code_size;
    HI_S32  max_code;
    HI_S32  max_code_size;
    HI_S32  firstcode;
    HI_S32  oldcode;
    HI_S32  clear_code;
    HI_S32  end_code;
    HI_S32  table[2][(1 << GIF_MAX_LWZ_BITS)];
    HI_S32  stack[(1 << (GIF_MAX_LWZ_BITS)) * 2];
    HI_S32 *sp;
    HI_S32  ZeroDataBlock;
    HI_S32  curbit;
    HI_S32  lastbit;
    HI_S32  done;
    HI_S32  last_byte;
    HI_U8   buf[280];
} GIF_DECODER_INSTANCE;

/**GIF decode local functions */
static HI_S32	gif_CreateDecoder( DEC_HANDLE *pGifDec, const HIGO_DEC_ATTR_S *pSrcDesc );
static HI_S32	gif_DestroyDecoder(DEC_HANDLE GifDec);
static HI_S32	gif_ResetDecoder(DEC_HANDLE GifDec);
static HI_S32	gif_DecCommInfo(DEC_HANDLE GifDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo);
static HI_S32	gif_DecImgInfo(DEC_HANDLE GifDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo);
static HI_S32	gif_SetDecImgAttr(DEC_HANDLE GifDec, HI_U32 Index, const HIGO_DEC_IMGATTR_S *pImgAttr);
static HI_S32	gif_DecImgData(DEC_HANDLE GifDec, HI_U32 Index, HIGO_SURFACE_S *pSurface);
static HI_S32	gif_ReleaseDecImgData(DEC_HANDLE GifDec, HIGO_DEC_IMGDATA_S *pImgData);
static HI_VOID	gif_CleanInstance( GIF_DECODER_INSTANCE *pGifInstance );
static HI_S32	gif_AnalyseFile( GIF_DECODER_INSTANCE *pGifInstance );
static HI_S32	gif_GetFileType( GIF_DECODER_INSTANCE *pGifInstance );
static HI_S32	gif_GetGlobalInfo( GIF_DECODER_INSTANCE *pGifInstance );
static HI_S32	gif_GetImageInfo( GIF_DECODER_INSTANCE *pGifInstance );
static HI_S32	gif_GetDataBlock( GIF_DECODER_INSTANCE *pGifInstance, HI_U8 *buf );
static HI_S32	gif_GetCode( GIF_DECODER_INSTANCE *pGifInstance, HI_S32 code_size, HI_S32 flag );
static HI_S32	gif_LZWReadByte( GIF_DECODER_INSTANCE *pGifInstance, HI_S32 flag, HI_S32 input_code_size );
static HI_S32	gif_ExtractData( GIF_DECODER_INSTANCE *pGifInstance, HI_U32 image_index );
static HI_S32	gif_ReadFile( IO_HANDLE hFileIo, HI_U8 *pu8Addr, HI_U32 u32Len );
static HI_S32	gif_SeekFile( IO_HANDLE hFileIo, HI_S32 pos );
static HI_S32	gif_SeekOffFile( IO_HANDLE hFileIo, HI_S32 off );
static HI_S32	gif_GetPos( IO_HANDLE hFileIo, HI_U32 *pos );

//static HI_S32 gif_GetLen( IO_HANDLE hFileIo, HI_U32 *len );
static HI_VOID* gif_Malloc( HI_U32 flag, HI_U32 size );
static HI_VOID	gif_Free( HI_U32 flag, HI_VOID *pdata );

//static HI_S32   gif_DecHandleAlloc(IO_HANDLE* pHandle, HI_VOID* pAddr, HIGO_MOD_E Modle);
static HI_VOID* gif_DecGetInstance(DEC_HANDLE Handle, HIGO_MOD_E Modle);


#define GIF_READ(hFileIo, pu8Addr, u32Len) \
    do \
    { \
        HI_S32 io_ret; \
        io_ret = gif_ReadFile(hFileIo, pu8Addr, u32Len); \
        if (HI_SUCCESS != io_ret)\
        { \
            return io_ret; \
        } \
    } while (0)

#define GIF_SEEK(hFileIo, pos) \
    do \
    { \
        HI_S32 io_ret; \
        io_ret = gif_SeekFile(hFileIo, pos); \
        if (HI_SUCCESS != io_ret)\
        { \
            return io_ret; \
        } \
    } while (0)

#define GIF_SEEKOFF(hFileIo, off) \
    do \
    { \
        HI_S32 io_ret; \
        io_ret = gif_SeekOffFile(hFileIo, off); \
        if (HI_SUCCESS != io_ret)\
        { \
            return io_ret; \
        } \
    } while (0)

/*jummping line use in interlace */
static HI_S32 dpass[] = {
    8, 8, 4, 2
};
static HI_S32 restart[] = {
    0, 4, 2, 1, 32767
};

/**********************interface for decoder common part (B)**********************/

/**
 \brief create GIF decoder 
 \param[out] *pGifDec return decoder handle 
 \param[in] *pSrcDesc decoder attribute
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
HI_S32 GIF_CreateDecoder(DEC_HANDLE *pGifDec, const HIGO_DEC_ATTR_S *pSrcDesc)
{
    return (gif_CreateDecoder(pGifDec, pSrcDesc));
}

/**
 \brief  destroy GIF decoder 
 \param[in] GifDec decoder handle
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
HI_S32 GIF_DestroyDecoder(DEC_HANDLE GifDec)
{
    return (gif_DestroyDecoder(GifDec));
}

/**
 \brief reset decoder 
 \param[in] GifDec decoder handle
 \retval HI_SUCCESS 
 \retval HI_FAILURE
 \return HI_S32
 */
HI_S32 GIF_ResetDecoder(DEC_HANDLE GifDec)
{
    return (gif_ResetDecoder(GifDec));
}

/**
 \brief   get GIF global info
 \param[in] GifDec decode handle
 \param[out] *pPrimaryInfo pointer to  global info
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
HI_S32 GIF_DecCommInfo(DEC_HANDLE GifDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo)
{
    return (gif_DecCommInfo(GifDec, pPrimaryInfo));
}

/** return actual resoltion */
HI_S32 GIF_GetActualSize(DEC_HANDLE GifDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo)
{
    HIGO_DEC_IMGINFO_S ImgInfo;
    HI_S32 ret;

    
    ret = GIF_DecImgInfo(GifDec, (HI_U32)Index, &ImgInfo);
    if (HI_SUCCESS != ret)
    {
        HIGO_ERROR("dec imginfo error\n", ret);
        return ret;
    }

    pSurInfo->Width = (HI_S32)ImgInfo.Width;
    pSurInfo->Height = (HI_S32)ImgInfo.Height;
    pSurInfo->PixelFormat = ImgInfo.Format;
    pSurInfo->Pitch[0] = ((ImgInfo.Width + 63) / 64) * 64 * 4;
    return HI_SUCCESS;
}

/**
 \brief get the GIF image info
 \param[in] GifDec decoder handle
 \param[in] Index image index
 \param[out] *pImgInfo pointer for single image info
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
HI_S32 GIF_DecImgInfo(DEC_HANDLE GifDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo)
{
    return (gif_DecImgInfo(GifDec, Index, pImgInfo));
}

/**
 \brief set GIF attribute
 \param[in] GifDec decoder handle
 \param[in] Index image index
 \param[in] *pDecInputInfo attribute of single image
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
HI_S32 GIF_SetDecImgAttr(DEC_HANDLE GifDec, HI_U32 Index, const HIGO_DEC_IMGATTR_S *pImgAttr)
{
    return (gif_SetDecImgAttr(GifDec, Index, pImgAttr));
}


HI_S32 GIF_DecImgData(DEC_HANDLE GifDec, HI_U32 Index, HIGO_SURFACE_S *pSurface)
{
    return (gif_DecImgData(GifDec, Index, pSurface));
}


HI_S32 GIF_ReleaseDecImgData(DEC_HANDLE GifDec, HIGO_DEC_IMGDATA_S *pImgData)
{
    return (gif_ReleaseDecImgData(GifDec, pImgData));
}

/**********************interface function for decoder common part**********************/

/**
 \brief create GIF decoder
 \param[out] *pGifDec return GIF decoder handle
 \param[in] *pSrcDesc decoder attribute
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_CreateDecoder( DEC_HANDLE *pGifDec, const HIGO_DEC_ATTR_S *pSrcDesc )
{
    HI_S32 ret;
    IO_DESC_S gifIoInfo;
    DEC_HANDLE gifIo;    
    GIF_DECODER_INSTANCE *pGifInstance;

    gifIoInfo.IoInfo.MemInfo.pAddr  = pSrcDesc->SrcInfo.MemInfo.pAddr;
    gifIoInfo.IoInfo.MemInfo.Length = pSrcDesc->SrcInfo.MemInfo.Length;
  
    ret = HIGO_ADP_IOCreate(&gifIo, &gifIoInfo);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /**allocate memory for decoder instance */
    pGifInstance = (GIF_DECODER_INSTANCE *)gif_Malloc(GIF_MALLOC_SYS, sizeof(GIF_DECODER_INSTANCE));
    if (NULL == pGifInstance)
    {
        if (HI_SUCCESS != HIGO_ADP_IODestroy(gifIo))
        {
#ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("HIGO_ADP_IODestroy error!\n");
#endif
        }
        return HIGO_ERR_NOMEM;
    }


    *pGifDec = (DEC_HANDLE)pGifInstance;
#if 0
    ret = gif_DecHandleAlloc( pGifDec, pGifInstance, HIGO_MOD_COMM );
    if (HI_SUCCESS != ret)
    {
        gif_Free(GIF_MALLOC_SYS, pGifInstance);
        if (HI_SUCCESS != HIGO_ADP_IODestroy(gifIo))
        {
 #ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("HIGO_ADP_IODestroy error!\n");
 #endif
        }

        return HI_FAILURE;
    }
#endif


    HIGO_MemSet(pGifInstance, 0, sizeof(GIF_DECODER_INSTANCE));
    pGifInstance->gifDecoder = *pGifDec;
    pGifInstance->gifIo = gifIo;


    ret = gif_AnalyseFile( pGifInstance );
    if (HI_SUCCESS != ret)
    {
        gif_CleanInstance( pGifInstance );
        gif_Free(GIF_MALLOC_SYS, pGifInstance);
        (HI_VOID)HIGO_ADP_IODestroy(gifIo);
        return HI_FAILURE;
    }

    return HI_SUCCESS;
} /*lint !e818 */

/**
 \brief destroy GIF decoder
 \param[in] GifDec decoder handle
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_DestroyDecoder(DEC_HANDLE GifDec)
{
    GIF_DECODER_INSTANCE *pGifInstance;
    
    pGifInstance = (GIF_DECODER_INSTANCE*)
        gif_DecGetInstance(GifDec, HIGO_MOD_COMM);
    if (NULL == pGifInstance)
    {
        return HI_FAILURE;
    }
    if (HI_SUCCESS != HIGO_ADP_IODestroy(pGifInstance->gifIo))
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("HIGO_ADP_IODestroy error!\n");
#endif
    }
    gif_CleanInstance(pGifInstance);
    //Handle_Free(GifDec);
    gif_Free(GIF_MALLOC_SYS, pGifInstance);
    return HI_SUCCESS;
}

/**
 \brief reset GIF decoder
 \param[in] GifDec decoder handle
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_ResetDecoder(DEC_HANDLE GifDec)
{
    GIF_DECODER_INSTANCE *pGifInstance;

    pGifInstance = (GIF_DECODER_INSTANCE*)gif_DecGetInstance(GifDec, HIGO_MOD_COMM);
    if (NULL == pGifInstance)
    {
        return HI_FAILURE;
    }

    pGifInstance->fresh = 0;
    pGifInstance->set_code_size = 0;
    pGifInstance->code_size = 0;
    pGifInstance->max_code_size = 0;
    pGifInstance->max_code = 0;    
    pGifInstance->firstcode = 0;
    pGifInstance->oldcode = 0;
    pGifInstance->clear_code = 0;
    pGifInstance->end_code = 0;
    HIGO_MemSet(&pGifInstance->table[0][0], 0, 2 * (1 << GIF_MAX_LWZ_BITS) * 4);
    HIGO_MemSet(pGifInstance->stack, 0, 2 * (1 << GIF_MAX_LWZ_BITS) * 4);
    pGifInstance->sp = NULL;
    pGifInstance->ZeroDataBlock = 0;

    return HI_SUCCESS;
}

/**
 \brief get GIF global info
 \param[in] GifDec 
 \param[out] *pPrimaryInfo 
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_DecCommInfo(DEC_HANDLE GifDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo)
{
    GIF_DECODER_INSTANCE *pGifInstance;

    pGifInstance = (GIF_DECODER_INSTANCE*)gif_DecGetInstance(GifDec, HIGO_MOD_COMM);
    if (NULL == pGifInstance)
    {
        return HI_FAILURE;
    }

    pPrimaryInfo->Count = pGifInstance->gifImageCount;
    pPrimaryInfo->ImgType = HIGO_DEC_IMGTYPE_GIF;    
    pPrimaryInfo->ScrWidth  = pGifInstance->gifGlobalInfo.scrWidth;
    pPrimaryInfo->ScrHeight = pGifInstance->gifGlobalInfo.scrHeight;

    /** calculate global color */
    if ((pGifInstance->gifGlobalInfo.gFlag > 0) && (pGifInstance->gifGlobalInfo.gColorTable != NULL))
    {
        HI_U32 Index;

        pPrimaryInfo->IsHaveBGColor = HI_TRUE;
        Index = pGifInstance->gifGlobalInfo.BKColorIdx;
        pPrimaryInfo->BGColor = 0;

        /** red*/
        pPrimaryInfo->BGColor |= (pGifInstance->gifGlobalInfo.gColorTable[Index * 3 + 0] << 16);

        /** green*/
        pPrimaryInfo->BGColor |= (pGifInstance->gifGlobalInfo.gColorTable[Index * 3 + 1] << 8);

        /** blue*/
        pPrimaryInfo->BGColor |= pGifInstance->gifGlobalInfo.gColorTable[Index * 3 + 2];

        /** alpha*/
        pPrimaryInfo->BGColor |= 0xff000000;
    }
    else
    {
        pPrimaryInfo->IsHaveBGColor = HI_FALSE;
    }

    return HI_SUCCESS;
}

static HI_BOOL gif_IsKeyFlickPalate(HI_COLOR Color, HI_U32 KeyIndex, HI_U8 *pPalate, HI_U32 u32Num)
{
    HI_S32 Index;
    HI_U8 r, g, b;

    r = (Color & 0X00FF0000)>>16;
    g = (Color & 0X0000FF00)>>8;
    b = (Color & 0X000000FF); 
    
    for (Index = 0; Index < (HI_S32)u32Num; Index++)
    {
        /** take no attention to CKEY*/
        if ((HI_S32)KeyIndex == Index)
            continue;
        if ((r == pPalate[Index*3 + 2])&&(g == pPalate[Index*3 + 1])&&(b == pPalate[Index*3]))
            return HI_TRUE;
    }
        
    return HI_FALSE;
} /*lint !e818 */

static HI_S32 gif_DealConfickPalate(HI_U32 KeyIndex, HI_U8 *pPalate, HI_U32 u32Num)
{
    HI_COLOR KeyColor, RanColor = 0x00787878;
    
    KeyColor = ((pPalate[KeyIndex * 3]) | ((pPalate[KeyIndex * 3 + 1]) << 8) | ((pPalate[KeyIndex * 3 + 2])<<16));

    /** check is COLORKEY conflict*/
    if (HI_FALSE == gif_IsKeyFlickPalate (KeyColor, KeyIndex, pPalate, u32Num) )
    {
        /** no conflict*/
        return HI_SUCCESS;
    }
    
    for (;;)
    {
    /** check is COLORKEY conflict*/
        if (HI_TRUE == gif_IsKeyFlickPalate (RanColor, KeyIndex, pPalate, u32Num) )
        {
            /** get a rand color */
            RanColor += 0x10;
            continue;
        }
            
        /** change color palette*/        
        pPalate[KeyIndex*3]  = (HI_U8)(RanColor & 0x000000ff);
        pPalate[KeyIndex*3 + 1]  = (HI_U8)((RanColor & 0x0000ff00) >> 8);
        pPalate[KeyIndex*3 + 2]  = (HI_U8)((RanColor & 0x00ff0000) >> 16);        
        break;

    }
    return HI_SUCCESS;
}

/**
 \brief  get the image info which needed index
 \param[in] GifDec decoder handle
 \param[in] Index image index
 \param[out] *pImgInfo 
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_DecImgInfo(DEC_HANDLE GifDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo)
{
    GIF_DECODER_INSTANCE *pGifInstance;
    HI_U32 keyindex;

    pGifInstance = (GIF_DECODER_INSTANCE*)gif_DecGetInstance(GifDec, HIGO_MOD_COMM);
    if (NULL == pGifInstance)
    {
        return HI_FAILURE;
    }

    if (Index >= pGifInstance->gifImageCount)
    {
        return HI_FAILURE;
    }

    pImgInfo->OffSetX = pGifInstance->gifImageInfo[Index].imageLPos;
    pImgInfo->OffSetY = pGifInstance->gifImageInfo[Index].imageTPos;
    pImgInfo->Height = pGifInstance->gifImageInfo[Index].imageHeight;
    pImgInfo->Width  = pGifInstance->gifImageInfo[Index].imageWidth;
    pImgInfo->Alpha = 255;


    pImgInfo->IsHaveKey = HI_FALSE;
    pImgInfo->Key = 0;
    if (pGifInstance->gifImageInfo[Index].ctrlExt.active > 0)
    {
        if (pGifInstance->gifImageInfo[Index].ctrlExt.trsFlag > 0)
        {
            keyindex = (HI_U32)pGifInstance->gifImageInfo[Index].ctrlExt.trsColorIndex;
            if (pGifInstance->gifImageInfo[Index].lFlag > 0)
            {
                if (pGifInstance->gifImageInfo[Index].pColorTable == HI_NULL_PTR)
                    return HI_FAILURE;
                if (pGifInstance->gifImageInfo[Index].bMPalate == HI_FALSE)
                {
                    pGifInstance->gifImageInfo[Index].bMPalate = HI_TRUE;
                    (HI_VOID)gif_DealConfickPalate(keyindex, pGifInstance->gifImageInfo[Index].pColorTable, pGifInstance->gifImageInfo[Index].lSize);
                }
                /*red*/
                pImgInfo->Key |= (pGifInstance->gifImageInfo[Index].pColorTable[keyindex * 3 + 0] << 16);

                /*green*/
                pImgInfo->Key |= (pGifInstance->gifImageInfo[Index].pColorTable[keyindex * 3 + 1] << 8);

                /*blue*/
                pImgInfo->Key |= pGifInstance->gifImageInfo[Index].pColorTable[keyindex * 3 + 2];
            }
            else
            {
                if (pGifInstance->gifGlobalInfo.gColorTable == HI_NULL_PTR)
                    return HI_FAILURE;
                if (pGifInstance->gifImageInfo[Index].bMPalate == HI_FALSE)
                {
                    pGifInstance->gifImageInfo[Index].bMPalate = HI_TRUE;
                    (HI_VOID)gif_DealConfickPalate(keyindex, pGifInstance->gifGlobalInfo.gColorTable, pGifInstance->gifGlobalInfo.gSize);                    
                }


                /*red*/
                pImgInfo->Key |= (pGifInstance->gifGlobalInfo.gColorTable[keyindex * 3 + 0] << 16);

                /*green*/
                pImgInfo->Key |= (pGifInstance->gifGlobalInfo.gColorTable[keyindex * 3 + 1] << 8);

                /*blue*/
                pImgInfo->Key |= pGifInstance->gifGlobalInfo.gColorTable[keyindex * 3 + 2];


            }

            pImgInfo->Key |= 0xff000000;
            pImgInfo->IsHaveKey = HI_TRUE;
        }
    }

    pImgInfo->Format = (HIGO_PF_E)pGifInstance->gifImageInfo[Index].format;
    if (pGifInstance->gifImageInfo[Index].ctrlExt.active > 0)
    {
        pImgInfo->DelayTime = (HI_U32)pGifInstance->gifImageInfo[Index].ctrlExt.delayTime;
        pImgInfo->DisposalMethod = (HI_U32)pGifInstance->gifImageInfo[Index].ctrlExt.disposalMethod;        
    }
    else
    {
        pImgInfo->DelayTime = 0;
        pImgInfo->DisposalMethod = 0;        
    }

    return HI_SUCCESS;
}

/**
 \brief set GIF attribute
 \param[in] GifDec decoder handle
 \param[in] Index image index
 \param[in] *pDecInputInfo pointer for single image info
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_SetDecImgAttr(DEC_HANDLE GifDec, HI_U32 Index, const HIGO_DEC_IMGATTR_S *pImgAttr)
{
    GIF_DECODER_INSTANCE *pGifInstance;

    pGifInstance = (GIF_DECODER_INSTANCE*)gif_DecGetInstance(GifDec, HIGO_MOD_COMM);
    if (NULL == pGifInstance)
    {
        return HI_FAILURE;
    }

    if (Index >= pGifInstance->gifImageCount)
    {
        return HI_FAILURE;
    }

    /**now our solution can only support  RGB8888 and RGB888 */
    pGifInstance->gifImageInfo[Index].format = pImgAttr->Format;
    if (pGifInstance->gifImageInfo[Index].format != HIGO_PF_0888)
    {
        pGifInstance->gifImageInfo[Index].format = HIGO_PF_8888;
    }

    return HI_SUCCESS;
} /*lint !e818*/

/**
 \brief deocde the image 
 \param[in] GifDec 
 \param[in] Index 
 \param[out] *ImgInfo 
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
 //lint -e550
static HI_S32 gif_DecImgData(DEC_HANDLE GifDec, HI_U32 Index, HIGO_SURFACE_S *pSurface)
{
    HI_S32 ret;
    HI_U32 i, j, pitch, width, height, pixbytes, temp;
    GIF_DECODER_INSTANCE *pGifInstance;
    HI_U8 *pOutVirAddr, *pOutPhyAddr, *pImgBuf, *pCol;
    HI_PIXELDATA pData;
    pGifInstance = (GIF_DECODER_INSTANCE*)gif_DecGetInstance(GifDec, HIGO_MOD_COMM);
    if (NULL == pGifInstance)
    {
        return HI_FAILURE;
    }

    if (Index >= pGifInstance->gifImageCount)
    {
        return HI_FAILURE;
    }


    if (NULL == pGifInstance->gifImageInfo[Index].dataBuf)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("gif_ExtractData\n");
#endif
        ret = gif_ExtractData(pGifInstance, Index);
        if (HI_SUCCESS != ret)
        {
            return HI_FAILURE;
        }
    }

    height = pGifInstance->gifImageInfo[Index].imageHeight;
    width = pGifInstance->gifImageInfo[Index].imageWidth;
    //(HIGO_PF_E)pGifInstance->gifImageInfo[Index].format;
    if (pGifInstance->gifImageInfo[Index].format == HIGO_PF_0888)
    {
        pixbytes = 3;
    }
    else
    {
        pixbytes = 4;
    }



#ifdef GIF_PRINT_DBGINFO
    HIGO_PrintF("width = %u, height = %u, pixbyte = %u, pitch = %u\n", width, height, pixbytes, pitch);
    HIGO_PrintF("gif_Malloc, size = %u\n", height * pitch);
#endif
    //lint -e539
     (HI_VOID)Surface_LockSurface((HIGO_HANDLE)pSurface, pData);
    //lint +e539
    /**get the physical address of display buffer */
    pOutVirAddr = (HI_U8*)pData[0].pData;
    pOutPhyAddr = (HI_U8*)pData[0].pPhyData;
    pitch = pData[0].Pitch;

#ifdef GIF_PRINT_DBGINFO
    HIGO_PrintF("pOutVirAddr= %x\n, PHYADDR:%x\n", pOutVirAddr, pOutPhyAddr);
#endif

    if (pGifInstance->gifImageInfo[Index].lFlag)
    {
        pCol = pGifInstance->gifImageInfo[Index].pColorTable;
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("Local palette, colsize = %u\n", 
                    pGifInstance->gifImageInfo[Index].lSize);
#endif
    }
    else
    {
        pCol = pGifInstance->gifGlobalInfo.gColorTable;
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("Global palette, colsize = %u\n", 
                    pGifInstance->gifGlobalInfo.gSize);
#endif
    }
    if (pCol == NULL)
    {
        return HI_FAILURE;
    }
    /**transfer the decoded data to format RGB and copy them to display buffer */
    pImgBuf = pGifInstance->gifImageInfo[Index].dataBuf;
    for (i = 0; i < height; i++)
    {
        for (j = 0; j < width; j++)
        {
            temp = pImgBuf[i * width + j] * 3;

            /**change order as the RGB palette use inf frame buffer is reiverse*/
            pOutVirAddr[i * pitch + j * pixbytes + 0] = pCol[temp + 2];
            pOutVirAddr[i * pitch + j * pixbytes + 1] = pCol[temp + 1];
            pOutVirAddr[i * pitch + j * pixbytes + 2] = pCol[temp + 0];
            if (pixbytes == 4)
            {
                pOutVirAddr[i * pitch + j * pixbytes + 3] = 0xff;
            }
        }
    }

    return HI_SUCCESS;
} /*lint !e818*/
//lint +e550

/**
 \brief free image data
 \param[in] GifDec decoder handle
 \param[in] *ImgInfo 
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_ReleaseDecImgData(DEC_HANDLE GifDec, HIGO_DEC_IMGDATA_S *pImgData)
{
    HI_VOID *pOutVirAddr;

    if ((NULL == pImgData) || (pImgData->VirAddr[0] == 0))
    {
        return HI_FAILURE;
    }

    pOutVirAddr = (HI_VOID*)pImgData->VirAddr[0];
    gif_Free(GIF_MALLOC_HIGO, pOutVirAddr);
    HIGO_MemSet(pImgData, 0, sizeof(HIGO_DEC_IMGDATA_S));

    return HI_SUCCESS;
}


static HI_VOID gif_CleanInstance( GIF_DECODER_INSTANCE *pGifInstance )
{
    HI_U32 i;

    if (NULL != pGifInstance->gifGlobalInfo.gColorTable)
    {
        gif_Free(GIF_MALLOC_SYS, pGifInstance->gifGlobalInfo.gColorTable);
        pGifInstance->gifGlobalInfo.gColorTable = NULL;
    }

    for (i = 0; i < pGifInstance->gifImageCount; i++)
    {
        if (NULL != pGifInstance->gifImageInfo[i].pColorTable)
        {
            gif_Free(GIF_MALLOC_SYS, pGifInstance->gifImageInfo[i].pColorTable);
            pGifInstance->gifImageInfo[i].pColorTable = NULL;
        }

        if (NULL != pGifInstance->gifImageInfo[i].dataBuf)
        {
            gif_Free(GIF_MALLOC_HIGO, pGifInstance->gifImageInfo[i].dataBuf);
            pGifInstance->gifImageInfo[i].dataBuf = NULL;
        }
    }

    return;
}

/**
 \brief parser GIF file
 \param[in] *pGifInstance GIF decoder instance
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_AnalyseFile( GIF_DECODER_INSTANCE *pGifInstance )
{
    HI_S32 ret;

    /**get GIF version */
#ifdef GIF_PRINT_DBGINFO
    HIGO_PrintF("gif_GetFileType\n");
#endif
    ret = gif_GetFileType(pGifInstance);
    if (ret != HI_SUCCESS)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("gif_GetFileType error!\n");
#endif
        return HI_FAILURE;
    }

    /**get GIF global info */
#ifdef GIF_PRINT_DBGINFO
    HIGO_PrintF("gif_GetGlobalInfo\n");
#endif
    ret = gif_GetGlobalInfo(pGifInstance);
    if (ret != HI_SUCCESS)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("gif_GetGlobalInfo error!\n");
#endif
        return HI_FAILURE;
    }

    /**get GIF image info*/
#ifdef GIF_PRINT_DBGINFO
    HIGO_PrintF("gif_GetImageInfo\n");
#endif
    ret = gif_GetImageInfo(pGifInstance);
    if (ret != HI_SUCCESS)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("gif_GetImageInfo error!\n");
#endif
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/**
 \brief get GIF file type
 \param[in] *pGifInstance 
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_GetFileType( GIF_DECODER_INSTANCE *pGifInstance )
{
    HI_U8 cc[4];

    HIGO_MemSet(cc, 0, 4);
    GIF_READ(pGifInstance->gifIo, cc, 3);

    /*if(strncmp(cc,"GIF",3) != 0)*/
    if ((cc[0] != 'G') || (cc[1] != 'I') || (cc[2] != 'F'))
    {
        return HI_FAILURE;
    }

    HIGO_MemSet(cc, 0, 4);
    GIF_READ(pGifInstance->gifIo, cc, 3);

    /*if( (strncmp(cc, "89a", 3) != 0) && (strncmp(cc, "87a", 3) != 0) )*/
    if ((cc[0] != '8') || ((cc[1] != '7') && (cc[1] != '9')) || (cc[2] != 'a'))
    {
        return HI_FAILURE;
    }

    /*if( strncmp(cc,"89a",3) == 0 )*/
    if (cc[1] == '9')
    {
        pGifInstance->gifVer = 1;
    }
    else
    {
        pGifInstance->gifVer = 0;
    }

    return HI_SUCCESS;
}


static HI_S32 gif_GetGlobalInfo( GIF_DECODER_INSTANCE *pGifInstance )
{
    GIF_GLOBAL_INFO *pGifGlobalInfo;
    HI_U8 be;

    pGifGlobalInfo = &pGifInstance->gifGlobalInfo;
    GIF_READ(pGifInstance->gifIo, (HI_U8 *)&pGifGlobalInfo->scrWidth, 2);
    GIF_READ(pGifInstance->gifIo, (HI_U8 *)&pGifGlobalInfo->scrHeight, 2);
    GIF_READ(pGifInstance->gifIo, &be, 1);

    /**get flag of global palette existed */
    if ((be & 0x80) != 0)
    {
        pGifGlobalInfo->gFlag = HI_TRUE;
    }
    else
    {
        pGifGlobalInfo->gFlag = HI_FALSE;
    }

    pGifGlobalInfo->gColorTable = NULL;
    pGifGlobalInfo->colorRes = ((be & 0x70) >> 4) + 1;    
    if (pGifGlobalInfo->gFlag > 0)
    {
        if ((be & 0x08) != 0)
        {
            pGifGlobalInfo->gSort = HI_TRUE;
        }
        else
        {
            pGifGlobalInfo->gSort = HI_FALSE;
        }

        pGifGlobalInfo->gSize   = 1;
        pGifGlobalInfo->gSize <<= ((be & 0x07) + 1);
        pGifGlobalInfo->gColorTable = (HI_U8 *)gif_Malloc(GIF_MALLOC_SYS, pGifGlobalInfo->gSize * 3);
        if (NULL == pGifGlobalInfo->gColorTable)
        {
            return HIGO_ERR_NOMEM;
        }
    }

    GIF_READ(pGifInstance->gifIo, &be, 1);
    pGifGlobalInfo->BKColorIdx = be;
    GIF_READ(pGifInstance->gifIo, &be, 1);
    pGifGlobalInfo->pixelAspectRatio = be;
    if (pGifGlobalInfo->gFlag > 0)
    {
        GIF_READ(pGifInstance->gifIo, pGifGlobalInfo->gColorTable, pGifGlobalInfo->gSize * 3);
    }

    return HI_SUCCESS;
}

/**
 \brief get GIFsingle info
 \param[in] *pGifInstance GIF
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_GetImageInfo( GIF_DECODER_INSTANCE *pGifInstance )
{
    HI_U8 be;
    GIF_IMAGE_INFO *pf;
    HI_U32 pos;

    /*for filter the data of extension control block*/
    GIF_GCTRLEXT ctrlExt = {0};

    pGifInstance->gifImageCount = 0;
    while (pGifInstance->gifImageCount < GIF_MAX_IMAGE)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("gif_GetImageInfo : gifImageCount = %u\n", pGifInstance->gifImageCount);
#endif
        pf = &pGifInstance->gifImageInfo[pGifInstance->gifImageCount];
        pf->format = HIGO_PF_8888;
        GIF_READ(pGifInstance->gifIo, &be, 1);
        switch (be)
        {
        case 0x21:     /**extension block */

#ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("Process new block 0x%02X\n", be);
#endif
            GIF_READ(pGifInstance->gifIo, &be, 1);
            switch (be)
            {
            case 0xf9:         
                while (pGifInstance->gifImageCount < GIF_MAX_IMAGE)
                {
                    GIF_READ(pGifInstance->gifIo, &be, 1);
                    if (be == 0)
                    {
                        break;
                    }

                    if (be == 4)
                    {
                        ctrlExt.active = HI_TRUE;
                        GIF_READ(pGifInstance->gifIo, &be, 1);
                        ctrlExt.disposalMethod = (be & 0x1c) >> 2;
                        if ((be & 0x02) != 0)
                        {
                            ctrlExt.userInputFlag = HI_TRUE;
                        }
                        else
                        {
                            ctrlExt.userInputFlag = HI_FALSE;
                        }

                        if ((be & 0x01) != 0)
                        {
                            ctrlExt.trsFlag = HI_TRUE;
                        }
                        else
                        {
                            ctrlExt.trsFlag = HI_FALSE;
                        }

                        GIF_READ(pGifInstance->gifIo, (HI_U8*)&(ctrlExt.delayTime), 2);
                        GIF_READ(pGifInstance->gifIo, &be, 1);
                        ctrlExt.trsColorIndex = be;
                    }
                    else
                    {
                        GIF_SEEKOFF(pGifInstance->gifIo, be);
                    }
                }
                break;
            case 0xfe:         /**explain block */
            case 0x01:         /**text extend block */
                ctrlExt.active = HI_FALSE;
            case 0xff:       /*lint !e616 !e825*/  
                while (pGifInstance->gifImageCount < GIF_MAX_IMAGE)
                {
                    GIF_READ(pGifInstance->gifIo, &be, 1);
                    if (be == 0)
                    {
                        break;
                    }

                    GIF_SEEKOFF(pGifInstance->gifIo, be);
                }

                break;
            default:

#ifdef GIF_PRINT_DBGINFO
                HIGO_PrintF("0x21 Error!\n");
#endif
                return HI_FAILURE;
            }

            break;
        case 0x2c:     /**image data block */
        {
            HI_U8 bp;

#ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("Process new block 0x%02X\n", be);
#endif
            GIF_READ(pGifInstance->gifIo, (HI_U8 *)&pf->imageLPos, 2);
            GIF_READ(pGifInstance->gifIo, (HI_U8 *)&pf->imageTPos, 2);
            GIF_READ(pGifInstance->gifIo, (HI_U8 *)&pf->imageWidth, 2);
            GIF_READ(pGifInstance->gifIo, (HI_U8 *)&pf->imageHeight, 2);
            GIF_READ(pGifInstance->gifIo, &bp, 1);

            if ((bp & 0x40) != 0)
            {
                pf->interlaceFlag = HI_TRUE;
            }
            else
            {
                pf->interlaceFlag = HI_FALSE;
            }
            
            if ((bp & 0x80) != 0)
            {
                pf->lFlag = HI_TRUE;
            }
            else
            {
                pf->lFlag = HI_FALSE;
            }            

            if ((bp & 0x20) != 0)
            {
                pf->sortFlag = HI_TRUE;
            }
            else
            {
                pf->sortFlag = HI_FALSE;
            }

            if (pf->lFlag)
            {
                pf->lSize   = 1;
                pf->lSize <<= ((bp & 0x07) + 1);
                pf->pColorTable = (HI_U8 *)gif_Malloc(GIF_MALLOC_SYS, pf->lSize * 3);
                if (pf->pColorTable == NULL)
                {
#ifdef GIF_PRINT_DBGINFO
                    HIGO_PrintF("Alloc pf->pColorTable error!\n");
#endif
                    return HIGO_ERR_NOMEM;
                }

                GIF_READ(pGifInstance->gifIo, pf->pColorTable, pf->lSize * 3);
            }

            if (HI_SUCCESS != gif_GetPos(pGifInstance->gifIo, &pos))
            {
                return HI_FAILURE;
            }

            pf->dataindex = pos;

#ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("pf->dataindex = %u(0x%X)\n", pf->dataindex, pf->dataindex);
#endif

            /**skip image data */
            GIF_READ(pGifInstance->gifIo, &be, 1);     /**skip  bytes of LZW len */
            while (pGifInstance->gifImageCount < GIF_MAX_IMAGE)
            {
                GIF_READ(pGifInstance->gifIo, &be, 1);     /**get length about image data block */

#ifdef GIF_PRINT_DBGINFO
                HIGO_PrintF("be = 0x%02X\n", be);
#endif
                if (be == 0)      /**end of image data block */
                {
                    break;
                }

                GIF_SEEKOFF(pGifInstance->gifIo, be);
            }

            if (HI_TRUE == ctrlExt.active)
            {
                pf->ctrlExt.active = HI_TRUE;
                pf->ctrlExt.disposalMethod = ctrlExt.disposalMethod;
                pf->ctrlExt.userInputFlag = ctrlExt.userInputFlag;
                pf->ctrlExt.delayTime = ctrlExt.delayTime;
                pf->ctrlExt.trsFlag   = ctrlExt.trsFlag;                
                pf->ctrlExt.trsColorIndex = ctrlExt.trsColorIndex;

                ctrlExt.active = HI_FALSE;
            }

            pGifInstance->gifImageCount++;

            break;
        }
        case 0x3b:     /**GIF file end flag */

#ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("Process new block 0x%02X, end of file!\n", be);
#endif
            return HI_SUCCESS;
        case 0x00:     /**block end flag */

#ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("Process new block 0x%02X\n", be);
#endif
            break;
        default:     /**invalid  */

#ifdef GIF_PRINT_DBGINFO
            HIGO_PrintF("Process new block 0x%02X is invalid block\n", be);
#endif
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

/**
 \brief get LWZ block
 \param[in] *pGifInstance GIF decoder instance 
 \param[out] *buf pointer for LWZ data buffer
 \retval LWZ data size
 \retval -1 
 \return HI_S32
 */
static HI_S32 gif_GetDataBlock( GIF_DECODER_INSTANCE *pGifInstance, HI_U8 *buf )
{
    HI_U8 count;

    if (HI_SUCCESS != gif_ReadFile(pGifInstance->gifIo, &count, 1))
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("error in getting DataBlock size\n");
#endif
        return -1;
    }

    pGifInstance->ZeroDataBlock = count == 0;

    if ((count != 0) && (HI_SUCCESS != gif_ReadFile(pGifInstance->gifIo, buf, count)))
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("error in reading DataBlock\n");
#endif
        return -1;
    }

    return count;
}

/**
 \brief decoder LWZ data 
 \param[in] *pGifInstance GIF decoder instance 
 \param[in] code_size LWZ data size
 \param[in] flag  initial flag
 \retval decoder output data 
 \retval -1 
 \return HI_S32
 */
static HI_S32 gif_GetCode( GIF_DECODER_INSTANCE *pGifInstance, HI_S32 code_size, HI_S32 flag )
{
    HI_S32 i, j, ret;
    HI_U8 count;

    if (flag)
    {
        pGifInstance->lastbit = 0;
        pGifInstance->curbit  = 0;        
        pGifInstance->done = HI_FALSE;
        return 0;
    }

    if ((pGifInstance->curbit + code_size) >= pGifInstance->lastbit)
    {
        if (pGifInstance->done)
        {
            if (pGifInstance->curbit >= pGifInstance->lastbit)
            {
#ifdef GIF_PRINT_DBGINFO
                HIGO_PrintF("ran off the end of my bits" );
#endif
            }

            return -1;
        }

        pGifInstance->buf[0] = pGifInstance->buf[pGifInstance->last_byte - 2];
        pGifInstance->buf[1] = pGifInstance->buf[pGifInstance->last_byte - 1];

        if ((count = (HI_U8)gif_GetDataBlock(pGifInstance, &pGifInstance->buf[2])) == 0)
        {
            pGifInstance->done = HI_TRUE;
        }

        pGifInstance->last_byte = 2 + count;
        pGifInstance->curbit  = (pGifInstance->curbit - pGifInstance->lastbit) + 16;
        pGifInstance->lastbit = (2 + count) * 8;
    }

    ret = 0;
    for (i = pGifInstance->curbit, j = 0; j < code_size; ++i, ++j)
    {
        ret |= ((pGifInstance->buf[i / 8] & (1 << (i % 8))) != 0) << j; /*lint !e514 */
    }

    pGifInstance->curbit += code_size;

    return ret;
}

/**
 \brief decode LZW data
 \param[in] *pGifInstance GIF pointer to decoder instancce 
 \param[in] flag  of initialed 
 \param[in] input_code_size inpuut LWZ data len
 \retval output data has been decoded
 \retval < 0 
 \return HI_S32
 */
static HI_S32 gif_LZWReadByte( GIF_DECODER_INSTANCE *pGifInstance, HI_S32 flag, HI_S32 input_code_size )
{
    GIF_DECODER_INSTANCE *p;    
    register HI_S32 i;
    HI_S32 code, incode;

    p = pGifInstance;
    if (flag)
    {
        p->set_code_size = input_code_size;
        p->code_size  = p->set_code_size + 1;
        p->clear_code = 1 << p->set_code_size;
        p->end_code = p->clear_code + 1;
        p->max_code_size = 2 * p->clear_code;
        p->max_code = p->clear_code + 2;
        i = gif_GetCode(p, 0, HI_TRUE);
        p->fresh = HI_TRUE;
        for (i = 0; i < p->clear_code; ++i)
        {
            p->table[0][i] = 0;
            p->table[1][i] = i;
        }

        for (; i < (1 << GIF_MAX_LWZ_BITS); ++i)
        {
            /*p->table[0][i] = p->table[1][0] = 0;*/


            p->table[0][i] = p->table[1][i] = 0;
        }

        p->sp = p->stack;

        return 0;
    }
    else if (p->fresh)
    {
        p->fresh = HI_FALSE;
        do
        {
            p->firstcode = p->oldcode = gif_GetCode(p, p->code_size, HI_FALSE);
        } while (p->firstcode == p->clear_code);

        return p->firstcode;
    }

    if (p->sp > p->stack)
    {
        return *--p->sp;
    }

    while ((code = gif_GetCode(p, p->code_size, HI_FALSE)) >= 0)
    {
        if (code == p->clear_code)
        {
            for (i = 0; i < p->clear_code; ++i)
            {
                p->table[0][i] = 0;
                p->table[1][i] = i;
            }

            for (; i < (1 << GIF_MAX_LWZ_BITS); ++i)
            {
                p->table[0][i] = p->table[1][i] = 0;
            }

            p->code_size = p->set_code_size + 1;
            p->max_code_size = 2 * p->clear_code;
            p->max_code = p->clear_code + 2;
            p->sp = p->stack;
            p->firstcode = p->oldcode = gif_GetCode(p, p->code_size, HI_FALSE);

            return p->firstcode;
        }
        else if (code == p->end_code)
        {
            HI_S32 count;
            HI_U8 buf[260];

            if (p->ZeroDataBlock)
            {
                return -2;
            }

            while ((count = gif_GetDataBlock(p, buf)) > 0)
            {
                ;
            }

            if (count != 0)
            {
#ifdef GIF_PRINT_DBGINFO
                HIGO_PrintF("missing EOD in data stream (common occurence)\n");
#endif
            }

            return -2;
        }

        incode = code;
        if (code >= p->max_code)
        {
            *p->sp++ = p->firstcode;
            code = p->oldcode;
        }

        while (code >= p->clear_code)
        {
            *p->sp++ = p->table[1][code];
            if (code == p->table[0][code])
            {
#ifdef GIF_PRINT_DBGINFO
                HIGO_PrintF("circular table entry BIG ERROR");
#endif
            }

            code = p->table[0][code];
        }

        *p->sp++ = p->firstcode = p->table[1][code];

        if ((code = p->max_code) < (1 << GIF_MAX_LWZ_BITS))
        {
            p->table[1][code] = p->firstcode;
            p->table[0][code] = p->oldcode;            
            ++p->max_code;
            if ((p->max_code >= p->max_code_size) && (p->max_code_size < (1 << GIF_MAX_LWZ_BITS)))
            {
                p->max_code_size *= 2;
                ++p->code_size;
            }
        }

        p->oldcode = incode;

        if (p->sp > p->stack)
        {
            return *--p->sp;
        }
    }

    return code;
}

/**
 \brief decode the image has been index
 \param[in] *pGifInstance GIF poniter to decoder instance
 \param[in] image_index image index
 \retval HI_SUCCESS 
 \retval HI_FAILURE 
 \return HI_S32
 */
static HI_S32 gif_ExtractData( GIF_DECODER_INSTANCE *pGifInstance, HI_U32 image_index )
{
    GIF_IMAGE_INFO *f;
    HI_U8 c;
    HI_S32 v;
    HI_S32 len, height;    
    HI_U8 *out;
    HI_S32 get_data_num = 0;
    HI_S32 xpos = 0, ypos = 0, pass = 0;

    if (image_index >= pGifInstance->gifImageCount)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("frame_index %d error!\n", image_index);
#endif
        return HI_FAILURE;
    }

    f   = &pGifInstance->gifImageInfo[image_index];
    height = f->imageHeight;
    len = f->imageWidth;    
    f->dataBuf = (HI_U8 *)gif_Malloc(GIF_MALLOC_HIGO, (HI_U32)(len * height));
    if (f->dataBuf == NULL)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("Alloc databuf error!\n");
#endif
        return HIGO_ERR_NOMEM;
    }

    out = f->dataBuf;

    /* Initialize the Compression routines */

#ifdef GIF_PRINT_DBGINFO
    HIGO_PrintF("Seek data %u\n", f->dataindex);
#endif
    GIF_SEEK(pGifInstance->gifIo, (HI_S32)f->dataindex);

    if (HI_SUCCESS != gif_ReadFile(pGifInstance->gifIo, &c, 1))
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("EOF / read error on image data\n");
#endif
        gif_Free(GIF_MALLOC_HIGO, f->dataBuf);
        f->dataBuf = NULL;
        return HI_FAILURE;
    }

    if (gif_LZWReadByte(pGifInstance, HI_TRUE, c) < 0)
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("error reading image\n");
#endif
        gif_Free(GIF_MALLOC_HIGO, f->dataBuf);

        f->dataBuf = NULL;
        return HI_FAILURE;
    }

    while ((ypos < height) && (v = gif_LZWReadByte(pGifInstance, HI_FALSE, c)) >= 0)
    {
        out[ypos * len + xpos] = (HI_U8)v;

        get_data_num++;
        ++xpos;
        if (xpos == len)
        {
            xpos = 0;
            if (f->interlaceFlag)
            {
                ypos += dpass[pass];
                if (ypos >= height)
                {
                    ypos = restart[++pass];
                }
            }
            else
            {
                ++ypos;
            }
        }
    }

#ifdef GIF_PRINT_DBGINFO
    HIGO_PrintF("get_data_num = %d\n", get_data_num);
#endif

    if (get_data_num != (len * height))
    {
#ifdef GIF_PRINT_DBGINFO
        HIGO_PrintF("decode pixel number is not match!\n");
#endif
       gif_Free(GIF_MALLOC_HIGO, f->dataBuf);
        f->dataBuf = NULL;
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/**
 \brief GIF read data from the file 
 \param[in] hFileIo GIF file handle
 \param[out] *pu8Addr address of read data buffer
 \param[in] u32Len  read length 
 \retval HI_SUCCESS  
 \retval HI_FAILURE  
 \return HI_S32
 */
static HI_S32 gif_ReadFile( IO_HANDLE hFileIo, HI_U8 *pu8Addr, HI_U32 u32Len )
{
    HI_U32 read_len;    
    HI_BOOL EndFlag;
    HI_S32 ret;

    ret = HIGO_ADP_IORead(hFileIo, pu8Addr, u32Len, &read_len, &EndFlag);
    if ((HI_SUCCESS != ret) || (u32Len != read_len))
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

/**
 \brief  do file seek position
 \param[in] hFileIo GIF fille handle
 \param[in] pos  seek position
 \retval HI_SUCCESS  
 \retval HI_FAILURE  
 \return HI_S32
 */
static HI_S32 gif_SeekFile( IO_HANDLE hFileIo, HI_S32 pos )
{
    return (HIGO_ADP_IOSeek(hFileIo, IO_POS_SET, pos));
}

/**
 \brief seek position to the offset from current position 
 \param[in] hFileIo GIF fille handle
 \param[in] pos  offset from current position
 \retval HI_SUCCESS  
 \retval HI_FAILURE  
 \return HI_S32
 */
static HI_S32 gif_SeekOffFile( IO_HANDLE hFileIo, HI_S32 off )
{
    return (HIGO_ADP_IOSeek(hFileIo, IO_POS_CUR, off));
}

/**
 \brief  get current file position 
 \param[in] hFileIo GIF file handle 
 \param[out] *pos  current file position
 \retval HI_SUCCESS  
 \retval HI_FAILURE  
 \return HI_S32
 */
static HI_S32 gif_GetPos( IO_HANDLE hFileIo, HI_U32 *pos )
{
    return (HIGO_ADP_IOGetPos(hFileIo, pos));
}

/**
 \brief  allocate memory 
 \param[in] flag  mode
                        0 use malloc
                        1 use umap
 \param[in] size 
 \retval   success
 \retval NULL   fail 
 \return HI_VOID*
 */
static HI_VOID* gif_Malloc( HI_U32 flag, HI_U32 size )
{
    HI_VOID *p;

    if (flag >= GIF_MALLOC_BUTT)
    {
        return NULL;
    }

    if (flag == GIF_MALLOC_HIGO)
    {
        p = HIGO_MMZ_Malloc(size);
    }
    else
    {
        p = (HI_VOID *)HIGO_Malloc(size);
    }

    return p;
}

/**
 \brief  free the memory 
 \param[in] flag  mode
                        0 use malloc
                        1 use umap
 \param[in] *pdata  
 \return HI_VOID
 */
static HI_VOID gif_Free( HI_U32 flag, HI_VOID *pdata )
{
    if ((flag >= GIF_MALLOC_BUTT) || (pdata == NULL))
    {
        return;
    }

    if (flag == GIF_MALLOC_HIGO)
    {
        HIGO_MMZ_Free( pdata);
    }
    else
    {
        //free(pdata);
        HIGO_Free(pdata);
    }
}

/**
 \brief get decoder instance 
 \param[in] pHandle GIF handle 
 \param[in] Modle handle type 
 \retval poniter to decoder instance success
 \retval NULL fail
 \return HI_VOID*
 */
static HI_VOID* gif_DecGetInstance(DEC_HANDLE Handle, HIGO_MOD_E Modle)
{
    HI_VOID *p;

    p = (HI_VOID *)Handle;

    return p;

}
#endif
