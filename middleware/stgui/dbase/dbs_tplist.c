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

static TRANS_LIST dbsv_stTansHead = {0,MM_NULL};
static MET_Sem_T dbsv_semTransListAccess = MM_INVALID_HANDLE;

#define Sem_TransList_P()  MLMF_Sem_Wait(dbsv_semTransListAccess,MM_SYS_TIME_INIFIE)
                                                        
#define Sem_TransList_V()  MLMF_Sem_Release(dbsv_semTransListAccess)

MBT_VOID dbsf_TPListFreeTransList(MBT_VOID)
{
    Sem_TransList_P();
    dbsv_stTansHead.u32TransNum= 0;
    if(MM_NULL != dbsv_stTansHead.stTransHead)
    {
        MLMF_Free(dbsv_stTansHead.stTransHead);
        dbsv_stTansHead.stTransHead = MM_NULL;
    }
    Sem_TransList_V();
}

MBT_S32 dbsf_TPListPutTransNode(DBST_TRANS *pstTransInfo)
{	
    MBT_S32 iOffset = 0;
    MBT_S32 i ;
    MBT_U32 u32Num;
    DBST_TRANS stTempTrans;
    DBST_TRANS *stTrans;

    if(MM_NULL == pstTransInfo)
    {
        return 0;
    }
    Sem_TransList_P();
    u32Num = dbsv_stTansHead.u32TransNum;
    stTrans = dbsv_stTansHead.stTransHead;
    //MLMF_Print("dbsf_TPListPutTransNode frenq %d uiTPSymbolRate %d uiTPQam %d u32TransNum %d\n",pstTransInfo->stTPTrans.uBit.uiTPFreq,pstTransInfo->stTPTrans.uBit.uiTPSymbolRate,pstTransInfo->stTPTrans.uBit.uiTPQam,u32Num);
    for(i = 0;i < u32Num;i++)
    {
        //MLMF_Print("i %d,u32TransInfo %x,u32TransInfo %x\n",i,stTrans[i].stTPTrans.u32TransInfo,pstTransInfo->stTPTrans.u32TransInfo);
        if(stTrans[i].stTPTrans.u32TransInfo == pstTransInfo->stTPTrans.u32TransInfo)
        {
            if(dbsm_InvalidID != pstTransInfo->u16Tsid)
            {
                stTrans[i].u16Tsid = pstTransInfo->u16Tsid;
            }
            if(dbsm_InvalidID != pstTransInfo->u16NetWorkID)
            {
                stTrans[i].u16NetWorkID = pstTransInfo->u16NetWorkID;
            }
            iOffset = i;
            break;
        }
    }

    //MLMF_Print("i %d,u32Num %d\n",i,u32Num);
    if(i == u32Num)
    {
        MBT_S32 k;
        if(0 != u32Num)
        {
            MBT_S32 iSize = u32Num*sizeof(DBST_TRANS);
            stTrans = MLMF_Malloc(iSize+sizeof(DBST_TRANS));
            memcpy(stTrans, dbsv_stTansHead.stTransHead, iSize);
            MLMF_Free(dbsv_stTansHead.stTransHead);
        }
        else
        {
            if(MM_NULL != dbsv_stTansHead.stTransHead)
            {
                MLMF_Free(dbsv_stTansHead.stTransHead);
            }
            stTrans = MLMF_Malloc(sizeof(DBST_TRANS));
        }

        stTrans[u32Num] = *pstTransInfo;
        iOffset = u32Num;
        dbsv_stTansHead.u32TransNum++;
        dbsv_stTansHead.stTransHead = stTrans;
        u32Num = dbsv_stTansHead.u32TransNum;
        for(i = 0;i < u32Num;i++)
        {
            for(k = i+1;k < u32Num;k++)
            {
                if(stTrans[i].stTPTrans.uBit.uiTPFreq > stTrans[k].stTPTrans.uBit.uiTPFreq)
                {
                    stTempTrans = stTrans[i];
                    stTrans[i] = stTrans[k];
                    stTrans[k] = stTempTrans;
                }
            }    
        }     

    }
    //MLMF_Print("dbsf_TPListPutTransNode u32TransNum %d\n",dbsv_stTansHead.u32TransNum);
    Sem_TransList_V();

    return iOffset;
}


