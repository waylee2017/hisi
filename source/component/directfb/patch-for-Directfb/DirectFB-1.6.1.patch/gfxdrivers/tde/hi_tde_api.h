/*****************************************************************************
*             Copyright 2006 - 2014, Hisilicon Tech. Co., Ltd.
*                           ALL RIGHTS RESERVED
* FileName: hi_api_tde.h
* Description:TDE2 API define
*
* History:
* Version   Date          Author        DefectNum       Description
*
*****************************************************************************/

#ifndef _HI_API_TDE2_H_
#define _HI_API_TDE2_H_

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif /* __cplusplus */
#endif  /* __cplusplus */

#include "hi_type.h"
#include "hi_tde_type.h"

#define HI_TDE_Open HI_TDE2_Open
#define HI_TDE_Close HI_TDE2_Close
#define HI_TDE_BeginJob HI_TDE2_BeginJob

/****************************************************************************/
/*                             TDE2 API define                               */
/****************************************************************************/

/** 
\brief 打开TDE2设备
\attention \n
 在进行TDE相关操作前应该首先调用此接口，保证TDE设备处于打开状态\n
 TDE设备允许多进程重复打开\n
 
\param  无
\retval ::HI_SUCCESS 成功
\retval ::HI_ERR_TDE_DEV_OPEN_FAILED TDE设备打开失败
\see \n
无
*/
HI_S32      HI_TDE2_Open(HI_VOID);


/** 
\brief 关闭TDE2设备
\attention \n
调用HI_TDE2_Open与HI_TDE2_Close的次数需要对应\n
\param  无
\retval none
\see \n
无
*/
HI_VOID     HI_TDE2_Close(HI_VOID);


/** 
\brief 创建1个TDE任务
\attention 无
\param  无
\retval 大于0：合法的TDE任务句柄
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_INVALID_HANDLE 非法的TDE任务句柄
\see \n
无
*/
TDE_HANDLE  HI_TDE2_BeginJob(HI_VOID);


/** 
\brief 提交已创建的TDE任务
\attention \n
在调用此接口前应保证调用HI_TDE2_Open打开TDE设备，并且调用HI_TDE2_BeginJob获得了有效的任务句柄\n
若设置为阻塞操作，函数超时返回或被中断返回时应该注意：此时TDE操作的API函数提前返回，但执行的操作仍会完成\n
如果设置为同步模式，则任务中的操作会等到视频输出的帧或场同步信号来了才会执行；如果不设置为同步模式，则任务中的操作会加入全局异步命令队列等候执行；目前\n
暂不支持同步模式\n
提交任务后，此任务对应的handle会变为无效，再次提交会出现错误码HI_ERR_TDE_INVALID_HANDLE \n

\param[in] s32Handle  TDE任务句柄
\param[in] bSync  是否使用同步方式提交
\param[in] bBlock  阻塞标志
\param[in] u32TimeOut  超时时间，单位jiffies（10ms）
\retval ::HI_SUCCESS  非阻塞任务提交成功
\retval ::HI_ERR_TDE_INVALID_HANDLE  输入的Job handler无效
\retval ::HI_ERR_TDE_JOB_TIMEOUT  任务超时未完成
\see \n
无
*/
HI_S32      HI_TDE2_EndJob(TDE_HANDLE s32Handle, HI_BOOL bSync, HI_BOOL bBlock, HI_U32 u32TimeOut);


/** 
\brief 取消已经加入到TDE任务中的操作
\attention \n
在调用此接口前应保证调用HI_TDE2_Open打开TDE设备，并且调用HI_TDE2_BeginJob获得了有效的任务句柄\n
已经提交的任务不能够再取消\n
取消后的任务不再有效，不能添加操作\n
此接口的应用场景：在配置TDE操作出错时使用\n

\param[in] s32Handle 任务句柄
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_FAILURE  指定的任务已经提交无法取消

\see \n
无
*/
HI_S32      HI_TDE2_CancelJob(TDE_HANDLE s32Handle);



/** 
\brief 等待指定的任务完成
\attention \n
 此接口为阻塞接口，会阻塞等待指定的任务完成\n
 
\param[in] s32Handle 任务句柄
\retval 0  指定的TDE任务未完成
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_QUERY_TIMEOUT  指定的任务超时未完成
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  不支持的操作

\see \n
无
*/
HI_S32      HI_TDE2_WaitForDone(TDE_HANDLE s32Handle);


/** 
\brief 等待TDE的所有任务完成
\attention \n
此接口为阻塞接口，会阻塞等待所有的TDE任务完成\n
\param  无
\retval 0  指定的TDE任务未完成
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  不支持的操作
\see \n
无
*/
HI_S32 HI_TDE2_WaitAllDone(HI_VOID);


/** 
\brief 复位TDE所有状态
\attention \n
此接口一般用于待机唤醒软硬件不匹配时出现超时错误时调用，用于复位软硬件\n
\param  无
\retval 0  指定的TDE任务未完成
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\see \n
无
*/
HI_S32 HI_TDE2_Reset(HI_VOID);


/** 
\brief 向任务中添加快速拷贝操作
\attention \n
此接口使用的是直接DMA搬移，因此性能优于HI_TDE2_Bitblit搬移\n
快速拷贝操作不支持格式转换，源位图和目标位图格式必须一致\n
快速拷贝不支持缩放功能，因此如果源和目的的操作区域尺寸不一致，则按照两者最小的宽高进行拷贝搬移\n
指定的操作区域要和指定的位图有公共区域，否则会返回错误；其他操作均有此要求\n
像素格式大于等于Byte的位图格式的基地址和位图的Stride必须按照像素格式对齐，像素格式不足Byte的位图格式的基地址和Stride需要按照Byte对齐；其他操作均有此要求\n
像素格式不足Byte的位图格式的水平起始位置和宽度必须按照像素对齐\n
YCbCr422格式的位图的水平起始位置和宽度必须为偶数；其他操作均有此要求\n

\param[in] s32Handle  TDE任务句柄
\param[in] pstSrc  源位图
\param[in] pstSrcRect  源位图操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图操作区域
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_QuickCopy(TDE_HANDLE s32Handle, TDE2_SURFACE_S* pstSrc, TDE2_RECT_S  *pstSrcRect,
                              TDE2_SURFACE_S* pstDst, TDE2_RECT_S *pstDstRect);


/** 
\brief 快速将固定值填充到目的位图
\attention \n
填充的数据值需要按照目标位图的格式指定\n
\param[in] s32Handle  TDE任务句柄
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图操作区域
\param[in] u32FillData  填充值
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_QuickFill(TDE_HANDLE s32Handle, TDE2_SURFACE_S* pstDst, TDE2_RECT_S *pstDstRect,
                              HI_U32 u32FillData);


/** 
\brief 将源位图带缩放为目标位图指定大小，源和目标可为同一位图
\attention \n
缩小倍数最大为15倍，放大倍数则没有限制\n
缩放时源位图和目标位图可以为同一位图，但不能为内存有重叠的不同位图\n

\param[in] s32Handle  TDE任务句柄
\param[in] pstSrc  源位图
\param[in] pstSrcRect  源位图操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图操作区域
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_ERR_TDE_NOT_ALIGNED  位图起始地址或Stride没有按照像素对齐
\retval ::HI_ERR_TDE_MINIFICATION  缩小倍数过大
\retval ::HI_ERR_TDE_NOT_ALIGNED  Clut表的起始地址没有按照4byte对齐
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  不支持的操作配置
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_QuickResize(TDE_HANDLE s32Handle, TDE2_SURFACE_S* pstSrc, TDE2_RECT_S  *pstSrcRect,
                                TDE2_SURFACE_S* pstDst, TDE2_RECT_S  *pstDstRect);


/** 
\brief 向任务中添加抗闪烁操作 
\attention \n
抗闪烁只按垂直方向进行滤波\n
抗闪烁的源和目的位图可以在同一块内存\n
如果指定的输入区域与输出不一致，则会进行缩放处理\n
 	
\param[in] s32Handle  TDE任务句柄
\param[in] pstSrc  源位图
\param[in] pstSrcRect  源位图操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图操作区域
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_ERR_TDE_NOT_ALIGNED  位图起始地址或Stride没有按照像素对齐
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  不支持的操作配置
\retval ::HI_ERR_TDE_MINIFICATION  缩小倍数过大
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_QuickDeflicker(TDE_HANDLE s32Handle, TDE2_SURFACE_S* pstSrc, TDE2_RECT_S  *pstSrcRect,
                                   TDE2_SURFACE_S* pstDst, TDE2_RECT_S  *pstDstRect);



/** 
\brief 向任务中添加对光栅/宏块位图进行有附加功能的搬移操作
\attention \n
在调用此接口前应保证调用HI_TDE2_Open打开TDE设备，并且调用HI_TDE2_BeginJob获得了有效的任务句柄\n
目标位图必须与背景位图的颜色空间一致，前景位图的颜色空间可以与背景/目标位图不一致，这种情况下会进行颜色空间转换功能\n
当前景源位图与目标位图尺寸不一致时，如果设置了缩放则按照设定的区域进行缩放，否则按照设置公共区域的最小值进行裁减搬移\n
Global Alpha和Alplh0、Alpha1的设置值统一按照[0,255]的范围进行设置\n
背景位图可以与目标位图为同一位图\n
当只需要使用单源搬移操作时（比如只对源位图进行ROP取非操作），可以将背景或背景位图的结构信息和操作区域结构指针设置为空\n
不能够在启用镜像的同时进行缩放\n
作Clip操作时，裁减区域必须与操作区域有公共交集，否则会返回错误\n
在第一次作颜色扩展操作（源为Clut格式，目的为ARGB/AYCbCr格式）时，需要打开Clut Reload标记\n
作简单的搬移操作(不带附加功能，且源和目标的象素格式一致)时，可以将操作选项结构体指针设置为空,这时会进行快速搬移\n
不支持目标象素格式为宏块格式\n

\param[in] s32Handle  TDE任务句柄
\param[in] pstBackGround  背景位图
\param[in] pstBackGroundRect  背景位图操作区域
\param[in] pstForeGround  前景位图
\param[in] pstForeGroundRect  前景位图操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图操作区域
\param[in] pstOpt  运算参数设置结构
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_ERR_TDE_NOT_ALIGNED  Clut表的起始地址没有按照4byte对齐
\retval ::HI_ERR_TDE_MINIFICATION  缩小倍数过大
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  位图的格式操作不支持此操作
\retval ::HI_ERR_TDE_CLIP_AREA  操作区域与Clip区域没有交集，显示不会有更新
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_Bitblit(TDE_HANDLE s32Handle, TDE2_SURFACE_S* pstBackGround, TDE2_RECT_S  *pstBackGroundRect,
                            TDE2_SURFACE_S* pstForeGround, TDE2_RECT_S  *pstForeGroundRect, TDE2_SURFACE_S* pstDst,
                            TDE2_RECT_S  *pstDstRect, TDE2_OPT_S* pstOpt);


/** 
\brief 向任务中添加对光栅位图进行有附加操作的填充搬移操作。实现在surface上画点、画线、色块填充或内存填充等功能
\attention \n
在调用此接口前应保证调用HI_TDE2_Open打开TDE设备，并且调用HI_TDE2_BeginJob获得了有效的任务句柄\n
当前景位图为NULL时，该接口和HI_TDE2_QuickFill实现的功能一样\n
在Solid Draw时，只能对前景做Color Key\n
Solid Draw绘制矩形或者水平/垂直直线的方法是通过设置填充矩形的宽/高来完成。例如：垂直直线就是绘制宽度为1像素的矩形\n
 	 	 	 	
\param[in] s32Handle  TDE任务句柄
\param[in] pstForeGround  前景位图
\param[in] pstForeGroundRect  前景位图的操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图的操作区域
\param[in] pstFillColor  填充色结构体
\param[in] pstOpt  操作属性结构体
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_ERR_TDE_NOT_ALIGNED  Clut表的起始地址没有按照4byte对齐
\retval ::HI_ERR_TDE_MINIFICATION  缩小倍数过大
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  位图的格式操作不支持此操作
\retval ::HI_ERR_TDE_CLIP_AREA  操作区域与Clip区域没有交集，显示不会有更新
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_SolidDraw(TDE_HANDLE s32Handle, TDE2_SURFACE_S* pstForeGround, TDE2_RECT_S  *pstForeGroundRect,
                              TDE2_SURFACE_S *pstDst,
                              TDE2_RECT_S  *pstDstRect, TDE2_FILLCOLOR_S *pstFillColor,
                              TDE2_OPT_S *pstOpt);


/** 
\brief 向任务中添加对宏块位图进行有附加功能的搬移操作。将亮度和色度宏块数据合并成光栅格式，可以伴随缩放、抗闪烁、Clip处理
\attention \n
在调用此接口前应保证调用HI_TDE2_Open打开TDE设备，并且调用HI_TDE2_BeginJob获得了有效的任务句柄\n
对于YCbCr422格式的宏块，操作区域起始点水平坐标必须是偶数\n
目标位图必须是YCbCr颜色空间\n
 	 	 	
\param[in] s32Handle  TDE任务句柄
\param[in] pstMB  宏块surface
\param[in] pstMbRect  宏块操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标操作区域
\param[in] pstMbOpt  宏块操作属性
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_ERR_TDE_MINIFICATION  缩小倍数超出限制（最大为缩小15倍）
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  位图的格式操作不支持此操作
\retval ::HI_ERR_TDE_CLIP_AREA  操作区域与Clip区域没有交集，显示不会有更新
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_MbBlit(TDE_HANDLE s32Handle, TDE2_MB_S* pstMB, TDE2_RECT_S  *pstMbRect, TDE2_SURFACE_S* pstDst, TDE2_RECT_S  *pstDstRect,
                           TDE2_MBOPT_S* pstMbOpt);


/** 
\brief 向任务中添加对光栅位图进行Mask Rop搬移操作。根据Mask位图实现前景位图和背景位图ROP的效果
\attention \n
在调用此接口前应保证调用HI_TDE2_Open打开TDE设备，并且调用HI_TDE2_BeginJob获得了有效的任务句柄\n
三个位图的操作区域大小必须一致\n
Mask位图必须是A1格式的位图\n
目标位图和前景位图必须位于同一颜色空间\n
 	 	 	 	
\param[in] s32Handle  TDE任务句柄
\param[in] pstBackGround  背景位图
\param[in] pstBackGroundRect  背景位图操作区域
\param[in] pstForeGround  前景位图
\param[in] pstForeGroundRect  前景位图操作区域
\param[in] pstMask  Mask位图
\param[in] pstMaskRect  Mask位图操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图操作区域
\param[in] enRopCode_Color  颜色分量的ROP运算码
\param[in] enRopCode_Alpha  Alpha分量的ROP运算码
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_BitmapMaskRop(TDE_HANDLE s32Handle, 
                                  TDE2_SURFACE_S* pstBackGround, TDE2_RECT_S  *pstBackGroundRect,
                                  TDE2_SURFACE_S* pstForeGround, TDE2_RECT_S  *pstForeGroundRect,
                                  TDE2_SURFACE_S* pstMask, TDE2_RECT_S  *pstMaskRect, 
                                  TDE2_SURFACE_S* pstDst, TDE2_RECT_S  *pstDstRect,
                                  TDE2_ROP_CODE_E enRopCode_Color, TDE2_ROP_CODE_E enRopCode_Alpha);


/** 
\brief 向任务中添加对光栅位图进行Mask Blend搬移操作。根据Mask位图实现前景位图和背景位图带Mask位图的叠加效果
\attention \n
在调用此接口前应保证调用HI_TDE2_Open打开TDE设备，并且调用HI_TDE2_BeginJob获得了有效的任务句柄\n
目标位图和背景位图必须位于同一颜色空间\n
如果前景的位图是预乘了的数据，Alpha叠加模式应该选择预乘模式；否则选择非预乘模式\n
enBlendMode不能选择TDE2_ALUCMD_ROP模式\n

\param[in] s32Handle  TDE任务句柄
\param[in] pstBackGround  背景位图
\param[in] pstBackGroundRect  背景位图操作区域
\param[in] pstForeGround  前景位图
\param[in] pstForeGroundRect  前景位图操作区域
\param[in] pstMask  Mask位图
\param[in] pstMaskRect  Mask位图操作区域
\param[in] pstDst  目标位图
\param[in] pstDstRect  目标位图操作区域
\param[in] u8Alpha  Alpha叠加时的全局Alpha值
\param[in] enBlendMode  Alpha叠加模式选择
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\retval ::HI_ERR_TDE_NO_MEM  内存不足，无法添加操作
\retval ::HI_FAILURE  系统错误或未知错误
\see \n
无
*/
HI_S32      HI_TDE2_BitmapMaskBlend(TDE_HANDLE s32Handle, 
                                    TDE2_SURFACE_S* pstBackGround, TDE2_RECT_S  *pstBackGroundRect,
                                    TDE2_SURFACE_S* pstForeGround, TDE2_RECT_S  *pstForeGroundRect,
                                    TDE2_SURFACE_S* pstMask, TDE2_RECT_S  *pstMaskRect,
                                    TDE2_SURFACE_S* pstDst, TDE2_RECT_S  *pstDstRect,
                                    HI_U8 u8Alpha, TDE2_ALUCMD_E enBlendMode);


