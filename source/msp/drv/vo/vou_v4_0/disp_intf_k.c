























































/******************************************************************************

*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*

 ******************************************************************************
  File Name     : disp_intf.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/15
  Description   :
  History       :
  1.Date        : 2009/12/15
    Author      : w58735
    Modification: Created file

*******************************************************************************/
#include <linux/vmalloc.h>
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/slab.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
#include <linux/smp_lock.h>
#endif
#include <linux/seq_file.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(3, 18, 0))
#include <asm/system.h>
#endif
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/string.h>

//#include "common_dev.h"
//#include "common_proc.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
#include "drv_disp_ext.h"
#include "hi_drv_module.h"
#include "drv_hdmi_ext.h"

//#include "mpi_priv_disp.h"
#include "drv_disp_ioctl.h"

#include "optm_disp.h"
#include "optm_regintf.h"
#include "hi_kernel_adapt.h"
#include "optm_m_disp.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif


static atomic_t g_DispCount = ATOMIC_INIT(0);

DISP_STATE_S         g_DispModState         = {0};
DISP_GLOBAL_STATE_S  g_DispUserCountState   = {0};
DISP_GLOBAL_STATE_S  g_DispKernelCountState = {0};
DISP_GLOBAL_STATE_S  g_DispAllCountState    = {0};
HI_BOOL              g_DispSuspend          = HI_FALSE;

// add by g45208, for multiple process
HI_S32 g_s32DispAttachCount = 0;

HI_DECLARE_MUTEX(g_DispMutex);

#ifndef HI_VDP_ONLY_SD_SUPPORT
#define DISP_CHECK_CHANNEL(enDisp)
#define DISP_REVISE_CHANNEL(enDisp)
#else
/* ckeck the validity of DISP ID , only SD channel is valid and SD content is implemented by HD when the chip type is 3110EV500.*/
#define DISP_CHECK_CHANNEL(enDisp) \
    do {                               \
        if ((HI_UNF_DISP_SD0 != enDisp)) \
        {                           \
            HI_ERR_DISP("DISP: ch is not support.\n"); \
            return HI_ERR_DISP_NOT_SUPPORT;          \
        }                           \
        else{                       \
            enDisp = HI_UNF_DISP_HD0;\
        }\
    } while (0)

#define DISP_REVISE_CHANNEL(enDisp) \
    do {                               \
        enDisp = HI_UNF_DISP_SD0; \
    } while (0)
#endif


/*************************** for mce ******************************/
static HI_OPTM_DISP_REGPARAM_S  *g_pDispProcPara = NULL;
#ifndef HI_ADVCA_FUNCTION_RELEASE                // for Gao an version dond't use proc

static HI_S32 DISP_InitUsedProc(HI_VOID)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];

    /* HD DISP*/
    if (g_DispModState.bHd0Disp)
    {
        /* register HD-display PROC */
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_HD0);
        pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
        if (!pProcItem)
        {
            HI_FATAL_DISP("add %s proc failed.\n", ProcName);
            return HI_ERR_DISP_CREATE_ERR;
        }
        if (g_pDispProcPara)
        {
	        pProcItem->read = g_pDispProcPara->rdproc;
	        pProcItem->write = g_pDispProcPara->wtproc;
        }
    }

    /* SD DISP */
    if (g_DispModState.bSd0Disp)
    {
        /* register SD-display PROC*/
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_SD0);
        pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
        if (!pProcItem)
        {
            HI_FATAL_DISP("add %s proc failed.\n", ProcName);
            if (g_DispAllCountState.Hd0DispNum)
            {
                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_HD0);
                HI_DRV_PROC_RemoveModule(ProcName);
            }

            return HI_ERR_DISP_CREATE_ERR;
        }
        if (g_pDispProcPara)
        {
	        pProcItem->read  = g_pDispProcPara->rdproc;
	        pProcItem->write = g_pDispProcPara->wtproc;
		}
    }

    return HI_SUCCESS;
}

static HI_VOID DISP_DeInitUsedProc(HI_VOID)
{
    HI_CHAR ProcName[12];

    /* HD DISP */
    if (g_DispModState.bHd0Disp)
    {
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_HD0);
        HI_DRV_PROC_RemoveModule(ProcName);
    }

    /* SD DISP */
    if (g_DispModState.bSd0Disp)
    {
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_SD0);
        HI_DRV_PROC_RemoveModule(ProcName);
    }

    return;
}
#endif
HI_S32 DISP_IntfRegister(HI_OPTM_DISP_REGPARAM_S *DispProcPara)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE                // for Gao an version dond't use proc

    HI_S32 Ret;
	g_pDispProcPara = DispProcPara;

    Ret = DISP_InitUsedProc();
    if (Ret != HI_SUCCESS)
    {
        g_pDispProcPara = HI_NULL;
        return HI_FAILURE;
    }
#else
	g_pDispProcPara = HI_NULL;
#endif

    return HI_SUCCESS;
}

HI_VOID DISP_IntfUnRegister(HI_VOID)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE                // for Gao an version dond't use proc
    DISP_DeInitUsedProc();
#endif
    g_pDispProcPara = HI_NULL;

    return;
}

/***************************************************************/
HI_U32 DISP_Get_CountStatus(void)
{
    if( (g_DispAllCountState.Hd0DispNum > 0) || (g_DispAllCountState.Sd0DispNum > 0) )
    {
        return HI_TRUE;
    }
    return HI_FALSE;
}

HI_S32 DISP_ExtOpen(HI_UNF_DISP_E enDisp, DISP_STATE_S *pDispState)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    HI_S32            Ret;

    /* HD DISP */
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        /* create DISP for the first time */
        if (!pDispState->bHd0Disp)
        {
            /* call basic interface for the first time creating DISP globally*/
            if (!g_DispAllCountState.Hd0DispNum)
            {
                Ret = DISP_Open(enDisp);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_DISP("call DISP_Open failed.\n");
                    return Ret;
                }

        //DEBUG_PRINTK("@@@@@@@@@@@@@@@@@@@@@@@@@ hd open!\n");
                if (g_pDispProcPara)
                {
	                /* register HD-display PROC*/
	                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_HD0);
	                pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);

	                if (!pProcItem)
	                {
	                    HI_FATAL_DISP("add %s proc failed.\n", ProcName);
	                    DISP_Close(enDisp);

	                    return HI_ERR_DISP_CREATE_ERR;
	                }
	                pProcItem->read  = g_pDispProcPara->rdproc;
	                pProcItem->write = g_pDispProcPara->wtproc;
				}
            }

        //DEBUG_PRINTK("@@@@@@@@@@@@@@@@@@@@@@@@@ hd ++!\n");


            pDispState->bHd0Disp = HI_TRUE;
            g_DispAllCountState.Hd0DispNum++;  /* Global HD count ++ */
            g_DispUserCountState.Hd0DispNum++; /* User HD count ++ */
        }
    }
    /* SD DISP */
    else
    {
        /* create DISP for the first time */
        if (!pDispState->bSd0Disp)
        {
            /* call basic interface for the first time creating DISP globally*/
            if (!g_DispAllCountState.Sd0DispNum)
            {
                Ret = DISP_Open(enDisp);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_DISP("call DISP_Open failed.\n");
                    return Ret;
                }
        //DEBUG_PRINTK("@@@@@@@@@@@@@@@@@@@@@@@@@ sd open!\n");
				if (g_pDispProcPara)
                {
	                /* register SD-display PROC*/
	                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_SD0);
	                pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);

	                if (!pProcItem)
	                {
	                    HI_FATAL_DISP("add %s proc failed.\n", ProcName);
	                    DISP_Close(enDisp);

	                    return HI_ERR_DISP_CREATE_ERR;
	                }
	                pProcItem->read  = g_pDispProcPara->rdproc;
	                pProcItem->write = g_pDispProcPara->wtproc;
				}
            }

        //DEBUG_PRINTK("@@@@@@@@@@@@@@@@@@@@@@@@@ sd ++!\n");

            pDispState->bSd0Disp = HI_TRUE;
            g_DispAllCountState.Sd0DispNum++;  /* Global SD count ++ */
            g_DispUserCountState.Sd0DispNum++; /* User SD count ++   */
        }
    }

    return HI_SUCCESS;
}

#ifndef MINI_SYS_SURPORT
//extern signed int VO_Destroy_And_SwitchFromCast(HI_BOOL force_flag,HI_HANDLE  cast_handle);
#endif

