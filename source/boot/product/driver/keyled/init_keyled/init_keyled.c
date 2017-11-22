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

#include "exports.h"
#include "hi_keyled_ct1642.h"



HI_VOID KEYLED_Ct1642Init(HI_VOID)
{
	HI_U32 tmpData=0X0;
	HI_S32 Ret;
	
	HI_KEYLED_Open();
	HI_KEYLED_Enable();

	Ret = HI_KEYLED_Display(tmpData);
	if (HI_SUCCESS != Ret)
	{
		//printf(" init keyled_ct1642 display failure ! \n");
	}
	
	HI_KEYLED_Close();
}




