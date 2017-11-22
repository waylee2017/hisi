/*******************************************************************************

File name   : sr_prgbase.c
Description : Database implementation
Revision    :  1.2.0

COPYRIGHT (C) STMicroelectronics 2003.

Date		Modification				Name
----		------------				----
25.06-2004  Adapted to 5517FTACI Beta tree  Louie
27.07-2003	Added functions to support 		Tony
		The new user interface		

17.07-2003	Modified to adapt to maly_2		BKP
		software architecture
                   
27.12.96	Original Work				THT
*********************************************************************************/
#include "dbs_share.h"

typedef struct _Bat_Genre_Node_
{
    DBS_GenreINFO stGenreInfo;
    struct _Bat_Genre_Node_ *pstNext;
}BatGenreNode;

typedef struct _Bat_Genre_List_
{
    MBT_U8 u8GenreVersion;
    MBT_U8 u8PrevGenreVersion;
    MBT_U16 u16Reserved;
    BatGenreNode *pstNode;
}BatGenreList;

static BatGenreList dbsv_stGenreList = 
{
    .u8GenreVersion = 0xff,
    .u8PrevGenreVersion = 0xff,
    .u16Reserved = 0,
    .pstNode = MM_NULL
};

static MET_Sem_T dbsv_semGenreAccess = MM_INVALID_HANDLE;


#define Sem_GenreList_P()  MLMF_Sem_Wait(dbsv_semGenreAccess,MM_SYS_TIME_INIFIE) 
                                                        
#define Sem_GenreList_V()  MLMF_Sem_Release(dbsv_semGenreAccess)

MBT_VOID dbsf_GenreListInit(MBT_VOID)
{
    DBS_GenreINFO *pstGenreList;
    MBT_S32 s32Ret;
    
    pstGenreList = MLMF_Malloc(dbsm_GtplMaxGenreNum*sizeof(DBS_GenreINFO));
    if(MM_NULL == pstGenreList)
    {
        return;
    }
    
    s32Ret = dbsf_FileGetGenreList(pstGenreList);
    if(0 != s32Ret)
    {
        dbsf_GenreListCreateList(pstGenreList,s32Ret);
    }
    MLMF_Free(pstGenreList);
    return;
}


static MBT_S32 GenreListCreateList(DBS_GenreINFO *pstGenreList,MBT_S32 s32GenreNum,BatGenreList *pstList)
{
    BatGenreNode *pstNode;
    BatGenreNode *pstNodeNext;
    DBS_GenreINFO stTemp;
    MBT_S32 i,k;
    MBT_S32 s32GenreNodeSize;
    MBT_S32 s32Num = 0;

    if(MM_NULL == pstGenreList||0 == s32GenreNum)
    {
        return s32Num;
    }

    /*为保证顺序，先对数组进行排序*/
    for(i = 0;i < s32GenreNum;i++)
    {
        for(k = i+1;k < s32GenreNum;k++)
        {
            if(pstGenreList[i].u16BouquetID > pstGenreList[k].u16BouquetID)
            {
                stTemp = pstGenreList[i];
                pstGenreList[i] = pstGenreList[k];
                pstGenreList[k] = stTemp;
            }
        }
    }
    s32GenreNodeSize = sizeof(BatGenreNode);
    
    pstNode = pstList->pstNode;
    while(pstNode)
    {
        pstNodeNext = pstNode->pstNext;
        MLMF_Free(pstNode);
        pstNode = pstNodeNext;
    }
    pstList->pstNode = MM_NULL;   
    pstList->u8GenreVersion = pstGenreList[0].u8BatVersion;
    pstList->u8PrevGenreVersion = pstList->u8GenreVersion;

    /*例着写是为了保证存在flash中的顺序不变，因为先插入的会在最后*/
    for(i = s32GenreNum - 1;i >= 0;i--)
    {
        //MLMF_Print("name %s u16BouquetID = %x\n",pstGenreList[i].strGenreName,pstGenreList[i].u16BouquetID);
        if((pstGenreList[i].strGenreName[0] != ' ') && ((MBT_U8)pstGenreList[i].strGenreName[0] >= 0x21))
        {
            pstNode = MLMF_Malloc(s32GenreNodeSize);
            if(MM_NULL == pstNode)
            {
                return s32Num;
            }
            
            pstNode->stGenreInfo = pstGenreList[i];
            pstNode->pstNext = pstList->pstNode;
            pstList->pstNode = pstNode;
            s32Num++;
        }
    }
    //MLMF_Print("GenreListCreateList s32Num = %d\n",s32Num);
    return s32Num;
}




static MBT_VOID GenreListFreeList(BatGenreList *pstList)
{
    BatGenreNode *pstNode;
    BatGenreNode *pstNodeNext;

    if(MM_NULL == pstList)
    {
        return;
    }

    pstNode = pstList->pstNode;
    while(pstNode)
    {
        pstNodeNext = pstNode->pstNext;
        MLMF_Free(pstNode);
        pstNode = pstNodeNext;
    }
    pstList->u8PrevGenreVersion = 0xff;
    pstList->u8GenreVersion = 0xfe;
    pstList->pstNode = MM_NULL;
}

MBT_S32 dbsf_GenreListGetListNum( MBT_VOID )
{
    BatGenreNode *pstNode;
    MBT_S32 s32Ret = 0;
    Sem_GenreList_P();
    pstNode = dbsv_stGenreList.pstNode;
    while(pstNode)
    {
        s32Ret++;
        //MLMF_Print("name %s u16BouquetID %x\n",pstNode->stGenreInfo.strGenreName,pstNode->stGenreInfo.u16BouquetID);
        pstNode = pstNode->pstNext;
    }
    Sem_GenreList_V();
    return s32Ret;
}



