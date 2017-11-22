 
/*******************************************************************************
File name   : sr_dbase.c
Description : Database implementation
Revision    : 2.2.0

COPYRIGHT (C) STMicroelectronics 2003.

Date         Name       Modification
----		 ----       ------------
25-06-2004   Louie      Adapted to 5517FTACI Beta tree
14-03-2004   TM         Adapted to Alpha1 tree
17-03-2004	 CS         Modified to adapt HD STB software architecture + 
                        using STPTI

17-07-2003	 BKP        Modified to adapt to maly_2 software architecture
		
07-09-1996   THT        Original Work

*********************************************************************************/

/*------------enviroment variable added for complation--------------*/

#include "dbs_share.h"

typedef struct
{
    MBT_CHAR au8LangCode[3];
    DBS_ISO639AudLANGUAGE enLangIndex;
} ST_ISO639_ALANG;

#define m_SkipFrameNum 1

static MET_Sem_T dbsv_semPlayAccess = MM_INVALID_HANDLE;   
#define Sem_DBSPlay_P()  MLMF_Sem_Wait(dbsv_semPlayAccess,MM_SYS_TIME_INIFIE)
                                                        
#define Sem_DBSPlay_V()  MLMF_Sem_Release(dbsv_semPlayAccess)

static MBT_U8 dbsv_u8SrchEpgTimerHandle = 0xff;

static MET_PTI_PID_T dbsv_u8VideoPid = dbsm_InvalidPID;
static MET_PTI_PID_T dbsv_u8AudioPid = dbsm_InvalidPID;
static MET_PTI_PID_T dbsv_u8PCRPid = dbsm_InvalidPID;
static MBT_U8 dbsv_u8AvStatus = 0;
static MBT_U8 dbsv_u8PlyLockStatus = 0;

