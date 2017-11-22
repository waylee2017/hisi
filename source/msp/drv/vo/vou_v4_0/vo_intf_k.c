























































/******************************************************************************

*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved.
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon),
*  and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*

 ******************************************************************************
  File Name     : vo_intf.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2009/12/17
  Description   :
  History       :
  1.Date        : 2009/12/17
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

//#include "mpi_priv_vi.h"
//#include "common_dev.h"
//#include "common_proc.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
#include "drv_vo_ext.h"
#include "hi_drv_module.h"

//#include "mpi_priv_vo.h"
#include "drv_vo_ioctl.h"

#include "optm_vo.h"
#include "optm_vo_virtual.h"
#include "optm_regintf.h"
#include "optm_debug.h"
#include "hi_kernel_adapt.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

static atomic_t    g_VoCount = ATOMIC_INIT(0);

VO_GLOBAL_STATE_S   g_VoGlobalState;

VO_STATE_S          g_VoModState;
HI_BOOL     g_VoSuspend = HI_FALSE;

HI_DECLARE_MUTEX(g_VoMutex);

static HI_VO_INTFPARAM_S  *g_pVoProcPara = NULL;

#ifndef HI_VDP_ONLY_SD_SUPPORT
#define VO_CHECK_CHANNEL(enVo)
#define VO_REVISE_CHANNEL(enVo)

#else
/* ckeck the validity of VO ID , only SD channel is valid and SD content is implemented by HD channel when the chip type is 3110EV500.*/
#define VO_CHECK_CHANNEL(enVo) \
    do {                               \
        if ((HI_UNF_VO_SD0 != enVo)) \
        {                           \
            HI_ERR_VO("VO: ch is not support.\n"); \
            return HI_ERR_VO_NOT_SUPPORT;          \
        }                           \
        else{                      \
            enVo = HI_UNF_VO_HD0;\
        }\
    } while (0)

#define VO_REVISE_CHANNEL(enVo) \
    do {                               \
        enVo = HI_UNF_VO_SD0; \
    } while (0)

#endif


static HI_S32 VO_InitUsedProc(HI_VOID)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    HI_U32            i, j;

    /*proc info of the high-definition channel of VO*/
    /*CNcomment:高清VO的PROC */
    if (g_VoModState.bHd0Vo)
    {
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
        pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
        if (!pProcItem)
        {
            HI_FATAL_VO("add %s proc failed.\n", ProcName);
            return HI_ERR_VO_CREATE_ERR;
        }

        pProcItem->read  = g_pVoProcPara->rdProc;
        pProcItem->write = g_pVoProcPara->wtProc;
    }

    /*proc info of the standard-definition channel of VO*/
    /*CNcomment:标清VO的PROC */
    if (g_VoModState.bSd0Vo)
    {
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
        pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
        if (!pProcItem)
        {
            HI_FATAL_VO("add %s proc failed.\n", ProcName);
            if (g_VoModState.bHd0Vo)
            {
                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
                HI_DRV_PROC_RemoveModule(ProcName);
            }

            return HI_ERR_VO_CREATE_ERR;
        }

        pProcItem->read  = g_pVoProcPara->rdProc;
        pProcItem->write = g_pVoProcPara->wtProc;
    }

    /* the proc information of all the windows on HD channel*/
    /*CNcomment:高清VO上所有WINDOW 的PROC*/
    for (i=0; i<WINDOW_MAX_NUM; i++)
    {
        if (g_VoModState.hWin[HI_UNF_VO_HD0][i] != HI_INVALID_HANDLE)
        {
            snprintf(ProcName, sizeof(ProcName), "window%04x", (g_VoModState.hWin[HI_UNF_VO_HD0][i]&0xffff));
            pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
            if (!pProcItem)
            {
                HI_FATAL_VO("add %s proc failed.\n", ProcName);

                for (j=0; j<i; j++)
                {
                    if (g_VoModState.hWin[HI_UNF_VO_HD0][j] != HI_INVALID_HANDLE)
                    {
                        snprintf(ProcName, sizeof(ProcName), "window%04x", g_VoModState.hWin[HI_UNF_VO_HD0][j]&0xffff);
                        HI_DRV_PROC_RemoveModule(ProcName);
                    }
                }

                if (g_VoModState.bSd0Vo)
                {
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
                    HI_DRV_PROC_RemoveModule(ProcName);
                }

                if (g_VoModState.bHd0Vo)
                {
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
                    HI_DRV_PROC_RemoveModule(ProcName);
                }

                return HI_ERR_DISP_CREATE_ERR;
            }

            pProcItem->read  = g_pVoProcPara->winRdProc;
            pProcItem->write = g_pVoProcPara->winWtProc;
        }
    }

    /* the proc information of all the windows on SD channel*/
    /*CNcomment:标清VO上所有WINDOW 的PROC*/
    for (i=0; i<WINDOW_MAX_NUM; i++)
    {
        if (g_VoModState.hWin[HI_UNF_VO_SD0][i] != HI_INVALID_HANDLE)
        {
            snprintf(ProcName, sizeof(ProcName), "window%04x", (g_VoModState.hWin[HI_UNF_VO_SD0][i]&0xffff));
            pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
            if (!pProcItem)
            {
                HI_FATAL_VO("add %s proc failed.\n", ProcName);

                for (j=0; j<i; j++)
                {
                    if (g_VoModState.hWin[HI_UNF_VO_SD0][j] != HI_INVALID_HANDLE)
                    {
                        snprintf(ProcName, sizeof(ProcName), "window%04x", g_VoModState.hWin[HI_UNF_VO_SD0][j]&0xffff);
                        HI_DRV_PROC_RemoveModule(ProcName);
                    }
                }

                for (j=0; j<WINDOW_MAX_NUM; j++)
                {
                    if (g_VoModState.hWin[HI_UNF_VO_HD0][j] != HI_INVALID_HANDLE)
                    {
                        snprintf(ProcName, sizeof(ProcName), "window%04x", g_VoModState.hWin[HI_UNF_VO_HD0][j]&0xffff);
                        HI_DRV_PROC_RemoveModule(ProcName);
                    }
                }

                if (g_VoModState.bSd0Vo)
                {
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
                    HI_DRV_PROC_RemoveModule(ProcName);
                }

                if (g_VoModState.bHd0Vo)
                {
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
                    HI_DRV_PROC_RemoveModule(ProcName);
                }

                return HI_ERR_DISP_CREATE_ERR;
            }

            pProcItem->read  = g_pVoProcPara->winRdProc;
            pProcItem->write = g_pVoProcPara->winWtProc;
        }
    }

    return HI_SUCCESS;
}

static HI_VOID VO_DeInitUsedProc(HI_VOID)
{
    HI_CHAR ProcName[12];
    HI_S32  i;

    for (i=0; i<WINDOW_MAX_NUM; i++)
    {
        snprintf(ProcName, sizeof(ProcName), "window%04x", g_VoModState.hWin[HI_UNF_VO_HD0][i]&0xffff);
        HI_DRV_PROC_RemoveModule(ProcName);
    }

    for (i=0; i<WINDOW_MAX_NUM; i++)
    {
        snprintf(ProcName, sizeof(ProcName), "window%04x", g_VoModState.hWin[HI_UNF_VO_SD0][i]&0xffff);
        HI_DRV_PROC_RemoveModule(ProcName);
    }

    if (g_VoModState.bHd0Vo)
    {
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
        HI_DRV_PROC_RemoveModule(ProcName);
    }

    if (g_VoModState.bSd0Vo)
    {
        snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
        HI_DRV_PROC_RemoveModule(ProcName);
    }

    return;
}

HI_S32 VO_IntfRegister(HI_VO_INTFPARAM_S *VoProcPara)
{
    HI_S32 Ret;

    g_pVoProcPara = VoProcPara;

    Ret = VO_InitUsedProc();
    if (Ret != HI_SUCCESS)
    {
        g_pVoProcPara = HI_NULL;
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

HI_VOID VO_IntfUnRegister(HI_VOID)
{
    VO_DeInitUsedProc();
    g_pVoProcPara = HI_NULL;

    return;
}

#if 0
HI_VO_VIPARAM_S *g_VoViPara = HI_NULL;

HI_S32 VO_VIRegister(HI_VO_VIPARAM_S *VoViPara)
{
    if (HI_NULL == VoViPara)
    {
        return HI_ERR_VO_NULL_PTR;
    }

    g_VoViPara = VoViPara;

    return HI_SUCCESS;
}

HI_VOID VO_VIUnRegister(HI_VOID)
{
    g_VoViPara = HI_NULL;
    return;
}
#endif
/***************************************************************/

HI_S32 VO_ExtCreateWindow(VO_WIN_CREATE_S *pVoWinCreate, VO_STATE_S *pVoState, VO_WIN_CREATE_TYPE_E enVoWinCreateType)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    HI_UNF_VO_E       enVo;
    HI_S32            Ret;

    enVo = pVoWinCreate->WinAttr.enVo;

    if (WINDOW_MAX_NUM == g_VoGlobalState.WinCount[enVo])
    {
        HI_ERR_VO("the window num is max.\n");
        return HI_ERR_VO_CREATE_ERR;
    }

    if (VO_WIN_CREATE_TYPE_ATTACH == enVoWinCreateType)
    {
        Ret = VO_CreateAttachWindow(&pVoWinCreate->WinAttr, &pVoWinCreate->hWindow);
    }
    else if (VO_WIN_CREATE_TYPE_NORMAL == enVoWinCreateType)
    {
        Ret = VO_CreateWindow(&pVoWinCreate->WinAttr, &pVoWinCreate->hWindow);
    }
    else
    {
        Ret = VO_CreateReleaseWindow(&pVoWinCreate->WinAttr, &pVoWinCreate->hWindow);
    }

    if (HI_SUCCESS == Ret)
    {
        snprintf(ProcName, sizeof(ProcName), "window%04x", (pVoWinCreate->hWindow&0xffff));
        pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
        if (!pProcItem)
        {
            HI_FATAL_VO("add %s proc failed.\n", ProcName);
            VO_DestroyWindow(pVoWinCreate->hWindow);
            return HI_ERR_VO_CREATE_ERR;
        }
        pProcItem->read  = g_pVoProcPara->winRdProc;
        pProcItem->write = g_pVoProcPara->winWtProc;

#ifndef  HI_VO_SINGLE_VIDEO_SUPPORT
        pVoState->hWin[enVo][pVoWinCreate->hWindow&0xf] = pVoWinCreate->hWindow;
#else
        //only support one window.
		pVoState->hWin[enVo][0] = pVoWinCreate->hWindow;
#endif
        g_VoGlobalState.WinCount[enVo]++;
    }

    return Ret;
}
HI_S32 VO_ExtCreateMCEWindow(VO_WIN_CREATE_S *pVoWinCreate, VO_STATE_S *pVoState)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    //HI_UNF_DISP_E       enVo;
    HI_S32            Ret;

    //enVo = pVoWinCreate->WinAttr.enVo;
    Ret = VO_CreateMCEWindow(&pVoWinCreate->WinAttr, &pVoWinCreate->hWindow);
    if (HI_SUCCESS == Ret)
    {
        if (g_pVoProcPara)
        {
            snprintf(ProcName, sizeof(ProcName),"window%04x", (pVoWinCreate->hWindow&0xffff));
            pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
            if (!pProcItem)
            {
                HI_FATAL_VO("add %s proc failed.\n", ProcName);
                VO_DestroyWindow(pVoWinCreate->hWindow);
                return HI_ERR_VO_CREATE_ERR;
            }
            pProcItem->read  = g_pVoProcPara->winRdProc;
            pProcItem->write = g_pVoProcPara->winWtProc;
        }
    }

    return Ret;
}

