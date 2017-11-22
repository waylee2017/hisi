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

#ifndef __MPI_MEM_H__
#define __MPI_MEM_H__

#include "hi_type.h"
#include "hi_common.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */



/******************************* MPI declaration *****************************/

/*malloc memory for mmz and map to user-state address, bufname and bufsize used to input,
	physic address and user-state used to output*/
/*CNcomment: 申请mmz内存，并映射用户态地址,bufname和bufsize作为输入, 物理地址和用户态虚拟地址作为输出 */
HI_S32 HI_MPI_MMZ_Malloc(HI_MMZ_BUF_S *pstBuf);

/*free user-state map, release mmz memory, make sure that physic address, user-state address and lengh is right*/
/*CNcomment: 解除用户态地址的映射，并释放mmz内存,保证传入的物理地址、用户态虚拟地址和长度正确*/
HI_S32 HI_MPI_MMZ_Free(HI_MMZ_BUF_S *pstBuf);

/*malloc mmz memory for appointed mmz name, return physic address*/
/*CNcomment: 指定mmz的名字申请mmz内存，返回物理地址*/
HI_VOID *HI_MPI_MMZ_New(HI_U32 u32Size , HI_U32 u32Align, HI_CHAR *ps8MMZName, HI_CHAR *ps8MMBName);

/*CNcomment: 释放mmz内存 */
HI_S32 HI_MPI_MMZ_Delete(HI_U32 u32PhysAddr);

/*get physic address accordint to virtual address*/
/**CNcomment:  根据虚拟地址，获取对应的物理地址 */
HI_S32 HI_MPI_MMZ_GetPhyAddr(HI_VOID *pRefAddr, HI_U32 *pu32PhyAddr, HI_U32 *pu32Size);

/*map physic address of mmz memory to user-state virtual address, can appoint whether cached*/
/**CNcomment:  将mmz申请的物理地址映射成用户态虚拟地址，可以指定是否cached*/
HI_VOID *HI_MPI_MMZ_Map(HI_U32 u32PhysAddr, HI_U32 u32Cached);

/*unmap user-state address of mmz memory*/
/**CNcomment:  解除mmz内存用户态地址的映射 */
HI_S32 HI_MPI_MMZ_Unmap(HI_U32 u32PhysAddr);

/*for cached memory, flush cache to memory*/
/**CNcomment:  对于cached内存，刷Dcache到内存 */
HI_S32 HI_MPI_MMZ_Flush(HI_U32 u32PhysAddr);

#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /* __MPI_MEM_H__ */
