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
  File Name	: hi_ani_pic.c
  Version		: Initial Draft
  Author		: Hisilicon multimedia software group
  Created		: 2009/12/21
  Description	:
  History		:
  1.Date		: 2009/12/21
    Author		: 
    Modification	: Created file

*******************************************************************************/

/*********************************add include here******************************/
#include "hi_go_comm.h"
#include "hi_ani_pic.h"
#include "hi_go.h"
#include "hi_go_surface.h"
#include "hi_tde_type.h"
#include "higo_common.h"
#include <linux/kthread.h>  
#include <linux/delay.h>
#include "hi_unf_mce.h"
#include "drv_mmz.h"
#include "optm_hifb.h"

/***************************** Macro Definition ******************************/

#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv330)	
#define HI_ANI_DEC_BUF_LEN                  0x1000000
#else
#define HI_ANI_DEC_BUF_LEN                  0x800000
#endif

/*************************** Structure Definition ****************************/

/*thread information*//* CNcomment: 线程信息 */
 typedef struct 
 {
 	struct task_struct * ptask_thread;
 	HI_BOOL 		 bAniStop;
 	HI_BOOL			 bAniFinish;
 }HI_ANI_THREAD_S;
 

typedef struct 
{
	HI_ANI_PIC_COMMINFO comInfo;   
	HI_ANI_PIC_PICTURE	  *picInfo;
}HI_ANI_PIC_INFO;


/********************** Global Variable declaration **************************/

static HI_ANI_THREAD_S    g_ani_thread[CONFIG_MCE_LAYER_MAXNUM];
static HI_PDM_BASE_INFO_S g_BaseParam;

static HI_BOOL g_bAniInit 		= HI_FALSE;
 
static HI_S32 g_sCanvasWidth            = 1280;
static HI_S32 g_sCanvasHeight           = 720;
static HIGO_PF_E g_szCanvasPixelFormat  = HIGO_PF_8888;
static HI_U32  g_AniPlayCount           = 0;
static HI_BOOL bAniExit_ByCallStopFunc = HI_FALSE;

static HI_ANI_PIC_INFO g_pictureInfo;
static MMZ_BUFFER_S 	g_stHigoBuf;

extern unsigned int PART_PLAY_PARA_SIZE;

HI_U32    g_u32HigoPhyAddr = 0;
HI_VOID   *pg_HigoVirAddr  = NULL;

/******************************* API declaration *****************************/

extern int MCE_Dsp_Show(HI_U32 picAddr, HI_U32 width, HI_U32 height, 
                    HI_U32 pitch, TDE2_COLOR_FMT_E  tdeFmt);
extern HI_S32 MCE_Base_Parse(HI_PDM_BASE_INFO_S *pBaseInfo);
extern HI_S32  MCE_SetBeginTime(HI_VOID);
extern int Grc_Init(HI_U32 u32LayerID);
extern void Grc_Deinit(int lay);


HI_S32 HI_Ani_AllocMem(HI_CHAR *pZone,
                                                     const HI_CHAR *pNodeName, 
                                                     HI_U32 u32MemSize,
                                                     HI_U32 u32Align,
                                                     HI_BOOL bCached,
                                                     HI_U32 *pu32PhyAddr, 
                                                     HI_VOID **pVirAddr)
{
	MMZ_BUFFER_S  stMBuf;
	HI_S32 Ret;

    /** mem size check */
    if ((u32MemSize == 0) || (u32MemSize > 0x40000000))
    {
        HI_ERR_MCE("size:%d is too large.\n", u32MemSize);
        return HI_FAILURE;
    }
	memset(&stMBuf,0,sizeof(MMZ_BUFFER_S));
    /** alloc mem from mmb */
	Ret = HI_DRV_MMZ_Alloc(pNodeName, pZone, u32MemSize, u32Align, &stMBuf);
	if(Ret != HI_SUCCESS)
	{
		HI_ERR_MCE(" HI_DRV_MMZ_Alloc failed!Ret : %#x\n",Ret);
		return HI_FAILURE;
	}
	
		
    if (0 == stMBuf.u32StartPhyAddr)
    {
        HI_ERR_MCE("bootmenu alloc mem failed! mallocsize 0x%x\n",u32MemSize);
        return HI_FAILURE;
    }

    /** remap mem addr */
    if (HI_TRUE == bCached)
    {
		Ret = HI_DRV_MMZ_MapCache(&stMBuf);
		if(Ret != HI_SUCCESS)
		{
			HI_ERR_MCE(" HI_DRV_MMZ_MapCache failed!Ret : %#x\n",Ret);
			HI_DRV_MMZ_Release(&stMBuf);
			return HI_FAILURE;
		}
    }
    else
    {
		Ret = HI_DRV_MMZ_Map(&stMBuf);
		if(Ret != HI_SUCCESS)
		{
			HI_ERR_MCE(" HI_DRV_MMZ_Map failed!Ret : %#x\n",Ret);
			HI_DRV_MMZ_Release(&stMBuf);
			return HI_FAILURE;
		}
    }

    if (!stMBuf.u32StartVirAddr)
    {    	
		HI_DRV_MMZ_Release(&stMBuf);
        HI_ERR_MCE("bootmenu alloc mem failed for remap\n");
        return HI_FAILURE;
    }

    *pu32PhyAddr = stMBuf.u32StartPhyAddr;
    *pVirAddr    = (HI_VOID*)stMBuf.u32StartVirAddr;
    
    return HI_SUCCESS;
}

/** free boot menu decode mem */
HI_VOID HI_Ani_FreeMem(HI_U32 u32PhyAddr, HI_VOID *pVirAddr)
{  
	MMZ_BUFFER_S  stMBuf;

	stMBuf.u32StartPhyAddr = u32PhyAddr;
	stMBuf.u32StartVirAddr = (HI_U32)pVirAddr;
	HI_DRV_MMZ_UnmapAndRelease(&stMBuf);
   
    return;
}

