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

#include "hi_unf_gpio.h"
#include "hi_adp_boardcfg.h"

#if  defined(CHIP_TYPE_hi3716mv310) || defined(CHIP_TYPE_hi3110ev500) || defined (CHIP_TYPE_hi3716mv330)
#define MULIT_CONFIG_BASE 0x10203000
#define SIM0_GPIO  (MULIT_CONFIG_BASE + 0x03c)
#define TEST_GPIO_NUM (1*8+1)
#else
#error YOU MUST DEFINE  BOARD_TYPE!
#endif

#if  defined(CHIP_TYPE_hi3716mv310) || defined (CHIP_TYPE_hi3716mv330)
#define OUT_GPIO_NUM (5*8+5)
#elif defined(CHIP_TYPE_hi3110ev500) 
#define OUT_GPIO_NUM 7
#endif
//static HI_U32 g_u32Multi_useRegAddr = 0;
static HI_U32 g_u32GpioConfigValue[3] = {0};


/* you need make sure the multi-purpose pin config gpio mode before using gpio function.configing register please reference hardware user manual*/
static HI_VOID ConfigGpioPinMux(void)
{
        HI_SYS_ReadRegister(SIM0_GPIO, &g_u32GpioConfigValue[0]); /*store old pin function define */
        HI_SYS_WriteRegister(SIM0_GPIO, 0x2);   /*config 0x1020309c is 0x0 ,gpio10_1  */
}

/* you don't resume the pin function if the pin  all use to gpio,otherwise you deed resume the pin functin with old function*/
static HI_VOID RestoreGpioPinMux(void)
{
        HI_SYS_WriteRegister(SIM0_GPIO, g_u32GpioConfigValue[0]); /* resume the pin functin with old function */
}

HI_S32  main(int argc, char *argv[])
{
    HI_S32  Ret;
    HI_CHAR u8IntTestFlag;

    HI_U32 i, u32IntWaitTime = 2000;
    HI_U32 u32TestGpioNum,u32OutGpioNum;

    HI_U32 u32IntValue = 0xff;
//    HI_BOOL ReadBitVal = 0;

    ConfigGpioPinMux();

    u32TestGpioNum = TEST_GPIO_NUM;

	u32OutGpioNum = OUT_GPIO_NUM;

    Ret = HI_UNF_GPIO_Open();
    if (HI_SUCCESS != Ret)
    {
        printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto ERR0;
    }
    

    Ret = HI_UNF_GPIO_SetDirBit(u32OutGpioNum, HI_FALSE); /*set gpio direction is output*/
    if (HI_SUCCESS != Ret)
    {
        printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto ERR1;
    }
    

    Ret = HI_UNF_GPIO_WriteBit(u32OutGpioNum, HI_TRUE);

	sleep(3);

	Ret = HI_UNF_GPIO_WriteBit(u32OutGpioNum, HI_FALSE);
    if (HI_SUCCESS != Ret)
    {
        printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
        goto ERR1;
    }

    printf("if you want test gpio interruput function please input 'y',else input any other key to exit sample_gpio.\n");
    u8IntTestFlag = getchar();

    if ('y' == u8IntTestFlag)
    {
        printf("\033[0;31m"  "Note: The programe must exist normally.\n" \
   			     "Sci port0 of demo board wont't work if you interrupt the program by pressing Ctrl+C.\n" \
			     "Because the SIM0_DET is configed to GPIO1_1 function.If sci0 can't work, you can restart \n" \
			     "system to resume sci0 function.\n" \
			     "\033[0m");

        Ret = HI_UNF_GPIO_SetDirBit(u32TestGpioNum, HI_TRUE); /* set GPIO10_1 direction is input*/
        if (HI_SUCCESS != Ret)
        {
            printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
            goto ERR1;
        }
             
        Ret = HI_UNF_GPIO_SetIntType( u32TestGpioNum, HI_UNF_GPIO_INTTYPE_UP);    /*set gpio interruput type*/
        if (HI_SUCCESS != Ret)
        {
            printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
            goto ERR1;
        }

        Ret = HI_UNF_GPIO_SetIntEnable( u32TestGpioNum, HI_TRUE);
        if (HI_SUCCESS != Ret)
        {
            printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
            goto ERR1;
        }

        printf("waiting INT occur 10 times, waiting time = %dms each time \n",u32IntWaitTime);

        for (i=0; i<10; i++)
        {
            Ret = HI_UNF_GPIO_QueryInt( &u32IntValue , u32IntWaitTime);
            if (HI_SUCCESS == Ret)
            {
                 printf("sample_gpio: GPIO%d_%d INT%d occur......\n", (u32IntValue/8), (u32IntValue%8), i);
            }
            else
            {
                 printf("sample_gpio: waited INT%d timeout......\n", i);
            }
        }
        
        Ret = HI_UNF_GPIO_SetIntEnable( u32TestGpioNum, HI_FALSE);
        if (HI_SUCCESS != Ret)
        {
            printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
            goto ERR1;
        }
                   
    }
    
ERR1:
    Ret = HI_UNF_GPIO_Close();
    if (HI_SUCCESS != Ret)
    {
        printf("%s: %d ErrorCode=0x%x\n", __FILE__, __LINE__, Ret);
		RestoreGpioPinMux();
        return Ret;
    }
    
ERR0:
    RestoreGpioPinMux();
    
    return Ret;
}

