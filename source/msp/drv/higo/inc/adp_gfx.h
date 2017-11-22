/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : adp_gfx.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __ADP_GFX_H__
#define __ADP_GFX_H__


/*********************************add include here******************************/

#include "higo_surface.h"
#include "higo_blit.h"


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

	
	HI_S32	HIGO_ADP_InitBlitter(HI_VOID);
	
	HI_VOID  HIGO_ADP_DeinitBlitter(HI_VOID);
	
	HI_S32 ADP_GFXBlitBility(const HIGO_SURFACE_S* pSrcSurface, const HIGO_SURFACE_S* pDstSurface, const HIGO_BLTOPT2_S* pBlitOpt);
	
	HI_S32 ADP_GFXStretchBlitBility(const HIGO_SURFACE_S* pSrcSurface, const HIGO_SURFACE_S* pDstSurface, const HIGO_BLTOPT2_S* pBlitOpt);
	
	HI_S32 ADP_GFXOperateBility(const HIGO_SURFACE_S* pDstSurface, const GFX_OPT_TYPE_E GfxOpt, const HIGO_BLTOPT2_S* pBlitOpt);
	/**  a collection of operations about 2D module */
	HI_S32 HIGO_ADP_GFXBlit(const HIGO_SURFACE_S* pSrcSurface, const HI_RECT *pSrcRect, const HIGO_SURFACE_S* pDstSurface, const HI_RECT *pDstRect, const HIGO_BLTOPT2_S* pBlitOpt);
	
	HI_S32 HIGO_ADP_GFXStretchBlit(const HIGO_SURFACE_S* pSrcSurface, const HI_RECT *pSrcRect, const HIGO_SURFACE_S* pDstSurface, const HI_RECT *pDstRect, const  HIGO_BLTOPT2_S* pBlitOpt);
	
	HI_S32 HIGO_ADP_GFXOperate(const HIGO_SURFACE_S* pDstSurface, const GFX_OPT_TYPE_E GfxOpt, const void * pInfo,const  HIGO_BLTOPT2_S* pBlitOpt);

	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __ADP_GFX_H__*/
