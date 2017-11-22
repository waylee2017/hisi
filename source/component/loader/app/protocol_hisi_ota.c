/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/

/* C++ support */
#include "loader_upgrade.h"

//#include "hi_unf_ecs.h"
#include "hi_unf_demux.h"
#include "hi_loader_info.h"
#include "upgrd_osd.h"
#include "loaderdb_info.h"
#include "upgrd_common.h"
#include "hi_adp_boardcfg.h"
#include "protocol_hisi_ota.h"
#include "hi_unf_frontend.h"
#include "ota_datamanager.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#define DATAGRAMLEN (1 * 1024 - 32)

/*************************************************/
#define DLCONTROLHEAD_TABLE_ID 0xFE

/*************************************************/
#define UPGRD_PARTITION_TABILEEXTID 0x00
#define DLDOWNLOADINFO_TAG 0xEA
#define DLPARTINFO_TAG 0xEB
#define DLPARTHEAD_TAG 0xEC

#define SECTION_BUFFER_LENGTH (1024)

#define GETFOURBYTE(n, p) \
    do {\
        n  = 0 | (*p << 24) | (*(p + 1) << 16) | (*(p + 2) << 8) | (*(p + 3)); \
        p += 4; \
    } while (0)

#define PART_DESCRIPTION_LEN (12 + 2)
#define RESERVED_DATA_LEN (sizeof(HI_U8) + sizeof(HI_U16) + sizeof(HI_U32) + sizeof(HI_U32))

HISI_OTA_INFO_S g_stOTAInfo;

static HI_U8 g_au8SectionBuffer[SECTION_BUFFER_LENGTH];

HI_U32 g_u32MagicNum = 0;

static LOADER_DATA_S g_astData[MAX_UPGRADE_IMAGE_NUM];
static HI_U32 g_au32CalculateCRC[MAX_UPGRADE_IMAGE_NUM];

static LOADER_VERSION_INFO_S g_stVerInfo;
LOADER_DATA_INFO_S g_stDataInfo;

static LOADERCALLBACKSET_S *g_pstCallback = HI_NULL;

HI_U8 g_u8download_tableid;

HI_U32 g_u32Pid = 0;

HI_U32 g_u32DataGramSize = 0;

