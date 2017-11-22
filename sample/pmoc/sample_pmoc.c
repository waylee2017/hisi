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
#include "hi_unf_pmoc.h"

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

static HI_U32 g_u32CodeSize = 0;
static HI_U8 g_u8BinBuf[0x5800];  /*22KB buffer*/

static HI_U32 g_TimerCount = 0;
static HI_U8 g_DisplayMode = 2;
static HI_U32 g_RunningCount = 1;
static HI_U8 g_Scene = 0;
static HI_U8 g_IrType = 0;
static HI_U8 g_KeyledType = 2;
static HI_U8 g_WakingTime=0;  //in sec
static const char PID_FILE[] = "/dev/wifi/sample.pid";

//#define TEST_SMARTSTANDBY

HI_S32 LoadUsrBin(HI_VOID)
{
    FILE *fb;
    HI_U32 len;

    fb = fopen("./pm_8051.bin", "r");
    if (NULL == fb)
    {
        HI_INFO_PMOC("open file pm_8051.bin failed!\n");
        return HI_FAILURE;
    }

    fseek(fb, 0, SEEK_END);
    len = (HI_U32)ftell(fb);
    HI_INFO_PMOC("pmoc code len = %d \n", len);
    if (len > sizeof(g_u8BinBuf) / sizeof(HI_U8))
    {
        HI_INFO_PMOC("pm_8051.bin is bigger than %d Bytes!\n", sizeof(g_u8BinBuf) / sizeof(HI_U8));
        fclose(fb);
        return HI_FAILURE;
    }

    fseek(fb, 0, SEEK_SET);
    if (fread(g_u8BinBuf, 1, len, fb) != len)
    {
        HI_INFO_PMOC("fread err:%s :%d !\n", __FUNCTION__, __LINE__);
        fclose(fb);
        return HI_FAILURE;
    }

    fclose(fb);
    g_u32CodeSize = len;

    return HI_SUCCESS;
}

HI_S32  main(HI_S32 argc,HI_CHAR *argv[])
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
	
	if(9 == argc)
	{
		g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = strtol(argv[2],NULL,0);
        g_RunningCount = strtol(argv[3],NULL,0);
        g_Scene = strtol(argv[4],NULL,0);
        g_IrType = strtol(argv[5],NULL,0);
        g_KeyledType = strtol(argv[6],NULL,0);
        u8EthUsbStandbyMode = strtol(argv[7],NULL,0);
		g_WakingTime = strtol(argv[8],NULL,0);
		
	}
    else if (8 == argc)
    {
        g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = strtol(argv[2],NULL,0);
        g_RunningCount = strtol(argv[3],NULL,0);
        g_Scene = strtol(argv[4],NULL,0);
        g_IrType = strtol(argv[5],NULL,0);
        g_KeyledType = strtol(argv[6],NULL,0);
        u8EthUsbStandbyMode = strtol(argv[7],NULL,0);
    }
    else if (7 == argc)
    {
        g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = strtol(argv[2],NULL,0);
        g_RunningCount = strtol(argv[3],NULL,0);
        g_Scene = strtol(argv[4],NULL,0);
        g_IrType = strtol(argv[5],NULL,0);
        g_KeyledType = strtol(argv[6],NULL,0);
    }
    else if (6 == argc)
    {
        g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = strtol(argv[2],NULL,0);
        g_RunningCount = strtol(argv[3],NULL,0);
        g_Scene = strtol(argv[4],NULL,0);
        g_IrType = strtol(argv[5],NULL,0);
        g_KeyledType = 2;
    }
    else if (5 == argc)
    {
        g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = strtol(argv[2],NULL,0);
        g_RunningCount = strtol(argv[3],NULL,0);
        g_Scene = strtol(argv[4],NULL,0);
        g_IrType = 0;
        g_KeyledType = 2;
    }
    else if (4 == argc)
    {
        g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = strtol(argv[2],NULL,0);
        g_RunningCount = strtol(argv[3],NULL,0);
        g_Scene = 0;
        g_IrType = 0;
        g_KeyledType = 2;
    }
    else if (3 == argc)
    {
        g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = strtol(argv[2],NULL,0);
        g_RunningCount = 1;
        g_Scene = 0;
        g_IrType = 0;
        g_KeyledType = 2;
    }
    else if (2 == argc)
    {
        g_TimerCount  = strtol(argv[1],NULL,0);
        g_DisplayMode = 2;
        g_RunningCount = 1;
        g_Scene = 0;
        g_IrType = 0;
        g_KeyledType = 2;
    }
    else
    {
        printf("Usage: %s [TimerCnt] [Display] [RunningCnt] [Scene] [IR_Type] [KeyledType] [Eth&USB Type] [WakingTime]\n"
               "       TimerCnt: 0: Disable timer wake up; other: Wake up after TimeCnt seconds). \n"
               "       Display: 0: no display; 1: display number; 2: display time.\n"
               "       RunningCnt: the number of running.                      \n"
               "       Scene: 0: standard; 1: eth forward.                        \n"
               "       IR_Type: 0:nec simple; 1:tc9012; 2:nec full; 3:sony_12bit; 4:raw.\n"
               "       KeyledType: 0: pt6961; 1: ct1642; 2: pt6964; 3: fd650. 4.gpiokey\n"
               "       Eth&USB Type: 0: Disable; 1: Single packet; 2: Magic Packet; 3: Frame Filter. \n"
               "       WakingTime: time(in second) between 2 sleep if RunningCnt >=2. \n",
               
                argv[0]);
        printf("Example: %s 0 2 1 0 0 2 0 0\n", argv[0]);
        return HI_FAILURE;
    } 

    ret = HI_UNF_PMOC_Init();
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_Init err, 0x%08x !\n", ret);
        return ret;
    }

#if USR_BIN_SWITCH
    ret = LoadUsrBin();
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("call LoadUsrBin() err!\n");
        HI_UNF_PMOC_DeInit();
        return HI_FAILURE;
    }

    ret = HI_UNF_PMOC_LoadMcuCode(g_u8BinBuf, g_u32CodeSize);
	printf("+++++++++CodeSize=%d++++++++\n",g_u32CodeSize);
    if (HI_SUCCESS != ret)
    {
        HI_INFO_PMOC("HI_UNF_PMOC_LoadMcuCode err, 0x%08x !\n", ret);
        HI_UNF_PMOC_DeInit();
        return ret;
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

