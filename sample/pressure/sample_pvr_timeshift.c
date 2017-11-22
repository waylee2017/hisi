/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : sample_pvr_timeshift.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/01/26
  Description   :
  History       :
  1.Date        : 2010/01/26
    Author      : q46153
    Modification: Created file

******************************************************************************/
#include <stdlib.h>

#include "hi_adp.h"
#include "hi_adp_audio.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_boardcfg.h"
#include "hi_adp_mpi.h"
#include "hi_adp_tuner.h"
#include "hi_adp_pvr.h"

#undef DISPLAY_JPEG
#ifdef DISPLAY_JPEG
#include "hi_go_gdev.h"
#include "hi_go_bliter.h"
#include "hi_go_decoder.h"

typedef enum tagFILE_TYPE_E
{
    FILE_TYPE_JPEG,
    FILE_TYPE_RLE,
    FILE_TYPE_BUTT
}FILE_TYPE_E;

static HI_CHAR* pszPicFile[] = { "jpg/1280x720.jpg", "jpg/1920x1080.jpg"};
static HI_CHAR* pszRleFile[] = { "./res/rle/bg.rle", "./res/rle/bg2.rle"};

#endif

#define MAX_TIMESHIFT_REC_FILE_SIZE       (2000*1024*1024LLU)

HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;
HI_U32 g_ThirdParam;
static HI_UNF_ENC_FMT_E g_enDefaultFmt = HI_UNF_ENC_FMT_720P_50;
PMT_COMPACT_TBL *g_pProgTbl = HI_NULL;
HI_HANDLE g_hTsBufForPvrPlayBack;
HI_U32 g_PlayChn = 0xffffffff;


HI_S32 DmxInitAndSearch(HI_S32 nRecDmxID, HI_S32 sPlayDmxID, HI_UNF_DMX_PORT_E enRecPort)
{
    HI_S32   Ret;

    Ret = HI_UNF_DMX_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_Init failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DMX_AttachTSPort(sPlayDmxID, enRecPort);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_AttachTSPort failed.\n");
        HI_UNF_DMX_DeInit();
        return Ret;
    }

    Ret = HI_UNF_DMX_AttachTSPort(nRecDmxID, enRecPort);
    Ret |= HI_UNF_DMX_AttachTSPort(nRecDmxID+1, enRecPort);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_AttachTSPort for REC failed.\n");
        HI_UNF_DMX_DeInit();
        return Ret;
    }

    return HI_SUCCESS;
}

HI_S32 DmxDeInit(HI_VOID)
{
    HI_S32 Ret;

    HIADP_Search_FreeAllPmt(g_pProgTbl);

    Ret = HI_UNF_DMX_DetachTSPort(PVR_DMX_ID_LIVE);
    Ret |= HI_UNF_DMX_DetachTSPort(PVR_DMX_ID_REC);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_DetachTSPort failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DMX_DeInit();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_DMX_DeInit failed.\n");
        return Ret;
    }

    return HI_SUCCESS;
}


HI_S32 SwitchToShiftPlay(const HI_CHAR *pszFileName, HI_U32 *pu32PlayChn,
             HI_HANDLE hAvplay)
{

    PVR_SwitchDmxSource(PVR_DMX_ID_LIVE, PVR_DMX_PORT_ID_PLAYBACK);
    PVR_StartPlayBack(pszFileName, pu32PlayChn, hAvplay);

    return HI_SUCCESS;
}


HI_S32 SwitchToLivePlay(HI_U32 u32PlayChn, HI_HANDLE hAvplay, const PMT_COMPACT_PROG *pProgInfo)
{
    PVR_StopPlayBack(u32PlayChn);


    PVR_SwitchDmxSource(PVR_DMX_ID_LIVE, PVR_DMX_PORT_ID_DVB);
    PVR_StartLivePlay(hAvplay, pProgInfo);
    return HI_SUCCESS;
}

#ifdef DISPLAY_JPEG
static HI_S32 file_dec_doublevo(HI_CHAR *pszFileName, HI_HANDLE *pSurface)
{
    HI_S32 ret;
    HI_HANDLE hDecoder;
    HIGO_DEC_ATTR_S stSrcDesc;

    /** create decode*/
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = pszFileName;
    ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (HI_SUCCESS != ret)
    {
        sample_printf("HI_GO_CreateDecoder failed!\n");
        return ret;
    }

    /** decode it to Surface */
    ret  = HI_GO_DecImgData(hDecoder, 0, NULL, pSurface);
    ret |= HI_GO_DestroyDecoder(hDecoder);

    return ret;
}

#define HEAD_LENGTH 40

HI_S32 RLE_CreatePalette(HI_CHAR *pFileName, HI_U32 *pPaltBuf)
{
    HI_CHAR cRGB[4];
    HI_CHAR HeadInfo[HEAD_LENGTH+1];
    HI_U32 *pTmp;
    FILE *pFile;
    HI_U32 Length;
    HI_U32 Size;
    HI_S32 i;
    if(!pPaltBuf)
    {
        return HIGO_ERR_INVFILE;
    }

    pTmp = pPaltBuf;

    pFile = fopen(pFileName,  (const HI_CHAR *)"r");
    if (HI_NULL_PTR == pFile)
    {
        return HIGO_ERR_INVFILE;
    }

    Length = fread(HeadInfo, 1, HEAD_LENGTH, pFile);
    if (HEAD_LENGTH != Length)
    {
        fclose(pFile);
        return HIGO_ERR_INVFILE;
    }
    if (strncmp(HeadInfo, (const HI_CHAR *)"HIPAL", 5) != 0)
    {
        fclose(pFile);
        return HIGO_ERR_INVFILE;
    }

    Size =  HeadInfo[8] | (HeadInfo[9] << 8) | (HeadInfo[10] << 16) | (HeadInfo[11]<< 24);
    if (Size != 1024)
    {
        fclose(pFile);
        return HIGO_ERR_INVFILE;
    }

    for(i = 0; i < 1024; i++)
    {
        Length = fread(cRGB, 1, 4, pFile);
        if(Length != 4)
        {
            break;
        }
        *(pTmp++) = 0xff000000|((cRGB[2]) << 16)|((cRGB[1])<<8)|(cRGB[0]);
    }
    fclose(pFile);
    return HI_SUCCESS;
}

