/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_decrle.c
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
#include <string.h>
#include <unistd.h>
#include "hi_go.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/
#define HEAD_LENGTH 40

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

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

/***************************** Macro Definition ******************************/

#define SAMPLE_GIF_FILE "./res/rle/banner.rle"
/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/
HI_S32 main(HI_S32 argc, HI_CHAR* argv[])
{
	HI_S32 ret;
	HI_HANDLE hLayer, hDecoder, hDecSurface, hLayerSurface;
	HIGO_LAYER_INFO_S LayerInfo ;
	HIGO_DEC_ATTR_S SrcDesc;
	HIGO_DEC_PRIMARYINFO_S PrimaryInfo;
	HIGO_DEC_IMGINFO_S ImgInfo;
	HIGO_BLTOPT_S CompositeOpt = {0};
	HI_S32 Index = 0;
	HI_RECT srcRect = {0};
	HI_RECT dstRect = {0};
	HI_PALETTE Palette={0};

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif


    /** 初始化 */
    ret = HI_GO_Init();
    ret |= Display_Init();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }
    if (argc >= 2)
    {        
        eLayerID = (HI_U32)atoi(argv[1]);
    }
    ret = HI_GO_GetLayerDefaultParam(eLayerID, &LayerInfo);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return HI_FAILURE;
    }
	
	LayerInfo.PixelFormat = HIGO_PF_CLUT8;
	LayerInfo.LayerFlushType = HIGO_LAYER_FLUSH_NORMAL;
	LayerInfo.AntiLevel= HIGO_LAYER_DEFLICKER_NONE;

    /** 创建图层 */
    ret = HI_GO_CreateLayer(&LayerInfo, &hLayer);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    /** 获取图层Surface */
    ret = HI_GO_GetLayerSurface(hLayer,&hLayerSurface);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    
    /** 创建解码器 */
    SrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    SrcDesc.SrcInfo.pFileName = SAMPLE_GIF_FILE;
    ret = HI_GO_CreateDecoder(&SrcDesc, &hDecoder );
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    /** 获取文件公共信息 */
    ret = HI_GO_DecCommInfo(hDecoder, &PrimaryInfo);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyDecoder(hDecoder);
        HI_GO_DestroyLayer(hLayer);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    
    Index = 0;
    while (Index < 1/*PrimaryInfo.Count*/)
    {
		ret =  RLE_CreatePalette("./res/rle/banner.pal", Palette);
		if (HI_SUCCESS != ret)
		{
			return HI_FAILURE;
		}
		ret = HI_GO_SetLayerPalette(hLayer, Palette);
		if (HI_SUCCESS != ret)
		{
			return HI_FAILURE;
		}
        /** 图片解码 */
        ret |= HI_GO_DecImgInfo(hDecoder,Index,&ImgInfo);
        ret = HI_GO_DecImgData(hDecoder, Index, NULL, &hDecSurface);

        if (HI_SUCCESS != ret)
        {
            HI_GO_DestroyDecoder(hDecoder);
            HI_GO_DestroyLayer(hLayer);
            HI_GO_Deinit();
            return HI_FAILURE;
        }

	        /** 搬移到图层 */
	    CompositeOpt.EnableScale = HI_FALSE;

		srcRect.x = 0;
		srcRect.y = 0;
		srcRect.w = ImgInfo.Width;
		srcRect.h = ImgInfo.Height;

		dstRect.x = 100;
		dstRect.y = 100;
		dstRect.w = ImgInfo.Width;
		dstRect.h = ImgInfo.Height;
		
		ret = HI_GO_Blit(hDecSurface, &srcRect, hLayerSurface,&dstRect, &CompositeOpt);
        if (HI_SUCCESS != ret)
        {
            HI_GO_FreeSurface(hDecSurface);
            HI_GO_DestroyDecoder(hDecoder);
            HI_GO_DestroyLayer(hLayer);
            HI_GO_Deinit();
            return HI_FAILURE;
        }
        /** 刷新图层显示 */
        ret = HI_GO_RefreshLayer(hLayer, NULL);
        if (HI_SUCCESS != ret)
        {
            HI_GO_FreeSurface(hDecSurface);
            HI_GO_DestroyDecoder(hDecoder);
            HI_GO_DestroyLayer(hLayer);
            HI_GO_Deinit();
            return HI_FAILURE;
        }
 
        /** 释放解码 */
        ret = HI_GO_FreeSurface(hDecSurface);
        if (HI_SUCCESS != ret)
        {
            HI_GO_DestroyDecoder(hDecoder);
            HI_GO_DestroyLayer(hLayer);
            HI_GO_Deinit();
            return HI_FAILURE;
        }
 
        Index++;
        usleep(ImgInfo.DelayTime * 1000);

    }

    SAMPLE_TRACE("按任意键结束该实例演示\n");
    getchar();
    
    ret = HI_GO_DestroyDecoder(hDecoder);
    ret |= HI_GO_DestroyLayer(hLayer);
    ret = Display_DeInit();
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}
