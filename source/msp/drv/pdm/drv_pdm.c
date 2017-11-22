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
  File Name	: drm_pdm.c
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
#include <linux/string.h>
#include <linux/vmalloc.h>
#include <asm/memory.h>
#include <linux/bootmem.h>
#include <linux/gfp.h>
#include <linux/mm.h>

#include "hi_drv_pdm.h"
//#include "drv_pdm_ext.h"
#include "drv_pdm.h"

static HI_CHAR g_HeadCheck[HI_HEDA_CHECK_LEN] = {0x5a,0x5a,0x5a,0x5a};

extern PDM_GLOBAL_S        g_PdmGlobal;
extern int pdm_free_reserve_mem(u32 phyaddr, u32 size);
/*the function to get pdm tag data*/
extern int get_param_data(const char *name, char *buf, unsigned int buflen);
extern int set_param_data(const char *name, char *buf, unsigned int buflen);

HI_VOID PDM_GetDefGrcParam(HI_GRC_PARAM_S *pstGrcParam)
{
#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)
    pstGrcParam->enPixelFormat               = HIGO_PF_8888;
    pstGrcParam->u32DisplayWidth             = 1280;
    pstGrcParam->u32DisplayHeight            = 720;
    pstGrcParam->u32ScreenXpos               = 0;
    pstGrcParam->u32ScreenYpos               = 0;
    pstGrcParam->u32ScreenWidth              = 1920;
    pstGrcParam->u32ScreenHeight             = 1080;  
#else
	pstGrcParam->enPixelFormat               = HIGO_PF_8888;
    pstGrcParam->u32DisplayWidth             = 720;
    pstGrcParam->u32DisplayHeight            = 576;
    pstGrcParam->u32ScreenXpos               = 0;
    pstGrcParam->u32ScreenYpos               = 0;
    pstGrcParam->u32ScreenWidth              = 720;
    pstGrcParam->u32ScreenHeight             = 576;

#endif
    return;
}

HI_S32 PDM_GetHEADFromMem(HI_U8 *pDBMem, HI_PDM_Data_S *pstDB)
{
    HI_CHAR DBCheck[HI_HEDA_CHECK_LEN] = {0};
    
    if(HI_NULL == pDBMem || HI_NULL == pstDB)
    {
        HI_INFO_PDM("ERR: para is null\n");
        return HI_FAILURE;
    }
    
    memcpy(DBCheck, (HI_CHAR *)pDBMem, HI_HEDA_CHECK_LEN);

    if(0 != memcmp(DBCheck, g_HeadCheck, HI_HEDA_CHECK_LEN))
    {
        HI_INFO_PDM("ERR: this is not a db\n");
        return HI_FAILURE;
    }
    
    pstDB->u32DataLen = MCE_DEF_BASEPARAM_SIZE;
    
    pstDB->pData = pDBMem;

    return HI_SUCCESS;
}


HI_S32 PDM_GetMceParamFromMem(HI_U8 *pDBMem, HI_PDM_Data_S *pstDB)
{
    HI_CHAR DBCheck[HI_HEDA_CHECK_LEN] = {0};
    
    if(HI_NULL == pDBMem || HI_NULL == pstDB)
    {
        HI_INFO_PDM("ERR: para is null\n");
        return HI_FAILURE;
    }
    
    memcpy(DBCheck, (HI_CHAR *)pDBMem, HI_HEDA_CHECK_LEN);

    if(0 != memcmp(DBCheck, g_HeadCheck, HI_HEDA_CHECK_LEN))
    {
        HI_INFO_PDM("ERR: this is not a db\n");
        return HI_FAILURE;
    }
    
    pstDB->u32DataLen = MCE_DEF_PLAYPARAM_SIZE;
    
    pstDB->pData = pDBMem;

    return HI_SUCCESS;
}


