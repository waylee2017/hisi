#include "uictr_slider.h"
#include "appblast.h"
#include "bmp_src.h"

#define m_Marquee_OsdMovStep 2
#define m_PinFontWidth 20
#define m_SliderMaxStringLen    				256


typedef struct _osd_slider_
{
    MBT_U32   u32Valid;
    MBT_S32   x;
    MBT_S32   y;
    MBT_S32   iWidth;
    MBT_S32   iHeight;
    MBT_U32   u32FocusF;
    MBT_U32   u32FontHeight;
}MST_TxtSliderInfo;

typedef struct txt_slider_ctr_t
{
    MBT_U8 uBoxDisplayed;
    MBT_U8 u8reserved;
    MBT_U16 iStrlen;
    MBT_S32 iStartXLeftLimit;
    MBT_S32 iCurX;
} ST_TxtSliderCtr;  


typedef struct _uictr_slider_ctr_info 
{ 
  BITMAPTRUECOLOR uictrv_stSliderBgBmp;    
  MBT_CHAR strSlider[m_SliderMaxStringLen+4]; 
  MST_TxtSliderInfo stTxtSliderInfo;
  ST_TxtSliderCtr stTxtSliderCtr;
  struct _uictr_slider_ctr_info *pNext; 
} UICTR_SliderCtrInfo;


static UICTR_SliderCtrInfo *uictrv_pstSliderCtrinfo = MM_NULL;

static inline MBT_BOOL SliderOnDraw(MST_TxtSliderInfo *pstTxtSliderInfo,ST_TxtSliderCtr *pstTxtSliderCtr,MBT_CHAR *pstring)
{      
    MBT_S32 iFontHeight;
    MBT_S32 yTxtGap;

    if(MM_NULL == pstTxtSliderInfo||MM_NULL == pstTxtSliderCtr)
    {
        return MM_FALSE;
    }
    
    iFontHeight = WGUIF_GetFontHeight();
    if(iFontHeight != pstTxtSliderInfo->u32FontHeight)
    {
        WGUIF_SetFontHeight(pstTxtSliderInfo->u32FontHeight);
    }
    
    yTxtGap = (pstTxtSliderInfo->iHeight-iFontHeight)/2;
    
    if(0 == pstTxtSliderCtr->uBoxDisplayed)
    {
        pstTxtSliderCtr->uBoxDisplayed = 1;
        pstTxtSliderCtr->iStrlen = strlen(pstring);
        pstTxtSliderCtr->iStartXLeftLimit = pstTxtSliderInfo->x - WGUIF_FNTGetTxtWidth(pstTxtSliderCtr->iStrlen,pstring);
        pstTxtSliderCtr->iCurX = pstTxtSliderInfo->iWidth + pstTxtSliderInfo->x - m_Marquee_OsdMovStep;
    }
    
    WGUIF_FNTDrawSliderTxt(pstTxtSliderCtr->iCurX,pstTxtSliderInfo->y+yTxtGap,pstTxtSliderInfo->x,pstTxtSliderInfo->iWidth + pstTxtSliderInfo->x,pstTxtSliderCtr->iStrlen,pstring,pstTxtSliderInfo->u32FocusF);

    pstTxtSliderCtr->iCurX -= m_Marquee_OsdMovStep;
    if(pstTxtSliderCtr->iCurX < pstTxtSliderCtr->iStartXLeftLimit)
    {
        pstTxtSliderCtr->iCurX = pstTxtSliderInfo->iWidth + pstTxtSliderInfo->x - m_Marquee_OsdMovStep;
    }
    return MM_TRUE;
}


MBT_VOID uictrf_SliderStop(MBT_U32 x,MBT_U32 y,MBT_U32 u32Width,MBT_U32 u32Height)
{
    UICTR_SliderCtrInfo *pstNext;
    UICTR_SliderCtrInfo *pstSliderCtrinfo = uictrv_pstSliderCtrinfo;
    MST_TxtSliderInfo *pstTxtSliderInfo;
    MBT_VOID **ppPoint = (MBT_VOID **)(&(uictrv_pstSliderCtrinfo));
    
    while(pstSliderCtrinfo)
    {
        pstNext = pstSliderCtrinfo->pNext;
        pstTxtSliderInfo = &pstSliderCtrinfo->stTxtSliderInfo;
        if(pstTxtSliderInfo->x == x&&pstTxtSliderInfo->y == y&&pstTxtSliderInfo->iWidth == u32Width&&u32Height == pstTxtSliderInfo->iHeight)
        {
            MLMF_Free(pstSliderCtrinfo);
            *ppPoint = pstNext;
        }
        else
        {
            ppPoint = (MBT_VOID **)(&(pstSliderCtrinfo->pNext));
        }
        pstSliderCtrinfo = pstNext;
    }
}


