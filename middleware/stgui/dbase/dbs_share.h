/********************************************************************************
File name   : dbs_share.h
Description : Database implementation
Revision    : 1.3.0

COPYRIGHT (C) STMicroelectronics 2003.

Date			Name		Modification
----			----		------------
25-06-2004      Louie   Adapted to 5517FTACI Beta tree

17-03-2004		CS		Modified to adpat to HD STB sw architecture
		
17.07-2003		BKP		Modified to adapt to maly_2 sw architecture
                
07.09.96		THT		Original Work
*********************************************************************************/
#ifndef __VDBASE_H__
#define __VDBASE_H__

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include "dbs_api.h"
#include "ospctr.h"  
#include "nvm_api.h"
#include "mm_common.h"
#include "section_api.h"
#include "apptimer.h"


typedef enum
{
    m_DbsIdle,
    m_DbsSearchNit,
    m_DbsSearchPrg,
    m_DbsSearchEpg,
    m_DbsPlayPrg,
    m_DbsSearchNvod,
    m_DbsPlayNvod,
    m_DbsSearchAdver,
    m_DbsSearchDsmcc,
    m_DbsSearchEnd,
    m_DbsReset
} dbase_module_state_t;

#define dbsm_MaxTransNum (120)
#define dbsm_MaxBatNum (32)

#define     m_MainFrenq              306
#define     m_MainSymbelRate   6875
#define     m_MainModulation     MM_TUNER_QAM_64 


/* all the TABLE_ID definitions*/

#define NETWORK_NAME_DESC               0x40
#define SERVICE_LIST_DESC               0x41
#define BOUQUET_NAME_DESC         0x47   // SUN  060612: Bouquet name 
#define SERVICE_DESC                    0x48
#define SHORT_EVENT_DESC                0x4d
#define EXTENDED_EVENT_DESC             0x4E    
#define TIMESHIFT_EVENT_DESC             0x4F    
#define AUDIO_COMPONENT_DESC            0x50
#define MULTILANGUAGE_COMPONENT_DESC            0x5E
#define CONTENT_DESC                    0x54
#define NVOD_REFERENCE_DESCRIPTOR              0x4B
#define NVOD_TIMESHIFT_DESCRIPTOR              0x4C

#define SATELLITE_DELIVERY_DESCRIPTOR   0x43
#define CABLE_DELIVERY_DESCRIPTOR       0x44
#define LINKAGE_DESCRIPTOR              0x4A
#define MOSAIC_DESCRIPTOR 		0x51
#define STREAM_IDENTIFIER_AUDIO_DESCRIPTOR    0x52
#define TELETEXT_DESCRIPTOR             0x56
#define SUBTITLING_DESCRIPTOR           0x59
#define PRIVATE_DATA_SPECIFIER_DESCRIPTOR 0x5f
#define LOGICAL_SCREEN_DESCRIPTOR  0x81
#define MOSAIC_UP_LINK  0x82                 
#define MOSAIC_DOWN_LINK  0x83    
#define LOGO_UPFATE_DESC                 0x90
#define LIAONING_SERVICESORTINDEX         0x91
#define CODE_DOWNLOAD_DESC                 0xA1
#define dbsm_CaDesc_Tag  0x09
#define ISO_639_LANGUAGE_DESC  0x0A
#define LINKAGE_DESCRIPTOR              0x4A
#define m_Gtpl_BootUpChannelTag 0xe4
#define AC3D__DESCRIPTOR 0x6A         // AC3_descriptor

#define LCN_DESCRIPTOR82 0x82
#define LCN_DESCRIPTOR83 0x83


#define MAIN_FRENQ_TIME_OUT		20

#define CAT_TIME_OUT		2	/* sec */
#define PAT_TIME_OUT		3	/* sec */
#define PMT_TIME_OUT		3	/* sec */
#define NIT_TIME_OUT		14	/* sec */
#define SDT_TIME_OUT		12	/* sec */
#define BAT_TIME_OUT		12	/* sec */
#define TDT_TIME_OUT		10	/* sec */

#define MAX_NO_OF_PROGRAMS					1000

