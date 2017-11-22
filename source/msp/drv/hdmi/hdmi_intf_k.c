/******************************************************************************
 *
 * Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
 *
 * This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
 *  and may not be copied, reproduced, modified, disclosed to others, published or used, in
 * whole or in part, without the express prior written permission of Hisilicon.
 *

 ******************************************************************************
  File Name     : hdmi_intf_k.c
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2014/6/13
  Description   :
  History       :
  Date          : 2014/6/13
  Author        : l00271847
  Modification  :
*******************************************************************************/

/*  hdmi_intf_k.c
 *
 * Copyright (c) 2010 Hisilicon Co., Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *
 * along with this program;
 *
 * History:
 *
 */
#include <linux/version.h>
#include <linux/device.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/fs.h>
#include <asm/uaccess.h>
#include <asm/io.h>
#include <asm/delay.h>
#include <linux/poll.h>
#include <mach/hardware.h>
#include <linux/interrupt.h>
#include <linux/vmalloc.h>
#include <linux/slab.h>
#include <linux/timer.h>
#include <linux/delay.h>

//#include "common_dev.h"
//#include "common_proc.h"

//#include "mpi_priv_hdmi.h"
//#include "mpi_priv_disp.h"
#include "si_defstx.h"
#include "si_hdmitx.h"
#include "si_edid.h"
#include "si_mpi_hdmi.h"
#include "hi_unf_hdmi.h"

#include "si_audio.h"
#include "si_infofrm.h"
#include "si_txapidefs.h"
#include "si_hdcpdefs.h"
#include "si_eedefs.h"
#include "si_de.h"
#include "si_txvidp.h"
#include "si_timer.h"
#include "si_eeprom.h"
#include "si_cec.h"
#include "hi_type.h"

#include "drv_global.h"
#include "drv_hdmi_ioctl.h"
#include "drv_compatibility.h"
#include "drv_hdmi.h"

#include "drv_dev_ext.h"
#include "hi_drv_proc.h"
#include "hi_kernel_adapt.h"
#include "hi_drv_hdmi.h"
#include "hi_drv_disp.h"

HI_DECLARE_MUTEX(g_hdmiMutex);
HI_U32 g_VirHDMI_PHY_BASE_ADDR = 0;

#define HI_ERR_HDMI_COPY_DATA_ERR       -2
#define HI_ERR_HDMI_MALLOC_ERR          -3
#define HI_ERR_HDMI_FAILURE             -4

//#define TX_SLV1							(0x7A)
//#define TX_SLV0							(0x72)
//#define HDMI_DEV_CEC					(0xCC)

#define WAKEUP_MODE_ADDR 0x101E00C4
#define TIMER_WAKEUP 2

static HI_U32 g_u32CallbackAddr = 0;
static HI_U32 FromUserSpaceFlag = HI_TRUE;
static HI_U32  g_KernelProcID = HI_INVALID_HANDLE;
static HI_U32 HDMIStandbySetupFlag  = HI_FALSE;
static HI_BOOL HDMIResumeMask = HI_FALSE;
extern HI_U32 g_HDMIKernelInitNum;

HI_S32 DRV_HDMI_SetResumeMask(HI_BOOL bMask)
{
    HI_ERR_HDMI("Set11::HDMIResumeMask = %d\n", HDMIResumeMask);  
    if((bMask != HI_TRUE) && (bMask != HI_FALSE))
    {
        HI_ERR_HDMI("DRV_HDMI_SetResumeMask set wrong bMask value = %d\n", bMask);       
        return HI_FAILURE;
    }
    
    HDMIResumeMask = bMask;
    HI_ERR_HDMI("Set22::HDMIResumeMask = %d\n", HDMIResumeMask);  
    return HI_SUCCESS;
}   

static inline HI_S32 DRV_HDMI_GetResumeMask(void)
{
    HI_S32 s32Ret = 0;
    
    s32Ret =  readl((HI_VOID *)IO_ADDRESS(WAKEUP_MODE_ADDR));
    if ((TIMER_WAKEUP  ==  s32Ret) && (HI_TRUE == HDMIResumeMask))
    {
     HI_ERR_HDMI("Get::HDMIResumeMask = %d; s32Ret = %d; HI_TRUE: %d\n", HDMIResumeMask, s32Ret, HI_TRUE);  
     return HI_TRUE;
    }
    HI_ERR_HDMI("Get22::HDMIResumeMask = %d; s32Ret = %d; HI_TRUE: %d\n", HDMIResumeMask, s32Ret, HI_TRUE);  
    return HI_FALSE;
}    


HI_U32 g_u32ProcHandle = HI_INVALID_HANDLE;


#ifdef HDMI_WORKQUEUE_SUPPORT
extern struct workqueue_struct *hdmi_event_queue;
extern DRV_HDMI_work_event hdmi_event_struct;
#endif

//-------------------------------------------------------------------

/*****************************************************************************
 Prototype    : hdmi_Proc
 Description  : HDMI status in /proc/msp/hdmi
 Input        : None
 Output       : None
 Return Value :
 Calls        :
*****************************************************************************/
//#define __HDMI_INTERRUPT__ //hdmi IRQ Test

#ifdef __HDMI_INTERRUPT__
#define HDMI_IRQ_NUM   (67 + 32) //x5 (88 + 32)//x5 s40 (88 + 32) //32
static HI_U32 g_HDMIIrqHandle = 0;

//Interrupt route
static irqreturn_t HDMI_Isr(HI_S32 irq, HI_VOID *dev_id)
{
    HI_U8 IntReg[4], IntStatus;

    /* Read HDMI Interrupt Status Register */
    //if(0 != ReadByteHDMITXP0(HDMI_INT_STATE))
    IntStatus = ReadByteHDMITXP0(HDMI_INT_STATE);
    SI_ReadBlockHDMITXP0(HDMI_INT_ADDR, 4, IntReg);
    HI_PRINT("IntStatus:0x%x, interupthandler: 0x%x 0x%x 0x%x 0x%x\n", IntStatus, IntReg[0], IntReg[1], IntReg[2], IntReg[3]);
    SI_WriteBlockHDMITXP0(HDMI_INT_ADDR, 4, IntReg);

    SI_ReadBlockHDMITXP0( HDMI_INT_MASK_ADDR, 4, IntReg);
    HI_PRINT("ISR Mask: 0x%x 0x%x 0x%x 0x%x\n", IntReg[0], IntReg[1], IntReg[2], IntReg[3]);

    SI_ReadBlockHDMITXP0( INT_CNTRL_ADDR, 1, IntReg);
    HI_PRINT("Interrupt Control Register: 0x%x\n", IntReg[0]);

    //WriteByteHDMITXP0( 0x79, 0x00);
    //s40 hdmi tx的中断为低有效
    WriteByteHDMITXP0( INT_CNTRL_ADDR, 0x02);

    return 0;
}

