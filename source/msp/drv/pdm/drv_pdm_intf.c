/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************
  File Name	: drv_pdm_intf.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/
#include <linux/kernel.h>
#include <mach/hardware.h>
#include <asm/io.h>

#include "hi_module.h"
#include "hi_drv_module.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"

#include "hi_drv_pdm.h"
#include "drv_pdm_ext.h"
#include "drv_pdm.h"


#define PDM_NAME                "HI_PDM"


DECLARE_MUTEX(g_PdmMutex);

#define DRV_PDM_Lock()      \
    do{         \
        if(down_interruptible(&g_PdmMutex))   \
        {       \
            HI_ERR_PDM("ERR: PDM intf lock error!\n");  \
        }       \
      }while(0)

#define DRV_PDM_UnLock()      \
    do{         \
        up(&g_PdmMutex);    \
      }while(0)


typedef struct tagPDM_REGISTER_PARAM_S{
    DRV_PROC_READ_FN        rdproc;
    DRV_PROC_WRITE_FN       wtproc;
}PDM_REGISTER_PARAM_S;


PDM_EXPORT_FUNC_S   g_PdmExportFuncs = 
{
    .pfnPDM_GetDispParam        = DRV_PDM_GetDispParam,
    .pfnPDM_GetGrcParam         = DRV_PDM_GetGrcParam,
    .pfnPDM_GetMceParam         = DRV_PDM_GetMceParam,
    .pfnPDM_GetMceData          = DRV_PDM_GetMceData,
    .pfnPDM_ReleaseReserveMem   = DRV_PDM_ReleaseReserveMem
};


PDM_GLOBAL_S        g_PdmGlobal;

#ifdef HI_PDM_PROC_SUPPORT
static HI_S32 PDM_ProcRead(struct seq_file *p, HI_VOID *v)
{
    return HI_SUCCESS;
}

static HI_S32 PDM_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)
{
    return HI_SUCCESS;
}
#endif

HI_S32 PDM_DRV_Open(struct inode *finode, struct file  *ffile)
{
    return HI_SUCCESS;
}

HI_S32 PDM_DRV_Close(struct inode *finode, struct file  *ffile)
{
    return HI_SUCCESS;
}

HI_S32 PDM_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)
{
    HI_S32          Ret = HI_SUCCESS;

    DRV_PDM_Lock();


    DRV_PDM_UnLock();
    
    return Ret;
}

static long PDM_DRV_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    HI_S32 Ret;

    Ret = HI_DRV_UserCopy(ffile->f_path.dentry->d_inode, ffile, cmd, arg, PDM_Ioctl);

    return Ret;
}

HI_S32 PDM_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    return HI_SUCCESS;
}

HI_S32 PDM_Resume(PM_BASEDEV_S *pdev)
{
    return HI_SUCCESS;
}

#ifdef HI_PDM_PROC_SUPPORT 
static PDM_REGISTER_PARAM_S g_PdmProcPara = {
    .rdproc = PDM_ProcRead,
    .wtproc = PDM_ProcWrite,
};
#endif

static UMAP_DEVICE_S g_PdmRegisterData;


static struct file_operations g_PdmFops =
{
    .owner          =    THIS_MODULE,
    .open           =     PDM_DRV_Open,
    .unlocked_ioctl =    PDM_DRV_Ioctl,
    .release        =  PDM_DRV_Close,
};

static PM_BASEOPS_S g_PdmDrvOps = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = PDM_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = PDM_Resume,
};

HI_S32 HI_DRV_PDM_Init(HI_VOID)
{
    HI_S32  ret;
    
    ret = HI_DRV_MODULE_Register(HI_ID_PDM, PDM_NAME, (HI_VOID*)&g_PdmExportFuncs);
    if (HI_SUCCESS != ret)
    {
        HI_FATAL_PDM("ERR: HI_DRV_MODULE_Register!\n");
        return ret;
    }    

    memset(&g_PdmGlobal, 0x0, sizeof(PDM_GLOBAL_S));
    
    return ret;
}

HI_S32 HI_DRV_PDM_DeInit(HI_VOID)
{
    HI_DRV_MODULE_UnRegister(HI_ID_PDM);

    return HI_SUCCESS;
}


HI_S32 PDM_DRV_ModInit(HI_VOID)
{
    HI_CHAR             ProcName[16];

#ifdef HI_PDM_PROC_SUPPORT 	
    DRV_PROC_ITEM_S     *pProcItem = HI_NULL;
#endif

#ifndef HI_MCE_SUPPORT
    HI_DRV_PDM_Init();
#endif

    snprintf(ProcName,sizeof(ProcName), "%s", HI_MOD_PDM);
#ifdef HI_PDM_PROC_SUPPORT 
    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
    if(HI_NULL != pProcItem)
    {
        pProcItem->read = g_PdmProcPara.rdproc;
        pProcItem->write = g_PdmProcPara.wtproc;
    }
#endif        

    snprintf(g_PdmRegisterData.devfs_name,sizeof(g_PdmRegisterData.devfs_name), UMAP_DEVNAME_PDM);
	
    g_PdmRegisterData.fops = &g_PdmFops;
    g_PdmRegisterData.minor = UMAP_MIN_MINOR_PDM;
    g_PdmRegisterData.owner  = THIS_MODULE;
    g_PdmRegisterData.drvops = &g_PdmDrvOps;
    if (HI_DRV_DEV_Register(&g_PdmRegisterData) < 0)
    {
        HI_FATAL_PDM("register PDM failed.\n");
        return HI_FAILURE;
    }
    
    return  0;
}

HI_VOID PDM_DRV_ModExit(HI_VOID)
{
    HI_CHAR             ProcName[16];
    
    HI_DRV_DEV_UnRegister(&g_PdmRegisterData);

    snprintf(ProcName,sizeof(ProcName), "%s", HI_MOD_PDM);
#ifdef HI_PDM_PROC_SUPPORT 
    HI_DRV_PROC_RemoveModule(ProcName);
#endif

#ifndef HI_MCE_SUPPORT
    HI_DRV_PDM_DeInit();
#endif

}



#ifdef MODULE
module_init(PDM_DRV_ModInit);
module_exit(PDM_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");




