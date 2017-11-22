/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName £ºFFS.c
* Description £ºrealize the FFS module function
* 
* Version £º1.0.1
* Author £º£ºJason   Reviewer : 
* Date £º2005-04-22
* Record : Change some fatal BUG
*
* Version £º1.0.0
* Author £º£ºJason/QYT/CM   Reviewer : HB
* Date £º2005-02-25
* Record : Create
* aaa
****************************************************************************/

/*--------------------Configuration Define-----------------------*/

//#define MEMORY_DUMP

/*----------------------Standard Include-------------------------*/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "nvm_api.h"
#include "ospctr.h"

/*---------------------User-defined Include----------------------*/

#include "ffs.h"
#include "mm_common.h"

/*-----------------------Private Macros--------------------------*/
#define ffsm_BlockSize 				256
#define ffsm_SectorHeadLength 		20

//#define FFS_DEBUG(x)   MLMF_Print x
#define FFS_DEBUG(x) 
/*------------------------Private Type---------------------------*/
/*define file operate struct*/
typedef struct tag_ffst_FileOperator{
	MBT_U32						mu32SysSignal;/*unvariable param to check operator valid*/
	struct tag_ffst_FileLink 		*mpFileLink;
	struct tag_ffst_BlockLink		*mpCurBlockLink;/*point to be written*/
	MBT_U32						mu32OpenMode;
	MBT_U32 						mu32CurFileOffset;/*point to be written*/
	MBT_U8							mu8CurBlockOffset;/*point to be written,from the valid data*/
	MBT_BOOL						mbBufferModified;
	MBT_U8 						mu8Buffer[ffsm_BlockSize];
}ffst_FileOperator;

/* define Block link structure*/
typedef struct tag_ffst_BlockLink{
	struct tag_ffst_BlockLink 	*mpNextBlockLink;
	MBT_U16					mu16BlockNum;
	MBT_U8						mu8BlockDataLength;
	MBT_U8						mu8Reserved;
}ffst_BlockLink;

/* define File link structure*/
typedef struct tag_ffst_FileLink{
	struct tag_ffst_FileLink	*mpBrotherLink;
	struct tag_ffst_FileLink	*mpSonLink;
	ffst_BlockLink				mFirstBlockLink;
	ffst_FileOperator 			*mpFirstOperator;
	MBT_U32					mu32FileSize;
	MBT_U8						mu8FileAttr;
	MBT_CHAR						mcFileName[FFSM_MaxFileNameLength+1];
}ffst_FileLink;

typedef struct tag_ffst_DirNameLink{
	MBT_U32	mu32DirDepth;
	MBT_CHAR		**mppFileNameArray;
	MBT_BOOL	mbFileNotDir;
}ffst_DirNameLink;

/* setor head */
typedef struct tag_ffst_SectorHead{
	MBT_CHAR		mcSysSignal[8];
	MBT_U16	mu16Version;
	MBT_U16	mu16Status;
	MBT_U32	mu32SectorNum;
	MBT_U32	mu32OldPhyAddr;
}ffst_SectorHead;

/*block head*/
typedef struct tag_ffst_BlockHead{
	MBT_U16	mu16BlockNum;
	MBT_U16	mu16NextBlockNum;
	MBT_U8		mu8DataLength; /* Valid data length in a block include filehead if any  */
	MBT_U8		mu8Status;
	MBT_U16	mu16Reverse;
}ffst_BlockHead;

/*file head*/
typedef struct tag_ffst_FileHead{
	MBT_U8		mu8FileAttr;
	MBT_CHAR		mcFileName[FFSM_MaxFileNameLength+1];
}ffst_FileHead;

/*block status*/
typedef enum{
	ffsm_BlockWriteStart 		= 0x80,
	ffsm_BlockWriteStop 		= 0x40,
	ffsm_BlockNextBNStart 		= 0x20,
	ffsm_BlockNextBNStop 		= 0x10,
	ffsm_BlockFileWriteStart 	= 0x08,
	ffsm_BlockFileWriteStop 	= 0x04,
	ffsm_BlockInvalid 			= 0x02,
	ffsm_BlockFileHead 			= 0x01
}ffst_BlockHeadStatus;

/*sector status*/
typedef enum{
	ffsm_SectorCleanStart 		= 0x8000,
	ffsm_SectorCleanStop 		= 0x4000,
	ffsm_SectorFull		 		= 0x2000,
	ffsm_SectorWithInvalid 		= 0x1000,
	ffsm_SectorEraseOrgStart 	= 0x0800,
	ffsm_SectorEraseOrgStop		= 0x0400,
	ffsm_SectorWriteNumStart	= 0x0200,
	ffsm_SectorWriteNumStop		= 0x0100
}ffst_SectorHeadStatus;

/*dir content*/
typedef struct tag_ffst_DirContent{
	MBT_U16	mu16Status;
	MBT_U16	mu16BlockNum;
}ffst_DirContent;

typedef enum{
	ffsm_DirWriteBNStart		= 0x8000,
	ffsm_DirWriteBNStop			= 0x4000,
	ffsm_DirEraseBNStart		= 0x2000,
	ffsm_DirEraseBNStop			= 0x1000,
	ffsm_DirEraseOrgStart		= 0x0800,
	ffsm_DirEraseOrgStop		= 0x0400
}ffst_DirContentStatus;

typedef enum{
	ffsm_BlockLinkState_Empty 	= 0x00,
	ffsm_BlockLinkState_Occupy  = 0x01,
	ffsm_BlockLinkState_First	= 0x02,
	ffsm_BlockLinkState_Linked	= 0x04
}ffst_BlockLinkState;

typedef enum{
	ffsm_OpeartorBuffer_Unchanged ,
	ffsm_OpeartorBuffer_Changed 
}ffst_OperatorEditSignalValue;

typedef struct tag_ffst_EraseDirParam{
	ffst_FileLink	*mpOrgFileLink;
	MBT_U32		mu32OrgDirOffsetPhyAddr;
	MBT_U16		mu16EraseOrgBN;
	MBT_BOOL		mbRelink;
}ffst_EraseDirParam;

/*----------------------Private Variables-------------------------*/
/*first file link in the system, root, BN = 1*/
static ffst_FileLink 		*ffsv_spFirstFileLink=MM_NULL ;
/*store input params, should malloc to store mpu32SectorArray*/
static FFST_InitParams 		ffsv_sInitParam;
/*malloc size[4*(ffsv_su16MaxBlockNum)], mapping 1~N to BN block physical address*/
static MBT_U32				*ffsv_spu32PhyAddrArray ;
/*max number used plus 1*/
static MBT_U16				ffsv_su16MaxBlockNum ;
/*report the offset of the block to be written in the max number sector*/
static MBT_U32				ffsv_su32BlockOffsetInMaxNumSector 	=0;
/*judge init done or not*/
static MBT_BOOL			ffsv_sbFFSInitDone					=MM_FALSE;
/*the sector number in the last sector used*/
static MBT_U32 			ffsv_su32MaxSectorNum 				=0;
/*the physical address of the last sector used*/
static MBT_U32				ffsv_su32MaxSectorAddr;
/*just used in init erase mode record*/
static ffst_EraseDirParam	ffsv_sEraseDirParam;

#ifdef WINDOWS_DEBUG
static MBT_S32 SemaphoreHandle;
static MBT_S32 SysLockNumber;
static MBT_S32 SysUnLockNumber;
#else
static MET_Sem_T ffsv_semFFSLock = MM_INVALID_HANDLE;
#endif


/*------------------Private Functions Prototypes-----------------*/

FFST_ErrorCode SetThisSectorWithInvalid( SULM_IN MBT_U32 BlockAddr );

MBT_VOID ffsf_HeapInit( MBT_VOID );
MBT_VOID ffsf_HeapTerm( MBT_VOID );
MBT_VOID* ffsf_Malloc( SULM_IN MBT_U32 u32Size,SULM_IN MBT_U32 u32Line);
MBT_VOID ffsf_Free( SULM_IN MBT_VOID *pvUserAddr );

FFST_ErrorCode ffsf_LockInit( MBT_VOID );
FFST_ErrorCode ffsf_LockTerm( MBT_VOID );
FFST_ErrorCode ffsf_Lock( MBT_VOID );
FFST_ErrorCode ffsf_UnLock( MBT_VOID );

/*Flash Block*/
FFST_ErrorCode GetEmptyBlock( SULM_OUT MBT_U32 *pu32BlockPhyAddr );
FFST_ErrorCode GetValidBlockNumber( SULM_IN MBT_U16 u16BNReq, SULM_OUT MBT_U16 *pu16BNAct );
FFST_ErrorCode ReadBlockHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT ffst_BlockHead *pBlockHead );
FFST_ErrorCode WriteBlockHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN ffst_BlockHead *pBlockHead );
FFST_ErrorCode WriteFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_IN MBT_U8 *pu8DataBuf);
FFST_ErrorCode ReadFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_OUT MBT_U8 *pu8DataBuf);
__inline FFST_ErrorCode CopyFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_IN MBT_U8 *pu8DataBuf);
FFST_ErrorCode ReadFileHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT ffst_FileHead *pFileHead );
FFST_ErrorCode WriteFileHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN ffst_FileHead  *pFileHead );
__inline FFST_ErrorCode GetSectorAddrFromBlockAddr( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U32 *pu32SectorPhyAddr );

FFST_ErrorCode SetBlockCurrentBN(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U16 u16CurrentBN); 
FFST_ErrorCode SetBlockNextBN(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U16 u16NextBN);
FFST_ErrorCode SetBlockValidDataLen(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U8 u8NextBN);
__inline FFST_ErrorCode GetBlockValidDataLen(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U8 *pu8NextBN);
FFST_ErrorCode SetBlockHeadStatus( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U8 BlockHeadStatus );
//FFST_ErrorCode WriteBlockStatus(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U8 u8BlockStatus);
__inline FFST_ErrorCode GetBlockHeadStatus(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U8 *pu8BlockStatus);

FFST_ErrorCode SetFileName(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_CHAR *pu8FileName);
FFST_ErrorCode GetFileName(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_CHAR *pu8FileName);

/*Flash Sector*/
FFST_ErrorCode GetEmptySector( SULM_OUT MBT_U32 *pu32SectorPhyAddr, SULM_OUT MBT_U32 *pu32EmptySectorNumber );
FFST_ErrorCode GetMinSectorWithInvalidBlock( SULM_OUT MBT_U32 *pu32SectorPhyAddr );
FFST_ErrorCode ReadSectorHead( SULM_IN MBT_U32 u32SectorPhyAddr , 
					SULM_OUT MBT_BOOL *pbSectorValid, SULM_OUT ffst_SectorHead *pSectorHead );
FFST_ErrorCode SetSectorHeadStatus( SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U16 u16SectorHeadStatus );
FFST_ErrorCode GetSectorHeadStatus( SULM_IN MBT_U32 u32SectorPhyAddr , SULM_OUT MBT_U16 *pSectorHeadStatus );
FFST_ErrorCode FormatFlashSector(SULM_IN MBT_U32 u32SectorPhyAddr);
FFST_ErrorCode CleanUpSector(SULM_IN MBT_U32 u32SectorPhyAddr, SULM_OUT MBT_U32 *pu32BlockPhyAddr);
__inline MBT_BOOL CheckSectorAddrValid(SULM_IN MBT_U32 u32SectorPhyAddr);

FFST_ErrorCode SetSectorSysInfo(SULM_IN MBT_U32 u32BlockPhyAddr);
FFST_ErrorCode SetSectorNum(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U32 u32SectorNum);
__inline FFST_ErrorCode GetSectorNum(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_OUT MBT_U32 *pu32SectorNum);
__inline FFST_ErrorCode SetOldSectorAddr(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U32 u32OldSectorAddr);

/*RAM FileLink*/
FFST_ErrorCode GetFileLink(SULM_IN MBT_CHAR *pcFileName, SULM_OUT ffst_FileLink **ppFileLink,
	SULM_OUT ffst_FileLink **ppFatherFileLink , SULM_OUT MBT_BOOL *pbFileNotDir);
FFST_ErrorCode ParseFileChildLink ( SULM_IN ffst_FileLink *pFileLink, SULM_INOUT MBT_U8 *pu8BlockLinkState );
FFST_ErrorCode SetDirOneContentStatus( SULM_IN ffst_FileLink *pFileLink, SULM_IN MBT_U32 u32DirOffsetPhyAddr, 
	SULM_IN MBT_U16 DirContentStatus );
FFST_ErrorCode SetDirOneContentBN( SULM_IN ffst_FileLink *pFileLink, SULM_IN MBT_U32 u32DirOffsetPhyAddr, 
	SULM_IN MBT_U16 DirContentBN );
FFST_ErrorCode AddDirOneContentBN( SULM_IN ffst_FileLink *pFileLink, SULM_IN MBT_U16 DirContentBN,
	SULM_OUT MBT_U32 *pu32DirOffsetPhyAddr);

/*if cant find BN in dir content,then find a empty,else return the BN-offset*/
FFST_ErrorCode GetDirContentOffsetPhyAddr(SULM_IN ffst_FileLink *pDirFileLink,SULM_IN MBT_U16 u16BlockNum,
	SULM_OUT MBT_U32 *pu32DirOffsetPhyAddr);

FFST_ErrorCode FreeOneFileLink(SULM_IN ffst_FileLink *pFileLink,SULM_IN MBT_BOOL bEraseBlock);
MBT_BOOL SearchFileByFirstBN ( SULM_IN ffst_FileLink *pFileLinkSearchFather,
	SULM_IN ffst_FileLink *pFileLinkSearch, SULM_IN MBT_U16 u16BlockNum , 
	SULM_OUT ffst_FileLink **ppFileLinkFather, SULM_OUT ffst_FileLink **ppFileLink );
FFST_ErrorCode FindDirLinkFromFileFirstBN ( SULM_IN MBT_U16 u16BlockNum , 
	SULM_OUT ffst_FileLink **ppFileLink , SULM_OUT MBT_U32 *pu32Offset );

/*RAM BlockLink*/
FFST_ErrorCode CreateBlockLink ( SULM_IN MBT_U16 u16BlockNum, 
 	SULM_INOUT MBT_U8 *pu8BlockLinkState,
	SULM_OUT ffst_BlockLink *pBlockLink, 
	SULM_OUT MBT_U32 *pu32FileSize, SULM_OUT MBT_U8 *pu8FileAttr, SULM_OUT MBT_CHAR *pcFileName );

/*RAM DirNameLink*/
FFST_ErrorCode ParseFileNameStruct( SULM_IN MBT_CHAR *pSourceName, SULM_OUT ffst_DirNameLink *pDirNameLink );
FFST_ErrorCode FreeFileNameStruct( SULM_IN ffst_DirNameLink DirNameLink );
FFST_ErrorCode ExtractLeafFileName(SULM_IN MBT_CHAR *pPathName , SULM_OUT MBT_CHAR *pFileName);

MBT_BOOL IsFileHandleValid(SULM_IN FFST_FileHandle hFile);

FFST_ErrorCode AddSonFileLink(SULM_INOUT ffst_FileLink *pDirFileLink,SULM_IN ffst_FileLink *pFileLink);
FFST_ErrorCode RenameFile(SULM_INOUT ffst_FileLink *pFileLink,SULM_IN MBT_CHAR *pDesFileName);

/*------------------Private Classes Declaration------------------*/

/*------------------Private Constants Implementation------------------*/
const MBT_U16 	ffsc_u16RootBlockNum 			= 1;/*file system root*/
const MBT_U16 	ffsc_u16DirContentNotChanged	= 0xFFFF;
const MBT_U16 	ffsc_u16EmptyBlockNum			= 0xFFFF;/*init param for block number*/
const MBT_U16 	ffsc_u16InvlidBlockNum			= 0; 
const MBT_U32 	ffsc_u32OperatorSysSignal 		= 0x19800801;/*for check handle operator valid*/
const MBT_U32 	ffsc_u32SectorHeadLength		= 20;
const MBT_U32 	ffsc_u32BlockHeadLength			= 8;
const MBT_U16 	ffsc_u16DirContentValid			= 0x3000;
const MBT_U16 	ffsc_u16DirContentValidMask		= 0xF000;
const MBT_U32 	ffsc_u32InvliadPhyAddr			= 0xFFFFFFFF;
const MBT_U32 	ffsc_u32EmptySectorNum			= 0xFFFFFFFF;
const MBT_U32 	ffsc_u32InvalidSectorNum		= 0;
const MBT_U32	ffsc_u32FileHeadOffset			= 8;
const MBT_U32	ffsc_u32SectorHeadSysLength		= 10;
const MBT_U32 	ffsc_u32BlockHeadBNOffset		= 0;
const MBT_U32 	ffsc_u32BlockHeadNextBNOffset	= 2;
const MBT_U32	ffsc_u32BlockHeadDataLenOffset	= 4;
const MBT_U32	ffsc_u32BlockHeadStatusOffset	= 5;

const MBT_U32 	ffsc_u32SectorHeadSysOffset		= 0;
const MBT_U32 	ffsc_u32SectorHeadStatusOffset	= 10;
const MBT_U32 	ffsc_u32SectorHeadSNOffset		= 12;
const MBT_U32 	ffsc_u32SectorHeadOldAddrOffset	= 16;
const MBT_U32	ffsc_u32DirContentBNOffset		= 2;

const MBT_U16 	ffsc_u16InitSectorStatus		= 0xFFFF;

const MBT_U16 	ffsc_u16InitDirContentStatus	= 0xFFFF;

const MBT_U16 	ffsc_u16SectorHeadVersion		=0x0301;

const MBT_U16	ffsc_u16DirContentStatusMask	= 0xFC00;
const MBT_U16	ffsc_u16DirContentStatusValid	= 0x3000;

const MBT_U8 	ffsc_u8FileHeadLength			= FFSM_MaxFileNameLength+2;
const MBT_U8	ffsc_u8BlockDataLength			= 248;
const MBT_U8 	ffsc_u8InitBlockStatus			= 0xFF;
const MBT_U8 	ffsc_u8InitFileAttr				= 0xFF;

const MBT_U8	        ffsc_u8InitDataLength 			=0xff;
static MBT_CHAR 		ffsc_pcSectorHeadSysSignal[8]		={'t','f','b','l','s','m',0,0};
static MBT_CHAR 		ffsc_pcRootFileName[8]			={'r','o','o','t',0,0,0,0};

/*================ Global Constants Implementation===================*/

/*=================Global Variables Implementation===================*/

/*==================Global Functions Implementation==================*/

/*********************************************************************
 * Function Name : FFSF_GetVersion
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_GetVersion( SULM_OUT MBT_U16 *pu16Version );
 *
 * Input 	:	nothing
 *
 * Output	: 	
 *		a.	pu16Version
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *
 * Purpose :
 *		1. get the version number
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode FFSF_GetVersion( SULM_OUT MBT_U16 *pu16Version )
{
//Jason 2005-04-12 --->
	if(ffsv_sbFFSInitDone == MM_FALSE)
	{
		return FFSM_ErrorNotInitialize;
	}
//<---

	*pu16Version = ffsc_u16SectorHeadVersion;
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : FFSF_InitModule
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_InitModule( SULM_IN FFST_InitParams InitParams );
 *
 * Input :
 *		a.	InitParams		SULM_IN FFST_InitParams
 *			Parameters struct for FFS module init
 *
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *		a.	ffsv_sInitParam
 *		b.	ffsv_spu32PhyAddrArray
 *		c.	ffsv_su16MaxBlockNum
 *		d.	ffsv_spFirstFileLink
 *		e.	ffsv_sbFFSInitDone
 *
 * Callers :
 *
 * Callees :
 *		a.	ffsf_Malloc
 *		b.	ffsf_Free
 *		c.	ffsf_LockInit
 *		d.	ffsf_Lock
 *		e.	ffsf_UnLock
 *
 * Purpose :
 *		1. Init total FFS moudle 
 *		2. initialize the file-tree from the FLASH data.
 *		3. solve the shut down problem
 *
 * Theory of Operation :
 *********************************************************************/