/*******************************************
tag format is version=1.0.0.0  fb=0x85000000,0x10000  baseparam=0x86000000,0x2000 бнбн
*******************************************/
HI_S32 PDM_GetBufByName(const HI_CHAR *BufName, HI_U32 *pu32BasePhyAddr, HI_U32 *pu32Len)
{
    HI_CHAR                 PdmTag[512];
    HI_U32                  PdmLen;
    HI_CHAR                 TmpBuf[32];
    HI_CHAR                 *p, *q;
    HI_U32                  i;    

    for (i = 0; i < g_PdmGlobal.ReleaseBufNum; i++)
    {
        if (0 == strncmp(g_PdmGlobal.ReleaseBufName[i], BufName, strlen(BufName)))
        {
            HI_ERR_PDM("the reserve mem has released!\n");
            return HI_FAILURE;
        }
    }

    memset(PdmTag, 0x0, 512);

    PdmLen = get_param_data("pdm_tag", PdmTag, 512);
    if (PdmLen >= 512)
    {
    	HI_INFO_PDM("%s->%d,PdmLen:%d\n",__func__,__LINE__,PdmLen);
        return HI_FAILURE;
    }
	HI_INFO_PDM("%s->%d,PdmTag:%s,PdmLen:%d,BufName:%s\n",__func__,__LINE__,PdmTag,PdmLen,BufName);
    p = strstr(PdmTag, BufName);
    if (0 == p)
    {
    	HI_INFO_PDM("%s->%d.\n",__func__,__LINE__);
        return HI_FAILURE;
    }

    p = strstr(p, "=");
    if (0 == p)
    {
    	HI_INFO_PDM("%s->%d.\n",__func__,__LINE__);
        return HI_FAILURE;
    }

    p += 1;

    q = strstr(p, ",");
    if (0 == q)
    {
    	HI_INFO_PDM("%s->%d.\n",__func__,__LINE__);
        return HI_FAILURE;
    }

    memset(TmpBuf, 0x0, 32);
    memcpy(TmpBuf, p, q-p);
    *pu32BasePhyAddr = simple_strtoul(TmpBuf, NULL, 16);

    q++;

    p = strstr(q, " ");
    if (0 == p)
    {
        p = PdmTag + PdmLen;
    }
    
    memset(TmpBuf, 0x0, 32);
    memcpy(TmpBuf, q, p-q);

    *pu32Len = simple_strtoul(TmpBuf, NULL, 16);

    return HI_SUCCESS;
}

HI_VOID PDM_TransFomat(HI_UNF_ENC_FMT_E enSrcFmt, HI_UNF_ENC_FMT_E *penHdFmt, HI_UNF_ENC_FMT_E *penSdFmt)
{
    switch(enSrcFmt)
    {
        /* bellow are tv display formats */
        case HI_UNF_ENC_FMT_1080P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        }
        case HI_UNF_ENC_FMT_1080i_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_1080i_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        }
        case HI_UNF_ENC_FMT_720P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_720P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_720P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;
        } 
        case HI_UNF_ENC_FMT_576P_50:
        {
            *penHdFmt = HI_UNF_ENC_FMT_576P_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL; 
            break;        
        }
        case HI_UNF_ENC_FMT_480P_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_480P_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;         
        }
        case HI_UNF_ENC_FMT_PAL:
        {
            *penHdFmt = HI_UNF_ENC_FMT_PAL;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
        case HI_UNF_ENC_FMT_NTSC:
        {
            *penHdFmt = HI_UNF_ENC_FMT_NTSC;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        } 
        
        /* bellow are vga display formats */
        case HI_UNF_ENC_FMT_861D_640X480_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_861D_640X480_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_800X600_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_800X600_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1024X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1024X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X720_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X720_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X800_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X800_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1280X1024_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1280X1024_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1360X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1360X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1366X768_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1366X768_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1400X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1400X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;    
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1440X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1440X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X900_60_RB:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X900_60_RB;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC; 
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1600X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1600X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1680X1050_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1680X1050_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;  
            break;
        } 
        
        case HI_UNF_ENC_FMT_VESA_1920X1080_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1080_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;   
            break;
        }
        case HI_UNF_ENC_FMT_VESA_1920X1200_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_1920X1200_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;            
            break;
        }
        case HI_UNF_ENC_FMT_VESA_2048X1152_60:
        {
            *penHdFmt = HI_UNF_ENC_FMT_VESA_2048X1152_60;
            *penSdFmt = HI_UNF_ENC_FMT_NTSC;            
            break;
        }
        default:
        {
            *penHdFmt = HI_UNF_ENC_FMT_1080i_50;
            *penSdFmt = HI_UNF_ENC_FMT_PAL;
            break;
        }
    }

    return;
}

