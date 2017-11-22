/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName ：ErrorCode.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：Jason   Reviewer : 
* Date ：2005-01-12
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：Jason   Reviewer : 
* 		Date ：2005-01-12
*		Record : Create File
****************************************************************************/
#include "string.h"
#include "mlm_type.h"
#include "mlm_vfs.h"
#include "mlm_usb.h"
#include <dirent.h>
#include "sys/stat.h"
#include "fcntl.h"





#if 0
#define MLVFS_ERR(fmt, args...)   MLMF_Print("\033[31m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#define MLVFS_DEBUG(fmt, args...) MLMF_Print("\033[32m[%s:%d] "#fmt" \033[0m\r\n", __func__, __LINE__, ##args)
#else
#define MLVFS_ERR(fmt, args...)  {}
#define MLVFS_DEBUG(fmt, args...) {}
#endif

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */
/*-----------------------Module Functions-------------------------*/

#define AM_RDO  0x01  /* Read only */
#define AM_HID  0x02  /* Hidden */
#define AM_SYS  0x04  /* System */
#define AM_VOL  0x08  /* Volume label */ 
#define AM_LFN  0x0F  /* LFN entry */
#define AM_DIR  0x10  /* Directory */
#define AM_ARC  0x20  /* Archive */
#define AM_MASK 0x3F  /* Mask of defined bits */

#define MLMF_VFS_DIR_OPEN_MAX 10
#define MLMF_VFS_FILE_OPEN_MAX 10

typedef struct _mlmf_vfs_dir_mng_t_
{
    DIR      *dPath;
	MBT_BOOL  bUsed;
}mlmf_vfs_dir_mng_t;

typedef struct _mlmf_vfs_file_mng_t_
{
    MBT_S32   s32Fd;
	MBT_BOOL  bUsed;
}mlmf_vfs_file_mng_t;


mlmf_vfs_dir_mng_t vfsDirList[MLMF_VFS_DIR_OPEN_MAX];
mlmf_vfs_file_mng_t vfsFileList[MLMF_VFS_FILE_OPEN_MAX];

static MBT_VOID _vfs_hnd_mng_init(MBT_VOID)
{
	memset(vfsDirList,0,sizeof(vfsDirList));
	memset(vfsFileList,0,sizeof(vfsFileList));
}

/*关闭所有打开的文件和目录*/
static MBT_VOID _vfs_hnd_mng_release(MBT_VOID)
{
	MBT_U32 i;

	for(i=0;i<MLMF_VFS_FILE_OPEN_MAX;i++)
	{
		if(vfsFileList[i].bUsed)
		{
			vfsFileList[i].bUsed = MM_FALSE;
		}
	}
    
	for(i=0;i<MLMF_VFS_DIR_OPEN_MAX;i++)
	{
		if(vfsDirList[i].bUsed)
		{
			vfsDirList[i].bUsed = MM_FALSE;
		}
	}
}

static mlmf_vfs_dir_mng_t* _vfs_dir_hnd_free_check(MET_VFS_FileHandle_T *hnd)
{
	MBT_U32 i;
	
	for(i=0; i<MLMF_VFS_DIR_OPEN_MAX; i++)
	{
		if(!vfsDirList[i].bUsed)
		{
			*hnd = i;
			return &vfsDirList[i];
		}
	}
	return MM_NULL;
}

static mlmf_vfs_file_mng_t* _vfs_file_hnd_free_check(MET_VFS_FileHandle_T *hnd)
{
	MBT_U32 i;
	
	for(i=0; i<MLMF_VFS_FILE_OPEN_MAX; i++)
	{
		if(!vfsFileList[i].bUsed)
		{
			*hnd = i;
			return &vfsFileList[i];
		}
	}
	return MM_NULL;
}

static mlmf_vfs_dir_mng_t* _vfs_dir_hnd_get(MET_VFS_FileHandle_T hnd)
{
	return &vfsDirList[hnd];
}

static mlmf_vfs_file_mng_t* _vfs_file_hnd_get(MET_VFS_FileHandle_T hnd)
{
	return &vfsFileList[hnd];
}

#if 1
#define MAX_CHARACTER_SIZE    8
static int UTF8ToUnicode (unsigned char *ch, int *unicode)
{
    unsigned char *p = NULL;
    int e = 0, n = 0;
    if((p = ch) && unicode)
    {
        if(*p >= 0xfc)
        {
            /* 6:<11111100> */
            e = (p[0] & 0x01) << 30;
            e |= (p[1] & 0x3f) << 24;
            e |= (p[2] & 0x3f) << 18;
            e |= (p[3] & 0x3f) << 12;
            e |= (p[4] & 0x3f) << 6;
            e |= (p[5] & 0x3f);
            n = 6;
        }
        else if(*p >= 0xf8)
        {
            /* 5:<11111000> */
            e = (p[0] & 0x03) << 24;
            e |= (p[1] & 0x3f) << 18;
            e |= (p[2] & 0x3f) << 12;
            e |= (p[3] & 0x3f) << 6;
            e |= (p[4] & 0x3f);
            n = 5;
        }
        else if(*p >= 0xf0)
        {
            /* 4:<11110000> */
            e = (p[0] & 0x07) << 18;
            e |= (p[1] & 0x3f) << 12;
            e |= (p[2] & 0x3f) << 6;
            e |= (p[3] & 0x3f);
            n = 4;
        }
        else if(*p >= 0xe0)
        {
            /* 3:<11100000> */
            e = (p[0] & 0x0f) << 12;
            e |= (p[1] & 0x3f) << 6;
            e |= (p[2] & 0x3f);
            n = 3;
        }
        else if(*p >= 0xc0)
        {
            /* 2:<11000000> */
            e = (p[0] & 0x1f) << 6;
            e |= (p[1] & 0x3f);
            n = 2;
        }
        else
        {
            e = p[0];
            n = 1;
        }
        *unicode = e;
    }
    /* Return bytes count of this utf-8 character */
    return n;
}

static unsigned char * UnicodeToUTF8( int unicode,unsigned char *p)
{
    unsigned char *e = NULL;
    if((e = p))
    {
        if(unicode < 0x80)
        {
            *e++ = unicode;
        }
        else if(unicode < 0x800)
        {

            *e++ = ((unicode >> 6) & 0x1f)|0xc0;
            *e++ = (unicode & 0x3f)|0x80;
        }
        else if(unicode < 0x10000)
        {

            *e++ = ((unicode >> 12) & 0x0f)|0xe0;
            *e++ = ((unicode >> 6) & 0x3f)|0x80;
            *e++ = (unicode & 0x3f)|0x80;
        }
        else if(unicode < 0x200000)
        {

            *e++ = ((unicode >> 18) & 0x07)|0xf0;
            *e++ = ((unicode >> 12) & 0x3f)|0x80;
            *e++ = ((unicode >> 6) & 0x3f)|0x80;
            *e++ = (unicode & 0x3f)|0x80;
        }
        else if(unicode < 0x4000000)
        {

            *e++ = ((unicode >> 24) & 0x03)|0xf8 ;
            *e++ = ((unicode >> 18) & 0x3f)|0x80;
            *e++ = ((unicode >> 12) & 0x3f)|0x80;
            *e++ = ((unicode >> 6) & 0x3f)|0x80;
            *e++ = (unicode & 0x3f)|0x80;
        }
        else
        {

            *e++ = ((unicode >> 30) & 0x01)|0xfc;
            *e++ = ((unicode >> 24) & 0x3f)|0x80;
            *e++ = ((unicode >> 18) & 0x3f)|0x80;
            *e++ = ((unicode >> 12) & 0x3f)|0x80;
            *e++ = ((unicode >> 6) & 0x3f)|0x80;
            *e++ = (unicode & 0x3f)|0x80;
        }
    }

    return e;
}

static unsigned char * UnicodeStrToUTF8Str (unsigned short * unicode_str,
                            unsigned char * utf8_str, int utf8_str_size)
{
    int unicode = 0;
    unsigned char *e = NULL, *s = NULL;
    unsigned char utf8_ch[MAX_CHARACTER_SIZE];
    s = utf8_str;
    if ((unicode_str) && (s))
    {
        while ((unicode = (int) (*unicode_str++)))
        {
            memset (utf8_ch, 0, sizeof (utf8_ch));

            if ((e = UnicodeToUTF8 (unicode, utf8_ch)) > utf8_ch)
            {
                *e = '\0';

                /* Judge whether exceed the destination buffer */
                if ((s - utf8_str + strlen ((const char *) utf8_ch)) >= utf8_str_size)
                {
                    return s;
                }
                else
                {
                    memcpy (s, utf8_ch, strlen ((const char *) utf8_ch));
                    s += strlen ((const char *) utf8_ch);
                    *s = '\0';
                }
            }
            else
            {
                /* Converting error occurs */
                return s;
            }
        }
    }

    return s;
}