static HI_S32 file_dec_rle(HI_CHAR *pszFileName, HI_HANDLE *pSurface, HI_HANDLE hLayer, HI_HANDLE hDstSurface)
{
    HI_S32 ret;
    HI_HANDLE hDecoder;
    HIGO_DEC_ATTR_S stSrcDesc;
    HIGO_DEC_PRIMARYINFO_S PrimaryInfo;
    HI_S32 Index = 0;
    HIGO_DEC_IMGINFO_S ImgInfo;
    HI_PALETTE Palette={0};
    HI_RECT srcRect = {0};
    HI_RECT dstRect = {0};
    HIGO_BLTOPT_S CompositeOpt = {0};

    /** create decode*/
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = pszFileName;
    ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (HI_SUCCESS != ret)
    {
        sample_printf("HI_GO_CreateDecoder failed %s..........!\n", pszFileName);
        return ret;
    }

    /** 获取文件公共信息 */
    ret = HI_GO_DecCommInfo(hDecoder, &PrimaryInfo);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyDecoder(hDecoder);
        sample_printf("======line:%d failed!\n", __LINE__);
        return HI_FAILURE;
    }

    Index = 0;
    while (Index < PrimaryInfo.Count)
    {
        ret =  RLE_CreatePalette("./res/rle/public.pal", Palette);
        if (HI_SUCCESS != ret)
        {
            sample_printf("======line:%d failed !\n", __LINE__);
            break;
        }
        ret = HI_GO_SetLayerPalette(hLayer, Palette);
        if (HI_SUCCESS != ret)
        {
            sample_printf("======line:%d failed!\n", __LINE__);
            break;
        }


        /** 图片解码 */
        ret |= HI_GO_DecImgInfo(hDecoder,Index,&ImgInfo);
        ret = HI_GO_DecImgData(hDecoder, Index, NULL, pSurface);

        if (HI_SUCCESS != ret)
        {
            sample_printf("======line:%d failed!\n", __LINE__);
            break;
        }

        /** 搬移到图层 */
        CompositeOpt.EnableScale = HI_FALSE;

        srcRect.x = 0;
        srcRect.y = 0;
        srcRect.w = ImgInfo.Width;
        srcRect.h = ImgInfo.Height;

        dstRect.x = 0;
        dstRect.y = 0;
        dstRect.w = ImgInfo.Width;
        dstRect.h = ImgInfo.Height;

        //CompositeOpt.ColorKeyFrom = HIGO_CKEY_SRC;

        ret = HI_GO_Blit(*pSurface, &srcRect, hDstSurface, &dstRect, &CompositeOpt);
        if (HI_SUCCESS != ret)
        {
            sample_printf("======line:%d failed %x!\n", __LINE__, ret);
            break;
        }
        /** 刷新图层显示 */
        ret = HI_GO_RefreshLayer(hLayer, NULL);
        if (HI_SUCCESS != ret)
        {
            sample_printf("======line:%d failed!\n", __LINE__);
            break;
        }

        /** 释放解码 */
        ret = HI_GO_FreeSurface(*pSurface);
        if (HI_SUCCESS != ret)
        {
            sample_printf("======line:%d failed!\n", __LINE__);
            break;
        }

        Index++;
        usleep(ImgInfo.DelayTime * 1000);
    }

    /** decode it to Surface */
    ret |= HI_GO_DestroyDecoder(hDecoder);

    return ret;
}


