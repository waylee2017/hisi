/*****************************************************************************
* Copyright (c) 2005,SULDVB
* All rights reserved.
* 
* FileName £ºErrorCode.h
* Description £ºGlobal define for error code base
* 
* Version £ºVersion £º1.0.0
* Author £ºJason   Reviewer : 
* Date £º2005-01-12
* Record : Change it into standard mode
*
* History :
* (1) 	Version £º1.0.0
* 		Author £ºJason   Reviewer : 
* 		Date £º2005-01-12
*		Record : Create File
****************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>

#include "mapi_inner.h"

#include "hi_unf_ir.h"




static MBT_VOID (*mlmp_pBCallback)(MBT_U16 u16key,MMT_BLAST_Status_E eStatus) = MM_NULL;


static MET_Task_T gBlasttaskid;
static MBT_U16 gu16SystemCode;
static int gBlastTaskRun;

int MLMF_Blast_CheckKey(unsigned int *key)
{
	unsigned int pressStatus = 0;
	unsigned int keyId = -1;
	unsigned int ret = 0; 


	while(1)
	{
		ret = HI_UNF_IR_GetValue(&pressStatus, &keyId, 2);

		if (0 == ret)
		{
			*key = keyId;
			break;
		}
		else
		{
			MLMF_Task_Sleep(2);
			continue;
		}
	}

//	printf("pressStatus[0x%x] keyid[0x%x] ret[0x%x]\n", pressStatus, keyId, ret);

	return ret;
}

static MBT_VOID MLMF_Blast_PollingTask(MBT_VOID *pvParam)
{	
	unsigned int receivedKey;
	
	while(gBlastTaskRun)
	{
		if(MLMF_Blast_CheckKey(&receivedKey) == 0)
		{
			if (gu16SystemCode != (receivedKey&0x0000ffff))
			{
				continue;
			}

			receivedKey = (receivedKey & (0xff << 16)) >> 16;   /*µÍ×Ö½Ú*/

			if (NULL != mlmp_pBCallback)
			{
		//		printf("receivedKey = [%x]\n",receivedKey);
				mlmp_pBCallback(receivedKey,MM_BLAST_PRESS);
			}
		}
	}
}


MBT_VOID MLMF_Blast_RegisterCallback(MBT_VOID (*pBCallback)(MBT_U16 u16key,MMT_BLAST_Status_E eStatus))
{
	mlmp_pBCallback = pBCallback;
}


MBT_VOID MLMF_Blast_SetSystemCode(MBT_U16 u16SystemCode)
{
	gu16SystemCode = u16SystemCode;
}


MMT_STB_ErrorCode_E MLF_BlastInit(MBT_VOID)
{
	HI_UNF_IR_Open();
	HI_UNF_IR_EnableKeyUp(0);
	HI_UNF_IR_EnableRepKey(1);
	HI_UNF_IR_SetRepKeyTimeoutAttr(235);
	HI_UNF_IR_SetCodeType(HI_UNF_IR_CODE_NEC_SIMPLE);
	HI_UNF_IR_Enable(1);

	gBlastTaskRun = 1;

	MLMF_Task_Create ( MLMF_Blast_PollingTask,
                                    MM_NULL,
                                    8192,
                                    7,
                                    &gBlasttaskid,
                                    "BlastPolling_task");

	return MM_NO_ERROR;
}


MMT_STB_ErrorCode_E MLF_BlastTerm(MBT_VOID)
{
	HI_UNF_IR_Close();
	gBlastTaskRun = 0;
	MLMF_Task_Sleep(500);
	MLMF_Task_Destroy(gBlasttaskid);
	
	return MM_NO_ERROR;
}


