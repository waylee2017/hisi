//请参考《GX1001P软件包说明-V8.2.doc》
//Please refer to <GX1001 Software Developer Kit User's Manual_V8.2>
/*
Abbreviation
    GX		--	GUOXIN 
    IF		--	intermediate frequency
    RF		--  radiate frequency
    SNR		--	signal to noise ratio
    OSC		--	oscillate
    SPEC	--	spectrum
    FREQ	--	frequency
*/
#include <string.h>
#include <stdlib.h>
#include "ospctr.h"

//#define MEMCTR_MYSELF 1

typedef struct _memtest_list_
{
	MBT_CHAR *ptrData;
	MBT_VOID *pNext;
}MEMTTEST_LIST;


//#define OSPCTR_DEBUG(x)   MLMF_Print x
#define OSPCTR_DEBUG(x) 

#ifdef MEMCTR_MYSELF

#define APPCTR_MEMSIZE (0x028d9814)



typedef struct _sul_size_ctr_
{
    MBT_U32 u32NodeUsed;
    MBT_U32 u32CurNode;
    MBT_U32 u32StartAddr;
    MBT_U32 u32EndAddr;
}SUL_SIZECTR;

/*0x1A818 + 0x10*/
typedef struct _sul_mem_ctr_
{
    MBT_U32 u32CtrMemSize;
    MBT_U32 u32BaseAddr;
    MBT_U32 u32BlockTypeNum;
    MBT_U32 *pstu32BlockSize;
    MBT_U32 *pstu32BlockSizeNum;
    SUL_SIZECTR *ptrSizeCtr;
}SUL_MEMCTR;




static SUL_MEMCTR ospv_pstMenCtr = {0,0,0,0,0,MM_NULL};
static MET_Sem_T ospv_psemMemCtrAccess = MM_INVALID_HANDLE;
static MMT_STB_ErrorCode_E MemCtrSetup(MBT_U32 * pstu32Size, MBT_U32 * pstu32SizeNum, MBT_S32 iBlockTypeNum, MBT_S32 iAllocSize);

MBT_VOID *OSPMalloc(MBT_U32 uMenmSize)
{
    MBT_U32 ptr = 0;
    MBT_S32 j;
    MBT_S32 iBlockTypeNum;
    MBT_U32 iBlockSize;
    MBT_U32 *pstu32Size;
    MBT_U32 *pstu32SizeNum;
    SUL_SIZECTR *ptrSizeCtr;
    MBT_U8 *pu8CurNode;

    if(0 == uMenmSize ||MM_INVALID_HANDLE == ospv_psemMemCtrAccess)
    {
        return (MBT_VOID *)ptr;
    }
    //MLMF_Print("OSPMalloc %x\n",uMenmSize);
    
    MLMF_Sem_Wait(ospv_psemMemCtrAccess,MM_SYS_TIME_INIFIE);
    iBlockTypeNum = ospv_pstMenCtr.u32BlockTypeNum;
    pstu32Size = ospv_pstMenCtr.pstu32BlockSize;
    pstu32SizeNum = ospv_pstMenCtr.pstu32BlockSizeNum;
    ptrSizeCtr = ospv_pstMenCtr.ptrSizeCtr;
    for(j = 0;j < iBlockTypeNum;j++)
    {
        iBlockSize = pstu32Size[j];
        if(uMenmSize <= (iBlockSize-1)&&ptrSizeCtr[j].u32NodeUsed < pstu32SizeNum[j])
        {
            if(ptrSizeCtr[j].u32CurNode >= ptrSizeCtr[j].u32EndAddr)
            {
                for(pu8CurNode = (MBT_U8 *)(ptrSizeCtr[j].u32StartAddr + iBlockSize - 1);(MBT_U32)pu8CurNode < ptrSizeCtr[j].u32EndAddr ;pu8CurNode += iBlockSize)
                {
                    if(0 == (*pu8CurNode))
                    {
                        *pu8CurNode = 0xcc;
                        ptr = (MBT_U32)pu8CurNode + 1 - iBlockSize;
                        ptrSizeCtr[j].u32NodeUsed ++;
                        ptrSizeCtr[j].u32CurNode = (MBT_U32)(pu8CurNode + iBlockSize);
                        j = iBlockTypeNum;
                        break;
                    }
                }
            }
            else
            {
                for(pu8CurNode = (MBT_U8 *)ptrSizeCtr[j].u32CurNode;(MBT_U32)pu8CurNode < ptrSizeCtr[j].u32EndAddr;pu8CurNode += iBlockSize)
                {
                    if(0 == (*pu8CurNode))
                    {
                        *pu8CurNode = 0xcc;
                        ptr = (MBT_U32)pu8CurNode + 1 - iBlockSize;
                        ptrSizeCtr[j].u32NodeUsed ++;
                        ptrSizeCtr[j].u32CurNode = (MBT_U32)(pu8CurNode + iBlockSize);
                        j = iBlockTypeNum;
                        break;
                    }
                }

                if(0 == ptr)
                {
                    for(pu8CurNode = (MBT_U8 *)(ptrSizeCtr[j].u32StartAddr + iBlockSize - 1);(MBT_U32)pu8CurNode < ptrSizeCtr[j].u32CurNode ;pu8CurNode += iBlockSize)
                    {
                        if(0 == (*pu8CurNode))
                        {
                            *pu8CurNode = 0xcc;
                            ptr = (MBT_U32)pu8CurNode + 1 - iBlockSize;
                            ptrSizeCtr[j].u32NodeUsed ++;
                            ptrSizeCtr[j].u32CurNode = (MBT_U32)(pu8CurNode + iBlockSize);
                            j = iBlockTypeNum;
                            break;
                        }
                    }
                }
            }
        }
    }

    MLMF_Sem_Release(ospv_psemMemCtrAccess);
    return (MBT_VOID *)ptr;
}

