/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : mmz_api.c
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/


/*********************************add include here******************************/
#include <linux/string.h>
#include <linux/slab.h>
#include <asm/cache.h>
#include <linux/smp.h>
#include <linux/mman.h>


#include "hi_drv_mmz.h"
#include "mmz_api.h"

/*****************************************************************************/


/***************************** Macro Definition ******************************/


/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/
HI_U32 HI_MMB_New(HI_CHAR *pName, HI_CHAR* pZoneName,HI_U32 align, HI_U32 u32LayerSize)
{

	HI_U32 addr;
	MMZ_BUFFER_S stBuffer;

	if ((u32LayerSize == 0) || (u32LayerSize > 0x40000000))
	{
	    return 0;
	}
	if(HI_SUCCESS == HI_DRV_MMZ_Alloc(pName, NULL, u32LayerSize, align, &stBuffer))   
	{
	    addr = stBuffer.u32StartPhyAddr;
	}
	else
	{
	    addr = 0;
	}
	return addr;
	
}
HI_VOID *HI_MMB_Map(HI_U32 u32PhyAddr)
{    

	MMZ_BUFFER_S stBuffer;

	stBuffer.u32StartPhyAddr = u32PhyAddr;
	if(HI_SUCCESS == HI_DRV_MMZ_Map(&stBuffer))
	 {
	     return ((unsigned char *)stBuffer.u32StartVirAddr);
	 }
	 else
	 {
	     return HI_NULL;
	 }
}

HI_VOID *HI_MMB_MapCached(HI_U32 u32PhyAddr)
{   

	MMZ_BUFFER_S stBuffer;
	stBuffer.u32StartPhyAddr = u32PhyAddr;
	if(HI_SUCCESS == HI_DRV_MMZ_MapCache(&stBuffer))
	{
	    return ((unsigned char *)stBuffer.u32StartVirAddr);
	}
	else
	{
	    return HI_NULL;
	}
}
HI_S32 HI_MMB_Unmap(HI_VOID *pViraddr)
{

	MMZ_BUFFER_S stBuffer;
	stBuffer.u32StartVirAddr = (HI_U32)pViraddr;
	HI_DRV_MMZ_Unmap(&stBuffer);

	return HI_SUCCESS;
	
}
HI_VOID HI_MMB_FreeMem(HI_U32 u32Phyaddr)
{
	MMZ_BUFFER_S stBuffer;
	stBuffer.u32StartPhyAddr = u32Phyaddr;
	HI_DRV_MMZ_Release(&stBuffer);
}

#if 0
HI_S32 HI_MMB_Flush(MMZ_BUFFER_S *psMBuf)
{

	HI_S32 s32Ret = HI_SUCCESS;
	s32Ret = HI_DRV_MMZ_Flush(psMBuf);

	return s32Ret;
}
#endif
