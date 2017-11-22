#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <string.h>
#include <pthread.h>

#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>

#include <time.h>
#include "hi_unf_vo.h"
#include "hi_unf_avplay.h"
#include "hi_unf_pmoc.h"
#include "hi_unf_hdmi.h"
#include "hi_drv_hdmi.h"
#include "hi_adp_hdmi.h"
#include "hi_adp_search.h"
#include "hi_adp_tuner.h"
#include "hi_adp_mpi.h"
/*
when you want use your pm_8051.bin, please re-define USR_BIN_SWITCH to 1.
Also don't forget put pm_8051.bin to this path: "SDK\sample\pmoc"
*/
#define USR_BIN_SWITCH 0

#ifdef HI_ADVCA_FUNCTION_RELEASE
#define HI_INFO_PMOC(format, arg ...)
#else
#define HI_INFO_PMOC(format, arg ...) printf( format, ## arg)
#endif

typedef struct hiHDMI_ARGS_S
{
    HI_UNF_HDMI_ID_E  enHdmi;
    HI_UNF_ENC_FMT_E  enWantFmt;
    HI_UNF_SAMPLE_RATE_E AudioFreq;
    HI_U32            AduioBitPerSample;
    HI_U32            AudioChannelNum;
    HI_UNF_SND_INTERFACE_E AudioInputType;
    HI_U32            ForceHDMIFlag;
}HDMI_ARGS_S;

#ifdef CONFIG_SUPPORT_CA_RELEASE
#define sample_printf
#else
#define sample_printf printf
#endif

#define HDMI_STANDBY_FOLLOW_TV
#define NOT_DETECTED_CEC           1
#define DETECTED_BUT_NO_CEC        2
#define DETECTED_AND_WITH_CEC      3

#define IR_CHN_UP 0x35caff00
#define IR_CHN_DOWN 0x2dd2ff00
#define IR_VOL_UP 0X3ec1ff00
#define IR_VOL_DOWN 0x6699ff00
#define DEFAULT_DVB_PORT 0
#define THREAD_DELAY_TIME 50 * 1000 //50ms
#define VOL_MAX 100

static HI_U32 g_u32CodeSize = 0;
static HI_U8 g_u8BinBuf[0x5800];  /*22KB buffer*/

static HI_U32 g_TimerCount = 0;
static HI_U8 g_DisplayMode = 2;
static HI_U32 g_RunningCount = 1;
static HI_U8 g_Scene = 0;
static HI_U8 g_IrType = 0;
static HI_U8 g_KeyledType = 2;
static HI_U8 g_WakingTime=0;  //in sec

HI_UNF_HDMI_INIT_PARA_S g_stCallbackSleep;
static HDMI_ARGS_S g_stHdmiArgs;
HI_U32 nCecMode = NOT_DETECTED_CEC;
HI_BOOL g_bPrepareStandby = HI_FALSE;
HI_BOOL g_bStartStandby = HI_FALSE;
static HI_BOOL     g_bStopThread = HI_FALSE;
static pthread_mutex_t g_Mutex;
static pthread_t   g_StandbyThd;

static HI_S32 s_s32TaskRunning = 1;
static HI_S32 s_s32ChnNum  = 0;
static HI_S32 s_s32ProgNum = 0;
static HI_S32 s_s32Vol = 100;
static HI_HANDLE g_hAvplay;
PMT_COMPACT_TBL              *g_pProgTbl = HI_NULL;
HI_UNF_AVPLAY_STOP_OPT_S g_Stop;
HI_U32 g_TunerFreq;
HI_U32 g_TunerSrate;
HI_U32 g_TunerQam;
static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;
//#define TEST_SMARTSTANDBY