static ST_ISO639_ALANG dbsv_stISO639_LanguageCode[] =
{
    {{'a', 'b', 'k'}, E_LANGUAGE_ABKHAZIAN},
    {{'a', 'c', 'e'}, E_LANGUAGE_ACHINESE},
    {{'a', 'c', 'h'}, E_LANGUAGE_ACOLI},
    {{'a', 'd', 'a'}, E_LANGUAGE_ADANGME},
    {{'a', 'a', 'r'}, E_LANGUAGE_AFAR},
    {{'a', 'f', 'h'}, E_LANGUAGE_AFRIHILI},
    {{'a', 'f', 'r'}, E_LANGUAGE_AFRIKAANS},
    {{'a', 'f', 'a'}, E_LANGUAGE_AFRO},
    {{'a', 'k', 'a'}, E_LANGUAGE_AKAN},
    {{'a', 'k', 'k'}, E_LANGUAGE_AKKADIAN},
    {{'a', 'l', 'b'}, E_LANGUAGE_ALBANIAN},
    {{'s', 'q', 'i'}, E_LANGUAGE_ALBANIAN},
    {{'a', 'l', 'e'}, E_LANGUAGE_ALEUT},
    {{'a', 'l', 'g'}, E_LANGUAGE_ALGONQUIAN},
    {{'t', 'u', 't'}, E_LANGUAGE_ALTAIC},
    {{'a', 'm', 'h'}, E_LANGUAGE_AMHARIC},
    {{'a', 'p', 'a'}, E_LANGUAGE_APACHE},
    {{'a', 'r', 'a'}, E_LANGUAGE_ARABIC},
    {{'a', 'r', 'c'}, E_LANGUAGE_ARAMAIC},
    {{'a', 'r', 'p'}, E_LANGUAGE_ARAPAHO},
    {{'a', 'r', 'n'}, E_LANGUAGE_ARAUCANIAN},
    {{'a', 'r', 'w'}, E_LANGUAGE_ARAWAK},
    {{'a', 'r', 'm'}, E_LANGUAGE_ARMENIAN},
    {{'h', 'y', 'e'}, E_LANGUAGE_ARMENIAN},
    {{'a', 'r', 't'}, E_LANGUAGE_ARTIFICIAL},
    {{'a', 's', 'm'}, E_LANGUAGE_ASSAMESE},
    {{'a', 't', 'h'}, E_LANGUAGE_ATHAPASCAN},
    {{'m', 'a', 'p'}, E_LANGUAGE_AUSTRONESIAN},
    {{'a', 'v', 'a'}, E_LANGUAGE_AVARIC},
    {{'a', 'v', 'e'}, E_LANGUAGE_AVESTAN},
    {{'a', 'w', 'a'}, E_LANGUAGE_AWADHI},
    {{'a', 'y', 'm'}, E_LANGUAGE_AYMARA},
    {{'a', 'z', 'e'}, E_LANGUAGE_AZERBAIJANI},
    {{'n', 'a', 'h'}, E_LANGUAGE_AZTEC},
    {{'b', 'a', 'n'}, E_LANGUAGE_BALINESE},
    {{'b', 'a', 't'}, E_LANGUAGE_BALTIC},
    {{'b', 'a', 'l'}, E_LANGUAGE_BALUCHI},
    {{'b', 'a', 'm'}, E_LANGUAGE_BAMBARA},
    {{'b', 'a', 'i'}, E_LANGUAGE_BAMILEKE},
    {{'b', 'a', 'd'}, E_LANGUAGE_BANDA},
    {{'b', 'n', 't'}, E_LANGUAGE_BANTU},
    {{'b', 'a', 's'}, E_LANGUAGE_BASA},
    {{'b', 'a', 'k'}, E_LANGUAGE_BASHKIR},
    {{'b', 'a', 'q'}, E_LANGUAGE_BASQUE},
    {{'e', 'u', 's'}, E_LANGUAGE_BASQUE},
    {{'b', 'e', 'j'}, E_LANGUAGE_BEJA},
    {{'b', 'e', 'm'}, E_LANGUAGE_BEMBA},
    {{'b', 'e', 'n'}, E_LANGUAGE_BENGALI},
    {{'b', 'e', 'r'}, E_LANGUAGE_BERBER},
    {{'b', 'h', 'o'}, E_LANGUAGE_BHOJPURI},
    {{'b', 'i', 'h'}, E_LANGUAGE_BIHARI},
    {{'b', 'i', 'k'}, E_LANGUAGE_BIKOL},
    {{'b', 'i', 'n'}, E_LANGUAGE_BINI},
    {{'b', 'i', 's'}, E_LANGUAGE_BISLAMA},
    {{'b', 'r', 'a'}, E_LANGUAGE_BRAJ},
    {{'b', 'r', 'e'}, E_LANGUAGE_BRETON},
    {{'b', 'u', 'g'}, E_LANGUAGE_BUGINESE},
    {{'b', 'u', 'l'}, E_LANGUAGE_BULGARIAN},
    {{'b', 'u', 'a'}, E_LANGUAGE_BURIAT},
    {{'b', 'u', 'r'}, E_LANGUAGE_BURMESE},
    {{'m', 'y', 'a'}, E_LANGUAGE_BURMESE},
    {{'b', 'e', 'l'}, E_LANGUAGE_BYELORUSSIAN},
    {{'c', 'a', 'd'}, E_LANGUAGE_CADDO},
    {{'c', 'a', 'r'}, E_LANGUAGE_CARIB},
    {{'c', 'a', 't'}, E_LANGUAGE_CATALAN},
    {{'c', 'a', 'u'}, E_LANGUAGE_CAUCASIAN},
    {{'c', 'e', 'b'}, E_LANGUAGE_CEBUANO},
    {{'c', 'e', 'l'}, E_LANGUAGE_CELTIC},
    {{'c', 'a', 'i'}, E_LANGUAGE_CENTRALAMERICANINDIAN},
    {{'c', 'h', 'g'}, E_LANGUAGE_CHAGATAI},
    {{'c', 'h', 'a'}, E_LANGUAGE_CHAMORRO},
    {{'c', 'h', 'e'}, E_LANGUAGE_CHECHEN},
    {{'c', 'h', 'r'}, E_LANGUAGE_CHEROKEE},
    {{'c', 'h', 'y'}, E_LANGUAGE_CHEYENNE},
    {{'c', 'h', 'b'}, E_LANGUAGE_CHIBCHA},
    {{'c', 'h', 'i'}, E_LANGUAGE_CHINESE},
    {{'z', 'h', 'o'}, E_LANGUAGE_CHINESE},
    {{'c', 'h', 'n'}, E_LANGUAGE_CHINOOKJARGON},
    {{'c', 'h', 'o'}, E_LANGUAGE_CHOCTAW},
    {{'c', 'h', 'u'}, E_LANGUAGE_CHURCHSLAVIC},
    {{'c', 'h', 'v'}, E_LANGUAGE_CHUVASH},
    {{'c', 'o', 'p'}, E_LANGUAGE_COPTIC},
    {{'c', 'o', 'r'}, E_LANGUAGE_CORNISH},
    {{'c', 'o', 's'}, E_LANGUAGE_CORSICAN},
    {{'c', 'r', 'e'}, E_LANGUAGE_CREE},
    {{'m', 'u', 's'}, E_LANGUAGE_CREEK},
    {{'c', 'r', 'p'}, E_LANGUAGE_CREOLESANDPIDGINS},
    {{'c', 'p', 'e'}, E_LANGUAGE_CREOLESANDPIDGINSENGLISH},
    {{'c', 'p', 'f'}, E_LANGUAGE_CREOLESANDPIDGINSFRENCH},
    {{'c', 'p', 'p'}, E_LANGUAGE_CREOLESANDPIDGINSPORTUGUESE},
    {{'c', 'u', 's'}, E_LANGUAGE_CUSHITIC},
    {{'h', 'r', 'v'}, E_LANGUAGE_CROATIAN},
    {{'c', 'e', 's'}, E_LANGUAGE_CZECH},
    {{'c', 'z', 'e'}, E_LANGUAGE_CZECH},
    {{'d', 'a', 'k'}, E_LANGUAGE_DAKOTA},
    {{'d', 'a', 'n'}, E_LANGUAGE_DANISH},
    {{'d', 'e', 'l'}, E_LANGUAGE_DELAWARE},
    {{'d', 'i', 'n'}, E_LANGUAGE_DINKA},
    {{'d', 'i', 'v'}, E_LANGUAGE_DIVEHI},
    {{'d', 'o', 'i'}, E_LANGUAGE_DOGRI},
    {{'d', 'r', 'a'}, E_LANGUAGE_DRAVIDIAN},
    {{'d', 'u', 'a'}, E_LANGUAGE_DUALA},
    {{'d', 'u', 't'}, E_LANGUAGE_DUTCH},
    {{'n', 'l', 'a'}, E_LANGUAGE_DUTCH},
    {{'d', 'u', 'm'}, E_LANGUAGE_DUTCHMIDDLE},
    {{'d', 'y', 'u'}, E_LANGUAGE_DYULA},
    {{'d', 'z', 'o'}, E_LANGUAGE_DZONGKHA},
    {{'e', 'f', 'i'}, E_LANGUAGE_EFIK},
    {{'e', 'g', 'y'}, E_LANGUAGE_EGYPTIAN},
    {{'e', 'k', 'a'}, E_LANGUAGE_EKAJUK},
    {{'e', 'l', 'x'}, E_LANGUAGE_ELAMITE},
    {{'e', 'n', 'g'}, E_LANGUAGE_ENGLISH},
    {{'e', 'n', 'm'}, E_LANGUAGE_ENGLISHMIDDLE},
    {{'a', 'n', 'g'}, E_LANGUAGE_ENGLISHOLD},
    {{'e', 's', 'k'}, E_LANGUAGE_ESKIMO},
    {{'e', 'p', 'o'}, E_LANGUAGE_ESPERANTO},
    {{'e', 's', 't'}, E_LANGUAGE_ESTONIAN},
    {{'e', 'w', 'e'}, E_LANGUAGE_EWE},
    {{'e', 'w', 'o'}, E_LANGUAGE_EWONDO},
    {{'f', 'a', 'n'}, E_LANGUAGE_FANG},
    {{'f', 'a', 't'}, E_LANGUAGE_FANTI},
    {{'f', 'a', 'o'}, E_LANGUAGE_FAROESE},
    {{'f', 'i', 'j'}, E_LANGUAGE_FIJIAN},
    {{'f', 'i', 'n'}, E_LANGUAGE_FINNISH},
    {{'f', 'i', 'u'}, E_LANGUAGE_FINNOUGRIAN},
    {{'f', 'o', 'n'}, E_LANGUAGE_FON},
    {{'f', 'r', 'a'}, E_LANGUAGE_FRENCH},
    {{'f', 'r', 'e'}, E_LANGUAGE_FRENCH},
    {{'f', 'r', 'm'}, E_LANGUAGE_FRENCHMIDDLE},
    {{'f', 'r', 'o'}, E_LANGUAGE_FRENCHOLD},
    {{'f', 'r', 'y'}, E_LANGUAGE_FRISIAN},
    {{'f', 'u', 'l'}, E_LANGUAGE_FULAH},
    {{'g', 'a', 'a'}, E_LANGUAGE_GA},
    {{'g', 'a', 'e'}, E_LANGUAGE_GAELIC},
    {{'g', 'd', 'h'}, E_LANGUAGE_GAELIC},
    {{'g', 'l', 'a'}, E_LANGUAGE_GAELIC},
    {{'g', 'l', 'g'}, E_LANGUAGE_GALLEGAN},
    {{'l', 'u', 'g'}, E_LANGUAGE_GANDA},
    {{'g', 'a', 'y'}, E_LANGUAGE_GAYO},
    {{'g', 'e', 'z'}, E_LANGUAGE_GEEZ},
    {{'g', 'e', 'o'}, E_LANGUAGE_GEORGIAN},
    {{'k', 'a', 't'}, E_LANGUAGE_GEORGIAN},
    {{'d', 'e', 'u'}, E_LANGUAGE_GERMAN},
    {{'g', 'e', 'r'}, E_LANGUAGE_GERMAN},
    {{'g', 'm', 'h'}, E_LANGUAGE_GERMANMIDDLEHIGH},
    {{'g', 'o', 'h'}, E_LANGUAGE_GERMANOLDHIGH},
    {{'g', 'e', 'm'}, E_LANGUAGE_GERMANIC},
    {{'g', 'i', 'l'}, E_LANGUAGE_GILBERTESE},
    {{'g', 'o', 'n'}, E_LANGUAGE_GONDI},
    {{'g', 'o', 't'}, E_LANGUAGE_GOTHIC},
    {{'g', 'r', 'b'}, E_LANGUAGE_GREBO},
    {{'g', 'r', 'c'}, E_LANGUAGE_GREEKANCIENT},
    {{'e', 'l', 'l'}, E_LANGUAGE_GREEKMODERN},
    {{'g', 'r', 'e'}, E_LANGUAGE_GREEKMODERN},
    {{'k', 'a', 'l'}, E_LANGUAGE_GREENLANDIC},
    {{'g', 'r', 'n'}, E_LANGUAGE_GUARANI},
    {{'g', 'u', 'j'}, E_LANGUAGE_GUJARATI},
    {{'h', 'a', 'i'}, E_LANGUAGE_HAIDA},
    {{'h', 'a', 'u'}, E_LANGUAGE_HAUSA},
    {{'h', 'a', 'w'}, E_LANGUAGE_HAWAIIAN},
    {{'h', 'e', 'b'}, E_LANGUAGE_HEBREW},
    {{'h', 'e', 'r'}, E_LANGUAGE_HERERO},
    {{'h', 'i', 'l'}, E_LANGUAGE_HILIGAYNON},
    {{'h', 'i', 'm'}, E_LANGUAGE_HIMACHALI},
    {{'h', 'i', 'n'}, E_LANGUAGE_HINDI},
    {{'h', 'm', 'o'}, E_LANGUAGE_HIRIMOTU},
    {{'h', 'u', 'n'}, E_LANGUAGE_HUNGARIAN},
    {{'h', 'u', 'p'}, E_LANGUAGE_HUPA},
    {{'i', 'b', 'a'}, E_LANGUAGE_IBAN},
    {{'i', 'c', 'e'}, E_LANGUAGE_ICELANDIC},
    {{'i', 's', 'l'}, E_LANGUAGE_ICELANDIC},
    {{'i', 'b', 'o'}, E_LANGUAGE_IGBO},
    {{'i', 'j', 'o'}, E_LANGUAGE_IJO},
    {{'i', 'l', 'o'}, E_LANGUAGE_ILOKO},
    {{'i', 'n', 'c'}, E_LANGUAGE_INDIC},
    {{'i', 'n', 'e'}, E_LANGUAGE_INDOEUROPEAN},
    {{'i', 'n', 'd'}, E_LANGUAGE_INDONESIAN},
    {{'i', 'n', 'a'}, E_LANGUAGE_INTERLINGUA},
    {{'i', 'n', 'e'}, E_LANGUAGE_INTERLINGUE},
    {{'i', 'k', 'u'}, E_LANGUAGE_INUKTITUT},
    {{'i', 'p', 'k'}, E_LANGUAGE_INUPIAK},
    {{'i', 'r', 'a'}, E_LANGUAGE_IRANIAN},
    {{'g', 'a', 'i'}, E_LANGUAGE_IRISH},
    {{'i', 'r', 'i'}, E_LANGUAGE_IRISH},
    {{'g', 'l', 'e'}, E_LANGUAGE_IRISH},
    {{'s', 'g', 'a'}, E_LANGUAGE_IRISHOLD},
    {{'m', 'g', 'a'}, E_LANGUAGE_IRISHMIDDLE},
    {{'i', 'r', 'o'}, E_LANGUAGE_IROQUOIAN},
    {{'i', 't', 'a'}, E_LANGUAGE_ITALIAN},
    {{'j', 'p', 'n'}, E_LANGUAGE_JAPANESE},
    {{'j', 'a', 'v'}, E_LANGUAGE_JAVANESE},
    {{'j', 'a', 'w'}, E_LANGUAGE_JAVANESE},
    {{'j', 'r', 'b'}, E_LANGUAGE_JUDEOARABIC},
    {{'j', 'p', 'r'}, E_LANGUAGE_JUDEOPERSIAN},
    {{'k', 'a', 'b'}, E_LANGUAGE_KABYLE},
    {{'k', 'a', 'c'}, E_LANGUAGE_KACHIN},
    {{'k', 'a', 'm'}, E_LANGUAGE_KAMBA},
    {{'k', 'a', 'n'}, E_LANGUAGE_KANNADA},
    {{'k', 'a', 'u'}, E_LANGUAGE_KANURI},
    {{'k', 'a', 'a'}, E_LANGUAGE_KARAKALPAK},
    {{'k', 'a', 'r'}, E_LANGUAGE_KAREN},
    {{'k', 'a', 's'}, E_LANGUAGE_KASHMIRI},
    {{'k', 'a', 'w'}, E_LANGUAGE_KAWI},
    {{'k', 'a', 'z'}, E_LANGUAGE_KAZAKH},
    {{'k', 'h', 'a'}, E_LANGUAGE_KHASI},
    {{'k', 'h', 'm'}, E_LANGUAGE_KHMER},
    {{'k', 'h', 'i'}, E_LANGUAGE_KHOISAN},
    {{'k', 'h', 'o'}, E_LANGUAGE_KHOTANESE},
    {{'k', 'i', 'k'}, E_LANGUAGE_KIKUYU},
    {{'k', 'i', 'n'}, E_LANGUAGE_KINYARWANDA},
    {{'k', 'i', 'r'}, E_LANGUAGE_KIRGHIZ},
    {{'k', 'o', 'm'}, E_LANGUAGE_KOMI},
    {{'k', 'o', 'n'}, E_LANGUAGE_KONGO},
    {{'k', 'o', 'k'}, E_LANGUAGE_KONKANI},
    {{'k', 'o', 'r'}, E_LANGUAGE_KOREAN},
    {{'k', 'p', 'e'}, E_LANGUAGE_KPELLE},
    {{'k', 'r', 'o'}, E_LANGUAGE_KRU},
    {{'k', 'u', 'a'}, E_LANGUAGE_KUANYAMA},
    {{'k', 'u', 'm'}, E_LANGUAGE_KUMYK},
    {{'k', 'u', 'r'}, E_LANGUAGE_KURDISH},
    {{'k', 'r', 'u'}, E_LANGUAGE_KURUKH},
    {{'k', 'u', 's'}, E_LANGUAGE_KUSAIE},
    {{'k', 'u', 't'}, E_LANGUAGE_KUTENAI},
    {{'l', 'a', 'd'}, E_LANGUAGE_LADINO},
    {{'l', 'a', 'h'}, E_LANGUAGE_LAHNDA},
    {{'l', 'a', 'm'}, E_LANGUAGE_LAMBA},
    {{'o', 'c', 'i'}, E_LANGUAGE_LANGUE},
    {{'l', 'a', 'o'}, E_LANGUAGE_LAO},
    {{'l', 'a', 't'}, E_LANGUAGE_LATIN},
    {{'l', 'a', 'v'}, E_LANGUAGE_LATVIAN},
    {{'l', 't', 'z'}, E_LANGUAGE_LETZEBURGESCH},
    {{'l', 'e', 'z'}, E_LANGUAGE_LEZGHIAN},
    {{'l', 'i', 'n'}, E_LANGUAGE_LINGALA},
    {{'l', 'i', 't'}, E_LANGUAGE_LITHUANIAN},
    {{'l', 'o', 'z'}, E_LANGUAGE_LOZI},
    {{'l', 'u', 'b'}, E_LANGUAGE_LUBAKATANGA},
    {{'l', 'u', 'i'}, E_LANGUAGE_LUISENO},
    {{'l', 'u', 'n'}, E_LANGUAGE_LUNDA},
    {{'l', 'u', 'o'}, E_LANGUAGE_LUO},
    {{'m', 'a', 'c'}, E_LANGUAGE_MACEDONIAN},
    {{'m', 'a', 'k'}, E_LANGUAGE_MACEDONIAN},
    {{'m', 'a', 'd'}, E_LANGUAGE_MADURESE},
    {{'m', 'a', 'g'}, E_LANGUAGE_MAGAHI},
    {{'m', 'a', 'i'}, E_LANGUAGE_MAITHILI},
    {{'m', 'a', 'k'}, E_LANGUAGE_MAKASAR},
    {{'m', 'l', 'g'}, E_LANGUAGE_MALAGASY},
    {{'m', 'a', 'y'}, E_LANGUAGE_MALAY},
    {{'m', 's', 'a'}, E_LANGUAGE_MALAY},
    {{'m', 'a', 'l'}, E_LANGUAGE_MALAYALAM},
    {{'m', 'l', 't'}, E_LANGUAGE_MALTESE},
    {{'m', 'a', 'n'}, E_LANGUAGE_MANDINGO},
    {{'m', 'n', 'i'}, E_LANGUAGE_MANIPURI},
    {{'m', 'n', 'o'}, E_LANGUAGE_MANOBO},
    {{'m', 'a', 'x'}, E_LANGUAGE_MANX},
    {{'m', 'a', 'o'}, E_LANGUAGE_MAORI},
    {{'m', 'r', 'i'}, E_LANGUAGE_MAORI},
    {{'m', 'a', 'r'}, E_LANGUAGE_MARATHI},
    {{'c', 'h', 'm'}, E_LANGUAGE_MARI},
    {{'m', 'a', 'h'}, E_LANGUAGE_MARSHALL},
    {{'m', 'w', 'r'}, E_LANGUAGE_MARWARI},
    {{'m', 'a', 's'}, E_LANGUAGE_MASAI},
    {{'m', 'y', 'n'}, E_LANGUAGE_MAYAN},
    {{'m', 'e', 'n'}, E_LANGUAGE_MENDE},
    {{'m', 'i', 'c'}, E_LANGUAGE_MICMAC},
    {{'m', 'i', 'n'}, E_LANGUAGE_MINANGKABAU},
    {{'m', 'i', 's'}, E_LANGUAGE_MISCELLANEOUS},
    {{'m', 'o', 'h'}, E_LANGUAGE_MOHAWK},
    {{'m', 'o', 'l'}, E_LANGUAGE_MOLDAVIAN},
    {{'m', 'k', 'h'}, E_LANGUAGE_MONKMER},
    {{'l', 'o', 'l'}, E_LANGUAGE_MONGO},
    {{'m', 'o', 'n'}, E_LANGUAGE_MONGOLIAN},
    {{'m', 'o', 's'}, E_LANGUAGE_MOSSI},
    {{'m', 'u', 'l'}, E_LANGUAGE_MULTIPLE},
    {{'m', 'u', 'n'}, E_LANGUAGE_MUNDA},
    {{'n', 'a', 'u'}, E_LANGUAGE_NAURU},
    {{'n', 'a', 'v'}, E_LANGUAGE_NAVAJO},
    {{'n', 'd', 'e'}, E_LANGUAGE_NDEBELENORTH},
    {{'n', 'b', 'l'}, E_LANGUAGE_NDEBELESOUTH},
    {{'n', 'd', 'o'}, E_LANGUAGE_NDONGO},
    {{'n', 'e', 'p'}, E_LANGUAGE_NEPALI},
    {{'n', 'e', 'w'}, E_LANGUAGE_NEWARI},
    {{'n', 'i', 'c'}, E_LANGUAGE_NIGERKORDOFANIAN},
    {{'s', 's', 'a'}, E_LANGUAGE_NILOSAHARAN},
    {{'n', 'i', 'u'}, E_LANGUAGE_NIUEAN},
    {{'n', 'o', 'n'}, E_LANGUAGE_NORSEOLD},
    {{'n', 'a', 'i'}, E_LANGUAGE_NORTHAMERICANINDIAN},
    {{'n', 'o', 'r'}, E_LANGUAGE_NORWEGIAN},
    {{'n', 'n', 'o'}, E_LANGUAGE_NORWEGIANNYNORSK},
    {{'n', 'u', 'b'}, E_LANGUAGE_NUBIAN},
    {{'n', 'y', 'm'}, E_LANGUAGE_NYAMWEZI},
    {{'n', 'y', 'a'}, E_LANGUAGE_NYANJA},
    {{'n', 'y', 'n'}, E_LANGUAGE_NYANKOLE},
    {{'n', 'y', 'o'}, E_LANGUAGE_NYORO},
    {{'n', 'z', 'i'}, E_LANGUAGE_NZIMA},
    {{'o', 'j', 'i'}, E_LANGUAGE_OJIBWA},
    {{'o', 'r', 'i'}, E_LANGUAGE_ORIYA},
    {{'o', 'r', 'm'}, E_LANGUAGE_OROMO},
    {{'o', 's', 'a'}, E_LANGUAGE_OSAGE},
    {{'o', 's', 's'}, E_LANGUAGE_OSSETIC},
    {{'o', 't', 'o'}, E_LANGUAGE_OTOMIAN},
    {{'p', 'a', 'l'}, E_LANGUAGE_PAHLAVI},
    {{'p', 'a', 'u'}, E_LANGUAGE_PALAUAN},
    {{'p', 'l', 'i'}, E_LANGUAGE_PALI},
    {{'p', 'a', 'm'}, E_LANGUAGE_PAMPANGA},
    {{'p', 'a', 'g'}, E_LANGUAGE_PANGASINAN},
    {{'p', 'a', 'n'}, E_LANGUAGE_PANJABI},
    {{'p', 'a', 'p'}, E_LANGUAGE_PAPIAMENTO},
    {{'p', 'a', 'a'}, E_LANGUAGE_PAPUANAUSTRALIAN},
    {{'f', 'a', 's'}, E_LANGUAGE_PERSIAN},
    {{'p', 'e', 'r'}, E_LANGUAGE_PERSIAN},
    {{'p', 'e', 'o'}, E_LANGUAGE_PERSIANOLD},
    {{'p', 'h', 'n'}, E_LANGUAGE_PHOENICIAN},
    {{'p', 'o', 'l'}, E_LANGUAGE_POLISH},
    {{'p', 'o', 'n'}, E_LANGUAGE_PONAPE},
    {{'p', 'o', 'r'}, E_LANGUAGE_PORTUGUESE},
    {{'p', 'r', 'a'}, E_LANGUAGE_PRAKRIT},
    {{'p', 'r', 'o'}, E_LANGUAGE_PROVENCALOLD},
    {{'p', 'u', 's'}, E_LANGUAGE_PUSHTO},
    {{'q', 'u', 'e'}, E_LANGUAGE_QUECHUA},
    {{'r', 'o', 'h'}, E_LANGUAGE_RHAETOROMANCE},
    {{'r', 'a', 'j'}, E_LANGUAGE_RAJASTHANI},
    {{'r', 'a', 'r'}, E_LANGUAGE_RAROTONGAN},
    {{'r', 'o', 'a'}, E_LANGUAGE_ROMANCE},
    {{'r', 'o', 'n'}, E_LANGUAGE_ROMANIAN},
    {{'r', 'u', 'm'}, E_LANGUAGE_ROMANIAN},
    {{'r', 'o', 'm'}, E_LANGUAGE_ROMANY},
    {{'r', 'u', 'n'}, E_LANGUAGE_RUNDI},
    {{'r', 'u', 's'}, E_LANGUAGE_RUSSIAN},
    {{'s', 'a', 'l'}, E_LANGUAGE_SALISHAN},
    {{'s', 'a', 'm'}, E_LANGUAGE_SAMARITANARAMAIC},
    {{'s', 'm', 'i'}, E_LANGUAGE_SAMI},
    {{'s', 'm', 'o'}, E_LANGUAGE_SAMOAN},
    {{'s', 'a', 'd'}, E_LANGUAGE_SANDAWE},
    {{'s', 'a', 'g'}, E_LANGUAGE_SANGO},
    {{'s', 'a', 'n'}, E_LANGUAGE_SANSKRIT},
    {{'s', 'r', 'd'}, E_LANGUAGE_SARDINIAN},
    {{'s', 'c', 'o'}, E_LANGUAGE_SCOTS},
    {{'s', 'e', 'l'}, E_LANGUAGE_SELKUP},
    {{'s', 'e', 'm'}, E_LANGUAGE_SEMITIC},
    {{'s', 'r', 'p'}, E_LANGUAGE_SERBIAN},
    {{'s', 'c', 'r'}, E_LANGUAGE_SERBOCROATIAN},
    {{'s', 'r', 'r'}, E_LANGUAGE_SERER},
    {{'s', 'h', 'n'}, E_LANGUAGE_SHAN},
    {{'s', 'n', 'a'}, E_LANGUAGE_SHONA},
    {{'s', 'i', 'd'}, E_LANGUAGE_SIDAMO},
    {{'b', 'l', 'a'}, E_LANGUAGE_SIKSIKA},
    {{'s', 'n', 'd'}, E_LANGUAGE_SINDHI},
    {{'s', 'i', 'n'}, E_LANGUAGE_SINGHALESE},
    {{'s', 'i', 't'}, E_LANGUAGE_SINOTIBETAN},
    {{'s', 'i', 'o'}, E_LANGUAGE_SIOUAN},
    {{'s', 'l', 'a'}, E_LANGUAGE_SLAVIC},
    {{'s', 's', 'w'}, E_LANGUAGE_SISWANT},
    {{'s', 'l', 'k'}, E_LANGUAGE_SLOVAK},
    {{'s', 'l', 'o'}, E_LANGUAGE_SLOVAK},
    {{'s', 'l', 'v'}, E_LANGUAGE_SLOVENIAN},
    {{'s', 'o', 'g'}, E_LANGUAGE_SOGDIAN},
    {{'s', 'o', 'm'}, E_LANGUAGE_SOMALI},
    {{'s', 'o', 'n'}, E_LANGUAGE_SONGHAI},
    {{'w', 'e', 'n'}, E_LANGUAGE_SORBIAN},
    {{'n', 's', 'o'}, E_LANGUAGE_SOTHONORTHERN},
    {{'s', 'o', 't'}, E_LANGUAGE_SOTHOSOUTHERN},
    {{'s', 'a', 'i'}, E_LANGUAGE_SOUTHAMERICANINDIAN},
    {{'e', 's', 'l'}, E_LANGUAGE_SPANISH},
    {{'s', 'p', 'a'}, E_LANGUAGE_SPANISH},
    {{'s', 'u', 'k'}, E_LANGUAGE_SUKUMA},
    {{'s', 'u', 'x'}, E_LANGUAGE_SUMERIAN},
    {{'s', 'u', 'n'}, E_LANGUAGE_SUDANESE},
    {{'s', 'u', 's'}, E_LANGUAGE_SUSU},
    {{'s', 'w', 'a'}, E_LANGUAGE_SWAHILI},
    {{'s', 's', 'w'}, E_LANGUAGE_SWAZI},
    {{'s', 'v', 'e'}, E_LANGUAGE_SWEDISH},
    {{'s', 'w', 'e'}, E_LANGUAGE_SWEDISH},
    {{'s', 'y', 'r'}, E_LANGUAGE_SYRIAC},
    {{'t', 'g', 'l'}, E_LANGUAGE_TAGALOG},
    {{'t', 'a', 'h'}, E_LANGUAGE_TAHITIAN},
    {{'t', 'g', 'k'}, E_LANGUAGE_TAJIK},
    {{'t', 'm', 'h'}, E_LANGUAGE_TAMASHEK},
    {{'t', 'a', 'm'}, E_LANGUAGE_TAMIL},
    {{'t', 'a', 't'}, E_LANGUAGE_TATAR},
    {{'t', 'e', 'l'}, E_LANGUAGE_TELUGU},
    {{'t', 'e', 'r'}, E_LANGUAGE_TERENO},
    {{'t', 'h', 'a'}, E_LANGUAGE_THAI},
    {{'b', 'o', 'd'}, E_LANGUAGE_TIBETAN},
    {{'t', 'i', 'b'}, E_LANGUAGE_TIBETAN},
    {{'t', 'i', 'g'}, E_LANGUAGE_TIGRE},
    {{'t', 'i', 'r'}, E_LANGUAGE_TIGRINYA},
    {{'t', 'e', 'm'}, E_LANGUAGE_TIMNE},
    {{'t', 'i', 'v'}, E_LANGUAGE_TIVI},
    {{'t', 'l', 'i'}, E_LANGUAGE_TLINGIT},
    {{'t', 'o', 'g'}, E_LANGUAGE_TONGANYASA},
    {{'t', 'o', 'n'}, E_LANGUAGE_TONGAISLANDS},
    {{'t', 'r', 'u'}, E_LANGUAGE_TRUK},
    {{'t', 's', 'i'}, E_LANGUAGE_TSIMSHIAN},
    {{'t', 's', 'o'}, E_LANGUAGE_TSONGA},
    {{'t', 's', 'n'}, E_LANGUAGE_TSWANA},
    {{'t', 'u', 'm'}, E_LANGUAGE_TUMBUKA},
    {{'t', 'u', 'r'}, E_LANGUAGE_TURKISH},
    {{'o', 't', 'a'}, E_LANGUAGE_TURKISHOTTOMAN},
    {{'t', 'u', 'k'}, E_LANGUAGE_TURKMEN},
    {{'t', 'y', 'v'}, E_LANGUAGE_TUVINIAN},
    {{'t', 'w', 'i'}, E_LANGUAGE_TWI},
    {{'u', 'g', 'a'}, E_LANGUAGE_UGARITIC},
    {{'u', 'i', 'g'}, E_LANGUAGE_UIGHUR},
    {{'u', 'k', 'r'}, E_LANGUAGE_UKRAINIAN},
    {{'u', 'm', 'b'}, E_LANGUAGE_UMBUNDU},
    {{'u', 'r', 'd'}, E_LANGUAGE_URDU},
    {{'u', 'z', 'b'}, E_LANGUAGE_UZBEK},
    {{'v', 'a', 'i'}, E_LANGUAGE_VAI},
    {{'v', 'e', 'n'}, E_LANGUAGE_VENDA},
    {{'v', 'i', 'e'}, E_LANGUAGE_VIETNAMESE},
    {{'v', 'o', 'l'}, E_LANGUAGE_VOLAPUK},
    {{'v', 'o', 't'}, E_LANGUAGE_VOTIC},
    {{'w', 'a', 'k'}, E_LANGUAGE_WAKASHAN},
    {{'w', 'a', 'l'}, E_LANGUAGE_WALAMO},
    {{'w', 'a', 'r'}, E_LANGUAGE_WARAY},
    {{'w', 'a', 's'}, E_LANGUAGE_WASHO},
    {{'c', 'y', 'm'}, E_LANGUAGE_WELSH},
    {{'w', 'e', 'l'}, E_LANGUAGE_WELSH},
    {{'w', 'o', 'l'}, E_LANGUAGE_WOLOF},
    {{'x', 'h', 'o'}, E_LANGUAGE_XHOSA},
    {{'s', 'a', 'h'}, E_LANGUAGE_YAKUT},
    {{'y', 'a', 'o'}, E_LANGUAGE_YAO},
    {{'y', 'a', 'p'}, E_LANGUAGE_YAP},
    {{'y', 'i', 'd'}, E_LANGUAGE_YIDDISH},
    {{'y', 'o', 'r'}, E_LANGUAGE_YORUBA},
    {{'z', 'a', 'p'}, E_LANGUAGE_ZAPOTEC},
    {{'z', 'e', 'n'}, E_LANGUAGE_ZENAGA},
    {{'z', 'h', 'a'}, E_LANGUAGE_ZHUANG},
    {{'z', 'u', 'l'}, E_LANGUAGE_ZULU},
    {{'z', 'u', 'n'}, E_LANGUAGE_ZUNI},
    {{'q', 'a', 'a'}, E_LANGUAGE_QAA}, /* qaa :: Original Sound Track */
    {{'c', 'm', 'n'}, E_LANGUAGE_MANDARIN},
    {{'y', 'u', 'e'}, E_LANGUAGE_CANTONESE},
    {{'g', 'r', 'e'}, E_LANGUAGE_GREEK}
};