MBT_S32 dbsf_TPListGetOrderedTransList(DBST_TRANS *pstTransInfo)
{	
    MBT_S32 i,k;
    MBT_U16 u16TSID;
    MBT_U32 u32Num;
    DBST_TRANS stTempTrans;
    DBST_TRANS *pstTrans;

    if(MM_NULL == pstTransInfo)
    {
        return 0;
    }
    
    Sem_TransList_P();
    u32Num = dbsv_stTansHead.u32TransNum;
    pstTrans = dbsv_stTansHead.stTransHead;
    memcpy(pstTransInfo,pstTrans,u32Num*sizeof(DBST_TRANS));

    for(i = 0;i < u32Num;i++)
    {
        u16TSID = pstTransInfo[i].u16Tsid;
        for(k = i+1;k < u32Num;k++)
        {
            if(u16TSID > pstTransInfo[k].u16Tsid)
            {
                stTempTrans = pstTransInfo[i];
                pstTransInfo[i] = pstTransInfo[k];
                pstTransInfo[k] = stTempTrans;
                u16TSID = pstTransInfo[i].u16Tsid;
            }
        }
        /*
        MLMF_Print("%03d %04d ",pstTransInfo[i].stTPTrans.uBit.uiTPFreq,pstTransInfo[i].stTPTrans.uBit.uiTPSymbolRate);
        switch(pstTransInfo[i].stTPTrans.uBit.uiTPQam)
        {
            case MM_TUNER_QAM_16:
                MLMF_Print("QAM_16\n");
                break;
            case MM_TUNER_QAM_32:
                MLMF_Print("QAM_32\n");
                break;
            case MM_TUNER_QAM_64:
                MLMF_Print("QAM_64\n");
                break;
            case MM_TUNER_QAM_128:
                MLMF_Print("QAM_128\n");
                break;
            case MM_TUNER_QAM_256:
                MLMF_Print("QAM_256\n");
                break;
            case MM_TUNER_QAM_MAX:
                MLMF_Print("ERROR\n");
                break;
        }
        */

    }
    Sem_TransList_V();
    return u32Num;
}


/***********************************************************************************************************
 * Function : dbsf_TPListGetTransInfo
 * Purpose	: Read the Transponder struct info from the flash.
 * Params	: iIndex : the No. of Xpdr
 * Return	: the pointer of Transponder Info.
 ********************************************************************************************************/
MBT_S32 dbsf_TPListGetTransInfo(DBST_TRANS *pstTrans, MBT_U32 iIndex)
{
    MBT_S32	 iRet = DVB_INVALID_LINK;
    Sem_TransList_P();
    if (iIndex < dbsv_stTansHead.u32TransNum&&MM_NULL != pstTrans)
    {
        *pstTrans = dbsv_stTansHead.stTransHead[iIndex];
        iRet = iIndex;
    }
    Sem_TransList_V();
    return	iRet;
}


MBT_S32 dbsf_TPListGetTransNum(MBT_VOID)
{
    return dbsv_stTansHead.u32TransNum;
}

/***********************************************************************************************************
 * Function : dbsf_TPListSrchCreateTransList
 * Purpose	: Read the Transponder struct info from the flash.
 * Params	: iIndex : the No. of Xpdr
 * Return	: the pointer of Transponder Info.
 ********************************************************************************************************/