void HDMI_IRQ_Setup(void)
{
    if (g_HDMIIrqHandle != 0)
    {
        COM_ERR("HDMI force to free HMDI Irq first\n");
        free_irq(HDMI_IRQ_NUM, &g_HDMIIrqHandle);
        g_HDMIIrqHandle = 0;
    }
    SI_HdmiHardwareReset(0);
    WriteByteHDMITXP0 (INT_CNTRL_ADDR, /*0x00*/0X02);

    /* Setup HDMI Interrupt */
    if (request_irq(HDMI_IRQ_NUM, (irq_handler_t)HDMI_Isr, IRQF_SHARED, "HDMI_IRQ", &g_HDMIIrqHandle) != 0)
    {
        COM_ERR("HDMI registe IRQ failed!\n");
        return IRQ_HANDLED;
    }
    HI_PRINT("succeed to request HDMI irq No:%d, handle:0x%x\n", HDMI_IRQ_NUM, g_HDMIIrqHandle);

    return IRQ_HANDLED;
}

void HDMI_IRQ_Exit(void)
{
    /* Free HDMI Interrupt */
    //disable_irq(HDMI_IRQ_NUM);
    free_irq(HDMI_IRQ_NUM, &g_HDMIIrqHandle);
    HI_PRINT("close hdmi irq\n");
    g_HDMIIrqHandle = 0;
    return;
}
#endif


/*no use to use reference, we just get a func ptr.*/
HI_S32 hdmi_Open(struct inode *inode, struct file *filp)
{
    g_u32ProcHandle = (HI_U32)filp;

    return HI_SUCCESS;
}

HI_S32 hdmi_Close(struct inode *inode, struct file *filp)
{
    HI_U32 u32Index;
    HDMI_PROC_EVENT_S *pEventList =  DRV_Get_EventList(HI_UNF_HDMI_ID_0);

    COM_INFO("\n\ncome to hdmi_Close\n\n");

    for(u32Index = 0; u32Index < MAX_PROCESS_NUM; u32Index++)
    {
        if (pEventList[u32Index].u32ProcHandle == (HI_U32)filp)
        {
            DRV_HDMI_ReleaseProcID(HI_UNF_HDMI_ID_0, u32Index);
            break;
        }
    }

    if(DRV_Get_IsThreadStoped())
    {
        //avoid ctrl+c in setFormatting / setAttring
        DRV_Set_ThreadStop(HI_FALSE);
    }

    DRV_HDMI_DeInit(HI_TRUE);

    if(DRV_HDMI_GetInitNum(HI_UNF_HDMI_ID_0) == 0)
    {
        HDMIStandbySetupFlag = HI_FALSE;
    }
    //disp_func_ops = NULL;
	return 0;
}

unsigned int suspend_flag = 0;
unsigned int start_flag = 0;
extern HDMI_CHN_ATTR_S  *DRV_Get_Glb_Param(void);

extern HI_VOID HDMI_PinConfig(HI_VOID);

HI_S32 hdmi_Suspend(PM_BASEDEV_S *pdev, pm_message_t state)
{
    //volatile HI_U32 *pulArgs = (HI_U32*)IO_ADDRESS(HDMI_HARDWARE_RESET_ADDR);
    //HI_U32 tmp = 0;
    //HDMI_CHN_ATTR_S *g_stHdmiChnParam_ptr = NULL;
#if defined (CEC_SUPPORT)
    HDMI_CHN_ATTR_S *pstChnAttr = DRV_Get_ChnAttr();
#endif

    if (HI_FALSE == HDMIStandbySetupFlag)
    {
    	COM_FATAL("HDMI Do not setup before\n");
    	return 0;
    }

	if (suspend_flag == 1)
	{
	      HI_FATAL_HDMI("HDMI has suspended.\n");
		  return 0;
	}

    //g_stHdmiChnParam_ptr = DRV_Get_ChnAttr();
    suspend_flag = 1;

    SI_SendCP_Packet(ON);
    SI_SetHdmiVideo(HI_FALSE);
    SI_SetHdmiAudio(HI_FALSE);
    start_flag = DRV_Get_IsChnStart(HI_UNF_HDMI_ID_0);
    DRV_Set_ChnStart(HI_UNF_HDMI_ID_0,HI_FALSE);

#if defined (HDCP_SUPPORT)
    SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
    SI_SetEncryption(OFF);
    DelayMS(1);
#endif
    SI_DisableHdmiDevice();
    SI_CloseHdmiDevice();

#if defined (CEC_SUPPORT)
    SI_CEC_Close();
    DRV_Set_CECStart(HI_UNF_HDMI_ID_0,HI_FALSE);
    pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount = 0;
    memset(&(pstChnAttr[HI_UNF_HDMI_ID_0].stCECStatus), 0, sizeof(HI_UNF_HDMI_CEC_STATUS_S));
#endif

    SI_PowerDownHdmiTx();

    SI_PoweDownHdmiDevice();

    SI_HW_ResetCtrl(1);
    DelayMS(1);
    SI_HW_ResetPhy(1);
    DelayMS(1);

    HI_PRINT("HDMI suspend OK\n");
    return 0;
}

