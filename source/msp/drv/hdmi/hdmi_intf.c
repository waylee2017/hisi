/*  extdrv/interface/hdmi/hi_hdmi.c
 *
 * Copyright (c) 2006 Hisilicon Co., Ltd.
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
 *      19-April-2006 create this file
 *      hi_struct.h
 *      hi_debug.h

 */
#include <linux/version.h>
#include <linux/kthread.h>
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


#include "si_defstx.h"
#include "si_hdmitx.h"
#include "si_edid.h"
#include "si_timer.h"
#include "si_phy.h"
#include "hdmi_hal_phy.h"
#include "si_isr.h"
#include "si_delay.h"
#include "si_cec.h"
#include "si_defsmddc.h"

#include "hi_debug.h"
#include "hi_drv_module.h"
#include "hi_unf_hdmi.h"

#include "drv_hdmi.h"
#include "drv_compatibility.h"
#include "drv_hdmi_ext.h"
#include "drv_global.h"
#include "drv_reg_proc.h"
#include "si_vmode.h"
#include "drv_file_ext.h"


/******************************************************************************/
/* HDMI Version                                                               */
/******************************************************************************/
#define HDMI_VER_MAJOR    1
#define HDMI_VER_MINOR    4
#define HDMI_VER_REVISE   0
#define HDMI_VER_DATE     20170221
#define HDMI_VER_TIMES    0

#define MAKE_VER_BIT(x) # x
#define MAKE_MACRO2STR(exp) MAKE_VER_BIT(exp)
#define MAKE_VERSION \
    MAKE_MACRO2STR(HDMI_VER_MAJOR) "."  \
    MAKE_MACRO2STR(HDMI_VER_MINOR) "."  \
    MAKE_MACRO2STR(HDMI_VER_REVISE) "." \
    MAKE_MACRO2STR(HDMI_VER_DATE) "."   \
    MAKE_MACRO2STR(HDMI_VER_TIMES)


#ifdef ANDROID_SUPPORT
#include <linux/switch.h>
struct switch_dev hdmi_tx_sdev =
{
    .name = "hdmi",
};

HI_BOOL g_switchOk = HI_FALSE;
#endif



#define HDMI_NAME                      "HI_HDMI"

HI_S32 DRV_HDMI_ReadPhy(void)
{
    HI_U32 u32Ret;

    u32Ret = SI_TX_PHY_GetOutPutEnable();

    return u32Ret;
}

extern HI_S32 hdmi_Open(struct inode *inode, struct file *filp);
extern HI_S32 hdmi_Close(struct inode *inode, struct file *filp);
extern HI_S32 hdmi_Ioctl(struct inode *inode, struct file *file,
                           unsigned int cmd, HI_VOID *arg);
extern HI_S32 hdmi_Suspend(PM_BASEDEV_S *pdev, pm_message_t state);
extern HI_S32 hdmi_Resume(PM_BASEDEV_S *pdev);
extern HI_S32 hdmi_SoftResume(HI_UNF_ENC_FMT_E enFmt, HI_UNF_VIDEO_FRAME_PACKING_TYPE_E enStereo);

static HDMI_EXPORT_FUNC_S s_stHdmiExportFuncs = {
    .pfnHdmiInit = HI_DRV_HDMI_Init,
    .pfnHdmiDeinit = HI_DRV_HDMI_Deinit,
    .pfnHdmiOpen  = HI_DRV_HDMI_Open,
    .pfnHdmiClose = HI_DRV_HDMI_Close,
    .pfnHdmiGetPlayStus = HI_DRV_HDMI_PlayStus,
    .pfnHdmiGetAoAttr = HI_DRV_AO_HDMI_GetAttr,
    .pfnHdmiGetSinkCapability = HI_DRV_HDMI_GetSinkCapability,
    .pfnHdmiGetAudioCapability = HI_DRV_HDMI_GetAudioCapability,
    .pfnHdmiSetAudioMute = HI_DRV_HDMI_SetAudioMute,
    .pfnHdmiSetAudioUnMute = HI_DRV_HDMI_SetAudioUnMute,
    .pfnHdmiAudioChange = HI_DRV_HDMI_AudioChange,
    .pfnHdmiPreFormat = HI_DRV_HDMI_PreFormat,
    .pfnHdmiSetFormat = HI_DRV_HDMI_SetFormat,
    .pfnHdmiDetach = HI_DRV_HDMI_Detach,
    .pfnHdmiAttach = HI_DRV_HDMI_Attach,
    .pfnHdmiResume = hdmi_Resume,
    .pfnHdmiSuspend = hdmi_Suspend,
    .pfnHdmiSoftResume = hdmi_SoftResume,
};

static long  hdmi_Drv_Ioctl(struct file *file,unsigned int cmd, unsigned long arg)
{
    return (long)HI_DRV_UserCopy(file->f_path.dentry->d_inode, file, cmd, arg, hdmi_Ioctl);
}

static struct file_operations hdmi_FOPS =
{
    owner   : THIS_MODULE,
    open    : hdmi_Open,
    unlocked_ioctl   : hdmi_Drv_Ioctl,
    release : hdmi_Close,
};

static /*struct*/ PM_BASEOPS_S  hdmi_DRVOPS = {
    .probe        = NULL,
    .remove       = NULL,
    .shutdown     = NULL,
    .prepare      = NULL,
    .complete     = NULL,
    .suspend      = hdmi_Suspend,
    .suspend_late = NULL,
    .resume_early = NULL,
    .resume       = hdmi_Resume,
};


static UMAP_DEVICE_S   g_hdmiRegisterData;

HI_U32 u32PixelClk[HI_UNF_ENC_FMT_BUTT + 1] = {0};

//#ifndef HI_ADVCA_FUNCTION_RELEASE

static HI_U8 *g_pDefHDMIMode[] = {"NULL","HDMI","DVI","BUTT"};

static HI_U8 *g_pAudioFmtCode[]=
{
    "Reserved", "PCM",  "AC3",     "MPEG1", "MP3",   "MPEG2", "AAC",
    "DTS",     "ATRAC", "ONE_BIT", "DDP",   "DTS_HD", "MAT",  "DST",
    "WMA_PRO"
};
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
static HI_U8 *g_pSampleRate[] =
{
    "32", "44.1", "48", "88.2","96","176.4","192","BUTT"
};
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
//static HI_U8 *g_pSpeaker[] =
//{
//    "FL/FR", "LFE", "FC", "RL/RR","RC","FLC/FRC","RLC/RRC",
//    "FLW/FRW","FLH/FRH","TC","FCH"
//};


static HI_U8 *g_pAudInputType[] = { "I2S","SPDIF","HBR","BUTT"};
static HI_U8 *g_pColorSpace[] = {"RGB444","YCbCr422","YCbCr444","Future"};
static HI_U8 *g_pDeepColor[] = {"24bit","30bit","36bit","OFF","BUTT"};

//static HI_U8 *g_p3DMode[] = {
//    //"FPK",
//    //"FILED_ALTER",
//    //"LINE_ALTE",
//    //"SBS_FULL",
//    //"L_DEPTH",
//    //"L_DEPTH_G_DEPTH",
//    "TAB",
//    "", //0x07 unknown
//    "SBS_HALF",
//};

static HI_U8 *g_pScanInfo[] = {"No Data","OverScan","UnderScan","Future"};
static HI_U8 *g_pPixelRep[] = {"1x(No Repeat)","2x","3x","4x","5x","6x","7x","8x","9x","10x","Reserved"};
const static HI_CHAR* g_pszVersion = "HDMI Version:   "MAKE_VERSION;

//static HI_U8 g_pDispFmtString[HI_DRV_DISP_FMT_BUTT+1][DEF_FILE_NAMELENGTH];
//#ifdef TAILOR_330    /*libo@201509*/