HI_S32 BlitPic(HI_HANDLE* phLayerHD, HI_CHAR* pImageFile, FILE_TYPE_E enFileType, HI_HANDLE* phLayerSurface)
{
    HI_S32 s32Ret = 0;

    HI_U32 StartX_HD, StartY_HD;
    HI_HANDLE hDecSurface, hLayer_HD, hLayer_Surface_HD;
    HI_CHAR aszFileName[256] = {0};
    HIGO_LAYER_INFO_S stLayerInfo_HD;
    HIGO_BLTOPT_S stBltOpt   = {0};
    HIGO_LAYER_E eLayerID_HD = HIGO_LAYER_HD_0;
    HI_RECT stRect;
    HI_RECT stVideoRect = {0};
    HI_U32  u32BgColor = 0;

    s32Ret  = HI_GO_Init();
    s32Ret |= HI_GO_GetLayerDefaultParam(eLayerID_HD, &stLayerInfo_HD);
    if (HI_SUCCESS != s32Ret)
    {
        HI_GO_Deinit();

        sample_printf("HI_GO_GetLayerDefaultParam failed: line:%d\n", __LINE__);

        return HI_FAILURE;
    }

    stLayerInfo_HD.ScreenWidth  = 1920;
    stLayerInfo_HD.ScreenHeight = 1080;
    if (enFileType == FILE_TYPE_JPEG)
    {
        stLayerInfo_HD.PixelFormat = HIGO_PF_8888;
    }
    else
    {
        stLayerInfo_HD.PixelFormat = HIGO_PF_CLUT8;
    }
    stLayerInfo_HD.LayerFlushType = HIGO_LAYER_FLUSH_NORMAL;
    stLayerInfo_HD.AntiLevel = HIGO_LAYER_DEFLICKER_NONE;

    /**create the graphic layer and get the handler */
    s32Ret = HI_GO_CreateLayer(&stLayerInfo_HD, &hLayer_HD);
    if (HI_SUCCESS != s32Ret)
    {
        HI_GO_Deinit();

        sample_printf("HI_GO_CreateLayer failed: line:%d\n", __LINE__);

        return HI_FAILURE;
    }

    *phLayerHD = hLayer_HD;

    StartX_HD = 0;
    StartY_HD = 0;
    HI_GO_SetLayerPos(hLayer_HD, StartX_HD, StartY_HD);
    s32Ret = HI_GO_GetLayerSurface(hLayer_HD, &hLayer_Surface_HD);
    if (HI_SUCCESS != s32Ret)
    {
        HI_GO_DestroyLayer(hLayer_HD);

        HI_GO_Deinit();

        sample_printf("HI_GO_GetLayerSurface failed: line:%d\n", __LINE__);

        return HI_FAILURE;
    }

    if (phLayerSurface != NULL)
    {
        *phLayerSurface = hLayer_Surface_HD;
    }

    HI_GO_FillRect(hLayer_Surface_HD, NULL, 0xff000000, 0);
    HI_GO_RefreshLayer(hLayer_HD, NULL);

    stBltOpt.EnableScale = HI_TRUE;

    snprintf(aszFileName, sizeof(aszFileName), "./res/%s", pImageFile);

    stRect.x = stRect.y = 0;
    stRect.w = stLayerInfo_HD.DisplayWidth;
    stRect.h = stLayerInfo_HD.DisplayHeight;

    /**decoding*/
    if (enFileType == FILE_TYPE_JPEG)
    {
        s32Ret = file_dec_doublevo(aszFileName, &hDecSurface);
        if (s32Ret == -1)
        {
            sample_printf("file_dec_doublevo failed, again...\n");
            s32Ret = file_dec_doublevo(aszFileName, &hDecSurface);
        }
        if (HI_SUCCESS == s32Ret)
        {
            /** Blit it to graphic layer Surface */
            s32Ret = HI_GO_Blit(hDecSurface, NULL, hLayer_Surface_HD, &stRect, &stBltOpt);
            sample_printf("HI_GO_Blit result is %d:(0x%08x)\n",s32Ret,s32Ret);
            HI_GO_RefreshLayer(hLayer_HD, NULL);
            HI_GO_FreeSurface(hDecSurface);
        }

        stVideoRect.x = stRect.w/4;
        stVideoRect.y = stRect.h/4;
        stVideoRect.w = stRect.w/2;
        stVideoRect.h = stRect.h/2;

        HI_GO_GetLayerBGColor(hLayer_Surface_HD, &u32BgColor);
        u32BgColor = u32BgColor & 0x00FFFFFF;
        HI_GO_FillRect(hLayer_Surface_HD, &stVideoRect, u32BgColor, 0);
    }
    else
    {
        file_dec_rle(aszFileName, &hDecSurface, hLayer_HD, hLayer_Surface_HD);
        HI_GO_SetLayerAlpha(hLayer_HD, 128);
    }

    return HI_SUCCESS;
}
#endif

#include "hi_go_comm.h"
#include "hi_go_gdev.h"
#include "hi_go_bliter.h"
#include "hi_go_text.h"
HI_HANDLE hLayer_pvr = HI_INVALID_HANDLE;
HI_HANDLE hLayerSurface_pvr;
HI_HANDLE hFont_pvr = HI_INVALID_HANDLE;
HI_BOOL             g_bIsPlayStop = HI_FALSE;

HI_U32              g_u32RecChn = 0xffffffff;

static pthread_t   g_StaThd;


HI_S32 OsdInit(HI_VOID)
{
    HI_S32   s32Ret;
    HIGO_LAYER_INFO_S stLayerInfo = {0};
    return HI_SUCCESS;
    s32Ret = HI_GO_Init();
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to init higo! ret = 0x%x !\n", s32Ret);
        return HI_FAILURE;
    }

#ifndef CHIP_TYPE_hi3110ev500
    HI_GO_GetLayerDefaultParam(HIGO_LAYER_HD_0, &stLayerInfo);
    stLayerInfo.PixelFormat = HIGO_PF_1555;
    stLayerInfo.ScreenHeight = 1280;
    stLayerInfo.ScreenWidth = 1920;
#else
    HI_GO_GetLayerDefaultParam(HIGO_LAYER_SD_0, &stLayerInfo);
    stLayerInfo.PixelFormat = HIGO_PF_1555;
    stLayerInfo.ScreenHeight = 576;
    stLayerInfo.ScreenWidth = 720;
#endif
    stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_NORMAL;

    s32Ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer_pvr);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to create the layer sd 0, ret = 0x%x !\n", s32Ret);
        return HI_FAILURE;
    }

    s32Ret =  HI_GO_GetLayerSurface(hLayer_pvr, &hLayerSurface_pvr);
    if  (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to get layer surface! s32Ret = 0x%x \n", s32Ret);
        return HI_FAILURE;
    }

    HI_GO_FillRect(hLayerSurface_pvr, NULL, 0x00000000, HIGO_COMPOPT_NONE);

    s32Ret = HI_GO_CreateText("./res/DroidSansFallbackLegacy.ttf", NULL, &hFont_pvr);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to create the font:./res/DroidSansFallbackLegacy.ttf ! ret=%#x\n",s32Ret);
        return HI_FAILURE;
    }
    HI_GO_RefreshLayer(hLayer_pvr, NULL);
#ifndef CHIP_TYPE_hi3110ev500
    HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_HD0, HI_UNF_DISP_LAYER_OSD_0, HI_LAYER_ZORDER_MOVETOP);
#else
    HI_UNF_DISP_SetLayerZorder(HI_UNF_DISP_SD0, HI_UNF_DISP_LAYER_OSD_0, HI_LAYER_ZORDER_MOVETOP);
#endif

    return HI_SUCCESS;
}


