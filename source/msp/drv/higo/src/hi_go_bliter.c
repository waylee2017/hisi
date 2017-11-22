#include "hi_type.h"
#include "hi_go_bliter.h"
#include "hi_go_comm.h"
#include "higo_common.h"
#include "higo_blit.h"
#include "adp_gfx.h"

/***************************** Macro Definition ******************************/

#define CHECK_BLITINIT() \
do \
{\
    if (UN_INIT_STATE == s_InitBlitCount) \
        return HIGO_ERR_NOTINIT;\
}  \
while(0) 


#define CHECK_MIRRORTYPE(mirror) \
    if (mirror >= HIGO_MIRROR_BUTT) \
    { \
        return HIGO_ERR_INVMIRRORTYPE; \
    } 
    
#define CHECK_ROTATETYPE(rotate) \
    if (rotate >= HIGO_ROTATE_BUTT) \
    { \
         return HIGO_ERR_INVROTATETYPE;\
    }
    
#define CHECK_PALPHATYPE(palpha) \
    if (palpha >= HIGO_COMPOPT_BUTT) \
    { \
        return HIGO_ERR_INVCOMPTYPE; \
    }

#define CHECK_COLORKEYTYPE(ckey) \
    if (ckey >= HIGO_CKEY_BUTT) \
    { \
         return HIGO_ERR_INVCKEYTYPE;\
    }
#define CHECK_ROPTYPE(rop) \
    if (rop >= HIGO_ROP_BUTT) \
    { \
         return HIGO_ERR_INVROPTYPE; \
    }

#define CHECK_KEY(pSrcSurface, pDstSurface, BlitOpt) \
do\
{\
    HI_COLOR CKey;\
    HI_S32 s32Ret;\
    if (BlitOpt.ColorKeyFrom == HIGO_CKEY_SRC)\
    {\
        s32Ret = Surface_GetSurfaceColorKey((HIGO_HANDLE)pSrcSurface, &CKey);\
        if (s32Ret != HI_SUCCESS)\
        {\
            return HIGO_ERR_NOCOLORKEY;\
        }\
    }\
    else if (BlitOpt.ColorKeyFrom == HIGO_CKEY_DST)\
    {\
        s32Ret = Surface_GetSurfaceColorKey((HIGO_HANDLE)pDstSurface, &CKey);\
        if (s32Ret != HI_SUCCESS)\
        {\
            return HIGO_ERR_NOCOLORKEY;\
        }\
    }\
 }while(0)   

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/
static HI_S32 s_InitBlitCount = 0;
/******************************* API declaration *****************************/
HI_S32 HIGO_InitBliter(HI_VOID)
{
    HI_S32 s32Ret;

    /** re initial  just remember the times*/
    if (UN_INIT_STATE != s_InitBlitCount)
    {
        /** */
        s_InitBlitCount++;
        return HI_SUCCESS;
    }

    s32Ret = HIGO_ADP_InitBlitter();
    if (s32Ret != HI_SUCCESS)
    {
        HIGO_ERROR("init bliter failed\n", s32Ret);
        return s32Ret;
    }
    s_InitBlitCount++;
    return HI_SUCCESS;
}

HI_S32 HIGO_DeinitBliter(HI_VOID)
{
    /** avoid no initial  */
    if (UN_INIT_STATE == s_InitBlitCount)
    {
        return HIGO_ERR_NOTINIT;
    }

    /** if has done initial,  exit */
    if (s_InitBlitCount != CLEAR_INIT_STATE)
    {   
        s_InitBlitCount--;
        return HI_SUCCESS;
    }
    
    HIGO_ADP_DeinitBlitter();
    s_InitBlitCount--;
    return HI_SUCCESS;
}

