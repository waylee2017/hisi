#ifndef _COMMON_SEARCH_SE_H__
#define _COMMON_SEARCH_SE_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#include "hi_adp_search.h"

#define CAPTION_SERVICE_DESCRIPTOR 0x86

#define CAPTION_SERVICE_MAX 16
#define TTX_DES_MAX    10
#define TTX_MAX        15
#define MAX_PROG_NUM 30


typedef struct hiPMT_CLOSED_CAPTION_S
{
    HI_U32 u32LangCode;
    HI_U8 u8IsDigitalCC;
    HI_U8 u8ServiceNumber;
    HI_U8 u8IsEasyReader;
    HI_U8 u8IsWideAspectRatio;
}PMT_CLOSED_CAPTION_S;

typedef struct hiPMT_TTX_DES_S
{
    HI_U32 u32ISO639LanguageCode; /* low 24-bit valid */
    HI_U8  u8TtxType;
    HI_U8  u8TtxMagazineNumber;
    HI_U8  u8TtxPageNumber;
} PMT_TTX_DES_S;

typedef struct hiPMT_TTX_S
{
    HI_U16 u16TtxPID;

    HI_U8 u8DesTag;
    HI_U8 u8DesLength;

    HI_U8 u8DesInfoCnt;

    PMT_TTX_DES_S stTtxDes[TTX_DES_MAX];

} PMT_TTX_S;


typedef struct hiPMT_TABLE_S
{
    HI_U16 u16ServiceID;
    HI_U16 u16PcrPid;
    HI_U16 u16VideoNum;
    HI_U16 u16AudoNum;
    PMT_VIDEO Videoinfo[PROG_MAX_VIDEO];
    PMT_AUDIO Audioinfo[PROG_MAX_AUDIO];

    HI_U16 u16SubtitlingNum;
    PMT_SUBTITLE SubtitingInfo[SUBTITLING_MAX];
    HI_U16 u16ClosedCaptionNum;
    PMT_CLOSED_CAPTION_S stClosedCaption[CAPTION_SERVICE_MAX];
    HI_U16 u16ARIBCCPid;

    HI_U16 u16TtxNum;
    PMT_TTX_S stTtxInfo[TTX_MAX];
}PMT_TABLE_S;


typedef struct hiPMT_COMPACT_PROGRAM_S
{
    HI_U32 ProgID;          /* program ID */
    HI_U32 PmtPid;          /*program PMT PID*/
    HI_U32 PcrPid;          /*program PCR PID*/

    HI_U32   VideoType;
    HI_U16               VElementNum;        /* video stream number */
    HI_U16               VElementPid;        /* the first video stream PID*/

    HI_U32   AudioType;
    HI_U16               AElementNum;        /* audio stream number */
    HI_U16               AElementPid;        /* the first audio stream PID*/

    PMT_AUDIO Audioinfo[PROG_MAX_AUDIO];     /* multi-audio info, added by gaoyanfeng 00182102 */

    HI_U16              u16SubtitlingNum;
    PMT_SUBTITLE SubtitingInfo[SUBTITLING_MAX];
    HI_U16               u16ClosedCaptionNum;
    PMT_CLOSED_CAPTION_S stClosedCaption[CAPTION_SERVICE_MAX];
    HI_U16              u16ARIBCCPid;

    HI_U16 u16TtxNum;
    PMT_TTX_S stTtxInfo[TTX_MAX];
} PMT_COMPACT_PROGRAM_S;

typedef struct hiPMT_COMPACT_TABLE_S
{
    HI_U32            prog_num;
    PMT_COMPACT_PROGRAM_S *proginfo;
} PMT_COMPACT_TABLE_S;

HI_S32		SRH_ParsePMTSe ( const HI_U8 *pu8SectionData, HI_S32 s32Length, HI_U8 *pSectionStruct);
HI_S32		SRH_PMTRequestSe(HI_U32 u32DmxID,PMT_TABLE_S *pmt_tb,HI_U16 u16PmtPid, HI_U16 u16ServiceId);
/******************************************Search public interface***********************************/
HI_S32      HIADP_Search_GetAllPmtSe(HI_U32 u32DmxId,PMT_COMPACT_TABLE_S **ppProgTable);      
HI_S32      HIADP_Search_FreeAllPmtSe(PMT_COMPACT_TABLE_S *pProgTable);      

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif /*__SEARCH_H__*/