HI_S32 printComInfo_S(HI_ANI_PIC_COMMINFO *pcomInfo)
{
	HI_INFO_MCE("common info+++++++++++++++++++++++++++++++++++++++\n");
	HI_INFO_MCE(" uCount  : %d\n",pcomInfo->uCount);
	HI_INFO_MCE(" u32Xpos  : %d\n",pcomInfo->u32Xpos);
	HI_INFO_MCE(" u32Ypos  : %d\n",pcomInfo->u32Ypos);
	HI_INFO_MCE(" u32Width  : %d\n",pcomInfo->u32Width);
	HI_INFO_MCE(" u32Height  : %d\n",pcomInfo->u32Height);
	HI_INFO_MCE(" BGColor  : 0x%x\n",pcomInfo->BGColor);
	HI_INFO_MCE(" PlayMode  : %d\n",pcomInfo->PlayMode);
	HI_INFO_MCE(" uLoopCount  : %d\n",pcomInfo->uLoopCount);
	HI_INFO_MCE(" uPlaySecond  : %d\n",pcomInfo->uPlaySecond);
	HI_INFO_MCE("\n----------\n");
	return 0;
}
HI_S32 printDataInfo_S(HI_ANI_PIC_PICTURE	   *ppicInfo,int num)
{
	HI_U32 i;	
	HI_INFO_MCE("pic info+++++++++++++++++++++++++++++++++++++++\n");
	for(i = 0;i< num;i++)
	{
		HI_INFO_MCE(" u32FileAddr[%d]  : 0x%x\n",i,ppicInfo[i].u32FileAddr);
		HI_INFO_MCE(" u32FileLen[%d]  : %d\n",i,ppicInfo[i].u32FileLen);
		HI_INFO_MCE(" u32Xpos[%d]  : %d\n",i,ppicInfo[i].u32Xpos);
		HI_INFO_MCE(" u32Ypos[%d]  : %d\n",i,ppicInfo[i].u32Ypos);
		HI_INFO_MCE(" u32Width[%d]  : %d\n",i,ppicInfo[i].u32Width);
		HI_INFO_MCE(" u32Height[%d]  : %d\n",i,ppicInfo[i].u32Height);
		HI_INFO_MCE(" u32DelayTime[%d]  : %d\n",i,ppicInfo[i].u32DelayTime);
		HI_INFO_MCE("\n----------\n");
	}
	return 0;
	
}
static MMZ_BUFFER_S g_Buffer = {0};
static HI_MCE_PALY_INFO_S g_PlayInfo = {0};
#if 0
static void HI_ANI_get_rectSize(HI_UNF_ENC_FMT_E fmt,unsigned int *width, unsigned int*heigh)
{
	switch(fmt)
	{
		case HI_UNF_ENC_FMT_1080P_60:
		case HI_UNF_ENC_FMT_1080P_50:
		case HI_UNF_ENC_FMT_1080P_30:
		case HI_UNF_ENC_FMT_1080P_25:
		case HI_UNF_ENC_FMT_1080P_24:
		case HI_UNF_ENC_FMT_1080i_60:
		case HI_UNF_ENC_FMT_1080i_50:
		{
			*width = 1280;
			*heigh = 720;
			break;
		}
		case HI_UNF_ENC_FMT_720P_60:
		case HI_UNF_ENC_FMT_720P_50:
		{
			*width = 1280;
			*heigh = 720;
			break;
		}
		case HI_UNF_ENC_FMT_576P_50:
		{
			*width = 720;
			*heigh = 576;
			break;
		}
		case HI_UNF_ENC_FMT_480P_60:
		{
			*width = 720;
			*heigh = 480;
			break;
		}
		case HI_UNF_ENC_FMT_PAL:
		case HI_UNF_ENC_FMT_PAL_N:
		case HI_UNF_ENC_FMT_PAL_Nc:          
		{
			*width = 720;
			*heigh = 576;
			break;
		}
		case HI_UNF_ENC_FMT_NTSC:
		case HI_UNF_ENC_FMT_NTSC_J:
		case HI_UNF_ENC_FMT_NTSC_PAL_M:
		{
			*width = 720;
			*heigh = 480;
			break;
		}
		case HI_UNF_ENC_FMT_SECAM_SIN:
		case HI_UNF_ENC_FMT_SECAM_COS:        
		{
			*width = 720;
			*heigh = 576;
			break;
		}
		default:
		{
			*width = 1280;
			*heigh = 720;
			break;
		}
	}
}
#endif



