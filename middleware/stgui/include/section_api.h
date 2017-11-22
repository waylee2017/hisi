/********************************************************************************
 *
 * COPYRIGHT (C)  Blossoms Digital Technology Co., Ltd. 2005.
 *
 * File name   : section_api.h
 * Description : Dbase Interface for other purpose.
 * Revision    : 1.0.3
 *
 * History:
 *	Date					Modification							Revision
	----					------------							--------
 *  2005.08.16				Created									1.0.0
 *  2005.08.22				Added some functions					1.0.1
 *  2005.08.30				Added getting Revision info				1.0.2
 *  2005.09.02				Added a function for Tuner				1.0.3
*********************************************************************************/
  
#ifndef __SECTION_API_H__
#define __SECTION_API_H__

#ifdef __cplusplus
	extern "C" {
#endif

#include "mm_common.h"
#include "apptimer.h"

#define MAX_NUM_OF_FREE_SLOTS 32         // 有3个slot已被占用 video, audio, pcr    for ipanel
#define MAX_FILTER_PER_SLOT    32 // for ipanel
#define  FILTER_DEPTH_SIZE                 16

typedef enum
{
    NIT_FILTER = 0,
    EMM_FILTER_REG0,
    EMM_FILTER_REG1,
    EMM_FILTER_REG2,
    EMM_FILTER_REG3,
    EMM_FILTER_REG4,
    PMT_FILTER,
    CAT_FILTER,
    TDT_FILTER,
    PAT_FILTER,
    EIT_FILTER1,/*PF start*/
    EIT_FILTER2,/*actrue start*/
    EIT_FILTER3,/*other start*/
    BAT_FILTER,
    SDT_FILTER0,
    SDT_FILTER1,
    ECM_FILTER1,
    ECM_FILTER2,
    ECM_FILTER3,
    ECM_FILTER4,
    ECM_FILTER5,
    ECM_FILTER6,
    ECM_FILTER7,
    ECM_FILTER8,
    ECM_FILTER9,
    ECM_FILTER10,
    ECM_FILTER11,
    ECM_FILTER12,
    ECM_FILTER13,
    ECM_FILTER14,
    ECM_FILTER15,
    MAX_MONITOR_SECTION
}MONITER_SECTION;


/*cp from ipanel i/f */
enum
{
    IPANEL_FILTER_MONITOR_RECEIVE_MODE,
    IPANEL_STRAIGHT_RECEIVE_MODE,
    IPANEL_RECEIVE_MODE2,
    IPANEL_NEG_VERSION_RECEIVE_MODE,
    IPANEL_RECEIVE_MODE3,
    IPANEL_BATCH_NO_VERSION_RECEIVE_MODE,
    IPANEL_RECEIVE_MODE4,
    IPANEL_NO_VERSION_RECEIVE_MODE  
};



typedef MBT_VOID (*ParseCallBack)(MET_PTI_PID_T stCurPid,MET_PTI_FilterHandle_T stFilterHandle,MBT_U8 *pu8MsgData,MBT_S32 iMsgLen);

extern MONITER_SECTION SRSTF_GetMonitorFilterIndex(MET_PTI_FilterHandle_T stFilterHandle);
extern MBT_U32 SRSTF_OpenDataParseChannel(MBT_U32 uPriority,MBT_U32 iStackSize);
extern MBT_VOID SRSTF_CloseDataParseChannel(MBT_U32 Handle);

extern MBT_BOOL SRSTF_FilterStopOrNot(MET_PTI_FilterHandle_T iFilterHandle,MBT_S32 iTatleSection,ParseCallBack ParseCall);
extern MMT_STB_ErrorCode_E SRSTF_CancelAllSectionReq (MBT_VOID);
extern MBT_VOID SRSTF_ClsTrigerTimer(MET_PTI_FilterHandle_T iFilterHandle,ParseCallBack ParseCall);

extern MMT_STB_ErrorCode_E SRSTF_DeleteFilter(MET_PTI_FilterHandle_T stFilterHandle);
extern MMT_STB_ErrorCode_E SRSTF_SectionFilterInit ( MBT_VOID );
extern MMT_STB_ErrorCode_E SRSTF_SectionFilterTerm ( MBT_VOID );


extern MBT_U32 SRSTF_StopSpecifyFilter(MONITER_SECTION iFilterHandle, ParseCallBack ParseTable);
extern MBT_U32 SRSTF_SetSpecifyFilter(MONITER_SECTION iFilterIndex,
                                                                ParseCallBack ParseTable,
                                                                Timer_TriggerNotifyCall pTimeNotifyCall,
                                                                MBT_U8* pbyFilter,
                                                                MBT_U8* pbyMask,
                                                                MBT_U8 byLen, 
                                                                MET_PTI_PID_T stPid, 
                                                                MBT_S32 iSlotBuffer,
                                                                MBT_U8 u32WaitSeconds,
                                                                MBT_U8 uFilterState,
                                                                MET_PTI_FilterHandle_T *pstFilterHandle);
                                                                
extern MBT_U32 SRSTF_SrchSectTable( ParseCallBack ParseTable,
                                                                    MET_PTI_PID_T stPid, 
                                                                    MBT_U32 u32SlotBuffer, 
                                                                    MBT_U8 * pstData, 
                                                                    MBT_U8 * pstMask, 
                                                                    MBT_U32 wide,
                                                                    MBT_U8 u32WaitSeconds,
                                                                    Timer_TriggerNotifyCall pTimeNotifyCall,
                                                                    MBT_U8 uFilterMode,
                                                                    MET_PTI_FilterHandle_T *pstFilterHandle);
#ifdef __cplusplus
}
#endif

#endif      /* __DBASE_API_H__ */

