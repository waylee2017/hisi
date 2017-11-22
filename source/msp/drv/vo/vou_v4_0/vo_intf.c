























































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

//#include "mpi_priv_vo.h"
#include "drv_vo_ioctl.h"

#include "optm_vo.h"
#include "optm_vo_virtual.h"
#include "optm_regintf.h"
#include "optm_debug.h"

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif


extern HI_S32  VO_Ioctl(struct inode *inode, struct file  *file, unsigned int cmd, HI_VOID *arg);

extern HI_S32  VO_DRV_Open(struct inode *finode, struct file  *ffile);
extern HI_S32  VO_DRV_Close(struct inode *finode, struct file  *ffile);
extern HI_S32  VO_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern HI_S32  VO_Resume(PM_BASEDEV_S *pdev);
extern HI_S32  VO_IntfRegister(HI_VO_INTFPARAM_S *param);
extern HI_VOID VO_IntfUnRegister(HI_VOID);

static UMAP_DEVICE_S g_VoRegisterData;

#if !(0 == HI_PROC_SUPPORT)

extern HI_U8 *g_pEnableString[2];

HI_U8 *g_pVoDevModeString[3] = {"NORMAL", "MOSAIC","STANDALONE"};
HI_U8 *g_pWinFreezeString[2] = {"LAST", "BLACK"};
HI_U8 *g_pWinAspectRatioString[] = {
   "UNKNOWN",
   "4TO3",
   "16TO9",
   "SQUARE",
   "14TO9",
   "221TO1",
   "ZOME",
   "FULL",
   "235TO1",
};

HI_U8 *g_pWinAspectCvrsString[4] = {
    "IGNORE",
    "LETTERBOX",
    "PANANDSCAN",
    "COMBINED"
};
#endif

static HI_S32 VO_ProcRead(struct seq_file *p, HI_VOID *v)
{
#if !(0 == HI_PROC_SUPPORT)
    DRV_PROC_ITEM_S  *pProcItem;
    HI_VO_PROC_ATTR_S      VoAttr;

    pProcItem = p->private;

    if (HI_UNF_VO_HD0 == (pProcItem->entry_name[2] - '0'))
    {
        VO_GetAttrForProc(HI_UNF_VO_HD0, &VoAttr);

        seq_printf(p,"---------Hisilicon HD VO Out Info---------\n");
        seq_printf(p,
                "DevMode              :%s\n"
                "Enable               :%s\n"
                "Alpha                :%d\n"
                "WinNum               :%d\n"
                "WbcBusy              :%d\n"
                "MosaicAcquire        :%d\n"
                "MosaicAcquired       :%d\n"
                "MosaicRelease        :%d\n"
                "MosaicReleased       :%d\n"
                "MosaicUnload         :%d\n"
                "AlgControl              \n"
                "       ACC(0~100)    :%d(0~100)\n"
                "       ACM           :%d\n"
                "       Sharp_HD(0~20):%d\n"
                "       Sharp_SD(0~20):%d\n",

                g_pVoDevModeString[VoAttr.enVoDevMode],
                g_pEnableString[VoAttr.bEnable],
                VoAttr.Alpha,
                VoAttr.ActWinNum,
                VoAttr.u32Wbc1Unload,
                VoAttr.u32MosaicAcquire,
                VoAttr.u32MosaicAcquired,
                VoAttr.u32MosaicRelease,
                VoAttr.u32MosaicReleased,
                VoAttr.u32MosaicUnload,
                VoAttr.s32AccRatio,
                (VoAttr.bAlgFlag >> HI_ALG_TYPE_ACM) & 0x01,
                (HI_S32)(VoAttr.Sharpen_info.s16LTICTIStrengthRatio_hd),
                (HI_S32)(VoAttr.Sharpen_info.s16LTICTIStrengthRatio)
                    );
    }
    else
    {
        VO_GetAttrForProc(HI_UNF_VO_SD0, &VoAttr);

        seq_printf(p,"---------Hisilicon SD VO Out Info---------\n");
        seq_printf(p,
                "DevMode              :%s\n"
                "Enable               :%s\n"
                "Alpha                :%d\n"
                "WinNum               :%d\n",

                g_pVoDevModeString[VoAttr.enVoDevMode],
                g_pEnableString[VoAttr.bEnable],
                VoAttr.Alpha,
                VoAttr.ActWinNum
                );
    }

#endif
    return HI_SUCCESS;
}