HI_S32 DrawStatusString(HI_CHAR *szText)
{
    HI_S32 Ret;
    HI_RECT Rect={100,230,100,30};
    return HI_SUCCESS;
    HI_GO_FillRect(hLayerSurface_pvr, &Rect, 0x80000000, HIGO_COMPOPT_NONE);
    HI_GO_DrawRect(hLayerSurface_pvr, &Rect, 0xffffffff);

    HI_GO_SetTextColor(hFont_pvr, 0xff00ff00);

    
    Ret = HI_GO_TextOutEx(hFont_pvr, hLayerSurface_pvr, szText, &Rect, HIGO_LAYOUT_RIGHT);
    if (HI_SUCCESS != Ret) 
    {
        sample_printf("call HI_GO_TextOut faild!\n");
    }

    Ret = HI_GO_RefreshLayer(hLayer_pvr, NULL);
    if (HI_SUCCESS != Ret) 
    {
        sample_printf("call HI_GO_RefreshLayer faild!\n");     
    }

    return 0;
}

HI_VOID ConverTimeString(HI_CHAR* pBuf, HI_U32 u32BufLen, HI_U32 u32TimeInMs)
{
    HI_U32 u32Hour = 0;
    HI_U32 u32Minute = 0;
    HI_U32 u32Second = 0;
    HI_U32 u32MSecond = 0;

    u32Hour = u32TimeInMs/(60*60*1000);

    u32Minute = (u32TimeInMs - u32Hour*60*60*1000)/(60*1000);
    u32Second = (u32TimeInMs - u32Hour*60*60*1000 - u32Minute*60*1000)/1000;

    u32MSecond = (u32TimeInMs - u32Hour*60*60*1000 - u32Minute*60*1000 - u32Second*1000);

    snprintf(pBuf, u32BufLen, "%d:%02d:%02d:%04d", u32Hour, u32Minute, u32Second, u32MSecond);

    return;
}

HI_S32 DrawString(HI_U32 u32TimeType, HI_CHAR *szText)
{
    HI_S32   s32Ret;
    HI_RECT rc_Str[6] = {{100, 200, 150, 30},
                         {100, 230, 180, 30},
                         {100, 260, 180, 30},
                         {100, 290, 180, 30},
                         {100, 320, 180, 30},
                         {100, 350, 180, 30}};

    if (5 < u32TimeType)
    {
        sample_printf("Out of time type!\n");
        return HI_FAILURE;
    }
    return HI_SUCCESS;
    HI_GO_FillRect(hLayerSurface_pvr, &rc_Str[u32TimeType], 0x80000000, HIGO_COMPOPT_NONE);
    HI_GO_DrawRect(hLayerSurface_pvr, &rc_Str[u32TimeType], 0xffffffff);

    HI_GO_SetTextColor(hFont_pvr, 0xff00ff00);

    s32Ret = HI_GO_TextOutEx(hFont_pvr, hLayerSurface_pvr, szText, &rc_Str[u32TimeType], HIGO_LAYOUT_RIGHT);
    if (HI_SUCCESS != s32Ret)
    {
        sample_printf("failed to text out char!\n");
        return HI_FAILURE;
    }

    HI_GO_RefreshLayer(hLayer_pvr, NULL);

    return HI_SUCCESS;
}

HI_VOID * StatuThread(HI_VOID *args)
{
    HI_S32 Ret;
    HI_UNF_PVR_PLAY_STATUS_S stStatus;
    HI_U32 u32TimeSec = 0;
    HI_CHAR timestr[20];
    HI_UNF_PVR_REC_ATTR_S stRecAttr;
    HI_UNF_PVR_REC_STATUS_S RecstStatus;
    HI_UNF_PVR_FILE_ATTR_S FileStatus;
    HI_CHAR Rectimestr[20];
    HI_CHAR Playtimestr[20];

    while (HI_FALSE == g_bIsPlayStop)
    {
        usleep(10000);
        continue;
        (void)HI_UNF_PVR_RecGetChn(g_u32RecChn, &stRecAttr);

        Ret = HI_UNF_PVR_RecGetStatus(g_u32RecChn, &RecstStatus);
        if (HI_SUCCESS == Ret)
        {
            snprintf(Rectimestr, sizeof(Rectimestr),"Rec time:%ds", RecstStatus.u32CurTimeInMs/1000);
            DrawString(1, Rectimestr);
            snprintf(Rectimestr, sizeof(Rectimestr),"Rec len:%ds", (RecstStatus.u32EndTimeInMs-RecstStatus.u32StartTimeInMs)/1000);
            DrawString(2, Rectimestr);
        }

        Ret = HI_UNF_PVR_GetFileAttrByFileName(stRecAttr.szFileName, &FileStatus);
        if (HI_SUCCESS == Ret)
        {
            snprintf(Rectimestr, sizeof(Rectimestr),"Rec size:%lld.%lldM",
                     (FileStatus.u64ValidSizeInByte)/0x100000,
                     ((FileStatus.u64ValidSizeInByte)%0x100000)/0x400);
            DrawString(3, Rectimestr);
        }

        if (0xffffffff != g_PlayChn)
        {
            Ret = HI_UNF_PVR_PlayGetStatus(g_PlayChn, &stStatus);
            if (HI_SUCCESS == Ret)
            {
                snprintf(timestr, sizeof(timestr), "%d", stStatus.u32CurPlayTimeInMs/1000);
                //ConverTimeString(timestr, sizeof(timestr),stStatus.u32CurPlayTimeInMs);
                //DrawTimeSring(timestr);
                snprintf(Playtimestr,sizeof(Playtimestr), "Play:%s", timestr);
                DrawString(4, Playtimestr);
                if (u32TimeSec != (HI_U32)(stStatus.u32CurPlayTimeInMs/1000))
                {
                    //sample_printf("====time used:%dms,\t%s\n",hi_timer_count(),timestr);
                    u32TimeSec = stStatus.u32CurPlayTimeInMs/1000;
                }
            }
        }
       
    }

    return NULL;
}