/** 
\brief  向任务中添加旋转操作
\attention \n
源和目标的像素格式必须相同，并且不能是YUV、CLUT1和CLUT4格式\n
参数s32DstPointX和s32DstPointY默认为0，目前这两个参数没有用到，可以输入任何值\n

\param[in] s32Handle  TDE任务句柄
\param[in] pstSrc  源位图
\param[in] pstSrcRect  源位图操作区域
\param[in] pstDst  目标位图
\param[in] s32DstPointX  目标位图操作区域的起始点横坐标
\param[in] s32DstPointY  目标位图操作区域的起始点纵坐标
\param[in] enRotateAngle  旋转的角度
\retval 0 成功
\retval ::HI_ERR_TDE_DEV_NOT_OPEN  TDE设备未打开，API调用失败
\retval ::HI_ERR_TDE_INVALID_HANDLE  非法的任务句柄
\retval ::HI_ERR_TDE_NULL_PTR  参数中有空指针错误
\retval ::HI_ERR_TDE_UNSUPPORTED_OPERATION  不支持的操作
\retval ::HI_ERR_TDE_INVALID_PARA  无效的参数设置
\see \n
无
*/
HI_S32 HI_TDE2_Rotate(TDE_HANDLE s32Handle, 
                    TDE2_SURFACE_S *pstSrc, TDE2_RECT_S *pstSrcRect, 
                    TDE2_SURFACE_S *pstDst, HI_S32 s32DstPointX,  HI_S32 s32DstPointY,
                    TDE_ROTATE_ANGLE_E enRotateAngle);