/*****************************************************************************
* Function:       UPGRD_ParseControlHead
* Description:   parse upgrade coontrl head infomation
* Calls:    None
* Data Accessed: None
* Data Updated:  None
* Input:          pu8DesData - section data
        s32DescLen - section legnth
        enParseMode   - parse mode
* Output:        parsed data
* Return:        HI_TRUE/HI_FALSE
* Others:        None
*****************************************************************************/
static HI_BOOL ParseDownloadInfo(const HI_U8* pu8DesData, HI_S32 s32DescLen, HISI_OTA_INFO_S *pstruUpdControlHead)
{
    HI_U8 u8Tag   = 0;
    HI_S32 s32Len = 0;
    const HI_U8 *u8Data = HI_NULL;

    HI_U8 u8Temp   = 0;
    HI_U32 u32Temp = 0;
    HI_U8 u8Key_control;
    HI_U8 u8flag = 1;
    HI_U8 i = 0;
    HISI_OTA_INFO_S* pTmpControlHead = pstruUpdControlHead;
    UPGRD_UpgrdPartInfo_S* pstruUpgrdPartInfo = HI_NULL;
    HI_CHAR* pstr = HI_NULL;
    HI_S32 s32DataLen = 0;

    HI_DBG_LOADER("parse controlhead desc: --start--\n");

    if ((HI_NULL == pu8DesData) || (HI_NULL == pTmpControlHead))
    {
        HI_ERR_LOADER("data error!\n");
        return HI_FALSE;
    }

    /* don't parse crc*/
    while (s32DescLen > 4)
    {
        /* get description tag */
        u8Tag = *pu8DesData++;
        HI_DBG_LOADER("tag = %x\n", u8Tag );

        switch (u8Tag)
        {
        case DLDOWNLOADINFO_TAG:
        {
            /* get description length*/
            s32Len = *pu8DesData++;
            HI_DBG_LOADER("s32Len = 0x%X(%d)\n", s32Len, s32Len);

            if (s32Len == 0)
            {
                HI_ERR_LOADER("There is no download info!\n" );
                return HI_FALSE;
            }

            u8Data = pu8DesData;
            pu8DesData += s32Len;

            s32DescLen -= (s32Len + 2);

            /*get STB_ManufactuerID*/
            GETFOURBYTE(u32Temp, u8Data);
            pTmpControlHead->u16FactoryId = u32Temp;
            HI_DBG_LOADER("u16FactoryId Id is %d \n", pTmpControlHead->u16FactoryId);

            /*get hardware version*/
            GETFOURBYTE(u32Temp, u8Data);
            pTmpControlHead->u32HardwareVer = u32Temp;
            HI_DBG_LOADER("u32HardwareVer ver is 0x%x \n", pTmpControlHead->u32HardwareVer);

            // UPGRD_Printf("hardver is %x", u32Temp);

            /*get software version*/
            GETFOURBYTE(u32Temp, u8Data);
            pTmpControlHead->u32Software_ver = u32Temp;
            HI_DBG_LOADER("u8Software ver is 0x%x\n", pTmpControlHead->u32Software_ver);

            /*get download_table_id*/
            pTmpControlHead->u8Download_table_id = *u8Data++;          /*modify by l55561 5.14*/
            g_u8download_tableid = pTmpControlHead->u8Download_table_id;
            HI_DBG_LOADER("table id  is 0x%x\n", pTmpControlHead->u8Download_table_id);

            /* AI7D01639 2007/10/12: delete verity table id code*/

            /*parse key_control key word*/
            u8Key_control = *u8Data++;

            HI_DBG_LOADER("u8Key_control is %x\n", u8Key_control);

            /*get sn range*/
            GETFOURBYTE(u32Temp, u8Data);
            HI_DBG_LOADER("seri begin is %x\n", u32Temp);
            pTmpControlHead->u32startSn = u32Temp;

            GETFOURBYTE(u32Temp, u8Data);
            HI_DBG_LOADER("seri end is %x\n", u32Temp);
            pTmpControlHead->u32endSn = u32Temp;

            /*get upgrade date*/
            GETFOURBYTE(u32Temp, u8Data);
            HI_DBG_LOADER("updata date is %x\n", u32Temp);
            pTmpControlHead->u32downloaddate = u32Temp;

            /*get other versions*/
            while (((u8Key_control != 0) && (u8Key_control != 0xff) && (u8flag)))
            {
                u8flag = u8Key_control & (1 << i);
                switch (u8flag)
                {
                case app:
                    GETFOURBYTE(u32Temp, u8Data);
                    HI_DBG_LOADER("App is %x\n", u32Temp);
                    pTmpControlHead->u32appver = u32Temp;
                    break;

                case kernel:
                    GETFOURBYTE(u32Temp, u8Data);
                    HI_DBG_LOADER("Kernel is %x\n", u32Temp);
                    break;

                case CA:
                    GETFOURBYTE(u32Temp, u8Data);
                    HI_DBG_LOADER("CA is %x\n", u32Temp);
                    break;

                case BootLoader:
                    GETFOURBYTE(u32Temp, u8Data);
                    HI_DBG_LOADER("BootLoader is %x\n", u32Temp);
                    break;

                case loader:
                    GETFOURBYTE(u32Temp, u8Data);
                    HI_DBG_LOADER("LOADER is %x\n", u32Temp);
                    break;

                case logo:
                    GETFOURBYTE(u32Temp, u8Data);
                    HI_DBG_LOADER("LOGO is %x\n", u32Temp);
                    break;
                default:
                    break;
                }

                i++;
            }

            /*get product type*/
            u8Temp  = *u8Data++;
            u8Data += u8Temp;
            break;
        }

        case DLPARTINFO_TAG:
        {
            HI_U32 u32DownDescLen = 0;

            if (10 > s32DescLen)
            {
                HI_ERR_LOADER("data length[%d] is too short.\n", s32DescLen);
                return HI_FALSE;
            }

            pu8DesData++;

            /*gets part descritption length */
            s32Len = 8 + ((pu8DesData + 4)[0] * PART_DESCRIPTION_LEN);

            /*gets download description length*/
            if ((2 + s32Len) >= s32DescLen)
            {
                HI_ERR_LOADER("data length[%d] is too short. real Len:%d\n", s32DescLen, s32Len);
                return HI_FALSE;
            }

            u32DownDescLen = *(pu8DesData + s32Len);

            HI_DBG_LOADER("u32DownDescLen:0x%.2X(%d)\n", u32DownDescLen, u32DownDescLen);

            s32Len = 8 + (((pu8DesData + 6)[0] << 8) | (pu8DesData + 6)[1])
                     + u32DownDescLen + 1 + RESERVED_DATA_LEN;

            HI_DBG_LOADER("s32Len = 0x%x(%d)\n", s32Len, s32Len);
            /*
            if (s32Len == 0)
            {
                HI_ERR_LOADER("descriptor len error.");
                HI_DBG_LOADER("parse controlhead desc: -------------end-------------\n" );
                return HI_FALSE;
            }
            */

            u8Data = pu8DesData;
            pu8DesData += s32Len;

            s32DescLen -= (s32Len + 2);

            pTmpControlHead->u32Download_data_totalsize = u8Data[0] << 24 | u8Data[1] << 16
                                                          | u8Data[2] << 8 | u8Data[3];
            u8Data += 4;

            /*get partition number*/
            pTmpControlHead->u8Partiton_number = *u8Data;

            HI_DBG_LOADER("Partiton_number = %d\n", pTmpControlHead->u8Partiton_number);
            HI_DBG_LOADER("controlhead: lesslength: pTmpControlHead->u8Partiton_number = %d\n",
                          pTmpControlHead->u8Partiton_number);

            u8Data += 2;

            s32DataLen = u8Data[0] << 8 | u8Data[1];
            u8Data += 2;        /*add by l55561 5.14*/

            if (s32DataLen >= s32Len)
            {
                HI_ERR_LOADER("descriptor len error.desc length = %d, data length = %d\n", s32Len, s32DataLen);
                return HI_FALSE;
            }

            /*allocate memory*/
            u32Temp = (pTmpControlHead->u8Partiton_number) * sizeof(UPGRD_UpgrdPartInfo_S);
            pstruUpgrdPartInfo = (UPGRD_UpgrdPartInfo_S*)u_malloc(u32Temp);
            if (HI_NULL == pstruUpgrdPartInfo)
            {
                HI_ERR_LOADER("controlhead:malloc error\n");
                return HI_FALSE;
            }

            u_memset(pstruUpgrdPartInfo, 0, u32Temp);
            pTmpControlHead->pPartInfo = pstruUpgrdPartInfo;

            while (s32DataLen > 0)
            {
                /*download_mode*/
                u8Temp = *u8Data++;
                s32DataLen--;
                if ((PARTMODE != u8Temp) && (FILEMODE != u8Temp))
                {
                    HI_ERR_LOADER("controlhead:download mode error.\n");
                    return HI_FALSE;
                }

                pstruUpgrdPartInfo->u32Download_mode = u8Temp;
                HI_DBG_LOADER("controlhead:pstruUpgrdPartInfo->u32Download_mode is %d\n",
                              pstruUpgrdPartInfo->u32Download_mode);

                /*download_mode_data_len*/
                u8Temp = *u8Data++;
                s32DataLen--;
                s32DataLen -= u8Temp;

                if (PARTMODE == pstruUpgrdPartInfo->u32Download_mode)
                {
                    /*get upgrade address*/
                    GETFOURBYTE(u32Temp, u8Data);
                    pstruUpgrdPartInfo->u32Download_addr = u32Temp;

                    /*get upgrade size*/
                    GETFOURBYTE(u32Temp, u8Data);
                    pstruUpgrdPartInfo->u32Download_size = u32Temp;
                    HI_DBG_LOADER("controlhead:pstruUpgrdPartInfo->u32Download_size is %d\n",
                                  pstruUpgrdPartInfo->u32Download_size);

                    HI_DBG_LOADER("controlhead:u8Data is %x\n", u8Data[0]);
                    HI_DBG_LOADER("controlhead:u8Data is %x\n", u8Data[1]);
                    HI_DBG_LOADER("controlhead:u8Data is %x\n", u8Data[2]);
                    HI_DBG_LOADER("controlhead:u8Data is %x\n", u8Data[3]);

                    /*get crc value*/
                    GETFOURBYTE(u32Temp, u8Data);

                    pstruUpgrdPartInfo->u32Download_CRC32 = u32Temp;
                    HI_DBG_LOADER("controlhead:pstruUpgrdPartInfo->u32Download_CRC32 is %x\n",
                                  pstruUpgrdPartInfo->u32Download_CRC32);
                }
                else
                {
                    /*get length of file name*/
                    u8Temp = *u8Data++;
                    s32DataLen--;
                    pstruUpgrdPartInfo->u32Download_string_len = u8Temp;
                    u8Temp += 1;

                    /*get file name*/
                    pstr = (HI_CHAR*)u_malloc(u8Temp);
                    if (HI_NULL == pstr)
                    {
                        HI_ERR_LOADER("malloc error.\n");
                        return HI_FALSE;
                    }

                    pstruUpgrdPartInfo->pDownload_string = pstr;
                    u_memset(pstr, 0, u8Temp);
                    u_strncpy(pstr, (HI_CHAR*)u8Data, u8Temp - 1);
                    u8Data += pstruUpgrdPartInfo->u32Download_string_len;

                    /*get file size*/
                    GETFOURBYTE(u32Temp, u8Data);
                    pstruUpgrdPartInfo->u32Download_size = u32Temp;

                    /*get crc value*/
                    GETFOURBYTE(u32Temp, u8Data);
                    pstruUpgrdPartInfo->u32Download_CRC32 = u32Temp;
                }

                pstruUpgrdPartInfo += 1;
            }

            /*get file ugrade description*/
            HI_U8 download_description_length;
            u8Temp = *u8Data++;
            download_description_length = u8Temp;
            if (UPGRD_DESCRIPTION_LENGTH <= u8Temp)
            {
                u8Temp = UPGRD_DESCRIPTION_LENGTH - 1;
            }

            u_strncpy(pTmpControlHead->strUpgrdReason, (HI_CHAR*)u8Data, u8Temp);
            pTmpControlHead->strUpgrdReason[u8Temp] = '\0';

            // Parse Total CRC, qushen
#if 1
            /*get reserved data*/
            u8Data += download_description_length;
            HI_U8 reserverd_tag;
            HI_U16 reserverd_data_length;
            HI_U32 fullCRC;
            HI_U32 magicNum;
            reserverd_tag = *u8Data++;
            reserverd_data_length = (HI_U16)((u8Data[0] << 8) | u8Data[1]);
            if (reserverd_tag && (reserverd_data_length > 0))
            {
                u8Data += 2;
                GETFOURBYTE(fullCRC, u8Data);
                GETFOURBYTE(magicNum, u8Data);
                HI_DBG_LOADER("<QQ> reserverd_tag=%d, reserverd_data_length=%d, fullCRC=0x%x, magicNum=0x%x\n",
                              reserverd_tag, reserverd_data_length, fullCRC, magicNum);
                pTmpControlHead->u32Full_CRC32 = fullCRC;
                pTmpControlHead->u32MagicNum = magicNum;
            }
#endif

            break;
        }

        default:
            HI_ERR_LOADER("[%s %d]ERROR:Unknown Tag[0x%X].\n", __FILE__, __LINE__, u8Tag);
            break;
        }
    }

    HI_DBG_LOADER("parse controlhead desc: -------------end-------------\n" );

    return HI_TRUE;
}