/***************************************************************************************
* func          : HI_ANI_PIC_Init
* description   : 
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_ANI_PIC_Init(MMZ_BUFFER_S *pBuffer,HI_MCE_PALY_INFO_S *pPlayInfo,HI_U32 u32LayerID)
{

	HI_S32 ret = HI_SUCCESS;
    HI_S32 i = 0;

	ret = Grc_Init(u32LayerID);
	if(HI_SUCCESS != ret)
    {
        HI_ERR_MCE("ERR: Grc_Init!\n");
        return ret;
    }
         
	if(g_bAniInit == HI_FALSE)
	{
		ret = HI_Ani_AllocMem(HI_NULL, HI_NULL, HI_ANI_DEC_BUF_LEN, 0x40, HI_FALSE, 
                                                   &g_u32HigoPhyAddr, &pg_HigoVirAddr);
		if(ret != HI_SUCCESS)
		{
			ANI_ERROR(HIGO_ERR_NOMEM,"higo alloc temp memory failed\n");
			return ret;		
		}
        ret = HI_GO_SetMemInfo(g_u32HigoPhyAddr,pg_HigoVirAddr,HI_ANI_DEC_BUF_LEN);   
		if(ret != HI_SUCCESS)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"higo set memory failed\n");
			return ret;		
		}  
		
		ret = HI_GO_Init(pg_HigoVirAddr,HI_ANI_DEC_BUF_LEN);
		if(ret != HI_SUCCESS)
		{
			ANI_ERROR(HIGO_ERR_DEINITFAILED,"higo init failed\n");
			return ret;		
		}
		
		g_bAniInit 	 = HI_TRUE;
        g_AniPlayCount  = 0;
		memcpy(&g_Buffer,pBuffer,sizeof(MMZ_BUFFER_S));
		memcpy(&g_PlayInfo,pPlayInfo,sizeof(HI_MCE_PALY_INFO_S));

		for( i = 0;i < CONFIG_MCE_LAYER_MAXNUM;i ++)
		{
			g_ani_thread[i].ptask_thread = NULL;
			g_ani_thread[i].bAniFinish   = HI_TRUE;
			g_ani_thread[i].bAniStop     = HI_TRUE;			
		}

		ret = MCE_Base_Parse(&g_BaseParam);
		if(ret != HI_SUCCESS)
		{
			ANI_ERROR(HIGO_ERR_NOTINIT,"get base param failed\n");
			return ret;
		}
		g_szCanvasPixelFormat = g_BaseParam.layerformat;
		g_sCanvasWidth         = g_PlayInfo.Info.gphFileInfo.comInfo.u32Width;// g_BaseParam.inrectwidth;
		g_sCanvasHeight        = g_PlayInfo.Info.gphFileInfo.comInfo.u32Height; //g_BaseParam.inrectheight;
		
	}
	
	return HI_SUCCESS;
	
}



HI_S32 HI_ANI_PIC_GetCommInfo(HI_U32 uLayerID , HI_ANI_PIC_COMMINFO *pComInfo)
{
	//MCE_PLAY_INFO_S info = {0};
	 
	if(g_bAniInit == HI_FALSE)
	{
		ANI_ERROR(HIGO_ERR_NOTINIT,"com info is not init \n");
		return HI_FAILURE;
	}
	if(pComInfo == NULL)
	{
		ANI_ERROR(HIGO_ERR_NULLPTR,"com info is null \n");	
		return HI_FAILURE;
	}
	
	if(uLayerID != 0 && uLayerID != 2)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"layerid is invalid uLayerID %d  \n",uLayerID);	
		return HI_FAILURE;
	}

	memcpy(pComInfo,&g_PlayInfo.Info.gphFileInfo.comInfo,sizeof(HI_ANI_PIC_COMMINFO));
	//read picrure common info
	return HI_SUCCESS;

}
 
#define ADDR_SHIFT_TEST
HI_S32 HI_ANI_PIC_GetPicInfo(HI_U32 uLayerID,HI_ANI_PIC_PICTURE *pPicInfo)
{
	//MCE_PLAY_INFO_S info = {0};
	HI_CHAR *ppicInfoAddr = NULL;
	HI_U32 fileaddroffset = 0;
	HI_S32 i = 0;
	
	if(g_bAniInit == HI_FALSE)
	{
		ANI_ERROR(HIGO_ERR_NOTINIT,"pic info is not init \n");
		return HI_FAILURE;
	}
	if(pPicInfo == NULL)
	{
		ANI_ERROR(HIGO_ERR_NULLPTR,"picture data info is null \n");	
		return HI_FAILURE;
	}
	
	if(uLayerID != 0 && uLayerID != 2)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"layerid is invalid uLayerID %d\n", uLayerID);	
		return HI_FAILURE;
	}
	//read picrure data info

#ifdef ADDR_SHIFT_TEST
      fileaddroffset = g_Buffer.u32StartVirAddr;

      ppicInfoAddr = (HI_CHAR*)((HI_U32)g_PlayInfo.Info.gphFileInfo.ppicInfo + 0x800);
#else
	fileaddroffset =  (HI_U32)g_PlayInfo.Info.gphFileInfo.ppicInfo + PART_PLAY_PARA_SIZE;

	//0~0x800 used for commoninfo ,0x801~0x2000 used for pic data info
	ppicInfoAddr = (HI_CHAR*)(fileaddroffset  -(PART_PLAY_PARA_SIZE -  0x800)) ;
#endif


	//printDataInfo_S((HI_ANI_PIC_PICTURE*)ppicInfoAddr,g_PlayInfo.Info.gphFileInfo.comInfo.uCount);
	
	memcpy(pPicInfo,ppicInfoAddr,sizeof(HI_ANI_PIC_PICTURE) * g_PlayInfo.Info.gphFileInfo.comInfo.uCount);
	for( i = 0;i < g_PlayInfo.Info.gphFileInfo.comInfo.uCount;i++)
	{
		pPicInfo[i].u32FileAddr += fileaddroffset;
	}
	//printDataInfo_S(pPicInfo,g_PlayInfo.Info.gphFileInfo.comInfo.uCount);
	return HI_SUCCESS;
}

HI_S32 HI_ANI_PIC_CheckCommonInfo(HI_ANI_PIC_COMMINFO *pComInfo)
{	
	HI_U32 u32MaxCanvasWidth = 1280;
	HI_U32 u32MaxCanvasHeight = 720;
	
	if(pComInfo == NULL)
	{
		ANI_ERROR(HIGO_ERR_NULLPTR,"common info is null \n" );	
		return HI_FAILURE;
	}
	
	if(pComInfo->PlayMode >= HI_ANI_PIC_PLAYMODE_BUTT)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"common info playmode is invalid playmode %d  \n", 
		pComInfo->PlayMode);	
		return HI_FAILURE;		
	}
	
	if(pComInfo->uCount == 0)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"common info uConut is invalid uCount %d\n", 
		pComInfo->uCount );	
		return HI_FAILURE;		
	}
	
	if(pComInfo->u32Xpos >g_sCanvasWidth || pComInfo->u32Ypos > g_sCanvasHeight)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"common info Xpos / Ypos is invalid (x,y) =(%d %d)\n", 
		pComInfo->u32Xpos,pComInfo->u32Ypos);	
		return HI_FAILURE;	
	}
	if(pComInfo->u32Width <= 0 || pComInfo->u32Height <= 0 )
	{	
		ANI_ERROR(HIGO_ERR_INVPARAM,"common info width %d height %d \n", 		
		pComInfo->u32Width,pComInfo->u32Height);			
		return HI_FAILURE;	
	}
		
	if(pComInfo->u32Width > g_sCanvasWidth || pComInfo->u32Height > g_sCanvasHeight)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"common info w /h is invalid (w,h) =(%d %d)\n", 
		pComInfo->u32Width,pComInfo->u32Height);	
		return HI_FAILURE;	
	}
	
	if((pComInfo->u32Xpos  + pComInfo->u32Width >u32MaxCanvasWidth) 
	||( pComInfo->u32Ypos + pComInfo->u32Height > u32MaxCanvasHeight))
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"common info xpos + w  =%d , ypos + h = %d \n", 
		pComInfo->u32Xpos  + pComInfo->u32Width,
		pComInfo->u32Ypos + pComInfo->u32Height );	
		return HI_FAILURE;	
	}
	switch(pComInfo->PlayMode)
	{
	case HI_ANI_PIC_PLAYMODE_BYTIME:
		if(pComInfo->uPlaySecond <=0)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"common info uPlaySecond = %d \n", 
			pComInfo->uPlaySecond);		
			return HI_FAILURE;
		}
		break;
	case HI_ANI_PIC_PLAYMODE_LOOP:
		if(pComInfo->uLoopCount <= 0)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"common info uLoopCount = %d \n", 
			pComInfo->uLoopCount);		
			return HI_FAILURE;
		}
		break;
	default:
		break;
		
	}
	return HI_SUCCESS;
}

HI_S32 HI_ANI_PIC_CheckPicInfo(HI_ANI_PIC_PICTURE *pPicInfo, int num,HI_ANI_PIC_COMMINFO *pComInfo)
{
	HI_S32 i;	
	
	if(pPicInfo == NULL)
	{
		ANI_ERROR(HIGO_ERR_NULLPTR,"picture data  info is null \n");	
		return HI_FAILURE;
	}
	
	if(num <= 0)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"picture data  info picnum = %d \n",num);	
		return HI_FAILURE;
	}
	for( i = 0; i < num; i++)
	{
		if(pPicInfo[i].u32FileAddr == 0)
		{
			ANI_ERROR(HIGO_ERR_NULLPTR,"picture fileaddr  is null.index = %d\n",i);	
			return HI_FAILURE;		
		}
		if(pPicInfo[i].u32FileLen <= 0)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"picture filelen is invalid.index = %d \n", i);	
			return HI_FAILURE;		
		}	
		if(pPicInfo[i].u32Width <= 0 || pPicInfo[i].u32Height <= 0 )		
		{			
			ANI_ERROR(HIGO_ERR_INVPARAM,"pic info width[%d] %d height[%d] %d \n", 	
			i,pPicInfo[i].u32Width,i,pPicInfo[i].u32Height);				
			return HI_FAILURE;			
		}
		if(pPicInfo[i].u32Xpos > g_sCanvasWidth|| pPicInfo[i].u32Ypos > g_sCanvasHeight)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"picinfo Xpos / Ypos is invalid (x,y) =(%d %d)\n", 
			pPicInfo[i].u32Xpos,pPicInfo[i].u32Ypos);	
			return HI_FAILURE;	
		}
		
		if(pPicInfo[i].u32Width > g_sCanvasWidth || pPicInfo[i].u32Height > g_sCanvasHeight)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"picinfo w /h is invalid (w,h) =(%d %d)\n", 
			pPicInfo[i].u32Width,pPicInfo[i].u32Height);	
			return HI_FAILURE;	
		}
		
		if((pComInfo->u32Width < pPicInfo[i].u32Width) 
		||( pComInfo->u32Height <  pPicInfo[i].u32Height))
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"cominfo w %d h %d  picinfo w %d h %d  \n", 
			pComInfo->u32Width,  pComInfo->u32Height ,
			pPicInfo[i].u32Width,pPicInfo[i].u32Height );	
			return HI_FAILURE;	
		}

		if((pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width > pComInfo->u32Width) 
		||( pPicInfo[i].u32Ypos + pPicInfo[i].u32Height > pComInfo->u32Height))
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"picinfo xpos + w  =%d, cominfo w = %d, ypos + h = %d, cominfo h = %d \n", 
			pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width, pComInfo->u32Width,
			pPicInfo[i].u32Ypos + pPicInfo[i].u32Height, pComInfo->u32Height);	
			return HI_FAILURE;	
		}
		
		if((pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width >g_sCanvasWidth) 
		||( pPicInfo[i].u32Ypos + pPicInfo[i].u32Height > g_sCanvasHeight))
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"picinfo xpos + w  =%d , ypos + h = %d \n", 
			pPicInfo[i].u32Xpos  + pPicInfo[i].u32Width,
			pPicInfo[i].u32Ypos + pPicInfo[i].u32Height );	
			return HI_FAILURE;	
		}
		if(pComInfo->u32Xpos + pPicInfo[i].u32Xpos > g_sCanvasWidth)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"com inf Xpos %d picinfo Xpos %d \n", 
			pComInfo->u32Xpos,pPicInfo[i].u32Xpos);	
			return HI_FAILURE;	
		}
		if(pComInfo->u32Ypos + pPicInfo[i].u32Ypos > g_sCanvasHeight)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"com inf Ypos %d picinfo Ypos %d \n", 
			pComInfo->u32Ypos,pPicInfo[i].u32Ypos);	
			return HI_FAILURE;	
		}
	}
	return HI_SUCCESS;
}

static HI_BOOL HI_ANI_PIC_TimeExpire(HI_U32 uExpectTime,struct timeval *pStart)
{	
	struct timeval tv;
	HI_U32 udiff;
	do_gettimeofday(&tv);
	udiff =  tv.tv_sec*1000 + tv.tv_usec/1000 - pStart->tv_sec*1000 - pStart->tv_usec/1000;
	if(udiff >= uExpectTime)
	{
		return HI_TRUE;
	}
	return HI_FALSE;
}


/***************************************************************************************
* func          : HI_ANI_PIC_Refresh
* description   : CNcomment: 刷新显示 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 HI_ANI_PIC_Refresh(HI_HANDLE hCanvasSurface)
{
	HI_S32 ret = 0;
	HI_S32 sWidth  = 0;
	HI_S32 sHeight = 0;
	HI_PIXELDATA pData;

	ret = HI_GO_LockSurface(hCanvasSurface, pData);
	if(ret != HI_SUCCESS)
	{
		ANI_ERROR(ret,"HI_GO_LockSurface \n");	
		return ret;
	}
	/**
	 **创建时候的surface大小
	 **/
	ret = HI_GO_GetSurfaceSize(hCanvasSurface, &sWidth,&sHeight);
	if(ret != HI_SUCCESS)
	{
		ANI_ERROR(ret,"HI_GO_GetSurfaceSize \n");
		return ret;
	}

	if(g_szCanvasPixelFormat == HIGO_PF_8888)
	{
		ret = MCE_Dsp_Show((HI_U32)pData[0].pPhyData, sWidth, sHeight, pData[0].Pitch, TDE2_COLOR_FMT_ARGB8888);
	}
	else
	{
		ret = MCE_Dsp_Show((HI_U32)pData[0].pPhyData, sWidth, sHeight, pData[0].Pitch, TDE2_COLOR_FMT_ARGB1555);		
	}
	if(ret != HI_SUCCESS)
	{
		ANI_ERROR(ret,"MCE_Dsp_Show \n");
		return ret;
	}

	ret = HI_GO_UnlockSurface(hCanvasSurface);
	if(ret != HI_SUCCESS)
	{
		ANI_ERROR(ret,"HI_GO_UnlockSurface \n");	
		return ret;
	}
	
    return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : HI_ANI_PIC_Execute