static MBT_VOID PlyPutCasInfo(DBS_st2CAPIDInfo *pstCasInfo,MBT_U16 u16CasLen,MBT_U16 u16EcmPID,MBT_U16 u16StreamPID);
static MBT_VOID PlyOpenVedoWin(MBT_BOOL bOpen);
static MBT_VOID PlyGetFramCall(MMT_AV_Event_e eEvent);
static MBT_VOID PlyTunerCallBack(MMT_TUNER_TunerStatus_E stTunerState, MBT_U32 u32TunerID, MBT_U32 u32Frenq, MBT_U32 u32Sym,MMT_TUNER_QamType_E eQamType);
static MBT_VOID PlyMntStartCallBack(MBT_U32 u32Para[]);


MET_PTI_PID_T DBSF_PlyGetCurVideoPID(MBT_U16 u16ServiceID)
{
    return dbsv_u8VideoPid;
}

MET_PTI_PID_T DBSF_PlyGetCurPcrPID(MBT_U16 u16ServiceID)
{
    return dbsv_u8PCRPid;
}

MET_PTI_PID_T DBSF_PlyGetCurAudPID(MBT_U16 u16ServiceID)
{
    return dbsv_u8AudioPid;
}


MBT_VOID DBSF_PlyStopPrgPlay(MBT_VOID)
{
    //MLMF_Print("DBSF_PlyStopPrgPlay dbsf_StopAV\n");
    dbsf_MntSetCurPlayPrg(dbsm_InvalidID,dbsm_InvalidPID);
    dbsf_StopAV();
    dbsf_CTRCASStopEcm();
}