/*****************************************************************************
 Prototype    : hdmi_Proc
 Description  : HDMI status in /proc/msp/hdmi0
 Input        : None
 Output       : None
 Return Value :
 Calls        :
*****************************************************************************/
static HI_S32 HDMI0_Proc(struct seq_file *p, HI_VOID *v)
{
    HI_U32 u32Reg, index, offset,u32DefHDMIMode;
    HDMI_ATTR_S                   stHDMIAttr;
    HDMI_VIDEO_ATTR_S            *pstVideoAttr;
    HDMI_AUDIO_ATTR_S            *pstAudioAttr;
    HDMI_APP_ATTR_S              *pstAppAttr;
    HI_DRV_HDMI_STATUS_S          stHdmiStatus;
    HI_UNF_HDMI_CEC_STATUS_S      CECStatus;
    HI_U32                        u32PlayStatus = 0;
    HDMI_INT_Err_Conut            HDMI_INTErrCount = {0};
    HI_S32 s32Temp, Ret = HI_SUCCESS;
    HI_U8 u8Index;
    HI_U32 w,h;


    PROC_PRINT(p, "%s\n", g_pszVersion);
    
    //PROC_PRINT(p, "%s\n",hdmi_ProcDivde(" Hisi HDMI Dev Stat ", 85));
    PROC_PRINT(p, "--------------------------------- Hisi HDMI Dev Stat --------------------------------\n");
    
    Ret = DRV_HDMI_GetAttr(HI_UNF_HDMI_ID_0, &stHDMIAttr);
    if(Ret != HI_SUCCESS)
    {
        PROC_PRINT(p, "HDMI driver do not Open\n" );
       // PROC_PRINT(p, "----------------------------------------- END -----------------------------------------\n");
        return HI_SUCCESS;
    }
    u32Reg = DRV_ReadByte_8BA(0, TX_SLV0, 0x08) & 0x01;// 0x72:0x08
    if (u32Reg  != 0x01)
    {
        PROC_PRINT(p, "HDMI do not Start!\n");
      //  PROC_PRINT(p, "----------------------------------------- END -----------------------------------------\n");
        return HI_SUCCESS;
    }
    pstVideoAttr = &stHDMIAttr.stVideoAttr;
    pstAudioAttr = &stHDMIAttr.stAudioAttr;
    pstAppAttr = &stHDMIAttr.stAppAttr;

    DRV_HDMI_GetStatus(HI_UNF_HDMI_ID_0,&stHdmiStatus);

    PROC_PRINT(p, "%-20s: %-20s| ", "Hotplug", (stHdmiStatus.bConnected)? "Enable" : "Disable");
    
    s32Temp = (!DRV_Get_IsThreadStoped() && !SI_IsHDMIResetting()) ;
    PROC_PRINT(p, "%-20s: %s\n", "Thread", (s32Temp)? "Enable":"Disable");


    PROC_PRINT(p, "%-20s: %-20s| ","Sink", (stHdmiStatus.bSinkPowerOn)? "Active" : "Deactive");
    
    PROC_PRINT(p, "%-20s: %s\n", "HDCP Enable", (pstAppAttr->bHDCPEnable)? "ON" : "OFF");

    s32Temp = DRV_HDMI_ReadPhy();
    PROC_PRINT(p, "%-20s: %-20s| ", "PHY Output", (s32Temp)? "Enable" : "Disable");

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV0, 0x0F) & 0x01;
    PROC_PRINT(p, "%-20s: %s\n", "HDCP Encryption", (u32Reg)? "ON" : "OFF");

    DRV_HDMI_GetPlayStatus(0,&u32PlayStatus);
    PROC_PRINT(p, "%-20s: %-20s| ", "Play Status", (u32PlayStatus)? "Start" : "Stop");

    memset(&CECStatus, 0, sizeof(HI_UNF_HDMI_CEC_STATUS_S));
#ifdef CEC_SUPPORT
    DRV_HDMI_CECStatus(HI_UNF_HDMI_ID_0, &CECStatus);
