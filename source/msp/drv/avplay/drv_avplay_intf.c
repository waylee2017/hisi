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
  File Name	: drv_avplay_intf.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: w58735
    Modification	: Created file

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
#include "hi_drv_mmz.h"
#include "hi_drv_avplay.h"
#include "hi_error_mpi.h"
#include "hi_drv_module.h"
#include "hi_module.h"
#include "drv_avplay_ext.h"
#include "hi_kernel_adapt.h"
#include "drv_avplay_ioctl.h"


#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#define AVPLAY_NAME         "HI_AVPLAY"

static UMAP_DEVICE_S        g_AvplayRegisterData;
static atomic_t             g_AvplayCount = ATOMIC_INIT(0);
AVPLAY_GLOBAL_STATE_S       g_AvplayGlobalState;


HI_DECLARE_MUTEX(g_AvplayMutex);

#ifdef HI_AVPLAY_PROC_SUPPORT
HI_U8 *g_pAvplayStreamTypeString[3] = {"TS", "ES", "VP"};


HI_U8 *g_pAvplayStatusString[7] = {
    "STOP",
    "PREPLAY",
    "PLAY",
    "TPLAY",
    "PAUSE",
    "EOS",
    "SEEK"
};

HI_U8 *g_pAvplayOverflowString[2] = {
    "RESET",
    "DISCARD",
};

HI_CHAR *g_pAvplayVdecType[HI_UNF_VCODEC_TYPE_BUTT+1] = {
    "MPEG2",
    "MPEG4",
    "AVS",
    "H263",
    "H264",
    "REAL8",
    "REAL9",
    "VC1",
    "VP6",
    "VP6F",
    "VP6A",
    "MJPEG",
    "SORENSON",
    "DIVX3",
    "RAW",
    "JPEG",
    "VP8",
    "BUTT"
};

HI_U8 *g_pAvplayVdecMode[3] = {
    "NORMAL",
    "IP",
    "I"
};

static HI_S32 AVPLAY_ProcRead(struct seq_file *p, HI_VOID *v)
{
    DRV_PROC_ITEM_S  *pProcItem;
    HI_U32            AvplayId;
    AVPLAY_S          *pAvplay;
    HI_U32            i;

    pProcItem = p->private;

    AvplayId = (pProcItem->entry_name[6] - '0')*10 + (pProcItem->entry_name[7] - '0');

    pAvplay = g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay;

    PROC_PRINT(p,"---------Hisilicon AVPLAY%d Out Info---------\n", AvplayId);
    
    PROC_PRINT(p,
                    "Stream Type           :%s\n"
                    "DmxId                 :%d\n"
                    "Vid Enable            :%s\n"
                    "hVdec                 :0x%x\n"
                    "Vdec Type             :%s\n"
                    "Vdec Mode             :%s\n"
                    "hDmxVid               :0x%x\n"
                    "DmxVidPid             :0x%x\n",
                        
                    g_pAvplayStreamTypeString[pAvplay->AvplayAttr.stStreamAttr.enStreamType],
                    pAvplay->AvplayAttr.u32DemuxId,
                    (pAvplay->VidEnable) ? "HI_TRUE" : "HI_FALSE",
                    pAvplay->hVdec,
                    g_pAvplayVdecType[pAvplay->VdecAttr.enType],
                    g_pAvplayVdecMode[pAvplay->VdecAttr.enMode],
                    pAvplay->hDmxVid,
                    pAvplay->DmxVidPid
                    );

    for (i=0; i<pAvplay->WindowNum; i++)
    {
        PROC_PRINT(p, "hWindow               :0x%x", pAvplay->hWindow[i]);
    }

    PROC_PRINT(p, "\n");

    PROC_PRINT(p,
                    "Aud Enable            :%s\n"
                    "hAdec                 :0x%x\n"
                    "Adec Type             :%s\n"
                    "hDmxAud               :0x%x\n"
                    "DmxAudPid             :0x%x\n"
                    "DmxAudChnNum          :%u\n"
                    "CurDmxAudChn          :%u\n"
                    "hSyncTrack            :0x%x\n"
                    "TrackNum              :%u\n"
                    "hDmxPcr               :0x%x\n"
                    "hSync                 :0x%x\n"
                    "CurStatus             :%s\n"
                    "OverflowProc          :%s\n"
                    "VidOverflowNum        :%d\n"
                    "AudOverflowNum        :%d\n"
                    "          Aud Es Data Proc\n"
                    "Acquire(Try/Ok)    Send(Try/Ok)\n"
                    "%10u/%u  \t%u/%u\n"
                    "------------------------------------------\n"
                    "          Aud Frame Data Proc\n"
                    "Acquire(Try/Ok)    Send(Try/Ok)\n"
                    "%10u/%u  \t%u/%u\n",
    
                    (pAvplay->AudEnable) ? "HI_TRUE" : "HI_FALSE",
                    pAvplay->hAdec,
                    pAvplay->AdecNameInfo.szHaCodecName,
                    pAvplay->hDmxAud[pAvplay->CurDmxAudChn],
                    pAvplay->DmxAudPid[pAvplay->CurDmxAudChn],
                    pAvplay->DmxAudChnNum,
                    pAvplay->CurDmxAudChn,
                    pAvplay->hSyncTrack,
                    pAvplay->TrackNum,
                    pAvplay->hDmxPcr,
                    pAvplay->hSync,
                    g_pAvplayStatusString[pAvplay->CurStatus],
                    g_pAvplayOverflowString[pAvplay->OverflowProc],
                    pAvplay->VidOverflowNum,
                    pAvplay->AudOverflowNum,
                    pAvplay->AcquireAudEsNum, pAvplay->AcquiredAudEsNum, pAvplay->SendAudEsNum, pAvplay->SendedAudEsNum,
                    pAvplay->AcquireAudFrameNum, pAvplay->AcquiredAudFrameNum, pAvplay->SendAudFrameNum, pAvplay->SendedAudFrameNum
                    );
#ifdef HI_AVPLAY_FCC_SUPPORT            
	PROC_PRINT(p, "\n");
	PROC_PRINT(p, "PreAudPts :%d,PreVidPts:%d",pAvplay->PreAudPts,pAvplay->PreVidPts);
	PROC_PRINT(p, "\n");
	PROC_PRINT(p, "PreAudWaterLine :%d,PreVidWaterLine:%d",pAvplay->PreAudWaterLine,pAvplay->PreVidWaterLine);
	PROC_PRINT(p, "\n");
#endif
    
    return HI_SUCCESS;
}

static HI_S32 AVPLAY_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)

{
    struct seq_file   *s = file->private_data;
    DRV_PROC_ITEM_S  *pProcItem = s->private;
//    HI_U32            AvplayId;
    HI_CHAR           ProcPara[64]={0};

    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

 //   AvplayId = (pProcItem->entry_name[6] - '0')*10 + (pProcItem->entry_name[7] - '0');

    return count;
}

#endif


HI_S32 AVPLAY_Create(AVPLAY_CREATE_S *pAvplayCreate, struct file *file)
{
	HI_CHAR           ProcName[12];
	MMZ_BUFFER_S      MemBuf;
    HI_S32            Ret;
    HI_U32            i;
	
#ifdef HI_AVPLAY_PROC_SUPPORT
	DRV_PROC_ITEM_S  *pProcItem;
#endif

    if (AVPLAY_MAX_NUM == g_AvplayGlobalState.AvplayCount)
    {
        HI_ERR_AVPLAY("the avplay num is max.\n");
        return HI_ERR_AVPLAY_CREATE_ERR;
    }

    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        if (HI_NULL == g_AvplayGlobalState.AvplayInfo[i].pAvplay)
        {
            break;
        }
    }

	if (i == AVPLAY_MAX_NUM)
    {
        HI_ERR_AVPLAY("the avplay num is max.\n");
        return HI_ERR_AVPLAY_CREATE_ERR;
    }

	snprintf(ProcName, sizeof(ProcName) ,"%s%02d", HI_MOD_AVPLAY, i);
    Ret = HI_DRV_MMZ_AllocAndMap(ProcName, MMZ_OTHERS, 0x1000, 0, &MemBuf);
    if (Ret != HI_SUCCESS)
    {
        HI_FATAL_AVPLAY("malloc %s mmz failed.\n", ProcName);

        return Ret;
    }
#ifdef HI_AVPLAY_PROC_SUPPORT
    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
    if (!pProcItem)
    {
        HI_FATAL_AVPLAY("add %s proc failed.\n", ProcName);

        HI_DRV_MMZ_UnmapAndRelease(&MemBuf);
        
        return HI_FAILURE;
    }
    pProcItem->read = AVPLAY_ProcRead;
    pProcItem->write = AVPLAY_ProcWrite;
#endif
    g_AvplayGlobalState.AvplayInfo[i].pAvplay = (AVPLAY_S *)MemBuf.u32StartVirAddr;
    g_AvplayGlobalState.AvplayInfo[i].pAvplay->hVdec = -1;
    g_AvplayGlobalState.AvplayInfo[i].AvplayPhyAddr = MemBuf.u32StartPhyAddr;
    g_AvplayGlobalState.AvplayInfo[i].File = (HI_U32)file;

    pAvplayCreate->AvplayId = i;
    pAvplayCreate->AvplayPhyAddr = MemBuf.u32StartPhyAddr;
    g_AvplayGlobalState.AvplayCount++;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_Destroy(HI_U32 AvplayId)
{    
    MMZ_BUFFER_S      MemBuf;
	
#ifdef HI_AVPLAY_PROC_SUPPORT
	HI_CHAR           ProcName[17];
#endif

    if (HI_NULL == g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay)
    {
        HI_ERR_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_DESTROY_ERR;
    }
#ifdef HI_AVPLAY_PROC_SUPPORT
    memset(ProcName, 0, sizeof(ProcName));    
	snprintf(ProcName, sizeof(ProcName),"%s%02d", HI_MOD_AVPLAY, AvplayId);
    HI_DRV_PROC_RemoveModule(ProcName);
#endif

    MemBuf.u32StartVirAddr = (HI_U32)g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay;
    MemBuf.u32StartPhyAddr = g_AvplayGlobalState.AvplayInfo[AvplayId].AvplayPhyAddr;
    MemBuf.u32Size = 0x1000;

    HI_DRV_MMZ_UnmapAndRelease(&MemBuf);

    g_AvplayGlobalState.AvplayInfo[AvplayId].pAvplay = HI_NULL;
    g_AvplayGlobalState.AvplayInfo[AvplayId].AvplayPhyAddr = HI_NULL;
    g_AvplayGlobalState.AvplayInfo[AvplayId].File = HI_NULL;
    g_AvplayGlobalState.AvplayInfo[AvplayId].AvplayUsrAddr = HI_NULL;

    g_AvplayGlobalState.AvplayCount--;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_SetUsrAddr(AVPLAY_USR_ADDR_S *pAvplayUsrAddr)
{
    g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].AvplayUsrAddr = (HI_U32)(pAvplayUsrAddr->AvplayUsrAddr);
    return HI_SUCCESS;
}

HI_S32 AVPLAY_CheckId(AVPLAY_USR_ADDR_S *pAvplayUsrAddr, struct file *file)
{
    if (g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].File != ((HI_U32)file))
    {
        HI_ERR_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    if (HI_NULL == g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].pAvplay)
    {
        HI_ERR_AVPLAY("this is invalid handle.\n");
        return HI_ERR_AVPLAY_INVALID_PARA;
    }

    pAvplayUsrAddr->AvplayUsrAddr = g_AvplayGlobalState.AvplayInfo[pAvplayUsrAddr->AvplayId].AvplayUsrAddr;

    return HI_SUCCESS;
}

HI_S32 AVPLAY_CheckNum(HI_U32 *pAvplayNum, struct file *file)
{
    HI_U32   i;

    *pAvplayNum = 0;

    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        if (g_AvplayGlobalState.AvplayInfo[i].File == ((HI_U32)file))
        {
            (*pAvplayNum)++;
        }
    }

    return HI_SUCCESS;
}


HI_S32 AVPLAY_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)
{
    HI_S32           Ret;

    Ret = down_interruptible(&g_AvplayMutex);
	if(Ret)
	{
		return Ret;
	}
    switch (cmd)
    {
        case CMD_AVPLAY_CREATE:
        {
            AVPLAY_CREATE_S  *pAvplayCreate;

            pAvplayCreate = (AVPLAY_CREATE_S *)arg;

            Ret = AVPLAY_Create(pAvplayCreate, file);

            break;
        }

        case CMD_AVPLAY_DESTROY:
        {
            Ret = AVPLAY_Destroy(*((HI_U32 *)arg));

            break;
        }

        case CMD_AVPLAY_SET_USRADDR:
        {
            AVPLAY_USR_ADDR_S *pAvplayUsrAddr;

            pAvplayUsrAddr = (AVPLAY_USR_ADDR_S *)arg;

            Ret = AVPLAY_SetUsrAddr(pAvplayUsrAddr);

            break;
        }

        case CMD_AVPLAY_CHECK_ID:
        {
            AVPLAY_USR_ADDR_S *pAvplayUsrAddr;

            pAvplayUsrAddr = (AVPLAY_USR_ADDR_S *)arg;

            Ret = AVPLAY_CheckId(pAvplayUsrAddr, file);

            break;
        }

        case CMD_AVPLAY_CHECK_NUM:
        {
            Ret = AVPLAY_CheckNum((HI_U32 *)arg, file);

            break;
        }

        default:
            up(&g_AvplayMutex);
            return -ENOIOCTLCMD;
    }

    up(&g_AvplayMutex);
    return Ret;
}

static HI_S32 AVPLAY_DRV_Open(struct inode *finode, struct file  *ffile)
{
/*
    HI_S32            Ret;

    Ret = down_interruptible(&g_AvplayMutex);

    if (1 == atomic_inc_return(&g_AvplayCount))
    {
    }

    up(&g_AvplayMutex);
*/    
    return 0;
}

static HI_S32 AVPLAY_DRV_Close(struct inode *finode, struct file  *ffile)
{
    HI_S32           i;
    HI_S32           Ret;

	Ret = down_interruptible(&g_AvplayMutex);
	if(Ret)
	{
		return Ret;
	}
    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        if (g_AvplayGlobalState.AvplayInfo[i].File == ((HI_U32)ffile))
        {
            Ret = AVPLAY_Destroy(i);
            if (Ret != HI_SUCCESS)
            {
                up(&g_AvplayMutex);
                return -1;
            }
        }
    }

    if (atomic_dec_and_test(&g_AvplayCount))
    {
    }

    up(&g_AvplayMutex);

    return 0;
}

static long AVPLAY_DRV_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    HI_S32 Ret;

    Ret = HI_DRV_UserCopy(ffile->f_path.dentry->d_inode, ffile, cmd, arg, AVPLAY_Ioctl);

    return Ret;
}

static struct file_operations AVPLAY_FOPS =
{
    .owner          =  THIS_MODULE,
    .open           =  AVPLAY_DRV_Open,
    .unlocked_ioctl =  AVPLAY_DRV_Ioctl,
    .release        =  AVPLAY_DRV_Close,
};

/*****************************************************************************
 Prototype    : AVPLAY_Suspend
 Description  : 
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :
  History        :
  1.Date         : 2010/5/15
    Author       : weideng
    Modification : Created function
*****************************************************************************/
static HI_S32 AVPLAY_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    HI_U32      i;

    for (i = 0; i < AVPLAY_MAX_NUM; i++)
    {
        if (HI_NULL != g_AvplayGlobalState.AvplayInfo[i].pAvplay)
        {
            g_AvplayGlobalState.AvplayInfo[i].pAvplay->bStandBy = HI_TRUE;
        }
    }

    //HI_FATAL_AVPLAY("AVPLAY suspend OK.\n");
    
    return 0;
}

/*****************************************************************************
 Prototype    : AVPLAY_Resume
 Description  : 
 Input        : None
 Output       : None
 Return Value :
 Calls        :
 Called By    :
  History        :
  1.Date         : 2010/5/15
    Author       : wei deng
    Modification : Created function
*****************************************************************************/
static HI_S32 AVPLAY_Resume(PM_BASEDEV_S *pdev)
{
    //HI_FATAL_AVPLAY("AVPLAY resume OK.\n");
    
    return 0;
}

static PM_BASEOPS_S AVPLAY_DRVOPS = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = AVPLAY_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = AVPLAY_Resume,
};

HI_S32 AVPLAY_DRV_ModInit(HI_VOID)
{
    HI_U32      i;
    HI_S32      Ret;     

    Ret = HI_DRV_MODULE_Register(HI_ID_AVPLAY, AVPLAY_NAME, HI_NULL);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_AVPLAY("ERR: HI_DRV_MODULE_Register, Ret = %#x!\n", Ret);
    }

    g_AvplayGlobalState.AvplayCount = 0;
    for (i=0; i<AVPLAY_MAX_NUM; i++)
    {
        g_AvplayGlobalState.AvplayInfo[i].pAvplay = HI_NULL;
        g_AvplayGlobalState.AvplayInfo[i].AvplayPhyAddr = HI_NULL;
        g_AvplayGlobalState.AvplayInfo[i].File = HI_NULL;
        g_AvplayGlobalState.AvplayInfo[i].AvplayUsrAddr = HI_NULL;
    }

	snprintf(g_AvplayRegisterData.devfs_name, sizeof(g_AvplayRegisterData.devfs_name) ,UMAP_DEVNAME_AVPLAY);
	
    g_AvplayRegisterData.fops = &AVPLAY_FOPS;
    g_AvplayRegisterData.minor = UMAP_MIN_MINOR_AVPLAY;
    g_AvplayRegisterData.owner  = THIS_MODULE;
    g_AvplayRegisterData.drvops = &AVPLAY_DRVOPS;
    if (HI_DRV_DEV_Register(&g_AvplayRegisterData) < 0)
    {
        HI_FATAL_AVPLAY("register AVPLAY failed.\n");
        return HI_FAILURE;
    }

    return  0;
}

HI_VOID AVPLAY_DRV_ModExit(HI_VOID)
{
    HI_DRV_DEV_UnRegister(&g_AvplayRegisterData);

    HI_DRV_MODULE_UnRegister(HI_ID_AVPLAY);
}

#ifdef MODULE
module_init(AVPLAY_DRV_ModInit);
module_exit(AVPLAY_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif
