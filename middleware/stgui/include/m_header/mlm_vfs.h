/*****************************************************************************
* Copyright (c) 2010,MDVB
* All rights reserved.
* 
* FileName ：mlm_ffs.h
* Description ：Global define for error code base
* 
* Version ：Version ：1.0.0
* Author ：wangyafeng : 
* Date ：2010-08-11
* Record : Change it into standard mode
*
* History :
* (1) 	Version ：1.0.0
* 		Author ：wangyafeng  : 
* 		Date ：2010-08-14
*		Record : Create File 
****************************************************************************/
#ifndef	__MLM_VFS_H__ /* 防止头文件被重复引用 */
#define	__MLM_VFS_H__

#include <time.h>
/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/
#define MET_VFS_INVALID_HANDLE 0xffffffff
/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/
typedef MBT_U32 MET_VFS_FileHandle_T;
typedef MBT_U32 MET_VFS_DirHandle_T;


typedef enum _m_vfs_filemode_e
{
    MM_VFS_OPEN_MODE_OpenRead = 1,/*"rb" Opens for reading. If the file does not exist or cannot be found, the fopen call fails*/
    MM_VFS_OPEN_MODE_OpenWrite = 2,/*"ab" Opens for writing at the end of the file (appending) without removing the EOF marker before writing new data to the file; creates the file first if it doesn’t exist. */
    MM_VFS_OPEN_MODE_OpenReadWrite = 4,/*"rb+" Opens for both reading and writing. (The file must exist.)*/
    MM_VFS_OPEN_MODE_OpenCreate = 8,/*"wb+" Opens an empty file for both reading and writing. If the given file exists, its contents are destroyed.*/
    MM_VFS_OPEN_MODE_OpenExsit = 16,/*"rb" Opens for reading. If the file does not exist or cannot be found, the fopen call fails*/
    MM_VFS_OPEN_MODE_OpenAppend = 32/*"ab+" Opens for reading and appending; the appending operation includes the removal of the EOF marker before new data is written to the file and the EOF marker is restored after writing is complete; creates the file first if it doesn’t exist.*/
} MMT_VFS_FileMode_E;

typedef enum _m_vfs_fileseek_e
{
    MM_VFS_SEEK_SET,
    MM_VFS_SEEK_CUR,
    MM_VFS_SEEK_END
} MMT_FFS_FileSeek_E;

/*文件系统节点信息*/
typedef struct _m_vfs_dir_t
{
    MBT_U8 		flag; 			/*0表示是个文件节点,1表示是目录节点*/
    MBT_CHAR         name[256]; 		/*节点名字符串,不包含上级路径*/
    MBT_VOID 	*param; 			/*保留参数*/
}MST_VFS_DIR_T;

typedef enum _m_vfs_fileattribute_e
{
    MM_VFS_MODE_R = 0x01,
    MM_VFS_MODE_W = 0x02,
    MM_VFS_MODE_RW = (MM_VFS_MODE_R|MM_VFS_MODE_W),
    MM_VFS_MODE_DIR= 0x04,
    MM_VFS_MODE_HIDDEN = 0x08
} MMT_VFS_FileAttribute_E;


/*文件的信息*/
typedef struct _m_vfs_fileinfo_t
{
    time_t stFileLastAccessTime;/*文件创建时间，返回从1970年1月1日0时0分0秒开始记时的秒数*/
    time_t stFileLastModifyTime;/*文件最后被修改的时间，时间说明同上*/
    time_t stFileLastChangeMode;/*文件节点状态上一次被修改的模式*/
    MBT_U32 u32size;/*文件大小，Byte为单位*/
    MMT_VFS_FileAttribute_E st_mode;/*文件存取模式*/
}MST_VFS_FileInfo_T;

/*-----------------------Module Variables-------------------------*/

/*-----------------------Module Functions-------------------------*/
/*
*说明：打开文件。
*输入参数：
*	   fileName: 操作系统支持文件名称字符串。
*	   u32OpenMode: 打开方式。
*输出参数:
*	    无。
*返回：
*		成功：返回的文件句柄,非零表示有效句柄。
*		失败：MM_INVALID_HANDLE。
*/
extern MET_VFS_FileHandle_T MLMF_VFS_File_Open(const MBT_CHAR *fileName,MMT_VFS_FileMode_E stOpenMode);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_File_Close(MET_VFS_FileHandle_T fileHandle);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_File_Remove(const MBT_CHAR *fileName);

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
extern MBT_U32 MLMF_VFS_File_Read(MET_VFS_FileHandle_T fileHandle, MBT_U8 *buffer, MBT_U32 len);

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
extern MBT_U32 MLMF_VFS_File_Write(MET_VFS_FileHandle_T fileHandle, const MBT_CHAR *buffer, MBT_U32 len);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_File_Seek(MET_VFS_FileHandle_T fileHandle, MBT_S32 s32Offset,MMT_FFS_FileSeek_E type);

/*
*说明：获取文件当前的位置。
*输入参数：
*	    fileHandle: 指定的文件句柄。
*输出参数:
*	          无。
*	    返回：
*	          当前的文件位置。
*/
extern MBT_U32 MLMF_VFS_File_Tell(MET_VFS_FileHandle_T fileHandle);


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
extern MMT_STB_ErrorCode_E MLMF_VFS_File_Flush(MET_VFS_FileHandle_T fileHandle);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_Dir_Create(const MBT_CHAR *dirPath);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_Dir_Remove(const MBT_CHAR *dirPath);

/*
*说明:  打开文件系统中的目录,获取目录的句柄。
*输入参数：
*	    dirPath: 目录的绝对路径。
*输出参数:
*			无。
*返回：
*		   目录名柄。
*/
extern MET_VFS_DirHandle_T MLMF_VFS_Dir_Open(const MBT_CHAR *dirPath);


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
extern MMT_STB_ErrorCode_E MLMF_VFS_Dir_Close(MET_VFS_DirHandle_T dirHandle);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_Dir_Rewind(MET_VFS_DirHandle_T dirHandle);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_Dir_Read(MET_VFS_DirHandle_T dirHandle, MST_VFS_DIR_T *dirNode);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_Dir_Rename(const MBT_CHAR *oldPath, const MBT_CHAR *newPath);

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
extern MMT_STB_ErrorCode_E MLMF_VFS_Dir_GetStat(const MBT_CHAR *filePath,MST_VFS_FileInfo_T *fileInfo);



extern MMT_STB_ErrorCode_E MLMF_VFS_Init(MBT_CHAR *rootPath,MBT_U8 partIndex,MBT_CHAR *partNum);



extern MMT_STB_ErrorCode_E MLMF_VFS_UnInit(MBT_VOID);

/*------------------------Module Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__MLM_VFS_H__ */

/*----------------------End of mlm_ffs.h-------------------------*/