static int PDM_BaseInfoTransParam(HI_DISP_PARAM_S *param, HI_PDM_BASE_INFO_S *pinfo)
{
	if((HI_NULL == param)||(HI_NULL == pinfo))
	{
		HI_ERR_PDM("error param!!(NULL)\n");
		return HI_FAILURE;
	}
	
	if(pinfo->checkflag != DEF_CHECK_FLAG)
	{
		HI_ERR_PDM("pinfo->checkflag(0x%08x) err \n", pinfo->checkflag);
		return HI_FAILURE;
	}
	//
	param->enFormat = pinfo->hdFmt;
	param->stBgColor = pinfo->enBgcolor;
	param->u32Brightness = pinfo->u32Brightness;
	param->u32Contrast = pinfo->u32Contrast;
	param->u32HuePlus = pinfo->u32HuePlus;
	param->u32Saturation = pinfo->u32Saturation;
	param->u32ScreenHeight = pinfo->outrectheight;
	param->u32ScreenWidth = pinfo->outrectwidth;
	param->u32ScreenXpos = pinfo->u32Left;
	param->u32ScreenYpos = pinfo->u32Top;
	param->stDacMode.bBt1120Enable = pinfo->Bt1120;
	param->stDacMode.bScartEnable = pinfo->scart;
	param->stDacMode.bBt656Enable = pinfo->Bt656;	
	memcpy(param->stDacMode.enDacMode,pinfo->dac,sizeof(HI_UNF_DISP_DAC_MODE_E)*MAX_DAC_NUM);
	//
	return HI_SUCCESS;
}


HI_S32 PDM_GetDefBaseParam(HI_PDM_BASE_INFO_S  *pstPdmBaseinfo)
{
	if(pstPdmBaseinfo == NULL)
	{
		HI_ERR_PDM("pstPdmBaseinfo err\n");	
		return HI_FAILURE;
	}
	pstPdmBaseinfo->checkflag = DEF_CHECK_FLAG;
	pstPdmBaseinfo->hdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	pstPdmBaseinfo->sdIntf = HI_UNF_DISP_INTF_TYPE_TV;
	pstPdmBaseinfo->hdFmt = HI_UNF_ENC_FMT_1080i_50;
	pstPdmBaseinfo->sdFmt = HI_UNF_ENC_FMT_PAL ;
	pstPdmBaseinfo->scart = 0;
	pstPdmBaseinfo->Bt1120 = 0;
	pstPdmBaseinfo->Bt656 = 0;
	pstPdmBaseinfo->dac[0] = HI_UNF_DISP_DAC_MODE_HD_PR;
	pstPdmBaseinfo->dac[1] = HI_UNF_DISP_DAC_MODE_HD_Y;
	pstPdmBaseinfo->dac[2] = HI_UNF_DISP_DAC_MODE_HD_PB;
	pstPdmBaseinfo->dac[3] = HI_UNF_DISP_DAC_MODE_SVIDEO_C;
	pstPdmBaseinfo->dac[4] = HI_UNF_DISP_DAC_MODE_SVIDEO_Y;
	pstPdmBaseinfo->dac[5] = HI_UNF_DISP_DAC_MODE_CVBS;

	#if defined(CHIP_TYPE_hi3716mv310)|| defined(CHIP_TYPE_hi3716mv320)|| defined (CHIP_TYPE_hi3716mv330)		
	pstPdmBaseinfo->layerformat = 9;
	pstPdmBaseinfo->inrectwidth = 1280;
	pstPdmBaseinfo->inrectheight = 720;
	pstPdmBaseinfo->outrectwidth = 1920;
	pstPdmBaseinfo->outrectheight = 1080;
#else	
	pstPdmBaseinfo->layerformat = 9;
	pstPdmBaseinfo->inrectwidth = 720;
	pstPdmBaseinfo->inrectheight = 576;
	pstPdmBaseinfo->outrectwidth = 720;
	pstPdmBaseinfo->outrectheight = 576;
#endif	

	pstPdmBaseinfo->usewbc = 1;
	pstPdmBaseinfo->resv1 = 0;
	pstPdmBaseinfo->resv2 = 0;
	pstPdmBaseinfo->logoMtdSize = 0; 
	pstPdmBaseinfo->playMtdSize = 0; 
	return 0;
}