#define dbsm_MaxEdcmCtrNum 8

typedef enum
{
    m_Update_Prg,
    m_ResetAdd_Prg,
    m_StoreNone,
}DBSE_StoreType;

enum{
    dbsm_PmtWait,
    dbsm_PmtStarted,
    dbsm_PmtComplete
};


typedef enum
{
    dbsm_NoUpdate,
    dbsm_UpdateItem,
    dbsm_UpdateList
}DBSE_UpdateType;

#ifdef COMPONENT_SUPORT
typedef struct _language_code_Desc_
{
    MBT_U32 ISO_639_language_code;
    MBT_CHAR *ptrTextChar;
    MBT_VOID *pstNextCodeDesc;
}LANGUAGE_CODE_DESC;

typedef struct _prg_component_
{
    MBT_U8 component_tag;
    LANGUAGE_CODE_DESC *pstLanguageCode;
    MBT_VOID *pstNextComponent;
}PRG_COMPONENT;
#endif

typedef	struct _pro_node_
{
    DBST_PROG stService;
    MBT_U8 u8Reserved;
    MBT_U8 u8FavListLcn;
    MBT_U16 u16LogicNum;                                            
    struct _pro_node_ *pPrevPrgNode;
    struct _pro_node_ *pNextPrgNode;
} PRO_NODE;  

typedef	struct _pro_list_node_
{
    MBT_S32 s32ActualProNum;
    MBT_S32 s32VirtProNum;
    PRO_NODE *stPrgNode;
} PRO_LIST_NODE;  

typedef	struct _trans_list_
{
    MBT_U32 u32TransNum;
    DBST_TRANS *stTransHead;
} TRANS_LIST;  



//#define DBS_DEBUG(x)   MLMF_Print x
#define DBS_DEBUG(x) 


extern TRANS_INFO dbsv_stCurTransInfo;
extern MBT_U8 dbsv_DbsWorkState;
extern MBT_U16 dbsv_u16BootupChannelServiceID;
extern MBT_U16 dbsv_u16NetworkID;


extern MBT_BOOL dbsf_UpdateSoftwareRequire(MBT_U8 *pu8MsgData);
extern MBT_BOOL dbsf_GetForceSrchEpgFlag(MBT_VOID);