* description   : CNcomment: 执行开机动画 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static int HI_ANI_PIC_Execute(HI_ANI_PIC_INFO *picData)
{
		HI_ANI_PIC_COMMINFO szComInfo = {0};
		HI_ANI_PIC_PICTURE    *szPicInfo = NULL;
		HI_S32 ret = HI_SUCCESS;
		HI_S32 sFrameIndex   = 0;
		HI_U32 uInnerLayerID = 0;
		HI_U32 u32DecSize    = 0;
		HI_HANDLE            hDec;
		HIGO_DEC_ATTR_S      struDecAttr;
		HIGO_DEC_IMGINFO_S   sImgInfo;
		HIGO_DEC_IMGTYPE_E   imgtype ;
		HI_U32               u32DecPhyAddr;
		HI_VOID              *pDecVirAddr;

		HIGO_SURINFO_S      stSrcSurInfo;
        HI_HANDLE           hSrcSurface;
		HI_HANDLE           hDstSurface;
		HI_RECT 			SrcRect ={0};
		HI_RECT 			DstRect ={0};    	
		HIGO_BLTOPT_S  		szBlitOpt ={0};
		HI_S32  s32Cnt       = 0;
		HI_BOOL bAniFinish   = HI_TRUE;
		
	    /** play times **//** CNcomment:播放多少轮 **/
		HI_U32 uLoopTime = 0;
		HI_U32 uPlayTime = 0;
		
		struct timeval tv_start;	

		if(OPTM_GFX_LAYER_HD0 == CONFIG_MCE_LAYER_ID)
		{
			uInnerLayerID = CONFIG_MCE_LAYER_HD0;
		}
		else if(OPTM_GFX_LAYER_AD0 == CONFIG_MCE_LAYER_ID)
		{
			uInnerLayerID = CONFIG_MCE_LAYER_AD0;
		}
		else
		{
			uInnerLayerID = CONFIG_MCE_LAYER_SD0;		
		}
		
		if(g_bAniInit == HI_FALSE)
		{
			ANI_ERROR(HIGO_ERR_NOTINIT,"not init \n" );
			ret =  HI_FAILURE;	 
			goto exitlabel;
		}
		if(picData ==NULL)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"param is null \n");
			ret =  HI_FAILURE;	
			goto exitlabel;	
		}
		for(s32Cnt = 0; s32Cnt <= CONFIG_MCE_LAYER_AD0;s32Cnt++)
		{
			if(HI_FALSE == g_ani_thread[s32Cnt].bAniFinish)
			{
				bAniFinish   = HI_FALSE;
			}
		}
		if(HI_TRUE == bAniFinish)
		{
			ret = HI_SUCCESS;
			goto exitlabel;
		}
		memcpy(&szComInfo,&picData->comInfo,sizeof(HI_ANI_PIC_COMMINFO));

		szPicInfo =  (HI_ANI_PIC_PICTURE*)HIGO_Malloc(sizeof(HI_ANI_PIC_PICTURE) * szComInfo.uCount);
		if(szPicInfo ==NULL)
		{
			ANI_ERROR(HIGO_ERR_INVPARAM,"alloc failed is null \n");
			ret =  HI_FAILURE;	
			goto exitlabel;	
		}
		memcpy(szPicInfo,picData->picInfo,sizeof(HI_ANI_PIC_PICTURE) * szComInfo.uCount);
	
		if(szComInfo.PlayMode >= HI_ANI_PIC_PLAYMODE_BUTT)
		{
			ANI_ERROR(HIGO_ERR_NOTINIT,"playmode err %d \n", szComInfo.PlayMode );
			ret =  HI_FAILURE;	
			goto exitlabel;	
		}
	
		switch(szComInfo.PlayMode)
		{
			case HI_ANI_PIC_PLAYMODE_ONE:
				szComInfo.uLoopCount = 1;
				break;
			case HI_ANI_PIC_PLAYMODE_LOOP:		
				if(szComInfo.uLoopCount == -1)
				{
					bAniExit_ByCallStopFunc = HI_TRUE;
				}
				break;
			case HI_ANI_PIC_PLAYMODE_BYTIME:
				uPlayTime = szComInfo.uPlaySecond *1000;
				if(uPlayTime == 0)
				{
					ANI_ERROR(HIGO_ERR_INVPARAM,"playTime  is invalid \n" );	
					ret =  HI_FAILURE;	
					goto exitlabel;			
				}
				break;
			default:
				break;
		}

		/**
		 **create display surface
		 **/
		ret = HI_GO_CreateSurface(g_sCanvasWidth, g_sCanvasHeight, g_szCanvasPixelFormat, &hDstSurface);
		if(ret != 0)
		{
			ANI_ERROR(ret,"HI_GO_CreateSurface failed \n");	
			goto exitlabel;			
		}
		
		do_gettimeofday(&tv_start);
		while(1)
		{
			/*wait until user call stop*/
			/*CNcomment:loop模式，如果没有设置loop次数，则直到用户调用stop才停止*/
			if(bAniExit_ByCallStopFunc == HI_TRUE )
			{			
				if(g_ani_thread[uInnerLayerID].bAniStop  == HI_TRUE)
				{
					g_ani_thread[uInnerLayerID].bAniFinish = HI_TRUE;
					break;	
				}
			}
			else 
			{
				/*exit when execute the setting count of loopcount*/
				/*CNcomment:loop模式，如果设置了loop次数，则播放完相应的次数则退出*/
				if(szComInfo.PlayMode == HI_ANI_PIC_PLAYMODE_LOOP)
				{
					if(uLoopTime == szComInfo.uLoopCount)
					{
						g_ani_thread[uInnerLayerID].bAniFinish = HI_TRUE;
						break;
					}
				}
				else if(szComInfo.PlayMode == HI_ANI_PIC_PLAYMODE_ONE)
				{
					if(uLoopTime >0)
					{
						g_ani_thread[uInnerLayerID].bAniFinish = HI_TRUE;
						break;
					}
				}
				/*exit by execute the time that user set*/
				/* CNcomment: BYTIME 模式*/
				else	
				{
					if(HI_ANI_PIC_TimeExpire(uPlayTime,&tv_start) == HI_TRUE)
					{
						g_ani_thread[uInnerLayerID].bAniFinish = HI_TRUE;
						break;				
					}
				}
			}
			
			/**
			 ** 创建解码器 *
			 **/
			memset(&struDecAttr, 0x0, sizeof(HIGO_DEC_ATTR_S));
			struDecAttr.SrcInfo.MemInfo.pAddr  = (HI_CHAR*)szPicInfo[sFrameIndex].u32FileAddr;
			struDecAttr.SrcInfo.MemInfo.Length = szPicInfo[sFrameIndex].u32FileLen;

			ret = HI_GO_CreateDecoder(&struDecAttr, &hDec);
			if(ret != HI_SUCCESS)
			{
				ANI_ERROR(ret,"HI_GO_CreateDecoder failed \n");
				goto exitlabel2;
			}
	    	/**
	    	 ** 必须为jpeg格式的图片
	    	 **/
			memcpy(&imgtype,(HI_VOID*)hDec,sizeof(HIGO_DEC_IMGTYPE_E));
			if(imgtype != HIGO_DEC_IMGTYPE_JPEG)
			{
				ANI_ERROR(ret,"unsupport to dec file %d  imgtype %d \n",sFrameIndex,imgtype);	
				HI_GO_DestroyDecoder(hDec);
				ret = HIGO_ERR_UNSUPPORTED;
				goto exitlabel2;
			}
			
			ret = HI_GO_DecImgInfo(hDec, 0, &sImgInfo);
			if(ret != HI_SUCCESS)
			{
				HI_GO_DestroyDecoder(hDec);
				ANI_ERROR(ret,"HI_GO_DecImgInfo failed \n");	
				goto exitlabel2;
			}

			/**==============================================================**/
		    /**
	         ** 设置surface参数以构建surface 
	         **/
		    memset(&stSrcSurInfo, 0x0, sizeof(HIGO_SURINFO_S));
		    
		    stSrcSurInfo.Width       = sImgInfo.Width;
		    stSrcSurInfo.Height      = sImgInfo.Height;
		    stSrcSurInfo.PixelFormat = g_szCanvasPixelFormat;

			if(g_szCanvasPixelFormat == HIGO_PF_8888)
			{
				stSrcSurInfo.Pitch[0] = (stSrcSurInfo.Width * 4 + 3) & 0xFFFFFFFC;
			}
			else
			{
				stSrcSurInfo.Pitch[0] = (stSrcSurInfo.Width * 2 + 3) & 0xFFFFFFFC;
			}
			u32DecSize = stSrcSurInfo.Pitch[0] * stSrcSurInfo.Height;
			
			ret = HI_Ani_AllocMem(HI_NULL,HI_NULL,u32DecSize,0x40, HI_FALSE, &u32DecPhyAddr, &pDecVirAddr);
			if(ret != HI_SUCCESS)
			{
				HI_GO_DestroyDecoder(hDec);
				ANI_ERROR(ret,"HI_Ani_AllocMem failed \n");	
				goto exitlabel2;        			
			}
			
		    stSrcSurInfo.pPhyAddr[0]  = (HI_CHAR*)u32DecPhyAddr;
		    stSrcSurInfo.pVirAddr[0]  = pDecVirAddr;
			ret = HI_GO_CreateSurfaceFromMem(&stSrcSurInfo, &hSrcSurface);
			if (ret!= HI_SUCCESS)
			{
				HI_GO_DestroyDecoder(hDec);
				ANI_ERROR(ret,"HI_GO_CreateSurfaceFromMem failed \n");	
				goto exitlabel3;
			}
			/**==============================================================**/

			
			ret = HI_GO_DecImgToSurface(hDec, 0, hSrcSurface);    
			if (ret != HI_SUCCESS)
			{
				ANI_ERROR(ret,"HI_GO_DecImgToSurface failed \n");	
				goto exitlabel4;
			}
			ret = HI_GO_DestroyDecoder(hDec);
			if(ret != HI_SUCCESS)
			{
				ANI_ERROR(ret,"HI_GO_DestroyDecoder failed \n");	
				goto exitlabel4;
			}
			/**
			 **图片大小
			 **/
			SrcRect.x = 0;
			SrcRect.y = 0;
			SrcRect.w = sImgInfo.Width;
			SrcRect.h = sImgInfo.Height;

			/**
			 **blit区域
			 **/
			DstRect.x = szComInfo.u32Xpos + szPicInfo[sFrameIndex].u32Xpos;
			DstRect.y = szComInfo.u32Ypos + szPicInfo[sFrameIndex].u32Ypos;
			DstRect.w = szPicInfo[sFrameIndex].u32Width;
			DstRect.h = szPicInfo[sFrameIndex].u32Height;


			/** fill display surface back color **/
			ret = HI_GO_FillRect(hDstSurface, NULL, szComInfo.BGColor, HIGO_COMPOPT_NONE);
			if(ret != HI_SUCCESS)
			{
				ANI_ERROR(ret,"HI_GO_FillRect failed \n");	
				goto exitlabel4;
			}
			/** blit decode surface to display surface **/
			szBlitOpt.EnableScale = HI_TRUE;
			ret = HI_GO_Blit(hSrcSurface, &SrcRect, hDstSurface, &DstRect,  &szBlitOpt);
			if(ret != HI_SUCCESS)
			{
				ANI_ERROR(ret,"HI_GO_Blit failed \n");	
				goto exitlabel4;
			}
			/**
			 **refresh hDstSurface
			 **/
			ret = HI_ANI_PIC_Refresh(hDstSurface);
			if(ret != HI_SUCCESS)
			{
				ANI_ERROR(ret,"HI_ANI_PIC_Refresh failed \n");	
				goto exitlabel4;
			}
			if(szPicInfo[sFrameIndex].u32DelayTime != 0)
			{
				msleep(szPicInfo[sFrameIndex].u32DelayTime);
			}
	    		
			ret = HI_GO_FreeSurface(hSrcSurface);
			if(ret != HI_SUCCESS)
			{
				ANI_ERROR(ret,"HI_GO_FreeSurface failed \n");	
				goto exitlabel3;
			}
			HI_Ani_FreeMem(u32DecPhyAddr, pDecVirAddr);
			sFrameIndex ++;
			if(sFrameIndex == szComInfo.uCount)
			{
				sFrameIndex = 0;
				uLoopTime ++;
	            g_AniPlayCount ++;
			}
			

		}
		
		HI_GO_FreeSurface(hDstSurface);

		return HI_SUCCESS;
	