HI_S32 hdmi_Resume(PM_BASEDEV_S *pdev)
{
    HDMI_ATTR_S *pstHDMIAttr = DRV_Get_HDMIAttr(HI_UNF_HDMI_ID_0);

    if(DRV_HDMI_GetResumeMask())
    {
        HI_INFO_HDMI("\nDRV_HDMI_GetResumeMask = 0, can not resume hdmi!\n");
        return 0;        
    }

    if (0 == suspend_flag){
	    return 0;
    }

#if defined (HDCP_SUPPORT)
    //set hdcp enable in setAttr In hotplug
    SI_WriteByteEEPROM(EE_TX_HDCP, 0x00);
#endif
    //init
    HDMI_PinConfig();
    SI_HW_ResetHDMITX();
    SI_SW_ResetHDMITX();

#if defined (CEC_SUPPORT)
    WriteByteHDMICEC(0X8E, 0x04);
#endif

    DRV_Set_ForceUpdateFlag(HI_UNF_HDMI_ID_0,HI_TRUE);

    DRV_HDMI_SetAttr(HI_UNF_HDMI_ID_0, pstHDMIAttr);

    if(start_flag == HI_TRUE)
    {
        DRV_HDMI_Start(HI_UNF_HDMI_ID_0);
    }

    HI_PRINT("HDMI resume OK\n");
    suspend_flag = 0;

    return 0;
}
unsigned int cec_enable_flag = 0;
static HI_S32 hdmi_ProcessCmd(unsigned int cmd, HI_VOID *arg, HI_BOOL bUser)
{
    HI_S32       u32Ret = HI_FAILURE;

    switch (cmd)
    {
        case CMD_HDMI_INIT:
        {
            HDMI_INIT_S *pHdmiInit;
            pHdmiInit = (HDMI_INIT_S*)arg;

            FromUserSpaceFlag = bUser;
            u32Ret = DRV_HDMI_Init(bUser);
            HDMIStandbySetupFlag = HI_TRUE;
            
#ifndef HI_MCE_SUPPORT
            COM_INFO("bUser:%d,g_HDMIKernelInitNum:%d\n", bUser, g_HDMIKernelInitNum);
            if((HI_TRUE == bUser) && (0 != g_HDMIKernelInitNum))
            {
                if (HI_SUCCESS != DRV_HDMI_DeInit(HI_FALSE))
                {
                    COM_ERR("hdmi Kernel DRV_HDMI_DeInit  err!\n");
                }
            }
#endif
            break;
        }

        case CMD_HDMI_DEINIT:
        {
            u32Ret = DRV_HDMI_DeInit(bUser);

            if(DRV_HDMI_GetInitNum(HI_UNF_HDMI_ID_0) == 0)
            {
                HDMIStandbySetupFlag = HI_FALSE;
            }

            break;
        }

        case CMD_HDMI_OPEN:
        {
			HDMI_OPEN_S *phdmiOpen;
            phdmiOpen = (HDMI_OPEN_S*)arg;
            u32Ret = DRV_HDMI_Open(phdmiOpen->enHdmi, phdmiOpen, bUser ,phdmiOpen->u32ProcID);
            break;
        }

        case CMD_HDMI_CLOSE:
        {
            HDMI_CLOSE_S *phdmiClose;
            phdmiClose = (HDMI_CLOSE_S*)arg;
            u32Ret = DRV_HDMI_Close(phdmiClose->enHdmi);
            break;
        }

        case CMD_HDMI_START:
        {
            HDMI_START_S *phdmiStart;
            phdmiStart = (HDMI_START_S*)arg;
            u32Ret = DRV_HDMI_Start(phdmiStart->enHdmi);
            break;
        }

        case CMD_HDMI_STOP:
        {
            HDMI_STOP_S *phdmiStop;
            phdmiStop = (HDMI_STOP_S*)arg;
            u32Ret = DRV_HDMI_Stop(phdmiStop->enHdmi);
            break;
        }

        case CMD_HDMI_SINK_CAPABILITY:
        {
            HDMI_SINK_CAPABILITY_S *phdmisinkcap;
            phdmisinkcap = (HDMI_SINK_CAPABILITY_S*)arg;
            u32Ret = DRV_HDMI_GetSinkCapability(phdmisinkcap->enHdmi, &(phdmisinkcap->SinkCap));
            break;
        }

        case CMD_HDMI_POLL_EVENT:
        {
            HDMI_POLL_EVENT_S *pPollEvent;
            pPollEvent = (HDMI_POLL_EVENT_S*)arg;
			//compare callback addr in mpi
			//HI_ERR_HDMI("\n ---hdmi read event start--- \n");
            pPollEvent->Event = DRV_HDMI_ReadEvent(pPollEvent->enHdmi,pPollEvent->u32ProcID);
            //HI_ERR_HDMI("\n ---hdmi read event over--- \n");
            u32Ret = (pPollEvent->Event != 0)?HI_SUCCESS:HI_ERR_HDMI_FAILURE;

            //先屏蔽试试
			//pPollEvent->u32CallbackAddr = g_u32CallbackAddr;
            break;
        }

        case CMD_HDMI_GET_ATTR:
        {
            HDMI_PORT_ATTR_S *phdmiattr;
            HDMI_ATTR_S      stHDMIAttr;
            phdmiattr = (HDMI_PORT_ATTR_S*)arg;

            memset((void*)&stHDMIAttr, 0, sizeof(HDMI_ATTR_S));
            u32Ret = DRV_HDMI_GetAttr(phdmiattr->enHdmi, &stHDMIAttr);
            memcpy(&phdmiattr->stHdmiAppAttr,&stHDMIAttr.stAppAttr,sizeof(HDMI_APP_ATTR_S));
            break;
        }

        case CMD_HDMI_SET_ATTR:
        {
            HDMI_PORT_ATTR_S *phdmiattr;
            HDMI_ATTR_S      stHDMIAttr;

            phdmiattr = (HDMI_PORT_ATTR_S*)arg;

            u32Ret = DRV_HDMI_GetAttr(phdmiattr->enHdmi, &stHDMIAttr);

            memcpy(&stHDMIAttr.stAppAttr,&phdmiattr->stHdmiAppAttr,sizeof(HDMI_APP_ATTR_S));

            //u32Ret = DRV_HDMI_SetAttr(phdmiattr->enHdmi, &phdmiattr->stHdmiAppAttr);
            u32Ret |= DRV_HDMI_SetAttr(phdmiattr->enHdmi, &stHDMIAttr);
            break;
        }

        case CMD_HDMI_GET_INFORFRAME:
        {
            HDMI_INFORFRAME_S *pInfoframe;

            pInfoframe = (HDMI_INFORFRAME_S*)arg;
            u32Ret = DRV_HDMI_GetInfoFrame(pInfoframe->enHdmi, pInfoframe->enInfoFrameType, &(pInfoframe->InfoFrame));
            break;
        }

        case CMD_HDMI_SET_INFORFRAME:
        {
            HDMI_INFORFRAME_S *pInfoframe;

            pInfoframe = (HDMI_INFORFRAME_S*)arg;
            u32Ret = DRV_HDMI_SetInfoFrame(pInfoframe->enHdmi, &(pInfoframe->InfoFrame));
            break;
        }

        case CMD_HDMI_SET_AVMUTE:
        {
            HDMI_AVMUTE_S *pAvmute;

            pAvmute = (HDMI_AVMUTE_S*)arg;
            u32Ret = DRV_HDMI_SetAVMute(pAvmute->enHdmi, pAvmute->AVMuteEnable);
            break;
        }
        case CMD_HDMI_VIDEO_TIMING:
        {
            HDMI_VIDEOTIMING_S *pTiming;

            pTiming = (HDMI_VIDEOTIMING_S*)arg;
            u32Ret = DRV_HDMI_SetFormat(pTiming->enHdmi, pTiming->VideoTiming, pTiming->enStereo);
            break;
        }
        case CMD_HDMI_PREVTIMING:
        {
            HDMI_PREVIDEOTIMING_S *pstPreVideoTiming;

            pstPreVideoTiming = (HDMI_PREVIDEOTIMING_S*)arg;
            u32Ret = DRV_HDMI_PreFormat(pstPreVideoTiming->enHdmi, pstPreVideoTiming->VideoTiming);
            break;
        }
        case CMD_HDMI_GET_DEEPCOLOR:
        {
            HDMI_DEEPCOLORC_S *pDeepcolormode;

            pDeepcolormode = (HDMI_DEEPCOLORC_S*)arg;
            u32Ret = DRV_HDMI_GetDeepColor(pDeepcolormode->enHdmi, &(pDeepcolormode->enDeepColor));
            break;
        }
        case CMD_HDMI_SET_DEEPCOLOR:
        {
            HDMI_DEEPCOLORC_S *pDeepcolormode;

            pDeepcolormode = (HDMI_DEEPCOLORC_S*)arg;
            u32Ret = DRV_HDMI_SetDeepColor(pDeepcolormode->enHdmi, pDeepcolormode->enDeepColor);
            break;
        }
        case CMD_HDMI_SET_XVYCC:
        {
            HDMI_SET_XVYCC_S *pxvYCCmode;

            pxvYCCmode = (HDMI_SET_XVYCC_S*)arg;
            u32Ret = DRV_HDMI_SetxvYCCMode(pxvYCCmode->enHdmi, pxvYCCmode->xvYCCEnable);
            break;
        }

#if defined (CEC_SUPPORT)
        case CMD_HDMI_SET_CEC:
        {
            HDMI_CEC_S *pCECCmd;

#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
            if(!cec_enable_flag){
                COM_ERR("cec disabled, can't set cec cmd.\n");
                u32Ret = -1;
                break;
            }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
            pCECCmd = (HDMI_CEC_S*)arg;
            u32Ret = DRV_HDMI_SetCECCommand(pCECCmd->enHdmi, &(pCECCmd->CECCmd));
            break;
        }
        case CMD_HDMI_GET_CEC:
        {
            HDMI_CEC_S *pCECCmd;
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
            if(!cec_enable_flag){
                COM_ERR("cec disabled, can't get cec cmd.\n");
                u32Ret = -1;
                break;
            }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

            pCECCmd = (HDMI_CEC_S*)arg;
            u32Ret = DRV_HDMI_GetCECCommand(pCECCmd->enHdmi, &(pCECCmd->CECCmd), pCECCmd->timeout);
            //u32Ret = (u32Ret == 0)?HI_FAILURE:HI_SUCCESS;
            break;
        }
        case CMD_HDMI_CECSTATUS:
        {
            HDMI_CEC_STATUS *pCECStatus;
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
            if(!cec_enable_flag){
                COM_ERR("cec disabled, can't get cec status.\n");
                u32Ret = -1;
                break;
            }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

            pCECStatus = (HDMI_CEC_STATUS*)arg;
            u32Ret = DRV_HDMI_CECStatus(pCECStatus->enHdmi, &(pCECStatus->stStatus));
            break;
        }
        case CMD_HDMI_CEC_ENABLE:
        {
            //cec_enable_flag = 1;
            SI_CEC_SetUp();
            DRV_Set_CECEnable(HI_UNF_HDMI_ID_0,HI_TRUE);
            u32Ret = HI_SUCCESS;
            break;
        }
        case CMD_HDMI_CEC_DISABLE:
        {
            HDMI_CHN_ATTR_S *pstChnAttr = DRV_Get_ChnAttr();
            //cec_enable_flag = 0;
            DRV_Set_CECEnable(HI_UNF_HDMI_ID_0,HI_FALSE);
            DRV_Set_CECStart(HI_UNF_HDMI_ID_0,HI_FALSE);
            pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount = 0;
            memset(&(pstChnAttr[HI_UNF_HDMI_ID_0].stCECStatus), 0, sizeof(HI_UNF_HDMI_CEC_STATUS_S));
            SI_CEC_Close();

            u32Ret = HI_SUCCESS;
            break;
        }
#endif
        case CMD_HDMI_FORCE_GET_EDID:
        {
            HDMI_EDID_S *pEDID;

            pEDID = (HDMI_EDID_S*)arg;
            u32Ret = DRV_HDMI_Force_GetEDID(pEDID);
            break;
        }
        case CMD_HDMI_READ_EDID:
        {
            HDMI_EDID_S *pEDID;
			
            pEDID = (HDMI_EDID_S*)arg;
            u32Ret = DRV_HDMI_Read_EDID(pEDID);
            break;
        }    
        case CMD_HDMI_GET_HDMI_PLAYSTAUS:
        {
            HDMI_PLAYSTAUS_S *pPlayStaus;

            pPlayStaus = (HDMI_PLAYSTAUS_S*)arg;
            u32Ret = DRV_HDMI_GetPlayStatus(pPlayStaus->enHdmi, &(pPlayStaus->u32PlayStaus));
            break;
        }
		case CMD_HDMI_REG_CALLBACK_FUNC:
		{
			HDMI_REGCALLBACKFUNC_S *pstRegCallbackFunc;
			pstRegCallbackFunc = (HDMI_REGCALLBACKFUNC_S*)arg;
			g_u32CallbackAddr = pstRegCallbackFunc->u32CallBackAddr;
			u32Ret = HI_SUCCESS;
			break;
		}

        case CMD_HDMI_GET_PROCID:
        {
			HDMI_GET_PROCID_S *pstProcID;
			pstProcID = (HDMI_GET_PROCID_S*)arg;
			u32Ret = DRV_HDMI_GetProcID(pstProcID->enHdmi, &pstProcID->u32ProcID);
            break;
        }
        case CMD_HDMI_RELEASE_PROCID:
        {
            HDMI_GET_PROCID_S *pstProcID;
            pstProcID = (HDMI_GET_PROCID_S*)arg;
            u32Ret = DRV_HDMI_ReleaseProcID(pstProcID->enHdmi, pstProcID->u32ProcID);
            break;
        }
        case CMD_HDMI_GET_AO_ATTR:
        {
            HDMI_GETAOATTR_S *pstGetAOAttr;
            pstGetAOAttr = (HDMI_GETAOATTR_S *)arg;
            u32Ret = DRV_HDMI_GetAOAttr(pstGetAOAttr->enHdmi, &pstGetAOAttr->stAudAttr);
            break;
        }
        case CMD_HDMI_AUDIO_CHANGE:
        {
            HDMI_GETAOATTR_S *pstGetAOAttr;
            pstGetAOAttr = (HDMI_GETAOATTR_S *)arg;
            u32Ret = DRV_HDMI_AudioChange(pstGetAOAttr->enHdmi, &pstGetAOAttr->stAudAttr);
            break;
        }
        case CMD_HDMI_GET_STATUS:
        {
            HDMI_STATUS_S *pstStatus;
            pstStatus = (HDMI_STATUS_S *)arg;
            u32Ret = DRV_HDMI_GetStatus(pstStatus->enHdmi,&pstStatus->stStatus);
            break;
        }
        case CMD_HDMI_GET_DELAY:
        {
            HDMI_DELAY_S *pstDelay;
            pstDelay = (HDMI_DELAY_S *)arg;
            DRV_HDMI_GetDelay(pstDelay->enHdmi,&pstDelay->stDelay);
            u32Ret = HI_SUCCESS;
            break;
        }
        case CMD_HDMI_SET_DELAY:
        {
            HDMI_DELAY_S *pstDelay;
            pstDelay = (HDMI_DELAY_S *)arg;
            DRV_HDMI_SetDelay(pstDelay->enHdmi,&pstDelay->stDelay);
            u32Ret = HI_SUCCESS;
            break;
        }
        default:
        {
            COM_ERR("unkonw cmd:0x%x\n", cmd);
            return -ENOIOCTLCMD;
        }
    }

    return u32Ret;

}
//unsigned int cec_enable_flag = 0;
HI_S32 hdmi_Ioctl(struct inode *inode, struct file *file,
                           unsigned int cmd, HI_VOID *arg)
{
    HI_S32   s32Ret = HI_FAILURE;
    s32Ret = down_interruptible(&g_hdmiMutex);
    if (HI_SUCCESS != s32Ret)
    {
        COM_WARN("down_interruptible Error:%x! \n",s32Ret);
    }
    
    s32Ret = hdmi_ProcessCmd(cmd, arg, HI_TRUE);
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    if (HI_SUCCESS != s32Ret)
    {
        COM_WARN("hdmi_ProcessCmd:%d Error:%x! \n",cmd,s32Ret);
    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    
    up(&g_hdmiMutex);
    return s32Ret;
}





//修改命名规则
//HI_S32  HDMI_ModeInit_0(HI_VOID)
HI_S32 HDMI_DRV_Init(HI_VOID)
{
#if defined(HDMI_DEBUG) && !defined(HI_ADVCA_FUNCTION_RELEASE)
    if(HI_FAILURE == HDMI_DbgInit())
    {
        HI_PRINT("HDMI debug Init failed!\n");
    }
#endif

#ifdef HDMI_WORKQUEUE_SUPPORT  
    hdmi_event_queue = create_singlethread_workqueue("hdmi_event_queue"); 
#if LINUX_VERSION_CODE < KERNEL_VERSION(2,6,19)
    INIT_DELAYED_WORK(&hdmi_event_struct.hdmi_event_work, DRV_HDMI_NotifyEvent_Work_Thread, HI_NULL);
#else
    INIT_DELAYED_WORK(&hdmi_event_struct.hdmi_event_work, DRV_HDMI_NotifyEvent_Work_Thread);
#endif

#endif

    g_VirHDMI_PHY_BASE_ADDR = (HI_U32)IO_ADDRESS(HDMI_PHY_BASE_ADDR);
    COM_INFO("***HDMI_PHY_BASE_ADDR:0x%x, g_VirHDMI_PHY_BASE_ADDR:0x%x\n", (HI_U32)HDMI_PHY_BASE_ADDR, (HI_U32)g_VirHDMI_PHY_BASE_ADDR);
    return DRV_HDMI_Register();
}

//修改命名规则
//HI_VOID  HDMI_ModeExit_0(HI_VOID)
HI_VOID  HDMI_DRV_EXIT(HI_VOID)
{
#if defined(HDMI_DEBUG) && !defined(HI_ADVCA_FUNCTION_RELEASE)
        HDMI_DbgDeInit();
#endif

#ifdef HDMI_WORKQUEUE_SUPPORT    
        destroy_workqueue(hdmi_event_queue);
#endif

	DRV_HDMI_UnRegister();
	return;
}



/****************************************************************/
HI_S32 hdmi_ExtIoctl(unsigned int cmd, void *argp)
{

    HI_S32 s32Ret = HI_FAILURE;
    s32Ret = down_interruptible(&g_hdmiMutex);
    if (HI_SUCCESS != s32Ret)
    {
        COM_WARN("down_interruptible Error:%d! \n",s32Ret);
    }
    
    s32Ret = hdmi_ProcessCmd(cmd, argp, HI_FALSE);
    if (HI_SUCCESS != s32Ret)
    {
        COM_WARN("hdmi_ProcessCmd Error:%d! \n",s32Ret);
    }
    up(&g_hdmiMutex);
    return s32Ret;
}
void hdmi_MCE_ProcHotPlug(HI_HANDLE hHdmi)
{
    HI_S32          ret = HI_SUCCESS;
    //HI_UNF_HDMI_ATTR_S             stHdmiAttr;
    //HDMI_SINK_CAPABILITY_S stSinkCap;
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    HDMI_PORT_ATTR_S stHDMIPortAttr;
    HDMI_APP_ATTR_S *pstAppAttr;
    HDMI_START_S stHDMIStart;
    HDMI_STATUS_S stHdmiStatus;

    COM_INFO("\n---HDMI kernel event(no UserCallBack): HOTPLUG. --- \n");
    memset(&stHdmiStatus,0,sizeof(HDMI_STATUS_S));
    stHdmiStatus.enHdmi = hHdmi;
    ret = hdmi_ExtIoctl(CMD_HDMI_GET_STATUS, &stHdmiStatus);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("Get HDMI Status err!\n");
	    return ;
    }

    if (HI_FALSE == stHdmiStatus.stStatus.bConnected)
    {
       COM_ERR("No Connect!\n");
       return;
    }

    COM_INFO("Connect !\n");


#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    memset(&stSinkCap,0,sizeof(HDMI_SINK_CAPABILITY_S));
    stSinkCap.enHdmi = hHdmi;

    ret = hdmi_ExtIoctl(CMD_HDMI_SINK_CAPABILITY, &stSinkCap);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("Get SINK_CAPABILITY err!\n");
        bIsRealEDID = HI_FALSE;

        if(ret != HI_ERR_HDMI_NOT_REAL_EDID)
        {
            return ;
        }
    }

    COM_INFO("hdmi_ExtIoctl CMD_HDMI_SINK_CAPABILITY ok! \n");
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    memset(&stHDMIPortAttr, 0, sizeof(HDMI_PORT_ATTR_S));
    stHDMIPortAttr.enHdmi = hHdmi;
    ret = hdmi_ExtIoctl(CMD_HDMI_GET_ATTR, &stHDMIPortAttr);
    if (ret != HI_SUCCESS)
    {
	    COM_ERR("Get hdmi attr err!\n");
	    return ;
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_GET_ATTR ok! \n");


    pstAppAttr = &stHDMIPortAttr.stHdmiAppAttr;

    if(DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
    {
        //stHdmiAttr.enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_YCBCR444;
        if(HI_TRUE == pSinkCap->bSupportHdmi)
        {
            pstAppAttr->bEnableHdmi = HI_TRUE;
            if(HI_TRUE != pSinkCap->bSupportYCbCr) // bSupportDeepColorYCBCR444 ?
            {
                pstAppAttr->enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
            }
        }
        else
        {
            pstAppAttr->enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
            //读取到了edid，并且不支持hdmi则进入dvi模式
            //read real edid ok && sink not support hdmi,then we run in dvi mode
            pstAppAttr->bEnableHdmi = HI_FALSE;
        }
    }
    else
    {
        if(DRV_Get_DefaultOutputMode(HI_UNF_HDMI_ID_0) != HI_UNF_HDMI_FORCE_DVI)
        {
            pstAppAttr->bEnableHdmi = HI_TRUE;
        }
        else
        {
            pstAppAttr->bEnableHdmi = HI_FALSE;
        }
    }

    if(HI_TRUE == pstAppAttr->bEnableHdmi)
    {
        pstAppAttr->bEnableAudio = HI_TRUE;
        pstAppAttr->bEnableVideo = HI_TRUE;
        pstAppAttr->bEnableAudInfoFrame = HI_TRUE;
        pstAppAttr->bEnableAviInfoFrame = HI_TRUE;
    }
    else
    {
        pstAppAttr->bEnableAudio = HI_FALSE;
        pstAppAttr->bEnableVideo = HI_TRUE;
        pstAppAttr->bEnableAudInfoFrame = HI_FALSE;
        pstAppAttr->bEnableAviInfoFrame = HI_FALSE;
        pstAppAttr->enVidOutMode = HI_UNF_HDMI_VIDEO_MODE_RGB444;
    }


    ret = hdmi_ExtIoctl(CMD_HDMI_SET_ATTR, &stHDMIPortAttr);
    if (ret != HI_SUCCESS)
    {
	    COM_ERR("set attr err!:0x%x\n", ret);
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_SET_ATTR ok! \n");

    // 9
    memset(&stHDMIStart, 0, sizeof(HDMI_START_S));
    stHDMIStart.enHdmi = hHdmi;
    ret = hdmi_ExtIoctl(CMD_HDMI_START, &stHDMIStart);
    if (ret != HI_SUCCESS)
    {
	    COM_ERR("hdmi startup  err!:0x%x\n",ret);
	    return ;
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_START ok! \n");
    return;
}

//for O5
HI_S32 HI_DRV_HDMI_ExtIoctl(unsigned int cmd, void *argp)
{
    HI_S32 s32Ret = HI_SUCCESS;
    s32Ret = hdmi_ExtIoctl(cmd, argp);
    return s32Ret;
}
//for 05
HI_S32  HI_DRV_HDMI_GetCECAddr(HI_U32 *pcec_addr)
{
    HI_UNF_HDMI_CEC_STATUS_S     *pstCECStatus;
    HDMI_CHN_ATTR_S *pstHdmiChnParam;
    pstHdmiChnParam = DRV_Get_ChnAttr();
    if (pstHdmiChnParam[0].bCECStart == HI_FALSE)
        return HI_FAILURE;

    pstCECStatus = &(pstHdmiChnParam[0].stCECStatus);
    *pcec_addr = pstCECStatus->u8LogicalAddr;

    return HI_SUCCESS;
}
//for 05
HI_VOID HI_DRV_HDMI_ProcHotPlug(HI_HANDLE hHdmi)
{
    hdmi_MCE_ProcHotPlug(hHdmi);
}
//for 05
HI_S32 HI_DRV_HDMI_GetBinInfoFrame(HI_UNF_HDMI_INFOFRAME_TYPE_E enInfoFrameType,void *infor_ptr)
{
    DRV_O5_HDMI_GetBinInfoFrame(enInfoFrameType,infor_ptr);
    return 0;
}

HI_S32 hdmi_Ext_Open(void)
{
    HI_S32 ret = 0;
    HDMI_INIT_S stHDMIInit;
    HDMI_OPEN_S stHDMIOpen;
    HDMI_GET_PROCID_S stHDMIProcIDOpen;

    stHDMIInit.enForceMode   = HI_UNF_HDMI_FORCE_HDMI;
    //reg disp func

    ret = hdmi_ExtIoctl(CMD_HDMI_INIT, &stHDMIInit);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("hdmi_ExtIoctl CMD_HDMI_INIT err! \n");
	    return HI_FAILURE;
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_INIT ok! \n");

    if(g_KernelProcID == HI_INVALID_HANDLE)
    {
        stHDMIProcIDOpen.enHdmi = HI_UNF_HDMI_ID_0;
        stHDMIProcIDOpen.u32ProcID = 0;
        
        ret = hdmi_ExtIoctl(CMD_HDMI_GET_PROCID, &stHDMIProcIDOpen);
        if (ret != HI_SUCCESS)
        {
    	    COM_ERR("Error:HDMI Process is full,can't get process ID:0x%x\n",ret);
    	    return HI_FAILURE;
        }
        g_KernelProcID = stHDMIProcIDOpen.u32ProcID;
    }

    // 2
    stHDMIOpen.enHdmi = HI_UNF_HDMI_ID_0;
    stHDMIOpen.enDefaultMode = HI_UNF_HDMI_FORCE_HDMI;
    stHDMIOpen.u32ProcID = g_KernelProcID;
    //stHDMIOpen.g_U32CallbackAddr = (HI_U32)hdmi_MCE_ProcHotPlug;
	/*set 322 encryted key*/
    ret = hdmi_ExtIoctl(CMD_HDMI_OPEN, &stHDMIOpen);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("hdmi_ExtIoctl CMD_HDMI_OPEN err! \n");
	    return HI_FAILURE;
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_OPEN ok! \n");

    return HI_SUCCESS;
}

HI_S32 hdmi_Ext_Close(void)
{
    HI_S32 ret = 0;
    HDMI_STOP_S stHDMIStop;
    HDMI_CLOSE_S stHDMIClose;
    HDMI_DEINIT_S stHDMIDeinit;
    HDMI_GET_PROCID_S stHDMIProcIDRelease;

    // 0
    memset(&stHDMIStop, 0, sizeof(HDMI_STOP_S));
    stHDMIStop.enHdmi = HI_UNF_HDMI_ID_0;
    ret = hdmi_ExtIoctl(CMD_HDMI_STOP, &stHDMIStop);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("hdmi_ExtIoctl CMD_HDMI_STOP err! \n");
       return HI_FAILURE;
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_STOP ok! \n");

    // 1
    memset(&stHDMIClose, 0, sizeof(HDMI_CLOSE_S));
    stHDMIClose.enHdmi = HI_UNF_HDMI_ID_0;
    ret = hdmi_ExtIoctl(CMD_HDMI_CLOSE, &stHDMIClose);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("hdmi_ExtIoctl CMD_HDMI_CLOSE err! \n");
       return HI_FAILURE;
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_CLOSE ok! \n");

    // 2
    memset(&stHDMIDeinit, 0, sizeof(HDMI_DEINIT_S));
    ret = hdmi_ExtIoctl(CMD_HDMI_DEINIT, &stHDMIDeinit);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("hdmi_ExtIoctl CMD_HDMI_DEINIT err! \n");
       return HI_FAILURE;
    }
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_DEINIT ok! \n");

    // 3
    memset(&stHDMIProcIDRelease, 0, sizeof(HDMI_GET_PROCID_S));
    stHDMIProcIDRelease.u32ProcID = g_KernelProcID;
    ret = hdmi_ExtIoctl(CMD_HDMI_RELEASE_PROCID, &stHDMIProcIDRelease);
    if (ret != HI_SUCCESS)
    {
        COM_ERR("hdmi release proc id err!:0x%x\n",ret);
        return HI_FAILURE;
    }
    g_KernelProcID = HI_INVALID_HANDLE;
    COM_INFO("hdmi_ExtIoctl CMD_HDMI_RELEASE_PROCID ok! \n");

    return HI_SUCCESS;
}

HI_S32 HI_DRV_HDMI_Open(HI_UNF_HDMI_ID_E enHdmi)
{
    return hdmi_Ext_Open();
}

HI_S32 HI_DRV_HDMI_Close(HI_UNF_HDMI_ID_E enHdmi)
{
    return hdmi_Ext_Close();
}
HI_S32  HI_DRV_HDMI_Init(HI_VOID)
{

    return HDMI_DRV_Init();
}

HI_VOID  HI_DRV_HDMI_Deinit(HI_VOID)
{
    HDMI_DRV_EXIT();
}

HI_S32 HI_DRV_HDMI_PlayStus(HI_UNF_HDMI_ID_E enHdmi, HI_U32 *pu32Stutus)
{
    HI_S32   s32Ret = HI_SUCCESS;
    HDMI_PLAYSTAUS_S stPlayStaus;
    stPlayStaus.enHdmi = enHdmi;
    stPlayStaus.u32PlayStaus = HI_FALSE;

    s32Ret = hdmi_ExtIoctl(CMD_HDMI_GET_HDMI_PLAYSTAUS, &stPlayStaus);

    if( HI_SUCCESS  != s32Ret)
    {
        return s32Ret;
    }

    *pu32Stutus = stPlayStaus.u32PlayStaus;
    return s32Ret;
}

HI_S32 HI_DRV_AO_HDMI_GetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr)
{
    HI_S32   s32Ret = HI_SUCCESS;
    HDMI_GETAOATTR_S stGetAOAttr;
    stGetAOAttr.enHdmi = enHdmi;

    s32Ret = hdmi_ExtIoctl(CMD_HDMI_GET_AO_ATTR, &stGetAOAttr);
    if( HI_SUCCESS  != s32Ret)
    {
        return s32Ret;
    }
    *pstHDMIAOAttr = stGetAOAttr.stAudAttr;
    return s32Ret;
}

HI_S32 HI_DRV_HDMI_GetSinkCapability(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_HDMI_SINK_CAPABILITY_S *pstSinkCap)
{
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    HI_S32   s32Ret = HI_SUCCESS;
    HDMI_SINK_CAPABILITY_S stSinkcap;
    memset(&stSinkcap,0,sizeof(HDMI_SINK_CAPABILITY_S));
    stSinkcap.enHdmi = enHdmi;
    s32Ret = hdmi_ExtIoctl(CMD_HDMI_SINK_CAPABILITY, &stSinkcap);
    *pstSinkCap = stSinkcap.SinkCap;
    return s32Ret;
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/

    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    memcpy(pstSinkCap,pSinkCap,sizeof(HI_UNF_HDMI_SINK_CAPABILITY_S));

    if(!DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
    {
        COM_INFO("Invalid Sink capability \n");
        return HI_FAILURE;
    }
    else
    {
        return HI_SUCCESS;
    }
}

HI_S32 HI_DRV_HDMI_GetAudioCapability(HI_UNF_HDMI_ID_E enHdmi, HI_DRV_HDMI_AUDIO_CAPABILITY_S *pstAudCap)
{
    HI_DRV_HDMI_AUDIO_CAPABILITY_S *pOldAudioCap = DRV_Get_OldAudioCap();

    if(DRV_Get_IsValidSinkCap(enHdmi))
    {
        memcpy(pstAudCap,pOldAudioCap,sizeof(HI_DRV_HDMI_AUDIO_CAPABILITY_S));
        return HI_SUCCESS;
    }
    else
    {
        return HI_FAILURE;
    }
}

HI_S32 HI_DRV_HDMI_SetAudioMute(HI_UNF_HDMI_ID_E enHdmi)
{
    SI_SetHdmiAudio(HI_FALSE);
    return HI_SUCCESS;
}

HI_S32 HI_DRV_HDMI_SetAudioUnMute(HI_UNF_HDMI_ID_E enHdmi)
{
    //SI_SetHdmiAudio(HI_TRUE);
    HDMI_APP_ATTR_S *pstAppAttr = DRV_Get_AppAttr(enHdmi);

    SI_SetHdmiAudio(pstAppAttr->bEnableAudio);
    return HI_SUCCESS;
}



HI_S32 HI_DRV_HDMI_AudioChange(HI_UNF_HDMI_ID_E enHdmi, HDMI_AUDIO_ATTR_S *pstHDMIAOAttr)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HDMI_GETAOATTR_S stAoAttr;

    stAoAttr.enHdmi = enHdmi;
    memcpy(&stAoAttr.stAudAttr,pstHDMIAOAttr,sizeof(HDMI_AUDIO_ATTR_S));
    //stAudAttr.stAudAttr = *pstHDMIAOAttr;
    s32Ret = hdmi_ExtIoctl(CMD_HDMI_AUDIO_CHANGE, &stAoAttr);
    return s32Ret;
}

HI_S32 HI_DRV_HDMI_PreFormat(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_ENC_FMT_E enEncodingFormat)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HDMI_PREVIDEOTIMING_S stPreVidTiming;

    stPreVidTiming.enHdmi = enHdmi;
    stPreVidTiming.VideoTiming = enEncodingFormat;
    s32Ret = hdmi_ExtIoctl(CMD_HDMI_PREVTIMING, &stPreVidTiming);

    return s32Ret;
}

