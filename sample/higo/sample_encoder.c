/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_encoder.c
Version		    : Initial Draft
Author		    : 
Created		    : 2014/07/22
Description	    :
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2014/07/22  	    y00181162  		    Created file      	
******************************************************************************/
#include "hi_go.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/

#define SAMPLE_GIF_FILE "./res/gif/banner.gif"

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

HI_S32 main()
{
    HI_S32 ret;
    HI_HANDLE  hDecoder, hDecSurface;
    HIGO_DEC_ATTR_S SrcDesc;
    HI_S32 Index = 0;
    HIGO_DEC_IMGATTR_S ImgAttr;
    HIGO_ENC_ATTR_S Attr;    
    /** initial */
    ret = HI_GO_Init();
    ret |= Display_Init();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    /** create decode */
    SrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    SrcDesc.SrcInfo.pFileName = SAMPLE_GIF_FILE;
    ret = HI_GO_CreateDecoder(&SrcDesc, &hDecoder );
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return HI_FAILURE;
    }


    ImgAttr.Format = HIGO_PF_1555;
#ifdef CHIP_TYPE_hi3110ev500
    ImgAttr.Width  = 720;
    ImgAttr.Height = 576;
#else
    ImgAttr.Width  = 1280;
    ImgAttr.Height = 720;
#endif
        
    /** picture decoding */
    ret = HI_GO_DecImgData(hDecoder, Index, &ImgAttr, &hDecSurface);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyDecoder(hDecoder);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    Attr.ExpectType = HIGO_IMGTYPE_BMP;
    ret = HI_GO_EncodeToFile(hDecSurface, "/tmp/mybitmap.bmp", &Attr);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyDecoder(hDecoder);
        HI_GO_Deinit();
        return HI_FAILURE;
    }
    /** free decode */
    ret = HI_GO_FreeSurface(hDecSurface);
    if (HI_SUCCESS != ret)
    {
        HI_GO_DestroyDecoder(hDecoder);
        HI_GO_Deinit();
        return HI_FAILURE;
    }

    
    ret = HI_GO_DestroyDecoder(hDecoder);
    ret |= Display_DeInit();
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}