HI_VOID HDMI_Suspend_Callback(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData)
{
    HI_DRV_HDMI_STATUS_S stHdmiStatus;
    //if display support cec,it will goes connect/disconnect event,
    //or it will go hotplug/unplug event.
    switch ( event )
    {
        case HI_UNF_HDMI_EVENT_HOTPLUG:
            printf("HDMI_Suspend_Callback: hdmi hotplug\n");
            usleep(200*1000); //sleep 200ms, and then detect hdmi status again
            HI_UNF_HDMI_GetStatus(g_stHdmiArgs.enHdmi, &stHdmiStatus);
            if ((HI_TRUE == stHdmiStatus.bConnected) && (HI_TRUE == stHdmiStatus.bSinkPowerOn)) {
                printf("HDMI_Suspend_Callback: HDMI <HOTPLUG>, so cancel suspend timer\n");
            }
			g_bPrepareStandby = HI_FALSE;
            break;
        case HI_UNF_HDMI_EVENT_NO_PLUG:
            printf("HDMI_Suspend_Callback: hdmi unplug.prepare to standby!\n");
			g_bPrepareStandby = HI_TRUE;
            break;
        case HI_UNF_HDMI_EVENT_RSEN_CONNECT:
            printf("HDMI_Suspend_Callback: hdmi connected");
            HI_UNF_HDMI_CEC_STATUS_S cecStatus;
            HI_UNF_HDMI_CECStatus(g_stHdmiArgs.enHdmi,&cecStatus);
            if(cecStatus.bEnable == HI_TRUE) {
                nCecMode = DETECTED_AND_WITH_CEC;
            } else {
                nCecMode = DETECTED_BUT_NO_CEC;
            }
			g_bPrepareStandby = HI_FALSE;
            usleep(200*1000); //sleep 200ms, and then detect hdmi status again
            HI_UNF_HDMI_GetStatus(g_stHdmiArgs.enHdmi, &stHdmiStatus);
            if ((HI_TRUE == stHdmiStatus.bConnected) && (HI_TRUE == stHdmiStatus.bSinkPowerOn)) {
                printf("HDMI_Suspend_Callback: HDMI <RSEN_CONNECT>, so cancel suspend timer");
            }
            break;
        case HI_UNF_HDMI_EVENT_RSEN_DISCONNECT:
            printf("HDMI_Suspend_Callback: hdmi disconnected\n");
			g_bPrepareStandby = HI_TRUE;
            break;
        default:
            break;
        }

    return;
}

HI_VOID StandbyThread(HI_VOID *args)
{
    HI_S32                Ret;
	HI_U32 				  u32Cnt = 0;
    while (!g_bStopThread)
    {
        pthread_mutex_lock(&g_Mutex);

		if(g_bPrepareStandby == HI_TRUE)
		{
			u32Cnt++;
			if(u32Cnt >= 1000)
			{
				g_bStartStandby = HI_TRUE;
			}
			usleep(10*1000);
		}
		else
		{
			u32Cnt = 0;
			usleep(10*1000);
			pthread_mutex_unlock(&g_Mutex);
			continue;
		}
        pthread_mutex_unlock(&g_Mutex);
    }

    return;
}



static HI_S32 DVB_ProgUpDown(HI_S32 flag)
{
    if (flag)         // program up
    {
        ++s_s32ProgNum;
        if (s_s32ChnNum == s_s32ProgNum)
        {
            s_s32ProgNum = 0;
        }
    }
    else             // program down
    {
        s_s32ProgNum--;
        if (-1 == s_s32ProgNum)
        {
            s_s32ProgNum = s_s32ChnNum - 1;
        }
    }

    return 0;
}

static HI_S32 DVB_VolSet(HI_S32 flag)
{
    if (flag)           // add up vol
    {
        s_s32Vol += 5;
        if (s_s32Vol > VOL_MAX)
        {
            s_s32Vol = VOL_MAX;
        }
    }
    else               //Vol down
    {
        s_s32Vol -= 5;
        if (s_s32Vol < 0)
        {
            s_s32Vol = 0;
        }
    }

    return HI_UNF_SND_SetVolume(HI_UNF_SND_0, s_s32Vol);
}