HI_S32 HI_DRV_HDMI_SetFormat(HI_UNF_HDMI_ID_E enHdmi, HI_UNF_ENC_FMT_E enFmt, HI_UNF_HDMI_3D_FORMAT_E enStereo)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HDMI_VIDEOTIMING_S stVideoTiming;

    stVideoTiming.enHdmi = enHdmi;
    stVideoTiming.VideoTiming = enFmt;
    stVideoTiming.enStereo = enStereo;
    s32Ret = hdmi_ExtIoctl(CMD_HDMI_VIDEO_TIMING, &stVideoTiming);

    return s32Ret;
}

HI_S32 HI_DRV_HDMI_Detach(HI_UNF_HDMI_ID_E enHdmi)
{
    HI_S32 s32Ret = HI_SUCCESS;

    DRV_Set_ThreadStop(HI_TRUE);
    s32Ret = HI_DRV_HDMI_PreFormat(enHdmi, HI_UNF_ENC_FMT_BUTT);

    return s32Ret;
}

HI_S32 HI_DRV_HDMI_Attach(HI_UNF_HDMI_ID_E enHdmi,HI_UNF_ENC_FMT_E enFmt, HI_UNF_HDMI_3D_FORMAT_E enStereo)
{
    HI_S32 s32Ret = HI_SUCCESS;

    s32Ret = HI_DRV_HDMI_SetFormat(enHdmi,enFmt,enStereo);
    DRV_Set_ThreadStop(HI_FALSE);

    return s32Ret;
}

