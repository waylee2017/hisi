/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_scrolltext.c
Version		    : Initial Draft
Author		    : 
Created		    : 2014/07/22
Description	    :
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2014/07/22  	    y00181162  		    Created file      	
******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include "hi_go.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/

#define FONT_NAME "./res/DroidSansFallbackLegacy.ttf"

#define WIDTH 4092//字幕buffer宽,根据字幕字符个数设置此值，越大表示支持字符个数越多，字幕buffer宽最大不能大于等于4096

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

HI_S32 main(HI_S32 argc, HI_CHAR* argv[])
{

    HI_S32 s32Ret   = 0;
    HI_HANDLE hFont = HIGO_INVALID_HANDLE;
    HIGO_LAYER_INFO_S stLayerInfo = {0};
    HI_HANDLE hLayer    = HIGO_INVALID_HANDLE;
    HI_HANDLE hLayerAD0 = HIGO_INVALID_HANDLE;
    HI_HANDLE hLayerAD1 = HIGO_INVALID_HANDLE;
    HI_HANDLE hLayerSurface;
    HI_RECT stRect   = {0, 0, WIDTH, 36};
    HI_CHAR szText[] = "abcdefghijklmnopqrstuvwxyz0abcdefghijklmnopqrstuvwxyz1abcdefghijklmnopqrstuvwxyz2abcdefghijklmnopqrstuvwxyz3abcdefghijklmnopqrstuvwxyz4abcdefghijklmnopqrstuvwxyz5abcdefghijklmnopqrstuvwxyz6abcdefghijklmnopqrstuvwxyz7abcdefghijklmnopqrstuvwxyz8abcdefghijklmnopqrstuvwxyz9";//"涓嶈兘閾炬帴鍒版偍璇锋眰鐨勭綉椤垫椤靛彲鑳芥殏鏃朵笉鍙敤濡傛灉鎮ㄤ互鍓嶆煡鐪嬭繃璇ラ〉";

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif

    HI_HANDLE hTmpSurface;
    HI_PIXELDATA pData;  
    HI_HANDLE hScrollText0,hScrollText1;
    HIGO_SCROLLTEXT_ATTR_S stScrollAttr = {0};
    HIGO_SCROLLTEXT_DATA_S stScrollData = {0};
    HI_BOOL bScrollTextPause = HI_FALSE;  
    HI_U32  u32Cnt           = 0;
    HI_U32 u32Offset         = 0;
    HI_U32 u32FbVramSize     = 0;
    HI_S32 s32FmtDepth       = 0;
    
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
    u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif

    
    s32Ret = HI_GO_Init();
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: init higo s32Ret:%#x\n", __LINE__, s32Ret);
        return 0;
    }

    s32Ret = Display_Init();
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: init display s32Ret:%#x\n", __LINE__, s32Ret);
        HI_GO_Deinit();
        return 0;
    }



    //创建主图形层
    s32Ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo); 
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: get layer param s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;
    }
    
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
   	{
        stLayerInfo.PixelFormat = HIGO_PF_1555;
    	s32FmtDepth             = 2;
    }
    else
    {
        stLayerInfo.PixelFormat = HIGO_PF_8888;
    	s32FmtDepth             = 4;
    }
    
	#ifdef CHIP_TYPE_hi3110ev500
        stLayerInfo.PixelFormat = HIGO_PF_1555;
		s32FmtDepth             = 2;
	#endif

    stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_NORMAL;      
    s32Ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: create layer s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;
    }

    s32Ret = HI_GO_GetLayerSurface(hLayer, &hLayerSurface);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: get layer surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;        
    }

    s32Ret = HI_GO_FillRect(hLayerSurface, NULL, 0xFF0000FF, HIGO_COMPOPT_NONE);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: fill layer surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;        
    }


 
    //创建滚动字幕图层
    s32Ret = HI_GO_GetLayerDefaultParam(HIGO_LAYER_AD_0, &stLayerInfo); 
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: get layer param s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;
    }
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        stLayerInfo.PixelFormat = HIGO_PF_1555;
    else
        stLayerInfo.PixelFormat = HIGO_PF_8888;

	#ifdef CHIP_TYPE_hi3110ev500
        stLayerInfo.PixelFormat = HIGO_PF_1555;
	#endif


    stLayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_NORMAL;      
    s32Ret = HI_GO_CreateLayer(&stLayerInfo, &hLayerAD0);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: create layer s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;
    }

    
    s32Ret = HI_GO_GetLayerSurface(hLayerAD0, &hLayerSurface);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: get layer surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;        
    }

    s32Ret = HI_GO_FillRect(hLayerSurface, NULL, 0xFF0000FF, HIGO_COMPOPT_NONE);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: fill layer surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;        
    }

    /*需要在向滚动字幕送入数据之前刷新一次layer*/
    s32Ret = HI_GO_RefreshLayer(hLayerAD0, NULL);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: refresh layer surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;        
    }

    s32Ret = HI_GO_CreateText(FONT_NAME, NULL,  &hFont);
    if (HI_SUCCESS != s32Ret) 
    {
        SAMPLE_TRACE("<line:%d>error: create text s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;       
    }

    s32Ret = HI_GO_SetTextColor(hFont, 0xffffffff);
    if (HI_SUCCESS != s32Ret) 
    {
        SAMPLE_TRACE("<line:%d>error: create text s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;       
    }

    /*创建滚动字幕surface*/
    s32Ret = HI_GO_CreateSurface(WIDTH, 36, stLayerInfo.PixelFormat, &hTmpSurface);
    if (HI_SUCCESS != s32Ret) 
    {
        SAMPLE_TRACE("<line:%d>error: create temp surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;       
    }

    /*锁定滚动字幕buffer首地址*/
    s32Ret = HI_GO_LockSurface(hTmpSurface, pData, HI_FALSE);
    if (HI_SUCCESS != s32Ret) 
    {
        SAMPLE_TRACE("<line:%d>error: lock temp surface s32Ret:%#x\n", __LINE__, s32Ret);
        HI_GO_FreeSurface(hTmpSurface);
        goto RET;       
    }
    
    s32Ret = HI_GO_UnlockSurface(hTmpSurface);
    if (HI_SUCCESS != s32Ret) 
    {
        SAMPLE_TRACE("<line:%d>error: unlock temp surface s32Ret:%#x\n", __LINE__, s32Ret);
        HI_GO_FreeSurface(hTmpSurface);
        goto RET;       
    }


    /*创建滚动字幕0*/
    stScrollAttr.ePixelFormat   = stLayerInfo.PixelFormat; /** 需要和layer一致          **/
    stScrollAttr.Layer          = hLayerAD0;               /** 滚动字幕依附的layer      **/
    stScrollAttr.u16CacheNum    = 2;                       /** 滚动字幕使用的缓冲数量   **/
    stScrollAttr.stScrollRect.x = 0;                       /** 滚动字幕在屏幕上的startx **/
    stScrollAttr.stScrollRect.y = 20;                      /** 滚动字幕在屏幕上的starty **/
    
	#ifdef CHIP_TYPE_hi3110ev500
    stScrollAttr.stScrollRect.w = 720;                     /** 滚动字幕在屏幕上的widht  **/
	#else
    stScrollAttr.stScrollRect.w = 1280;                    /** 滚动字幕在屏幕上的widht  **/
	#endif

    stScrollAttr.stScrollRect.h = 36;                      /** 滚动字幕在屏幕上的height **/
    stScrollAttr.bDeflicker     = HI_TRUE;                 /** 使能抗闪功能             **/
    s32Ret = HI_GO_CreateScrollText(&stScrollAttr, &hScrollText0);
    if (HI_SUCCESS != s32Ret) 
    {
        SAMPLE_TRACE("<line:%d>error: create scroll text s32Ret:%#x\n", __LINE__, s32Ret);
        HI_GO_UnlockSurface(hTmpSurface);
        HI_GO_FreeSurface(hTmpSurface);
        goto RET;       
    }

    /*创建滚动字幕1*/
    stScrollAttr.ePixelFormat     = stLayerInfo.PixelFormat; /** 需要和layer一致          */
    stScrollAttr.Layer            = hLayer;                  /** 滚动字幕依附的layer      */
    stScrollAttr.u16CacheNum      = 2;                       /** 滚动字幕使用的缓冲数量   */
    stScrollAttr.stScrollRect.x   = 0;                       /** 滚动字幕在屏幕上的startx */

	#ifdef CHIP_TYPE_hi3110ev500
	stScrollAttr.stScrollRect.y   = 500;                     /** 滚动字幕在屏幕上的starty */
    stScrollAttr.stScrollRect.w   = 720;                     /** 滚动字幕在屏幕上的widht  */
	#else
	stScrollAttr.stScrollRect.y   = 664;                     /** 滚动字幕在屏幕上的starty */
    stScrollAttr.stScrollRect.w   = 1280;                    /** 滚动字幕在屏幕上的widht  */
	#endif
    
    stScrollAttr.stScrollRect.h  = 36;                       /** 滚动字幕在屏幕上的height */
    stScrollAttr.bDeflicker      = HI_TRUE;                  /** 使能抗闪功能             */
    s32Ret = HI_GO_CreateScrollText(&stScrollAttr, &hScrollText1);
    if (HI_SUCCESS != s32Ret) 
    {
        SAMPLE_TRACE("<line:%d>error: create scroll text s32Ret:%#x\n", __LINE__, s32Ret);
        HI_GO_UnlockSurface(hTmpSurface);
        HI_GO_FreeSurface(hTmpSurface);
        goto RET;       
    }
    
    stRect.y = 0;
    stRect.h = 36;

#ifdef CHIP_TYPE_hi3110ev500
    stRect.x = 720;
#else
    stRect.x = 1280;
#endif
    stRect.w = WIDTH - stRect.x;

    /*滚动字幕背景涂黑*/
    s32Ret = HI_GO_FillRect(hTmpSurface, NULL, 0xFF000000, HIGO_COMPOPT_NONE);
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: fill temp surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET; 
    }
    /*解码滚动字幕文本到滚动字幕surface*/
    s32Ret = HI_GO_TextOutEx(hFont, hTmpSurface, szText, &stRect, HIGO_LAYOUT_LEFT);
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: text out s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET; 
    }

    /*同步，确保滚动字幕文本解码完*/
    s32Ret = HI_GO_SyncSurface(hTmpSurface, HIGO_SYNC_MODE_TDE);
    if (HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: HI_GO_SyncSurface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET; 
    }

    /*需要在向滚动字幕送入数据之前刷新一次layer*/
    s32Ret = HI_GO_RefreshLayer(hLayer, NULL);
    if(HI_SUCCESS != s32Ret)
    {
        SAMPLE_TRACE("<line:%d>error: refresh layer surface s32Ret:%#x\n", __LINE__, s32Ret);
        goto RET;        
    }

    while(1)
    {
        /*设置移动坐标*/
        if (!bScrollTextPause)
        {
            u32Offset += 3;
            if (u32Offset >= WIDTH)
            {
                u32Offset = 0;
                continue;
            }
        }     
        //填充滚动字幕0

		/**
		 ** 当赋值了物理地址时优先使用物理地址
         ** 当物理地址为0时才使用虚拟地址
         **/
        stScrollData.pu8VirAddr = (HI_U8 *)pData[0].pData   + u32Offset * s32FmtDepth; /** 滚动字幕的虚拟地址 **/
        stScrollData.u32PhyAddr = (HI_U32)pData[0].pPhyData + u32Offset * s32FmtDepth; /** 滚动字幕的物理地址 **/
        stScrollData.u32Stride  = pData[0].Pitch;                                      /** 滚动字幕的stride   **/
        s32Ret = HI_GO_FillScrollText(hScrollText0, &stScrollData);
        if (HI_SUCCESS != s32Ret)
        {
            SAMPLE_TRACE("<line:%d>error: HI_GO_FillScrollText s32Ret:%#x\n", __LINE__, s32Ret);
            continue;
        }
        //填充滚动字幕1
        stScrollData.pu8VirAddr = (HI_U8 *)pData[0].pData + u32Offset   * s32FmtDepth;   /** 滚动字幕的虚拟地址 **/
        stScrollData.u32PhyAddr = (HI_U32)pData[0].pPhyData + u32Offset * s32FmtDepth;   /** 滚动字幕的物理地址 **/
        stScrollData.u32Stride  = pData[0].Pitch;                                        /** 滚动字幕的stride   **/
        s32Ret = HI_GO_FillScrollText(hScrollText1, &stScrollData);
        if (HI_SUCCESS != s32Ret)
        {
            SAMPLE_TRACE("<line:%d>error: HI_GO_FillScrollText s32Ret:%#x\n", __LINE__, s32Ret);
            continue;
        }
    
        /*暂停滚动字幕*/
        if(1000 == u32Cnt)
        {
            s32Ret = HI_GO_PauseScrollText(hScrollText0);
            if(HI_SUCCESS != s32Ret)
            {
                SAMPLE_TRACE("<line:%d>error: stop scroll s32Ret:%#x\n", __LINE__, s32Ret);
            }
            bScrollTextPause = HI_TRUE;
        }
        /*恢复滚动字幕播放*/
        if(2000 == u32Cnt)
        {
            s32Ret = HI_GO_ResumeScrollText(hScrollText0);
            if(HI_SUCCESS != s32Ret)
            {
                SAMPLE_TRACE("<line:%d>error: resume scroll s32Ret:%#x\n", __LINE__, s32Ret);
            }
            bScrollTextPause = HI_FALSE;
        }


        if(3000 == u32Cnt)
        {
            /*销毁滚动字幕*/
            s32Ret = HI_GO_DestoryScrollText(hScrollText0);
            if(HI_SUCCESS != s32Ret)
            {
                SAMPLE_TRACE("<line:%d>error: destory scroll s32Ret:%#x\n", __LINE__, s32Ret);
            }
            else
            {
                stScrollAttr.ePixelFormat   = stLayerInfo.PixelFormat;   /** 需要和layer一致            **/
                stScrollAttr.Layer          = hLayerAD0;                 /** 滚动字幕依附的layer        **/
                stScrollAttr.u16CacheNum    = 2;                         /** 滚动字幕使用的缓冲数量     **/
                stScrollAttr.stScrollRect.x = 0;                         /** 滚动字幕在屏幕上的startx   **/
                stScrollAttr.stScrollRect.y = 20;                        /** 滚动字幕在屏幕上的starty   **/
                #ifdef CHIP_TYPE_hi3110ev500
                    stScrollAttr.stScrollRect.w = 720;                   /** 滚动字幕在屏幕上的widht    **/
                #else
                    stScrollAttr.stScrollRect.w = 1280;                  /** 滚动字幕在屏幕上的widht    **/
                #endif
                stScrollAttr.stScrollRect.h = 36;                        /** 滚动字幕在屏幕上的height   **/
                stScrollAttr.bDeflicker     = HI_TRUE;                   /** 使能抗闪功能               **/
                s32Ret = HI_GO_CreateScrollText(&stScrollAttr, &hScrollText0);
                if (HI_SUCCESS != s32Ret) 
                {
                    SAMPLE_TRACE("<line:%d>error: create scroll text s32Ret:%#x\n", __LINE__, s32Ret);
                    HI_GO_UnlockSurface(hTmpSurface);
                    HI_GO_FreeSurface(hTmpSurface);
                    goto RET;       
                }
                u32Cnt = 0;
            }
        }

        u32Cnt++;
    }

    HI_GO_DestoryScrollText(hScrollText0);
    HI_GO_DestoryScrollText(hScrollText1);
    HI_GO_FreeSurface(hTmpSurface);

RET:
    if (HIGO_INVALID_HANDLE != hLayer)
    {
        HI_GO_DestroyLayer(hLayer);
    }
    if (HIGO_INVALID_HANDLE != hLayerAD0)
    {
        HI_GO_DestroyLayer(hLayerAD0);
    }  
    if (HIGO_INVALID_HANDLE != hLayerAD1)
    {
        HI_GO_DestroyLayer(hLayerAD1);
    }     
    if  (HIGO_INVALID_HANDLE != hFont)
    {
        HI_GO_DestroyText(hFont);
    }

    Display_DeInit();
    
    HI_GO_Deinit();

    return HI_SUCCESS;
}
