#ifndef __SCHEDULE_H__
#define __SCHEDULE_H__

#include "hi_type.h"

#if defined(HI_BOOT_KEYLED_GPIOKEY)
#define KEY_MENU 0x40
#define KEY_OK 0x2
#else
#define KEY_MENU 0x0
#define KEY_OK 0x1
#endif

#define UIH_NMLEN 32

/*Define kernel image head.*/
typedef struct uImage_header
{
    HI_U32 ih_magic;   /* Image Header Magic Number	*/
    HI_U32 ih_hcrc;    /* Image Header CRC Checksum	*/
    HI_U32 ih_time;    /* Image Creation Timestamp	*/
    HI_U32 ih_size;    /* Image Data Size		*/
    HI_U32 ih_load;    /* Data	 Load  Address		*/
    HI_U32 ih_ep;      /* Entry Point Address		*/
    HI_U32 ih_dcrc;    /* Image Data CRC Checksum	*/
    HI_U8  ih_os;           /* Operating System		*/
    HI_U8  ih_arch;         /* CPU architecture		*/
    HI_U8  ih_type;         /* Image Type			*/
    HI_U8  ih_comp;         /* Compression Type		*/
    HI_U8  ih_name[UIH_NMLEN];      /* Image Name		*/
} uImage_header_t;

#if 0

/*Define parameter head.*/
typedef struct tagParaHead
{
    HI_U32 u32MagicNumber;     /*Magic number name */
    HI_U32 u32Crc;             /*CRC verification value */
    HI_U32 u32Length;          /*length of upgrade parameter.*/
} UPGRD_PARA_HEAD_S;

/*Define upgrade tag parameter.*/
typedef struct tagLoaderUpgrdTagParam
{
    HI_BOOL bTagNeedUpgrd;    /*  whether normal upgrade.*/
    HI_BOOL bTagManuForceUpgrd;   /*  whether force upgrade.*/
} UPGRD_TAG_PARA_S;
#endif

#define HI_ERR_LOADER(fmt...)  HI_ERR_PRINT(HI_ID_LOADER, fmt) 
#define HI_INFO_LOADER(fmt...) printf(fmt)
#define HI_DBG_LOADER(fmt...)  HI_DBG_PRINT(HI_ID_LOADER, fmt)

/***************************************************************************/
HI_S32 Loader_Main(HI_VOID);

#endif