extern MBT_VOID dbsf_MntInitStreamPrgVer(MBT_VOID);
extern MBT_VOID dbsf_FileRmvAllFile ( MBT_VOID );
extern MBT_VOID dbsf_FileRmvPrgFile ( MBT_VOID );
extern MBT_VOID dbsf_FilePrgEdit(DBST_PROG *pstService) ;
extern MBT_VOID dbsf_ListPutNode2PrgList(MBT_U32 u32Num, DBST_PROG * pstProgInfo);
extern MBT_VOID dbsf_ListPrgEdit(DBST_PROG * pstService);
extern MBT_VOID dbsf_ListFreeMntPrgList(MBT_VOID);
extern MBT_VOID dbsf_TPListFreeTransList(MBT_VOID);
extern MBT_VOID dbsf_StartEpgSearch(ParseCallBack ParseTable);
extern MBT_VOID dbsf_StopEpgSearch(ParseCallBack ParseTable);
extern MBT_VOID dbsf_NVDInitSrchCtr(MBT_VOID);
extern MBT_VOID dbsf_NVDParseEIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen);
extern MBT_VOID dbsf_ParseEIT(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 * pu8MsgData,MBT_S32 iMsgLen);
extern MBT_VOID dbsf_MntSetCurPlayPrg(MBT_U16 u16ServiceID,MBT_U16 u16PmtPID);
extern MBT_VOID dbsf_StopAV(MBT_VOID);
extern MBT_VOID dbsf_MntClnCatVer(MBT_VOID);
extern MBT_VOID dbsf_MntStartPmt(MBT_VOID);
extern MBT_VOID dbsf_SetDbsState(MBT_U8 u8DbsState);
extern MBT_VOID dbsf_MntStartTable(MET_PTI_PID_T stPid,MBT_U8 tableId,MBT_S32 iExternTableid);
extern MBT_VOID dbsf_MntGetTdtTime(MBT_U8 *puTdtTime);
extern MBT_VOID dbsf_MntNimNotify(MBT_U8 u8NimState);
extern MBT_VOID dbsf_MntGetVideoNotify(MBT_VOID);
extern MBT_VOID dbsf_MntStartHeatBeat(MBT_VOID);
extern MBT_VOID dbsf_MntReset(MBT_VOID);
extern MBT_VOID dbsf_MntClnSdtVer(MBT_VOID);
extern MBT_VOID dbsf_MntClnPatVer(MBT_VOID);
extern MBT_VOID dbsf_MntClnNitVer(MBT_VOID);
extern MBT_VOID dbsf_MntClnSdtOtherVer(MBT_VOID);
extern MBT_VOID dbsf_MntClnBatVer(MBT_VOID);
extern MBT_VOID dbsf_SetForceSrchEpgFlag(MBT_BOOL bForceState);
extern MBT_VOID dbsf_MntSetStremPrgVer(MBT_U8 u8PrgVer);
extern MBT_VOID dbsf_GetEndTime( MBT_U8 *pu8BeginTime, MBT_U8 *pu8DuringTime, MBT_U8 *pu8EndTime);
#ifdef COMPONENT_SUPORT
extern MBT_VOID dbsf_FreeComponentList(MBT_VOID *pstComponentList);
#endif
extern MBT_VOID dbsf_NvdFreeAllEvent(MBT_VOID);
extern MBT_VOID dbsf_NvdFreeRefPrgList(MBT_VOID);
extern MBT_VOID dbsf_NvdPutRefPrgListNode(DBST_PROG *pstPrgInfo);
extern MBT_VOID dbsf_NvdSortPrgList(MBT_VOID);
extern MBT_VOID dbsf_NvdPutTShiftPrgListNode(DBST_PROG *pstPrgInfo,MBT_U16 uChannelNumber);
extern MBT_VOID dbsf_EpgFreeAllEvent(MBT_VOID);
extern MBT_VOID dbsf_EpgInit(MBT_VOID);
extern MBT_VOID dbsf_MntClnPmtVer(MBT_VOID);
extern MBT_VOID dbsf_DeleteMosaicPrgList(MBT_VOID);
extern MBT_VOID dbsf_StartMosaicSDT(MBT_VOID);
extern MBT_VOID dbsf_ListFreePrgList(MBT_VOID);
extern MBT_VOID dbsf_PrgPlayInit(MBT_VOID);
extern MBT_VOID dbsf_PrgPlayTerm(MBT_VOID);
extern MBT_VOID dbsf_MntInit(MBT_VOID);
extern MBT_VOID dbsf_MntTerm(MBT_VOID);
extern MBT_VOID dbsf_TPListInit(MBT_VOID);
extern MBT_VOID dbsf_TPListTerm(MBT_VOID);
extern MBT_VOID dbsf_ListPrgInit(MBT_VOID);
extern MBT_VOID dbsf_ListPrgTerm(MBT_VOID);
extern MBT_VOID dbsf_ListSrchMntInitPrgInfo(PRO_NODE *pstPrgInfo);
extern MBT_VOID dbsf_ListSrchWritePrgInfo(PRO_NODE * pstPrgInfo,MBT_U8 u8TableID);
extern MBT_VOID dbsf_ListMntWritePrgInfo(PRO_NODE *pstPrgInfo,MBT_U8 u8TableID);
extern MBT_VOID dbsf_PlyStartAV(MBT_S32 iPidNumber, MST_AV_StreamData_T * pstPidList);
extern MBT_VOID dbsf_GenreListFreeList(MBT_VOID);
extern MBT_VOID dbsf_NvodInit(MBT_VOID);
extern MBT_VOID dbsf_NvodTerm(MBT_VOID);
extern MBT_VOID dbsf_CTRCASStartEcm(DBS_st2CAPIDInfo *pstCurPrgCasPidInfo,MBT_U16 u16CurServiceID,DBS_stCAEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum);
extern MBT_VOID dbsf_CTRCASStopEcm(MBT_VOID);
extern MBT_VOID dbsf_CTRCASStartEmm(MBT_U16 u16EmmPID);
extern MBT_VOID dbsf_CTRCASStopEmm(MBT_VOID);
extern MBT_VOID dbsf_CTRCASParseNIT(MBT_U8 *pu8Data ,MBT_S32 s32Len);


