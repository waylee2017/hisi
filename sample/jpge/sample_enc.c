/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : sample_jpge.c
Version             : Initial Draft
Author              : 
Created             : 2016/01/03
Description         : 
                      CNcomment: jpeg编码 CNend\n
Function List   : 

                                          
History         :
Date                        Author                  Modification
2016/01/03                  y00181162               Created file      
******************************************************************************/


/*********************************add include here******************************/
#include "sample_enc.h"


/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/
typedef struct tagJPEG_ENC_MYERR_S
{
    struct jpeg_error_mgr pub;

}JPEG_ENC_MYERR_S,*JPEG_ENC_MYERR_S_PTR;


/********************** Global Variable declaration **************************/

static jmp_buf  gs_enc_setjmp_buffer;


static HI_CHAR *gs_pVirDataBuf  = NULL;
static HI_U32 gs_u32PhyDataBuf  = 0;
static HI_S32  gs_DataSize      = (10 * 1024 * 1024);

/********************** API forward declarations	 **************************/

void __attribute__ ((constructor)) sample_enc_init(void)
{
     if(0 == gs_DataSize)
     {
        return;
     }

	 gs_u32PhyDataBuf = (unsigned long)HI_MMZ_New(gs_DataSize, 256, NULL, (HI_CHAR*)"ENCODE-SAMPLE");
	 if(0 == gs_u32PhyDataBuf)
	 {
	    SAMPLE_TRACE("alloc data mem size %d failure\n",gs_DataSize);
		goto ERROR_EXIT;
	 }
	 gs_pVirDataBuf = (HI_CHAR*)HI_MMZ_Map((unsigned long)gs_u32PhyDataBuf,HI_FALSE); 
	 if(NULL == gs_pVirDataBuf)
	 {
	    SAMPLE_TRACE("map data mem size %d failure\n",gs_DataSize);
		goto ERROR_EXIT;
	 }
	 memset(gs_pVirDataBuf,0,gs_DataSize);

     return;
     
ERROR_EXIT:
     if(NULL != gs_pVirDataBuf)
     {
        HI_MMZ_Unmap((unsigned long)gs_u32PhyDataBuf);
     }
    
	 if(0 != gs_u32PhyDataBuf)
	 {
        HI_MMZ_Delete((unsigned long)gs_u32PhyDataBuf);
	 }

     gs_pVirDataBuf   = NULL;
     gs_u32PhyDataBuf = 0;

	 return;

}

void __attribute__ ((destructor)) sample_enc_dinit(void)
{
    if(NULL != gs_pVirDataBuf)
    {
        HI_MMZ_Unmap((unsigned long)gs_u32PhyDataBuf);
    }
    
	if(0 != gs_u32PhyDataBuf)
	{
        HI_MMZ_Delete((unsigned long)gs_u32PhyDataBuf);
	}

    gs_pVirDataBuf   = NULL;
    gs_u32PhyDataBuf = 0;

    return;
}

/****************************************************************************
* func          : test_enc_err
* description	: CNcomment: 声明解码错误跳转函数 CNend\n
* param[in] 	: NA
* retval		: NA
* others:		: NA
******************************************************************************/
static HI_VOID test_enc_err(j_common_ptr cinfo)
{
    (*cinfo->err->output_message)(cinfo);
    longjmp(gs_enc_setjmp_buffer, 1);
}

