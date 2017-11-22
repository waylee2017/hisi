/* =========================================================== 
	Create Date:		2003.08.18
	Author:				GZY
=========================================================== */
/*–ﬁ∏ƒ»’÷æ£∫

*/

#ifndef  CAS_INER_H
#define  CAS_INER_H 

#include "mm_common.h"
#include "ca_api.h"
#include "section_api.h"
#include "dbs_api.h"


//#define CA_DEBUG(x)   MLMF_Print x
#define CA_DEBUG(x) 

extern MBT_VOID (*pCaNotifyUICallBack)( MBT_S32 iType,MBT_U32 stPid, MBT_VOID *pData,MBT_S32 iDataSize);

#endif