extern MBT_U8 dbsf_ListIsFreeed(MBT_VOID);

extern MBT_U16 dbsf_ListGetPrgListType(MBT_VOID);

extern MBT_BOOL dbsf_CTRCASCheckSysID(MBT_U16 u16SystemID);
extern MBT_BOOL dbsf_ListHaveVideoPrg( MBT_VOID );
extern MBT_BOOL dbsf_ListHaveFavVideoPrg( MBT_VOID );
extern MBT_BOOL dbsf_ListHaveRadioPrg( MBT_VOID );
extern MBT_BOOL dbsf_ListHaveFavRadioPrg( MBT_VOID );
extern MBT_BOOL dbsf_ListMntCopyMntList2PrgList(PRO_LIST_NODE *pstMntListNode);

extern MBT_U32 dbsf_CTRGetTransInfoFromList(DBST_TRANS *pstTransInfo,MBT_U16 u16TransNum,MBT_U16 u16TSID);
extern MBT_S32 dbsf_PlayGetPIDCasInfo(MST_AV_StreamData_T *pstPIDList,DBS_st2CAPIDInfo *pstCasInfo,PRG_PIDINFO *pstPids,MBT_U8 u8NumPids,MBT_U16 u16CurAudPID);
extern MBT_S32 dbsf_ListPosPrgTransXServiceID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo,MBT_U16 u16ServiceID);
extern MBT_S32 dbsf_ListPosPrg2XLCN(MBT_S32 iPrgLCN,UI_PRG *pstPrgInfo,MBT_U8 u8TVRadioType);
extern MBT_S32 dbsf_ListPos2NextUnlockPrg(UI_PRG *pstPrgInfo,MBT_U8 u8TVRadioType);
extern MBT_S32 dbsf_ListPrevPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 uVideoAudio);
extern MBT_S32 dbsf_ListNextPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 uVideoAudio);
extern MBT_S32 dbsf_ListGetPrgByServiceID(UI_PRG * pstPrgInfo,MBT_U16 u16ServiceID);
extern MBT_S32 dbsf_ListGetPrgTransXPID(UI_PRG * pstPrgInfo,MBT_U32 u32TransInfo,MET_PTI_PID_T stVideoPID,MET_PTI_PID_T stAudioPID);
extern MBT_S32 dbsf_ListGetPrgArrayTransX(MBT_U32 u32TransInfo,UI_PRG *pstPrgInfo,MBT_U32 u32ArrayLen);
extern MBT_S32 dbsf_ListCurPrgInfo(UI_PRG * pstPrgInfo);
extern MBT_S32 dbsf_ListGetActualListPrgNum(MBT_VOID);
extern MBT_S32 dbsf_ListGetVirtLisPrgNum(MBT_VOID);
extern MBT_S32 dbsf_ListGetPrgTransXServicID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo,MBT_U16 u16ServiceID);
extern MBT_S32 dbsf_ListGetEcmCtrList(DBS_stCAEcmCtr *pstEcmCtr,MBT_U32 u32EcmCtrLen,MBT_U32 u32CurTransInfo,MBT_U16 u16CurServiceID);
extern DBST_PROG *dbsf_ListSrchCheck2CreatePrgArray(MBT_S32 *pPrgNum);
extern DBST_PROG *dbsf_ListCreatePrgArray(MBT_S32 *pPrgNum);
extern MBT_S32 dbsf_DateToMjd(MBT_S32 iYear, MBT_S32 iMonth, MBT_S32 iDay);
extern MBT_S32 dbsf_TPListGetTransInfo(DBST_TRANS * pstTrans, MBT_U32 iIndex);
extern MBT_S32 dbsf_TPListGetTransNum(MBT_VOID);
extern MBT_S32 dbsf_TPListSrchCreateTransList(TRANS_INFO stTrans, MBT_S32 iEndFreq );
extern MBT_S32 dbsf_FilePutPrg2File (MBT_VOID *pstPrgArray,MBT_S32 iPrgNum);
extern MBT_S32 dbsf_TPListPutTransNode(DBST_TRANS *pstProgInfo);
extern MBT_S32 dbsf_FileOverWritePrg2File(MBT_VOID * pstPrgArray, MBT_S32 iPrgNum);
extern MBT_S32 dbsf_FileOverWriteCurTPPrg (MBT_VOID *pstPrgArray,MBT_S32 iPrgNum);
extern MBT_S32 dbsf_DataSrchStorePrg(DBSE_StoreType eSaveMode);
extern MBT_S32 dbsf_TPListGetOrderedTransList(DBST_TRANS *pstTransInfo);
extern MBT_S32 dbsf_TPListGetNitCachOrderedTransList(DBST_TRANS * pstTransInfo);
extern MBT_S32 dbsf_TPListPutNitCachTransNode(DBST_TRANS *pstTransInfo);
extern MBT_VOID dbsf_DataRmvAllFile (MBT_VOID) ;
extern MBT_VOID dbsf_SrchParseCableDeliveryDescript(MBT_U8 *pu8MsgData,MBT_U16 uTransID,MBT_U16 uNetworkid);
extern MBT_VOID dbsf_ListLCNOn(MBT_VOID);
extern MBT_VOID dbsf_ListLCNOff(MBT_VOID);
extern MBT_VOID dbsf_TPListFreeNitCachList(MBT_VOID);


extern MBT_U8 dbsf_MntGetStremPrgVer(MBT_VOID);
extern MBT_U8 dbsf_MntGetSyncPrgVer(MBT_VOID);
extern DBST_PROG *dbsf_FileCreatePrgArray(MBT_U32 *pu32PrgNum);
extern MBT_VOID dbsf_FileSetBoxInfo (DVB_BOX *pstBoxInfo);
extern MBT_VOID *dbsf_ForceMalloc(MBT_U32 uMenmSize);
extern MBT_BOOL dbsf_ForceFree(MBT_VOID *ptr);
extern MBT_VOID dbsf_FileRemovePrg(DBST_PROG *pstPrgInfo,MBT_U32 u32PrgNum);
extern MBT_VOID dbsf_FileSetBoxInfo (DVB_BOX *pstBoxInfo);
extern MBT_BOOL dbsf_FileGetBoxInfo (DVB_BOX *pstBoxInfo);
extern MBT_S32 dbsf_FileGetGenreList (DBS_GenreINFO *pstGenreList);
extern MBT_S32 dbsf_GenreListGetListNum( MBT_VOID );

extern MBT_S32 dbsf_GenreListGetArrayFromList(DBS_GenreINFO *pstGenreList);
extern MBT_S32 dbsf_GenreListCreateList(DBS_GenreINFO *pstGenreList,MBT_S32 s32GenreNum);
extern MBT_VOID dbsf_FileSetGenreList (DBS_GenreINFO *pstGenreList,MBT_S32 s32GenreNum);

extern MBT_VOID dbsf_GenreListSyncUpdatedStatus(MBT_VOID);
extern MBT_VOID dbsf_DataSaveBatInfo(MBT_VOID);
extern MBT_BOOL dbsf_GenreListGetSpecifyIDGenreNode(DBS_GenreINFO * pstGenreNode,MBT_U16 u16BouquetID);
extern MBT_BOOL dbsf_GenreListPutNode(DBS_GenreINFO *pstGenreNode);
extern MBT_BOOL dbsf_GenreListGetUpdatedStatus(MBT_VOID);
extern DBSE_UpdateType dbsf_ListMntCheck2UpdatePrgList(MBT_BOOL bNetworkIDUpdated,MBT_BOOL bGetNIT,MBT_BOOL bGetBat);
extern MBT_VOID dbsf_GenreListInit(MBT_VOID);

/* end C++ support */
#ifdef __cplusplus
}
#endif

#endif      /* __VDBASE_H__ */
