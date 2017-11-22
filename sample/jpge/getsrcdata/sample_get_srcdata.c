/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name	    : sample_get_srcdata.c
Version		    : Initial Draft
Author		    : 
Created		    : 2016/01/03
Description	    : 获取编码需要的源数据
Function List 	: 

			  		  
History       	:
Date				Author        		Modification
2016/01/03		    y00181162  		    Created file      	
******************************************************************************/

/****************************  add include here     ***************************/
#include "sample_enc.h"

#include "hi_jpeg_api.h"

/***************************** Macro Definition     ***************************/


/***************************** Structure Definition ***************************/
typedef struct tagJPEG_MYERR_S
{
    struct jpeg_error_mgr pub;

}JPEG_MYERR_S,*JPEG_MYERR_S_PTR;


/********************** Global Variable declaration **************************/
static jmp_buf  gs_setjmp_buffer;



/********************** API forward declarations    **************************/

/****************************************************************************
* func		    : test_dec_err
* description	: CNcomment: 声明解码错误跳转函数 CNend\n
* param[in] 	: NA
* retval		: NA
* others:		: NA
******************************************************************************/
static HI_VOID test_dec_err(j_common_ptr cinfo)
{
    (*cinfo->err->output_message)(cinfo);
    longjmp(gs_setjmp_buffer, 1);
}

/*****************************************************************************
* func		  : sample_get_filename
* description : CNcomment: 获取目录下的文件名字         CNend\n
* param[in]	  : *pFileName		CNcomment:文件名        CNend\n
* param[in]	  : *pEncFileName   CNcomment:encode file   CNend\n
* retval 	  : NA
* others:	  : NA
*****************************************************************************/
HI_S32 sample_get_filename(HI_CHAR *pFileName, HI_CHAR *pDstName, HI_CHAR* pEncFileName)
{
    HI_CHAR *pPos  = NULL;
    HI_CHAR *pName = pFileName;

    pPos = strrchr(pFileName, '.');
    if(NULL == pPos)
    {
        return HI_FAILURE;
    }

    pPos++;
    
    if(strncasecmp(pPos,"jpeg",2) != 0)
    {
        return HI_FAILURE;
    }

    /**
     **data File
     **/
    strncpy(pDstName, SAMPLE_SRC_JPEG_FILE_DIR,strlen(SAMPLE_SRC_JPEG_FILE_DIR));
    strncat(pDstName,pName,strlen(pName));
    pDstName[SAMPLE_CHAR_NUM - 1] = '\0';
    
    /**
     **Encode File
     **/
    strncpy(pEncFileName, SAMPLE_ENC_JPEG_FILE_DIR,strlen(SAMPLE_ENC_JPEG_FILE_DIR));
    strncat(pEncFileName,pName,strlen(pName));
	pEncFileName[SAMPLE_CHAR_NUM - 1] = '\0';
    
    return HI_SUCCESS;

}


