/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_stereo.c
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
#include <dirent.h>
#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <math.h>
#include "hi_go.h"
#include "hi_go_decoder.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/
#define PIC_NAME "./res/jpg/Img201006300005_N.JPG"

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
/** decoding the picture and put it to surface */
HI_S32 file_dec(HI_CHAR *pszFileName, HI_HANDLE *pSurface)
{
    HI_S32 ret;
    HI_HANDLE hDecoder;
    HIGO_DEC_ATTR_S stSrcDesc;

    // assert(NULL != pszFileName);
    // assert(NULL != pSurface);

    /** create decode*/
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = pszFileName;
    ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /** decode it to Surface */
    ret  = HI_GO_DecImgData(hDecoder, 0, NULL, pSurface);
    ret |= HI_GO_DestroyDecoder(hDecoder);

    return ret;
}

HI_S32 main(HI_S32 argc, HI_CHAR* argv[])
{
    HI_S32 ret;
    HI_HANDLE hDecSurface, hLayer, hLayerSurface;
    HI_RECT stRect;
    HIGO_LAYER_INFO_S stLayerInfo ;
    HIGO_BLTOPT_S stBltOpt = {0};
    HI_CHAR key;

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif

    HIGO_ENCPICFRM_E EncPicFrm = HIGO_ENCPICFRM_MONO;
    HI_U32 u32FbVramSize = 0;
    #ifdef CFG_HI_HD_FB_VRAM_SIZE
        u32FbVramSize = CFG_HI_HD_FB_VRAM_SIZE;
    #endif

    /**initial resource*/
    ret  = HI_GO_Init();
    ret |= Display_Init();
    if (HI_SUCCESS != ret)
    {
        goto ERR1;
    }
    ret = HI_GO_GetLayerDefaultParam(eLayerID, &stLayerInfo);
    if (HI_SUCCESS != ret)
    {
        goto ERR1;
    }
    if(u32FbVramSize < HI_HD_FB_VRAM_SIZE)
        stLayerInfo.PixelFormat = HIGO_PF_1555;
    else
        stLayerInfo.PixelFormat = HIGO_PF_8888;

#ifdef CHIP_TYPE_hi3110ev500
     stLayerInfo.PixelFormat = HIGO_PF_1555;
#endif

    /**create the graphic layer and get the handler */
    ret = HI_GO_CreateLayer(&stLayerInfo, &hLayer);
    if (HI_SUCCESS != ret)
    {
        goto ERR1;
    }
    
    
    ret = HI_GO_GetLayerSurface(hLayer, &hLayerSurface);
    if (HI_SUCCESS != ret)
    {
        goto ERR2;
    }

    stRect.x = stRect.y = 0;
    stRect.w = stLayerInfo.DisplayWidth;
    stRect.h = stLayerInfo.DisplayHeight;
    
    stBltOpt.EnableScale = HI_TRUE;

    /** clean the graphic layer Surface */
    HI_GO_FillRect(hLayerSurface, NULL, 0xff0000ff, HIGO_COMPOPT_NONE);
    

    /**decoding*/
    ret = file_dec(PIC_NAME, &hDecSurface);
    if (HI_SUCCESS == ret)
    {
        /** Blit it to graphic layer Surface */
        ret = HI_GO_Blit(hDecSurface, NULL, hLayerSurface, &stRect, &stBltOpt);
        if (HI_SUCCESS != ret)
        {
            HI_GO_FreeSurface(hDecSurface);
            HI_GO_DestroyLayer(hLayer);
            HI_GO_Deinit();
            Display_DeInit();
            return HI_FAILURE;
        }

        /**  free Surface */
        HI_GO_FreeSurface(hDecSurface);
    }
    
    HI_GO_RefreshLayer(hLayer, NULL);

    SAMPLE_TRACE("\nNOTE:\n");
    SAMPLE_TRACE("[0] mono format\n");
    SAMPLE_TRACE("[1] 3d stereo format(side by side)\n");
    SAMPLE_TRACE("[2] 3d stereo format(top and bottom)\n");
    SAMPLE_TRACE("[q]  finish displaying\n");
    SAMPLE_TRACE("please select number to set stereo encode picture:\n");
    
    do
    {
        key = getchar();

        while('q' != key && 'Q' != key 
                && '0' != key && '1' != key && '2' != key)
        {
           key = getchar();
        }
        
        switch(key)
        {
            case '0':
                EncPicFrm = HIGO_ENCPICFRM_MONO;
            break;
            case '1':
                EncPicFrm = HIGO_ENCPICFRM_STEREO_SIDEBYSIDE_HALF;
            break;
            case '2':
                EncPicFrm = HIGO_ENCPICFRM_STEREO_TOPANDBOTTOM;
            break;
            case 'q':
            case 'Q':
                goto ERR2;
            break;
            default:
            break;
        }

        ret = HI_GO_SetEncPicFrm(hLayer, EncPicFrm);
        if (HI_SUCCESS != ret)
        {
            perror("HI_GO_SetEncPicFrm(SIDEBYSIDE_HALF) error!");    
        }
        HI_GO_RefreshLayer(hLayer, NULL);
        
    }while(1);


ERR2:
    ret |= HI_GO_DestroyLayer(hLayer);
ERR1:
    ret |= Display_DeInit();
    ret |= HI_GO_Deinit();

    return ret;
}
