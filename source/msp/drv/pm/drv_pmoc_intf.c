/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

#include <linux/init.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/kernel.h>
#include <asm/io.h>
#include <mach/platform.h>
#include <mach/hardware.h>
#include <asm/memory.h>
#include <linux/linkage.h>
#include <linux/fs.h>
#include <linux/timer.h>
#include <linux/device.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <linux/proc_fs.h>
#include <linux/errno.h>
#include "hi_common.h"
#include "hi_drv_pmoc.h"
#include "drv_pmoc_ioctl.h"

#include "hi_kernel_adapt.h"

#include "hi_drv_module.h"
//#include "hi_drv_proc.h"
#include "hi_drv_proc.h"
#include "drv_reg_ext.h"
#include "drv_dev_ext.h"
#include "drv_pmoc_priv.h"
#include "hi_osal.h"
#include "hi_reg_common.h"


static HI_U32 wdgon = 0;
static HI_U32 dbgmask	= 0x0;
static HI_U32 keyVal	= 0x8;
static HI_U32 kltype	= 2;
static HI_U32 timeVal	= 0xffffffff;
static HI_U32 dispMode	= 2;
static HI_U32 irtype	= 0;
static HI_U32 irpmocnum = 1;
static HI_U32 dispvalue = 0x00093a00;
static HI_U32 irValhigh[PMOC_WKUP_IRKEY_MAXNUM] = {
    0, 0, 0, 0, 0, 0
};
static HI_U32 irVallow[PMOC_WKUP_IRKEY_MAXNUM] = {
    0x639cff00, 0, 0, 0, 0, 0
};
static C51_PMOC_WAKEUP_E wakeupMode;

static HI_U32 g_u32StandbyPeriod = 0;
static HI_U32 GpioValArray[2] = {
    0, 0
};

static HI_U32 g_u32GpioPortVal = 0xff;

static UMAP_DEVICE_S g_stPmDev;

static HI_U8 g_u32WakeupVoutput=1;
static HI_U8 g_u8EthWakeUpEnable = 0;
static HI_U8 g_u8FwEnable = 0;

#define MCU_START_REG 0x600bf000
#define REG_CA_VENDOR_ID   0x1018012c //CA vendor id

#define HI_CHIP_NON_ADVCA   (0x2a13c812)
#define HI_CHIP_ADVCA       (0x6edbe953)

#define SUPPORT_ADVCA 0
#define NO_SUPPORT_ADVCA 1
#define GET_ADVCA_SUPPORT_ERR 2

static PM_CMD_DATA_S g_astProcCmd[PM_CMD_MAX_NUM];

static HI_U32 lu32vC51Code[MCU_CODE_MAXSIZE/4] = {
    #include "output.txt"
};

#define RUNTIME_CHECK_EN_REG_ADDR   0x10180084 //OTP:runtime_check_en indicator:0x10180084[20]
#define LPC_RST_DISABLE				0x10000144 //lpc_rst_disable: 0x10000144[0]
#define LPC_RAM_WR_DISABLE			0x10000144 //lpc_ram_wr_disable lock: 0x10000144[1]

static HI_U8 *ltvVirAddr = NULL;

static struct semaphore c51Sem;

extern HI_S32  VO_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern HI_S32  VO_Resume(PM_BASEDEV_S *pdev);
extern HI_S32  DISP_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern HI_S32  DISP_Resume(PM_BASEDEV_S *pdev);
#ifndef CHIP_TYPE_hi3110ev500
extern HI_S32 hdmi_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern HI_S32 hdmi_Resume(PM_BASEDEV_S *pdev);
#endif
extern HI_S32 hifb_suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern HI_S32 hifb_resume(PM_BASEDEV_S *pdev);

extern HI_S32 Disp_SetResumeMask(HI_BOOL bMask);
extern HI_S32 VO_SetResumeMask(HI_BOOL bMask);
extern HI_S32 DRV_HDMI_SetResumeMask(HI_BOOL bMask);
extern HI_S32 HIFB_SetResumeMask(HI_BOOL bMask);


extern HI_VOID HI_DRV_SYS_GetChipVersion(HI_CHIP_TYPE_E *penChipType, HI_CHIP_VERSION_E *penChipVersion);

#define C51_GetVIRAddr(addr) (ltvVirAddr + ((addr) - C51_BASE))