HI_S32 VO_ExtMCEDestroyWindow(HI_HANDLE hWindow, VO_STATE_S *pVoState)
{
    HI_CHAR         ProcName[12];
    //HI_UNF_DISP_E     enVo;
    HI_S32          Ret;

    //enVo = (hWindow & 0xff00) >> 8;

    if (g_pVoProcPara)
    {
        snprintf(ProcName, sizeof(ProcName),"window%04x", hWindow&0xffff);
        HI_DRV_PROC_RemoveModule(ProcName);
    }
    Ret = VO_DestroyWindow(hWindow);
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_VO("call VO_DestroyWindow failed.\n");
    }

    return Ret;
}
HI_S32 VO_ExtDestroyWindow(HI_HANDLE hWindow, VO_STATE_S *pVoState)
{
    HI_CHAR         ProcName[12];
    HI_UNF_VO_E     enVo;
    HI_S32          Ret;

    enVo = (hWindow & 0xff00) >> 8;

    snprintf(ProcName, sizeof(ProcName), "window%04x", hWindow&0xffff);

    HI_DRV_PROC_RemoveModule(ProcName);

    Ret = VO_DestroyWindow(hWindow);
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_VO("call VO_DestroyWindow failed.\n");
    }
#ifndef  HI_VO_SINGLE_VIDEO_SUPPORT
    pVoState->hWin[enVo][hWindow&0xf] = HI_INVALID_HANDLE;
#else
    //only support one window.
	pVoState->hWin[enVo][0] = HI_INVALID_HANDLE;
#endif
    g_VoGlobalState.WinCount[enVo]--;

    return Ret;
}

HI_S32 VO_ExtOpen(HI_UNF_VO_E enVo, VO_STATE_S *pVoState)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    HI_S32            Ret;

    if (HI_UNF_VO_HD0 == enVo)
    {
        /*the first time to create vo*/
        /*CNcomment:该进程第一次创建VO */
        if (!pVoState->bHd0Vo)
        {
            /*gloabally open the vo for the first time through calling the lower-level function.*/
            /*CNcomment:全局第一次创建VO, 则调用底层接口*/
            if (!g_VoGlobalState.Hd0VoNum)
            {
                Ret = VO_Open(enVo);
                if (Ret != HI_SUCCESS)
                {
                    return Ret;
                }

                /*register the proc information for the HD channel.*/
                /*CNcomment:注册高清VO的PROC */
                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
                pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
                if (!pProcItem)
                {
                    HI_FATAL_VO("add %s proc failed.\n", ProcName);
                    VO_Close(enVo);

                    return HI_ERR_VO_CREATE_ERR;
                }
                pProcItem->read  = g_pVoProcPara->rdProc;
                pProcItem->write = g_pVoProcPara->wtProc;
            }

            pVoState->bHd0Vo = HI_TRUE;
            g_VoGlobalState.Hd0VoNum++;
        }
    }
    else
    {
        if (!pVoState->bSd0Vo)
        {
            if (!g_VoGlobalState.Sd0VoNum)
            {
                Ret = VO_Open(enVo);
                if (Ret != HI_SUCCESS)
                {
                    return Ret;
                }

                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
                pProcItem = HI_DRV_PROC_AddModule(ProcName, NULL, HI_NULL);
                if (!pProcItem)
                {
                    HI_FATAL_VO("add %s proc failed.\n", ProcName);
                    VO_Close(enVo);

                    return HI_ERR_VO_CREATE_ERR;
                }
                pProcItem->read  = g_pVoProcPara->rdProc;
                pProcItem->write = g_pVoProcPara->wtProc;
            }

            pVoState->bSd0Vo = HI_TRUE;
            g_VoGlobalState.Sd0VoNum++;
        }
    }

    return HI_SUCCESS;
}

HI_S32 VO_ExtClose(HI_UNF_VO_E enVo, VO_STATE_S *pVoState)
{
    HI_CHAR           ProcName[12];
    HI_S32            Ret = HI_FAILURE;
    HI_U32            i;

    /* close the vo HD channel.*/
    /*CNcomment:销毁高清VO */
    if (HI_UNF_VO_HD0 == enVo)
    {
        /* destroy all the windows on HD channel of vo.*/
        /*CNcomment:销毁高清VO上所有WINDOW */
        for (i=0; i<WINDOW_MAX_NUM; i++)
        {
            if (pVoState->hWin[enVo][i] != HI_INVALID_HANDLE)
            {
                Ret = VO_ExtDestroyWindow(pVoState->hWin[enVo][i], pVoState);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_VO("call VO_ExtDestroyWindow failed.\n");
                    return Ret;
                }
            }
        }

        pVoState->bHd0Vo = HI_FALSE;
        g_VoGlobalState.Hd0VoNum--;

        Ret = HI_SUCCESS;

        if (!g_VoGlobalState.Hd0VoNum)
        {
            snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
            HI_DRV_PROC_RemoveModule(ProcName);

            Ret = VO_Close(enVo);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_VO("call VO_Close failed.\n");
            }
        }
    }
    else
    {
        for (i=0; i<WINDOW_MAX_NUM; i++)
        {
            if (pVoState->hWin[enVo][i] != HI_INVALID_HANDLE)
            {
                Ret = VO_ExtDestroyWindow(pVoState->hWin[enVo][i], pVoState);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_VO("call VO_ExtDestroyWindow failed.\n");
                    return Ret;
                }
            }
        }

        pVoState->bSd0Vo = HI_FALSE;
        g_VoGlobalState.Sd0VoNum--;

        Ret = HI_SUCCESS;

        if (!g_VoGlobalState.Sd0VoNum)
        {
            snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
            HI_DRV_PROC_RemoveModule(ProcName);

            Ret = VO_Close(enVo);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_VO("call VO_Close failed.\n");
            }
        }
    }

    return Ret;
}

HI_S32 VO_CheckPara(HI_UNF_VO_E enVo, VO_STATE_S *pVoState)
{
    if ((HI_UNF_VO_HD0 == enVo) && pVoState->bHd0Vo)
    {
        return HI_SUCCESS;
    }

    if ((HI_UNF_VO_SD0 == enVo) && pVoState->bSd0Vo)
    {
        return HI_SUCCESS;
    }

    return HI_ERR_VO_INVALID_PARA;
}


HI_S32 VO_CheckWindowHanlde(HI_HANDLE hWindow, VO_STATE_S *pVoState)
{
    HI_U32        i;
    HI_UNF_VO_E   enVo;

    enVo = (hWindow & 0xff00) >> 8;
#ifdef HI_VDP_ONLY_SD_SUPPORT
    if (HI_UNF_VO_SD0 == enVo)
    {
        HI_ERR_VO("VO:ch is not support.\n");
        return HI_ERR_VO_INVALID_PARA;
    }
#endif

    if (enVo >= HI_UNF_VO_BUTT)
    {
        HI_ERR_VO("this is invalid handle hWindow:0x%x, enVo:0x%x.\n", hWindow, enVo);
        return HI_ERR_VO_INVALID_PARA;
    }

    for (i=0; i<WINDOW_MAX_NUM; i++)
    {
        if (hWindow == pVoState->hWin[enVo][i])
        {
            break;
        }
    }

    if (WINDOW_MAX_NUM == i)
    {
        HI_ERR_VO("this is invalid handle, 2 hWindow:0x%x, enVo:0x%x.\n", hWindow, enVo);

        return HI_ERR_VO_INVALID_PARA;
    }

    return HI_SUCCESS;
}


HI_S32 VO_Ioctl(struct inode *inode, struct file  *file, unsigned int cmd, HI_VOID *arg)
{
    VO_STATE_S   *pVoState;
    HI_S32        Ret = HI_FAILURE;

    if (down_interruptible(&g_VoMutex))
    {
        HI_FATAL_VO("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    pVoState = file->private_data;

    switch (cmd)
    {
        case CMD_VO_SET_DEV_MODE:
            {
                HI_UNF_VO_DEV_MODE_E *pDevMode;

                pDevMode = (HI_UNF_VO_DEV_MODE_E *)arg;

                Ret = VO_SetDevMode(*pDevMode);

                break;
            }
        case CMD_VO_GET_DEV_MODE:
            {
                HI_UNF_VO_DEV_MODE_E pDevMode = HI_UNF_VO_DEV_MODE_BUTT;
                void __user *argp = (void __user *)arg;

                Ret = VO_GetDevMode(&pDevMode);

                *(HI_UNF_VO_DEV_MODE_E*)argp =  pDevMode;

                break;
            }

        case CMD_VO_OPEN:
        {
            VO_CHECK_CHANNEL(*((HI_UNF_VO_E*)arg));
            Ret = VO_ExtOpen(*((HI_UNF_VO_E*)arg), pVoState);
            VO_REVISE_CHANNEL(*((HI_UNF_VO_E*)arg));
            break;
        }

        case CMD_VO_CLOSE:
            {
                VO_CHECK_CHANNEL(*((HI_UNF_VO_E*)arg));
                Ret = VO_CheckPara(*((HI_UNF_VO_E *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_ExtClose(*((HI_UNF_VO_E *)arg), pVoState);
                    VO_REVISE_CHANNEL(*((HI_UNF_VO_E*)arg));
                }
                else
                {
                    Ret = HI_SUCCESS;
                }

                break;
            }

        case CMD_VO_SET_ENABLE:
            {
                VO_ENABLE_S   *pVoEnable;

                pVoEnable = (VO_ENABLE_S *)arg;
                VO_CHECK_CHANNEL(pVoEnable->enVo);
                Ret = VO_CheckPara(pVoEnable->enVo, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetLayerEnable(pVoEnable->enVo, pVoEnable->bEnable);
                    VO_REVISE_CHANNEL(pVoEnable->enVo);
                }

                break;
            }

        case CMD_VO_GET_ENABLE:
            {
                VO_ENABLE_S   *pVoEnable;

                pVoEnable = (VO_ENABLE_S *)arg;
                VO_CHECK_CHANNEL(pVoEnable->enVo);
                Ret = VO_CheckPara(pVoEnable->enVo, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetLayerEnable(pVoEnable->enVo, &pVoEnable->bEnable);
                    VO_REVISE_CHANNEL(pVoEnable->enVo);
                }

                break;
            }

        case CMD_VO_SET_ALPHA:
            {
                VO_ALPHA_S   *pVoAlpha;

                pVoAlpha = (VO_ALPHA_S *)arg;
                VO_CHECK_CHANNEL(pVoAlpha->enVo);
                Ret = VO_SetAlpha(pVoAlpha->enVo, pVoAlpha->Alhpa);
                VO_REVISE_CHANNEL(pVoAlpha->enVo);
                break;
            }

        case CMD_VO_GET_ALPHA:
            {
                VO_ALPHA_S   *pVoAlpha;

                pVoAlpha = (VO_ALPHA_S *)arg;
                VO_CHECK_CHANNEL(pVoAlpha->enVo);
                Ret = VO_GetAlpha(pVoAlpha->enVo, &pVoAlpha->Alhpa);
                VO_REVISE_CHANNEL(pVoAlpha->enVo);
                break;
            }

        case CMD_VO_SET_RECT:
            {
                VO_RECT_S   *pVoRect;

                pVoRect = (VO_RECT_S *)arg;
                VO_CHECK_CHANNEL(pVoRect->enVo);
                Ret = VO_SetRect(pVoRect->enVo, &pVoRect->Rect);
                VO_REVISE_CHANNEL(pVoRect->enVo);
                break;
            }

        case CMD_VO_GET_RECT:
            {
                VO_RECT_S   *pVoRect;

                pVoRect = (VO_RECT_S *)arg;
                VO_CHECK_CHANNEL(pVoRect->enVo);
                Ret = VO_GetRect(pVoRect->enVo, &pVoRect->Rect);
                VO_REVISE_CHANNEL(pVoRect->enVo);

                break;
            }

        case CMD_VO_WIN_CREATE:
            {
                VO_WIN_CREATE_S  *pVoWinCreate;

                pVoWinCreate = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinCreate->WinAttr.enVo);
                Ret = VO_ExtCreateWindow(pVoWinCreate, pVoState, VO_WIN_CREATE_TYPE_NORMAL);
                VO_REVISE_CHANNEL(pVoWinCreate->WinAttr.enVo);

                break;
            }

        case CMD_VO_WIN_DESTROY:
            {
                Ret = VO_CheckWindowHanlde(*((HI_HANDLE *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_ExtDestroyWindow(*((HI_HANDLE *)arg), pVoState);
                }

                break;
            }

        case CMD_VO_WIN_CREATE_ATTACH:
            {
#ifdef HI_VDP_VIRTUAL_WIN_SUPPORT
                VO_WIN_CREATE_S  *pVoWinCreate;

                pVoWinCreate = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinCreate->WinAttr.enVo);
                Ret = VO_ExtCreateWindow(pVoWinCreate, pVoState, VO_WIN_CREATE_TYPE_ATTACH);
                VO_REVISE_CHANNEL(pVoWinCreate->WinAttr.enVo);
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_CREATE_RELEASE:
            {
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
                VO_WIN_CREATE_S  *pVoWinCreate;

                pVoWinCreate = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinCreate->WinAttr.enVo);
                Ret = VO_ExtCreateWindow(pVoWinCreate, pVoState, VO_WIN_CREATE_TYPE_RELEASE);
                VO_REVISE_CHANNEL(pVoWinCreate->WinAttr.enVo);
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_SET_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowEnable(pVoWinEnable->hWindow, pVoWinEnable->bEnable);
                }

                break;
            }

        case CMD_VO_WIN_GET_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowEnable(pVoWinEnable->hWindow, &pVoWinEnable->bEnable);
                }

                break;
            }

        case CMD_VO_WIN_SET_MAIN_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetMainWindowEnable(pVoWinEnable->hWindow, pVoWinEnable->bEnable);
                }
                break;
            }

        case CMD_VO_WIN_GET_MAIN_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetMainWindowEnable(pVoWinEnable->hWindow, &pVoWinEnable->bEnable);
                }

                break;
            }

#ifdef HI_VDP_VIRTUAL_WIN_SUPPORT
        case CMD_VO_WIN_GET_VIRTUAL:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowVirtual(pVoWinEnable->hWindow, &pVoWinEnable->bEnable);
                }
                break;
            }


        case CMD_VIRTUAL_ACQUIRE_FRAME:
            {
                VO_WIN_FRAME_S   *pVoWinFrame;
                pVoWinFrame = (VO_WIN_FRAME_S*)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = Vou_AcquireFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo);
                }

                break;
            }

        case CMD_VIRTUAL_RELEASE_FRAME:
            {
                VO_WIN_FRAME_S   *pVoWinFrame;
                pVoWinFrame = (VO_WIN_FRAME_S*)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    //Ret = Vou_UsrReleaseFrame(pVoWinFrame->hWindow);
                }

                break;
            }