HI_U32 g_ShowPicThread_Run = 1;

#ifdef DISPLAY_JPEG
void* ShowPicRoute(void *args)
{
    HI_U32 u32Index = 0;
    HI_U32 u32Cnt = sizeof(pszRleFile)/sizeof(pszRleFile[0]);
    HI_HANDLE hLayer_HD    = 0;
    HI_HANDLE hDecSurface  = 0;
    HI_HANDLE hLayerSurface = 0;

    BlitPic(&hLayer_HD, "rle/bg.rle", FILE_TYPE_RLE, &hLayerSurface);

    while (g_ShowPicThread_Run)
    {
        file_dec_rle(pszRleFile[u32Index], &hDecSurface, hLayer_HD, hLayerSurface);
        u32Index++;
        u32Index = u32Index%u32Cnt;

        usleep(17000);
    }

    return NULL;
}

pthread_t start_show_pic()
{
    pthread_t pHandle;

    g_ShowPicThread_Run = 1;

    if (pthread_create(&pHandle, NULL, ShowPicRoute, NULL))
    {
        return HI_FAILURE;
    }

    return pHandle;
}

void stop_show_pic(pthread_t pThread)
{
    g_ShowPicThread_Run = 0;

    if(pThread != 0)
    {
        pthread_join(pThread, HI_NULL);
    }
}
#endif

//#define BACKGROUND_RUNNING
HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32                  Ret;
    HI_HANDLE               hWin;
    HI_CHAR                 InputCmd[32] = {0};
    HI_U32                  u32ProgNum = 0;
    HI_U32                  RecChn;
    HI_U32                  RecChn2 = 0xffffffff;

    HI_HANDLE               hAvplay;
    HI_UNF_PVR_REC_ATTR_S   RecAttr;
    PMT_COMPACT_PROG        *pstFirstProgInfo;
    PMT_COMPACT_PROG        *pstSecondProgInfo;
    HI_BOOL                 bLive = HI_TRUE;
    HI_BOOL                 bPause = HI_FALSE;
//    pthread_t              pthreadShowPic = 0;
#ifdef DISPLAY_JPEG
    HI_HANDLE               hLayer_HD    = 0;
    HI_BOOL                 bShowJpeg = HI_TRUE;
    HI_U32                  u32Jpeg = 0;
    HI_UNF_WINDOW_ATTR_S    stWinAttr = {0};
#endif

    HI_U32 u32Speed = 1;
    HI_BOOL bRecTwo   = HI_FALSE;
    HI_BOOL bNetStream = HI_FALSE;

#ifndef CHIP_TYPE_hi3110ev500
    g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
#else
    g_enDefaultFmt = HI_UNF_ENC_FMT_PAL;
#endif

    if (8 == argc)
    {
        g_TunerFreq  = strtol(argv[2],NULL,0);
        g_TunerSrate = strtol(argv[3],NULL,0);
        g_ThirdParam = strtol(argv[4],NULL,0);
        g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[5]);
        #ifdef DISPLAY_JPEG
        u32Jpeg = strtol(argv[6],NULL,0);
        bShowJpeg = HI_FALSE;
        #endif

        if (strtol(argv[7],NULL,0))
        {
            bRecTwo   = HI_TRUE;
        }
    }
    else if (7 == argc)
    {
        g_TunerFreq  = strtol(argv[2],NULL,0);
        g_TunerSrate = strtol(argv[3],NULL,0);
        g_ThirdParam = strtol(argv[4],NULL,0);
        g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[5]);
        #ifdef DISPLAY_JPEG
        u32Jpeg = strtol(argv[6],NULL,0);
        #endif
    }
    else if (6 == argc)
    {
        g_TunerFreq  = strtol(argv[2],NULL,0);
        g_TunerSrate = strtol(argv[3],NULL,0);
        g_ThirdParam = strtol(argv[4],NULL,0);
        g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[5]);
    }
    else if (5 == argc)
    {
        g_TunerFreq  = strtol(argv[2],NULL,0);
        g_TunerSrate = strtol(argv[3],NULL,0);
        g_ThirdParam = strtol(argv[4],NULL,0);
    }
    else if(4 == argc)
    {
        g_TunerFreq  = strtol(argv[2],NULL,0);
        g_TunerSrate = strtol(argv[3],NULL,0);
        g_ThirdParam = (g_TunerFreq>1000) ? 0 : 64;
    }
    else if(3 == argc)
    {
        g_TunerFreq  = strtol(argv[2],NULL,0);
        g_TunerSrate = (g_TunerFreq>1000) ? 27500 : 6875;
        g_ThirdParam = (g_TunerFreq>1000) ? 0 : 64;
    }
    else
    {
        printf("Usage: %s file_path freq [srate] [qamtype or polarization] [vo_format] [tuner] [JPEG]\n"
                "       qamtype or polarization: \n"
                "           For cable, used as qamtype, value can be 16|32|[64]|128|256|512 defaut[64] \n"
                "           For satellite, used as polarization, value can be [0] horizontal | 1 vertical defaut[0] \n"
                "       vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n"
                "       pic_index:1-1280x720, 2-1920x1080\n"
                "       rec_number: the number of recording program, 0-one recording; otherwise, two recording.\n" , argv[0]);
        return HI_FAILURE;
    }

    HI_SYS_Init();

