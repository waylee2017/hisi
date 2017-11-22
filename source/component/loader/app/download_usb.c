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
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

/*include header files  */
#include "hi_type.h"
#include "download_usb.h"
#include "hi_loader_info.h"
#include "upgrd_common.h"
#include "upgrd_osd.h"
#include "loaderdb_info.h"
#include "loader_upgrade.h"
#include "protocol_hisi_file.h"
#ifdef HI_LOADER_BOOTLOADER
 #include <uboot.h>
#else
 #include<sys/mount.h>
#endif

static HI_U32 g_u32ReadOffset = 0;
static char g_acFileName[LOADER_FILE_NAME_LEN];

static HI_S32 UsbCheckDevice(HI_VOID);
static HI_BOOL g_bInit = HI_FALSE;

extern HI_U32 g_u32UsbUpgradeFileSize;

#ifdef HI_LOADER_BOOTLOADER

static HI_S32 UsbCheckDevice(HI_VOID)
{
	usb_set_negotiation_timeout(5);
    return usb_detect();
}

static HI_S32 UsbCheckFile(const HI_CHAR *pstrFileName)
{
    return usb_file_check(pstrFileName);
}
static long UsbRead(const char *filename, void *buffer, unsigned long offset, unsigned long maxsize)
{
    return usb_file_read(filename, buffer, offset, maxsize);
}

#else

#define USB_CHK_NTFS_OK 0x1

typedef enum
{
    HI_UDISK_FSTYPE_FAT = 0x0,
    HI_UDISK_FSTYPE_FAT32,
    HI_UDISK_FSTYPE_NTFS,
    HI_UDISK_FSTYPE_EXT2,
    HI_UDISK_FSTYPE_EXT3,
    HI_UDISK_FSTYPE_EXT4,

    HI_UDISK_FSTYPE_BUT,
} HI_UDISK_FSTYPE_E;

static HI_U8* GetDataBuf(HI_U32 len)
{
    HI_U8 *pu8Temp = HI_NULL;

    /* allocate memory for partitions  */
    pu8Temp = (HI_U8*)malloc(len);
    return pu8Temp;
}