/*****************************************************************************
* func		  : sample_get_argb8888_data
* description : CNcomment: 获取ARGB8888数据  CNend\n
* param[in]	  : *pFileName		   CNcomment:码流数据的来源          CNend\n
* param[in]	  : u32PhyOutBuf       CNcomment:存编码数据的物理地址    CNend\n
* param[in]	  : pVirOutBuf         CNcomment:存编码数据的虚拟地址    CNend\n
* param[in]	  : u32MemSize         CNcomment:存编码数据的内存大小    CNend\n
* param[ou]	  : pu32Width          CNcomment:编码数据的宽            CNend\n
* param[ou]	  : pu32Height         CNcomment:编码数据的高            CNend\n
* param[ou]	  : pu32Stride         CNcomment:编码数据的行间距        CNend\n
* param[ou]	  : penInputColorSpace CNcomment:编码数据的颜色空间格式  CNend\n
* retval 	  : NA
* others:	  : NA
*****************************************************************************/
HI_S32 sample_get_argb8888_data(HI_CHAR *pFileName,HI_U32 u32PhyOutBuf,HI_CHAR* pVirOutBuf,HI_U32 u32MemSize,HI_U32 *pu32Width,HI_U32 *pu32Height,HI_U32 *pu32Stride,J_COLOR_SPACE *penInputColorSpace)
{

		struct jpeg_decompress_struct cinfo;
		JPEG_MYERR_S jerr;

		HI_U32 u32Width    = 0;
		HI_U32 u32Height   = 0;
        HI_U32 u32Stride   = 0;
		HI_U32 u32DataMemSize  = 0;
		HI_S32 s32Ret      = HI_SUCCESS;
		
		FILE* pInFile = NULL;
        HI_JPEG_INFO_S stJpegInfo;
	
		HI_JPEG_SURFACE_DESCRIPTION_S stSurfaceDesc;

        SAMPLE_TRACE("\n\n==========================================================\n");
		SAMPLE_TRACE("src data file is %s\n",pFileName);
		SAMPLE_TRACE("==========================================================\n");
		pInFile = fopen(pFileName,"rb");
		if(NULL == pInFile)
		{
		   SAMPLE_TRACE("open file failure");
           return HI_FAILURE;
		}
        memset(&stSurfaceDesc,0,sizeof(HI_JPEG_SURFACE_DESCRIPTION_S));


		cinfo.err = jpeg_std_error(&jerr.pub);
		jerr.pub.error_exit = test_dec_err;
		
		if(setjmp(gs_setjmp_buffer))
		{
			goto DEC_FINISH;
		}

		jpeg_create_decompress(&cinfo);

	    jpeg_stdio_src(&cinfo, pInFile);

	    jpeg_read_header(&cinfo, TRUE);
		

		cinfo.scale_num   = 1 ;
	    cinfo.scale_denom = 1;
        cinfo.out_color_space = JCS_ABGR_8888;

		
        stJpegInfo.bOutInfo = HI_TRUE;
		s32Ret = HI_JPEG_GetJpegInfo(&cinfo,&stJpegInfo);

        u32Width   = stJpegInfo.u32Width[0];
		u32Height  = stJpegInfo.u32Height[0];
		u32Stride  = stJpegInfo.u32OutStride[0];
        u32DataMemSize = stJpegInfo.u32OutSize[0];
        
		if(u32DataMemSize > u32MemSize)
        {
            SAMPLE_TRACE("the memsize is not enough\n");
            SAMPLE_TRACE("data size is %d\n",u32DataMemSize);
            SAMPLE_TRACE("mem  size is %d\n",u32MemSize);
            goto DEC_FINISH;
        }

        memset(pVirOutBuf,0,u32MemSize);
		stSurfaceDesc.stOutSurface.u32OutPhy[0]    = (unsigned long)u32PhyOutBuf;
		stSurfaceDesc.stOutSurface.pOutVir[0]      = pVirOutBuf;
		stSurfaceDesc.stOutSurface.bUserPhyMem     = HI_TRUE;
		stSurfaceDesc.stOutSurface.u32OutStride[0] = u32Stride; 
		s32Ret = HI_JPEG_SetOutDesc(&cinfo, &stSurfaceDesc);
		if(HI_SUCCESS != s32Ret)
		{
		   SAMPLE_TRACE("HI_JPEG_SetOutDesc failure\n");
		   goto DEC_FINISH;
		}

	    jpeg_start_decompress(&cinfo);

		while (cinfo.output_scanline < cinfo.output_height) 
	    {
		    jpeg_read_scanlines(&cinfo, NULL, 1);
		}

		jpeg_finish_decompress(&cinfo);
		
DEC_FINISH:

      	jpeg_destroy_decompress(&cinfo);

        if(NULL != pInFile)
        {
    		fclose(pInFile);
    		pInFile = NULL;
        }

        *pu32Width  = u32Width;
        *pu32Height = u32Height;
        *pu32Stride = u32Stride;
        *penInputColorSpace = cinfo.out_color_space;
            
		return HI_SUCCESS;
        
}