MBT_VOID *OSPRealloc( MBT_VOID *memblock, MBT_U32 uMenmSize )
{
    MBT_U32 ptr = 0;
    MBT_U32 u32Addr = (MBT_U32)memblock;
    MBT_S32 j;
    MBT_S32 iBlockTypeNum;
    MBT_U32 iPrevBlockSize = 0;
    MBT_U32 iBlockSize;
    MBT_U32 *pstu32Size;
    MBT_U32 *pstu32SizeNum;
    SUL_SIZECTR *ptrSizeCtr;
    MBT_U8 *pu8CurNode;

    if(0 == uMenmSize ||MM_INVALID_HANDLE == ospv_psemMemCtrAccess)
    {
        return (MBT_VOID *)ptr;
    }

    MLMF_Sem_Wait(ospv_psemMemCtrAccess,MM_SYS_TIME_INIFIE);
    iBlockTypeNum = ospv_pstMenCtr.u32BlockTypeNum;
    pstu32Size = ospv_pstMenCtr.pstu32BlockSize;
    pstu32SizeNum = ospv_pstMenCtr.pstu32BlockSizeNum;
    ptrSizeCtr = ospv_pstMenCtr.ptrSizeCtr;
    for(j = 0;j < iBlockTypeNum;j++)
    {
        if(u32Addr < ptrSizeCtr[j].u32EndAddr&&u32Addr >= ptrSizeCtr[j].u32StartAddr)
        {
            iPrevBlockSize = pstu32Size[j];
            if(uMenmSize <= (iPrevBlockSize-1))
            {
                MLMF_Sem_Release(ospv_psemMemCtrAccess);
                return (MBT_VOID *)u32Addr;
            }
            u32Addr += pstu32Size[j] - 1;
            if (0 != *((MBT_U8 *)u32Addr))
            {   
                *((MBT_U8 *)u32Addr) = 0;
                ptrSizeCtr[j].u32CurNode = u32Addr+pstu32Size[j];
                ptrSizeCtr[j].u32NodeUsed--;
            }
            break;
        }
    }
    
    if(0 == iPrevBlockSize)
    {
        MLMF_Sem_Release(ospv_psemMemCtrAccess);
        return (MBT_VOID *)u32Addr;
    }
    
    for(j = 0;j < iBlockTypeNum;j++)
    {
        iBlockSize = pstu32Size[j];
        if(uMenmSize <= (iBlockSize-1)&&ptrSizeCtr[j].u32NodeUsed < pstu32SizeNum[j])
        {
            if(ptrSizeCtr[j].u32CurNode >= ptrSizeCtr[j].u32EndAddr)
            {
                for(pu8CurNode = (MBT_U8 *)(ptrSizeCtr[j].u32StartAddr + iBlockSize - 1);(MBT_U32)pu8CurNode < ptrSizeCtr[j].u32EndAddr ;pu8CurNode += iBlockSize)
                {
                    if(0 == (*pu8CurNode))
                    {
                        *pu8CurNode = 0xcc;
                        ptr = (MBT_U32)pu8CurNode + 1 - iBlockSize;
                        ptrSizeCtr[j].u32NodeUsed ++;
                        ptrSizeCtr[j].u32CurNode = (MBT_U32)(pu8CurNode + iBlockSize);
                        j = iBlockTypeNum;
                        break;
                    }
                }
            }
            else
            {
                for(pu8CurNode = (MBT_U8 *)ptrSizeCtr[j].u32CurNode;(MBT_U32)pu8CurNode < ptrSizeCtr[j].u32EndAddr;pu8CurNode += iBlockSize)
                {
                    if(0 == (*pu8CurNode))
                    {
                        *pu8CurNode = 0xcc;
                        ptr = (MBT_U32)pu8CurNode + 1 - iBlockSize;
                        ptrSizeCtr[j].u32NodeUsed ++;
                        ptrSizeCtr[j].u32CurNode = (MBT_U32)(pu8CurNode + iBlockSize);
                        j = iBlockTypeNum;
                        break;
                    }
                }

                if(0 == ptr)
                {
                    for(pu8CurNode = (MBT_U8 *)(ptrSizeCtr[j].u32StartAddr + iBlockSize - 1);(MBT_U32)pu8CurNode < ptrSizeCtr[j].u32CurNode ;pu8CurNode += iBlockSize)
                    {
                        if(0 == (*pu8CurNode))
                        {
                            *pu8CurNode = 0xcc;
                            ptr = (MBT_U32)pu8CurNode + 1 - iBlockSize;
                            ptrSizeCtr[j].u32NodeUsed ++;
                            ptrSizeCtr[j].u32CurNode = (MBT_U32)(pu8CurNode + iBlockSize);
                            j = iBlockTypeNum;
                            break;
                        }
                    }
                }
            }
        }
    }

    if(0 != ptr)
    {
        memcpy((MBT_VOID *)ptr,memblock,iPrevBlockSize);
    }

    MLMF_Sem_Release(ospv_psemMemCtrAccess);

    return (MBT_VOID *)ptr;
}