#if !defined (CHIP_TYPE_hi3716mv330)
static HI_U8 get_Advca_Support( void)
{
    HI_U32 AdvcaFlag;
    HI_REG_READ(IO_ADDRESS(0x10180128), AdvcaFlag);

    if (HI_CHIP_ADVCA == AdvcaFlag)
    {
        return SUPPORT_ADVCA;
    }
    else if (HI_CHIP_NON_ADVCA == AdvcaFlag)
    {
        return NO_SUPPORT_ADVCA;
    }
    else
    {
        HI_ERR_PM("invalid advca flag\n");
        return GET_ADVCA_SUPPORT_ERR;
    }

}
#endif

static HI_S32  c51_loadCode(HI_VOID)
{  
    HI_U32 i = 0;
    HI_U32 size = 0;
    HI_U32 *dwPtr = NULL;
	
    ltvVirAddr = (HI_U8 *)ioremap_nocache(C51_BASE, C51_SIZE);
    if (ltvVirAddr == NULL)
    {
        HI_WARN_PM("ioremap_nocache err! \n");
        return HI_FAILURE;
    }

    dwPtr = (HI_U32 *)C51_GetVIRAddr(C51_BASE);
    HI_INFO_PM("\n dwPtr BASE = %p\n", dwPtr);

    size = sizeof(lu32vC51Code);
    HI_INFO_PM("\n c51_loadCodetoRam  size = %d \n", size);
	
    for (i = 0; i < (size >> 2); i++)
    {
        HI_REG_WRITE32((dwPtr + i), lu32vC51Code[i]);
    }

    iounmap(ltvVirAddr);

    return HI_SUCCESS;
}


static HI_S32  c51_loadPara(HI_VOID)
{
    HI_S32 ret;
    HI_U32 i = 0;
    HI_U32 *dwPtr = NULL;
    HI_CHIP_TYPE_E enChipType=HI_CHIP_TYPE_BUTT;
    HI_CHIP_VERSION_E enChipID=HI_CHIP_VERSION_BUTT;
#if !defined (CHIP_TYPE_hi3716mv330)
    HI_U32 u32CaVendor = 0;
#endif

    HI_DRV_SYS_GetChipVersion(&enChipType, &enChipID);
    HI_INFO_PM("\n HI_DRV_SYS_GetChipVersion   enChipType = %d, enChipID = 0x%x \n", enChipType, enChipID);

    if (HI_CHIP_TYPE_HI3716M == enChipType)
    {
        /* set mcu to normal work status*/
        ret	 = readl((HI_VOID *)IO_ADDRESS(SRST_REQ_CTRL));
        ret &= ~0x2;
        writel(ret, (HI_VOID *)IO_ADDRESS(SRST_REQ_CTRL));
    }

    ltvVirAddr = (HI_U8 *)ioremap_nocache(C51_BASE, C51_SIZE);
    if (ltvVirAddr == NULL)
    {
        HI_WARN_PM("ioremap_nocache err! \n");
        return HI_FAILURE;
    }

    dwPtr = (HI_U32 *)C51_GetVIRAddr(C51_BASE + C51_DATA);

    if (g_u8FwEnable || g_u8EthWakeUpEnable)
    {
        HI_REG_WRITE32((dwPtr + 0), (enChipType | (2 << 8)) | (enChipID << 16));
    }
	else
	{
		HI_REG_WRITE32((dwPtr + 0), (enChipType | (enChipID << 16)));
	}

    HI_REG_WRITE32((dwPtr + 1), wdgon);
    HI_REG_WRITE32((dwPtr + 2), dbgmask);
    HI_REG_WRITE32((dwPtr + 3), GpioValArray[0]);  /*record gpio index, between 40 and 47 */
    HI_REG_WRITE32((dwPtr + 4), GpioValArray[1]);  /*record gpio output, 1 or 0 */

    HI_REG_WRITE32((dwPtr + 5), dispMode);
    HI_REG_WRITE32((dwPtr + 6), dispvalue);
    HI_REG_WRITE32((dwPtr + 7), timeVal);

    HI_REG_WRITE32((dwPtr + 8), kltype);
    HI_REG_WRITE32((dwPtr + 9), keyVal);

    HI_REG_WRITE32((dwPtr + 10), irtype);
    HI_REG_WRITE32((dwPtr + 11), irpmocnum);

    for (i = 0; i < irpmocnum; i++)
    {
        HI_REG_WRITE32((dwPtr + 12 + 2 * i), irVallow[i]);
        HI_REG_WRITE32((dwPtr + 13 + 2 * i), irValhigh[i]);
    }

	HI_REG_WRITE32((dwPtr + 13 + 2 * irpmocnum), g_u32GpioPortVal);

    iounmap(ltvVirAddr);
	
	if (g_u8FwEnable || g_u8EthWakeUpEnable)
    {
        g_pstRegSysCtrl->SC_GEN32 = (enChipType | (2 << 8)) | (enChipID << 16);
    }
	else
	{
		 g_pstRegSysCtrl->SC_GEN32 = (enChipType | (enChipID << 16));
	}
	g_pstRegSysCtrl->SC_GEN33 = wdgon;
	g_pstRegSysCtrl->SC_GEN34 = dbgmask;
	g_pstRegSysCtrl->SC_GEN35 = GpioValArray[0];
	g_pstRegSysCtrl->SC_GEN36 = GpioValArray[1];
	g_pstRegSysCtrl->SC_GEN37 = dispMode;
    g_pstRegSysCtrl->SC_GEN38 = dispvalue;
    g_pstRegSysCtrl->SC_GEN39 = timeVal;
	g_pstRegSysCtrl->SC_GEN40 = kltype;
	g_pstRegSysCtrl->SC_GEN41 = keyVal;
#if !defined (CHIP_TYPE_hi3716mv330)
	if(get_Advca_Support()==SUPPORT_ADVCA)
 	{
		/* save ca vendor */
    	HI_REG_READ32(IO_ADDRESS(REG_CA_VENDOR_ID), u32CaVendor);
    	u32CaVendor &= 0xff;
    	g_pstRegSysCtrl->SC_GEN42 = u32CaVendor;
 	}
#endif
	g_pstRegSysCtrl->SC_GEN43 = g_u32GpioPortVal;
	
	g_pstRegSysCtrl->SC_GEN44 = irtype;
	g_pstRegSysCtrl->SC_GEN45 = irpmocnum;

	dwPtr = (HI_U8*)ioremap_nocache(0x101e0f38, 0x100);
	if(dwPtr == NULL)
	{
		HI_WARN_PM("ioremap_nocache err! \n");
		return HI_FAILURE;
	}

	for (i = 0; i < irpmocnum; i++)
    {
	    HI_REG_WRITE32((dwPtr + 2 * i), irVallow[i]);
        HI_REG_WRITE32((dwPtr + 1 + 2 * i), irValhigh[i]);
    }

	iounmap(dwPtr);
	
    return HI_SUCCESS;
}