#endif

        case CMD_VO_WIN_SET_ATTR:
            {
                VO_WIN_CREATE_S   *pVoWinAttr;

                pVoWinAttr = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinAttr->WinAttr.enVo);
                Ret = VO_CheckWindowHanlde(pVoWinAttr->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowAttr(pVoWinAttr->hWindow, &pVoWinAttr->WinAttr);
                }
                VO_REVISE_CHANNEL(pVoWinAttr->WinAttr.enVo);
                break;
            }

        case CMD_VO_WIN_GET_ATTR:
            {
                VO_WIN_CREATE_S   *pVoWinAttr;

                pVoWinAttr = (VO_WIN_CREATE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinAttr->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowAttr(pVoWinAttr->hWindow, &pVoWinAttr->WinAttr);
                }
                VO_REVISE_CHANNEL(pVoWinAttr->WinAttr.enVo);//for 3110EV500: change vo channel from HD back to SD.
                break;
            }

        case CMD_VO_WIN_SET_ZORDER:
            {
                VO_WIN_ZORDER_S  *pVoWinZorder;

                pVoWinZorder = (VO_WIN_ZORDER_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinZorder->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowZorder(pVoWinZorder->hWindow, pVoWinZorder->ZFlag);
                }

                break;
            }

        case CMD_VO_WIN_GET_ORDER:
            {
                VO_WIN_ORDER_S   *pVoWinOrder;

                pVoWinOrder = (VO_WIN_ORDER_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinOrder->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowOrder(pVoWinOrder->hWindow, &pVoWinOrder->Order);
                }

                break;
            }

        case CMD_VO_WIN_ATTACH:
            {
                VO_WIN_ATTACH_S   *pVoWinAttach;

                pVoWinAttach = (VO_WIN_ATTACH_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinAttach->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_AttachWindow(pVoWinAttach->hWindow, pVoWinAttach->hSrc, pVoWinAttach->hSync, pVoWinAttach->ModId);
                }

                break;
            }

        case CMD_VO_WIN_DETACH:
            {
                VO_WIN_ATTACH_S   *pVoWinAttach;

                pVoWinAttach = (VO_WIN_ATTACH_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinAttach->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_DetachWindow(pVoWinAttach->hWindow, pVoWinAttach->hSrc);
                }

                break;
            }

        case CMD_VO_WIN_RATIO:
            {
                VO_WIN_RATIO_S  *pVoWinRatio;

                pVoWinRatio = (VO_WIN_RATIO_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinRatio->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowPlayRatio(pVoWinRatio->hWindow, pVoWinRatio->Ratio);
                }

                break;
            }

        case CMD_VO_WIN_FREEZE:
            {
                VO_WIN_FREEZE_S  *pVoWinFreeze;

                pVoWinFreeze = (VO_WIN_FREEZE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFreeze->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_FreezeWindow(pVoWinFreeze->hWindow, pVoWinFreeze->bEnable, pVoWinFreeze->WinFreezeMode);
                }

                break;
            }

        case CMD_VO_WIN_FIELDMODE:
            {
                VO_WIN_FIELDMODE_S *pVoWinFieldMode;

                pVoWinFieldMode = (VO_WIN_FIELDMODE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFieldMode->hWindow, pVoState);

                if (HI_SUCCESS == Ret)
                {
                    Ret = Vo_SetWindowFieldMode(pVoWinFieldMode->hWindow, pVoWinFieldMode->bEnable);
                }
                break;
            }


        case CMD_VO_WIN_SEND_FRAME:
            {
                VO_WIN_FRAME_S   *pVoWinFrame;

                pVoWinFrame = (VO_WIN_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SendFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo,VO_IFRAME_MODE_NOCOPY);
                }

                break;
            }

        case CMD_VO_WIN_PUT_FRAME:
            {
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
                VO_WIN_FRAME_S   *pVoWinFrame;

                pVoWinFrame = (VO_WIN_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_PutFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo);
                }
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_GET_FRAME:
            {
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
                VO_WIN_FRAME_S   *pVoWinFrame;

                pVoWinFrame = (VO_WIN_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo);
                }
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_RESET:
            {
                VO_WIN_RESET_S  *pVoWinReset;

                pVoWinReset = (VO_WIN_RESET_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinReset->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_ResetWindow(pVoWinReset->hWindow, pVoWinReset->WinFreezeMode);
                }

                break;
            }

        case CMD_VO_WIN_PAUSE:
            {
                VO_WIN_PAUSE_S  *pVoWinPause;

                pVoWinPause = (VO_WIN_PAUSE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinPause->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_PauseWindow(pVoWinPause->hWindow, pVoWinPause->bEnable);
                }

                break;
            }

        case CMD_VO_WIN_GET_DELAY:
            {
                VO_WIN_DELAY_S  *pVoWinDelay;

                pVoWinDelay = (VO_WIN_DELAY_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinDelay->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowDelay(pVoWinDelay->hWindow, &pVoWinDelay->Delay);
                }

                break;
            }

        case CMD_VO_WIN_GET_LAST_FRAME_STATE:
            {
                VO_WIN_LAST_FRAME_S  *pVoWinLastFrameState;

                pVoWinLastFrameState = (VO_WIN_LAST_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinLastFrameState->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowLastFrameState(pVoWinLastFrameState->hWindow, &pVoWinLastFrameState->bLastFrame);
                }

                break;
            }

        case CMD_VO_WIN_STEP_MODE:
            {
                VO_WIN_STEP_MODE_S  *pVoWinStepMode;

                pVoWinStepMode = (VO_WIN_STEP_MODE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinStepMode->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowStepMode(pVoWinStepMode->hWindow, pVoWinStepMode->bStepMode);
                }

                break;
            }

        case CMD_VO_WIN_STEP_PLAY:
            {
                Ret = VO_CheckWindowHanlde(*((HI_HANDLE *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowStepPlay(*((HI_HANDLE *)arg));
                }

                break;
            }

        case CMD_VO_WIN_DIE_MODE:
            {
                Ret = VO_CheckWindowHanlde(*((HI_HANDLE *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_DisableDieMode(*((HI_HANDLE *)arg));
                }

                break;
            }
        case CMD_VO_WIN_DET_MODE:
            {
                VO_WIN_DETECT_S* detInfo = (VO_WIN_DETECT_S*)arg;
                Ret = VO_CheckWindowHanlde(detInfo->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_Set_Det_Mode(*((VO_WIN_DETECT_S *)arg));
                }

                break;
            }
        case CMD_VO_WIN_ATTACH_EXTERNBUF:
            {
#ifdef HI_VDP_EXTERNALBUFFER_SUPPORT
                VO_WIN_BUF_ATTR_S*      winBufAttr = (VO_WIN_BUF_ATTR_S*)arg;
                Ret = VO_CheckWindowHanlde(winBufAttr->hwin, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_AttachExternWbcBufWindows(winBufAttr->hwin,winBufAttr);
                }
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }
        case CMD_VO_WIN_SET_QUICK_OUTPUT:
            {
                VO_WIN_SET_QUICK_OUTPUT_S * stQuickOutputAttr = (VO_WIN_SET_QUICK_OUTPUT_S*)arg;
                Ret = VO_CheckWindowHanlde(stQuickOutputAttr->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetQuickOutputEnable(stQuickOutputAttr->hWindow, stQuickOutputAttr->bQuickOutputEnable);
                }

                break;
            }
        case CMD_VO_USEDNRFRAME:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_UseDNRFrame(pVoWinEnable->hWindow, pVoWinEnable->bEnable);
                }

                break;
            }
        case CMD_VO_ALGCONTROL:
            {
                HI_UNF_ALG_CONTROL_S*  pVoAlgControl;
                pVoAlgControl = (HI_UNF_ALG_CONTROL_S*)arg;
                HI_S32 s32AccRatio = 0;
                HI_UNF_VO_SHARPEN_INFO_S sharpenInfo = {0};

                if(pVoAlgControl->enAlgType == HI_ALG_TYPE_ACC )
                {
                    if (copy_from_user(&s32AccRatio, (void __user *)(pVoAlgControl->alg_info), sizeof(HI_S32)))
                    {
                        HI_ERR_VO("Copy ACC From User failed!\n");
                        return HI_FAILURE;
                    }
                    
                    pVoAlgControl->alg_info = &s32AccRatio;                    
                } 
                else if(pVoAlgControl->enAlgType == HI_ALG_TYPE_SHARPNESS)
                {
                    if (copy_from_user(&sharpenInfo, (void __user *)(pVoAlgControl->alg_info), sizeof(HI_UNF_VO_SHARPEN_INFO_S)))
                    {
                        HI_ERR_VO("Copy SHARPNESS From User failed!\n");
                        return HI_FAILURE;
                    }
                    
                    pVoAlgControl->alg_info = &sharpenInfo; 
                }
                
                Ret = VO_AlgControl(pVoAlgControl);
                break;
            }
        case CMD_VO_WIN_CAPTURE_START:
            {
                VO_WIN_CAPTURE_NEW_S   *pVoWinCapture;

                pVoWinCapture = (VO_WIN_CAPTURE_NEW_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinCapture->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_CapturePictureWithMem(pVoWinCapture->hWindow, &pVoWinCapture->CapPicture, &pVoWinCapture->MemMode);
                }

                break;
            }

        case CMD_VO_WIN_CAPTURE_RELEASE:
            {
                VO_WIN_CAPTURE_RELEASE_S    *pVoWinRls;

                pVoWinRls = (VO_WIN_CAPTURE_RELEASE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinRls->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_CapturePictureRelease(pVoWinRls->hWindow, &(pVoWinRls->CapPicture));
                }

                break;
            }
        case CMD_VO_WIN_CAPTURE_FREE:
            {
                VO_WIN_CAPTURE_FREE_S   *pVoWinRls;

                pVoWinRls = (VO_WIN_CAPTURE_FREE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinRls->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_CapturePictureReleaseMMZ(pVoWinRls->hWindow, &(pVoWinRls->MemMode));
                }

                break;
            }

        case CMD_VO_WIN_GETLATESTFRAME:
            {
                VO_WIN_FRAMEINFO_S *pframeinfo;
                pframeinfo =(VO_WIN_FRAMEINFO_S*)arg;

                VO_GetDisplayFrame(pframeinfo->hWin, pframeinfo->pFrameInfo);
                //printk("----cmd  win handle:%d,pts:%d!\n",pframeinfo->hWin, pframeinfo->pFrameInfo->u32Pts);

                Ret = HI_SUCCESS;
                break;
            }
        case CMD_VO_WIN_SET_RESET_HQ:
            {
                VO_WIN_RESET_HQ_S *pstRstHQ;
                pstRstHQ = (VO_WIN_RESET_HQ_S *)arg;
                Ret = VO_CheckWindowHanlde(pstRstHQ->hWin, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWinRstHQ(pstRstHQ->hWin, pstRstHQ->bEnable);
                }
                break;
            }
        default:
            up(&g_VoMutex);
            return -ENOIOCTLCMD;
    }

    up(&g_VoMutex);
    return Ret;
}


