/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName ：ErrorCode.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：Jason   Reviewer : 
* Date ：2005-01-12
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：Jason   Reviewer : 
* 		Date ：2005-01-12
*		Record : Create File
****************************************************************************/

#ifndef	__MLM_OSD_H__ /* 防止graphics.h被重复引用 */
#define	__MLM_OSD_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Types---------------------------*/
typedef  enum _m_osd_color_mode_e
{
    MM_OSD_COLOR_MODE_ARGB8888 = 0,
    MM_OSD_COLOR_MODE_ARGB4444,
    MM_OSD_COLOR_MODE_ARGB1555,
    MM_OSD_COLOR_MODE_RGB565,
    MM_OSD_COLOR_MODE_ALUT88
}MMT_OSD_ColorMode_E;


typedef struct _m_osd_imageinfo_t
{ 
    MBT_S32 Width; /* 图像宽 */
    MBT_S32 Height; /* 图像高 */
    MBT_U32 Size; /* 图像数据大小 */
} MST_OSD_ImageInfo_T;

/* 图像显示特效 */
typedef enum _m_osd_drawStyle_e
{
    MM_OSD_STYLE_NONE, /* 没有特效 */
    MM_OSD_STYLE_RANDOM, /* 随机特效 */
    MM_OSD_STYLE_SEQUENTIAL, /* 依次顺序显示各种特效 */
    MM_OSD_STYLE_01 /* 待增加 */
}MMT_OSD_DrawStyle_E;

/*
* 图像解码标识
* bit 0 :是否保持比例
* bit 1-2 :旋转角度
* bit 3 :未定义
* bit 4-5 :垂直方向对齐方式
* bit 6-7 :水平方向对齐方式
*/
typedef enum _m_osd_image_decodeflag_e
{
    /*保持比例*/
    MM_OSD_IMAGE_DECODE_KEEP_ASPECT_RATIO = 0x00000001,
    /*顺时针方向旋转0°*/
    MM_OSD_IMAGE_DECODE_ROTATE_0 = 0x00000000,
    /*顺时针方向旋转90°*/
    MM_OSD_IMAGE_DECODE_ROTATE_90 = 0x00000002,
    /*顺时针方向旋转180°*/
    MM_OSD_IMAGE_DECODE_ROTATE_180 = 0x00000004,
    /*顺时针方向旋转270°*/
    MM_OSD_IMAGE_DECODE_ROTATE_270 = 0x00000006,
    /*垂直方向拉伸*/
    MM_OSD_IMAGE_DECODE_VSTRETCH = 0x00000000,
    /*垂直方向上对齐(保持原始大小)*/
    MM_OSD_IMAGE_DECODE_UP = 0x00000010,
    /*垂直方向下对齐(保持原始大小) */
    MM_OSD_IMAGE_DECODE_DOWN = 0x00000020,
    /*垂直方向中心对齐(保持原始大小)*/
    MM_OSD_IMAGE_DECODE_VCENTER = 0x00000030,
    /*水平方向拉伸*/
    MM_OSD_IMAGE_DECODE_HSTRETCH = 0x00000000,
    /*水平方对齐(保持原始大小)*/
    MM_OSD_IMAGE_DECODE_LEFT = 0x00000040,
    /*水平方向右对齐 (保持原始大小)*/
    MM_OSD_IMAGE_DECODE_RIGHT = 0x00000080,
    /*水平中心对齐(保持原始大小)*/
    MM_OSD_IMAGE_DECODE_HCENTER = 0x000000c0
} MMT_OSD_ImageDecodeFlag_E;

/* 图像显示参数*/
typedef struct _m_osd_imageEx_param_t
{
    MBT_CHAR *FileName; /*源图像文件名 */
    MMT_OSD_DrawStyle_E Style; /*特效,目前不要求支持任何特效*/
    MMT_OSD_ImageDecodeFlag_E ImageDecodeFlag; /*图像解码标识 */
    MBT_S32 DstX; /*目标显示区域x 轴坐标 */
    MBT_S32 DstY; /*目标显示区域y 轴坐标 */
    MBT_S32 DstWidth; /*目标显示区域宽 */
    MBT_S32 DstHeight; /*目标显示区域高 */
    MBT_S32 SrcX; /*源图像待显示区域x 轴坐标 */
    MBT_S32 SrcY; /*源图像待显示区域y 轴坐标 */
    MBT_S32 SrcWidth; /*源图像待显示区域宽 */
    MBT_S32 SrcHeight; /*源图像待显示区域高 */
}MST_OSD_DrawImageExParam_T;