MBT_S32 dbsf_TPListSrchCreateTransList(TRANS_INFO stTrans, MBT_S32 iEndFreq )
{
    MBT_U32 u32Num = 0;
    DBST_TRANS *pstTrans;

    Sem_TransList_P();
    dbsv_stTansHead.u32TransNum = 0;
    if(MM_NULL != dbsv_stTansHead.stTransHead)
    {
        MLMF_Free(dbsv_stTansHead.stTransHead);
        dbsv_stTansHead.stTransHead = 0;
    }

    while(stTrans.uBit.uiTPFreq*1000 <= iEndFreq)
    {
        pstTrans = MM_NULL;
        if(0 != u32Num)
        {
            MBT_S32 iSize = u32Num*sizeof(DBST_TRANS);
            MBT_U8 *pucTemp = (MBT_U8 *)MLMF_Malloc(iSize);
            if(MM_NULL != pucTemp)
            {
                if(MM_NULL != dbsv_stTansHead.stTransHead)
                {
                    memcpy(pucTemp,dbsv_stTansHead.stTransHead,iSize);
                    MLMF_Free(dbsv_stTansHead.stTransHead);
                }
                /*先释放再申请，保证没有内存粹片*/
                pstTrans = MLMF_Malloc(iSize+sizeof(DBST_TRANS));
                memcpy(pstTrans, pucTemp, iSize);
                MLMF_Free(pucTemp);
            }
        }
        else
        {
            if(MM_NULL != dbsv_stTansHead.stTransHead)
            {
                MLMF_Free(dbsv_stTansHead.stTransHead);
            }
            pstTrans = MLMF_Malloc(sizeof(DBST_TRANS));
        }

        pstTrans[u32Num].stTPTrans = stTrans;
        pstTrans[u32Num].u16NetWorkID = dbsm_InvalidID;
        pstTrans[u32Num].u16Tsid = dbsm_InvalidID;
        u32Num++;
        dbsv_stTansHead.u32TransNum++;
        dbsv_stTansHead.stTransHead = pstTrans;

        if(467 == stTrans.uBit.uiTPFreq)
        {
            stTrans.uBit.uiTPFreq = 474;
        }
        else
        {
            stTrans.uBit.uiTPFreq  += 8;
        }	
    }     
    Sem_TransList_V();

    return u32Num;
}

/*
NIT Cach TP list,用于缓存搜索和监控中NIT表中得到的频点列表
此列表在收到NIT表时创建，在恢复默认\NIT版本更新\网络切换(NETWORKID改变)时才会释放
*/

static TRANS_LIST dbsv_stNitCachTansHead = {0,MM_NULL};

MBT_VOID dbsf_TPListFreeNitCachList(MBT_VOID)
{
    Sem_TransList_P();
    dbsv_stNitCachTansHead.u32TransNum= 0;
    if(MM_NULL != dbsv_stNitCachTansHead.stTransHead)
    {
        MLMF_Free(dbsv_stNitCachTansHead.stTransHead);
        dbsv_stNitCachTansHead.stTransHead = MM_NULL;
    }
    Sem_TransList_V();
}

MBT_S32 dbsf_TPListPutNitCachTransNode(DBST_TRANS *pstTransInfo)
{	
    MBT_S32 iOffset = 0;
    MBT_S32 i ;
    MBT_U32 u32Num;
    DBST_TRANS stTempTrans;
    DBST_TRANS *stTrans;

    if(MM_NULL == pstTransInfo)
    {
        return 0;
    }
    Sem_TransList_P();
    u32Num = dbsv_stNitCachTansHead.u32TransNum;
    stTrans = dbsv_stNitCachTansHead.stTransHead;

    for(i = 0;i < u32Num;i++)
    {
        if(stTrans[i].stTPTrans.u32TransInfo == pstTransInfo->stTPTrans.u32TransInfo)
        {
            if(dbsm_InvalidID != pstTransInfo->u16Tsid)
            {
                stTrans[i].u16Tsid = pstTransInfo->u16Tsid;
            }
            if(dbsm_InvalidID != pstTransInfo->u16NetWorkID)
            {
                stTrans[i].u16NetWorkID = pstTransInfo->u16NetWorkID;
            }
            iOffset = i;
            break;
        }
    }


    if(i == u32Num)
    {
        MBT_S32 k;
        if(0 != u32Num)
        {
            MBT_S32 iSize = u32Num*sizeof(DBST_TRANS);
            stTrans = MLMF_Malloc(iSize+sizeof(DBST_TRANS));
            memcpy(stTrans, dbsv_stNitCachTansHead.stTransHead, iSize);
            MLMF_Free(dbsv_stNitCachTansHead.stTransHead);
        }
        else
        {
            if(MM_NULL != dbsv_stNitCachTansHead.stTransHead)
            {
                MLMF_Free(dbsv_stNitCachTansHead.stTransHead);
            }
            stTrans = MLMF_Malloc(sizeof(DBST_TRANS));
        }

        stTrans[u32Num] = *pstTransInfo;
        iOffset = u32Num;
        dbsv_stNitCachTansHead.u32TransNum++;
        dbsv_stNitCachTansHead.stTransHead = stTrans;
        u32Num = dbsv_stNitCachTansHead.u32TransNum;
        for(i = 0;i < u32Num;i++)
        {
            for(k = i+1;k < u32Num;k++)
            {
                if(stTrans[i].stTPTrans.uBit.uiTPFreq > stTrans[k].stTPTrans.uBit.uiTPFreq)
                {
                    stTempTrans = stTrans[i];
                    stTrans[i] = stTrans[k];
                    stTrans[k] = stTempTrans;
                }
            }    
        }     

    }
    Sem_TransList_V();

    return iOffset;
}


