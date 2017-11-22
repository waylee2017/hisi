/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_hdec.c
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
#include <linux/kernel.h>
#include <linux/version.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/errno.h>
#include <linux/fcntl.h>
#include <linux/mm.h>
#include <linux/mman.h>
#include <linux/miscdevice.h>
#include <linux/proc_fs.h>
#include <linux/device.h>
#include <linux/fs.h>
#include <linux/slab.h>
#include <linux/init.h>
#include <linux/delay.h>
#include <asm/uaccess.h>
#include <mach/hardware.h>
#include <asm/io.h>
#include <asm/system.h>
#include <linux/interrupt.h>
#include <linux/ioport.h>
#include <linux/spinlock.h>
#include <linux/vmalloc.h>
#include <linux/string.h>
#include <linux/list.h>
#include <asm/cacheflush.h>
#include <linux/time.h>
#if (LINUX_VERSION_CODE < KERNEL_VERSION(2, 6, 36))
#include <linux/smp_lock.h>
#endif

#include "jpeg_common.h"
#include "jpeg_decctrl.h"
#include "jpeg_handle.h"
#include "jpeg_buf.h"
#include "jpeg_parse.h"
#include "jpeg_driver.h"
#include "jpeg_hsdec.h"
#include "jpeg_hdec.h"
#include "higo_memory.h"


#include "jpeg_type.h"
#include "drv_jpeg_ext.h" /** 通过函数注册获取函数指针 **/
#include "hi_module.h"
#include "hi_drv_module.h"
#include "hi_jpeg_reg.h"

/*****************************************************************************/


/***************************** Macro Definition ******************************/
#define JPG_HDEC_BUFLEN         (128<<10) * 2

#define JPG_SWAP(a, b) \
do { \
    a = a + b; \
    b = a - b; \
    a = a - b; \
}while(0)


#define  JPGHDEC_WRITE_REG(baseaddr, offset, value) \
{\
    (*(volatile HI_U32 *)((HI_U32)(baseaddr) + (offset)) = (value));\
}

#define GET_PA(V,P,va)  (((HI_U32)(va) - (HI_U32)(V)) + (P))


/*************************** Structure Definition ****************************/

typedef union hiJPG_START_U
{
    struct
    {
        HI_U32  Start     : 1;
        HI_U32  Reserve   : 31;
    }struBits;

    HI_U32  All;    
}JPG_START_U;

typedef union hiJPG_RESUME_U
{
    struct
    {
        HI_U32  Start     : 1;
        HI_U32  LastFlag  : 1; 
        HI_U32  Reserve   : 30;
    }struBits;

    HI_U32  All;    
}JPG_RESUME_U;

typedef union hiJPG_RESET_U
{
    struct
    {
        HI_U32  Reset     : 1;
        HI_U32  Reserve   : 31;
    }struBits;

    HI_U32  All;
}JPG_RESET_U;

typedef union hiJPG_STRIDE_U
{
    struct
    {
        HI_U32  Reserve0   : 6;
        HI_U32  YStride    : 10;
        HI_U32  Reserve1   : 6;
        HI_U32  UVStride   : 10;
    }struBits;

    HI_U32  All;
}JPG_STRIDE_U;

typedef union hiJPG_PICSIZE_U
{
    struct
    {
        HI_U32  MCUWidth   : 10;
        HI_U32  Reserve0   : 6;
        HI_U32  MCUHeight  : 10;
        HI_U32  Reserve1   : 6;
    }struBits;

    HI_U32  All;
}JPG_PICSIZE_U;

typedef union hiJPG_PICTYPE_U
{
    struct
    {
        HI_U32  PicType    : 3;
        HI_U32  Reserve0   : 5;
        HI_U32  PicStr     : 1;
        HI_U32  Reserve1   : 23;
    }struBits;

    HI_U32  All;
}JPG_PICTYPE_U;

typedef union hiJPG_STADDR_U
{
    struct
    {
        HI_U32  Reserve0   : 6;
        HI_U32  StAddr     : 23;
        HI_U32  Reserve1   : 3;
    }struBits;

    HI_U32  All;
}JPG_STADDR_U;

typedef union hiJPG_ENDADDR_U
{
    struct
    {
        HI_U32  Reserve0   : 6;
        HI_U32  EndAddr    : 23;
        HI_U32  Reserve1   : 3;
    }struBits;

    HI_U32  All;
}JPG_ENDADDR_U;

typedef union hiJPG_STADD_U
{
    struct
    {
        HI_U32  StAdd     : 29;
        HI_U32  Reserve   : 3;
    }struBits;

    HI_U32  All;    
}JPG_STADD_U;

typedef union hiJPG_ENDADD_U
{
    struct
    {
        HI_U32  EndAdd    : 29;
        HI_U32  Reserve   : 3;
    }struBits;

    HI_U32  All;
}JPG_ENDADD_U;

typedef union hiJPG_YSTADDR_U
{
    struct
    {
        HI_U32  Reserve0  : 6;
        HI_U32  YStaddr   : 23;
        HI_U32  Reserve1  : 3;
    }struBits;

    HI_U32  All;
}JPG_YSTADDR_U;

typedef union hiJPG_UVSTADDR_U
{
    struct
    {
        HI_U32  Reserve0   : 6;
        HI_U32  UVStaddr   : 23;
        HI_U32  Reserve1   : 3;
    }struBits;

    HI_U32  All;
}JPG_UVSTADDR_U;

