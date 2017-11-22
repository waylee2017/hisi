#ifndef _COMMON_H_
#define _COMMON_H_

#include "hi_type.h"

#ifdef  CONFIG_SUPPORT_CA_RELEASE
#define sample_printf(fmt...)
#define PRINT_SMP(fmt...)
#else
#define sample_printf printf
#define PRINT_SMP(fmt...) HI_TRACE(HI_LOG_LEVEL_ERROR, HI_DEBUG_ID_USR, fmt)
#endif

#define HIAPI_RUN(api, ret) \
    do {\
        HI_S32 errCode; \
        errCode = api; \
        if (errCode != 0)\
        {\
            ret |= errCode; \
            sample_printf("\033[0;31m" "[Function: %s line: %d] %s failed ret = 0x%x \n" "\033[0m", __FUNCTION__, __LINE__ , # api, errCode); \
        } \
    } while (0)

#define HIAPI_RUN_RETURN(api) \
    do {\
        HI_S32 errCode; \
        errCode = api; \
        if (errCode != 0)\
        {\
            sample_printf("\033[0;31m" "[Function: %s line: %d] %s failed ret = 0x%x \n" "\033[0m",  __FUNCTION__, __LINE__ , #api, errCode); \
            return HI_FAILURE; \
        } \
    } while (0)


#define HIAPI_ERR_PRINTF(ret) \
	do {\
		sample_printf("\033[0;31m" " [Function: %s line: %d]  ret = 0x%x \n" "\033[0m", __FUNCTION__, __LINE__ , ret); \
	}while(0)\


            
#define SAMPLE_RUN(api, ret) \
    do{ \
        HI_S32 l_ret = api; \
        if (l_ret != HI_SUCCESS) \
        { \
            sample_printf("run %s failed, ERRNO:%#x.\n", #api, l_ret); \
        } \
        else\
        {\
        /*printf("sample %s: run %s ok.\n", __FUNCTION__, #api);}*/   \
        }\
        ret = l_ret;\
    }while(0)


#define SAMPLE_CheckNullPTR(pointer)                    \
    do                                                  \
    {                                                   \
        if (NULL == pointer)                            \
        {                                               \
            sample_printf("%s failed:NULL Pointer in Line:%d!\n", __FUNCTION__, __LINE__);\
            return HI_FAILURE; \
        }                      \
    }while(0)    
		
#define SAMPLE_GET_INPUTCMD(InputCmd) fgets((char *)(InputCmd), (sizeof(InputCmd) - 1), stdin);

#endif        