exitlabel4:
		HI_GO_FreeSurface(hSrcSurface);	
	
exitlabel3:
		HI_Ani_FreeMem(u32DecPhyAddr, pDecVirAddr);
	
exitlabel2:
		HI_GO_FreeSurface(hDstSurface);
		
exitlabel:
		if(szPicInfo)
		{
			HIGO_Free(szPicInfo);
		}
		if(g_pictureInfo.picInfo != NULL)
		{
			//kfree(g_pictureInfo.picInfo);
			HI_DRV_MMZ_UnmapAndRelease(&g_stHigoBuf);
			g_pictureInfo.picInfo = NULL;
		}
		
		g_ani_thread[uInnerLayerID].bAniFinish = HI_TRUE;
		
		return ret;
	
}

/*****************************************************************************
* func			   HI_ANI_PIC_CreateThread
* description	:
* retval		:  NA
* others:		:  NA
*****************************************************************************/
static HI_S32 HI_ANI_PIC_CreateThread(HI_U32 uLayerID,HI_ANI_PIC_INFO *picData)
{
	HI_U32 uInnerLayer;
	if(OPTM_GFX_LAYER_HD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_HD0;
	}
	else if(OPTM_GFX_LAYER_AD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		uInnerLayer = CONFIG_MCE_LAYER_SD0;
	}
	
	if(g_ani_thread[uInnerLayer].ptask_thread == NULL)
	{
		if(CONFIG_MCE_LAYER_AD0 == uInnerLayer)
		{
			g_ani_thread[uInnerLayer].ptask_thread = kthread_create((HI_VOID*)HI_ANI_PIC_Execute,(void*)picData,"dec_thread_ad" );
		}
		else if(CONFIG_MCE_LAYER_HD0 == uInnerLayer)
		{
			g_ani_thread[uInnerLayer].ptask_thread = kthread_create((HI_VOID*)HI_ANI_PIC_Execute,(void*)picData,"dec_thread_hd" );
		}
		else 
		{
			g_ani_thread[uInnerLayer].ptask_thread = kthread_create((HI_VOID*)HI_ANI_PIC_Execute,(void*)picData,"dec_thread_sd" );
		}
		 if(IS_ERR(g_ani_thread[uInnerLayer].ptask_thread))
		 {
		      ANI_ERROR(0,"kthread_create  failed layer id %d\n",uLayerID);
		      g_ani_thread[uInnerLayer].ptask_thread = NULL;
		      return HI_FAILURE;
		  }
	}
	return HI_SUCCESS;
}

