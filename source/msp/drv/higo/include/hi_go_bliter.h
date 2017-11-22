/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_bliter.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __HI_GO_BLITER_H__
#define __HI_GO_BLITER_H__


/*********************************add include here******************************/

#include "hi_go_comm.h"

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

	/*alpha blend operation*//*CNcomment: 像素级alpha混合操作运算 */
	typedef enum
	{
		HIGO_COMPOPT_NONE = 0, /*no blend*//* CNcomment:< 不使用混合，即copy */
	
		HIGO_COMPOPT_SRCOVER,  /*Porter/Duff SrcOver blend*//* CNcomment:< Porter/Duff SrcOver混合操作 */
		HIGO_COMPOPT_AKS,	   /**<Assume that the destination surface is not transparent. After the alpha blending is performed, the source alpha is retained.*//*<CNcomment:假设目标surface为不透明，简单alpha混合，结果保留源alpha */
		HIGO_COMPOPT_AKD,	   /**<Assume that the destination surface is not transparent. After the alpha blending is performed, the destination alpha is retained.*//*<CNcomment:假设目标surface为不透明，简单alpha混合，结果保留目标alpha */
	
		HIGO_COMPOPT_BUTT
	} HIGO_COMPOPT_E;
	
	/*color key operation*//*CNcomment: Colorkey对应的操作方式 */
	typedef enum
	{
		HIGO_CKEY_NONE = 0, /*no colorkey*//*CNcomment:< 不使用colorkey */
		HIGO_CKEY_SRC,		/*colorkey from source*//*CNcomment:< 使用源colorkey */
		HIGO_CKEY_DST,		/*colorkey from target*//*CNcomment:<< 使用目标colorkey */
	
		HIGO_CKEY_BUTT
	} HIGO_CKEY_E;
	
	/*rop operation for source and target*//*CNcomment: 2元ROP操作 */
	typedef enum
	{
		HIGO_ROP_BLACK = 0, /**< Blackness */
		HIGO_ROP_PSDon, 	/**< ~(PS+D) */
		HIGO_ROP_PSDna, 	/**< ~PS & D */
		HIGO_ROP_PSn,		/**< ~PS */
		HIGO_ROP_DPSna, 	/**< PS & ~D */
		HIGO_ROP_Dn,		/**< ~D */
		HIGO_ROP_PSDx,		/**< PS^D */
		HIGO_ROP_PSDan, 	/**< ~(PS&D) */
		HIGO_ROP_PSDa,		/**< PS & D */
		HIGO_ROP_PSDxn, 	/**< ~(PS^D) */
		HIGO_ROP_D, 		/**< D */
		HIGO_ROP_PSDno, 	/**< ~PS + D */
		HIGO_ROP_PS,		/**< PS */
		HIGO_ROP_DPSno, 	/**< PS + ~D */
		HIGO_ROP_PSDo,		/**< PS+D */
		HIGO_ROP_WHITE, 	/**< Whiteness */
	
		HIGO_ROP_BUTT
	} HIGO_ROP_E;
	
	typedef enum
	{
		HIGO_ROTATE_NONE = 0,
		HIGO_ROTATE_90, 	/*rotate 90 degree along clockwise*//*CNcomment:< 顺时针旋转90度 */
		HIGO_ROTATE_180,   /*rotate 180 degree along clockwise*//*CNcomment:< 顺时针旋转180度 */
		HIGO_ROTATE_270,	/*rotate 270degree along clockwise*//*CNcomment:< 顺时针旋转270度 */
	
		HIGO_ROTATE_BUTT
	} HIGO_ROTATE_E;
	
	typedef enum
	{
		HIGO_MIRROR_NONE = 0,
	
		HIGO_MIRROR_LR, 	/*mirror with right and left*//*<CNcomment:左右镜像 */
		HIGO_MIRROR_TB, 	/*mirror with up and down*//*<CNcomment:上下镜像 */
	
		HIGO_MIRROR_BUTT
	} HIGO_MIRROR_E;
		
	/*define the level for deflick*//*CNcomment: 抗闪烁级别 */
	typedef enum
	{
		HIGO_DEFLICKER_AUTO = 0, 
		HIGO_DEFLICKER_LOW,
		HIGO_DEFLICKER_MIDDLE,
		HIGO_DEFLICKER_HIGH,
		HIGO_DEFLICKER_BUTT
	}HIGO_DEFLICKEROPT_E;
	
	/** @} */  /** <!-- ==== Enum Definition End ==== */
	
    /*************************** Structure Definition ****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/
	
	typedef struct 
	{
		HI_BOOL EnableGlobalAlpha;		/*the flag for enable global  alpha*//*<CNcomment:全局alpha使能标志 */
		HIGO_COMPOPT_E PixelAlphaComp;	/*the alpha for piexl*//*<CNcomment:像素alpha操作 */
		HIGO_CKEY_E    ColorKeyFrom;   /*colorkey operation*//*<CNcomment:ColorKey操作 */
		HI_BOOL 	   EnableRop;		/*enable rop operation*//*<CNcomment:启用ROP2操作 */
		HIGO_ROP_E	   Rop; 			/*type of rop*//*<CNcomment:ROP2操作类型 */
	 }HIGO_BLTOPT2_S;
	
	/**Blit operation attributes*/
	/**CNcomment:blit操作属性 */
	typedef struct
	{
		HI_BOOL EnableGlobalAlpha;		/*the flag for enable global  alpha*//*<CNcomment:全局alpha使能标志 */
	
		HIGO_COMPOPT_E PixelAlphaComp;	/*the alpha for piexl*//*<CNcomment:像素alpha操作 */
		HIGO_CKEY_E    ColorKeyFrom;	/*colorkey operation*//*<CNcomment:ColorKey操作 */
		HI_BOOL 	   EnableRop;		/*enable rop operation*//*<CNcomment:启用ROP2操作 */
		HIGO_ROP_E	   Rop; 			/*type of rop*//*<CNcomment:ROP2操作类型 */
		HI_BOOL 	   EnableScale; 	/*enable resize*//*<CNcomment:启用缩放 */
		HIGO_ROTATE_E  RotateType;		/*type of rotate*//*<CNcomment:旋转方式 */
		HIGO_MIRROR_E  MirrorType;		/*type of mirror*//*<CNcomment:镜像方式 */
	} HIGO_BLTOPT_S;
	
	typedef struct
	{
		HI_BOOL EnableGlobalAlpha;		/*the flag for enable global  alpha*//*<CNcomment:全局alpha使能标志 */
	
		HIGO_COMPOPT_E PixelAlphaComp; /*the alpha for piexl*//*<CNcomment:像素alpha操作 */
		HI_BOOL 	   EnableRop;		/*enable rop operation*//*<CNcomment:启用ROP2操作 */
		HIGO_ROP_E	   RopColor;	   /*type of rop*//*<CNcomment:ROP2操作类型 */
		HIGO_ROP_E	   RopAlpha;
			
	} HIGO_MASKOPT_S;
		
	/*define the level for deflick*//*CNcomment: 抗闪烁级别 */
	typedef struct
	{
		HIGO_DEFLICKEROPT_E DefLevel;
	}HIGO_DEFLICKEROPT_S;
	
    /** @} */  /** <!-- ==== Structure Definition End ==== */

    /********************** Global Variable declaration **************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

    /** @} */  /** <!-- ==== Global Var Definition End ==== */

    /******************************* API declaration *****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	/** 
	\brief fill rectangle. 矩形填充
	\attention \n
	N/A
	\param[in] Surface: Surface handle. CNcomment:Surface句柄
	\param[in] pRect :the range,it's empty that will fill all range. CNcomment:填充矩形大小，为空表示填充整个surface
	\param[in] Color : the fill color. CNcomment:填充颜色,注意如果是RGB格式，统一填充32位色，如果调色板，就直接填充颜色索引。
	\param[in] CompositeOpt:blend operation. CNcomment:混合方式
	
	\retval ::HI_SUCCESS 
	\retval ::HI_FAILURE
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_INVCOMPTYPE
	\retval ::HIGO_ERR_OUTOFPAL
	\retval ::HIGO_ERR_UNSUPPORTED
	\retval ::HIGO_ERR_LOCKED
	\retval ::HIGO_ERR_INTERNAL
	\retval ::HIGO_ERR_INVPIXELFMT
	/retval ::HIGO_ERR_DEPEND_TDE
	
	\see \n
	N/A
	*/
	
	HI_S32 HI_GO_FillRect(HI_HANDLE Surface, const HI_RECT* pRect, HI_COLOR Color, HIGO_COMPOPT_E CompositeOpt);
	/** 
	\brief bit block blit, it can change color space,resize,rolate and so on
	CNcomment:位块搬移，在搬移过程中，可以实现色彩空间转换、缩放、旋转功能
	\attention \n
	support yuv to rgb on change color \n
	support colorkey alpha rop colorkey+rop\
	only support resize or only support rotate or only support mirror\n
	the format of source is same as the format target, but the format cann't yuv or clut
	CNcomment:色彩空间转换仅支持YUV到RGB转换 \n
	可以支持操作如下colorkey、alpha、ROP、colorkey+ROP\
	缩放、旋转或镜像不可组合使用 \n
	缩放、旋转或镜像要求源与目标像素格式完全相同，但不能是YUV格式和CLUT格式 \n
	\param[in] SrcSurface: handle of source surface. CNcomment:源surface句柄
	\param[in] pSrcRect:the region of source surface, blit all range when it is null. CNcomment:搬移的源区域，为空表示整个源surface区域
	\param[in] DstSurface: handle of target surface. CNcomment:目的surface句柄
	\param[in] pDstRect : the region of target surface, blit all range when it is null. CNcomment:搬移的目的区域，为空表示整个目标surface区域
	\param[in] pBlitOpt :blend type. CNcomment:混合方式
	
	\retval ::HI_SUCCESS 
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVMIRRORTYPE
	\retval ::HIGO_ERR_INVROTATETYPE
	\retval ::HIGO_ERR_INVCKEYTYPE
	\retval ::HIGO_ERR_INVROPTYPE
	\retval ::HIGO_ERR_NOCOLORKEY
	\retval ::HIGO_ERR_INVPIXELFMT
	\retval ::HIGO_ERR_INTERNAL
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_INVCOMPTYPE
	\retval ::HIGO_ERR_UNSUPPORTED
	\retval ::HIGO_ERR_LOCKED
	\retval ::HIGO_ERR_DEPEND_TDE
	
	\see \n
	N/A
	*/
	HI_S32 HI_GO_Blit (HI_HANDLE SrcSurface, const HI_RECT* pSrcRect,
					   HI_HANDLE DstSurface, const HI_RECT* pDstRect,
					   const HIGO_BLTOPT_S* pBlitOpt);

	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HI_GO_BLITER_H__*/