FFST_ErrorCode FFSF_InitModule( SULM_IN FFST_InitParams InitParams )
{
/*Jason*/
typedef struct{
MBT_U32	mu32SectorNum;
MBT_U32	mu32PhyAddr;
}ffst_SectorNumAddr;

	FFST_ErrorCode 			ErrorCode			=FFSM_ErrorNoError ;
	ffst_SectorNumAddr		*pSectorNumAddrArray=MM_NULL;
	ffst_SectorNumAddr		SectorNumAddrTemp;
	ffst_SectorHead			SectorHeadBuf;
	ffst_BlockHead			BlockHeadBuf;
	ffst_BlockHead			BlockHead;
	MBT_S32 					iValidSector		=0;
	MBT_S32 					iCount				=0;
	MBT_U32 				u32SectorCount		=0;
	MBT_U32 				u32BlockCount		=0;
	MBT_U32				u32BlockAddr		=0;
	MBT_U32				u32NewBlockAddr		=0;
	MBT_U8 				*pu8BlockLinkState	=MM_NULL;
	MBT_BOOL				bSectorValid		=MM_FALSE;
	MBT_BOOL				bFirstBuild		=MM_FALSE;

	//QYT patch 2005-04-08 ->
	if(ffsv_sbFFSInitDone == MM_TRUE)
	{
		return FFSM_ErrorHasInitialized;
	}
	//<-
	
	strcpy(ffsc_pcSectorHeadSysSignal,InitParams.pcSectorHeadSysSignal);
	strcpy(ffsc_pcRootFileName,InitParams.pcRootFileName);
	ffsv_spFirstFileLink = MM_NULL;
	ffsv_spu32PhyAddrArray = MM_NULL;

	ffsf_HeapInit();

	/*1.init locks and lock the tree*/
	ErrorCode = ffsf_LockInit();
	if ( ffsf_LockInit()!= FFSM_ErrorNoError ) 
	{
		return ErrorCode;
	}
	ffsf_Lock();

	/*2.check&backup init parameters*/
	/*2.1.check params*/
	if ( ((InitParams.mu32SectorSize&0xFF)!=0) || (InitParams.mu32SectorCount<=1) )
	{
		ffsf_UnLock(  );
		return FFSM_ErrorBadParams;
	}

	if ( (InitParams.mpfunFlashErase==MM_NULL) || (InitParams.mpfunFlashWrite==MM_NULL) )
	{
		ffsf_UnLock(  );
		return FFSM_ErrorBadParams;
	}
	
	/*2.1.backup params*/
	ffsv_sInitParam = InitParams;
	ffsv_sInitParam.mpu32SectorArray = 
		(MBT_U32*)ffsf_Malloc( (ffsv_sInitParam.mu32SectorCount)*sizeof(MBT_U32),__LINE__);
	memcpy( (MBT_VOID*)(ffsv_sInitParam.mpu32SectorArray) ,
		(MBT_VOID*)(InitParams.mpu32SectorArray) , 
		(ffsv_sInitParam.mu32SectorCount*sizeof(MBT_U32)) );

	/*3.get BN scope*/
	ffsv_su16MaxBlockNum = ((ffsv_sInitParam.mu32SectorSize/ffsm_BlockSize)-1)
		*(ffsv_sInitParam.mu32SectorCount-1)+1;

	/*4.malloc and init BN physical address array*/
	ffsv_spu32PhyAddrArray = (MBT_U32*)ffsf_Malloc( ffsv_su16MaxBlockNum*sizeof(MBT_U32),__LINE__ );
	memset( (MBT_VOID*)ffsv_spu32PhyAddrArray, 0, (ffsv_su16MaxBlockNum*sizeof(MBT_U32)) );

	/*5.malloc a temp array to record valid link status*/
	pu8BlockLinkState = (MBT_U8*)ffsf_Malloc( ffsv_su16MaxBlockNum,__LINE__ );
	memset( (MBT_VOID*)pu8BlockLinkState, 0, ffsv_su16MaxBlockNum );

	/*6.scan sector head to find the valid sectors that have block*/
	pSectorNumAddrArray = (ffst_SectorNumAddr*)ffsf_Malloc(sizeof(ffst_SectorNumAddr)*ffsv_sInitParam.mu32SectorCount,__LINE__);
	memset( (MBT_VOID*)pSectorNumAddrArray, 0, sizeof(ffst_SectorNumAddr)*ffsv_sInitParam.mu32SectorCount );

	for ( u32SectorCount=0; u32SectorCount<ffsv_sInitParam.mu32SectorCount; u32SectorCount++ )
	{
		ReadSectorHead( ffsv_sInitParam.mpu32SectorArray[u32SectorCount], &bSectorValid,&SectorHeadBuf );

		if ( !bSectorValid )
		{
			bFirstBuild = MM_TRUE;
			FormatFlashSector(ffsv_sInitParam.mpu32SectorArray[u32SectorCount]);
            if(ffsv_sInitParam.mpfunFfsCreateCallBack)
            {
                ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
            }
		}
		else if( (SectorHeadBuf.mu16Status==0xFFFF) && (SectorHeadBuf.mu32SectorNum==ffsc_u32EmptySectorNum) )
		{
			continue;
		}
		else
		{
			/*6.1.do with the sector shutdown*/
			if ( ((SectorHeadBuf.mu16Status&(ffsm_SectorCleanStart|ffsm_SectorCleanStop))!=0)
				|| ((SectorHeadBuf.mu16Status&(ffsm_SectorWriteNumStart|ffsm_SectorWriteNumStop))!=0) )
			{
				FormatFlashSector(ffsv_sInitParam.mpu32SectorArray[u32SectorCount]);
                if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                {
                    ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                }
				continue;
			}
			if ((SectorHeadBuf.mu16Status&(ffsm_SectorEraseOrgStart|ffsm_SectorEraseOrgStop))!=0)
			{
				if ( CheckSectorAddrValid(SectorHeadBuf.mu32OldPhyAddr) )
				{
					FormatFlashSector(SectorHeadBuf.mu32OldPhyAddr);
                    if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                    {
                        ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                    }
				}
				SetSectorHeadStatus(ffsv_sInitParam.mpu32SectorArray[u32SectorCount],
					ffsm_SectorEraseOrgStart|ffsm_SectorEraseOrgStop);
			}

			/*6.2.arrange from less to more*/
			pSectorNumAddrArray[iValidSector].mu32PhyAddr = ffsv_sInitParam.mpu32SectorArray[u32SectorCount];
			pSectorNumAddrArray[iValidSector].mu32SectorNum = SectorHeadBuf.mu32SectorNum;
			for ( iCount=iValidSector;iCount>0;iCount-- )
			{
				if ( pSectorNumAddrArray[iCount].mu32SectorNum<pSectorNumAddrArray[iCount-1].mu32SectorNum )
				{
					SectorNumAddrTemp = pSectorNumAddrArray[iCount];
					pSectorNumAddrArray[iCount] = pSectorNumAddrArray[iCount-1];
					pSectorNumAddrArray[iCount-1] = SectorNumAddrTemp;
				}
				else
				{
					break;
				}
			}
			iValidSector++;
		}
	}

	
	
	if(iValidSector>0)
	{
		MBT_U32 		u32PhyAddr 	=0;
		MBT_U32 u32BlockCount=0;
		
		/*set maxsecnum & corresponding physical address*/
		ffsv_su32MaxSectorNum  = pSectorNumAddrArray[iValidSector-1].mu32SectorNum;
		ffsv_su32MaxSectorAddr = pSectorNumAddrArray[iValidSector-1].mu32PhyAddr;
		u32PhyAddr=ffsv_su32MaxSectorAddr+ffsm_BlockSize ;

		/*search ffsv_su32BlockOffsetInMaxNumSector in last sector*/
		for ( u32BlockCount=1; u32BlockCount<ffsv_sInitParam.mu32SectorSize/ffsm_BlockSize; u32BlockCount++ )
		{
                	ffsv_sInitParam.mpfunFlashRead(u32PhyAddr,(MBT_VOID *)(&BlockHead),sizeof(BlockHead));
			if(  ( BlockHead.mu8Status == 0xFF ) &&
				 (BlockHead.mu16BlockNum==ffsc_u16EmptyBlockNum) && 
				 (BlockHead.mu16NextBlockNum==ffsc_u16EmptyBlockNum) )
			{
				break;
			}
			u32PhyAddr=u32PhyAddr+ffsm_BlockSize;
		}
		ffsv_su32BlockOffsetInMaxNumSector = u32BlockCount;
        if(ffsv_sInitParam.mpfunFfsCreateCallBack)
        {
            ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
        }

		/*if shut down when cleanup just write a secBN in sechead*/
		if ( (MBT_U32)iValidSector==ffsv_sInitParam.mu32SectorCount )
		{
			if ( ffsv_su32BlockOffsetInMaxNumSector==1 )
			{
				FormatFlashSector(ffsv_su32MaxSectorAddr);
                if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                {
                    ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                }
				iValidSector--;
				ffsv_su32MaxSectorNum  = pSectorNumAddrArray[iValidSector-1].mu32SectorNum;
				ffsv_su32MaxSectorAddr = pSectorNumAddrArray[iValidSector-1].mu32PhyAddr;
				ffsv_su32BlockOffsetInMaxNumSector = ffsv_sInitParam.mu32SectorSize/ffsm_BlockSize;
			}
			else
			{
				/*free temple array*/
				ffsf_Free( (MBT_VOID*)pu8BlockLinkState );
				pu8BlockLinkState = MM_NULL;
			
				/*cant found the root ,please format the total*/
				ffsv_sbFFSInitDone = MM_TRUE;
				ffsv_spFirstFileLink = MM_NULL;
				ffsf_UnLock(  );
				if(bFirstBuild)
				{
					bFirstBuild = MM_FALSE;
                    if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                    {
                        ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                    }
				}
				return FFSF_Format();
		
//				ffsf_UnLock(  );
//				return FFSM_ErrorFatalError;
			}
		}
	}
	else
	{
		MBT_U32 u32SectorPhyAddr = ffsv_sInitParam.mpu32SectorArray[0];
		MBT_U32 u32BlockPhyAddr;
		ffst_FileHead FileHead;
		
		/*set first sector*/
		SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorWriteNumStart);
		SetSectorNum(u32SectorPhyAddr, 1);
		SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorEraseOrgStart|ffsm_SectorEraseOrgStop|ffsm_SectorCleanStart|ffsm_SectorCleanStop);
		SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorWriteNumStop);
		
		/*save current sector num*/
		ffsv_su32MaxSectorAddr = u32SectorPhyAddr;
		ffsv_su32MaxSectorNum = 1;
		ffsv_su32BlockOffsetInMaxNumSector = 2;
		
		/*3. creat boot in block 1*/
		/*creat boot in BN == 1*/
		u32BlockPhyAddr = u32SectorPhyAddr+ffsm_BlockSize;
		ffsv_spu32PhyAddrArray[ffsc_u16RootBlockNum] = u32BlockPhyAddr;
		
		SetBlockHeadStatus(u32BlockPhyAddr,ffsm_BlockWriteStart);

		/*write BN*/
		BlockHead.mu16NextBlockNum = 0xffff;
		BlockHead.mu16Reverse = 0xffff;
		BlockHead.mu8DataLength = ffsm_BlockSize-ffsc_u32BlockHeadLength;
		BlockHead.mu8Status = 0xff;
		BlockHead.mu16BlockNum = ffsc_u16RootBlockNum;
		WriteBlockHead(u32BlockPhyAddr, &BlockHead);

		/*the first block */
		SetBlockHeadStatus(u32BlockPhyAddr,ffsm_BlockFileWriteStart|ffsm_BlockFileHead);

		/*root file head*/
		strcpy(FileHead.mcFileName,ffsc_pcRootFileName);
		FileHead.mu8FileAttr = (MBT_U8)~FFSM_FileNotDir;
		WriteFileHead(u32BlockPhyAddr,&FileHead);
		
		SetBlockHeadStatus(u32BlockPhyAddr,ffsm_BlockFileWriteStop|ffsm_BlockWriteStop);
		iValidSector=1;
		pSectorNumAddrArray[0].mu32SectorNum=ffsv_su32MaxSectorNum;
		pSectorNumAddrArray[0].mu32PhyAddr=ffsv_su32MaxSectorAddr;
	}
	
	/*7.first time full scan FLASH to fill in the ffsv_spu32PhyAddrArray*/
	/*loop according array*/
	for ( iCount=0; iCount<iValidSector; iCount++ )
	{
		MBT_U16 	SectorHeadStatus;
		MBT_BOOL	bWithInValid;
		GetSectorHeadStatus(pSectorNumAddrArray[iCount].mu32PhyAddr, &SectorHeadStatus);
		if ( SectorHeadStatus&ffsm_SectorWithInvalid ) 
		{
			bWithInValid = MM_FALSE;
		}
		else
		{
			bWithInValid = MM_TRUE;
		}
		for ( u32BlockCount=1; u32BlockCount<(ffsv_sInitParam.mu32SectorSize/ffsm_BlockSize); u32BlockCount++ )
		{
			u32BlockAddr = pSectorNumAddrArray[iCount].mu32PhyAddr+(u32BlockCount*ffsm_BlockSize) ;
			ReadBlockHead( u32BlockAddr, &BlockHeadBuf );

			if( BlockHeadBuf.mu8Status==0xFF && BlockHeadBuf.mu16BlockNum==0xFFFF )
			{
				continue;
			}

			/*7.1.do with the block shutdown*/
			if ( ( (BlockHeadBuf.mu8Status&ffsm_BlockInvalid)==0 )
				|| ( (BlockHeadBuf.mu8Status&(ffsm_BlockWriteStart|ffsm_BlockWriteStop))!=0 )
				|| ( (BlockHeadBuf.mu8Status&ffsm_BlockFileWriteStart)!=
					(BlockHeadBuf.mu8Status&ffsm_BlockFileWriteStop) )
				|| (BlockHeadBuf.mu8DataLength==ffsc_u8InitDataLength)
				)
			{
				SetBlockHeadStatus( u32BlockAddr, ffsm_BlockInvalid);

				if (!bWithInValid)
				{
					SetSectorHeadStatus(pSectorNumAddrArray[iCount].mu32PhyAddr, ffsm_SectorWithInvalid);
					bWithInValid=MM_TRUE;
				}
				continue;
			}
			if ( (BlockHeadBuf.mu8Status&(ffsm_BlockNextBNStart|ffsm_BlockNextBNStop))!=(ffsm_BlockNextBNStart|ffsm_BlockNextBNStop) &&
				(BlockHeadBuf.mu8Status&(ffsm_BlockNextBNStart|ffsm_BlockNextBNStop))!=0 )
			{
				SetBlockHeadStatus( u32BlockAddr,ffsm_BlockNextBNStart );
                                SetBlockNextBN ( u32BlockAddr , 0 );
				SetBlockHeadStatus( u32BlockAddr,ffsm_BlockNextBNStop );
			}

			/*7.2.Fill in the ffsv_spu32PhyAddrArray*/
			if ( (BlockHeadBuf.mu16BlockNum>0) && (BlockHeadBuf.mu16BlockNum<ffsv_su16MaxBlockNum) ) 
			{
				if ( (pu8BlockLinkState[BlockHeadBuf.mu16BlockNum]&ffsm_BlockLinkState_Occupy)==ffsm_BlockLinkState_Occupy )
				{
					MBT_S32 iCount2;
					SetBlockHeadStatus( ffsv_spu32PhyAddrArray[BlockHeadBuf.mu16BlockNum] , ffsm_BlockInvalid );
					for ( iCount2=0; iCount2<=iCount; iCount2++ )
					{
						if ( pSectorNumAddrArray[iCount2].mu32PhyAddr<ffsv_spu32PhyAddrArray[BlockHeadBuf.mu16BlockNum] &&
							pSectorNumAddrArray[iCount2].mu32PhyAddr+ffsv_sInitParam.mu32SectorSize>ffsv_spu32PhyAddrArray[BlockHeadBuf.mu16BlockNum] )
						{
							break;
						}
					}
					GetSectorHeadStatus(pSectorNumAddrArray[iCount2].mu32PhyAddr, &SectorHeadStatus);
					if ( SectorHeadStatus&ffsm_SectorWithInvalid ) 
					{
						SetSectorHeadStatus(pSectorNumAddrArray[iCount2].mu32PhyAddr, ffsm_SectorWithInvalid);
					}
				}
				pu8BlockLinkState[BlockHeadBuf.mu16BlockNum] = ffsm_BlockLinkState_Occupy;
				if ( (BlockHeadBuf.mu8Status&ffsm_BlockFileHead)==0 )
				{
					pu8BlockLinkState[BlockHeadBuf.mu16BlockNum] |= ffsm_BlockLinkState_First;
				}
				ffsv_spu32PhyAddrArray[BlockHeadBuf.mu16BlockNum] = u32BlockAddr;
			}
		}
	}
	ffsf_Free( (MBT_VOID*)pSectorNumAddrArray );
	pSectorNumAddrArray = MM_NULL;

	/*8.found the root*/
	if ( pu8BlockLinkState[ffsc_u16RootBlockNum]!=(ffsm_BlockLinkState_Occupy|ffsm_BlockLinkState_First) )
	{
		/*free temple array*/
		ffsf_Free( (MBT_VOID*)pu8BlockLinkState );
		pu8BlockLinkState = MM_NULL;
	
		/*cant found the root ,please format the total*/
		ffsv_sbFFSInitDone = MM_TRUE;
		ffsv_spFirstFileLink = MM_NULL;
		ffsf_UnLock(  );
		if(bFirstBuild)
		{
			bFirstBuild = MM_FALSE;
            if(ffsv_sInitParam.mpfunFfsCreateCallBack)
            {
                ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
            }
		}
		return FFSF_Format();

	}
	else
	{
		/*8.1.root ok, init root file link*/
		ffsv_spFirstFileLink = (ffst_FileLink*)ffsf_Malloc(sizeof(ffst_FileLink),__LINE__) ;
		ffsv_spFirstFileLink->mpBrotherLink =MM_NULL ;
		ffsv_spFirstFileLink->mpSonLink = MM_NULL ;
		ffsv_spFirstFileLink->mpFirstOperator = MM_NULL;
		memset(&(ffsv_spFirstFileLink->mFirstBlockLink),0,sizeof(ffst_BlockLink));
		ErrorCode = CreateBlockLink ( ffsc_u16RootBlockNum, 
			pu8BlockLinkState,
			&(ffsv_spFirstFileLink->mFirstBlockLink),
			&(ffsv_spFirstFileLink->mu32FileSize), &(ffsv_spFirstFileLink->mu8FileAttr),
			ffsv_spFirstFileLink->mcFileName );

		/*9.second time scan FLASH to link the Filetree from the root*/
		if ( (ffsv_spFirstFileLink->mu8FileAttr&FFSM_FileNotDir)==FFSM_FileNotDir )
		{
			ErrorCode=FFSM_ErrorUnknownError;
		}
		if ( ErrorCode==FFSM_ErrorNoError )
		{
			ErrorCode = ParseFileChildLink ( ffsv_spFirstFileLink , pu8BlockLinkState );
		}
		if ( ErrorCode!=FFSM_ErrorNoError )
		{
			FreeOneFileLink(ffsv_spFirstFileLink,MM_FALSE);
		
			/*free temple array*/
			ffsf_Free( (MBT_VOID*)pu8BlockLinkState );
			pu8BlockLinkState = MM_NULL;
	
			/*fatal existed ,please format the total*/
			ffsv_sbFFSInitDone = MM_TRUE;
			ffsv_spFirstFileLink = MM_NULL;
			ffsf_UnLock(  );
			if(bFirstBuild)
			{
				bFirstBuild = MM_FALSE;
                if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                {
                    ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                }
			}
			return FFSF_Format();
		}

		if ( ffsv_sEraseDirParam.mbRelink )
		{
			if ( (ffsv_sEraseDirParam.mu16EraseOrgBN!=0)
				&&(ffsv_sEraseDirParam.mu16EraseOrgBN!=ffsc_u16EmptyBlockNum) )
			{
				ffst_FileLink	*pFileLink;
				MBT_U32		u32OffsetPhyAddr;

				pFileLink = (ffst_FileLink*)MM_NULL;
				
				/*1.find org one*/
				FindDirLinkFromFileFirstBN ( ffsv_sEraseDirParam.mu16EraseOrgBN , &pFileLink , &u32OffsetPhyAddr );
				if ( pFileLink==(ffst_FileLink*)MM_NULL )
				{
					FreeOneFileLink(ffsv_spFirstFileLink,MM_FALSE);
				
					/*free temple array*/
					ffsf_Free( (MBT_VOID*)pu8BlockLinkState );
					pu8BlockLinkState = MM_NULL;
			
					/*fatal existed ,please format the total*/
					ffsv_sbFFSInitDone = MM_TRUE;
					ffsv_spFirstFileLink = MM_NULL;
					ffsf_UnLock(  );
					if(bFirstBuild)
					{
						bFirstBuild = MM_FALSE;
                        if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                        {
                            ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                        }
					}
					return FFSF_Format();
				}

				/*2.erase org one*/
				SetDirOneContentStatus( pFileLink, u32OffsetPhyAddr, ffsm_DirEraseBNStart);
				SetDirOneContentBN( pFileLink, u32OffsetPhyAddr, 0 );
				SetDirOneContentStatus( pFileLink, u32OffsetPhyAddr, ffsm_DirEraseBNStop);
				
				/*3.link new one*/
				SetDirOneContentStatus( ffsv_sEraseDirParam.mpOrgFileLink, 
					ffsv_sEraseDirParam.mu32OrgDirOffsetPhyAddr, ffsm_DirEraseOrgStop|ffsm_DirEraseOrgStart);
			}
			else
			{
				/*should not be reached*/
				
				/*return FFSM_ErrorFatalError;*/
				FreeOneFileLink(ffsv_spFirstFileLink,MM_FALSE);
			
				/*free temple array*/
				ffsf_Free( (MBT_VOID*)pu8BlockLinkState );
				pu8BlockLinkState = MM_NULL;
		
				/*fatal existed ,please format the total*/
				ffsv_sbFFSInitDone = MM_TRUE;
				ffsv_spFirstFileLink = MM_NULL;
				ffsf_UnLock(  );
				if(bFirstBuild)
				{
					bFirstBuild = MM_FALSE;
                    if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                    {
                        ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                    }
				}
				return FFSF_Format();
			}
		}
		else
		{
			if ( (ffsv_sEraseDirParam.mu16EraseOrgBN!=0)
				&&(ffsv_sEraseDirParam.mu16EraseOrgBN!=ffsc_u16EmptyBlockNum) )
			{
				/*not find the org one,fresh the data status*/
				SetDirOneContentStatus( ffsv_sEraseDirParam.mpOrgFileLink, 
					ffsv_sEraseDirParam.mu32OrgDirOffsetPhyAddr, ffsm_DirEraseOrgStart|ffsm_DirEraseOrgStop);
				ffsv_sEraseDirParam.mu16EraseOrgBN = 0;
			}
		}
			
		/*10.change the unlinked block to invalid status*/
		for ( iCount=1;iCount<ffsv_su16MaxBlockNum;iCount++ )
		{
			if ( (pu8BlockLinkState[iCount]!=ffsm_BlockLinkState_Empty)
				&& ((pu8BlockLinkState[iCount]&ffsm_BlockLinkState_Linked)==0) )
			{
				/*set invalid*/
				SetBlockHeadStatus(ffsv_spu32PhyAddrArray[iCount], ffsm_BlockInvalid);
				SetThisSectorWithInvalid(ffsv_spu32PhyAddrArray[iCount]);
				ffsv_spu32PhyAddrArray[iCount]=0;
			}

			/*11.recopy Block that NextBN==0*/
			else if (pu8BlockLinkState[iCount]&ffsm_BlockLinkState_Linked)
			{
				u32BlockAddr = ffsv_spu32PhyAddrArray[iCount];
                                ffsv_sInitParam.mpfunFlashRead(u32BlockAddr,(MBT_VOID *)(&BlockHead),sizeof(BlockHead));
				if ( BlockHead.mu16NextBlockNum==0 )
				{
					MBT_U8	*u8Buffer;
					ErrorCode = GetEmptyBlock(&u32NewBlockAddr);
					if ( ErrorCode!=FFSM_ErrorNoError )
					{
						FreeOneFileLink(ffsv_spFirstFileLink,MM_FALSE);
					
						/*free temple array*/
						ffsf_Free( (MBT_VOID*)pu8BlockLinkState );
						pu8BlockLinkState = MM_NULL;
				
						/*fatal existed ,please format the total*/
						ffsv_sbFFSInitDone = MM_TRUE;
						ffsv_spFirstFileLink = MM_NULL;
						ffsf_UnLock(  );
						if(bFirstBuild)
						{
							bFirstBuild = MM_FALSE;
                            if(ffsv_sInitParam.mpfunFfsCreateCallBack)
                            {
                                ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
                            }
						}
						return FFSF_Format();
					}

                    			u8Buffer = ffsf_Malloc(ffsm_BlockSize,__LINE__);
                    			if(MM_NULL == u8Buffer)
                    			{
                    			    ffst_BlockHead *pBlockHead;
                                            u32BlockAddr = ffsv_spu32PhyAddrArray[iCount];
                                            ReadFlashBlock(u32BlockAddr, u8Buffer);
                                            pBlockHead = (ffst_BlockHead*)u8Buffer;

                                            SetBlockHeadStatus(u32NewBlockAddr, ffsm_BlockWriteStart);
                                            SetBlockCurrentBN(u32NewBlockAddr, pBlockHead->mu16BlockNum);
                                            if ( (pBlockHead->mu8Status&ffsm_BlockFileHead)==0 )
                                            {
                                                ffst_FileHead stFfsHead;
                                                SetBlockHeadStatus(u32NewBlockAddr, ffsm_BlockFileHead);
                                            	ffsv_sInitParam.mpfunFlashRead(u32BlockAddr+ffsc_u32BlockHeadLength,(MBT_VOID *)(&stFfsHead),sizeof(stFfsHead));
                                                WriteFileHead(u32NewBlockAddr, &stFfsHead);
                                            }
                                            SetBlockHeadStatus(u32NewBlockAddr, ffsm_BlockFileWriteStart);
                                            WriteFlashBlock(u32NewBlockAddr, u8Buffer);
                                            SetBlockValidDataLen(u32NewBlockAddr, pBlockHead->mu8DataLength);
                                            ffsf_Free(u8Buffer);
                    			}
					SetBlockHeadStatus(u32NewBlockAddr, ffsm_BlockFileWriteStop);
					SetBlockHeadStatus(u32NewBlockAddr, ffsm_BlockWriteStop);
					SetBlockHeadStatus(u32BlockAddr, ffsm_BlockInvalid);
					ffsv_spu32PhyAddrArray[iCount]=u32NewBlockAddr;
				}
			}
		}
	}
	
	/*11.delete the temp array*/
	ffsf_Free( (MBT_VOID*)pu8BlockLinkState );
	pu8BlockLinkState = MM_NULL;

	/*12.set init done*/
	ffsv_sbFFSInitDone = MM_TRUE;

	/*13.unlock the tree*/
	ffsf_UnLock(  );
	
	if(bFirstBuild)
	{
		bFirstBuild = MM_FALSE;
        if(ffsv_sInitParam.mpfunFfsCreateCallBack)
        {
            ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
        }
	}
	
	return FFSM_ErrorNoError;
}
/*********************************************************************
 * Function Name : FFSF_TermModule
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_TermModule( MBT_VOID );
 *
 * Input :	nothing
 *
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *		a.	ffsv_sbFFSInitDone
 *		b.	ffsv_spFirstFileLink
 *		c.	ffsv_sInitParam
 *		d.	ffsv_spu32PhyAddrArray
 *
 * Callers :
 *
 * Callees :
 *		a.	ffsf_Free
 *		b.	ffsf_LockTerm
 *		c.	ffsf_Lock
 *		d.	ffsf_UnLock
 *
 * Purpose :
 *		1. terminate FFS moudle 
 *		2. free all memory
 *
 * Theory of Operation :
 *		1. from first filelink, search all not closed fileoperations and filehandles, copy data from RAM to flash
 *		2. free the memory of these not closed fileoperations and filehandles
 *		3. free the memory of the directory tree
 *********************************************************************/
//Jason 2005-05-10--->
MBT_BOOL IsOpearatorExisted(ffst_FileLink *pFileLink)
{
	MBT_BOOL bRet;
	
	if ( pFileLink==MM_NULL )
	{
		return MM_FALSE;
	}

	if ( pFileLink->mpFirstOperator!=MM_NULL )
	{
		return MM_TRUE;
	}

	if ( pFileLink->mpSonLink!=MM_NULL )
	{
		bRet = IsOpearatorExisted(pFileLink->mpSonLink);
		if(bRet)
		{
			return MM_TRUE;
		}
	}
	if ( pFileLink->mpBrotherLink!=MM_NULL )
	{
		bRet = IsOpearatorExisted(pFileLink->mpBrotherLink);
		if(bRet)
		{
			return MM_TRUE;
		}
	}
	return MM_FALSE;
}
//<---

FFST_ErrorCode FFSF_TermModule( MBT_VOID )
{
/*Jason*/
	FFST_ErrorCode ErrorCode =FFSM_ErrorNoError;

/*add by qyt 2005.4.8*/
	if(ffsv_sbFFSInitDone == MM_FALSE)
	{
		return FFSM_ErrorNotInitialize;
	}

	/*1.lock tree*/
	ffsf_Lock(  );

	//Jason 2005-05-10--->
	if ( IsOpearatorExisted(ffsv_spFirstFileLink) )
	{
		ffsf_UnLock();
		return FFSM_ErrorFileAlreadyOpen;
	}
	//<---

	/*2.Search from first file link, free it*/
	FreeOneFileLink ( ffsv_spFirstFileLink , MM_FALSE );
	ffsv_spFirstFileLink = MM_NULL;

	/*3.free pnysical address array*/
	ffsf_Free( (MBT_VOID*)ffsv_spu32PhyAddrArray );
	ffsv_spu32PhyAddrArray = MM_NULL;

	/*4.free init params memory*/
	ffsf_Free( (MBT_VOID*)(ffsv_sInitParam.mpu32SectorArray) );
	ffsv_sInitParam.mpu32SectorArray = MM_NULL;
	
	/*5.set module invalid*/
	ffsv_sbFFSInitDone = MM_FALSE;

	/*6.unlock*/
	ffsf_UnLock(  );

	/*7.free lock*/
	ErrorCode = ffsf_LockTerm();

	ffsf_HeapTerm();

	return ErrorCode;
}
/*********************************************************************
 * Function Name : FFSF_Format
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_Format( MBT_VOID );
 *
 * Input :	nothing
 *
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		a.	ffsf_Lock
 *		b.	ffsf_UnLock
 *		c.	ffsf_Free
 *		d.	ffsf_GetEmptyBlock
 *		e.	ParseFileNameStruct
 *
 * Purpose :
 *		Format FFS moudle 
 *		
 *
 * Theory of Operation :
 *		1. erase all sector of filesystem
 *		2. write file system flag "SHULANG00", and version number 0x0301
 *		3. free the memory of these not closed fileoperations and filehandles
 *		4. free the memory of the directory tree
 *********************************************************************/
FFST_ErrorCode FFSF_Format( MBT_VOID )
{/*qyt 2005.1.26*//*HB*/
	MBT_U32				u32SectorCount		=ffsv_sInitParam.mu32SectorCount;
	MBT_U32				u32Counttemp		=0;			
	MBT_U32				u32SectorPhyAddr	=0;
	MBT_U32 				u32BlockPhyAddr		=0;
	ffst_BlockHead			BlockHead;
	ffst_FileHead			FileHead;
	ffst_FileLink			*pFileLink=MM_NULL;
	
	/*if(ffsv_sbFFSInitDone == false), return not_init,else continue*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*1. lock(tree)*/
	ffsf_Lock();

	//Jason 2005-05-10--->
	if ( IsOpearatorExisted(ffsv_spFirstFileLink) )
	{
		ffsf_UnLock();
		return FFSM_ErrorFileAlreadyOpen;
	}
	//<---

	/*2. for (all sector)
			FromatFlashSector()*/
	for(u32Counttemp = 0; u32Counttemp < u32SectorCount; u32Counttemp++)
	{
		u32SectorPhyAddr = (MBT_U32)(ffsv_sInitParam.mpu32SectorArray[u32Counttemp]);
		FormatFlashSector(u32SectorPhyAddr);
        if(ffsv_sInitParam.mpfunFfsCreateCallBack)
        {
            ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
        }
	}

	u32SectorPhyAddr = ffsv_sInitParam.mpu32SectorArray[0];
	/*set first sector*/
	SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorWriteNumStart);
	SetSectorNum(u32SectorPhyAddr, 1);
	SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorEraseOrgStart|ffsm_SectorEraseOrgStop|ffsm_SectorCleanStart|ffsm_SectorCleanStop);
	SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorWriteNumStop);
    if(ffsv_sInitParam.mpfunFfsCreateCallBack)
    {
        ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
    }
	/*save current sector num*/
	ffsv_su32MaxSectorAddr = u32SectorPhyAddr;
	ffsv_su32MaxSectorNum = 1;
	ffsv_su32BlockOffsetInMaxNumSector = 2;
	
	/*3. creat boot in block 1*/
	/*creat boot in BN == 1*/
	u32BlockPhyAddr = u32SectorPhyAddr+ffsm_BlockSize;
	memset( (MBT_VOID*)ffsv_spu32PhyAddrArray, 0, (ffsv_su16MaxBlockNum*sizeof(MBT_U32)) );
	ffsv_spu32PhyAddrArray[ffsc_u16RootBlockNum] = u32BlockPhyAddr;
	
	SetBlockHeadStatus(u32BlockPhyAddr,ffsm_BlockWriteStart);

	/*write BN*/
	BlockHead.mu16NextBlockNum = 0xffff;
	BlockHead.mu16Reverse = 0xffff;
	BlockHead.mu8DataLength = ffsc_u8BlockDataLength;
	BlockHead.mu8Status = 0xff;
	BlockHead.mu16BlockNum = ffsc_u16RootBlockNum;
	WriteBlockHead(u32BlockPhyAddr, &BlockHead);
    if(ffsv_sInitParam.mpfunFfsCreateCallBack)
    {
        ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
    }
	/*the first block */
	SetBlockHeadStatus(u32BlockPhyAddr,ffsm_BlockFileWriteStart|ffsm_BlockFileHead);

	/*root file head*/
	strcpy(FileHead.mcFileName,ffsc_pcRootFileName);
	FileHead.mu8FileAttr = (MBT_U8)~FFSM_FileNotDir;
	WriteFileHead(u32BlockPhyAddr,&FileHead);
	
	SetBlockHeadStatus(u32BlockPhyAddr,ffsm_BlockFileWriteStop|ffsm_BlockWriteStop);

	pFileLink=(ffst_FileLink*)ffsf_Malloc(sizeof(ffst_FileLink),__LINE__);
	strcpy(pFileLink->mcFileName,ffsc_pcRootFileName);
	pFileLink->mFirstBlockLink.mpNextBlockLink=MM_NULL;
	pFileLink->mFirstBlockLink.mu16BlockNum=ffsc_u16RootBlockNum;
	pFileLink->mFirstBlockLink.mu8BlockDataLength=BlockHead.mu8DataLength;
	pFileLink->mFirstBlockLink.mu8Reserved=0xFF;	
	pFileLink->mpBrotherLink=MM_NULL;
	pFileLink->mpFirstOperator=MM_NULL;
	pFileLink->mpSonLink=MM_NULL;
	pFileLink->mu32FileSize=ffsc_u8BlockDataLength-ffsc_u8FileHeadLength;//jason050218
	pFileLink->mu8FileAttr=(MBT_U8)~FFSM_FileNotDir;

	FreeOneFileLink ( ffsv_spFirstFileLink , MM_FALSE );
	ffsv_spFirstFileLink=pFileLink;
    if(ffsv_sInitParam.mpfunFfsCreateCallBack)
    {
        ffsv_sInitParam.mpfunFfsCreateCallBack(MM_NULL);
    }
	/*4. ffsf_UnLock(tree)*/
	ffsf_UnLock();
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : FFSF_FileOpen
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileOpen( SULM_IN MBT_CHAR *pcFileName , SULM_IN MBT_U32 u32OpenMode , 
 *									SULM_OUT FFST_FileHandle *phFile );
 *
 * Input :	
 *		a.	pcFileName	SULM_IN MBT_CHAR *
 *			pointer to file name
 *		b.	u32OpenMode		SULM_IN MBT_U32
 *			type of open mode

 * Output	: 	nothing
 *
 * Output	:
 *		a.	phFile	SULM_OUT FFST_FileHandle *
 *			pointer to ffst_FileOperator structure
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		a.	GetFileLink
 *		b.	ParseFileNameStruct
 *		c.	lock
 *		d.	unlock
 *		e.	ffsf_GetEmptyBlock
 *		f.	GetValidBlockNumber
 *		g.	ffsf_Malloc
 *		h.	FFSF_FileSeek
 *
 * Purpose :
 *		1.Open a file	
 *		2.Creat a  new  file
 * Theory of Operation :
 *		1.judge what want to do  refering to the u32OpenMode
 *		2.parse pcFileName
 *		3.find the filelink of this file, add its operationhandle, refering to u32OpenMode
 *********************************************************************/