#endif
    PROC_PRINT(p, "%-20s: %s\n", "CEC Status", (CECStatus.bEnable)? "Enable" : "Disable");

    s32Temp = DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0);
    PROC_PRINT(p, "%-20s: %-20s| ", "EDID Status", (s32Temp)? "Valid" : "Unvalid");

    PROC_PRINT(p, "%-20s: %02d.%02d.%02d.%02d\n", "CEC Phy Addr", CECStatus.u8PhysicalAddr[0],
        CECStatus.u8PhysicalAddr[1],CECStatus.u8PhysicalAddr[2],CECStatus.u8PhysicalAddr[3]);

    u32DefHDMIMode = DRV_Get_DefaultOutputMode(HI_UNF_HDMI_ID_0);
    PROC_PRINT(p, "%-20s: %-20s| ", "Default Mode", g_pDefHDMIMode[u32DefHDMIMode]);
    
    PROC_PRINT(p, "%-20s: %d\n","CEC Logical Addr", CECStatus.u8LogicalAddr);


    u32Reg = ReadByteHDMITXP1(0x2F) & 0x01;
    PROC_PRINT(p, "%-20s: %-20s| ","Output Mode",(u32Reg)? "HDMI" : "DVI");
 
    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0xDF) & 0x01;  // 0x7A:0xDF
    PROC_PRINT(p, "%-20s: %s\n", "AVMUTE", (u32Reg)? "Enable" : "Disable");

    s32Temp = IsForceFmtDelay();
    PROC_PRINT(p, "%-20s: %-20s| ", "Force SetFmt Delay", (s32Temp)? "Force" : "Default");

    s32Temp = IsForceMuteDelay();
    PROC_PRINT(p, "%-20s: %-20s\n", "Force Mute Delay", (s32Temp)? "Force" : "Default");

    s32Temp = DRV_Get_ForcePowerState();
    PROC_PRINT(p, "%-20s: %-20s| ", "Rsen Detect Mode", (s32Temp)? "Force" : "Default");
    
    w = DRV_ReadByte_8BA(0, TX_SLV0, HRES_L);  
    w += (DRV_ReadByte_8BA(0, TX_SLV0, HRES_H)&0x1F)<<8; 
    h = DRV_ReadByte_8BA(0, TX_SLV0, VRES_L);  
    h += (DRV_ReadByte_8BA(0, TX_SLV0, VRES_H)&0x07)<<8; 
    u32Reg = DRV_ReadByte_8BA(0, TX_SLV0, INTERLACE_POL_DETECT);  
    PROC_PRINT(p, "%-20s: %dx%d", "Out Timing", w, h);
    if (w|h)
    {
        PROC_PRINT(p, " %c H:%c V:%c ", (u32Reg&0x04)?'i':'p',(u32Reg&0x02)?'-':'+',(u32Reg&0x01)?'-':'+');
    }

    s32Temp = DRV_Get_IsSSCEnable(HI_UNF_HDMI_ID_0);
    PROC_PRINT(p, "\n%-20s: %-20s| ", "EMI Enable", (s32Temp)? "ON" : "OFF");

    PROC_PRINT(p, "\n---------------- Video -------------------|---------------- Audio -------------------\n");
   //PROC_PRINT(p, "%s|%s\n",hdmi_ProcDivde(" Video ", 40), hdmi_ProcDivde(" Audio ", 40));

    PROC_PRINT(p, "%-20s: %-20s| ", "Video Output", (pstAppAttr->bEnableVideo)? "Enable" : "Disable");

    PROC_PRINT(p, "%-20s: %s\n", "AUD Output", (pstAppAttr->bEnableAudio)? "Enable" : "Disable");

    
    PROC_PRINT(p, "%-20s: ","Current Fmt");
    if(pstVideoAttr->enVideoFmt < HI_UNF_ENC_FMT_BUTT)
    {
        u8Index = Transfer_VideoTimingFromat_to_VModeTablesIndex(pstVideoAttr->enVideoFmt);
             if (DRV_Get_IsLCDFmt(pstVideoAttr->enVideoFmt))
            {
                PROC_PRINT(p, "%4dx%-4d@%-10d| ", VModeTables[u8Index].Res.H, VModeTables[u8Index].Res.V, (VModeTables[u8Index].Tag.VFreq + 50)/100 );
            }
            else
            {
                PROC_PRINT(p, "%4d%c%-15d| ", VModeTables[u8Index].Res.V,((InterlaceVNegHNeg <= VModeTables[u8Index].Tag.RefrTypeVHPol)? 'I' : 'P'), (VModeTables[u8Index].Tag.VFreq + 50)/100);
            }       
    }
    else
    {
        PROC_PRINT(p, "err-%-16d| ", pstVideoAttr->enVideoFmt);
    }


    PROC_PRINT(p, "%-20s: %s\n","Input Type", g_pAudInputType[pstAudioAttr->enSoundIntf]);

    PROC_PRINT(p, "%-20s: %-20s| ","Color Space", g_pColorSpace[(HI_U32)pstAppAttr->enVidOutMode]);
    PROC_PRINT(p, "%-20s: %dHz\n","Sample Rate", pstAudioAttr->enSampleRate);

    PROC_PRINT(p, "%-20s: %-20s| ","DeepColor", g_pDeepColor[pstAppAttr->enDeepColorMode]);
    PROC_PRINT(p, "%-20s: %dbit\n","Bit Depth", pstAudioAttr->enBitDepth);


    PROC_PRINT(p, "%-20s: %-20s| ", "xvYCC", (pstAppAttr->bxvYCCMode)? "Enable" : "Disable");

    PROC_PRINT(p, "%-20s: %s\n", "Trace Mode", (pstAudioAttr->bIsMultiChannel)? "Multichannel(8)" : "Stereo");
   
    PROC_PRINT(p, "%-20s: %-20s| ", "3D Mode", (0 == pstVideoAttr->u83DParam) ? "FPK" : 
                                                 (8 == pstVideoAttr->u83DParam) ? "SBS HALF" :  
                                                 (6 == pstVideoAttr->u83DParam) ? "TAB" : "2D");

    u32Reg = ReadByteHDMITXP1(0x05);  // 0x7A:0x05
    u32Reg = (u32Reg<<8) | ReadByteHDMITXP1(0x04);  // 0x7A:0x04
    u32Reg = (u32Reg<<8) | ReadByteHDMITXP1(0x03);  // 0x7A:0x03
    PROC_PRINT(p, "%-20s: 0x%x(%d)\n", "N Value", u32Reg,u32Reg);

    PROC_PRINT(p, "%-20s: %-20d| ","Global SetFmt Delay", GetGlobalFmtDelay());


    u32Reg = ReadByteHDMITXP1(0x0b);  // 0x7A:0x0b
    u32Reg = (u32Reg<<8) | ReadByteHDMITXP1(0x0a);  // 0x7A:0x0a
    u32Reg = (u32Reg<<8) | ReadByteHDMITXP1(0x09);  // 0x7A:0x09
    PROC_PRINT(p, "%-20s: 0x%x(%d)\n", "CTS", u32Reg, u32Reg);
    //u32CTSvalue = u32Reg;

    PROC_PRINT(p, "%-20s: %-20d| ","Global Mute Delay", GetGlobalsMuteDelay());    

    SI_GetErrCount(&HDMI_INTErrCount);
    PROC_PRINT(p, "%-20s: %-20d\n","Audio FIFO Overflow", HDMI_INTErrCount.overrun);
    
    s32Temp = DRV_Calculate_TMDSCLK(pstVideoAttr->enVideoFmt, pstAppAttr->enDeepColorMode);
    PROC_PRINT(p, "%-20s: %3d.%03d MHz%-9s| ","TMDS Clock", s32Temp/1000, s32Temp%1000, "");
    
    PROC_PRINT(p, "%-20s: %-20d\n","Audio FIFO Underflow", HDMI_INTErrCount.under_run);

    u32Reg = ReadByteHDMITXP0(TX_STAT_ADDR) & BIT_HDMI_PSTABLE;
    PROC_PRINT(p, "%-20s: %-20s| ", "Pixel Clk Stable", (u32Reg) ? "stable" : "unstable");
     
    PROC_PRINT(p, "%-20s: %d\n","S/PDIF Parity Err", HDMI_INTErrCount.spdif_par);

    PROC_PRINT(p, "---------------------------------- Info Frame status --------------------------------\n");
    //PROC_PRINT(p, "%s\n", hdmi_ProcDivde(" Info Frame status ", 85));

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x3E) & 0x03;  // 0x7A:0x3E
    PROC_PRINT(p, "%-25s: %-15s| ", "AVI InfoFrame", (0x03 == u32Reg)? "Enable" : "Disable");

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x3F) & 0xC0;  // 0x7A:0x3F
    PROC_PRINT(p, "%-23s: %s\n", "Gamut Metadata Packet", (0xC0 == u32Reg)? "Enable" : "Disable");

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x3E) & 0x30;  // 0x7A:0x3E
    PROC_PRINT(p, "%-25s: %-15s| ", "AUD InfoFrame", (0x30 == u32Reg)? "Enable" : "Disable");

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x3F) & 0x03;  // 0x7A:0x3F
    PROC_PRINT(p, "%-23s: %s\n", "Generic Packet", (0x03 == u32Reg)? "Enable" : "Disable");

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x3E) & 0xC0;  // 0x7A:0x3E
    PROC_PRINT(p, "%-25s: %-15s| ", "MPg/VendorSpec InfoFrame", ( 0xC0 == u32Reg)? "Enable" : "Disable");

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x3E) & 0x0C;  // 0x7A:0x3E
    PROC_PRINT(p, "%-23s: %s\n", "SPD Packet", (0x0C == u32Reg)? "Enable" : "Disable");


    //PROC_PRINT(p, "%s\n", hdmi_ProcDivde(" Raw Data ", 85));
    PROC_PRINT(p, "-------------------------------------- Raw Data -------------------------------------\n");
    PROC_PRINT(p, "AVI InfoFrame :\n");
    for(index = 0; index < 17; index ++)
    {
        offset = 0x40 + index;//0x7A:0x40
        u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, offset);
        PROC_PRINT(p, "0x%02x,", u32Reg);
    }

    PROC_PRINT(p, "\nAUD InfoFrame :\n");
    for(index = 0; index < 9; index ++)
    {
        offset = 0x80 + index;//0x7A:0x80
        u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, offset);
        PROC_PRINT(p, "0x%02x,", u32Reg);
    }

    PROC_PRINT(p, "\nMPg/VendorSpec Inforframe :\n");
    for(index = 0; index < 12; index ++)
    {
        offset = 0xa0 + index;//0x7A:0xA0
        u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, offset);
        PROC_PRINT(p, "0x%02x,", u32Reg);
    }

    PROC_PRINT(p, "\n------------------------------------ Parsed InfoFrame -------------------------------\n");
    //PROC_PRINT(p, "%s\n", hdmi_ProcDivde(" Parsed InfoFrame ", 85));

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x47);
    PROC_PRINT(p, "%-20s: 0x%-18x| ", "Video ID Code(VIC)", u32Reg);
    
    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x45) >> 6;
    PROC_PRINT(p, "%-20s: %s\n", "Colorimetry", (0 == u32Reg) ? "No Data" : 
                                                    (0x01 == u32Reg) ? "ITU601" :  
                                                    (0x02 == u32Reg) ? "ITU709" : "xvYCC or reserve");

    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x48) & 0x0F;
    if(u32Reg > 10)
    {
        //array overflow, set to reserved
        u32Reg = 10;
    }
    PROC_PRINT(p, "%-20s: %-20s| ", "Pixel Repetition", g_pPixelRep[u32Reg]);
    
    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x44) & 0x03;
    PROC_PRINT(p, "%-20s: %s\n", "ScanInfo", g_pScanInfo[u32Reg]);

    u32Reg = (DRV_ReadByte_8BA(0, TX_SLV1, 0x44) & 0x60) >> 5;
    PROC_PRINT(p, "%-20s: %-20s| ","Output Color Space", g_pColorSpace[u32Reg]);
    
    u32Reg = DRV_ReadByte_8BA(0, TX_SLV1, 0x45) & 0x30;
    PROC_PRINT(p, "%-20s: %s\n", "AspectRatio", (0 == u32Reg) ? "No Data" : 
                                                    (0x10 == u32Reg) ? "4:3" :  
                                                    (0x20 == u32Reg) ? "16:9" : "Future");

    //PROC_PRINT(p, "%s\n", hdmi_ProcDivde(" Debug Command ", 85));
    PROC_PRINT(p, "--------------------------------- Debug Command -------------------------------------\n");
    PROC_PRINT(p, "help informatin : HDMI Base Addr : 0x%08X \n", (HI_U32)HDMI_PHY_BASE_ADDR);
    PROC_PRINT(p, "type 'echo help > /proc/msp/hdmi0' to get more help informatin \n");
    PROC_PRINT(p, "---------------------------------------- END ----------------------------------------\n");
    //PROC_PRINT(p, "%s\n", hdmi_ProcDivde(" END ", 85));

    return HI_SUCCESS;
}

