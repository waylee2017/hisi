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
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <sys/stat.h>
#include <fcntl.h>
#include "upgrd_emmc.h"
#include "loaderdb_info.h"
#include "upgrd_common.h"
#include "crc32.h"

//#define UPGRD_EMMC_DBG

#define FDISK_DEVICE "/dev/mmcblk0"
#define FDISK_EXTEND_PART "Extended"

#define EMMC_DEV_PART_HEAD "/dev/mmcblk0p"
#define EMMC_EXT_PART_ID 5
#define FDISK_LOGIC_DEV_MAX 255
#define EMMC_MAX_PART_NUM 15

#define FDISK_SECTOR_SIZE (512)

/* Defines the type of filesystem*/
typedef enum FdiskMKFSType_E
{
    FDISK_MKFS_TYPE_VFAT,
    FDISK_MKFS_TYPE_EXT2,
    FDISK_MKFS_TYPE_EXT3,
    FDISK_MKFS_TYPE_EXT4,

    FDISK_MKFS_TYPE_BUTT
} FDISK_MKFS_TYPE_E;

typedef struct FdiskDevInfo
{
    HI_U8  u8DevNo;
    HI_U8  u8ID;
    HI_U16 u16Reserved;
    HI_U32 u32Start;
    HI_U32 u32End;
} FDISK_DEV_INFO_S;

typedef struct FdiskDev
{
    FDISK_DEV_INFO_S astDevInfo[FDISK_LOGIC_DEV_MAX];
    HI_U16           u16DevNum;
} FDISK_DEV_S;

static FILE * g_pf_write = NULL;
static FDISK_DEV_S g_stEMMCDevInfo;
static HI_S32 upgrd_emmc_check_parts(HI_U16 au16PartSize[], HI_U16 usNum);
static HI_S32 upgrd_emmc_mkfs(HI_U8 ucDevNo, FDISK_MKFS_TYPE_E enType);
HI_S32        upgrd_search_str(HI_CHAR *pcSrc, HI_U32 u32Len, HI_CHAR *pcSubStr, HI_CHAR **ppcDest);

static HI_S32 upgrd_emmc_init()
{
    g_stEMMCDevInfo.u16DevNum = 0;
    memset(g_stEMMCDevInfo.astDevInfo, 0xff, sizeof(g_stEMMCDevInfo.astDevInfo));

    return HI_SUCCESS;
}

static HI_CHAR * upgrd_emmc_rtrim(HI_CHAR *pcText )
{
    HI_CHAR *p;

    if (NULL == pcText)
    {
        HI_ERR_LOADER("pointer is null.");
        return NULL;
    }

    p = &pcText[strlen(pcText) - 1];
    for (; p != pcText; p--)
    {
        if ((0x20 != *p) && ('\t' != *p))
        {
            *(++p) = 0;
            break;
        }
    }

    return pcText;
}

static HI_CHAR * upgrd_emmc_trim(HI_CHAR *pcText )
{
    HI_CHAR *p;

    if (NULL == pcText)
    {
        HI_ERR_LOADER("pointer is null.");
        return NULL;
    }

    for (p = pcText; *p != '\0'; p++)
    {
        if ((0x20 == *p)
            || ('\t' == *p)
            || (';' == *p))
        {
            *p = 0;
            break;
        }
    }

    return pcText;
}

static HI_CHAR *upgrd_emmc_find_word(HI_CHAR *pcText)
{
    HI_CHAR *p;

    if (NULL == pcText)
    {
        HI_ERR_LOADER("pointer is null.");
        return NULL;
    }

    p = &pcText[strlen(pcText) - 1];
    for (; p != pcText; p--)
    {
        if ((0x20 == *p) || ('\t' == *p))
        {
            return ++p;
        }
    }

    return NULL;
}

static HI_S32 upgrd_emmc_command( HI_CHAR *pcBuf )
{
    HI_CHAR acBuffer[128];
    HI_S32 u32Ret;
    HI_U8 ucLen;

    if (NULL == pcBuf)
    {
        HI_ERR_LOADER("pointer is null.");
        return HI_FAILURE;
    }

    HI_OSAL_Snprintf(acBuffer, sizeof(acBuffer), "%s\n", pcBuf);
    ucLen  = strlen(acBuffer);
    u32Ret = fwrite(acBuffer, 1, ucLen, g_pf_write);
    if (ucLen != u32Ret)
    {
        HI_ERR_LOADER("Failed to write device!");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 upgrd_emmc_probe_all()
{
	FILE *pf_read;
	HI_CHAR ac8Line[1024];
	HI_CHAR acSystem[32];
	HI_U16 u16Loop = 0;
	HI_CHAR *p;

	pf_read = popen("fdisk -lu " FDISK_DEVICE, "r");
	if (NULL == pf_read)
	{
		HI_ERR_LOADER("Failed to get device info!");
		return HI_FAILURE;
	}

	while (fgets(ac8Line, sizeof(ac8Line), pf_read))
	{
		if (HI_OSAL_Strncmp(ac8Line, EMMC_DEV_PART_HEAD, strlen(EMMC_DEV_PART_HEAD)))
		{
			continue;
		}

		for (p = ac8Line; *p != '\0'; p++)
		{
			if (('\r' == *p) || ('\n' == *p))
			{
				*p = 0;
				break;
			}
		}

		p = upgrd_emmc_rtrim(ac8Line);
		if (NULL == p)
		{
			HI_ERR_LOADER("upgrd_emmc_rtrim return NULL string.");
			pclose(pf_read);
			return HI_FAILURE;
		}

		p = upgrd_emmc_find_word(ac8Line);
		if (NULL == p)
		{
			HI_ERR_LOADER("upgrd_emmc_find_word return NULL string.");
			pclose(pf_read);
			return HI_FAILURE;
		}

		HI_OSAL_Strncpy(acSystem, p, sizeof(acSystem));
		acSystem[sizeof(acSystem) - 1] = '\0';

		/* gets Id of partition */
		*(--p) = 0;
		upgrd_emmc_rtrim(ac8Line);
		p = upgrd_emmc_find_word(ac8Line);
		if (NULL == p)
		{
			HI_ERR_LOADER("upgrd_emmc_find_word return NULL string.");
			pclose(pf_read);
			return HI_FAILURE;
		}
		g_stEMMCDevInfo.astDevInfo[u16Loop].u8ID = (HI_U8)atoi(p);

		/*Here are number of Blocks */
		*(--p) = 0;
		upgrd_emmc_rtrim(ac8Line);
		p = upgrd_emmc_find_word(ac8Line);
		if (NULL == p)
		{
			HI_ERR_LOADER("upgrd_emmc_find_word return NULL string.");
			pclose(pf_read);
			return HI_FAILURE;
		}

		/* gets end sectors of partition */
		*(--p) = 0;
		upgrd_emmc_rtrim(ac8Line);
		p = upgrd_emmc_find_word(ac8Line);
		if (NULL == p)
		{
			HI_ERR_LOADER("upgrd_emmc_find_word return NULL string.");
			pclose(pf_read);
			return HI_FAILURE;
		}
		g_stEMMCDevInfo.astDevInfo[u16Loop].u32End = (HI_U32)atoi(p);

		/* gets start sectors of partition */
		*(--p) = 0;
		upgrd_emmc_rtrim(ac8Line);
		p = upgrd_emmc_find_word(ac8Line);
		if (NULL == p)
		{
			HI_ERR_LOADER("upgrd_emmc_find_word return NULL string.");
			pclose(pf_read);
			return HI_FAILURE;
		}
		g_stEMMCDevInfo.astDevInfo[u16Loop].u32Start = (HI_U32)atoi(p);

		p = &ac8Line[0];
		for (; *p != 0; p++)
		{
			if (0x20 == *p)
			{
				*p = 0;
				break;
			}
		}

		g_stEMMCDevInfo.astDevInfo[u16Loop].u8DevNo = atoi(&ac8Line[strlen(EMMC_DEV_PART_HEAD)]);
		HI_DBG_LOADER("dev:%u system:%s Start:%u End:%u Id:%u\n",
				g_stEMMCDevInfo.astDevInfo[u16Loop].u8DevNo,
				acSystem,
				g_stEMMCDevInfo.astDevInfo[u16Loop].u32Start,
				g_stEMMCDevInfo.astDevInfo[u16Loop].u32End,
				g_stEMMCDevInfo.astDevInfo[u16Loop].u8ID);

		u16Loop++;
	}

	g_stEMMCDevInfo.u16DevNum = u16Loop;

	pclose(pf_read);

	for (u16Loop = 0; u16Loop < g_stEMMCDevInfo.u16DevNum; u16Loop++)
	{
		if (EMMC_EXT_PART_ID == g_stEMMCDevInfo.astDevInfo[u16Loop].u8ID)
		{
			break;
		}
	}

	if (u16Loop >= g_stEMMCDevInfo.u16DevNum)
	{
		HI_ERR_LOADER("Device do not have extended partition.");
		return HI_FAILURE;
	}

	return HI_SUCCESS;
}

static HI_S32 Upgrd_emmc_open(void)
{
    g_pf_write = popen("fdisk -u " FDISK_DEVICE, "w");
    if (NULL == g_pf_write)
    {
        HI_ERR_LOADER("Failed to open device!");
        return HI_FAILURE;
    }

    return HI_SUCCESS;
}

static HI_S32 Upgrd_emmc_close(void)
{
    if (NULL != g_pf_write)
    {
        pclose(g_pf_write);
        g_pf_write = NULL;
    }

    return HI_SUCCESS;
}

static HI_S32 upgrd_emmc_write_parts_rec(void)
{
    upgrd_emmc_command("w");
    return HI_SUCCESS;
}

static HI_S32 upgrd_emmc_remove_logic_parts()
{
    HI_U16 u16Loop;

    for (u16Loop = 0; u16Loop < g_stEMMCDevInfo.u16DevNum; u16Loop++)
    {
        if (EMMC_EXT_PART_ID == g_stEMMCDevInfo.astDevInfo[u16Loop].u8ID)
        {
            continue;
        }

        upgrd_emmc_command("d");
        upgrd_emmc_command("5");
        HI_DBG_LOADER("command:remove partition %d \n", u16Loop);
    }

    return HI_SUCCESS;
}

static HI_S32 upgrd_emmc_add_logic_part(HI_U32 u32LogicSize)
{
    HI_CHAR acBuf[128];
    HI_U32 u32Sectors;

    u32Sectors = ((u32LogicSize * 1024 * 1024) + FDISK_SECTOR_SIZE - 1)
                 / FDISK_SECTOR_SIZE;
    if (0 == u32LogicSize)
    {
        acBuf[0] = 0;
    }
    else
    {
        HI_OSAL_Snprintf(acBuf, sizeof(acBuf),"+%d", u32Sectors);
    }

    upgrd_emmc_command("n");
    upgrd_emmc_command("l");
    upgrd_emmc_command("");
    upgrd_emmc_command(acBuf);

    HI_DBG_LOADER("The sectors of new logic partition:%s\n", acBuf);
    return HI_SUCCESS;
}

static HI_S32 upgrd_emmc_fdisk(HI_U16 au16PartSize[],
                               HI_U16 u16Num)
{
    HI_U16 u16Loop;

#ifdef UPGRD_EMMC_DBG
    HI_DBG_LOADER("---------upgrd_emmc_fdisk----------\n");

    for (u16Loop = 0; u16Loop < u16Num; u16Loop++)
    {
        HI_DBG_LOADER("au16PartSize[%d] :%d\n", u16Loop, au16PartSize[u16Loop]);
    }
#endif


    if (HI_SUCCESS != upgrd_emmc_probe_all())
    {
        return HI_FAILURE;
    }

    if (HI_FAILURE != upgrd_emmc_check_parts(au16PartSize, u16Num))
    {
        return HI_SUCCESS;
    }

    if (HI_SUCCESS != Upgrd_emmc_open())
    {
        return HI_FAILURE;
    }

    /*Here is to delete all logic partitions*/
    if (HI_SUCCESS != upgrd_emmc_remove_logic_parts())
    {
        Upgrd_emmc_close();
        return HI_FAILURE;
    }

    for (u16Loop = 0; u16Loop < u16Num; u16Loop++)
    {
        upgrd_emmc_add_logic_part(au16PartSize[u16Loop]);
    }

    if (HI_SUCCESS != upgrd_emmc_write_parts_rec())
    {
        Upgrd_emmc_close();
        return HI_FAILURE;
    }

    Upgrd_emmc_close();

    if (HI_SUCCESS != upgrd_emmc_probe_all())
    {
        return HI_FAILURE;
    }

    if (HI_SUCCESS != upgrd_emmc_check_parts(au16PartSize, u16Num))
    {
        HI_ERR_LOADER("Failed to fdisk disk.");
        return HI_FAILURE;
    }

    for (u16Loop = 0; u16Loop < g_stEMMCDevInfo.u16DevNum; u16Loop++)
    {
        if (EMMC_EXT_PART_ID == g_stEMMCDevInfo.astDevInfo[u16Loop].u8ID)
        {
            continue;
        }

        if (HI_SUCCESS != upgrd_emmc_mkfs(g_stEMMCDevInfo.astDevInfo[u16Loop].u8DevNo,
                                          FDISK_MKFS_TYPE_EXT3))
        {
            HI_ERR_LOADER("Failed to format partition %d.",
                          g_stEMMCDevInfo.astDevInfo[u16Loop].u8DevNo);
            return HI_FAILURE;
        }
    }

    return HI_SUCCESS;
}

static HI_S32 upgrd_emmc_check_parts(HI_U16 au16PartSize[], HI_U16 usNum)
{
    HI_U32 u32Loop;
    HI_U32 u32Sectors;

    if (usNum != g_stEMMCDevInfo.u16DevNum - 1)
    {
        return HI_FAILURE;
    }

    for (u32Loop = 0; u32Loop < usNum; u32Loop++)
    {
        u32Sectors = ((au16PartSize[u32Loop] * 1024 * 1024)
                      + FDISK_SECTOR_SIZE - 1)
                     / FDISK_SECTOR_SIZE;

        if (u32Sectors == (g_stEMMCDevInfo.astDevInfo[u32Loop + 1].u32End
                           - g_stEMMCDevInfo.astDevInfo[u32Loop + 1].u32Start))
        {
            continue;
        }

        if ((0 != u32Sectors) || (u32Loop != usNum - 1)
            || (g_stEMMCDevInfo.astDevInfo[u32Loop + 1].u32End != g_stEMMCDevInfo.astDevInfo[0].u32End))
        {
            return HI_FAILURE;
        }
    }

    HI_DBG_LOADER("New partitions is same the disk's.\n");
    return HI_SUCCESS;
}

static HI_S32 upgrd_emmc_mkfs(HI_U8 ucDevNo, FDISK_MKFS_TYPE_E enType)
{
    HI_S32 s32Status;
    pid_t child_pid;
    HI_CHAR acBuf[128];
    HI_CHAR * argv_list[] = {NULL, NULL, NULL};
	HI_CHAR tools[4][12] = {"mkfs.vfat", "mkfs.ext2", "mkfs.ext3", "mkfs.ext4"};

    HI_OSAL_Snprintf(acBuf, sizeof(acBuf), "%s%d", EMMC_DEV_PART_HEAD, ucDevNo);
    argv_list[1] = acBuf;

    switch (enType)
    {
    case FDISK_MKFS_TYPE_VFAT:
        argv_list[0] = tools[0];
        break;

    case FDISK_MKFS_TYPE_EXT2:
        argv_list[0] = tools[1];
        break;

    case FDISK_MKFS_TYPE_EXT3:
        argv_list[0] = tools[2];
        break;

    case FDISK_MKFS_TYPE_EXT4:
        argv_list[0] = tools[3];
        break;

    default:
        argv_list[0] = tools[2];
        break;
    }

    child_pid = fork();
    if (0 == child_pid)
    {
        execvp((const char *)argv_list[0], (char * const*)argv_list);
        HI_ERR_LOADER("on error occurred in execvp!\r\n");
        abort();
    }

    if (-1 == child_pid)
    {
        return HI_FAILURE;
    }

    waitpid(child_pid, &s32Status, 0);
/*lint -save -e69 -e155*/
    if (WIFEXITED(s32Status))
    {
        return (WEXITSTATUS(s32Status));
    }
/*lint -restore*/

    return HI_FAILURE;
}

static HI_S32 upgrd_emmc_get_part_info(HI_CHAR *  pcStr,
                                       HI_U16 *pu16PartSize,
                                       HI_U16 * pusNum)
{
    HI_CHAR  *p;
    HI_U8 ucUnit;
    HI_U16 u16Num;
    HI_U32 u32Temp;
    HI_U16 au16PartSize[EMMC_MAX_PART_NUM];

    p = pcStr;
    u16Num = 0;
	memset(au16PartSize, 0, sizeof(au16PartSize));

    while (*p)
    {
        if ('-' == *p)
        {
            au16PartSize[u16Num++] = 0;
            *pusNum = u16Num;
            memcpy(pu16PartSize, au16PartSize, sizeof(au16PartSize));
            return HI_SUCCESS;
        }

        if (('0' > *p) || ('9' < *p))
        {
            ucUnit = *p;
            *p = 0;
            u32Temp = (HI_U32)atoi(pcStr);
            pcStr = ++p;

            switch (ucUnit)
            {
            case 'm':
            case 'M':
                au16PartSize[u16Num++] = u32Temp;
                break;

            case 'k':
            case 'K':
                au16PartSize[u16Num++] = u32Temp / 1024;
                break;

            default:
                return HI_FAILURE;
            }

            break;
        }

        p++;
    }

    pcStr = ++p;
    while (pcStr = strstr(pcStr, ","))
    {
        if (EMMC_MAX_PART_NUM <= u16Num)
        {
            return HI_FAILURE;
        }

        p = ++pcStr;
        while (*p)
        {
            if ('-' == *p)
            {
                au16PartSize[u16Num++] = 0;
                *pusNum = u16Num;
                memcpy(pu16PartSize, au16PartSize, sizeof(au16PartSize));
                return HI_SUCCESS;
            }

            if (('0' > *p) || ('9' < *p))
            {
                ucUnit = *p;
                *p = 0;
                u32Temp = (HI_U32)atoi(pcStr);
                pcStr = ++p;

                switch (ucUnit)
                {
                case 'm':
                case 'M':
                    au16PartSize[u16Num++] = u32Temp;
                    break;

                case 'k':
                case 'K':
                    au16PartSize[u16Num++] = u32Temp / 1024;
                    break;

                default:
                    return HI_FAILURE;
                }

                break;
            }

            p++;
        }
    }

    *pusNum = u16Num;
    memcpy(pu16PartSize, au16PartSize, sizeof(au16PartSize));
    return HI_SUCCESS;
}

HI_S32 upgrd_emmc_fdisk_proc(HI_CHAR *pc8Data)
{
	HI_U16 au16PartSize[EMMC_MAX_PART_NUM];
	HI_U16 u16Num;
	HI_U32 u32Crc;
	HI_CHAR  *pcBootargs;
	HI_CHAR *bootargs = "bootargs=";
	HI_CHAR *emmcparts = "emmcparts=";

#ifdef UPGRD_EMMC_DBG
	HI_U8 u8Loop;
#endif
	HI_CHAR *p;
#define MAX_BUF_SIZE (512*1024)
	HI_CHAR *acBuff;

	acBuff = malloc(MAX_BUF_SIZE);
	if (!acBuff)
	{
		HI_ERR_LOADER("malloc space failed.\n");
		return HI_FAILURE;
	}

	u32Crc = ((pc8Data[3] << 24) & 0xff000000)
		| ((pc8Data[2] << 16) & 0x00ff0000)
		| ((pc8Data[1] << 8) & 0x0000ff00)
		| ((pc8Data[0]) & 0xff);

	if (u32Crc != crc32(0, (HI_U8 *)&pc8Data[4], EMMC_BOOTARGS_SIZE - 4))
	{
		HI_ERR_LOADER("Invalid crc32 value.");
		free(acBuff);
		return HI_FAILURE;
	}

	if (HI_SUCCESS != upgrd_search_str(pc8Data,
				EMMC_BOOTARGS_SIZE,
				"bootargs=",
				&pcBootargs))
	{
		HI_ERR_LOADER("Failed to search string 'bootargs='.");
		free(acBuff);
		return HI_FAILURE;
	}

#ifdef UPGRD_EMMC_DBG
	memset(acBuff, 0x0, MAX_BUF_SIZE);
	HI_OSAL_Strncpy(acBuff, pcBootargs, MAX_BUF_SIZE - 1);
	HI_ERR_LOADER("=========================\n");
	HI_DBG_LOADER("Bootargs:%s\n", acBuff);
#endif

	if (NULL == (p = strstr((HI_S8*)pcBootargs, "emmcparts=")))
	{
		HI_ERR_LOADER("No found emmcparts.");
		free(acBuff);
		return HI_FAILURE;
	}

	HI_OSAL_Strncpy(acBuff, p + strlen("emmcparts="), MAX_BUF_SIZE - 1);
	upgrd_emmc_trim(acBuff);

#ifdef UPGRD_EMMC_DBG
	HI_DBG_LOADER("emmcparts=%s\n", acBuff);
#endif

	if (HI_SUCCESS != upgrd_emmc_get_part_info(acBuff,
				au16PartSize,
				&u16Num))
	{
		HI_ERR_LOADER("Failed to get new partition info.\n");
		free(acBuff);
		return HI_FAILURE;
	}

#ifdef UPGRD_EMMC_DBG
	HI_DBG_LOADER("\n  u16Num:%d \n", u16Num);
	for (u8Loop = 0; u8Loop < u16Num; u8Loop++)
	{
		HI_DBG_LOADER("au16PartSize[%d]:%d \n", u8Loop, au16PartSize[u8Loop]);
	}
#endif


	upgrd_emmc_init();
	if (HI_SUCCESS != upgrd_emmc_fdisk(au16PartSize, u16Num))
	{
		HI_ERR_LOADER("Failed to fdisk eMMC.\n");
		free(acBuff);
		return HI_FAILURE;
	}

	free(acBuff);
	return HI_SUCCESS;
}

HI_S32 upgrd_search_str(HI_CHAR *pcSrc, HI_U32 u32Len, HI_CHAR *pcSubStr, HI_CHAR **ppcDest)
{
    HI_U32 u32SubLen = 0;

    if ((NULL == pcSrc)
        || (NULL == pcSubStr))
    {
        *ppcDest = NULL;
        return HI_FAILURE;
    }

    u32SubLen = strlen(pcSubStr);
    while (u32Len >= u32SubLen)
    {
        u32Len--;
        if (!memcmp(pcSrc, pcSubStr, u32SubLen))
        {
            *ppcDest = pcSrc;
            return HI_SUCCESS;
        }

        pcSrc++;
    }

    *ppcDest = NULL;
    return HI_FAILURE;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
