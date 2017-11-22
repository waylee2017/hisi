/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_dec.c
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
#ifndef CONFIG_SUPPORT_CA_RELEASE
#define PIC_DIRNAME "./res/jpg"
#else
#define PIC_DIRNAME "/home/stb/bin/higo/res/jpg"
#endif 

#define PIC_SUFFIX               "jpg"
#define MAX_FILENAME_LEN         256
#define FLIP_COUNT                2

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

/** filter *jpg file*/
HI_S32 filter(const struct dirent *pentry);

/** decoding the picture and put it to surface */
HI_S32 file_dec(HI_CHAR *pszFileName, HI_HANDLE *pSurface);

HI_S32 main(HI_S32 argc, HI_CHAR* argv[])
{
    HI_S32 ret, s32FileNum;
    HI_HANDLE hDecSurface, hLayer, hLayerSurface;
    HI_RECT stRect;
    HI_CHAR aszFileName[MAX_FILENAME_LEN + 1];
    HIGO_LAYER_INFO_S stLayerInfo ;
    HIGO_BLTOPT_S stBltOpt = {0};
    HI_CHAR key;
    struct dirent **filelist = NULL;

#ifdef CHIP_TYPE_hi3110ev500
    HIGO_LAYER_E eLayerID = HIGO_LAYER_SD_0;
#else
    HIGO_LAYER_E eLayerID = HIGO_LAYER_HD_0;
#endif

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

    /**get the jpeg file from the path */
    s32FileNum = scandir(PIC_DIRNAME, &filelist, filter, alphasort);
    if (s32FileNum < 0)
    {
        perror("scandir");
        goto ERR2;
    }

    stRect.x = stRect.y = 0;
    stRect.w = stLayerInfo.DisplayWidth /2;
    stRect.h = stLayerInfo.DisplayHeight /2;
    
    stBltOpt.EnableScale = HI_TRUE;

    /** clean the graphic layer Surface */
    HI_GO_FillRect(hLayerSurface, NULL, 0xff0000ff, HIGO_COMPOPT_NONE);
    SAMPLE_TRACE("FileNum %d\n",s32FileNum);
    while (s32FileNum--)
    {
        sprintf(aszFileName, "%s/%s", PIC_DIRNAME, filelist[s32FileNum]->d_name);
        /**decoding*/
        ret = file_dec(aszFileName, &hDecSurface);
        if (HI_SUCCESS == ret)
        {
            /** Blit it to graphic layer Surface */
            ret = HI_GO_Blit(hDecSurface, NULL, hLayerSurface, &stRect, &stBltOpt);
            if (HI_SUCCESS == ret)
            {
                /** fresh display*/
                HI_GO_RefreshLayer(hLayer, NULL);
                stRect.x = (stRect.x + stRect.w ) % stLayerInfo.DisplayWidth;
                if(0 == stRect.x)
                {
                    stRect.y = (stRect.y + stRect.h ) % stLayerInfo.DisplayHeight;
                }
            }

            /**  free Surface */
            HI_GO_FreeSurface(hDecSurface);
        }
        else
        {SAMPLE_TRACE("dec fail ret (%d)\n",ret );}

        /** free the memory which saving the file name */
        free(filelist[s32FileNum]);
        usleep(200 * 1000);
    }

    SAMPLE_TRACE("press q to finish displaying\n");
    key = getchar();
    while('q' != key && 'Q' != key)
    {
        key = getchar();
    }


    /** free the resource*/
    free(filelist);
    filelist = NULL;

ERR2:
    ret |= HI_GO_DestroyLayer(hLayer);
ERR1:
    ret |= Display_DeInit();
    ret |= HI_GO_Deinit();

    return ret;
}

HI_S32 filter(const struct dirent *pentry)
{
    HI_CHAR *pos = NULL;

    pos = strrchr(pentry->d_name, '.');
    if (NULL == pos)
    {
        return 0;
    }

    pos++;
    if (strcasecmp(pos, "jpg") != 0)
    {
        return 0;
    }

    return 1;
}

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