MBT_BOOL OSPFree(MBT_VOID *ptr)
{
    MBT_U32 u32Addr = (MBT_U32)ptr;
    MBT_BOOL bRet = MM_FALSE;
    MBT_S32 j;
    MBT_S32 iBlockTypeNum;
    SUL_SIZECTR *ptrSizeCtr;
    MBT_U32 *pstu32Size;
    
    if(MM_INVALID_HANDLE == ospv_psemMemCtrAccess||MM_NULL == ptr)
    {
        return bRet;
    }

    MLMF_Sem_Wait(ospv_psemMemCtrAccess,MM_SYS_TIME_INIFIE);
    iBlockTypeNum = ospv_pstMenCtr.u32BlockTypeNum;
    pstu32Size = ospv_pstMenCtr.pstu32BlockSize;
    ptrSizeCtr = ospv_pstMenCtr.ptrSizeCtr;
    for(j = 0;j < iBlockTypeNum;j++)
    {
        if(u32Addr < ptrSizeCtr[j].u32EndAddr&&u32Addr >= ptrSizeCtr[j].u32StartAddr)
        {
            u32Addr += pstu32Size[j] - 1;
            //MMF_SYS_Assert(0!= *((MBT_U8 *)u32Addr));
            if (0 == *((MBT_U8 *)u32Addr))
            {   
                OSPCTR_DEBUG(("[OSPFree]0 == *((MBT_U8 *)u32Addr !!!!\n"));
                MLMF_Sem_Release(ospv_psemMemCtrAccess);
                return MM_FALSE;
            }
            *((MBT_U8 *)u32Addr) = 0;
            ptrSizeCtr[j].u32CurNode = u32Addr+pstu32Size[j];
            ptrSizeCtr[j].u32NodeUsed--;
            bRet = MM_TRUE;
            break;
        }
    }
    MLMF_Sem_Release(ospv_psemMemCtrAccess);
    return bRet;
}