FFST_ErrorCode FFSF_FileOpen( SULM_IN MBT_CHAR *pcFileName , SULM_IN MBT_U32 u32OpenMode ,
				SULM_OUT FFST_FileHandle *phFile )
{/*cm*//*HB*/
	FFST_ErrorCode		ErrorCode			=FFSM_ErrorNoError;
	ffst_FileLink		*pFileLink			=MM_NULL;
	ffst_FileLink		*pFatherFileLink	=MM_NULL;
	ffst_FileOperator	*pFileOperator		=MM_NULL;
//	ffst_FileLink		*pNewFileLink		=MM_NULL;
	MBT_U32			u32BlockPhyAddr		=ffsc_u32InvliadPhyAddr;
	MBT_U16			u16NewBlockNumber	=ffsc_u16InvlidBlockNum;
	MBT_U32			u32DirOffsetPhyAddr	=ffsc_u32InvliadPhyAddr;
	MBT_BOOL			bFileNotDir			=MM_FALSE;
	MBT_CHAR 				acNewFileName[FFSM_MaxFileNameLength+1];
	
	/*Check the FFS whether it is initial*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}

	//Jason 2005-04-19
	*phFile = (MBT_U32)MM_NULL;

	/*Lock the tree*/
	ffsf_Lock();

	/*search the filelink of the path file name*/
	while(MM_TRUE)
        	{
            	ErrorCode = GetFileLink(pcFileName, &pFileLink, &pFatherFileLink,&bFileNotDir);
            	if ( !bFileNotDir )
            	{
            		ffsf_UnLock();
            		return FFSM_ErrorBadParams;
            	}
            	if( (ErrorCode==FFSM_ErrorFileNotExist) && ((u32OpenMode&FFSM_OpenCreate)==0)  )
            	{
            		ffsf_UnLock();
            		return FFSM_ErrorFileNotExist;
            	}
            	
            	if( (ErrorCode==FFSM_ErrorNoError) && pFileLink->mpFirstOperator!=MM_NULL )
            	{
            		ffsf_UnLock();
            		return FFSM_ErrorFileAlreadyOpen;
            	}
            	
            	if( (ErrorCode==FFSM_ErrorNoError) && (u32OpenMode&FFSM_OpenExist) )
            	{
            		ffsf_UnLock();
            		return FFSM_ErrorNoError;
            	}
            	
            	ExtractLeafFileName(pcFileName,acNewFileName);
            	
            	if(ErrorCode != FFSM_ErrorNoError)
            	{
            		if(ErrorCode != FFSM_ErrorFileNotExist)
            		{	
            			ffsf_UnLock();
            			return (ErrorCode);
            		}
            		else/*create a new file*/
            		{
            			/*get a empyt block*/
            			ErrorCode = GetEmptyBlock(&u32BlockPhyAddr);
            			if (ErrorCode != FFSM_ErrorNoError)
            			{
            				ffsf_UnLock();//QYT 2005-04-25
            				return ErrorCode;
            			}
            			/*get a valid block number*/
            			ErrorCode = GetValidBlockNumber(ffsc_u16InvlidBlockNum, &u16NewBlockNumber);
            			if (ErrorCode != FFSM_ErrorNoError)
            			{
            			        //MMF_SYS_Assert(0);//Jason 2005-04-25
            				ffsf_UnLock();//QYT 2005-04-25
            				return ErrorCode;
            			}

            			ffsv_spu32PhyAddrArray[u16NewBlockNumber]= u32BlockPhyAddr;

            			/*write the block head and file head to the empty block*/
            			SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockWriteStart);
            			SetBlockCurrentBN(u32BlockPhyAddr, u16NewBlockNumber);
            			SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockFileHead);
            			SetFileName(u32BlockPhyAddr, acNewFileName);
            			SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockWriteStop);

            			/*add a new block number to the directory content*/
            			AddDirOneContentBN(pFatherFileLink,  u16NewBlockNumber, &u32DirOffsetPhyAddr);
            			SetDirOneContentStatus(pFatherFileLink, u32DirOffsetPhyAddr, ffsm_DirWriteBNStart);
            			SetDirOneContentBN(pFatherFileLink, u32DirOffsetPhyAddr, u16NewBlockNumber);
            			SetDirOneContentStatus(pFatherFileLink, u32DirOffsetPhyAddr, ffsm_DirEraseOrgStart | ffsm_DirEraseOrgStop);
            			SetDirOneContentStatus(pFatherFileLink, u32DirOffsetPhyAddr, ffsm_DirWriteBNStop);

            			/*modify the RAM tree*/
            			/*create the file link of the new file and set it*/
            //			pNewFileLink = (ffst_FileLink*)ffsf_Malloc(sizeof(ffst_FileLink),__LINE__);
            //			pFileLink =pNewFileLink;
            //			strcpy(pNewFileLink->mcFileName, acNewFileName);
            			pFileLink = (ffst_FileLink*)ffsf_Malloc(sizeof(ffst_FileLink),__LINE__);
            			strcpy(pFileLink->mcFileName, acNewFileName);
            			
            			pFileLink->mpBrotherLink	=MM_NULL;
            			pFileLink->mpFirstOperator	=MM_NULL;
            			pFileLink->mpSonLink		=MM_NULL;

            			pFileLink->mu32FileSize		=0;
            			pFileLink->mu8FileAttr		=ffsc_u8InitFileAttr;

            			/*set the first block link of the file*/
            			pFileLink->mFirstBlockLink.mpNextBlockLink = MM_NULL;
            			pFileLink->mFirstBlockLink.mu16BlockNum	=u16NewBlockNumber;
            			pFileLink->mFirstBlockLink.mu8BlockDataLength =ffsc_u8FileHeadLength;

            			/*add the new filelink to the RAM tree*/
            			ErrorCode = AddSonFileLink(pFatherFileLink, pFileLink);
            			if (ErrorCode != FFSM_ErrorNoError)
            			{
            				ffsf_UnLock();
            				return ErrorCode;
            			}
            		}
            	}

            	/*Create and set the file opetator*/
            	pFileOperator = (ffst_FileOperator*)ffsf_Malloc(sizeof(ffst_FileOperator),__LINE__);
            	pFileOperator->mbBufferModified	= MM_FALSE;
            	pFileOperator->mpCurBlockLink	=&(pFileLink->mFirstBlockLink);
            	pFileOperator->mpFileLink	= pFileLink;
            	pFileOperator->mu32CurFileOffset	=0;
            	pFileOperator->mu32SysSignal=ffsc_u32OperatorSysSignal;
            	pFileOperator->mu8CurBlockOffset	=(MBT_U8)ffsc_u8FileHeadLength;
            	
            	/*read the valid data of the block to the buffer*/
            	ReadFlashBlock(ffsv_spu32PhyAddrArray[pFileLink->mFirstBlockLink.mu16BlockNum],pFileOperator->mu8Buffer);

            	pFileLink->mpFirstOperator = pFileOperator;
            	*phFile = (MBT_U32)pFileOperator;

            	ffsf_UnLock();
            	if (u32OpenMode&FFSM_OpenAppend)
            	{
            		return FFSF_FileSeek(*phFile, 0, FFSM_SeekEnd);
            	}
            	else
            	{
            		return FFSM_ErrorNoError;
            	}
        	}
}
/*********************************************************************
 * Function Name : FFSF_FileClose
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileClose( SULM_IN FFST_FileHandle hFile );
 *
 * Input :	
 *			hFile		SULM_IN FFST_FileHandle
 *			pointer to ffst_FileOperator structure
 *
 *
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		a.	ffsf_Lock
 *		b.	ffsf_UnLock
 *		c.	GetEmptyBlock
 *		d.	GetValidBlockNumber
 *		e.	WriteFlashBlock
 *
 * Purpose :
 *		Close a file
 *	
 * Theory of Operation :
 *		1.whether is this handle valid
 *		2.if fileoperation is write, then write the data from ram to flash
 *		3.the nextoperator of preoperator = nextoperator of this
 *		4.the pre of next = pre of this
 *		5.free this operation
 *********************************************************************/
FFST_ErrorCode FFSF_FileClose( SULM_IN FFST_FileHandle hFile )
{/*qyt*//*HB*/
	ffst_FileOperator	*pFileOperator 		=(ffst_FileOperator*)hFile;
	FFST_ErrorCode		ErrorCode 			=FFSM_ErrorNoError;
	
	/*Check the FFS whether it is initial*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*1.whether is this handle valid*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}

	ErrorCode = FFSF_FileFlush(hFile);
	if ( ErrorCode!=FFSM_ErrorNoError )
	{
		return ErrorCode;
	}

	/*2.3 lock(tree)*/
	ffsf_Lock();

	/*5. filelink->firstopeator = MM_NULL*/
	pFileOperator->mpFileLink->mpFirstOperator = MM_NULL;
	pFileOperator->mu32SysSignal=0;
	
	/*4. free this hFile*/
	ffsf_Free((MBT_VOID *) pFileOperator);

	/*6. unlock(tree)*/
	ffsf_UnLock();
	return FFSM_ErrorNoError;
}
/*********************************************************************
 * Function Name : FFSF_FileRead
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileRead( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U8 *pu8Buffer , 
 *							SULM_IN MBT_U32 u32Length, SULM_OUT MBT_U32 *pu32LengthActual );
 *
 * Input :	
 *		a.	hFile				SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 *		b.	u32Length			SULM_IN MBT_U32
 *			Want size in bytes to be read
 *			
 *
 * Output	: 	
 *		a.	pu8Buffer			SULM_OUT MBT_U8 *
 *			Pointer to the position that storage for data.		
 *		b.	pu32LengthActual	SULM_OUT MBT_U32 *
 *			Pointer to the actual size in bytes has been read
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		a. 	ffsf_Lock
 *		b.	ffsf_UnLock
 *
 * Purpose :
 *		Read data from a file
 *
 * Theory of Operation :
 *		1.whether is this handle valid
 *		2.from the current point,if the length of current point to the end of file > u32Length,read u32Length
 *			else read the length of current point to the end of file
 *********************************************************************/
FFST_ErrorCode FFSF_FileRead( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U8 *pu8Buffer , 
							SULM_IN MBT_U32 u32Length, SULM_OUT MBT_U32 *pu32LengthActual )
{/*Jason*//*HB*/
	FFST_ErrorCode		ErrorCode		=FFSM_ErrorNoError;
	ffst_FileOperator	*pFileOperator	=(ffst_FileOperator*)hFile;
	MBT_U32			u32LengthAct	=0;
	MBT_U32			u32WriteLength	=0;

	if(pu8Buffer==MM_NULL || pu32LengthActual==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	*pu32LengthActual=0;//Jason 2005-04-25
	
	/*check file initialize*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}

	/*check hFile Valid*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}

	ErrorCode = FFSF_FileFlush(hFile);
	if ( ErrorCode!=FFSM_ErrorNoError )
	{
		return ErrorCode;
	}
	
	/*Lock*/
	ffsf_Lock();

	/*check read length*/
	if ( (u32Length+pFileOperator->mu32CurFileOffset)>
		(pFileOperator->mpFileLink->mu32FileSize) )
	{
		u32LengthAct=pFileOperator->mpFileLink->mu32FileSize-pFileOperator->mu32CurFileOffset;
	}
	else
	{
		u32LengthAct=u32Length;
	}

	if ( u32LengthAct==0 )
	{
		ffsf_UnLock();
		return FFSM_ErrorFileEnd;
	}

	/*set unchanged data*/
	*pu32LengthActual=u32LengthAct;
	pFileOperator->mu32CurFileOffset = pFileOperator->mu32CurFileOffset + u32LengthAct;

	/*judge Lenth > block data left*/
	/*read from flash if too long*/
	while( u32LengthAct>(ffsc_u8BlockDataLength-pFileOperator->mu8CurBlockOffset) )
	{
		if(pFileOperator->mu8CurBlockOffset!=ffsc_u8BlockDataLength)
		{
			u32WriteLength=ffsc_u8BlockDataLength-(MBT_U32)pFileOperator->mu8CurBlockOffset;
	                ffsv_sInitParam.mpfunFlashRead((ffsv_spu32PhyAddrArray[pFileOperator->mpCurBlockLink->mu16BlockNum]+ffsc_u32BlockHeadLength
					+(MBT_U32)pFileOperator->mu8CurBlockOffset),pu8Buffer,u32WriteLength);
			pu8Buffer = pu8Buffer + u32WriteLength;
			u32LengthAct = u32LengthAct - u32WriteLength;
		}
		pFileOperator->mpCurBlockLink=pFileOperator->mpCurBlockLink->mpNextBlockLink;
		pFileOperator->mu8CurBlockOffset=0;
	}
	/*ok, not too long, copy & read from ram*/
	ReadFlashBlock(ffsv_spu32PhyAddrArray[pFileOperator->mpCurBlockLink->mu16BlockNum], 
		pFileOperator->mu8Buffer);
	memcpy(pu8Buffer,pFileOperator->mu8Buffer+ffsc_u32BlockHeadLength+(MBT_U32)(pFileOperator->mu8CurBlockOffset),u32LengthAct);

	/*set opeartor*/
	pFileOperator->mu8CurBlockOffset += (MBT_U8)u32LengthAct;

	/*UnLock*/
	ffsf_UnLock();
	
	return ErrorCode;
}
/*********************************************************************
 * Function Name : FFSF_FileWrite
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileWrite( SULM_IN FFST_FileHandle hFile , SULM_IN MBT_U8 *pu8Buffer , 
 *							SULM_IN MBT_U32 u32Length, SULM_OUT MBT_U32 *pu32LengthActual );
 *
 * Input :	
 *		a.	hFile				SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 *		b.	pu8Buffer			SULM_IN MBT_U8 *
 *			Pointer to data to be written
 *		c.	u32Length			SULM_IN MBT_U32
 *			Want size in bytes to be written
 *
 *
 * Output	:
 *		a.	pu32LengthActual	SULM_OUT MBT_U32 *
 *			pointer to the actual size in bytes has been written 
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		1.Wirte data to a file
 *
 * Theory of Operation :
 *		1.whether is this handle valid
 *		2.read data of current point's block to ram
 *		3.set invalid to these block from current point include current 
 *		4.change data in ram
 *		5.when count in ram is a block, get a empty block(if want write the first block,not change the block number), 
 *			and write them to flash.
 *********************************************************************/
FFST_ErrorCode FFSF_FileWrite( SULM_IN FFST_FileHandle hFile , SULM_IN MBT_U8 *pu8Buffer , 
							SULM_IN MBT_U32 u32Length, SULM_OUT MBT_U32 *pu32LengthActual )
{
	/*QYT*//*HB*/
	/*writedlen = 0  : already have writed;  restlen =  u32Length :havent writed;	*pwrbuf	:write buffer point*/
	ffst_FileOperator	*pFileOperator		=(ffst_FileOperator *)hFile;
	MBT_U32			u32WritedLen		=0;
	MBT_U32			u32RestLen			=u32Length;
	MBT_U8				*pWrBuf				=(MBT_U8*)pu8Buffer;
	ffst_BlockLink		*pCurBlockLink		=MM_NULL;
	FFST_ErrorCode		ErrorCode			=FFSM_ErrorNoError;
	MBT_U16			u16PrevBN;
	MBT_U16			u16NextBN;
	MBT_U32			u32BlockPhyAddr;
	MBT_U16			u16NewBN;
	ffst_BlockLink		*pBlockLink			=MM_NULL;


	if(pu8Buffer==MM_NULL || pu32LengthActual==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	*pu32LengthActual =0;//Jason 2005-04-25
	
	/*Check the FFS whether it is initial*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*1. if  hFile is valid ,get fileoperator;else return ffsm_invalidhandle*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}

	/*2. if u32Length== 0,return ,else continue*/
	if(u32Length == 0)
	{
		return FFSM_ErrorNoError;
	}

	/*4. lock*/
	ffsf_Lock();

	/*5. from fileoperator get currentblocklink*/
	pCurBlockLink = pFileOperator->mpCurBlockLink;

	/*10. while(fileoperator->curblockoffset + restlen  >  ffsc_BlockDataSize)*/
	while(((MBT_U32)pFileOperator->mu8CurBlockOffset + u32RestLen) > ffsc_u8BlockDataLength)
	{
		/*if (fileoperator->curblockoffset != ffsc_BlockDataSize)*/
		if(pFileOperator->mu8CurBlockOffset != ffsc_u8BlockDataLength)		
		{
			/*a. memcpy(fileoperator->mu8buffer + fileoperator->curblockoffset + ffsc_u32BlockHeadLength,
					pwrbuf,ffsc_BlockDataSize - fileoperator->curblockoffset)*/
			memcpy(pFileOperator->mu8Buffer + (MBT_U32)pFileOperator->mu8CurBlockOffset + ffsc_u32BlockHeadLength,
					pWrBuf, ffsc_u8BlockDataLength - pFileOperator->mu8CurBlockOffset);

			/*b. fileoperator->modify = MM_TRUE*/
			pFileOperator->mbBufferModified = MM_TRUE;

			/*c. fileoperator->buf[validdataoffset] = ffsc_BlockDataSize*/
			pFileOperator->mu8Buffer[ffsc_u32BlockHeadDataLenOffset] = ffsc_u8BlockDataLength;
			pFileOperator->mpCurBlockLink->mu8BlockDataLength=ffsc_u8BlockDataLength;//jason050216

			/*d. writedlen = ffsc_BlockDataSize - fileoperator->curblockoffset*/
			u32WritedLen = ffsc_u8BlockDataLength-(MBT_U32)(pFileOperator->mu8CurBlockOffset);
			/*e. restlen = restlen - writedlen*/
			u32RestLen = u32RestLen - u32WritedLen;
			/*f. pwrbuf = pwrbuf + writelen*/
			pWrBuf = pWrBuf + u32WritedLen;

			/*12. *pu32LengthActual = u32Length*/
			*pu32LengthActual = *pu32LengthActual +u32WritedLen;

			/*13. fileoperator->filelink->filesize = fileoperator->filelink->filesize > (fileoperator->curfileoffset + u32Length)?: 
									fileoperator->filelink->filesize,(fileoperator->curfileoffset + u32Length)*/
			if(pFileOperator->mpFileLink->mu32FileSize < (pFileOperator->mu32CurFileOffset + u32WritedLen))
			{
				pFileOperator->mpFileLink->mu32FileSize = pFileOperator->mu32CurFileOffset + u32WritedLen;
			}

			/*14. fileoperator->curfileoffset = fileoperator->curfileoffset + u32Length*/
			pFileOperator->mu32CurFileOffset = pFileOperator->mu32CurFileOffset + u32WritedLen;
		}

		/*e. flush()*/
		ffsf_UnLock();
		ErrorCode = FFSF_FileFlush(hFile);
		if(ErrorCode != FFSM_ErrorNoError)
		{
			//Jason 2005-04-25
			*pu32LengthActual=*pu32LengthActual-u32WritedLen;
		
			return ErrorCode;
		}
		ffsf_Lock();
		
		/*n. preBN = curentblocklink->BN*/
		u16PrevBN = pCurBlockLink->mu16BlockNum;

		/*p. if(currentblocklink->nextblocklink != MM_NULL)*/
		if(pCurBlockLink->mpNextBlockLink != MM_NULL)
		{
			/*(1) curentblocklink = currentblocklink->nextblocklink*/
			pCurBlockLink = pCurBlockLink->mpNextBlockLink;
			/*(2) nextBN = curentblocklink->BN*/
			u16NextBN = pCurBlockLink->mu16BlockNum;
			/*update block buffer,readflashblock(addrarray[curentblocklink->BN])*/
			ReadFlashBlock(ffsv_spu32PhyAddrArray[pCurBlockLink->mu16BlockNum], pFileOperator->mu8Buffer);
		}
		/*q. else*/
		else
		{
			/* errorcode = getemptyblock(phyaddr)*/
			ErrorCode = GetEmptyBlock(&u32BlockPhyAddr);
				/*if error, return errorcode*/
			if(ErrorCode != FFSM_ErrorNoError)
			{
				//Jason 2005-04-25
				pFileOperator->mu8CurBlockOffset=ffsc_u8BlockDataLength;
			
				ffsf_UnLock();
				return ErrorCode;
			}
				/*else, continue*/
			/*(1) getvalidBN(newBN)*/
			ErrorCode = GetValidBlockNumber(ffsc_u16InvlidBlockNum, &u16NewBN);
			if(ErrorCode != FFSM_ErrorNoError)
			{

                             //   MMF_SYS_Assert(0);//Jason 2005-04-25
				ffsf_UnLock();
				return ErrorCode;
			}
			/*(2) save addrarray[newBN] = phyaddr*/
			ffsv_spu32PhyAddrArray[u16NewBN] = u32BlockPhyAddr;
			/*(3) blocklink = malloc(sizeof(ffst_blocklink))*/
			pBlockLink = (ffst_BlockLink *)ffsf_Malloc(sizeof(ffst_BlockLink),__LINE__);

			pBlockLink->mu8BlockDataLength = 0;
			/*(4) blocklink->BN = newBN*/
			pBlockLink->mu16BlockNum = u16NewBN;
			/*(5) blocklink->nextbl = MM_NULL*/
			pBlockLink->mpNextBlockLink = MM_NULL;
			/*(6) curentblocklink->nextblocklink = blocklink*/
			pCurBlockLink->mpNextBlockLink = pBlockLink;
			/*(7) curentblocklink = curentblocklink->nextblocklink*/
			pCurBlockLink = pCurBlockLink->mpNextBlockLink;
			/*(8) nextBN = newBN*/
			u16NextBN = u16NewBN;
			/*(9) setblockstatus(writeblockstart) ->(phyaddr)*/
			SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockWriteStart);
			/*(10) setblockNum(currentblocklink->BN) ->(phyaddr)*/
			SetBlockCurrentBN(u32BlockPhyAddr, pCurBlockLink->mu16BlockNum);
			/*(11) setblockstatus(writeblockstop) ->(phyaddr)*/
			SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockWriteStop);

			/*(12) setblockstatus(writenextBNstart)->(addrarray[preBN])*/
			SetBlockHeadStatus(ffsv_spu32PhyAddrArray[u16PrevBN], ffsm_BlockNextBNStart);
			/*(13) setnextBN(nextBN)->(addrarray[preBN])*/
			SetBlockNextBN(ffsv_spu32PhyAddrArray[u16PrevBN], u16NextBN);
			/*(14) setblockstatus(writenextBNstart)->(addrarray[preBN])*/
			SetBlockHeadStatus(ffsv_spu32PhyAddrArray[u16PrevBN], ffsm_BlockNextBNStop);
			
			/*update operator buffer*/
			/*(15) memset(fileoperator->buf,0xff,ffsm_blocksize)*/
			memset(pFileOperator->mu8Buffer,0xff,ffsc_u32BlockHeadLength);
			/*(16) write newBN to buffer*/
			*(MBT_U16*)(pFileOperator->mu8Buffer+(MBT_U8)ffsc_u32BlockHeadBNOffset) = pCurBlockLink->mu16BlockNum;
		}

		/*r. fileoperator->curblockoffset = 0;*/
		pFileOperator->mu8CurBlockOffset = 0;
		/*s. fileoperator->curentblocklink = curentblocklink*/
		pFileOperator->mpCurBlockLink = pCurBlockLink;
	}

	/*11. only one block rest*/
		/*a. memcpy(fileoperator->mu8buffer + fileoperator->curblockoffset + ffsc_u32BlockHeadLength,
				pwrbuf,restlen)*/
	memcpy(pFileOperator->mu8Buffer + pFileOperator->mu8CurBlockOffset + ffsc_u32BlockHeadLength,
				pWrBuf,u32RestLen);
		/*b. fileoperator->modify = MM_TRUE*/
	pFileOperator->mbBufferModified = MM_TRUE;
		/*d. fileoperator->curblockoffset = fileoperator->curblockoffset + restlen;*/
	pFileOperator->mu8CurBlockOffset = pFileOperator->mu8CurBlockOffset + u32RestLen;

		/*c. fileoperator->buf[validdataoffset] = fileoperator->curblockoffset*/
	if ( pFileOperator->mpCurBlockLink->mu8BlockDataLength<pFileOperator->mu8CurBlockOffset )//jason050217
	{
		pFileOperator->mu8Buffer[ffsc_u32BlockHeadDataLenOffset] = pFileOperator->mu8CurBlockOffset;
		pFileOperator->mpCurBlockLink->mu8BlockDataLength = pFileOperator->mu8CurBlockOffset;//jason050216
	}

	/*12. *pu32LengthActual = u32Length*/
	*pu32LengthActual = *pu32LengthActual +u32RestLen;

	/*13. fileoperator->filelink->filesize = fileoperator->filelink->filesize > (fileoperator->curfileoffset + u32Length)?: 
							fileoperator->filelink->filesize,(fileoperator->curfileoffset + u32Length)*/
	if(pFileOperator->mpFileLink->mu32FileSize < (pFileOperator->mu32CurFileOffset + u32RestLen))
	{
		pFileOperator->mpFileLink->mu32FileSize = pFileOperator->mu32CurFileOffset + u32RestLen;
	}

	/*14. fileoperator->curfileoffset = fileoperator->curfileoffset + u32Length*/
	pFileOperator->mu32CurFileOffset = pFileOperator->mu32CurFileOffset + u32RestLen;
			
	/*12. unlock*/
	ffsf_UnLock();

	return FFSM_ErrorNoError;
}
 
/*********************************************************************
 * Function Name : FFSF_FileDelete
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileDelete( SULM_IN MBT_CHAR *pcFileName );
 *
 * Input :	
 *			pcFileName		SULM_IN MBT_CHAR *
 *			Pointer to a file name	
 *
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *			FFST_FileOccupied
 *			FFST_FileNotExist
 *			
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		a.	lock 
 *		b.	unlock
 *		c.	GetFileLink
 * Purpose :
 *			Delete a file
 *	
 * Theory of Operation :
 *		1.parse the input pcFileName
 *		2.whether this flie exist
 *		3.search filelink of this file, brother of prefile = brother of this file
 *		4.delet all operation of this file
 *		5.delet this filelink from directory tree
 *********************************************************************/