//    HIADP_MCE_Exit();

    if (bNetStream == HI_FALSE)
    {
        Ret = DmxInitAndSearch(PVR_DMX_ID_REC, PVR_DMX_ID_LIVE, PVR_DMX_PORT_ID_DVB);
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call VoInit failed.\n");
            return Ret;
        }

        Ret = HIADP_Tuner_Init();
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HIADP_Demux_Init failed.\n");
            return Ret;
        }

        sample_printf("HIADP_Tuner_Connect, frequency:%d, Symbol:%d, Qam:%d\n", g_TunerFreq,g_TunerSrate,g_ThirdParam);

        Ret = HIADP_Tuner_Connect(TUNER_USE,g_TunerFreq,g_TunerSrate,g_ThirdParam);
        if (HI_SUCCESS != Ret)
        {
            sample_printf("call HIADP_Tuner_Connect failed. Ret = 0x%x\n", Ret);

            return Ret;
        }
    }
    else
    {
        Ret = DmxInitAndSearch(PVR_DMX_ID_REC, PVR_DMX_ID_LIVE, PVR_DMX_PORT_ID_IP);
        if (Ret != HI_SUCCESS)
        {
            sample_printf("call VoInit failed.\n");
            return Ret;
        }


//        PVR_StartNetStream("239.0.0.1", 1234);
    }

    HIADP_Search_Init();

    if ( g_pProgTbl != HI_NULL)
    {
        HIADP_Search_FreeAllPmt(g_pProgTbl);
        g_pProgTbl = HI_NULL;
    }

    Ret = HIADP_Search_GetAllPmt(PVR_DMX_ID_REC, &g_pProgTbl);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed\n");
        return Ret;
    }

    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        return Ret;
    }

    Ret = HIADP_Disp_Init(g_enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_DeInit failed.\n");
        return Ret;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    Ret |= HIADP_VO_CreatWin(HI_NULL,&hWin);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_VO_Init failed.\n");
        HIADP_VO_DeInit();
        return Ret;
    }

    Ret = PVR_AvplayInit(hWin, &hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call VoInit failed.\n");
        return Ret;
    }

#ifdef DISPLAY_JPEG
    if (u32Jpeg && u32Jpeg <= sizeof(pszPicFile)/sizeof(pszPicFile[0]))
    {
        HI_UNF_DISP_SetLayerZorder(HI_UNF_DISPLAY1, HI_UNF_DISP_LAYER_GFX0, HI_LAYER_ZORDER_MOVETOP);
        if (bShowJpeg == HI_TRUE)
        {
            BlitPic(&hLayer_HD, pszPicFile[u32Jpeg-1], FILE_TYPE_JPEG, NULL);

            Ret = HI_UNF_VO_GetWindowAttr(hWin, &stWinAttr);

            stWinAttr.stOutputRect.s32Width = stWinAttr.stInputRect.s32Width/2;
            stWinAttr.stOutputRect.s32Height = stWinAttr.stInputRect.s32Height/2;
            stWinAttr.stOutputRect.s32X = stWinAttr.stInputRect.s32Width/4;
            stWinAttr.stOutputRect.s32Y = stWinAttr.stInputRect.s32Height/4;

            HI_UNF_VO_SetWindowAttr(hWin, &stWinAttr);
        }
        else
        {
            pthreadShowPic = start_show_pic();
        }
    }
#endif

    printf("================================\n");

    Ret = HI_UNF_PVR_RecInit();
    Ret |= HI_UNF_PVR_PlayInit();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_PVR_RecInit failed.\n");
        return Ret;
    }

    Ret = PVR_RegisterCallBacks();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call PVR_RegisterCallBacks failed.\n");
        return Ret;
    }

    sample_printf("please input the number of program to timeshift:\n");
    #ifdef BACKGROUND_RUNNING
    u32ProgNum = 1;
    #else
    u32ProgNum = 0;
    #endif
#if 0
    while (0 == u32ProgNum)
    {
        memset(InputCmd, 0, sizeof(32));
        fgets(InputCmd, 30, stdin);
        if ('q' == InputCmd[0])
        {
            return 0;
        }

        u32ProgNum = atoi(InputCmd);
    }
#else
    u32ProgNum = 1;
#endif
    pstFirstProgInfo = g_pProgTbl->proginfo
                         + ((u32ProgNum-1)% g_pProgTbl->prog_num);

    PVR_RecStart(argv[1], pstFirstProgInfo,PVR_DMX_ID_REC, 1,0, MAX_TIMESHIFT_REC_FILE_SIZE, &RecChn);

    g_u32RecChn = RecChn;
    
    OsdInit();
    pthread_create(&g_StaThd, HI_NULL, StatuThread, HI_NULL);

    DrawStatusString("Rec");

    //pthread_create(&g_TimeThread, HI_NULL, StatuThread, HI_NULL);

#ifndef BACKGROUND_RUNNING
    bLive = HI_TRUE;
    bPause = HI_FALSE;
    Ret = PVR_StartLivePlay(hAvplay, pstFirstProgInfo);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call SwitchProg failed.\n");
        return Ret;
    }
#else
    usleep(500*1000);
    HI_UNF_PVR_RecGetChn(RecChn,&RecAttr);
    printf("switch to timeshift:%s\n", RecAttr.szFileName);
    SwitchToShiftPlay(RecAttr.szFileName, &g_PlayChn, hAvplay);