typedef union hiJPG_SCALE_U
{
    struct
    {
        HI_U32  Scale        : 2;
		HI_U32  Reserve0     : 2;
		HI_U32  Outstanding  : 4;
        HI_U32  Reserve      : 24;
    }struBits;

    HI_U32  All;
}JPG_SCALE_U;

typedef union hiJPG_INTMASK_U
{
    struct
    {
        HI_U32  Fnsh     : 1;
        HI_U32  Err      : 1;
        HI_U32  Res      : 1;
        HI_U32  Reserve  : 29;
    }struBits;

    HI_U32  All;
}JPG_INTMASK_U;


/********************** Global Variable declaration **************************/

static HI_U8  DC_codelen[2][13];
static HI_U16 DC_codeword[2][13];
static HI_U8  DC_category[2][12];
static HI_U8  AC_RunSize[2][256];
static HI_U8  AC_Mincode[2][16];
static HI_S8  AC_BaseOffset[2][16]; 

/******************************* API declaration *****************************/


/***************************************************************************************
* func          : JpgHDecAssembleQTbl
* description   : CNcomment: DQT CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID JpgHDecAssembleQTbl(HI_VOID *pRegVirPtr,JPG_QUANT_TBL * const pQTbl[])
{
    HI_U16 *pQY, *pQCb, *pQCr;
    HI_U32 Cnt;
    HI_VOID *pDstPtr = (HI_U8*)pRegVirPtr + JPGD_REG_QUANT;
    HI_U32 *pOutput = (HI_U32 *)pDstPtr;
    
    pQY = (HI_U16*)pQTbl[0]->Quantval;

    if (HI_NULL != pQTbl[1])
    {
        pQCb = (HI_U16 *)pQTbl[1]->Quantval;
        if (HI_NULL != pQTbl[2])
        {
            pQCr = (HI_U16*)pQTbl[2]->Quantval;
        }
        else
        {
            pQCr = (HI_U16 *)pQTbl[1]->Quantval;
        }
    }
    else
    {
        pQCb = (HI_U16*)pQTbl[0]->Quantval;
        pQCr = (HI_U16*)pQTbl[0]->Quantval;
    }

    for(Cnt = 0; Cnt < 64; Cnt++)                
    {  
        *pOutput++ = (HI_U32)(((HI_U32)((*pQCr & 0xFF) << 16))
                              |((HI_U32)((*pQCb & 0xFF) << 8))
                              |((HI_U32)(*pQY & 0xFF)));   
        pQCb++;
        pQCr++;
        pQY++;
    }
    
    return;
}


/***************************************************************************************
* func          : JpgHDecMakeDcHuffTbl
* description   : CNcomment: HTB CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 JpgHDecMakeDcHuffTbl (const JPG_HUFF_TBL *pHTbl, HI_U32 Tblno)
{
    HI_U32  NumSymbols, Code, NumP, NumL, NumI, Si;
    
    if ((2 <= Tblno) || (pHTbl == HI_NULL))
    {
        return HI_FAILURE;
    }
    
    VCOS_memset(DC_codelen[Tblno], 0, sizeof(DC_codelen[Tblno]));
    VCOS_memset(DC_codeword[Tblno], 0, sizeof(DC_codeword[Tblno]));
    
    NumP = 0;
    for (NumL = 1; NumL <= 12; NumL++)
    {
        NumI = pHTbl->Bits[NumL];
    
        if (NumP + NumI > 12)
        {
            return HI_FAILURE;
        }
        while (NumI--)
        {
          DC_codelen[Tblno][NumP++] = (HI_U8) NumL;
        }
    }
    
    DC_codelen[Tblno][NumP] = 0;
    NumSymbols = NumP;
    
    Code = 0;
    Si = DC_codelen[Tblno][0];
    NumP = 0;
    while (DC_codelen[Tblno][NumP]) 
    {
        while (DC_codelen[Tblno][NumP] == Si) 
        {
          DC_codeword[Tblno][NumP++] = (HI_U16)Code;
          Code++;
        }
        
        if (((HI_S32) Code) >= (((HI_S32) 1) << Si))
        {
            return HI_FAILURE;
        }
        
        Code <<= 1;
        Si++;
    }
    
    VCOS_memset(DC_category[Tblno], 0xFF, sizeof(DC_category[Tblno]));
    VCOS_memcpy(DC_category[Tblno], pHTbl->HuffVal, pHTbl->HuffValLen);
    
    for (NumI = 0; NumI < NumSymbols; NumI++) 
    {
        HI_U8 Sym = pHTbl->HuffVal[NumI];
        if (15 < Sym)
        {
            return HI_FAILURE;
        }
    }
    
    return HI_SUCCESS;
}

/***************************************************************************************
* func          : JpgHDecMakeAcHuffTbl
* description   : CNcomment: 解码哈夫曼表 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 JpgHDecMakeAcHuffTbl (const JPG_HUFF_TBL *pHTbl, HI_U32 Tblno)
{
    HI_CHAR HuffSize[257] = {0};
    HI_U32  *HuffCode     = NULL;
    HI_U32  MaxCodeLen = 0;
    HI_U32  NumP, NumI, NumJ, Si, NumSymbols, Code;
    HI_S32  NumL;
    if ((2 <= Tblno) || (pHTbl == HI_NULL))
    {
        return HI_FAILURE;
    }
	HuffCode = HIGO_Malloc(sizeof(HI_U32) * 257);
	if(NULL == HuffCode)
	{
		return HI_FAILURE;
	}
		
    NumP = 0;
    for (NumL = 1; NumL <= 16; NumL++)
    {
        NumI = (HI_U32) pHTbl->Bits[NumL];
    
        if (NumP + NumI > 256)  
        {
        	HIGO_Free(HuffCode);
            return HI_FAILURE;
        }
        
        while (NumI--)
        {
          HuffSize[NumP++] = (HI_CHAR) NumL;
        }
    }
    
    HuffSize[NumP] = 0;
    NumSymbols = NumP;
    
    Code = 0;
    Si = (HI_U32)((HI_U8)HuffSize[0]);
    NumP = 0;
    while (HuffSize[NumP]) 
    {
        while (((HI_U32)((HI_U8)HuffSize[NumP])) == Si) 
        {
          	HuffCode[NumP++] = Code;
          	Code++;
        }
        if (((HI_S32) Code) >= (((HI_S32) 1) << Si))
        {
        	HIGO_Free(HuffCode);
            return HI_FAILURE;
        }
        
        Code <<= 1;
        Si++;
    }
    
    for (NumL = 15; NumL >= 0; NumL--)
    {
        if (0 != pHTbl->Bits[NumL + 1])
        {
            MaxCodeLen = (HI_U32)NumL;
            break;
        }
    }
    
    NumP = 0;
    for (NumL = 0; NumL <= (HI_S32)MaxCodeLen; NumL++) 
    {
        if (pHTbl->Bits[NumL + 1]) 
        {
            AC_Mincode[Tblno][NumL] = (HI_U8)HuffCode[NumP];
            AC_BaseOffset[Tblno][NumL] = (HI_S8)((HI_S32) NumP - (HI_S32) HuffCode[NumP]);
            NumP += pHTbl->Bits[NumL + 1];
        } 
        else 
        {
            NumJ = (HI_U32)NumL + 1;
            while((NumJ <= MaxCodeLen) && (pHTbl->Bits[NumJ + 1] == 0))
            {
                NumJ++;
            } 
            
            AC_Mincode[Tblno][NumL] = (HI_U8)(HuffCode[NumP] >> (NumJ - (HI_U32)NumL));
            AC_BaseOffset[Tblno][NumL] = 0;
        }
    }
    
    for (NumL = (HI_S32)MaxCodeLen + 1; NumL < 16; NumL++)
    {
        AC_Mincode[Tblno][NumL] = 0xff;
        AC_BaseOffset[Tblno][NumL] = 0;
    }
    
    VCOS_memset(AC_RunSize[Tblno], 0, sizeof (AC_RunSize[Tblno]));
    VCOS_memcpy(AC_RunSize[Tblno], pHTbl->HuffVal, NumSymbols);

	HIGO_Free(HuffCode);
	
    return HI_SUCCESS;
	
}


/***************************************************************************************
* func          : JpgHDecBuildHTbl
* description   : CNcomment: 建立哈夫曼表 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_S32 JpgHDecBuildHTbl(JPG_HUFF_TBL * const pDcHuffTbl[],JPG_HUFF_TBL * const pAcHuffTbl[])
{
    HI_U32 Cnt;
    HI_S32 Ret;
    
    for (Cnt = 0; Cnt < 4; Cnt++)
    {
        if (pDcHuffTbl[Cnt])
        {
            Ret = JpgHDecMakeDcHuffTbl(pDcHuffTbl[Cnt], Cnt);
            if (HI_FAILURE == Ret)
            {
                return HI_FAILURE;
            }
        }
        else 
        {
            break;
        }
    }
    
    for (Cnt = 0; Cnt < 4; Cnt++)
    {
        if (pAcHuffTbl[Cnt])
        {
            Ret = JpgHDecMakeAcHuffTbl(pAcHuffTbl[Cnt], Cnt);
            if (HI_FAILURE == Ret)
            {
                return HI_FAILURE;
            }
        }
        else 
        {
            break;
        }
    }
    return HI_SUCCESS;    
}

/***************************************************************************************
* func          : JPEGHDECCateGorySort
* description   : CNcomment:CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
static HI_VOID JPEGHDECCateGorySort(HI_U32 Index)
{
    HI_S32 Cnt1, Cnt2;
    HI_BOOL ExChange = HI_TRUE;

    for (Cnt1 = 0; Cnt1 < 11; Cnt1++)
    {
        ExChange = HI_FALSE;
        for (Cnt2 = 10; Cnt2 >= Cnt1; Cnt2--)
        {
            if (DC_category[Index][Cnt2 + 1] < DC_category[Index][Cnt2])
            {
                JPG_SWAP(DC_category[Index][Cnt2 + 1], DC_category[Index][Cnt2]);
                JPG_SWAP(DC_codeword[Index][Cnt2 + 1], DC_codeword[Index][Cnt2]);
                JPG_SWAP(DC_codelen[Index][Cnt2 + 1], DC_codelen[Index][Cnt2]);
                ExChange = HI_TRUE;
            }
        }
        if (HI_FALSE == ExChange)
        {
            return;
        }
    }
    return;    
}

/*******************************************************************************
 * Function:        JpgHDecAssembleHTbl
 * Description:    
 * Data Accessed:
 * Data Updated:
 * Input:           pRegVirPtr
 *                  pDcHuffTbl   
 *                  pAcHuffTbl   
 * Output:       
 * Return:         
 * Others:
*******************************************************************************/
static HI_S32 JpgHDecAssembleHTbl(HI_VOID *pRegVirPtr, 
     JPG_HUFF_TBL *  pDcHuffTbl[], JPG_HUFF_TBL * pAcHuffTbl[])
{
    HI_U16 *pu16DCCodeWord0, *pu16DCCodeWord1;
    HI_U8 *pu8DCCategory0, *pu8DCCategory1;
    HI_U8 *pu8DCCodeLen0,  *pu8DCCodeLen1;
    HI_U8 *pu8ACMinCode0, *pu8ACMinCode1;
    HI_U8 *pu8ACBaseMem0, *pu8ACBaseMem1;
    HI_U8 *pu8ACRunSize0,  *pu8ACRunSize1;
    HI_U32 u32Cnt;
    HI_U32 *pDstAddr; 
    HI_S32 Ret;

    /* AI7D2539 */
    if (HI_NULL == pDcHuffTbl[1])
    {
        pDcHuffTbl[1] = pDcHuffTbl[0];
    }

    if (HI_NULL == pAcHuffTbl[1])
    {
        pAcHuffTbl[1] = pAcHuffTbl[0];
    }
    
    Ret = JpgHDecBuildHTbl((JPG_HUFF_TBL **)pDcHuffTbl, 
                           (JPG_HUFF_TBL **)pAcHuffTbl);
    if (HI_FAILURE == Ret)
    {
        return HI_FAILURE;
    }
    
    
    JPEGHDECCateGorySort(0);
    JPEGHDECCateGorySort(1);    
    
    pu16DCCodeWord0 = *(DC_codeword + 0);
    pu16DCCodeWord1 = *(DC_codeword + 1);
    pu8DCCategory0 = *(DC_category + 0);
    pu8DCCategory1 = *(DC_category + 1);
    pu8DCCodeLen0 = *(DC_codelen + 0);
    pu8DCCodeLen1 = *(DC_codelen + 1);
    
    pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + JPGD_REG_HDCTABLE);
    
    for(u32Cnt = 0; u32Cnt < 12; u32Cnt++)            
    {        
        *(pDstAddr + u32Cnt) = 0XFFFF;
    }
    
    u32Cnt = 0;
    while ((0xFF != *pu8DCCategory0) && (u32Cnt < 12))
    {
        
        *(pDstAddr + *pu8DCCategory0) = (*(pDstAddr + *pu8DCCategory0) & (~0xFFF))
            | (((*(pu8DCCodeLen0 + u32Cnt)) & 0xf) << 8) 
               | ((HI_U32)(*(pu16DCCodeWord0 + u32Cnt)) & 0xff);
        pu8DCCategory0++;
        u32Cnt++;
    }

    u32Cnt = 0;
    while ((0xFF != *pu8DCCategory1) && (u32Cnt < 12))
    {
        *(pDstAddr + *pu8DCCategory1) = (*(pDstAddr + *pu8DCCategory1) & (~0xFFF000))
            | ((((*(pu8DCCodeLen1 + u32Cnt)) & 0xf) << 20)
                 | (((HI_U32)(*(pu16DCCodeWord1 + u32Cnt)) & 0xff) << 12));
        pu8DCCategory1++;
        u32Cnt++;
    }

    
    pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + JPGD_REG_HACMINTABLE);
    pu8ACMinCode0 = *(AC_Mincode + 0);
    pu8ACMinCode1 = *(AC_Mincode + 1);                       
    for(u32Cnt = 0; u32Cnt < 8; u32Cnt++)        
    {
        *pDstAddr++ = (HI_U32)(((HI_U32)(*(pu8ACMinCode1 + 1)) << 24)
                                  |((HI_U32)(*(pu8ACMinCode1)) << 16)
                                  |((HI_U32)(*(pu8ACMinCode0 + 1)) << 8)
                                  |(HI_U32)(*pu8ACMinCode0));
        pu8ACMinCode1 += 2;
        pu8ACMinCode0 += 2;
    }
    
    pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + JPGD_REG_HACBASETABLE);
    pu8ACBaseMem0 = (HI_U8 *)(*(AC_BaseOffset + 0));
    pu8ACBaseMem1 = (HI_U8 *)(*(AC_BaseOffset + 1));
    for(u32Cnt = 0; u32Cnt < 8; u32Cnt++)        
    {
        *pDstAddr = (HI_U32)(((HI_U32)*pu8ACBaseMem0++) 
                      | (((HI_U32)*pu8ACBaseMem1++) << 16));
        *pDstAddr |= (HI_U32)((((HI_U32)*pu8ACBaseMem0++) << 8)
                      | (((HI_U32)*pu8ACBaseMem1++) << 24));
        pDstAddr++;
                      
    }
    
    pDstAddr = (HI_U32 *)((HI_U32)pRegVirPtr + JPGD_REG_HACSYMTABLE);
    pu8ACRunSize0 = *(AC_RunSize + 0);
    pu8ACRunSize1 = *(AC_RunSize + 1);              
    for(u32Cnt = 0; u32Cnt < 256; u32Cnt++)
    {
        *pDstAddr++ = (HI_U32)((((HI_U32)*pu8ACRunSize1++) << 8)
                               |((HI_U32)*pu8ACRunSize0++))&0xffff;
    }   
    return HI_SUCCESS;
}
/***************************************************************************************
* func          : JPGHDEC_CreateInstance
* description   : CNcomment: 获取硬件解码器实例 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGHDEC_CreateInstance(JPG_HANDLE *pHandle, HI_U32 u32FileLen)
{
    JPGHD_CTX_S* pHDecCtx = HI_NULL;
    HI_U32 u32BufLen;
    HI_U32   PhysAddr = 0;
    HI_VOID*   pVirtAddr = NULL;
    JPG_HANDLE  HDecHandle;
    HI_VOID *pRegAddr = HI_NULL;
    HI_S32 Ret = HI_FAILURE;
    
    HI_VOID *pRstRegAddr = HI_NULL;
    HI_VOID *pVhbRegAddr = HI_NULL;
	
    JPG_ASSERT_NULLPTR(pHandle);
    
     Ret = JPGDRV_GetRegisterAddr(&pRegAddr , &pRstRegAddr, &pVhbRegAddr);
    if (HI_SUCCESS != Ret)
    {
        Ret = (HI_ERR_JPG_DEC_BUSY == Ret) ? Ret : HI_FAILURE;
        goto LABEL0;
    }

    u32BufLen = JPG_ALIGN2MUL(u32FileLen, JPG_ALIGN_LEN);
    u32BufLen = JPG_HDEC_BUFLEN;

    PhysAddr = HI_MMB_New("JPEG-HDEC",NULL,JPG_ALIGN_LEN,u32BufLen);
    if (0 == PhysAddr)
    {
        Ret = HI_ERR_JPG_NO_MEM;
        goto LABEL0;
    }
    pVirtAddr = (HI_VOID*)HI_MMB_Map(PhysAddr);
    if (HI_NULL == pVirtAddr)
    {
        Ret = HI_ERR_JPG_NO_MEM;
        goto LABEL1;
    }
    pHDecCtx = (JPGHD_CTX_S*)JPGFMW_MemGet(&s_DecCtrlMem.s_HDecMem, sizeof(JPGHD_CTX_S));
    if(NULL == pHDecCtx)
    {
        Ret = HI_ERR_JPG_NO_MEM;
        goto LABEL2;
    }
    
    if(HI_SUCCESS != JPG_Handle_Alloc(&HDecHandle,  (HI_VOID*)pHDecCtx))
    {
        Ret = HI_ERR_JPG_NO_MEM;
        goto LABEL3;
    }
	
    VCOS_memset((HI_VOID *)pHDecCtx, 0x0, sizeof(JPGHD_CTX_S));
        
    pHDecCtx->RegOffset = (HI_U32)pRegAddr;
    pHDecCtx->pVirtAddr = pVirtAddr;
    pHDecCtx->PhysAddr  = PhysAddr; 
    pHDecCtx->bFirstStart = HI_TRUE;
    

    (HI_VOID)JPGBUF_Init(&pHDecCtx->HDecBuf, pVirtAddr,(u32BufLen -JPG_ALIGN_LEN), JPG_ALIGN_LEN);
    

    JPGHDEC_Reset(HDecHandle);
    *pHandle = HDecHandle;
	
    return HI_SUCCESS;
	
LABEL3:
	JPGFMW_MemReset(&s_DecCtrlMem.s_HDecMem, 0);
LABEL2:
       (HI_VOID)HI_MMB_Unmap(pVirtAddr);
LABEL1:
        (HI_VOID)HI_MMB_FreeMem(PhysAddr);
LABEL0:
        return Ret;
		
}

/*******************************************************************************
 * Function:        JPGHDEC_DestroyInstance
 * Description:     JPEG
 * Data Accessed:
 * Data Updated:
 * Input:           
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_DestroyInstance(JPG_HANDLE Handle)
{
    JPGHD_CTX_S *pHDecCtx = HI_NULL;
    HI_U32             PhysAddr;
	
    pHDecCtx = (JPGHD_CTX_S *)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pHDecCtx);
    
    JPGHDEC_Reset(Handle);

#ifndef WIN32    
    iounmap((HI_VOID*)pHDecCtx->RegOffset);
    PhysAddr = pHDecCtx->PhysAddr;
    (HI_VOID)HI_MMB_Unmap(pHDecCtx->pVirtAddr);
    (HI_VOID)HI_MMB_FreeMem(PhysAddr);  
#endif

    //VCOS_free(pHDecCtx);
    JPGFMW_MemReset(&s_DecCtrlMem.s_HDecMem, 0);
    JPG_Handle_Free(Handle);
    return;
}

/*******************************************************************************
 * Function:        JPGHDEC_FlushBuf
 * Description:     BUF
 * Data Accessed:
 * Data Updated:
 * Input:           
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_FlushBuf(JPG_HANDLE Handle)
{
    JPGHD_CTX_S*  pstHdCtx = NULL;
    
    pstHdCtx = (JPGHD_CTX_S*)JPG_Handle_GetInstance(Handle);
    if(NULL == pstHdCtx)
    {
        return;
    }
    JPG_ASSERT_HANDLE(pstHdCtx);
    
    JPGBUF_Reset(&pstHdCtx->HDecBuf);
    pstHdCtx->bEnd = HI_FALSE;
    
    return;
}

/*******************************************************************************
 * Function:        JPGHDEC_Reset
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_Reset(JPG_HANDLE Handle)
{
    JPGHD_CTX_S*  pstHdCtx = NULL;
    JPG_INTMASK_U IntMask;
    JPG_STADDR_U  BufStAddr;
    JPG_ENDADDR_U BufEndAddr;

    JPG_STADD_U  StrmStAddr;
    JPG_ENDADD_U StrmEndAddr;
	
	JPEG_EXPORT_FUNC_S	*pstJpegExportFuncs = NULL;

    pstHdCtx = (JPGHD_CTX_S*)JPG_Handle_GetInstance(Handle);
    if(NULL == pstHdCtx)
    {
        return;
    }
	
    JPG_ASSERT_HANDLE(pstHdCtx);
    IntMask.struBits.Fnsh = 1;
    IntMask.struBits.Err  = 1;
    IntMask.struBits.Res  = 1;

	HI_DRV_MODULE_GetFunction(HI_ID_JPGDEC, (HI_VOID**)&pstJpegExportFuncs);
	if(NULL == pstJpegExportFuncs)
	{
		return;
	}

    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_INT, IntMask.All);
    	
    BufStAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_STADDR, BufStAddr.All);

    BufEndAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_ENDADDR, BufEndAddr.All);

    StrmStAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_STADD, StrmStAddr.All);

    StrmEndAddr.All = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_ENDADD, StrmEndAddr.All);
    
    pstHdCtx->bFirstStart = HI_TRUE; 
    pstHdCtx->bEnd        = HI_FALSE;
    pstHdCtx->bForStart   = HI_FALSE;
    
    return;
	
}


/***************************************************************************************
* func          : JPGHDEC_Check
* description   : CNcomment: 判断硬件解码是否支持 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGHDEC_Check(JPG_HANDLE Handle, const JPGDEC_CHECKINFO_S *pCheckInfo)
{
    JPG_ASSERT_HANDLE(pCheckInfo);
    
    if (   (JPEG_QUANTBL_MAX_NUM < pCheckInfo->QuantTblNum)
        || (JPEG_EVERYHUFFTBL_MAX_NUM < pCheckInfo->AcHuffTblNum)
        || (JPEG_EVERYHUFFTBL_MAX_NUM < pCheckInfo->DcHuffTblNum)
        || (JPEG_MAX_WIDTH < pCheckInfo->Width)
        || (JPEG_MAX_HEIGHT < pCheckInfo->Height)
        || (JPEG_COMPONENT_NUM < pCheckInfo->ComponentNum)
        || (JPEG_PRECISE_VALUE != pCheckInfo->Precise)
        || (JPG_PICTYPE_BASELINE != pCheckInfo->Profile))
    {
        return HI_FAILURE;
    }
    
    return HI_SUCCESS;
}

/*******************************************************************************
 * Function:        JPGHDEC_SetDecodeInfo
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           pstruDecodeAttr 
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_S32 JPGHDEC_SetDecodeInfo(JPG_HANDLE Handle,
                             JPGDEC_DECODEATTR_S *pDecodeAttr)
{
    JPGHD_CTX_S *pstHdCtx;
    JPG_STRIDE_U   Stride;
    JPG_PICSIZE_U  PicSize;
    JPG_PICTYPE_U  PicType;
    JPG_YSTADDR_U  YStAddr;
    JPG_UVSTADDR_U UvStAddr;
    JPG_SCALE_U    Scale;
    HI_U32 WidthInMCU = 0;
    HI_U32 HeightInMCU = 0;
    HI_U32 YStride, UVStride;
    HI_U32 DstYPhyAddr;
    HI_U32 DstCbCrPhyAddr;
    
    JPG_SCALE_S   ScaleFactor = {JPG_SCALEDOWN_1, JPG_SCALEDOWN_1};
    JPG_SURFACE_S* pSurface;
    JPG_STADDR_U  BufStAddr;
    JPG_ENDADDR_U BufEndAddr;
    
    pstHdCtx = (JPGHD_CTX_S *)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pstHdCtx);
    JPG_ASSERT_NULLPTR(pDecodeAttr);
  
    {
        HI_U32 i;
		JPG_MBSURFACE_S* pMbSurface;

        pSurface = pDecodeAttr->pOutSurface;
        //ScaleFactor.HoriScale = pSurface->SurfaceInfo.MbSurface.Reserved;
		
		pMbSurface = &pSurface->SurfaceInfo.MbSurface;
		for(i = JPG_SCALEDOWN_1; i <= JPG_SCALEDOWN_8; i++ )
        {
            if(((pDecodeAttr->Width + (1 << i) - 1) >> i) == pMbSurface->YWidth)
            {
                break;
            }
        }

		ScaleFactor.HoriScale = i;
		ScaleFactor.VertScale = i;
		
    }
    
    
    
    switch (pDecodeAttr->EncFmt)
    {
        case JPGHAL_ENCFMT_400:
        case JPGHAL_ENCFMT_444:
            WidthInMCU  = (pDecodeAttr->Width  +  7) >> 3;
            HeightInMCU = (pDecodeAttr->Height +  7) >> 3;
            break;
        case JPGHAL_ENCFMT_420:
            WidthInMCU  = (pDecodeAttr->Width  + 15) >> 4;
            HeightInMCU = (pDecodeAttr->Height + 15) >> 4;
            break;
        case JPGHAL_ENCFMT_422_12:
            WidthInMCU  = (pDecodeAttr->Width  +  7) >> 3;
            HeightInMCU = (pDecodeAttr->Height + 15) >> 4;
            break;
        case JPGHAL_ENCFMT_422_21:
            WidthInMCU  = (pDecodeAttr->Width  + 15) >> 4;
            HeightInMCU = (pDecodeAttr->Height +  7) >> 3;
            break;
        default: 
            assert(0);
            break;
    }
    assert (JPG_OUTTYPE_MACROBLOCK == pSurface->OutType);
    
    {
        JPG_MBSURFACE_S* pMbSurface = &pSurface->SurfaceInfo.MbSurface;
        YStride = pMbSurface->YStride;
        UVStride = pMbSurface->CbCrStride;
        DstYPhyAddr = pMbSurface->YPhyAddr;
        DstCbCrPhyAddr = pMbSurface->CbCrPhyAddr;
    }

    BufStAddr.All = GET_PA(pstHdCtx->pVirtAddr, pstHdCtx->PhysAddr, pstHdCtx->HDecBuf.pBase);
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_STADDR, BufStAddr.All);

    BufEndAddr.All = BufStAddr.All + pstHdCtx->HDecBuf.u32BufLen;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_ENDADDR, BufEndAddr.All);
    
    YStAddr.struBits.YStaddr = DstYPhyAddr >> 6;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_YSTADDR, YStAddr.All);
    
    Stride.struBits.YStride = YStride >> 6;
    Stride.struBits.UVStride = UVStride >> 6;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_STRIDE, Stride.All);
    
    PicSize.All = 0;
    PicSize.struBits.MCUWidth = WidthInMCU;
    PicSize.struBits.MCUHeight = HeightInMCU;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_PICSIZE, PicSize.All);
    
    PicType.struBits.PicType =  (HI_U32)pDecodeAttr->EncFmt;
    PicType.struBits.PicStr = 0;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_PICTYPE, PicType.All);
    
    UvStAddr.struBits.UVStaddr = DstCbCrPhyAddr >> 6;
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_UVSTADDR, UvStAddr.All);

	Scale.struBits.Scale = ScaleFactor.HoriScale;
	Scale.struBits.Outstanding = 7;
	
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_SCALE, Scale.All);
    
    JpgHDecAssembleQTbl((HI_VOID*)pstHdCtx->RegOffset, pDecodeAttr->pQuanTbl);

    (HI_VOID)JpgHDecAssembleHTbl((HI_VOID*)pstHdCtx->RegOffset, 
                                (JPG_HUFF_TBL **)pDecodeAttr->pDcHuffTbl, 
                                (JPG_HUFF_TBL **)pDecodeAttr->pAcHuffTbl);
    return 0;
}



/*******************************************************************************
 * Function:        JPGHDEC_SendStream
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           pstruStreamInfo 
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_SendStream(JPG_HANDLE Handle, JPGDEC_WRITESTREAM_S* pStreamInfo)
{
    JPGHD_CTX_S*  pstHdCtx;
    HI_U32        FreeLen;
    
    HI_U32  u32MinLen;
    HI_BOOL bEOI = pStreamInfo->EndFlag;
    
    pstHdCtx = (JPGHD_CTX_S*)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pstHdCtx);
    JPG_ASSERT_NULLPTR(pStreamInfo);
    

    FreeLen = JPGBUF_GetFreeLen(&pstHdCtx->HDecBuf);
    if(0 == FreeLen) 
    {
    	pStreamInfo->CopyLen = 0;
		return ;
    }

    u32MinLen = (pStreamInfo->StreamLen < FreeLen) ? pStreamInfo->StreamLen : FreeLen;

    if(HI_TRUE == pStreamInfo->NeedCopyFlag)
    {
        (HI_VOID)JPGBUF_Write(&pstHdCtx->HDecBuf, pStreamInfo->pStreamAddr, u32MinLen);
    }
    else
    {
        JPGBUF_SetWrHead(&pstHdCtx->HDecBuf, pStreamInfo->StreamLen);
    }

    pstHdCtx->bEnd = HI_FALSE;
    if(bEOI && (u32MinLen == pStreamInfo->StreamLen))
    {
        pstHdCtx->bEnd = HI_TRUE;
    }
    pStreamInfo->CopyLen = u32MinLen;

    if(HI_TRUE == pstHdCtx->bForStart)
    {
        JPGHDEC_Start(Handle);        
    }
    
    return;
}

/*******************************************************************************
 * Function:        JPGHDEC_Start
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Output:          
 * Return:          HI_SUCCESS   
 *
 * Others:          
*******************************************************************************/
HI_S32 JPGHDEC_Start(JPG_HANDLE Handle)
{
    JPGHD_CTX_S*  pstHdCtx;
    JPGBUF_DATA_S  stRdInfo;
    
    JPG_STADD_U  StrmStAddr;
    JPG_ENDADD_U StrmEndAddr;
    JPG_START_U  DecStart;
    JPG_RESUME_U DecResume;
    HI_BOOL      bStrmEnd;
    
    HI_U32       Len;
    HI_VOID*     pAddrEnd;

    pstHdCtx = (JPGHD_CTX_S*)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pstHdCtx);

    (HI_VOID)JPGBUF_StepRdHead(&pstHdCtx->HDecBuf);
    

    (HI_VOID)JPGBUF_GetDataBtwRhRt(&pstHdCtx->HDecBuf, &stRdInfo);
    Len = stRdInfo.u32Len[0] + stRdInfo.u32Len[1];
    
    if(Len <= 64)  /*#define*/
    {
        if(HI_FALSE == pstHdCtx->bEnd) 
        {
            pstHdCtx->bForStart = HI_TRUE;
            return HI_SUCCESS;
        }

        Len = 64;           
    }

    if (HI_TRUE == pstHdCtx->bForStart)
    {
        pstHdCtx->bForStart = HI_FALSE;
    }
    
    if(Len <= stRdInfo.u32Len[0])    
    {
       pAddrEnd = (HI_U8*)stRdInfo.pAddr[0] + Len; 
    }
    else  
    {
       pAddrEnd = (HI_U8*)stRdInfo.pAddr[1] + (Len - stRdInfo.u32Len[0]);
    }
    StrmStAddr.All = 0;

    StrmStAddr.struBits.StAdd = GET_PA(pstHdCtx->pVirtAddr, pstHdCtx->PhysAddr, stRdInfo.pAddr[0]);
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_STADD, StrmStAddr.All);

    StrmEndAddr.All = 0;
    StrmEndAddr.struBits.EndAdd = GET_PA(pstHdCtx->pVirtAddr, pstHdCtx->PhysAddr, pAddrEnd);
    JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_ENDADD, StrmEndAddr.All);

    if (HI_TRUE == pstHdCtx->bEnd)   
    {
        JPG_RESUME_U Resume;
        Resume.All = 0;
        Resume.struBits.LastFlag = 1;
        JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_RESUME, Resume.All);
    }
    
    if(pstHdCtx->bFirstStart) 
    {  
        HI_U32 Tmp;
        pstHdCtx->bFirstStart   = HI_FALSE;
        DecStart.struBits.Start = 1;
        JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_START, 1);
        Tmp = *((HI_U32 *)(pstHdCtx->RegOffset + JPGD_REG_START));
    } 
    else  
    {
        bStrmEnd = (HI_BOOL)((pstHdCtx->bEnd) && (0 == stRdInfo.u32Len[1]));
        DecResume.struBits.LastFlag = bStrmEnd;
        DecResume.struBits.Start = 1;
        JPGHDEC_WRITE_REG(pstHdCtx->RegOffset, JPGD_REG_RESUME, DecResume.All);
    }
    
    return HI_SUCCESS;
}



