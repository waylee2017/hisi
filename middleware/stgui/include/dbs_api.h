/********************************************************************************
 *
 * COPYRIGHT (C)  Blossoms Digital Technology Co., Ltd. 2005.
 *
 * File name   : dbs_api.h
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
  
#ifndef __DBASE_H__
#define __DBASE_H__

#ifdef __cplusplus
	extern "C" {
#endif

#include "mm_common.h"


#define PAT_PID                         0x00  /* program association */
#define CAT_PID                         0x01  /* conditional access */
#define NIT_PID                         0x10  /* network information */
#define SDT_PID                         0x11  /* service description */
#define BAT_PID                         0x11  /* service description */   
#define EIT_PID                         0x12  /* event information */
#define RST_PID                         0x13  /* running status */
#define TDT_PID                         0x14  /* Time and Date */

#define PAT_TABLE_ID                    0x00
#define CAT_TABLE_ID                    0x01
#define PMT_TABLE_ID                    0x02
#define NIT_ACTUAL_NETWORK_TABLE_ID     0x40
#define NIT_OTHER_NETWORK_TABLE_ID      0x41
#define SDT_ACTUAL_TS_TABLE_ID          0x42
#define SDT_OTHER_TS_TABLE_ID           0x46
#define BAT_TABLE_ID                    0x4a /* Bouquet Association Table */
#define EIT_TABLE_PF_ACTUAL_ID                    0x4e
#define EIT_TABLE_PF_OTHER_ID                    0x4f
#define EIT_TABLE_SCHEDULE_ACTUAL_ID                    0x50
#define EIT_TABLE_SCHEDULE_LATE_ID                    0x51
#define EIT_TABLE_SCHEDULE_OTHER_ID                    0x60
#define TDT_TABLE_ID                    0x70
#define TOT_TABLE_ID            0x73  /* Time Offset Table */

#define m_OtaInfoValidMark            0x55

#define VIDEO_STATUS						0
#define AUDIO_STATUS						1

#define AUDIOL_R_BIT_MASK	                0x03
#define FREECA_BIT_MASK                     0x04
#define SKIP_BIT_MASK	                    0x08
#define FAVOURITE_BIT_MASK                  0x10
#define LOCK_BIT_MASK				        0x20
#define MOVE_BIT_MASK				        0x40
#define DEL_BIT_MASK                        0x80

#define dbsm_invalideChannelFilter  0x7fff7fff
#define dbsm_GtplGenreNameLen    0x28
#define dbsm_GtplMaxGenreNum    (32)
#define dbsm_GtplDefaultBouquetID    (0x62d1)

#define dbsm_MaxNvodRefPrgNum (500)
#define dbsm_MaxNvodRefEventNum (500)

#define dbsm_GtplNetworkID    (40994)
#define dbsm_KCBPLNetworkID    (40995)

#define DEFAULT_OPERATOR_NETWORKID  0x0//(0x0621)
#define DEFAULT_OPERATOR_NETWORKNAME "XXXXXX"

/* all the fixed PID definitions*/

typedef enum
{
    E_SI_STREAM_MPEG1_VID           = 0x01,
    E_SI_STREAM_MPEG2_VID           = 0x02,
    E_SI_STREAM_MPEG1_AUD           = 0x03,
    E_SI_STREAM_MPEG2_AUD           = 0x04,
    E_SI_STREAM_PRIVATE_DATA        = 0x06,
    DC2_STREAM_TYPE                 = 0x82,
    E_SI_STREAM_DSMCC_DATA_TYPE_A   = 0x0A,
    E_SI_STREAM_DSMCC_DATA_TYPE_B   = 0x0B,
    E_SI_STREAM_DSMCC_DATA_TYPE_C   = 0x0C,
    E_SI_STREAM_DSMCC_DATA_TYPE_D   = 0x0D,
    E_SI_STREAM_DSMCC_DATA_TYPE_E   = 0x0E,
    E_SI_STREAM_AAC_AUD             = 0x0F,
    E_SI_STREAM_MPEG4_VID       = 0x10,
    E_SI_STREAM_MPEG4_AUD           = 0x11,
    E_SI_STREAM_AVCH264_VID         = 0x1B,
    E_SI_STREAM_HEVC_VID            = 0x24,
    E_SI_STREAM_AVS_VID                 =0x42,
    E_SI_STREAM_AVS_AUD                 =0x43,
    E_SI_STREAM_AVS_PRIVATE_DATA        =0x45,
    E_SI_STREAM_OP_MEPG2_VID        = 0x80,
    E_SI_STREAM_AC3_AUD             = 0x81,
 } E_SI_StreamType;