MMT_STB_ErrorCode_E OSPAppMemCtr_Setup(MBT_VOID)
{
    static MBT_U32 ospv_i32Size[] = 
    {
        0x20,
        0x64,
        0x3ec,
        0x12c4,
        0x2f00,
        0x3d00,
        0x4d00,
        0x5b70,
		0x11c20,
		0x30520,
        0xA5C08,
        0x100004,
    };

    static MBT_U32 ospv_i32SizeNum[] = 
    {
        100000,
        10001,
        3000,
        1000,
		500,
		100,
		50,
		40,
		30,
		20,
        10,
		8
    };

    return MemCtrSetup(ospv_i32Size, ospv_i32SizeNum,(sizeof(ospv_i32SizeNum))/(sizeof(MBT_U32)),APPCTR_MEMSIZE);
}


MMT_STB_ErrorCode_E OSPAppMemCtr_Close(MBT_VOID)
{
    MMT_STB_ErrorCode_E Error = MM_NO_ERROR;
    
    if(MM_INVALID_HANDLE == ospv_psemMemCtrAccess)
    {
        MLMF_Sem_Create(&ospv_psemMemCtrAccess,1 );
    }

    MLMF_Sem_Wait(ospv_psemMemCtrAccess,MM_SYS_TIME_INIFIE);
    if(0 != ospv_pstMenCtr.u32BaseAddr)
    {
        MLMF_Free((MBT_VOID *)ospv_pstMenCtr.u32BaseAddr);
        ospv_pstMenCtr.u32BaseAddr = 0;
    }


    if(MM_NULL != ospv_pstMenCtr.ptrSizeCtr)
    {
        MLMF_Free((MBT_VOID *)ospv_pstMenCtr.ptrSizeCtr);
        ospv_pstMenCtr.ptrSizeCtr = MM_NULL;
    }
    
    MLMF_Sem_Release(ospv_psemMemCtrAccess);
    
    return Error;
}

static MBT_VOID ospf_ResetMemFlag(MBT_U32 u32StartAddr,MBT_U32 u32BlockSize,MBT_U32 u32BlockNumber)
{
    MBT_U8 *pu8Flag = (MBT_U8 *)(u32StartAddr + u32BlockSize - 1);
    MBT_U32 i;
    for(i = 0;i < u32BlockNumber;i++)
    {
        *pu8Flag = 0x00;
        pu8Flag += u32BlockSize;
    }
}



