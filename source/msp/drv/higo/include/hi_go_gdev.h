/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_gdev.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __HI_GO_GDEV_H__
#define __HI_GO_GDEV_H__


/*********************************add include here******************************/

#include "hi_go_comm.h"
#include "hi_go_surface.h"


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

	/*The following macro defines the buffer mode of each graphics layer of the HiGo. The canvas buffer is used for drawing,
	and the display buffer is used for display output.*/
	/*CNcomment:下面宏定义了higo的每个图层的buffer模式，其中canvas buffer是供用户绘制的buffer,
	display buffer是用于显示输出的buffer.*/
	#define HIGO_LAYER_BUFFER_SINGLE      0x02 /**<One canvas buffer, and no display buffer*//**<CNcomment:1块canvas buffer, 无display buffer */    
	#define HIGO_LAYER_BUFFER_DOUBLE      0x04 /**<One canvas buffer, and one display buffer. Dual buffers are supported.*//**<CNcomment:1块canvas buffer, 1块display buffer 支持双缓冲 */ 
	#define HIGO_LAYER_BUFFER_TRIPLE      0x08 /**<One canvas buffer, and two display buffers. The flip function is supported.*//**<CNcomment:1块canvas buffer, 2块display buffer 支持flip,刷新的时候等待任务完成 */
	#define HIGO_LAYER_BUFFER_OVER        0x10 /**<One canvas buffer, and two display buffers. The flip function is supported. If tasks are being performed during refresh, the current frame is discarded.*//**<CNcomment:1块canvas buffer, 2块display buffer 支持flip,如果刷新的时候带有任务忙，则丢弃当前帧 */
	
    /** @} */  /** <!-- ==== Macro Definition End ==== */

    /*************************** Enum Definition **********************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	/*Definition of the graphics layer ID*/
	/*CNcomment:图层ID定义*/
	typedef enum
	{
		HIGO_LAYER_SD_0 = 0,
		HIGO_LAYER_SD_1, 
		HIGO_LAYER_HD_0,
		HIGO_LAYER_HD_1,
		HIGO_LAYER_AD_0, 
	/*	HIGO_LAYER_AD_1, */
		HIGO_LAYER_BUTT,
	}HIGO_LAYER_E;
	
	/**Standard-definition (SD) graphics layer 0*/
	/**CNcomment:标清图形叠加层0 */
	#define HIGO_LAYER_RGB0 HIGO_LAYER_SD_0
	
	/**SD graphics layer 1*/
	/**CNcomment:标清图形叠加层1 */
	#define HIGO_LAYER_RGB1 HIGO_LAYER_SD_1
	
	
	/**Refresh mode of graphics layers for complying with old definitions. The mode is not recommended.*/
	/**CNcomment:为兼容老定义，图层的刷新方式，不建议使用*/
	typedef enum 
	{
		HIGO_LAYER_FLUSH_DOUBBUFER	 = HIGO_LAYER_BUFFER_DOUBLE, 
		HIGO_LAYER_FLUSH_BUTT
	} HIGO_LAYER_FLUSHTYPE_E;
	
	/*Anti-flicker level, ranging from low to high. The higher the level, the better the anti-flicker effect, but the more blurred the picture.*/
	/*CNcomment:抗闪烁级别，值为LOW~HIGH,值越大抗闪烁效果越好，但越模糊*/
	typedef enum
	{
		HIGO_LAYER_DEFLICKER_NONE = 0, 
		HIGO_LAYER_DEFLICKER_LOW,
		HIGO_LAYER_DEFLICKER_MIDDLE,
		HIGO_LAYER_DEFLICKER_HIGH,
		HIGO_LAYER_DEFLICKER_AUTO,	  
		HIGO_LAYER_DEFLICKER_BUTT
	}HIGO_LAYER_DEFLICKER_E;
	
	/**Frame encode format*/
	/**CNcomment:帧编码传输格式*/
	typedef enum
	{
		HIGO_ENCPICFRM_MONO   = 0x0,	   /**<Normal display, no 3D TV*//**<CNcomment:正常输出，非3D 电视*/
		HIGO_ENCPICFRM_STEREO_SIDEBYSIDE_HALF,	 /**< L/R frames are downscaled horizontally by 2 andpacked side-by-side into a single frame, left on lefthalf of frame*//**<CNcomment:将L/R帧水平缩放到单帧中*/
		HIGO_ENCPICFRM_STEREO_TOPANDBOTTOM,    /**< L/R frames are downscaled vertically by 2 andpacked into a single frame, left on top*//**<CNcomment:将L/R帧垂直缩放到单帧中*/
		HIGO_ENCPICFRM_BUTT
	}HIGO_ENCPICFRM_E;
	
	/**3D STEREO mode*/
	/**CNcomment:3D STEREO模式*/
	typedef enum
	{
		HIGO_STEREO_MODE_HW_FULL = 0x0,  /**< 3d stereo function use hardware and transfer full frame to vo, note: hardware doesn't support the mode if encoder picture delivery method is top and bottom */	
		HIGO_STEREO_MODE_HW_HALF ,	  /**< 3d stereo function use hardware and transfer half frame to vo*/
		HIGO_STEREO_MODE_SW_EMUL,			   /**<3d stereo function use software emulation */
		HIGO_STEREO_MODE_BUTT
	}HIGO_STEREO_MODE_E;
	
	/** @} */  /** <!-- ==== Enum Definition End ==== */

    /*************************** Structure Definition ****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	/**Layer attribute parameters*/
	/**CNcomment:图层属性参数*/
	typedef struct 
	{
		HI_S32				   ScreenWidth;    /**<Height of a graphics layer on the screen. The value must be greater than 0.*//**<CNcomment:图层在屏幕上显示宽度，必须大于0 */
		HI_S32				   ScreenHeight;   /**<Width of a graphics layer on the screen. The value must be greater than 0.*//**<CNcomment:图层在屏幕上显示高度，必须大于0 */
		HI_S32				   CanvasWidth;    /**<Width of the canvas buffer of a graphics layer. If the value is 0, no canvas buffer is created.*//**<CNcomment:图层的绘制buffer宽度，为0时，不创建绘制buffer */
		HI_S32				   CanvasHeight;   /**<Height of the canvas buffer of a graphics layer. If the value is 0, no canvas buffer is created.*//**<CNcomment:图层的绘制buffer高度，为0时，不创建绘制buffer */
		HI_S32				   DisplayWidth;   /**<Width of the display buffer of a graphics layer. If the value is 0, the value of ScreenWidth is used.*//**<CNcomment:图层的显示buffer宽度，为0时，和ScreenWidth相同*/
		HI_S32				   DisplayHeight;  /**<Height of the display buffer of a graphics layer. If the value is 0, the value of ScreenHeight is used.*//**<CNcomment:图层的显示buffer高度，为0时，和ScreenHeight相同*/
		HIGO_LAYER_FLUSHTYPE_E LayerFlushType; /**< Refresh mode of the layer. You can choose the refresh mode based on the actual scenario to improve the refresh efficiency. If the value is 0, the dual-buffer+flip refresh mode is used by default. *//**<CNcomment:图层的刷新方式，用户可根据使用场景选择不同的刷新模式来提高刷新效率,等于0时默认使用双缓冲+Flip刷新模式 */
		HIGO_LAYER_DEFLICKER_E AntiLevel;	   /**<Anti-flicker level of a graphics layer*//**<CNcomment:图层抗闪烁级别 */
		HIGO_PF_E			   PixelFormat;    /**<Pixel format of a graphics layer. The format must be supported by the hardware layer. You need to choose the pixel format parameters of the layer based on hardware devices.*//**<CNcomment:图层的像素格式，此格式必须为硬件图层所支持的格式，请根据不同硬件设备来选择图层的像素格式参数 */
		HIGO_LAYER_E		   LayerID; 	   /**<Hardware ID of a graphics layer. The supported graphics layer depends on the chip platform. For example, the Hi3720 supports an HD graphics layer and an SD graphics layer.*//**<CNcomment:图层硬件ID，能支持图层取决于芯片平台，hi3720高清支持一个高清和一个标清 */
	} HIGO_LAYER_INFO_S;
	
	/**Status of a graphics layer*/
	/**CNcomment:图层状态结构 */
	typedef struct 
	{
		HI_BOOL bShow;			   /**<Whether to display a graphics layer.*//**<CNcomment:图层是否显示 */
	} HIGO_LAYER_STATUS_S;
	
	typedef struct
	{
		HI_COLOR ColorKey;		   /**<Transparency of a graphics layer*//**<CNcomment:图层的透明色*/
		HI_BOOL bEnableCK;		   /**<Whether the colorkey of a graphics layer is enabled.*//**<CNcomment:图层是否使能colorkey */
	}HIGO_LAYER_KEY_S;
	
	typedef struct
	{
		HI_BOOL bAlphaEnable;	/**<Alpha pixel enable flag*//**<CNcomment:alpha像素使能标志 */
		HI_BOOL bAlphaChannel;	/**<Alpha channel enable flag*//**<CNcomment:alpha通道使能标志	*/
		HI_U8	Alpha0; 		/**<Alpha0 value. It is valid in ARGB1555 format.*//**<CNcomment:alpha0值,在ARGB1555格式下生效 */
		HI_U8	Alpha1; 		/**<Alpha1 value. It is valid in ARGB1555 format.*//**<CNcomment:alpha1值,在ARGB1555格式下生效 */
		HI_U8	GlobalAlpha;	/**<Global alpha. This value is valid only when the alpha channel is valid.*//**<CNcomment:全局alpha，该值只有在alpha通道有效的时候才有意义 */
	}HIGO_LAYER_ALPHA_S;
		
    /** @} */  /** <!-- ==== Structure Definition End ==== */

    /********************** Global Variable declaration **************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

    /** @} */  /** <!-- ==== Global Var Definition End ==== */

    /******************************* API declaration *****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	/** 
	\brief Initializes a display device. CNcomment:初始化显示设备
	\attention \n
	When ::HI_GO_Init is called, this API is also called.
	CNcomment: ::HI_GO_Init已包含了对该接口的调用
	\param N/A. CNcomment:无
	
	\retval ::HI_FAILURE
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_INITFAILED
	
	\see \n
	::HI_GO_Init \n
	::HI_GO_DeinitDisplay
	*/
	HI_S32 HI_GO_InitDisplay(HI_VOID);
	
	/** 
	\brief Deinitializes a display device. CNcomment:去初始化显示设备
	\attention \n
	When ::HI_GO_Deinit is called, this API is also called.
	CNcomment: ::HI_GO_Deinit已包含了对该接口的调用
	\param N/A. CNcomment:无
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_DEINITFAILED
	
	\see \n
	::HI_GO_Deinit \n
	::HI_GO_InitDisplay
	*/
	HI_S32 HI_GO_DeinitDisplay(HI_VOID);
	
	/**
	\brief Obtains the default parameters of an SD or HD graphics layer based on its ID.
	If you do not want to use default values, you can set the members of pLayerInfo.
	CNcomment:根据图层ID获取相应图层(SD,HD)创建时的默认参数，
	如果需要使用非默认值，可以直接设置pLayerInfo各个成员
	\attention \n
	
	\param[in] LayerID Layer ID. CNcomment:图层ID
	\param[in]	pLayerInfo Obtained parameters of a graphics layer when it is created. CNcomment:获取到的创建参数
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_INVLAYERID
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVPARAM
	\see \n
	N/A. CNcomment:无
	*/
	HI_S32 HI_GO_GetLayerDefaultParam (HIGO_LAYER_E LayerID, HIGO_LAYER_INFO_S *pLayerInfo);
	
	
	/** 
	\brief Creates a graphics layer. CNcomment:创建图层
	\attention \n
	The platform determines whether VO hardware scaling is supported.
	If VO hardware scaling is supported, the display size is scaled to fit the screen when the display size is inconsistent with the screen size.
	If VO hardware scaling is not supported, the display size and screen size must be the same.
	CNcomment:是否支持VO硬件缩放取决于平台。
	如果平台支持VO 硬件缩放，即在设置displaysize与screensize不一致的情况下，最终会缩放到screensize的大小。
	如果平台不支持VO 硬件缩放，即使displaysize与screensize不一致，也会强制要求displaysize与screensize一致
	
	\param[in]	pLayerInfo Basic attributes of a graphics layer. The value cannot be empty. CNcomment:图层基本属性，不可为空
	\param[out] pLayer Pointer to the handle of a graphics layer. The value cannot be empty. CNcomment:图层的句柄指针，不可为空
	
	\retval ::HI_SUCCESS
	\retval ::HI_FAILURE
	\retval ::HIGO_ERR_NOTINIT 
	\retval ::HIGO_ERR_NULLPTR 
	\retval ::HIGO_ERR_INVSIZE 
	\retval ::HIGO_ERR_INVLAYERID 
	\retval ::HIGO_ERR_INVPIXELFMT 
	\retval ::HIGO_ERR_INVFLUSHTYPE
	\retval ::HIGO_ERR_INVANILEVEL
	\retval ::HIGO_ERR_INVSIZE
	\retval ::HIGO_ERR_NOMEM
	\retval ::HIGO_ERR_INTERNAL
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	\retval ::HIGO_ERR_ALREADYBIND
	\retval ::HIGO_ERR_INVLAYERSURFACE
	
	\see \n
	::HI_GO_DestroyLayer
	*/
	HI_S32 HI_GO_CreateLayer (const HIGO_LAYER_INFO_S *pLayerInfo, HI_HANDLE* pLayer);
	
	/** 
	\brief Destroys a graphics layer. CNcomment:销毁图层
	\attention \n
	If a graphics layer is in use (for example, the desktop based on the layer is not destroyed), the layer cannot be destroyed.
	CNcomment:当图层正在被使用时（例如基于此图层的桌面未销毁），则图层无法被销毁
	\param[in] Layer Layer handle. CNcomment:图层句柄
	
	\retval ::HI_SUCCESS
	\retval ::HI_FAILURE
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE
	
	
	\see \n
	::HI_GO_CreateLayer
	*/
	HI_S32 HI_GO_DestroyLayer(HI_HANDLE Layer);
	
	
	/** 
	\brief Sets the position of a graphics layer on the screen. CNcomment:设置图层在屏幕中的位置
	\attention \n
	The value takes effect at once and you do not need to refresh it. If the start position of a layer exceeds the screen, it is automatically adjusted to the boundary of the screen.
	CNcomment:立即生效，无需刷新。当设置的图层的起始位置超出屏幕范围时会自动调整至屏幕的边界值
	\param[in] Layer  Layer handle. CNcomment:图层句柄
	\param[in] u32StartX Horizontal coordinate of the position where a layer appears on the screen. CNcomment:图层在屏幕上的显示位置X坐标
	\param[in] u32StartY Vertical coordinate of the position where a layer appears on the screen. CNcomment:图层在屏幕上的显示位置Y坐标
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_INVLAYERPOS
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_GetLayerPos
	*/
	HI_S32 HI_GO_SetLayerPos(HI_HANDLE Layer, HI_U32 u32StartX, HI_U32 u32StartY);
	
	/** 
	\brief Obtains the position where a layer appears on the screen. CNcomment:获取图层在屏幕上的位置
	\attention \n
	无
	\param[in] Layer Layer handle. CNcomment:图层句柄
	\param[out] pStartX Pointer of the horizontal coordinate of the position where a layer appears on the screen. The value cannot be empty. CNcomment:图层在屏幕上的显示位置X坐标指针，不可为空
	\param[out] pStartY Pointer of the vertical coordinate of the position where a layer appears on the screen. The value cannot be empty. CNcomment:图层在屏幕上的显示位置Y坐标指针，不可为空
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_SetLayerPos
	*/
	HI_S32 HI_GO_GetLayerPos(HI_HANDLE Layer, HI_U32 *pStartX, HI_U32 *pStartY);
	
	
	/** 
	\brief Sets the output height and width of a graphics layer on the display device. CNcomment:设置在输出显示设备上的输出的高度和宽度
	\attention \n
	This API supports zoom in operations. The maximum range is specified when a graphics layer is created.\n
	CNcomment:在内存支持的前提下，该接口可以支持缩放\n
	
	\param[in]	Layer Layer handle. CNcomment:图层句柄
	\param[in] u32SWidth  Actual output width. CNcomment:实际输出宽度
	\param[in] u32SHeight Actual output height. CNcomment:实际输出高度
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVSIZE
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_GetScreenSize
	*/
	HI_S32 HI_GO_SetScreenSize(HI_HANDLE Layer, HI_U32 u32SWidth, HI_U32 u32SHeight);
	
	
	/** 
	\brief Obtains the output height and width of a graphics layer on the display device. CNcomment:获取在输出显示设备上的输出的高度和宽度。
	\attention \n
	\param[in]	Layer Layer handle. CNcomment:图层句柄
	\param[out] pSWidth  Pointer to the actual output width. CNcomment:实际输出宽度指针
	\param[out] pSHeight Pointer to the actual output height. CNcomment:实际输出高度指针
	\retval none
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_SetScreenSize
	*/
	HI_S32 HI_GO_GetScreenSize(HI_HANDLE Layer, HI_U32 *pSWidth, HI_U32 *pSHeight);
	
	/** 
	\brief Sets the global alpha value of a layer surface. CNcomment:设置图层surface的全局alpha值
	\attention \n
	The value takes effect at once, and you do not need to refresh it.
	CNcomment:立即生效，无需刷新
	\param[in] Layer Layer handle. CNcomment:图层句柄
	\param[in] Alpha Global alpha value. The value cannot be empty and ranges from 0 to 255. CNcomment:Alpha 全局alpha值，不可为空，范围0-255
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_SETALPHAFAILED
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_GetLayerAlpha
	*/
	
	HI_S32 HI_GO_SetLayerAlpha(HI_HANDLE Layer, HI_U8 Alpha);
	
	/** 
	\brief Obtains the global alpha value of a layer surface. CNcomment:获取图层surface的全局alpha值
	\attention \n
	无
	\param[in] Layer Layer handle. CNcomment:图层句柄
	\param[out] pAlpha Pointer to the global alpha value. CNcomment:全局alpha指针
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_SetLayerAlpha
	*/
	HI_S32 HI_GO_GetLayerAlpha(HI_HANDLE Layer, HI_U8* pAlpha);
	
	
	/** 
	\brief Obtains the surface of a graphics layer. CNcomment:获取图层的surface
	\attention \n
	Surface of a graphics layer. It cannot be released by calling HI_GO_FreeSurface. The surface can be released only when the corresponding layer is destroyed.
	After a process is switched, you must obtain the layer surface again by calling HI_S32 HI_GO_GetLayerSurface.
	CNcomment:图层surface，不能使用HI_GO_FreeSurface来释放。只有在销毁图层的时候才会被释放
	进程切换之后必须调用该接口来重新获取图层surface;
	\param[in] Layer handle. CNcomment:Layer 图层句柄
	\param[out] pSurface Pointer to the surface handle. The value cannot be empty. CNcomment:surface句柄指针，不可为空
	
	\retval ::HI_SUCCESS
	\retval ::HI_FAILURE
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_INVLAYERSURFACE
	\retval ::HIGO_ERR_NOMEM
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	N/A. CNcomment:无
	*/
	HI_S32 HI_GO_GetLayerSurface(HI_HANDLE Layer, HI_HANDLE *pSurface);
	
	/** 
	\brief Shows or hides a graphics layer. CNcomment:显示或隐藏图层
	\attention \n
	The value takes effect at once, and you do not need to refresh it.
	CNcomment:立即生效，无需刷新
	\param[in] Layer Layer handle. CNcomment:图层句柄
	\param[in] bVisbile Show/hide flag. HI_TRUE: show; HI_FALSE: hide. CNcomment:显示隐藏标志。HI_TRUE：显示；HI_FALSE：隐藏
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_GetLayerStatus
	*/
	HI_S32 HI_GO_ShowLayer(HI_HANDLE Layer, HI_BOOL bVisbile);
	
	/** 
	\brief Obtains the current status of a graphics layer. CNcomment:获取图层当前状态
	\attention \n
	无
	\param[in] Layer Layer handle. CNcomment:图层句柄
	\param[out] pLayerStatus Pointer to the current status of a graphics layer. The value cannot be empty. CNcomment:图层当前状态结构指针，不可为空
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_ShowLayer
	*/
	HI_S32 HI_GO_GetLayerStatus(HI_HANDLE Layer, HIGO_LAYER_STATUS_S* pLayerStatus);
	
	/** 
	\brief Refreshes a graphics layer. CNcomment:刷新图层
	\attention \n
	1. After drawing, you need to refresh the layer to display the drawing result.
	2. There are two display modes after a graphics layer is refreshed. If there is no window, the contents of the layer surface are displayed; if there is a window, its contents are displayed.
	CNcomment:1.绘制完成后，需刷新图层才能显示绘制后结果
	2.刷新有两种模式，一种是没有任何窗口的时候就显示layersurface的内容，否则显示窗口中的内容。
	\param[in] Layer Layer handle. CNcomment:图层句柄
	\param[in]	pRect Rectangle to be refreshed. If the value is NULL, the entire screen is refreshed. CNcomment:刷新的矩形区域，如果是NULL, 则刷新整个全屏
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_INVLAYERSURFACE
	\retval ::HIGO_ERR_DEPEND_FB
	\retval ::HIGO_ERR_OUTOFBOUNDS
	\retval ::HIGO_ERR_EMPTYRECT
	
	\see \n
	N/A. CNcomment:无
	*/
	HI_S32 HI_GO_RefreshLayer(HI_HANDLE Layer, const HI_RECT* pRect);
	
	
	
	/**
	\brief Sets the background color of a graphics layer. CNcomment:设置图层的背景颜色
	\attention \n
	The background color of a graphics layer takes effect only when widows are overlaid with each other.
	CNcomment:图层背景色，只有在叠加窗口才有效
	\param[in] Layer Layer handle. CNcomment:图层句柄
	\param[in] Color Background color of a graphics layer. CNcomment:图层背景颜色
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE
	
	\see \n
	N/A. CNcomment:无
	*/
	HI_S32 HI_GO_SetLayerBGColor(HI_HANDLE Layer, HI_COLOR Color);
	
	/**
	\brief Sets the transparency of a graphics layer. CNcomment:设置图层的透明色
	\attention \n
	无
	
	\param[in] Layer	   Layer handle. CNcomment:图层句柄 			 
	\param[in] pKey 	   Pointer to the transparency information. The value cannot be empty. CNcomment:透明色信息指针，不可为空
	\param[out] 无 
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
		::HI_GO_GetLayerColorkey
	*/
	HI_S32 HI_GO_SetLayerColorkey(HI_HANDLE Layer, const HIGO_LAYER_KEY_S *pKey);
	
	/**
	\brief Obtains the transparency information about a graphics layer. CNcomment:获取透明色信息
	\attention \n
	无
	
	\param[in] Layer	   Layer handle. CNcomment:图层句柄 			 
	\param[in] pKey 	   Pointer to the transparency information. CNcomment:透明色信息指针
	\param[out] N/A. CNcomment:无 
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_INVHANDLE 
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
		::HI_GO_SetLayerColorkey
	*/
	HI_S32 HI_GO_GetLayerColorkey(HI_HANDLE Layer, HIGO_LAYER_KEY_S *pKey);
	
	/**
	\brief Configures the alpha information about a graphics layer. This API is an extended API. CNcomment:设置图层alpha信息，扩展接口
	\attention \n
	The alpha0 and alpha1 of the data structure HIGO_LAYER_ALPHA_S are valid only in ARGB1555 format.
	This API is used to implement the translucent effect in ARGB1555 format.
	CNcomment:该接口HIGO_LAYER_ALPHA_S结构体的alpha0,alpha1只在ARGB1555格式下才有效，
	用于在ARGB1555格式下实现半透明效果
	
	\param[in] Layer	   Layer handle. CNcomment:图层句柄 			 
	\param[in] pAlphaInfo	Alpha information about a graphics layer. The value cannot be empty. CNcomment:图层alpha信息，不可为空	 
	\param[out] N/A. 
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE 
	\retval ::HIGO_ERR_NULLPTR
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
	::HI_GO_GetLayerAlphaEx
	*/
	HI_S32 HI_GO_SetLayerAlphaEx(HI_HANDLE Layer,  HIGO_LAYER_ALPHA_S *pAlphaInfo);
	
	
	/**
	\brief Obtains the alpha information about a graphics layer. This API is an extended API. CNcomment:获取图层alpha信息，扩展接口
	\attention \n
	N/A
	
	\param[in] Layer	   Layer handle. CNcomment:图层句柄 			 
	\param[out] pAlphaInfo	Alpha information about a graphics layer. The value cannot be empty. CNcomment:图层alpha信息，不可为空	 
	
	\retval ::HI_SUCCESS
	\retval ::HIGO_ERR_NOTINIT
	\retval ::HIGO_ERR_INVHANDLE 
	\retval ::HIGO_ERR_DEPEND_FB
	
	\see \n
		::HI_GO_SetLayerAlphaEx
	*/
	HI_S32 HI_GO_GetLayerAlphaEx(HI_HANDLE Layer,  HIGO_LAYER_ALPHA_S *pAlphaInfo);

	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HI_GO_GDEV_H__*/