static HI_S32 c51_suspend (PM_BASEDEV_S *pdev, pm_message_t state)
{
    HI_S32 ret = 0;

    ret = c51_loadPara();
    if (ret)
    {
        HI_ERR_PM("c51_loadPara err! \n");
        return HI_FAILURE;
    }
    HI_INFO_PM("c51_loadPara ok! \n");
#if !defined (CHIP_TYPE_hi3716mv330)
    if(get_Advca_Support()==SUPPORT_ADVCA)
    {
    	g_pstRegSysCtrl->SC_GEN12 = dispMode;
    	g_pstRegSysCtrl->SC_GEN13 = dispvalue;
    	g_pstRegSysCtrl->SC_GEN14 = timeVal;
    }
#endif
    wakeupMode = C51_PMOC_WAKEUP_BUTT;

    g_u32StandbyPeriod = 0;

	if(g_u32WakeupVoutput)
	{
		VO_SetResumeMask(0);
		Disp_SetResumeMask(0);
#ifndef CHIP_TYPE_hi3110ev500
		DRV_HDMI_SetResumeMask(0);
#endif
		HIFB_SetResumeMask(0);
	}
	else
	{
		VO_SetResumeMask(1);
		Disp_SetResumeMask(1);
#ifndef CHIP_TYPE_hi3110ev500
		DRV_HDMI_SetResumeMask(1);
#endif
		HIFB_SetResumeMask(1);
	}
	HI_PRINT("PM suspend OK\n");
    return HI_SUCCESS;
}


