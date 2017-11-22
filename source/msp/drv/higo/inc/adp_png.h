/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : adp_png.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __ADP_PNG_H__
#define __ADP_PNG_H__


#ifdef HIGO_PNG_SUPPORT

/*********************************add include here******************************/

#include "higo_common.h"
#include "higo_io.h"
#include "higo_surface.h"
#include "hi_go_decoder.h"


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

    /** @} */  /** <!-- ==== Macro Definition End ==== */

    /*************************** Enum Definition **********************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	/** @} */  /** <!-- ==== Enum Definition End ==== */

    /*************************** Structure Definition ****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

    /** @} */  /** <!-- ==== Structure Definition End ==== */

    /********************** Global Variable declaration **************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

    /** @} */  /** <!-- ==== Global Var Definition End ==== */

    /******************************* API declaration *****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	HI_S32 HIGO_ADP_PngCreateDecoder(DEC_HANDLE *pPngDec, const  HIGO_DEC_ATTR_S *pSrcDesc);
	
	HI_S32 HIGO_ADP_PngDestroyDecoder(DEC_HANDLE PngDec);
	
	HI_S32 HIGO_ADP_PngResetDecoder(DEC_HANDLE PngDec);
	
	HI_S32 HIGO_ADP_PngDecCommInfo(DEC_HANDLE PngDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo);
	
	HI_S32 HIGO_ADP_PngDecImgInfo(DEC_HANDLE PngDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo);
	
	HI_S32 HIGO_ADP_PngDecImgData(DEC_HANDLE PngDec, HI_U32 Index, HIGO_SURFACE_S *pSurface);

	HI_S32 HIGO_ADP_PngGetActualSize(DEC_HANDLE PngDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo);

	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /** HIGO_PNG_SUPPORT **/

#endif /* __ADP_PNG_H__*/
