
//lint -wlib(0)
#include "hi_go_comm.h"
#include "hi_go_surface.h"
#include "higo_common.h"
#include "higo_surface.h"
#include "higo_adp_sys.h"
/***************************** Macro Definition ******************************/


#define CHECK_SURFACE_INIT() \
do \
{  \
    if (UN_INIT_STATE == s_HiGoInitSurCount) \
    { \
        HIGO_ERROR("surface init failed\n", HIGO_ERR_NOTINIT);\
        return HIGO_ERR_NOTINIT; \
    } \
}  \
while(0) 

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

//static HI_BOOL g_bSurfaceInited = HI_FALSE;
static HI_S32 s_HiGoInitSurCount = 0;

/******************************* API declaration *****************************/
HI_S32 HIGO_InitSurface(HI_VOID *pBuffer , HI_U32 u32BufLen )
{
    HI_S32 s32Ret;
    
    /** re initial and remember initial times */
    if (UN_INIT_STATE != s_HiGoInitSurCount)
    {
        /** */
        s_HiGoInitSurCount++;
        return HI_SUCCESS;
    } 
    s32Ret = HIGO_InitMemory(pBuffer,u32BufLen);
    if (HI_SUCCESS != s32Ret)
    {
        HIGO_ERROR("memory init failed\n", s32Ret);
        goto err0;
    }
    /** */
    s_HiGoInitSurCount++;
    return HI_SUCCESS;
err0:
    return s32Ret;
}

HI_S32 HIGO_DeinitSurface(HI_VOID)
{
    /** avoid non initial case  */
    if (UN_INIT_STATE == s_HiGoInitSurCount)
    {
        return HIGO_ERR_NOTINIT;
    }

    /** if has initialed exit*/
    if (s_HiGoInitSurCount != CLEAR_INIT_STATE)
    {   
        s_HiGoInitSurCount--;
        return HI_SUCCESS;
    }
    HIGO_DeInitMemory();
    /** */
    s_HiGoInitSurCount--;
    return HI_SUCCESS;
}
/** 
\brief create surface YUV and  CLUT format
\param[in] Surface
\param[in] pType
\retval none
\return none
*/
HI_S32 HIGO_CreateSurfaceFromMem(const HIGO_SURINFO_S *pSurInfo, HIGO_MOD_E Mode, HIGO_HANDLE *pSurface)
{
    HI_PIXELDATA pData;
    HIGO_HANDLE Surface;
    HI_S32 ret;

    CHECK_SURFACE_INIT();
    
	HIGO_MemSet (pData, 0, sizeof (HI_PIXELDATA));

    pData[0].Pitch = pSurInfo->Pitch[0];
    pData[1].Pitch = pSurInfo->Pitch[0];

    Surface_CalculateBpp0(pSurInfo->PixelFormat, &(pData[0].Bpp));
    Surface_CalculateBpp1(pSurInfo->PixelFormat, &(pData[1].Bpp));
    
    if ((IS_RGB_FORMAT(pSurInfo->PixelFormat)) || IS_CLUT_FORMAT(pSurInfo->PixelFormat))
    {
        /** RGB and CLUT format */
        pData[0].Format = HIGO_PDFORMAT_RGB;
        pData[1].Format = HIGO_PDFORMAT_BUTT;
        pData[2].Format = HIGO_PDFORMAT_BUTT;
        pData[0].pData = pSurInfo->pVirAddr[0];
        pData[0].pPhyData = pSurInfo->pPhyAddr[0];
    }
    else 
    {
        /**  YUV format */
        pData[0].Format = HIGO_PDFORMAT_Y;
        pData[1].Format = HIGO_PDFORMAT_UV;
        pData[2].Format = HIGO_PDFORMAT_BUTT;
        pData[0].pData = pSurInfo->pVirAddr[0];
        pData[1].pData = pSurInfo->pVirAddr[1];
        pData[0].pPhyData = pSurInfo->pPhyAddr[0];
        pData[1].pPhyData = pSurInfo->pPhyAddr[1];
    }
    
    /** create Surface */
    ret = Surface_CreateSurface(&Surface, pSurInfo->Width, pSurInfo->Height, pSurInfo->PixelFormat);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /** set surface as memory type*/
    ret = Surface_SetSurfaceType(Surface, HIGO_SUR_EMPTY_E);
    if (HI_SUCCESS != ret)
    {
        goto err1;
    }

    /** set privad  data */
    ret = Surface_SetSurfacePrivateData (Surface, HIGO_MOD_MEMSURFACE, pData);
    if (HI_SUCCESS != ret)
    {
        goto err1;
    }

    *pSurface = Surface;
	
    return HI_SUCCESS;
err1:
    Surface_FreeSurface(Surface);
    return ret;
}