HI_VOID VO1_ProcPrintHelp(HI_VOID)
{
    DEBUG_PRINTK("VO input format help:\n"
                "Setup Debug frame:echo 0x100 0x00 >/proc/msp/vo1\n"
                "Dump one VHD frame:echo 0x110 0x00 >/proc/msp/vo1\n"
                "Dump one VAD frame:echo 0x110 0x01 >/proc/msp/vo1\n"
                "Dump one VSD frame:echo 0x110 0x02 >/proc/msp/vo1\n"
                "Exit Debug frame:echo 0x101 0x00 >/proc/msp/vo1\n"
                "echo acm = 0(off)/1(off) > /proc/msp/vo1\n"
                "echo acc = 0(off)~100(maximum) > /proc/msp/vo1\n"
                "echo sharp = 0(HD off)~30(HD maximum) 0(SD off)~30(SD maximum)  > /proc/msp/vo1\n"
                "echo dnr =  0(off)/1(on) > /proc/msp/vo1\n");

}
HI_S32 VO_ProcParsePara(HI_CHAR *pProcPara,HI_CHAR **ppItem,HI_CHAR **ppValue);
static HI_S32 VO_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)

{
#if !(0 == HI_PROC_SUPPORT)
    struct seq_file   *s = file->private_data;
    DRV_PROC_ITEM_S  *pProcItem = s->private;
    HI_CHAR           ProcPara[64]= {0};
    HI_CHAR           szBuffer[41] = {0};
    HI_UNF_VO_E voidnum;
    HI_S32            Ret;
    HI_CHAR           *pItem,*pValue;

    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

    voidnum = (pProcItem->entry_name[2] - '0');

    if(count > 40)
    {
        if(copy_from_user(szBuffer, buf, 40))
        {
            return -EFAULT;
        }
    }
    else
    {
        if(copy_from_user(szBuffer, buf, count))
        {
            return -EFAULT;
        }
    }
    ProcPara[63] ='\0';
    szBuffer[40] ='\0';
    if (!strncasecmp(szBuffer,"HELP", strlen("HELP")))
    {
        VO1_ProcPrintHelp();
    }
    else
    {
    Ret = VO_ProcParsePara(ProcPara,&pItem,&pValue);
    if (HI_SUCCESS != Ret)
    {
        HI_DRV_PROC_ModuleWrite(file, buf, count, ppos, VO_DebugCtrl);
        return -EFAULT;
    }

    VO_SetWinAttrFromProc(voidnum, pItem,pValue);
    }
#endif
    return count;
}

