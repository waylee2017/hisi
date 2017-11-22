/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : higo_blit.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __HIGO_BLIT_H__
#define __HIGO_BLIT_H__


/*********************************add include here******************************/
#include "hi_go_bliter.h"
#include "higo_common.h"


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

	typedef struct
	{
	    HI_RECT Rect;
	    HI_COLOR Color;
	}HIGO_OPRECT_S; 

	typedef enum
	{
	    GFX_OPT_DRAWLINE = 0,
		GFX_OPT_FILLRECT,
	    GFX_OPT_DRAWRECT,		
	    GFX_OPT_DRAWCIRCLE,    
	    GFX_OPT_DRAWELLIPSE, 
	    GFX_OPT_BUTT
	}GFX_OPT_TYPE_E;

    /** @} */  /** <!-- ==== Structure Definition End ==== */

    /********************** Global Variable declaration **************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

    /** @} */  /** <!-- ==== Global Var Definition End ==== */

    /******************************* API declaration *****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	HI_S32 HIGO_InitBliter(HI_VOID);
	
	HI_S32 HIGO_DeinitBliter(HI_VOID);
	
	HI_S32 Bliter_Blit(HIGO_HANDLE SrcSurface, const HI_RECT* pSrcRect,
					   HIGO_HANDLE DstSurface, const HI_RECT* pDstRect,
					   const HIGO_BLTOPT2_S* pBlitOpt);
	
	HI_S32 Bliter_StretchBlit (HIGO_HANDLE SrcSurface, const HI_RECT* pSrcRect,
					   HIGO_HANDLE DstSurface, const HI_RECT* pDstRect,
					   const HIGO_BLTOPT2_S* pBlitOpt);
	HI_S32 Bliter_FillRect(HIGO_HANDLE pSurface, const HI_RECT* pRect, HI_COLOR Color, HIGO_COMPOPT_E CompositeOpt);

	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HIGO_BLIT_H__*/