static MMT_STB_ErrorCode_E MemCtrSetup(MBT_U32 *pstu32Size,MBT_U32 *pstu32SizeNum,MBT_S32 iBlockTypeNum,MBT_S32 iAllocSize)
{
    MMT_STB_ErrorCode_E Error = MM_NO_ERROR;
    SUL_SIZECTR *ptrSizeCtr;
    MBT_U32 u32CurAddr ;
    MBT_VOID *ptr = MM_NULL;
    MBT_S32 j;
    
    if(MM_INVALID_HANDLE == ospv_psemMemCtrAccess)
    {
        MLMF_Sem_Create(&ospv_psemMemCtrAccess, 1);
    }

    MLMF_Sem_Wait(ospv_psemMemCtrAccess,MM_SYS_TIME_INIFIE);
    if(0 == ospv_pstMenCtr.u32BaseAddr)
    {
        ptr = MLMF_Malloc(iAllocSize);
        if (ptr == MM_NULL)
        {
            MLMF_Sem_Release(ospv_psemMemCtrAccess);
            OSPCTR_DEBUG(("[MemCtrSetup]ptr == MM_NULL !!!!\n"));
            return MM_ERROR_NO_MEMORY;
        }
        memset(ptr,0,iAllocSize);
    }
    else if(ospv_pstMenCtr.u32CtrMemSize != iAllocSize)
    {
        MLMF_Free((MBT_VOID *)ospv_pstMenCtr.u32BaseAddr);
        ptr = MLMF_Malloc(iAllocSize);
        if (ptr == MM_NULL)
        {
            MLMF_Sem_Release(ospv_psemMemCtrAccess);
            OSPCTR_DEBUG(("[MemCtrSetup]ptr == MM_NULL !!!!\n"));
            return MM_ERROR_NO_MEMORY;
        }
        memset(ptr,0,iAllocSize);
    }
    else
    {
        ptr = (MBT_VOID *)ospv_pstMenCtr.u32BaseAddr;
    }


    u32CurAddr = (MBT_U32)ptr;
    if(MM_NULL == ospv_pstMenCtr.ptrSizeCtr)
    {
        ptrSizeCtr =  MLMF_Malloc(sizeof(SUL_SIZECTR)*iBlockTypeNum);
        if(MM_NULL != ptrSizeCtr)
        {
            memset(ptrSizeCtr,0,sizeof(SUL_SIZECTR)*iBlockTypeNum);
        }
    }
    else
    {
        ptrSizeCtr = ospv_pstMenCtr.ptrSizeCtr;
        if(ospv_pstMenCtr.u32BlockTypeNum != iBlockTypeNum)
        {
            MLMF_Free((MBT_VOID *)ospv_pstMenCtr.ptrSizeCtr);
            ptrSizeCtr =  MLMF_Malloc(sizeof(SUL_SIZECTR)*iBlockTypeNum);
            if(MM_NULL != ptrSizeCtr)
            {
                memset(ptrSizeCtr,0,sizeof(SUL_SIZECTR)*iBlockTypeNum);
            }
        }
        else
        {
            ptrSizeCtr = (MBT_VOID *)ospv_pstMenCtr.ptrSizeCtr;
        }
    }
    
    if (ptrSizeCtr == MM_NULL)
    {
        MLMF_Sem_Release(ospv_psemMemCtrAccess);
        OSPCTR_DEBUG(("[MemCtrSetup]ptrSizeCtr == MM_NULL !!!!\n"));
        return MM_ERROR_NO_MEMORY;
    }
    ospv_pstMenCtr.u32CtrMemSize = iAllocSize;
    ospv_pstMenCtr.u32BaseAddr = u32CurAddr;
    ospv_pstMenCtr.u32BlockTypeNum = iBlockTypeNum;
    ospv_pstMenCtr.pstu32BlockSize = pstu32Size;
    ospv_pstMenCtr.pstu32BlockSizeNum = pstu32SizeNum;
    ospv_pstMenCtr.ptrSizeCtr = ptrSizeCtr;
    if(MM_NULL != ptrSizeCtr)
    {
        for(j = 0;j < iBlockTypeNum;j++)
        {
            ptrSizeCtr[j].u32StartAddr = u32CurAddr;
            ospf_ResetMemFlag(u32CurAddr,pstu32Size[j],pstu32SizeNum[j]);
            ptrSizeCtr[j].u32CurNode = u32CurAddr + pstu32Size[j] -1;
            ptrSizeCtr[j].u32NodeUsed = 0;
            u32CurAddr += pstu32Size[j]*pstu32SizeNum[j];
            ptrSizeCtr[j].u32EndAddr = u32CurAddr;
        }
    }

    MLMF_Sem_Release(ospv_psemMemCtrAccess);
    
    return Error;
}

#else
MBT_VOID *OSPMalloc(MBT_U32 uMenmSize)
{
    return (MBT_VOID *)MLMF_Malloc(uMenmSize);
}

MBT_BOOL OSPFree(MBT_VOID *ptr)
{
    MLMF_Free(ptr);
    return MM_TRUE;
}

