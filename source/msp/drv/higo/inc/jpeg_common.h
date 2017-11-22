/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_common.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_COMMON_H_
#define _JPEG_COMMON_H_


#ifndef  JPG_OS_BOOT
#define JPG_OS_BOOT
#endif


/*********************************add include here******************************/
#include <linux/errno.h>
#include <linux/stddef.h>
#include <linux/slab.h>
#include <linux/module.h>
#include <linux/string.h>
#include <linux/relay.h>
#include <linux/vmalloc.h>
#include <linux/mm.h>
#include <linux/cpu.h>
#include <linux/splice.h>
#include "mmz_api.h"

#include "hi_type.h"
#include "hi_debug.h"
#include "jpeg_errcode.h"
#include "jpeg_type.h"
#include "higo_adp_sys.h"


/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
#define VCOS_memset         memset
#define VCOS_memcpy         memcpy


#define DEFAULT_HANDLE     0x7FFFFFF1  
#define INVALID_HANDLE     0x0         

#define assert(x)

#define NULLPTR_CHECK(Ptr) \
do{\
    if(HI_NULL == Ptr)\
    {\
        return HI_ERR_JPG_PTR_NULL;\
    }\
}while(0)



#define JPG_CHECK_HANDLE(x)         \
do                                              \
{                                               \
    if (NULL == (x))    \
    {                                                       \
        return  HI_ERR_JPG_INVALID_HANDLE;\
    }                                           \
}while(0)

#define JPG_CHECK_NULLPTR(p)            \
do                                                  \
{                                               \
    if (NULL == (p))                \
    {                                               \
        return HI_ERR_JPG_PTR_NULL; \
    }                                           \
}while(0);

#define JPG_CHECK_ENUM(Par, Butt)           \
do                                                  \
{                                               \
    if ((Butt) <= (Par))                   \
    {                                               \
        return HI_ERR_JPG_INVALID_PARA;          \
    }                                           \
}while(0);

#define JPG_CHECK_LEN(Len)          \
do                                                  \
{                                               \
    if (0 == (Len))                    \
    {                                               \
        return HI_ERR_JPG_INVALID_PARA;          \
    }                                           \
}while(0);


#define JPG_ASSERT_HANDLE(x)            \
do                                                  \
{                                                 \
    assert(NULL != (x));                         \
}while(0)

#define JPG_ASSERT_NULLPTR(x)            \
do                                                  \
{                                                 \
    assert(NULL != (x));                         \
}while(0)


/*************************** Structure Definition ****************************/

/*FMW mem management*/
/*CNcomment:FMW ÄÚ´æ¹ÜÀí*/
typedef struct hiJPG_MEM_S
{
    HI_VOID* 	pVirtAddr;
    HI_U32 	    PhysAddr;
    HI_U32     	Total;
    HI_U32 	    Offset;
} JPG_MEM_S;

typedef struct hiJPGDEC_CTRL_S
{
 	JPG_MEM_S s_DecMem;
	JPG_MEM_S s_ParseMem;
	JPG_MEM_S s_HDecMem;
	JPG_MEM_S s_SDecMem;
	JPG_MEM_S s_ExifMem;
	JPG_MEM_S s_Jpg6bMem;
}JPGDEC_CTRL_S;

/********************** Global Variable declaration **************************/

extern JPGDEC_CTRL_S s_DecCtrlMem;

/******************************* API declaration *****************************/
static inline HI_VOID*  JPGFMW_Alloc(JPG_MEM_S* pstMem, HI_U32 Size);
static inline HI_VOID JPGFMW_Free(JPG_MEM_S* pstMem);


/******************************* API releation *****************************/
static inline HI_VOID*  JPGFMW_Alloc(JPG_MEM_S* pstMem, HI_U32 Size)
{
	HI_U32  PhysAddr = 0;
	HI_VOID* pVirtAddr = NULL;

	if( pstMem->pVirtAddr != NULL && pstMem->Total != 0 )
	{
	   if( pstMem->Total >= Size )
	   {
	        pstMem->Offset = 0;
	        return pstMem->pVirtAddr;
	   }
	   else
	   {
	       JPGFMW_Free( pstMem );
	   }
	}

	PhysAddr = HI_MMB_New("JPEG-HDEC",NULL,64,Size);
	if(0 == PhysAddr)
	{
		return HI_NULL;
	}

	pVirtAddr = (HI_VOID*)HI_MMB_Map(PhysAddr);
	if(HI_NULL == pVirtAddr)
    {
		HI_MMB_FreeMem(PhysAddr);
		return HI_NULL;
	}

	pstMem->pVirtAddr = pVirtAddr;
	pstMem->PhysAddr = PhysAddr;
	pstMem->Total    = Size;
	pstMem->Offset   = 0;
	VCOS_memset(pstMem->pVirtAddr, 0, Size);
	
	return pVirtAddr;
	
}

static inline HI_VOID JPGFMW_Free(JPG_MEM_S* pstMem)
{
	HI_U32  PhysAddr = pstMem->PhysAddr;

	if( pstMem->pVirtAddr != NULL && pstMem->Total != 0 )
	{
	 	HI_MMB_Unmap(pstMem->pVirtAddr);
		HI_MMB_FreeMem(PhysAddr);
		VCOS_memset(pstMem, 0, sizeof(JPG_MEM_S));
	}
}

static inline HI_VOID JPGFMW_MemReset(JPG_MEM_S* pstMem, HI_U32  RsvSize)
{
	pstMem->Offset = RsvSize;
	VCOS_memset((HI_U8*)pstMem->pVirtAddr + pstMem->Offset,0, pstMem->Total - pstMem->Offset);
}

static inline HI_VOID* JPGFMW_MemGet(JPG_MEM_S* pstMem, HI_U32  Size)
{
  	  HI_VOID* pVirtAddr = NULL;
      HI_U32   Offset;

      Size = (Size + 3) & (~3);  

      Offset = pstMem->Offset + Size;
      if(Offset > pstMem->Total)
      {
           pVirtAddr = NULL;
      }
      else
      {
          pVirtAddr = (HI_U8*)pstMem->pVirtAddr + pstMem->Offset;
	      pstMem->Offset = Offset;

      }

	  return pVirtAddr;
	  
}


#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_COMMON_H_ */