extern struct semaphore g_VoMutex;
static HI_S32 WINDOW_ProcRead(struct seq_file *p, HI_VOID *v)
{
#if !(0 == HI_PROC_SUPPORT)
    DRV_PROC_ITEM_S     *pProcItem;
    HI_U32               WindowId = 0;
    HI_U32               i;
    HI_WIN_PROC_ATTR_S   WinAttr;

    if (down_interruptible(&g_VoMutex))
    {
        HI_ERR_VO("down_interruptible fail!\n");
        return HI_FAILURE;
    }
    pProcItem = p->private;

    for (i=0; i<4; i++)
    {
        if (pProcItem->entry_name[i+6] <= '9')
        {
            WindowId = WindowId | (pProcItem->entry_name[i+6] - '0');
        }
        else
        {
            WindowId = WindowId | (pProcItem->entry_name[i+6] - 'a' + 0xa);
        }

        if (i < 3)
        {
            WindowId = WindowId << 4;
        }
    }

    WindowId = WindowId | (HI_ID_VO << 16);
    if (VO_GetWinAttrForProc(WindowId, &WinAttr) != HI_SUCCESS)
    {
        up(&g_VoMutex);
        return HI_SUCCESS;
    }


    seq_printf(p,"---------Hisilicon WINDOW0x%04x Out Info---------\n", WindowId);
    seq_printf(p,
                "Enable                :%s\n"
                "Reset                 :%s\n"
                "Reset Mode            :%s\n"
                "Freeze                :%s\n"
                "Freeze Mode           :%s\n"
                "Virtual               :%s\n"
                "Field Mode            :%s\n"
                "AspectRatio           :%s\n"
                "AspectCvrs            :%s\n"
                "In  (X/Y/W/H)         :%d/%d/%d/%d\n"
                "ReviseOut (X/Y/W/H)   :%d/%d/%d/%d\n"
                "hSrc                  :%x\n"
                "bStepMode             :%d\n"
                "MainIndex             :%d\n"
                "UseDNRFrame           :%d\n"
                "bProgressive(Det/Set) :%d/%d\n"
                "bTopFirst(Det/Set)    :%d/%d\n"
                "FrameTime             :%d\n"
                "FrameRate             :%d.%d\n"
                "WinRatio              :%d\n"

                "QuickOut              :%d\n"
                "RemainFrmTimeMs       :%d\n"

                "TryReceive            :%d\n"
                "Receive               :%d\n"
                "Unload                :%d\n"
                "Config                :%d\n"
                "Release               :%d\n"
                "SyncPlay              :%d\n"
                "SyncTPlay             :%d\n"
                "SyncRepeat            :%d\n"
                "SyncDiscard           :%d\n"
                "Acquire(Try/Ok) Release(Try/Ok)\n"
                "%10u/%u     \t%u/%u\n"
                "in %d rel %d crt %d nxt %d lst %d lst2 %d\n",

                g_pEnableString[WinAttr.bEnable],
                g_pEnableString[WinAttr.bReset],
                g_pWinFreezeString[WinAttr.enReset],
                g_pEnableString[WinAttr.bFreeze],
                g_pWinFreezeString[WinAttr.enFreeze],
                g_pEnableString[WinAttr.UsrAttr.bVirtual],
                g_pEnableString[WinAttr.bFieldMode],
                g_pWinAspectRatioString[WinAttr.UsrAttr.enAspectRatio],
                g_pWinAspectCvrsString[WinAttr.UsrAttr.enAspectCvrs],
                WinAttr.UsrAttr.stInputRect.s32X,
                WinAttr.UsrAttr.stInputRect.s32Y,
                WinAttr.UsrAttr.stInputRect.s32Width,
                WinAttr.UsrAttr.stInputRect.s32Height,
                WinAttr.UsrAttr.stReviseOutputRect.s32X,
                WinAttr.UsrAttr.stReviseOutputRect.s32Y,
                WinAttr.UsrAttr.stReviseOutputRect.s32Width,
                WinAttr.UsrAttr.stReviseOutputRect.s32Height,
                WinAttr.hSrc,
                WinAttr.bStepMode,
                WinAttr.MainIndex,
                WinAttr.UseDNRFrame,
                WinAttr.DetProgressive,
                WinAttr.bProgressive,
                WinAttr.DetTopFirst,
                WinAttr.bTopFirst,
                WinAttr.FrameTime,
                (0 == WinAttr.InFrameRate)? 0 : WinAttr.InFrameRate/10,
                (0 == WinAttr.InFrameRate)? 0 : WinAttr.InFrameRate%10,
                WinAttr.WinRatio,

                WinAttr.bQuickOutEnable,
                WinAttr.u32WinRemainFrameTimeMs,

                WinAttr.TryReceiveFrames,
                WinAttr.ReceiveFrames,
                WinAttr.UnloadFrames,
                WinAttr.ConfigFrames,
                WinAttr.ReleaseFrames,
                WinAttr.SyncPlayFrames,
                WinAttr.SyncTPlayFrames,
                WinAttr.SyncRepeatFrames,
                WinAttr.SyncDiscardFrames,

                WinAttr.VirAcquire,
                WinAttr.VirAcquired,
                WinAttr.VirRelease,
                WinAttr.VirReleased,

                WinAttr.In,
                WinAttr.Release,
                WinAttr.Current,
                WinAttr.Next,
                WinAttr.LstConfig,
                WinAttr.LstLstConfig
                );
    up(&g_VoMutex);
#endif
    return HI_SUCCESS;
}


HI_S32 VO_ProcParsePara(HI_CHAR *pProcPara,HI_CHAR **ppItem,HI_CHAR **ppValue)
{
    HI_CHAR *pChar = HI_NULL;
    HI_CHAR *pItem,*pValue;

    pChar = strchr(pProcPara,'=');
    if (HI_NULL == pChar)
    {
        return HI_FAILURE; /* Not Found '=' */
    }

    pItem = pProcPara;
    pValue = pChar + 1;
    *pChar = '\0';

    /* remove blank bytes from item tail */
    pChar = pItem;
    while(*pChar != ' ' && *pChar != '\0')
    {
        pChar++;
    }
    *pChar = '\0';

    /* remove blank bytes from value head */
    while(*pValue == ' ')
    {
        pValue++;
    }

    *ppItem = pItem;
    *ppValue = pValue;
    return HI_SUCCESS;
}


