#include <stdio.h>
#include <hi_type.h>
#include <pthread.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <pthread.h>
#include <sys/time.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/time.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <pthread.h>
#include <assert.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/sendfile.h>
#include <dirent.h>
#include <sys/wait.h>

#include "hi_unf_common.h"
#include "hi_adp_mpi.h"



HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32 s32Ret = HI_FAILURE;
    HI_CHAR        *ChipName        = HI_NULL;
    HI_CHIP_VERSION_E   tmpChipVersion = 0;
    HI_SYS_VERSION_S stVersion = {0};
    HI_SYS_CHIP_ATTR_S stAttr = {0};
    
    memset(&stVersion, 0x0, sizeof(stVersion));
    memset(&stAttr, 0x0, sizeof(stAttr));
		
	s32Ret = HI_SYS_Init();
	if (HI_SUCCESS != s32Ret) 
	{
		printf("HI_SYS_Init failed\n");
		return s32Ret;
    }
    s32Ret = HI_SYS_GetVersion(&stVersion);
    if (HI_SUCCESS != s32Ret)
    {
	      printf("call HI_SYS_GetVersion failed\n");
	      return s32Ret; 
    }

    s32Ret = HI_SYS_GetChipAttr(&stAttr);
    if (HI_SUCCESS != s32Ret)
    {
       printf("call HI_SYS_GetChipAttr failed\n");
       return s32Ret;
    }
    
    switch (stVersion.enChipTypeHardWare)
    {
        case HI_CHIP_TYPE_HI3716M :
            ChipName = "Hi3716M";
            break;
        case HI_CHIP_TYPE_HI3716H :
            ChipName = "Hi3716H";
            break;
        case HI_CHIP_TYPE_HI3716C :
            ChipName = "Hi3716C";
            break;
        case HI_CHIP_TYPE_HI3716CES :
            ChipName = "Hi3716CES";
            break;
        case HI_CHIP_TYPE_HI3720 :
            ChipName = "Hi3720";
            break;
        case HI_CHIP_TYPE_HI3712 :
            ChipName = "Hi3712";
            break;
        case HI_CHIP_TYPE_HI3715 :
            ChipName = "Hi3715";
            break;
        case HI_CHIP_TYPE_HI3110E :
            ChipName = "Hi3110E";
            break;
        default:
            ChipName = "UNKNOWN";
    }
    switch (stVersion.enChipVersion)
    {
        case HI_CHIP_VERSION_V100 :
            tmpChipVersion = 0x100;
            break;
        case HI_CHIP_VERSION_V101:
            tmpChipVersion = 0x101;
            break;
        case HI_CHIP_VERSION_V200 :
            tmpChipVersion = 0x200;
            break;
        case HI_CHIP_VERSION_V300 :
            tmpChipVersion = 0x300;
            break;
        case HI_CHIP_VERSION_V310 :
            tmpChipVersion = 0x310;
            break;
        case HI_CHIP_VERSION_V320 :
            tmpChipVersion = 0x320;
            break;
        case HI_CHIP_VERSION_V330 :
            tmpChipVersion = 0x330;
            break;
        case HI_CHIP_VERSION_V500 :
            tmpChipVersion = 0x500;
            break;
        default:
            tmpChipVersion = 0x0;
    }

    printf("CHIP_VERSION: %s_v%x\n", ChipName, tmpChipVersion);
    printf("DOLBY: %s\n", (stAttr.bDolbySupport) ? "YES" : "NO");
    printf("DTS: %s\n", (stAttr.bDTSSupport) ? "YES" : "NO");     
    printf("ADVCA: %s\n", (stAttr.bADVCASupport) ? "YES" : "NO");
    printf("ROVI(Macrovision): %s\n", (stAttr.bMacrovisionSupport) ? "YES" : "NO");
    printf("CHIPID: %#llx\n", stAttr.u64ChipID);
    
	HI_SYS_DeInit();
	
    return s32Ret;
}