FFST_ErrorCode FFSF_FileDelete( SULM_IN MBT_CHAR *pcFileName )
{/*Jason*//*HB*/
	FFST_ErrorCode		ErrorCode 			=FFSM_ErrorNoError;
	ffst_BlockLink		*pBlockLinkNext 	=MM_NULL;
	ffst_BlockLink		*pBlockLink 		=MM_NULL;
	ffst_FileLink		*pFileLinkTemp 		=MM_NULL;
	ffst_FileLink		*pFileLink 			=MM_NULL;
	ffst_FileLink		*pFatherFileLink 	=MM_NULL;
	MBT_U32			u32DirOffsetPhyAddr	=0;
	MBT_U16			u16FileFirstBN 		=0;
	MBT_BOOL			bFileNotDir			=MM_FALSE;

	if(pcFileName==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}
	
	/*if(ffsv_sbFFSInitDone == false), return not_init,else continue*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}

	/*2. lock(tree)*/
	ffsf_Lock();

	/*3. use GetFileLink(),get filelink and dirlink or return this file not exist*/
	ErrorCode=GetFileLink(pcFileName, &pFileLink, &pFatherFileLink,&bFileNotDir);
	if(ErrorCode != FFSM_ErrorNoError)
	{
		ffsf_UnLock();
		return(FFSM_ErrorFileNotExist);
	}
	if(!bFileNotDir)
	{
		ffsf_UnLock();
		return FFSM_ErrorBadParams;
	}


	/*4. judge other operation exist,if exist,return this file be occupied;else continue*/
	if ( pFileLink->mpFirstOperator!=MM_NULL )
	{
		ffsf_UnLock();
		return(FFSM_ErrorFileOccupied);
	}

	/*5. from filelink get block link*/
	pBlockLink = &(pFileLink->mFirstBlockLink);
	u16FileFirstBN = pBlockLink->mu16BlockNum;

	/*6. set these blocks invalid*/
	while(1)
	{
		SetBlockHeadStatus(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum], ffsm_BlockInvalid);
		SetThisSectorWithInvalid(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]);
		ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]=0;
		pBlockLinkNext=pBlockLink->mpNextBlockLink;
		if(pBlockLink!=&(pFileLink->mFirstBlockLink))
		{
			ffsf_Free((MBT_VOID*)pBlockLink);
		}
		pBlockLink=pBlockLinkNext;
		if ( pBlockLink==MM_NULL )
		{
			break;
		}
	}

	/*7. from dirlink get block link*/
	/*pFatherFileLink*/

	/*8. read this block,and get the phyaddr of wanting to write*/
	GetDirContentOffsetPhyAddr(pFatherFileLink, u16FileFirstBN, &u32DirOffsetPhyAddr);

	/*9. write new path data to this phyaddr*/
	SetDirOneContentStatus(pFatherFileLink, u32DirOffsetPhyAddr, ffsm_DirEraseBNStart);
	SetDirOneContentBN(pFatherFileLink, u32DirOffsetPhyAddr, 0);
	SetDirOneContentStatus(pFatherFileLink, u32DirOffsetPhyAddr, ffsm_DirEraseBNStop);

	/*10. change dirlink*/
	pFileLinkTemp=pFatherFileLink->mpSonLink;
	if ( pFileLinkTemp==pFileLink )
	{
		pFatherFileLink->mpSonLink=pFileLink->mpBrotherLink;
	}
	else
	{
//		while(pFileLinkTemp!=MM_NULL && pFileLinkTemp->mpBrotherLink!=pFileLink)
		while((pFileLinkTemp!=MM_NULL) && (pFileLinkTemp->mpBrotherLink!=pFileLink))
		{
			pFileLinkTemp=pFileLinkTemp->mpBrotherLink;
		}

		//MMF_SYS_Assert(pFileLinkTemp!=MM_NULL);
		//if(pFileLinkTemp!=MM_NULL)
		{
			pFileLinkTemp->mpBrotherLink=pFileLink->mpBrotherLink;
		}
	}
	
	/*11. free filelink*/
	ffsf_Free((MBT_VOID*)pFileLink);

	/*12. unlock(tree)*/
	ffsf_UnLock();
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : FFSF_FileSeek
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileSeek(SULM_IN FFST_FileHandle hFile , SULM_IN MBT_S32 iOffset , 
 *							SULM_IN FFST_SeekType Flag );
 *
 * Input :	
 *		a.	hFile		SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 *		b.	iOffset		SULM_IN MBT_S32
 *			Number of bytes from initial position 
 *		c.	Flag		SULM_IN FFST_SeekType
 *			Initial position of the file pointer
 *
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Move the file pointer to a specified location
 *
 * Theory of Operation :
 *		1. current point = the begin point + ioffset(the begin point refering to Flag )
 *********************************************************************/
FFST_ErrorCode FFSF_FileSeek(SULM_IN FFST_FileHandle hFile , SULM_IN MBT_S32 iOffset , 
							SULM_IN FFST_SeekType Flag )
{/*QYT*//*HB*/
	/*u32FileOffsetAct  :in acture the offset to filebegin*/
	/*u32BlockCount  : occupy how many  blocks*/
	/*u8BlockOffset : the rest*/
	FFST_ErrorCode		ErrorCode			=FFSM_ErrorNoError;
	MBT_U32 			u32FileOffsetAct;
	MBT_U32			u32BlockCount;
	MBT_U8				u8BlockOffset;
	MBT_S32				iCurPosition = 0;
	ffst_FileOperator	*pFileOperator		=(ffst_FileOperator *)hFile;
	ffst_BlockLink		*pBlockLink;
	MBT_U32			u32Temp;
	
	/*Check the FFS whether it is initial*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*1. if  hFile is valid ,get fileoperator;else return ffsm_invalidhandle*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}

	if(Flag==FFSM_SeekCurrent && iOffset==0)
	{
		return FFSM_ErrorNoError;
	}

	ErrorCode = FFSF_FileFlush(hFile);
	if ( ErrorCode!=FFSM_ErrorNoError )
	{
		return ErrorCode;
	}

	/*2. pfilelink = pfileoperator->filelink*/

	/*3. switch(Flag)*/
	switch(Flag)
	{
		/*case seekend:*/
		case FFSM_SeekEnd:
			/*curposition = filesize*/
			iCurPosition = (MBT_S32)pFileOperator->mpFileLink->mu32FileSize;
			break;
		/*case seekbegin:*/
		case FFSM_SeekBegin:
			/*curposition = 0*/
			iCurPosition = 0;
			break;
		/*case seekcur:*/
		case FFSM_SeekCurrent:
			/*curposition = pFO->curfileoffset*/
			iCurPosition = (MBT_S32)pFileOperator->mu32CurFileOffset;
			break;
		/*default:*/
		default:
			break;		
	}

	iCurPosition=iCurPosition+iOffset;
	/*if(curposition + ioffset < 0), u32FileOffsetAct = 0*/
	if (iCurPosition< 0)
	{
		u32FileOffsetAct = 0;
	}
	/*if >filesize,u32FileOffsetAct = filesize*/
	else if (iCurPosition > (MBT_S32)(pFileOperator->mpFileLink->mu32FileSize))
	{
		u32FileOffsetAct = pFileOperator->mpFileLink->mu32FileSize;
	}
	/*else, u32FileOffsetAct = (u32)curposition + ioffset*/
	else
	{
		u32FileOffsetAct = (MBT_U32)(iCurPosition);
	}
	/*4. lock*/
	ffsf_Lock();
	/*pfileoperator->cufileoffset = u32fileoffset*/
	pFileOperator->mu32CurFileOffset = u32FileOffsetAct;
	
	/*u32BlockCount = (u32fileoffset + ffsc_u32fileheadlength) /ffsc_u8BlockDataLength*/
	u32BlockCount = (u32FileOffsetAct + ffsc_u8FileHeadLength)/ffsc_u8BlockDataLength;
	/*u8BlockOffset = (u8)((u32fileoffset + ffsc_u32fileheadlength)%ffsc_u8BlockDataLength)*/
	u8BlockOffset = (MBT_U8)((u32FileOffsetAct + ffsc_u8FileHeadLength)%ffsc_u8BlockDataLength);
	/*if(u8blockoffset != 0),u32blockcount++*/
	if(u8BlockOffset != 0)
	{
		u32BlockCount = u32BlockCount + 1;
	}
		/*else,u8blockoffset = ffsc_u8BlockDataLength*/
	else
	{
		u8BlockOffset = ffsc_u8BlockDataLength;
	}
	/*blocklink = filelink->firstblocklink*/
	pBlockLink = &(pFileOperator->mpFileLink->mFirstBlockLink);
	/*for(i = 1;i<u32blockcount;i++)*/
	for(u32Temp = 1; u32Temp < u32BlockCount; u32Temp++)
		/*blocklink = blocklink->next*/
	{
		if(pBlockLink->mpNextBlockLink == MM_NULL)
		{
			ffsf_UnLock();
			return FFSM_ErrorFatalError;
		}
		pBlockLink = pBlockLink->mpNextBlockLink;
	}

	/*if(pfileoperator->curBL != blocklink)*/
	if(pFileOperator->mpCurBlockLink != pBlockLink)
	{
		/*pfileoperator->curBL = blocklink,readflashblock(blocklink->bn)*/
		pFileOperator->mpCurBlockLink = pBlockLink;
		ReadFlashBlock(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum], pFileOperator->mu8Buffer);
		pFileOperator->mbBufferModified=MM_FALSE;
	}
	/*pfileoperator->curBO = u8blockoffset*/
	pFileOperator->mu8CurBlockOffset = u8BlockOffset;

	/*unlock*/
	ffsf_UnLock();

	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : FFSF_FileSize
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileSize( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_S32 *piFileSize );
 *
 * Input :	
 *		a.	hFile		SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 
 * Output	:
 *		a.	piFileSize	SULM_OUT MBT_S32 *
 *			Pointer to MBT_S32 of a file sizes in bytes
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Get the size in bytes of a file
 *	
 * Theory of Operation :
 *		1.get size of the file from directory tree'note
 *********************************************************************/