/*****************************************************************************
* Function:       ParsePartInfoDesc
* Description:
* Calls:    None
* Data Accessed: None
* Data Updated:  None
* Input:          pu8DesData - section data
                  s32DescLen - section length

* Output:
* Return:
* Others:        None
*****************************************************************************/
static HI_BOOL ParsePartitionControl(const HI_U8* pu8SecData, HI_S32 s32DescLen,
		UPGRD_UpgrdPartInfo_S *pstruPartInfo, HI_U32 u32PartNum)
{
	HI_U8 u8Tag   = 0;
	HI_S32 s32Len = 0;
	const HI_U8 *u8Data = HI_NULL;
	UPGRD_UpgrdPartInfo_S* pTmpPartInfo = pstruPartInfo;

	HI_U16 u16Temp = 0;
	HI_U32 u32Temp = 0;

	u32PartNum--;

	if ((HI_NULL == pu8SecData) || (HI_NULL == pstruPartInfo))
	{
		HI_ERR_LOADER("Pointer is null.\n");
		return HI_FALSE;
	}

	while (s32DescLen > 0)
	{
		/*get description tag*/
		u8Tag = *pu8SecData++;

		/*get description length*/
		s32Len = *pu8SecData++;

		/*if length is 0, return*/
		if (s32Len == 0)
		{
			HI_ERR_LOADER("descriptor len error.\n");
			return HI_FALSE;
		}

		u8Data = pu8SecData;
		pu8SecData += s32Len;
		s32DescLen -= (s32Len + 2);

		switch (u8Tag)
		{
			case DLPARTHEAD_TAG:
			{
				/*get download type*/
				pTmpPartInfo[u32PartNum].u32Download_mode = *u8Data;
				u8Data += 2;

				/* get datagram number*/
				u16Temp = u8Data[0] << 8 | u8Data[1];
				pTmpPartInfo[u32PartNum].u32Datagram_number = (HI_U32)u16Temp;
				HI_DBG_LOADER("parse partinfo desc: datagramnum = %u\n", pTmpPartInfo[u32PartNum].u32Datagram_number);
				u8Data += 2;

				/*
				 * get partition upgrade stream size which restrict less than 490MB(2^16*8*(1024-32)/1024/1024 - 6MB). 
				 * 2^16: protocol define using 16 bytes to store the datagram number
				 * 8   : one datagram contain 8 sub section
				 * 1024 - 32 : the size of one section is 1024 which include 32 bytes control info
				 * 6MB : control section redundance
				 * for detail please refer to Datagram_current_section_number field description in loader technical manual
				 */ 
				GETFOURBYTE(u32Temp, u8Data);
				pTmpPartInfo[u32PartNum].u32Download_size = u32Temp;
				HI_DBG_LOADER("parse partinfo desc: download size = %u\n", pTmpPartInfo[u32PartNum].u32Download_size);

#define MAX_SINGLE_PARTITION_UPGRADE_STREAM_BYTES (((1<<16) * 8 * DATAGRAMLEN) - (6*1024*1024))
				if (pTmpPartInfo[u32PartNum].u32Download_size >= MAX_SINGLE_PARTITION_UPGRADE_STREAM_BYTES) 
				{
					HI_ERR_LOADER("the partition(NR:%d) upgrade file is too big(>%dMB).\n", u32PartNum, MAX_SINGLE_PARTITION_UPGRADE_STREAM_BYTES/1024/1024);
					return HI_FALSE;
				}	

				/*get partition origin sizes*/
				GETFOURBYTE(u32Temp, u8Data);
				pTmpPartInfo[u32PartNum].u32Download_old_size = u32Temp;

				/*get partition version range*/
				GETFOURBYTE(u32Temp, u8Data);
				pTmpPartInfo[u32PartNum].u32Download_old_ver_start = u32Temp;

				GETFOURBYTE(u32Temp, u8Data);
				pTmpPartInfo[u32PartNum].u32Download_old_ver_end = u32Temp;

				/*get partiton's new version number*/
				GETFOURBYTE(u32Temp, u8Data);
				pTmpPartInfo[u32PartNum].u32Download_ver = u32Temp;

				if (PARTMODE == pTmpPartInfo->u32Download_mode)
				{
					GETFOURBYTE(u32Temp, u8Data);
					pTmpPartInfo[u32PartNum].u32Download_addr = u32Temp;
					HI_DBG_LOADER("parse partinfo desc: brun flash addr: 0x%x\n", pTmpPartInfo[u32PartNum].u32Download_addr);
				}
				else
				{
					HI_DBG_LOADER("parse partinfo desc filename: ****************************\n" );
				}

				if (s32Len <= 0x1c)
				{
					pTmpPartInfo[u32PartNum].u32Download_FlashType  = 1; //default nand
					pTmpPartInfo[u32PartNum].u32Download_FlashIndex = 0; //defalut 0 flash
					HI_DBG_LOADER("old version loader ts packager packed stream used default FlashType:1, FlashIndex:0.\r\n");
					return HI_TRUE;     
				}

				HI_DBG_LOADER("New version loader ts packager packed stream \r\n");

				/* get down stream length*/
				u16Temp = u8Data[0] << 8 | u8Data[1];
				u8Data += 2;
				if (u16Temp != 0)
				{
					HI_DBG_LOADER("down stream length  = %hd\n", u16Temp);
					u8Data += u16Temp;
				}

				u16Temp = u8Data[0];
				u8Data++;
				if (u16Temp)
				{
					HI_DBG_LOADER("reserved tag used for HD loader.\r\n");
#if 1
					u16Temp = u8Data[0] << 8 | u8Data[1];
					u8Data += 2;
					HI_DBG_LOADER("reserved datalength %d.\r\n", u16Temp );

					GETFOURBYTE(u32Temp, u8Data);
					pTmpPartInfo[u32PartNum].u32Download_FlashType = u32Temp;
					HI_DBG_LOADER("parse partinfo desc: brun FlashType: 0x%x\n",
							pTmpPartInfo[u32PartNum].u32Download_FlashType);

					GETFOURBYTE(u32Temp, u8Data);
					pTmpPartInfo[u32PartNum].u32Download_FlashIndex = u32Temp;
					HI_DBG_LOADER("parse partinfo desc: brun flash index: 0x%x\n",
								pTmpPartInfo[u32PartNum].u32Download_FlashIndex);

					GETFOURBYTE(u32Temp, u8Data);
					pTmpPartInfo[u32PartNum].u32Partition_endaddr = u32Temp;
					HI_DBG_LOADER("parse partinfo desc: brun u32Partition_endaddr: 0x%x\n",
							pTmpPartInfo[u32PartNum].u32Partition_endaddr);
#endif
				}
				else
				{
					pTmpPartInfo[u32PartNum].u32Download_FlashType  = 1; //default nand
					pTmpPartInfo[u32PartNum].u32Download_FlashIndex = 0; //defalut 0 flash
				}

				return HI_TRUE;  
			}
			default:
				break;
		}

		HI_DBG_LOADER("parse partinfo desc loop: **************end**************\n" );
	}

	HI_DBG_LOADER("parse partinfo desc: -------------end-------------\n" );
	return HI_TRUE;
}

