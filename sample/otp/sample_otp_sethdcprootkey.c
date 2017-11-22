#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <sys/time.h>
#include <fcntl.h>
#include <unistd.h>
#include <assert.h>
#include "hi_unf_otp.h"
#include "hi_type.h"

static HI_S32 s_printBuffer(HI_CHAR *pString, HI_U8 *pu8Buf, HI_U32 u32Len)
{
    HI_U32 i;

    if ( (NULL == pu8Buf) || (NULL == pString) )
    {
        printf("null pointer input in function print_buf!\n");
        return HI_FAILURE;
    }

    printf("%s:\n", pString);
    for ( i = 0 ; i < u32Len ; i++ )
    {
        if ( ( i != 0) && ( (i% 16) == 0) )
        {
            printf("\n");
        }
        printf("%x ", pu8Buf[i]);
    }
    printf("\n");

    return HI_SUCCESS;
}

HI_S32 main(int argc, char *argv[])
{
    HI_S32 ret = HI_SUCCESS;
    HI_BOOL bLockFlag = HI_FALSE;
    //MV310 认证使用的hdcp_root_ley ，其值在OTP工具代码中定义
    HI_U8 au8HDCPRootKey[16] = {0xd6,0x84,0xbd,0xa1,0x3b,0xb6,0x37,0x0d,0xc8,0x73,0x21,0xfa,0xba,0xeb,0x90,0x77};

    ret = HI_UNF_OTP_Init();
	if(HI_SUCCESS != ret)
	{
		printf("OTP init failed!\n");
		return HI_FAILURE;
	}

    ret = HI_UNF_OTP_WriteHdcpRootKey(au8HDCPRootKey, 16);
	if(HI_SUCCESS != ret)
	{
		printf("HI_UNF_OTP_WriteHdcpRootKey failed!\n");
		(HI_VOID)HI_UNF_OTP_DeInit();
		return HI_FAILURE;
	}

    s_printBuffer("set hdcp root key", au8HDCPRootKey, sizeof(au8HDCPRootKey));

    ret = HI_UNF_OTP_LockHdcpRootKey();
	if(HI_SUCCESS != ret)
	{
		printf("HI_UNF_OTP_LockHdcpRootKey failed!\n");
		(HI_VOID)HI_UNF_OTP_DeInit();
		return HI_FAILURE;
	}

    ret = HI_UNF_OTP_GetStbRootKeyLockFlag(&bLockFlag);
	if(HI_SUCCESS != ret)
	{
		printf("OTP init failed\n");
	    (HI_VOID)HI_UNF_OTP_DeInit();
		return HI_FAILURE;
	}

    printf("get stb root key lock flag : %d\n", bLockFlag);

    (HI_VOID)HI_UNF_OTP_DeInit();

    return HI_SUCCESS;
}

