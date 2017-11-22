/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_enc_jpg.c
Version		     : Initial Draft
Author		      : 
Created		     : 2016/07/27
Description	  :
Function List	: 

			  		  
History      	:
Date				               Author        		     Modification
2016/07/27  	         y00181162  		         Created file      	
******************************************************************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <setjmp.h>

#include "jpeglib.h"
#include "jerror.h"
#include "hi_common.h"
#include "hi_go.h"

#include "hi_tde_api.h"
#include "hi_tde_errcode.h"
#include "hi_tde_type.h"

/***************************** Macro Definition ******************************/

#define DEC_FILE            "./res/jpg/Img201006300005_N.JPG"
#define ENC_JPEG_FILE       "./encode.jpg"
#define ENC_BMP_FILE        "./encode.bmp"


/***************************** Structure Definition ***************************/

typedef struct tagJPEG_ENC_MYERR_S
{
    struct jpeg_error_mgr pub;

}JPEG_ENC_MYERR_S,*JPEG_ENC_MYERR_S_PTR;

/********************** Global Variable declaration **************************/

static jmp_buf  gs_enc_setjmp_buffer;


/********************** API forward declarations    **************************/
static HI_VOID test_enc_err(j_common_ptr cinfo)
{
    (*cinfo->err->output_message)(cinfo);
    longjmp(gs_enc_setjmp_buffer, 1);
}

/*****************************************************************************
* func         :  SAMPLE_ENCODE_TO_File
* description  :  编码输出到文件
* param[out]   :  pOutFileName     CNcomment:要输出的文件名        CNend\n
* param[in]    :  pDataBuf         CNcomment:编码源数据            CNend\n
* param[in]    :  u32Width         CNcomment:编码源数据的宽        CNend\n
* param[in]    :  u32Height        CNcomment:编码源数据的高        CNend\n
* param[in]    :  u32Stride        CNcomment:编码源数据的行间距    CNend\n
* param[in]    :  eInputColorSpace CNcomment:编码源数据的像素格式  CNend\n
* retval       :  NA
* others:	   :  NA
*****************************************************************************/
static HI_S32 ENCODE_TO_JpegFile(HI_CHAR *pDataBuf,HI_U32 u32Width,HI_U32 u32Height,HI_U32 u32Stride,J_COLOR_SPACE eInputColorSpace)
{
    JPEG_ENC_MYERR_S jerr;
    struct jpeg_compress_struct cinfo;
    FILE *pOutFile    = NULL;
    HI_S32 s32Quality = 80; /** 0~100 **/
    JSAMPROW pRowBuf[1];
    
    if (NULL == (pOutFile = fopen(ENC_JPEG_FILE, "wb+")))
    {
        printf("can't open %s\n", ENC_JPEG_FILE);
        return HI_FAILURE;
    }
    
    cinfo.err = jpeg_std_error(&jerr.pub);
    jerr.pub.error_exit = test_enc_err;
    
    if (setjmp(gs_enc_setjmp_buffer))
    {
        printf("enc failure\n");
        goto ENCODE_EXIT;
    }
    
    jpeg_create_compress(&cinfo);
    
    jpeg_stdio_dest(&cinfo, pOutFile);
    
    cinfo.image_width      = u32Width;
    cinfo.image_height     = u32Height;
    cinfo.in_color_space   = eInputColorSpace;

    if (JCS_RGB != eInputColorSpace)
    {
        printf("the input color space is not support\n");
        goto ENCODE_EXIT;
    }
    
    cinfo.input_components = 3;

    jpeg_set_defaults(&cinfo);
    
    jpeg_set_quality(&cinfo, s32Quality, TRUE);
    
    jpeg_start_compress(&cinfo, TRUE);
    
    while (cinfo.next_scanline < cinfo.image_height)
    {
        pRowBuf[0] = (JSAMPLE FAR*)(&pDataBuf[cinfo.next_scanline * u32Stride]);
        jpeg_write_scanlines(&cinfo, pRowBuf, 1);
    }

    jpeg_finish_compress(&cinfo);
    
ENCODE_EXIT:
    
    jpeg_destroy_compress(&cinfo);
    
    if (NULL != pOutFile)
    {
        fclose(pOutFile);
        pOutFile = NULL;
    }
    
    return HI_SUCCESS;
}


