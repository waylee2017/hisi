/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : hi_go_decoder.h
Version             : Initial Draft
Author              : 
Created             : 2014/06/20
Description         : The user will use this api to realize some function
Function List   : 

                                          
History         :
Date                            Author                  Modification
2014/06/20                  y00181162               Created file        
******************************************************************************/

#ifndef __HI_GO_DECODE_H__
#define __HI_GO_DECODE_H__


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

    /** @} */  /** <!-- ==== Macro Definition End ==== */

    /*************************** Enum Definition **********************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/
	/*type of decoder *//**CNcomment:解码实例的解码类型 */
	typedef enum 
	{
	    HIGO_DEC_IMGTYPE_JPEG = HIGO_IMGTYPE_JPEG, /*for jpeg *//*<CNcomment:JPEG格式图片*/
	    HIGO_DEC_IMGTYPE_GIF  = HIGO_IMGTYPE_GIF,  /*for gif *//*<CNcomment:GIF格式图片*/
	    HIGO_DEC_IMGTYPE_BMP  = HIGO_IMGTYPE_BMP,  /*for bmp *//*<CNcomment:BMP格式图片 */
	    HIGO_DEC_IMGTYPE_PNG  = HIGO_IMGTYPE_PNG,  /*for png *//*<CNcomment:PNG格式图片 */
	    HIGO_DEC_IMGTPYE_BUTT
	} HIGO_DEC_IMGTYPE_E;
	typedef enum 
	{
	    HIGO_DEC_POSITION_SET = 0,   /*start position*//*CNcomment:起始位置*/
	    HIGO_DEC_POSITION_CUR,       /*current position *//*CNcomment:从当前位置*/
	    HIGO_DEC_POSITION_END,       /*end position *//*CNcomment:从结束位置*/
	    HIGO_DEC_POSITION_BUTT
	}HIGO_DEC_POSITION_E;

	/*format type of extend data*//*CNcomment: 扩展数据格式类型 */
	typedef enum 
	{
		HIGO_DEC_EXTEND_EXIF = 0,		  /*extend data for exif format*//*<CNcomment:EXIF格式的扩展数据 */
		HIGO_DEC_EXTEND_EXIF_BUTT
	} HIGO_DEC_EXTENDTYPE_E;
		
	/** @} */  /** <!-- ==== Enum Definition End ==== */

    /*************************** Structure Definition ****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/
	
	/*stream source information *//*CNcomment:码流来源的详细信息*/
	typedef union 
	{
		/*about memery stream source *//*CNcomment:输入源为内存块时需要的信息*/
		struct
		{
			HI_CHAR* pAddr; 	/*pointer of memery address*//*<CNcomment:内存指针地址*/
			HI_U32 Length;		 /*length *//*<CNcomment:长度*/
		} MemInfo;
	} HIGO_DEC_SRCINFO_U;
	/*the parameter for create decoder*//*CNcomment: 创建解码实例需要的参数 */
	typedef struct 
	{
		HIGO_DEC_SRCINFO_U SrcInfo; /*information of input steam*//*<CNcomment:输入源详细信息*/
	} HIGO_DEC_ATTR_S;
	
	/*information after deocded*//*CNcomment: 解码后主信息 */
	typedef struct 
	{
		HI_U32			   Count;			/*number of pictrue*//*<CNcomment:图片的个数 */
		HIGO_DEC_IMGTYPE_E ImgType; 		/*type of input steam*//*<CNcomment:输入源类型 */
		HI_U32			   ScrWidth;	   /*width of picture that is consider as picture screen, 0 is invalid*//*<CNcomment:屏幕宽度，此处屏幕表示图片文件屏幕，0表示无效 */
		HI_U32			   ScrHeight;		/*width of picture that is consider as picture screen, 0 is invalid*//*<CNcomment:屏幕高度，此处屏幕表示图片文件屏幕，0表示无效 */
		HI_BOOL 		   IsHaveBGColor;	/*whether had background *//*<CNcomment:是否有背景色 */
		HI_COLOR		   BGColor; 		/*background color *//*<CNcomment:背景颜色 */
	} HIGO_DEC_PRIMARYINFO_S;
	
	typedef struct 
	{
		HI_U32	  OffSetX;				  /*X offset of screen that is consider as picture screen*//*<CNcomment:在屏幕上的X偏移量，此处屏幕表示图片文件屏幕，下同 */
		HI_U32	  OffSetY;				  /*Y offset of screen that is consider as picture screen*//*<CNcomment:在屏幕上的Y偏移量*/
		HI_U32	  Width;				  /*width of picture*//*<CNcomment:原始图片的高度 */
		HI_U32	  Height;				  /*height of picture*//*<CNcomment:原始图片的宽度 */
		HI_U8	  Alpha;				  /*alpha that is use splice*//*<CNcomment:用于图片进行叠加的通道alpha信息，范围是0-255 */
		HI_BOOL   IsHaveKey;			  /*whether has key*//*<CNcomment:是否有KEY。 HI_FALSE: KEY不使能；HI_TRUE: KEY使能 */
		HI_COLOR  Key;					  /*colorkey information for splice*//*<CNcomment:用于图片进行叠加的colorkey信息 */
		HIGO_PF_E Format;				  /*format of source picture *//*<CNcomment:图片源像素格式 */
		HI_U32	  DelayTime;			  /**<Time interval between this picture and the previous one (10 ms). The value 0 indicates that the parameter is invalid.*//**<CNcomment:与上一幅图片的时间间隔(10ms)，0表示该参数无效 */
		HI_U32	  DisposalMethod;		  /**<Processing method of the current frame. This application programming interface (API) is valid for only GIF pictures. 0: customized processing method; 1: no processing method; 2: use the background color.*//**<CNcomment:当前帧处理方法，此接口只对GIF有效，0:用户决定处理方式，1:不做处理，2:使用背景色，*/	
	} HIGO_DEC_IMGINFO_S;
	
	/**Picture attributes after decoding*/
	/**CNcomment:解码后图片属性 */
	typedef struct 
	{
		HI_U32	  Width;				  /*want width after deocded*//*<CNcomment:期望解码后宽度 */
		HI_U32	  Height;				  /*want height after deocded*//*<CNcomment:期望解码后高度*/
		HIGO_PF_E Format;				  /*want format after deocded*//*<CNcomment:期望解码后像素格式*/
	} HIGO_DEC_IMGATTR_S;
	
	/*base information of picture*//*CNcomment:图片基本信息 */
	typedef struct 
	{
		HI_U32	  Width;				/*width of picture*//*<CNcomment:图片的高度 */
		HI_U32	  Height;				/*height of picture*//*<CNcomment:图片的宽度 */
		HIGO_PF_E PixelFormat;			/*format of pixel*//*<CNcomment:像素格式 */
		HI_U32	  VirAddr[3];			/*virtual address*//*<CNcomment:虚拟地址。如果是RGB格式，只有第一个VirAddr[0]为起始地址，
													VirAddr[1]和VirAddr[2]无效；如果是YC格式，
													VirAddr[0]表示Y分量起始地址，VirAddr[1]表示C分量起始地址，
													VirAddr[2]无效 */
		HI_U32	  PhyAddr[3];			/*physics address*//*<CNcomment:物理地址，使用原则同上 */
		HI_U32	  Pitch[3]; 			/*line distance*//*<CNcomment:行间距，使用原则同上 */
		HI_U32	  Palate[256];		  /*pallette*//*<CNcomment:调色板 */
	} HIGO_DEC_IMGDATA_S;
    /** @} */  /** <!-- ==== Structure Definition End ==== */

    /********************** Global Variable declaration **************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

    /** @} */  /** <!-- ==== Global Var Definition End ==== */

    /******************************* API declaration *****************************/
	/** \addtogroup 		 HIGO */
	/** @{ */		/** <!--[HIGO]*/

	
	/** 
	 \brief create decoder handle. CNcomment:创建解码句柄
	 \attention \n
	 Currently, the formats of .bmp, .png, .jpeg, and .gif are supported. The picture input source can be the memory, files, and streams. The picture input source of streams is only applicable to the .jpeg format.
	 CNcomment:目前支持BMP、PNG、JPEG和GIF格式，图片输入源只可以为内存、文件以及流式，流式目前只对JPEG格式有效。
	 \param[in] pSrcDesc: input stream information. CNcomment:输入源信息
	 \param[out] pDecoder:handle of deocde instance. CNcomment:解码实例句柄指针
	 \retval ::HI_SUCCESS
	 \retval ::HIGO_ERR_NULLPTR
	 \retval ::HIGO_ERR_NOTINIT
	 \retval ::HIGO_ERR_NOMEM
	 \retval ::HIGO_ERR_INVHANDLE
	 \retval ::HIGO_ERR_INVFILE
	 \retval ::HIGO_ERR_INVSRCTYPE
	 \retval ::HIGO_ERR_INVIMAGETYPE
	 \retval ::HIGO_ERR_INVIMGDATA
	
	\see \n
	::HI_GO_DestroyDecoder
	*/
	HI_S32 HI_GO_CreateDecoder(const HIGO_DEC_ATTR_S* pSrcDesc, HI_HANDLE* pDecoder);
	
	 /** 
	 \brief destory decoder. CNcomment:销毁解码句柄
	 \attention \n
	 N/A
	 \param[in] Decoder : handle of deocde instance. CNcomment:解码实例句柄
	 
	 \retval ::HI_SUCCESS
	 \retval ::HIGO_ERR_INVHANDLE
	
	\see \n
	::HI_GO_CreateDecoder
	*/
	HI_S32 HI_GO_DestroyDecoder(HI_HANDLE Decoder);
	 
	/** 
	 \brief reset decoder when want reset decoder. CNcomment:复位解码器，当需要终止解码的时候就进行解码器复位
	 \attention \n
	 N/A
	 \param[in] Decoder: handle of deocde instance. CNcomment:解码实例句柄
	 \retval ::HI_SUCCESS
	 \retval ::HIGO_ERR_INVHANDLE
	
	\see \n
	::HI_GO_CreateDecoder \n
	::HI_GO_DestroyDecoder
	*/
	HI_S32 HI_GO_ResetDecoder(HI_HANDLE Decoder);
	
	 /** 
	 \brief get main information of picture. CNcomment:获取图片文件的主要信息 
	 \attention
	 \param[in] Decoder:handle of decoder instance. CNcomment:解码实例句柄
	 \param[out] pPrimaryInfo : pointer of picture information. CNcomment:解码图片主信息指针
	 \retval ::HI_SUCCESS
	 \retval ::HIGO_ERR_INVHANDLE
	 \retval ::HIGO_ERR_NULLPTR
	
	\see \n
	::HI_GO_DecImgInfo
	*/
	HI_S32 HI_GO_DecCommInfo(HI_HANDLE Decoder, HIGO_DEC_PRIMARYINFO_S *pPrimaryInfo);
	
	/** 
	 \brief  get the information of picture that can set the format by user
	 CNcomment:获取指定图片的信息，但同时用户可以设置期望的图象格式
	 \attention \n
	 none
	 \param[in] Decoder: the instance of decoder. CNcomment:解码实例句柄
	 \param[in] Index: index of picture.
								CNcomment:图片索引号。JPEG格式图片，主图的索引号是0，缩略图索引号由1开始；
								GIF格式图片按照在文件中的存储顺序，索引号由0开始递加
	 \param[out] pImgInfo: information of picture. CNcomment:图片信息
	 \retval ::HI_SUCCESS
	 \retval ::HIGO_ERR_NULLPTR
	 \retval ::HIGO_ERR_INVHANDLE
	
	\see \n
	::HI_GO_DecCommInfo
	*/
	HI_S32 HI_GO_DecImgInfo(HI_HANDLE Decoder, HI_U32 Index, HIGO_DEC_IMGINFO_S *pImgInfo);
	
	 /** 
	 \brief get single picture data. CNcomment:获取单个图片的数据
	 \attention \n
	 The format in the destination picture attributes does not support the macro block format.
	 CNcomment:目标图片属性中的图像格式不支持宏块格式
	 \param[in] Decoder : handle of decoder's instance.  CNcomment:解码实例句柄
	 \param[in] Index :picture index that is start from 0. CNcomment:图片索引号，索引号从0开始
	 \param[in] pImgAttr: attribute of targeg picture. CNcomment:目标图片属性，为空表示保持原图片属性
	 \param[out] pSurface: surface handle. CNcomment:surface句柄
	 \retval ::HI_SUCCESS
	 \retval ::HIGO_ERR_NULLPTR
	 \retval ::HIGO_ERR_INVHANDLE
	
	\see \n
	::HI_GO_DecCommInfo
	*/
	HI_S32 HI_GO_DecImgData(HI_HANDLE Decoder, HI_U32 Index, const HIGO_DEC_IMGATTR_S *pImgAttr, HI_HANDLE *pSurface);
	
	HI_S32 HI_GO_DecImgToSurface(HI_HANDLE Decoder, HI_U32 Index, HI_HANDLE Surface);
	/** @} */  /** <!-- ==== API Declaration End ==== */

    /****************************************************************************/



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* __HI_GO_DECODE_H__*/