static HI_S32 HDMI0_Sink_Proc(struct seq_file *p, HI_VOID *v)
{
    HI_UNF_HDMI_SINK_CAPABILITY_S *pSinkCap = DRV_Get_SinkCap(HI_UNF_HDMI_ID_0);
    HI_DRV_HDMI_AUDIO_CAPABILITY_S *pOldAudioCap = DRV_Get_OldAudioCap();
    HI_U32 i,j;
    HI_S32 s32Temp;
    HI_U8 u8Index;
    //hdmi_InitFmtArray();

    PROC_PRINT(p, "--------------------------------- Hisi HDMI Sink Capability -------------------------\n");

    s32Temp = DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0);
    PROC_PRINT(p, "%-20s: %-20s| ", "EDID Status", (s32Temp) ? "OK" : "Failed");

    PROC_PRINT(p, "%-20s: %s\n", "TV Manufacture Name", pSinkCap->u8IDManufactureName);

    s32Temp = DRV_Get_IsUserEdid(HI_UNF_HDMI_ID_0);
    PROC_PRINT(p, "%-20s: %-20s| ", "Source of EDID", (s32Temp) ? "User Setting" : "From Sink");
 
    PROC_PRINT(p, "%-20s: %d\n", "ProductCode", pSinkCap->u32IDProductCode);

    PROC_PRINT(p, "%-20s: %-20s| ", "Hdmi Support", (pSinkCap->bSupportHdmi) ? "TRUE" : "FALSE");


    
    PROC_PRINT(p, "%-20s: %d\n", "SerialNumber", pSinkCap->u32IDSerialNumber);

    PROC_PRINT(p, "%-20s: %d.%-18d| ", "EDID Version", pSinkCap->u8Version,pSinkCap->u8Revision);
    PROC_PRINT(p, "%-20s: %d\n", "Week Of Manufacture", pSinkCap->u32WeekOfManufacture);

    PROC_PRINT(p, "%-20s: %-20d| ", "Extend Block Num", pSinkCap->u8EDIDExternBlockNum);
    PROC_PRINT(p, "%-20s: %d\n", "Year Of Manufacture", pSinkCap->u32YearOfManufacture);

    PROC_PRINT(p, "%-20s: %-20s| ", "DVI Dual", (pSinkCap->bSupportDVIDual) ? "TRUE" : "FALSE");

    PROC_PRINT(p, "%-20s: %s\n", "CEC PhyAddr Valid", (pSinkCap->bIsPhyAddrValid) ? "TRUE" : "FALSE");

    PROC_PRINT(p, "%-20s: %-20s| ", "Supports AI", (pSinkCap->bSupportAI) ? "TRUE" : "FALSE");
    

    PROC_PRINT(p, "%-20s: %02x.%02x.%02x.%02x\n", "CEC Phy Add", 
                        pSinkCap->u8PhyAddr_A, pSinkCap->u8PhyAddr_B, pSinkCap->u8PhyAddr_C, pSinkCap->u8PhyAddr_D);
    PROC_PRINT(p, "-------------------------------------- Video ----------------------------------------\n");
    PROC_PRINT(p, "%-20s: ","Video Timing");
    for(i = 0,j = 0; i < HI_UNF_ENC_FMT_BUTT; i++)
    {
        if(pSinkCap->bVideoFmtSupported[i])
        {
        
            u8Index = Transfer_VideoTimingFromat_to_VModeTablesIndex(i);
            if (DRV_Get_IsLCDFmt(i))
            {
                PROC_PRINT(p, " %dx%d@%d /", VModeTables[u8Index].Res.H, VModeTables[u8Index].Res.V, (VModeTables[u8Index].Tag.VFreq + 50)/100 );
            }
            else
            {
                PROC_PRINT(p, " %d%c%d /", VModeTables[u8Index].Res.V,((InterlaceVNegHNeg <= VModeTables[u8Index].Tag.RefrTypeVHPol)? 'I' : 'P'), (VModeTables[u8Index].Tag.VFreq + 50)/100);
            }
            j++;
            if(0 == j%5)
            {
                PROC_PRINT(p, "\n%-22s","");
            }
        }
    }
    
    u8Index = Transfer_VideoTimingFromat_to_VModeTablesIndex(pSinkCap->enNativeVideoFormat);
    PROC_PRINT(p, "\n%-20s: %dx%d\n", "Native resolution", VModeTables[u8Index].Res.H, VModeTables[u8Index].Res.V);

    if((pSinkCap->bSupportxvYCC601)||(pSinkCap->bSupportxvYCC709))
    {
        PROC_PRINT(p, "%-20s: %s %s\n", "Colorimetry", (pSinkCap->bSupportxvYCC601)?"xvYCC601 /" : "", (pSinkCap->bSupportxvYCC709)? "xvYCC709" : "");
    }
    PROC_PRINT(p, "%-20s: RGB444 %s\n", "Color Space", (pSinkCap->bSupportYCbCr) ? "/ YCbCr444" :"" );


    PROC_PRINT(p, "%-20s: 24 %s %s %s bit\n", "Deep Color", (pSinkCap->bSupportDeepColor30Bit) ? "/ 30" : "", 
                                                         (pSinkCap->bSupportDeepColor36Bit) ? "/ 36" : "",
                                                         (pSinkCap->bSupportDeepColor48Bit) ? "/ 48" : "");

    PROC_PRINT(p, "%-20s: %s\n", "3D Support", (pSinkCap->bHDMI_Video_Present) ? "Support" : "Not Support");
    //PROC_PRINT(p, "%-20s: --\n", "3D Type");


#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    PROC_PRINT(p, "-------------------------------------- Audio ----------------------------------------\n");

    PROC_PRINT(p, "%-16s| %-15s| %-25s\n", "Audio Fmt", "Chn", "samplerate");

    j=0;
    for(i = 0; i < HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT; i++)
    {
        if(pSinkCap->bAudioFmtSupported[i])
        {
            PROC_PRINT(p, "%-3d %-12s| %-15d| %dHz\n", pSinkCap->bAudioFmtSupported, g_pAudioFmtCode[i],
                                pSinkCap->u32MaxPcmChannels, pSinkCap->u32AudioSampleRateSupported);
          j++;  
        }
    }
    PROC_PRINT(p, "\n%-10s : %d \n", "Audio Info Num", j);
    PROC_PRINT(p, "\n%-10s : %-10d \n", "Speaker", pSinkCap->u8Speaker);