FFST_ErrorCode FFSF_FileSize( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U32 *pu32FileSize )
{/*qyt*//*HB*/
	ffst_FileOperator	*pFileOperator	=(ffst_FileOperator*)MM_NULL;

	if(pu32FileSize==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	*pu32FileSize = 0;//Jason 2005-04-25

	/*if(ffsv_sbFFSInitDone == false), return not_init,else continue*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*1. whether the FFST_FileHandle and operation valid?*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}

	pFileOperator = (ffst_FileOperator*)hFile;
	
	/*2. from hFile,get filelink,then get filesize*/
	ffsf_Lock();
	*pu32FileSize = pFileOperator->mpFileLink->mu32FileSize;
	ffsf_UnLock();
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : FFSF_FileTell
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileTell( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U32 *pu32Offset );
 *
 * Input :	
 *		a.	hFile		SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 
 * Output	:
 *		a.	pu32Offset	SULM_OUT MBT_U32 *
 *			Pointer to the current position of a file pointer
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Get the current position of a file pointer
 *	
 * Theory of Operation :
 *		1.the offset of the current point to the begin of this file
 *********************************************************************/
FFST_ErrorCode FFSF_FileTell( SULM_IN FFST_FileHandle hFile , SULM_OUT MBT_U32 *pu32Offset )
{/*qyt*//*HB*/
	ffst_FileOperator	*pFileOperator	=(ffst_FileOperator*)MM_NULL;

	if(pu32Offset==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}
	
	*pu32Offset  = 0;//Jason 2005-04-25
	
	/*if(ffsv_sbFFSInitDone == false), return not_init,else continue*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*1. whether the FFST_FileHandle and operation valid?*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}

	pFileOperator = (ffst_FileOperator*)hFile;
	
	/*2. pu32Offset = hFile.mu32CurFileOffset*/
	ffsf_Lock();
	*pu32Offset  = pFileOperator->mu32CurFileOffset;
	ffsf_UnLock();
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : FFSF_FileEOF
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileEOF( SULM_IN FFST_FileHandle hFile ,  SULM_OUT MBT_BOOL *pbFileEof );
 *
 * Input :	
 *		a.	hFile		SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 *		b.	pbFileEof	SULM_OUT MBT_BOOL *
 *			Pointer to MBT_BOOL. If true ,it is the end of the file. If flase, it is not.
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		1.Judge a file whether this is the end of the file
 *
 * Theory of Operation 
 *		1.get the point of the end
 *		2.judge the current is or not the end point
 *********************************************************************/
FFST_ErrorCode FFSF_FileEOF( SULM_IN FFST_FileHandle hFile ,  SULM_OUT MBT_BOOL *pbFileEof )
{/*qyt*//*HB*/
	ffst_FileOperator	*pFileOperator;

	if(pbFileEof==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	/*if(ffsv_sbFFSInitDone == false), return not_init,else continue*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*1. whether the FFST_FileHandle and operation valid?*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}
	pFileOperator = (ffst_FileOperator *)hFile;
	
	/*current offset ?= filesize*/
	ffsf_Lock();
	if(pFileOperator->mu32CurFileOffset == pFileOperator->mpFileLink->mu32FileSize)
	{
		*pbFileEof = MM_TRUE;	/*this is EOF*/
	}
	else
	{
		*pbFileEof = MM_FALSE;	/*this is not EOF*/
	}
	ffsf_UnLock();
	
	return FFSM_ErrorNoError;
}
/*********************************************************************
 * Function Name : FFSF_FileRename
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileRename( SULM_IN MBT_CHAR *pcFileSourceName , SULM_IN MBT_CHAR *pcFileDestinationName );
 *
 * Input :	
 *		a.	pcFileSourceName		SULM_IN MBT_CHAR *
 			Pointer to the name of the file to be rename
 *		b.	pcFileDestinationName	SULM_IN MBT_CHAR *
 			Pointer to the name of the file renamed
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		1.Rename a file
 *		
 * Theory of Operation :
 *		1.parse pcFileSourceName,get Dir and filelink
 *		2.pcFileDestinationName is only name not include path
 *		3.if this file's operation isnot none,return this file be used
 *			else continue
 *		4.creat a new file with the name DestinationName notice: block num not change 
 *		5.copy first block data of the source 
 *		6.delet the source's first block
 *		7.change the tree
 *********************************************************************/
FFST_ErrorCode FFSF_FileRename( SULM_IN MBT_CHAR *pcFileSourceName , SULM_IN MBT_CHAR *pcFileDestinationName )
{/*qyt*//*HB*/
	FFST_ErrorCode 	ErrorCode;
	ffst_FileLink	*pFileLink;
	ffst_FileLink	*pFatherFileLink;
	MBT_U32				i;
	MBT_BOOL			bFileNotDir			=MM_FALSE;
	ffst_DirNameLink 	SrcDirNameLink ;
	ffst_DirNameLink 	DestDirNameLink ;
	MBT_CHAR auDestLeafFileName[FFSM_MaxFileNameLength+1];

	if(pcFileSourceName==MM_NULL || pcFileDestinationName==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	/*if(ffsv_sbFFSInitDone == false), return not_init,else continue*/
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	
	/*pcFileDestinationName is valid ?????*/
	ErrorCode=ParseFileNameStruct(pcFileSourceName, &SrcDirNameLink);
	if(ErrorCode != FFSM_ErrorNoError)
	{
		return ErrorCode;
	}
	ErrorCode=ParseFileNameStruct(pcFileDestinationName, &DestDirNameLink);
	if(ErrorCode != FFSM_ErrorNoError)
	{
		FreeFileNameStruct(SrcDirNameLink);	
		return ErrorCode;
	}

	if(SrcDirNameLink.mbFileNotDir!=DestDirNameLink.mbFileNotDir)
	{
		return FFSM_ErrorBadParams;
	}
	if(SrcDirNameLink.mu32DirDepth!=DestDirNameLink.mu32DirDepth)
	{
		return FFSM_ErrorBadParams;
	}
	for(i=0;i<SrcDirNameLink.mu32DirDepth-1;i++)
	{
		if(strcmp(SrcDirNameLink.mppFileNameArray[i],DestDirNameLink.mppFileNameArray[i])!=0)
		{
			return FFSM_ErrorBadParams;
		}
	}
	FreeFileNameStruct(SrcDirNameLink);
	FreeFileNameStruct(DestDirNameLink);

	ffsf_Lock();
	/*1. use GetFileLink(pcFileSourceName),get filelink, or file not exist*/
	ErrorCode = GetFileLink(pcFileDestinationName, &pFileLink, &pFatherFileLink,&bFileNotDir);
	if(ErrorCode == FFSM_ErrorNoError)
	{
		ffsf_UnLock();
		return FFSM_ErrorFileExisted;
	}	
	ErrorCode = GetFileLink(pcFileSourceName, &pFileLink, &pFatherFileLink,&bFileNotDir);
	if(ErrorCode != FFSM_ErrorNoError)
	{
		ffsf_UnLock();
		return ErrorCode;
	}

	/*2. use ParseFileNameStruct(pcFileDestinationName),get this name valid or not*/

	/*3. if this filelink has other operations, return FFST_FileOccupied,else continue*/
	if ( pFileLink->mpFirstOperator!=MM_NULL )
	{
		ffsf_UnLock();
		return FFSM_ErrorFileOccupied;
	}
	
	/*4. if (DestinationName valid)*/
	/*rename*/
	ExtractLeafFileName(pcFileDestinationName,auDestLeafFileName);
	ErrorCode = RenameFile(pFileLink,auDestLeafFileName);
		/*4.3 unlock(ram)*/
	ffsf_UnLock();
	return ErrorCode;
}


/*********************************************************************
 * Function Name : FFSF_FileFlush
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileFlush( SULM_IN FFST_FileHandle hFile );
 *
 * Input :	
 *		a.	hFile		SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		flush a file
 *
 * Theory of Operation :
 *		1.write data of ram to flash
 *********************************************************************/
FFST_ErrorCode FFSF_FileFlush( SULM_IN FFST_FileHandle hFile )
{/*Jason*//*HB*/
	FFST_ErrorCode		ErrorCode		=FFSM_ErrorNoError;
	ffst_FileOperator	*pFileOperator	=(ffst_FileOperator *)hFile;
	MBT_U16			u16CurBN;
	MBT_U16			u16NextBN;
	MBT_U32			u32OrgPhyAddr;
	MBT_U32			u32NewPhyAddr;
	ffst_BlockLink		*pCurBlockLink	=(ffst_BlockLink*)MM_NULL;
	MBT_U8				u8ValidDataLen;
         ffst_BlockHead       *pBlockHead = MM_NULL;

	/*1.	Check FFS initialize or not*/
	if (!ffsv_sbFFSInitDone)
	{
		/*a)	If not return FFSM_ErrorNotInitialize*/
		return FFSM_ErrorNotInitialize;
	}

	/*2.	Check Handle Valid or not*/
	if (!(IsFileHandleValid(hFile)))
	{
		/*a)	If invalid return FFSM_ErrorInvalidHandle*/
		return FFSM_ErrorInvalidHandle;
	}

	/*3.	Lock*/
	ffsf_Lock();

	/*4.	Check Operator current mbBufferModified*/
	if ( !(pFileOperator->mbBufferModified) )
	{
		ffsf_UnLock();
		return FFSM_ErrorNoError;
	}

	/*a)	mbBufferModified==MM_TRUE, write FLASH*/
	pCurBlockLink=pFileOperator->mpCurBlockLink;
	u16CurBN = pFileOperator->mpCurBlockLink->mu16BlockNum;
	u32OrgPhyAddr = ffsv_spu32PhyAddrArray[u16CurBN];
	if(pCurBlockLink->mpNextBlockLink != MM_NULL)
	{
		u16NextBN = pCurBlockLink->mpNextBlockLink->mu16BlockNum;
	}
	else
	{
		u16NextBN = ffsc_u16EmptyBlockNum;
	}

	/*i.	Check Block can be written directly (FLASH Block, ValidLen==0xFF?)*/
	GetBlockValidDataLen(u32OrgPhyAddr, &u8ValidDataLen);
	if(u8ValidDataLen == ffsc_u8InitDataLength)
	{
	/*1.	ValidLen==0xFF, Write directly*/
		/*a)	Read FLASH, Check ffsm_BlockFileHead Signal*/
			/*i.	If Head, (ffsc_u32BlockHeadLength+ffsc_u8FileHeadLength)*/
			/*ii.	If not Head, ffsc_u32BlockHeadLength*/

		/*b)	Sign BlockHead status: ffsm_BlockFileWriteStart*/
		SetBlockHeadStatus(u32OrgPhyAddr, ffsm_BlockFileWriteStart);

		/*c)	Write Block Data*/
		WriteFlashBlock(u32OrgPhyAddr, pFileOperator->mu8Buffer);

		/*d)	Set Valid Lenth in Block*/
		SetBlockValidDataLen(u32OrgPhyAddr, 
			pFileOperator->mu8Buffer[ffsc_u32BlockHeadDataLenOffset]);

		/*e)	Sign BlockHead status: ffsm_BlockFileWriteStop*/
		SetBlockHeadStatus(u32OrgPhyAddr, ffsm_BlockFileWriteStop);
	}
	else
	{
	/*2.	ValidLen!=0xFF, refresh BLOCK*/
		/*a)	Org Block KA, Get a new Block KB*/
		ErrorCode=GetEmptyBlock(&u32NewPhyAddr);
		if (ErrorCode!=FFSM_ErrorNoError)
		{
			ffsf_UnLock();//Jason 2005-04-25
			
			return ErrorCode;
		}
		u32OrgPhyAddr = ffsv_spu32PhyAddrArray[u16CurBN];

		/*b)	Sign KB BlockHead status: ffsm_BlockWriteStart*/
		SetBlockHeadStatus(u32NewPhyAddr, ffsm_BlockWriteStart);

		/*c)	If NextBN!=0xFF*/
		if (u16NextBN!=ffsc_u16EmptyBlockNum)
		{
			/*i.	Sign KB BlockHead status: ffsm_BlockNextBNStart*/
			SetBlockHeadStatus(u32NewPhyAddr, ffsm_BlockNextBNStart);
			/*ii.	Write KA NextBN into KB NextBN position*/
			SetBlockNextBN(u32NewPhyAddr, u16NextBN);
			/*iii.	Sign KB BlockHead status: ffsm_BlockNextBNStop*/
			SetBlockHeadStatus(u32NewPhyAddr, ffsm_BlockNextBNStop);
		}

		/*d)	Check KA ffsm_BlockFileHead*/
              pBlockHead = (ffst_BlockHead*)(pFileOperator->mu8Buffer);
		if ( ((pBlockHead->mu8Status)&ffsm_BlockFileHead) == 0 )
		{
		/*i.	If head*/
			/*1.	Write KB FileHead*/
			WriteFileHead(u32NewPhyAddr, (ffst_FileHead*)(pFileOperator->mu8Buffer+ffsc_u32BlockHeadLength));
			
			/*2.	Sign KB status: ffsm_BlockFileHead*/
			SetBlockHeadStatus(u32NewPhyAddr, ffsm_BlockFileHead);
			
			/*3.	Start(ffsc_u32BlockHeadLength+ffsc_u8FileHeadLength)*/
		}
		/*ii.	If not head, (ffsc_u32BlockHeadLength)*/

		/*e)	Sign KB BlockHead status: ffsm_BlockFileWriteStart*/
		SetBlockHeadStatus(u32NewPhyAddr, ffsm_BlockFileWriteStart);
		
		/*f)	Write block data*/
		WriteFlashBlock(u32NewPhyAddr, pFileOperator->mu8Buffer);

		SetBlockCurrentBN(u32NewPhyAddr, u16CurBN);
		
		/*g)	Set Valid Lenth in Block*/
		SetBlockValidDataLen(u32NewPhyAddr, 
			pFileOperator->mu8Buffer[ffsc_u32BlockHeadDataLenOffset]);
			
		/*h)	Sign KB BlockHead status: ffsm_BlockFileWriteStop*/
		SetBlockHeadStatus(u32NewPhyAddr, ffsm_BlockFileWriteStop);
		
		/*i)	Sign KB BlockHead status: ffsm_BlockWriteStop*/
		SetBlockHeadStatus(u32NewPhyAddr, ffsm_BlockWriteStop);

		SetThisSectorWithInvalid(u32OrgPhyAddr);		
		
		/*j)	Sign KA status: ffsm_BlockInvalid*/
		SetBlockHeadStatus(u32OrgPhyAddr, ffsm_BlockInvalid);
		
		/*k)	Update in ffsv_spu32PhyAddrArray, BN address=KB physical address*/
		ffsv_spu32PhyAddrArray[u16CurBN]=u32NewPhyAddr;
	}
		/*ii.	Set mbBufferModified MM_FALSE*/
	pFileOperator->mbBufferModified=MM_FALSE;

	/*b)	mbBufferModified==MM_FALSE, do nothing*/
	
	/*5.	UnLock*/
	ffsf_UnLock();

	/*6.	return*/
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : FFSF_FileSetEOF
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FileSetEOF( SULM_IN FFST_FileHandle hFile );
 *
 * Input :	
 *		a.	hFile		SULM_IN FFST_FileHandle
 *			Pointer to ffst_FileOperator structure
 * Output	: 	nothing
 *
 * Return : FFST_ErrorCode
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Set a file end at the current point position 
 *
 * Theory of Operation :
 *		1.from hFile, get the size of the file, and current point position
 *		2.return (the last block addr + acture size of this block + head)
 *********************************************************************/
FFST_ErrorCode FFSF_FileSetEOF( SULM_IN FFST_FileHandle hFile )
{/*qyt*/
	ffst_FileOperator	*pFileOperator		=(ffst_FileOperator *)hFile;
	ffst_BlockLink		*pBlockLink;
	ffst_BlockLink		*pNextBlockLink;
	FFST_ErrorCode	Error;
	MBT_BOOL		bEOF;
	
	/*1. if  hFile is valid ,get fileoperator;else return ffsm_invalidhandle*/
	if (!(IsFileHandleValid(hFile)))
	{
		return FFSM_ErrorInvalidHandle;
	}

	Error=FFSF_FileFlush(hFile);
	if(Error!=FFSM_ErrorNoError)
	{
		return Error;
	}

	Error=FFSF_FileEOF(hFile,&bEOF);
	if(Error!=FFSM_ErrorNoError)
	{
		return Error;
	}
	if(bEOF)
	{
		return FFSM_ErrorNoError;
	}

	/*2. lock*/
	ffsf_Lock();

	if(pFileOperator->mpFileLink->mu32FileSize==0)
	{
		ffsf_UnLock();
		return FFSM_ErrorNoError;
	}
	
	/*3. memset(pfileoperator->buf + (u32)pfileoprator->curBO + blockhead,0xff,blockdata - pFo->curBO)*/
	memset(pFileOperator->mu8Buffer + (MBT_U32)pFileOperator->mu8CurBlockOffset + ffsc_u32BlockHeadLength,
			0xff, ffsc_u8BlockDataLength - pFileOperator->mu8CurBlockOffset);

	/*curBL->datalength = pfileoprator->curBO*/
	pBlockLink = pFileOperator->mpCurBlockLink;
	pBlockLink->mu8BlockDataLength = pFileOperator->mu8CurBlockOffset;

	/*pFO->buf[dataoffset] = curBL->datalength*/
	pFileOperator->mu8Buffer[ffsc_u32BlockHeadDataLenOffset] = pBlockLink->mu8BlockDataLength;
	pFileOperator->mpCurBlockLink->mu8BlockDataLength=pBlockLink->mu8BlockDataLength;

	/*pFO->buf[nextBN] = 0xff*/
	*(MBT_U16*)(pFileOperator->mu8Buffer+ffsc_u32BlockHeadNextBNOffset) = ffsc_u16EmptyBlockNum;
	/*pFO->modify = true*/
	pFileOperator->mbBufferModified = MM_TRUE;
	/*filelink->filesize = pFO->filecuroffset*/
	pFileOperator->mpFileLink->mu32FileSize = pFileOperator->mu32CurFileOffset;

	/*blocklink = curBL->nextBL*/
	pBlockLink = pBlockLink->mpNextBlockLink;
	/*while(blocklink != MM_NULL)*/
	while(pBlockLink != MM_NULL)
	{
		/*nextBL = blocklink->nextBL*/
		pNextBlockLink = pBlockLink->mpNextBlockLink;
		/*setinvalid(blocklink->BN)*/
		SetBlockHeadStatus(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum], ffsm_BlockInvalid);
		/*save addarray[blocklink->BN] = 0x0*/
		ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum] = 0;
		/*set sector have invalid block*/
		SetThisSectorWithInvalid(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]);
		/*free(blocklink)*/
		ffsf_Free(pBlockLink);
		/*blocklink = nextBL*/
		pBlockLink = pNextBlockLink;
	}
	pFileOperator->mpCurBlockLink->mpNextBlockLink = MM_NULL;
	/*unlock*/
	ffsf_UnLock();
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : FFSF_GetFileNameArray
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_GetFileNameArray(SULM_OUT MBT_CHAR** ppFileNameArray,SULM_OUT MBT_U32* pu32FileCount)
 *
 * Output	:
 * 	a.	MBT_CHAR** ppFileNameArray 
 *			The array of filename in ffs
 *		b.MBT_U32* pu32FileCount
 *  		Count of the filename
 * Return :
 * 		ErrorCode
 * Purpose :
 *			get the filename array in ffs and the filename count
 *
 *********************************************************************/
FFST_ErrorCode FFSF_GetFileNameArray(SULM_OUT MBT_CHAR*** pppFileNameArray,SULM_OUT MBT_U32* pu32FileCount)
{
	ffst_FileLink *pFileLink=MM_NULL;
	MBT_CHAR** ppTemp=MM_NULL;
	MBT_U32 u32Count=0;
	if (!ffsv_sbFFSInitDone)
	{
		return FFSM_ErrorNotInitialize;
	}
	/*get the first FileLink of root's son*/
	pFileLink=ffsv_spFirstFileLink->mpSonLink;
	while(pFileLink!=MM_NULL)
	{
		if(u32Count==0)
		{/*record the first filename*/
			(*pppFileNameArray)=(MBT_CHAR**)ffsf_Malloc(sizeof(MBT_CHAR*),__LINE__);
			(**pppFileNameArray)=(MBT_CHAR*)ffsf_Malloc(sizeof(MBT_CHAR)*(FFSM_MaxFileNameLength+1),__LINE__);
			strcpy(**pppFileNameArray,pFileLink->mcFileName);
		}
		else
		{/*record filename*/
			ppTemp=*pppFileNameArray;
			*pppFileNameArray=(MBT_CHAR**)ffsf_Malloc(sizeof(MBT_CHAR*)*(u32Count+1),__LINE__);
			memcpy(*pppFileNameArray,ppTemp,sizeof(MBT_CHAR*)*u32Count);
			(*pppFileNameArray)[u32Count]=(MBT_CHAR*)ffsf_Malloc(sizeof(MBT_CHAR)*(FFSM_MaxFileNameLength+1),__LINE__);
			strcpy((*pppFileNameArray)[u32Count],pFileLink->mcFileName);
			ffsf_Free(ppTemp);
		}
		pFileLink=pFileLink->mpBrotherLink;
		u32Count++;
	}
	*pu32FileCount=u32Count;
	return FFSM_ErrorNoError;

}
/*********************************************************************
 * Function Name : FFSF_GetFileNameArray
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode FFSF_FreeFileNameArray(SULM_IN MBT_CHAR** ppFileNameArray,SULM_IN MBT_U32 u32FileCount)
 *
 * Input	:
 * 	a.	MBT_CHAR** ppFileNameArray 
 *			The array of filename in ffs
 *		b.MBT_U32* pu32FileCount
 *  		Count of the filename
 * Return :
 *			
 * Purpose :
 *			free the filename array
 *
 *********************************************************************/
FFST_ErrorCode FFSF_FreeFileNameArray(SULM_IN MBT_CHAR** ppFileNameArray,SULM_IN MBT_U32 u32FileCount)
{
	MBT_U8 u8Loop;
	for(u8Loop=0;u8Loop<u32FileCount;u8Loop++)
	{
		ffsf_Free(ppFileNameArray[u8Loop]);
	}
	ffsf_Free(ppFileNameArray);
	return FFSM_ErrorNoError;
}

MBT_VOID FFSF_Lock(MBT_VOID)
{
	ffsf_Lock();
}
MBT_VOID FFSF_UnLock(MBT_VOID)
{
	ffsf_UnLock();
}
/*===================Global Classes Implementation===================*/

/*==================Private Functions Implementation=================*/

/*********************************************************************
 * Function Name : ffsf_Malloc
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		MBT_VOID ffsf_HeapInit( MBT_VOID );
 * Purpose :
 *		malloc a system heap as the FFS heap
 *
 * Theory of Operation :
 *********************************************************************/
#ifdef MEMORY_DUMP

#define MEMORY_DUMP_SIZE 1024

typedef struct tag_ffst_MemoryDumpNode
{
	MBT_U32 mu32Address;
	MBT_U32 mu32Line;
	MBT_U32 mu32Size;
	MBT_BOOL mbFree;
}ffst_MemoryDumpNode;

static ffst_MemoryDumpNode ffsv_MemoryDump[MEMORY_DUMP_SIZE];
static MBT_S32 ffsv_siLastMemoryItem=0;

MBT_VOID ffsf_MemoryDump(MBT_VOID)
{/*HB*/
	MBT_S32 i;
	MBT_S32 count=0;

	FFS_DEBUG(("\n\nFFS ffsv_MemoryDump:\n"));
	for(i=0;i<ffsv_siLastMemoryItem;i++)
	{
		if(ffsv_MemoryDump[i].mbFree==MM_TRUE)
		{
			continue;
		}
		FFS_DEBUG(("Line=%u\tAddress=0x%08X\tSize=0x%08X\n",
			ffsv_MemoryDump[i].mu32Line,ffsv_MemoryDump[i].mu32Address,ffsv_MemoryDump[i].mu32Size));
		count++;
	}
	FFS_DEBUG(("Unfreed Memory Item=%d\n\n",count));
	
}

#endif

MBT_VOID ffsf_HeapInit( MBT_VOID )
{/*HB*/
#ifdef MEMORY_DUMP
	MBT_S32 i;

	for(i=0;i<MEMORY_DUMP_SIZE;i++)
	{
		ffsv_MemoryDump[i].mbFree=MM_TRUE;
	}
	ffsv_siLastMemoryItem=0;
	
#endif
}

/*********************************************************************
 * Function Name : ffsf_HeapTerm
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		MBT_VOID ffsf_HeapTerm( MBT_VOID );
 * Purpose :
 *		free the FFS heap
 *
 * Theory of Operation :
 *********************************************************************/
MBT_VOID ffsf_HeapTerm( MBT_VOID )
{
}

/*********************************************************************
 * Function Name : ffsf_Malloc
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		MBT_VOID* ffsf_Malloc(SULM_IN MBT_U32 u32Size);
 *
 * Input :
 *		a.	u32Size			MBT_U32
 *			The size in bytes that want to alloc
 *
 * Output	: nothing
 *
 * Return :
 *		a.	pvUserAddr	MBT_VOID *
 *			Pointer to the heep that user will use
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Alloc heep pointer to user 
 *
 * Theory of Operation :
 *********************************************************************/
MBT_VOID* ffsf_Malloc(SULM_IN MBT_U32 u32Size,SULM_IN MBT_U32 u32Line)
{/*Jason*//*HB*/
	MBT_VOID *pvData = (MBT_VOID*)MLMF_Malloc(u32Size);
	if ( pvData==MM_NULL )
	{
		/*here dead*/
		FFS_DEBUG(("[ffsf_Malloc]MLMF_Malloc() failed.\n"));
	}
        UNUSED_PARAM(u32Line);
//	memset( pvData , 0 , u32Size );
	
#ifdef MEMORY_DUMP
{
	MBT_S32 i;

	for(i=0;i<MEMORY_DUMP_SIZE;i++)
	{
		if(ffsv_MemoryDump[i].mbFree==MM_TRUE)
		{
			break;
		}
	}

	//MMF_SYS_Assert(i<MEMORY_DUMP_SIZE);
	if(i+1>ffsv_siLastMemoryItem)
	{
		ffsv_siLastMemoryItem=i+1;
	}
	ffsv_MemoryDump[i].mbFree=MM_FALSE; 
	ffsv_MemoryDump[i].mu32Address=(MBT_U32)pvData;
	ffsv_MemoryDump[i].mu32Line=u32Line;
	ffsv_MemoryDump[i].mu32Size=u32Size;
 
}
#endif
 
	return pvData;
}

/*********************************************************************
 * Function Name : ffsf_Free
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		MBT_VOID ffsf_Free(SULM_IN MBT_VOID *pvUserAddr);
 *
 * Input :
 *		a.	pUserAddr	MBT_VOID *
 *			Pointer to the heep that user have

 * Output	: 	nothing
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Free  heep pointer of user 
 *
 * Theory of Operation :
 *********************************************************************/
MBT_VOID ffsf_Free(SULM_IN MBT_VOID *pvUserAddr)
{/*Jason*//*HB*/

	if ( pvUserAddr==MM_NULL )
	{
		/*program error here*/
            FFS_DEBUG(("[ffsf_Free]param error!!!!\n"));
	}
	
#ifdef MEMORY_DUMP
{
	MBT_S32 i;

	for(i=ffsv_siLastMemoryItem-1;i>=0;i--)
	{
		if(ffsv_MemoryDump[i].mbFree==MM_FALSE && ffsv_MemoryDump[i].mu32Address==(MBT_U32)pvUserAddr)
		{
			break;
		}
	}

	//MMF_SYS_Assert(i>=0);
	ffsv_MemoryDump[i].mbFree=MM_TRUE;
	if(ffsv_siLastMemoryItem==i+1)
	{
		ffsv_siLastMemoryItem--;
	}
}
#endif
        MLMF_Free( (MBT_VOID*)pvUserAddr );

	return ;
}

/*********************************************************************
* Function Name : ffsf_LockInit
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode ffsf_LockInit( MBT_VOID );
 *
 * Input :
 *	
 *			
 *
 * Output	: 	nothing
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Initial lock operator 
 *
 * Theory of Operation :
 *********************************************************************/
 
FFST_ErrorCode ffsf_LockInit( MBT_VOID )
{/*Jason*//*HB*/

#ifdef WINDOWS_DEBUG
	SysLockNumber = 1;
#else
    if(MM_INVALID_HANDLE == ffsv_semFFSLock)
    {
        MLMF_Sem_Create(&ffsv_semFFSLock, 1);
    }
#endif

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : ffsf_LockTerm
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode ffsf_LockTerm( MBT_VOID );
 *
 * Input :
 *	
 *			
 *
 * Output	: 	nothing
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Terminate initial lock operator 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ffsf_LockTerm( MBT_VOID )
{/*Jason*//*HB*/

#ifdef WINDOWS_DEBUG
	SysLockNumber = 1;
#else
    if(MM_INVALID_HANDLE != ffsv_semFFSLock)
    {
	MLMF_Sem_Destroy(ffsv_semFFSLock);
	ffsv_semFFSLock = MM_INVALID_HANDLE;
    }
#endif
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : ffsf_Lock
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode ffsf_Lock( MBT_VOID );
 *
 * Input 	:	nothing
 * Output	: 	nothing
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		ffsf_Lock the object  structure 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ffsf_Lock( MBT_VOID )
{/*Jason*//*HB*/

#ifdef WINDOWS_DEBUG
	SysLockNumber--;
	//MMF_SYS_Assert(SysLockNumber>=0);
#else
        if(MM_INVALID_HANDLE == ffsv_semFFSLock)
        {
            MLMF_Sem_Create(&ffsv_semFFSLock, 1);
        }
        
	MLMF_Sem_Wait(ffsv_semFFSLock,MM_SYS_TIME_INIFIE);
#endif
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : ffsf_UnLock
 * Type £ºGlobal & Subroutine
 * Prototype :
 *		FFST_ErrorCode ffsf_UnLock( MBT_VOID );
 *
 * Input 	: 	nothing
 * Output	: 	nothing
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		ffsf_UnLock the object structure 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ffsf_UnLock( MBT_VOID )
{/*Jason*//*HB*/

#ifdef WINDOWS_DEBUG
	SysLockNumber++;
	//MMF_SYS_Assert(SysLockNumber<=1);
#else
        if(MM_INVALID_HANDLE == ffsv_semFFSLock)
        {
            MLMF_Sem_Create(&ffsv_semFFSLock,0);
        }
	MLMF_Sem_Release(ffsv_semFFSLock);
#endif
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
when invalid a block
please set withinvalid status in the sector
**********************************************************************/
FFST_ErrorCode SetThisSectorWithInvalid( SULM_IN MBT_U32 BlockAddr )
{/*HB*/
	MBT_U32 u32SectorPhyAddr;
	FFST_ErrorCode Error;
	
	Error=GetSectorAddrFromBlockAddr(BlockAddr, &u32SectorPhyAddr);
	if(Error!=FFSM_ErrorNoError)
	{
		return Error;
	}
	
	SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorWithInvalid);
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : GetEmptyBlock
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetEmptyBlock( SULM_OUT MBT_U32 *pu32BlockPhyAddr );
 *
 * Input :
 
 * Output	:
 *		a.	pu32BlockPhyAddr	SULM_OUT MBT_U32 *
 *			Pointer to the empty block in the sector	
 *
 * Return :
 		FFSM_ErrorFlashFull
 *		FFSM_ErrorNoError
 		FFSM_ErrorBadParams
 
 * Global Variables Used	:
 *		a.	ffsv_su32MaxSectorNum
 *		b.	ffsv_su32MaxSectorAddr
 *
 * Callers :
 *
 * Callees :
 *		a.	GetEmptySector
 *		b.	CleanUpSector
 		d.	CheckSectorAddrValid
 *
 * Purpose :
 *		Search the Sector which the sector number is input number 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode GetEmptyBlock( SULM_OUT MBT_U32 *pu32BlockPhyAddr )
{/*cm*//*HB*/
	FFST_ErrorCode	ErrorCode			=FFSM_ErrorNoError;
	MBT_U32		u32SectorPhyAddr	=ffsc_u32InvliadPhyAddr;
	MBT_U32		EmptySectorNumber 	=0;
	
	/*1.CheckOut the parameters*/
	if ( pu32BlockPhyAddr==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	/*2.Check the position of the  current block in the MaxNum sector */
	if ( ffsv_su32BlockOffsetInMaxNumSector == ((ffsv_sInitParam.mu32SectorSize)/ffsm_BlockSize) )
	{
		while(1)
		{
			ErrorCode = GetEmptySector( &u32SectorPhyAddr, &EmptySectorNumber);/*get a empty sector*/
			if (ErrorCode != FFSM_ErrorNoError)
			{
				return ErrorCode;
			}
	
			if ( EmptySectorNumber == 1)/*the flash require cleanup*/
			{	
				ErrorCode = CleanUpSector( u32SectorPhyAddr,pu32BlockPhyAddr );
				if ( ErrorCode==FFSM_ErrorSignalError ) 
				{
					continue;
				}

				//Jason 2005-04-22 add a condition to forbid full 
				if ( ErrorCode==FFSM_ErrorNoError)
				{
					ffsv_su32BlockOffsetInMaxNumSector++;
				}
				return ErrorCode;
			}
			else
			{
				/*jason050218 for sector first use*/
				SetSectorHeadStatus( u32SectorPhyAddr, 
					ffsm_SectorCleanStart|ffsm_SectorCleanStop|ffsm_SectorEraseOrgStart|ffsm_SectorEraseOrgStop );
					
				ffsv_su32MaxSectorAddr=u32SectorPhyAddr;
				ffsv_su32BlockOffsetInMaxNumSector=1;
				break;
			}
		}
	}

	/*3.get the address of the empty block*/
	*pu32BlockPhyAddr = ffsv_su32MaxSectorAddr + ( ffsv_su32BlockOffsetInMaxNumSector*ffsm_BlockSize);
	ffsv_su32BlockOffsetInMaxNumSector++;

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : GetValidBlockNumber
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetValidBlockNumber(SULM_IN MBT_U16 u16BNReq, SULM_OUT MBT_U16 *pu16BNAct );
 *
 * Input :
 *		a.	u16BNReq	SULM_IN MBT_U16
 *			The number of the block required
 *		
 *
 * Output	: 	
 *		a.	pu16BNAct	SULM_OUT MBT_U16 *
 *			Pointer to the block number unused
 *
 * Return :
 		FFSM_ErrorFlashFull
 		FFSM_ErrorNoError		
 *
 * Global Variables Used	:
		a.	ffsv_su16MaxBlockNum
 		b.	ffsv_spu32PhyAddrArray
 *
 * Callers :
 		a.	GetEmptyBlock
 *		b.	WriteBlockCurrentBN
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Search the Sector which the sector number is input number 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode GetValidBlockNumber(SULM_IN MBT_U16 u16BNReq, SULM_OUT MBT_U16 *pu16BNAct )
{/*cm*//*HB*/
	MBT_U16		u16Loop	    =0;
	
	/*2.Check the number input whether it is valid and it is occupy*/
	if ( ( u16BNReq>0) && ( u16BNReq < ffsv_su16MaxBlockNum ) && ( ffsv_spu32PhyAddrArray[u16BNReq] == 0))
	{
		/*The number has not been used*/
		*pu16BNAct = u16BNReq;
		return FFSM_ErrorNoError;
	}

	/*3.Search a block number in the block BN physical address array*/
	for ( u16Loop = 2; u16Loop<ffsv_su16MaxBlockNum; u16Loop++)
	{
		if ( ffsv_spu32PhyAddrArray[u16Loop] == 0)/*Find a new number*/
		{
			*pu16BNAct = u16Loop;
			return FFSM_ErrorNoError;
		}
	}

	return FFSM_ErrorFlashFull;
}


/*********************************************************************
 * Function Name : ReadBlockHead
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode ReadBlockHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT ffst_BlockHead *pBlockHead );
 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The Value of block address
 * Output	:  		
 *		a.	pSectorHead		SULM_OUT ffst_BlockHead *
 *			Pointer to the ffst_BlockHead structure
 *
 * Return :
 		FFSM_ErrorBadParams;
 		FFSM_ErrorNoError
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the pointer of the current block's ffst_BlockHead
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ReadBlockHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT ffst_BlockHead *pBlockHead )
{/*cm*//*HB*/
	ffsv_sInitParam.mpfunFlashRead(u32BlockPhyAddr,(MBT_VOID *)pBlockHead,sizeof(ffst_BlockHead));
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : WriteBlockHead
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode WriteBlockHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN ffst_BlockHead *pBlockHead );
 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The Value of block address
 		b.	SectorHead			SULM_OUT ffst_BlockHead*
 *			Pointer to the ffst_BlockHead structure
 * Output	:  				
 *
 * Return :
 		FFSM_ErrorNoError
		FFSM_ErrorBadParams
 		FFSM_ErrorFlashWriteError
 *
 * Global Variables Used	:
 		a.	ffsv_sInitParam
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Set the pointer of the ffst_BlockHead in the current block 
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode WriteBlockHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN ffst_BlockHead *pBlockHead )
{/*cm*//*HB*/
	MBT_U32		u32ActualLength = 0;
	ffst_BlockHead	BlockHead;

	BlockHead = *pBlockHead;
	GetBlockHeadStatus(u32BlockPhyAddr, &(BlockHead.mu8Status));
	
	/*2.write the data to the block head*/
   	if ( ffsv_sInitParam.mpfunFlashWrite(u32BlockPhyAddr, (MBT_U8*)(&BlockHead),
		ffsc_u32BlockHeadStatusOffset, &u32ActualLength))
	{
		return FFSM_ErrorFlashWriteError;
	}

	/*3.Check the length actually writted */
	if ( u32ActualLength != ffsc_u32BlockHeadStatusOffset )
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : WriteFlashBlock
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode WriteFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_IN MBT_U8 *pu8DataBuf);
 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The Value of block address
 *		b.	pu8DataBuf			SULM_IN MBT_U8 *
 *			Pointer to the data to be write
 * Output	:
 *
 * Return :
		FFSM_ErrorBadParams
		FFSM_ErrorFlashWriteError
 		FFSM_ErrorNoError	
 *
 * Global Variables Used	:
 		a.	ffsv_sInitParam
 *
 * Callers :
 *
 * Callees :
 		a.	ReadBlockStatus
 *
 * Purpose :
 *			Write the data to the current block
 *			not write head. please write head by user first.
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode WriteFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_IN MBT_U8 *pu8DataBuf)
{/*cm*//*HB*/
	MBT_U32		u32ActLength 		=0;
	MBT_U32		u32ValidDataOffset 	=0;
	MBT_U8			u8BlockStatus 		=ffsc_u8InitBlockStatus;
	MBT_U32		u32Length=0;
	ffst_BlockHead	*pBlockHead=(ffst_BlockHead*)pu8DataBuf;

	u8BlockStatus = pu8DataBuf[ffsc_u32BlockHeadStatusOffset];
	u32Length=pBlockHead->mu8DataLength;
	if(u32Length==ffsc_u8InitDataLength)
	{
		return FFSM_ErrorNoError;
	}
	
	if ( (u8BlockStatus & ffsm_BlockFileHead) == 0)/*the block is the first block of the file*/
	{
		u32ValidDataOffset = ffsc_u32BlockHeadLength + ffsc_u8FileHeadLength;
		u32Length=u32Length-ffsc_u8FileHeadLength;
	}
	else
	{
		u32ValidDataOffset = ffsc_u32BlockHeadLength;
	}
	
	if(u32Length>ffsm_BlockSize-u32ValidDataOffset)
	{
		u32Length=ffsm_BlockSize-u32ValidDataOffset;
	}

	/*3.Write the data to the block*/
	if ( ffsv_sInitParam.mpfunFlashWrite( ( u32BlockPhyAddr + u32ValidDataOffset), 
					(pu8DataBuf+u32ValidDataOffset),u32Length, &u32ActLength))
	{
		return FFSM_ErrorFlashWriteError;
	}
			
	/*4.Check the length actually writted*/
	if( u32ActLength != u32Length )
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : ReadFlashBlock
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode ReadFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_OUT MBT_U8 *pu8DataBuf);
 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The Value of block address
 * Output	:
 *		a.	pu8DataBuf			SULM_IN MBT_U8 *
 *			Pointer to the data to be read
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Read the data from the current block
 *			read total
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ReadFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_OUT MBT_U8 *pu8DataBuf)
{/*cm*//*HB*/
	ffsv_sInitParam.mpfunFlashRead(u32BlockPhyAddr,pu8DataBuf,ffsm_BlockSize);
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : CopyFlashBlock
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode CopyFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_IN MBT_U8 *pu8DataBuf);
 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The Value of block address
 *		b.	pu8DataBuf			SULM_IN MBT_U8 *
 *			Pointer to the data to be write
 * Output	:
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Copy the full block
 *		
 *
 * Theory of Operation :
 *********************************************************************/
__inline FFST_ErrorCode CopyFlashBlock(SULM_IN MBT_U32 u32BlockPhyAddr,SULM_IN MBT_U8 *pu8DataBuf)
{/*cm*//*HB*/
	MBT_U32	u32LengthAct = 0;

	if (ffsv_sInitParam.mpfunFlashWrite(u32BlockPhyAddr, pu8DataBuf, ffsm_BlockSize, &u32LengthAct))
	{
		return FFSM_ErrorFlashWriteError;
	}

	if (u32LengthAct != ffsm_BlockSize)
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : ReadFileHead
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode ReadFileHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT ffst_FileHead *pFileHead );

 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The pointer of the current block	
 * Output	:
 *		a.	pFileHead			SULM_OUT ffst_FileHead *
 *			The pointer of the ffst_FileHead in the current file
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the pointer of the ffst_FileHead in the current file
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ReadFileHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT ffst_FileHead *pFileHead )
{/*cm*//*HB*/
	FFST_ErrorCode	ErrorCode		   =FFSM_ErrorNoError;
	MBT_U8			u8BlockStatus 	   =ffsc_u8InitBlockStatus;

	/*2.Read and check the block status*/
	ErrorCode = GetBlockHeadStatus( u32BlockPhyAddr, &u8BlockStatus);
	if ( ErrorCode != FFSM_ErrorNoError)
	{
		return ErrorCode;
	}
	if ( ( u8BlockStatus & ffsm_BlockFileHead) !=0)/*the block isn't the first block of the file*/
	{
		return FFSM_ErrorPhyAddressError;
	}

	/*3.Get the data form the file head in the block*/
	//*pFileHead = *((ffst_FileHead*)(u32BlockPhyAddr+ffsc_u32BlockHeadLength));
	ffsv_sInitParam.mpfunFlashRead((u32BlockPhyAddr+ffsc_u32BlockHeadLength),(MBT_VOID *)(pFileHead),sizeof(ffst_FileHead));
	
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : WriteFileHead
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode WriteFileHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN ffst_FileHead  *pFileHead );
 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The pointer of the current block
 *		b.	pFileHead		SULM_IN ffst_FileHead*
 *			The structure of the ffst_FileHead
 * Output	:
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Set the ffst_FileHead of the current file 
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode WriteFileHead( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN ffst_FileHead  *pFileHead )
{/*cm*//*HB*/
	MBT_U32		u32ActualLength	  	=0;
	MBT_U32		u32Length;
	
	/*3.Write the data to the file head in the block*/
	u32Length=strlen(pFileHead->mcFileName)+2;
	if(u32Length>ffsc_u8FileHeadLength)
	{
		u32Length=ffsc_u8FileHeadLength;
	}
	
	if (ffsv_sInitParam.mpfunFlashWrite( u32BlockPhyAddr + ffsc_u32BlockHeadLength, 
							(MBT_U8*)pFileHead, 
							u32Length, &u32ActualLength))
	{
		return FFSM_ErrorFlashWriteError;
	}
		
	/*4.Check the actual length writted*/
	if (u32ActualLength != u32Length)
	{
		return FFSM_ErrorFlashWriteError;
	}

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : GetSectorAddrFromBlockAddr
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		inline FFST_ErrorCode GetSectorAddrFromBlockAddr( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U32 *pu32SectorPhyAddr );
 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The pointer of the current block
 * Output	:
 		a.	pu32SectorPhyAddr	SULM_OUT MBT_U32*
 			Pointer  to the address of the sector with the block
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Set the ffst_FileHead of the current file 
 *		
 *
 * Theory of Operation :
 *********************************************************************/
__inline FFST_ErrorCode GetSectorAddrFromBlockAddr( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U32 *pu32SectorPhyAddr )
{/*Jason*//*HB*/
	MBT_U32 u32Count;

	for (u32Count=0;u32Count<ffsv_sInitParam.mu32SectorCount;u32Count++ )
	{
		if ( (u32BlockPhyAddr>=ffsv_sInitParam.mpu32SectorArray[u32Count])
			&&(u32BlockPhyAddr<(ffsv_sInitParam.mpu32SectorArray[u32Count]+ffsv_sInitParam.mu32SectorSize)) )
		{
			*pu32SectorPhyAddr = ffsv_sInitParam.mpu32SectorArray[u32Count] ;
			return FFSM_ErrorNoError;
		}
	}

	return FFSM_ErrorUnknownError;
}


/*********************************************************************
 * Function Name : SetBlockCurrentBN
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetBlockCurrentBN(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U16 u16CurrentBN); 
 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The address of the block 
 		b.	u16CurrentBN		SULM_IN MBT_U16
 *			The number of current block		
 *
 * Output	: 	
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Write the numbe of the current block to the  block head  
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetBlockCurrentBN(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U16 u16CurrentBN)
{/*cm*/
	MBT_U32		u32ActualLeng	=0;
	
	/*2.Write the number of the current block to the block head*/
	if ( ffsv_sInitParam.mpfunFlashWrite( u32BlockPhyAddr+ffsc_u32BlockHeadBNOffset, 
		(MBT_U8*)(&u16CurrentBN),
		sizeof(u16CurrentBN), &u32ActualLeng) )
	{
		return FFSM_ErrorFlashWriteError;
	}
	
	/*3.Check the actual length writted*/
	if ( u32ActualLeng != sizeof(u16CurrentBN))
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetBlockNextBN
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetBlockNextBN(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U16 u16NextBN);

 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The address of the block 
 		b.	u16CurrentBN		SULM_IN MBT_U16
 *			The number of next block		
 *
 * Output	: 
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Write the number of the next block to the  block head 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetBlockNextBN(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U16 u16NextBN)
{/*cm*/
	MBT_U32		u32ActualLeng	=0;
	
	/*2.Write the number of the current block to the block head*/
	if ( ffsv_sInitParam.mpfunFlashWrite( u32BlockPhyAddr+ffsc_u32BlockHeadNextBNOffset, 
		(MBT_U8*)(&u16NextBN),
		sizeof(u16NextBN), &u32ActualLeng) )
	{
		return FFSM_ErrorFlashWriteError;
	}
	
	/*3.Check the actual length writted*/
	if ( u32ActualLeng != sizeof(u16NextBN))
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetBlockValidDataLen
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetBlockValidDataLen(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U8 u8NextBN);

 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The address of the block 
 *		b.	u8BlockValidDataLen		SULM_IN MBT_U8
 *			The size in bytes of the valid data length		
 * Output	: 
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Write the size in bytes of the valid data to the block head 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetBlockValidDataLen(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U8 u8BlockValidDataLen)
{/*cm*/
	MBT_U32		u32ActualLeng	=0;
	
	/*2.Write the number of the current block to the block head*/
	if ( ffsv_sInitParam.mpfunFlashWrite( u32BlockPhyAddr+ffsc_u32BlockHeadDataLenOffset, 
		(MBT_U8*)(&u8BlockValidDataLen),
		sizeof(u8BlockValidDataLen), &u32ActualLeng) )
	{
		return FFSM_ErrorFlashWriteError;
	}
	
	/*3.Check the actual length writted*/
	if ( u32ActualLeng != sizeof(u8BlockValidDataLen))
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : GetBlockValidDataLen
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetBlockValidDataLen(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U8 *pu8NextBN);

 *
 * Input :
 *		a.	u32BlockPhyAddr		SULM_IN MBT_U32
 *			The address of the block 
 * Output	: 
 *		a.	pu8BlockValidDataLen		SULM_OUT MBT_U8*
 *			Pointer of the size in bytes of the valid data length		
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Read the size in bytes of the valid data from the block head 
 *
 * Theory of Operation :
 *********************************************************************/
__inline FFST_ErrorCode GetBlockValidDataLen(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U8 *pu8BlockValidDataLen)
{/*cm*//*HB*/
	ffst_BlockHead 	BlockHead;
	
	/*1.CheckOut the parameters*/
	if ( pu8BlockValidDataLen == MM_NULL )
	{
		return FFSM_ErrorBadParams;
	}
	
	/*2.Get the  length of the valid data from the block head*/
	ffsv_sInitParam.mpfunFlashRead(u32BlockPhyAddr,(MBT_VOID *)(&BlockHead),sizeof(BlockHead));
	*pu8BlockValidDataLen = BlockHead.mu8DataLength;
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetBlockHeadStatus
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		__inline FFST_ErrorCode SetBlockHeadStatus( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U8 BlockHeadStatus );
 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The Value of block address
 *		b.	BlockHeadStatus		SULM_IN MBT_U16
 *			The status of the block head
 * Output	: 	
 *
 * Return :
 		return FFSM_ErrorNoError
		return FFSM_ErrorBadParams
 		return FFSM_ErrorFlashWriteError
 *
 * Global Variables Used	:
 		a.	ffsv_sInitParam
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Set the current block status
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetBlockHeadStatus( SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_U8 BlockHeadStatus )
{/*cm*//*HB*/
	FFST_ErrorCode 	ErrorCode			=FFSM_ErrorNoError; 
	MBT_U32		u32ActualLeng		=0;
	MBT_U8			u8CurBlockStatus	=ffsc_u8InitBlockStatus;

	/*2.Get and check the status of the block*/
	ErrorCode = GetBlockHeadStatus( u32BlockPhyAddr, &u8CurBlockStatus);
	if ( ErrorCode!=FFSM_ErrorNoError )
	{
		return ErrorCode;
	}
	
	if ( (BlockHeadStatus & u8CurBlockStatus)==0 )
	{
		return FFSM_ErrorNoError;
	}	
	/*3.write the new status*/

	u8CurBlockStatus = u8CurBlockStatus & ((MBT_U8)~BlockHeadStatus);	
	if ( ffsv_sInitParam.mpfunFlashWrite( u32BlockPhyAddr+ffsc_u32BlockHeadStatusOffset,
                                (MBT_U8*)&u8CurBlockStatus,sizeof(BlockHeadStatus), &u32ActualLeng) )
	{
		return FFSM_ErrorFlashWriteError;
	}
	
	/*3.Check the actual length writted*/
	if ( u32ActualLeng != sizeof(BlockHeadStatus))
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : GetBlockHeadStatus
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetBlockHeadStatus(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U8 *pu8BlockStatus);

 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The address of the block 
 * Output	: 	
 * *		a.	pu8BlockLinkState		SULM_OUT MBT_U8*
 *			Point to the status of the block
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Read the status from the block head 
 *
 * Theory of Operation :
 *********************************************************************/
__inline FFST_ErrorCode GetBlockHeadStatus(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_U8 *pu8BlockStatus)
{/*cm*//*HB*/
	ffst_BlockHead 	BlockHead;
	
	/*2.Get the  status of the block from the block head*/
	ffsv_sInitParam.mpfunFlashRead(u32BlockPhyAddr,(MBT_VOID *)(&BlockHead),sizeof(BlockHead));
	*pu8BlockStatus = BlockHead.mu8Status;
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetFileName
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetFileName(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_CHAR *pu8FileName);

 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The address of the block
 		b.	pu8FileName		SULM_IN MBT_CHAR*
 *			Point to the name of the file in the block: 	
 * Output	
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Write the name of the file to  the file head in the block 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetFileName(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_IN MBT_CHAR *pu8FileName)
{/*cm*//*HB*/
	FFST_ErrorCode	ErrorCode		=FFSM_ErrorNoError;
	ffst_FileHead	*pFileHead		=MM_NULL;
	MBT_U32		u32ActualLeng	=0;
	MBT_U8			u8BlockStatus	=ffsc_u8InitBlockStatus;		
	MBT_CHAR			pcCurFileName[FFSM_MaxFileNameLength+1];

	/*2.Read and check the status of the block*/
	ErrorCode = GetBlockHeadStatus( u32BlockPhyAddr, &u8BlockStatus);
	if ( ErrorCode != FFSM_ErrorNoError)
	{
		return ErrorCode;
	}
	
	if ( ( u8BlockStatus & ffsm_BlockFileHead) !=0)/*the block isn't the first block of the file*/
	{
		return FFSM_ErrorBadParams;
	}

	/*3.Read and check the current file name*/	
	ErrorCode = GetFileName( u32BlockPhyAddr, pcCurFileName);
	if (ErrorCode != FFSM_ErrorNoError)
	{
		return ErrorCode;
	}

	if ( strcmp( pcCurFileName, pu8FileName) == 0)
	{
		return FFSM_ErrorNoError;
	}

	/*4.Write the name of the file to the file head*/
	pFileHead = (ffst_FileHead*)( u32BlockPhyAddr + ffsc_u32BlockHeadLength);
	if ( ffsv_sInitParam.mpfunFlashWrite( (MBT_U32)&( pFileHead->mcFileName), (MBT_U8*)pu8FileName,
								(strlen(pu8FileName) + 1), &u32ActualLeng))
	{
		return FFSM_ErrorFlashWriteError;
	}
	
	/*5.Check the actual length writted*/
	if ( u32ActualLeng != (strlen(pu8FileName) + 1))
	{
		return FFSM_ErrorFlashWriteError;
	}
	return SULM_NoError;
}

/*********************************************************************
 * Function Name : GetFileName
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetFileName(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_CHAR *pu8FileName);

 *
 * Input :
 *		a.	u32BlockPhyAddr	SULM_IN MBT_U32
 *			The address of the block 	
 * Output	
 		a.	pu8FileName		SULM_OUT MBT_CHAR*
 *			Point to the name of the file in the block:
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Read the name of the file from  the file head in the block 
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode GetFileName(SULM_IN MBT_U32 u32BlockPhyAddr , SULM_OUT MBT_CHAR *pu8FileName)
{/*cm*//*HB*/
    ffst_FileHead	FileHead ;

    /*3.Get the  name of the file */
    ffsv_sInitParam.mpfunFlashRead(( u32BlockPhyAddr + ffsc_u32BlockHeadLength),(MBT_VOID *)(&FileHead),sizeof(FileHead));
    memcpy(  pu8FileName, FileHead.mcFileName,FFSM_MaxFileNameLength);
    pu8FileName[FFSM_MaxFileNameLength]=0;
    return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : GetEmptySector
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetEmptySector( SULM_OUT MBT_U32 *pu32SectorPhyAddr, SULM_OUT MBT_U32 *pEmptySectorNumber );
 *
 * Input :
 *	
 * Output	: 
 *		a.	pu32SectorPhyAddr		SULM_OUT MBT_U32 *
 *			The pointer to the empty sector
 *		b.	pEmptySectorNumber		SULM_OUT MBT_U32 *
 *			The count of the empty sector 
 *
 * Return :
 *
 * Global Variables Used	:
 *		a.	ffsv_sInitParam
 *		b.	ffsv_spu32MaxSectorAddress
 *		c.	ffsv_su32MaxSectorNum
 *
 * Callers :
 *		a.	GetEmptyBlock
 * Callees :
 *		a.	GetSectorNum 
 *		b.	SetSectorNum
 *
 * Purpose :
 *			Get the empty sector and the count of empty sectors
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode GetEmptySector( SULM_OUT MBT_U32 *pu32SectorPhyAddr, SULM_OUT MBT_U32 *pEmptySectorNumber )
{/*cm*//*HB*/
	MBT_U32		u32Loop			=0;
	MBT_U32		u32SectorNum	=ffsc_u32InvalidSectorNum;
	MBT_U32		u32SectorPhyAddr=ffsc_u32InvliadPhyAddr;
	FFST_ErrorCode	ErrorCode 		=FFSM_ErrorNoError;
	MBT_BOOL		bGetEmpty		=MM_FALSE;
	MBT_U32		u32SectorIndex	=0;
	
	/*1.CheckOut the parameters*/
	if((pu32SectorPhyAddr == MM_NULL) || (pEmptySectorNumber == MM_NULL))
	{
		return FFSM_ErrorBadParams;
	}

	/*2.Get the position of begin in the sector PhyAddrArray*/
	for(u32Loop = 0; u32Loop < ffsv_sInitParam.mu32SectorCount; u32Loop++)
	{
		if(ffsv_sInitParam.mpu32SectorArray[u32Loop]==ffsv_su32MaxSectorAddr)
		{
			break;
		}
	}
	if(u32Loop == ffsv_sInitParam.mu32SectorCount)
	{
		return FFSM_ErrorFatalError;
	}
	u32SectorIndex=u32Loop;
	
	*pEmptySectorNumber=0;
	for ( u32Loop = 0; u32Loop < ffsv_sInitParam.mu32SectorCount; u32Loop++)
	{
		ErrorCode = GetSectorNum( ffsv_sInitParam.mpu32SectorArray[u32SectorIndex], &u32SectorNum);
		if ( ErrorCode != FFSM_ErrorNoError)
		{
			return ErrorCode;
		}
		if(u32SectorNum == ffsc_u32EmptySectorNum)
		{
			(*pEmptySectorNumber)++;
			if (!bGetEmpty)
			{
				bGetEmpty=MM_TRUE;
				*pu32SectorPhyAddr = ffsv_sInitParam.mpu32SectorArray[u32SectorIndex];
				u32SectorPhyAddr=*pu32SectorPhyAddr;
			}
		}
		u32SectorIndex=(u32SectorIndex+1)%ffsv_sInitParam.mu32SectorCount;
	}

	if( (*pEmptySectorNumber) == 0)
	{
		return FFSM_ErrorFlashFull;
	}

	/*3.Search a empty sector begin form the position have get*/
	ffsv_su32MaxSectorNum++;
	SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorWriteNumStart);
	SetSectorNum(u32SectorPhyAddr, ffsv_su32MaxSectorNum);
	SetSectorHeadStatus(u32SectorPhyAddr, ffsm_SectorWriteNumStop);

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : GetMinSectorWithInvalidBlock
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetMinSectorWithInvalidBlock( SULM_OUT MBT_U32 *pu32SectorPhyAddr );
 *
 * Input :
 *	
 * Output	: 
 *		a.	pu32SectorPhyAddr		SULM_OUT MBT_U32 *
 			The pointer of the sector been found
 *
 * Return :
 *
 * Global Variables Used	:
 		a.	ffsv_sInitParam
 *
 * Callers :
 *
 * Callees :
 *		a.	GetSectorHead
 *		b.	GetBlockHead
 *
 * Purpose :
 *			Get the pointer of the MinSector has invalid blocks
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode GetMinSectorWithInvalidBlock( SULM_OUT MBT_U32 *pu32SectorPhyAddr )
{/*cm*//*HB*/
	FFST_ErrorCode	ErrorCode		=FFSM_ErrorNoError;
	MBT_U32		u32Loop 		=0;
	MBT_U32		u32Offset		=0;
	MBT_U32		u32SectorNum 	=ffsc_u32EmptySectorNum;
	MBT_U32		u32CurSectorNum =ffsc_u32InvalidSectorNum;
	MBT_U16		u16SectorStatus =ffsc_u16InitSectorStatus; 

	/*1.CheckOut the parameters*/
	if(pu32SectorPhyAddr == MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	/*2.Scan the sector Array*/
	for ( u32Loop= 0; u32Loop< ffsv_sInitParam.mu32SectorCount; u32Loop++)
	{
		/*Check the sector status whether it has invalid block*/
		ErrorCode = GetSectorHeadStatus( ffsv_sInitParam.mpu32SectorArray[u32Loop],  &u16SectorStatus);
		if (ErrorCode != FFSM_ErrorNoError)
		{
			return ErrorCode;
		}
		if ( ( u16SectorStatus & ffsm_SectorWithInvalid) ==0)/*the sector has invalid block*/
		{
			ErrorCode = GetSectorNum( ffsv_sInitParam.mpu32SectorArray[u32Loop],  &u32CurSectorNum);	
			if (ErrorCode != FFSM_ErrorNoError)
			{
				return ErrorCode;
			}
			if ( u32CurSectorNum < u32SectorNum)/*get the Min number of the sector*/
			{
				u32SectorNum = u32CurSectorNum;
				u32Offset = u32Loop;
			}		
		}
	}

	if (u32SectorNum == ffsc_u32EmptySectorNum)
	{
		return FFSM_ErrorFlashFull;
	}

	*pu32SectorPhyAddr = ffsv_sInitParam.mpu32SectorArray[u32Offset];

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : ReadSectorHead
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode ReadSectorHead( SULM_IN MBT_U32 u32SectorPhyAddr , 
					SULM_OUT MBT_BOOL *pbSectorValid, SULM_OUT ffst_SectorHead *pSectorHead );

 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 * Output	: 
 *		a.	pbSectorValid		SULM_OUT MBT_BOOL *
 *			Pointer to  the flag of the sector(If True, it is valid, False, it is invalid)
 *		b.	pSectorHead			SULM_OUT ffst_SectorHead *
 *			Pointer to the ffst_SectorHead structure
 *
 * Return :
 		return FFSM_ErrorNoError
		return FFSM_ErrorBadParams
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the pointer of the ffst_SectorHead in the current valid sector 	
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ReadSectorHead( SULM_IN MBT_U32 u32SectorPhyAddr , 
					SULM_OUT MBT_BOOL *pbSectorValid, SULM_OUT ffst_SectorHead *pSectorHead )
{/*cm*//*HB*/
	ffst_SectorHead	PointerHead;
	
	/*2.Check the sector whether  it is vaild*/	
	ffsv_sInitParam.mpfunFlashRead(u32SectorPhyAddr,(MBT_VOID *)(&PointerHead),sizeof(PointerHead));
	if((strcmp(PointerHead.mcSysSignal, ffsc_pcSectorHeadSysSignal) != 0)|| (PointerHead.mu16Version != ffsc_u16SectorHeadVersion) )
	{
		*pbSectorValid = MM_FALSE;
		return FFSM_ErrorNoError;
	}

	/*3.Get the data from sector head*/
	*pbSectorValid= MM_TRUE;
	*pSectorHead = PointerHead;
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetSectorStatus
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetSectorHeadStatus( SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U16 SectorHeadStatus );
 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 *		b.	SectorHeadStatus		SULM_IN MBT_U16
 *			The status of the block head
 * Output	:  		
 *
 * Return :
		 FFSM_ErrorNoError
		 FFSM_ErrorBadParams
 		 FFSM_ErrorFlashWriteError
 *
 * Global Variables Used	:
 		a.	ffsv_sInitParam
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Set the current sector status
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetSectorHeadStatus( SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U16 u16SectorHeadStatus )
{/*cm*//*HB*/
	MBT_U32 			u32ActualLength 	= 0;
	FFST_ErrorCode		ErrorCode 			= FFSM_ErrorNoError;
	MBT_U16			u16CurSectorStatus 	= ffsc_u16InitSectorStatus;
	
	/*2.Read and check the status of the sector*/
	ErrorCode = GetSectorHeadStatus(u32SectorPhyAddr, &u16CurSectorStatus);
	if ( ErrorCode != FFSM_ErrorNoError)
	{
		return ErrorCode;
	}

	if (( u16CurSectorStatus & u16SectorHeadStatus) ==0)
	{
		return FFSM_ErrorNoError;
	}

	/*3.write the status to the sector head*/
	u16CurSectorStatus = u16CurSectorStatus & ((MBT_U16)~u16SectorHeadStatus);

	if (ffsv_sInitParam.mpfunFlashWrite( u32SectorPhyAddr+ffsc_u32SectorHeadStatusOffset, 
				(MBT_U8*)(&u16CurSectorStatus), sizeof(u16SectorHeadStatus),
				&u32ActualLength))
	{
		return FFSM_ErrorFlashWriteError;
	}

	/*4.Check the length actually writted*/
	if(u32ActualLength != sizeof(u16SectorHeadStatus))
	{
		return FFSM_ErrorFlashWriteError;
	}

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : GetSectorHeadStatus
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetSectorHeadStatus( SULM_IN MBT_U32 u32SectorPhyAddr , SULM_OUT MBT_U16 *pSectorHeadStatus );

 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 * Output	:
 		a.	pSectorHeadStatus	SULM_OUT MBT_U16 *
 			Point to the status of the sector head
 *
 * Return :
		 FFSM_ErrorNoError
		 FFSM_ErrorBadParams
 *
 * Global Variables Used	:
 		a.	ffsv_sInitParam
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the current sector status
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode GetSectorHeadStatus( SULM_IN MBT_U32 u32SectorPhyAddr , SULM_OUT MBT_U16 *pSectorHeadStatus )
{/*cm*//*HB*/
	ffst_SectorHead	SectorHead;
	
	/*1.CheckOut the parameters*/
#if 0 /* by HB 20050207*/
	if(!CheckSectorAddrValid(u32SectorPhyAddr) || (pSectorHeadStatus == MM_NULL))
	{
		return FFSM_ErrorBadParams;
	}
#endif
	/*2.Read  the status of the sector*/
	ffsv_sInitParam.mpfunFlashRead(u32SectorPhyAddr,(MBT_VOID *)(&SectorHead),sizeof(SectorHead));
	*pSectorHeadStatus = SectorHead.mu16Status;
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : FormatFlashSector
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode FormatFlashSector(SULM_IN MBT_U32 pu32SectorPhyAddr);
 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 * Output	:  		
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Format the current sector
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode FormatFlashSector(SULM_IN MBT_U32 u32SectorPhyAddr)
{/*cm*//*HB*/

	/*2.Format the sector*/
	ffsv_sInitParam.mpfunFlashErase(u32SectorPhyAddr);
	SetSectorSysInfo(u32SectorPhyAddr);

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : CleanUpSector
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode CleanUpSector(SULM_IN MBT_U32 u32SectorPhyAddr,
 *			SULM_OUT MBT_U32 *pu32BlockPhyAddr);
 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 * Output	:  		
 *		b.	pu32BlockPhyAddr	SULM_IN MBT_U32*
 *			The Value of empty block address
 *
 * Return :
 *			FFSM_ErrorFlashFull
 *			FFSM_ErrorNoError
 *			FFSM_ErrorSignalError
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			CleanUp the current sector
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode CleanUpSector(SULM_IN MBT_U32 u32SectorPhyAddr, SULM_OUT MBT_U32 *pu32BlockPhyAddr)
{/*Jason*//*HB*/
	FFST_ErrorCode 	ErrorCode			=FFSM_ErrorNoError;
	MBT_U32 		u32count			=0;
	MBT_U32 		u32SectorPhyAddrNew	=u32SectorPhyAddr;
	MBT_U32 		u32SectorPhyAddrOrg	=0;
	MBT_U8 		*pu8DataBuf;
	MBT_U32 		u32BlockPhyAddrOrg	=0;
	MBT_U32 		u32BlockPhyAddrNew	=0;
	ffst_BlockHead 	BlockHead;
	MBT_BOOL		bWithInvalid		=MM_FALSE;

	/*find the min-number with invalid block in it*/
	ErrorCode=GetMinSectorWithInvalidBlock(&u32SectorPhyAddrOrg);
	if ( ErrorCode!=FFSM_ErrorNoError )
	{
		return FFSM_ErrorFlashFull;
	}

	if ( ffsv_sInitParam.mpfunCleanUpStartCallBack != MM_NULL )
	{
		ffsv_sInitParam.mpfunCleanUpStartCallBack((MBT_VOID*)u32SectorPhyAddr);
	}

	/*set new sector status*/
	SetSectorHeadStatus( u32SectorPhyAddrNew, ffsm_SectorCleanStart );

	/*cleanup sector blocks one by one*/
	u32BlockPhyAddrOrg=u32SectorPhyAddrOrg;
	u32BlockPhyAddrNew=u32SectorPhyAddrNew+ffsm_BlockSize;
	pu8DataBuf=(MBT_U8*)ffsf_Malloc(ffsm_BlockSize,__LINE__);

	ffsv_su32MaxSectorAddr=u32SectorPhyAddrNew;
	ffsv_su32BlockOffsetInMaxNumSector=1;
	
	for ( u32count=1;u32count<(ffsv_sInitParam.mu32SectorSize/ffsm_BlockSize);u32count++ )
	{
		u32BlockPhyAddrOrg=u32BlockPhyAddrOrg+ffsm_BlockSize;
        	ffsv_sInitParam.mpfunFlashRead(u32BlockPhyAddrOrg,(MBT_VOID *)(&BlockHead),sizeof(BlockHead));
		if ( ((BlockHead.mu8Status&ffsm_BlockInvalid)==0)
			||(BlockHead.mu16BlockNum==0)||(BlockHead.mu16BlockNum>=ffsv_su16MaxBlockNum) 
			||( ffsv_spu32PhyAddrArray[BlockHead.mu16BlockNum]!=u32BlockPhyAddrOrg )
			)
		{
			bWithInvalid=MM_TRUE;
			continue;
		}
		ReadFlashBlock(u32BlockPhyAddrOrg, pu8DataBuf);
		CopyFlashBlock(u32BlockPhyAddrNew, pu8DataBuf);
		ffsv_spu32PhyAddrArray[BlockHead.mu16BlockNum]=u32BlockPhyAddrNew;
		ffsv_su32BlockOffsetInMaxNumSector++;
		u32BlockPhyAddrNew=u32BlockPhyAddrNew+ffsm_BlockSize;
	}
	ffsf_Free(pu8DataBuf);
	
	/*edit the new sector status*/
	SetOldSectorAddr(u32SectorPhyAddrNew,u32SectorPhyAddrOrg);
	SetSectorHeadStatus( u32SectorPhyAddrNew, ffsm_SectorCleanStop );
	
	/*erase org one*/
	SetSectorHeadStatus( u32SectorPhyAddrNew, ffsm_SectorEraseOrgStart );
	FormatFlashSector(u32SectorPhyAddrOrg);
	SetSectorHeadStatus( u32SectorPhyAddrNew, ffsm_SectorEraseOrgStop );

	*pu32BlockPhyAddr=u32BlockPhyAddrNew;

	if ( ffsv_sInitParam.mpfunCleanUpStopCallBack != MM_NULL )
	{
		ffsv_sInitParam.mpfunCleanUpStopCallBack((MBT_VOID*)u32SectorPhyAddrOrg);
	}

	if ( bWithInvalid )
	{
		return FFSM_ErrorNoError;
	}
	else
	{
		return FFSM_ErrorSignalError;
	}
}

/*********************************************************************
 * Function Name : CheckSectorAddrValid
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		MBT_BOOL CheckSectorAddrValid(SULM_IN MBT_U32 u32SectorPhyAddr);
 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 * Output	:  		
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Check the value whether it is a sector's address
 *		
 *
 * Theory of Operation :
 *********************************************************************/
MBT_BOOL CheckSectorAddrValid(SULM_IN MBT_U32 u32SectorPhyAddr)
{/*cm*//*HB*/
	MBT_U32	u32Loop = 0;

	/*Check the value in  array of the sector address*/
	for(u32Loop = 0; u32Loop < ffsv_sInitParam.mu32SectorCount; u32Loop++)
	{
		if(ffsv_sInitParam.mpu32SectorArray[u32Loop] == u32SectorPhyAddr)
		{
			return MM_TRUE;
		}
	}

	return MM_FALSE;
}

/*********************************************************************
 * Function Name : SetSectorSysInfo
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetSectorSysInfo(SULM_IN MBT_U32 u32SectorPhyAddr);

 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 * Output	:  		
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Write the the SysSignal and SysVersion to the sector head
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetSectorSysInfo(SULM_IN MBT_U32 u32SectorPhyAddr)
{/*cm*//*HB*/
	ffst_SectorHead	SectorHead ;
	MBT_U32		u32LengthAct;
	
	/*2.Write the data to the sector head*/
	strcpy(SectorHead.mcSysSignal, ffsc_pcSectorHeadSysSignal);
	SectorHead.mu16Version = ffsc_u16SectorHeadVersion;

	if ( ffsv_sInitParam.mpfunFlashWrite(u32SectorPhyAddr,(MBT_U8*)(&SectorHead),
		ffsc_u32SectorHeadSysLength,&u32LengthAct))
	{
		return FFSM_ErrorFlashWriteError;
	}

	if(u32LengthAct != ffsc_u32SectorHeadSysLength)
	{
		return FFSM_ErrorFlashWriteError;
	}

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetSectorNum
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetSectorNum(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U32 u32SectorNum);

 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 		b.	u16SectorStatus	SULM_IN MBT_U16
 			The status of the sector 
 * Output	:  		
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *		a.	GetEmptySector
 * Callees :
 *			
 *
 * Purpose :
 *			Write the status of the sector to the sector head
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetSectorNum(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U32 u32SectorNum)
{/*cm*//*HB*/
	FFST_ErrorCode	ErrorCode = FFSM_ErrorNoError;
	MBT_U32		u32CurSectorNum = ffsc_u32InvalidSectorNum;
	MBT_U32		u32ActualLength = 0;
	
	/*1.CheckOut the parameters*/
	if ( u32SectorNum==ffsc_u32EmptySectorNum)
	{
		return FFSM_ErrorFatalError;
	}

	/*2.Read and check the number of the sector*/
	ErrorCode = GetSectorNum(u32SectorPhyAddr, &u32CurSectorNum);
	if ( ErrorCode != FFSM_ErrorNoError)
	{
		return ErrorCode;
	}

	if (u32CurSectorNum == u32SectorNum)
	{
		return FFSM_ErrorNoError;
	}

	/*3.Write the new status of the sector to the sector head*/

	if ( ffsv_sInitParam.mpfunFlashWrite( u32SectorPhyAddr+ffsc_u32SectorHeadSNOffset, 
		(MBT_U8*)&u32SectorNum, sizeof(u32SectorNum), &u32ActualLength))
	{
		return FFSM_ErrorFlashWriteError;
	}

	if(u32ActualLength != sizeof(u32SectorNum))
	{
		return FFSM_ErrorFlashWriteError;
	}
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : GetSectorNum
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetSectorNum(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_OUT MBT_U32 *pu32SectorNum);

 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 * Output	:  		
 *		a.	pu16SectorStatus	SULM_OUT MBT_U16*
 			Point to the status of the sector 
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Read the status of the sector from the sector head
 *		
 *
 * Theory of Operation :
 *********************************************************************/
__inline FFST_ErrorCode GetSectorNum(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_OUT MBT_U32 *pu32SectorNum)
{/*cm*//*HB*/
	ffst_SectorHead	SectorHead;
	
	if(pu32SectorNum == MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	ffsv_sInitParam.mpfunFlashRead(u32SectorPhyAddr,(MBT_VOID *)(&SectorHead),sizeof(SectorHead));
	*pu32SectorNum = SectorHead.mu32SectorNum;
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetOldSectorAddr
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetOldSectorAddr(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U32 u32OldSectorAddr);

 *
 * Input :
 *		a.	u32SectorPhyAddr	SULM_IN MBT_U32
 *			The Value of sector address
 *		b.	u32SectorNum		SULM_IN MBT_U32
 			The number of the current sector 
 * Output	:  		
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Write the number of the current sector to the sector head
 *		
 *
 * Theory of Operation :
 *********************************************************************/
__inline FFST_ErrorCode SetOldSectorAddr(SULM_IN MBT_U32 u32SectorPhyAddr , SULM_IN MBT_U32 u32OldSectorAddr)
{/*cm*//*HB*/
	MBT_U32		u32ActualLength = 0;
	
	/*3.Write the new status of the sector to the sector head*/
	if ( ffsv_sInitParam.mpfunFlashWrite( u32SectorPhyAddr+ffsc_u32SectorHeadOldAddrOffset,
	        (MBT_U8*)&u32OldSectorAddr, sizeof(u32OldSectorAddr), &u32ActualLength))
	{
		return FFSM_ErrorFlashWriteError;
	}

	if (u32ActualLength != sizeof(u32OldSectorAddr))
	{
		return FFSM_ErrorFlashWriteError;
	}
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : GetFileLink
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetFileLink(SULM_IN MBT_CHAR *pcFileName, SULM_OUT ffst_FileLink **ppFileLink,
 *					SULM_OUT ffst_FileLink **ppFatherFileLink );
 *
 * Input :
 *		a.	pcFileName SULM_IN MBT_CHAR *
 *			a filename with path information
 *	
 * Output	: 	
 *		a.  ppFileLink SULM_OUT ffst_FileLink **
 *			the pointer of filelink 
 *		b.  ppFatherFileLink SULM_OUT ffst_FileLink **
 *			the pointer of filelink which is the father of input
 *
 * Return :
 * 		a.	if this file not exist,return  not exist
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		from filename get filelink's pointer
 *
 * Theory of Operation :
*********************************************************************/
FFST_ErrorCode GetFileLink(SULM_IN MBT_CHAR *pcFileName, SULM_OUT ffst_FileLink **ppFileLink,
					SULM_OUT ffst_FileLink **ppFatherFileLink, SULM_OUT MBT_BOOL *pbFileNotDir)
{/*Jason*//*HB*/
	ffst_DirNameLink 	DirNameLink ;
	FFST_ErrorCode 		ErrorCode			=FFSM_ErrorNoError;
	MBT_U32 			u32Count	=1;
	ffst_FileLink		*pFileLink	=MM_NULL;
	ffst_FileLink		*pFileLinkFather	=MM_NULL;
	MBT_BOOL			bFoundFile			=MM_FALSE;
	MBT_BOOL 			bFileNotDir			=MM_TRUE;
	
	ErrorCode = ParseFileNameStruct( pcFileName, &DirNameLink );
	if ( ErrorCode!=FFSM_ErrorNoError )
	{
		*ppFileLink = MM_NULL;
		*ppFatherFileLink = MM_NULL;
		return ErrorCode;
	}

	bFileNotDir = DirNameLink.mbFileNotDir;
	*pbFileNotDir=bFileNotDir;
	
	pFileLinkFather = ffsv_spFirstFileLink;
	pFileLink = pFileLinkFather->mpSonLink;

	u32Count=1;
	while(1)
	{
		bFoundFile=MM_FALSE;
		while(1)
		{
			if ( pFileLink==MM_NULL )
			{
				break;
			}
			if ( strcmp ( pFileLink->mcFileName, DirNameLink.mppFileNameArray[u32Count])==0 )
			{
				if ( (u32Count+1)==DirNameLink.mu32DirDepth )
				{
					if ( ( (bFileNotDir)&&((pFileLink->mu8FileAttr)&FFSM_FileNotDir) )
						|| ((!bFileNotDir)&&(((pFileLink->mu8FileAttr)&FFSM_FileNotDir)==0))
						)
					{
						bFoundFile=MM_TRUE;
					}
				}
				else
				{
					if ( ((pFileLink->mu8FileAttr)&FFSM_FileNotDir)==0 )
					{
						bFoundFile=MM_TRUE;
					}
				}
				if ( bFoundFile )
				{
					break;
				}
				else
				{
					pFileLink=pFileLink->mpBrotherLink;
				}
			}
			else
			{
				pFileLink=pFileLink->mpBrotherLink;
			}
		}
		if (bFoundFile)
		{
			u32Count++;
			if ( u32Count==DirNameLink.mu32DirDepth )
			{
				break;
			}
			pFileLinkFather = pFileLink;
			pFileLink = pFileLink->mpSonLink;
		}
		else
		{
			break;
		}
	}
	FreeFileNameStruct(DirNameLink);
	if( bFoundFile )
	{
		*ppFileLink = pFileLink;
		*ppFatherFileLink = pFileLinkFather;
		return FFSM_ErrorNoError;
	}
	else
	{
		u32Count++;
		if ( u32Count==DirNameLink.mu32DirDepth )
		{
			*ppFileLink = (ffst_FileLink*)MM_NULL;
			*ppFatherFileLink = pFileLinkFather;
			return FFSM_ErrorFileNotExist;
		}
		else
		{
			*ppFileLink = (ffst_FileLink*)MM_NULL;
			*ppFatherFileLink = (ffst_FileLink*)MM_NULL;
			return FFSM_ErrorDirNotExist;
		}
	}
}

/*********************************************************************
 * Function Name : ParseFileChildLink
 * Type £ºPrivate & Subroutine
 * Prototype :
 * FFST_ErrorCode ParseFileChildLink ( SULM_IN ffst_FileLink *pFileLink, 
 *			SULM_INOUT MBT_U8 *pu8BlockLinkState ); 
 * Input :
 *		a.	pFileLink		ffst_FileLink*
 *			point to file link
 *		b.	pu8BlockLinkState	MBT_U8*
 *			block status array
 * Output	:
 *		a.	pu8BlockLinkState	MBT_U8*
 *			block status array
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ParseFileChildLink ( SULM_IN ffst_FileLink *pFileLink , SULM_INOUT MBT_U8 *pu8BlockLinkState )
{/*Jason*/
	ffst_FileLink 	*pFatherFileLink=MM_NULL;
	ffst_FileLink 	*pCurFileLink=MM_NULL;
	ffst_FileLink 	*pNextFileLink=MM_NULL;
	MBT_U8			*pu8BlockContent=MM_NULL;
	ffst_DirContent	*pDirContent=MM_NULL;
	MBT_BOOL		bDoubleHere=MM_FALSE;
	FFST_ErrorCode	ErrorCode;
	MBT_U32		u32CurOffsetAddr;
	ffst_BlockLink	*pBlockLink=MM_NULL;

	if ( pFileLink==MM_NULL )
	{
		return FFSM_ErrorNoError;
	}
	
	/*1.check file or dir?if not dir, return*/
	if ( (pFileLink->mu8FileAttr&FFSM_FileNotDir)==FFSM_FileNotDir )
	{
		return FFSM_ErrorNoError;
	}
	
	/*2.get file content from flash,*/
	pu8BlockContent = (MBT_U8*)ffsf_Malloc(ffsm_BlockSize,__LINE__);
	pBlockLink = (ffst_BlockLink*)(&(pFileLink->mFirstBlockLink));
	ReadFlashBlock( ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum], pu8BlockContent );
	u32CurOffsetAddr = ffsc_u8FileHeadLength+ffsc_u32BlockHeadLength;

	/*3.parse file and create file link one by one*/
	pFatherFileLink = (ffst_FileLink*)pFileLink;
	while(1)
	{
		for ( ;u32CurOffsetAddr<ffsm_BlockSize;u32CurOffsetAddr=u32CurOffsetAddr+sizeof(ffst_DirContent) )
		{
			pDirContent = (ffst_DirContent*)(pu8BlockContent+u32CurOffsetAddr);
			if ( (pDirContent->mu16Status&ffsc_u16DirContentValidMask) != ffsc_u16DirContentValid )
			{
				/*do shut down mode*/
				/*no need to do any thing*/
			}
			else
			{
				if ( (pDirContent->mu16Status&(ffsm_DirEraseOrgStart|ffsm_DirEraseOrgStop))!=0 )
				{
					if ( (ffsv_sEraseDirParam.mu16EraseOrgBN!=0) 
						&& (ffsv_sEraseDirParam.mu16EraseOrgBN!=0xffff) )
					{
						/*should not be reached*/
						ffsf_Free(pu8BlockContent);
						return FFSM_ErrorFatalError;
						/*if fine more than a 2-dir file condition , do it one at one time*/
					}

					/*if existed, move it*/
					/*else remember to erase*/
					ffsv_sEraseDirParam.mu16EraseOrgBN = pDirContent->mu16BlockNum;

					if( pu8BlockLinkState[ffsv_sEraseDirParam.mu16EraseOrgBN]==ffsm_BlockLinkState_Empty )
					{
						pDirContent->mu16Status=ffsc_u16DirContentValid;
						SetDirOneContentStatus( pFileLink, 
							ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]+u32CurOffsetAddr, 
							ffsm_DirEraseOrgStart|ffsm_DirEraseOrgStop );
						ffsv_sEraseDirParam.mu16EraseOrgBN = 0;
					}
					else if( pu8BlockLinkState[ffsv_sEraseDirParam.mu16EraseOrgBN]&ffsm_BlockLinkState_Linked )
					{
						/*ignore now first*/
						ffsv_sEraseDirParam.mpOrgFileLink = (ffst_FileLink*)pFileLink;
						ffsv_sEraseDirParam.mu32OrgDirOffsetPhyAddr = 
							ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]+u32CurOffsetAddr;
						ffsv_sEraseDirParam.mbRelink = MM_TRUE;
						continue;
					}
					else if( pu8BlockLinkState[ffsv_sEraseDirParam.mu16EraseOrgBN]&ffsm_BlockLinkState_Occupy )
					{
						/*if it not link , then link all and wait for search the org one*/
						ffsv_sEraseDirParam.mpOrgFileLink = (ffst_FileLink*)pFileLink;
						ffsv_sEraseDirParam.mu32OrgDirOffsetPhyAddr = 
							ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]+u32CurOffsetAddr;
						ffsv_sEraseDirParam.mbRelink = MM_FALSE;
						bDoubleHere = MM_TRUE;
					}
					else
					{
						/*unreachable program*/
					}
				}

				if ( (pDirContent->mu16BlockNum==ffsv_sEraseDirParam.mu16EraseOrgBN)
					&&(ffsv_sEraseDirParam.mu16EraseOrgBN>0)
					&&(ffsv_sEraseDirParam.mu16EraseOrgBN<ffsv_su16MaxBlockNum) )
				{
					if ( bDoubleHere )
					{
						bDoubleHere = MM_FALSE;
					}
					else
					{
						MBT_U32 u32PhyAddr;
						u32PhyAddr = ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]+u32CurOffsetAddr;
						/*find the org one,fresh the data status*/
						SetDirOneContentStatus( pFileLink, u32PhyAddr, ffsm_DirEraseBNStart);
						SetDirOneContentBN( pFileLink, u32PhyAddr, 0 );
						SetDirOneContentStatus( pFileLink, u32PhyAddr, ffsm_DirEraseBNStop );
						SetDirOneContentStatus( ffsv_sEraseDirParam.mpOrgFileLink, 
							ffsv_sEraseDirParam.mu32OrgDirOffsetPhyAddr, ffsm_DirEraseOrgStart|ffsm_DirEraseOrgStop );
						ffsv_sEraseDirParam.mu16EraseOrgBN = 0;
						continue;
					}
				}

				if ( ((pDirContent->mu16Status&ffsc_u16DirContentStatusMask)!=ffsc_u16DirContentStatusValid )
					|| (pDirContent->mu16BlockNum==0)||(pDirContent->mu16BlockNum>=ffsv_su16MaxBlockNum) 
					||((pu8BlockLinkState[pDirContent->mu16BlockNum]&ffsm_BlockLinkState_First)==0)
//Jason 2005-04-22 add for forbid relink again;
					||((pu8BlockLinkState[pDirContent->mu16BlockNum]&ffsm_BlockLinkState_Occupy)==0)
					||((pu8BlockLinkState[pDirContent->mu16BlockNum]&ffsm_BlockLinkState_Linked)==ffsm_BlockLinkState_Linked))
				{
#if 1
					//Jason 2005-04-22 --->
					//Should erase this Content;
					//SetDirOneContentStatus invalid
					MBT_U32 u32PhyAddr;
					u32PhyAddr = ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]+u32CurOffsetAddr;

					SetDirOneContentStatus( pFileLink, u32PhyAddr, ffsm_DirEraseBNStart);
					SetDirOneContentBN( pFileLink, u32PhyAddr, 0 );
					SetDirOneContentStatus( pFileLink, u32PhyAddr, ffsm_DirEraseBNStop );
					//<---
#endif
					continue;
				}
				pNextFileLink = (ffst_FileLink*)ffsf_Malloc(sizeof(ffst_FileLink),__LINE__);
				pNextFileLink->mpBrotherLink = (ffst_FileLink*)MM_NULL;
				pNextFileLink->mpFirstOperator = (ffst_FileOperator*)MM_NULL;
				pNextFileLink->mpSonLink = (ffst_FileLink*)MM_NULL ;
				memset(&(pNextFileLink->mFirstBlockLink),0,sizeof(ffst_BlockLink));
				/*4.parse file's blocks one by one by using CreateBlockLink*/
				ErrorCode=CreateBlockLink ( pDirContent->mu16BlockNum, pu8BlockLinkState,
					&(pNextFileLink->mFirstBlockLink),
					&(pNextFileLink->mu32FileSize), &(pNextFileLink->mu8FileAttr),
					pNextFileLink->mcFileName );
				//add qyt errorcode judge 2005-10-13 =>
				if(ErrorCode==FFSM_ErrorNoError)
				{
					if ( pFatherFileLink->mpSonLink==(ffst_FileLink*)MM_NULL)
					{
						/*first son*/
						pFatherFileLink->mpSonLink = pNextFileLink;
						pCurFileLink = pNextFileLink;
					}
					else
					{
						/*other sons*/
						pCurFileLink->mpBrotherLink = pNextFileLink;
						pCurFileLink = pNextFileLink;
					}
				}
				else
				{
					ffsf_Free(pNextFileLink);
					ffsf_Free(pu8BlockContent);
					return ErrorCode;
				}
				//<=
				/*5.use nested recursion to parse next level son one by one*/
				ErrorCode=ParseFileChildLink ( pNextFileLink , pu8BlockLinkState );
				if ( ErrorCode!=FFSM_ErrorNoError )
				{
					ffsf_Free(pu8BlockContent);
					return ErrorCode;
				}
			}
		}

		pBlockLink=pBlockLink->mpNextBlockLink;
		u32CurOffsetAddr = ffsc_u32BlockHeadLength;
		if ( pBlockLink==(ffst_BlockLink*)MM_NULL )
		{
			break;
		}
		ReadFlashBlock( ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum], pu8BlockContent );
	}
	
	ffsf_Free(pu8BlockContent);

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : GetDirContentOffsetPhyAddr
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode GetDirContentOffsetPhyAddr(SULM_IN ffst_FileLink *pDirFileLink,SULM_IN MBT_U16 u16BlockNum,
			SULM_OUT MBT_U32 *pu32DirOffsetPhyAddr);
 *
 * Input :
 *		a.	pFileLink		SULM_IN ffst_FileLink *
 *			Pointer to the ffst_FileLink
 		b.	u16BlockNum		SULM_IN MBT_U16
 			The number of the first block of the file 
 * Output	:  
 		a.	pu32DirOffsetPhyAddr	SULM_OUT MBT_U32 *
 *			Pointer to the offset in bytes of the valid data
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the offset in bytes of the valid data from the block
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode GetDirContentOffsetPhyAddr(SULM_IN ffst_FileLink *pDirFileLink,SULM_IN MBT_U16 u16BlockNum,
			SULM_OUT MBT_U32 *pu32DirOffsetPhyAddr)
{/*Jason*//*HB*/
	MBT_U32 		u32FileLength		=0;
	MBT_U32 		u32Temp				=0;
	ffst_BlockLink 	*pBlockLink;
	MBT_BOOL 		bFirstBlock			=MM_TRUE;
	MBT_BOOL		bFound				=MM_FALSE;
	MBT_U32 		u32Temp2			=0;
	MBT_U8			*pu8FileContent		=MM_NULL;
	ffst_DirContent	DirContent;
	
	if ( u16BlockNum==ffsc_u16EmptyBlockNum )
	{
		return FFSM_ErrorBadParams;
	}
	
	u32FileLength = pDirFileLink->mu32FileSize;
	pBlockLink = (ffst_BlockLink*)(&(pDirFileLink->mFirstBlockLink));
	while(1)
	{
		if ( 1 )
		{
			if ( bFirstBlock )
			{
				u32Temp = (ffsc_u8BlockDataLength-ffsc_u8FileHeadLength)/4;
			}
			else
			{
				u32Temp = (ffsc_u8BlockDataLength)/4;
			}
			if ( bFirstBlock )
			{
				pu8FileContent = (MBT_U8*)(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]
					+ffsc_u32BlockHeadLength+ffsc_u8FileHeadLength);
			}
			else
			{
				pu8FileContent = (MBT_U8*)(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]
					+ffsc_u32BlockHeadLength);
			}
			for (u32Temp2=0;u32Temp2<u32Temp;u32Temp2++)
			{
                                ffsv_sInitParam.mpfunFlashRead((MBT_U32)pu8FileContent,(MBT_VOID *)(&DirContent),sizeof(DirContent));
				if ((DirContent.mu16BlockNum==u16BlockNum)&&
					((DirContent.mu16Status&ffsc_u16DirContentValidMask)==ffsc_u16DirContentValid))
				{
					bFound=MM_TRUE;
					break;
				}
				pu8FileContent=pu8FileContent+sizeof(ffst_DirContent);
			}
		}
		
		if(bFound)
		{
			break;
		}

		pBlockLink = pBlockLink->mpNextBlockLink ;
		if ( pBlockLink==(ffst_BlockLink*)MM_NULL ) 
		{
			break;
		}

		if (bFirstBlock)
		{
			bFirstBlock=MM_FALSE;
		}
	}
	
	if ( !bFound )
	{
		*pu32DirOffsetPhyAddr=0;
		return FFSM_ErrorFileNotExist;
	}
	
	*pu32DirOffsetPhyAddr = (MBT_U32)pu8FileContent;
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetDirOneContentStatus
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetDirOneContentStatus( SULM_IN ffst_FileLink *pFileLink, SULM_IN MBT_U32 u32DirOffsetPhyAddr, 
			SULM_IN MBT_U16 DirContentBN );
 *
 * Input :
 *		a.	pFileLink		SULM_IN ffst_FileLink *
 *			Pointer to the ffst_FileLink
 		b.	u32DirOffset	SULM_IN MBT_U32

 		c.	pu32DirOffset	SULM_OUT MBT_U32 *
 *			
 			
 * Output	:  
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the offset in bytes of the valid data from the block
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetDirOneContentStatus( SULM_IN ffst_FileLink *pFileLink, SULM_IN MBT_U32 u32DirOffsetPhyAddr, 
	SULM_IN MBT_U16 DirContentStatus )
{/*cm*//*HB*/
	MBT_U16		u16CurDirContentStatus 	= ffsc_u16InitDirContentStatus;
	ffst_DirContent	DirContent ;
	MBT_U32		u32ActualLen			= 0;

        UNUSED_PARAM(pFileLink);
        ffsv_sInitParam.mpfunFlashRead(u32DirOffsetPhyAddr,(MBT_VOID *)(&DirContent),sizeof(DirContent));

	u16CurDirContentStatus = DirContent.mu16Status;
	if ((u16CurDirContentStatus & DirContentStatus)!=0)
	{
		u16CurDirContentStatus = u16CurDirContentStatus & ((MBT_U16)~DirContentStatus);
		if (ffsv_sInitParam.mpfunFlashWrite(u32DirOffsetPhyAddr, (MBT_U8*)&u16CurDirContentStatus, 
			sizeof(u16CurDirContentStatus), &u32ActualLen))
		{
			return FFSM_ErrorFlashWriteError;
		}

		if (u32ActualLen != sizeof(u16CurDirContentStatus))
		{
			return FFSM_ErrorFlashWriteError;
		}
	}
	
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : SetDirOneContentBN
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode SetDirOneContentBN( SULM_IN ffst_FileLink *pFileLink, SULM_IN MBT_U32 u32DirOffsetPhyAddr, 
 *				SULM_IN MBT_U16 DirContentBN );
 *
 * Input :
 *		a.	pFileLink		SULM_IN ffst_FileLink *
 *			Pointer to the ffst_FileLink
 		b.	u32DirOffsetPhyAddr	SULM_IN MBT_U32

 		c.	pu32DirOffset	SULM_OUT MBT_U32 *
 *			
 			
 * Output	:  
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the offset in bytes of the valid data from the block
 *		
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode SetDirOneContentBN( SULM_IN ffst_FileLink *pFileLink, SULM_IN MBT_U32 u32DirOffsetPhyAddr, 
	SULM_IN MBT_U16 DirContentBN )
{/*cm*//*HB*/
	MBT_U16		u16CurDirContentBN 	= ffsc_u16InvlidBlockNum;
	ffst_DirContent	DirContent;
	MBT_U32		u32ActualLen		= 0;
        UNUSED_PARAM(pFileLink);
        
        ffsv_sInitParam.mpfunFlashRead(u32DirOffsetPhyAddr,(MBT_VOID *)(&DirContent),sizeof(DirContent));
	u16CurDirContentBN = DirContent.mu16BlockNum;

	if (u16CurDirContentBN != DirContentBN)
	{
		if (ffsv_sInitParam.mpfunFlashWrite(u32DirOffsetPhyAddr+ffsc_u32DirContentBNOffset, 
			(MBT_U8*)(&DirContentBN), sizeof(DirContentBN), &u32ActualLen))
		{
			return FFSM_ErrorFlashWriteError;
		}
		if (u32ActualLen != sizeof(DirContentBN))
		{
			return FFSM_ErrorFlashWriteError;
		}
	}
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : AddDirOneContentBN
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode AddDirOneContentBN( SULM_IN ffst_FileLink *pFileLink, 
 *				SULM_IN MBT_U16 DirContentBN,
 *				SULM_OUT MBT_U32 *pu32DirOffsetPhyAddr);
 *
 * Input :
 *		a.	pFileLink		SULM_IN ffst_FileLink *
 *			Pointer to the ffst_FileLink
 		b.	DirContentBN	SULM_IN MBT_U16
 * Output	:  
 		a.	pu32DirOffsetPhyAddr	SULM_OUT MBT_U32 *
 *			
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the offset in bytes of the valid data from the block
 *		add the BN ,
 *		if Existed , Erase Org.
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode AddDirOneContentBN( SULM_IN ffst_FileLink *pFileLink, 
	SULM_IN MBT_U16 DirContentBN,	SULM_OUT MBT_U32 *pu32DirOffsetPhyAddr)
{/*Jason*//*HB*/
	FFST_ErrorCode	ErrorCode 			=FFSM_ErrorNoError;
	ffst_BlockLink	*pBlockLink			=(ffst_BlockLink*)(&(pFileLink->mFirstBlockLink));
	ffst_BlockLink	*pNewBlockLink		=MM_NULL;
	ffst_BlockHead	*pBlockHead			=MM_NULL;
	ffst_FileHead	*pFileHead			=MM_NULL;
	ffst_FileLink 	*pNewFileLink		=MM_NULL;
	MBT_U32		u32BlockOffset		=ffsc_u32BlockHeadLength+ffsc_u8FileHeadLength;
	MBT_U32		u32NewBlockOffset	=0;
	MBT_U32		u32TempPhyAddr		=0;
	MBT_U32		u32BlockPhyAddr		=0;
	MBT_U32		u32NewBlockPhyAddr	=0;
	MBT_U16		u16BN				=0;
	ffst_DirContent	DirContent;
	ffst_DirContent	*pDirContent          = MM_NULL;
	MBT_BOOL		bWithInvalid		=MM_FALSE;
	MBT_BOOL		bWithEmpty			=MM_FALSE;
	MBT_U8		*au8BlockData = (MBT_U8*)ffsf_Malloc(ffsm_BlockSize,__LINE__);

        UNUSED_PARAM(DirContentBN);
	*pu32DirOffsetPhyAddr = 0;

	pBlockLink=(ffst_BlockLink*)&(pFileLink->mFirstBlockLink);
	
	/*search WithInvalid & WithEmpty*/
	while(1)
	{
		u32BlockPhyAddr=ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum];
		for ( ;u32BlockOffset<ffsm_BlockSize;u32BlockOffset+=sizeof(ffst_DirContent) )
		{
		        u32TempPhyAddr = u32BlockPhyAddr+u32BlockOffset;
                        ffsv_sInitParam.mpfunFlashRead(u32TempPhyAddr,(MBT_VOID *)(&DirContent),sizeof(DirContent));

			/*check one by one*/
			if ( (DirContent.mu16BlockNum==0xFFFF) && (DirContent.mu16Status==0xFFFF) )
			{
				bWithEmpty=MM_TRUE;
				break;
			}

			if ( ( (DirContent.mu16Status&ffsc_u16DirContentValidMask) != ffsc_u16DirContentValid )
				|| (DirContent.mu16BlockNum==0) )
			{
				bWithInvalid=MM_TRUE;
			}
		}
		if( bWithEmpty || bWithInvalid )
		{
			break;
		}

		if ( pBlockLink->mpNextBlockLink == MM_NULL )
		{
			break;
		}
		pBlockLink=pBlockLink->mpNextBlockLink;
		u32BlockOffset=ffsc_u32BlockHeadLength;
	}

	/*do each condition*/
	if ( bWithEmpty )
	{
		/*return Address directly*/
		*pu32DirOffsetPhyAddr=(MBT_U32)u32TempPhyAddr;
	}
	else if ( bWithInvalid )
	{
		/*clean up one block and then return Address*/
		ErrorCode = GetEmptyBlock(&u32NewBlockPhyAddr);
		if(ErrorCode != FFSM_ErrorNoError)
		{
                        ffsf_Free(au8BlockData);
			return(ErrorCode);
		}

		u32BlockPhyAddr=ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum];

		ReadFlashBlock(u32BlockPhyAddr, au8BlockData);
		
		pBlockHead = (ffst_BlockHead*)au8BlockData;
		SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockWriteStart);
		SetBlockCurrentBN(u32NewBlockPhyAddr, pBlockHead->mu16BlockNum);
		if ( (pBlockHead->mu16NextBlockNum!=ffsc_u16EmptyBlockNum)
			&& (pBlockHead->mu16NextBlockNum!=ffsc_u16InvlidBlockNum) )
		{
			SetBlockNextBN(u32NewBlockPhyAddr, pBlockHead->mu16NextBlockNum);
			SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockNextBNStart|ffsm_BlockNextBNStop);
		}
		
		if( (pBlockHead->mu8Status&ffsm_BlockFileHead)==0 )
		{
			pFileHead=(ffst_FileHead*)(au8BlockData+ffsc_u32BlockHeadLength);
			SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockFileHead);
			WriteFileHead(u32NewBlockPhyAddr, pFileHead);
			u32BlockOffset = ffsc_u32BlockHeadLength+ffsc_u8FileHeadLength;
		}
		else
		{
			u32BlockOffset = ffsc_u32BlockHeadLength;
		}

		SetBlockValidDataLen(u32NewBlockPhyAddr, (MBT_U8)ffsc_u8BlockDataLength);

		SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockFileWriteStart|ffsm_BlockFileWriteStop);

		u32NewBlockOffset=u32BlockOffset;
		for ( ;u32BlockOffset<ffsm_BlockSize;u32BlockOffset+=sizeof(ffst_DirContent) )
		{
			pDirContent=(ffst_DirContent*)(au8BlockData+u32BlockOffset);
			if ( ( (pDirContent->mu16Status&ffsc_u16DirContentValidMask) != ffsc_u16DirContentValid )
				|| (pDirContent->mu16BlockNum==0) )
			{
				continue;
			}
			SetDirOneContentBN(pFileLink,u32NewBlockPhyAddr+u32NewBlockOffset, pDirContent->mu16BlockNum);
			SetDirOneContentStatus(pFileLink,u32NewBlockPhyAddr+u32NewBlockOffset, 
				ffsm_DirWriteBNStart|ffsm_DirEraseOrgStart|ffsm_DirEraseOrgStop|ffsm_DirWriteBNStop);
			u32NewBlockOffset+=sizeof(ffst_DirContent);
		}

		SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockWriteStop);
		SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockInvalid);
		ffsv_spu32PhyAddrArray[pBlockHead->mu16BlockNum]=u32NewBlockPhyAddr;
		*pu32DirOffsetPhyAddr=u32NewBlockPhyAddr+u32NewBlockOffset;
	}
	else
	{
		/*add one block*/
		ErrorCode = GetEmptyBlock(&u32NewBlockPhyAddr);
		if(ErrorCode != FFSM_ErrorNoError)
		{
                        ffsf_Free(au8BlockData);
			return(ErrorCode);
		}
		ErrorCode = GetValidBlockNumber(ffsc_u16InvlidBlockNum, &u16BN);
		if(ErrorCode != FFSM_ErrorNoError)
		{
                        ffsf_Free(au8BlockData);
			//MMF_SYS_Assert(0);//Jason 2005-04-25
			return(ErrorCode);
		}

		ffsv_spu32PhyAddrArray[u16BN]=u32NewBlockPhyAddr;
		SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockWriteStart);
		SetBlockCurrentBN(u32NewBlockPhyAddr, u16BN);
		SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockFileWriteStart|ffsm_BlockFileWriteStop);
		SetBlockValidDataLen(u32NewBlockPhyAddr, (MBT_U8)(ffsm_BlockSize-ffsc_u32BlockHeadLength));
		SetBlockHeadStatus(u32NewBlockPhyAddr, ffsm_BlockWriteStop);

		u32BlockPhyAddr=ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum];
		SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockNextBNStart);
		SetBlockNextBN(u32BlockPhyAddr, u16BN);
		SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockNextBNStop);

		/*link it*/
		pNewBlockLink = (ffst_BlockLink*)ffsf_Malloc(sizeof(ffst_BlockLink),__LINE__);
		pNewBlockLink->mpNextBlockLink = MM_NULL;
		pNewBlockLink->mu16BlockNum = u16BN;
		pNewBlockLink->mu8BlockDataLength = (MBT_U8)(ffsm_BlockSize-ffsc_u32BlockHeadLength);
		pBlockLink->mpNextBlockLink = pNewBlockLink;
		pNewFileLink = (ffst_FileLink*)pFileLink;
		pNewFileLink->mu32FileSize = pNewFileLink->mu32FileSize + (MBT_U32)(ffsm_BlockSize-ffsc_u32BlockHeadLength);
		
		/*return Address*/
		*pu32DirOffsetPhyAddr=u32NewBlockPhyAddr+ffsc_u32BlockHeadLength;
	}
	
        ffsf_Free(au8BlockData);
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : FreeOneFileLink
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode FreeOneFileLink(SULM_IN ffst_FileLink *pFileLink,
 			SULM_IN MBT_BOOL bEraseBlock);
 *
 * Input :
 *		a.	pFileLink		SULM_IN ffst_FileLink *
 *			Pointer to the ffst_FileLink
 * Output	:  
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Free the file link note in the RAM , also free his sons and brothers
 *		
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode FreeOneFileLink(SULM_IN ffst_FileLink *pFileLink,
	SULM_IN MBT_BOOL bEraseBlock)
{
/*Jason*//*HB*/
	ffst_FileOperator	*pFileOperator		=MM_NULL;
	ffst_BlockLink		*pBlockLink			=MM_NULL;
	ffst_BlockLink		*pBlockLinkNext		=MM_NULL;

	if(pFileLink==MM_NULL)
	{
		return FFSM_ErrorNoError;
	}

	/*1.1.free the operators of the file link*/
	pFileOperator = pFileLink->mpFirstOperator ;
	if ( pFileOperator != MM_NULL )
	{
		ffsf_Free((MBT_VOID*)pFileOperator);
	}
	pFileLink->mpFirstOperator = MM_NULL;
	
	/*1.2.free the block links of the file link*/
	pBlockLink = (ffst_BlockLink*)&(pFileLink->mFirstBlockLink);
	if ( bEraseBlock )
	{
		SetBlockHeadStatus(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum], ffsm_BlockInvalid);
		SetThisSectorWithInvalid(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]);
		ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]=0;
	}

	pBlockLink = pBlockLink->mpNextBlockLink;
	while ( pBlockLink != MM_NULL )
	{
		if ( bEraseBlock )
		{
			SetBlockHeadStatus(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum], ffsm_BlockInvalid);
			SetThisSectorWithInvalid(ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]);
			ffsv_spu32PhyAddrArray[pBlockLink->mu16BlockNum]=0;
		}

		pBlockLinkNext = pBlockLink->mpNextBlockLink;
		ffsf_Free((MBT_VOID*)pBlockLink);
		pBlockLink = pBlockLinkNext;
	}
	
	/*1.3.free the file lik*/
	if ( pFileLink->mpBrotherLink!=MM_NULL )
	{	
		FreeOneFileLink(pFileLink->mpBrotherLink,bEraseBlock);
	}
	
	if ( pFileLink->mpSonLink!= MM_NULL )
	{
		FreeOneFileLink(pFileLink->mpSonLink,bEraseBlock);
	}

	ffsf_Free( (MBT_VOID*)pFileLink );
	
	return FFSM_ErrorNoError;
}


