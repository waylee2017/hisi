/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName £ºFFS.h
* Description £ºdefine ffs module structs and functions
* 
* Version £º1.0.1
* Author £º£ºJason/QYT/CM   Reviewer : HB
* Date £º2005-02-25
* Record : Change into stardard format
*
* History :
* (1) Version £º1.0.0
*     Author £ºJason   Reviewer : 
*     Date £º2005-01-12
*     Record : Create
****************************************************************************/

#ifndef	__FFS_H__ 
#define	__FFS_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/
#include "ErrorCode.h"
#include "mm_common.h"

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#define FFS_NUM_BLOCKS           			/*22*/14

/* Bank sizes (bytes) */
#define FFS_KBYTE					1024
#define FFS_BOOT_SIZE             	(16*FFS_KBYTE)
#define FFS_PARA_SIZE             	(8*FFS_KBYTE)
#define FFS_MAIN_0_SIZE             (32*FFS_KBYTE)
#define FFS_MAIN_1_SIZE             (64*FFS_KBYTE)


#define FFS_MAIN_0_OFFS		( 0 )
#define FFS_MAIN_1_OFFS		( FFS_MAIN_0_OFFS + FFS_MAIN_1_SIZE )

/*------------------------Export Macors---------------------------*/

/* error code */
#define FFSM_ErrorInvalidFileName	(FFSM_ModuleId+0x01)
#define FFSM_ErrorFileNotExist		(FFSM_ModuleId+0x02)
#define FFSM_ErrorNoMemory 			(FFSM_ModuleId+0x03)
#define FFSM_ErrorInvalidHandle 	(FFSM_ModuleId+0x04)
#define FFSM_ErrorDirNotEmpty 		(FFSM_ModuleId+0x05)
#define FFSM_ErrorBadParams			(FFSM_ModuleId+0x06)
#define FFSM_ErrorFileOccupied		(FFSM_ModuleId+0x07)
#define FFSM_ErrorDirNotExist		(FFSM_ModuleId+0x08)
#define FFSM_ErrorFileLengthError	(FFSM_ModuleId+0x09)
#define FFSM_ErrorFileExisted		(FFSM_ModuleId+0x0a)
#define FFSM_ErrorDirExisted		(FFSM_ModuleId+0x0b)
#define FFSM_ErrorBlockLinkErr		(FFSM_ModuleId+0x0c)
#define FFSM_ErrorFatalError		(FFSM_ModuleId+0x0d)
#define FFSM_ErrorUnusedBN			(FFSM_ModuleId+0x0e)
#define FFSM_ErrorFlashFull			(FFSM_ModuleId+0x0f)
#define FFSM_ErrorUnknownError 		(FFSM_ModuleId+0x10)
#define FFSM_ErrorNotInitialize	    (FFSM_ModuleId+0x11)
#define FFSM_ErrorNameInvalid		(FFSM_ModuleId+0x12)
#define FFSM_ErrorBNError			(FFSM_ModuleId+0x13)
#define FFSM_ErrorSignalError		(FFSM_ModuleId+0x14)
#define FFSM_ErrorFileEnd			(FFSM_ModuleId+0x15)
#define FFSM_ErrorFlashWriteError   (FFSM_ModuleId+0x21)
#define FFSM_ErrorPhyAddressError	(FFSM_ModuleId+0x22)
#define FFSM_ErrorInvalidSector		(FFSM_ModuleId+0x23)
#define FFSM_ErrorFileAlreadyOpen	(FFSM_ModuleId+0x24)

#define FFSM_ErrorHasInitialized	    (FFSM_ModuleId+0x25)/*add by qyt 2005.4.8*/

#define FFSM_ErrorNoError 			SULM_NoError


#define FFSM_MaxFileNameLength	30

/***********************************************************************/







/**********************************************************************/

/*------------------------Export Constants---------------------------*/
/*extern const MBT_S32 FFSC_iMaxFileNameLength ;*/

/*------------------------Export Types---------------------------*/
typedef MBT_VOID (*FFST_FuncCallBack) (SULM_INOUT MBT_VOID *pvParam) ;
typedef MBT_S32 (*FFST_FlashReset) ( MBT_VOID );
typedef MBT_S32 (*FFST_FlashErase) ( SULM_IN MBT_U32 u32Address );
typedef MBT_S32 (*FFST_FlashWrite) ( SULM_IN MBT_U32 u32Address , SULM_IN MBT_U8 *pu8Buffer , SULM_IN MBT_U32 u32Length,SULM_OUT MBT_U32 *pu32LengthActual );

typedef MBT_S32 (*FFST_FlashRead) ( SULM_IN MBT_U32 u32Address , SULM_IN MBT_U8*pu8Buffer , SULM_IN MBT_U32 u32Length);
typedef MBT_U32 FFST_ErrorCode;
typedef MBT_U32 FFST_FileHandle;/*point addr of a operation handle */

typedef enum
{
	FFSM_SeekBegin,/*call function FFSF_FileSeek, search from the begin point of the file*/
	FFSM_SeekCurrent,/*call function FFSF_FileSeek, search from the current point of the file*/
	FFSM_SeekEnd/*call function FFSF_FileSeek, search from the end point of the file*/
}FFST_SeekType;