typedef enum//ISO 639: 3-letter codes
{
    E_LANGUAGE_CATALAN,
    E_LANGUAGE_CZECH,
    E_LANGUAGE_DANISH,
    E_LANGUAGE_GERMAN,
    E_LANGUAGE_ENGLISH,
    E_LANGUAGE_SPANISH,
    E_LANGUAGE_GREEK,
    E_LANGUAGE_FRENCH,
    E_LANGUAGE_CROATIAN,
    E_LANGUAGE_ITALIAN,
    E_LANGUAGE_HUNGARIAN,
    E_LANGUAGE_DUTCH,
    E_LANGUAGE_NORWEGIAN,
    E_LANGUAGE_POLISH,
    E_LANGUAGE_PORTUGUESE,
    E_LANGUAGE_RUSSIAN,
    E_LANGUAGE_ROMANIAN,
    E_LANGUAGE_SLOVENIAN,
    E_LANGUAGE_SERBIAN,
    E_LANGUAGE_FINNISH,
    E_LANGUAGE_SWEDISH,
    E_LANGUAGE_BULGARIAN,
    E_LANGUAGE_TURKISH,
    E_LANGUAGE_GAELIC,
    E_LANGUAGE_WELSH,
    E_LANGUAGE_NETHERLANDS,//no in ISO639
    E_LANGUAGE_ARABIC,
    E_LANGUAGE_HEBREW,
    E_LANGUAGE_QAA,//no in ISO639
    E_LANGUAGE_KOREAN,
    E_LANGUAGE_JAPANESE,
    E_LANGUAGE_CHINESE,
    E_LANGUAGE_PAPUANAUSTRALIAN,
    E_LANGUAGE_GERMANMIDDLEHIGH,
    E_LANGUAGE_PERSIAN,
    E_LANGUAGE_ESTONIAN,
    E_LANGUAGE_LITHUANIAN,
    E_LANGUAGE_BASQUE,
    E_LANGUAGE_GALLEGAN,
    E_LANGUAGE_SLOVAK,
    E_LANGUAGE_UKRAINIAN,
    E_LANGUAGE_SERBOCROATIAN,
    E_LANGUAGE_MACEDONIAN,
    E_LANGUAGE_ALBANIAN,
    E_LANGUAGE_LATVIAN,
    E_LANGUAGE_IRISH,
    E_LANGUAGE_HINDI,
    E_LANGUAGE_MANDARIN,//no in ISO639
    E_LANGUAGE_CANTONESE,//no in ISO639
    E_LANGUAGE_MAORI,
    E_LANGUAGE_ABKHAZIAN,
    E_LANGUAGE_ACHINESE,
    E_LANGUAGE_ACOLI,
    E_LANGUAGE_ADANGME,
    E_LANGUAGE_AFAR,
    E_LANGUAGE_AFRIHILI,
    E_LANGUAGE_AFRIKAANS,
    E_LANGUAGE_AFRO,
    E_LANGUAGE_AKAN,
    E_LANGUAGE_AKKADIAN,
    E_LANGUAGE_ALEUT,
    E_LANGUAGE_ALGONQUIAN,
    E_LANGUAGE_ALTAIC,
    E_LANGUAGE_AMHARIC,
    E_LANGUAGE_APACHE,
    E_LANGUAGE_ARAMAIC,
    E_LANGUAGE_ARAPAHO,
    E_LANGUAGE_ARAUCANIAN,
    E_LANGUAGE_ARAWAK,
    E_LANGUAGE_ARMENIAN,
    E_LANGUAGE_ARTIFICIAL,
    E_LANGUAGE_ASSAMESE,
    E_LANGUAGE_ATHAPASCAN,
    E_LANGUAGE_AUSTRONESIAN,
    E_LANGUAGE_AVARIC,
    E_LANGUAGE_AVESTAN,
    E_LANGUAGE_AWADHI,
    E_LANGUAGE_AYMARA,
    E_LANGUAGE_AZERBAIJANI,
    E_LANGUAGE_AZTEC,
    E_LANGUAGE_BALINESE,
    E_LANGUAGE_BALTIC,
    E_LANGUAGE_BALUCHI,
    E_LANGUAGE_BAMBARA,
    E_LANGUAGE_BAMILEKE,
    E_LANGUAGE_BANDA,
    E_LANGUAGE_BANTU,
    E_LANGUAGE_BASA,
    E_LANGUAGE_BASHKIR,
    E_LANGUAGE_BEJA,
    E_LANGUAGE_BEMBA,
    E_LANGUAGE_BENGALI,
    E_LANGUAGE_BERBER,
    E_LANGUAGE_BHOJPURI,
    E_LANGUAGE_BIHARI,
    E_LANGUAGE_BIKOL,
    E_LANGUAGE_BINI,
    E_LANGUAGE_BISLAMA,
    E_LANGUAGE_BRAJ,
    E_LANGUAGE_BRETON,
    E_LANGUAGE_BUGINESE,
    E_LANGUAGE_BURIAT,
    E_LANGUAGE_BURMESE,
    E_LANGUAGE_BYELORUSSIAN,
    E_LANGUAGE_CADDO,
    E_LANGUAGE_CARIB,
    E_LANGUAGE_CAUCASIAN,
    E_LANGUAGE_CEBUANO,
    E_LANGUAGE_CELTIC,
    E_LANGUAGE_CENTRALAMERICANINDIAN,
    E_LANGUAGE_CHAGATAI,
    E_LANGUAGE_CHAMORRO,
    E_LANGUAGE_CHECHEN,
    E_LANGUAGE_CHEROKEE,
    E_LANGUAGE_CHEYENNE,
    E_LANGUAGE_CHIBCHA,
    E_LANGUAGE_CHINOOKJARGON,
    E_LANGUAGE_CHOCTAW,
    E_LANGUAGE_CHURCHSLAVIC,
    E_LANGUAGE_CHUVASH,
    E_LANGUAGE_COPTIC,
    E_LANGUAGE_CORNISH,
    E_LANGUAGE_CORSICAN,
    E_LANGUAGE_CREE,
    E_LANGUAGE_CREEK,
    E_LANGUAGE_CREOLESANDPIDGINS,
    E_LANGUAGE_CREOLESANDPIDGINSENGLISH,
    E_LANGUAGE_CREOLESANDPIDGINSFRENCH,
    E_LANGUAGE_CREOLESANDPIDGINSPORTUGUESE,
    E_LANGUAGE_CUSHITIC,
    E_LANGUAGE_DAKOTA,
    E_LANGUAGE_DELAWARE,
    E_LANGUAGE_DINKA,
    E_LANGUAGE_DIVEHI,
    E_LANGUAGE_DOGRI,
    E_LANGUAGE_DRAVIDIAN,
    E_LANGUAGE_DUALA,
    E_LANGUAGE_DUTCHMIDDLE,
    E_LANGUAGE_DYULA,
    E_LANGUAGE_DZONGKHA,
    E_LANGUAGE_EFIK,
    E_LANGUAGE_EGYPTIAN,
    E_LANGUAGE_EKAJUK,
    E_LANGUAGE_ELAMITE,
    E_LANGUAGE_ENGLISHMIDDLE,
    E_LANGUAGE_ENGLISHOLD,
    E_LANGUAGE_ESKIMO,
    E_LANGUAGE_ESPERANTO,
    E_LANGUAGE_EWE,
    E_LANGUAGE_EWONDO,
    E_LANGUAGE_FANG,
    E_LANGUAGE_FANTI,
    E_LANGUAGE_FAROESE,
    E_LANGUAGE_FIJIAN,
    E_LANGUAGE_FINNOUGRIAN,
    E_LANGUAGE_FON,
    E_LANGUAGE_FRENCHMIDDLE,
    E_LANGUAGE_FRENCHOLD,
    E_LANGUAGE_FRISIAN,
    E_LANGUAGE_FULAH,
    E_LANGUAGE_GA,
    E_LANGUAGE_GANDA,
    E_LANGUAGE_GAYO,
    E_LANGUAGE_GEEZ,
    E_LANGUAGE_GEORGIAN,
    E_LANGUAGE_GERMANOLDHIGH,
    E_LANGUAGE_GERMANIC,
    E_LANGUAGE_GILBERTESE,
    E_LANGUAGE_GONDI,
    E_LANGUAGE_GOTHIC,
    E_LANGUAGE_GREBO,
    E_LANGUAGE_GREEKANCIENT,
    E_LANGUAGE_GREEKMODERN,
    E_LANGUAGE_GREENLANDIC,
    E_LANGUAGE_GUARANI,
    E_LANGUAGE_GUJARATI,
    E_LANGUAGE_HAIDA,
    E_LANGUAGE_HAUSA,
    E_LANGUAGE_HAWAIIAN,
    E_LANGUAGE_HERERO,
    E_LANGUAGE_HILIGAYNON,
    E_LANGUAGE_HIMACHALI,
    E_LANGUAGE_HIRIMOTU,
    E_LANGUAGE_HUPA,
    E_LANGUAGE_IBAN,
    E_LANGUAGE_ICELANDIC,
    E_LANGUAGE_IGBO,
    E_LANGUAGE_IJO,
    E_LANGUAGE_ILOKO,
    E_LANGUAGE_INDIC,
    E_LANGUAGE_INDOEUROPEAN,
    E_LANGUAGE_INDONESIAN,
    E_LANGUAGE_INTERLINGUA,
    E_LANGUAGE_INTERLINGUE,
    E_LANGUAGE_INUKTITUT,
    E_LANGUAGE_INUPIAK,
    E_LANGUAGE_IRANIAN,
    E_LANGUAGE_IRISHOLD,
    E_LANGUAGE_IRISHMIDDLE,
    E_LANGUAGE_IROQUOIAN,
    E_LANGUAGE_JAVANESE,
    E_LANGUAGE_JUDEOARABIC,
    E_LANGUAGE_JUDEOPERSIAN,
    E_LANGUAGE_KABYLE,
    E_LANGUAGE_KACHIN,
    E_LANGUAGE_KAMBA,
    E_LANGUAGE_KANNADA,
    E_LANGUAGE_KANURI,
    E_LANGUAGE_KARAKALPAK,
    E_LANGUAGE_KAREN,
    E_LANGUAGE_KASHMIRI,
    E_LANGUAGE_KAWI,
    E_LANGUAGE_KAZAKH,
    E_LANGUAGE_KHASI,
    E_LANGUAGE_KHMER,
    E_LANGUAGE_KHOISAN,
    E_LANGUAGE_KHOTANESE,
    E_LANGUAGE_KIKUYU,
    E_LANGUAGE_KINYARWANDA,
    E_LANGUAGE_KIRGHIZ,
    E_LANGUAGE_KOMI,
    E_LANGUAGE_KONGO,
    E_LANGUAGE_KONKANI,
    E_LANGUAGE_KPELLE,
    E_LANGUAGE_KRU,
    E_LANGUAGE_KUANYAMA,
    E_LANGUAGE_KUMYK,
    E_LANGUAGE_KURDISH,
    E_LANGUAGE_KURUKH,
    E_LANGUAGE_KUSAIE,
    E_LANGUAGE_KUTENAI,
    E_LANGUAGE_LADINO,
    E_LANGUAGE_LAHNDA,
    E_LANGUAGE_LAMBA,
    E_LANGUAGE_LANGUE,
    E_LANGUAGE_LAO,
    E_LANGUAGE_LATIN,
    E_LANGUAGE_LETZEBURGESCH,
    E_LANGUAGE_LEZGHIAN,
    E_LANGUAGE_LINGALA,
    E_LANGUAGE_LOZI,
    E_LANGUAGE_LUBAKATANGA,
    E_LANGUAGE_LUISENO,
    E_LANGUAGE_LUNDA,
    E_LANGUAGE_LUO,
    E_LANGUAGE_MADURESE,
    E_LANGUAGE_MAGAHI,
    E_LANGUAGE_MAITHILI,
    E_LANGUAGE_MAKASAR,
    E_LANGUAGE_MALAGASY,
    E_LANGUAGE_MALAY,
    E_LANGUAGE_MALAYALAM,
    E_LANGUAGE_MALTESE,
    E_LANGUAGE_MANDINGO,
    E_LANGUAGE_MANIPURI,
    E_LANGUAGE_MANOBO,
    E_LANGUAGE_MANX,
    E_LANGUAGE_MARATHI,
    E_LANGUAGE_MARI,
    E_LANGUAGE_MARSHALL,
    E_LANGUAGE_MARWARI,
    E_LANGUAGE_MASAI,
    E_LANGUAGE_MAYAN,
    E_LANGUAGE_MENDE,
    E_LANGUAGE_MICMAC,
    E_LANGUAGE_MINANGKABAU,
    E_LANGUAGE_MISCELLANEOUS,
    E_LANGUAGE_MOHAWK,
    E_LANGUAGE_MOLDAVIAN,
    E_LANGUAGE_MONKMER,
    E_LANGUAGE_MONGO,
    E_LANGUAGE_MONGOLIAN,
    E_LANGUAGE_MOSSI,
    E_LANGUAGE_MULTIPLE,
    E_LANGUAGE_MUNDA,
    E_LANGUAGE_NAURU,
    E_LANGUAGE_NAVAJO,
    E_LANGUAGE_NDEBELENORTH,
    E_LANGUAGE_NDEBELESOUTH,
    E_LANGUAGE_NDONGO,
    E_LANGUAGE_NEPALI,
    E_LANGUAGE_NEWARI,
    E_LANGUAGE_NIGERKORDOFANIAN,
    E_LANGUAGE_NILOSAHARAN,
    E_LANGUAGE_NIUEAN,
    E_LANGUAGE_NORSEOLD,
    E_LANGUAGE_NORTHAMERICANINDIAN,
    E_LANGUAGE_NORWEGIANNYNORSK,
    E_LANGUAGE_NUBIAN,
    E_LANGUAGE_NYAMWEZI,
    E_LANGUAGE_NYANJA,
    E_LANGUAGE_NYANKOLE,
    E_LANGUAGE_NYORO,
    E_LANGUAGE_NZIMA,
    E_LANGUAGE_OJIBWA,
    E_LANGUAGE_ORIYA,
    E_LANGUAGE_OROMO,
    E_LANGUAGE_OSAGE,
    E_LANGUAGE_OSSETIC,
    E_LANGUAGE_OTOMIAN,
    E_LANGUAGE_PAHLAVI,
    E_LANGUAGE_PALAUAN,
    E_LANGUAGE_PALI,
    E_LANGUAGE_PAMPANGA,
    E_LANGUAGE_PANGASINAN,
    E_LANGUAGE_PANJABI,
    E_LANGUAGE_PAPIAMENTO,
    E_LANGUAGE_PERSIANOLD,
    E_LANGUAGE_PHOENICIAN,
    E_LANGUAGE_PONAPE,
    E_LANGUAGE_PRAKRIT,
    E_LANGUAGE_PROVENCALOLD,
    E_LANGUAGE_PUSHTO,
    E_LANGUAGE_QUECHUA,
    E_LANGUAGE_RHAETOROMANCE,
    E_LANGUAGE_RAJASTHANI,
    E_LANGUAGE_RAROTONGAN,
    E_LANGUAGE_ROMANCE,
    E_LANGUAGE_ROMANY,
    E_LANGUAGE_RUNDI,
    E_LANGUAGE_SALISHAN,
    E_LANGUAGE_SAMARITANARAMAIC,
    E_LANGUAGE_SAMI,
    E_LANGUAGE_SAMOAN,
    E_LANGUAGE_SANDAWE,
    E_LANGUAGE_SANGO,
    E_LANGUAGE_SANSKRIT,
    E_LANGUAGE_SARDINIAN,
    E_LANGUAGE_SCOTS,
    E_LANGUAGE_SELKUP,
    E_LANGUAGE_SEMITIC,
    E_LANGUAGE_SERER,
    E_LANGUAGE_SHAN,
    E_LANGUAGE_SHONA,
    E_LANGUAGE_SIDAMO,
    E_LANGUAGE_SIKSIKA,
    E_LANGUAGE_SINDHI,
    E_LANGUAGE_SINGHALESE,
    E_LANGUAGE_SINOTIBETAN,
    E_LANGUAGE_SIOUAN,
    E_LANGUAGE_SLAVIC,
    E_LANGUAGE_SISWANT,
    E_LANGUAGE_SOGDIAN,
    E_LANGUAGE_SOMALI,
    E_LANGUAGE_SONGHAI,
    E_LANGUAGE_SORBIAN,
    E_LANGUAGE_SOTHONORTHERN,
    E_LANGUAGE_SOTHOSOUTHERN,
    E_LANGUAGE_SOUTHAMERICANINDIAN,
    E_LANGUAGE_SUKUMA,
    E_LANGUAGE_SUMERIAN,
    E_LANGUAGE_SUDANESE,
    E_LANGUAGE_SUSU,
    E_LANGUAGE_SWAHILI,
    E_LANGUAGE_SWAZI,
    E_LANGUAGE_SYRIAC,
    E_LANGUAGE_TAGALOG,
    E_LANGUAGE_TAHITIAN,
    E_LANGUAGE_TAJIK,
    E_LANGUAGE_TAMASHEK,
    E_LANGUAGE_TAMIL,
    E_LANGUAGE_TATAR,
    E_LANGUAGE_TELUGU,
    E_LANGUAGE_TERENO,
    E_LANGUAGE_THAI,
    E_LANGUAGE_TIBETAN,
    E_LANGUAGE_TIGRE,
    E_LANGUAGE_TIGRINYA,
    E_LANGUAGE_TIMNE,
    E_LANGUAGE_TIVI,
    E_LANGUAGE_TLINGIT,
    E_LANGUAGE_TONGANYASA,
    E_LANGUAGE_TONGAISLANDS,
    E_LANGUAGE_TRUK,
    E_LANGUAGE_TSIMSHIAN,
    E_LANGUAGE_TSONGA,
    E_LANGUAGE_TSWANA,
    E_LANGUAGE_TUMBUKA,
    E_LANGUAGE_TURKISHOTTOMAN,
    E_LANGUAGE_TURKMEN,
    E_LANGUAGE_TUVINIAN,
    E_LANGUAGE_TWI,
    E_LANGUAGE_UGARITIC,
    E_LANGUAGE_UIGHUR,
    E_LANGUAGE_UMBUNDU,
    E_LANGUAGE_URDU,
    E_LANGUAGE_UZBEK,
    E_LANGUAGE_VAI,
    E_LANGUAGE_VENDA,
    E_LANGUAGE_VIETNAMESE,
    E_LANGUAGE_VOLAPUK,
    E_LANGUAGE_VOTIC,
    E_LANGUAGE_WAKASHAN,
    E_LANGUAGE_WALAMO,
    E_LANGUAGE_WARAY,
    E_LANGUAGE_WASHO,
    E_LANGUAGE_WOLOF,
    E_LANGUAGE_XHOSA,
    E_LANGUAGE_YAKUT,
    E_LANGUAGE_YAO,
    E_LANGUAGE_YAP,
    E_LANGUAGE_YIDDISH,
    E_LANGUAGE_YORUBA,
    E_LANGUAGE_ZAPOTEC,
    E_LANGUAGE_ZENAGA,
    E_LANGUAGE_ZHUANG,
    E_LANGUAGE_ZULU,
    E_LANGUAGE_ZUNI,
    E_LANGUAGE_NUM,           //Language maximum Custom Set to adjust this enum position
} DBS_ISO639AudLANGUAGE;