#endif

    if (bRecTwo == HI_TRUE)
    {
        u32ProgNum = u32ProgNum + 1;
        pstSecondProgInfo = g_pProgTbl->proginfo
                             + ((u32ProgNum-1)% g_pProgTbl->prog_num);
        PVR_RecStart(argv[1], pstSecondProgInfo, PVR_DMX_ID_REC+1, 1,0, MAX_TIMESHIFT_REC_FILE_SIZE, &RecChn2);
    }

    while(1)
    {
        sleep(1);
        continue;
        #ifndef BACKGROUND_RUNNING
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);
        #endif
        
        if ('q' == InputCmd[0])
        {
            g_bIsPlayStop = HI_TRUE;
            sample_printf("prepare to exit!\n");
            break;
        }
        else if ('l' == InputCmd[0])
        {
            if (!bLive)
            {
                SwitchToLivePlay(g_PlayChn, hAvplay, pstFirstProgInfo);
                bLive = HI_TRUE;
                g_PlayChn = 0xffffffff;
            }
        }
        else if ('p' == InputCmd[0])
        {
            if (bPause)  /* when pause ,to shift play */
            {
                if (bLive)  /*when live, switch to shift play */
                {
                    printf("switch to timeshift...\n");
                    HI_UNF_PVR_RecGetChn(RecChn,&RecAttr);
                    SwitchToShiftPlay(RecAttr.szFileName, &g_PlayChn, hAvplay);
                    //g_u32RecChn = g_PlayChn;
                    bLive = HI_FALSE;
                }
                else  /* when shift, just to resume*/
                {
                    printf("PVR resume now.\n");
                    Ret = HI_UNF_PVR_PlayResumeChn(g_PlayChn);
                    if (Ret != HI_SUCCESS)
                    {
                        sample_printf("call HI_UNF_PVR_PlayPauseChn failed.\n");
                        return Ret;
                    }
                }
                bPause = HI_FALSE;
            }
            else  /* to pause */
            {
                if (bLive)  /*when live, stop live still last picture */
                {
                    PVR_StopLivePlay(hAvplay);

                    Ret = HI_UNF_PVR_PlayPauseChn(RecChn);
                    if (Ret != HI_SUCCESS)
                    {
                        sample_printf("call HI_UNF_PVR_PlayPauseChn failed.\n");
                        return Ret;
                    }
                }
                else  /* when shift, just to pause*/
                {
                    printf("PVR pause now.\n");
                    Ret = HI_UNF_PVR_PlayPauseChn(g_PlayChn);
                    if (Ret != HI_SUCCESS)
                    {
                        sample_printf("call HI_UNF_PVR_PlayPauseChn failed.\n");
                        return Ret;
                    }
                }
                bPause = HI_TRUE;
            }
        }
        else if ('f' == InputCmd[0])
        {
            if (bLive)  /*when live, can not fast forword */
            {
                printf("now live play, not support fast forword\n");

            }
            else
            {
                HI_UNF_PVR_PLAY_MODE_S stTrickMode;
                HI_UNF_PVR_PLAY_STATUS_S stStatus = {0};

                HI_UNF_PVR_PlayGetStatus(g_PlayChn, &stStatus);

                if (stStatus.enState != HI_UNF_PVR_PLAY_STATE_FF)
                {
                    u32Speed = 1;
                }

                u32Speed *= 2;
                if (u32Speed > 64)
                {
                    u32Speed = 2;
                }

                stTrickMode.enSpeed = u32Speed * HI_UNF_PVR_PLAY_SPEED_NORMAL;
                printf("trick mod: %d\n", u32Speed);
                Ret = HI_UNF_PVR_PlayTPlay(g_PlayChn, &stTrickMode);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayTPlay failed.\n");
                    return Ret;
                }
                bPause = HI_FALSE;
            }
        }
        else if ('r' == InputCmd[0])
        {
            if (bLive)  /*when live, switch to shift and fast reword play */
            {
                HI_UNF_PVR_PLAY_MODE_S stTrickMode;
                HI_UNF_SYNC_ATTR_S  SyncAttr;

                /*now, stop live play*/
                PVR_StopLivePlay(hAvplay);
                Ret = HI_UNF_PVR_PlayPauseChn(RecChn);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayPauseChn failed.\n");
                    return Ret;
                }

                HI_UNF_AVPLAY_GetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
                SyncAttr.enSyncRef = HI_UNF_SYNC_REF_NONE;
                SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
                SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
                SyncAttr.bQuickOutput = HI_FALSE;
                HI_UNF_AVPLAY_SetAttr(hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);

                /*rewind from pause position */
                HI_UNF_PVR_RecGetChn(RecChn,&RecAttr);
                SwitchToShiftPlay(RecAttr.szFileName, &g_PlayChn, hAvplay);
                bLive = HI_FALSE;
                u32Speed = 2;
                stTrickMode.enSpeed = u32Speed*(-1)*HI_UNF_PVR_PLAY_SPEED_NORMAL;
                printf("shift play now, trick mod: %d\n", u32Speed);
                Ret = HI_UNF_PVR_PlayTPlay(g_PlayChn, &stTrickMode);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayTPlay failed.\n");
                    return Ret;
                }
                bPause = HI_FALSE;
            }
            else
            {
                HI_UNF_PVR_PLAY_MODE_S stTrickMode;
                HI_UNF_PVR_PLAY_STATUS_S stStatus = {0};

                HI_UNF_PVR_PlayGetStatus(g_PlayChn, &stStatus);

                if (stStatus.enState != HI_UNF_PVR_PLAY_STATE_FB)
                {
                    u32Speed = 1;
                }
                u32Speed *= 2;
                if (u32Speed > 64)
                {
                    u32Speed = 2;
                }

                stTrickMode.enSpeed = u32Speed * (-1)*HI_UNF_PVR_PLAY_SPEED_NORMAL;
                printf("trick mod: %d\n", u32Speed);
                Ret = HI_UNF_PVR_PlayTPlay(g_PlayChn, &stTrickMode);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayTPlay failed.\n");
                    return Ret;
                }
                bPause = HI_FALSE;
            }
        }
        else if ('n' == InputCmd[0])
        {
            printf("PVR normal play now.\n");
            if (g_PlayChn == 0xffffffff)
            {
                HI_UNF_PVR_RecGetChn(RecChn,&RecAttr);
                printf("switch to timeshift:%s\n", RecAttr.szFileName);
                SwitchToShiftPlay(RecAttr.szFileName, &g_PlayChn, hAvplay);
                sample_printf("g_PlayChn ============= %d\n", g_PlayChn);
                bLive = HI_FALSE;
            }
            else
            {
                Ret = HI_UNF_PVR_PlayResumeChn(g_PlayChn);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayResumeChn failed.\n");
                    return Ret;
                }
            }
            bPause = HI_FALSE;
        }
        else if ('s' == InputCmd[0])
        {
            if (bLive)  /*when live, can not slow forword */
            {
                sample_printf("now live play, not support fast forword\n");

            }
            else
            {
                HI_UNF_PVR_PLAY_MODE_S stTrickMode;

                stTrickMode.enSpeed = HI_UNF_PVR_PLAY_SPEED_4X_SLOW_FORWARD;
                printf("trick mod: %d\n", stTrickMode.enSpeed / HI_UNF_PVR_PLAY_SPEED_NORMAL);
                Ret = HI_UNF_PVR_PlayTPlay(g_PlayChn, &stTrickMode);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayTPlay failed.\n");
                    return Ret;
                }
                bPause = HI_FALSE;
            }
        }
        else if ('k' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;
            HI_UNF_PVR_FILE_ATTR_S stFAttr;
            if (!bLive)
            {
                Ret = HI_UNF_PVR_PlayResumeChn(g_PlayChn);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayResumeChn failed.\n");
                    continue;
                }
                DrawString(0, "Play");

                Ret = HI_UNF_PVR_PlayGetFileAttr(g_PlayChn,&stFAttr);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayStep failed.\n");
                }

                stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
                stPos.s64Offset = stFAttr.u32StartTimeInMs;
                stPos.s32Whence = SEEK_SET;
                printf("seek to start\n");

                Ret = HI_UNF_PVR_PlaySeek(g_PlayChn, &stPos);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayStep failed.\n");
                }
            }
            else
            {
                printf("Now in live mode, can't seek to start!\n");
            }
        }
        else if ('e' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;
            if (!bLive)
            {
                Ret = HI_UNF_PVR_PlayResumeChn(g_PlayChn);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayResumeChn failed.\n");
                    continue;
                }
                DrawString(0, "Play");

                stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
                stPos.s64Offset = 0;
                stPos.s32Whence = SEEK_END;
                printf("seek end\n");

                Ret = HI_UNF_PVR_PlaySeek(g_PlayChn, &stPos);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayStep failed.\n");
                }
            }
            else
            {
                printf("Now in live mode, can't seek to end!\n");
            }
        }
        else if ('a' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;
            if (!bLive)
            {
                Ret = HI_UNF_PVR_PlayResumeChn(g_PlayChn);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayResumeChn failed.\n");
                    continue;
                }
                DrawString(0, "Play");

                stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
                stPos.s64Offset = -5000;
                stPos.s32Whence = SEEK_CUR;
                printf("seek reward 5 Second\n");

                Ret = HI_UNF_PVR_PlaySeek(g_PlayChn, &stPos);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayStep failed.\n");
                    continue;
                }
            }
            else
            {
                printf("Now in live mode, can't seek backward!\n");
            }
        }
        else if ('d' == InputCmd[0])
        {
            HI_UNF_PVR_PLAY_POSITION_S stPos;

            if (!bLive)
            {
                Ret = HI_UNF_PVR_PlayResumeChn(g_PlayChn);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlayResumeChn failed.\n");
                    continue;
                }
                DrawString(0, "Play");

                stPos.enPositionType = HI_UNF_PVR_PLAY_POS_TYPE_TIME;
                stPos.s64Offset = 5000;
                stPos.s32Whence = SEEK_CUR;
                printf("seek forward 5 Second\n");

                Ret = HI_UNF_PVR_PlaySeek(g_PlayChn, &stPos);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call HI_UNF_PVR_PlaySeek failed.\n");
                }
            }
            else
            {
                printf("Now in live mode, can't seek forward!\n");
            }
        }
        else if ('x' == InputCmd[0])
        {
            if (!bLive)
            {
                PVR_StopPlayBack(g_PlayChn);

                Ret = PVR_StartPlayBack(RecAttr.szFileName, &g_PlayChn, hAvplay);
                if (Ret != HI_SUCCESS)
                {
                    sample_printf("call PVR_StartPlayBack failed.\n");
                }
            }
            else
            {
                printf("Now in live mode, can't recreate play channel!\n");
            }
        }
        else
        {
            printf("commond:\n");
            printf("    l: live play\n");
            printf("    p: pause/play\n");
            printf("    f: fast foreword\n");
            printf("    r: fast reword\n");
            printf("    n: normal play\n");
            printf("    s: slow play\n");
            printf("    k: seek to start\n");
            printf("    e: seek to end\n");
            printf("    a: seek backward 5s\n");
            printf("    d: seek forward 5s\n");
            printf("    x: destroy play channel and create again\n");
            printf("    h: help\n");
            printf("    q: quit\n");
            continue;
        }
    }
#ifdef DISPLAY_JPEG
    if (u32Jpeg)
    {
        if (hLayer_HD != 0)
        {
            HI_GO_DestroyLayer(hLayer_HD);
        }

        HI_GO_Deinit();
    }
#endif

//    PVR_StopNetStream();

    #ifdef DISPLAY_JPEG
    stop_show_pic(pthreadShowPic);
    #endif

    if (g_StaThd != 0)
    {
        pthread_join(g_StaThd, HI_NULL);
    }

    PVR_RecStop(RecChn);

    if (0xffffffff != RecChn2)
    {
        PVR_RecStop(RecChn2);
    }

    if (0xffffffff != g_PlayChn)
    {
        PVR_StopPlayBack(g_PlayChn);
    }

    PVR_AvplayDeInit(hAvplay, hWin);

    HI_UNF_VO_DestroyWindow(hWin);
    HIADP_VO_DeInit();
    HIADP_Disp_DeInit();
    HIADP_Snd_DeInit();
    HI_SYS_DeInit();

    return 0;
}


