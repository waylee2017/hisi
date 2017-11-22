/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_errno.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __HI_GO_ERRNO_H__
#define __HI_GO_ERRNO_H__


/*********************************add include here******************************/

#include "hi_type.h"


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

	/** error id */
	/*CNcomment:* HiGo 项目错误ID */
	#define HIGO_ERR_APPID (0x80000000L + 0x30000000L)

	typedef enum hiGOLOG_ERRLEVEL_E
	{
		HIGO_LOG_LEVEL_DEBUG = 0,  /* debug-level								   */
		HIGO_LOG_LEVEL_INFO,	   /* informational 							   */
		HIGO_LOG_LEVEL_NOTICE,	   /* normal but significant condition			   */
		HIGO_LOG_LEVEL_WARNING,    /* warning conditions						   */
		HIGO_LOG_LEVEL_ERROR,	   /* error conditions							   */
		HIGO_LOG_LEVEL_CRIT,	   /* critical conditions						   */
		HIGO_LOG_LEVEL_ALERT,	   /* action must be taken immediately			   */
		HIGO_LOG_LEVEL_FATAL,	   /* just for compatibility with previous version */
		HIGO_LOG_LEVEL_BUTT
	} HIGO_LOG_ERRLEVEL_E;
	/**Macros for defining the error codes of the HiGo*/
	/**CNcomment:HiGo 错误码定义宏 */
	#define HIGO_DEF_ERR( module, errid) \
		((HI_S32)((HIGO_ERR_APPID) | (((HI_U32)module) << 16) | (((HI_U32)HIGO_LOG_LEVEL_ERROR) << 13) | ((HI_U32)errid)))


	/*module coding for HiGo*//*CNcomment:	HiGo 模块编码 */
	typedef enum
	{
		HIGO_MOD_COMM = 0,
		HIGO_MOD_SURFACE,
		HIGO_MOD_MEMSURFACE,
		HIGO_MOD_LAYER,
		HIGO_MOD_BLITER,
		HIGO_MOD_DEC,
		HIGO_MOD_TEXTOUT,
		HIGO_MOD_WINC,
		HIGO_MOD_CURSOR,
		HIGO_MOD_BUTT
	} HIGO_MOD_E;

	/*error code define for HiGo common module*//*CNcomment: HiGo 公共错误码 */
	typedef enum
	{
		ERR_COMM_NOTINIT = 0,
		ERR_COMM_INITFAILED,
		ERR_COMM_DEINITFAILED,
		ERR_COMM_NULLPTR,
		ERR_COMM_INVHANDLE,
		ERR_COMM_NOMEM,
		ERR_COMM_INTERNAL,
		ERR_COMM_INVSRCTYPE,
		ERR_COMM_INVFILE,
		ERR_COMM_INVPARAM,
		ERR_COMM_INUSE,
		ERR_COMM_UNSUPPORTED,
		ERR_COMM_DEPENDTDE,
		ERR_COMM_DEPENDFB ,
		ERR_COMM_DEPENDMMZ,
		ERR_COMM_DEPENDJPEG,
		ERR_COMM_DEPENDPNG,
		ERR_COMM_DEPENDBMP,
		ERR_COMM_DEPENDGIF,
		ERR_COMM_DEPENDCURSOR,
		ERR_COMM_BUTT
	} HIGO_ERR_E;
	/*module had't initializtion*//*CNcomment: 所依赖的模块未初始化 0xB0008000 */
	#define HIGO_ERR_NOTINIT HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_NOTINIT)
	/*initializtion fail*//*CNcomment: 模块初始化失败 0xB0008001 */
	#define HIGO_ERR_DEINITFAILED HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_INITFAILED)
	/*un initializtion fail*//*CNcomment: 模块去初始化失败 0xB0008002 */
	#define HIGO_ERR_INITFAILED HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEINITFAILED)
	/*input parameter is empty*//*CNcomment: 传入参数为空指针 0xB0008003 */
	#define HIGO_ERR_NULLPTR HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_NULLPTR)
	/*input handle is invalid*//*CNcomment: 传入无效的句柄 0xB0008004 */
	#define HIGO_ERR_INVHANDLE HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_INVHANDLE)
	/*no memery*//*CNcomment: 内存不足 0xB0008005 */
	#define HIGO_ERR_NOMEM HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_NOMEM)
	/*inside error*//*CNcomment:   内部错误 0xB0008006 */
	#define HIGO_ERR_INTERNAL HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_INTERNAL)
	/*invalid io*//*CNcomment:	 无效的IO来源 0xB0008007 */
	#define HIGO_ERR_INVSRCTYPE HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_INVSRCTYPE)
	/*invalid file, the file operation error*//*CNcomment:	无效的文件，文件操作失败 0xB0008008 */
	#define HIGO_ERR_INVFILE HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_INVFILE)
	/*invalid parameter*//*CNcomment: 无效的参数 0xB0008009*/
	#define HIGO_ERR_INVPARAM HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_INVPARAM)
	/*the handle had used*//*CNcomment:    此句柄正在被使用 0xB000800A */
	#define HIGO_ERR_INUSE HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_INUSE)
	/*invalid operation*//*CNcomment:	 无效的操作 0xB000800B */
	#define HIGO_ERR_UNSUPPORTED HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_UNSUPPORTED)
	/*TDE error*//*CNcomment:	依赖TDE出错*/
	#define HIGO_ERR_DEPEND_TDE HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDTDE)
	/*FB error*//*CNcomment:  依赖FB出错*/
	#define HIGO_ERR_DEPEND_FB HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDFB)
	/*MMZ error*//*CNcomment: 依赖MMZ出错*/
	#define HIGO_ERR_DEPEND_MMZ HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDMMZ)
	/*JPEG deocde error*//*CNcomment:  依赖JPEG解码出错*/
	#define HIGO_ERR_DEPEND_JPEG HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDJPEG)
	/*PNG deocde error*//*CNcomment:  依赖PNG解码出错*/
	#define HIGO_ERR_DEPEND_PNG HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDPNG)
	/*BMP deocde error*//*CNcomment: 依赖BMP解码出错*/
	#define HIGO_ERR_DEPEND_BMP HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDBMP)
	/*GIF deocde error*//*CNcomment: 依赖GIF解码出错*/
	#define HIGO_ERR_DEPEND_GIF HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDGIF)
	/*cursor deocde error*//*CNcomment: 依赖CURSOR解码出错*/
	#define HIGO_ERR_DEPEND_CURSOR HIGO_DEF_ERR(HIGO_MOD_COMM, ERR_COMM_DEPENDCURSOR)

	/*error code of HiGo surface module*//*CNcomment: HiGo surface模块错误码 */
	typedef enum
	{
		ERR_SURFACE_INVSURFACESIZE = 0,
		ERR_SURFACE_INVSURFACEPF,
		ERR_SURFACE_NOTLOCKED,
		ERR_SURFACE_LOCKED,
		ERR_SURFACE_NOCOLORKEY,
		ERR_SURFACE_BUTT
	} HIGO_SURFACE_ERR_E;
	#define SURFACE_DEF_ERR(err) HIGO_DEF_ERR(HIGO_MOD_SURFACE, err)
	/*invalid size of surface*//*CNcomment: surface尺寸不正确 0xB0018000 */
	#define HIGO_ERR_INVSURFACESIZE SURFACE_DEF_ERR(ERR_SURFACE_INVSURFACESIZE)
	/*invalid piexl format*//*CNcomment:	surface像素格式不正确 0xB0018001 */
	#define HIGO_ERR_INVSURFACEPF SURFACE_DEF_ERR(ERR_SURFACE_INVSURFACEPF)
	/*the surface had not lock, cann't unlock*//*CNcomment:   surface未锁定，不能进行surface解锁操作 0xB0018002 */
	#define HIGO_ERR_NOTLOCKED SURFACE_DEF_ERR(ERR_SURFACE_NOTLOCKED)
	/*the surface had locked, cann't write*//*CNcomment:  surface已锁定，对surface进行的写操作被禁止 0xB0018003 */
	#define HIGO_ERR_LOCKED SURFACE_DEF_ERR(ERR_SURFACE_LOCKED)
	/*the surface not exist colorkey*//*CNcomment: surface不含有colorKey值 0xB0018004 */
	#define HIGO_ERR_NOCOLORKEY SURFACE_DEF_ERR(ERR_SURFACE_NOCOLORKEY)

	/*error code of HiGo gdev module*//*CNcomment:	HiGo gdev模块错误码*/
	typedef enum
	{
		ERR_LAYER_INVSIZE = 0,
		ERR_LAYER_INVLAYERID,
		ERR_LAYER_INVPIXELFMT,
		ERR_LAYER_FLUSHTYPE,
		ERR_LAYER_FREEMEM,
		ERR_LAYER_CLOSELAYER,
		ERR_LAYER_CANNOTCHANGE,
		ERR_LAYER_INVORDERFLAG,
		ERR_LAYER_SETALPHA,
		ERR_LAYER_ALREADYSHOW,
		ERR_LAYER_ALREADYHIDE,
		ERR_LAYER_INVLAYERPOS,
		ERR_LAYER_INVSURFACE,
		ERR_LAYER_INVLAYERSIZE,
		ERR_LAYER_INVFLUSHTYPE,    
		ERR_LAYER_INVANILEVEL,
		ERR_LAYER_NOTOPEN,
		ERR_LAYER_BUTT
	} HIGO_LAYER_ERR_E;
	#define LAYER_DEF_ERR(err) HIGO_DEF_ERR(HIGO_MOD_LAYER, err)
	/*invalid size of layer*//*CNcomment:无效的图层大小 0xB0038000 */
	#define HIGO_ERR_INVSIZE LAYER_DEF_ERR(ERR_LAYER_INVSIZE)
	/*invalid hardware layer*//*CNcomment: 无效的硬件图层ID 0xB0038001 */
	#define HIGO_ERR_INVLAYERID LAYER_DEF_ERR(ERR_LAYER_INVLAYERID)
	/*invalid piexl format*//*CNcomment: 无效的像素格式 0xB0038002 */
	#define HIGO_ERR_INVPIXELFMT LAYER_DEF_ERR(ERR_LAYER_INVPIXELFMT)
	/*the mode error of reflush layer*//*CNcomment: 图层刷新模式错误 0xB0038003 */
	#define HIGO_ERR_INVFLUSHTYPE LAYER_DEF_ERR(ERR_LAYER_FLUSHTYPE)
	/*release the memery fail*//*CNcomment: 释放显存失败 0xB0038004 */
	#define HIGO_ERR_FREEMEM LAYER_DEF_ERR(ERR_LAYER_FREEMEM)
	/*close layer device fail*//*CNcomment: 关闭图层设备失败 0xB0038005 */
	#define HIGO_ERR_CLOSELAYERFAILED LAYER_DEF_ERR(ERR_LAYER_CLOSELAYER)
	/*order cann't modify*//*CNcomment: 图层Z序不可改变 0xB0038006 */
	#define HIGO_ERR_CANNOTCHANGE LAYER_DEF_ERR(ERR_LAYER_CANNOTCHANGE)
	/*invalid order flag*//*CNcomment:	无效的Z序修改标志 0xB0038007 */
	#define HIGO_ERR_INVORDERFLAG LAYER_DEF_ERR(ERR_LAYER_INVORDERFLAG)
	/*set alpha error for surface*//*CNcomment:  设置surface alpha失败 0xB0038008 */
	#define HIGO_ERR_SETALPHAFAILED LAYER_DEF_ERR(ERR_LAYER_SETALPHA)
	/*layer had show*//*CNcomment:	图层已经显示 0xB0038009 */
	#define HIGO_ERR_ALREADYSHOW LAYER_DEF_ERR(ERR_LAYER_ALREADYSHOW)
	/*layer had hide*//*CNcomment: 图层已经隐藏 0xB003800A */
	#define HIGO_ERR_ALREADYHIDE LAYER_DEF_ERR(ERR_LAYER_ALREADYHIDE)
	/*invalid start position of layer*//*CNcomment: 无效的图层起始位置 0xB003800B*/
	#define HIGO_ERR_INVLAYERPOS LAYER_DEF_ERR(ERR_LAYER_INVLAYERPOS)
	/*invalid surface*//*CNcomment:  无效的surface，表示对齐失败 0xB003800C*/
	#define HIGO_ERR_INVLAYERSURFACE LAYER_DEF_ERR(ERR_LAYER_INVSURFACE)
	/*the level  invalid*//*CNcomment:	 无效的图层抗闪烁级别 0xB003800F*/
	#define HIGO_ERR_INVANILEVEL LAYER_DEF_ERR(ERR_LAYER_INVANILEVEL)
	/*layer not open*//*CNcomment:	图层没有打开 0xB0038010*/
	#define HIGO_ERR_NOTOPEN LAYER_DEF_ERR(ERR_LAYER_NOTOPEN)

	/*error code of HiGo bliter module*//*CNcomment:  HiGo bliter模块错误码 */
	typedef enum
	{
		ERR_BLITER_INVCOMPTYPE = 0,
		ERR_BLITER_INVCKEYTYPE,
		ERR_BLITER_INVMIRRORTYPE,
		ERR_BLITER_INVROTATETYPE,
		ERR_BLITER_INVROPTYPE,
		ERR_BLITER_INVSCALING,
		ERR_BLITER_OUTOFBOUNDS,
		ERR_BLITER_EMPTYRECT,
		ERR_BLITER_OUTOFPAL,
		ERR_BLITER_NOP,
		ERR_BLITER_BUTT
	} HIGO_BLITER_ERR_S;
	/*blend error*//* CNcomment: 错误的混合模式  0xB0048000 */
	#define HIGO_ERR_INVCOMPTYPE HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_INVCOMPTYPE)
	/*invalid colorkey*//* CNcomment: 无效的colorKey操作 0xB0048001 */
	#define HIGO_ERR_INVCKEYTYPE HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_INVCKEYTYPE)
	/*invalid mirror*//* CNcomment: 无效的镜像操作 0xB0048002 */
	#define HIGO_ERR_INVMIRRORTYPE HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_INVMIRRORTYPE)
	/*invalid rotate*//* CNcomment:  无效的旋转操作 0xB0048003 */
	#define HIGO_ERR_INVROTATETYPE HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_INVROTATETYPE)
	/*invalid rop*//* CNcomment: 无效的ROP操作 0xB0048004 */
	#define HIGO_ERR_INVROPTYPE HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_INVROPTYPE)
	/*the resize scale error*//* CNcomment:缩放比例异常 0xB0048005 */
	#define HIGO_ERR_INVSCALING HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_INVSCALING)
	/*rectangle is over the side*//* CNcomment: 矩形超出边界 0xB0048006*/
	#define HIGO_ERR_OUTOFBOUNDS HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_OUTOFBOUNDS)
	/*rectangle is empty*//* CNcomment: 空矩形 0xB0048007*/
	#define HIGO_ERR_EMPTYRECT HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_EMPTYRECT)
	/*color not exist in pallette*//* CNcomment:  颜色不在调色板中 0xB0048008*/
	#define HIGO_ERR_OUTOFPAL HIGO_DEF_ERR(HIGO_MOD_BLITER, ERR_BLITER_OUTOFPAL)

	/*error code of HiGo decode module*//* CNcomment: HiGo decode模块错误码*/
	typedef enum
	{
		ERR_DEC_INVIMAGETYPE = 0, 
		ERR_DEC_INVINDEX,		  
		ERR_DEC_INVIMGDATA, 	 
		ERR_DEC_BUTT
	} HIGO_ERR_DEC_E;
	/*invalid type of picture*//* CNcomment:< 无效的图片类型 0xB0058000 */
	#define HIGO_ERR_INVIMAGETYPE HIGO_DEF_ERR(HIGO_MOD_DEC, ERR_DEC_INVIMAGETYPE)
	/*invalid index of picture*//* CNcomment: < 无效图片索引号 0xB0058001 */
	#define HIGO_ERR_INVINDEX HIGO_DEF_ERR(HIGO_MOD_DEC, ERR_DEC_INVINDEX)
	/*invalid data of picture*//* CNcomment: < 无效图片数据 0xB0058002 */
	#define HIGO_ERR_INVIMGDATA HIGO_DEF_ERR(HIGO_MOD_DEC, ERR_DEC_INVIMGDATA)


	/*error code of HiGo textout module*//* CNcomment: HiGo textout模块错误码 */
	typedef enum
	{
		ERR_TEXTOUT_INVRECT = 0,
		ERR_TEXTOUT_UNSUPPORT_CHARSET,
		ERR_TEXTOUT_ISUSING,
		ERR_TEXTOUT_BUTT
	} HIGO_TEXTOUT_ERR_S;
	/*invalid range*//* CNcomment:	无效的矩形区域 0xB0068000 */
	#define HIGO_ERR_INVRECT HIGO_DEF_ERR(HIGO_MOD_TEXTOUT,ERR_TEXTOUT_INVRECT)
	/*unspport character set*//* CNcomment:  不支持的字符集 0xB0068001*/
	#define HIGO_ERR_UNSUPPORT_CHARSET HIGO_DEF_ERR(HIGO_MOD_TEXTOUT,ERR_TEXTOUT_UNSUPPORT_CHARSET)
	/*unspport character set *//* CNcomment:  不支持的字符集 0xB0068002*/
	#define HIGO_ERR_ISUSING HIGO_DEF_ERR(HIGO_MOD_TEXTOUT,ERR_TEXTOUT_ISUSING)

	/*error code*//* CNcomment: HiGo Winc模块错误码 */
	typedef enum
	{
		ERR_WINC_ALREADYBIND = 0, /*had bind*//* CNcomment:< 已经被绑定 */
		ERR_WINC_INVZORDERTYPE,   /*invalid order*//* CNcomment:< 无效的Z序调整方式 */
		ERR_WINC_NOUPDATE,		  /*desktop had't update*//* CNcomment:< 桌面无更新 */
		ERR_WINC_BUTT
	} HIGO_ERR_WINC_E;
	/*desktop had bind to graphics layer*//* CNcomment:  桌面与图层已经绑定 0xB0078000 */
	#define HIGO_ERR_ALREADYBIND HIGO_DEF_ERR(HIGO_MOD_WINC, ERR_WINC_ALREADYBIND)
	/*change order is invalid*//* CNcomment:  无效的Z序调整方式 0xB0078001 */
	#define HIGO_ERR_INVZORDERTYPE HIGO_DEF_ERR(HIGO_MOD_WINC, ERR_WINC_INVZORDERTYPE)
	/*desktop no update*//* CNcomment: 桌面无更新 0xB0078002 */
	#define HIGO_ERR_NOUPDATE HIGO_DEF_ERR(HIGO_MOD_WINC, ERR_WINC_NOUPDATE)


	/*error code for surface*//* CNcomment: HiGo surface模块错误码 */
	typedef enum
	{
		ERR_CURSOR_INVHOTSPOT = 0,	
		ERR_CURSOR_NOCURSORINFO,
		ERR_CURSOR_BUTT
	} HIGO_CURSOR_ERR_E;
	#define HIGO_ERR_INVHOTSPOT  HIGO_DEF_ERR(HIGO_MOD_CURSOR, ERR_CURSOR_INVHOTSPOT)
	#define HIGO_ERR_NOCURSORINF HIGO_DEF_ERR(HIGO_MOD_CURSOR, ERR_CURSOR_NOCURSORINFO)
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


	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HI_GO_ERRNO_H__*/