#define DVB_INVALID_LINK						(-1)
/*每轮要接收一次完整的sdt other 34个子表，留18秒*/
#if(1 == TFCONFIG)  
#define BEARTRATE 2
#else
#define BEARTRATE 30
#endif


#define MAX_SERVICE_NAME_LENGTH	 23
#define MAX_EVENT_NAME_LENGTH	 51
#define MAX_EVENT_DESCRIPTOR_LENGTH	 91
#define MAX_EPG_TIMER_NUM  32
#define MAX_TRIGER_TIMER_NUM  3
#define MAX_PRG_PID_NUM  6
#define m_MaxGenreType 7

#define dbsm_InvalidLCN 0x1fff
#define dbsm_InvalidID MM_PTI_INVALIDID
#define dbsm_InvalidTransInfo 0xffffffff
#define dbsm_InvalidPID MM_PTI_INVALIDPID

#define dbsm_defaultVolume (16)

typedef enum
{
    FIRST_EARLY,
    SAME,
    FIRST_LATE
}TIME_COMPARE;


typedef enum
{
    m_Polar_H,
    m_Polar_V,
    m_Polar_L,
    m_Polar_R,
    m_Polar_Max
}DbsPolar;

typedef enum
{
    m_ChannelList = 0x00010000,
    m_FavList1 =    0x00010001,
    m_FavList2 =    0x00010002,
    m_FavList3 =    0x00010004,
    m_FavList4 =    0x00010008,
    m_FavList5 =    0x00010010,
    m_FavList6 =    0x00010020,
    m_FavList7 =    0x00010040,
    m_FavList8 =    0x00010080,
    m_FavList9 =    0x00010100,
    m_FavListA =    0x00010200,
    m_HD_Channel =  0x00014000,
    m_ListInvalid = 0x1fffffff,
}Dbs_PrglistType;


/* --- */
typedef enum
{
    m_UpdateSWManeal,
    m_UpdateSWAuto,
    m_UpdatePrgList,
    m_PrgListHasBeenUpdated,
    m_PrgItemHasBeenUpdated,
    m_NimLock,
    m_NimUnLock,
    m_NetWorkLock,
    m_NetWorkUnLock,
    m_GetFirstFrame,
    m_UpdateNetworID
} DbsEvent;

enum 
{
    m_VideoPidInfo,
    m_AudioPidInfo,
    m_MaxPidInfo
};

typedef struct	ca_pidinfo
{
    MET_PTI_PID_T stEcmPid  ;
    MBT_U8 u8Valid;
    MBT_U8 u8StreamPIDNum;
    MET_PTI_PID_T stStreamPid[m_MaxPidInfo];
}DBS_st2CAPIDInfo;

typedef struct	cast_ecmctr_t
{
    MBT_U16 u16ServiceID;
    MBT_U8 u8Valid;
    MBT_U8 u8EcmPIDNum;
    DBS_st2CAPIDInfo stDecPidInfo[m_MaxPidInfo];
}DBS_stCAEcmCtr;

typedef struct	dbs_genreinfo
{
    MBT_U16 u16BouquetID;
    MBT_U16 u16PrgNum;
    MBT_U8 u8GenreOrder;
    MBT_U8 u8BatVersion;
    MBT_U16 u16Reserved;
    MBT_CHAR strGenreName[dbsm_GtplGenreNameLen];
}DBS_GenreINFO;



typedef union 
{
    MBT_U32	u32TransInfo;
    struct _trans_info_
    {
        MBT_U32 uiTPFreq : 14;
        MBT_U32 uiTPQam : 3;
        MBT_U32 uiTPSymbolRate   : 15;
    }uBit;
} TRANS_INFO;

typedef struct _prg_pid_info_
{
    MBT_U16 Pid;
    MBT_U16 EcmPid;
    MBT_U8 Type;
    MBT_CHAR acAudioLanguage[3];
}PRG_PIDINFO;

#define PRG_BAT_VALID_MASK 0x01
#define PRG_SDT_VALID_MASK 0x02
#define PRG_NIT_VALID_MASK 0x04
#define PRG_ALL_VALID_MASK (PRG_BAT_VALID_MASK|PRG_SDT_VALID_MASK|PRG_NIT_VALID_MASK)

#define M_MNTSdtOther    0
#define M_MNTBATPrgList    0
#define M_MNTNITPrgList    0
#define M_SAVE_Prg_NONAME    0

typedef struct prog_info_table 
{
    MBT_U16             u16OrinetID;
    MBT_U16             u16TsID;  /*对于gtpl项目，这里只能取bat tsid*/   
    MBT_U16             u16ServiceID;       
    MBT_U16             uReferenceServiceID;		
    MBT_U16             u16CurAudioPID;
    MBT_U16             usiChannelIndexNo;
    MBT_U16             sPmtPid;	
    MBT_U16             u16FavGroup;	
    MBT_U8              u8ValidMask;	
    MBT_U8              u8Volume;	
    MBT_U8              NumPids;			
    MBT_U8              cProgramType;     
    MBT_U16              ucProgram_status;
                                    /*
                                    * bit0    =  R audio , 0 = mute
                                    * bit1    =  L audio , 0 = mute
                                    * if ((bit0==1)&&(bit1==1)) the audio track is stero
                                    * bit2    =  FreeCA  , 1 = Free
                                    * bit3    =  skip
                                    * bit4    =  teletext  1 = on
                                    * bit5    =  delete, 1 = delete
                                    * bit6    =  lock	0 = FREE,  1 = lock 
                                    * bit7    =  CAdes All  1 = CAdes video
                                    */
    MBT_U8              u8Reserved ;
    MBT_U8              u8IsHDPrg ;
    TRANS_INFO  stPrgTransInfo;
    MBT_U16 u16BouquetID[m_MaxGenreType+1];
    MBT_CHAR  cServiceName [ MAX_SERVICE_NAME_LENGTH + 1 ];
    PRG_PIDINFO Pids[MAX_PRG_PID_NUM];
} DBST_PROG;

typedef struct _Receiver_View_item_
{
    MBT_U32 u32StartTime;
    MBT_U32 u32EndTime;
    MBT_U32 u32TransID;
    MBT_U16 u16ServiceID;
    MBT_U16 u16Reserved;
}DBS_ReiceiverViewItem;


typedef struct _stprogram_name_
{
    MBT_CHAR pName[MAX_SERVICE_NAME_LENGTH + 1];
    MBT_U16 u16ServiceID;
    MBT_U8 uType;/*TV-RADIO*/
    struct _stprogram_name_ *pNext;
}PROGRAM_NAME;


typedef struct transponder_info_table 
{
    MBT_U16 u16NetWorkID;
    MBT_U16 u16Tsid;
    TRANS_INFO stTPTrans;	
} DBST_TRANS;



typedef struct EPG_TIMER_I  
{
	TIMER_M stTimer;
	MBT_CHAR       acEventName[MAX_EVENT_NAME_LENGTH+1];  
	MBT_CHAR       acDescriptor[MAX_EVENT_DESCRIPTOR_LENGTH+1];
} EPG_TIMER_M;


/*
 *      it contains the details of the box state when it was operated
  *     last time.
 */