/****************************************************************************
* func          : SAMPLE_PRINT_ColorSpace
* description	: CNcomment: 输出颜色空间信息 CNend\n
* param[in] 	: NA
* retval		: NA
* others:		: NA
******************************************************************************/
static HI_VOID SAMPLE_PRINT_ColorSpace(const J_COLOR_SPACE eInputColorSpace)
{
    switch(eInputColorSpace)
    {
        case JCS_RGB_565:
            SAMPLE_TRACE("input data colorspace is JCS_RGB_565\n");
            break;
        case JCS_BGR_565:
            SAMPLE_TRACE("input data colorspace is JCS_BGR_565\n");
            break;
        case JCS_ARGB_1555:
            SAMPLE_TRACE("input data colorspace is JCS_ARGB_1555\n");
            break;
        case JCS_ABGR_1555:
            SAMPLE_TRACE("input data colorspace is JCS_ABGR_1555\n");
            break;
        case JCS_RGB:
            SAMPLE_TRACE("input data colorspace is JCS_RGB\n");
            break;
        case JCS_BGR:
            SAMPLE_TRACE("input data colorspace is JCS_BGR\n");
            break;
        case JCS_YCbCr:
            SAMPLE_TRACE("input data colorspace is JCS_YCbCr\n");
            break;
        case JCS_CrCbY:
            SAMPLE_TRACE("input data colorspace is JCS_CrCbY\n");
            break;
        case JCS_ARGB_8888:
            SAMPLE_TRACE("input data colorspace is JCS_ARGB_8888\n");
            break;
        case JCS_ABGR_8888:
            SAMPLE_TRACE("input data colorspace is JCS_ABGR_8888\n");
            break;
        default:
            SAMPLE_TRACE("input data colorspace is not support\n");
            break;
    }
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
static HI_S32 SAMPLE_ENCODE_TO_File(HI_CHAR *pOutFileName,HI_CHAR *pDataBuf,HI_U32 u32Width,HI_U32 u32Height,HI_U32 u32Stride,J_COLOR_SPACE eInputColorSpace)
{
    struct jpeg_compress_struct cinfo;
    JPEG_ENC_MYERR_S jerr;
    FILE *pOutFile    = NULL;
    HI_S32 s32Quality = 80; /** 0~100 **/
    JSAMPROW pRowBuf[1];
    
    if(NULL == (pOutFile = fopen(pOutFileName, "wb+")))
    {
        SAMPLE_TRACE("can't open %s\n", pOutFileName);
        return HI_FAILURE;
    }

    cinfo.err = jpeg_std_error(&jerr.pub);
	jerr.pub.error_exit = test_enc_err;
	
	if(setjmp(gs_enc_setjmp_buffer))
	{
		goto ENCODE_EXIT;
	}
        
    /**
     **creat encode
     **/
    jpeg_create_compress(&cinfo);

    /**
     **encode data to file
     **/
    jpeg_stdio_dest(&cinfo, pOutFile);

    /**
     **set input image data message
     **/
    cinfo.image_width      = u32Width;
    cinfo.image_height     = u32Height;
    cinfo.in_color_space   = eInputColorSpace;
    switch(eInputColorSpace)
    {

        case JCS_RGB_565:
        case JCS_BGR_565:
        case JCS_ARGB_1555:
        case JCS_ABGR_1555:
            cinfo.input_components = 2;
            break;
        case JCS_RGB:
        case JCS_BGR:
        case JCS_YCbCr:
        case JCS_CrCbY:
            cinfo.input_components = 3;
            break;
        case JCS_ARGB_8888:
        case JCS_ABGR_8888:
            cinfo.input_components = 4;
            break;
        default:
            goto ENCODE_EXIT;
    }
    jpeg_set_defaults(&cinfo);

    /**
     **set quantization table scaling:
     **/
    jpeg_set_quality(&cinfo, s32Quality, TRUE);

    /**
     **start compress
     **/
    jpeg_start_compress(&cinfo, TRUE);

    while(cinfo.next_scanline < cinfo.image_height)
    {
        pRowBuf[0] = (JSAMPLE FAR*)(&pDataBuf[cinfo.next_scanline * u32Stride]);
        jpeg_write_scanlines(&cinfo, pRowBuf, 1);
    }
  
    /**
     **Finish compression
     **/
    jpeg_finish_compress(&cinfo);
    
ENCODE_EXIT:

    /**
     ** release JPEG compression object
     ** This is an important step since it will release a good deal of memory
     **/
    jpeg_destroy_compress(&cinfo);
    
    if(NULL != pOutFile)
    {
        fclose(pOutFile);
        pOutFile = NULL;
    }
    
    return HI_SUCCESS;
    
}

/*****************************************************************************
* func         :  main
* description  :  函数入口
* param[in]    :  
* retval       :
* others:	   :
*****************************************************************************/
int main(int argc, char* argv[])
{

    HI_S32 s32Ret = HI_SUCCESS;
    HI_CHAR pFileName[SAMPLE_CHAR_NUM]    = {0};
    DIR *dir = NULL;
    struct dirent *ptr = NULL;
    
    /**
     **encode paras
     **/
    HI_CHAR WriteFileName[SAMPLE_CHAR_NUM] = {0};
    HI_U32 u32DataWidth        = 0;
    HI_U32 u32DataHeight       = 0;
    HI_U32 u32DataStride       = 0;
    J_COLOR_SPACE eDataColorSpace = JCS_RGB;

    /**
     **open src directory
     **/
    dir = opendir(SAMPLE_SRC_JPEG_FILE_DIR);
    if(NULL== dir){
    	SAMPLE_TRACE("open jpeg file directory failure \n");
        return HI_FAILURE;
    }

    /**
     **get data and encode to file
     **/
    while((ptr = readdir(dir)) != NULL){
         memset(pFileName,0,SAMPLE_CHAR_NUM);
         memset(WriteFileName,0,SAMPLE_CHAR_NUM);
         s32Ret = sample_get_filename(ptr->d_name,pFileName,WriteFileName);
         if(HI_FAILURE == s32Ret){
            continue;
         }

         /**
          **get argb8888 data
          **/
         s32Ret = sample_get_argb8888_data(pFileName,gs_u32PhyDataBuf,gs_pVirDataBuf,gs_DataSize,&u32DataWidth,&u32DataHeight,&u32DataStride,&eDataColorSpace);
         if(HI_FAILURE == s32Ret)
         {
            SAMPLE_TRACE("get argb8888 data failure\n");
            continue;
         }
         
         /**
          **output input data information
          **/
         SAMPLE_TRACE("\n==========================================================\n");
		 SAMPLE_TRACE("input data information\n");
         SAMPLE_TRACE("write file name %s\n",  WriteFileName);
         SAMPLE_TRACE("input data phy buffer 0x%x\n",gs_u32PhyDataBuf);
         SAMPLE_TRACE("input data vir buffer 0x%x\n",(HI_U32)gs_pVirDataBuf);
         SAMPLE_TRACE("input data width  %d\n",  u32DataWidth);
         SAMPLE_TRACE("input data height %d\n",  u32DataHeight);
         SAMPLE_TRACE("input data stride %d\n",  u32DataStride);
         SAMPLE_PRINT_ColorSpace(eDataColorSpace);
		 SAMPLE_TRACE("==========================================================\n");

         /**
          **write data to file
          **/
         s32Ret = SAMPLE_ENCODE_TO_File(WriteFileName,gs_pVirDataBuf,u32DataWidth,u32DataHeight,u32DataStride,eDataColorSpace);
         if(HI_FAILURE == s32Ret)
         {
            SAMPLE_TRACE("encode data to file failure\n");
            continue;
         }
        
    }

    /**
     **close dir that has been opened
     **/
    closedir(dir);
    
    return HI_SUCCESS;
}
