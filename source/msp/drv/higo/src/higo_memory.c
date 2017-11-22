#include "higo_memory.h"

#ifdef __cplusplus
extern "C" {
#endif


typedef struct _BT_USED_S
{
    HI_U32 u32Size;
    HI_U8  pData[1];
}BT_USED_S;


static HI_U32  s_bt_BufferSize = 0;
static HI_VOID *s_bt_BufferHead = NULL;
static HI_U32  s_bt_bInitalize = 0;
static HI_U32  s_bt_UsedSize = 0;
static BT_FREE_S *s_bt_pFreeBlock = NULL;

/** add phy and vir addr for convert each other */
static HI_U32 s_bt_BufferHeadPhy = 0;
static HI_VOID *s_bt_pBufferHeadVir = NULL;
static HI_U32 s_bt_BufferLen = 0;

#define MEM_ALIGN_SIZE 4096
static HI_S32 HIGO_InitMemoryBlock(HI_VOID)
{
    s_bt_pFreeBlock = (BT_FREE_S*)s_bt_BufferHead;
    if(NULL == s_bt_pFreeBlock)
    {
        return HI_FAILURE;
    }
    s_bt_pFreeBlock->u32Size = s_bt_BufferSize;
    s_bt_pFreeBlock->pNext = NULL;
    s_bt_bInitalize = 1;
    return HI_SUCCESS;
}
HI_S32 HIGO_InitMemory(HI_VOID *pBuffHead , HI_U32 u32BuffLen )
{
    if(s_bt_bInitalize)
    {
        return HI_FAILURE;
    }
    if((NULL == pBuffHead) || (u32BuffLen < sizeof(BT_FREE_S)))
    {
        return HI_FAILURE;
    }
    s_bt_BufferHead = pBuffHead;
    s_bt_BufferSize = u32BuffLen;
    return HIGO_InitMemoryBlock();
}

HI_U32 HIGO_GetPhyAddrByVir(HI_VOID *pVirAddr)
{
    return s_bt_BufferHeadPhy + ((HI_U32)pVirAddr - (HI_U32)s_bt_pBufferHeadVir);
}

/** record addr info for addr convert each other */
HI_S32 HIGO_SetMemInfo(HI_U32 u32PhyAddr, HI_VOID *pVirAddr, HI_U32 u32BufLen)
{
    s_bt_BufferHeadPhy = u32PhyAddr;
    s_bt_pBufferHeadVir = pVirAddr;
    s_bt_BufferLen = u32BufLen;
    return HI_SUCCESS;
}

HI_VOID* HIGO_Malloc2(HI_U32 u32Size)
{
    BT_FREE_S *pCur = NULL,*pPre = NULL;
    HI_U32 umask = MEM_ALIGN_SIZE -1;
    BT_USED_S *pUsed = NULL;
    
    //u32Size = ((u32Size + umask) & ( ~umask )) + sizeof(HI_U32);
    u32Size = ((u32Size + umask) & ( ~umask )) + MEM_ALIGN_SIZE;  //for memory align
    if(s_bt_bInitalize)
    {
    
        if(NULL == s_bt_pFreeBlock)
        {
            return NULL;
        }
        //not enough memory
        if((s_bt_BufferSize - s_bt_UsedSize) < u32Size)
        {
            return NULL;
        }
            
        pCur = s_bt_pFreeBlock;
        while(NULL != pCur)
        {
            if(pCur->u32Size >= u32Size)
            {
                break;
            }
            pPre = pCur;
            pCur = pCur->pNext;
        }
        //couldn't find a block that is larger than the acquiredsize 
        if(NULL == pCur)
        {
            return NULL;
        }
        //find a block 
        if(pCur->u32Size == u32Size)
        {
            // the first block is ok
            if(NULL == pPre)
            {
                s_bt_pFreeBlock = s_bt_pFreeBlock->pNext;
            }
            else
            {
                pPre->pNext = pCur->pNext;
            }
        }
        else
        {
            pCur->u32Size -= u32Size;
            pCur = (BT_FREE_S*)((HI_U8*)pCur + pCur->u32Size);
        }
        //pCur is the block that will be use
        pUsed = (BT_USED_S*)(HI_VOID*)pCur;
        pUsed->u32Size = u32Size;
        s_bt_UsedSize += u32Size;
        return pUsed->pData +(MEM_ALIGN_SIZE -4);
    }
    return NULL;
}

HI_VOID HIGO_Free2(HI_VOID* pAddr)
{
    BT_FREE_S *pFree = NULL,*pPre = NULL,*pCur = NULL;
    BT_USED_S *pUsed = NULL;
    if(s_bt_bInitalize)
    {
        if(NULL == pAddr)
        {
            return ;
        }
        pUsed = (BT_USED_S*)((HI_U32)pAddr - MEM_ALIGN_SIZE);
        pFree = (BT_FREE_S*)(HI_VOID*)pUsed;
        if(((HI_U8*)pFree < (HI_U8*)s_bt_BufferHead)
            || ((HI_U8*)pFree >= (HI_U8*)s_bt_BufferHead + s_bt_BufferSize))
        {
            return ;
        }
        if(NULL == s_bt_pFreeBlock)
        {
            s_bt_pFreeBlock = pFree;
            s_bt_pFreeBlock->pNext = NULL;
            s_bt_UsedSize -= pFree->u32Size;
            return ;
        }
        pCur = s_bt_pFreeBlock;
        while(NULL !=pCur && pCur < pFree)
        {
            pPre = pCur;
            pCur = pCur->pNext;
        }
        //in front of the list
        if(NULL == pPre)
        {
            pFree->pNext = s_bt_pFreeBlock;
            if((HI_U8*)pFree + pFree->u32Size == (HI_U8*)s_bt_pFreeBlock)
            {
                pFree->pNext = s_bt_pFreeBlock->pNext;
                pFree->u32Size += s_bt_pFreeBlock->u32Size;
            }
            s_bt_pFreeBlock = pFree;
            s_bt_UsedSize -= pFree->u32Size;
            return ;
        }
        //behide the list
        if(NULL == pCur)
        {
            pPre->pNext = pFree;
            pFree->pNext = NULL;
            if((HI_U8*)pPre + pPre->u32Size == (HI_U8*)pFree)
            {
                pPre->pNext = NULL;
                pPre->u32Size += pFree->u32Size;
            }
            s_bt_UsedSize -= pFree->u32Size;
            return ;
        }
        // pPre ,pCur couldn't be NULL 
        pPre->pNext = pFree;
        pFree->pNext = pCur;
        s_bt_UsedSize -= pFree->u32Size;
        //merge with the pre node
        if((HI_U8*)pPre + pPre->u32Size == (HI_U8*)pFree)
        {
            pPre->pNext = pCur;
            pPre->u32Size += pFree->u32Size;
            pFree = pPre;
        }
        //merge with the post node
        if((HI_U8*)pFree + pFree->u32Size == (HI_U8*)pCur)
        {
            pFree->pNext = pCur->pNext;
            pFree->u32Size += pCur->u32Size;
        }
    }
}

HI_VOID HIGO_DeInitMemory(HI_VOID)
{
    if(s_bt_bInitalize)
    {
        s_bt_BufferHead = NULL;
        s_bt_pFreeBlock = NULL;
        s_bt_bInitalize = 0;
        s_bt_BufferSize = 0;
        s_bt_UsedSize =0;
    }
    return;
}

BT_FREE_S* HIGO_GetFreeList(HI_VOID)
{
    return s_bt_pFreeBlock;
}

#ifdef __cplusplus
}
#endif