MMT_STB_ErrorCode_E OSPAppMemCtr_Setup(MBT_VOID)
{
    return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E OSPAppMemCtr_Close(MBT_VOID)
{
    return MM_NO_ERROR;
}
#endif

#if 0

static MBT_VOID OSP_ShowMemInfo(MBT_VOID)
{
   // MBT_S32 i;
    MBT_S32 j;
    MBT_S32 iIndex;
    MBT_S32 iTemp;
    MBT_S32 iTotal;
    MBT_S32 iSize;
    MBT_S32 iBlockTypeNum;
    MBT_U32 *pstu32Size;
    MBT_U32 *pstu32SizeNum;
    SUL_SIZECTR *ptrSizeCtr;

    if(MM_INVALID_HANDLE == ospv_psemMemCtrAccess)
    {
        return;
    }

    MLMF_Sem_Wait(ospv_psemMemCtrAccess,MM_SYS_TIME_INIFIE);
    
    iBlockTypeNum = ospv_pstMenCtr.u32BlockTypeNum;
    pstu32Size = ospv_pstMenCtr.pstu32BlockSize;
    pstu32SizeNum = ospv_pstMenCtr.pstu32BlockSizeNum;
    ptrSizeCtr = ospv_pstMenCtr.ptrSizeCtr;
    for(j = 0;j < iBlockTypeNum;j++)
    {
        iTemp = ptrSizeCtr[j].u32NodeUsed;
        iTotal = pstu32SizeNum[j];
        iSize = pstu32Size[j];
        iIndex = 0;

        OSPCTR_DEBUG(("size 0x%x  used %d left %d\n",iSize,iTemp,iTotal - iTemp));

     /*   for(i = 0;i < iTemp;i++)
        {
            for(;iIndex < iTotal;iIndex++)
            {
                if(0 == (0x80000000&ptrCurNode[iIndex]))
                {
                    OSPCTR_DEBUG(("addr 0x%x size 0x%x in use\n",ptrCurNode[iIndex],iSize));
                }
            }
        }
    */
        
    }
    MLMF_Sem_Release(ospv_psemMemCtrAccess);
}
#endif

MBT_VOID Svc_ShowMemoryInfo(MBT_VOID)
{
   MEMTTEST_LIST *pPrevMmorySlot;
   MEMTTEST_LIST *pMmorySlot;
   MEMTTEST_LIST *pNextMmorySlot;
    MBT_CHAR *ucpTemp;
    MBT_CHAR *ucpTemp1;
    MBT_S32 i ;
    MBT_S32 maxMem = 0;
    MBT_S32 maxMem1 = 0;
    MBT_S32 maxMem2 = 0;

    pPrevMmorySlot = malloc(sizeof(MEMTTEST_LIST));

    if(MM_NULL == pPrevMmorySlot)
    {
           OSPCTR_DEBUG(("\nTotal mwmory from malloc = 0\n"));
          return;
    }
    
    pMmorySlot = pPrevMmorySlot;
    i=0;
   do
   {       
   	ucpTemp = malloc(0x10000);
   	if(MM_NULL != ucpTemp)
       {
       	i += 0x10000;
       }
   	else
       {
       	break;
       }  
   	pMmorySlot->pNext = (MBT_VOID *)ucpTemp;
   	pMmorySlot = (MBT_VOID *)ucpTemp;
   	pMmorySlot ->ptrData = (MBT_VOID *)ucpTemp;
   }
   while(1);

   do
   {
   	ucpTemp = malloc(0x1000);
   	if(MM_NULL != ucpTemp)
       {
       	i += 0x1000;
       }
   	else
       {
       	break;
       }
   	pMmorySlot->pNext = (MBT_VOID *)ucpTemp;
   	pMmorySlot = (MBT_VOID *)ucpTemp;
   	pMmorySlot ->ptrData = (MBT_VOID *)ucpTemp;

   }
   while(1);
  pMmorySlot->pNext = MM_NULL;
  
  
  for(pMmorySlot = pPrevMmorySlot->pNext;pMmorySlot->pNext!=MM_NULL;)
  {
  	pNextMmorySlot=pMmorySlot->pNext;
  	free(pMmorySlot);
  	pMmorySlot = pNextMmorySlot;
  }
  
  free(pMmorySlot);

   OSPCTR_DEBUG(("Total mwmory from malloc = 0x%x\n",i));

   maxMem = i;
   
    pMmorySlot = pPrevMmorySlot;
    i=0;
   do
   {       
   	ucpTemp = MLMF_Malloc(0x10000);
   	if(MM_NULL != ucpTemp)
       {
       	i += 0x10000;
       }
   	else
       {
       	break;
       }  
   	pMmorySlot->pNext = (MBT_VOID *)ucpTemp;
   	pMmorySlot = (MBT_VOID *)ucpTemp;
   	pMmorySlot ->ptrData = (MBT_VOID *)ucpTemp;
   }
   while(1);

   do
   {
   	ucpTemp = MLMF_Malloc(0x1000);
   	if(MM_NULL != ucpTemp)
       {
       	i += 0x1000;
       }
   	else
       {
       	break;
       }
   	pMmorySlot->pNext = (MBT_VOID *)ucpTemp;
   	pMmorySlot = (MBT_VOID *)ucpTemp;
   	pMmorySlot ->ptrData = (MBT_VOID *)ucpTemp;

   }
   while(1);
  do
   {
   	ucpTemp = MLMF_Malloc(0x100);
   	if(MM_NULL != ucpTemp)
       {
       	i += 0x100;
       }
   	else
       {
       	break;
       }
   	pMmorySlot->pNext = (MBT_VOID *)ucpTemp;
   	pMmorySlot = (MBT_VOID *)ucpTemp;
   	pMmorySlot ->ptrData = (MBT_VOID *)ucpTemp;

   }
   while(1);
  do
   {
   	ucpTemp = MLMF_Malloc(0x10);
   	if(MM_NULL != ucpTemp)
       {
       	i += 0x10;
       }
   	else
       {
       	break;
       }
   	pMmorySlot->pNext = (MBT_VOID *)ucpTemp;
   	pMmorySlot = (MBT_VOID *)ucpTemp;
   	pMmorySlot ->ptrData = (MBT_VOID *)ucpTemp;

   }
   while(1);

  pMmorySlot->pNext = MM_NULL;
  
  
  for(pMmorySlot = pPrevMmorySlot->pNext;pMmorySlot->pNext!=MM_NULL;)
  {
  	pNextMmorySlot=pMmorySlot->pNext;
  	MLMF_Free(pMmorySlot);
  	pMmorySlot = pNextMmorySlot;
  }
   MLMF_Free(pMmorySlot);

  

  OSPCTR_DEBUG(("Total mwmory from cache_partition_sdk[0] = 0x%x\n",i));
   maxMem1 = i;
      do
   {
   	ucpTemp = MLMF_Malloc(maxMem1);
   	if(MM_NULL == ucpTemp&&maxMem1>0x10)
       {
       	maxMem1 -= 0x10;
       }
   	else
       {
       	break;
       }
   }
   while(1);
   
   maxMem2 = i - maxMem1;   
   ucpTemp1 = MM_NULL;
  do
   {
   	ucpTemp1 = MLMF_Malloc(maxMem2);
   	if(MM_NULL == ucpTemp1&&maxMem2>0x10)
       {
       	maxMem2 -= 0x10;
       }
   	else
       {
       	break;
       }
   }
   while(1);
   if(MM_NULL!=ucpTemp1)
   {
   	MLMF_Free(ucpTemp1);
   }
   if(MM_NULL!=ucpTemp)
   {
   	MLMF_Free(ucpTemp);
   }

  OSPCTR_DEBUG(("Max mwmory from cache_partition_sdk[0] = 0x%x  maxMem2 = 0x%x\n",maxMem1,maxMem2));
  OSPCTR_DEBUG(("cache_partition_sdk[0] ucpTemp = 0x%x  ucpTemp1 = 0x%x\n",ucpTemp,ucpTemp1));


  free(pPrevMmorySlot);
   do
   {
   	ucpTemp = malloc(maxMem);
   	if(MM_NULL == ucpTemp&&maxMem>0x1000)
       {
       	maxMem -= 0x1000;
       }
   	else
       {
       	break;
       }
   }
   while(1);
   if(MM_NULL!=ucpTemp)
   {
   	free(ucpTemp);
   }
    OSPCTR_DEBUG(("Max mwmory from malloc = 0x%x\n",maxMem));
   // OSP_ShowMemInfo();
}