typedef	struct	box_info_t
{
    MBT_U8 ucProgramVer;				
    MBT_S8 videoContrast;
    MBT_U8 videoBrightness;
    MBT_U8 videoSaturation;
    MBT_U16 u16VideoServiceID;
    MBT_U16 u16AudioServiceID;
    MBT_U16 u16PrevServiceID4Recall;
    MBT_U16 u16StartUpChannel;
    MBT_U16 u16NetWorkID;
    MBT_U8  videoSharpness;
    MBT_U8  videoHue;
    MBT_U32 u32VidTransInfo;
    MBT_U32 u32AudTransInfo;
    MBT_U32 u32PrevPrgNo;
    MBT_U32 u32NitValue;
	
    struct
    {
        MBT_U32 u8TunerLoopoutMode:  1;
        MBT_U32 u32PrgListType : 17;/*
                                  Dbs_PrglistType 里面的值或者为genreid
                                 */
        MBT_U32 unPowerOnPwd : 14;
        
		
        MBT_U32 bParentalLockStatus : 1;			/*0:close	1:open*/
        MBT_U32 bVideoAudioState:  1;
        MBT_U32 iVideoMode:  4;                         /*电视制式
                                                    * 0 =PAL
                                                    * 1= NTSC
                                                    * 2 = AUTO
                                                    */
        MBT_U32 TranNum : 4;
        MBT_U32 ucDlgDispTime :  5;	               
        MBT_U32 cVolLevel:  6;
        MBT_U32 TimeZone:  6;        
        MBT_U32 u8TimeshiftSize : 3;
        MBT_U32 u8AudioTrack :  2;	  /*0-自动1-右2左3立体声*/                    

        MBT_U32 uAspectRatio:  3; 
        MBT_U32 u8LCNOnOff :  1;/*1-打开  0 关闭*/         
        MBT_U32 u8Reserved :  1;
        MBT_U32 ucNetWorkLock :  1;
        MBT_U32 Language_type :1;
        MBT_U32 bMuteState:  1;
        MBT_U32 ISO_CurLanguageCode :  24;	                
    }ucBit;
} DVB_BOX;  



typedef enum
{
    m_DbsForceStop = 101,
    m_DbsTunerUnLock,
    m_DbsNitTimeOut,
    m_DbsNoNetInfo,
    m_DbsSdtTimeOut,
    m_DbsSrchAdver,
    m_DbsJumpSrchAdver
}DBS_ERROR;


/*******************************/
enum
{
     STTAPI_SERVICE_RESERVED         = 0x00,
     STTAPI_SERVICE_TELEVISION      = 0x01,
     STTAPI_SERVICE_RADIO      = 0x02,
     STTAPI_SERVICE_TELETEXT      = 0x03,
     STTAPI_SERVICE_NVOD_REFERENCE      = 0x04,
     STTAPI_SERVICE_NVOD_TIME_SHIFT = 0x05,
     STTAPI_SERVICE_MOSAIC      = 0x06,
     STTAPI_SERVICE_PAL_CODE_SIGNAL             = 0x07,
     STTAPI_SERVICE_SECAM_CODE_SIGNAL           = 0x08,
     STTAPI_SERVICE_D_D2_MAC       = 0x09,
     STTAPI_SERVICE_FM_RADIO           = 0x0A,
     STTAPI_SERVICE_NTSC_CODE_SIGNAL           = 0x0B,
     STTAPI_SERVICE_DATA_BROADCAST           = 0x0C
};



enum
{
    MOSAIC_ENTRY_POINT,	      
    MOSAIC_NOT_ENTRY_POINT
};

typedef struct _list_mosaic_
{
    MBT_U16 screen_left;
    MBT_U16 screen_top;
    MBT_U16 screen_right;
    MBT_U16 screen_bottom;

    MBT_U8 X_total;
    MBT_U8 Y_total;
    MBT_U16  True_window_num;/*逻辑屏幕个数*/
    MBT_U8 Unite_window_num;/*如果没有联合，置零*/
    MBT_U8 Unite_logital_index;
    MBT_U8 Unite_X_total;
    MBT_U8 Unite_Y_total;
    MBT_S32 iselect;             /*记录当前的index*/
}MOSAIC_POSITION;

typedef	struct _ui_event_item_
{
    MBT_U16 u16EventType;
    MBT_U8 uDutationTime[3];
    MBT_U8 uStartTime[5];
    MBT_CHAR event_name[MAX_EVENT_NAME_LENGTH+1];
    MBT_CHAR item_description[MAX_EVENT_DESCRIPTOR_LENGTH+1];
} UI_EVENT;  

typedef	struct _ui_timeshift_event_item_
{
    MBT_U16 u16ServiceID;                                                    
    MBT_U16 uReferencedServiceID;                                                    
    MBT_U8 uStartTime[5];
    MBT_U8 uDutationTime[3];
} UI_TSHIFT_EVENT;  

typedef	struct _ui_reference_event_item_
{
    MBT_CHAR event_name[MAX_EVENT_NAME_LENGTH+1];
    MBT_CHAR item_description[MAX_EVENT_DESCRIPTOR_LENGTH+1];
} UI_REF_EVENT;  

typedef	struct _ui_prg_
{
    DBST_PROG stService;
    MBT_U8 u8FavListLcn;
    MBT_U8 uReserved;
    MBT_U16 u16LogicNum;                                            
} UI_PRG;  

typedef	struct _update_sw_
{
    TRANS_INFO stTransInfo;
    MET_PTI_PID_T stPid;
    MBT_U16 u16NewVer;                                            
} Dbs_UpdateSW;  




typedef struct 
{
    TRANS_INFO stUpdateTransInfo;
    MBT_U8 u8Valid;
    MBT_U8 u8Reserved;
    MBT_U16 u16PID;
}OTA_DIRECT_UPDATE_PARA;

#define m_BcdToHex(u8Bcd) ((MBT_S32)(((((u8Bcd)&0xF0)>>4)*10)+((u8Bcd)&0xF)))

extern MBT_BOOL DBSF_DVBDbaseInit(MBT_VOID);
extern MBT_BOOL DBSF_DataHaveRadioPrg( MBT_VOID );
extern MBT_BOOL DBSF_DataHaveFavRadioPrg( MBT_VOID );
extern MBT_BOOL DBSF_DataHaveVideoPrg( MBT_VOID );
extern MBT_BOOL DBSF_DataHaveFavVideoPrg( MBT_VOID );
extern MBT_BOOL DBSF_GetEventByEventID(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,MBT_U16 u16EventId,UI_EVENT *pEventItem);
extern MBT_BOOL DBSF_DateJudge (MBT_U8 Year, MBT_U8 Month, MBT_U8 Date);
extern MBT_BOOL DBSF_NVDGetCertainRefEvent(MBT_U16 u16RefEventID,UI_REF_EVENT * pstRefEvent);
extern MBT_BOOL DBSF_NVDGetCertainTShiftEventInfo(MBT_U16 u16RefEventID,MBT_U16 u16EventID,UI_TSHIFT_EVENT *pstTShiftEvent);

