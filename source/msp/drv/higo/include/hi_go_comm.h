/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_comm.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __HI_GO_COMM_H__
#define __HI_GO_COMM_H__


/*********************************add include here******************************/
#include "hi_type.h"
#include "hi_go_errno.h"


/*****************************************************************************/
#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */


     /***************************** Macro Definition ******************************/
	 /** \addtogroup          HIGO */
     /** @{ */      /** <!--[HIGO]*/
	/*max color number of pallette*//*CNcomment:* 调色板最大颜色数 */
	#define MAX_PALETTE_COLOR_SIZE      256
	#define INVALID_HANDLE                0x0

	/*color value*//*CNcomment:颜色值 */
	typedef HI_U32 HI_COLOR;
	
    /** @} */  /** <!-- ==== Macro Definition End ==== */

    /*************************** Enum Definition **********************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	typedef enum 
	{
	    HIGO_IMGTYPE_JPEG = 0, /*jpeg*//*<CNcomment: JPEG格式图片*/
	    HIGO_IMGTYPE_GIF,      /*gif*//*<CNcomment: GIF格式图片*/
	    HIGO_IMGTYPE_BMP,      /*bmp*//*<CNcomment: BMP格式图片 */
	    HIGO_IMGTYPE_PNG,      /*png*//*<CNcomment: PNG格式图片 */
	    HIGO_IMGTPYE_BUTT
	} HIGO_IMGTYPE_E;
	
	/** @} */  /** <!-- ==== Enum Definition End ==== */

    /*************************** Structure Definition ****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	/*rectangle*//*CNcomment: 矩形 */
	typedef struct
	{
		HI_S32 x, y;
	
		HI_S32 w, h;
	} HI_RECT;
	
	/*region*//*CNcomment:	区域 */
	typedef struct
	{
		HI_S32 l;
		HI_S32 t;
		HI_S32 r;
		HI_S32 b;
	} HI_REGION;
	

    /** @} */  /** <!-- ==== Structure Definition End ==== */

    /********************** Global Variable declaration **************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	/*pallette*//*CNcomment: 调色板 */
	typedef HI_COLOR HI_PALETTE[MAX_PALETTE_COLOR_SIZE];
	
    /** @} */  /** <!-- ==== Global Var Definition End ==== */

    /******************************* API declaration *****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	/** 
	\brief Decode env initialization. CNcomment:Decode env初始化
	\attention \n
	
	\param[in] pBuffer :alloc the buffer for decode module. CNcomment:分配供解码使用的buffer地址
	\param[in] u32BufferLen : buffer size. CNcomment:buffer的大小
	
	\retval ::HI_SUCCESS
	\retval ::HI_FAILURE
	
	\see \n
	::HI_GO_DeInitDecodeEnv
	*/
	HI_S32 HI_GO_Init(HI_VOID *pBuffer , HI_U32 u32BufLen );
	
	HI_S32 HI_GO_SetMemInfo(HI_U32 u32PhyAddr, HI_VOID *pVirAddr, HI_U32 u32BufLen);

	/** 
	\brief HiGo destory initialization. CNcomment:HiGo去初始化
	\attention \n
	release source
	\param N/A
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_DEINITFAILED
	
	\see \n
	::HI_GO_Init
	*/
	HI_S32	HI_GO_Deinit(HI_VOID);


	HI_S32	HI_GO_Surface2Bmp(HI_HANDLE Surface, const HI_RECT *pRect);

	
	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HI_GO_COMM_H__*/