HI_VOID VO_ProcPrintHelp(HI_VOID)
{
    DEBUG_PRINTK("Please input these commands:\n"
           "echo height = 1080 > /proc/msp/winxx\n"
           "echo width = 1920 > proc/msp/winxx\n"
           "echo startx = 100 > proc/msp/winxx\n"
           "echo starty = 100 > /proc/msp/winxxx\n"
           "echo enAspectRatio = 0(unknow)|1(4:3)|2(16:9)|3(SQUARE)|4(14:9)|5(22:1)|6(zome)|7(full) > proc/msp/winxx\n"
           "echo enAspectCvrs= 0(ignore)|1(letterbox)|2(pan&scan)|3(COMBINED) > proc/msp/winxx\n"
           "echo freeze = 0|1,0|1(last,black) > /proc/msp/winxxx\n"
           "echo ratio = 256 > /proc/msp/winxxx\n"
           "echo quickout = 1|0 > /proc/msp/winxxx\n"
           "echo sync = X > /proc/msp/winxxx\n"
           "echo fieldmode = 1|0 > /proc/msp/winxxx\n"
           "echo dei = 1|0 > /proc/msp/winxxx\n"
           "echo step = 1|0 > /proc/msp/winxxx\n"
           "echo capture = 1|0 (vsd/vhd) > /proc/msp/winxxx\n"
           "echo frame = 1|0  > /proc/msp/winxxx\n"

            "echo fi.change = 1|0 > /proc/msp/winxxx\n"
            "echo fi.print = 1|0 > /proc/msp/winxxx\n"
            "echo fi.rwzb = 1|0 > /proc/msp/winxxx\n"
            "echo fi.btop = 1|0 > /proc/msp/winxxx\n"
            "echo fi.prog = 1|0 > /proc/msp/winxxx\n"

           );
}

static HI_S32 WINDOW_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)

{
#if !(0 == HI_PROC_SUPPORT)
    struct seq_file   *s = file->private_data;
    DRV_PROC_ITEM_S  *pProcItem = s->private;
    HI_U32            WindowId = 0;
    HI_CHAR           ProcPara[64]={0};
    HI_U32            i;
    HI_CHAR           *pItem,*pValue;
    HI_S32            Ret;

    if (count > 64)
    return -EFAULT;

    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

    for (i=0; i<4; i++)
    {
        if (pProcItem->entry_name[i+6] <= '9')
        {
            WindowId = WindowId | (pProcItem->entry_name[i+6] - '0');
        }
        else
        {
            WindowId = WindowId | (pProcItem->entry_name[i+6] - 'a' + 0xa);
        }

        if (i < 3)
        {
            WindowId = WindowId << 4;
        }
    }
    //printk("---------Hisilicon WINDOW%04x Out Info---------\n", WindowId);

    WindowId = WindowId | (HI_ID_VO << 16);

    ProcPara[63] = '\0';
    Ret = VO_ProcParsePara(ProcPara,&pItem,&pValue);
    if (HI_SUCCESS != Ret)
    {
    VO_ProcPrintHelp();
    return -EFAULT;
    }

    Window_SetWinAttrFromProc(WindowId, pItem,pValue);
#endif
    return count;

}



static long VO_DRV_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    long Ret;

    Ret = (long)HI_DRV_UserCopy(ffile->f_path.dentry->d_inode,ffile, cmd, arg, VO_Ioctl);

    return Ret;
}

static struct file_operations VO_FOPS =
{
    .owner =    THIS_MODULE,
    .open =     VO_DRV_Open,
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
    .ioctl =    VO_DRV_Ioctl,
#else
    .unlocked_ioctl = VO_DRV_Ioctl,
#endif
    .release =  VO_DRV_Close,
};


static PM_BASEOPS_S  VO_DRVOPS = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = VO_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = VO_Resume,
};

static HI_VO_INTFPARAM_S VO_ProcPara = {
    .rdProc = VO_ProcRead,
    .wtProc = VO_ProcWrite,
    .winRdProc = WINDOW_ProcRead,
    .winWtProc = WINDOW_ProcWrite,
};

HI_VOID VO_ModeExit(HI_VOID)
{
    //HI_DRV_MODULE_UnRegister(HI_ID_VO);

    HI_DRV_DEV_UnRegister(&g_VoRegisterData);
    VO_IntfUnRegister();

    return;
}

extern HI_S32 HI_DRV_VO_ModInit(HI_VOID);

HI_S32 VO_ModeInit(HI_VOID)
{
    HI_S32  Ret;

    Ret = VO_IntfRegister(&VO_ProcPara);
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_VO("register VO Intf failed.\n");
        return HI_FAILURE;
    }

    snprintf(g_VoRegisterData.devfs_name, sizeof(g_VoRegisterData.devfs_name), UMAP_DEVNAME_VO);
    g_VoRegisterData.fops = &VO_FOPS;
    g_VoRegisterData.minor = UMAP_MIN_MINOR_VO;
    g_VoRegisterData.owner  = THIS_MODULE;
    g_VoRegisterData.drvops = &VO_DRVOPS;
    if (HI_DRV_DEV_Register(&g_VoRegisterData) < 0)
    {
        HI_FATAL_VO("register VO failed.\n");
        VO_IntfUnRegister();
        return HI_FAILURE;
    }
    return  0;
}



#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */


