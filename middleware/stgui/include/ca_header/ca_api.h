/* =========================================================== 
	Create Date:		2003.08.18
	Author:				GZY
================================================================= */

/* ================================================================= 
	Version:			4.0.0
	Modify Date:		2007.09.06
	Author:				KFM
	Description:		对原文件进行整理，使与移植说明文档相对应	
================================================================= */

#ifndef  TFCAS21EX_H
#define  TFCAS21EX_H 
#include "CDCAS30.h"


#include "mm_common.h"
#include "dbs_api.h"

#if (OVT_CAS_MODE == 2)
#include "ovt_ca_std_types.h"
#include "ovt_ca_hcc_ext.h"
#include "ovt_ca_hcc_cb.h"
#endif

#ifdef  __cplusplus
extern "C" {
#endif


#if (OVT_CAS_MODE == 2)
#define M_OVTCA  1
#else
#define M_OVTCA  0
#endif


typedef enum _cas_des_mode_e
{
    m_casDesmode_Single,
    m_casDesmode_multi,
}CAS_STDesMode_E;

typedef struct _Stru_Date{
MBT_U16 	                m_byDay;
MBT_U16  			m_byMonth;               
MBT_U16                        m_wYear;
}Stru_Date;

typedef struct _ca_pidinfo
{
    MET_PTI_PID_T stEcmPid;
    MBT_U8 u8Valid;
    MBT_U8 u8StreamPIDNum;
    MET_PTI_PID_T stStreamPid[m_MaxPidInfo];
}CA_STPIDINFO;

typedef struct _cast_ecmctr_t
{
    MBT_U16 u16ServiceID;
    MBT_U8 u8Valid;
    MBT_U8 u8EcmPIDNum;
    CA_STPIDINFO stDecPidInfo[m_MaxPidInfo];
}CA_STEcmCtr;

#define cam_InvalidPID MM_PTI_INVALIDPID
#define cam_InvalidID MM_PTI_INVALIDID
#define cam_InvalidTransInfo 0xffffffff

typedef struct{
	MBT_CHAR		byParentCardSN[17];
	MBT_U8		byUpdateStatus;
	MBT_U8		byReserved[2];
    TIMER_M  stCDUpdateTime;   
}CDCAST_CDUpdateStatus;

typedef MBT_VOID (*CA_OSDCallback)( MBT_S32 iType,MBT_U32 stPid, MBT_VOID *pData,MBT_S32 iDataSize);


extern MBT_S32 CAF_GetFeatureMark(MBT_U16 u16OperatorID,MBT_U32 * BouquetID,MBT_U32 * AreaCode,MBT_U32 * pu32FeatureList);
extern MBT_S32 CAF_GetFeedData(MBT_U16 u16TVSID);
extern MBT_S32 CAF_SetFeedData(MBT_U16 u16TVSID);
extern MBT_VOID CAF_StopEcm (MBT_VOID);
extern MBT_VOID CAF_StartEcm(CA_STPIDINFO * pstCurPrgCasPidInfo,MBT_U32 u32TransInfo,MBT_U16 u16CurServiceID,CA_STEcmCtr * pstEcmCtr,MBT_S32 s32EcmCtrNum);
extern MBT_VOID CAF_SwitchDes2MultiMode(CA_STEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum);

extern MBT_VOID CAF_SetEmmPid(MBT_U16 stCurEmmPID);
extern MBT_VOID CAF_GetRegin(MET_PTI_FilterHandle_T stFilterHandle,CDCA_U8 *pu8MsgData ,MBT_S32 uSectionLen);
extern MBT_VOID CAF_StopAllCaFilter(MBT_VOID);
extern MBT_BOOL CAF_InitSTBID(MBT_VOID);
extern MBT_BOOL CAF_InitCa(MBT_VOID(* pNotifyCallBack)(MBT_S32 iType, MBT_U32 stPid, MBT_VOID * pData, MBT_S32 iDataSize));
extern MBT_BOOL CAF_IsSCInsertSTB(MBT_VOID);
extern MBT_VOID CAF_CDDateToDate(Stru_Date *psDate,MBT_U16 UShortDate);
extern MBT_VOID TFCAF_CDInGetCDInfo(MBT_VOID);
extern MBT_VOID TFCAF_WrtieCDUpdateInfo(TIMER_M *pstTime,MBT_U8 byUpdateStatus);
extern MBT_S32 TFCAF_ReadCDUpdateInfo(CDCAST_CDUpdateStatus *pstCDUpdateInfo);
extern MBT_VOID CAF_ClearDataAll(MBT_VOID);
extern MBT_VOID CAF_CheckCMAMInfo(MBT_VOID);
extern MBT_BOOL CAF_IsCurPrgEcm(MET_PTI_PID_T stPassedEcmPID);
extern MBT_U16 CAF_GetCurPrgEcmPid(MBT_VOID);
/*---------------------------以上接口是STB提供给CA_LIB-------------------------------------*/

#ifdef   __cplusplus
}
#endif

#endif   