static void * IR_ReceiveTask(void *args)
{
    HI_S32 s32Ret;
    HI_S32 s32LoopFlag = 0;
    HI_U64 u64KeyId;
    HI_UNF_KEY_STATUS_E PressStatus;

    while (s_s32TaskRunning)
    {
        /* get ir press codevalue & press status*/
        s32Ret = HI_UNF_IR_GetValue(&PressStatus, &u64KeyId, 0);
        if ((HI_SUCCESS != s32Ret) || (PressStatus == HI_UNF_KEY_STATUS_UP))
        {
            continue;
        }

        s32LoopFlag = 0;
        if (HI_SUCCESS == s32Ret)
        {
            switch (u64KeyId)
            {
            case IR_CHN_UP:
                DVB_ProgUpDown(1);
                s32LoopFlag = 1;
                break;

            case IR_CHN_DOWN:
                DVB_ProgUpDown(0);
                s32LoopFlag = 1;
                break;

            case IR_VOL_UP:
                DVB_VolSet(1);
                break;

            case IR_VOL_DOWN:
                DVB_VolSet(0);
                break;

            default:
                break;
            }

            if (1 == s32LoopFlag)
            {
                HIADP_AVPlay_PlayProg(g_hAvplay, g_pProgTbl, s_s32ProgNum, HI_TRUE);
            }

            s32Ret = HI_SUCCESS;
            usleep(THREAD_DELAY_TIME);
        }
    }
    return 0;
}

HI_S32  standby_test()
{
    HI_U32 i;
    HI_S32 ret;
    HI_U32 tmp, u32Period;
    time_t time0;
    struct tm *time1;
    HI_UNF_PMOC_MODE_E mode;
    HI_UNF_PMOC_WKUP_S wakeup = {
        0
    };
    HI_UNF_PMOC_DEV_TYPE_S devType = {
        HI_UNF_IR_CODE_NEC_SIMPLE, 
        HI_UNF_KEYLED_TYPE_CT1642
    };
    HI_UNF_PMOC_ACTUAL_WKUP_E actual;
    HI_UNF_PMOC_STANDBY_MODE_S standbyMode = {
        0
    };
    HI_UNF_PMOC_SCENE_E scene = HI_UNF_PMOC_SCENE_BUTT;

    HI_U8 u8EthUsbStandbyMode = 0;
	
	
	g_TimerCount  = 0;
    g_DisplayMode = 2;
    g_RunningCount = 1;
    g_Scene = 0;
    g_IrType = 0;
    g_KeyledType = 2;

    ret = HI_UNF_PMOC_Init();
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_Init err, 0x%08x !\n", ret);
        return ret;
    }

#ifdef HDMI_STANDBY_FOLLOW_TV
//	HIADP_HDMI_Init(HI_UNF_HDMI_ID_0, HI_UNF_ENC_FMT_1080i_50);
	g_stHdmiArgs.enHdmi = HI_UNF_HDMI_ID_0;
	g_stCallbackSleep.enForceMode = HI_UNF_HDMI_FORCE_HDMI;
	g_stCallbackSleep.pfnHdmiEventCallback = HDMI_Suspend_Callback;
    g_stCallbackSleep.pCallBackArgs = &g_stHdmiArgs;
    ret = HI_UNF_HDMI_RegCallbackFunc(HI_UNF_HDMI_ID_0, &g_stCallbackSleep);
    if (ret != HI_SUCCESS)
    {
        printf("HI_UNF_HDMI_RegCallbackFunc failed:%#x\n",ret);
		HI_UNF_PMOC_DeInit();
        return HI_FAILURE;
    }