/*********************************************************************
 * Function Name : DBSF_SrchStartAutoSrch
 * Type ：Global & Subroutine
 * Prototype :
 *		MBT_S32 DBSF_SrchStartAutoSrch(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess));
 *
 * Input 	:	pProcessNotify  用秋告知调用者当前的搜索进度
 *                                                                第完成一个频点会调用一次
 *                                                                (iProcess 0~100,如果iProcess>100,则必为
 *                                                                  m_DbsForceStop = 101,
 *                                                                  m_DbsTunerUnLock,
 *                                                                  m_DbsNitTimeOut,
 *                                                                  m_DbsNoNetInfo,
 *                                                                  m_DbsSdtTimeOut,
 *                                                                  m_DbsNoPrgInfo
 *                                                                 中间一个)
 *                                                                当iProcess 为100时搜索已经完成,节目已经保存
 *                                                                iProcess
 *
 *
 * Output	: 无
 *
 * Return : MBT_BOOL  MM_TRUE 开始成功 MM_FALSE 失败
 *
 * Global Variables Used	:无
 *
 * Callers :
 *
 * Callees :
 *
 * Purpose :
 *		1. 开始自动搜索
 * Theory of Operation :
 *                此函数需要与函数DBSF_EndAutoSrch配对使用
 *                否则在搜索未完成时可能不能保存节目
 *********************************************************************/
extern MBT_BOOL DBSF_SrchStartAutoSrch(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess,TRANS_INFO stTrans),TRANS_INFO stTransInfo,MBT_U32 u32EndFrenq,MBT_BOOL bSrchPmt,MBT_BOOL bUseNitTPList);
extern MBT_BOOL DBSF_MntIsTSTimeGot(void);
extern MBT_BOOL DBSF_PlyGetAduLanguageCode(DBS_ISO639AudLANGUAGE eAudType,MBT_CHAR * pstrCode);
extern MBT_BOOL DBSF_NVDHavePrg(MBT_VOID);
extern DBS_ISO639AudLANGUAGE DBSF_PlyGetAduLanguageType(MBT_CHAR *pstrCode);
extern MBT_U32 DBSF_ListGetPrgListType(MBT_CHAR *pstrName);

extern MBT_VOID DBSF_CTRRegisterCASFunc(MBT_BOOL (*pCheckSystemID)(MBT_U16 u16SystemID),
                                    MBT_VOID (*pStartEcm)(DBS_st2CAPIDInfo *pstCurPrgCasPidInfo,MBT_U16 u16CurServiceID,DBS_stCAEcmCtr *pstEcmCtr,MBT_S32 s32EcmCtrNum),
                                    MBT_VOID (*pStopEcm)(MBT_VOID),
                                    MBT_VOID (*pStartEmm)(MBT_U16 u16EmmPID),
                                    MBT_VOID (*pStopEmm)(MBT_VOID),
                                    MBT_VOID (*pParseNIT)(MBT_U8 *pu8Data ,MBT_S32 s32Len));
extern MBT_VOID DBSF_NVDEndSrch(MBT_VOID);
extern MBT_VOID DBSF_ListSetPrgListType(MBT_U32 u32PrgListType);
extern MBT_VOID DBSF_SrchStartPrgSrch(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess,TRANS_INFO stTrans),TRANS_INFO stTransInfo,MBT_BOOL bSrchPmt);
extern MBT_VOID DBSF_SrchEndPrgSrch(MBT_VOID);
extern MBT_VOID DBSF_PlyStartPrgPlay(DBST_PROG * pstProInfo);
extern MBT_VOID DBSF_PlyPrgPlayChgAudioPID(DBST_PROG *pstService);
extern MBT_VOID DBSF_ResetAll(MBT_VOID);
extern MBT_VOID DBSF_ResetProg(MBT_VOID);
extern MBT_VOID DBSF_StopAll(MBT_VOID);
extern MBT_VOID DBSF_StopAllFilter(MBT_VOID);
extern MBT_VOID DBSF_TdtTime2SystemTime(MBT_U8 * puTdtTime, TIMER_M * pTimer);
extern MBT_VOID DBSF_AdjustUTCTime2SystemTime(TIMER_M *pTimer);
extern MBT_VOID DBSF_MntGetTdtTime(MBT_U8 * puTdtTime);
extern MBT_VOID DBSF_MntTimeRunSecond(MBT_VOID);
extern MBT_VOID DBSF_GetEndTime(MBT_U8 * pu8BeginTime, MBT_U8 * pu8DuringTime, MBT_U8 * pu8EndTime);
extern MBT_VOID DBSF_DataWriteMainFreq(TRANS_INFO *pstFreq);
extern MBT_VOID DBSF_DataReadMainFreq(TRANS_INFO *pstFreq);
extern MBT_VOID DBSF_DataWriteUsbUpdateInfo(MBT_CHAR *pstrFileName);
extern MBT_VOID DBSF_DataWriteDirectUpdatePara(OTA_DIRECT_UPDATE_PARA *pstDirect);
extern MBT_VOID DBSF_DataGetDirectUpdatePara(OTA_DIRECT_UPDATE_PARA *pstDirect);
extern MBT_VOID DBSF_DataPrgEdit(DBST_PROG * pstService);
extern MBT_VOID DBSF_DataRebuildPrgOrder(DBST_PROG *pstService,MBT_U32 u32PrgNum);
extern MBT_VOID DBSF_DataRmvPrg(DBST_PROG *pstPrgInfo,MBT_U32 u32PrgNum);
extern MBT_VOID DBSF_StartAdver(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess, TRANS_INFO stTrans));
extern MBT_VOID DBSF_DataSetBoxInfo(DVB_BOX * pstBoxInfo);
extern MBT_VOID DBSF_FreeTempMemory(MBT_VOID);

extern MBT_VOID DBSF_MntStartHeatBeat(MBT_U16 u16WaitSec,MBT_BOOL bStartNow,MBT_VOID(* dbsf_pNotifyCallBack)(MBT_S32 iCmd, MBT_VOID * pMsgData, MBT_S32 iMsgDatLen));
extern MBT_VOID DBSF_MntStopHeatBeat(MBT_VOID);
extern MBT_VOID DBSF_ListSrchGetPrgNumByTypeAndTrans(MBT_S32 *ps32TVNum,MBT_S32 *ps32RadioNum,TRANS_INFO trans);
extern MBT_VOID DBSF_ListSrchGetPrgNumByType(MBT_S32 * ps32TVNum,MBT_S32 * ps32RadioNum);
extern MBT_VOID DBSF_GetGMTtime(TIMER_M *pstTimer);
extern MBT_VOID DBSF_PlyStopPrgPlay(MBT_VOID);
extern MBT_VOID DBSF_PlyReturnCurPrg(MBT_VOID);
extern MBT_VOID DBSF_PlyOpenVideoWin(MBT_BOOL bOpen);
extern MBT_VOID DBSF_PlyLock(MBT_VOID);
extern MBT_VOID DBSF_PlyUnlock(MBT_VOID);
extern MBT_VOID DBSF_DataLCNOn(MBT_VOID);
extern MBT_VOID DBSF_DataLCNOff(MBT_VOID);

/*返回需要搜索的频点数*/
extern MBT_S32 DBSF_NVDStartSrch(MBT_VOID(* pProcessNotify)(MBT_S32 iProcess, TRANS_INFO stTrans));
/*
最多支持dbsm_MaxNvodRefPrgNum(500)个
*/
extern MBT_S32 DBSF_NVDGetAllRefPrgServiceID(MBT_U16 *pu16ServiceIdList);
extern MBT_S32 DBSF_GetPrgSrchTaskProcess(TRANS_INFO * pstTPTrans);
extern MBT_S32 DBSF_NVDGetTaskProcess(TRANS_INFO * pstTPTrans);
extern MBT_S32 DBSF_DataGetPrgTransXServicID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo, MBT_U16 u16ServiceID);
extern MBT_S32 DBSF_DataGetPrgTransXPID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo, MET_PTI_PID_T stVideoPID, MET_PTI_PID_T stAudioPID);
extern MBT_S32 DBSF_DataPosPrg2XLCN(MBT_S32 iPrgLCN, UI_PRG * pstPrgInfo, MBT_U8 u8TVRadioType);
extern MBT_S32 DBSF_DataCurPrgInfo(UI_PRG * pstPrgInfo);
extern MBT_S32 DBSF_DataNextPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 u8TVRadioType);
extern MBT_S32 DBSF_DataPrevPrgInfo(UI_PRG * pstPrgInfo,MBT_U8 u8TVRadioType);
extern MBT_S32 DBSF_DataGetListPrgNum(MBT_VOID);
extern MBT_S32 DBSF_DataPos2NextUnlockPrg(UI_PRG * pstPrgInfo, MBT_U8 u8TVRadioType);
extern MBT_S32 DBSF_DataGetPrgArrayTransX(MBT_U32 u32TransInfo,UI_PRG *pstPrgInfo,MBT_U32 u32ArrayLen);
extern MBT_S32 DBSF_DataPosPrgTransXServiceID(UI_PRG * pstPrgInfo, MBT_U32 u32TransInfo,MBT_U16 u16ServiceID);
extern MBT_S32 DBSF_CompareTime(MBT_U8 * pu8Time1, MBT_U8 * pu8Time2, MBT_U8 u8Count);
extern MBT_S32 DBSF_GetXDayEventNumber(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,TIMER_M stCurTime, MBT_U16 * pu16EventId, MBT_BOOL * pUpdate);
extern MBT_S32 DBSF_GetTwoHourEventNumber(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,TIMER_M stCurTime,MBT_U16 *pu16EventId,MBT_BOOL *pUpdate);
extern MBT_S32 DBSF_NVDGetTShiftEventNum(MBT_U16 u16RefEventID, MBT_U16 * pu16EventIdList, MBT_BOOL * pUpdate);
/*
最多支持dbsm_MaxNvodRefEventNum(500)个
*/
extern MBT_S32 DBSF_NVDGetEventIDListFromCertainRefPrg(MBT_U16 * pu16EventIdList,MBT_BOOL * pUpdate);
extern MBT_S32 DBSF_DataCreatePrgArray(DBST_PROG *pstPrgInfo,MBT_U32 u32MaxPrgNum);
extern MBT_S32 DBSF_DataGetPrgByServiceID(UI_PRG * pstPrgInfo,MBT_U16 u16ServiceID);
extern MBT_S32 DBSF_NVDGetCertainRefPrg(MBT_U16 u16RefPrgServiceID,UI_PRG * pstPrgInfo);


extern MBT_U8 DBSF_EpgGetPFEvent(MBT_U32 u32TransInfo,MBT_U16 u16ServiceID,UI_EVENT * pstCurEvent, UI_EVENT * pstNextEvent);
extern MBT_S32 DBSF_GetTimeZoneDiff(MBT_U32 u32TimeZone);

extern DVB_BOX * DBSF_DataGetBoxInfo (MBT_VOID);
extern MET_PTI_PID_T DBSF_PlyGetCurVideoPID(MBT_U16 u16ServiceID);
extern MET_PTI_PID_T DBSF_PlyGetCurPcrPID(MBT_U16 u16ServiceID);
extern MET_PTI_PID_T DBSF_PlyGetCurAudPID(MBT_U16 u16ServiceID);

extern MBT_S32 DBSF_DataGetGenreListNum(MBT_VOID);
extern MBT_S32 DBSF_DataGetGenreList(DBS_GenreINFO *pstGenreList);
extern MBT_U8 DBSF_ListGetLCNStatus(MBT_VOID);

extern MBT_BOOL DBSF_DataGetSpecifyIDGenreNode(DBS_GenreINFO *pstGenreNode,MBT_U16 u16BouquetID);
extern MBT_U32 DBSF_NVDGetTShiftPrgTransInfo(MBT_U16 u16RefServiceID,MBT_U16 u16ServiceID);
extern MBT_U32 DBSF_GetDayOfMonth(MBT_U32 u32Year,MBT_U32 u32Month);
#ifdef __cplusplus
}
#endif

#endif      /* __DBASE_API_H__ */