static int UTF8StrToUnicodeStr (unsigned char * utf8_str,
                    unsigned short * unicode_str, int unicode_str_size)
{
    int unicode = 0;
    int n = 0;
    int count = 0;
    unsigned char *s = NULL;
    unsigned short *e = NULL;

    s = utf8_str;
    e = unicode_str;

    if ((utf8_str) && (unicode_str))
    {
        while (*s)
        {
            if ((n = UTF8ToUnicode (s, &unicode)) > 0)
            {
                if ((count + 1) >= unicode_str_size)
                {
                    return count;
                }
                else
                {
                    *e = (unsigned short) unicode;
                    e++;
                    *e = 0;

                    count ++;
                    // Step to next utf-8 character 
                    s += n;
                }
            }
            else
            {
                // Converting error occurs 
                return count;
            }
        }
    }

    return count;
}

#endif

/*
*说明：打开文件。
*输入参数：
*	   fileName: 操作系统支持文件名称字符串,绝对地址。
*	   u32OpenMode: 打开方式。
*输出参数:
*	    无。
*返回：
*		成功：返回的文件句柄,非零表示有效句柄。
*		失败：MM_INVALID_HANDLE。
*/

MET_VFS_FileHandle_T MLMF_VFS_File_Open(const MBT_CHAR *pfileName,MMT_VFS_FileMode_E stOpenMode)
{
    MLVFS_DEBUG("Enter!!!");
    mlmf_vfs_file_mng_t *fileTmp;
    MET_VFS_FileHandle_T hnd;
	MBT_U16 fileName[512]={0};
	
	if(pfileName == NULL){
		return MET_VFS_INVALID_HANDLE;
	}

	memset(fileName, 0, sizeof(fileName));
	UTF8StrToUnicodeStr ((unsigned char * )pfileName, fileName, 510);

	if(0 == MLMF_USB_GetDevVolNum())
	{
	    MLVFS_ERR("Device is 0");
		return MET_VFS_INVALID_HANDLE;
	}

    fileTmp = _vfs_file_hnd_free_check(&hnd);
	if(MM_NULL == fileTmp)
	{
	    MLVFS_ERR("MET_VFS_INVALID_HANDLE");
		return MET_VFS_INVALID_HANDLE;
	}
	
	if(MM_VFS_OPEN_MODE_OpenRead == stOpenMode)
	{
	//	fileTmp->s32Fd = MI_FS_Open((MI_U8 *)fileName, O_RDONLY);
	}
	else if(MM_VFS_OPEN_MODE_OpenWrite == stOpenMode)
	{
	//	fileTmp->s32Fd = MI_FS_Open((MI_U8 *)fileName, O_WRONLY);
	}
	else if(MM_VFS_OPEN_MODE_OpenReadWrite == stOpenMode)
	{
	//	fileTmp->s32Fd =  MI_FS_Open((MI_U8 *)fileName, O_RDWR);
	}
	else if(MM_VFS_OPEN_MODE_OpenCreate == stOpenMode)
	{
	//	fileTmp->s32Fd = MI_FS_Open((MI_U8 *)fileName, O_CREAT);
	}
	else if(MM_VFS_OPEN_MODE_OpenExsit == stOpenMode)
	{
	//	fileTmp->s32Fd = MI_FS_Open((MI_U8 *)fileName, O_EXCL);
	}
	else if(MM_VFS_OPEN_MODE_OpenAppend == stOpenMode)
	{
	//	fileTmp->s32Fd = MI_FS_Open((MI_U8 *)fileName, O_WRONLY | O_WRONLY | O_RDWR);
		if(fileTmp->s32Fd < 0)
		{
	//		fileTmp->s32Fd = MI_FS_Open((MI_U8 *)fileName, O_CREAT | O_CREAT);
		}
	}
	
	if(fileTmp->s32Fd >= 0)
	{
	    MLVFS_DEBUG("Success!!!");
	    fileTmp->bUsed = MM_TRUE;
		return hnd;
	}
	else
	{
	    fileTmp->s32Fd = -1;
	    MLVFS_ERR("Open fail");
		return MET_VFS_INVALID_HANDLE;
	}
}