/** 
\brief 设置抗闪烁级别
\attention \n
无
\param[in] enDeflickerLevel  抗闪烁系数级别
\retval 0 成功
\retval ::

\see none
*/
HI_S32 HI_TDE2_SetDeflickerLevel(TDE_DEFLICKER_LEVEL_E enDeflickerLevel);


/** 
\brief 获取抗闪烁级别
\attention \n
无
\param[in] pDeflickerLevel  抗闪烁级别
\retval 0 成功
\retval ::

\see \n
无
*/
HI_S32 HI_TDE2_GetDeflickerLevel(TDE_DEFLICKER_LEVEL_E *pDeflickerLevel);


/** 
\brief 设置alpha判决阈值
\attention \n
无
\param[in] u8ThresholdValue  判决阈值
\retval 0 成功
\retval ::

\see \n
无
*/
HI_S32 HI_TDE2_SetAlphaThresholdValue(HI_U8 u8ThresholdValue);


/** 
\brief 获取alpha判决阈值
\attention \n
无
\param[in] pu8ThresholdValue  判决阈值
\retval 0 成功
\retval ::

\see \n
无
*/
HI_S32 HI_TDE2_GetAlphaThresholdValue(HI_U8 *pu8ThresholdValue);


/** 
\brief 设置alpha判决开关
\attention 无
\param[in] bEnAlphaThreshold  alpha判决开关
\retval 0 成功
\retval ::
\see \n
无
*/
HI_S32 HI_TDE2_SetAlphaThresholdState(HI_BOOL bEnAlphaThreshold);