#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    PROC_PRINT(p, "------------------------------------ Old Audio --------------------------------------\n");
    PROC_PRINT(p, "Audio Fmt support : ");
    for (i = 0; i < HI_UNF_HDMI_MAX_AUDIO_CAP_COUNT; i++)
    {
        if (pOldAudioCap->bAudioFmtSupported[i] == HI_TRUE)
        {
            PROC_PRINT(p, "%s / ", g_pAudioFmtCode[i]);
        }
    }

    PROC_PRINT(p, "\nMax Audio PCM channels: %d\n", pOldAudioCap->u32MaxPcmChannels);
    PROC_PRINT(p, "Support Audio Sample Rates:");
    for (i = 0; i < HI_UNF_HDMI_MAX_AUDIO_SMPRATE_COUNT; i++)
    {
        if(pOldAudioCap->u32AudioSampleRateSupported[i] != 0)
        {
            PROC_PRINT(p, " %d ", pOldAudioCap->u32AudioSampleRateSupported[i]);
        }
    }
   // PROC_PRINT(p, "\n");


    PROC_PRINT(p, "\n------------------------------------ EDID Raw Data ---------------------------------- \n");

    if(!DRV_Get_IsValidSinkCap(HI_UNF_HDMI_ID_0))
    {
        PROC_PRINT(p, "!! Data unbelievably !! \n");
    }
    //no else
    {
        HI_U32 index,u32EdidLegth = 0;
        HI_U8  Data[512];

        memset(Data, 0, 512);

        SI_Proc_ReadEDIDBlock(Data, &u32EdidLegth);
        for (index = 0; index < u32EdidLegth; index ++)
        {
            PROC_PRINT(p, "  %02x", Data[index]);
            if (0 == ((index + 1) % 16))
            {
                PROC_PRINT(p, "\n");
            }
        }
    }

    PROC_PRINT(p, "---------------------------------------- END ----------------------------------------\n");

    return HI_SUCCESS;
}

HI_CHAR *hdmi_GetProcArg(HI_CHAR *chCmd, HI_CHAR *chArg, HI_U32 u32ArgBufSize)
{
    HI_CHAR *chSrc = chCmd;
    HI_U32 i = 0;


    if(NULL == chCmd || NULL == chArg)
    {
        return NULL;
    }

     /* clear ' ' and '\n' */
    while(' ' == *chSrc || '\n' == *chSrc)
    {
        chSrc++;
    }

    /* copy char to dest */
    while('\0' != *chSrc && ' ' != *chSrc && '\n' != *chSrc)
    {
        *chArg++ = *chSrc++;
        if(i++ >= u32ArgBufSize)
        {
            COM_ERR("Error : The arg size is larger than the buffer size.\n");
            return NULL;
        }
    }
    *chArg= '\0';

    return chSrc;
}



extern HI_U32 unStableTimes;

HI_S32 hdmi_ProcWrite(struct file * file,
    const char __user * buf, size_t count, loff_t *ppos)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE
    //struct seq_file   *p = file->private_data;
    //DRV_PROC_ITEM_S  *pProcItem = s->private;
    HI_CHAR  chCmd[60] = {0};
    HI_CHAR  chArg1[DEF_FILE_NAMELENGTH] = {0};
    HI_CHAR  chArg2[DEF_FILE_NAMELENGTH] = {0};

    HI_CHAR  chArg3[DEF_FILE_NAMELENGTH] = {0};  //Â·¾¶

    HI_CHAR  *chPtr = NULL;

    if(count > 40)
    {
        HI_DRV_PROC_EchoHelper("Error:Echo too long.\n");
        return HI_FAILURE;
    }

    if(copy_from_user(chCmd,buf,count))
    {
        HI_DRV_PROC_EchoHelper("copy from user failed\n");
        return HI_FAILURE;
    }


    chPtr = hdmi_GetProcArg(chCmd, chArg1, DEF_FILE_NAMELENGTH - 1);
    chPtr = hdmi_GetProcArg(chPtr, chArg2, DEF_FILE_NAMELENGTH - 1);
    chPtr = hdmi_GetProcArg(chPtr, chArg3, DEF_FILE_NAMELENGTH - 1);

    if(chPtr == NULL)
    {
        //for avoid TQE:unused val 'chPtr';
        HI_DRV_PROC_EchoHelper("param len over Max namelen \n");
    }


    //sw reset
    if(!HI_OSAL_Strncmp(chArg1,"swrst",DEF_FILE_NAMELENGTH))
    {
        HI_DRV_PROC_EchoHelper("hdmi resetting...\n");
        SI_SW_ResetHDMITX();
    }
    //invert tmds clock
    else if(!HI_OSAL_Strncmp(chArg1,"tclk",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("hdmi TmdsClk invert...\n");
            WriteByteHDMITXP1(0x3d,0x1f);
        }
        else if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("hdmi TmdsClk not invert...\n");
            WriteByteHDMITXP1(0x3d,0x17);
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"mute",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("mute...\n");
            DRV_HDMI_SetAVMute(0,HI_TRUE);
            //WriteByteHDMITXP1(0x3d,0x1f);
        }
        else if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("unmute...\n");
            DRV_HDMI_SetAVMute(0,HI_FALSE);
            //WriteByteHDMITXP1(0x3d,0x17);
        }
    }
    //else if(chArg1[0] == '3'&& chArg1[1] == 'd')
    else if(!HI_OSAL_Strncmp(chArg1,"3d",DEF_FILE_NAMELENGTH))
    {
        HDMI_ATTR_S stAttr;
        DRV_HDMI_GetAttr(0,&stAttr);
        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("3d mode disable...\n");
            //HI_DRV_HDMI_Set3DMode(0,HI_FALSE,HI_UNF_3D_MAX_BUTT);
            stAttr.stVideoAttr.b3DEnable = HI_FALSE;
            stAttr.stVideoAttr.u83DParam = HI_UNF_3D_MAX_BUTT;
            //WriteByteHDMITXP1(0x3d,0x1f);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"fp",DEF_FILE_NAMELENGTH))
        {
            //HI_DRV_PROC_EchoHelper("Frame Packing... \n");
            ////HI_DRV_HDMI_Set3DMode(0,HI_TRUE,HI_UNF_3D_FRAME_PACKETING);
            //stAttr.stVideoAttr.b3DEnable = HI_TRUE;
            //stAttr.stVideoAttr.u83DParam = HI_UNF_3D_FRAME_PACKETING;
            HI_DRV_PROC_EchoHelper("Not support Frame Packing\n");
            stAttr.stVideoAttr.b3DEnable = HI_FALSE;
            stAttr.stVideoAttr.u83DParam = HI_UNF_3D_MAX_BUTT;
            //WriteByteHDMITXP1(0x3d,0x17);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"sbs",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("Side by side(half)...\n");
            //HI_DRV_HDMI_Set3DMode(0,HI_TRUE,HI_UNF_3D_SIDE_BY_SIDE_HALF);
            stAttr.stVideoAttr.b3DEnable = HI_TRUE;
            stAttr.stVideoAttr.u83DParam = HI_UNF_3D_SIDE_BY_SIDE_HALF;
            //WriteByteHDMITXP1(0x3d,0x17);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"tab",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("Top and bottom...\n");
            //HI_DRV_HDMI_Set3DMode(0,HI_TRUE,HI_UNF_3D_TOP_AND_BOTTOM);
            stAttr.stVideoAttr.b3DEnable = HI_TRUE;
            stAttr.stVideoAttr.u83DParam = HI_UNF_3D_TOP_AND_BOTTOM;
            //WriteByteHDMITXP1(0x3d,0x17);
        }
        DRV_HDMI_SetAttr(HI_UNF_HDMI_ID_0, &stAttr);
    }
    else if(!HI_OSAL_Strncmp(chArg1,"cbar",DEF_FILE_NAMELENGTH))
    {
        HI_U32 u32Reg = 0;
        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("colorbar disable...\n");
            DRV_HDMI_ReadRegister(VDP_DHD_0_CTRL,&u32Reg);
            //u32Reg = u32Reg & (~0x70000000);
            //DRV_HDMI_WriteRegister(VDP_DHD_0_CTRL,(u32Reg | 0x1));
            DRV_HDMI_WriteRegister(VDP_DHD_0_CTRL,(u32Reg & (~0x1)));
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("colorbar enable..\n");
            DRV_HDMI_ReadRegister(VDP_DHD_0_CTRL,&u32Reg);
            //u32Reg = u32Reg | 0x70000000;
            //DRV_HDMI_WriteRegister(VDP_DHD_0_CTRL,(u32Reg | 0x1));
            DRV_HDMI_WriteRegister(VDP_DHD_0_CTRL,(u32Reg | 0x1));
        }
    }
    // 0x00 0xff 0xff yellow
    // 0x00 0xff 0x00 green
    // 0xff 0x00 0x00 blue
    // 0x00 0x00 0xff red
    // 0x80 0x10 0x80 black
    // white
    else if(!HI_OSAL_Strncmp(chArg1,"vblank",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("vblank disable...\n");
            WriteByteHDMITXP0(0x0d,0x00);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"black",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("vblank black..\n");
            WriteByteHDMITXP0(0x0d,0x04);
            WriteByteHDMITXP0(0x4b,0x80);
            WriteByteHDMITXP0(0x4c,0x10);
            WriteByteHDMITXP0(0x4d,0x80);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"red",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("vblank red..\n");
            WriteByteHDMITXP0(0x0d,0x04);
            WriteByteHDMITXP0(0x4b,0x00);
            WriteByteHDMITXP0(0x4c,0x00);
            WriteByteHDMITXP0(0x4d,0xff);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"green",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("vblank green..\n");
            WriteByteHDMITXP0(0x0d,0x04);
            WriteByteHDMITXP0(0x4b,0x00);
            WriteByteHDMITXP0(0x4c,0xff);
            WriteByteHDMITXP0(0x4d,0x00);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"blue",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("vblank blue..\n");
            WriteByteHDMITXP0(0x0d,0x04);
            WriteByteHDMITXP0(0x4b,0xff);
            WriteByteHDMITXP0(0x4c,0x00);
            WriteByteHDMITXP0(0x4d,0x00);
        }
    }
#if 0 /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    else if(!HI_OSAL_Strncmp(chArg1,"enc",DEF_FILE_NAMELENGTH))
    {
        if(!HI_OSAL_Strncmp(chArg2,"phy",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("encode by phy\n");
            WriteByteHDMITXP1(0x3c,0x08);
            SI_TX_PHY_WriteRegister(0x0d,0x00);
        }
        else if(!HI_OSAL_Strncmp(chArg2,"ctrl",DEF_FILE_NAMELENGTH))
        {
            HI_DRV_PROC_EchoHelper("encode by ctrl\n");
            WriteByteHDMITXP1(0x3c,0x00);
            SI_TX_PHY_WriteRegister(0x0d,0x01);
        }
    }
#endif /*--NO MODIFY : COMMENT BY CODINGPARTNER--*/
    else if(!HI_OSAL_Strncmp(chArg1,"audio",DEF_FILE_NAMELENGTH))
    {
        HDMI_AUDIO_ATTR_S stHDMIAOAttr;
        memset((void*)&stHDMIAOAttr, 0, sizeof(HDMI_AUDIO_ATTR_S));
        DRV_HDMI_GetAOAttr(0,&stHDMIAOAttr);

        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("audio I2S \n");
            stHDMIAOAttr.enSoundIntf = HDMI_AUDIO_INTERFACE_I2S;
            DRV_HDMI_AudioChange(0,&stHDMIAOAttr);
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("audio SPDIF\n");
            stHDMIAOAttr.enSoundIntf = HDMI_AUDIO_INTERFACE_SPDIF;
            DRV_HDMI_AudioChange(0,&stHDMIAOAttr);
        }
        else if(chArg2[0] == '2')
        {
            HI_DRV_PROC_EchoHelper("audio HBR\n");
            stHDMIAOAttr.enSoundIntf = HDMI_AUDIO_INTERFACE_HBR;
            DRV_HDMI_AudioChange(0,&stHDMIAOAttr);
        }
        else if(chArg2[0] == '3')
        {
            HI_DRV_PROC_EchoHelper("audio pcm 8ch 192Khz\n");
            stHDMIAOAttr.enSoundIntf = HDMI_AUDIO_INTERFACE_I2S;
            stHDMIAOAttr.bIsMultiChannel = HI_TRUE;
            stHDMIAOAttr.u32Channels = 8;
            stHDMIAOAttr.enSampleRate = HI_UNF_SAMPLE_RATE_192K;
            DRV_HDMI_AudioChange(0,&stHDMIAOAttr);
        }
        else
        {
            HI_DRV_PROC_EchoHelper("not supported\n");
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"thread",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("thread stop \n");
            DRV_Set_ThreadStop(HI_TRUE);
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("thread start \n");
            DRV_Set_ThreadStop(HI_FALSE);
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"cec",DEF_FILE_NAMELENGTH))
    {
#if defined (CEC_SUPPORT)
        if(chArg2[0] == '0')
        {
            HDMI_CHN_ATTR_S *pstChnAttr = DRV_Get_ChnAttr();
            //cec_enable_flag = 0;
            SI_CEC_Close();
            DRV_Set_CECEnable(HI_UNF_HDMI_ID_0,HI_FALSE);
            DRV_Set_CECStart(HI_UNF_HDMI_ID_0,HI_FALSE);
            pstChnAttr[HI_UNF_HDMI_ID_0].u8CECCheckCount = 0;
            memset(&(pstChnAttr[HI_UNF_HDMI_ID_0].stCECStatus), 0, sizeof(HI_UNF_HDMI_CEC_STATUS_S));
        }
        else if(chArg2[0] == '1')
        {
            SI_CEC_SetUp();
            DRV_Set_CECEnable(HI_UNF_HDMI_ID_0,HI_TRUE);
        }
#else
        HI_DRV_PROC_EchoHelper("do not support cec \n");
#endif
    }
    else if (!HI_OSAL_Strncmp(chArg1,"setAttr",DEF_FILE_NAMELENGTH))
    {
        HDMI_ATTR_S *pstHDMIAttr = DRV_Get_HDMIAttr(HI_UNF_HDMI_ID_0);
        DRV_Set_ForceUpdateFlag(HI_UNF_HDMI_ID_0,HI_TRUE);
        DRV_HDMI_SetAttr(HI_UNF_HDMI_ID_0, pstHDMIAttr);
    }
    else if(!HI_OSAL_Strncmp(chArg1,"fmtforce",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("Default Fmt Delay\n");
            SetForceDelayMode(HI_FALSE,IsForceMuteDelay());
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("Force Fmt Delay\n");
            SetForceDelayMode(HI_TRUE,IsForceMuteDelay());
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"muteforce",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("Default mute Delay\n");
            SetForceDelayMode(IsForceFmtDelay(),HI_FALSE);
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("Force Delay\n");
            SetForceDelayMode(IsForceFmtDelay(),HI_TRUE);
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"RsenMode",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '0')
        { 
            HI_DRV_PROC_EchoHelper("Default detect Rsen\n");
            DRV_Set_ForcePowerState(0);
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("Force do not detect Rsen\n");
            DRV_Set_ForcePowerState(1);
            
        }
    }
    
    else if(!HI_OSAL_Strncmp(chArg1,"fmtdelay",DEF_FILE_NAMELENGTH))
    {
        HI_U32 delay;

        delay = simple_strtol(chArg2, NULL, 10);

        if(delay <= 10000)
        {
            HI_DRV_PROC_EchoHelper("Set Foramt Delay %d ms\n",delay);
            SetGlobalFmtDelay(delay);
        }
        else
        {
            HI_DRV_PROC_EchoHelper("Out of range[0-10000] %d ms\n",delay);
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"mutedelay",DEF_FILE_NAMELENGTH))
    {
        HI_U32 delay;

        delay = simple_strtol(chArg2, NULL, 10);

        if(delay <= 10000)
        {
            HI_DRV_PROC_EchoHelper("Avmut Delay %d ms\n",delay);
            SetGlobalMuteDelay(delay);
        }
        else
        {
            HI_DRV_PROC_EchoHelper("Out of range[0-10000] %d ms\n",delay);
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"oe",DEF_FILE_NAMELENGTH))
    {
        //if(SI_TX_PHY_GetOutPutEnable())
        if(!HI_OSAL_Strncmp(chArg2,"0",DEF_FILE_NAMELENGTH))
        {
            //DRV_HDMI_SetAVMute(0,HI_TRUE);
            SI_TX_PHY_DisableHdmiOutput();
            HI_DRV_PROC_EchoHelper("OE Close...\n");
        }
        else if(!HI_OSAL_Strncmp(chArg2,"1",DEF_FILE_NAMELENGTH))
        {
            SI_TX_PHY_EnableHdmiOutput();
            //DRV_HDMI_SetAVMute(0,HI_FALSE);
            HI_DRV_PROC_EchoHelper("OE Open...\n");
        }
        else
        {
            HI_DRV_PROC_EchoHelper("\necho oe [1/0] (on / off) >   /proc/msp/hdmi0\n\n");
            HI_DRV_PROC_EchoHelper("Please Input OE Status Param\n\n");
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"ddc",DEF_FILE_NAMELENGTH))
    {
        HI_U32 delay;

        delay = simple_strtol(chArg2, NULL, 10);

        if(delay <= 127)
        {
            if(delay != 0)
            {
                HI_DRV_PROC_EchoHelper("DDC Speed nearly %d hz\n",(OSC_CLK_SELECT / (delay * 35)));
            }
            else
            {
                HI_DRV_PROC_EchoHelper("DDC Speed 0 hz\n");
            }

            DRV_Set_DDCSpeed(delay);
        }
        else
        {
            HI_DRV_PROC_EchoHelper("Delay Count Out of range[0-127] %d\n",delay);
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1,"edid",DEF_FILE_NAMELENGTH))
    {
        HI_U32 edidIndex = 0;
        struct file * fp;
        HDMI_EDID_S stEDID;

        edidIndex = simple_strtol(chArg2, NULL, 10);
        
        if(edidIndex > 0) 
        {
            fp = HI_DRV_FILE_Open(chArg3, 0);
            if (fp)
            {
                memset(&stEDID, 0, sizeof(HDMI_EDID_S));

                stEDID.u32Edidlength = HI_DRV_FILE_Read(fp, stEDID.u8Edid, 512);
                HI_DRV_FILE_Close(fp);
                
                DRV_Set_UserEdidMode(HI_UNF_HDMI_ID_0,HI_TRUE);
                
                DRV_Set_UserEdid(HI_UNF_HDMI_ID_0, &stEDID);
                
                HI_DRV_PROC_EchoHelper("load EDID data length:%d success\n",stEDID.u32Edidlength);
            }
            else
            {
                HI_DRV_PROC_EchoHelper("open file:%s error!!! \n",chArg3);
            }
        }
        else
        {
            DRV_Set_UserEdidMode(HI_UNF_HDMI_ID_0,HI_FALSE);
            HI_DRV_PROC_EchoHelper("Stop UserSettting EDID Mode \n");
        }
        
        SI_SW_ResetHDMITX();
    }
    else if(!HI_OSAL_Strncmp(chArg1,"output",DEF_FILE_NAMELENGTH))
    {
        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("output normal \n");
            DRV_Set_ForceOutputMode(HI_FALSE);
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("output force mode \n");
            DRV_Set_ForceOutputMode(HI_TRUE);
        }
    }
    else if (!HI_OSAL_Strncmp(chArg1,"ssc",DEF_FILE_NAMELENGTH))
    {
        HDMI_ATTR_S *pstHDMIAttr = DRV_Get_HDMIAttr(HI_UNF_HDMI_ID_0);

        DRV_HDMI_Stop(HI_UNF_HDMI_ID_0);

        if(chArg2[0] == '0')
        {
            HI_DRV_PROC_EchoHelper("ssc close \n");
            DRV_Set_SSCEnable(HI_UNF_HDMI_ID_0, HI_FALSE);
        }
        else if(chArg2[0] == '1')
        {
            HI_DRV_PROC_EchoHelper("ssc open \n");
            DRV_Set_SSCEnable(HI_UNF_HDMI_ID_0, HI_TRUE);
        }
        DRV_HDMI_SetAttr(HI_UNF_HDMI_ID_0, pstHDMIAttr);
        DRV_HDMI_Start(HI_UNF_HDMI_ID_0);
    }