/******************************************************************************
* Function:      JPGHDEC_Status
* Description:   
                 0
* Input:         Handle     
* Output:        pSize      
* Return:         
*                 
* Others:        
******************************************************************************/
HI_S32  JPGHDEC_Status(JPG_HANDLE Handle, HI_VOID **pBuf, HI_U32 *pBufLen,
                       JPG_HDSTATE_E* pHdState)
{
    JPGHD_CTX_S*    pstHdCtx;
    JPG_INTTYPE_E   IntType;
    HI_S32 Ret = HI_FAILURE;
    
    pstHdCtx = (JPGHD_CTX_S*)JPG_Handle_GetInstance(Handle);
    JPG_ASSERT_HANDLE(pstHdCtx);
    JPG_ASSERT_NULLPTR(pHdState);


    Ret = JPGDRV_GetIntStatus(&IntType, 0);  


    if (HI_ERR_JPG_DEV_NOOPEN == Ret)
    {
        IntType = JPG_INTTYPE_ERROR;
    }
    else  if ((HI_SUCCESS != Ret) || (JPG_INTTYPE_NONE == IntType))
    {
        JPGBUF_GetFreeInfo(&pstHdCtx->HDecBuf, pBuf, pBufLen);
        if (0 != *pBufLen)
        {
            *pHdState = JPG_HDSTATE_DECODING;
            return HI_SUCCESS;
        }
        else
        {
            Ret = JPGDRV_GetIntStatus(&IntType, 10);
            if (HI_SUCCESS != Ret)
            {
                IntType = JPG_INTTYPE_NONE;
            }
        }
    }

    switch (IntType)
    {
        case JPG_INTTYPE_ERROR:

            *pHdState = JPG_HDSTATE_DECODEERR;
            return HI_FAILURE;
            
        case JPG_INTTYPE_NONE:
            JPGBUF_GetFreeInfo(&pstHdCtx->HDecBuf, pBuf, pBufLen);
            *pHdState = JPG_HDSTATE_DECODING;
            return HI_SUCCESS;

        case JPG_INTTYPE_FINISH:
        {
            HI_S32 Ret = HI_SUCCESS;
            (HI_VOID)JPGBUF_StepRdTail(&pstHdCtx->HDecBuf);
            
            pstHdCtx->bFirstStart = HI_TRUE;
            pstHdCtx->bEnd        = HI_FALSE;
            pstHdCtx->bForStart   = HI_FALSE;

            if (HI_SUCCESS == Ret)
            {
                *pHdState = JPG_HDSTATE_DECODED;
            }
            else
            {
                *pHdState = JPG_HDSTATE_DECODEERR;
            }
            return HI_FAILURE;
        }
        
        case JPG_INTTYPE_CONTINUE:
        {   

            (HI_VOID)JPGBUF_StepRdTail(&pstHdCtx->HDecBuf);
            JPGBUF_GetFreeInfo(&pstHdCtx->HDecBuf, pBuf, pBufLen);
            *pHdState = JPG_HDSTATE_DECODING;

            JPGHDEC_Start(Handle);
 
            return HI_SUCCESS;
        }
        default:
            return HI_FAILURE;   
    }
     
}

/***************************************************************************************
* func          : JPGDEC_InitHW
* description   : CNcomment: 初始化硬件回调函数 CNend\n
* param[in]     : HI_VOID
* retval        : NA
* others:       : NA
***************************************************************************************/
HI_S32 JPGDEC_InitHW(JPG_DECODER_FUNC *pstruDecoder)
{
    pstruDecoder->JPGDEC_CreateInstance  = JPGHDEC_CreateInstance;
    pstruDecoder->JPGDEC_DestroyInstance = JPGHDEC_DestroyInstance;
    pstruDecoder->JPGDEC_FlushBuf        = JPGHDEC_FlushBuf;
    pstruDecoder->JPGDEC_Reset           =  JPGHDEC_Reset;
    pstruDecoder->JPGDEC_Check           = JPGHDEC_Check;
    pstruDecoder->JPGDEC_SetDecodeInfo   = JPGHDEC_SetDecodeInfo;
    pstruDecoder->JPGDEC_SendStream      = JPGHDEC_SendStream;
    pstruDecoder->JPGDEC_Start           = JPGHDEC_Start;
    pstruDecoder->JPGDEC_Status          = JPGHDEC_Status;

    return HI_SUCCESS;
}
