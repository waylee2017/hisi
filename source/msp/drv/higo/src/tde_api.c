/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_hdec.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/


/*********************************add include here******************************/
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/miscdevice.h>
#include <linux/kernel.h>
#include <linux/slab.h>
#include <linux/fs.h>
#include <linux/errno.h>
#include <linux/types.h>
#include <linux/fcntl.h>
#include <linux/cdev.h>
#include <asm/uaccess.h>
#include <linux/interrupt.h>
#include <linux/poll.h>
#include <linux/workqueue.h>
#include <asm/io.h>

#include "hi_tde_api.h"
#include "drv_tde_ext.h"
#include "hi_module.h"
#include "hi_drv_module.h"



/*****************************************************************************/


/***************************** Macro Definition ******************************/
#define TDE_CHECK_FD() \
    do {                                         \
        if (0 == g_s32TDeRef)                    \
        {                                        \
            return HI_ERR_TDE_DEV_NOT_OPEN;      \
        }                                        \
    } while (0)

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/

static HI_S32 g_s32TDeRef = 0;		

TDE_EXPORT_FUNC_S  *ps_TdeExportFuncs = NULL;

/******************************* API declaration *****************************/

/******************************* API realize *****************************/
HI_S32 HI_TDE2_Open(HI_VOID)
{
    if (g_s32TDeRef)
    {
        g_s32TDeRef++;
        return HI_SUCCESS;
    }
	
    g_s32TDeRef++;

	HI_DRV_MODULE_GetFunction(HI_ID_TDE, (HI_VOID**)&ps_TdeExportFuncs);
    if(NULL == ps_TdeExportFuncs)
    {
        return HI_FAILURE;
    }
	
    return HI_SUCCESS;
}

HI_VOID HI_TDE2_Close(HI_VOID)
{
    if (g_s32TDeRef == 0)
    {
        return;
    }
    
    g_s32TDeRef--;
    
    if(g_s32TDeRef > 0)
    {
        return ;
    }

    return;
}

TDE_HANDLE  HI_TDE2_BeginJob(HI_VOID)
{
    TDE_HANDLE s32Handle;

    TDE_CHECK_FD();
	
    if (ps_TdeExportFuncs->pfnTdeBeginJob(&s32Handle) < 0)
    {
        return HI_ERR_TDE_INVALID_HANDLE;
    }

    return s32Handle;
}

HI_S32 HI_TDE2_Bitblit(TDE_HANDLE s32Handle, TDE2_SURFACE_S * pstBackGround, TDE2_RECT_S * pstBackGroundRect,
                       TDE2_SURFACE_S * pstForeGround, TDE2_RECT_S * pstForeGroundRect, TDE2_SURFACE_S * pstDst,
                       TDE2_RECT_S * pstDstRect,
                       TDE2_OPT_S * pstOpt)
{
    return ps_TdeExportFuncs->pfnTdeBlit(s32Handle, pstBackGround, pstBackGroundRect, pstForeGround, pstForeGroundRect, pstDst, pstDstRect, pstOpt);
}

/*****************************************************************************
* Function:      HI_TDE2_QuickFill
* Description:  quick fill the color to target bitmap
* Input:         s32Handle: handle of task
*                pDst: pointer of target 
*                u32FillData: fill color value,the pixel format need same with target bitmap
* Output:        none
* Return:       
* Others:       none
*****************************************************************************/

/* CNcomment:****************************************************************************
* Function:      HI_TDE2_QuickFill
* Description:   快速将固定值填充到目标位图，
* Input:         s32Handle: 任务句柄
*                pDst: 目标位图信息结构
*                u32FillData: 填充值信息，象素格式要和目标位图保持一致
* Output:        无
* Return:        >0: 返回当前操作所属任务的id ; <0: 失败
* Others:        无
*****************************************************************************/
HI_S32   HI_TDE2_QuickFill(TDE_HANDLE s32Handle, TDE2_SURFACE_S* pstDst, TDE2_RECT_S *pstDstRect,
                           HI_U32 u32FillData)
{
    TDE_CHECK_FD();
    if ((NULL == pstDst) || (NULL == pstDstRect))
    {
        return HI_ERR_TDE_NULL_PTR;
    }

    return ps_TdeExportFuncs->pfnTdeQuickFill(s32Handle, pstDst, pstDstRect, u32FillData);
}