#endif
   
    memset(&devType, 0, sizeof(HI_UNF_PMOC_DEV_TYPE_S));
    
    if (g_IrType == 4)
    {
        devType.irtype = HI_UNF_IR_CODE_RAW;
    }
    else if (g_IrType == 3)
    {
        devType.irtype = HI_UNF_IR_CODE_SONY_12BIT;
    }
    else if (g_IrType == 2)
    {
        devType.irtype = HI_UNF_IR_CODE_NEC_FULL;
    }
    else if (g_IrType == 1)
    {
        devType.irtype = HI_UNF_IR_CODE_TC9012;
    }
    else if (g_IrType == 0)
    {
        devType.irtype = HI_UNF_IR_CODE_NEC_SIMPLE;
    }
    
    if (g_KeyledType == 0)
    {
        devType.kltype = HI_UNF_KEYLED_TYPE_PT6961;
    }
    else if (g_KeyledType == 1)
    {
        devType.kltype = HI_UNF_KEYLED_TYPE_CT1642;
    }
    else if (g_KeyledType == 2)
    {
        devType.kltype = HI_UNF_KEYLED_TYPE_PT6964;
    }
    else if (g_KeyledType == 3)
    {
        devType.kltype = HI_UNF_KEYLED_TYPE_FD650;
    }
	else if (g_KeyledType == 4)
    {
        devType.kltype = HI_UNF_KEYLED_TYPE_GPIOKEY;
    }
    else
    {
        devType.kltype = HI_UNF_KEYLED_TYPE_CT1642;
    }

    ret = HI_UNF_PMOC_SetDevType(&devType);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_SetDevType err, 0x%08x !\n", ret);
        HI_UNF_PMOC_DeInit();
        return ret;
    }

    /*when the power supply of peripheral unit controled by gpio, call func as follow for save energy */
#if 0
    ret = HI_UNF_PMOC_SetPwrOffGpio(xx, xx);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_SetPwrOffGpio err, 0x%08x !\n", ret);
        HI_UNF_PMOC_DeInit();
        return ret;
    }
#endif
       
    // 2
    memset(&wakeup, 0, sizeof(HI_UNF_PMOC_WKUP_S));

    if (0 == g_TimerCount)
    {
        wakeup.u32WakeUpTime = 0xffffffff;
    }
    else
    {
        wakeup.u32WakeUpTime = g_TimerCount;
    }
    
    // 2.1
    if (devType.irtype == HI_UNF_IR_CODE_RAW)
    {
    	 // Here is ir powerkey codevalues of support
        wakeup.u32IrPmocNum = 6;
        wakeup.u32IrPowerKey0[0] = 0x6d92ff00; //nec simple key 1
    	wakeup.u32IrPowerKey1[0] = 0x0;
    	wakeup.u32IrPowerKey0[1] = 0x639cff00; //nec simple key 2
    	wakeup.u32IrPowerKey1[1] = 0x0;    
    	wakeup.u32IrPowerKey0[2] = 0x00000100; //nec full huizhou like
    	wakeup.u32IrPowerKey1[2] = 0x0;  
    	wakeup.u32IrPowerKey0[3] = 0x8010260c; // RC6 32bit
    	wakeup.u32IrPowerKey1[3] = 0x0000001c;
    	wakeup.u32IrPowerKey0[4] = 0x0000000c; // RC5 14bit
    	wakeup.u32IrPowerKey1[4] = 0x00000000;
    	wakeup.u32IrPowerKey0[5] = 0x544e4a58;//0x58535754; // nec full dezhou like
    	wakeup.u32IrPowerKey1[5] = 0x00005750;  
    }
    else if (devType.irtype == HI_UNF_IR_CODE_SONY_12BIT)
    {
        wakeup.u32IrPmocNum = 1;
        wakeup.u32IrPowerKey0[0] = 0x00000095;
        wakeup.u32IrPowerKey1[0] = 0x0;
    }
    else if (devType.irtype == HI_UNF_IR_CODE_NEC_FULL)
    {
        wakeup.u32IrPmocNum = 1;
        wakeup.u32IrPowerKey0[0] = 0x58595a53;
        wakeup.u32IrPowerKey1[0] = 0x5750;
    }
    else if (devType.irtype == HI_UNF_IR_CODE_TC9012)
    {
        wakeup.u32IrPmocNum = 1;
        wakeup.u32IrPowerKey0[0] = 0xf30c0e0e; //tc9012;
        wakeup.u32IrPowerKey1[0] = 0x0;
    }
    else
    {
        wakeup.u32IrPmocNum = 1;
        wakeup.u32IrPowerKey0[0] = 0x639cff00;
        wakeup.u32IrPowerKey1[0] = 0x0;
    }

    // 2.2
    if (devType.kltype == HI_UNF_KEYLED_TYPE_PT6961 || devType.kltype == HI_UNF_KEYLED_TYPE_CT1642)
    {
        wakeup.u32KeypadPowerKey = 0x8;
    }
    else if (devType.kltype == HI_UNF_KEYLED_TYPE_PT6964)
    {
        wakeup.u32KeypadPowerKey = 0x10;
    }
    else if(devType.kltype == HI_UNF_KEYLED_TYPE_FD650)
    {
        wakeup.u32KeypadPowerKey = 0x57;
    }
    else
    {
        wakeup.u32KeypadPowerKey = 0x0;
    }
 
    if (1 == u8EthUsbStandbyMode)
    {
        wakeup.stNetwork.u8EthIndex = HI_UNF_PMOC_ETH_0 | HI_UNF_PMOC_ETH_1; 
        wakeup.stNetwork.bUcPacketEnable = HI_TRUE;
    }
    else if (2 == u8EthUsbStandbyMode)
    {
        wakeup.stNetwork.u8EthIndex = HI_UNF_PMOC_ETH_0 | HI_UNF_PMOC_ETH_1; 
        wakeup.stNetwork.bMagicPacketEnable = HI_TRUE;        
    }
    else if (3 == u8EthUsbStandbyMode)
    {
	    wakeup.stNetwork.u8EthIndex = HI_UNF_PMOC_ETH_0 | HI_UNF_PMOC_ETH_1;
	    wakeup.stNetwork.bWakeupFrameEnable = HI_TRUE;
	
		wakeup.stNetwork.stFrame[0].bFilterValid =  HI_TRUE ;
		wakeup.stNetwork.stFrame[0].u32MaskBytes = 0x01;
		wakeup.stNetwork.stFrame[0].u8Offset = 14;
		wakeup.stNetwork.stFrame[0].u8Value[0] = 0x5c ;
    }