static HI_S32 HI_ANI_PIC_DestroyThread(HI_U32 uLayerID)
{
	HI_U32 uInnerLayer;
	if(g_bAniInit == HI_FALSE)
	{
		return HI_SUCCESS;
	}
	if(uLayerID == OPTM_GFX_LAYER_HD0)
	{
		uInnerLayer = CONFIG_MCE_LAYER_HD0;
	}
	else if(uLayerID == OPTM_GFX_LAYER_AD0)
	{
		uInnerLayer = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		uInnerLayer = CONFIG_MCE_LAYER_SD0;
	}
	
	if(g_ani_thread[uInnerLayer].ptask_thread == NULL)
	{
		return HI_SUCCESS;
	}
	yield();
	g_ani_thread[uInnerLayer].ptask_thread = NULL;
	
	return HI_SUCCESS;
	
}

/*****************************************************************************
* func			   HI_ANI_PIC_StartThread
* description	:  start thread
* retval		:  NA
* others:		:  NA
*****************************************************************************/
static HI_S32 HI_ANI_PIC_StartThread(HI_U32 uLayerID)
{	
	HI_U32 uInnerLayer;
	if(OPTM_GFX_LAYER_HD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_HD0;
	}
	else if(OPTM_GFX_LAYER_AD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		uInnerLayer = CONFIG_MCE_LAYER_SD0;		
	}
	if(g_ani_thread[uInnerLayer].ptask_thread == NULL)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"sd thread not create\n");
		return HI_FAILURE;
	}	
	g_ani_thread[uInnerLayer].bAniStop    = HI_FALSE;
	g_ani_thread[uInnerLayer].bAniFinish  = HI_FALSE;
	
	wake_up_process(g_ani_thread[uInnerLayer].ptask_thread); 
	
	return HI_SUCCESS;
	
}