MBT_BOOL dbsf_GenreListGetSpecifyIDGenreNode(DBS_GenreINFO *pstGenreNode,MBT_U16 u16BouquetID)
{
    BatGenreList *pstList;
    BatGenreNode *pstNode;
    MBT_BOOL bRet = MM_FALSE;

    if(MM_NULL == pstGenreNode)
    {
        return bRet;
    }

    
    Sem_GenreList_P();
    pstList = &dbsv_stGenreList;
    pstNode = pstList->pstNode;
    while(pstNode)
    {
        if(pstNode->stGenreInfo.u16BouquetID == u16BouquetID)
        {
            *pstGenreNode = pstNode->stGenreInfo;
            bRet = MM_TRUE;
            break;
        }
        pstNode = pstNode->pstNext;
    }
    Sem_GenreList_V();
    return bRet;
}

MBT_BOOL dbsf_GenreListPutNode(DBS_GenreINFO *pstGenreNode)
{
    BatGenreList *pstList;
    BatGenreNode *pstNode;
    BatGenreNode *pstNodeNext;
    MBT_CHAR *pcharPos;
    MBT_BOOL bRet = MM_FALSE;

    if(MM_NULL == pstGenreNode)
    {
        return bRet;
    }

    pcharPos = pstGenreNode->strGenreName;
    if(('o' == pcharPos[0]||'O' == pcharPos[0])&&('t' == pcharPos[1]||'T' == pcharPos[1])&&('a' == pcharPos[2]||'A' == pcharPos[2]))
    {
        return bRet;
    }
    
    Sem_GenreList_P();
    pstList = &dbsv_stGenreList;
    pstNode = pstList->pstNode;
    while(pstNode)
    {
        if(pstNode->stGenreInfo.u16BouquetID == pstGenreNode->u16BouquetID)
        {
            bRet = MM_TRUE;
            break;
        }
        pstNode = pstNode->pstNext;
    }

    if(MM_NULL == pstNode)
    {
        MBT_VOID **ppPoint;
        MBT_U16 u16BouquetID;
        pstNodeNext = MLMF_Malloc(sizeof(BatGenreNode));
        if(MM_NULL == pstNodeNext)
        {
            Sem_GenreList_V();
            return bRet;
        }
        

        bRet = MM_TRUE;
        pstNodeNext->stGenreInfo = *pstGenreNode;
        u16BouquetID = pstGenreNode->u16BouquetID;
        if(' ' == pstNodeNext->stGenreInfo.strGenreName[0]||0x21 >= (MBT_U8)pstNodeNext->stGenreInfo.strGenreName[0])
        {
            sprintf(pstNodeNext->stGenreInfo.strGenreName,"Bat%d",u16BouquetID);
        }
        
        pstNode = pstList->pstNode;
        ppPoint = (void **)(&(pstList->pstNode));
        while(pstNode)
        {
            if(u16BouquetID < pstNode->stGenreInfo.u16BouquetID)
            {
                break;
            }
            ppPoint = (void **)(&(pstNode->pstNext));
            pstNode = pstNode->pstNext;
        }
        
        //MLMF_Print("Put Genrename %s\n",pstNodeNext->stGenreInfo.strGenreName);
        pstNodeNext->pstNext = pstNode;
        *ppPoint = pstNodeNext;
    }
    Sem_GenreList_V();
    return bRet;
}


MBT_S32 dbsf_GenreListCreateList(DBS_GenreINFO *pstGenreList,MBT_S32 s32GenreNum)
{
    MBT_S32 s32Ret;
    Sem_GenreList_P();
    s32Ret = GenreListCreateList(pstGenreList,s32GenreNum,&dbsv_stGenreList);
    Sem_GenreList_V();
    return s32Ret;
}

MBT_VOID dbsf_GenreListFreeList(MBT_VOID)
{
    Sem_GenreList_P();
    GenreListFreeList(&dbsv_stGenreList);
    Sem_GenreList_V();
}

MBT_S32 dbsf_GenreListGetArrayFromList(DBS_GenreINFO *pstGenreList)
{
    BatGenreList *pstList;
    BatGenreNode *pstNode;
    MBT_S32 iIndex;

    if(MM_NULL == pstGenreList)
    {
        return 0;
    }

    iIndex = 0;
    Sem_GenreList_P();
    pstList = &dbsv_stGenreList;
    pstNode = pstList->pstNode;
    while(pstNode)
    {
        pstGenreList[iIndex] = pstNode->stGenreInfo;
        iIndex++;
        if(iIndex > dbsm_GtplMaxGenreNum)
        {
            break;
        }
        pstNode = pstNode->pstNext;
    }

    Sem_GenreList_V();
    return iIndex;
}

MBT_BOOL dbsf_GenreListGetUpdatedStatus(MBT_VOID)
{
    BatGenreList *pstList;
    MBT_BOOL bRet = MM_FALSE;

    Sem_GenreList_P();
    pstList = &dbsv_stGenreList;
    if(pstList->u8GenreVersion != pstList->u8PrevGenreVersion)
    {
        bRet = MM_TRUE;
    }
    Sem_GenreList_V();
    return bRet;
}

MBT_VOID dbsf_GenreListSyncUpdatedStatus(MBT_VOID)
{
    BatGenreList *pstList;
    Sem_GenreList_P();
    pstList = &dbsv_stGenreList;
    pstList->u8PrevGenreVersion = pstList->u8GenreVersion;
    Sem_GenreList_V();
}