HI_S32 HI_DRV_HDMI_GetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_APP_ATTR_S *pstAttr)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HDMI_PORT_ATTR_S stPortAttr;
    memset(&stPortAttr,0,sizeof(HDMI_PORT_ATTR_S));

    stPortAttr.enHdmi = enHdmi;
    s32Ret = hdmi_ExtIoctl(CMD_HDMI_GET_ATTR, &stPortAttr);
    *pstAttr = stPortAttr.stHdmiAppAttr;
    return s32Ret;
}

HI_S32 HI_DRV_HDMI_SetAttr(HI_UNF_HDMI_ID_E enHdmi, HDMI_APP_ATTR_S *pstAttr)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HDMI_PORT_ATTR_S stPortAttr;

    stPortAttr.enHdmi = enHdmi;
    stPortAttr.stHdmiAppAttr = *pstAttr;
    s32Ret = hdmi_ExtIoctl(CMD_HDMI_SET_ATTR, &stPortAttr);
    return s32Ret;
}

//#ifndef MODULE

HI_S32 hdmi_SoftResume(HI_UNF_ENC_FMT_E enFmt, HI_UNF_VIDEO_FRAME_PACKING_TYPE_E enStereo)
{
    HDMI_VIDEO_ATTR_S   *pstVidAttr = DRV_Get_VideoAttr(HI_UNF_HDMI_ID_0);
    HI_UNF_ENC_FMT_E   enEncodingFormat = enFmt;

    enEncodingFormat = DRV_N_Pa_Adjust(enEncodingFormat);

    pstVidAttr->b3DEnable = HI_TRUE;
    if (HI_UNF_FRAME_PACKING_TYPE_SIDE_BY_SIDE == enStereo)
    {
        pstVidAttr->u83DParam = HI_UNF_3D_SIDE_BY_SIDE_HALF;
    }
    else if (HI_UNF_FRAME_PACKING_TYPE_TOP_BOTTOM == enStereo)
    {
        pstVidAttr->u83DParam = HI_UNF_3D_TOP_AND_BOTTOM;
    }
    else
    {
        pstVidAttr->b3DEnable = HI_FALSE;
        pstVidAttr->u83DParam = HI_UNF_3D_MAX_BUTT;
    }

    COM_INFO("FMT:%d,3DFlag:%d, 3dParm:%d\n",enEncodingFormat,pstVidAttr->b3DEnable,pstVidAttr->u83DParam);
    pstVidAttr->enVideoFmt = enEncodingFormat;

    suspend_flag = 0;

    return HI_SUCCESS;
}