/*****************************************************************************
* func			   HI_ANI_PIC_Start
* description	:  start pic decode
* retval		:  NA
* others:		:  NA
*****************************************************************************/
HI_S32 HI_ANI_PIC_Start(HI_U32 uLayerID, HI_ANI_PIC_COMMINFO *pComInfo, HI_ANI_PIC_PICTURE *pPicInfo)
{

	HI_S32 ret = HI_SUCCESS;
	HI_U32 uSize = 0;
	
	if(g_bAniInit == HI_FALSE)
	{
		ANI_ERROR(HIGO_ERR_NOTINIT,"not init \n");
		return HI_FAILURE;	
	}
	if(uLayerID != OPTM_GFX_LAYER_HD0 && uLayerID != OPTM_GFX_LAYER_AD0 && uLayerID != OPTM_GFX_LAYER_SD0)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"layerid is invalid \n");	
		return HI_FAILURE;
	}
	if(HI_ANI_PIC_CheckCommonInfo(pComInfo) != HI_SUCCESS)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"common info  is invalid \n");	
		return HI_FAILURE;		
	}
	
	if(HI_ANI_PIC_CheckPicInfo(pPicInfo,pComInfo->uCount,pComInfo) != HI_SUCCESS)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"picture info  is invalid \n");	
		return HI_FAILURE;		
	}
	memcpy(&g_pictureInfo.comInfo,pComInfo,sizeof(HI_ANI_PIC_COMMINFO));
	uSize = pComInfo->uCount * sizeof(HI_ANI_PIC_PICTURE);

	ret = HI_DRV_MMZ_AllocAndMap("higobuf",HI_NULL, uSize, 0x4, &g_stHigoBuf);
	if(ret != HI_SUCCESS )
	{
		ANI_ERROR(HIGO_ERR_NOMEM,"malloc pic info  failed \n");	
		return HI_FAILURE;	
	}
	g_pictureInfo.picInfo = (HI_ANI_PIC_PICTURE*)(g_stHigoBuf.u32StartVirAddr);
	memset((HI_VOID*)g_pictureInfo.picInfo,0,uSize);
	
	memcpy(g_pictureInfo.picInfo,pPicInfo,uSize);
	
	//create thread
	ret = HI_ANI_PIC_CreateThread(uLayerID,&g_pictureInfo);
	if(ret != HI_SUCCESS)
	{
		ANI_ERROR(ret,"HI_ANI_PIC_CreateThread failed  layerid %d \n",uLayerID);	
		return ret;
	}

    /* reset begin time reduce begin time offset*/
    MCE_SetBeginTime();

	//start thread
	ret = HI_ANI_PIC_StartThread(uLayerID);	
	if(ret != HI_SUCCESS)
	{
		ANI_ERROR(ret,"HI_ANI_PIC_StartThread failed  layerid %d \n",uLayerID);
		return ret;
	}
	return HI_SUCCESS;

}