HI_S32 PDM_GetBaseParam(HI_PDM_BASE_INFO_S  *pstPdmBaseinfo)
{
	HI_S32                      Ret;
    HI_PDM_Data_S                     stBaseDB;
    HI_U32                      u32BasePhyAddr;
    HI_U32                      u32BaseVirAddr;
	HI_U32                      u32BaseLen;
	HI_PDM_BASE_INFO_S  		stDefDispParam;

	memset(&stDefDispParam,0,sizeof(HI_PDM_BASE_INFO_S));
	
	PDM_GetDefBaseParam(&stDefDispParam);

	Ret = PDM_GetBufByName(PDM_BASEPARAM_BUFNAME, &u32BasePhyAddr, &u32BaseLen);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
	
	u32BaseVirAddr = (HI_U32)phys_to_virt(u32BasePhyAddr);

    Ret = PDM_GetHEADFromMem((HI_U8 *)u32BaseVirAddr, &stBaseDB);
    if(HI_SUCCESS != Ret)
    {
        HI_ERR_PDM("ERR: HI_DB_GetDBFromMem, use default baseparam!\n");
        *pstPdmBaseinfo = stDefDispParam;
        return HI_SUCCESS;
    }

	memcpy(pstPdmBaseinfo,stBaseDB.pData,sizeof(HI_PDM_BASE_INFO_S));	
   
    return HI_SUCCESS;

}


HI_S32 DRV_PDM_GetDispParam(HI_UNF_DISP_E enDisp, HI_DISP_PARAM_S *pstDispParam)
{    
    return HI_SUCCESS;
}

HI_S32 DRV_PDM_GetGrcParam(HI_GRC_PARAM_S *pstGrcParam)
{
    return HI_SUCCESS;
}

HI_S32 DRV_PDM_GetMceParam_New(HI_MCE_PALY_INFO_S *pstMceParam)
{
    HI_S32                      Ret;
    HI_PDM_Data_S               stBaseDB;
    HI_U32                      u32MceParaPhyAddr;
    HI_U32                      u32MceParaVirAddr;
    HI_U32                      u32MceParaLen;
	HI_MCE_PALY_INFO_S			stMcePlayInfo;

    Ret = PDM_GetBufByName(PDM_PLAYPARAM_BUFNAME, &u32MceParaPhyAddr, &u32MceParaLen);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    
    u32MceParaVirAddr = (HI_U32)phys_to_virt(u32MceParaPhyAddr);


	Ret = PDM_GetMceParamFromMem((HI_U8 *)u32MceParaVirAddr, &stBaseDB);
    if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: HI_DB_GetDBFromMem!\n");
        return HI_FAILURE;
    }
	Ret = PDM_GetMceParamFromMem((HI_U8 *)u32MceParaVirAddr, &stBaseDB);
	if(HI_SUCCESS != Ret)
    {
        HI_INFO_PDM("ERR: PDM_GetMceParamFromMem!\n");
        return HI_FAILURE;
    }
	
	memset(&stMcePlayInfo,0,sizeof(HI_MCE_PALY_INFO_S));

	memcpy(&stMcePlayInfo,stBaseDB.pData,sizeof(HI_MCE_PALY_INFO_S));

	if(stMcePlayInfo.playType == MCE_PLAY_TYPE_DVB)
	{
	
	}
	else if(stMcePlayInfo.playType == MCE_PLAY_TYPE_TSFILE)
	{
		
	}
	else if(stMcePlayInfo.playType == MCE_PLAY_TYPE_GPHFILE)
	{
		
	}

	HI_INFO_PDM("%s->%d,stMcePlayInfo.checkflag:%d\n",__func__,__LINE__,stMcePlayInfo.checkflag);
	HI_INFO_PDM("%s->%d,stMcePlayInfo.fastplayflag:%d\n",__func__,__LINE__,stMcePlayInfo.fastplayflag);
	HI_INFO_PDM("%s->%d,stMcePlayInfo.playType:%d\n",__func__,__LINE__,stMcePlayInfo.playType);
	
	memcpy(pstMceParam,&stMcePlayInfo,sizeof(HI_MCE_PALY_INFO_S));
	
    return HI_SUCCESS;

}


HI_S32 DRV_PDM_GetMceParam(HI_MCE_PARAM_S *pstMceParam)
{
    return HI_SUCCESS;
}

HI_S32 DRV_PDM_GetMceData(HI_U32 *pAddr)
{
    HI_S32                      Ret;
    HI_U32                      u32MceDataPhyAddr;
    HI_U32                      u32MceDataLen;

    Ret = PDM_GetBufByName(PDM_PLAYDATA_BUFNAME, &u32MceDataPhyAddr, &u32MceDataLen);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
    
    *pAddr = (HI_U32)phys_to_virt(u32MceDataPhyAddr);

    return HI_SUCCESS;
}

static HI_S32 DRV_PDM_TagRemoveBuff(const HI_CHAR *BufName)
{
    HI_CHAR PdmTag[512];
    HI_U32 PdmLen;
    HI_CHAR                 *p, *q;
    HI_U32 ii = 0;

    memset(PdmTag, 0x0, 512);

    PdmLen = get_param_data("pdm_tag", PdmTag, 512);
    if (PdmLen >= 512)
    {
        return HI_FAILURE;
    }

    PdmTag[511] = '\0';

    p = strstr(PdmTag, BufName);

    if (HI_NULL == p)
    {
        return HI_FAILURE;
    }

    q = strstr(p, " ");
    if (HI_NULL == q)
    {
        *p = '\0';
    }
    else
    {
        q++;
        for (ii = 0; ii < (strlen(PdmTag) - (q - PdmTag)); ii++)
        {
            p[ii] = q[ii];
        }

        p[ii] = '\0';
    }

    set_param_data("pdm_tag", PdmTag, strlen(PdmTag) + 1);

    return HI_SUCCESS;
}

HI_S32 DRV_PDM_ReleaseReserveMem(const HI_CHAR *BufName)
{
    HI_S32                      Ret;
    HI_U32                      PhyAddr;
    HI_U32                      Len;
    HI_U32                      i;    

    for (i = 0; i < g_PdmGlobal.ReleaseBufNum; i++)
    {
        if (0 == strncmp(g_PdmGlobal.ReleaseBufName[i], BufName, strlen(BufName)))
        {
            return HI_SUCCESS;
        }
    }
    
    Ret = PDM_GetBufByName(BufName, &PhyAddr, &Len);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }

	pdm_free_reserve_mem(PhyAddr, Len);
	DRV_PDM_TagRemoveBuff(BufName);
    memset(g_PdmGlobal.ReleaseBufName[g_PdmGlobal.ReleaseBufNum], 0x0, strlen(g_PdmGlobal.ReleaseBufName[g_PdmGlobal.ReleaseBufNum]));
    strncpy(g_PdmGlobal.ReleaseBufName[g_PdmGlobal.ReleaseBufNum], BufName, strlen(BufName));

    g_PdmGlobal.ReleaseBufNum++;
    
    return HI_SUCCESS;
}


HI_S32 HI_DRV_PDM_GetBaseInfo(HI_PDM_BASE_INFO_S *pstBaseInfo)
{
	if(HI_NULL == pstBaseInfo)
	{
		return HI_FAILURE;
	}
	
	return PDM_GetBaseParam(pstBaseInfo);
}