/*****************************************************************************
* Function:      HI_TDE2_EndJob
* Description:  submit job
* Input:         s32Handle: handle of task
*                bSync:flag of synchronization
*                bBlock: flag of block
*                u32TimeOut: value of time out
* Output:        none
* Return:        success/fail
* Others:        none
*****************************************************************************/

/*CNcomment:****************************************************************************
* Function:      HI_TDE2_EndJob
* Description:   提交TDE2任务
* Input:         s32Handle: 任务句柄
*                bSync:是否同步
*                bBlock: 是否阻塞
*                u32TimeOut: 超时时间值(10ms为单位)
* Output:        无
* Return:        成功 / 失败
* Others:        无
*****************************************************************************/
HI_S32   HI_TDE2_EndJob(TDE_HANDLE s32Handle, HI_BOOL bSync, HI_BOOL bBlock, HI_U32 u32TimeOut)
{
    TDE_CHECK_FD();
    
    return ps_TdeExportFuncs->pfnTdeEndJob(s32Handle, bBlock, u32TimeOut, bSync, HI_NULL, HI_NULL);
}
/*CNcomment:****************************************************************************
* Function:      HI_TDE2_CancelJob
* Description:   删除创建的TDE2任务,只能在EndJob之前调用才会有效
* Input:         s32Handle: 任务句柄
* Output:        无
* Return:        成功 / 失败
* Others:        无
*****************************************************************************/
HI_S32   HI_TDE2_CancelJob(TDE_HANDLE s32Handle)
{
    TDE_CHECK_FD();

    return ps_TdeExportFuncs->pfnTdeCancelJob(s32Handle);
}

/*****************************************************************************
* Function:      HI_TDE2_MbBlit
* Description:   宏块处理接口
* Input:         s32Handle: 任务句柄
*                pY:    亮度块信息结构
*                pCbCr: 色度块信息结构
*                pDst:  目标位图信息结构
*                pMbOpt:  运算参数设置结构
* Output:        无
* Return:        >0: 返回当前操作所属任务的id ; <0: 失败
* Others:        无
*****************************************************************************/
HI_S32      HI_TDE2_MbBlit(TDE_HANDLE s32Handle, TDE2_MB_S* pstMB, TDE2_RECT_S  *pstMbRect, TDE2_SURFACE_S* pstDst,
                           TDE2_RECT_S  *pstDstRect,
                           TDE2_MBOPT_S* pstMbOpt)
{
    TDE_CHECK_FD();

    if ((NULL == pstMB) || (NULL == pstDst) || (NULL == pstMbOpt))
    {
        return HI_ERR_TDE_NULL_PTR;
    }

    return ps_TdeExportFuncs->pfnTdeMbBlit(s32Handle, pstMB, pstMbRect, pstDst, pstDstRect, pstMbOpt);
}
HI_S32 HI_TDE2_SetDeflickerLevel(TDE_DEFLICKER_LEVEL_E enDeflickerLevel)
{
    TDE_CHECK_FD();
    
    if (TDE_DEFLICKER_BUTT <= enDeflickerLevel)
    {
        return HI_ERR_TDE_INVALID_PARA;
    }

    return ps_TdeExportFuncs->pfnTdeSetDeflickerLevel(enDeflickerLevel);
}
HI_S32 HI_TDE2_SetAlphaThresholdValue(HI_U8 u8ThresholdValue)
{
    TDE_CHECK_FD();

    return ps_TdeExportFuncs->pfnTdeSetAlphaThresholdValue(u8ThresholdValue);
}
HI_S32 HI_TDE2_SetAlphaThresholdState(HI_BOOL bEnAlphaThreshold)
{
    TDE_CHECK_FD();

    return ps_TdeExportFuncs->pfnTdeSetAlphaThresholdState(bEnAlphaThreshold);
}
HI_S32 HI_TDE2_GetAlphaThresholdState(HI_BOOL *p_bEnAlphaThreshold)
{
    TDE_CHECK_FD();

    if (HI_NULL == p_bEnAlphaThreshold)
    {
        return HI_ERR_TDE_NULL_PTR;
    }

    return ps_TdeExportFuncs->pfnTdeGetAlphaThresholdState(p_bEnAlphaThreshold);
}