/** 
\brief 获取alpha判决开关
\attention 无
\param[in]  p_bEnAlphaThreshold  alpha判决开关
\retval 0 成功
\retval ::

\see \n
无
*/
HI_S32 HI_TDE2_GetAlphaThresholdState(HI_BOOL * p_bEnAlphaThreshold);


/** 
\brief 模式填充
\attention 无
\param[in] s32Handle  任务句柄
\param[in] pstBackGround  背景位图信息
\param[in] pstBackGroundRect  背景操作矩形
\param[in] pstForeGround  前景位图信息
\param[in] pstForeGroundRect  前景位操作矩形
\param[in] pstDst  目标位图信息
\param[in] pstDstRect  目标操作矩形
\param[in] pstOpt  模式填充操作选项
\retval 0 成功
\retval ::

\see \n
无
*/
HI_S32 HI_TDE2_PatternFill(TDE_HANDLE s32Handle, TDE2_SURFACE_S *pstBackGround, 
                           TDE2_RECT_S *pstBackGroundRect, TDE2_SURFACE_S *pstForeGround,
                           TDE2_RECT_S *pstForeGroundRect, TDE2_SURFACE_S *pstDst,
                           TDE2_RECT_S *pstDstRect, TDE2_PATTERN_FILL_OPT_S *pstOpt);

/** 
\brief 使能/去使能局部抗闪烁
\attention 无
\param[in] bRegionDeflicker  使能/去使能标志
\retval 0 成功
\retval ::

\see \n
无
*/
HI_S32 HI_TDE2_EnableRegionDeflicker(HI_BOOL bRegionDeflicker);


#ifdef __cplusplus
 #if __cplusplus
}
 #endif /* __cplusplus */
#endif  /* __cplusplus */

#endif  /* _HI_API_TDE2_H_ */