/*
*说明：关闭文件。
*输入参数：
*		   fileHandle: 文件句柄。
*输出参数:
*			无。
*	    返回：
*		   MM_NO_ERROR:成功。
*		   错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_File_Close(MET_VFS_FileHandle_T fileHandle)
{
    MLVFS_DEBUG("Enter!!!");
    mlmf_vfs_file_mng_t *fileTmp;
	fileTmp = _vfs_file_hnd_get(fileHandle);
	fileTmp->bUsed = MM_FALSE;
  //  if(MI_OK != MI_FS_Close(fileTmp->s32Fd))
    {
        MLVFS_ERR("Close fs fail!!!");
        return MM_ERROR_UNKNOW;
    }
    MLVFS_DEBUG("Success!!!");
    return MM_NO_ERROR;
}




/*
*说明：删除一个文件。
*输入参数：
*	   fileName: 文件的绝对路径。
*输出参数:
*			无。
*	    返回：
*		   MM_NO_ERROR:成功。
*		   错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_File_Remove(const MBT_CHAR *fileName)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}


/*
*说明：从指定的文件中读取指定长度的数据。
*输入参数：
*	   fileHandle: 指定的文件句柄。
*	   buffer: 保存data的地址。
*	   len: data长度。
*输出参数:
*			无。
*	    返回：
*		    读到的字节数。
*/
MBT_U32 MLMF_VFS_File_Read(MET_VFS_FileHandle_T fileHandle, MBT_U8 *buffer, MBT_U32 len)
{
    MLVFS_DEBUG("Enter!!!");
    mlmf_vfs_file_mng_t *fileTmp;
	fileTmp = _vfs_file_hnd_get(fileHandle);
	MBT_S32 u32ReadSize = 0;

	if(0 == MLMF_USB_GetDevVolNum())
	{
	    MLVFS_ERR("Dev num is 0");
        return 0;
	}
//	u32ReadSize = MI_FS_Read(fileTmp->s32Fd, (void *)buffer, (MI_U32)len);
    if(u32ReadSize == -1)
    {
        MLVFS_ERR("Read size fail!!!");
        return 0;
    }
    MLVFS_DEBUG("Success!!!");
    return u32ReadSize;
}


/*
*说明：往指定的文件中写入指定长度的数据。
*输入参数：
*	   fileHandle: 指定的文件句柄。
*	   buffer: 要写入的数据缓存。
*	   len: buffer缓存的长度。
*输出参数:
*			无。
*	    返回：
*		    写入的字节数。
*/
MBT_U32 MLMF_VFS_File_Write(MET_VFS_FileHandle_T fileHandle, const MBT_CHAR *buffer, MBT_U32 len)
{
    MLVFS_DEBUG("Enter!!!");
    mlmf_vfs_file_mng_t *fileTmp;
	fileTmp = _vfs_file_hnd_get(fileHandle);
	MBT_S32 u32WriteSize = 0;

	if(0 == MLMF_USB_GetDevVolNum())
	{
	    MLVFS_ERR("Dev num is 0");
        return 0;
	}
//	u32WriteSize = MI_FS_Write(fileTmp->s32Fd, (void *)buffer, (MI_U32)len);
    if(u32WriteSize == -1)
    {
        MLVFS_ERR("Write size fail!!!");
        return 0;
    }
    MLVFS_DEBUG("Success!!!");
    return u32WriteSize;
}

/*
*说明：移动文件指针。
*输入参数：
*	    fileHandle: 指定的文件句柄。
*	    type: 移动方式。
*	    s32Offset: 要移动的字节数。
*输出参数:
*			无。
*	    返回：
*		   MM_NO_ERROR:成功。
*		   错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_File_Seek(MET_VFS_FileHandle_T fileHandle, MBT_S32 s32Offset,MMT_FFS_FileSeek_E type)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}


/*
*说明：获取文件当前的位置。
*输入参数：
*	    fileHandle: 指定的文件句柄。
*输出参数:
*	          无。
*	    返回：
*	          无。
*/
MBT_U32 MLMF_VFS_File_Tell(MET_VFS_FileHandle_T fileHandle)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}



