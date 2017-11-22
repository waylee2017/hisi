#include "ui_share.h"
#if(OVT_FAC_MODE == 1)

#include "ovt_factest20.h"

static MBT_CHAR fagtime[20];
static MBT_U32 fac_sec, fac_min, fac_hour;
static MBT_U32 hour_record = 0;
#define COLOR_NUM 8;
//static MS_U32 colors[] ={Yellow,White,Pink,Orange,Green,Blue,Black,Red};
static MBT_U32 colors[] ={0xFFFFFF00,0xFFFFFFFF,0xFFFFC0CB,0xFFFFA500,0xFF008000,0xFF0000FF,0xFF080808,0xFFFF0000};


static MBT_VOID AgingTest_PlayPrg(MBT_VOID)
{
	MST_AV_StreamData_T PidList[3];
	MMT_STB_ErrorCode_E ret;
	PidList[0].Type = MM_STREAMTYPE_H264;/*other channel v116,a117,p118*/
	PidList[0].Pid = 0x114f;
	PidList[1].Type = MM_STREAMTYPE_MP1A;
	PidList[1].Pid = 0x1150;
	PidList[2].Type = MM_STREAMTYPE_PCR;
	PidList[2].Pid = 0x114f;
	
	ret = MLMF_Tuner_Lock(0,371,6875,MM_TUNER_QAM_64,NULL);//lock freq
	MLMF_Print("+++AgingTest_PlayPrg ret=%d\n",ret);
	MLMF_AV_Start(3,PidList,MM_TRUE,MM_NULL);//play pro
	MLMF_AV_OpenVideoWindow(); //正式软件的视频窗口在回调中打开，所以产测需要自己打开视频窗口
}

void facageTimetostring(MBT_U32 timesec)
{
	fac_sec = timesec % 60;
	timesec = timesec / 60;
	
	fac_min = timesec % 60;
	timesec = timesec / 60;

	fac_hour = timesec;

	sprintf(fagtime,"%02d:%02d:%02d",fac_hour,fac_min,fac_sec);
	
}

static void aging_test_show_time(int count)
{
	MBT_CHAR panel_string[7] = {0,0,0,0,0,0,0};
	static MBT_BOOL ledDspy =MM_FALSE;
	MBT_S32 s32FontWidth = 0;
	MBT_S32 s32FontHeight = 0;
	
	facageTimetostring(count);

	if(hour_record != fac_hour)
	{
		//过一个小时换一个色块显示
		MBT_U32 i = fac_hour%COLOR_NUM;
		WGUIF_DrawFilledRectangle(350,220,580,300,colors[i]);
		hour_record = fac_hour;
	}

	WGUIF_DrawFilledRectangle(300,570,680,120,FONT_FRONT_COLOR_BLACK);
	s32FontWidth = WGUIF_FNTGetTxtWidth(strlen(fagtime), fagtime);
	s32FontHeight = 56;
	WGUIF_SetFontHeight(s32FontHeight);
	WGUIF_FNTSetTxtMiddle(300,570,680,120,s32FontWidth,s32FontHeight,fagtime,FONT_FRONT_COLOR_WHITE);
	WGUIF_ReFreshLayer();
	//LED显示
	
	ledDspy = !ledDspy;
	//GTPL项目没有前面板
	sprintf(panel_string,"%02d%02d",fac_hour,fac_min);
	MLMF_FP_Display(panel_string,4,ledDspy);
	MLMF_FP_SetStandby(ledDspy);

}


static MBT_U32 last_show_time = 0;
inline static void ovt_timer_count(void)
{	   
	static MBT_U32 time_count = 0;
	MBT_U32 u32SysTime = MLMF_SYS_GetMS();
	MBT_U32 u32PassTime = u32SysTime - last_show_time;

	if (u32PassTime >= 1000)
	{
		aging_test_show_time(time_count++);
		last_show_time = u32SysTime;
	}

}


MBT_S32  uif_AgingTest( MBT_S32 iPara )
{
	MBT_S32 iRetKey = DUMMY_KEY_BACK;		
	MBT_BOOL bExit = MM_FALSE;

	//play av
	AgingTest_PlayPrg();
	WGUIF_ClsFullScreen();
    //MLMF_AV_SetVideoWindow(0,0,0,0);

	WGUIF_DrawFilledRectangle(350,220,580,300,colors[0]);
	while ( !bExit )
	{
		ovt_timer_count();
		MLMF_Task_Sleep(500);
	}
	return iRetKey;
}

static MBT_VOID FacMainTest_ClearScreen(MBT_VOID)
{
	WGUIF_DrawFilledRectangle(0,0,1280,720,0xff000000);
	WGUIF_DrawFilledRectExt(0,0,1280,720,0x00000000); //第二层设置为透明，否则第二层有水印图片显示
}

extern char facFPOK;
extern char facVideoOK;

MBT_S32  uif_FacMainTest( MBT_S32 iPara )
{
	MBT_S32 iRetKey = DUMMY_KEY_BACK;		
	MBT_BOOL bExit = MM_FALSE;
	MBT_S32	iKey ;
	MBT_U32 ledDspy = 0;
	MBT_U8 fpKeyValue[5]={0};

	MLMF_FP_Display("8888",4,MM_TRUE);
	WGUIF_ClsFullScreen();
    //MLMF_AV_SetVideoWindow(0,0,0,0);
	FacMainTest_ClearScreen();
	WGUIF_ReFreshLayer();
	ovt_fac_main_init();

	while ( !bExit )
	{
		ledDspy++;
		if(ledDspy%2)
		{
			MLMF_FP_Display("    ",4,MM_FALSE);
			MLMF_FP_SetLock(0);
			MLMF_FP_SetStandby(0);
		}
		else
		{
			MLMF_FP_Display("8888",4,MM_TRUE);
			MLMF_FP_SetLock(1);
			MLMF_FP_SetStandby(1);
		}

		iKey = uif_ReadKey (500);
		//MLMF_Print("+++key value=%d\n",iKey);

		switch(iKey)
		{
			case DUMMY_KEY_VOLUMEDN:
				fpKeyValue[0] = 1;
				break;
			case DUMMY_KEY_VOLUMEUP:
				fpKeyValue[1] = 1;
				break;
			case DUMMY_KEY_DNARROW:
				fpKeyValue[2] = 1;
				break;
			case DUMMY_KEY_UPARROW:
				fpKeyValue[3] = 1;
				break;
			case DUMMY_KEY_POWER:
				fpKeyValue[4] = 1;
				break;
			default:
				break;
		}

		
		/*按下的键画绿色色块，没按的键画蓝色色块*/
		if(fpKeyValue[0]==1)
		{
			WGUIF_DrawFilledRectangle(50, 10, 120, 200, 0xff00ff00);
		}else
		{
			WGUIF_DrawFilledRectangle(50, 10, 120, 200, 0xffffff00);
		}

		if(fpKeyValue[1]==1)
		{
			WGUIF_DrawFilledRectangle(250, 10, 120, 200, 0xff00ff00);
		}else
		{
			WGUIF_DrawFilledRectangle(250, 10, 120, 200, 0xffffff00);
		}

		if(fpKeyValue[2]==1)
		{
			WGUIF_DrawFilledRectangle(450, 10, 120, 200, 0xff00ff00);
		}else
		{
			WGUIF_DrawFilledRectangle(450, 10, 120, 200, 0xffffff00);
		}

		if(fpKeyValue[3]==1)
		{
			WGUIF_DrawFilledRectangle(650, 10, 120, 200, 0xff00ff00);
		}else
		{
			WGUIF_DrawFilledRectangle(650, 10, 120, 200, 0xffffff00);
		}

		if(fpKeyValue[4]==1)
		{
			WGUIF_DrawFilledRectangle(850, 10, 120, 200, 0xff00ff00);
		}else
		{
			WGUIF_DrawFilledRectangle(850, 10, 120, 200, 0xffffff00);
		}

		if(facVideoOK)
		{
			WGUIF_ReFreshLayer();
		}
		
		if((fpKeyValue[0]==1)&&(fpKeyValue[1]==1)&&(fpKeyValue[2]==1)&&(fpKeyValue[3]==1)&&(fpKeyValue[4]==1))
		{
			facFPOK = 1;
		}
	}
	return iRetKey;
}
#endif