//	wakeup.bResumeResetEnable = 1;

#ifdef TEST_SMARTSTANDBY
        printf("-----Enter Smartstandby!----\n");
		sleep(1);
		HI_UNF_PMOC_EnterSmartStandby(0);
		sleep(8);
		wakeup.bWakeupNoVideoOutput=1;
		printf("-----Enter Realstandby!-----\n");
		sleep(1);
#endif

	wakeup.bGpioWakeUpEnable= 1;
	wakeup.u32GpioNo=0x10;//2d;
 //   wakeup.u32KeypadPowerKey = 0x1;
    ret = HI_UNF_PMOC_SetWakeUpAttr(&wakeup);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_SetWakeUpAttr err, 0x%08x !\n", ret);
        HI_UNF_PMOC_DeInit();
        return ret;
    }

    ret = HI_UNF_PMOC_SetScene(g_Scene);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_SetScene err, 0x%08x !\n", ret);
        HI_UNF_PMOC_DeInit();
        return ret;
    }

    memset(&standbyMode, 0, sizeof(HI_UNF_PMOC_STANDBY_MODE_S));

   
    standbyMode.u32Mode = g_DisplayMode;
    if (g_DisplayMode == 1)
    {
        standbyMode.u32DispCode = 1234;
    }
    else if (g_DisplayMode == 2)
    {
        ret = time(&time0);
        if (ret == -1)
        {
            standbyMode.stTimeInfo.u32Hour = 6;
            standbyMode.stTimeInfo.u32Minute = 9;
            standbyMode.stTimeInfo.u32Second = 36;
        }
        else
        {
            time1 = gmtime(&time0);
            standbyMode.stTimeInfo.u32Hour = (HI_U32)time1->tm_hour;
            standbyMode.stTimeInfo.u32Minute = (HI_U32)time1->tm_min;
            standbyMode.stTimeInfo.u32Second = (HI_U32)time1->tm_sec;
        }
    }
    
    ret = HI_UNF_PMOC_SetStandbyDispMode(&standbyMode);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_SetStandbyDispMode err, 0x%08x !\n", ret);
        HI_UNF_PMOC_DeInit();
        return ret;
    }

	pthread_mutex_init(&g_Mutex,NULL);
    g_bStopThread = HI_FALSE;
	g_bPrepareStandby = HI_FALSE;
	g_bStartStandby = HI_FALSE;
    pthread_create(&g_StandbyThd, HI_NULL, (HI_VOID *)StandbyThread, HI_NULL);

	while(1)
	{
		if(g_bStartStandby == HI_TRUE)
		{
			printf("start standby!\n");
			break;
		}
		else
		{
			usleep(10*1000);
			continue;
		}
	}
	
    g_bStopThread = HI_TRUE;
    pthread_join(g_StandbyThd, HI_NULL);
    pthread_mutex_destroy(&g_Mutex);
	printf("quit thread!\n");
    for (i = 0; i < g_RunningCount; i++)
    {     

        mode = HI_UNF_PMOC_MODE_SLOW;
        ret  = HI_UNF_PMOC_SwitchSystemMode(mode, &actual);
        if (HI_SUCCESS != ret)
        {
            HI_INFO_PMOC("HI_UNF_PMOC_SwitchSystemMode err, 0x%08x !\n", ret);
            HI_UNF_PMOC_DeInit();
            return ret;
        }
        
        if (actual == HI_UNF_PMOC_WKUP_IR)
        {
            HI_INFO_PMOC("wakeup by ir !!!\n");
        }
        else if (actual == HI_UNF_PMOC_WKUP_KEYLED)
        {
            HI_INFO_PMOC("wakeup by key !!!\n");
        }
        else if (actual == HI_UNF_PMOC_WKUP_TIMEOUT)
        {
            HI_INFO_PMOC("wakeup by timeout !!!\n");
        }
        else if (actual == HI_UNF_PMOC_WKUP_ETH)
        {
            HI_INFO_PMOC("wakeup by ethernet !!!\n");
        }
        else
        {
            HI_INFO_PMOC("wakeup by no mode ??? \n");
        }

        HI_UNF_PMOC_GetStandbyPeriod(&u32Period);
        
        HI_INFO_PMOC("\n standby period = %d \n", u32Period);
        
        HI_INFO_PMOC("%%%%%%%% cnt = %d %%%%%%%% \n", i);
		if(g_WakingTime)
			sleep(g_WakingTime);
    }

#ifdef TEST_SMARTSTANDBY
	 printf("Wake up from Realstandby!Vedio will not output when wake up by timer mode!\n");
	 sleep(8);

	 wakeup.bWakeupNoVideoOutput=0;

	 HI_UNF_PMOC_SetWakeUpAttr(&wakeup);

	 HI_UNF_PMOC_QuitSmartStandby();
	 printf("----Wake up from smartstandby!---\n");
#endif	 
    HI_UNF_PMOC_DeInit();

    return HI_SUCCESS;
}

HI_S32 main(HI_S32 argc, HI_CHAR *argv[])
{
    HI_S32 Ret;
    HI_HANDLE hWin;
    HI_UNF_AVPLAY_ATTR_S AvplayAttr;
    HI_UNF_SYNC_ATTR_S SyncAttr;
    HI_CHAR InputCmd[32];

    pthread_t IrThread;

    if (5 == argc)
    {
        g_TunerFreq  = strtol(argv[1], NULL, 0);
        g_TunerSrate = strtol(argv[2], NULL, 0);
        g_TunerQam = strtol(argv[3], NULL, 0);
        g_enDefaultFmt = HIADP_Disp_StrToFmt(argv[4]);
    }
    else if (4 == argc)
    {
        g_TunerFreq  = strtol(argv[1], NULL, 0);
        g_TunerSrate = strtol(argv[2], NULL, 0);
        g_TunerQam = strtol(argv[3], NULL, 0);
    }
    else if (3 == argc)
    {
        g_TunerFreq  = strtol(argv[1], NULL, 0);
        g_TunerSrate = strtol(argv[2], NULL, 0);
        g_TunerQam = 64;
    }
    else if (2 == argc)
    {
        g_TunerFreq  = strtol(argv[1], NULL, 0);
        g_TunerSrate = 6875;
        g_TunerQam = 64;
    }
    else
    {
        printf("Usage: sample_dvbplay freq [srate] [qamtype] [vo_format]\n"
               "       qamtype:16|32|[64]|128|256|512\n"
               "       vo_format:1080P_60|1080P_50|1080i_60|[1080i_50]|720P_60|720P_50\n");
        printf("Example:./sample_dvbplay 610 6875 64 1080i_50\n");
        return HI_FAILURE;
    }

    Ret = HI_SYS_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        return Ret;
    }

    Ret = HI_UNF_IR_Open();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto SYS_DEINIT;
    }

    Ret = HI_UNF_IR_EnableKeyUp(HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto IR_CLOSE;
    }

    Ret = HI_UNF_IR_SetRepKeyTimeoutAttr(300);   //???  108< parament   <65536
    if (HI_SUCCESS != Ret)
    {
        sample_printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto IR_CLOSE;
    }

    Ret = HI_UNF_IR_EnableRepKey(HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto IR_CLOSE;
    }

    Ret = HI_UNF_IR_Enable(HI_TRUE);    
    if (HI_SUCCESS != Ret)
    {
        sample_printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto IR_CLOSE;
    }

    /******************************************************************************
                                 HI_AVPALY_NINT

    ******************************************************************************/

    Ret = HIADP_Snd_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Snd_Init failed.\n");
        goto IR_CLOSE;
    }

    Ret = HIADP_Disp_Init(g_enDefaultFmt);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Disp_DeInit failed.\n");
        goto SND_DEINIT;
    }

    Ret = HIADP_VO_Init(HI_UNF_VO_DEV_MODE_NORMAL);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call  HIADP_VO_Init failed.\n");
        goto DISP_DEINIT;
    }

    Ret = HIADP_VO_CreatWin(HI_NULL, &hWin);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_VO_CreatWin failed.\n");
        goto  VO_DEINIT;
    }

    Ret = HI_UNF_DMX_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_DMX_Init failed.\n");
        goto  VO_DESTROYWIN;
    }

    Ret = HI_UNF_DMX_AttachTSPort(0, DEFAULT_DVB_PORT);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_DMX_AttachTSPort failed.\n");
        goto DMX_DEINIT;
    }

    Ret = HIADP_Tuner_Init();
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Demux_Init failed.\n");
        goto DMX_DETACH;
    }

    Ret = HIADP_Tuner_Connect(TUNER_USE, g_TunerFreq, g_TunerSrate, g_TunerQam);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Tuner_Connect failed.\n");
        goto TUNER_DEINIT;
    }

    HIADP_Search_Init();
    Ret = HIADP_Search_GetAllPmt(0, &g_pProgTbl);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HIADP_Search_GetAllPmt failed\n");
        goto HIADP_Search_DeInit;
    }

    Ret = HIADP_AVPlay_RegADecLib();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call  HIADP_AVPlay_RegADecLib failed.\n");
        goto  PSISI_FREE;
    }

    Ret = HI_UNF_AVPLAY_Init();
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Init failed.\n");
        goto  PSISI_FREE;
    }

    Ret  = HI_UNF_AVPLAY_GetDefaultConfig(&AvplayAttr, HI_UNF_AVPLAY_STREAM_TYPE_TS);
    Ret |= HI_UNF_AVPLAY_Create(&AvplayAttr, &g_hAvplay);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_Create failed.\n");
        goto AVPLAY_DEINIT;
    }

    Ret  = HI_UNF_AVPLAY_ChnOpen(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID, HI_NULL);
    Ret |= HI_UNF_AVPLAY_ChnOpen(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_AUD, HI_NULL);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_AVPLAY_ChnOpen failed.\n");
        goto AVPLAY_DESTROY;
    }

    Ret = HI_UNF_VO_AttachWindow(hWin, g_hAvplay);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_AttachWindow failed.\n");
        goto CHN_CLOSE;
    }

    Ret = HI_UNF_VO_SetWindowEnable(hWin, HI_TRUE);
    if (HI_SUCCESS != Ret)
    {
        sample_printf("call HI_UNF_VO_SetWindowEnable failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_SND_Attach(HI_UNF_SND_0, g_hAvplay, HI_UNF_SND_MIX_TYPE_MASTER, VOL_MAX); /*default value: 100 MAX*/
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_SND_Attach failed.\n");
        goto WIN_DETACH;
    }

    Ret = HI_UNF_AVPLAY_GetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    SyncAttr.enSyncRef = HI_UNF_SYNC_REF_AUDIO;
    SyncAttr.stSyncStartRegion.s32VidPlusTime = 60;
    SyncAttr.stSyncStartRegion.s32VidNegativeTime = -20;
    SyncAttr.bQuickOutput = HI_FALSE;
    Ret = HI_UNF_AVPLAY_SetAttr(g_hAvplay, HI_UNF_AVPLAY_ATTR_ID_SYNC, &SyncAttr);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call HI_UNF_AVPLAY_SetAttr failed.\n");
        goto SND_DETACH;
    }

    Ret = HIADP_AVPlay_PlayProg(g_hAvplay, g_pProgTbl, s_s32ProgNum, HI_TRUE);
    if (Ret != HI_SUCCESS)
    {
        sample_printf("call SwitchProg failed.\n");
        goto AVPLAY_STOP;
    }

    s_s32ChnNum = g_pProgTbl->prog_num;

    /******************************************************************************
                                  create IR thread

    ******************************************************************************/

    Ret = pthread_create(&IrThread, NULL, IR_ReceiveTask, NULL);
    if (0 != Ret)
    {
        sample_printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        perror("pthread_create");
        goto AVPLAY_STOP;
    }
	standby_test();
    while (1)
    {
        printf("please input the q to quit!\n");
        fgets(InputCmd, 30, stdin);

        if ('q' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }
    }

    /*exit the three threads that ledTaskid and keyTaskid IrThread */
    s_s32TaskRunning = 0;
ERR1:
    pthread_join(IrThread, 0);

AVPLAY_STOP:
    g_Stop.enMode = HI_UNF_AVPLAY_STOP_MODE_BLACK;
    g_Stop.u32TimeoutMs = 0;
    HI_UNF_AVPLAY_Stop(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD, &g_Stop);

SND_DETACH:
    HI_UNF_SND_Detach(HI_UNF_SND_0, g_hAvplay);

WIN_DETACH:
    HI_UNF_VO_SetWindowEnable(hWin, HI_FALSE);
    HI_UNF_VO_DetachWindow(hWin, g_hAvplay);

CHN_CLOSE:
    HI_UNF_AVPLAY_ChnClose(g_hAvplay, HI_UNF_AVPLAY_MEDIA_CHAN_VID | HI_UNF_AVPLAY_MEDIA_CHAN_AUD);

AVPLAY_DESTROY:
    HI_UNF_AVPLAY_Destroy(g_hAvplay);

AVPLAY_DEINIT:
    HI_UNF_AVPLAY_DeInit();

PSISI_FREE:
    HIADP_Search_FreeAllPmt(g_pProgTbl);

HIADP_Search_DeInit:
    HIADP_Search_DeInit();

TUNER_DEINIT:
    HIADP_Tuner_DeInit();

DMX_DETACH:
    HI_UNF_DMX_DetachTSPort(0);

DMX_DEINIT:
    HI_UNF_DMX_DeInit();

VO_DESTROYWIN:
    HI_UNF_VO_DestroyWindow(hWin);

VO_DEINIT:
    HIADP_VO_DeInit();

DISP_DEINIT:
    HIADP_Disp_DeInit();

SND_DEINIT:
    HIADP_Snd_DeInit();

IR_CLOSE:
    HI_UNF_IR_Close();

SYS_DEINIT:
    HI_SYS_DeInit();

    return Ret;
}

