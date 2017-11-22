#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/times.h>
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


#include "hi_unf_common.h"
#include "hi_unf_ecs.h"
#include "hi_adp_fm.h"

//static pthread_t   g_FmRdsThd;
//static pthread_mutex_t g_FmMutex;
//static HI_BOOL     g_bStopThread = HI_FALSE;


HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
	HI_S32                  Ret;	
	HI_U32 	u32I2cNum = 0;
	HI_U8 j=0;
	HI_U16 freq;
	HI_U32 control_gpionum = 3; //GPIO0_3
    HI_U16 stations[40] = {0};
	
	HI_SYS_Init();

	Ret = HI_UNF_I2C_Init();
	if (HI_SUCCESS != Ret)
	{
		printf("call HIADP_Snd_Init failed.\n");
		return -1;
	}
	
	Ret = HI_UNF_GPIO_Open();

	Ret |= HI_UNF_GPIO_SetDirBit(control_gpionum, HI_FALSE); /*set gpio direction is output*/

 	Ret |= HI_UNF_GPIO_WriteBit(control_gpionum, HI_FALSE);

	Ret =HI_UNF_I2C_CreateGpioI2c(&u32I2cNum,0,0,6,4);  //scl:gpio0_6, sda:gpio0_4
	if(Ret)
	{
		printf("call HIADP_Snd_Init failed.\n");
		goto ERR1;
	}
		
	HIADP_Fm_SetI2cNum(u32I2cNum);
	
	HIADP_Fm_Init();

	HIADP_Fm_ControlRds(HI_TRUE);
	
	HIADP_Fm_Tune(9200);
	getchar();
	for (freq=8750; freq<=10800; freq+=10)
        {
    	if(freq ==10800)
			freq = 8750;
        if (HI_SUCCESS == HIADP_Fm_Seek(freq))
        {
            stations[j] = freq;
            j++;
            printf("Found station : %d\n", freq);
			HIADP_Fm_Tune(freq);
			sleep(5);
        }
		usleep(10000);
        }
	printf("Press any key to exit!\n");
	getchar();
	HI_UNF_GPIO_WriteBit(control_gpionum, HI_TRUE);
	HIADP_Fm_ControlRds(HI_FALSE);

	HI_UNF_GPIO_Close();
	HIADP_Fm_DeInit();
ERR1:
	HI_UNF_I2C_DeInit();
	HI_SYS_DeInit();
	return HI_SUCCESS;
}