MBT_VOID uictrf_SliderStart(MBT_CHAR *pstring,MBT_U32 x,MBT_U32 y,MBT_U32 u32Width,MBT_U32 u32Height,MBT_U32 u32FontColor,MBT_U32 u32FontHeight)
{
    BITMAPTRUECOLOR *pstBmp;
    MST_TxtSliderInfo *pstTxtSliderInfo;
    ST_TxtSliderCtr *pstTxtSliderCtr;
    UICTR_SliderCtrInfo *pstSliderCtrinfo = uictrv_pstSliderCtrinfo;
    
    while(pstSliderCtrinfo)
    {
        if(0 == strcmp(pstring,pstSliderCtrinfo->strSlider))
        {
            break;
        }
        pstSliderCtrinfo = pstSliderCtrinfo->pNext;
    }

    if(MM_NULL == pstSliderCtrinfo)
    {
        MBT_U32 size = sizeof(UICTR_SliderCtrInfo);
        pstSliderCtrinfo = MLMF_Malloc(size);
        if(MM_NULL == pstSliderCtrinfo)
        {
            return;
        }
        memset(pstSliderCtrinfo,0,size);
        pstSliderCtrinfo->pNext = uictrv_pstSliderCtrinfo;
        uictrv_pstSliderCtrinfo = pstSliderCtrinfo;
    }

    pstBmp = &pstSliderCtrinfo->uictrv_stSliderBgBmp;
    pstBmp->bHeight = u32Height;
    pstBmp->bWidth = u32Width;
    WGUIF_GetRectangleImage(x,y,pstBmp);

    strcpy(pstSliderCtrinfo->strSlider,pstring);
    pstTxtSliderInfo = &pstSliderCtrinfo->stTxtSliderInfo;
    pstTxtSliderCtr = &pstSliderCtrinfo->stTxtSliderCtr;

    pstTxtSliderInfo->u32FontHeight = u32FontHeight;
    pstTxtSliderInfo->u32Valid = 1;
    pstTxtSliderInfo->x = x;
    pstTxtSliderInfo->y = y;
    pstTxtSliderInfo->iWidth = u32Width;
    pstTxtSliderInfo->iHeight = u32Height;
    pstTxtSliderInfo->u32FocusF = u32FontColor;
    pstTxtSliderCtr->uBoxDisplayed = 0;
}



MBT_BOOL UCTRF_SliderOnDraw(MBT_VOID)
{
    MBT_BOOL bRefresh = MM_FALSE;
    ST_TxtSliderCtr *pstTxtSliderCtr;
    MST_TxtSliderInfo *pstTxtSliderInfo;
    BITMAPTRUECOLOR *pstBmp;
    UICTR_SliderCtrInfo *pstSliderCtrInfo = uictrv_pstSliderCtrinfo;
    while(pstSliderCtrInfo)
    {
        pstTxtSliderCtr = &(pstSliderCtrInfo->stTxtSliderCtr);
        pstTxtSliderInfo = &(pstSliderCtrInfo->stTxtSliderInfo);
        pstBmp = &pstSliderCtrInfo->uictrv_stSliderBgBmp;
        WGUIF_DisplayReginTrueColorBmp(pstTxtSliderInfo->x,pstTxtSliderInfo->y,0,0,pstTxtSliderInfo->iWidth,pstTxtSliderInfo->iHeight,pstBmp,MM_TRUE);
        bRefresh |= SliderOnDraw(pstTxtSliderInfo,pstTxtSliderCtr,pstSliderCtrInfo->strSlider);
        pstSliderCtrInfo = pstSliderCtrInfo->pNext;
    }

    return bRefresh;
}




MBT_VOID UCTRF_SliderFree(MBT_VOID)
{
    UICTR_SliderCtrInfo *pstPrevSliderCtrinfo;
    UICTR_SliderCtrInfo *pstSliderCtrinfo = uictrv_pstSliderCtrinfo;
    uictrv_pstSliderCtrinfo = MM_NULL;
    while(pstSliderCtrinfo)
    {
        pstPrevSliderCtrinfo = pstSliderCtrinfo;
        pstSliderCtrinfo = pstSliderCtrinfo->pNext;
        MLMF_Free(pstPrevSliderCtrinfo);
    }
}


