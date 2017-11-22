
#ifndef __TEST_PROTOCOL_ARGS_H__
#define __TEST_PROTOCOL_ARGS_H__

#include "hi_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

typedef struct TEST_EVENT{
    HI_S32 type;
    HI_VOID *Args;
}TEST_EVENT_S;

typedef enum TestCmdType{
    TEST_CMD_TYPE_NONE=0x0,
    TEST_CMD_TYPE_FILESIZE,
    TEST_CMD_TYPE_CALLBACK,
    TEST_CMD_TYPE_BULT,
}TESTCMDTYPE_E;


typedef HI_S32 (*TEST_PROTOCOL_EVENT_FN)(TEST_EVENT_S *pstruEvent);

typedef struct{
    HI_S32 s32Cmd;
    TEST_PROTOCOL_EVENT_FN pfnCallback;
    HI_VOID *args;
}TEST_PROTOCOL_ARGS;


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /* __TEST_PROTOCOL_ARGS_H__ */