/*
*说明：将缓存区中的内容写入存储设备。
*输入参数：
*	    fileHandle: 指定的文件句柄。
*输出参数:
*			无。
*	    返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_File_Flush(MET_VFS_FileHandle_T fileHandle)
{
    //not use
    return MM_ERROR_FEATURE_NOT_SUPPORTED;
}

/*
*说明：创建指定的目录。
*输入参数：
*	    dirPath: 目录的绝对路径。
*输出参数:
*			无。
*	    返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Dir_Create(const MBT_CHAR *dirPath)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}

/*
*说明：删除指定的目录(目录为空时才能删除)。
*输入参数：
*	    dirPath: 目录的绝对路径。
*输出参数:
*			无。
*返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Dir_Remove(const MBT_CHAR *dirPath)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}


/*
*说明:  打开文件系统中的目录,获取目录的句柄。
*输入参数：
*	    dirPath: 目录的绝对路径。
*输出参数:
*			无。
*返回：
*		   目录名柄。
*/
MET_VFS_DirHandle_T MLMF_VFS_Dir_Open(const MBT_CHAR *dirPath)
{
    MLVFS_DEBUG("Enter! open: %s, len: %d\n", dirPath, strlen(dirPath));
    mlmf_vfs_dir_mng_t *dirTmp;
	MET_VFS_FileHandle_T hnd;
	MBT_U16 path[512]={0};
	
	if(0 == MLMF_USB_GetDevVolNum())
	{
	    MLVFS_ERR("Dev num is 0");
		return MET_VFS_INVALID_HANDLE;
	}
	dirTmp = _vfs_dir_hnd_free_check(&hnd);
	if(MM_NULL == dirTmp)
	{
		MLVFS_ERR("Dir Open Get Fail");
		return MET_VFS_INVALID_HANDLE;
	}
	memset(dirTmp, 0, sizeof(mlmf_vfs_dir_mng_t));
	memset(path, 0, sizeof(path));
	UTF8StrToUnicodeStr ((unsigned char * )dirPath, path, 510);
//	dirTmp->dPath = MI_FS_Opendir((MI_U8 *)path);
	if(dirTmp->dPath != NULL)
	{
		dirTmp->bUsed = MM_TRUE;
        MLVFS_DEBUG("Success");
		return hnd;
	}
    MLVFS_ERR("---> VFS Dir Open fail");
    return MET_VFS_INVALID_HANDLE;
}


/*
*说明：关闭指定句柄的目录。
*输入参数：
*	    dirHandle: 目录句柄。
*输出参数:
*			无。
*返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Dir_Close(MET_VFS_DirHandle_T dirHandle)
{
    MLVFS_DEBUG("Enter");
    mlmf_vfs_dir_mng_t *dirTmp;
	dirTmp = _vfs_dir_hnd_get(dirHandle);
//	MI_FS_Closedir(dirTmp->dPath);
	dirTmp->bUsed = MM_FALSE;
    MLVFS_DEBUG("Success");
    return MM_NO_ERROR;
}

/*
*说明：复位目录读指针,使他指向目录里第一个记录。
*输入参数：
*	    dirHandle: 目录句柄。
*输出参数:
*			无。
*返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Dir_Rewind(MET_VFS_DirHandle_T dirHandle)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}

/*
*说明：读取指定目录中下一个节点的内容信息。
*输入参数：
*	    dirHandle: 目录句柄。
*输出参数:
*	    dirNode: 返回的节点信息结构体
*返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Dir_Read(MET_VFS_DirHandle_T dirHandle, MST_VFS_DIR_T *dirNode)
{
	mlmf_vfs_dir_mng_t *dirTmp;
    struct dirent *File_info;
	MBT_U16 u16Len = 256;
	//MI_U16 i = 0;
	
	if(MM_NULL == dirNode)
	{
	    MLVFS_ERR("Node is null");
		return MM_ERROR_BAD_PARAMETER;
	}
	if(0 == MLMF_USB_GetDevVolNum())
	{
	    MLVFS_ERR("Dev num is 0");
		return MM_ERROR_UNKNOWN_DEVICE;
	}
	dirTmp = _vfs_dir_hnd_get(dirHandle);
	//File_info = MI_FS_Readdir(dirTmp->dPath);
    if(File_info == NULL)
    {
        MLVFS_ERR("Read dir ERROR");
        return MM_ERROR_UNKNOW;
    }
	
	memset(dirNode, 0, sizeof(MST_VFS_DIR_T));
	//if(File_info->short_name_only)
	if (1)
	{
		memcpy(dirNode->name, File_info->d_name, u16Len);
	}
	else
	{
		UnicodeStrToUTF8Str((unsigned short *)File_info->d_name , (unsigned char *)dirNode->name , 254);
	}

    if(strlen(dirNode->name) == 0)
    {
        MLVFS_ERR("---> Name size is 0");
        return MM_ERROR_FEATURE_NOT_SUPPORTED;
    }
    /*
	if(File_info->mode == 0)
	{
		dirNode->flag = 1;
	}
	else
	{
		dirNode->flag = 0;
	}
*/		
    return MM_NO_ERROR;
}