static HI_S32 c51_resume(PM_BASEDEV_S *pdev)
{
#if !defined (CHIP_TYPE_hi3716mv330)
	HI_U32 RuntimeCheckFlag;
#endif
   wakeupMode = g_pstRegSysCtrl->SC_GEN17;
   if (wakeupMode >= C51_PMOC_WAKEUP_BUTT)
   	 HI_ERR_PM(" wakeup mode err: %d! \n", wakeupMode);
   g_u32StandbyPeriod = g_pstRegSysCtrl->SC_GEN18;
 
#if !defined (CHIP_TYPE_hi3716mv330)
   if(get_Advca_Support()==SUPPORT_ADVCA)
	{
        HI_REG_WRITE32(IO_ADDRESS(MCU_START_REG), 0x1); //start MCU		      
        HI_REG_READ(IO_ADDRESS(RUNTIME_CHECK_EN_REG_ADDR), RuntimeCheckFlag);
        if(RuntimeCheckFlag & 0x100000) //Runtime check is enabled
        {
            HI_REG_WRITE32(IO_ADDRESS(LPC_RST_DISABLE), 0x1); //Lock C51 RAM
            HI_REG_WRITE32(IO_ADDRESS(LPC_RAM_WR_DISABLE), 0x2); //Lock C51 reset
        }
	}
#endif
	HI_INFO_PM(" c51_resume ok! \n");
    return HI_SUCCESS;
}

static PM_BASEOPS_S c51_baseOps = {
    .probe	= NULL,
    .remove = NULL,
    .shutdown = NULL,
    .prepare  = NULL,
    .complete = NULL,
    .suspend  = c51_suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume		  = c51_resume
};

static HI_VOID C51_SetScene(HI_UNF_PMOC_SCENE_E sence)
{
    if (sence == HI_UNF_PMOC_SCENE_ETH)
    {
        g_u8FwEnable = 1;
    }
    else
    {
        g_u8FwEnable = 0;
    }

	return;
}


HI_VOID C51_EnterSmartStandby(HI_U32 u32HoldModules)
{
	 PM_BASEDEV_S *pdev=NULL;
	 pm_message_t state={0};
	 /*HDMI_EXPORT_FUNC_S pstHdmiFunc;
	 s32Ret = HI_DRV_MODULE_GetFunction(HI_ID_FB, (HI_VOID**)&pstHdmiFunc);
     if ((HI_SUCCESS == s32Ret) && (pstHdmiFunc && pstHdmiFunc->pfnGpioResume))
     {
          if (HI_SUCCESS != pstHdmiFunc->pfnGpioResume(HI_NULL))
          {
                HI_ERR_PM("GPIO resume fail.\n");
          }
     }*/
      
	
	hifb_suspend(pdev,state);
	VO_Suspend(pdev,state);
	DISP_Suspend(pdev,state);
#ifndef CHIP_TYPE_hi3110ev500
	hdmi_Suspend(pdev,state);
#endif
}

HI_VOID C51_QuitSmartStandby(HI_VOID)
{
	PM_BASEDEV_S *pdev=NULL;
	if(g_u32WakeupVoutput)
	{
		VO_SetResumeMask(0);
		Disp_SetResumeMask(0);
#ifndef CHIP_TYPE_hi3110ev500
		DRV_HDMI_SetResumeMask(0);
#endif
		HIFB_SetResumeMask(0);
	}
	else
	{
		VO_SetResumeMask(1);
		Disp_SetResumeMask(1);
#ifndef CHIP_TYPE_hi3110ev500
		DRV_HDMI_SetResumeMask(1);
#endif
		HIFB_SetResumeMask(1);
	}
#ifndef CHIP_TYPE_hi3110ev500	
	hdmi_Resume(pdev);
#endif
	DISP_Resume(pdev);
	VO_Resume(pdev);
	hifb_resume(pdev);
}


