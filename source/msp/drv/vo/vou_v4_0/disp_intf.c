























































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


//#include "mpi_priv_disp.h"

#include "drv_disp_ioctl.h"

#include "optm_disp.h"
#include "optm_regintf.h"
#include "optm_debug.h"




#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

extern HI_S32  DISP_IntfRegister(HI_OPTM_DISP_REGPARAM_S *param);
extern HI_VOID DISP_IntfUnRegister(HI_VOID);

extern HI_S32  DISP_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg);

extern HI_S32  DISP_DRV_Open(struct inode *finode, struct file  *ffile);
extern HI_S32  DISP_DRV_Close(struct inode *finode, struct file  *ffile);
extern HI_S32  DISP_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern HI_S32  DISP_Resume(PM_BASEDEV_S *pdev);

static UMAP_DEVICE_S g_DispRegisterData;

#if !(0 == HI_PROC_SUPPORT)

HI_U8 *g_pEnableString[2] = {"HI_FALSE", "HI_TRUE"};
HI_U8 *g_pDispIntfTypeString[2] = {"TV", "LCD"};

HI_U8 *g_pDispLayerString[3] = {
    "VIDEO_0",
    "OSD_0",
    "ATTACH_OSD_0"
};

HI_U8 *g_pDispFmtString[19] = {
    "1080P_60",
    "1080P_50",
    "1080P_30",
    "1080P_25",

    "1080P_24",
    "1080i_60",
    "1080i_50",

    "720P_60",
    "720P_50",

    "576P_50",
    "480P_60",

    "PAL",
    "PAL_N",
    "PAL_Nc",

    "NTSC",
    "NTSC_J",
    "NTSC_PAL_M",

    "SECAM_SIN",
    "SECAM_COS"
};




HI_U8 *g_pLcdFmtString[] = {
    "640X480",
    "800X600",
    "1024X768",
    "1280X720",
    "1280X800",
    "1280X1024",

    "1360X768",
    "1366X768",
    "1440X1050",
    "1440X900",
    "1440X900_RB",

    "1600X900_RB",
    "1600X1200",
    "1680X1050",
    "1920X1080",
    "1920X1200",

    "2048X1152",
    "customer define"
};

HI_U8 *g_pDispMacrovisionString[4] = {"TYPE0", "TYPE1", "TYPE2", "TYPE3"};

HI_U8 *g_pDacModeString[HI_UNF_DISP_DAC_MODE_BUTT+1] = {
    "SILENCE",
    "CVBS",
    "Y",
    "PB",
    "PR",
    "R",
    "G",
    "B",
    "SVIDEO_Y",
    "SVIDEO_C",

    "HD_Y",
    "HD_PB",
    "HD_PR",
    "HD_R",
    "HD_G",
    "HD_B",
    "UNKNOWN",
};
#endif

static HI_S32 DISP_ProcRead(struct seq_file *p, HI_VOID *v)
{
#if !(0 == HI_PROC_SUPPORT)
    DRV_PROC_ITEM_S       *pProcItem;
    HI_OPTM_DISP_ATTR_S    DispAttr;
    HI_BOOL                bEnable;
    HI_U32                 i;
    HI_U8                  *pFmtString;
    HI_UNF_DISP_INTERFACE_S  stDacMode;

    memset(&DispAttr,0,sizeof(HI_OPTM_DISP_ATTR_S));
    memset(&stDacMode,0,sizeof(HI_UNF_DISP_INTERFACE_S));

    pProcItem = p->private;

    /* HD Disp PROC*/
    if (HI_UNF_DISP_HD0 == (pProcItem->entry_name[4] - '0'))
    {
        bEnable = DISP_GetOptmDispAttr(HI_UNF_DISP_HD0, &DispAttr);

        if (HI_UNF_DISP_INTF_TYPE_TV == DispAttr.enIntfType)
        {
            pFmtString = g_pDispFmtString[DispAttr.enFmt];
        }
        else
        {
            pFmtString = g_pLcdFmtString[DispAttr.enLcdFmt];
        }

        seq_printf(p,"---------Hisilicon HD DISP Out Info---------\n");
    }
    else
    {
        bEnable = DISP_GetOptmDispAttr(HI_UNF_DISP_SD0, &DispAttr);

        pFmtString = g_pDispFmtString[DispAttr.enFmt];

        seq_printf(p,"---------Hisilicon SD DISP Out Info---------\n");
    }

    seq_printf(p,
            "Enable               :%s\n"
            "Intf                 :%s\n"
            "Fmt                  :%s\n"
            "Macrovision          :%s\n"
            "Background (R/G/B)   :0x%x/0x%x/0x%x\n"
            "Bright               :%d\n"
            "Contrast             :%d\n"
            "Saturation           :%d\n"
            "Hue                  :%d\n"
            "Source Disp          :%d\n"
            "Dest   Disp          :%d\n"
            "Layer Num            :%d\n"
            "Layer Array          :",
            g_pEnableString[bEnable],
            g_pDispIntfTypeString[DispAttr.enIntfType],
            pFmtString,
            g_pDispMacrovisionString[DispAttr.enMcvn],
            DispAttr.stBgc.u8Red,
            DispAttr.stBgc.u8Green,
            DispAttr.stBgc.u8Blue,
            DispAttr.u32Bright,
            DispAttr.u32Contrast,
            DispAttr.u32Saturation,
            DispAttr.u32Hue,
            DispAttr.enSrcDisp,
            DispAttr.enDestDisp,
            DispAttr.u32LayerNum);

    for (i=0; i<DispAttr.u32LayerNum; i++)
    {
        seq_printf(p, "%s ", g_pDispLayerString[DispAttr.DispLayerOrder[i]]);
    }

    seq_printf(p, "\n");
    if(DispAttr.enFmt == HI_UNF_ENC_FMT_VESA_CUSTOMER_DEFINE)
    {
           seq_printf(p,
                   "VFB               :%d\n"
                   "VBB               :%d\n"
                   "VACT              :%d\n"
                   "HFB               :%d\n"
                   "HBB               :%d\n"
                   "HACT              :%d\n"
                   "VPW               :%d\n"
                   "HPW               :%d\n",

                DispAttr.stLcd.VFB,
                DispAttr.stLcd.VBB,
                DispAttr.stLcd.VACT,
                DispAttr.stLcd.HFB,
                DispAttr.stLcd.HBB,
                DispAttr.stLcd.HACT,
                DispAttr.stLcd.VPW,
                DispAttr.stLcd.HPW
                );
    }
    seq_printf(p, "\n");

    DISP_GetDacMode(&stDacMode);

    seq_printf(p, "Dac[0~5] Setting     :");
    for(i=0; i<MAX_DAC_NUM; i++)
    {
        seq_printf(p, "%s ", g_pDacModeString[stDacMode.enDacMode[i]]);
    }
    seq_printf(p, "\n");
    seq_printf(p, "ColorTemperature:\n"
                       "    Kr               :%u\n"
                       "    Kg               :%u\n"
                       "    Kb               :%u\n",
                       DispAttr.u32Kr,
                       DispAttr.u32Kg,
                       DispAttr.u32Kb);
#endif
    return HI_SUCCESS;
}