HI_S32 main()
{
    HI_S32 ret;
    HI_HANDLE  hDecHandel;
    HI_HANDLE  hDecSurface;
    HI_PIXELDATA DecSurfaceInfo;
    
    HIGO_DEC_ATTR_S    DecSrcDesc;
    HIGO_DEC_IMGATTR_S DecImgAttr;
    HIGO_ENC_ATTR_S    EncImgAttr;

    HI_CHAR *pEncInVirBuf = NULL;
    HI_U32 EncInPhyBuf = 0;
    TDE_HANDLE BlitHandle;
    TDE2_SURFACE_S stSrcSurface;
    TDE2_SURFACE_S stDstSurface;
    TDE2_RECT_S stSrcRect = {0};
    TDE2_RECT_S stDstRect = {0};
    TDE2_OPT_S stOpt;
     
    J_COLOR_SPACE EncColorSpace = JCS_UNKNOWN;

    ret = HI_GO_Init();
    if (HI_SUCCESS != ret)
    {
       printf("====call HI_GO_Init function failure\n");
       goto ERROR_EIXT;
    }
    
    DecSrcDesc.SrcType = HIGO_DEC_SRCTYPE_FILE;
    DecSrcDesc.SrcInfo.pFileName = DEC_FILE;
    ret = HI_GO_CreateDecoder(&DecSrcDesc, &hDecHandel );
    if (HI_SUCCESS != ret)
    {
       printf("====call HI_GO_CreateDecoder function failure\n");
       goto ERROR_EIXT_DEINIT;
    }

#ifdef CHIP_TYPE_hi3110ev500
    DecImgAttr.Width  = 720;
    DecImgAttr.Height = 576;
#else
    DecImgAttr.Width  = 1280;
    DecImgAttr.Height = 720;
#endif
    DecImgAttr.Format = HIGO_PF_0888;

    ret = HI_GO_DecImgData(hDecHandel, 0, &DecImgAttr, &hDecSurface);
    if (HI_SUCCESS != ret)
    {
        printf("====call HI_GO_DecImgData function failure\n");
        goto ERROR_EIXT_DECODE;
    }

	   ret = HI_GO_LockSurface(hDecSurface, DecSurfaceInfo, HI_TRUE);
	   if (HI_SUCCESS != ret)
	   {
        printf("====call HI_GO_LockSurface function failure\n");
		      goto ERROR_EIXT_FREESURFACE;
	   }

    ret = HI_GO_UnlockSurface(hDecSurface);
    if (HI_SUCCESS != ret)
	   {
        printf("====call HI_GO_UnlockSurface function failure\n");
		      goto ERROR_EIXT_FREESURFACE;
	   }

    /** big endian to little endian **/
    EncInPhyBuf = (HI_U32)HI_MMZ_New(DecSurfaceInfo[0].Pitch * DecImgAttr.Height,16,NULL,"ENC-IN-BUFFER");
    if (0 == EncInPhyBuf)
	   {
        printf("====call HI_MMZ_New function failure\n");
		      goto ERROR_EIXT_FREESURFACE;
	   }

    pEncInVirBuf = (HI_CHAR*)HI_MMZ_Map(EncInPhyBuf,HI_FALSE);
    if (NULL == pEncInVirBuf)
	   {
        printf("====call HI_MMZ_Map function failure\n");
		      goto ERROR_EIXT_FREEENCBUFFER;
	   }
    
    memset(&stSrcSurface, 0x0, sizeof(TDE2_SURFACE_S));
    memset(&stDstSurface, 0x0, sizeof(TDE2_SURFACE_S));
    memset(&stOpt, 0x0, sizeof(TDE2_OPT_S));
    
    stSrcSurface.u32PhyAddr   = (HI_U32)DecSurfaceInfo[0].pPhyData;
    stSrcSurface.enColorFmt   = TDE2_COLOR_FMT_RGB888;
    stSrcSurface.u32Height    = DecImgAttr.Height;
    stSrcSurface.u32Width     = DecImgAttr.Width;
    stSrcSurface.u32Stride    = DecSurfaceInfo[0].Pitch;
    stSrcSurface.bAlphaMax255 = HI_TRUE;
    stSrcSurface.bAlphaExt1555 = HI_TRUE;

    stSrcRect.s32Xpos = 0;
    stSrcRect.s32Ypos = 0;
    stSrcRect.u32Width  = stSrcSurface.u32Width;
    stSrcRect.u32Height = stSrcSurface.u32Height;

    stDstSurface.u32PhyAddr   = EncInPhyBuf;
    stDstSurface.enColorFmt   = TDE2_COLOR_FMT_BGR888;
    stDstSurface.u32Height    = DecImgAttr.Height;
    stDstSurface.u32Width     = DecImgAttr.Width;
    stDstSurface.u32Stride    = DecSurfaceInfo[0].Pitch;
    stDstSurface.bAlphaMax255  = HI_TRUE;
    stDstSurface.bAlphaExt1555 = HI_TRUE;

    stDstRect.s32Xpos = 0;
    stDstRect.s32Ypos = 0;
    stDstRect.u32Width  = stDstSurface.u32Width;
    stDstRect.u32Height = stDstSurface.u32Height;
    
    ret = HI_TDE2_Open();
    if (HI_SUCCESS != ret)
	   {
        printf("====call HI_TDE2_Open function failure\n");
		      goto ERROR_EIXT_FREEENCBUFFER;
	   }
    
    BlitHandle = HI_TDE2_BeginJob();
    if (BlitHandle < 0)
    {
        printf("====call HI_TDE2_BeginJob function failure\n");
		      goto ERROR_EIXT_TDECLOSE;
	   }
    
    ret = HI_TDE2_Bitblit(BlitHandle, NULL, NULL, &stSrcSurface, &stSrcRect, &stDstSurface, &stDstRect, &stOpt);
    if (HI_SUCCESS != ret)
	   {
        printf("====call HI_TDE2_Bitblit function failure\n");
		      goto ERROR_EIXT_TDECLOSE;
	   }
    
    ret = HI_TDE2_EndJob(BlitHandle, HI_TRUE, HI_TRUE, 1000);
    if (HI_SUCCESS != ret)
	   {
        printf("====call HI_TDE2_EndJob function failure\n");
		      goto ERROR_EIXT_TDECLOSE;
	   }
    
    HI_TDE2_Close();
    
    /** encode to jpeg **/
    EncColorSpace = JCS_RGB;
	   ret = ENCODE_TO_JpegFile(pEncInVirBuf,DecImgAttr.Width,DecImgAttr.Height,DecSurfaceInfo[0].Pitch,EncColorSpace);
	   if (HI_SUCCESS != ret)
	   {
	       printf("====call ENCODE_TO_JpegFile function failure\n");
        goto ERROR_EIXT_TDECLOSE;
	   }

    /** encode to bmp **/
    EncImgAttr.ExpectType = HIGO_IMGTYPE_BMP;
    ret = HI_GO_EncodeToFile(hDecSurface, ENC_BMP_FILE, &EncImgAttr);
    if (HI_SUCCESS != ret)
    {
        printf("====call HI_GO_EncodeToFile function failure\n");
        goto ERROR_EIXT_TDECLOSE;
    }

    if (NULL != pEncInVirBuf)
    {
       HI_MMZ_Unmap(EncInPhyBuf);
    }
    if (0 != EncInPhyBuf)
    {
       HI_MMZ_Delete(EncInPhyBuf);
    }

    HI_GO_FreeSurface(hDecSurface);
    HI_GO_DestroyDecoder(hDecHandel);
    HI_GO_Deinit();

    return HI_SUCCESS;

ERROR_EIXT_TDECLOSE:
    HI_TDE2_Close();
   
ERROR_EIXT_FREEENCBUFFER:
    if (NULL != pEncInVirBuf)
    {
       HI_MMZ_Unmap(EncInPhyBuf);
    }
    if (0 != EncInPhyBuf)
    {
       HI_MMZ_Delete(EncInPhyBuf);
    }

ERROR_EIXT_FREESURFACE:
    HI_GO_FreeSurface(hDecSurface);
    
ERROR_EIXT_DECODE:
    HI_GO_DestroyDecoder(hDecHandel);
    
ERROR_EIXT_DEINIT:
    HI_GO_Deinit();

ERROR_EIXT:
    return HI_FAILURE;
}