HI_S32 HI_GO_FillRect(HI_HANDLE Surface, const HI_RECT* pRect, HI_COLOR Color, HIGO_COMPOPT_E CompositeOpt)
{
    HIGO_HANDLE pSurface;
    HI_RECT OptRect;    
    HI_S32 ret;

    /** check is the module has been initialed  */
    CHECK_BLITINIT();
    
    /** check input parameters */
    CHECK_PALPHATYPE(CompositeOpt);
    
    pSurface = Surface;
    /** handle rectangle,  */
    HIGO_GetSurfaceRealRect(pSurface, pRect, &OptRect);
    ret = Bliter_FillRect(pSurface, &OptRect, Color, CompositeOpt);
    
    return ret;
    
}
static HI_BOOL IsVaildCombOpt(const HIGO_BLTOPT_S* pCompOpt)
{
    HI_U32 Opt = 0, Mirror = 0, Rotate = 0;

    if (pCompOpt->EnableGlobalAlpha || (pCompOpt->PixelAlphaComp != HIGO_COMPOPT_NONE))
    {
        Opt++;
    }
    if (pCompOpt->EnableRop)
    {
        Opt++;
    }
    if (pCompOpt->ColorKeyFrom != HIGO_CKEY_NONE)
    {
        Opt++;
    }
    if (pCompOpt->EnableScale)
    {
        Opt++;
    }
    
    if (pCompOpt->MirrorType != HIGO_MIRROR_NONE)
    {
        Mirror++;
    }

    if (pCompOpt->RotateType != HIGO_ROTATE_NONE)
    {
        Rotate++;
    }
    
    if ((Opt >= 1) && (Mirror >=1))
    {
       return HI_TRUE;
    }
    if ((Opt >= 1) && (Rotate >=1))
    {
       return HI_TRUE;
    }
    if ((Rotate >= 1) && (Mirror >=1))
    {
       return HI_TRUE;
    }
    return HI_FALSE;
        
}

HI_S32 HI_GO_Blit (HI_HANDLE SrcSurface, const HI_RECT* pSrcRect,
                   HI_HANDLE DstSurface, const HI_RECT* pDstRect,
                   const HIGO_BLTOPT_S* pBlitOpt)
{
    HIGO_HANDLE pSrcSurface, pDstSurface;
    HIGO_BLTOPT2_S BlitOpt2;
    HI_RECT OptSrcRect, OptDstRect;
    HI_S32 ret;
    HIGO_BLTOPT_S BlitOpt;

    
    /** check is the module has been initialed  */
    CHECK_BLITINIT();

    if (NULL != pBlitOpt)
    {
        HIGO_MemCopy(&BlitOpt, pBlitOpt, sizeof(HIGO_BLTOPT_S));
    }
    else
    {
        HIGO_MemSet(&BlitOpt, 0, sizeof(HIGO_BLTOPT_S));
    }

    /** check the mix is right */
    CHECK_PALPHATYPE(BlitOpt.PixelAlphaComp);
    CHECK_COLORKEYTYPE(BlitOpt.ColorKeyFrom);
    if (BlitOpt.EnableRop)
    {
        CHECK_ROPTYPE(BlitOpt.Rop);
    }

    pSrcSurface = SrcSurface;
    pDstSurface = DstSurface;
    /** check the mix is right */
    if (IsVaildCombOpt(&BlitOpt))
    {
        HIGO_ERROR("complex operation unsupported\n ", HIGO_ERR_UNSUPPORTED);
        ret = HIGO_ERR_UNSUPPORTED;
        goto RET;
    }

    CHECK_KEY(pSrcSurface, pDstSurface, BlitOpt);

     /** handle source rectangle  */
    HIGO_GetSurfaceRealRect(pSrcSurface, pSrcRect, &OptSrcRect);

    /** handle target rectangle  */
    HIGO_GetSurfaceRealRect(pDstSurface, pDstRect, &OptDstRect);
    
    BlitOpt2.EnableGlobalAlpha = BlitOpt.EnableGlobalAlpha;
    BlitOpt2.PixelAlphaComp = BlitOpt.PixelAlphaComp;
    BlitOpt2.ColorKeyFrom = BlitOpt.ColorKeyFrom;
    BlitOpt2.EnableRop = BlitOpt.EnableRop;
    BlitOpt2.Rop =  BlitOpt.Rop;

    if (BlitOpt.EnableScale)
    {
        ret = Bliter_StretchBlit(pSrcSurface, &OptSrcRect, pDstSurface, &OptDstRect, &BlitOpt2);
    }
    else
    {
        ret = Bliter_Blit(pSrcSurface, &OptSrcRect, pDstSurface, &OptDstRect, &BlitOpt2);
        
    }

RET:
    return ret;
    //return HI_SUCCESS;
}