/*
*说明：修改文件或目录的名字(路径),该路径必须是绝对路径。
*输入参数：
*	    oldPath: 修改前名字(路径)。
*	    newPath: 修改后名字(路径)。
*输出参数:
*			无。
*返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Dir_Rename(const MBT_CHAR *oldPath, const MBT_CHAR *newPath)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}




/*
*说明：获取文件的相关信息，包括文件创建时间（返回从1970年1月1日0时0分0秒开始记时的秒数），文件最后被修改的时间，文件I节点状态最后被修改的时间，文件大小，存取模式等。
*输入参数：
*			filePath: 输入参数，文件的绝对路径。
*			fileInfo: 输入参数，返回文件的相关信息。
*输出参数:
*			无。
*		返回：
*			MM_NO_ERROR:成功。
*			错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Dir_GetStat(const MBT_CHAR *filePath,MST_VFS_FileInfo_T *fileInfo)
{
    //not use
	return MM_ERROR_FEATURE_NOT_SUPPORTED;
}

/*
*说明：初始化U盘的文件系统
*输入参数：
*	    无
*输出参数:
*	    rootPath: 返回根目录名称
*返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/
MMT_STB_ErrorCode_E MLMF_VFS_Init(MBT_CHAR *rootPath,MBT_U8 partIndex,MBT_CHAR *partNum)
{
    MLVFS_DEBUG("Enter, partIndex=%d\n", partIndex);
    MMT_STB_ErrorCode_E ret;
    MST_USB_DeviceVInfo_T pstUsbDevInfo[2];//max usb dev == 2
    MBT_U32 devNum = 0;
   // MI_FS_InitParam_t stFsInitParam;
    
    if(MM_NULL == rootPath || partNum == NULL)
    {
        MLVFS_ERR("RootPath or partNum null");
        return MM_ERROR_BAD_PARAMETER;
    }
    
	memset(pstUsbDevInfo, 0, sizeof(pstUsbDevInfo));
    ret = MLMF_USB_ReadDevInfo(pstUsbDevInfo, 2, &devNum);
    if((MM_NO_ERROR != ret) || ((devNum-1)< partIndex))
    {
        MLVFS_ERR("Read info fail!!!");
        return MM_ERROR_UNKNOWN_DEVICE;
    }
    *partNum = devNum;
    
    if(partIndex == 0)
    {
        strncpy(rootPath,pstUsbDevInfo[0].strMountName,mm_usb_nameLen);
        MLVFS_DEBUG("dev 1 name= %s",pstUsbDevInfo[0].devId);
    }
    else 
    {
        strncpy(rootPath,pstUsbDevInfo[1].strMountName,mm_usb_nameLen);
        MLVFS_DEBUG("dev 2 name = %s",pstUsbDevInfo[1].devId);
    }  
  /*  memset(&stFsInitParam, 0, sizeof(MI_FS_InitParam_t));
    stFsInitParam.bUnicode = TRUE;
    MI_FS_Init(&stFsInitParam);///Decide using ASCII or Unicode for File System*/
    _vfs_hnd_mng_init();

    MLVFS_DEBUG("Success:root path = %s",rootPath);
	return MM_NO_ERROR;

}

/*
*说明：释放U盘的文件系统,关闭所有打开的目录和文件
*输入参数：
*	    无
*输出参数:
*	    无
*返回：
*		    MM_NO_ERROR:成功。
*		    错误号：失败。
*/

MMT_STB_ErrorCode_E MLMF_VFS_UnInit(MBT_VOID)
{
    _vfs_hnd_mng_release();
	return MM_NO_ERROR;
}


/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */
/*----------------------End of ErrorCode.h-------------------------*/

