//lint -wlib(0)
#include "hi_go.h"
#include "higo_common.h"
#include "higo_adp_sys.h"
#include "higo_surface.h"
#include "higo_blit.h"
/***************************** Macro Definition ******************************/
#define HIGO_VER_MAJOR 2
#define HIGO_VER_MINOR 0
#define HIGO_VER_Z 1
#define HIGO_VER_P 2
#define HIGO_VER_A "a34"  /* for  release version,please use the words"final" */

#define MAKE_VER_BIT(x) # x
#define MAKE_MACRO2STR(exp) MAKE_VER_BIT(exp)
#define MAKE_VERSION \
    MAKE_MACRO2STR(HIGO_VER_MAJOR) "." \
    MAKE_MACRO2STR(HIGO_VER_MINOR) "." \
    MAKE_MACRO2STR(HIGO_VER_Z) "." \
    MAKE_MACRO2STR(HIGO_VER_P) " " HIGO_VER_A
/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/
const HI_CHAR* g_pszBuildTime = "This version is building at " __DATE__ " " __TIME__;

/******************************* API declaration *****************************/
extern HI_S32 HIGO_InitDecoder(HI_VOID);
extern HI_S32 HIGO_DeinitDecoder(HI_VOID);


HI_S32 HI_GO_Init(HI_VOID *pBuffer , HI_U32 u32BufLen )
{
    HI_S32 ret;

    ret = HIGO_InitSurface(pBuffer , u32BufLen );
    if (ret != HI_SUCCESS)
    {
        return ret;
    }
    ret = HIGO_InitBliter();
    if (ret != HI_SUCCESS)
    {
        goto fail0;
    }
    ret = HIGO_InitDecoder();
    if (ret != HI_SUCCESS)
    {
        goto fail4;
    }
    return HI_SUCCESS;
fail4:
    (HI_VOID)HIGO_DeinitBliter();
fail0:
    (HI_VOID)HIGO_DeinitSurface();
    return ret;
}

HI_S32 HI_GO_SetMemInfo(HI_U32 u32PhyAddr, HI_VOID *pVirAddr, HI_U32 u32BufLen)
{
    if ((0 == u32PhyAddr) || (HI_NULL == pVirAddr) || (0 == u32BufLen))
    {
        return HI_FAILURE;
    }

    return HIGO_SetMemInfo(u32PhyAddr, pVirAddr, u32BufLen);
}


HI_S32 HI_GO_Deinit()
{
    HI_S32 ret = HI_SUCCESS;
    ret = HIGO_DeinitDecoder();
    ret |= HIGO_DeinitBliter();
    ret |= HIGO_DeinitSurface();
    if (ret != HI_SUCCESS)
    {
        return ret;
    }
    return ret;
}
HI_S32 HIGO_GetRealRect(const HI_RECT* pSrcRect, const HI_RECT* pRect, HI_RECT* pRealRect)
{
    HI_REGION Src1Region, Src2Region, RealRegion;

    /** check is the input rectangle is valid */
    RECT2REGION(*pSrcRect, RealRegion);

    if (HI_NULL != pRect)
    {
        if ((0 >= pRect->w) || (0 >= pRect->h))
        {
            HIGO_ERROR("empty rect\n", HIGO_ERR_EMPTYRECT);
            return HIGO_ERR_EMPTYRECT;
        }

        RECT2REGION (*pRect, Src1Region);
        Src2Region = RealRegion;

        RealRegion.l = MAX(Src1Region.l, Src2Region.l);
        RealRegion.t = MAX(Src1Region.t, Src2Region.t);

        RealRegion.r = MIN(Src1Region.r, Src2Region.r);
        RealRegion.b = MIN(Src1Region.b, Src2Region.b);

        if ((RealRegion.r < RealRegion.l) || (RealRegion.b < RealRegion.t))
        {
            HIGO_ERROR("rect outofbounds\n", HIGO_ERR_OUTOFBOUNDS);
            return HIGO_ERR_OUTOFBOUNDS;
        }
    }

    REGION2RECT (*pRealRect, RealRegion);
    return HI_SUCCESS;
}
