/******************************************************************************
*
* Copyright (C) 2016 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : sample_jpge.h
Version             : Initial Draft
Author              : 
Created             : 2016/01/03
Description         : 
                      CNcomment: jpeg编码头文件 CNend\n
Function List   : 

                                          
History         :
Date                        Author                  Modification
2016/01/03                  y00181162               Created file      
******************************************************************************/

#ifndef  _SAMPLE_ENC_H_
#define  _SAMPLE_ENC_H_


/*********************************add include here******************************/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <setjmp.h>


#include "hi_common.h"
#include "hi_type.h"
#include "jpeglib.h"
#include "jerror.h"


/***************************** Macro Definition ******************************/

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define SAMPLE_TRACE( fmt, args... )  {do{}while(0);}
#else
#define SAMPLE_TRACE( fmt, args... )\
            do{ \
                fprintf(stderr,fmt, ##args );\
            }while(0)
#endif

#define SAMPLE_SRC_JPEG_FILE_DIR             "./res/data-src/"
#define SAMPLE_ENC_JPEG_FILE_DIR             "./res/encode/"

#define SAMPLE_CHAR_NUM             256

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/
/*****************************************************************************
* func		  : sample_get_filename
* description : CNcomment: 获取目录下的文件名字         CNend\n
* param[in]	  : *pFileName		CNcomment:文件名        CNend\n
* param[in]	  : *pEncFileName   CNcomment:encode file   CNend\n
* retval 	  : NA
* others:	  : NA
*****************************************************************************/
HI_S32 sample_get_filename(HI_CHAR *pFileName, HI_CHAR *pDstName, HI_CHAR* pEncFileName);


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
HI_S32 sample_get_argb8888_data(HI_CHAR *pFileName,HI_U32 u32PhyOutBuf,HI_CHAR* pVirOutBuf,HI_U32 u32MemSize,HI_U32 *pu32Width,HI_U32 *pu32Height,HI_U32 *pu32Stride,J_COLOR_SPACE *penInputColorSpace);


#endif /*_SAMPLE_ENC_H_ */