#if defined(HDMI_DEBUG) && !defined(HI_ADVCA_FUNCTION_RELEASE)
    else if(!HI_OSAL_Strncmp(chArg1, "logtype", DEF_FILE_NAMELENGTH))
    {
        if(strlen(chArg3) < 2)
        {   //illegal chArg3 -- file path
            HDMI_ProcessCmd(HDMI_DEBUG_LOGTYPE, chArg2, NULL);
        }
        else
        {
            HDMI_ProcessCmd(HDMI_DEBUG_LOGTYPE, chArg2, chArg3);
        }
    }
    else if(!HI_OSAL_Strncmp(chArg1, "logmask", DEF_FILE_NAMELENGTH))
    {
        HDMI_ProcessCmd(HDMI_DEBUG_LOGMASK, chArg2, NULL);
    }
    else if(!HI_OSAL_Strncmp(chArg1, "logcatch", DEF_FILE_NAMELENGTH))
    {
        HDMI_ProcessCmd(HDMI_DEBUG_LOGCATCH, chArg2, NULL);
    }
#endif
    else
    {
        HI_DRV_PROC_EchoHelper("------------------------------ HDMI debug options ----------------------------\n");
        HI_DRV_PROC_EchoHelper("you can perform HDMI debug with such commond:\n");
        HI_DRV_PROC_EchoHelper("echo [arg1] [arg2] [arg3] > /proc/msp/hdmi \n\n");
        HI_DRV_PROC_EchoHelper("debug action           arg1        arg2                        arg3\n");
        HI_DRV_PROC_EchoHelper("---------------------  --------    --------------------        ---------------\n");
        HI_DRV_PROC_EchoHelper("colorbar               cbar        0 disable / 1 enable \n");
        HI_DRV_PROC_EchoHelper("vblank(yuv data )      vblank      0 /red / green/ blue/ black \n");
//        HI_DRV_PROC_EchoHelper("DVI encoder            enc         phy(default)/ctrl  \n");
        HI_DRV_PROC_EchoHelper("software reset         swrst       no param \n");
        HI_DRV_PROC_EchoHelper("invert Tmds clk        tclk        0 not invert(default) / 1 invert \n");
        HI_DRV_PROC_EchoHelper("Avmute                 mute        0 unmute/ 1 mute \n");
        HI_DRV_PROC_EchoHelper("Set 3D InfoFrame       3d          0 disable3D /fp/sbs/tab  \n");
        HI_DRV_PROC_EchoHelper("Debug audio Change     audio       0 I2S / 1 SPdif / 2 HBR   \n");
        HI_DRV_PROC_EchoHelper("Thread stop/start      thread      0 stop / 1 start  \n");
        HI_DRV_PROC_EchoHelper("cec enable             cec         0 disable / 1 enable \n");
        HI_DRV_PROC_EchoHelper("Force set attr         setAttr     no param \n");
        HI_DRV_PROC_EchoHelper("Force SetForamt Delay  fmtforce    0 Default / 1 Force \n");
        HI_DRV_PROC_EchoHelper("Force Avmute Delay     muteforce   0 Default / 1 Force \n");
        HI_DRV_PROC_EchoHelper("Set Foramt Delay       fmtdelay    0 ~ 10000 (ms)\n");
        HI_DRV_PROC_EchoHelper("Avmute Delay           mutedelay   0 ~ 10000 (ms)\n");
        HI_DRV_PROC_EchoHelper("Phy OE open/close      oe          1 on / 0 off)\n");
        HI_DRV_PROC_EchoHelper("Change DDC SPEED       ddc         0 ~ 127 (n=0:0khz  n=1-127: %d/(n*35) khz)\n",OSC_CLK_SELECT);
        HI_DRV_PROC_EchoHelper("Debug edid             edid        0 stop / 1 load edid          [path]\n");
        HI_DRV_PROC_EchoHelper("output mode            output      0 normal / 1 force  \n");
        HI_DRV_PROC_EchoHelper("RSEN detect mode       RsenMode    0 detect / 1 do not detect \n");
        HI_DRV_PROC_EchoHelper("ssc enable             ssc         0 disable / 1 enable \n");
#if defined(HDMI_DEBUG) && !defined(HI_ADVCA_FUNCTION_RELEASE)
        HI_DRV_PROC_EchoHelper("logtype(file / serial  logtype     [serial/file/all]             [path]\n");
        HI_DRV_PROC_EchoHelper("logmask(add / reduce)  logmask     [+/-/*][ cec/hdcp/hpd/edid/all]\n");
        HI_DRV_PROC_EchoHelper("logcatch(print out of mem)  logcatch    [info/warning/error/fatal]  \n");
#endif
        HI_DRV_PROC_EchoHelper("------------------------------------------------------------------------------\n");
    }