typedef enum
{
/*opration by this handle to this open file */
	FFSM_OpenRead       = 0x01 ,
	FFSM_OpenWrite      = 0x02 ,
	FFSM_OpenReadWrite  = 0x03 ,
	
/*allow other handle opration to  this open file */	
	FFSM_ShareDenyNone  = 0x00 ,/*can do read or write*/
	FFSM_ShareDenyRead  = 0x04 ,/*cannt do read*/
	FFSM_ShareDenyWrite = 0x08 ,/*cannt do write*/
	FFSM_ShareExclusive = 0x0C ,/*can do nothing*/

	FFSM_OpenCreate     = 0x10 ,/*force creating,if name exist ,then return error*/
	FFSM_OpenExist      = 0x20 ,/*if name exist , then return ok*/
	FFSM_OpenAppend     = 0x40 /*after open file,place the point at the end of the file,else at the begin */
} FFST_OpenMode;

/* define Init parameters structure*/
typedef struct{
	MBT_U32		mu32SectorCount;/*total count of sector*/
	MBT_U32		mu32SectorSize;/*size of every sector,all sector are equal*/
	MBT_U32		*mpu32SectorArray;/*a array recording every sector's phiaddr, allow not in sequence*/
	MBT_CHAR		*pcSectorHeadSysSignal;
	MBT_CHAR		*pcRootFileName;
	FFST_FuncCallBack	mpfunWriteStartCallBack;
	FFST_FuncCallBack	mpfunWriteStopCallBack;
	FFST_FuncCallBack	mpfunCleanUpStartCallBack;
	FFST_FuncCallBack	mpfunCleanUpStopCallBack;
	FFST_FuncCallBack	mpfunFfsCreateCallBack;
	FFST_FlashErase		mpfunFlashErase;
	FFST_FlashWrite		mpfunFlashWrite;
	FFST_FlashRead		mpfunFlashRead;
}FFST_InitParams;

/* file attribute*/
typedef enum
{
	FFSM_FileNotDir    	= 0x80 ,/*0x80-file ;0x00 -director*/
	FFSM_ReadOnlyFile 	= 0x40 ,
	FFSM_RecordFile   	= 0x20 ,
	FFSM_SystemFile   	= 0x10 ,
	FFSM_HideFile    	= 0x08
}FFST_FileAttr;


/*-----------------------Export Variables-------------------------*/

/*-----------------------Export Functions-------------------------*/
FFST_ErrorCode FFSF_InitModule( SULM_IN FFST_InitParams InitParams );
FFST_ErrorCode FFSF_TermModule( MBT_VOID );
FFST_ErrorCode FFSF_Format( MBT_VOID );
FFST_ErrorCode FFSF_GetVersion( SULM_OUT MBT_U16 *pu16Version );

FFST_ErrorCode FFSF_FileOpen( SULM_IN MBT_CHAR *pcFileName , SULM_IN MBT_U32 u32OpenMode , 
							SULM_OUT FFST_FileHandle *phFile );
FFST_ErrorCode FFSF_FileClose( SULM_IN FFST_FileHandle hFile );
FFST_ErrorCode FFSF_FileRead( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U8 *pu8Buffer , 
							SULM_IN MBT_U32 u32Length, SULM_OUT MBT_U32 *pu32LengthActual );
FFST_ErrorCode FFSF_FileWrite( SULM_IN FFST_FileHandle hFile , SULM_IN MBT_U8 *pu8Buffer , 
							SULM_IN MBT_U32 u32Length, SULM_OUT MBT_U32 *pu32LengthActual );
FFST_ErrorCode FFSF_FileDelete( SULM_IN MBT_CHAR *pcFileName );
FFST_ErrorCode FFSF_FileSeek(SULM_IN FFST_FileHandle hFile , SULM_IN MBT_S32 iOffset , 
							SULM_IN FFST_SeekType Flag );
FFST_ErrorCode FFSF_FileSize( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U32 *piFileSize );
FFST_ErrorCode FFSF_FileTell( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U32 *pu32Offset );
FFST_ErrorCode FFSF_FileEOF( SULM_IN FFST_FileHandle hFile ,  SULM_OUT MBT_BOOL *pbFileEof );
FFST_ErrorCode FFSF_FileRename( SULM_IN MBT_CHAR *pcFileSourceName , SULM_IN MBT_CHAR *pcFileDestinationName );
FFST_ErrorCode FFSF_FileFlush( SULM_IN FFST_FileHandle hFile );
FFST_ErrorCode FFSF_FileSetEOF( SULM_IN FFST_FileHandle hFile );
FFST_ErrorCode FFSF_GetFileNameArray(SULM_OUT MBT_CHAR*** pppFileNameArray,SULM_OUT MBT_U32* pu32FileCount);
FFST_ErrorCode FFSF_FreeFileNameArray(SULM_IN MBT_CHAR** ppFileNameArray,SULM_IN MBT_U32 u32FileCount);

MBT_VOID FFSF_Lock(MBT_VOID);
MBT_VOID FFSF_UnLock(MBT_VOID);

/*------------------------Export Classes--------------------------*/

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__FFS_H__ */