EXPORT_SYMBOL(HDMI_DRV_Init);
EXPORT_SYMBOL(HDMI_DRV_EXIT);
EXPORT_SYMBOL(hdmi_Open);
EXPORT_SYMBOL(hdmi_Close);
EXPORT_SYMBOL(hdmi_Suspend);
EXPORT_SYMBOL(hdmi_Resume);
EXPORT_SYMBOL(hdmi_SoftResume);
EXPORT_SYMBOL(DRV_HDMI_SetResumeMask);
EXPORT_SYMBOL(hdmi_Ioctl);
EXPORT_SYMBOL(DRV_HDMI_GetAttr);
//EXPORT_SYMBOL(DRV_ReadByte_8BA);
EXPORT_SYMBOL(DRV_HDMI_GetSinkCapability);
EXPORT_SYMBOL(SI_Proc_ReadEDIDBlock);
EXPORT_SYMBOL(HI_DRV_HDMI_ExtIoctl);
EXPORT_SYMBOL(HI_DRV_HDMI_GetCECAddr);
EXPORT_SYMBOL(HI_DRV_HDMI_ProcHotPlug);
EXPORT_SYMBOL(HI_DRV_HDMI_GetBinInfoFrame);
#if defined (CEC_SUPPORT)
EXPORT_SYMBOL(DRV_HDMI_CECStatus);
EXPORT_SYMBOL(HI_DRV_HDMI_Open);
EXPORT_SYMBOL(HI_DRV_HDMI_Close);

#endif
//#endif