/*****************************************************************************
* func			   HI_ANI_PIC_IsFinish
* description	:  is finish
* retval		:  NA
* others:		:  NA
*****************************************************************************/
HI_S32 HI_ANI_PIC_IsFinish(HI_U32 uLayerID, HI_BOOL *bFinished)
{
	HI_U32 uInnerLayer;
	
	if(g_bAniInit == HI_FALSE)
	{		
		*bFinished = HI_TRUE;
		return HI_SUCCESS;	
	}
	if(uLayerID != OPTM_GFX_LAYER_HD0 && uLayerID != OPTM_GFX_LAYER_AD0 && uLayerID != OPTM_GFX_LAYER_SD0)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"layerid is invalid \n");	
		return HI_FAILURE;
	}
	if(OPTM_GFX_LAYER_HD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_HD0;
	}
	else if(OPTM_GFX_LAYER_AD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		uInnerLayer = CONFIG_MCE_LAYER_SD0;		
	}
	if(g_ani_thread[uInnerLayer].ptask_thread == NULL)
	{
		*bFinished = HI_TRUE;
		return HI_SUCCESS;
	}	
	//set stop flag
	*bFinished = g_ani_thread[uInnerLayer].bAniFinish;
	
	return HI_SUCCESS;
	
}

HI_S32 HI_ANI_PIC_SetExtStopAni(HI_VOID)
{
	if (!bAniExit_ByCallStopFunc)
	{
		bAniExit_ByCallStopFunc = HI_TRUE;
	}
	return HI_SUCCESS;
}

HI_U32 HI_ANI_PIC_GetPlayCount(HI_VOID)
{

//	HI_INFO_MCE("g_AniPlayCount = %d\n",g_AniPlayCount);
    return g_AniPlayCount;
}



/*****************************************************************************
* func			   HI_ANI_PIC_Stop
* description	:  stop pic decode
* retval		:  NA
* others:		:  NA
*****************************************************************************/
HI_S32 HI_ANI_PIC_Stop(HI_U32 uLayerID)
{
	HI_BOOL bFinish = HI_FALSE;
	HI_S32 ret;
	HI_U32 uInnerLayer;

	if(g_bAniInit == HI_FALSE)
	{		
		return HI_SUCCESS;	
	}
	
	if(uLayerID != OPTM_GFX_LAYER_HD0 && uLayerID != OPTM_GFX_LAYER_AD0 && uLayerID != OPTM_GFX_LAYER_SD0)
	{
		ANI_ERROR(HIGO_ERR_INVPARAM,"layerid is invalid layerid %d \n",uLayerID);	
		return HI_FAILURE;
	}
	if(OPTM_GFX_LAYER_HD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_HD0;
	}
	else if(OPTM_GFX_LAYER_AD0 == uLayerID)
	{
		uInnerLayer = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		uInnerLayer = CONFIG_MCE_LAYER_SD0;		
	}

	g_ani_thread[uInnerLayer].bAniStop  = HI_TRUE;
	ret = HI_ANI_PIC_IsFinish(uLayerID,&bFinish);
	if(ret != HI_SUCCESS)
	{
		return HI_SUCCESS;
	}
	
	//wait until animation is really finished
	while(bFinish == HI_FALSE)
	{
		msleep(5);
		HI_ANI_PIC_IsFinish(uLayerID,&bFinish);
	}
	if(g_pictureInfo.picInfo != NULL)
	{
		//kfree(g_pictureInfo.picInfo);
		HI_DRV_MMZ_UnmapAndRelease(&g_stHigoBuf);
		g_pictureInfo.picInfo = NULL;
	}
	return HI_SUCCESS;
	
}

/***************************************************************************************
* func          : HI_ANI_PIC_Deinit
* description   : 开机动画去初始化
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 HI_ANI_PIC_Deinit(HI_VOID)
{
	HI_S32 i   = 0;
	HI_S32 lay = 0;
	
	if(g_bAniInit == HI_TRUE)
	{
		HI_ANI_PIC_DestroyThread(CONFIG_MCE_LAYER_ID);
		
		HI_Ani_FreeMem(g_u32HigoPhyAddr, pg_HigoVirAddr);  
		HI_GO_Deinit();

		g_bAniInit	= HI_FALSE;
		for( i = 0;i < CONFIG_MCE_LAYER_MAXNUM;i ++)
		{
			g_ani_thread[i].ptask_thread= NULL;
			g_ani_thread[i].bAniFinish = HI_TRUE;
			g_ani_thread[i].bAniStop= HI_TRUE;			
		}
	}

	if(OPTM_GFX_LAYER_HD0 == CONFIG_MCE_LAYER_ID)
	{
		lay = CONFIG_MCE_LAYER_HD0;
	}
	else if(OPTM_GFX_LAYER_AD0 == CONFIG_MCE_LAYER_ID)
	{
		lay = CONFIG_MCE_LAYER_AD0;
	}
	else
	{
		lay = CONFIG_MCE_LAYER_SD0;
	}
	Grc_Deinit(lay);
	
	return HI_SUCCESS;
	
}

EXPORT_SYMBOL(HI_ANI_PIC_Stop);
