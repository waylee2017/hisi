/******************************************************************************

  Copyright (C), 2010-2020, Hisilicon Tech. Co., Ltd.

 ******************************************************************************
  File Name     : drv_fm_intf.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2016/02/23
  Description   :
  History       :
  1.Date        : 2016/02/23
    Author      : 
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

#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
#include "hi_drv_i2c.h"
#include "hi_drv_gpio.h"
#include "hi_drv_fm.h"
#include "hi_drv_module.h"
#include "RDAFM_5807X_drv_V4.0.h"
#include "parse_rds.h"
#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

static UMAP_DEVICE_S g_FMRegisterData;
//HI_DECLARE_MUTEX(g_FmMutex);

struct task_struct      *pTsTask;


#define FM_NAME                "HI_FM"
#ifdef HI_FM_PROC_SUPPORT
HI_U8 *g_pfmStatusString[5] = {
    "start",    
    "stop",    
    "wait",   
    "ready",
    "idle"
};

HI_DRV_FM_INFO_S g_FM = 
{
    .I2cNum = 0xfffffff,
    .GpioNum = 0xfffffff,
    .RdsEnable = HI_FALSE,
    .FmStatus = HI_UNF_FM_STATUS_IDLE
};

static HI_S32 FM_ProcRead(struct seq_file *p, HI_VOID *v)
{
    return HI_SUCCESS;
}




static HI_S32 FM_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)

{
    return HI_SUCCESS;
}
#endif

static HI_S32 FM_DRV_Init(HI_VOID)
{
	return HI_SUCCESS;
}

static HI_S32 FM_DRV_Exit(HI_VOID)
{
	return HI_SUCCESS;
}

static HI_S32 FM_DRV_Open(struct inode *finode, struct file  *ffile)
{	
	HI_S32 s32Ret ;

	s32Ret = RDS_Open();
	
	return s32Ret;
}

static HI_S32 FM_DRV_Close(struct inode *finode, struct file  *ffile)
{
	HI_S32 s32Ret ;
	
	s32Ret = RDS_Close();
	
	return s32Ret;
}

HI_S32 FM_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
	return HI_SUCCESS;
}

HI_S32 FM_Resume(PM_BASEDEV_S *pdev)
{
	return HI_SUCCESS;
}

HI_S32 FM_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)
{
    HI_S32           Ret = 0;
	HI_BOOL bSeek = HI_FALSE;
	HI_DRV_FM_INFO_S *FM_Info = &g_FM;
	HI_VOID __user *argp = (HI_VOID __user*)arg;
 //   Ret = down_interruptible(&g_FmMutex);
	if(Ret)
	{
//		return Ret;
	}
//	printk("cmd 0x%x CMD_FM_INIT 0x%x\n",cmd,CMD_FM_INIT);
    switch (cmd)
    {
		case CMD_FM_INIT:
			RDA5807X_Intialization();
			Ret = 0;
			break;
		case CMD_FM_DEINIT:
			break;
		case CMD_FM_CFG:
			HI_UNF_FM_ATTR_S stFmAttr;
			if(copy_from_user(&stFmAttr,(stFmAttr)*argp,sizeof(HI_UNF_FM_ATTR_S)))
			{
				HI_ERR_FM("copy from user failed!\n");
			    Ret = HI_FAILURE;
				break;
			}
			FM_Info->I2cNum = stFmAttr.u32I2cNum;
			FM_Info->GpioNum = stFmAttr.u32GpioNum;
			Ret = HI_SUCCESS;
			break;
		case CMD_FM_SEEK:
			
		//	RDA5807X_SetFreq(*(HI_S32*)arg);
			bSeek = RDA5807X_ValidStop(*(HI_S32*)argp);
			if(bSeek == HI_TRUE)
			{
				Ret = 0;
				FM_Info.FmStauts = HI_UNF_FM_STATUS_WORKING;
			}
			else
				Ret = -1;
			
			break;
		case CMD_FM_TUNE:
			RDA5807X_SetFreq(*(HI_S32*)argp);
			FM_Info.FmStauts = HI_UNF_FM_STATUS_WORKING;
			Ret = 0;
			break;
		
		case CMD_FM_SETOUTPUT:
			HI_BOOL bOutput = *(HI_BOOL)argp;
			Ret =  HI_DRV_GPIO_SetDirBit(FM_Info->GpioNum ,HI_TRUE);
			if(HI_TRUE == bOutput)
				Ret |= HI_DRV_GPIO_WriteBit(FM_Info->GpioNum ,HI_TRUE);
			else
				Ret |=HI_DRV_GPIO_WriteBit(FM_Info->GpioNum ,HI_FALSE);
			break;
		case CMD_FM_GETSTATUS:
			HI_UNF_FM_STATUS_S FmStatus;
			FmStatus.bRdsEnable = FM_Info.RdsEnable;
			FmStatus.u32I2cNum = FM_Info.I2cNum;
			FmStatus.u32GpioNum = FM_Info.GpioNum;
			FmStatus.enFmStatus = FM_Info.FmStauts;
			if(copy_to_user((HI_UNF_FM_STATUS_S*)argp,&FmStatus,sizeof(HI_UNF_FM_STATUS_S))
			{
				HI_ERR_FM("Copy to user failed!\n");
				Ret = HI_FAILURE;
				break;
			}
			Ret = 0;
			break;
		case CMD_FM_SETRDS:
			HI_BOOL bRdsEnable  = *(HI_BOOL)argp;
			if(HI_TRUE == bRdsEnable)
				Ret |= HI_DRV_GPIO_WriteBit(FM_Info->GpioNum ,HI_TRUE);
			else
				Ret |=HI_DRV_GPIO_WriteBit(FM_Info->GpioNum ,HI_FALSE);
			break;
			
		default:
			break;
	}

//	up(&g_FmMutex);
    return Ret;
}

static long FM_DRV_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    HI_S32 Ret;

    Ret = HI_DRV_UserCopy(ffile->f_dentry->d_inode, ffile, cmd, arg, FM_Ioctl);

    return Ret;
}

static struct file_operations FM_FOPS =
{
    .owner          = THIS_MODULE,
    .open           = FM_DRV_Open,
    .unlocked_ioctl = FM_DRV_Ioctl,
    .release        = FM_DRV_Close,
};


static PM_BASEOPS_S FM_DRVOPS = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = FM_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = FM_Resume,
};

#ifdef HI_FM_PROC_SUPPORT
static FM_REGISTER_PARAM_S FM_ProcPara = {
    .rdproc = FM_ProcRead,
    .wtproc = FM_ProcWrite,
};
#endif	

HI_S32 FM_DRV_ModInit(HI_VOID)
{
    HI_S32  Ret;

    Ret = FM_DRV_Init();
    if(HI_SUCCESS != Ret)
    {
        HI_FATAL_FM("register FM Intf failed.\n");
        return HI_FAILURE;
    }

	Ret = HI_DRV_MODULE_Register(HI_ID_FM, FM_NAME, HI_NULL);
	if(HI_SUCCESS != Ret)
	{
		HI_FATAL_FM("HI_DRV_MODULE_Register HI_ID_FM failed.\n");
        return HI_FAILURE;
	}

    snprintf(g_FMRegisterData.devfs_name, sizeof(g_FMRegisterData.devfs_name),UMAP_DEVNAME_FM);
    g_FMRegisterData.fops = &FM_FOPS;
    g_FMRegisterData.minor = UMAP_MIN_MINOR_FM;
    g_FMRegisterData.owner  = THIS_MODULE;
    g_FMRegisterData.drvops = &FM_DRVOPS;
    if (HI_DRV_DEV_Register(&g_FMRegisterData) < 0)
    {
        HI_FATAL_FM("register FM failed.\n");
        return HI_FAILURE;
    }
   
    return  0;
}

HI_VOID FM_DRV_ModExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&g_FMRegisterData);
	HI_DRV_MODULE_UnRegister(HI_ID_FM);
    FM_DRV_Exit();

}

#ifdef MODULE
module_init(FM_DRV_ModInit);
module_exit(FM_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