MBT_VOID DBSF_PlyOpenVideoWin(MBT_BOOL bOpen)
{
    PlyOpenVedoWin(bOpen);
}


MBT_VOID DBSF_PlyStartPrgPlay(DBST_PROG *pstService)
{
    MBT_BOOL bChangeTP = MM_TRUE;
    TRANS_INFO uTranInfo = pstService->stPrgTransInfo;
    MBT_S32 s32EcmNum;
    MBT_U32 u32Frenq;
    MBT_U32 u32Sym;
    MMT_TUNER_QamType_E eQamType;
    MBT_S32 s32EcmCtrNum;
    DBS_stCAEcmCtr stEcmCtr[dbsm_MaxEdcmCtrNum];
    MST_AV_StreamData_T stPidList[3] = 
    {
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
    };
    DBS_st2CAPIDInfo stCurPrgCasInfo[m_MaxPidInfo] =
    {
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
    };
    //MLMF_Print("DBSF_PlyStartPrgPlay Start\n");
    if(dbsv_stCurTransInfo.u32TransInfo == uTranInfo.u32TransInfo)
    {
        bChangeTP = MM_FALSE;
    }

    MLMF_Tuner_CurTrans(0,&u32Frenq, &u32Sym, &eQamType);
    //MLMF_Print("----->[%s][%d]u32Freq=%d, u32Sym=%d, uiTPQam=%d, [uTranInfo.uBit.uiTPFreq=%d, uTranInfo.uBit.uiTPSymbolRate=%d, uTranInfo.uBit.uiTPQam=%d]\n",__FUNCTION__,__LINE__,u32Frenq,u32Sym, eQamType, uTranInfo.uBit.uiTPFreq, uTranInfo.uBit.uiTPSymbolRate, uTranInfo.uBit.uiTPQam);
    if((u32Frenq != uTranInfo.uBit.uiTPFreq)||(uTranInfo.uBit.uiTPSymbolRate != u32Sym)||(uTranInfo.uBit.uiTPQam != eQamType))
    {
        bChangeTP = MM_TRUE;
    }
    
    dbsv_stCurTransInfo = uTranInfo;
    
    if(bChangeTP)
    {
        dbsf_CTRCASStopEmm();
        if(0xff != dbsv_u8SrchEpgTimerHandle)
        {
            TMF_CleanDbsTimer(dbsv_u8SrchEpgTimerHandle);
            dbsv_u8SrchEpgTimerHandle = 0xff;
        }
        
        if(m_DbsSearchNvod != dbsv_DbsWorkState&&m_DbsPlayNvod != dbsv_DbsWorkState)
        {
            dbsf_SetDbsState(m_DbsSearchEpg);
        }
        
        dbsf_SetForceSrchEpgFlag(MM_TRUE);
    }
    else
    {
        MLMF_AV_Stop();
    }

    dbsf_MntSetCurPlayPrg(pstService->u16ServiceID,pstService->sPmtPid);
    
    if(MM_TRUE == bChangeTP)
    {
        dbsf_MntReset();
        MLMF_Tuner_Lock(0,uTranInfo.uBit.uiTPFreq,uTranInfo.uBit.uiTPSymbolRate,uTranInfo.uBit.uiTPQam,PlyTunerCallBack);
    }
    if(pstService->NumPids > MAX_PRG_PID_NUM)
    {
        pstService->NumPids = MAX_PRG_PID_NUM;
    }    

    s32EcmNum = dbsf_PlayGetPIDCasInfo(stPidList,stCurPrgCasInfo,pstService->Pids,pstService->NumPids,pstService->u16CurAudioPID);
    dbsf_PlyStartAV(3,stPidList);
    if(s32EcmNum > 0)
    {
        s32EcmCtrNum = dbsf_ListGetEcmCtrList(stEcmCtr,3,pstService->stPrgTransInfo.u32TransInfo,pstService->u16ServiceID);
        if(s32EcmCtrNum > 0)
        {
            dbsf_CTRCASStartEcm(stCurPrgCasInfo,pstService->u16ServiceID,stEcmCtr,s32EcmCtrNum);
        }
    }

    /*
    {
        MBT_S32 k,m;
        MLMF_Print("DBSF_PlyStartPrgPlay stCurPrgCasInfo\n");
        for(k = 0;k < m_MaxPidInfo;k++)
        {
            MLMF_Print("[%d]stEcmPid = %x u8Valid = %d u8StreamPIDNum = %d\n",k,stCurPrgCasInfo[k].stEcmPid,stCurPrgCasInfo[k].u8Valid,stCurPrgCasInfo[k].u8StreamPIDNum);
            for(m = 0;m < stCurPrgCasInfo[k].u8StreamPIDNum;m++)
            {
                MLMF_Print("[%d]stStreamPid = %x\n",m,stCurPrgCasInfo[k].stStreamPid[m]);
            }
        }
    }
    */
    dbsf_MntClnPatVer();
    dbsf_MntClnPmtVer();
    dbsf_MntStartPmt();
    dbsf_MntStartTable(PAT_PID,PAT_TABLE_ID, -1);
    if(MM_TRUE == dbsf_GetForceSrchEpgFlag())
    {
        dbsf_MntStartTable(TDT_PID,TDT_TABLE_ID,-1);
        dbsv_u8SrchEpgTimerHandle  = TMF_SetDbsTimer(PlyMntStartCallBack,MM_NULL,1000,m_noRepeat);
    }
}