#endif
    return count;
}



HI_S32 HDMI_ModeInit(HI_VOID)
{
    HI_S32 ret;
#ifndef HI_ADVCA_FUNCTION_RELEASE
    DRV_PROC_ITEM_S  *pProcItem;

    DRV_PROC_EX_S stFnOpt =
    {
         .fnRead = HDMI0_Proc,
    };

    DRV_PROC_EX_S stFnSinkOpt =
    {
         .fnRead = HDMI0_Sink_Proc,
    };

    //Init Array
//#ifdef TAILOR_330    /*libo@201509*/
//    hdmi_InitFmtArray();
 //   hdmi_Init_PixelClkArray();
#endif

    /* Register hdmi device */
    //sprintf(g_hdmiRegisterData.devfs_name, UMAP_DEVNAME_HDMI);
    HI_OSAL_Snprintf(g_hdmiRegisterData.devfs_name, 64, UMAP_DEVNAME_HDMI);
    g_hdmiRegisterData.fops   = &hdmi_FOPS;
    g_hdmiRegisterData.drvops = &hdmi_DRVOPS;
    g_hdmiRegisterData.minor  = UMAP_MIN_MINOR_HDMI;
    g_hdmiRegisterData.owner  = THIS_MODULE;
    
    ret = HI_DRV_DEV_Register(&g_hdmiRegisterData);
    if (ret < 0)
    {
        COM_FATAL("register hdmi failed.\n");
        return ret;
    }

#ifndef HI_ADVCA_FUNCTION_RELEASE
    /* Register Proc hdmi Status */
    pProcItem = HI_DRV_PROC_AddModule("hdmi0", &stFnOpt, NULL);
    if (pProcItem != HI_NULL)
    {
        pProcItem->write = hdmi_ProcWrite;
    }

    //pProcItem = HI_DRV_PROC_AddModule("hdmi0_sink", &stFnSinkOpt, NULL);
    HI_DRV_PROC_AddModule("hdmi0_sink", &stFnSinkOpt, NULL);
#endif

#ifndef HI_MCE_SUPPORT

    ret = HI_DRV_HDMI_Init();
    if (HI_SUCCESS != ret)
    {
        COM_ERR("HI_DRV_HDMI_Init failed\n");
        return ret;
    }
    
    ret = HI_DRV_HDMI_Open(HI_UNF_HDMI_ID_0);
    if (HI_SUCCESS != ret)
    {
        COM_ERR("HI_DRV_HDMI_Open failed\n");
        return ret;
    }
#endif

    return HI_SUCCESS;
}

extern HI_S32  HDMI_DRV_Init(HI_VOID);


HI_VOID HDMI_ModeExit(HI_VOID)
{
#ifndef HI_ADVCA_FUNCTION_RELEASE
    /* Unregister hdmi device */
    HI_DRV_PROC_RemoveModule("hdmi0");
    HI_DRV_PROC_RemoveModule("hdmi0_sink");
#endif    
    HI_DRV_DEV_UnRegister(&g_hdmiRegisterData);
    return;
}

HI_S32 DRV_HDMI_Register(HI_VOID)
{
    HI_S32 ret;

    ret = HI_DRV_MODULE_Register((HI_U32)HI_ID_HDMI,HDMI_NAME,(HI_VOID *)&s_stHdmiExportFuncs);
    if (HI_SUCCESS != ret)
    {
        COM_FATAL("HI_DRV_MODULE_Register failed\n");
        return ret;
    }
    return HI_SUCCESS;
}

HI_S32 DRV_HDMI_UnRegister(HI_VOID)
{
    HI_S32 ret;
    ret = HI_DRV_MODULE_UnRegister((HI_U32)HI_ID_HDMI);
    if (HI_SUCCESS != ret)
    {
        COM_FATAL("HI_DRV_MODULE_UnRegister failed\n");
        return ret;
    }
    
    return HI_SUCCESS;
}

int HDMI_DRV_ModInit(void)
{    
#ifdef HDMI_HPD_THREAD_SUPPORT 
    struct task_struct  *HPD_Thread = HI_NULL;
#endif
#ifndef HI_MCE_SUPPORT
    HI_S32 ret;
#endif

    HDMI_ModeInit();


#ifndef HI_MCE_SUPPORT
    ret = HDMI_DRV_Init();
    if (HI_SUCCESS != ret)
    {
        COM_FATAL("HDMI_DRV_Init failed\n");
        return ret;
    }
#endif

#ifdef HDMI_HPD_THREAD_SUPPORT
    HPD_Thread = kthread_run(DRV_HDMI_HPD_Thread, HI_NULL, "HDMI_HPD_Thread");
    if (IS_ERR(HPD_Thread))
    {
        COM_ERR("start hdmi hdp thread failed.\n");
    }
#endif

#ifdef MODULE
    HI_PRINT("Load hi_hdmi.ko success.\t(%s)\n", VERSION_STRING);
#endif

    return HI_SUCCESS;
}

extern HI_VOID  HDMI_DRV_EXIT(HI_VOID);
void HDMI_DRV_ModExit(void)
{
    HI_U32 hdmiStatus;
    hdmiStatus = DRV_HDMI_GetInitNum(HI_UNF_HDMI_ID_0);
    if(hdmiStatus > 0)
    {
        HI_DRV_HDMI_Close(HI_UNF_HDMI_ID_0);
    }

    HDMI_ModeExit();

    HDMI_DRV_EXIT();
    //HI_DRV_HDMI_PlayStus(HI_UNF_HDMI_ID_0,&temp);
    //if(temp == HI_TRUE)
    //{
        //HI_DRV_HDMI_Close(HI_UNF_HDMI_ID_0);
    //}


#ifdef MODULE
    HI_PRINT("remove hi_hdmi.ko success.\t(%s)\n", VERSION_STRING);
#endif


    return;
}

#ifdef MODULE
module_init(HDMI_DRV_ModInit);
module_exit(HDMI_DRV_ModExit);
#endif
MODULE_LICENSE("GPL");




