/**
 \file
 \brief Describes the header file of the font module. CNcomment:HiFont 对外接口头文件CNend
 \author Shenzhen Hisilicon Co., Ltd.
 \date 2011-2018
 \version 1.0
 \date 2011-8-25
 */
 
#ifndef _HI_FONT_H
#define _HI_FONT_H

#include "hi_type.h"
#ifndef WIN32

#ifdef __cplusplus
extern "C" {
#endif


/*************************** Structure Definition ****************************/
/** \addtogroup      font */
/** @{ */  /** <!--[font]*/

/** Common err code of font module */
/** CNcomment:HiFont 公共错误码 CNend*/
typedef enum
{
    HI_FONT_ERRNOTINIT = 0,   /**< The module is not initialized *//**<CNcomment:未初始化CNend*/
    HI_FONT_ERRINITFAILED,	  /**< The module fails to be initialized *//**<CNcomment:初始化失败CNend*/
    HI_FONT_ERRDEINITFAILED,  /**< The module fails to be deinitialized *//**<CNcomment:去初始化失败CNend*/
    HI_FONT_ERRNULLPTR,		  /**< The input pointer is null *//**<CNcomment:空指针错误CNend*/
    HI_FONT_ERRINVHANDLE,	  /**< The input handle is invalid *//**<CNcomment:无效句柄错误CNend*/
    HI_FONT_ERRNOMEM,		  /**< The memory is insufficient *//**<CNcomment:内存不足CNend*/
    HI_FONT_ERRINTERNAL,
    HI_FONT_ERRINVFILE,       /**< The file operation fails because the file is invalid *//**<CNcomment:无效文件路径CNend*/
    HI_FONT_ERRINVPARAM,	  /**< The parameter is invalid *//**<CNcomment:无效参数CNend*/		
    HI_FONT_ERRUNSUPPORTED,   /**< The operation is invalid *//**<CNcomment:不支持操作CNend*/
    HI_FONT_ERRMMAP,		  /**< Mem-mapping fails *//**<CNcomment:内存映射失败CNend*/
    HI_FONT_ERRGETCHARINDEX,  /**< Obtaining char index fails *//**<CNcomment:获取字符索引失败CNend*/
    HI_FONT_ERRUNKNOWCHARSET, /**< Unknown charset *//**<CNcomment:未知字符集CNend*/
    HI_FONT_ERRBUTT
} HI_FONT_ERRE;




typedef struct tagGlyphMetrics {
	HI_U8 boxWidth;	  /**< Bitmap width *//**<CNcomment:位图所占的宽度CNend*/
	HI_U8 boxHeight;  /**< Bitmap height *//**<CNcomment:位图所占的高度CNend*/
	HI_S8 posX;  	  /**< Horizon offset between character and bitmap *//**<CNcomment:从字体所占的位置到位图在 X方向上的偏移CNend*/
	HI_S8 posY;  	  /**< Vertical offset between character and bitmap *//**<CNcomment:从字体所占的位置到位图在 Y 方向上的偏移CNend*/
	HI_U8 incX; 	  /**< Horizon offset after drawing bitmap *//**<CNcomment:画完该位图之后 X 方向上的偏移CNend*/
	HI_U8 incY; 	  /**< Vertical offset after drawing bitmap *//**<CNcomment:画完该位图之后 Y 方向上的偏移CNend*/
} GlyphMetrics;


/** @} */  /** <!-- ==== Structure Definition End ==== */


/******************************* API Declaration *****************************/
/** \addtogroup      font */
/** @{ */  /** <!--[font] */

/** 
\brief Initialize font beforing calling other font API.  
CNcomment:字体文件初始化, 在使用字库接口前初始化字库.CNend
\attention \n
ASCII charset file and GB2312 charset file cannot be empty.
GB2312 charset doesn't contain ascii character.
CNcomment:ASCII 字库文件路径和GB2312字库文件路径均不能为空，
GB2312字库中不包含ascii 字符。CNend

\param[in] pAsciiFontFile    ASCII charset file path. CNcomment:ASCII字库文件路径   CNend
\param[in] pGb2312FontFile  GB2312 charset file path. CNcomment:GB2312字库文件路径CNend

\retval ::HI_SUCCESS 
\retval ::HI_FONT_ERRINVFILE
\retval ::HI_FONT_ERRINITFAILED
\see \n
N/A
*/
HI_S32 HI_BitmapFont_Init( HI_CHAR*  pAsciiFontFile,  HI_CHAR* pGb2312FontFile);



/** 
\brief Denitialize font to release resources after calling other font API. 
CNcomment:字体去初始化,在使用完字库接口后关闭文件,释放资源.CNend
\attention \n
\param[in] 
\retval ::HI_SUCCESS 
\see \n
N/A
*/
HI_S32 HI_BitmapFont_DeInit();


/*********************************************************************************************/

/** 
\brief Obtains character model info of queried character. 
CNcomment:获取待查询字符的字模信息.CNend
\attention \n
str contains only one queried character. The first character will take effect if there are
more than one character.
CNcomment:str 一次只包含一个待查询字符.多余一个字符只取第一个。CNend
\paam[in]  str Queried character. CNcomment: 待查询的字符CNend
\param[out]  pData Pointer to character's address in character lib. CNcomment:该指针所指向的值为该字符在字库中的首地址CNend
\retval ::HI_SUCCESS 
\retval ::HI_FONT_ERRINVPARAM
\retval ::HI_FONT_ERRUNKNOWCHARSET
\see \n
N/A
*/
HI_S32 HI_BitmapFont_GetGlyphData(HI_CHAR * str, HI_U8** pData);

/** 
\brief Obtains width and height info of queried character.  
CNcomment:获取待查询字符的字模的宽高信息CNend
\attention \n
str contains only one queried character. The first character will take effect if there are
more than one character.
CNcomment:str 一次只包含一个待查询字符.多余一个字符只取第一个。CNend
\paam[in]  str Queried character. CNcomment:待查询的字符CNend
\param[out]  pWidth widht. CNcomment:字模宽度CNend
\param[out]  pHeight height. CNcomment:字模高度CNend

\retval ::HI_SUCCESS 
\retval ::HI_FONT_ERRINVPARAM
\retval ::HI_FONT_ERRUNKNOWCHARSET
\see \n
N/A
*/
HI_S32 HI_BitmapFont_GetGlyphSize(HI_CHAR * str, HI_S32 *pWidth, HI_S32 *pHeight);


/*********************************************************************************************/

/** @} */  /** <!-- ==== API Declaration End ==== */


#ifdef __cplusplus
}
#endif

#endif //

#endif


