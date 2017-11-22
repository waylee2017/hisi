#include <string.h>
#include <stdlib.h>
#include "wgui_inner.h"

typedef struct _m_clip_erea_t
{
    MBT_U16       u16StartX;
    MBT_U16       u16StartY;
    MBT_U16       u16EndX;
    MBT_U16       u16EndY;
} STWguiDispErea;

static BITMAPTRUECOLOR wguiv_stPhyOsdMapBmp = {MM_OSD_COLOR_MODE_ARGB8888,0,0,MM_NULL};

static BITMAPTRUECOLOR wguiv_stFullSCROsdMapBmp = {MM_OSD_COLOR_MODE_ARGB8888,0,0,MM_NULL};
MBT_U32 wguiv_u32OsdPalletteScanLine[OSD_REGINMAXHEIGHT];

static BITMAPTRUECOLOR wguiv_stExtLayerOsdMapBmp = {MM_OSD_COLOR_MODE_ARGB8888,0,0,MM_NULL};
MBT_U32 wguiv_u32ExtLayerLayerOsdLine[OSD_REGINMAXHEIGHT];

static STWguiDispErea wguiv_DisplayErea = {OSD_REGINMAXWIDHT,OSD_REGINMAXHEIGHT,0,0};
static STWguiDispErea wguiv_DisplayEreaExt = {OSD_REGINMAXWIDHT,OSD_REGINMAXHEIGHT,0,0};

//extern MBT_VOID WGUIF_TestOSD(MBT_VOID);



MMT_STB_ErrorCode_E WGUIF_InitRSRC(MBT_VOID)
{
    MMT_STB_ErrorCode_E stRet = MM_NO_ERROR;
    MBT_U32 u32Width;
    MBT_U32 u32Height;
    MBT_S32 iPitch;
    MBT_S32 iAlign = 8;
    MBT_S32 s32BufSize;
    MBT_S32 i;
    MBT_U8 *pu8Data;
    
    stRet |= MLMF_OSD_SetOSDColorMode(MM_OSD_COLOR_MODE_ARGB8888);
    wguiv_stPhyOsdMapBmp.pBData = (MBT_VOID *)MLMF_OSD_GetInfo(&u32Width,&u32Height);
    wguiv_stPhyOsdMapBmp.bHeight = u32Height;
    wguiv_stPhyOsdMapBmp.bWidth = u32Width;
    
    iPitch = u32Width*OSD_COLOR_DEPTH;
    s32BufSize = iPitch*u32Height;
    pu8Data = (MBT_VOID *)MLMF_Malloc(s32BufSize + iAlign);
    MMF_SYS_Assert(MM_NULL != pu8Data);
    wguiv_stFullSCROsdMapBmp.pBData = (MBT_VOID *)((((MBT_U32)pu8Data) + 7)&0xfffffff8);
    memset(wguiv_stFullSCROsdMapBmp.pBData,0,s32BufSize);
    wguiv_stFullSCROsdMapBmp.bHeight = u32Height;
    wguiv_stFullSCROsdMapBmp.bWidth = u32Width;
    if(u32Height > OSD_REGINMAXHEIGHT)
    {
        u32Height = OSD_REGINMAXHEIGHT;
    }
    
    pu8Data=wguiv_stFullSCROsdMapBmp.pBData;
    for(i=0;i<u32Height;i++)
    {
        wguiv_u32OsdPalletteScanLine[i] = (MBT_U32)pu8Data;
        pu8Data+=iPitch;
    }

    pu8Data = (MBT_VOID *)MLMF_Malloc(s32BufSize + iAlign);
    MMF_SYS_Assert(MM_NULL != pu8Data);
    wguiv_stExtLayerOsdMapBmp.pBData = (MBT_VOID *)((((MBT_U32)pu8Data) + 7)&0xfffffff8);
    memset(wguiv_stExtLayerOsdMapBmp.pBData,0,s32BufSize);
    wguiv_stExtLayerOsdMapBmp.bHeight = u32Height;
    wguiv_stExtLayerOsdMapBmp.bWidth = u32Width;

    if(u32Height > OSD_REGINMAXHEIGHT)
    {
        u32Height = OSD_REGINMAXHEIGHT;
    }
    
    pu8Data=wguiv_stExtLayerOsdMapBmp.pBData;
    for(i=0;i<u32Height;i++)
    {
        wguiv_u32ExtLayerLayerOsdLine[i] = (MBT_U32)pu8Data;
        pu8Data+=iPitch;
    }
    //WGUIF_TestOSD();
    return stRet;
}