HI_S32 DISP_ProcParsePara(HI_CHAR *pProcPara,HI_CHAR **ppItem,HI_CHAR **ppValue)
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

HI_VOID DISP_ProcPrintHelp(HI_VOID)
{
    DEBUG_PRINTK("Please input these commands:\n"
           "echo enfromat = 0(1080P60)|1(1080P50)|2(1080p30)|3(1080p25)|4(1080p24)|\n"
                "5(1080i60)|6(1080i50)|7(720p60)|8(720p50)|9(576p50)|10(480p60)\n "
                "11(pal)|12(pal_n)|13(pal_nc)|14(ntsc)|15(ntsc_j)|16(ntsc_pal_m)\n "
                "17(secam_sin)|18(secam_cos) > /proc/msp/dispX\n"
           "echo bright = 0~100 > /proc/msp/dispxxx\n"
           "echo contrast = 0~100 > /proc/msp/dispxxx\n"
           "echo saturation = 0~100 > /proc/msp/dispxxx\n"
           "echo hue = 0~100 > /proc/msp/dispxxx\n"
           "echo colorT = 0~100 0~100 0~100 > /proc/msp/dispxxx\n");
}


static HI_S32 DISP_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)

{
#if !(0 == HI_PROC_SUPPORT)
    struct seq_file   *s = file->private_data;
    DRV_PROC_ITEM_S  *pProcItem = s->private;
    HI_CHAR           ProcPara[64];
    HI_CHAR           *pItem,*pValue;
    HI_S32            Ret;
    HI_UNF_DISP_E   enintf;
    HI_UNF_ENC_FMT_E enEncFmt;
    HI_S32      bright, contrast, saturation,hue;

    if (count > 64)
     return -EFAULT;

    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

    ProcPara[63] ='\0';
    Ret = DISP_ProcParsePara(ProcPara,&pItem,&pValue);
    if (HI_SUCCESS != Ret)
    {
        DISP_ProcPrintHelp();
        return -EFAULT;
    }

    enintf = (pProcItem->entry_name[4] - '0');

    if (!strncmp(pItem,"enfromat", sizeof("enfromat")))
    {
        enEncFmt = simple_strtol(pValue, NULL, 10);
        DISP_SetFormat(enintf, enEncFmt);
    }
    else if (!strncmp(pItem,"bright", sizeof("bright")))
    {
        bright = simple_strtol(pValue, NULL, 10);
        DISP_SetBright(enintf, bright);
    }
    else if (!strncmp(pItem,"contrast", sizeof("contrast")))
    {
        contrast = simple_strtol(pValue, NULL, 10);
        DISP_SetContrast(enintf, contrast);

    }
    else if (!strncmp(pItem,"saturation", sizeof("saturation")))
    {
        saturation = simple_strtol(pValue, NULL, 10);
        DISP_SetSaturation(enintf, saturation);
    }
	else if (!strncmp(pItem,"hue", sizeof("hue")))
    {
        hue = simple_strtol(pValue, NULL, 10);
        DISP_SetHue(enintf, hue);
    }
    else if (!strncmp(pItem,"colorT", sizeof("colorT")))
    {
        disp_colort_s stColor ;
        memset(&stColor, 0, sizeof(stColor));
        if(3 != sscanf(pValue, "%d %d %d", &(stColor.u32Kr), &(stColor.u32Kg), &(stColor.u32Kb)))
        {
            DISP_ProcPrintHelp();
            return -EFAULT;
        }
        else
        {
            DISP_SetColorTemperature(enintf, &stColor);
        }

    }

#endif
    return count;
}