HI_S32 VO_DRV_Open(struct inode *finode, struct file  *ffile)
{
    VO_STATE_S *pVoState = HI_NULL;
    HI_U32     i, j;
    HI_S32     Ret;

    if (down_interruptible(&g_VoMutex))
    {
        HI_FATAL_VO("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    pVoState = kmalloc(sizeof(VO_STATE_S), GFP_KERNEL);
    if (!pVoState)
    {
        HI_FATAL_VO("malloc pVoState failed.\n");
        up(&g_VoMutex);
        return -1;
    }

    if (1 == atomic_inc_return(&g_VoCount))
    {
        Ret = VO_Init();
        if (Ret != HI_SUCCESS)
        {
            kfree(pVoState);
            HI_FATAL_VO("call VO_Init failed.\n");
            atomic_dec(&g_VoCount);
            up(&g_VoMutex);
            return -1;
        }
    }

    pVoState->bSd0Vo = HI_FALSE;
    pVoState->bHd0Vo = HI_FALSE;
    for (i=HI_UNF_VO_SD0; i<HI_UNF_VO_BUTT; i++)
    {
        for (j=0; j<WINDOW_MAX_NUM; j++)
        {
            pVoState->hWin[i][j] = HI_INVALID_HANDLE;
        }
    }

    ffile->private_data = pVoState;

    up(&g_VoMutex);
    return 0;
}


HI_S32 VO_DRV_Close(struct inode *finode, struct file  *ffile)
{
    VO_STATE_S    *pVoState;
    HI_S32        Ret;
    HI_U32        i, j;

    if (down_interruptible(&g_VoMutex))
    {
        HI_FATAL_VO("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    pVoState = ffile->private_data;

    for (i=HI_UNF_VO_SD0; i<HI_UNF_VO_BUTT; i++)
    {
        for (j=0; j<WINDOW_MAX_NUM; j++)
        {
            if (pVoState->hWin[i][j] != HI_INVALID_HANDLE)
            {
                Ret = VO_ExtDestroyWindow(pVoState->hWin[i][j], pVoState);
                if (Ret != HI_SUCCESS)
                {
                    up(&g_VoMutex);
                    return -1;
                }
            }
        }
    }

    if (pVoState->bHd0Vo)
    {
        Ret = VO_ExtClose(HI_UNF_VO_HD0, pVoState);
        if (Ret != HI_SUCCESS)
        {
            up(&g_VoMutex);
            return -1;
        }
    }

    if (pVoState->bSd0Vo)
    {
        Ret = VO_ExtClose(HI_UNF_VO_SD0, pVoState);
        if (Ret != HI_SUCCESS)
        {
            up(&g_VoMutex);
            return -1;
        }
    }

    if (atomic_dec_and_test(&g_VoCount))
    {
        VO_DeInit();
    }

    kfree(ffile->private_data);

    up(&g_VoMutex);

    return 0;
}


extern HI_U32 DISP_Get_CountStatus(void);


HI_S32 VO_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    HI_S32  Ret;

    Ret = down_trylock(&g_VoMutex);
    if (Ret)
    {
        HI_FATAL_VO("down g_VoMutex failed.\n");
        return -1;
    }

    /* just return if no task opened the vo device.*/
    /*CNcomment: 没有进程打开过VO设备，直接返回 */
    if( ((!atomic_read(&g_VoCount)) && (DISP_Get_CountStatus() != HI_TRUE))
         || (HI_TRUE == g_VoSuspend))
    {
        up(&g_VoMutex);
        return 0;
    }

    g_VoSuspend = HI_TRUE;
    msleep(50);

    /* save all the register values of HD channel .*/
    /*CNcomment:保存高清VO寄存器 */
    VO_SaveVXD(HI_UNF_VO_HD0);

    /* save all the register values of SD channel .*/
    /*CNcomment:保存标清VO寄存器 */
    VO_SaveVXD(HI_UNF_VO_SD0);

    HI_FATAL_VO("VO suspend OK.\n");

    up(&g_VoMutex);
    return 0;
}

EXPORT_SYMBOL(VO_Suspend);
HI_S32 EXPORT_VO_Suspend(HI_VOID)
{
    HI_S32 Ret;
    pm_message_t state;

    memset(&state,0,sizeof(pm_message_t));
    Ret = VO_Suspend(HI_NULL,state);
    return Ret;
}


HI_BOOL bVoResumeMask = HI_FALSE;
HI_S32 VO_SetResumeMask(HI_BOOL bMask)
{
    bVoResumeMask = bMask;
	return HI_SUCCESS;
}

EXPORT_SYMBOL(VO_SetResumeMask);

#define PM_VO_RESUME_MASK_ADDR 0x101e00c4
#define PM_VO_RESUME_MASK 2
static inline HI_S32 DRV_VO_GetResumeMask(void)
{
    HI_S32 s32Ret = 0;
    s32Ret =  readl((HI_VOID *)IO_ADDRESS(PM_VO_RESUME_MASK_ADDR));
    if ((PM_VO_RESUME_MASK ==  s32Ret) && (HI_TRUE == bVoResumeMask))
    {
        return HI_TRUE;
    }
    return HI_FALSE;
}

HI_S32 VO_Resume(PM_BASEDEV_S *pdev)
{
    HI_S32  Ret;

    Ret = down_trylock(&g_VoMutex);
    if (Ret)
    {
        HI_FATAL_VO("down g_VoMutex failed.\n");
        return -1;
    }

    if( ((!atomic_read(&g_VoCount)) && (DISP_Get_CountStatus() != HI_TRUE))
         || (HI_TRUE == DRV_VO_GetResumeMask()) || (HI_FALSE == g_VoSuspend) )
    {
        up(&g_VoMutex);
        return 0;
    }

    VO_RestoreVXD(HI_UNF_VO_HD0);

    VO_RestoreVXD(HI_UNF_VO_SD0);

    g_VoSuspend = HI_FALSE;

    HI_FATAL_VO("VO resume OK.\n");

    up(&g_VoMutex);
    return 0;
}

EXPORT_SYMBOL(VO_Resume);
HI_S32 EXPORT_VO_Resume(HI_VOID)
{
    HI_S32 Ret;

    Ret = VO_Resume(HI_NULL);
    return Ret;
}


HI_S32 VO_DebugCtrl(HI_U32 u32Para1, HI_U32 u32Para2)
{
    VO_SetDbgOption(u32Para1, (HI_U32 *)&u32Para2);
    return 0;
}

static VO_EXPORT_FUNC_S s_VoExportFuncs =
        {
            .pfnVoSuspend           = EXPORT_VO_Suspend,
            .pfnVoResume            = EXPORT_VO_Resume,
            .pfnVoSetResumeMask     = VO_SetResumeMask,
        };


HI_VOID VO_ModeExit_0(HI_VOID)
{
    return;
}

HI_S32 HI_DRV_VO_ModInit(HI_VOID)
{
    HI_U32  i, j,Ret;

    Ret = HI_DRV_MODULE_Register(HI_ID_VO, "HI_VO", (HI_VOID*)&s_VoExportFuncs);
    if (HI_SUCCESS != Ret)
    {
        HI_FATAL_VO("HI_DRV_MODULE_Register VO failed\n");
        return Ret;
    }

    g_VoGlobalState.Sd0VoNum = 0;
    g_VoGlobalState.Hd0VoNum = 0;
    for (i=HI_UNF_VO_SD0; i<HI_UNF_VO_BUTT; i++)
    {
        g_VoGlobalState.WinCount[i] = 0;
    }

    g_VoSuspend = HI_FALSE;
    bVoResumeMask = HI_FALSE;

    g_VoModState.bSd0Vo = HI_FALSE;
    g_VoModState.bHd0Vo = HI_FALSE;
    for (i=HI_UNF_VO_SD0; i<HI_UNF_VO_BUTT; i++)
    {
        for (j=0; j<WINDOW_MAX_NUM; j++)
        {
            g_VoModState.hWin[i][j] = HI_INVALID_HANDLE;
        }
    }

    return  0;
}


#ifndef MODULE
//EXPORT_SYMBOL(VO_Ioctl);
//EXPORT_SYMBOL(VO_DRV_Open);
//EXPORT_SYMBOL(VO_DRV_Close);
//EXPORT_SYMBOL(VO_Suspend);
//EXPORT_SYMBOL(VO_Resume);
//EXPORT_SYMBOL(VO_IntfRegister);
//EXPORT_SYMBOL(VO_IntfUnRegister);
//EXPORT_SYMBOL(VO_GetAttrForProc);
//EXPORT_SYMBOL(VO_GetWinAttrForProc);
//EXPORT_SYMBOL(VO_SetWinAttrFromProc);
//EXPORT_SYMBOL(Window_SetWinAttrFromProc);
//EXPORT_SYMBOL(VO_DebugCtrl);
//EXPORT_SYMBOL(Vou_AcquireFrame);
//EXPORT_SYMBOL(Vou_ReleaseFrame);
//
//EXPORT_SYMBOL(VO_SetWindowZorder);
//EXPORT_SYMBOL(VO_SetWindowAttr);
//EXPORT_SYMBOL(VO_SendFrame);
//EXPORT_SYMBOL(VO_SetWindowEnable);
#endif

EXPORT_SYMBOL(g_VoMutex);
//EXPORT_SYMBOL(VO_VIRegister);
//EXPORT_SYMBOL(VO_VIUnRegister);

HI_S32 VO_MOD_ExtCreateWindow(VO_WIN_CREATE_S *pVoWinCreate, VO_WIN_CREATE_TYPE_E enVoWinCreateType)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    HI_UNF_VO_E       enVo;
    HI_S32            Ret;

    enVo = pVoWinCreate->WinAttr.enVo;

    if (WINDOW_MAX_NUM == g_VoGlobalState.WinCount[enVo])
    {
        HI_ERR_VO("the window num is max.\n");
        return HI_ERR_VO_CREATE_ERR;
    }

    if (VO_WIN_CREATE_TYPE_ATTACH == enVoWinCreateType)
    {
        Ret = VO_CreateAttachWindow(&pVoWinCreate->WinAttr, &pVoWinCreate->hWindow);
    }
    else if (VO_WIN_CREATE_TYPE_NORMAL == enVoWinCreateType)
    {
        Ret = VO_CreateWindow(&pVoWinCreate->WinAttr, &pVoWinCreate->hWindow);
    }
    else
    {
        Ret = VO_CreateReleaseWindow(&pVoWinCreate->WinAttr, &pVoWinCreate->hWindow);
    }

    if (HI_SUCCESS == Ret)
    {
        if (g_pVoProcPara)
        {
            snprintf(ProcName, sizeof(ProcName), "window%04x", (pVoWinCreate->hWindow&0xffff));
            pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
            if (!pProcItem)
            {
                HI_FATAL_VO("add %s proc failed.\n", ProcName);
                VO_DestroyWindow(pVoWinCreate->hWindow);
                return HI_ERR_VO_CREATE_ERR;
            }
            pProcItem->read  = g_pVoProcPara->winRdProc;
            pProcItem->write = g_pVoProcPara->winWtProc;
        }
#ifndef  HI_VO_SINGLE_VIDEO_SUPPORT
        g_VoModState.hWin[enVo][pVoWinCreate->hWindow&0xf] = pVoWinCreate->hWindow;
#else
        //only support one window.
		g_VoModState.hWin[enVo][0] = pVoWinCreate->hWindow;
#endif
        g_VoGlobalState.WinCount[enVo]++;
    }

    return Ret;
}

HI_S32 VO_MOD_ExtDestroyWindow(HI_HANDLE hWindow)
{
    HI_CHAR         ProcName[12];
    HI_UNF_VO_E     enVo;
    HI_S32          Ret;

    enVo = (hWindow & 0xff00) >> 8;

    if (g_pVoProcPara)
    {
        snprintf(ProcName, sizeof(ProcName), "window%04x", hWindow&0xffff);
        HI_DRV_PROC_RemoveModule(ProcName);
    }

    Ret = VO_DestroyWindow(hWindow);
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_VO("call VO_DestroyWindow failed.\n");
    }
#ifndef  HI_VO_SINGLE_VIDEO_SUPPORT
    g_VoModState.hWin[enVo][hWindow&0xf] = HI_INVALID_HANDLE;
#else
    //only support one window.
	g_VoModState.hWin[enVo][0] = HI_INVALID_HANDLE;
#endif
    g_VoGlobalState.WinCount[enVo]--;

    return Ret;
}

HI_S32 VO_MOD_ExtOpen(HI_UNF_VO_E enVo)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_CHAR           ProcName[12];
    HI_S32            Ret;

    if (HI_UNF_VO_HD0 == enVo)
    {
        if (!g_VoModState.bHd0Vo)
        {
            if (!g_VoGlobalState.Hd0VoNum)
            {
                Ret = VO_Open(enVo);
                if (Ret != HI_SUCCESS)
                {
                    return Ret;
                }

                if (g_pVoProcPara)
                {
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
                    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
                    if (!pProcItem)
                    {
                        HI_FATAL_VO("add %s proc failed.\n", ProcName);
                        VO_Close(enVo);

                        return HI_ERR_VO_CREATE_ERR;
                    }
                    pProcItem->read  = g_pVoProcPara->rdProc;
                    pProcItem->write = g_pVoProcPara->wtProc;
                }
            }

            g_VoModState.bHd0Vo = HI_TRUE;
            g_VoGlobalState.Hd0VoNum++;
        }
    }
    else
    {
        if (!g_VoModState.bSd0Vo)
        {
            if (!g_VoGlobalState.Sd0VoNum)
            {
                Ret = VO_Open(enVo);
                if (Ret != HI_SUCCESS)
                {
                    return Ret;
                }

                if (g_pVoProcPara)
                {
                    snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
                    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
                    if (!pProcItem)
                    {
                        HI_FATAL_VO("add %s proc failed.\n", ProcName);
                        VO_Close(enVo);

                        return HI_ERR_VO_CREATE_ERR;
                    }
                    pProcItem->read  = g_pVoProcPara->rdProc;
                    pProcItem->write = g_pVoProcPara->wtProc;
                }
            }

            g_VoModState.bSd0Vo = HI_TRUE;
            g_VoGlobalState.Sd0VoNum++;
        }
    }

    return HI_SUCCESS;
}

HI_S32 VO_MOD_ExtClose(HI_UNF_VO_E enVo)
{
    HI_CHAR           ProcName[12];
    HI_S32            Ret;
    HI_U32            i;

    if (HI_UNF_VO_HD0 == enVo)
    {
        for (i=0; i<WINDOW_MAX_NUM; i++)
        {
            if (g_VoModState.hWin[enVo][i] != HI_INVALID_HANDLE)
            {
                Ret = VO_MOD_ExtDestroyWindow(g_VoModState.hWin[enVo][i]);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_VO("call VO_ExtDestroyWindow failed.\n");
                    return Ret;
                }
            }
        }

        g_VoModState.bHd0Vo = HI_FALSE;
        g_VoGlobalState.Hd0VoNum--;

        Ret = HI_SUCCESS;

        if (!g_VoGlobalState.Hd0VoNum)
        {
            if (g_pVoProcPara)
            {
                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_HD0);
                HI_DRV_PROC_RemoveModule(ProcName);
            }

            Ret = VO_Close(enVo);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_VO("call VO_Close failed.\n");
            }
        }
    }
    else
    {
        for (i=0; i<WINDOW_MAX_NUM; i++)
        {
            if (g_VoModState.hWin[enVo][i] != HI_INVALID_HANDLE)
            {
                Ret = VO_MOD_ExtDestroyWindow(g_VoModState.hWin[enVo][i]);
                if (Ret != HI_SUCCESS)
                {
                    HI_FATAL_VO("call VO_ExtDestroyWindow failed.\n");
                    return Ret;
                }
            }
        }

        g_VoModState.bSd0Vo = HI_FALSE;
        g_VoGlobalState.Sd0VoNum--;

        Ret = HI_SUCCESS;

        if (!g_VoGlobalState.Sd0VoNum)
        {
            if (g_pVoProcPara)
            {
                snprintf(ProcName, sizeof(ProcName), "%s%d", HI_MOD_VO, HI_UNF_VO_SD0);
                HI_DRV_PROC_RemoveModule(ProcName);
            }

            Ret = VO_Close(enVo);
            if (Ret != HI_SUCCESS)
            {
                HI_FATAL_VO("call VO_Close failed.\n");
            }
        }
    }

    return Ret;
}

HI_S32 VO_MOD_Ioctl(unsigned int cmd, HI_VOID *arg)
{
    VO_STATE_S   *pVoState;
    HI_S32        Ret;

    if (down_interruptible(&g_VoMutex))
    {
        HI_FATAL_VO("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    pVoState = &g_VoModState;

    switch (cmd)
    {
        case CMD_VO_SET_DEV_MODE:
            {
                HI_UNF_VO_DEV_MODE_E *pDevMode;

                pDevMode = (HI_UNF_VO_DEV_MODE_E *)arg;

                Ret = VO_SetDevMode(*pDevMode);

                break;
            }

        case CMD_VO_OPEN:
            {
                VO_CHECK_CHANNEL(*((HI_UNF_VO_E*)arg));
                Ret = VO_MOD_ExtOpen(*((HI_UNF_VO_E *)arg));
                VO_REVISE_CHANNEL(*((HI_UNF_VO_E*)arg));
                break;
            }

        case CMD_VO_CLOSE:
            {
                VO_CHECK_CHANNEL(*((HI_UNF_VO_E*)arg));
                Ret = VO_CheckPara(*((HI_UNF_VO_E *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_MOD_ExtClose(*((HI_UNF_VO_E *)arg));
                    VO_REVISE_CHANNEL(*((HI_UNF_VO_E*)arg));
                }
                else
                {
                    Ret = HI_SUCCESS;
                }

                break;
            }

#ifdef HI_OPTV5_SUPPORT
        case CMD_VO_SET_ENABLE:
            {
                VO_ENABLE_S   *pVoEnable;

                pVoEnable = (VO_ENABLE_S *)arg;
                VO_CHECK_CHANNEL(pVoEnable->enVo);
                Ret = VO_CheckPara(pVoEnable->enVo, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetLayerEnable(pVoEnable->enVo, pVoEnable->bEnable);
                    VO_REVISE_CHANNEL(pVoEnable->enVo);
                }

                break;
            }

        case CMD_VO_WIN_DET_MODE:

            {
                VO_WIN_DETECT_S *detInfo;
                detInfo = (VO_WIN_DETECT_S *)arg;
                Ret = VO_CheckWindowHanlde(detInfo->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_Set_Det_Mode(*((VO_WIN_DETECT_S *)arg));
                }

                break;
            }

        case CMD_VO_GET_ENABLE:
            {
                VO_ENABLE_S   *pVoEnable;

                pVoEnable = (VO_ENABLE_S *)arg;
                VO_CHECK_CHANNEL(pVoEnable->enVo);
                Ret = VO_CheckPara(pVoEnable->enVo, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetLayerEnable(pVoEnable->enVo, &pVoEnable->bEnable);
                    VO_REVISE_CHANNEL(pVoEnable->enVo);
                }

                break;
            }

        case CMD_VO_SET_ALPHA:
            {
                VO_ALPHA_S   *pVoAlpha;

                pVoAlpha = (VO_ALPHA_S *)arg;
                VO_CHECK_CHANNEL(pVoAlpha->enVo);
                Ret = VO_SetAlpha(pVoAlpha->enVo, pVoAlpha->Alhpa);
                VO_REVISE_CHANNEL(pVoAlpha->enVo);
                break;
            }

        case CMD_VO_GET_ALPHA:
            {
                VO_ALPHA_S   *pVoAlpha;

                pVoAlpha = (VO_ALPHA_S *)arg;
                VO_CHECK_CHANNEL(pVoAlpha->enVo);
                Ret = VO_GetAlpha(pVoAlpha->enVo, &pVoAlpha->Alhpa);
                VO_REVISE_CHANNEL(pVoAlpha->enVo);
                break;
            }

        case CMD_VO_SET_RECT:
            {
                VO_RECT_S   *pVoRect;

                pVoRect = (VO_RECT_S *)arg;
                VO_CHECK_CHANNEL(pVoRect->enVo);
                Ret = VO_SetRect(pVoRect->enVo, &pVoRect->Rect);
                VO_REVISE_CHANNEL(pVoRect->enVo);
                break;
            }

        case CMD_VO_GET_RECT:
            {
                VO_RECT_S   *pVoRect;

                pVoRect = (VO_RECT_S *)arg;
                VO_CHECK_CHANNEL(pVoRect->enVo);
                Ret = VO_GetRect(pVoRect->enVo, &pVoRect->Rect);
                VO_REVISE_CHANNEL(pVoRect->enVo);
                break;
            }

        case CMD_VO_WIN_CREATE:
            {
                VO_WIN_CREATE_S  *pVoWinCreate;

                pVoWinCreate = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinCreate->WinAttr.enVo);
                Ret = VO_MOD_ExtCreateWindow(pVoWinCreate, VO_WIN_CREATE_TYPE_NORMAL);
                VO_REVISE_CHANNEL(pVoWinCreate->WinAttr.enVo);
                break;
            }

        case CMD_VO_WIN_DESTROY:
            {
                Ret = VO_CheckWindowHanlde(*((HI_HANDLE *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_MOD_ExtDestroyWindow(*((HI_HANDLE *)arg));
                }

                break;
            }

        case CMD_VO_WIN_CREATE_ATTACH:
            {
#ifdef HI_VDP_VIRTUAL_WIN_SUPPORT
                VO_WIN_CREATE_S  *pVoWinCreate;

                pVoWinCreate = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinCreate->WinAttr.enVo);
                Ret = VO_MOD_ExtCreateWindow(pVoWinCreate, VO_WIN_CREATE_TYPE_ATTACH);
                VO_REVISE_CHANNEL(pVoWinCreate->WinAttr.enVo);
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_CREATE_RELEASE:
            {
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
                VO_WIN_CREATE_S  *pVoWinCreate;

                pVoWinCreate = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinCreate->WinAttr.enVo);
                Ret = VO_ExtCreateWindow(pVoWinCreate, pVoState, VO_WIN_CREATE_TYPE_RELEASE);
                VO_REVISE_CHANNEL(pVoWinCreate->WinAttr.enVo);
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_SET_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowEnable(pVoWinEnable->hWindow, pVoWinEnable->bEnable);
                }

                break;
            }

        case CMD_VO_WIN_GET_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowEnable(pVoWinEnable->hWindow, &pVoWinEnable->bEnable);
                }

                break;
            }

        case CMD_VO_WIN_SET_MAIN_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetMainWindowEnable(pVoWinEnable->hWindow, pVoWinEnable->bEnable);
                }
                break;
            }

        case CMD_VO_WIN_GET_MAIN_ENABLE:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetMainWindowEnable(pVoWinEnable->hWindow, &pVoWinEnable->bEnable);
                }

                break;
            }

#ifdef HI_VDP_VIRTUAL_WIN_SUPPORT
        case CMD_VO_WIN_GET_VIRTUAL:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowVirtual(pVoWinEnable->hWindow, &pVoWinEnable->bEnable);
                }
                break;
            }


        case CMD_VIRTUAL_ACQUIRE_FRAME:
            {
                VO_WIN_FRAME_S   *pVoWinFrame;
                pVoWinFrame = (VO_WIN_FRAME_S*)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = Vou_AcquireFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo);
                }

                break;
            }

        case CMD_VIRTUAL_RELEASE_FRAME:
            {
                VO_WIN_FRAME_S   *pVoWinFrame;
                pVoWinFrame = (VO_WIN_FRAME_S*)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    //Ret = Vou_UsrReleaseFrame(pVoWinFrame->hWindow);
                }

                break;
            }