MMT_STB_ErrorCode_E  WGUIF_ReFreshLayer(MBT_VOID)
{
    MMT_STB_ErrorCode_E eRet = MM_NO_ERROR;
    MBT_U8 *pu8Src1 = MM_NULL;
    MBT_U8 *pu8Src2 = MM_NULL;
    STWguiDispErea *pstClip;
    //MLMF_Print("WGUIF_ReFreshLayer start\n");
    pstClip = &wguiv_DisplayErea;
    pu8Src1 = wguiv_stFullSCROsdMapBmp.pBData;

    if(pstClip->u16StartX < pstClip->u16EndX&&pstClip->u16StartY < pstClip->u16EndY)
    {
        eRet |= MLMF_OSD_Disp(pu8Src1,OSD_REGINMAXWIDHT,pstClip->u16StartX,pstClip->u16StartY,pstClip->u16EndX-pstClip->u16StartX,pstClip->u16EndY-pstClip->u16StartY);
        pstClip->u16StartX = OSD_REGINMAXWIDHT;
        pstClip->u16StartY = OSD_REGINMAXHEIGHT;
        pstClip->u16EndX = 0;
        pstClip->u16EndY = 0;
    }
    //MLMF_Print("wguiv_DisplayErea u16StartX %d,u16EndX %d,u16StartY%d,u16EndY %d\n",stDisplayErea.u16StartX,stDisplayErea.u16EndX,stDisplayErea.u16StartY,stDisplayErea.u16EndY);
    pstClip = &wguiv_DisplayEreaExt;
    pu8Src2 = wguiv_stExtLayerOsdMapBmp.pBData;

    if(pstClip->u16StartX < pstClip->u16EndX&&pstClip->u16StartY < pstClip->u16EndY)
    {
        eRet |= MLMF_OSD_DispExt(pu8Src2,OSD_REGINMAXWIDHT,pstClip->u16StartX,pstClip->u16StartY,pstClip->u16EndX-pstClip->u16StartX,pstClip->u16EndY-pstClip->u16StartY);
        pstClip->u16StartX = OSD_REGINMAXWIDHT;
        pstClip->u16StartY = OSD_REGINMAXHEIGHT;
        pstClip->u16EndX = 0;
        pstClip->u16EndY = 0;
    }

    //MLMF_Print("WGUIF_ReFreshLayer MLMF_OSD_Flush\n");
    eRet |= MLMF_OSD_Flush(pstClip->u16StartX,pstClip->u16StartY,pstClip->u16EndX-pstClip->u16StartX,pstClip->u16EndY-pstClip->u16StartY);
    //MLMF_Print("WGUIF_ReFreshLayer OK\n");
    return eRet;
}

/*
MBT_VOID WGUIF_TestOSD(MBT_VOID)
{
    WGUIF_DrawFilledRectangle(0,0,OSD_REGINMAXWIDHT,OSD_REGINMAXHEIGHT,STARTUP_BG_COLOR);
    WGUIF_DrawFilledRectExt(0,0,200,200,0x22D52010);
    WGUIF_ReFreshLayer();
    while(1)
    {
        MLMF_Task_Sleep(2000);
    }
}
*/

MMT_STB_ErrorCode_E wguif_DispRect(MBT_U32 xStart,MBT_U32 yStart,MBT_U32 u32Width,MBT_U32 u32Height)
{
    STWguiDispErea *pstClip;
    if(xStart + u32Width > OSD_REGINMAXWIDHT||yStart + u32Height > OSD_REGINMAXHEIGHT)
    {
        return MM_ERROR_BAD_PARAMETER;
    }
    pstClip = &wguiv_DisplayErea;
    if(pstClip->u16StartX > xStart)
    {
        pstClip->u16StartX = xStart;
    }
    if(pstClip->u16StartY > yStart)
    {
        pstClip->u16StartY = yStart;
    }
    if(pstClip->u16EndX< xStart + u32Width)
    {
        pstClip->u16EndX = xStart + u32Width;
    }
    if(pstClip->u16EndY < yStart + u32Height)
    {
        pstClip->u16EndY = yStart + u32Height;
    }
    
    pstClip = &wguiv_DisplayEreaExt;
    if(pstClip->u16StartX > xStart)
    {
        pstClip->u16StartX = xStart;
    }
    if(pstClip->u16StartY > yStart)
    {
        pstClip->u16StartY = yStart;
    }
    if(pstClip->u16EndX< xStart + u32Width)
    {
        pstClip->u16EndX = xStart + u32Width;
    }
    if(pstClip->u16EndY < yStart + u32Height)
    {
        pstClip->u16EndY = yStart + u32Height;
    }
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E wguif_DispEreaCopy (MBT_S32 s32ScrX, MBT_S32 s32BmpXOff, MBT_U32 *pu32Dest,MBT_S32 s32DPicW,MBT_U32 *pu32Src,MBT_S32 s32SPicW,MBT_S32 s32CopyW,MBT_S32 s32CopyH)
{
    MBT_S32 i,k;
    MBT_U32 *pu32DestPos = pu32Dest;
    MBT_U32 *pu32SrcPos = pu32Src;
    MBT_U32 u32DPatch = s32DPicW - s32CopyW;
    MBT_U32 u32SPatch = s32SPicW - s32CopyW;

    for(i = 0;i < s32CopyH;++i)
    {
        for(k = 0;k < s32CopyW;++k)
        {
            *pu32DestPos = *pu32SrcPos;
            pu32DestPos++;
            pu32SrcPos++;
        }
        //memcpy((void*)pu32DestPos, (void*)pu32SrcPos, sizeof(MBT_U32)*s32CopyW);
        pu32DestPos += u32DPatch;
        pu32SrcPos += u32SPatch;
    }
    
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E wguif_DispRecExt(MBT_U32 xStart,MBT_U32 yStart,MBT_U32 u32Width,MBT_U32 u32Height)
{
    STWguiDispErea *pstClip;
    if(xStart + u32Width > OSD_REGINMAXWIDHT||yStart + u32Height > OSD_REGINMAXHEIGHT)
    {
        return MM_ERROR_BAD_PARAMETER;
    }
    pstClip = &wguiv_DisplayEreaExt;
    if(pstClip->u16StartX > xStart)
    {
        pstClip->u16StartX = xStart;
    }
    if(pstClip->u16StartY > yStart)
    {
        pstClip->u16StartY = yStart;
    }
    if(pstClip->u16EndX< xStart + u32Width)
    {
        pstClip->u16EndX = xStart + u32Width;
    }
    if(pstClip->u16EndY < yStart + u32Height)
    {
        pstClip->u16EndY = yStart + u32Height;
    }
    return MM_NO_ERROR;
}


