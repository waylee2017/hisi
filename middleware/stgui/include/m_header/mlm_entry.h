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

#ifndef	__MLM_ENTRY_H__ /* 防止graphics.h被重复引用 */
#define	__MLM_ENTRY_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*------------------------Module Macors---------------------------*/
#define SULM_NoError 	0
#define FFSM_ModuleId 	0x35440000
#define DBSM_ModuleId	0x35450000
#define TUNM_ModuleId	0x35460000
/*------------------------Module Constants---------------------------*/

/*------------------------Module Types---------------------------*/

/*-----------------------Module Variables-------------------------*/

/*-----------------------Module Functions-------------------------*/
extern MMT_STB_ErrorCode_E MMLF_HightAppStart(MBT_VOID);
extern MMT_STB_ErrorCode_E MMLF_HightAppTerm (MBT_VOID);
extern MBT_CHAR *MMLF_GetHightAppVer (MBT_VOID);

/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__ERRORCODE_H__ */

/*----------------------End of ErrorCode.h-------------------------*/