HI_S32 HI_DRV_PDM_GetDispParam(HI_UNF_DISP_E enDisp, HI_DISP_PARAM_S *pstDispParam)
{
	HI_PDM_BASE_INFO_S stDispParam;

	memset(&stDispParam,0,sizeof(HI_PDM_BASE_INFO_S));

	PDM_GetBaseParam(&stDispParam);

	return PDM_BaseInfoTransParam( pstDispParam,&stDispParam);
	
}

HI_S32 HI_DRV_PDM_GetAniAddr(HI_U32 *pAniVirAddr)
{
	HI_S32 Ret;
	HI_U32                      u32MtdPhyAddr;
    HI_U32                      u32MtdVirAddr;
	HI_U32                      u32MceParaLen;
	
	Ret = PDM_GetBufByName(PDM_PLAYPARAM_BUFNAME, &u32MtdPhyAddr, &u32MceParaLen);
    if (HI_SUCCESS != Ret)
    {
        return Ret;
    }
	
	u32MtdVirAddr = (HI_U32)phys_to_virt(u32MtdPhyAddr);

	*pAniVirAddr = u32MtdVirAddr;

	return HI_SUCCESS;

}

HI_S32 HI_DRV_PDM_GetDispBaseParam(HI_PDM_BASE_INFO_S *pstDispParam)
{
    return PDM_GetDefBaseParam(pstDispParam);
}

HI_S32 HI_DRV_PDM_GetGrcParam(HI_GRC_PARAM_S *pGrcParam)
{
    return DRV_PDM_GetGrcParam(pGrcParam);
}

/*
HI_S32 HI_DRV_PDM_GetMceParam(HI_MCE_PARAM_S *pMceParam)
{
    return DRV_PDM_GetMceParam(pMceParam);
}
*/

HI_S32 HI_DRV_PDM_GetMceParam(HI_MCE_PALY_INFO_S *pstMceParam)
{
    return DRV_PDM_GetMceParam_New(pstMceParam);
}

HI_S32 HI_DRV_PDM_GetMceData( HI_U32 *pAddr)
{
    return DRV_PDM_GetMceData(pAddr);
}

HI_S32 HI_DRV_PDM_ReleaseReserveMem(const HI_CHAR *BufName)
{
    return DRV_PDM_ReleaseReserveMem(BufName);
}


#if 0
/*******************************************
parse the tag and reserve mem
tag format is version=1.0.0.0  fb=0x85000000,0x10000  baseparam=0x86000000,0x2000 бнбн
*******************************************/
void pdm_reserve_mem(void)
{
    char            *pdm_tag = 0;
    int             taglen = 0;
    char            *p, *q;
    char            tmpbuf[32];
    unsigned int    phyaddr;
    unsigned int    len;

    pdm_tag = (char *)vmalloc(1024);
    if (0 == pdm_tag)
    {
        return;
    }
    
    memset(pdm_tag, 0x0, 1024);
    
    taglen = get_app_tag_data("pdm_tag", pdm_tag, 1024);
    if (taglen < 0)
    {
        vfree(pdm_tag);
        return;
    }

    p = strstr(pdm_tag, " ");
    if (0 == p)
    {
        vfree(pdm_tag);
        return;
    }

    while(p - pdm_tag <= taglen)
    {
        p = strstr(p, "=");
        if (0 == p)
        {
            break;
        }

        p++;
    
        q = strstr(p, ",");
        if (0 == q)
        {
            break;
        }

        memset(tmpbuf, 0x0, 32);

        /*buffer start phy address*/
        memcpy(tmpbuf, p, q-p);

        phyaddr = simple_strtoul(tmpbuf, NULL, 16);

        q++;

        p = strstr(q, " ");
        if (0 == p)
        {
            p = pdm_tag + taglen;
        }
        
        memset(tmpbuf, 0x0, 32);

        /*buffer size*/
        memcpy(tmpbuf, q, p-q);

        len = simple_strtoul(tmpbuf, NULL, 16);

#if 0
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
        bootmem_reserve();
#else        
        memblock_reserve();
#endif
#endif        
    }

    vfree(pdm_tag);
    
    return;
}
#endif


