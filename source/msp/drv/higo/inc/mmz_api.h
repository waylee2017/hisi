/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : mmz_api.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _MMZ_API_H_
#define _MMZ_API_H_


/*********************************add include here******************************/
#include "hi_type.h"

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
HI_U32 HI_MMB_New(HI_CHAR *pName, HI_CHAR* pZoneName,HI_U32 align, HI_U32 u32LayerSize);
HI_VOID *HI_MMB_Map(HI_U32 u32PhyAddr);
HI_S32 HI_MMB_Unmap(HI_VOID *pViraddr);
HI_VOID *HI_MMB_MapCached(HI_U32 u32PhyAddr);
HI_VOID HI_MMB_FreeMem(HI_U32 u32Phyaddr);
#if 0
HI_S32 HI_MMB_Flush(MMZ_BUFFER_S *psMBuf);
#endif



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _MMZ_API_H_ */