extern HI_VOID *g_pHigoBaseMem;

/** 
\brief createsurface YUV and  CLUT format
\param[in] Surface
\param[in] pType
\retval none
\return none
*/
HI_S32 HIGO_CreateSurface(const HIGO_SURINFO_S *pSurInfo, HIGO_MOD_E Mode, HIGO_HANDLE *pSurface, HI_U32 MemModID)
{
    HI_PIXELDATA pData;
    HI_U32 Size;
    HIGO_HANDLE Surface;
    HI_S32 ret;
    HI_VOID * ptr;
    HI_U32 WStride0, WStride1, HStride0, HStride1;
    CHECK_SURFACE_INIT();
    
    HIGO_MemSet (pData, 0, sizeof (HI_PIXELDATA));

    /** calculate basic info , if the pitch has been set, then use  default pitch.*/
    Surface_CalculateBpp0(pSurInfo->PixelFormat, &(pData[0].Bpp));
    Surface_CalculateBpp1(pSurInfo->PixelFormat, &(pData[1].Bpp));
    if (0 == pSurInfo->Pitch[0])
    {
        Surface_CalculateStride0(pSurInfo->PixelFormat, (HI_U32)pSurInfo->Width, (HI_U32)pSurInfo->Height, &WStride0, &HStride0);
    }
    else
    {   
        WStride0 = (HI_U32)pSurInfo->Pitch[0];
        HStride0 = (HI_U32)pSurInfo->Height;
    }
    
    if (0 == pSurInfo->Pitch[1])
    {
        Surface_CalculateStride1(pSurInfo->PixelFormat, (HI_U32)pSurInfo->Width, (HI_U32)pSurInfo->Height, &WStride1, &HStride1);
    }
    else
    {   
        WStride1 = pSurInfo->Pitch[1];
        HStride1 = (HI_U32)pSurInfo->Height;
    }
    
    pData[0].Pitch = WStride0;
    pData[1].Pitch = WStride1;
    Size = (HI_U32)(HStride0 * WStride0 + HStride1 * WStride1);
    /** allocate memory  */
    ptr = HIGO_MMZ_Malloc(Size);

    if (HI_NULL == ptr)
    {
        return HIGO_ERR_NOMEM;
    }
    
    if (!(IS_YUV_FORMAT(pSurInfo->PixelFormat)))
    {
        /** RGB and CLUT format */
        pData[0].Format = HIGO_PDFORMAT_RGB;
        pData[1].Format = HIGO_PDFORMAT_BUTT;
        pData[2].Format = HIGO_PDFORMAT_BUTT;
        pData[0].pData = ptr;
        pData[0].pPhyData = (HI_VOID*)HIGO_GetPhyAddrByVir(ptr);
        
    }
    else 
    {
        /**  YUV format */
        pData[0].Format = HIGO_PDFORMAT_Y;
        pData[1].Format = HIGO_PDFORMAT_UV;
        pData[2].Format = HIGO_PDFORMAT_BUTT;
        pData[0].pData = ptr;
        pData[1].pData = (HI_VOID *)((HI_CHAR *)ptr + HStride0 * WStride0);
        pData[0].pPhyData = (HI_VOID*)HIGO_GetPhyAddrByVir(ptr);
        pData[1].pPhyData = (HI_VOID *)((HI_CHAR *)pData[0].pPhyData + HStride0 * WStride0);
    }
    
    /** create Surface */
    ret = Surface_CreateSurface(&Surface, pSurInfo->Width, pSurInfo->Height, pSurInfo->PixelFormat);
    if (HI_SUCCESS != ret)
    {
        goto err0;
    }
    /** set surface memory type*/
    ret = Surface_SetSurfaceType(Surface, HIGO_SUR_MEM_E);
    if (HI_SUCCESS != ret)
    {
        goto err1;
    }

    /** set privad data  */
    ret = Surface_SetSurfacePrivateData (Surface, HIGO_MOD_MEMSURFACE, pData);
    if (HI_SUCCESS != ret)
    {
        goto err1;
    }

    *pSurface = Surface;
	
    return HI_SUCCESS;
err1:
    Surface_FreeSurface(Surface);
err0:
    HIGO_MMZ_Free(ptr);

    return ret;
}

HI_VOID HIGO_FreeSurface(HIGO_HANDLE Surface)
{
    
    if (UN_INIT_STATE == s_HiGoInitSurCount) 
    { 
        return; 
    } 
    Surface_FreeSurface(Surface);
    Surface_FreeSurfacePrivateData(Surface);
    
    return ;
}

