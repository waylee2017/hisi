#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include "hi_type.h"
#include "RDAFM_5807X_drv_V4.0.h"
#include "parse_rds.h"
HI_VOID HIADP_Fm_SetI2cNum(HI_U32 I2cNum)
{	
	RDAFM_SetI2cNum(I2cNum);
}

HI_VOID HIADP_Fm_Init(HI_VOID)
{
	RDA5807X_Intialization();	
}

HI_S32 HIADP_Fm_Tune(HI_U32 Freq)
{
	if((Freq < 8800) && (Freq > 10800))
	{
		printf("Freq should between 8800 and 10800!\n");
        return -1;
	}

	RDA5807X_SetFreq(Freq);

	return 0;
}

HI_S32 HIADP_Fm_Seek(HI_U32 Freq)
{
	HI_BOOL bSeek = HI_FALSE;
	if((Freq < 8800) && (Freq > 10800))
	{
		printf("Freq should between 8800 and 10800!\n");
        return -1;
	}

	bSeek = RDA5807X_ValidStop(Freq);
	if(bSeek == HI_TRUE)
	{
		return 0;
	}
	else
	{
		return -1;
	}

}

HI_VOID HIADP_Fm_ControlRds(HI_BOOL bEnable)
{
	if(bEnable ==  HI_TRUE)
	{
		RDS_Open();
	}
	else
	{
		RDS_Close();
	}
}


HI_VOID HIADP_Fm_DeInit(HI_VOID)
{
	RDA5807X_PowerOffProc();
}