/*-----------------------Module Functions-------------------------*/
/*------------------------Module Macors---------------------------*/
/*
*说明：设置图形层的颜色类型。在调用任何图模块函数前，必先调用此函数来设置系统的颜色类型，
*一旦设定完成，之后的所有颜色均按此函数调定的值进行操作。
*输入参数：
*			stColorMode：颜色类型值。
*输出参数:
*无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_OSD_SetOSDColorMode(MMT_OSD_ColorMode_E stColorMode);
/*
*MMT_STB_ErrorCode_E MLMF_OSD_SetOSDAlpha(MBT_U8 value)
*		说明：设置图形层的alpha值，0~255。只对OSD层使用。
*输入参数：
*			Value：alpha值，0~255。
*输出参数:
*无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_OSD_SetOSDAlpha(MBT_U8 value);

/*
*说明：上层通过此函数来获取一个用来写入菜单图形数据的buffer，
*菜单的长宽。此buffer可以直接是显存的buffer也可以是底层创建的一个
*显示的镜像buffer。此buffer的长宽必须跟返回值中给出来的长宽一至。
*输入参数：
*			无。
*输出参数:
*pu32Width：OSD的宽。
*pu32Height：OSD的高。
*		返回：
*			缓存基地址。
*/
extern MBT_U8 * MLMF_OSD_GetInfo( MBT_U32 *pu32Width,MBT_U32 *pu32Height);


/*
*说明：当上层准备好一屏的数据以后，便会调用此函数刷新全屏。
*输入参数：
*无。
*输出参数：
*无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_OSD_Flush (MBT_U32 x,MBT_U32 y,MBT_U32 w,MBT_U32 h);
extern MMT_STB_ErrorCode_E MLMF_OSD_Mix (MBT_U8 *pu8Dst,MBT_U8 *pu8Src1,MBT_U8 *pu8Src2,MBT_U32 u32PicW,MBT_U32 x,MBT_U32 y,MBT_U32 w,MBT_U32 h);
extern MMT_STB_ErrorCode_E MLMF_OSD_Disp (MBT_U8 *pu8Src,MBT_U32 u32PicW,MBT_U32 x,MBT_U32 y,MBT_U32 w,MBT_U32 h);
extern MMT_STB_ErrorCode_E MLMF_OSD_DispExt (MBT_U8 *pu8Src,MBT_U32 u32PicW,MBT_U32 x,MBT_U32 y,MBT_U32 w,MBT_U32 h);


/*
*说明：解码并显示图片(jpg\bmp\png\gif\tif)。此函数主要用于底层有相关图片解码功能的平台。如果平台不具有相关功能，可以把此函数放空。
*输入参数：
*			pParam 指向图像显示参数的指针。
*输出参数：
*                       无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
extern MMT_STB_ErrorCode_E MLMF_OSD_DrawImageEx (MST_OSD_DrawImageExParam_T *pParam);
/*
*说明：获取图像信息。此函数主要用于底层有相关图片解码功能的平台。如果平台不具有相关功能，可以把此函数放空。
*输入参数：
*			FileName：源图像文件名(包括完整路径)。
*输出参数:
*pImageInfo：指向图像信息的指针。
*		返回：
*        		MM_NO_ERROR:成功。
*			错误号：失败。
*/

extern MMT_STB_ErrorCode_E MLMF_OSD_GetImageInfo (MBT_CHAR *FileName,MST_OSD_ImageInfo_T *pImageInfo);


/*启动播放图片*/
extern MMT_STB_ErrorCode_E MLMF_OSD_Picture_Start(MBT_CHAR *pu8FileName,MMT_OSD_ColorMode_E stOutputColorMode);

extern MBT_U8 *MLMF_OSD_GetPictureInfo(MBT_U32 *pu32Width,MBT_U32 *pu32Height);

extern MMT_STB_ErrorCode_E MLMF_OSD_ShowPicture(MBT_U32 x,MBT_U32 y,MBT_U32 u32Width,MBT_U32 u32Height);

/*停止播放图片*/
extern MMT_STB_ErrorCode_E MLMF_OSD_Picture_Stop(MBT_VOID);


/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__ERRORCODE_H__ */

/*----------------------End of ErrorCode.h-------------------------*/