HI_S32 DISP_ExtClose(HI_UNF_DISP_E enDisp, DISP_STATE_S *pDispState)
{
    HI_CHAR      ProcName[12];
    HI_S32       Ret = HI_SUCCESS;

    /* destroy HD DISP */
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        if (g_DispUserCountState.Hd0DispNum == 0)
        {
            HI_WARN_DISP("Already Close User Hd0DispNum=0\n");
            return 0;
        }

        g_DispAllCountState.Hd0DispNum --;  /* Global HD count -- */
        g_DispUserCountState.Hd0DispNum--;  /* User HD count --   */

        //DEBUG_PRINTK("&&&&&&&&&&&&&&&&&&&&& hd --!\n");
#ifndef MINI_SYS_SURPORT
        //if(pDispState->bMiraCast == 1)
             //VO_Destroy_And_SwitchFromCast(1,1);
#endif
        if (!g_DispAllCountState.Hd0DispNum)
        {
            snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_HD0);
            HI_DRV_PROC_RemoveModule(ProcName);

            Ret = DISP_Close(enDisp);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_DISP("call DISP_Close failed.\n");
            }
            //DEBUG_PRINTK("&&&&&&&&&&&&&&&&&&&&& set disp close hd!\n");

            g_s32DispAttachCount = 0;
        }

        pDispState->bHd0Disp = HI_FALSE;
    }
    /* destroy SD DISP */
    else
    {
        if (g_DispUserCountState.Sd0DispNum == 0)
        {
            HI_WARN_DISP("Already Close User Sd0DispNum=0\n");
            return 0;
        }
        g_DispAllCountState.Sd0DispNum --;  /* Global SD count -- */
        g_DispUserCountState.Sd0DispNum--;  /* User   SD count -- */

        //DEBUG_PRINTK("&&&&&&&&&&&&&&&&&&&&& sd --!\n");

        if (!g_DispAllCountState.Sd0DispNum)
        {
            snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_SD0);
            HI_DRV_PROC_RemoveModule(ProcName);

            Ret = DISP_Close(enDisp);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_DISP("call DISP_Close failed.\n");
            }
            //DEBUG_PRINTK("&&&&&&&&&&&&&&&&&&&&& set disp close sd!\n");
        }

        pDispState->bSd0Disp = HI_FALSE;
    }

    return Ret;
}

#ifndef HI_VDP_ONLY_SD_SUPPORT
HI_S32 DISP_ExtAttach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32 nRet;

    if ( (enDstDisp != HI_UNF_DISP_SD0) || (enSrcDisp != HI_UNF_DISP_HD0))
    {
        HI_FATAL_DISP("Attach parameters invalid.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    if (!g_s32DispAttachCount)
    {
        nRet = DISP_Attach(enDstDisp, enSrcDisp);
    }
    else
    {
        nRet = HI_SUCCESS;
    }

    if (HI_SUCCESS == nRet)
    {
        g_s32DispAttachCount++;
    }

    return nRet;
}

HI_S32 DISP_ExtDetach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32 nRet = HI_FAILURE;

    if ( (enDstDisp != HI_UNF_DISP_SD0) || (enSrcDisp != HI_UNF_DISP_HD0))
    {
        HI_FATAL_DISP("Attach parameters invalid.\n");
        return HI_ERR_DISP_INVALID_OPT;
    }

    if (g_s32DispAttachCount <= 0)
    {
        return HI_SUCCESS;
    }

    if (1 == g_s32DispAttachCount)
    {
        nRet = DISP_Detach(enDstDisp, enSrcDisp);
    }
    else
    {
        nRet = HI_SUCCESS;
    }

    if (HI_SUCCESS == nRet)
    {
        g_s32DispAttachCount--;
    }

    return nRet;
}
#endif

HI_S32 DISP_CheckPara(HI_UNF_DISP_E enDisp, DISP_STATE_S *pDispState)
{
    /* if HD DISP, return success */
    if ((HI_UNF_DISP_HD0 == enDisp) && pDispState->bHd0Disp)
    {
        return HI_SUCCESS;
    }

    /* if SD DISP, return success */
    if ((HI_UNF_DISP_SD0 == enDisp) && pDispState->bHd0Disp)
    {
        return HI_SUCCESS;
    }

    return HI_ERR_DISP_INVALID_PARA;
}

HI_S32 DISP_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)