#endif

        case CMD_VO_WIN_SET_ATTR:
            {
                VO_WIN_CREATE_S   *pVoWinAttr;

                pVoWinAttr = (VO_WIN_CREATE_S *)arg;
                VO_CHECK_CHANNEL(pVoWinAttr->WinAttr.enVo);
                Ret = VO_CheckWindowHanlde(pVoWinAttr->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowAttr(pVoWinAttr->hWindow, &pVoWinAttr->WinAttr);
                }
                VO_REVISE_CHANNEL(pVoWinAttr->WinAttr.enVo);
                break;
            }

        case CMD_VO_WIN_GET_ATTR:
            {
                VO_WIN_CREATE_S   *pVoWinAttr;

                pVoWinAttr = (VO_WIN_CREATE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinAttr->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowAttr(pVoWinAttr->hWindow, &pVoWinAttr->WinAttr);
                }
                VO_REVISE_CHANNEL(pVoWinAttr->WinAttr.enVo);//for 3110EV500: change vo channel from HD back to SD.
                break;
            }

        case CMD_VO_WIN_SET_ZORDER:
            {
                VO_WIN_ZORDER_S  *pVoWinZorder;

                pVoWinZorder = (VO_WIN_ZORDER_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinZorder->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowZorder(pVoWinZorder->hWindow, pVoWinZorder->ZFlag);
                }

                break;
            }

        case CMD_VO_WIN_GET_ORDER:
            {
                VO_WIN_ORDER_S   *pVoWinOrder;

                pVoWinOrder = (VO_WIN_ORDER_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinOrder->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowOrder(pVoWinOrder->hWindow, &pVoWinOrder->Order);
                }

                break;
            }

        case CMD_VO_WIN_ATTACH:
            {
                VO_WIN_ATTACH_S   *pVoWinAttach;

                pVoWinAttach = (VO_WIN_ATTACH_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinAttach->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_AttachWindow(pVoWinAttach->hWindow, pVoWinAttach->hSrc, pVoWinAttach->hSync, pVoWinAttach->ModId);
                }

                break;
            }

        case CMD_VO_WIN_DETACH:
            {
                VO_WIN_ATTACH_S   *pVoWinAttach;

                pVoWinAttach = (VO_WIN_ATTACH_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinAttach->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_DetachWindow(pVoWinAttach->hWindow, pVoWinAttach->hSrc);
                }

                break;
            }

        case CMD_VO_WIN_RATIO:
            {
                VO_WIN_RATIO_S  *pVoWinRatio;

                pVoWinRatio = (VO_WIN_RATIO_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinRatio->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowPlayRatio(pVoWinRatio->hWindow, pVoWinRatio->Ratio);
                }

                break;
            }

        case CMD_VO_WIN_FREEZE:
            {
                VO_WIN_FREEZE_S  *pVoWinFreeze;

                pVoWinFreeze = (VO_WIN_FREEZE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFreeze->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_FreezeWindow(pVoWinFreeze->hWindow, pVoWinFreeze->bEnable, pVoWinFreeze->WinFreezeMode);
                }

                break;
            }

        case CMD_VO_WIN_FIELDMODE:
            {
                VO_WIN_FIELDMODE_S *pVoWinFieldMode;

                pVoWinFieldMode = (VO_WIN_FIELDMODE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFieldMode->hWindow, pVoState);

                if (HI_SUCCESS == Ret)
                {
                    Ret = Vo_SetWindowFieldMode(pVoWinFieldMode->hWindow, pVoWinFieldMode->bEnable);
                }
                break;
            }



        case CMD_VO_WIN_SEND_FRAME:
            {
                VO_WIN_FRAME_S   *pVoWinFrame;

                pVoWinFrame = (VO_WIN_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SendFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo,VO_IFRAME_MODE_NOCOPY);
                }

                break;
            }

        case CMD_VO_WIN_PUT_FRAME:
            {
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
                VO_WIN_FRAME_S   *pVoWinFrame;

                pVoWinFrame = (VO_WIN_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_PutFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo);
                }
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_GET_FRAME:
            {
#ifdef HI_VDP_PUTGETFRAME_SUPPORT
                VO_WIN_FRAME_S   *pVoWinFrame;

                pVoWinFrame = (VO_WIN_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinFrame->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetFrame(pVoWinFrame->hWindow, &pVoWinFrame->Frameinfo);
                }
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }

        case CMD_VO_WIN_RESET:
            {
                VO_WIN_RESET_S  *pVoWinReset;

                pVoWinReset = (VO_WIN_RESET_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinReset->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_ResetWindow(pVoWinReset->hWindow, pVoWinReset->WinFreezeMode);
                }

                break;
            }

        case CMD_VO_WIN_PAUSE:
            {
                VO_WIN_PAUSE_S  *pVoWinPause;

                pVoWinPause = (VO_WIN_PAUSE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinPause->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_PauseWindow(pVoWinPause->hWindow, pVoWinPause->bEnable);
                }

                break;
            }

        case CMD_VO_WIN_GET_DELAY:
            {
                VO_WIN_DELAY_S  *pVoWinDelay;

                pVoWinDelay = (VO_WIN_DELAY_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinDelay->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowDelay(pVoWinDelay->hWindow, &pVoWinDelay->Delay);
                }

                break;
            }

        case CMD_VO_WIN_GET_LAST_FRAME_STATE:
            {
                VO_WIN_LAST_FRAME_S  *pVoWinLastFrameState;

                pVoWinLastFrameState = (VO_WIN_LAST_FRAME_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinLastFrameState->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_GetWindowLastFrameState(pVoWinLastFrameState->hWindow, &pVoWinLastFrameState->bLastFrame);
                }

                break;
            }

        case CMD_VO_WIN_STEP_MODE:
            {
                VO_WIN_STEP_MODE_S  *pVoWinStepMode;

                pVoWinStepMode = (VO_WIN_STEP_MODE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinStepMode->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowStepMode(pVoWinStepMode->hWindow, pVoWinStepMode->bStepMode);
                }

                break;
            }

        case CMD_VO_WIN_STEP_PLAY:
            {
                Ret = VO_CheckWindowHanlde(*((HI_HANDLE *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetWindowStepPlay(*((HI_HANDLE *)arg));
                }

                break;
            }

        case CMD_VO_WIN_DIE_MODE:
            {
                Ret = VO_CheckWindowHanlde(*((HI_HANDLE *)arg), pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_DisableDieMode(*((HI_HANDLE *)arg));
                }

                break;
            }
        case CMD_VO_WIN_ATTACH_EXTERNBUF:
            {
#ifdef HI_VDP_EXTERNALBUFFER_SUPPORT
                VO_WIN_BUF_ATTR_S*      winBufAttr = (VO_WIN_BUF_ATTR_S*)arg;
                Ret = VO_CheckWindowHanlde(winBufAttr->hwin, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_AttachExternWbcBufWindows(winBufAttr->hwin,winBufAttr);
                }
#else
                Ret = HI_ERR_VO_NOT_SUPPORT;
#endif
                break;
            }
        case CMD_VO_WIN_SET_QUICK_OUTPUT:
            {
                VO_WIN_SET_QUICK_OUTPUT_S * stQuickOutputAttr = (VO_WIN_SET_QUICK_OUTPUT_S*)arg;
                Ret = VO_CheckWindowHanlde(stQuickOutputAttr->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_SetQuickOutputEnable(stQuickOutputAttr->hWindow, stQuickOutputAttr->bQuickOutputEnable);
                }
                break;
            }
        case CMD_VO_USEDNRFRAME:
            {
                VO_WIN_ENABLE_S   *pVoWinEnable;

                pVoWinEnable = (VO_WIN_ENABLE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinEnable->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_UseDNRFrame(pVoWinEnable->hWindow, pVoWinEnable->bEnable);
                }

                break;
            }
        case CMD_VO_ALGCONTROL:
            {
                HI_UNF_ALG_CONTROL_S*  pVoAlgControl;
                pVoAlgControl = (HI_UNF_ALG_CONTROL_S*)arg;
                Ret = VO_AlgControl(pVoAlgControl);
                break;
            }
        case CMD_VO_WIN_CAPTURE_START:
            {
                VO_WIN_CAPTURE_NEW_S   *pVoWinCapture;

                pVoWinCapture = (VO_WIN_CAPTURE_NEW_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinCapture->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_CapturePictureWithMem(pVoWinCapture->hWindow, &pVoWinCapture->CapPicture, &pVoWinCapture->MemMode);
                }

                break;
            }

        case CMD_VO_WIN_CAPTURE_RELEASE:
            {
                VO_WIN_CAPTURE_RELEASE_S    *pVoWinRls;

                pVoWinRls = (VO_WIN_CAPTURE_RELEASE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinRls->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_CapturePictureRelease(pVoWinRls->hWindow, &(pVoWinRls->CapPicture));
                }

                break;
            }
        case CMD_VO_WIN_CAPTURE_FREE:
            {
                VO_WIN_CAPTURE_FREE_S   *pVoWinRls;

                pVoWinRls = (VO_WIN_CAPTURE_FREE_S *)arg;

                Ret = VO_CheckWindowHanlde(pVoWinRls->hWindow, pVoState);
                if (HI_SUCCESS == Ret)
                {
                    Ret = VO_CapturePictureReleaseMMZ(pVoWinRls->hWindow, &(pVoWinRls->MemMode));
                }

                break;
            }
#endif

        default:
            up(&g_VoMutex);
            return -ENOIOCTLCMD;
    }

    up(&g_VoMutex);
    return Ret;
}

//EXPORT_SYMBOL(VO_MOD_Ioctl);

#define HI_DRV_VO_ModIoctl VO_MOD_Ioctl