static long c51_Ioctl(struct file *file, HI_U32 cmd, HI_SIZE_T arg)
{
    long ret;

    HI_VOID __user *argp = (HI_VOID __user*)arg;

    ret = down_interruptible(&c51Sem);
    if (ret)
    {
        HI_ERR_PM(" down_interruptible err ! \n");
        return ret;
    }

    switch (cmd)
    {
    case HI_PMOC_STANDBY_CMD:
    {
        C51_PMOC_DISP_S dispInfo;

        if (copy_from_user(&dispInfo, argp, sizeof(C51_PMOC_DISP_S)))
        {
            HI_WARN_PM("copy data from user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

        dispMode  = dispInfo.mode;
        dispvalue = dispInfo.value;

        HI_INFO_PM("dispMode = %d \n", dispMode);
        HI_INFO_PM("dispvalue = 0x%08x \n", dispvalue);

        ret = HI_SUCCESS;

        break;
    }
    case HI_PMOC_SET_WAKEUP_CMD:
    {
        HI_U32 i;
        C51_PMOC_VAL_S pmocVal;

        if (copy_from_user(&pmocVal, argp, sizeof(C51_PMOC_VAL_S)))
        {
            HI_WARN_PM("copy data from user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

        irpmocnum = pmocVal.irnum;
         if (irpmocnum > PMOC_WKUP_IRKEY_MAXNUM)
         {
            HI_WARN_PM("Out of the max ir number !\n");
            ret = HI_ERR_C51_INVALID_PARAM;
            break;
        }

        if ((irtype != 4) && (irpmocnum > 1))
        {
            HI_WARN_PM("only ir raw type support several power keys, others support only one power key !\n");
            ret = HI_ERR_C51_INVALID_PARAM;
            break;
        }

        for (i = 0; i < irpmocnum; i++)
        {
            irVallow[i]	 = pmocVal.irlVal[i];
            irValhigh[i] = pmocVal.irhVal[i];
        }

#ifdef HI_KEYLED_SUPPORT
        keyVal = pmocVal.keyVal;
#else
        keyVal = 0xffffffff;
#endif
        timeVal = pmocVal.timeVal;

        g_u8EthWakeUpEnable = pmocVal.ethWakeupFlag;

        /* use this param 'wdgon' to control resume reset in C51*/
        wdgon = pmocVal.resumeResetFlag;

		g_u32WakeupVoutput = pmocVal.videoOutputEnable;

		g_u32GpioPortVal = pmocVal.gpioPort;

        ret = HI_SUCCESS;

        break;
    }

	case HI_PMOC_GET_WAKEUP_CMD:
    {
        HI_U32 i;
        C51_PMOC_VAL_S pmocVal;

        memset(&pmocVal, 0, sizeof(pmocVal));

        pmocVal.irnum = irpmocnum;

        for (i = 0; i < irpmocnum; i++)
        {
            pmocVal.irlVal[i] = irVallow[i];
            pmocVal.irhVal[i] = irValhigh[i];
        }

#ifdef HI_KEYLED_SUPPORT
        pmocVal.keyVal = keyVal;
#else
        pmocVal.keyVal = 0xffffffff;
#endif
        pmocVal.timeVal = timeVal;
        pmocVal.ethWakeupFlag = g_u8EthWakeUpEnable;

        /* use this param 'wdgon' to control resume reset in C51*/
        pmocVal.resumeResetFlag = wdgon;

		pmocVal.videoOutputEnable = g_u32WakeupVoutput;

        pmocVal.gpioPort = g_u32GpioPortVal;

        if (copy_to_user(argp, &pmocVal, sizeof(C51_PMOC_VAL_S)))
        {
            HI_WARN_PM(" copy data to user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

        ret = HI_SUCCESS;

        break;
    }

    case HI_PMOC_WAKEUP_READY_CMD:
    {
        ret = HI_SUCCESS;
        break;
    }

    case HI_PMOC_WAKEUP_FINISH_CMD:
    {
        if (copy_to_user(argp, &wakeupMode, sizeof(C51_PMOC_WAKEUP_E)))
        {
            HI_WARN_PM(" copy data to user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

        ret = HI_SUCCESS;

        break;
    }
    case HI_PMOC_GET_PERIOD_CMD:
    {
        if (copy_to_user(argp, &g_u32StandbyPeriod, sizeof(HI_U32)))
        {
            HI_WARN_PM(" copy data to user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

        ret = HI_SUCCESS;

        break;
    }
    case HI_PMOC_WAKEUP_SETDEV_CMD:
    {
        C51_PMOC_DEV_S dev;

        if (copy_from_user(&dev, argp, sizeof(C51_PMOC_DEV_S)))
        {
            HI_WARN_PM(" copy data from user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

#ifdef HI_KEYLED_SUPPORT
        kltype = dev.kltype;
#endif
        irtype = dev.irtype;

        ret = HI_SUCCESS;

        break;
    }

    case HI_PMOC_LOAD_MCUCODE_CMD:
    {
        if (copy_from_user(lu32vC51Code, argp, sizeof(lu32vC51Code)))
        {
            HI_WARN_PM(" copy data from user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;

            break;
        }
		ret = c51_loadCode();
    	if (ret)
    	{
        	HI_ERR_PM("c51_loadCode err! \n");
        	return HI_FAILURE;
    	}

        ret = HI_SUCCESS;

        break;
    }

    case HI_PMOC_SET_SCENE_CMD:
    {
        HI_UNF_PMOC_SCENE_E enPmocSence;

        if (copy_from_user(&enPmocSence, argp, sizeof(HI_UNF_PMOC_SCENE_E)))
        {
            HI_WARN_PM(" copy data from user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

        C51_SetScene(enPmocSence);

        ret = HI_SUCCESS;

        break;
    }

    case HI_PMOC_SET_PWROFFGPIO_CMD:
    {
        if (copy_from_user(GpioValArray, argp, sizeof(GpioValArray)))
        {
            HI_WARN_PM(" copy data from user fail!\n");
            ret = HI_ERR_C51_COPY_DATA_ERR;
            break;
        }

        ret = HI_SUCCESS;

        break;
    }

	case HI_PMOC_ENTER_SMARTSTANDBY_CMD:
	{
		HI_U32 u32HoldModules;
		if (copy_from_user(&u32HoldModules, argp, sizeof(u32HoldModules)))
		{
			HI_WARN_PM("copy data from user fail!\n");
			ret = HI_ERR_C51_COPY_DATA_ERR;
			break;
		}
		
		C51_EnterSmartStandby(u32HoldModules);
		ret = HI_SUCCESS;
		break;
	}
		
	case HI_PMOC_QUIT_SMARTSTANDBY_CMD:
	{
		C51_QuitSmartStandby();
		ret = HI_SUCCESS;
		break;
	}

    default:
    {
        ret = -ENOIOCTLCMD;
        break;
    }
    }

    up(&c51Sem);

#if 0
    if (ret == HI_SUCCESS)
    {
        HI_INFO_C51("cmd = 0x%08x  ok !\n", cmd);
    }
#endif

    return ret;
}

static HI_S32 c51_Open(struct inode *inode, struct file *filp)
{
    return HI_SUCCESS;
}

static HI_S32 c51_Release(struct inode *inode, struct file *filp)
{
    return HI_SUCCESS;
}

static struct file_operations stC51fopts = {
    .owner = THIS_MODULE,
    .open  = c51_Open,
    .release		= c51_Release,
    .unlocked_ioctl = c51_Ioctl,
};

HI_S32 PMParseCmd(HI_U8* pu8Cmd, HI_U32 u32Len, PM_CMD_DATA_S** pstCmd, HI_U32* pu32Num)
{
    HI_U32 u32Pos = 0;
    HI_U32 u32SavePos = 0;
    HI_U32 u32CmdNum  = 0;
    HI_BOOL bIsCmd = HI_TRUE;
    HI_U8 u8LastChar = ' ';

    if ((HI_NULL == pu8Cmd) || (0 == u32Len) || (HI_NULL == pstCmd) || (HI_NULL == pu32Num))
    {
        HI_ERR_PM("Invalid.\n");
        return HI_FAILURE;
    }

    u32CmdNum = 0;
    memset(g_astProcCmd, 0, sizeof(g_astProcCmd));

    while ((u32Pos < u32Len) && (pu8Cmd[u32Pos]))
    {
        switch (pu8Cmd[u32Pos])
        {
        case '\0':
        case '\n':
        case '\t':
            break;

        case '=':
            if (bIsCmd)
            {
                bIsCmd = HI_FALSE;
                u32SavePos = 0;
            }

            break;
        case ' ':
            if (!((' ' == u8LastChar) || ('=' == u8LastChar)))
            {
                bIsCmd = !bIsCmd;
                u32SavePos = 0;
                if (bIsCmd)
                {
                    if (u32CmdNum < PM_CMD_MAX_NUM - 1)
                    {
                        u32CmdNum++;
                    }
                    else
                    {
                        goto out;
                    }
                }
            }

            break;
        default:
            if (bIsCmd)
            {
                if (u32SavePos < PM_CMD_MAX_CMD_LEN)
                {
                    g_astProcCmd[u32CmdNum].aszCmd[u32SavePos++] = pu8Cmd[u32Pos];
                }
            }
            else
            {
                if (u32SavePos < PM_CMD_MAX_VLAUE_LEN)
                {
                    g_astProcCmd[u32CmdNum].aszValue[u32SavePos++] = pu8Cmd[u32Pos];
                }
            }

            break;
        }

        u8LastChar = pu8Cmd[u32Pos];
        u32Pos++;
    }

out:
    if (strlen(g_astProcCmd[u32CmdNum].aszCmd) > 0)
    {
        u32CmdNum += 1;
    }

    *pstCmd  = g_astProcCmd;
    *pu32Num = u32CmdNum;
    return HI_SUCCESS;
}

HI_U32 PMParseValue(HI_U8* pu8Value)
{
    if (strlen(pu8Value) < 2)
    {
        return (HI_U32)simple_strtoul(pu8Value, HI_NULL, 10);
    }
    else
    {
        if ((pu8Value[0] == '0') && ((pu8Value[1] == 'x') || (pu8Value[1] == 'X')))
        {
            return (HI_U32)simple_strtoul(pu8Value, HI_NULL, 16);
        }
        else
        {
            return (HI_U32)simple_strtoul(pu8Value, HI_NULL, 10);
        }
    }
}

/***********************************************************************/
/*entrance of function controled by the proc file system*/
/*CNcomment:通过proc文件系统进行控制的函数入口*/
static HI_S8 g_s8KeyLedType[5][16] = {
    "74HC164", "PT6961", "CT1642", "PT6964", "FD650"
};
static HI_S8 g_s8IRType[5][16] = {
    "NEC Simple", "TC9012", "NEC Full", "SONY", "RAW"
};
static HI_S8 g_s8DebugType[5][32] = {
    "No debug info",          "Save debug info to ram",
    "Show debug info to LED", "Save to ram & Show to LED",
    "Show debug info in serial port"
};

static HI_S32 PMProcRead(struct seq_file *p, HI_VOID *v)
{
    HI_U8 i;

    PROC_PRINT(p, "---------Hisilicon PM Info---------\n");
    PROC_PRINT(p,
               "Scene                   \t :%s\n"
               "Ethernet WakeUp         \t :%s\n"
               "Display Mode            \t :%s\n"
               "Display Value           \t :0x%08x\n"
               "WakeUp TimeOut          \t :%u(ms)\n"
               "KeyLed Type             \t :%s\n"
               "KeyLed WakeUp Key       \t :%d\n"
               "IR Type                 \t :%s\n"
               "IR WakeUp Key Number    \t :%d\n",

               (g_u8FwEnable == 1) ? "Eth Forward" : "Standard",
               (g_u8EthWakeUpEnable == 1) ? "Enable" : "Disable",
               (dispMode == 0) ? "No Display" : ((dispMode == 1) ? "Display Number" : "Display Time"),
               dispvalue,
               timeVal,
               g_s8KeyLedType[kltype],
               keyVal,
               g_s8IRType[irtype],
               irpmocnum);

    for (i = 0; i < irpmocnum; i++)
    {
        PROC_PRINT(p, "IR WakeUp Key:          \t :High 32-bit(0x%x), Low 32-bit(0x%x)\n",
                   irValhigh[i], irVallow[i]);
    }

    PROC_PRINT(p,
               "Wake Up Reset             \t :%s \n"
               "Debug Mode                \t :%s \n"
               "Gpio wake up port         \t :%d \n"
               "Power off GPIO Number     \t :%d \n"
               "Power off GPIO Direction  \t :%d \n",

               (wdgon == 1) ? "Enable" : "Disable",
               g_s8DebugType[dbgmask],
               g_u32GpioPortVal,
               GpioValArray[0],
               GpioValArray[1]);

    return HI_SUCCESS;
}

HI_S32 MCUDebugCtrl(HI_U32 u32Para1, HI_U32 u32Para2)
{
    if ((u32Para1 == 0) || (u32Para1 == 1))
    {
        wdgon = u32Para1;
    }
    else
    {
        HI_ERR_PM("plese set the value of wdgon : 0x0(CLOSE) or 0x1(ON)\n");
    }

    if (u32Para2 <= 7)
    {
        dbgmask = u32Para2;
    }
    else
    {
        HI_ERR_PM("plese set the value of dbgmask : between 0x0 and 0x3\n");
    }

    return HI_SUCCESS;
}

static HI_VOID MCUProcHelper(HI_VOID)
{
    HI_DRV_PROC_EchoHelper(
        "echo reset=0/1 > /proc/hisi/msp/pm, wake up reset or not.\n"
        "echo debug=0/1/2/4> /proc/hisi/msp/pm, set debug level:\n"
        "\t0: %s;\n"
        "\t1: %s;\n"
        "\t2: %s;\n"
        "\t4: %s.\n",
        g_s8DebugType[0], g_s8DebugType[1], g_s8DebugType[2], g_s8DebugType[3]
        );

    return;
}

static HI_S32 PMProcWrite(struct file * file,
                          const char __user * buf, size_t count, loff_t *ppos)
{
    HI_CHAR ProcPara[64] = {
        0
    };
    HI_S32 s32Ret;
    HI_U32 u32CmdNum = 0;
    PM_CMD_DATA_S* pstCmd = HI_NULL;

    if (copy_from_user(ProcPara, buf, count))
    {
        return -EFAULT;
    }

    s32Ret = PMParseCmd(ProcPara, count, &pstCmd, &u32CmdNum);
    if (HI_SUCCESS != s32Ret)
    {
        goto err;
    }

    if (1 == u32CmdNum)
    {
        /* Only set reset mode */
        if (0 == HI_OSAL_Strncasecmp(PM_CMD_WAKEUPRESET, pstCmd[0].aszCmd, strlen(pstCmd[0].aszCmd)))
        {
            MCUDebugCtrl(PMParseValue(pstCmd[0].aszValue), dbgmask);
        }
        /* Only set debug level */
        else if (0 == HI_OSAL_Strncasecmp(PM_CMD_FREQ, pstCmd[0].aszCmd, strlen(pstCmd[0].aszCmd)))
        {
            MCUDebugCtrl(wdgon, PMParseValue(pstCmd[0].aszValue));
        }
        /* Help */
        else if (0 == HI_OSAL_Strncasecmp(PM_CMD_HELP, pstCmd[0].aszCmd, strlen(pstCmd[0].aszCmd)))
        {
            MCUProcHelper();
        }

        /* Support 0xXXX 0xXXX command */
        else
        {
            MCUDebugCtrl(PMParseValue(pstCmd[0].aszCmd), PMParseValue(pstCmd[0].aszValue));
        }
    }
    else
    {
        goto err;
    }

    return count;

err:
    HI_DRV_PROC_EchoHelper("Invaid parameter.\n");
    MCUProcHelper();
    return count;
}


/***********************************************************************/

HI_S32 PMOC_DRV_ModInit(HI_VOID)
{
    HI_S32 ret;
    DRV_PROC_ITEM_S *item;

    HI_INIT_MUTEX(&c51Sem);

    ret = HI_DRV_MODULE_Register(HI_ID_PM, "HI_PM", HI_NULL);
    if (HI_SUCCESS != ret)
    {
        HI_ERR_PM("c51 init fail ret = 0x%x!\n", ret);
        return ret;
    }

    item = HI_DRV_PROC_AddModule("pm", NULL, NULL);
    if (!item)
    {
        HI_ERR_PM("add proc module failed\n");
        return HI_FAILURE;
    }

    item->read	= PMProcRead;
    item->write = PMProcWrite;

    HI_OSAL_Snprintf(g_stPmDev.devfs_name, sizeof(g_stPmDev.devfs_name), UMAP_DEVNAME_PM);
    g_stPmDev.fops   = &stC51fopts;
    g_stPmDev.minor  = UMAP_MIN_MINOR_PM;
    g_stPmDev.owner  = THIS_MODULE;
    g_stPmDev.drvops = &c51_baseOps;
    if (HI_DRV_DEV_Register(&g_stPmDev) < 0)
    {
        HI_FATAL_PM("Unable to register pm dev\n");
        return HI_FAILURE;
    }
	ret = c51_loadCode();
    if (ret)
    {
        HI_ERR_PM("c51_loadCode err! \n");
        return HI_FAILURE;
    }
#if !defined (CHIP_TYPE_hi3716mv330)
    if(get_Advca_Support()==SUPPORT_ADVCA)
    {
        /* before start mcu, clear the runtime check ok flag */
        g_pstRegSysCtrl->SC_GEN27 = 0;
        
        HI_REG_WRITE32(IO_ADDRESS(MCU_START_REG), 0x1); //start MCU
    }
#endif
    
#ifdef MODULE
#ifndef HI_ADVCA_FUNCTION_RELEASE
    HI_PRINT("Load hi_pmoc.ko success.\t(%s)\n", VERSION_STRING);
#endif
#endif

    return HI_SUCCESS;
}

HI_VOID PMOC_DRV_ModExit(HI_VOID)
{
    HI_DRV_PROC_RemoveModule("pm");

     HI_DRV_DEV_UnRegister(&g_stPmDev);

    (HI_VOID)HI_DRV_MODULE_UnRegister(HI_ID_PM);

    HI_INFO_PM(" ok! \n");

    return;
}

#ifdef MODULE
module_init(PMOC_DRV_ModInit);
module_exit(PMOC_DRV_ModExit);
#endif

MODULE_LICENSE("GPL");