{
    DISP_STATE_S    *pDispState;
    HI_S32          Ret = HI_FAILURE;

    if (down_interruptible(&g_DispMutex))
    {
        HI_ERR_DISP("down_interruptible fail!\n");
        return HI_FAILURE;
    }
    pDispState = file->private_data;

    switch (cmd)
    {
        case CMD_DISP_ATTACH:
        {
            DISP_ATTACH_S  *pDispAttach;

            pDispAttach = (DISP_ATTACH_S *)arg;
#ifndef HI_VDP_ONLY_SD_SUPPORT
            Ret = DISP_ExtAttach(pDispAttach->enDstDisp, pDispAttach->enSrcDisp);
#else
            HI_ERR_DISP("Not Support Attaching operation.\n");
            Ret = HI_FAILURE;
#endif
            break;
        }

        case CMD_DISP_DETACH:
        {
            DISP_ATTACH_S  *pDispAttach;

            pDispAttach = (DISP_ATTACH_S *)arg;
#ifndef HI_VDP_ONLY_SD_SUPPORT
            Ret = DISP_ExtDetach(pDispAttach->enDstDisp, pDispAttach->enSrcDisp);
#else
            HI_ERR_DISP("Not Support Detaching operation.\n");
            Ret = HI_FAILURE;
#endif
            break;
        }

        case CMD_DISP_OPEN:
        {
            DISP_CHECK_CHANNEL(*((HI_UNF_DISP_E *)arg));
            Ret = DISP_ExtOpen(*((HI_UNF_DISP_E *)arg), pDispState);
            DISP_REVISE_CHANNEL(*((HI_UNF_DISP_E *)arg));
            break;
        }

        case CMD_DISP_CLOSE:
        {
            DISP_CHECK_CHANNEL(*((HI_UNF_DISP_E *)arg));
            Ret = DISP_CheckPara(*((HI_UNF_DISP_E *)arg), pDispState);
            if (HI_SUCCESS == Ret)
            {
                Ret = DISP_ExtClose(*((HI_UNF_DISP_E *)arg), pDispState);
                DISP_REVISE_CHANNEL(*((HI_UNF_DISP_E *)arg));
                //printk("CMD_DISP_CLOSE!\n");
            }
            else
            {
                Ret = HI_SUCCESS;
            }

            break;
        }

        case CMD_DISP_AttachOsd:
        {
            DISP_OSD_S  *pDispOsd;

            pDispOsd = (DISP_OSD_S *)arg;
            DISP_CHECK_CHANNEL(pDispOsd->enDisp);
            Ret = DISP_AttachOsd(pDispOsd->enDisp, pDispOsd->enLayer);
            DISP_REVISE_CHANNEL(pDispOsd->enDisp);
            break;
        }

        case CMD_DISP_DetachOsd:
        {
            DISP_OSD_S  *pDispOsd;

            pDispOsd = (DISP_OSD_S *)arg;
            DISP_CHECK_CHANNEL(pDispOsd->enDisp);
            Ret = DISP_DetachOsd(pDispOsd->enDisp, pDispOsd->enLayer);
            DISP_REVISE_CHANNEL(pDispOsd->enDisp);
            break;
        }

        case CMD_DISP_SET_ENABLE:
        {
            DISP_ENABLE_S  *pDispEnable;

            pDispEnable = (DISP_ENABLE_S *)arg;
            DISP_CHECK_CHANNEL(pDispEnable->enDisp);
            Ret = DISP_CheckPara(pDispEnable->enDisp, pDispState);
            if (HI_SUCCESS == Ret)
            {
                Ret = DISP_SetEnable(pDispEnable->enDisp, pDispEnable->bEnable);
            }
            DISP_REVISE_CHANNEL(pDispEnable->enDisp);
            break;
        }

        case CMD_DISP_GET_ENABLE:
        {
            DISP_ENABLE_S  *pDispEnable;

            pDispEnable = (DISP_ENABLE_S *)arg;
            DISP_CHECK_CHANNEL(pDispEnable->enDisp);
            Ret = DISP_GetEnable(pDispEnable->enDisp, &pDispEnable->bEnable);
            DISP_REVISE_CHANNEL(pDispEnable->enDisp);
            break;
        }

        case CMD_DISP_SET_INTF:
        {
            DISP_INTF_S  *pDispIntf;

            pDispIntf = (DISP_INTF_S *)arg;
            DISP_CHECK_CHANNEL(pDispIntf->enDisp);
            Ret = DISP_SetIntfType(pDispIntf->enDisp, pDispIntf->IntfType);
            DISP_REVISE_CHANNEL(pDispIntf->enDisp);
            break;
        }

        case CMD_DISP_GET_INTF:
        {
            DISP_INTF_S  *pDispIntf;

            pDispIntf = (DISP_INTF_S *)arg;
            DISP_CHECK_CHANNEL(pDispIntf->enDisp);
            Ret = DISP_GetIntfType(pDispIntf->enDisp, &pDispIntf->IntfType);
            DISP_REVISE_CHANNEL(pDispIntf->enDisp);
            break;
        }

        case CMD_DISP_SET_FORMAT:
        {
            DISP_FORMAT_S  *pDispFormat;

            pDispFormat = (DISP_FORMAT_S *)arg;
            DISP_CHECK_CHANNEL(pDispFormat->enDisp);
            Ret = DISP_SetFormat(pDispFormat->enDisp, pDispFormat->EncodingFormat);
            DISP_REVISE_CHANNEL(pDispFormat->enDisp);
            break;
        }

        case CMD_DISP_GET_FORMAT:
        {
            DISP_FORMAT_S  *pDispFormat;

            pDispFormat = (DISP_FORMAT_S *)arg;
            DISP_CHECK_CHANNEL(pDispFormat->enDisp);
            Ret = DISP_GetFormat(pDispFormat->enDisp, &pDispFormat->EncodingFormat);
            DISP_REVISE_CHANNEL(pDispFormat->enDisp);
            break;
        }

        case CMD_DISP_GET_LCD_FORMAT:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_FORMAT_S  *pDispFormat;

            pDispFormat = (DISP_FORMAT_S *)arg;
            DISP_CHECK_CHANNEL(pDispFormat->enDisp);
            Ret = DISP_GetLcdFormat(pDispFormat->enDisp,
                                    (OPTM_DISP_LCD_FMT_E *)(&pDispFormat->EncodingFormat));
            DISP_REVISE_CHANNEL(pDispFormat->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_DAC:
        {
            Ret = DISP_SetDacMode((HI_UNF_DISP_INTERFACE_S *)arg);

            break;
        }

        case CMD_DISP_GET_DAC:
        {
            Ret = DISP_GetDacMode((HI_UNF_DISP_INTERFACE_S *)arg);

            break;
        }

        case CMD_DISP_SET_LCD:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_LCD_S  *pDispLcd;

            pDispLcd = (DISP_LCD_S *)arg;
            DISP_CHECK_CHANNEL(pDispLcd->enDisp);
            Ret = DISP_SetLcdPara(pDispLcd->enDisp, &pDispLcd->LcdPara);
            DISP_REVISE_CHANNEL(pDispLcd->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_LCD:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_LCD_S  *pDispLcd;

            pDispLcd = (DISP_LCD_S *)arg;
            DISP_CHECK_CHANNEL(pDispLcd->enDisp);
            Ret = DISP_GetLcdPara(pDispLcd->enDisp, &pDispLcd->LcdPara);
            DISP_REVISE_CHANNEL(pDispLcd->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_LCD_DEF_PARA:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_GET_LCD_DEFAULTPARA_S  *pDispLcdGetDefaultParm;

            pDispLcdGetDefaultParm = (DISP_GET_LCD_DEFAULTPARA_S *)arg;

            Ret = DISP_GetLcdDefaultPara(pDispLcdGetDefaultParm->enLcdFmt, &pDispLcdGetDefaultParm->LcdPara);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_LCD_DEF_PARA:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_SET_LCD_DEFAULTPARA_S  *pDispLcdSetDefaultParm;

            pDispLcdSetDefaultParm = (DISP_SET_LCD_DEFAULTPARA_S *)arg;
            DISP_CHECK_CHANNEL(pDispLcdSetDefaultParm->enDisp);
            Ret = DISP_SetLcdDefaultPara(pDispLcdSetDefaultParm->enDisp, pDispLcdSetDefaultParm->enLcdFmt);
            DISP_REVISE_CHANNEL(pDispLcdSetDefaultParm->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_ZORDER:
        {
            DISP_ZORDER_S   *pDispZorder;

            pDispZorder = (DISP_ZORDER_S *)arg;
            DISP_CHECK_CHANNEL(pDispZorder->enDisp);
            Ret = DISP_SetLayerZorder(pDispZorder->enDisp, pDispZorder->Layer, pDispZorder->ZFlag);
            DISP_REVISE_CHANNEL(pDispZorder->enDisp);
            break;
        }

        case CMD_DISP_GET_ORDER:
        {
            DISP_ORDER_S    *pDispOrder;

            pDispOrder = (DISP_ORDER_S *)arg;
            DISP_CHECK_CHANNEL(pDispOrder->enDisp);
            Ret = DISP_GetLayerZorder(pDispOrder->enDisp, pDispOrder->Layer, &pDispOrder->Order);
            DISP_REVISE_CHANNEL(pDispOrder->enDisp);
            break;
        }

        case CMD_DISP_SET_BGC:
        {
            DISP_BGC_S  *pDispBgc;

            pDispBgc = (DISP_BGC_S *)arg;
            DISP_CHECK_CHANNEL(pDispBgc->enDisp);
            Ret = DISP_SetBgColor(pDispBgc->enDisp, &pDispBgc->BgColor);
            DISP_REVISE_CHANNEL(pDispBgc->enDisp);
            break;
        }

        case CMD_DISP_GET_BGC:
        {
            DISP_BGC_S  *pDispBgc;

            pDispBgc = (DISP_BGC_S *)arg;
            DISP_CHECK_CHANNEL(pDispBgc->enDisp);
            Ret = DISP_GetBgColor(pDispBgc->enDisp, &pDispBgc->BgColor);
            DISP_REVISE_CHANNEL(pDispBgc->enDisp);
            break;
        }

        case CMD_DISP_SET_BRIGHT:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetBright(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_BRIGHT:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetBright(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_SET_CONTRAST:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetContrast(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_CONTRAST:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetContrast(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_SET_SATURATION:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetSaturation(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_SATURATION:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetSaturation(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_SET_HUE:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetHue(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_HUE:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetHue(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_SET_COLORTEMP:
        {
            DISP_COLORTEMP_S  *pDispColorTemp;

            pDispColorTemp = (DISP_COLORTEMP_S *)arg;
            DISP_CHECK_CHANNEL(pDispColorTemp->enDisp);
            Ret = DISP_SetColorTemperature(pDispColorTemp->enDisp, &pDispColorTemp->colortempvalue);
            DISP_REVISE_CHANNEL(pDispColorTemp->enDisp);
            break;
        }

        case CMD_DISP_GET_COLORTEMP:
        {
            DISP_COLORTEMP_S  *pDispColorTemp;

            pDispColorTemp = (DISP_COLORTEMP_S *)arg;
            DISP_CHECK_CHANNEL(pDispColorTemp->enDisp);
            Ret = DISP_GetColorTemperature(pDispColorTemp->enDisp, &pDispColorTemp->colortempvalue);
            DISP_REVISE_CHANNEL(pDispColorTemp->enDisp);
            break;
        }

        case CMD_DISP_SET_ACC:
        {
#ifdef HI_DISP_ACC_SUPPORT
            DISP_ACC_S    *pDispAcc;

            pDispAcc = (DISP_ACC_S *)arg;
            DISP_CHECK_CHANNEL(pDispAcc->enDisp);
            Ret = DISP_SetAccEnable(pDispAcc->enDisp, pDispAcc->bEnable);
            DISP_REVISE_CHANNEL(pDispAcc->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SEND_TTX:
        {
            DISP_TTX_S  *pDispTtx;

            pDispTtx = (DISP_TTX_S *)arg;
#ifdef HI_DISP_TTX_SUPPORT
            DISP_CHECK_CHANNEL(pDispTtx->enDisp);
            Ret = DISP_SendTtxData(pDispTtx->enDisp, &pDispTtx->TtxData);
            DISP_REVISE_CHANNEL(pDispTtx->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SEND_VBI:
        {
#ifdef HI_DISP_CC_SUPPORT
            DISP_VBI_S  *pDispVbi;

            pDispVbi = (DISP_VBI_S *)arg;
            DISP_CHECK_CHANNEL(pDispVbi->enDisp);
            Ret = DISP_SendVbiData(pDispVbi->enDisp, &pDispVbi->VbiData);
            DISP_REVISE_CHANNEL(pDispVbi->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_WSS:
        {
#ifdef  HI_DISP_CGMS_SUPPORT
            DISP_WSS_S  *pDispWss;

            pDispWss = (DISP_WSS_S *)arg;
            DISP_CHECK_CHANNEL(pDispWss->enDisp);
            Ret = DISP_SetWss(pDispWss->enDisp, &pDispWss->WssData);
            DISP_REVISE_CHANNEL(pDispWss->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_MCRVSN:
        {
#ifdef  HI_DISP_MACROVISION_SUPPORT
            DISP_MCRVSN_S  *pDispMcrvsn;

            pDispMcrvsn = (DISP_MCRVSN_S *)arg;
            DISP_CHECK_CHANNEL(pDispMcrvsn->enDisp);
            Ret = DISP_SetMcrvsn(pDispMcrvsn->enDisp, pDispMcrvsn->Mcrvsn);
            DISP_REVISE_CHANNEL(pDispMcrvsn->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_MCRVSN:
        {
#ifdef  HI_DISP_MACROVISION_SUPPORT
            DISP_MCRVSN_S  *pDispMcrvsn;

            pDispMcrvsn = (DISP_MCRVSN_S *)arg;
            DISP_CHECK_CHANNEL(pDispMcrvsn->enDisp);
            Ret = DISP_GetMcrvsn(pDispMcrvsn->enDisp, &pDispMcrvsn->Mcrvsn);
            DISP_REVISE_CHANNEL(pDispMcrvsn->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_HDMI_INTF:
        {
            DISP_HDMIINF_S  *pDispHdmiIntf;

            pDispHdmiIntf = (DISP_HDMIINF_S *)arg;
            DISP_CHECK_CHANNEL(pDispHdmiIntf->enDisp);
            Ret = DISP_GetHdmiIntf(pDispHdmiIntf->enDisp, &pDispHdmiIntf->HDMIInf);
            DISP_REVISE_CHANNEL(pDispHdmiIntf->enDisp);
            break;
        }

        case CMD_DISP_SET_HDMI_INTF:
        {
            DISP_HDMIINF_S  *pDispHdmiIntf;

            pDispHdmiIntf = (DISP_HDMIINF_S *)arg;
            DISP_CHECK_CHANNEL(pDispHdmiIntf->enDisp);
            Ret = DISP_SetHdmiIntf(pDispHdmiIntf->enDisp, &pDispHdmiIntf->HDMIInf);
            DISP_REVISE_CHANNEL(pDispHdmiIntf->enDisp);
            break;
        }
        /* 2011-05-18 HuangMinghu
         * CGMS
         */
        case CMD_DISP_SET_CGMS:
        {
            //DEBUG_PRINTK("#DISP_Ioctl@disp_intf_k.c\n");

#ifdef HI_DISP_CGMS_SUPPORT
            DISP_CGMS_S  *pDispCgms;

            pDispCgms = (DISP_CGMS_S *)arg;
            DISP_CHECK_CHANNEL(pDispCgms->enDisp);
            Ret = DISP_SetCGMS(pDispCgms->enDisp, &pDispCgms->stCgmsCfg);
            DISP_REVISE_CHANNEL(pDispCgms->enDisp);
#else
            HI_ERR_DISP("Disp not support set CGMS operation.\n");
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }
         case CMD_DISP_SET_DISP_WIN:
        {
            //DEBUG_PRINTK("#DISP_Ioctl@disp_intf_k.c\n");

            DISP_OUTRECT_S  *pDispOutRect;

            pDispOutRect = (DISP_OUTRECT_S *)arg;
            DISP_CHECK_CHANNEL(pDispOutRect->enDisp);
            Ret = DISP_SetDispWin(pDispOutRect->enDisp, &pDispOutRect->stOutRectCfg);
            DISP_REVISE_CHANNEL(pDispOutRect->enDisp);
            break;
        }
        case CMD_DISP_SET_TCCSC:
        {
#ifndef  HI_VDP_ONLY_SD_SUPPORT
            DISP_TCCSC_S*  pDispCsc;
            pDispCsc = (DISP_TCCSC_S*)arg;
            if ((pDispCsc->bEnable == 1) && (pDispCsc->enDisp == HI_UNF_DISP_HD0) )
            {
                Ret = DISP_SetColorSpace(HI_UNF_DISP_HD0, OPTM_CS_eRGB);
            }
#else
            HI_ERR_DISP("Disp not support set TCCSC operation.\n");
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

#if  0
        case CMD_DISP_OPEN_MIRROR:
        {
            /*theorial,struct is simple variables, should not use copy_from_use.*/
            DISP_MIRROR_CFG_S  *mirror_cfg = (DISP_MIRROR_CFG_S*)arg;
            Ret = DISP_OpenMirror(mirror_cfg);
            if(Ret == HI_SUCCESS)
                        pDispState->bMiraCast = 1;

            break;
        }
        case CMD_DISP_CLOSE_MIRROR:
        {
            HI_HANDLE  cast_handle = *(HI_HANDLE*)arg;
            Ret = DISP_CloseMirror(cast_handle);
            if(Ret == HI_SUCCESS)
                        pDispState->bMiraCast = 0;
            break;
        }
        case CMD_DISP_MIRROR_SETENABLE:
        {
            DISP_MIRROR_ENBALE_S  mirror_enable = *(DISP_MIRROR_ENBALE_S *)arg;
            Ret = DISP_SetMirror_Enable(&mirror_enable);
            break;
        }
        case CMD_DISP_MIRROR_GETENABLE:
        {
            DISP_MIRROR_ENBALE_S  *mirror_enable_status = (DISP_MIRROR_ENBALE_S *)arg;
            Ret = DISP_GetMirror_Enable(mirror_enable_status);
            break;
        }
        case CMD_DISP_MIRROR_GETFRAME:
        {
            DISP_MIRROR_FRAME_S  *mirror_frame = (DISP_MIRROR_FRAME_S  *)arg;
            Ret = DISP_GetMirror_Frame(mirror_frame);
            break;
        }
        case CMD_DISP_MIRROR_PUTFRAME:
        {
            DISP_MIRROR_FRAME_S  *mirror_frame = (DISP_MIRROR_FRAME_S  *)arg;
            Ret = DISP_PutMirror_Frame(mirror_frame);
            break;
        }
#endif
        case CMD_DISP_SET_DISP_DEFAUL:
        {
            Ret = DISP_SetDispDefault();
			break;
		}
        default:
            up(&g_DispMutex);
            return -ENOIOCTLCMD;
    }

    up(&g_DispMutex);
    return Ret;
}


HI_S32 DISP_DRV_Open(struct inode *finode, struct file  *ffile)
{
    DISP_STATE_S    *pDispState = HI_NULL;
    HI_S32          Ret;

    if (down_interruptible(&g_DispMutex))
    {
        HI_FATAL_DISP("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    pDispState = kmalloc(sizeof(DISP_STATE_S), GFP_KERNEL);
    if (!pDispState)
    {
        HI_FATAL_DISP("malloc pDispState failed.\n");
        up(&g_DispMutex);
        return -1;

    }

    if (1 == atomic_inc_return(&g_DispCount))
    {
        /* for configuration such as start clock, pins re-use, etc  */
        Ret = DISP_Init();
        if (Ret != HI_SUCCESS)
        {
            kfree(pDispState);
            HI_FATAL_DISP("call DISP_Init failed.\n");
            atomic_dec(&g_DispCount);
            up(&g_DispMutex);
            return -1;
        }

        // add for multiple process
        g_s32DispAttachCount = 0;
    }

    pDispState->bSd0Disp = HI_FALSE;
    pDispState->bHd0Disp = HI_FALSE;

    ffile->private_data = pDispState;

    up(&g_DispMutex);
    return 0;
}


HI_S32 DISP_DRV_Close(struct inode *finode, struct file  *ffile)
{
    DISP_STATE_S    *pDispState;
    HI_S32          Ret;

    if (down_interruptible(&g_DispMutex))
    {
        HI_FATAL_DISP("down_interruptible fail.\n");
        return HI_FAILURE;
    }

    pDispState = ffile->private_data;

    if (pDispState->bHd0Disp)
    {
//DEBUG_PRINTK("DISP_DRV_Close close hd gain \n");
        Ret = DISP_ExtClose(HI_UNF_DISP_HD0, pDispState);
        if (Ret != HI_SUCCESS)
        {
            up(&g_DispMutex);
            return -1;
        }
    }

    if (pDispState->bSd0Disp)
    {
//DEBUG_PRINTK("DISP_DRV_Close close sd gain \n");
        Ret = DISP_ExtClose(HI_UNF_DISP_SD0, pDispState);
        if (Ret != HI_SUCCESS)
        {
            up(&g_DispMutex);
            return -1;
        }
    }

    if (atomic_dec_and_test(&g_DispCount))
    {
        /* for close of clock */
        DISP_DeInit();

//DEBUG_PRINTK("DISP_DRV_Close DISP_DeInit\n");

        // add for multiple process
        g_s32DispAttachCount = 0;
    }

    kfree(ffile->private_data);

    up(&g_DispMutex);
    return 0;
}

HI_S32 DISP_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    HI_S32 Ret;

    Ret = down_trylock(&g_DispMutex);
    if (Ret)
    {
        HI_FATAL_DISP("down g_DispMutex failed.\n");
        return -1;
    }

    /* no process opened the equipment, return directly */
    if ((!atomic_read(&g_DispCount)) || (HI_TRUE == g_DispSuspend))
    {
        up(&g_DispMutex);
        return 0;
    }

    g_DispSuspend = HI_TRUE;
    msleep(50);

    /* save HD DISP registers */
    DISP_SaveDXD(HI_UNF_DISP_HD0);

    /* save SD DISP registers */
    DISP_SaveDXD(HI_UNF_DISP_SD0);

    /* save public registers */
    DISP_SaveCommon();

    HI_FATAL_DISP("DISP suspend OK.\n");

    up(&g_DispMutex);
    return 0;
}

EXPORT_SYMBOL(DISP_Suspend);
HI_S32 EXPORT_DISP_Suspend(HI_VOID)
{
    HI_S32 Ret;
    pm_message_t state;

    memset(&state,0,sizeof(pm_message_t));
    Ret = DISP_Suspend(HI_NULL,state);
    return Ret;
}



HI_BOOL bDispResumeMask = HI_FALSE;
HI_S32 Disp_SetResumeMask(HI_BOOL bMask)
{
    bDispResumeMask = bMask;
    return HI_SUCCESS;
}

EXPORT_SYMBOL(Disp_SetResumeMask);

#define PM_DISP_RESUME_MASK_ADDR 0x101e00c4
#define PM_DISP_RESUME_MASK 2
static inline HI_S32 DRV_DSIP_GetResumeMask(void)
{
    HI_S32 s32Ret = 0;
    s32Ret =  readl((HI_VOID *)IO_ADDRESS(PM_DISP_RESUME_MASK_ADDR));
    if ((PM_DISP_RESUME_MASK ==  s32Ret) && (HI_TRUE == bDispResumeMask))
    {
        return HI_TRUE;
    }
    return HI_FALSE;
}

HI_S32 DISP_Resume(PM_BASEDEV_S *pdev)
{
    HI_S32  Ret;

    Ret = down_trylock(&g_DispMutex);
    if (Ret)
    {
        HI_FATAL_DISP("down g_DispMutex failed.\n");
        return -1;
    }

    /* no process opened the equipment, return directly */
    if ((!atomic_read(&g_DispCount)) || (HI_TRUE == DRV_DSIP_GetResumeMask()) || (HI_FALSE == g_DispSuspend))
    {
        up(&g_DispMutex);
        return 0;
    }

    /* restore public registers */
    DISP_RestoreCommon();

    /* restore HD DISP registers */
    if (g_DispAllCountState.Hd0DispNum)
    {
        DISP_RestoreDXD(HI_UNF_DISP_HD0, HI_TRUE);
    }
    else
    {
        DISP_RestoreDXD(HI_UNF_DISP_HD0, HI_FALSE);
    }

    /* restore SD DISP registers */
    if (g_DispAllCountState.Sd0DispNum)
    {
        DISP_RestoreDXD(HI_UNF_DISP_SD0, HI_TRUE);
    }
    else
    {
        DISP_RestoreDXD(HI_UNF_DISP_SD0, HI_FALSE);
    }

    g_DispSuspend = HI_FALSE;

    HI_FATAL_DISP("DISP resume OK.\n");

    up(&g_DispMutex);
    return 0;
}

EXPORT_SYMBOL(DISP_Resume);
HI_S32 EXPORT_DISP_Resume(HI_VOID)
{
    HI_S32 Ret;

    Ret = DISP_Resume(HI_NULL);
    return Ret;
}


HI_S32 DISP_MOD_Ioctl(unsigned int cmd, HI_VOID *arg);


/***************************************************************************************
* func          : s_DispExportFuncs
* description   : CNcomment: hifb need function from display CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
extern HI_VOID HIFB_DRV_GetOps(HI_VOID *Ops);

static DISP_EXPORT_FUNC_S s_DispExportFuncs =
		{
		    .pfnDispGetIntfType    = DISP_GetIntfType,
		    .pfnDispGetFormat      = DISP_GetFormat,
		    .pfnDsipGetHdmiIntf    = DISP_GetHdmiIntf,
		    .pfnDsipSetGfxEnable   = DISP_SetGfxEnable,
		    .pfnDsipModIoctrl      = DISP_MOD_Ioctl,
		    .pfnHifbGetOp          = HIFB_DRV_GetOps,
		    .pfnDispGetSaturation  = DISP_GetSaturation,
		    .pfnDispGetContrast    = DISP_GetContrast,
		    .pfnDispGetBright      = DISP_GetBright,
		    .pfnDispGetHue         = DISP_GetHue,
		    .pfnDispSuspend        = EXPORT_DISP_Suspend,
		    .pfnDispResume         = EXPORT_DISP_Resume,
		    .pfnDispSetResumeMask  = Disp_SetResumeMask,
		};


HI_VOID HI_DRV_DISP_ModExit(HI_VOID)
{
    HI_DRV_MODULE_UnRegister(HI_ID_DISP);
}

HI_S32 HI_DRV_DISP_ModInit(HI_VOID)
{
    HI_S32  Ret;

    Ret = DISP_BaseRegInit();
    if (HI_SUCCESS != Ret)
    {
      HI_FATAL_DISP("DISP_BaseRegInit  failed\n");
      return Ret;
    }

        Ret = HI_DRV_MODULE_Register(HI_ID_DISP, "HI_DISP", (HI_VOID*)&s_DispExportFuncs);
        if (HI_SUCCESS != Ret)
        {
            HI_FATAL_DISP("HI_DRV_MODULE_Register DISP failed\n");
            return Ret;
        }

    g_DispAllCountState.Sd0DispNum = 0;
    g_DispAllCountState.Hd0DispNum = 0;
    g_DispSuspend = HI_FALSE;
    bDispResumeMask = HI_FALSE;

    g_DispModState.bHd0Disp = HI_FALSE;
    g_DispModState.bSd0Disp = HI_FALSE;

    return  0;
}


#ifndef MODULE

/* for intf */
//EXPORT_SYMBOL(DISP_Ioctl);
//EXPORT_SYMBOL(DISP_DRV_Open);
//EXPORT_SYMBOL(DISP_DRV_Close);
//EXPORT_SYMBOL(DISP_Suspend);
//EXPORT_SYMBOL(DISP_Resume);
//EXPORT_SYMBOL(DISP_IntfRegister);
//EXPORT_SYMBOL(DISP_IntfUnRegister);
//EXPORT_SYMBOL(DISP_GetOptmDispAttr);
//EXPORT_SYMBOL(DISP_GetDacMode);
//EXPORT_SYMBOL(DISP_SetSaturation);
//EXPORT_SYMBOL(DISP_SetFormat);

/* for hifb */
//EXPORT_SYMBOL(DISP_Init);
//EXPORT_SYMBOL(DISP_SetIntfType);
//EXPORT_SYMBOL(DISP_SetLcdDefaultPara);
//EXPORT_SYMBOL(DISP_Open);
//EXPORT_SYMBOL(DISP_SetBright);
//EXPORT_SYMBOL(DISP_SetLayerZorder);
//EXPORT_SYMBOL(DISP_SetBgColor);
//EXPORT_SYMBOL(DISP_Close);
//EXPORT_SYMBOL(DISP_SetDacMode);
//EXPORT_SYMBOL(DISP_SetEnable);
//EXPORT_SYMBOL(DISP_SetContrast);
//EXPORT_SYMBOL(DISP_DeInit);
#endif





HI_S32 DISP_MOD_ExtOpen(HI_UNF_DISP_E enDisp)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    HI_S32            Ret;

    /* HD DISP */
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        if (!g_DispModState.bHd0Disp)
        {
            /* call basic interface for the first time creating DISP */
            if (!g_DispAllCountState.Hd0DispNum)
            {
                Ret = DISP_Open(enDisp);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_DISP("call DISP_Open failed.\n");
                    return Ret;
                }

                if (g_pDispProcPara)
                {
                    /* register HD-display PROC */
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_HD0);
                    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
                    if (!pProcItem)
                    {
                        HI_FATAL_DISP("add %s proc failed.\n", ProcName);
                        DISP_Close(enDisp);

                        return HI_ERR_DISP_CREATE_ERR;
                    }
                    pProcItem->read  = g_pDispProcPara->rdproc;
                    pProcItem->write = g_pDispProcPara->wtproc;
                }
            }

            g_DispModState.bHd0Disp = HI_TRUE;
            g_DispKernelCountState.Hd0DispNum ++;
            g_DispAllCountState.Hd0DispNum    ++;
        }
    }
    /* SD DISP */
    else
    {
        if (!g_DispModState.bSd0Disp)
        {
            /* call basic interface for the first time creating DISP globally*/
            if (!g_DispAllCountState.Sd0DispNum)
            {
                Ret = DISP_Open(enDisp);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_DISP("call DISP_Open failed.\n");
                    return Ret;
                }

                if (g_pDispProcPara)
                {
                    /* register SD-display PROC*/
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_SD0);
                    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
                    if (!pProcItem)
                    {
                        HI_FATAL_DISP("add %s proc failed.\n", ProcName);
                        DISP_Close(enDisp);

                        return HI_ERR_DISP_CREATE_ERR;
                    }
                    pProcItem->read  = g_pDispProcPara->rdproc;
                    pProcItem->write = g_pDispProcPara->wtproc;
                }
            }

            g_DispModState.bSd0Disp = HI_TRUE;
            g_DispKernelCountState.Sd0DispNum ++;
            g_DispAllCountState.Sd0DispNum    ++;
        }
    }

    return HI_SUCCESS;
}

HI_S32 DISP_MOD_ExtClose(HI_UNF_DISP_E enDisp)
{
    HI_CHAR      ProcName[12];
    HI_S32       Ret = HI_SUCCESS;
    HI_INFO_DISP("DISP_MOD_ExtClose enDisp:%D\n", enDisp);

    /* destroy HD DISP */
    if (HI_UNF_DISP_HD0 == enDisp)
    {
        if (g_DispKernelCountState.Hd0DispNum == 0)
        {
            HI_WARN_DISP("Already Close kernel Hd0DispNum=0\n");
            return 0;
        }
        g_DispKernelCountState.Hd0DispNum --;
        g_DispAllCountState.Hd0DispNum    --;

        if (!g_DispAllCountState.Hd0DispNum)
        {
            if (g_pDispProcPara)
            {
                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_HD0);
                HI_DRV_PROC_RemoveModule(ProcName);
            }

            Ret = DISP_Close(enDisp);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_DISP("call DISP_Close failed.\n");
            }
            g_DispModState.bHd0Disp = HI_FALSE;
        }
    }
    /* destroy SD DISP */
    else
    {
        if (g_DispKernelCountState.Sd0DispNum== 0)
        {
            HI_WARN_DISP("Already Close kernel Sd0DispNum=0\n");
            return 0;
        }
        g_DispKernelCountState.Sd0DispNum --;
        g_DispAllCountState.Sd0DispNum    --;

        if (!g_DispAllCountState.Sd0DispNum)
        {
            if (g_pDispProcPara)
            {
                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_DISP, HI_UNF_DISP_SD0);
                HI_DRV_PROC_RemoveModule(ProcName);
            }

            Ret = DISP_Close(enDisp);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_DISP("call DISP_Close failed.\n");
            }
            g_DispModState.bSd0Disp = HI_FALSE;
        }
    }

    return Ret;
}

HI_S32 DISP_MOD_Ioctl(unsigned int cmd, HI_VOID *arg)
{
    DISP_STATE_S    *pDispState;
    HI_S32          Ret = HI_FAILURE;

    if (down_interruptible(&g_DispMutex))
    {
        HI_ERR_DISP("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    pDispState = &g_DispModState;

    switch (cmd)
    {
        case CMD_DISP_OPEN:
        {
            DISP_CHECK_CHANNEL(*((HI_UNF_DISP_E *)arg));
            Ret = DISP_MOD_ExtOpen(*((HI_UNF_DISP_E *)arg));
            DISP_REVISE_CHANNEL(*((HI_UNF_DISP_E *)arg));
            break;
        }

        case CMD_DISP_CLOSE:
        {
            DISP_CHECK_CHANNEL(*((HI_UNF_DISP_E *)arg));
            Ret = DISP_CheckPara(*((HI_UNF_DISP_E *)arg), pDispState);
            if (HI_SUCCESS == Ret)
            {
                Ret = DISP_MOD_ExtClose(*((HI_UNF_DISP_E *)arg));
                DISP_REVISE_CHANNEL(*((HI_UNF_DISP_E *)arg));
                //printk("CMD_DISP_CLOSE!\n");
            }
            else
            {
                Ret = HI_SUCCESS;
            }

            break;
        }

        case CMD_DISP_ATTACH:
        {
            DISP_ATTACH_S  *pDispAttach;

            pDispAttach = (DISP_ATTACH_S *)arg;
#ifndef HI_VDP_ONLY_SD_SUPPORT
            Ret = DISP_ExtAttach(pDispAttach->enDstDisp, pDispAttach->enSrcDisp);
#else
            HI_ERR_DISP("Not Support Attaching operation.\n");
            Ret = HI_FAILURE;
#endif
            break;
        }

        case CMD_DISP_DETACH:
        {
            DISP_ATTACH_S  *pDispAttach;

            pDispAttach = (DISP_ATTACH_S *)arg;
#ifndef HI_VDP_ONLY_SD_SUPPORT
            Ret = DISP_ExtDetach(pDispAttach->enDstDisp, pDispAttach->enSrcDisp);
#else
            HI_ERR_DISP("Not Support Detaching operation.\n");
            Ret = HI_FAILURE;
#endif
            break;
        }

        case CMD_DISP_SET_DAC:
        {
            Ret = DISP_SetDacMode((HI_UNF_DISP_INTERFACE_S *)arg);

            break;
        }

        case CMD_DISP_SET_FORMAT:
        {
            DISP_FORMAT_S  *pDispFormat;

            pDispFormat = (DISP_FORMAT_S *)arg;
            DISP_CHECK_CHANNEL(pDispFormat->enDisp);
            Ret = DISP_SetFormat(pDispFormat->enDisp, pDispFormat->EncodingFormat);
            DISP_REVISE_CHANNEL(pDispFormat->enDisp);
            break;
        }

        case CMD_DISP_SET_BGC:
        {
            DISP_BGC_S  *pDispBgc;

            pDispBgc = (DISP_BGC_S *)arg;
            DISP_CHECK_CHANNEL(pDispBgc->enDisp);
            Ret = DISP_SetBgColor(pDispBgc->enDisp, &pDispBgc->BgColor);
            DISP_REVISE_CHANNEL(pDispBgc->enDisp);
            break;
        }

        case CMD_DISP_GET_BGC:
        {
            DISP_BGC_S  *pDispBgc;

            pDispBgc = (DISP_BGC_S *)arg;
            DISP_CHECK_CHANNEL(pDispBgc->enDisp);
            Ret = DISP_GetBgColor(pDispBgc->enDisp, &pDispBgc->BgColor);
            DISP_REVISE_CHANNEL(pDispBgc->enDisp);
            break;
        }

        case CMD_DISP_SET_BRIGHT:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetBright(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_BRIGHT:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetBright(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_SET_CONTRAST:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetContrast(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_CONTRAST:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetContrast(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_SET_SATURATION:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetSaturation(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_SATURATION:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetSaturation(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_SET_HUE:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_SetHue(pDispCsc->enDisp, pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

        case CMD_DISP_GET_HUE:
        {
            DISP_CSC_S  *pDispCsc;

            pDispCsc = (DISP_CSC_S *)arg;
            DISP_CHECK_CHANNEL(pDispCsc->enDisp);
            Ret = DISP_GetHue(pDispCsc->enDisp, &pDispCsc->CscValue);
            DISP_REVISE_CHANNEL(pDispCsc->enDisp);
            break;
        }

#ifdef HI_OPTV5_SUPPORT
        case CMD_DISP_AttachOsd:
        {
            DISP_OSD_S  *pDispOsd;

            pDispOsd = (DISP_OSD_S *)arg;
            DISP_CHECK_CHANNEL(pDispOsd->enDisp);
            Ret = DISP_AttachOsd(pDispOsd->enDisp, pDispOsd->enLayer);
            DISP_REVISE_CHANNEL(pDispOsd->enDisp);
            break;
        }

        case CMD_DISP_DetachOsd:
        {
            DISP_OSD_S  *pDispOsd;

            pDispOsd = (DISP_OSD_S *)arg;
            DISP_CHECK_CHANNEL(pDispOsd->enDisp);
            Ret = DISP_DetachOsd(pDispOsd->enDisp, pDispOsd->enLayer);
            DISP_REVISE_CHANNEL(pDispOsd->enDisp);
            break;
        }

        case CMD_DISP_SET_ENABLE:
        {
            DISP_ENABLE_S  *pDispEnable;

            pDispEnable = (DISP_ENABLE_S *)arg;
            DISP_CHECK_CHANNEL(pDispEnable->enDisp);
            Ret = DISP_CheckPara(pDispEnable->enDisp, pDispState);
            if (HI_SUCCESS == Ret)
            {
                Ret = DISP_SetEnable(pDispEnable->enDisp, pDispEnable->bEnable);
            }
            DISP_REVISE_CHANNEL(pDispEnable->enDisp);
            break;
        }

        case CMD_DISP_GET_ENABLE:
        {
            DISP_ENABLE_S  *pDispEnable;

            pDispEnable = (DISP_ENABLE_S *)arg;
            DISP_CHECK_CHANNEL(pDispEnable->enDisp);
            Ret = DISP_GetEnable(pDispEnable->enDisp, &pDispEnable->bEnable);
            DISP_REVISE_CHANNEL(pDispEnable->enDisp);
            break;
        }

        case CMD_DISP_SET_INTF:
        {
            DISP_INTF_S  *pDispIntf;

            pDispIntf = (DISP_INTF_S *)arg;
            DISP_CHECK_CHANNEL(pDispIntf->enDisp);
            Ret = DISP_SetIntfType(pDispIntf->enDisp, pDispIntf->IntfType);
            DISP_REVISE_CHANNEL(pDispIntf->enDisp);
            break;
        }

        case CMD_DISP_GET_INTF:
        {
            DISP_INTF_S  *pDispIntf;

            pDispIntf = (DISP_INTF_S *)arg;
            DISP_CHECK_CHANNEL(pDispIntf->enDisp);
            Ret = DISP_GetIntfType(pDispIntf->enDisp, &pDispIntf->IntfType);
            DISP_REVISE_CHANNEL(pDispIntf->enDisp);
            break;
        }

        case CMD_DISP_GET_FORMAT:
        {
            DISP_FORMAT_S  *pDispFormat;

            pDispFormat = (DISP_FORMAT_S *)arg;
            DISP_CHECK_CHANNEL(pDispFormat->enDisp);
            Ret = DISP_GetFormat(pDispFormat->enDisp, &pDispFormat->EncodingFormat);
            DISP_REVISE_CHANNEL(pDispFormat->enDisp);
            break;
        }

        case CMD_DISP_GET_LCD_FORMAT:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_FORMAT_S  *pDispFormat;

            pDispFormat = (DISP_FORMAT_S *)arg;
            DISP_CHECK_CHANNEL(pDispFormat->enDisp);
            Ret = DISP_GetLcdFormat(pDispFormat->enDisp,
                                    (OPTM_DISP_LCD_FMT_E *)(&pDispFormat->EncodingFormat));
            DISP_REVISE_CHANNEL(pDispFormat->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_DAC:
        {
            Ret = DISP_GetDacMode((HI_UNF_DISP_INTERFACE_S *)arg);

            break;
        }

        case CMD_DISP_SET_LCD:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_LCD_S  *pDispLcd;

            pDispLcd = (DISP_LCD_S *)arg;
            DISP_CHECK_CHANNEL(pDispLcd->enDisp);
            Ret = DISP_SetLcdPara(pDispLcd->enDisp, &pDispLcd->LcdPara);
            DISP_REVISE_CHANNEL(pDispLcd->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_LCD:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_LCD_S  *pDispLcd;

            pDispLcd = (DISP_LCD_S *)arg;
            DISP_CHECK_CHANNEL(pDispLcd->enDisp);
            Ret = DISP_GetLcdPara(pDispLcd->enDisp, &pDispLcd->LcdPara);
            DISP_REVISE_CHANNEL(pDispLcd->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_LCD_DEF_PARA:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_GET_LCD_DEFAULTPARA_S  *pDispLcdGetDefaultParm;

            pDispLcdGetDefaultParm = (DISP_GET_LCD_DEFAULTPARA_S *)arg;

            Ret = DISP_GetLcdDefaultPara(pDispLcdGetDefaultParm->enLcdFmt, &pDispLcdGetDefaultParm->LcdPara);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_LCD_DEF_PARA:
        {
#ifdef HI_DISP_LCD_SUPPORT
            DISP_SET_LCD_DEFAULTPARA_S  *pDispLcdSetDefaultParm;

            pDispLcdSetDefaultParm = (DISP_SET_LCD_DEFAULTPARA_S *)arg;
            DISP_CHECK_CHANNEL(pDispLcdSetDefaultParm->enDisp);
            Ret = DISP_SetLcdDefaultPara(pDispLcdSetDefaultParm->enDisp, pDispLcdSetDefaultParm->enLcdFmt);
            DISP_REVISE_CHANNEL(pDispLcdSetDefaultParm->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_ZORDER:
        {
            DISP_ZORDER_S   *pDispZorder;

            pDispZorder = (DISP_ZORDER_S *)arg;
            DISP_CHECK_CHANNEL(pDispZorder->enDisp);
            Ret = DISP_SetLayerZorder(pDispZorder->enDisp, pDispZorder->Layer, pDispZorder->ZFlag);
            DISP_REVISE_CHANNEL(pDispZorder->enDisp);
            break;
        }

        case CMD_DISP_GET_ORDER:
        {
            DISP_ORDER_S    *pDispOrder;

            pDispOrder = (DISP_ORDER_S *)arg;
            DISP_CHECK_CHANNEL(pDispOrder->enDisp);
            Ret = DISP_GetLayerZorder(pDispOrder->enDisp, pDispOrder->Layer, &pDispOrder->Order);
            DISP_REVISE_CHANNEL(pDispOrder->enDisp);
            break;
        }

        case CMD_DISP_SET_ACC:
        {
#ifdef HI_DISP_ACC_SUPPORT
            DISP_ACC_S    *pDispAcc;

            pDispAcc = (DISP_ACC_S *)arg;
            DISP_CHECK_CHANNEL(pDispAcc->enDisp);
            Ret = DISP_SetAccEnable(pDispAcc->enDisp, pDispAcc->bEnable);
            DISP_REVISE_CHANNEL(pDispAcc->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SEND_TTX:
        {
#ifdef HI_DISP_TTX_SUPPORT
            DISP_TTX_S  *pDispTtx;

            pDispTtx = (DISP_TTX_S *)arg;
            DISP_CHECK_CHANNEL(pDispTtx->enDisp);
            Ret = DISP_SendTtxData(pDispTtx->enDisp, &pDispTtx->TtxData);
            DISP_REVISE_CHANNEL(pDispTtx->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SEND_VBI:
        {
            DISP_VBI_S  *pDispVbi;

            pDispVbi = (DISP_VBI_S *)arg;
#ifdef HI_DISP_CC_SUPPORT
            DISP_CHECK_CHANNEL(pDispVbi->enDisp);
            Ret = DISP_SendVbiData(pDispVbi->enDisp, &pDispVbi->VbiData);
            DISP_REVISE_CHANNEL(pDispVbi->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_WSS:
        {
#ifdef  HI_DISP_CGMS_SUPPORT
            DISP_WSS_S  *pDispWss;

            pDispWss = (DISP_WSS_S *)arg;
            DISP_CHECK_CHANNEL(pDispWss->enDisp);
            Ret = DISP_SetWss(pDispWss->enDisp, &pDispWss->WssData);
            DISP_REVISE_CHANNEL(pDispWss->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_SET_MCRVSN:
        {
#ifdef  HI_DISP_MACROVISION_SUPPORT
            DISP_MCRVSN_S  *pDispMcrvsn;

            pDispMcrvsn = (DISP_MCRVSN_S *)arg;
            DISP_CHECK_CHANNEL(pDispMcrvsn->enDisp);
            Ret = DISP_SetMcrvsn(pDispMcrvsn->enDisp, pDispMcrvsn->Mcrvsn);
            DISP_REVISE_CHANNEL(pDispMcrvsn->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_MCRVSN:
        {
#ifdef  HI_DISP_MACROVISION_SUPPORT
            DISP_MCRVSN_S  *pDispMcrvsn;

            pDispMcrvsn = (DISP_MCRVSN_S *)arg;
            DISP_CHECK_CHANNEL(pDispMcrvsn->enDisp);
            Ret = DISP_GetMcrvsn(pDispMcrvsn->enDisp, &pDispMcrvsn->Mcrvsn);
            DISP_REVISE_CHANNEL(pDispMcrvsn->enDisp);
#else
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }

        case CMD_DISP_GET_HDMI_INTF:
        {
            DISP_HDMIINF_S  *pDispHdmiIntf;

            pDispHdmiIntf = (DISP_HDMIINF_S *)arg;
            DISP_CHECK_CHANNEL(pDispHdmiIntf->enDisp);
            Ret = DISP_GetHdmiIntf(pDispHdmiIntf->enDisp, &pDispHdmiIntf->HDMIInf);
            DISP_REVISE_CHANNEL(pDispHdmiIntf->enDisp);
            break;
        }

        case CMD_DISP_SET_HDMI_INTF:
        {
            DISP_HDMIINF_S  *pDispHdmiIntf;

            pDispHdmiIntf = (DISP_HDMIINF_S *)arg;
            DISP_CHECK_CHANNEL(pDispHdmiIntf->enDisp);
            Ret = DISP_SetHdmiIntf(pDispHdmiIntf->enDisp, &pDispHdmiIntf->HDMIInf);
            DISP_REVISE_CHANNEL(pDispHdmiIntf->enDisp);
            break;
        }
        /* 2011-06-02 HuangMinghu
         * CGMS
         */
        case CMD_DISP_SET_CGMS:
        {
            //DEBUG_PRINTK("#DISP_Ioctl@disp_intf_k.c\n");
#ifdef  HI_DISP_CGMS_SUPPORT
            DISP_CGMS_S  *pDispCgms;

            pDispCgms = (DISP_CGMS_S *)arg;
            DISP_CHECK_CHANNEL(pDispCgms->enDisp);
            Ret = DISP_SetCGMS(pDispCgms->enDisp, &pDispCgms->stCgmsCfg);
            DISP_REVISE_CHANNEL(pDispCgms->enDisp);
#else
            HI_ERR_DISP("Disp not support set CGMS operation.\n");
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }
        case CMD_DISP_SET_TCCSC:
        {
#ifndef  HI_VDP_ONLY_SD_SUPPORT
            DISP_TCCSC_S*  pDispCsc;
            pDispCsc = (DISP_TCCSC_S*)arg;
            if ((pDispCsc->bEnable == 1) && (pDispCsc->enDisp == HI_UNF_DISP_HD0) )
            {
                Ret = DISP_SetColorSpace(HI_UNF_DISP_HD0, OPTM_CS_eRGB);
            }
#else
            HI_ERR_DISP("Disp not support set TCCSC operation.\n");
            Ret = HI_ERR_DISP_NOT_SUPPORT;
#endif
            break;
        }
#endif
        default:
            up(&g_DispMutex);
            return -ENOIOCTLCMD;
    }

    up(&g_DispMutex);
    return Ret;
}


HI_S32 DISP_MOD_Init(HI_VOID)
{
    HI_S32          Ret;

    if (down_interruptible(&g_DispMutex))
    {
        HI_FATAL_DISP("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    if (1 == atomic_inc_return(&g_DispCount))
    {
        /*add common  funs*/


        /* for configuration such as start clock, re-use pins, etc */
        Ret = DISP_Init();
        if (Ret != HI_SUCCESS)
        {
            HI_FATAL_DISP("call DISP_Init failed.\n");
            atomic_dec(&g_DispCount);
            up(&g_DispMutex);
            return -1;
        }
    }

    up(&g_DispMutex);
    return 0;
}

HI_S32 DISP_MOD_DeInit(HI_VOID)
{
    HI_S32          Ret;

    if (down_interruptible(&g_DispMutex))
    {
        HI_FATAL_DISP("down_interruptible fail!\n");
        return HI_FAILURE;
    }
    HI_INFO_DISP("come to close HD/SD g_DispModState.bHd0Disp:%d, g_DispModState.bSd0Disp:%d\n",
                 g_DispModState.bHd0Disp, g_DispModState.bSd0Disp);

    if (g_DispModState.bHd0Disp)
    {
        HI_INFO_DISP("DISP_MOD_ExtClose HD0\n");
        Ret = DISP_MOD_ExtClose(HI_UNF_DISP_HD0);
        if (Ret != HI_SUCCESS)
        {
            up(&g_DispMutex);
            return -1;
        }
    }

    if (g_DispModState.bSd0Disp)
    {
        HI_INFO_DISP("DISP_MOD_ExtClose SD0\n");
        Ret = DISP_MOD_ExtClose(HI_UNF_DISP_SD0);
        if (Ret != HI_SUCCESS)
        {
            up(&g_DispMutex);
            return -1;
        }
    }
    HI_INFO_DISP("atomic g_DispCount:%d\n", atomic_read(&g_DispCount));
    if (atomic_dec_and_test(&g_DispCount))
    {
        HI_INFO_DISP("close clock\n");

        /* closing clock */
        DISP_DeInit();
    }

    up(&g_DispMutex);
    return 0;
}

//EXPORT_SYMBOL(DISP_MOD_Ioctl);
//EXPORT_SYMBOL(DISP_MOD_ExtOpen);
//EXPORT_SYMBOL(DISP_MOD_ExtClose);
//EXPORT_SYMBOL(DISP_MOD_Init);
//EXPORT_SYMBOL(DISP_MOD_DeInit);


#define  HI_DRV_DISP_ModIoctl  DISP_MOD_Ioctl

//EXPORT_SYMBOL(DRV_DISP_DeInit);


//HI_S32 HI_DRV_DISP_Init(HI_VOID)
HI_S32 HI_DRV_DISP_Init(HI_VOID)
{
    HI_S32 Ret = HI_SUCCESS;

    //HI_DRV_DISP_ModInit();

#ifdef HI_MCE_SUPPORT


    Ret = DISP_MOD_Init();
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_DISP("DRV_DISP_Init DISP failed\n");
        return Ret;
    }
#endif
    return  Ret;
}


HI_VOID HI_DRV_DISP_DeInit(HI_VOID)
{
#ifdef HI_MCE_SUPPORT
    HI_S32 Ret;
    Ret = DISP_MOD_DeInit();
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_DISP("DRV_DISP_DeInit DISP failed\n");
    }
#endif
    //HI_DRV_MODULE_UnRegister(HI_ID_DISP);
    return;
}
//EXPORT_SYMBOL(HI_DRV_DISP_DeInit);

HI_S32 HI_DRV_DISP_Open(HI_UNF_DISP_E enDisp)
{
    HI_S32 Ret;

    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_OPEN, &enDisp);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_Open);

HI_S32 HI_DRV_DISP_Close(HI_UNF_DISP_E enDisp)
{
    HI_S32 Ret;

    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_CLOSE, &enDisp);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_Close);

HI_S32 HI_DRV_DISP_Attach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32 Ret;
    DISP_ATTACH_S  enDispAttach;

    enDispAttach.enDstDisp = enDstDisp;
    enDispAttach.enSrcDisp = enSrcDisp;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_ATTACH, &enDispAttach);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_Attach);

HI_S32 HI_DRV_DISP_Detach(HI_UNF_DISP_E enDstDisp, HI_UNF_DISP_E enSrcDisp)
{
    HI_S32 Ret;
    DISP_ATTACH_S  enDispAttach;

    enDispAttach.enDstDisp = enDstDisp;
    enDispAttach.enSrcDisp = enSrcDisp;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_DETACH, &enDispAttach);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_Detach);


HI_S32 HI_DRV_DISP_SetDacMode(const HI_UNF_DISP_INTERFACE_S *pstDacMode)
{
    HI_S32 Ret;

    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_DAC, (HI_UNF_DISP_INTERFACE_S *)pstDacMode);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetDacMode);

HI_S32 HI_DRV_DISP_SetBgColor(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_BG_COLOR_S *pstBgColor)
{
    HI_S32 Ret;
    DISP_BGC_S  enDispBgc;

    enDispBgc.BgColor = *pstBgColor;
    enDispBgc.enDisp = enDisp;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_BGC,  &enDispBgc);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetBgColor);

HI_S32 HI_DRV_DISP_SetBrightness(HI_UNF_DISP_E enDisp, HI_U32 u32Brightness)
{
    HI_S32 Ret;
    DISP_CSC_S  enDispCsc;

    enDispCsc.CscValue = u32Brightness;
    enDispCsc.enDisp = enDisp;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_BRIGHT,  &enDispCsc);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetBrightness);

HI_S32 HI_DRV_DISP_SetContrast(HI_UNF_DISP_E enDisp, HI_U32 u32Contrast)
{
    HI_S32 Ret;
    DISP_CSC_S  enDispCsc;

    enDispCsc.CscValue = u32Contrast;
    enDispCsc.enDisp = enDisp;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_CONTRAST,  &enDispCsc);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetContrast);

HI_S32 HI_DRV_DISP_SetSaturation(HI_UNF_DISP_E enDisp, HI_U32 u32Saturation)
{
    HI_S32 Ret;
    DISP_CSC_S  enDispCsc;

    enDispCsc.CscValue = u32Saturation;
    enDispCsc.enDisp = enDisp;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_SATURATION,  &enDispCsc);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetSaturation);

HI_S32 HI_DRV_DISP_SetHuePlus(HI_UNF_DISP_E enDisp, HI_U32 u32HuePlus)
{
    HI_S32 Ret;
    DISP_CSC_S  enDispCsc;

    enDispCsc.CscValue = u32HuePlus;
    enDispCsc.enDisp = enDisp;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_HUE,  &enDispCsc);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetHuePlus);

HI_S32 HI_DRV_DISP_SetLcdPara(HI_UNF_DISP_E enDisp, const HI_UNF_DISP_LCD_PARA_S *pstLcdPara)
{
    HI_S32 Ret;
    DISP_LCD_S  enDispLcd;

    enDispLcd.enDisp = enDisp;
    enDispLcd.LcdPara = *pstLcdPara;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_LCD,  &enDispLcd);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetLcdPara);

HI_S32 HI_DRV_DISP_SetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E enEncodingFormat)
{
    HI_S32 Ret;
    DISP_FORMAT_S  enDispFormat;

    enDispFormat.enDisp = enDisp;
    enDispFormat.EncodingFormat = enEncodingFormat;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_FORMAT,  &enDispFormat);
    return Ret;
}

HI_S32 HI_DRV_DISP_GetFormat(HI_UNF_DISP_E enDisp, HI_UNF_ENC_FMT_E *penFormat)
{
    HI_S32 Ret;
    DISP_FORMAT_S  stDispFormat;

    stDispFormat.enDisp = enDisp;
    stDispFormat.EncodingFormat = HI_UNF_ENC_FMT_720P_50;

    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_GET_FORMAT,  &stDispFormat);
    if (HI_SUCCESS == Ret)
    {
        (*penFormat) = stDispFormat.EncodingFormat;
    }

    return Ret;
}

//EXPORT_SYMBOL(HI_DRV_DISP_SetFormat);

HI_S32 HI_DRV_DISP_SetMacrovision(HI_UNF_DISP_E enDisp, HI_UNF_DISP_MACROVISION_MODE_E enMode, const HI_VOID *pData)
{
    HI_S32 Ret;
    DISP_MCRVSN_S  enDispMcrvsn;

    enDispMcrvsn.enDisp = enDisp;
    enDispMcrvsn.Mcrvsn = enMode;
    Ret = HI_DRV_DISP_ModIoctl(CMD_DISP_SET_MCRVSN,  &enDispMcrvsn);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_DISP_SetMacrovision);


HI_S32 HI_DRV_DISP_SetGfxEnable(HI_UNF_DISP_E enDisp, HI_BOOL bEnable)
{
    HI_S32 Ret;
    DISP_CHECK_CHANNEL(enDisp);
    Ret = DISP_SetGfxEnable(enDisp, bEnable);
    DISP_REVISE_CHANNEL(enDisp);
    return Ret;
}

//EXPORT_SYMBOL(HI_DRV_DISP_SetGfxEnable);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