/*********************************************************************
 * Function Name : SearchFileByFirstBN
 * Type £ºPrivate & Subroutine
 * Prototype :
 * MBT_BOOL SearchFileByFirstBN ( SULM_IN ffst_FileLink *pFileLinkSearchFather,
 	SULM_IN ffst_FileLink *pFileLinkSearch, SULM_IN MBT_U16 u16BlockNum , 
	SULM_OUT ffst_FileLink **ppFileLinkFather, SULM_OUT ffst_FileLink **ppFileLink );
 *
 * Input :
 *		a.	pFileLinkSearch		SULM_IN ffst_FileLink * 
 *			The pointer of the beginning of the file link
 		b.	u16BlockNum		SULM_IN MBT_U16
 *			The number of the block
 * Output	:  
 		a.	ppFileLinkFather		SULM_OUT ffst_FileLink **
 			Point to the pointer of the ffst_FileLink of the file's father
 *		b.	ppFileLink			SULM_OUT ffst_FileLink **
 			Point to the pointer of the ffst_FileLink of the file
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the file link of the file
 *		
 *
 * Theory of Operation :
 *********************************************************************/
MBT_BOOL SearchFileByFirstBN ( SULM_IN ffst_FileLink *pFileLinkSearchFather,
	SULM_IN ffst_FileLink *pFileLinkSearch, SULM_IN MBT_U16 u16BlockNum , 
	SULM_OUT ffst_FileLink **ppFileLinkFather, SULM_OUT ffst_FileLink **ppFileLink )
{
/*Jason*/
	MBT_BOOL bFound=MM_FALSE;
	if ( pFileLinkSearchFather==(ffst_FileLink *)MM_NULL )
	{
		return MM_FALSE;
	}
	if ( pFileLinkSearch==(ffst_FileLink *)MM_NULL )
	{
		return MM_FALSE;
	}

	if (pFileLinkSearch->mFirstBlockLink.mu16BlockNum == u16BlockNum)
	{
		*ppFileLink=(ffst_FileLink*)pFileLinkSearch;
		*ppFileLinkFather=(ffst_FileLink*)pFileLinkSearchFather;
		return MM_TRUE;
	}
	
	bFound = SearchFileByFirstBN( pFileLinkSearchFather, pFileLinkSearch->mpBrotherLink, u16BlockNum , ppFileLinkFather, ppFileLink );
	if ( bFound ) 
	{
		return MM_TRUE;
	}
	bFound = SearchFileByFirstBN( pFileLinkSearch, pFileLinkSearch->mpSonLink, u16BlockNum , ppFileLinkFather, ppFileLink );
	if ( bFound ) 
	{
		return MM_TRUE;
	}

	return MM_FALSE;
}

/*********************************************************************
 * Function Name : FindDirLinkFromFileFirstBN
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode FindDirLinkFromFileFirstBN ( SULM_IN MBT_U16 u16BlockNum , 
					SULM_OUT ffst_FileLink **ppFileLink , SULM_OUT MBT_U32 *pu32Offset );
 *
 * Input :
 *		a.	u16BlockNum		SULM_IN MBT_U16 
 *			The number of the block
 * Output	:  
 		a.	ppFileLink			SULM_OUT ffst_FileLink **
 			Point to the pointer of the ffst_FileLink
 *		b.	pu32Offset		SULM_OUT MBT_U32 *
 			Point to  the offset in bytes of the file content in the directory 
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			Get the file link of the directory included the file
 *		
 *
 * Theory of Operation :
 *********************************************************************/

FFST_ErrorCode FindDirLinkFromFileFirstBN ( SULM_IN MBT_U16 u16BlockNum , 
	SULM_OUT ffst_FileLink **ppFileLink , SULM_OUT MBT_U32 *pu32OffsetPhyAddr )
{/*Jason*/
	FFST_ErrorCode 	ErrorCode			=FFSM_ErrorNoError;
	ffst_FileLink 	*pFileLink;
	ffst_FileLink 	*pFileLinkFather;
	MBT_BOOL 		bFoundFile;

	if ( ffsv_spu32PhyAddrArray[u16BlockNum]==0 )
	{
		return FFSM_ErrorUnusedBN;
	}
	
	/*first search for the FileLink and his father*/
	bFoundFile = SearchFileByFirstBN ( ffsv_spFirstFileLink, ffsv_spFirstFileLink->mpSonLink,
		u16BlockNum, &pFileLinkFather, &pFileLink );

	if( bFoundFile )
	{
		*ppFileLink = pFileLink;
	}
	else
	{
		*ppFileLink = (ffst_FileLink*)MM_NULL;
		return FFSM_ErrorFileNotExist;
	}

	/*get offset*/
	ErrorCode = GetDirContentOffsetPhyAddr( pFileLinkFather, u16BlockNum, pu32OffsetPhyAddr );
	
	return ErrorCode;
}