/*****************************************************************************
* Function:       UPGRD_ParseControlHead
* Description:   parse control head
* Calls:
* Data Accessed: None
* Data Updated:  None
* Input:
        pu8SectionData - section data
        s32Length - section length
* Output:         None
* Return:        HI_SUCCESS HI_FAILURE
* Others:        None
*****************************************************************************/
HI_S32 OTA_Hisi_ParseDownloadControlSection(const HI_U8 *pu8SectionData, HI_S32 s32Length)
{
    HI_S32 s32DataLength = 0;

    //HI_U16 u16tableextId = 0;
    HI_S32 s32Ret = 0;
    HISI_OTA_INFO_S *pstUpgrdInfo = &(g_stOTAInfo);

    if (HI_NULL == pu8SectionData)
    {
        s32Ret = (HI_S32)HI_UPGRD_ERR_PARA;
        HI_ERR_LOADER("pointer is null." );
        return s32Ret;
    }

    /* get section length*/
    s32Length = (HI_S32)((pu8SectionData[1] << 8) | pu8SectionData[2]) & 0x0fff;
    HI_DBG_LOADER("controlhead: section length = %d\n", s32Length );

    s32DataLength = s32Length + 3 - 4;  /*add by l55561 5.14*/

    pu8SectionData += 3;
    s32DataLength -= 3;

    /*parse table_id_extension*/

    //u16tableextId = (HI_U16)((pu8SectionData[0] << 8) | pu8SectionData[1]);

    //UPGRD_Printf("controlhead: table ext id = %d\n", u16tableextId);

    pu8SectionData += 5;
    s32DataLength -= 5;

    /* parse download_info description */
    HI_DBG_LOADER("parse controlhead table:s32DataLength is %d\n", s32DataLength );

    if (!ParseDownloadInfo(pu8SectionData, s32DataLength, pstUpgrdInfo))
    {
        s32Ret = (HI_S32)HI_UPGRD_UPGRDPARSE_DLCONTROLHEADERROR;
        HI_DBG_LOADER("\n[ERROR]==end parse download info: parse error ==\n" );
        return s32Ret;
    }

    {
        HI_U8 ii = 0;
        HI_U32 u32PartitionId = 1;
        LOADER_PARTITION_INFO_S *pstPartitionInfo = HI_NULL;
        HI_U32 u32MemLen = 0;

        g_stVerInfo.u32FactoryId   = pstUpgrdInfo->u16FactoryId;
        g_stVerInfo.u32HardwareVer = pstUpgrdInfo->u32HardwareVer;
        g_stVerInfo.u32Softwarever = pstUpgrdInfo->u32Software_ver;
        g_stVerInfo.u32StartSn = pstUpgrdInfo->u32startSn;
        g_stVerInfo.u32EndSn = pstUpgrdInfo->u32endSn;

        g_stDataInfo.u32DataFullSize  = pstUpgrdInfo->u32Download_data_totalsize;
        g_stDataInfo.u32DataFullCRC32 = pstUpgrdInfo->u32Full_CRC32;
        g_stDataInfo.bCheckFullCRC32 = HI_TRUE;
        g_stDataInfo.u32PartitionNum = pstUpgrdInfo->u8Partiton_number;

        g_u32MagicNum = pstUpgrdInfo->u32MagicNum;

        u32MemLen = g_stDataInfo.u32PartitionNum * sizeof(LOADER_PARTITION_INFO_S);
        pstPartitionInfo = (LOADER_PARTITION_INFO_S *)malloc(u32MemLen);

        if (HI_NULL == pstPartitionInfo)
        {
            return HI_FAILURE;
        }

        g_stDataInfo.pstPartitionInfo = pstPartitionInfo;

        for (ii = 0; ii < g_stDataInfo.u32PartitionNum; ii++)
        {
            g_stDataInfo.pstPartitionInfo[ii].u32PartitionId   = u32PartitionId++;
            g_stDataInfo.pstPartitionInfo[ii].u32ImageDataSize = pstUpgrdInfo->pPartInfo[ii].u32Download_size;
            g_u32DataGramSize = DATAGRAMLEN;
            g_stDataInfo.pstPartitionInfo[ii].u32ImageDataCRC32 = pstUpgrdInfo->pPartInfo[ii].u32Download_CRC32;
            g_stDataInfo.pstPartitionInfo[ii].u32FlashStartAddr = pstUpgrdInfo->pPartInfo[ii].u32Datagram_start_addr;

            HI_DBG_LOADER("partition %d datasize :%d\n", ii, g_stDataInfo.pstPartitionInfo[ii].u32ImageDataSize);
        }
    }

    HI_DBG_LOADER("ParseDownloadControlSection: ===end===\n" );
    return HI_SUCCESS;
}

/* parse part info */
HI_S32 OTA_Hisi_ParsePartitionControlSection(const HI_U8 *pu8SectionData, HI_S32 s32Length)
{
	HI_S32 s32DataLength = 0;
	HI_U16 u16tableextId = 0;
	HI_S32 s32Ret = 0;
	HI_U32 u32PartNum = 0;
	UPGRD_UpgrdPartInfo_S *pstPartInfo = g_stOTAInfo.pPartInfo;

	if ((HI_NULL == pu8SectionData) || (HI_NULL == pstPartInfo))
	{
		s32Ret = (HI_S32)HI_UPGRD_ERR_PARA;
		HI_ERR_LOADER("Pointer is null.\n" );
		return s32Ret;
	}

	/* check if part info section */
	if (g_u8download_tableid != pu8SectionData[0])
	{
		HI_DBG_LOADER("tblid=%d,sectionid=%d.\n", g_u8download_tableid, pu8SectionData[0]);
		s32Ret = (HI_S32)HI_UPGRD_UPGRDPARSE_DLPARTINFOTABLEIDERROR;
		HI_ERR_LOADER("this table isn't upgrd partinfo.\n");
		return s32Ret;
	}

	/* get section length */
	s32Length = (HI_S32)((pu8SectionData[1] << 8) | pu8SectionData[2]) & 0x0fff;
	HI_DBG_LOADER("partinfo: section length = %d\n", s32Length);

	pu8SectionData += 3;
	s32DataLength  = s32Length;
	s32DataLength -= 3;

	/*parse table_id_extension*/
	u16tableextId = (HI_U16)((pu8SectionData[0] << 8) | pu8SectionData[1]);
	HI_DBG_LOADER("partinfo: table ext id = %d\n", u16tableextId);

	if (UPGRD_PARTITION_TABILEEXTID != u16tableextId)
	{
		s32Ret = (HI_S32)HI_UPGRD_UPGRDPARSE_DLPARTINFOTABLEIDERROR;
		HI_ERR_LOADER("this table isn't upgrd partinfo.\n");
		return s32Ret;
	}

	u32PartNum = pu8SectionData[3]; /* get partition number */
	HI_DBG_LOADER("------Get partinfo %02d---------\n", u32PartNum);

	pu8SectionData += 5;
	s32DataLength -= 5;

	HI_DBG_LOADER("parse upgrd partinfo: pu8SectionData[0] is %d\n", pu8SectionData[0]);

	/*parse length of descriptors*/
	if (DLPARTHEAD_TAG != pu8SectionData[0])
	{
		s32Ret = (HI_S32)HI_UPGRD_UPGRDPARSE_DLPARTINFOTABLEIDERROR;
		HI_ERR_LOADER("this table isn't upgrd partinfo\n");
		HI_DBG_LOADER("parse upgrd partinfo: ==end==\n" );
		return s32Ret;
	}

	/* parse part_info description */
	if (!(ParsePartitionControl(pu8SectionData, s32DataLength, pstPartInfo, u32PartNum)))
	{
		return HI_FAILURE;
	}

	/* copy partition info to global variable*/
	if ((u32PartNum <= g_stDataInfo.u32PartitionNum) && (u32PartNum > 0))
	{
		LOADER_PARTITION_INFO_S *pPartInfo = &(g_stDataInfo.pstPartitionInfo[u32PartNum - 1]);

		pPartInfo->u32FlashType = pstPartInfo[u32PartNum - 1].u32Download_FlashType;
		pPartInfo->u32ImageFS = pstPartInfo[u32PartNum - 1].u32Download_FlashIndex;
		pPartInfo->u32FlashStartAddr = pstPartInfo[u32PartNum - 1].u32Download_addr;
		pPartInfo->u32FlashEndAddr = pstPartInfo[u32PartNum - 1].u32Partition_endaddr;

		HI_DBG_LOADER("type:%d, start:0x%x, end:0x%x, index:x%x\n", pPartInfo->u32FlashType,
				pPartInfo->u32FlashStartAddr, pPartInfo->u32FlashEndAddr, pPartInfo->u32ImageFS);
	}

	HI_DBG_LOADER("parse PartitionControlSection: ==end==\n" );
	return HI_SUCCESS;
}

HI_S32 OTA_Hisi_ParseDatagramSection(const HI_U8 *pu8SectionData, HI_S32 s32Length)
{
    HI_U16 u16tableextId = 0;
    HI_S32 s32DescLength = 0;

    HI_U32 u32DataFlag0 = 0;   /* upgrade control byte*/
    HI_U32 u32DataFlag1 = 0;

    HI_U8 u8Temp = 0;
    HI_U8* pu8DataBuf = HI_NULL;
    HI_U32 u32CRCRet = 0;
    HI_S32 s32Ret = 0;
    HI_BOOL bV3_3PackegerStream = HI_FALSE;
    HI_U8 u8PartNum = 0;
    HI_U16 u16DataGramNum = 0;
    HI_U8 u8SectionNum = 0;

#define HI_MAGICNUM_SIZE 4

    //HI_DBG_LOADER("parse upgrd datagram: ==start==\n" );
    if (HI_NULL == pu8SectionData)
    {
        s32Ret = (HI_S32)HI_UPGRD_ERR_PARA;
        HI_ERR_LOADER("null pointer fail\n" );
        HI_DBG_LOADER("parse upgrd datagram: ==end==\n" );
        return s32Ret;
    }

    /* check if datagram section */
    if (g_u8download_tableid != pu8SectionData[0])
    {
        s32Ret = (HI_S32)HI_UPGRD_UPGRDPARSE_DLPARTINFOTABLEIDERROR;
        HI_ERR_LOADER("this table isn't upgrd datagram\n");
        HI_DBG_LOADER("parse upgrd datagram : ==end==\n" );
        return s32Ret;
    }

    /***********add end********************/

    /* get section length */
    s32Length = (HI_S32)((pu8SectionData[1] << 8) | pu8SectionData[2]) & 0x0fff;

    s32DescLength = s32Length + 3;

    /*get crc value*/
    pu8DataBuf = (HI_U8 *) pu8SectionData;
    pu8SectionData += 3;      /*dele by l55561 5.14*/

#if 1
    /* never delete the code below, please! it's used for CRC one datagram's data if needed */
    /*CNcomment:校验数据*/
    s32Ret = LOADER_Entire_CRC32(pu8DataBuf, (HI_U32)s32DescLength, &u32CRCRet);
    if (HI_SUCCESS != s32Ret)
    {
        s32Ret = (HI_S32)HI_UPGRD_UPGRDPARSE_CRC32ERROR;
        HI_ERR_LOADER( "crc acculate error.");
        return HI_FAILURE;
    }

    if (0 != u32CRCRet)  /* datagram's data CRC error */
    {
        s32Ret = (HI_S32)HI_UPGRD_UPGRDPARSE_DATAERROR;
        HI_ERR_LOADER( "crc cmp error.");
        HI_DBG_LOADER("pu8DataBuf:0x%x s32DescLength: %d calc crc: 0x%x  readed crc: 0x%x\n", (HI_U32)pu8DataBuf,
                      s32DescLength, u32CRCRet);
        return HI_FAILURE; //fix0424
    }
#endif


    /*parse table_id_extension*/
    u16tableextId  = (HI_U16)((pu8SectionData[0] << 8) | pu8SectionData[1]);
    u16DataGramNum = u16tableextId;

    //HI_DBG_LOADER("controlhead: table ext id = %d\n", u16tableextId);

    pu8SectionData += 3;

    /*get section_number*/
    u8Temp = *pu8SectionData;
    u8PartNum = u8Temp;
    pu8SectionData += 2;

    if ((u8PartNum == 0) || (u8PartNum > 64))
    {
        HI_ERR_LOADER("Partition Number error:%d\n", u8PartNum - 1);
        return HI_FAILURE;
    }

    /* Magic number */
    HI_U32 u32MagicNum = 0;
    GETFOURBYTE(u32MagicNum, pu8SectionData);
    UNUSED(u32MagicNum);
    /* reserve */
    HI_U16 reserved_data_len = 0;
    reserved_data_len = (HI_U16)(((pu8SectionData[0] & 0x0F) << 8) | pu8SectionData[1]);

    pu8SectionData += (2 + reserved_data_len);

    /*get current section number */
    u8Temp = *pu8SectionData++;
    u8SectionNum   = u8Temp;

    if (!(u8SectionNum & 0x80))
    {
        bV3_3PackegerStream = HI_TRUE;

        //HI_DBG_LOADER("bV3_3PackegerStream = %d\n", bV3_3PackegerStream);
    }
    else
    {
        bV3_3PackegerStream = HI_FALSE;

        //HI_DBG_LOADER("bV3_3PackegerStream = %d\n", bV3_3PackegerStream);
    }

    /*parse length of data*/
    s32DescLength = (HI_S32)(((pu8SectionData[0] & 0x0F) << 8) | pu8SectionData[1]);

    //UPGRD_Printf("controlhead: download_info data length = %d\n", s32DescLength );

    pu8SectionData += 2;
    if (bV3_3PackegerStream)
    {
        u32DataFlag0 = (u16DataGramNum - 1);
        u32DataFlag1 = 0;
    }
    else
    {
        u32DataFlag0 = (u16DataGramNum - 1);
        u32DataFlag1 = (u8SectionNum & 0x0f) - 1;
    }

    if (bV3_3PackegerStream)
    {
        s32Ret = OTA_StoreSectionData(u8PartNum - 1, u32DataFlag0, pu8SectionData, s32DescLength);
    }
    else
    {
        s32Ret = OTA_StoreSectionData(u8PartNum - 1, u32DataFlag0 * 8 + u32DataFlag1, pu8SectionData, s32DescLength);
    }

    //HI_DBG_LOADER("parse datagram table: ==end==\n" );
    return s32Ret;
}

HI_S32 GetIndexByOTAId(HI_U32 u32PartId, HI_U32 *pu32Index)
{
    HI_U32 ii = 0;

    if (HI_NULL == pu32Index)
    {
        return HI_FAILURE;
    }

    for (ii = 0; ii < g_stDataInfo.u32PartitionNum; ii++)
    {
        if (u32PartId == g_stDataInfo.pstPartitionInfo[ii].u32PartitionId)
        {
            *pu32Index = ii;
            return HI_SUCCESS;
        }
    }

    return HI_FAILURE;
}

/**
 \brief initialize hisi ota protocol .
 \attention \n
 \param[in] enType: download data type
 \param[in] para: download parameters
 \retval ::HI_SUCCESS : initialize success
 \retval ::HI_FAILURE : initialize failed
 */
HI_S32 LOADER_PROTOCOL_HisiOTA_Init(HI_LOADER_TYPE_E enType, HI_VOID * para)
{
    HI_U32 ii = 0;

    if (HI_NULL == para)
    {
        return HI_FAILURE;
    }

    for (ii = 0; ii < MAX_UPGRADE_IMAGE_NUM; ii++)
    {
        g_au32CalculateCRC[ii] = 0xffffffff;
    }

    if (HI_LOADER_TYPE_OTA == enType)
    {
        HI_LOADER_OTA_PARA_S *pstOtaParam = (HI_LOADER_OTA_PARA_S *)para;

        if (HI_UNF_TUNER_SIG_TYPE_CAB == pstOtaParam->eSigType)
        {
            g_u32Pid = pstOtaParam->unConnPara.stCab.u32OtaPid;
        }
        else if (HI_UNF_TUNER_SIG_TYPE_SAT == pstOtaParam->eSigType)
        {
            g_u32Pid = pstOtaParam->unConnPara.stSat.u32OtaPid;
        }
        else if (HI_UNF_TUNER_SIG_TYPE_DVB_T == pstOtaParam->eSigType 
			  || HI_UNF_TUNER_SIG_TYPE_DVB_T2 == pstOtaParam->eSigType
			  ||(HI_UNF_TUNER_SIG_TYPE_DVB_T | HI_UNF_TUNER_SIG_TYPE_DVB_T2) == pstOtaParam->eSigType)
        {
            g_u32Pid = pstOtaParam->unConnPara.stTer.u32OtaPid;
        }
        else
        {
			HI_ERR_LOADER("Invalid signal type.\n");
        }

        return LOADER_DOWNLOAD_OTA_Init(para);
    }

    return HI_FAILURE;
}

HI_S32 LOADER_PROTOCOL_HisiOTA_RegisterCallback(LOADERCALLBACKSET_S *pstCallback)
{
    if (HI_NULL != pstCallback)
    {
        g_pstCallback = pstCallback;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

/**
 \brief deinitialize hisi ota protocol.
 \attention \n
 \retval ::HI_SUCCESS : deinitialize success
 \retval ::HI_FAILURE : deinitialize failed
 */
HI_VOID LOADER_PROTOCOL_HisiOTA_DeInit(HI_VOID)
{
    if (HI_NULL != g_stDataInfo.pstPartitionInfo)
    {
        free(g_stDataInfo.pstPartitionInfo);
        g_stDataInfo.pstPartitionInfo = HI_NULL;
    }

    OTA_FreeMemory();
}


/**
 \brief get version of hisi ota protocol upgrade stream.
 \attention \n
 \param[in] versioninfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiOTA_GetVersionInfo(LOADER_VERSION_INFO_S * versioninfo)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32SectionLen = 0;

    /*Tuner configuration*/
    HI_UNF_DMX_FILTER_ATTR_S stFilterAttr =
    {
        FILTERDEPTH,
        {0x00,       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
        {0x00,       0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff},
        {   0,          0,    0,    0,    0,    0,    0,    0,    0,    0,    0,    0},
    };

    memset(&stFilterAttr, 0, sizeof(stFilterAttr));
    stFilterAttr.au8Match[0] = DLCONTROLHEAD_TABLE_ID;
    stFilterAttr.u32FilterDepth = 1;
    HI_DBG_LOADER("[LOADER] start CONTROL HEAD receive and parse\n");
    if (HI_NULL == versioninfo)
    {
        return HI_FAILURE;
    }

    s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stFilterAttr);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    s32Ret = LOADER_DOWNLOAD_OTA_getdata(g_au8SectionBuffer, SECTION_BUFFER_LENGTH, &u32SectionLen);
    if (HI_SUCCESS != s32Ret)
    {
        HI_ERR_LOADER("OTA getdata failure!\n");
        return s32Ret;
    }

    s32Ret = OTA_Hisi_ParseDownloadControlSection(g_au8SectionBuffer, (HI_S32)u32SectionLen);
    if (HI_SUCCESS != s32Ret)
    {
        return s32Ret;
    }

    memcpy(versioninfo, &g_stVerInfo, sizeof(LOADER_VERSION_INFO_S));

    return HI_SUCCESS;
}

/**
 \brief get partition infomation of hisi ota protocol upgrade stream.
 \attention \n
 \param[in] datainfo:
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiOTA_GetPartitionInfo(LOADER_PARTITION_INFO_S * pstPartInfo, HI_U32 u32BufNum,
                                                HI_U32 *pu32PartNum)
{
    HI_S32 s32Ret = HI_SUCCESS;
    HI_U32 u32SectionLen = 0;

    HI_U8 u8PartCount = 0;

    /*section configuration*/

    if (HI_NULL == pstPartInfo)
    {
        return HI_FAILURE;
    }

    HI_DBG_LOADER("download_tableid   = %x , pid : %x\n", g_u8download_tableid, g_u32Pid);

    for (u8PartCount = 0; u8PartCount < g_stDataInfo.u32PartitionNum; u8PartCount++)
    {
        HI_UNF_DMX_FILTER_ATTR_S stFilterAttr =
        {
            FILTERDEPTH,
            {g_u8download_tableid, 0x00, 0x00, 0x00, u8PartCount + 1, 0x00, DLPARTHEAD_TAG, 0x00, 0x00, 0x00, 0x00, 0x00},
            {                0x00, 0x00, 0x00, 0xff,             0x00, 0xff,           0x00, 0xff, 0xff, 0xff, 0xff, 0xff},
            {                   0,    0,    0,    0,                0,    0,              0,    0,    0,    0,    0,    0},            
        };

        s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stFilterAttr);
        if (HI_SUCCESS != s32Ret)
        {
            return s32Ret;
        }

        s32Ret = LOADER_DOWNLOAD_OTA_getdata((HI_VOID *)g_au8SectionBuffer, SECTION_BUFFER_LENGTH, &u32SectionLen);

        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("OTA getdata failure!\n");
            return s32Ret;
        }

        s32Ret = OTA_Hisi_ParsePartitionControlSection(g_au8SectionBuffer, u32SectionLen);
        if (HI_SUCCESS != s32Ret)
        {
            HI_ERR_LOADER("found invalid upgrade stream partiton control section.\n");
            return s32Ret;
        }
    }

    if (u32BufNum < g_stDataInfo.u32PartitionNum)
    {
        HI_ERR_LOADER("the u32BufNum(%d) is too small, there are %d partitins", u32BufNum, g_stDataInfo.u32PartitionNum);
        return HI_FAILURE;
    }

    memcpy(pstPartInfo, g_stDataInfo.pstPartitionInfo,
           g_stDataInfo.u32PartitionNum * sizeof(LOADER_PARTITION_INFO_S));
    *pu32PartNum = g_stDataInfo.u32PartitionNum;

    return HI_SUCCESS;
}

/**
 \brief receive upgrade data, and call datacallback to notice caller the data.
 \attention \n
 \param[in] datacallback:
 \param[in] u32MaxMemorySize:  max memory size the implementer can malloc
 \retval ::HI_SUCCESS : success
 \retval ::HI_FAILURE : failure
 */