/* To fix errors on the desk */
static HI_S32 UDISK_Chkntfs(const HI_CHAR *pcExtName)
{
    HI_S32 s32Status;
    pid_t child_pid;
    char string[2][12] = {"ntfsck", "-f"};
    HI_CHAR * argv_list[] =
    {NULL,
     NULL,
     NULL,
     NULL};

    if (NULL == pcExtName)
    {
        return HI_FAILURE;
    }
    
    argv_list[0] = string[0];
    argv_list[1] = (HI_CHAR *)pcExtName;
    argv_list[2] = string[1];
    
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

static HI_S32 UDISK_Mount(const char * source, const char * target, const char *fs, HI_UDISK_FSTYPE_E * fs_mnt)
{
    HI_S32 ret;

    /* Specified format to load.*/
    if (fs != NULL)
    {
        ret = mount(source, target, fs, MS_NOSUID | MS_NODEV | MS_NOEXEC, NULL);
        if (ret < 0)
        {
            HI_DBG_LOADER("<ERROR>mount %s on %s type %s failed!\n", source, target, fs);
        }

        return ret;
    }

    /* Automatically choose filesystem type to mount when unspecified filesystem type.  */
    if (UDISK_Mount(source, target, "vfat", NULL) >= 0)
    {
        *fs_mnt = HI_UDISK_FSTYPE_FAT32;
        return HI_SUCCESS;
    }

    if (UDISK_Mount(source, target, "ext4", NULL) >= 0)
    {
        *fs_mnt = HI_UDISK_FSTYPE_EXT4;
        return HI_SUCCESS;
    }

    if (UDISK_Mount(source, target, "ext3", NULL) >= 0)
    {
        *fs_mnt = HI_UDISK_FSTYPE_EXT3;
        return HI_SUCCESS;
    }

    if (UDISK_Mount(source, target, "ext2", NULL) >= 0)
    {
        *fs_mnt = HI_UDISK_FSTYPE_EXT2;
        return HI_SUCCESS;
    }

    UDISK_Chkntfs(source);
    if (UDISK_Mount(source, target, "tntfs", NULL) >= 0)
    {
        *fs_mnt = HI_UDISK_FSTYPE_NTFS;
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

static HI_S32 UDISK_Umount(const char * target)
{
    HI_S32 ret;

    /* 2: MNT_DETACH:
    ** Perform a lazy unmount: make the mount point unavailable for new accesses,
    ** and actually perform the unmount when the mount point ceases  to be busy. */
    ret = umount2(target, 2);
    if (ret < 0)
    {
        perror("umount");
        HI_DBG_LOADER("<ERROR>umount %s failed!\n", target);
    }

    return ret;
}

static HI_S32 Upgrd_USB_Probe()
{
    struct stat statbuf;

    memset(&statbuf, 0, sizeof(statbuf));
    if (0 != lstat(UPGRD_USB_DEV, &statbuf))
    {
        return HI_FAILURE;
    }

    if (S_ISBLK(statbuf.st_mode))
    {
        return HI_SUCCESS;
    }

    return HI_FAILURE;
}

/*Trim away the space, return or table character of right string.*/
static void Usb_rtrim(HI_CHAR *pcString)
{
    HI_CHAR *pc;

    if (HI_NULL == pcString)
    {
        HI_ERR_LOADER("Invalid pointer.\n");
        return;
    }

    if (0 == strlen(pcString))
    {
        return;
    }

    pc = pcString + 1;
    while (*pc)
    {
        if ((0x20 == *pc) || ('\t' == *pc) || ('\n' == *pc) || ('\r' == *pc))
        {
            *pc = '\0';
            return;
        }

        pc++;
    }
}

static HI_S32 UsbCheckDevice()
{
    HI_S32 s32Loop = 0;

    HI_DBG_LOADER("Probing usb device now.\n");
    for (s32Loop = 0; s32Loop < UPGRD_USB_TRY_TIMES; s32Loop++)
    {
        LOADER_Delayms(250);
        if (HI_SUCCESS == Upgrd_USB_Probe())
        {
            HI_DBG_LOADER("\nprobe a usb device.\n");
            break;
        }
    }

    if (UPGRD_USB_TRY_TIMES <= s32Loop)
    {
        HI_DBG_LOADER("\nNo found  usb device.\n");
        return HI_FAILURE;
    }

    HI_DBG_LOADER("\n****Find a usb device*****.\n");

    return HI_SUCCESS;    
}
#ifndef HI_ADVCA_TYPE_CONAX
static HI_S32 UsbCheckFile(const HI_CHAR *pstrFileName)
{
    HI_UDISK_FSTYPE_E fs_mnt;
    FILE *pf_read;
    HI_CHAR aucLine[1024];
    struct stat statbuf;

    //LOADER_Delayms(1000);
    pf_read = popen("ls -1 /dev/sda* 2>/dev/null", "r");
    if (NULL == pf_read)
    {
        HI_ERR_LOADER("Failed to get device info!");
        return HI_FAILURE;
    }

    while (fgets(aucLine, sizeof(aucLine), pf_read))
    {
        HI_DBG_LOADER("Search update file in %s", aucLine);

        Usb_rtrim(aucLine);
        if (0 == HI_OSAL_Strncmp(aucLine, UPGRD_USB_DEV, sizeof(UPGRD_USB_DEV) ))
        {
            if (fgets(aucLine, sizeof(aucLine), pf_read))
            {
                Usb_rtrim(aucLine);
                if (HI_SUCCESS != UDISK_Mount(aucLine, "/tmp", NULL, &fs_mnt))
                {
                    continue;
                }             
            }
            else
            {
                if (HI_SUCCESS != UDISK_Mount(UPGRD_USB_DEV, "/tmp", NULL, &fs_mnt))
                {
                     continue;
                }
            }
        }
        else
        {
            if (HI_SUCCESS != UDISK_Mount(aucLine, "/tmp", NULL, &fs_mnt))
            {
                continue;
            }
        }
        HI_DBG_LOADER("upgrade file name:%s\n", pstrFileName);

        memset(&statbuf, 0, sizeof(statbuf));
        if (0 != lstat(pstrFileName, &statbuf) || !S_ISREG(statbuf.st_mode))
        {
            HI_ERR_LOADER("No found update file in %s", aucLine);
            UDISK_Umount("/tmp");
            LOADER_Delayms(250);
            continue;
        }
        pclose(pf_read);
#if defined(HI_ADVCA_SUPPORT) && defined(HI_LOADER_PROTOCOL_HISI_FILE)
		g_u32UsbUpgradeFileSize = statbuf.st_size;
#endif		
        HI_DBG_LOADER("Have found update file, file system is: %d\r\n", fs_mnt);
        return HI_SUCCESS;
    }

    pclose(pf_read);
    HI_DBG_LOADER("Have not found update file.\n");
    return HI_FAILURE;
}
#else
static HI_S32 UsbCheckFile(const HI_CHAR *pstrFileName)
{
    HI_UDISK_FSTYPE_E fs_mnt;
    HI_CHAR aucLine[32];
    struct stat statbuf;
    HI_S32 i = 0;
    for (i = 0; i <= MAX_USB_PARTITION_NUM; i++)
    {
        HI_DBG_LOADER("Search update file in %s", aucLine);
        memset(aucLine, 0x0, sizeof(aucLine));
        if (0 == i)
        {
            HI_OSAL_Snprintf(aucLine, sizeof(aucLine),UPGRD_USB_DEV);
        }
        else
        {
            HI_OSAL_Snprintf(aucLine, sizeof(aucLine), UPGRD_USB_DEV"%d", i);
        }
        Usb_rtrim(aucLine);
        if (HI_SUCCESS != UDISK_Mount(aucLine, "/tmp", NULL, &fs_mnt))
        {
            HI_ERR_LOADER("aucLine is %s\n", aucLine);
            continue;
        }
        
        HI_DBG_LOADER("upgrade file name:%s\n", pstrFileName);

        memset(&statbuf, 0, sizeof(statbuf));
        if (0 != lstat(pstrFileName, &statbuf)|| !S_ISREG(statbuf.st_mode))
        {
            HI_ERR_LOADER("No found update file in %s", aucLine);
            UDISK_Umount("/tmp");
            LOADER_Delayms(250);
            continue;
        }
        g_u32UsbUpgradeFileSize = statbuf.st_size;

        HI_DBG_LOADER("Have found update file, file system is: %d\r\n", fs_mnt);
        return HI_SUCCESS;
    }

    HI_DBG_LOADER("Have not found update file.\n");
    return HI_FAILURE;
}
#endif

static long UsbRead(const char *filename, void *buffer, unsigned long offset, unsigned long maxsize)
{
    FILE* fp = NULL;
    long Redlen = 0;

    fp = fopen(filename, "r");
    if (NULL == fp)
    {
        HI_ERR_LOADER("Open file %s failed.\n", filename);
        return -1;
    }

    if (0 != fseek(fp, offset, SEEK_SET))
    {
        fclose(fp );
        return -1;
    }

    Redlen = fread(buffer, 1, maxsize, fp);
    fclose(fp );

    return Redlen;
}

long file_get_size(const char *filename)
{
    FILE* fp = NULL;
    long filelen = 0;

    fp = fopen(filename, "r");
    if (NULL == fp)
    {
        HI_ERR_LOADER("Open file %s failed.\n", filename);
        return -1;
    }

    fseek(fp, 0L, SEEK_END);
    filelen = ftell(fp);
    fseek(fp, 0L, SEEK_SET);

    fclose(fp );

    return filelen;
}

#endif

/**
 \brief initialize USB download mode.
 \attention \n
 \param[in] Para:
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */

// OTA
HI_S32 LOADER_DOWNLOAD_USB_Init(HI_VOID * Para)
{
    HI_S32 s32Ret = HI_SUCCESS;

    if (g_bInit == HI_TRUE)
    {
        return HI_SUCCESS;
    }

    g_u32ReadOffset = 0;

    memset((HI_VOID *)g_acFileName, 0, sizeof(g_acFileName));

    if (HI_NULL == Para)
    {
#ifdef HI_LOADER_BOOTLOADER
        memcpy((HI_VOID *)g_acFileName, DEFAULT_UPDATE_FILE_NAME, 
        strlen(DEFAULT_UPDATE_FILE_NAME)+1);
#else
        HI_OSAL_Snprintf(g_acFileName, sizeof(g_acFileName), "/tmp/%s", DEFAULT_UPDATE_FILE_NAME);
#endif
    }
    else
    {
        HI_U32 u32Len = strlen((HI_CHAR *)Para)+1;

        HI_DBG_LOADER("USB upgrade file : %s\n", Para);

        if (u32Len > sizeof(g_acFileName))
        {
            u32Len = sizeof(g_acFileName);
        }
#ifdef HI_LOADER_BOOTLOADER
        memcpy((HI_VOID *)g_acFileName, Para, u32Len);
#else
        if (((HI_CHAR *)Para)[0] == '/')
        {
            HI_OSAL_Snprintf(g_acFileName, sizeof(g_acFileName), "/tmp%s", (HI_CHAR*)Para);
        }
        else
        {
            HI_OSAL_Snprintf(g_acFileName, sizeof(g_acFileName), "/tmp/%s", (HI_CHAR*)Para);
        }
#endif
    }

    s32Ret = UsbCheckDevice();
    if (s32Ret == HI_SUCCESS)
    {
        g_bInit = HI_TRUE;
    }

    s32Ret = UsbCheckFile(g_acFileName);

    return s32Ret;
}

/**
 \brief deinitialize USB download mode.
 \attention \n
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_USB_DeInit(HI_VOID)
{
    g_bInit = HI_FALSE;

#ifdef HI_LOADER_APPLOADER
    UDISK_Umount("/tmp");
#endif
    return HI_SUCCESS;
}

/**
 \brief Get upgrade data through USB.
 \attention \n
 \param[in] pbuffer: data buffer, allocate by caller
 \param[in] size: the max expected size, it must be samller than the buffer length
 \param[out] outlen: the really length of data
 \retval ::HI_SUCCESS : get data success
 \retval ::HI_FAILURE : failed to get data
 */
HI_S32 LOADER_DOWNLOAD_USB_Getdata(HI_VOID * pbuffer, HI_U32 size, HI_U32 * outlen)
{
    long lRet = 0;

    if ((HI_NULL == pbuffer) || (HI_NULL == outlen))
        return HI_FAILURE;

    lRet = UsbRead(g_acFileName, pbuffer, (unsigned long)g_u32ReadOffset, (unsigned long)size);
    if (lRet < 0)
        return HI_FAILURE;

    *outlen = lRet;
    g_u32ReadOffset += lRet;

    return HI_SUCCESS;
}

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif  /* __cplusplus */