/*********************************************************************
 * Function Name : CreateBlockLink
 * Type £ºPrivate & Subroutine
 * Prototype :
 *	FFST_ErrorCode CreateBlockLink ( SULM_IN MBT_U16 u16BlockNum, 
 *		SULM_INOUT MBT_U8 *pu8BlockLinkState,
 *		SULM_OUT ffst_BlockLink *pBlockLink, 
 *		SULM_OUT MBT_U32 *pu32FileSize, SULM_OUT MBT_U8 *pu8FileAttr, SULM_OUT MBT_CHAR *pcFileName )
 *
 * Input :
 *		a.	u16BlockNum		SULM_IN MBT_U16
 *			The number of the block
 *		b.	pu8BlockLinkState
 *			block status array
 * Output	:
 *		a.	pBlockLink		SULM_IN ffst_BlockLink *
 *			Pointer to the ffst_BlockLink structure
 *		b.	pu32FileSize 	MBT_U32*
 *			output file length
 *		c.	pu8FileAttr		MBT_U8*
 *			output file attribute
 *		d.	pcFileName		MBT_CHAR*
 *			output file name
 *		e.	pu8BlockLinkState
 *			block status array
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *			
 *
 * Purpose :
 *			
 *		
 *
 * Theory of Operation :
 *	1.input the first block data
 *	2.if next is not invalid, malloc block and link
 *	3.set the last one block nextblock
 *********************************************************************/
FFST_ErrorCode CreateBlockLink ( SULM_IN MBT_U16 u16BlockNum, 
 	SULM_INOUT MBT_U8 *pu8BlockLinkState,
	SULM_OUT ffst_BlockLink *pBlockLink, 
	SULM_OUT MBT_U32 *pu32FileSize, SULM_OUT MBT_U8 *pu8FileAttr, SULM_OUT MBT_CHAR *pcFileName )
{
/*Jason*//*HB*/
	FFST_ErrorCode		ErrorCode			=FFSM_ErrorNoError;
	ffst_BlockLink 		*pCurBlockLink			=MM_NULL;
	ffst_BlockLink 		*pNextBlockLink			=MM_NULL;
	ffst_BlockHead		BlockHeadBuf;
	ffst_FileHead		FileHeadBuf;
	MBT_U32			u32BlockAddr;
	MBT_U32			u32FileLength;

	if ( !((u16BlockNum>0)&&(u16BlockNum<ffsv_su16MaxBlockNum)
		&&(pu8BlockLinkState[u16BlockNum]&ffsm_BlockLinkState_First)) )
	{
		memset((MBT_VOID*)pBlockLink,0,sizeof(ffst_BlockLink));
		*pu32FileSize = 0;
		memset((MBT_VOID*)pcFileName,0,FFSM_MaxFileNameLength+1);
		return FFSM_ErrorBlockLinkErr;
	}
	
	/*1.input the first block data*/
	u32BlockAddr = ffsv_spu32PhyAddrArray[u16BlockNum];
	ReadBlockHead( u32BlockAddr, &BlockHeadBuf );
	ReadFileHead( u32BlockAddr, &FileHeadBuf );
	//add qyt 2005-10-13 =>
	if((strlen(FileHeadBuf.mcFileName)>FFSM_MaxFileNameLength)||(strlen(FileHeadBuf.mcFileName)==0))
	{
		return FFSM_ErrorBlockLinkErr;
	}//<=
	
	pCurBlockLink = pBlockLink ;
	pCurBlockLink->mu16BlockNum = u16BlockNum;
	pCurBlockLink->mu8BlockDataLength = BlockHeadBuf.mu8DataLength;
	if ( BlockHeadBuf.mu8DataLength==0xFF )
	{
		u32FileLength = 0;
	}
	else
	{
		u32FileLength = (MBT_U32)(BlockHeadBuf.mu8DataLength-ffsc_u8FileHeadLength);
	}
	pu8BlockLinkState[u16BlockNum] |= ffsm_BlockLinkState_Linked;

	/*2.if next is not invalid, malloc block and link*/
	while ( (BlockHeadBuf.mu16NextBlockNum > 0)
		&&(BlockHeadBuf.mu16NextBlockNum < ffsv_su16MaxBlockNum) )
	{
//Jason 2005-04-22 add for forbid relink again;
//		if( ( pu8BlockLinkState[BlockHeadBuf.mu16NextBlockNum]
//				&(ffsm_BlockLinkState_Occupy|ffsm_BlockLinkState_First) )
//			!= ffsm_BlockLinkState_Occupy )
		if( ( pu8BlockLinkState[BlockHeadBuf.mu16NextBlockNum]
				&(ffsm_BlockLinkState_Occupy|ffsm_BlockLinkState_First|ffsm_BlockLinkState_Linked) )
			!= ffsm_BlockLinkState_Occupy )
		{
			SetBlockHeadStatus( u32BlockAddr,ffsm_BlockNextBNStart );
			SetBlockNextBN( u32BlockAddr , 0 );
			SetBlockHeadStatus( u32BlockAddr,ffsm_BlockNextBNStop );
		
			ErrorCode = FFSM_ErrorBlockLinkErr;
			break;
		}

		pu8BlockLinkState[BlockHeadBuf.mu16NextBlockNum] |= ffsm_BlockLinkState_Linked;

		u32BlockAddr = ffsv_spu32PhyAddrArray[BlockHeadBuf.mu16NextBlockNum];
		ReadBlockHead( u32BlockAddr, &BlockHeadBuf );

		pNextBlockLink = (ffst_BlockLink*)ffsf_Malloc(sizeof(ffst_BlockLink),__LINE__) ;
		pCurBlockLink->mpNextBlockLink = pNextBlockLink;
		pCurBlockLink = pNextBlockLink;

		pCurBlockLink->mu16BlockNum = BlockHeadBuf.mu16BlockNum;

		pCurBlockLink->mu8BlockDataLength = BlockHeadBuf.mu8DataLength;
		u32FileLength = u32FileLength + (MBT_U32)(BlockHeadBuf.mu8DataLength);
	}

	/*3.set the last one block nextblock*/
	pCurBlockLink->mpNextBlockLink = MM_NULL ;

	/*4.output params*/
	*pu32FileSize = u32FileLength;
	memcpy( (MBT_VOID*)pcFileName, (MBT_VOID*)(FileHeadBuf.mcFileName), FFSM_MaxFileNameLength+1 );

         FFS_DEBUG(("FileName[%s][%d]\n",pcFileName,pBlockLink->mu16BlockNum));//Jason Test 2005-04-22
	*pu8FileAttr = FileHeadBuf.mu8FileAttr ;

	return ErrorCode;
}


FFST_ErrorCode ExtractLeafFileName(SULM_IN MBT_CHAR *pPathName , SULM_OUT MBT_CHAR *pFileName)
{
	MBT_S32 i=0;
	const MBT_CHAR *p=pPathName;

	while(*pPathName!=0)
	{
 		if(*pPathName=='/')
		{
			i=0;//Add by Jason 2005-05-26
 			if(pPathName[1]==0)
			{
				break;
			}
			//i=0;//Ignore by Jason 2005-05-26
			pPathName++;
			p=pPathName;
		}
		else
		{
			i++;
			pPathName++;
		}
 	}

	memcpy(pFileName,p,i);
	pFileName[i]=0;

	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : ParseFileNameStruct
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode ParseFileNameStruct( SULM_IN MBT_CHAR *pSourceName, SULM_OUT ffst_DirNameLink *pDirNameLink );
 *
 * Input :
 *		a.	pSourceName		SULM_IN MBT_CHAR *
 *			input full file name 
 * Output	: 	
 *		a.	pDirNameLink	SULM_OUT ffst_DirNameLink *
 *			the link of the file dame struct
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		Divide the full file name into DIR name & single FILE name
 *		Create a name link 
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode ParseFileNameStruct( SULM_IN MBT_CHAR *pSourceName, SULM_OUT ffst_DirNameLink *pDirNameLink )
{              
/*Jason*//*HB*/
	MBT_U32 	u32Length  	=0;
	MBT_U32 	u32Count	=0;
	MBT_CHAR 		*pStr		=MM_NULL;
	MBT_CHAR 		*pStrNext	=MM_NULL;
	MBT_U32	u32DirDepth =0;
	MBT_BOOL	bCheckError	=MM_FALSE;

	if(pDirNameLink==MM_NULL || pSourceName==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}

	pDirNameLink->mu32DirDepth = 0;
	u32Length = strlen( pSourceName );
	if ( u32Length<(strlen(ffsc_pcRootFileName)+2) )
	{
		return FFSM_ErrorInvalidFileName ;
	}

	pStr=(MBT_CHAR*)ffsf_Malloc(u32Length+1,__LINE__);
	memcpy(pStr,pSourceName,u32Length+1);

	if ( pStr[u32Length-1]=='/' )
	{
		u32Length--;
		pStr[u32Length]=0;
		pDirNameLink->mbFileNotDir=MM_FALSE;
	}
	else
	{
		pDirNameLink->mbFileNotDir=MM_TRUE;
	}

	/*count the depth*/
	pStrNext = pStr;
	while(1)
	{
		if ( (*pStrNext)==0 )
		{
			u32DirDepth++;
			break;
		}
		if ( (*pStrNext)=='/' )
		{
			u32DirDepth++;
			*pStrNext = 0;
		}
		pStrNext++;
	}

	/*malloc ppDirNameLink & his mppFileNameArray*/
	pDirNameLink->mu32DirDepth = u32DirDepth;
	pDirNameLink->mppFileNameArray = (MBT_CHAR**)ffsf_Malloc(sizeof(MBT_CHAR*)*u32DirDepth,__LINE__);
	memset(pDirNameLink->mppFileNameArray,0,sizeof(MBT_CHAR*)*u32DirDepth);
	
	/*copy name one by one*/
	pStrNext = pStr;
	for ( u32Count=0;u32Count<(pDirNameLink->mu32DirDepth);u32Count++ )
	{
		u32Length = strlen(pStrNext);
		/*check filename one by one*/
		/*check pStrNext here*/
		if ( (u32Length==0)||(u32Length>FFSM_MaxFileNameLength) )
		{
			bCheckError=MM_TRUE;
			break;
		}
		if ( u32Count==0 )
		{
			if ( strcmp(pStrNext,ffsc_pcRootFileName)!=0 )
			{
				bCheckError=MM_TRUE;
				break;
			}
		}

		/*copy here*/
		pDirNameLink->mppFileNameArray[u32Count] = (MBT_CHAR*)ffsf_Malloc(u32Length+1,__LINE__);
		strcpy( pDirNameLink->mppFileNameArray[u32Count],pStrNext );

		pStrNext=pStrNext+(u32Length+1);
	}

	ffsf_Free(pStr);
	if (bCheckError)
	{
		//Jason2005-04-08 patch for wrong file name input->
		if(pDirNameLink->mppFileNameArray!=MM_NULL)
		{
			for ( u32Count=0;u32Count<(pDirNameLink->mu32DirDepth);u32Count++ )
			{
				if (pDirNameLink->mppFileNameArray[u32Count]!=MM_NULL)
				{
					ffsf_Free((MBT_VOID *)pDirNameLink->mppFileNameArray[u32Count]);
					pDirNameLink->mppFileNameArray[u32Count]=MM_NULL;
				}
			}
			ffsf_Free((MBT_VOID *)pDirNameLink->mppFileNameArray);
			pDirNameLink->mppFileNameArray=MM_NULL;
			pDirNameLink->mu32DirDepth=0;
		}
		//<-
		
		return FFSM_ErrorInvalidFileName ;
	}
	else
	{
		return FFSM_ErrorNoError;
	}
}

/*********************************************************************
 * Function Name : FreeFileNameStruct
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode FreeFileNameStruct( SULM_IN ffst_DirNameLink DirNameLink );
 *
 * Input :
 *		a.	DirNameLink	SULM_IN ffst_DirNameLink 
 *			the link of the file dame struct
 *	
 * Output	: 	nothing
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		free the File name link struct memory
 *
 * Theory of Operation :
 *********************************************************************/
FFST_ErrorCode FreeFileNameStruct( SULM_IN ffst_DirNameLink DirNameLink )
{
/*Jason*//*HB*/
	MBT_U32 u32Count	=0;

	for ( u32Count=0;u32Count<(DirNameLink.mu32DirDepth);u32Count++ )
	{
		if ( (DirNameLink.mppFileNameArray[u32Count])!=MM_NULL )
		{
			ffsf_Free( (MBT_VOID*)(DirNameLink.mppFileNameArray[u32Count]) );
		}
	}
	if(DirNameLink.mppFileNameArray != MM_NULL)
	{
		ffsf_Free(DirNameLink.mppFileNameArray);
	}
	return FFSM_ErrorNoError;
}
/*********************************************************************
 * Function Name : IsFileHandleValid
 * Type £ºGlobal & Subroutine
 * Prototype :
 *			MBT_BOOL IsFileHandleValid(SULM_IN FFST_FileHandle hFile)
 *
 *
 * Input :
 *		a.	FileHead	SULM_IN ffst_FileHead
 *			the head of the file want to creat
 * Output	: 	nothing
 *
 * Return :
 *		a.	MM_FALSE: 
 *			handle is not valid
 *		b.	MM_TRUE: 
 *			handle is valid ;
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		judge the file handle is valid
 *
 * Theory of Operation :
 *********************************************************************/
MBT_BOOL IsFileHandleValid(SULM_IN FFST_FileHandle hFile)
{/*qyt 2005.1.26*/
	ffst_FileOperator *pFileOperator;

	//Jason 2005-05-10--->
	if (hFile==(MBT_U32)MM_NULL) 
	{
		return MM_FALSE;
	}
	//<---

	pFileOperator = (ffst_FileOperator *)hFile;
	
	return ((pFileOperator->mu32SysSignal == ffsc_u32OperatorSysSignal)? MM_TRUE:MM_FALSE);
}
/*********************************************************************
 * Function Name : AddSonFileLink
 * Type £ºPrivate & Subroutine
 * Prototype :
 *			FFST_ErrorCode	AddSonFileLink(SULM_INOUT ffst_FileLink *pDirFileLink,SULM_IN ffst_FileLink *pFileLink)
 *
 *
 * Input :
 *		a.	pDirFileLink		ffst_FileLink *
 *		b.	pFileLink			ffst_FileLink *
 *			
 * Output	: 	
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		
 * Theory of Operation :
 *********************************************************************/

FFST_ErrorCode	AddSonFileLink(SULM_INOUT ffst_FileLink *pDirFileLink,SULM_IN ffst_FileLink *pFileLink)
{/*Jason*//*HB*/
	ffst_FileLink	*pFileLinkTemp;

	if(pDirFileLink==MM_NULL || pFileLink==MM_NULL)
	{
		return FFSM_ErrorBadParams;
	}
	if(pDirFileLink->mu8FileAttr&FFSM_FileNotDir)
	{
		return FFSM_ErrorBadParams;
	}

	
	if(pDirFileLink->mpSonLink == MM_NULL)
	{
		pDirFileLink->mpSonLink=(ffst_FileLink*)pFileLink;
		return FFSM_ErrorNoError;
	}
	else
	{
		pFileLinkTemp = pDirFileLink->mpSonLink;
		while(pFileLinkTemp->mpBrotherLink != MM_NULL)
		{
			pFileLinkTemp = pFileLinkTemp->mpBrotherLink;
		}
		pFileLinkTemp->mpBrotherLink = (ffst_FileLink*)pFileLink;
	}
	return FFSM_ErrorNoError;
}

/*********************************************************************
 * Function Name : RenameFile
 * Type £ºPrivate & Subroutine
 * Prototype :
 *		FFST_ErrorCode	RenameFile(SULM_INOUT	ffst_FileLink *pFileLink,SULM_IN MBT_CHAR *pDesFileName)
 *
 *
 * Input :
 *		a.	pFileLink	SULM_INOUT ffst_FileLink *
 *			filelink of want to rename file
 *		b.	pDesFileName
 *			name string
 * Output	: 	nothing
 *
 * Return :
 *
 * Global Variables Used	:
 *
 * Callers :
 *
 * Callees :
 *		nothing 
 *
 * Purpose :
 *		
 *
 * Theory of Operation :
 *********************************************************************/

FFST_ErrorCode RenameFile(SULM_INOUT ffst_FileLink *pFileLink,SULM_IN MBT_CHAR *pDesFileName)
{/*qyt*//*HB*/
	MBT_U8			u8DataBuf[ffsm_BlockSize];
	MBT_U32		u32OrgPhyAddr;
	MBT_U16		u16NextBlockNum;
	MBT_U32		u32BlockPhyAddr;
	FFST_ErrorCode	ErrorCode;
	MBT_U8		u8BlockHeadStatus;
		
		/*4.1 change filename in flash*/
	if(pFileLink->mFirstBlockLink.mpNextBlockLink != MM_NULL)
	{
		u16NextBlockNum = pFileLink->mFirstBlockLink.mpNextBlockLink->mu16BlockNum;
	}
	else
	{
		u16NextBlockNum = ffsc_u16EmptyBlockNum;
	}

	ErrorCode = GetEmptyBlock(&u32BlockPhyAddr);
	if(ErrorCode != FFSM_ErrorNoError)
	{
		return ErrorCode;
	}
	
	u32OrgPhyAddr = ffsv_spu32PhyAddrArray[pFileLink->mFirstBlockLink.mu16BlockNum];
	ReadFlashBlock(u32OrgPhyAddr, u8DataBuf);
	strcpy((MBT_CHAR*)&u8DataBuf[ffsc_u32FileHeadOffset+1],pDesFileName);

	ffsv_spu32PhyAddrArray[pFileLink->mFirstBlockLink.mu16BlockNum] = u32BlockPhyAddr;

	SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockWriteStart);
	SetBlockCurrentBN(u32BlockPhyAddr, pFileLink->mFirstBlockLink.mu16BlockNum);
	SetBlockValidDataLen(u32BlockPhyAddr, pFileLink->mFirstBlockLink.mu8BlockDataLength);
	WriteFileHead(u32BlockPhyAddr,(ffst_FileHead*)&u8DataBuf[ffsc_u32FileHeadOffset]);
	WriteFlashBlock(u32BlockPhyAddr, u8DataBuf);
	u8BlockHeadStatus=((MBT_U8)~u8DataBuf[ffsc_u32BlockHeadStatusOffset])&(ffsm_BlockFileWriteStart|ffsm_BlockFileWriteStop);
	SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockFileHead|u8BlockHeadStatus);
	if(u16NextBlockNum != ffsc_u16EmptyBlockNum)
	{
		SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockNextBNStart);
		SetBlockNextBN(u32BlockPhyAddr, u16NextBlockNum);
		SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockNextBNStop);
	}
	SetBlockHeadStatus(u32BlockPhyAddr, ffsm_BlockWriteStop);
	/*invalid org block*/
	SetBlockHeadStatus(u32OrgPhyAddr, ffsm_BlockInvalid);
	SetThisSectorWithInvalid(u32OrgPhyAddr);
		/*4.2 change filelink.filename*/
	strcpy(pFileLink->mcFileName,pDesFileName);
	return FFSM_ErrorNoError;
}

/*===================Private Classes Implementation==================*/

/*----------------------End of FFS.c-------------------------*/