HI_S32 VO_MOD_Init(HI_VOID)
{
    HI_S32     Ret;

    if (down_interruptible(&g_VoMutex))
    {
        HI_FATAL_VO("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    if (1 == atomic_inc_return(&g_VoCount))
    {
        Ret = VO_Init();
        if (Ret != HI_SUCCESS)
        {
            HI_FATAL_VO("call VO_Init failed.\n");
            atomic_dec(&g_VoCount);
            up(&g_VoMutex);
            return -1;
        }
    }

    up(&g_VoMutex);
    return 0;
}
//EXPORT_SYMBOL(VO_MOD_Init);

HI_S32 VO_MOD_DeInit(HI_VOID)
{
    HI_S32        Ret;
    HI_U32        i,j;

    if (down_interruptible(&g_VoMutex))
    {
        HI_FATAL_VO("down_interruptible fail!\n");
        return HI_FAILURE;
    }

    for (i=HI_UNF_VO_SD0; i<HI_UNF_VO_BUTT; i++)
    {
        for (j=0; j<WINDOW_MAX_NUM; j++)
        {
            if (g_VoModState.hWin[i][j] != HI_INVALID_HANDLE)
            {
                Ret = VO_MOD_ExtDestroyWindow(g_VoModState.hWin[i][j]);
                if (Ret != HI_SUCCESS)
                {
                    up(&g_VoMutex);
                    return -1;
                }
            }
        }
    }

    if (g_VoModState.bHd0Vo)
    {
        Ret = VO_MOD_ExtClose(HI_UNF_VO_HD0);
        if (Ret != HI_SUCCESS)
        {
            up(&g_VoMutex);
            return -1;
        }
    }

    if (g_VoModState.bSd0Vo)
    {
        Ret = VO_MOD_ExtClose(HI_UNF_VO_SD0);
        if (Ret != HI_SUCCESS)
        {
            up(&g_VoMutex);
            return -1;
        }
    }

    if (atomic_dec_and_test(&g_VoCount))
    {
        VO_DeInit();
    }

    up(&g_VoMutex);
    return 0;
}
//EXPORT_SYMBOL(VO_MOD_DeInit);

/*add for mce interface*/

HI_S32 HI_DRV_VO_Init(HI_VOID)
{
    // HI_DRV_VO_ModInit();
    return VO_MOD_Init();
}
//EXPORT_SYMBOL(HI_DRV_VO_Init);

HI_VOID HI_DRV_VO_DeInit(HI_VOID)
{
    VO_MOD_DeInit();
}
//EXPORT_SYMBOL(HI_DRV_VO_DeInit);

HI_S32  HI_DRV_VO_Open(HI_UNF_VO_E enVo)
{
    HI_S32  Ret;

    Ret = HI_DRV_VO_ModIoctl(CMD_VO_OPEN, &enVo);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_Open);

HI_S32  HI_DRV_VO_Close(HI_UNF_VO_E enVo)
{
    HI_S32  Ret;

    Ret = HI_DRV_VO_ModIoctl(CMD_VO_CLOSE, &enVo);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_Close);


HI_S32 HI_DRV_VO_SetDevMode(HI_UNF_VO_DEV_MODE_E enDevMode)
{
    HI_S32  Ret;

    Ret = HI_DRV_VO_ModIoctl(CMD_VO_SET_DEV_MODE, &enDevMode);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_SetDevMode);


HI_S32  HI_DRV_VO_CreateWindow(const HI_UNF_WINDOW_ATTR_S *pWinAttr, HI_HANDLE *phWindow)
{
    HI_S32 Ret;
    VO_WIN_CREATE_S voWinCreate;
    VO_STATE_S   *pVoState;
    pVoState = &g_VoModState;

    if (NULL == pWinAttr || NULL == phWindow)
    {
        return HI_FAILURE;
    }

    memcpy(&voWinCreate.WinAttr, pWinAttr, sizeof(HI_UNF_WINDOW_ATTR_S));
    VO_CHECK_CHANNEL(voWinCreate.WinAttr.enVo);
    Ret = VO_ExtCreateMCEWindow(&voWinCreate, pVoState);
    VO_REVISE_CHANNEL(voWinCreate.WinAttr.enVo);
    *phWindow = voWinCreate.hWindow;
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_CreateWindow);

HI_S32  HI_DRV_VO_DestroyWindow(HI_HANDLE hWindow)
{
    HI_S32 Ret;
    VO_STATE_S   *pVoState;
    pVoState = &g_VoModState;

    Ret = VO_ExtMCEDestroyWindow(hWindow, pVoState);
    return Ret;
}

HI_S32  HI_DRV_VO_SetWindowEnable(HI_HANDLE hWindow, HI_BOOL bEnable)
{
    HI_S32 Ret;

    Ret = VO_SetWindowEnable(hWindow,bEnable);

    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_SetWindowEnable);

HI_S32  HI_DRV_VO_AttachWindow(HI_HANDLE hWindow,HI_HANDLE hSrc,HI_HANDLE hSync,HI_MOD_ID_E ModId)
{
    HI_S32 Ret;

    Ret = VO_AttachWindow(hWindow, hSrc, hSync, ModId);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_AttachWindow);

HI_S32  HI_DRV_VO_DetachWindow(HI_HANDLE hWindow, HI_HANDLE hSrc)
{
    HI_S32 Ret;

    Ret = VO_DetachWindow(hWindow, hSrc);

    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_DetachWindow);

HI_S32  HI_DRV_VO_ResetWindow(HI_HANDLE hWindow, HI_UNF_WINDOW_FREEZE_MODE_E enWinFreezeMode)
{
    HI_S32 Ret;

    Ret = VO_ResetWindow(hWindow, enWinFreezeMode);

    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_ResetWindow);

HI_S32  HI_DRV_VO_GetWindowDelay(HI_HANDLE hWindow, HI_U32 *pDelay)
{
    HI_S32 Ret;

    Ret =  VO_GetWindowDelay(hWindow,pDelay);

    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_GetWindowDelay);

HI_S32  HI_DRV_VO_GetWindowLastFrameState(HI_HANDLE hWindow, HI_BOOL *pbLastFrameState)
{
    HI_S32 Ret;

    Ret =  VO_GetWindowLastFrameState(hWindow,pbLastFrameState);

    return Ret;
}


HI_S32  HI_DRV_VO_DisableDieMode(HI_HANDLE hWindow)
{
    HI_S32 Ret;

   Ret = VO_DisableDieMode(hWindow);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_DisableDieMode);

HI_S32 HI_DRV_VO_CapturePicture(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
    HI_S32            Ret;
    VO_WIN_CAPTURE_NEW_S VoWinCapture;

    VoWinCapture.MemMode.enAllocMemType = HI_UNF_CAPTURE_NO_ALLOC;
    VoWinCapture.hWindow = hWindow;

    Ret = VO_CapturePictureWithMem(VoWinCapture.hWindow, &VoWinCapture.CapPicture, &VoWinCapture.MemMode);
    //memcpy(&(VoWinCapture.CapPicture.stOutAllocMode), &(VoWinCapture.MemMode), sizeof(VO_CAPTURE_MEM_MODE_S));
    memcpy(pstCapPicture, &(VoWinCapture.CapPicture), sizeof(HI_UNF_CAPTURE_PICTURE_S));
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_CapturePicture);

HI_S32 HI_DRV_VO_CapturePictureRelease(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
#if 1
    HI_S32            Ret;
    VO_WIN_CAPTURE_RELEASE_S    VoWinRls;

    VoWinRls.hWindow = hWindow;
    memcpy(&(VoWinRls.CapPicture), pstCapPicture, sizeof(HI_UNF_CAPTURE_PICTURE_S));

    Ret = VO_CapturePictureRelease(VoWinRls.hWindow, &(VoWinRls.CapPicture));

    return Ret;
#endif
    return HI_SUCCESS;
}
//EXPORT_SYMBOL(HI_DRV_VO_CapturePictureRelease);

HI_S32 HI_DRV_VO_CapturePictureReleaseMMZ(HI_HANDLE hWindow, HI_UNF_CAPTURE_PICTURE_S *pstCapPicture)
{
#if 1
    HI_S32             Ret;
    VO_WIN_CAPTURE_FREE_S   VoWinRls;
    VoWinRls.hWindow = hWindow;
    memcpy(&(VoWinRls.MemMode), &(pstCapPicture->stOutAllocMode), sizeof(HI_UNF_CAPTURE_MEM_MODE_S));

    Ret = VO_CapturePictureReleaseMMZ(VoWinRls.hWindow, &(VoWinRls.MemMode));
    return Ret;
#endif
    return HI_SUCCESS;
}
//EXPORT_SYMBOL(HI_DRV_VO_CapturePictureReleaseMMZ);

HI_S32 HI_DRV_VO_SendFrame(HI_HANDLE hWindow, HI_UNF_VO_FRAMEINFO_S *pFrameinfo)
{
    HI_S32     Ret;

    Ret = VO_SendFrame(hWindow, pFrameinfo,VO_IFRAME_MODE_COPY);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_SendFrame);
HI_S32 HI_DRV_VO_SetWindowZorder(HI_HANDLE hWin, HI_LAYER_ZORDER_E ZFlag)
{
    HI_S32     Ret;
    Ret = VO_SetWindowZorder(hWin,ZFlag);
    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_SetWindowZorder);

HI_S32 HI_DRV_VO_GetVoAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pWinAttr)
{
    HI_S32     Ret;

    Ret = VO_GetWindowAttr(hWin, pWinAttr);
    VO_REVISE_CHANNEL(pWinAttr->enVo);//for 3110EV500: change vo channel from HD back to SD.

    return Ret;

}
//EXPORT_SYMBOL(HI_DRV_VO_SetWindowZorder);

HI_S32 HI_DRV_VO_SetVoAttr(HI_HANDLE hWin, HI_UNF_WINDOW_ATTR_S *pWinAttr)
{
    HI_S32     Ret;

    VO_CHECK_CHANNEL(pWinAttr->enVo);
    Ret = VO_SetWindowAttr(hWin, pWinAttr);
    VO_REVISE_CHANNEL(pWinAttr->enVo);

    return Ret;
}
//EXPORT_SYMBOL(HI_DRV_VO_SetWindowZorder);

#if 0
HI_S32 HI_DRV_VO_SetWindowResetMode(HI_HANDLE hWin, HI_UNF_WINDOW_FREEZE_MODE_E WinFreezeMode)
{
    HI_S32     Ret;
    Ret = VO_SetWindowResetMode(hWin, WinFreezeMode);
    return Ret;
}

HI_S32 HI_DRV_VO_SetWindowPlayRatio(HI_HANDLE hWin, HI_U32 u32PlayRatio)
{
    HI_S32     Ret;
    Ret = VO_SetWindowPlayRatio(hWin,u32PlayRatio);
    return Ret;
}


/***********************************************************************************
* Function:      VO_GetWindowResetMode
* Description:   get window  reset mode.
* Data Accessed:
* Data Updated:
* Input:         hWin -- window  handle
* Output:
* Return:        HI_SUCCESS/errorcode
* Others:
***********************************************************************************/
HI_S32 HI_DRV_VO_GetWindowResetMode(HI_HANDLE hWin, HI_UNF_WINDOW_FREEZE_MODE_E *WinFreezeMode)
{
    HI_S32     Ret;
    Ret = VO_GetWindowResetMode(hWin, WinFreezeMode);
    return Ret;
}
EXPORT_SYMBOL(HI_DRV_VO_SetWindowPlayRatio);
#endif


//
//EXPORT_SYMBOL(HI_DRV_VO_ResetWindow );
//EXPORT_SYMBOL(HI_DRV_VO_DestroyWindow );
//EXPORT_SYMBOL(HI_DRV_VO_SetDevMode );
//EXPORT_SYMBOL(HI_DRV_VO_AttachWindow );
//EXPORT_SYMBOL(HI_DRV_VO_DetachWindow );
//EXPORT_SYMBOL(HI_DRV_VO_CreateWindow );
//
//EXPORT_SYMBOL(HI_DRV_VO_SetWindowEnable );
//EXPORT_SYMBOL(HI_DRV_VO_CapturePicture);
//EXPORT_SYMBOL(HI_DRV_VO_GetWindowDelay);
//EXPORT_SYMBOL(HI_DRV_VO_GetVoAttr);
//EXPORT_SYMBOL(HI_DRV_VO_SetVoAttr);


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */


