/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : adp_jpeg.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __ADP_JPEG_H__
#define __ADP_JPEG_H__


#ifdef HIGO_JPEG_SUPPORT

/*********************************add include here******************************/

#include "higo_io.h"
#include "higo_common.h"
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

	
	/**
	 \brief jpeg initial
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JpegInit(HI_VOID);
	
	/**
	 \brief jpeg de initial
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JpegDeInit(HI_VOID);
	
	/**
	 \brief create decode instance
	 \param[in] DEC_HANDLE *pJpegDec  decode instance handle
	 \param[in] const HIGO_DEC_ATTR_S *pSrcDesc decoder parameter
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JPGCreateDecoder(DEC_HANDLE *pJpegDec, const HIGO_DEC_ATTR_S *pSrcDesc);
	
	/**
	 \brief destroy decoder
	 \param[in] DEC_HANDLE JpegDec decode instance handle
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JPGDestroyDecoder(DEC_HANDLE JpegDec);
	
	/**
	 \brief restart decode 
	 \param[in] DEC_HANDLE JpegDec decode instance handle
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JPGResetDecoder(DEC_HANDLE JpegDec);
	
	/**
	 \brief deocode picuture common info
	 \param[in] DEC_HANDLE JpegDec decode instance handle
	 \param[in] HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo common info pointer
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JPGDecCommInfo(DEC_HANDLE JpegDec, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo);
	
	/**
	 \brief decode picture index info
	 \param[in] DEC_HANDLE JpegDec decode instance handle
	 \param[in] HI_U32	Index index number
	 \param[in] HIGO_DEC_IMGINFO_S *pImgInfo pointer of picture infor
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JPGDecImgInfo(DEC_HANDLE JpegDec, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo);
	
	/**
	 \brief get picture data, and decode can do scaling in frequency domain
	 \param[in] DEC_HANDLE JpegDec	decode instance handle
	 \param[in] HI_U32 Index index number
	 \param[in/out] HIGO_DEC_IMGDATA_S *pImgInfo picture info ,for input and output 
				   input: decode output format, height, witdh , pixel format  which user needed 
				   output: format decode output
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JPGDecImgData(DEC_HANDLE JpegDec, HI_U32 Index, HIGO_SURFACE_S * pSurface);
	
	/**
	 \brief release decode data after finish decoding 
	 \param[in] DEC_HANDLE Decoder decode instance handle
	 \param[in] HIGO_DEC_IMGDATA_S *pImgInfo data pointer
	 \param[out] none
	 \retval none
	 \return none
	 */
	HI_S32	 HIGO_ADP_JPGReleaseDecImgData(DEC_HANDLE Decoder, HIGO_DEC_IMGDATA_S *pImgData);

	HI_S32 HIGO_ADP_JPGGetActualSize(DEC_HANDLE JpegDec, HI_S32 Index, const HI_RECT *pSrcRect, HIGO_SURINFO_S *pSurInfo);

	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /** HIGO_JPEG_SUPPORT **/

#endif /* __ADP_JPEG_H__*/