MBT_VOID DBSF_PlyLock(MBT_VOID)
{
    if(0 == dbsv_u8PlyLockStatus)
    {
        dbsf_StopAV();
    }
    dbsv_u8PlyLockStatus = 1;
}

MBT_VOID DBSF_PlyUnlock(MBT_VOID)
{
    UI_PRG stPrgInfo;
    MST_AV_StreamData_T stPidList[3] = 
    {
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
    };
    DBS_st2CAPIDInfo stCurPrgCasInfo[m_MaxPidInfo] =
    {
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
    };
    
    
    dbsv_u8PlyLockStatus = 0;  
    if(DVB_INVALID_LINK != dbsf_ListCurPrgInfo(&stPrgInfo))
    {
        DBST_PROG *pstService = &(stPrgInfo.stService);
        if(pstService->NumPids > MAX_PRG_PID_NUM)
        {
            pstService->NumPids = MAX_PRG_PID_NUM;
        }    
        dbsf_PlayGetPIDCasInfo(stPidList,stCurPrgCasInfo,pstService->Pids,pstService->NumPids,pstService->u16CurAudioPID);
        dbsf_PlyStartAV(3,stPidList);
    }
}

MBT_BOOL DBSF_PlyGetAduLanguageCode(DBS_ISO639AudLANGUAGE eAudType,MBT_CHAR *pstrCode)
{
    MBT_U32 i;
    ST_ISO639_ALANG *pstAudCode = dbsv_stISO639_LanguageCode;
    if(MM_NULL == pstrCode)
    {
        return MM_FALSE;
    }

    for(i = E_LANGUAGE_CATALAN;i < E_LANGUAGE_NUM;i++)
    {
        if(pstAudCode->enLangIndex == eAudType)
        {
            pstrCode[0] = pstAudCode->au8LangCode[0];
            pstrCode[1] = pstAudCode->au8LangCode[1];
            pstrCode[2] = pstAudCode->au8LangCode[2];
            return MM_TRUE;
        }
        pstAudCode++;
    }
    return MM_FALSE;
}

