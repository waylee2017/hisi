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
#include <sys/time.h>



#include "hi_unf_common.h"
#include "hi_unf_avplay.h"
#include "hi_unf_sound.h"
#include "hi_unf_disp.h"
#include "hi_unf_vo.h"
#include "hi_unf_hdmi.h"
#include "hi_unf_demux.h"
#include "hi_unf_ecs.h"
#include "hi_unf_common.h"
#include "hi_psi_si.h"
#include "hi_unf_pvr.h"

static HI_UNF_ENC_FMT_E   g_enDefaultFmt = HI_UNF_ENC_FMT_1080i_50;


static HI_VOID HDMI_Event_Proc(HI_UNF_HDMI_EVENT_TYPE_E event, HI_VOID *pPrivateData)
{
    printf("sub process event\n");
}

static HI_S32 Sub_HDMI_Init(HI_UNF_HDMI_ID_E enHDMIId)
{
    HI_U32 Ret = HI_FAILURE;
    HI_UNF_HDMI_INIT_PARA_S stHdmiInitParam;
    
    printf("subprocess running...\n");
    stHdmiInitParam.pfnHdmiEventCallback = HDMI_Event_Proc;
    stHdmiInitParam.pCallBackArgs        = NULL;
    stHdmiInitParam.enForceMode          = HI_UNF_HDMI_FORCE_NULL;
    printf("HDMI Init Mode:%d\n", stHdmiInitParam.enForceMode);
    Ret = HI_UNF_HDMI_Init(&stHdmiInitParam);
    if (HI_SUCCESS != Ret)
    {
        printf("HI_UNF_HDMI_Init failed:%#x\n",Ret);
        return HI_FAILURE;
    }

    Ret = HI_UNF_HDMI_Open(enHDMIId);
    if (Ret != HI_SUCCESS)
    {
        printf("HI_UNF_HDMI_Open failed:%#x\n",Ret);
        HI_UNF_HDMI_DeInit();
        return HI_FAILURE;
    }
    
    return HI_SUCCESS;
}


static HI_S32 Sub_HDMI_DeInit(HI_UNF_HDMI_ID_E enHDMIId)
{
    HI_UNF_HDMI_Stop(enHDMIId);
    HI_UNF_HDMI_Close(enHDMIId);
    HI_UNF_HDMI_DeInit();

    return HI_SUCCESS;
}

static HI_S32 Unf_disFormat(HI_UNF_ENC_FMT_E Fmt)
{
    HI_S32 ret = 0;
    
    printf("sub set disp HD0 format Fmt:%d\n", Fmt);
    ret = HI_UNF_DISP_SetFormat(HI_UNF_DISPLAY1, Fmt);
    if(HI_SUCCESS != ret)
    {
        printf("call HI_UNF_DISP_SetFormat HI_UNF_DISPLAY1 failed.\n");
        HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
        HI_UNF_DISP_DeInit();
        return ret;
    }
    printf("sub set disp SD0 format\n");
    if ((HI_UNF_ENC_FMT_1080P_60 == Fmt)
        ||(HI_UNF_ENC_FMT_1080i_60 == Fmt)
        ||(HI_UNF_ENC_FMT_720P_60 == Fmt)
        ||(HI_UNF_ENC_FMT_480P_60 == Fmt))
    {
        ret = HI_UNF_DISP_SetFormat(HI_UNF_DISPLAY0, HI_UNF_ENC_FMT_NTSC);
        if (HI_SUCCESS != ret)
        {
            printf("call HI_UNF_DISP_SetFormat HI_UNF_DISPLAY0 NTSC failed.\n");
            HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
            HI_UNF_DISP_DeInit();
            return ret;
        }
    }

    if ((HI_UNF_ENC_FMT_1080P_50 == Fmt)
        ||(HI_UNF_ENC_FMT_1080i_50 == Fmt)
        ||(HI_UNF_ENC_FMT_720P_50 == Fmt)
        ||(HI_UNF_ENC_FMT_576P_50 == Fmt))
    {
        HI_UNF_DISP_SetFormat(HI_UNF_DISPLAY0, HI_UNF_ENC_FMT_PAL);
        if (HI_SUCCESS != ret)
        {
            printf("call HI_UNF_DISP_SetFormat HI_UNF_DISPLAY0 PAL failed.\n");
            HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
            HI_UNF_DISP_DeInit();
            return ret;
        }
    }
    return HI_SUCCESS;    
}

static HI_S32 Unf_disInit(void)
{
    HI_S32 ret = 0;
    
    ret = HI_UNF_DISP_Init();
    if(HI_SUCCESS != ret)
    {
        return ret;
    }
    ret = HI_UNF_DISP_Open(HI_UNF_DISPLAY1);
    if(HI_SUCCESS != ret)
    {
        return ret;
    }

    ret = HI_UNF_DISP_Open(HI_UNF_DISPLAY0);
    if(HI_SUCCESS != ret)
    {
        return ret;
    }
    
    ret = Sub_HDMI_Init(HI_UNF_HDMI_ID_0);
    sleep(1);
#if 0    
    Unf_disFormat(g_enDefaultFmt);
#endif

   return HI_SUCCESS;
}

HI_S32 main(HI_S32 argc,HI_CHAR *argv[])
{
    HI_S32 Ret = 0;
    HI_U8 InputCmd[30];

    g_enDefaultFmt =(HI_UNF_ENC_FMT_E)HIADP_Disp_StrToFmt(argv[1]);
    HI_SYS_Init();
    
    Ret = Unf_disInit();
    if (Ret != HI_SUCCESS)
    {
        printf("call DispInit failed.\n");
    }
    printf("come to loop\n");
    /* Add command */
    while(1)
    {
        printf("subprocess_cmd >");
        memset(InputCmd, 0, 30);
        fgets((char *)InputCmd, 30, stdin);

        if ('x' == InputCmd[0])
        {
            printf("prepare to quit!\n");
            break;
        }
        else if( (('f' == InputCmd[0]) || (':' == InputCmd[1])) 
        && ((InputCmd[2] >= '0') && (InputCmd[2] <= '9')) )
        {
            g_enDefaultFmt = InputCmd[2] - '0';
            
            if(g_enDefaultFmt != HI_UNF_ENC_FMT_BUTT)
            {
                printf("set format\n");
                Unf_disFormat(g_enDefaultFmt);
                printf("end of set format\n");
            }
        }
    }
    
    Ret = HI_UNF_DISP_Close(HI_UNF_DISPLAY0);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DISP_Close(HI_UNF_DISPLAY1);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Close failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DISP_Detach(HI_UNF_DISPLAY0, HI_UNF_DISPLAY1);
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_Detach failed.\n");
        return Ret;
    }

    Ret = HI_UNF_DISP_DeInit();
    if (Ret != HI_SUCCESS)
    {
        printf("call HI_UNF_DISP_DeInit failed.\n");
        return Ret;
    }
    printf("HIADP_HDMI_DeInit\n");

    Sub_HDMI_DeInit(HI_UNF_HDMI_ID_0);

    return Ret;
}