#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
static HI_S32 DISP_DRV_Ioctl(struct inode *finode, struct file *ffile, unsigned int cmd, unsigned long arg)
{
    HI_S32 Ret;

    Ret = CMPI_UserCopy(finode, ffile, cmd, arg, DISP_Ioctl);

    return Ret;
}
#else


static long DISP_DRV_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    long Ret;
    Ret = (long)HI_DRV_UserCopy(ffile->f_path.dentry->d_inode,ffile, cmd, arg, DISP_Ioctl);

    return Ret;
}
#endif

static struct file_operations DISP_FOPS =
{
    .owner =    THIS_MODULE,
    .open =     DISP_DRV_Open,
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
    .ioctl =    DISP_DRV_Ioctl,
#else
    .unlocked_ioctl = DISP_DRV_Ioctl,
#endif
    .release =  DISP_DRV_Close,
};



static  PM_BASEOPS_S DISP_DRVOPS =
{
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = DISP_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = DISP_Resume,
};


static HI_OPTM_DISP_REGPARAM_S DISP_ProcPara = {
    .rdproc = DISP_ProcRead,
    .wtproc = DISP_ProcWrite,
};


HI_VOID DISP_ModeExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&g_DispRegisterData);
    DISP_IntfUnRegister();
    return;
}


HI_S32 DISP_ModeInit(HI_VOID)
{
    HI_S32  Ret;

    /*intf register*/
    Ret = DISP_IntfRegister(&DISP_ProcPara);
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_DISP("register DISP Intf failed.\n");
        return HI_FAILURE;
    }

    /* Regist Disp device */
    snprintf(g_DispRegisterData.devfs_name, sizeof(g_DispRegisterData.devfs_name), UMAP_DEVNAME_DISP);
    g_DispRegisterData.fops = &DISP_FOPS;
    g_DispRegisterData.minor = UMAP_MIN_MINOR_DISP;
    g_DispRegisterData.owner  = THIS_MODULE;
    g_DispRegisterData.drvops = &DISP_DRVOPS;
    if (HI_DRV_DEV_Register(&g_DispRegisterData) < 0)
    {
        HI_FATAL_DISP("register DISP failed.\n");
        DISP_IntfUnRegister();
        return HI_FAILURE;
    }

    return  0;
}


extern HI_VOID VO_ModeExit(HI_VOID);
extern HI_S32  VO_ModeInit(HI_VOID);

extern HI_S32 HI_DRV_DISP_ModInit(HI_VOID);
extern HI_S32 HI_DRV_DISP_ModExit(HI_VOID);



extern HI_S32 HI_DRV_VO_ModInit(HI_VOID);


HI_S32 VPS_DRV_ModInit(HI_VOID)
{

    HI_S32  ret;

#ifndef HI_MCE_SUPPORT
    ret = HI_DRV_DISP_ModInit();
    if (HI_SUCCESS != ret)
    {
        //if DISP init failed, exit
        HI_FATAL_DISP("HI_DRV_DISP_Init failed.\n");
        return HI_FAILURE;
    }
#endif

    if(HI_SUCCESS != DISP_ModeInit())
    {
        HI_FATAL_DISP("DISP_ModeInit failed.\n");
        goto ErrExit;
    }
#ifndef MINI_SYS_SURPORT
#ifndef HI_MCE_SUPPORT
    if (HI_SUCCESS != HI_DRV_VO_ModInit())
    {
        HI_FATAL_DISP("HI_DRV_VO_ModInit failed.\n");
        goto ErrExit;
    }
#endif
    if(HI_SUCCESS != VO_ModeInit())
    {
        HI_FATAL_DISP("VO_ModeInit failed.\n");
        goto ErrExit;
    }
#endif

#ifdef MODULE
#ifndef HI_ADVCA_FUNCTION_RELEASE
        HI_DISP_PRINT("Load hi_vou.ko success.     \t(%s)\n", VERSION_STRING);
#endif

#endif

    return HI_SUCCESS;

ErrExit:
    HI_DRV_DISP_ModExit();
    DISP_ModeExit();

    //HI_DRV_VO_ModExit();
    VO_ModeExit();
    return HI_FAILURE;
}


HI_VOID VPS_DRV_ModExit(HI_VOID)
{
    HI_DRV_DISP_ModExit();
    DISP_ModeExit();

    //HI_DRV_VO_ModExit();
    VO_ModeExit();
}



#ifdef MODULE
module_init(VPS_DRV_ModInit);
module_exit(VPS_DRV_ModExit);
#endif


MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