HI_S32 LOADER_PROTOCOL_HisiOTA_Process(HI_U32 u32MaxMemorySize)
{
	HI_S32 s32Ret = HI_SUCCESS;
	HI_U32 u32SectionLen = 0;
	DOWNLOAD_STATUS_E enDLStatus;
	HI_U32 u32ImageNum;

	HI_U8 magic[4];
	HI_U8 *pMemAddr = 0;
	HI_U32 u32Size = 0;

	HI_DBG_LOADER("download_tableid   = %x , pid : %x\n", g_u8download_tableid, g_u32Pid);

	memcpy(magic, &(g_u32MagicNum), sizeof(magic));
	HI_DBG_LOADER("Magic:%02x %02x %02x %02x  \n", (HI_U32)magic[3], (HI_U32)magic[2], (HI_U32)magic[1],
			(HI_U32)magic[0]);

	HI_UNF_DMX_FILTER_ATTR_S stFilterAttr =
	{
		FILTERDEPTH,
		{g_u8download_tableid, 0x00, 0x00, 0x00, 0x00, 0x00, magic[3], magic[2], magic[1], magic[0], 0x00, 0x00},
		{    0x00,             0xff, 0xff, 0xff, 0xff, 0xff,     0x00,     0x00,     0x00,     0x00, 0xff, 0xff},
		{    0,                   0,	0,    0,	0,    0,		0,        0,		0,        0,	0,    0},
	};

	HI_DBG_LOADER("MaxMemorySize: %d", u32MaxMemorySize);

	if (0 == u32MaxMemorySize)
	{
		return HI_FAILURE;
	}

	if ((g_pstCallback == HI_NULL) || (g_pstCallback->pfnDataCallback == HI_NULL))
	{
		return HI_FAILURE;
	}

	s32Ret = OTA_InitUpgradeBuff(&g_stDataInfo, g_u32DataGramSize);

	pMemAddr = LOADER_GetUsableMemory(g_stDataInfo.u32DataFullSize+PLUS_MEM_SIZE, &u32Size);
	if (NULL == pMemAddr)
	{
		HI_ERR_LOADER("There is no Usable Memory");
		return HI_FAILURE;
	}

	s32Ret = OTA_AllocateUpgradeBuff(pMemAddr, u32Size);
	if (HI_SUCCESS != s32Ret)
	{
		HI_ERR_LOADER("allocate memory failed");
		LOADER_FreeUsableMemory(pMemAddr);
		return HI_FAILURE;
	}

	s32Ret = LOADER_DOWNLOAD_OTA_setfilter((HI_U16)g_u32Pid, &stFilterAttr);
	if (HI_SUCCESS != s32Ret)
	{
		LOADER_FreeUsableMemory(pMemAddr);
		return s32Ret;
	}

	while (1)
	{
		s32Ret = LOADER_DOWNLOAD_OTA_getdata((HI_VOID *)g_au8SectionBuffer, SECTION_BUFFER_LENGTH, &u32SectionLen);
		if (HI_SUCCESS != s32Ret)
		{
			HI_ERR_LOADER("OTA getdata failuer!\n");
			LOADER_FreeUsableMemory(pMemAddr);
			return s32Ret;
		}

		s32Ret = OTA_Hisi_ParseDatagramSection(g_au8SectionBuffer, (HI_S32)u32SectionLen);
		if (HI_SUCCESS != s32Ret)
		{
			LOADER_FreeUsableMemory(pMemAddr);
			return s32Ret;
		}

		enDLStatus = OTA_CheckDownloadStatus(g_astData, sizeof(g_astData) / sizeof(g_astData[0]), &u32ImageNum);

		if (g_pstCallback && g_pstCallback->pfnOSDCallback)
		{
			g_pstCallback->pfnOSDCallback(OSD_EVENT_TYPE_DOWNLOAD, OTA_GetDownLoadDataSize(),
					g_stDataInfo.u32DataFullSize);
		}

		if ((DOWNLOAD_STATUS_PIECE_COMPLETE == enDLStatus)
				|| (DOWNLOAD_STATUS_ALL_COMPLETE == enDLStatus))
		{
			HI_U32 ii = 0;
			HI_U32 u32Index  = 0;
			HI_U32 u32CRCTmp = 0;

			/*calculate crc, compare crc*/
			for (ii = 0; ii < u32ImageNum; ii++)
			{
				if (HI_SUCCESS != GetIndexByOTAId((HI_U16)g_astData[ii].u32PartitionId, &u32Index))
				{
					HI_ERR_LOADER("DATA ERROR!");
					s32Ret = HI_UPGRD_DATA_ERROR;
					break;
				}

				LOADER_Segmental_CRC32(g_au32CalculateCRC[u32Index], g_astData[ii].u8DataBuff,
						g_astData[ii].u32DataSize, &u32CRCTmp);

				g_au32CalculateCRC[u32Index] = u32CRCTmp;

				if (g_astData[ii].bLastData)
				{
					if (g_au32CalculateCRC[u32Index] != g_stDataInfo.pstPartitionInfo[u32Index].u32ImageDataCRC32)
					{
						HI_ERR_LOADER("partition %d CRC ERROR! cal:0x%08x, ori:0x%08x",
								g_au32CalculateCRC[u32Index],
								g_stDataInfo.pstPartitionInfo[u32Index].u32ImageDataCRC32);
						s32Ret = HI_UPGRD_CRC_ERROR;
						break;
					}
				}
			}

			/*there must be data error or crc error in the received data, so return failure*/
			if (ii < u32ImageNum)
			{
				LOADER_FreeUsableMemory(pMemAddr);
				return s32Ret;
			}

			if (g_pstCallback && g_pstCallback->pfnDataCallback)
			{
				s32Ret = g_pstCallback->pfnDataCallback(g_astData, u32ImageNum);
				if (HI_SUCCESS != s32Ret)
				{
					HI_ERR_LOADER("pfnDataCallback");
					LOADER_FreeUsableMemory(pMemAddr);
					return HI_FAILURE;
				}
			}

			if (DOWNLOAD_STATUS_PIECE_COMPLETE == enDLStatus)
			{
				s32Ret = OTA_AllocateUpgradeBuff(pMemAddr, u32Size);
				if (HI_SUCCESS != s32Ret)
				{
					HI_ERR_LOADER("allocate memory failed");
					LOADER_FreeUsableMemory(pMemAddr);
					return HI_FAILURE;
				}
			}
			else
			{
				//have download all data, skip out the loop
				break;
			}
		}
	}
	LOADER_FreeUsableMemory(pMemAddr);

	return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