DBS_ISO639AudLANGUAGE DBSF_PlyGetAduLanguageType(MBT_CHAR *pstrCode)
{
    MBT_U32 i;
    ST_ISO639_ALANG *pstAudCode = dbsv_stISO639_LanguageCode;
    if(MM_NULL == pstrCode)
    {
        return E_LANGUAGE_NUM;
    }

    for(i = E_LANGUAGE_CATALAN;i < E_LANGUAGE_NUM;i++)
    {
        if(pstAudCode->au8LangCode[0] == pstrCode[0])
        {
            if(pstAudCode->au8LangCode[1] == pstrCode[1] && pstAudCode->au8LangCode[2] == pstrCode[2])
            {
                return pstAudCode->enLangIndex;
            }
        }
        pstAudCode++;
    }
    return E_LANGUAGE_NUM;
}


MBT_VOID DBSF_PlyPrgPlayChgAudioPID(DBST_PROG *pstService)
{
    MBT_S32 s32EcmNum;
    MBT_S32 s32EcmCtrNum;
    DBS_stCAEcmCtr stEcmCtr[dbsm_MaxEdcmCtrNum];
    MST_AV_StreamData_T stPidList[3] = 
    {
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
        {MM_STREAMTYPE_INVALID,dbsm_InvalidPID},
    };
    DBS_st2CAPIDInfo stCurPrgCasInfo[m_MaxPidInfo] =
    {
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
        {dbsm_InvalidPID,0,0,{dbsm_InvalidPID,dbsm_InvalidPID}},
    };
    
    if(MM_NULL == pstService)
    {
        return;
    }

    s32EcmNum = dbsf_PlayGetPIDCasInfo(stPidList,stCurPrgCasInfo,pstService->Pids,pstService->NumPids,pstService->u16CurAudioPID);

    MLMF_AV_PlayChangeAudioPids(3, stPidList);
    
    //MLMF_Print("[DBSF_PlyStartPrgPlay] serviceid = %x %s\n",u16ServiceID,pstService->cServiceName);
    //MLMF_Print("[PlyTunerCallBack] 0 stStreamPid = %d stEcmPid = %x\n",stCurPrgCasInfo[0].stStreamPid[0],stCurPrgCasInfo[0].stEcmPid);
    //MLMF_Print("[PlyTunerCallBack] 1 stStreamPid = %d stEcmPid = %x\n",stCurPrgCasInfo[1].stStreamPid[0],stCurPrgCasInfo[1].stEcmPid);
    if(s32EcmNum > 0)
    {
        s32EcmCtrNum = dbsf_ListGetEcmCtrList(stEcmCtr,3,pstService->stPrgTransInfo.u32TransInfo,pstService->u16ServiceID);
        if(s32EcmCtrNum > 0)
        {
            dbsf_CTRCASStartEcm(stCurPrgCasInfo,pstService->u16ServiceID,stEcmCtr,s32EcmCtrNum);
        }
    }
    /*
    {
        MBT_S32 k,m;
        MLMF_Print("DBSF_PlyStartPrgPlay stCurPrgCasInfo\n");
        for(k = 0;k < m_MaxPidInfo;k++)
        {
            MLMF_Print("[%d]stEcmPid = %x u8Valid = %d u8StreamPIDNum = %d\n",k,stCurPrgCasInfo[k].stEcmPid,stCurPrgCasInfo[k].u8Valid,stCurPrgCasInfo[k].u8StreamPIDNum);
            for(m = 0;m < stCurPrgCasInfo[k].u8StreamPIDNum;m++)
            {
                MLMF_Print("[%d]stStreamPid = %x\n",m,stCurPrgCasInfo[k].stStreamPid[m]);
            }
        }
    }
    */
}


MBT_VOID DBSF_PlyReturnCurPrg(MBT_VOID)
{
    dbsf_CTRCASStopEcm();
    dbsf_MntStartPmt();
    dbsf_MntClnPmtVer();
}


MBT_VOID dbsf_PlyStartAV(MBT_S32 iPidNumber ,MST_AV_StreamData_T *pstPidList)
{
    DVB_BOX *pstBoxInfo;
    MBT_BOOL bAudioOutPut;
    if(dbsm_InvalidPID == pstPidList[1].Pid)
    {
        return;
    }
    pstBoxInfo = DBSF_DataGetBoxInfo(); 
    bAudioOutPut = MM_TRUE;
    //MLMF_Print("dbsf_PlyStartAV dbsv_u8VideoPid = %x pstPidList[m_VideoPidInfo].Pid = %x\n",dbsv_u8VideoPid,pstPidList[m_VideoPidInfo].Pid);
    //MLMF_Print("dbsf_PlyStartAV dbsv_u8AudioPid = %x pstPidList[m_AudioPidInfo].Pid = %x\n",dbsv_u8AudioPid,pstPidList[m_AudioPidInfo].Pid);
   
    Sem_DBSPlay_P();
    if(1 == dbsv_u8AvStatus)
    {
        MLMF_AV_Stop();
    }
    dbsv_u8AvStatus = 1;
    if(pstBoxInfo->ucBit.bMuteState == 0x01)
    {
        bAudioOutPut = MM_FALSE;
    }

    if(0 == dbsv_u8PlyLockStatus)
    {
        MLMF_AV_Start(iPidNumber,pstPidList,bAudioOutPut,PlyGetFramCall);
    }

    dbsv_u8VideoPid = pstPidList[0].Pid;
    dbsv_u8AudioPid = pstPidList[1].Pid;
    dbsv_u8PCRPid = pstPidList[2].Pid;
    Sem_DBSPlay_V();
}


MBT_VOID dbsf_StopAV(MBT_VOID)
{
    //MLMF_Print("dbsf_StopAV\n");
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    if(VIDEO_STATUS == pstBoxInfo->ucBit.bVideoAudioState)
    {
        PlyOpenVedoWin(MM_FALSE);
    }
    Sem_DBSPlay_P();
    dbsv_u8AvStatus = 0;
    MLMF_AV_Stop();
    Sem_DBSPlay_V();
}



MBT_S32 dbsf_PlayGetPIDCasInfo(MST_AV_StreamData_T *pstPIDList,DBS_st2CAPIDInfo *pstCasInfo,PRG_PIDINFO *pstPids,MBT_U8 u8NumPids,MBT_U16 u16CurAudPID)
{
    MBT_U16 u16CurAudioEcmPID = dbsm_InvalidPID;
    MBT_U16 u16CurAudioPID = dbsm_InvalidPID;
    MBT_U8 u8CurAudioType = MM_STREAMTYPE_INVALID;
    MBT_U16 u16FirstAudioEcmPID = dbsm_InvalidPID;
    MBT_U16 u16FirstAudioPID = dbsm_InvalidPID;
    MBT_U8 u8FirstAudioType = MM_STREAMTYPE_INVALID;
    MBT_U8 i;
    MBT_S32 s32EcmNum = 0;
    MBT_CHAR strCode[4];
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();
    
    if(MM_NULL == pstPIDList||MM_NULL == pstCasInfo||MM_NULL == pstPids||0 == u8NumPids)
    {
        return s32EcmNum;
    }

    strCode[0] = (MBT_CHAR)(((pstBoxInfo->ucBit.ISO_CurLanguageCode)>>16)&0x000000ff);
    strCode[1] = (MBT_CHAR)(((pstBoxInfo->ucBit.ISO_CurLanguageCode)>>8)&0x000000ff);
    strCode[2] = (MBT_CHAR)((pstBoxInfo->ucBit.ISO_CurLanguageCode)&0x000000ff);

    for(i = 0;i < u8NumPids;i++)
    {
        switch(pstPids[i].Type)
        {
            case MM_STREAMTYPE_INVALID: /* None     : Invalid type                         */
            case MM_STREAMTYPE_TTXT: /* Teletext : Teletext pid                         */
            case MM_STREAMTYPE_SUBT: /* Subtitle : Subtitle pid                         */
                break;
                
            case MM_STREAMTYPE_MP1V: /* Video    : MPEG1                                */
            case MM_STREAMTYPE_MP2V: /* Video    : MPEG2                                */
            case MM_STREAMTYPE_MP4V:/* Video    : H264                                 */
            case MM_STREAMTYPE_H264: /* Video    : H264                                 */
            case MM_STREAMTYPE_MMV:/* Video    : Multimedia content                   */
            case MM_STREAMTYPE_VC1: /* Video    : Decode Simple/Main/Advanced profile  */
            case MM_STREAMTYPE_AVS: /* Video    : AVS Video format                     */
                if(dbsm_InvalidPID == pstPIDList[0].Pid)
                {
                    pstPIDList[0].Type= pstPids[i].Type;
                    pstPIDList[0].Pid = pstPids[i].Pid;
                    if(dbsm_InvalidPID != pstPids[i].EcmPid)
                    {
                        PlyPutCasInfo(pstCasInfo,2,pstPids[i].EcmPid,pstPids[i].Pid);
                        s32EcmNum++;
                    }
                }
                break;

            case MM_STREAMTYPE_PCR:/* Synchro  : PCR pid                              */
                if(dbsm_InvalidPID == pstPIDList[2].Pid)
                {
                    pstPIDList[2].Type=pstPids[i].Type;
                    pstPIDList[2].Pid =pstPids[i].Pid;
                }
                break;
                
            case MM_STREAMTYPE_MP1A: /* Audio    : MPEG 1 Layer I                       */
            case MM_STREAMTYPE_MP2A: /* Audio    : MPEG 1 Layer II                      */
            case MM_STREAMTYPE_MP4A: /* Audio    : like HEAAC,Decoder LOAS / LATM - AAC */
            case MM_STREAMTYPE_AC3: /* Audio    : AC3                                  */
            case MM_STREAMTYPE_MPEG4P2: /* Video    : MPEG4 Part II                        */
            case MM_STREAMTYPE_AAC: /* Audio    : Decode ADTS - AAC                    */
            case MM_STREAMTYPE_HEAAC: /* Audio    : Decoder LOAS / LATM - AAC            */
            case MM_STREAMTYPE_WMA: /* Audio    : WMA,WMAPRO                           */
            case MM_STREAMTYPE_DDPLUS: /* Audio    : DD+ Dolby digital                    */
            case MM_STREAMTYPE_DTS: /* Audio    : DTS                                  */
            case MM_STREAMTYPE_MMA: /* Audio    : Multimedia content                   */
            case MM_STREAMTYPE_OTHER:  /* Misc     : Non identified pid                   */
                if(pstPids[i].acAudioLanguage[0] == strCode[0]&&strCode[1] == pstPids[i].acAudioLanguage[1]&&strCode[2] == pstPids[i].acAudioLanguage[2])
                {
                    u8CurAudioType = pstPids[i].Type;
                    u16CurAudioPID = pstPids[i].Pid;
                    u16CurAudioEcmPID = pstPids[i].EcmPid;
                }
                else
                {
                    if(u16CurAudPID == pstPids[i].Pid)
                    {
                         u8CurAudioType = pstPids[i].Type;
                         u16CurAudioPID = pstPids[i].Pid;
                         u16CurAudioEcmPID = pstPids[i].EcmPid;
                    }
                    else if(dbsm_InvalidPID == u16FirstAudioPID)
                    {
                        u8FirstAudioType = pstPids[i].Type;
                        u16FirstAudioPID = pstPids[i].Pid;
                        u16FirstAudioEcmPID = pstPids[i].EcmPid;
                    }
                }
                
                break;
        }
    }

    if(dbsm_InvalidPID != u16CurAudioPID)
    {
        pstPIDList[1].Type=u8CurAudioType;
        pstPIDList[1].Pid =u16CurAudioPID;
        if(dbsm_InvalidPID != u16CurAudioEcmPID)
        {
            PlyPutCasInfo(pstCasInfo,2,u16CurAudioEcmPID,u16CurAudioPID);
            s32EcmNum++;
        }
    }
    else
    {
        pstPIDList[1].Type=u8FirstAudioType;
        pstPIDList[1].Pid =u16FirstAudioPID;
        if(dbsm_InvalidPID != u16FirstAudioEcmPID)
        {
            PlyPutCasInfo(pstCasInfo,2,u16FirstAudioEcmPID,u16FirstAudioPID);
            s32EcmNum++;
        }
    }


    if(dbsm_InvalidPID == pstCasInfo[0].stEcmPid)
    {
        pstCasInfo[0] = pstCasInfo[1];
        pstCasInfo[1].stEcmPid = dbsm_InvalidPID;
        pstCasInfo[1].u8Valid = 0;
        pstCasInfo[1].u8StreamPIDNum = 0;
        pstCasInfo[1].stStreamPid[0] = dbsm_InvalidPID;
        pstCasInfo[1].stStreamPid[1] = dbsm_InvalidPID;
    }

    if(pstCasInfo[0].stEcmPid == pstCasInfo[1].stEcmPid)
    {
        pstCasInfo[1].stEcmPid = dbsm_InvalidPID;
        pstCasInfo[1].u8Valid = 0;
        pstCasInfo[1].u8StreamPIDNum = 0;
        pstCasInfo[1].stStreamPid[0] = dbsm_InvalidPID;
        pstCasInfo[1].stStreamPid[1] = dbsm_InvalidPID;
    }

    return s32EcmNum;
}




