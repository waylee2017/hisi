/**
\file
\brief example of surface memory usage
\copyright Shenzhen Hisilicon Co., Ltd.
\date 2008-2018
\version draft
\author x57522
\date 2008-9-17
*/

#include <stdio.h>
#include <string.h>
#include "hi_go.h"
#include "sample_displayInit.h"

/***************************** Macro Definition ******************************/



/*************************** Structure Definition ****************************/



/********************** Global Variable declaration **************************/

#ifndef CHIP_TYPE_hi3110ev500
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
#else
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_PAL;
#endif

/******************************* API declaration *****************************/
HI_S32 file_dec(HI_CHAR *pszFileName, HI_HANDLE *pSurface)
{
    HI_S32 ret;
    HI_HANDLE hDecoder;
    HIGO_DEC_ATTR_S stSrcDesc;

    // assert(NULL != pszFileName);
    // assert(NULL != pSurface);

    /**create decode */
    stSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    stSrcDesc.SrcInfo.pFileName = pszFileName;
    ret = HI_GO_CreateDecoder(&stSrcDesc, &hDecoder);
    if (HI_SUCCESS != ret)
    {
        return ret;
    }

    /** decode and put to Surface */
   // ret  = HI_GO_DecImgData(hDecoder, 0, NULL, pSurface);
    ret = HI_GO_DecImgToSurface(hDecoder, 0, *pSurface);
    ret |= HI_GO_DestroyDecoder(hDecoder);

    return ret;
}

HI_S32 main(HI_S32 argc,HI_CHAR **argv)
{
    HI_S32 ret;
    HIGO_LAYER_INFO_S stLayerInfoHD;
    HI_HANDLE hLayerHD,hLayerSurfaceHD;
   
      /** initial */
     HI_SYS_Init();
     if(2 == argc)
     {
     	g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[1]);
     }
     else
     {
       printf("Usage:vo_format:1080P_60|1080P_50|1080P_30|1080P_25|1080P_24|1080i_60|1080i_50|\n");
       printf("                PAL|NTSC|720P_60|720P_50|576P_50|480P_60 \n")   ;      
       printf("example: ./sample_logo_pic 1080P_50\n");
       return 0;
      }
    
    /** format,displaysize,screensize pixelformat should be the same as logo picture */
    HIADP_Disp_Init(g_enDefaultFmt);
    printf("+++++ use displaysize:1280x720, output is 1080i_50 format. \n");
    
    ret = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }
    
    /** create graphic layer */  

     switch(g_enDefaultFmt)
    {
        case HI_UNF_ENC_FMT_1080i_50:
        case HI_UNF_ENC_FMT_1080i_60:
        case HI_UNF_ENC_FMT_1080P_24:
        case HI_UNF_ENC_FMT_1080P_25:
        case HI_UNF_ENC_FMT_1080P_30:
        case HI_UNF_ENC_FMT_1080P_50:
        case HI_UNF_ENC_FMT_1080P_60:
            stLayerInfoHD.ScreenWidth = 1920;
            stLayerInfoHD.ScreenHeight = 1080;
            break;
        case HI_UNF_ENC_FMT_720P_50:
        case HI_UNF_ENC_FMT_720P_60:
            stLayerInfoHD.ScreenWidth = 1280;
            stLayerInfoHD.ScreenHeight = 720;
            break;
        case HI_UNF_ENC_FMT_480P_60:
        case HI_UNF_ENC_FMT_NTSC:
        case HI_UNF_ENC_FMT_NTSC_J:
        case HI_UNF_ENC_FMT_NTSC_PAL_M:
            stLayerInfoHD.ScreenWidth = 720;
            stLayerInfoHD.ScreenHeight = 480;
            break;
        default:
            stLayerInfoHD.ScreenWidth = 720;
            stLayerInfoHD.ScreenHeight = 576;
            break;
    }  
#ifndef CHIP_TYPE_hi3110ev500	 
    stLayerInfoHD.PixelFormat = HIGO_PF_8888;
    stLayerInfoHD.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER;
    stLayerInfoHD.AntiLevel = HIGO_LAYER_DEFLICKER_AUTO;
    stLayerInfoHD.LayerID = HIGO_LAYER_HD_0;
#else
	stLayerInfoHD.PixelFormat = HIGO_PF_1555;
    stLayerInfoHD.LayerFlushType = HIGO_LAYER_FLUSH_DOUBBUFER;
    stLayerInfoHD.AntiLevel = HIGO_LAYER_DEFLICKER_AUTO;
    stLayerInfoHD.LayerID = HIGO_LAYER_SD_0;
#endif
    ret = HI_GO_CreateLayer(&stLayerInfoHD,&hLayerHD);
    if (HI_SUCCESS != ret)
    {
        HI_GO_Deinit();
        return HI_FAILURE;
    }
       
    /** get the graphic layer Surface */
    ret = HI_GO_GetLayerSurface (hLayerHD,&hLayerSurfaceHD); 
    if (HI_SUCCESS != ret)  
    {
       HI_GO_DestroyLayer(hLayerHD);
       HI_GO_Deinit();
       return HI_FAILURE;
    }

   ret =  file_dec("res/1.jpg",&hLayerSurfaceHD);
   if(ret !=HI_SUCCESS)
   {
   	printf("+++++++++++dec error 0x%x\n",ret);
       HI_GO_DestroyLayer(hLayerHD);
       HI_GO_Deinit();
       return HI_FAILURE;
   }

    ret = HI_GO_RefreshLayer(hLayerHD, NULL);
    if (HI_SUCCESS != ret)
    {
       HI_GO_DestroyLayer(hLayerHD);
        HI_GO_Deinit();
        return HI_FAILURE;
    } 
    getchar();
    
     /** destroy graphic layer */
    ret |= HI_GO_DestroyLayer(hLayerHD);
    /** De initial */
    ret |= Display_DeInit();
    ret |= HI_GO_Deinit();
    if (HI_SUCCESS != ret)
    {
        return HI_FAILURE;
    }

    return HI_SUCCESS;

}




