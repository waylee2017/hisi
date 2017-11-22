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
  File Name	: drv_mce_intf.c
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
#include <asm/uaccess.h>

#include <linux/sched.h>

#include "hi_module.h"
#include "hi_drv_module.h"
#include "drv_dev_ext.h"
#include "hi_drv_proc.h"

#include "hi_drv_mce.h"
#include "drv_mce_ext.h"
#include "drv_media_mem.h"
#include "drv_pdm_ext.h"
#include "hi_drv_disp.h"
#include "drv_disp_ext.h"
#include "optm_hifb.h"

#define MCE_NAME                "HI_MCE"
#define MMZ_INFOZONE_SIZE       (8*1024)


DECLARE_MUTEX(g_MceMutex);

#define DRV_MCE_Lock()      \
    do{         \
        if(down_interruptible(&g_MceMutex))   \
        {       \
            HI_ERR_MCE("ERR: mce intf lock error!\n");  \
        }       \
      }while(0)

#define DRV_MCE_UnLock()      \
    do{         \
        up(&g_MceMutex);    \
      }while(0)


typedef struct tagMCE_REGISTER_PARAM_S{
    DRV_PROC_READ_FN        rdproc;
    DRV_PROC_WRITE_FN       wtproc;
}MCE_REGISTER_PARAM_S;

MCE_S   g_Mce = 
{
    .hAvplay = HI_INVALID_HANDLE,
    .hWindow = HI_INVALID_HANDLE,
    .bPlayStop = HI_TRUE,
    .bLogoClear = HI_FALSE,
    .bMceExit = HI_TRUE,
    .BeginTime = 0,
    .EndTime = 0,
    .stStopParam.u32PlayCount = 0,
    .TsplayEnd = HI_FALSE
};

#ifdef HI_MCE_PROC_SUPPORT
static HI_S32 MCE_ProcRead(struct seq_file *p, HI_VOID *v)
{
    HI_U32      u32BgColor;
    MCE_S       *pMce = &g_Mce;
  //  HI_UNF_MCE_PLAY_PARAM_S *pPlayParam = HI_NULL;
#ifdef HI_MCE_SUPPORT    
    HI_MCE_PALY_INFO_S	*pPlayParam = HI_NULL;
#endif    
#if 1       
    u32BgColor = (pMce->stDispParam.stBgColor.u8Red << 16) + (pMce->stDispParam.stBgColor.u8Green << 8)
        + pMce->stDispParam.stBgColor.u8Blue;
    
    PROC_PRINT(p,"---------------------Hisilicon MCE Out Info-----------------------\n");
    PROC_PRINT(p,"----------------------------BaseParam-----------------------------\n");
    PROC_PRINT(p,"enFormat:        %10d,   u32Brightness:      %10d\n"
                      "u32Contrast:     %10d,   u32Saturation:      %10d\n"
                      "u32HuePlus:      %10d,   bGammaEnable:       %10d\n"
                      "BgColor:         %10x,   enPixelFormat:      %10d\n"
                      "u32DisplayWidth: %10d,   u32DisplayHeight:   %10d\n"
                      "u32ScreenXpos:   %10d,   u32ScreenYpos:      %10d\n"
                      "u32ScreenWidth:  %10d,   u32ScreenHeight:    %10d\n",
                      pMce->stDispParam.enFormat,pMce->stDispParam.u32Brightness,
                      pMce->stDispParam.u32Contrast,pMce->stDispParam.u32Saturation,
                      pMce->stDispParam.u32HuePlus,pMce->stDispParam.bGammaEnable,
                      u32BgColor,                  pMce->stGrcParam.enPixelFormat,
                      pMce->stGrcParam.u32DisplayWidth,pMce->stGrcParam.u32DisplayHeight,
                      pMce->stGrcParam.u32ScreenXpos,pMce->stGrcParam.u32ScreenYpos,
                      pMce->stGrcParam.u32ScreenWidth,pMce->stGrcParam.u32ScreenHeight
    );
    
#ifdef HI_MCE_SUPPORT    
    PROC_PRINT(p,"---------------------------PlayParam------------------------------\n");
    PROC_PRINT(p,"enPlayType:      %10d,   bPlayEnable:        %10d\n",
                       pMce->stMceParam.playType, pMce->stMceParam.fastplayflag
                   );

    
    pPlayParam = &pMce->stMceParam;
    if (MCE_PLAY_TYPE_DVB == pPlayParam->playType)
    {
    	PROC_PRINT(p,"enPlayType:      %10s,   bPlayEnable:        %10d\n",
                       "DVB", pMce->stMceParam.fastplayflag);
        PROC_PRINT(p,"u32VideoPid:     %10d,   u32AudioPid:        %10d\n"
                          "enVideoType:     %10d,   enAudioType:        %10d\n"
                          "u32Volume:       %10d,   enTrackMode:        %10d\n"
                          "tunerDevType:       %10d                            \n",
                          pPlayParam->Info.dvbInfo.VElementPid, pPlayParam->Info.dvbInfo.AElementPid,
                          pPlayParam->Info.dvbInfo.VideoType, pPlayParam->Info.dvbInfo.AudioType,
                          pPlayParam->Info.dvbInfo.volume, pPlayParam->Info.dvbInfo.trackMode,
                          pPlayParam->Info.dvbInfo.tunerDevType
                        );
   }
    else if (MCE_PLAY_TYPE_TSFILE == pPlayParam->playType)
    {
    	PROC_PRINT(p,"enPlayType:      %10s,   bPlayEnable:        %10d\n",
                       "TSFile", pMce->stMceParam.fastplayflag);
        PROC_PRINT(p,"u32VideoPid:     %10d,   u32AudioPid:        %10d\n"
                          "enVideoType:     %10d,   enAudioType:        %10d\n"
                          "u32Volume:       %10d,   enTrackMode:        %10d\n"
                          "u32ContentLen:   %10d                            \n",
                          pPlayParam->Info.tsFileInfo.VElementPid, pPlayParam->Info.tsFileInfo.AElementPid,
                          pPlayParam->Info.tsFileInfo.VideoType, pPlayParam->Info.tsFileInfo.AudioType,
                          pPlayParam->Info.tsFileInfo.volume, pPlayParam->Info.tsFileInfo.trackMode,
                          pPlayParam->Info.tsFileInfo.contentLen
                        );
    
    }
                   
    PROC_PRINT(p,"---------------------------PlayStatus-----------------------------\n");
    PROC_PRINT(p,"hAvplay:         %10d,   hWindow:            %10d\n"
                      "BeginTime:       %10d,   EndTime:            %10d\n",
                      pMce->hAvplay,    pMce->hWindow,
                      pMce->BeginTime,  pMce->EndTime
                   );
#endif
#endif

    return HI_SUCCESS;
}

static HI_S32 MCE_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)
{
    return HI_SUCCESS;
}
#endif

HI_S32 MCE_DRV_Open(struct inode *finode, struct file  *ffile)
{
    return HI_SUCCESS;
}

HI_S32 MCE_DRV_Close(struct inode *finode, struct file  *ffile)
{
    return HI_SUCCESS;
}

HI_S32 MCE_Ioctl(struct inode *inode, struct file *file, unsigned int cmd, HI_VOID *arg)
{
    HI_S32              Ret = HI_SUCCESS;
    PDM_EXPORT_FUNC_S   *pstPdmFuncs = HI_NULL;
    DISP_EXPORT_FUNC_S  *pstDispFuncs = HI_NULL;

    DRV_MCE_Lock();

    switch (cmd)
    {
        case HI_MCE_STOP_FASTPLAY_CMD:
        {
#ifdef HI_MCE_SUPPORT         
            Ret = HI_DRV_MCE_Stop((HI_UNF_MCE_STOPPARM_S *)arg);
#endif            
            break;
        }
        case HI_MCE_CLEAR_LOGO_CMD:
        {
            MCE_S               *pMce = &g_Mce;
            if (pMce->bLogoClear == HI_TRUE)
            {
                 Ret = HI_SUCCESS;
                 break;
            }
            pMce->bLogoClear = HI_TRUE;

            (HI_VOID)HI_DRV_MODULE_GetFunction(HI_ID_DISP, (HI_VOID **)&pstDispFuncs);
            (HI_VOID)HI_DRV_MODULE_GetFunction(HI_ID_PDM, (HI_VOID **)&pstPdmFuncs);

            if (HI_NULL != pstDispFuncs)
            {
                /* disable gfx */
                (HI_VOID)OPTM_GfxSetLogoLayerEnable(CONFIG_MCE_LAYER_ID,HI_FALSE);
                (HI_VOID)OPTM_GfxSetLogoLayerEnable(OPTM_GFX_LAYER_SD0,HI_FALSE);
            }

            if (HI_NULL != pstPdmFuncs)
            {
                /*release the reserve mem for logo*/
                pstPdmFuncs->pfnPDM_ReleaseReserveMem("LAYER_SURFACE");
                pstPdmFuncs->pfnPDM_ReleaseReserveMem("hifb_wbc2"); 
            }
	 		Ret = HI_SUCCESS;
            break;
        }
		
		case HI_MCE_GET_PLAY_CUR_STATUS_CMD:
		#ifdef HI_MCE_SUPPORT
		{
			HI_UNF_MCE_PLAYCURSTATUS_S curStatus;
			MCE_S               *pMce = &g_Mce;
			HI_U64   SysTime;

			SysTime = sched_clock();

    			do_div(SysTime, 1000000);
			
			curStatus.playedTime = SysTime - pMce->BeginTime;     
			HI_INFO_MCE("PlayTime = %d\n", curStatus.playedTime);

            curStatus.isEnded = pMce->bPlayStop;
			memcpy(arg, &curStatus, sizeof(HI_UNF_MCE_PLAYCURSTATUS_S));
			break;
		}
		#else
		{
			HI_ERR_MCE(" Not MCE mode call this function is forbidden!\n");
			Ret = HI_FAILURE;
			break;
		}	
		#endif	
		
		
		case HI_MCE_LOGO_EXIT_CMD:
		{
		#ifdef HI_MCE_SUPPORT
			MCE_S               *pMce = &g_Mce;
			HI_UNF_MCE_STOPPARM_S stStopParam;
          
			HI_DRV_MCE_ClearLogo();  
			stStopParam.enStopMode = HI_UNF_MCE_STOPMODE_BLACK;
			stStopParam.u32PlayCount = 1;
			stStopParam.u32PlayTime = 0;
			stStopParam.hNewWin = HI_NULL;
			if(pMce->stMceParam.playType == MCE_PLAY_TYPE_GPHFILE)
				Ret = HI_DRV_MCE_Stop(&stStopParam);
			Ret = HI_SUCCESS;
		#else		
			Ret = HI_SUCCESS;
		#endif
			break;
		}
	
        case HI_MCE_VID_EXIT_CMD:
        {
		#ifdef HI_MCE_SUPPORT
			HI_SYS_PREAV_PARAM_S stPreParm;
          	memcpy(&stPreParm, arg, sizeof(HI_SYS_PREAV_PARAM_S));
          	//Prepare to do AVStop
          	HI_INFO_MCE("come to HI_MCE_VID_EXIT_CMD option:0x%x, para1:0x%x\n", stPreParm.enOption, stPreParm.StepParam1);
          	fastplay_preAV(&stPreParm);
          	Ret = HI_SUCCESS;
		#else		
          	Ret = HI_SUCCESS;
		#endif
          	break;
        }
		case HI_MCE_GET_PALY_TIME:
		{
		#ifdef HI_MCE_SUPPORT
			HI_U32 u32PlayTime;
			MCE_S               *pMce = &g_Mce;
			HI_U64   SysTime;

			SysTime = sched_clock();

    		do_div(SysTime, 1000000); /*change to second*/

			u32PlayTime = SysTime - pMce->BeginTime;  
			HI_INFO_MCE("PlayTime = %d\n",u32PlayTime);
			memcpy(arg, &u32PlayTime, sizeof(HI_U32));
			Ret = HI_SUCCESS;
		#else		
			Ret = HI_SUCCESS;
		#endif
		break;
	}
		
        default:
            DRV_MCE_UnLock();
            return -ENOIOCTLCMD;        
    }

    DRV_MCE_UnLock();
    
    return Ret;
}

static long MCE_DRV_Ioctl(struct file *ffile, unsigned int cmd, unsigned long arg)
{
    HI_S32 Ret;

    Ret = HI_DRV_UserCopy(ffile->f_path.dentry->d_inode, ffile, cmd, arg, MCE_Ioctl);

    return Ret;
}

HI_S32 MCE_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    return HI_SUCCESS;
}

HI_S32 MCE_Resume(PM_BASEDEV_S *pdev)
{
    return HI_SUCCESS;
}

#ifdef HI_MCE_PROC_SUPPORT
static MCE_REGISTER_PARAM_S g_MceProcPara = {
    .rdproc = MCE_ProcRead,
    .wtproc = MCE_ProcWrite,
};
#endif

static UMAP_DEVICE_S g_MceRegisterData;


static struct file_operations g_MceFops =
{
    .owner          =    THIS_MODULE,
    .open           =     MCE_DRV_Open,
    .unlocked_ioctl =    MCE_DRV_Ioctl,
    .release        =   MCE_DRV_Close,
};

static PM_BASEOPS_S g_MceDrvOps = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = MCE_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = MCE_Resume,
};

HI_S32 MCE_DRV_ModInit(HI_VOID)
{
    HI_S32              Ret;
    HI_CHAR             ProcName[16];

#ifdef HI_MCE_PROC_SUPPORT	
    DRV_PROC_ITEM_S     *pProcItem = HI_NULL;
#endif

    Ret = HI_DRV_MODULE_Register(HI_ID_FASTPLAY, MCE_NAME, HI_NULL);
	if(HI_SUCCESS != Ret)
	{
		HI_FATAL_MCE("HI_DRV_MODULE_Register HI_ID_FASTPLAY failed.\n");
        return HI_FAILURE;
	}
    snprintf(ProcName,16, "%s", HI_MOD_MCE);
#ifdef HI_MCE_PROC_SUPPORT
    pProcItem = HI_DRV_PROC_AddModule(ProcName, HI_NULL, HI_NULL);
    if(HI_NULL != pProcItem)
    {
        pProcItem->read = g_MceProcPara.rdproc;
        pProcItem->write = g_MceProcPara.wtproc;
    }
#endif

    snprintf(g_MceRegisterData.devfs_name,HIMEDIA_DEVICE_NAME_MAX_LEN, UMAP_DEVNAME_MCE);
    g_MceRegisterData.fops = &g_MceFops;
    g_MceRegisterData.minor = UMAP_MIN_MINOR_MCE;
    g_MceRegisterData.owner  = THIS_MODULE;
    g_MceRegisterData.drvops = &g_MceDrvOps;
    if (HI_DRV_DEV_Register(&g_MceRegisterData) < 0)
    {
        HI_FATAL_MCE("register MCE failed.\n");
        return HI_FAILURE;
    }

    return  0;
}

HI_VOID MCE_DRV_ModExit(HI_VOID)
{
    HI_CHAR             ProcName[16];
    
    HI_DRV_DEV_UnRegister(&g_MceRegisterData);

    snprintf(ProcName, 16,"%s", HI_MOD_MCE);
#ifdef HI_MCE_PROC_SUPPORT
    HI_DRV_PROC_RemoveModule(ProcName);
#endif   
    HI_DRV_MODULE_UnRegister(HI_ID_FASTPLAY);
}

#ifdef MODULE
module_init(MCE_DRV_ModInit);
module_exit(MCE_DRV_ModExit);
#endif

MODULE_AUTHOR("HISILICON");
MODULE_LICENSE("GPL");