MBT_VOID dbsf_PrgPlayInit(MBT_VOID)
{
    if(MM_INVALID_HANDLE == dbsv_semPlayAccess)     
    {
        MLMF_Sem_Create(&dbsv_semPlayAccess,1);
    }
}

MBT_VOID dbsf_PrgPlayTerm(MBT_VOID)
{
    if(MM_INVALID_HANDLE != dbsv_semPlayAccess)     
    {
        MLMF_Sem_Destroy(dbsv_semPlayAccess);
    }
}


static MBT_VOID PlyPutCasInfo(DBS_st2CAPIDInfo *pstCasInfo,MBT_U16 u16CasLen,MBT_U16 u16EcmPID,MBT_U16 u16StreamPID)
{
    MBT_U32 i,k;
    DBS_st2CAPIDInfo *pstFreeCasInfo;
    
    if(MM_NULL == pstCasInfo||dbsm_InvalidPID == u16EcmPID)
    {
        return;
    }

    pstFreeCasInfo = MM_NULL;
    
    for(i = 0;i < u16CasLen;i++)
    {
        if(0 == pstCasInfo[i].u8Valid)
        {
            pstFreeCasInfo = &pstCasInfo[i];
            break;
        }

        if(u16EcmPID == pstCasInfo[i].stEcmPid)
        {
            for(k = 0;k < pstCasInfo[i].u8StreamPIDNum;k++)
            {
                if(u16StreamPID == pstCasInfo[i].stStreamPid[k])
                {
                    break;
                }
            }

            if(k >= pstCasInfo[i].u8StreamPIDNum)
            {
                if(pstCasInfo[i].u8StreamPIDNum < m_MaxPidInfo)
                {
                    pstCasInfo[i].stStreamPid[pstCasInfo[i].u8StreamPIDNum] = u16StreamPID;
                    pstCasInfo[i].u8StreamPIDNum++;
                }
            }
        }
    }

    if(MM_NULL != pstFreeCasInfo)
    {
        pstFreeCasInfo->stEcmPid = u16EcmPID;
        pstFreeCasInfo->u8Valid = 1;
        pstFreeCasInfo->stStreamPid[pstFreeCasInfo->u8StreamPIDNum] = u16StreamPID;
        pstFreeCasInfo->u8StreamPIDNum++;
    }
}

static MBT_VOID PlyTunerCallBack(MMT_TUNER_TunerStatus_E stTunerState, MBT_U32 u32TunerID, MBT_U32 u32Frenq, MBT_U32 u32Sym,MMT_TUNER_QamType_E eQamType)
{
    dbsf_MntNimNotify(stTunerState);
}

static MBT_VOID PlyMntStartCallBack(MBT_U32 u32Para[])
{
    //DBS_DEBUG(("PlyMntStartCallBack dbsf_MntStartHeatBeat\n"));
    dbsv_u8SrchEpgTimerHandle = 0xff;
    dbsf_MntClnCatVer();
    if(m_DbsSearchEpg == dbsv_DbsWorkState)
    {
        dbsf_MntStartHeatBeat();
        dbsf_StartEpgSearch(dbsf_ParseEIT);
        dbsf_SetForceSrchEpgFlag(MM_FALSE);
    }
    else if(m_DbsSearchNvod == dbsv_DbsWorkState||m_DbsPlayNvod == dbsv_DbsWorkState)
    {
        dbsf_SetDbsState(m_DbsPlayNvod);
        dbsf_NVDInitSrchCtr();
        dbsf_StartEpgSearch(dbsf_NVDParseEIT);
    }
}

static MBT_VOID PlyOpenVedoWin(MBT_BOOL bOpen)
{
    static MBT_BOOL bOpenWindows = MM_FALSE;
    if(MM_TRUE == bOpen)
    {
        if(MM_FALSE == bOpenWindows)
        {
            //MLMF_Print("MLMF_AV_OpenVideoWindow\n");
            MLMF_AV_OpenVideoWindow();
            bOpenWindows = MM_TRUE;
        }
    }
    else
    {
        if(MM_TRUE == bOpenWindows)
        {
            //MLMF_Print("MLMF_AV_CloseVideoWindow\n");
            MLMF_AV_CloseVideoWindow();
            bOpenWindows = MM_FALSE;
        }
    }
}

static MBT_VOID PlyGetFramCall(MMT_AV_Event_e eEvent)
{
    static MBT_U8 u8WaitForOpen = 0;
    static MBT_U8 u8Count = 0;
    if(MM_AV_PLAY_FIRST_FRAME == eEvent)
    {
        u8WaitForOpen = 1;
        u8Count = 0;
    }

    if(1 == u8WaitForOpen)
    {
        u8Count++;
        if(u8Count >= m_SkipFrameNum)
        {
            //MLMF_Print("PlyGetFramCall u8Count = %d\n",u8Count);
            u8WaitForOpen = 0;
            u8Count = 0;
            PlyOpenVedoWin(MM_TRUE);
            dbsf_MntGetVideoNotify();
        }
    }
}