MBT_S32 dbsf_TPListGetNitCachOrderedTransList(DBST_TRANS *pstTransInfo)
{	
    MBT_S32 i,k;
    MBT_U16 u16TSID;
    MBT_U32 u32Num;
    DBST_TRANS stTempTrans;
    DBST_TRANS *pstTrans;

    if(MM_NULL == pstTransInfo)
    {
        return 0;
    }
    
    Sem_TransList_P();
    u32Num = dbsv_stNitCachTansHead.u32TransNum;
    pstTrans = dbsv_stNitCachTansHead.stTransHead;
    memcpy(pstTransInfo,pstTrans,u32Num*sizeof(DBST_TRANS));

    for(i = 0;i < u32Num;i++)
    {
        u16TSID = pstTransInfo[i].u16Tsid;
        for(k = i+1;k < u32Num;k++)
        {
            if(u16TSID > pstTransInfo[k].u16Tsid)
            {
                stTempTrans = pstTransInfo[i];
                pstTransInfo[i] = pstTransInfo[k];
                pstTransInfo[k] = stTempTrans;
                u16TSID = pstTransInfo[i].u16Tsid;
            }
        }
        /*
        MLMF_Print("%03d %04d ",pstTransInfo[i].stTPTrans.uBit.uiTPFreq,pstTransInfo[i].stTPTrans.uBit.uiTPSymbolRate);
        switch(pstTransInfo[i].stTPTrans.uBit.uiTPQam)
        {
            case MM_TUNER_QAM_16:
                MLMF_Print("QAM_16\n");
                break;
            case MM_TUNER_QAM_32:
                MLMF_Print("QAM_32\n");
                break;
            case MM_TUNER_QAM_64:
                MLMF_Print("QAM_64\n");
                break;
            case MM_TUNER_QAM_128:
                MLMF_Print("QAM_128\n");
                break;
            case MM_TUNER_QAM_256:
                MLMF_Print("QAM_256\n");
                break;
            case MM_TUNER_QAM_MAX:
                MLMF_Print("ERROR\n");
                break;
        }
        */
    }
    Sem_TransList_V();
    return u32Num;
}

MBT_VOID dbsf_TPListInit(MBT_VOID)
{
    if(MM_INVALID_HANDLE== dbsv_semTransListAccess)    
    {
        MLMF_Sem_Create(&dbsv_semTransListAccess,1); 
    }
}

MBT_VOID dbsf_TPListTerm(MBT_VOID)
{
    if(MM_INVALID_HANDLE != dbsv_semTransListAccess)    
    {
        MLMF_Sem_Destroy(dbsv_semTransListAccess); 
        dbsv_semTransListAccess = MM_INVALID_HANDLE;
    }
}


