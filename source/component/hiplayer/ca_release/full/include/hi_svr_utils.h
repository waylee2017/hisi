/*
 * hi_svr_logger.h
 *
 *  Created on: 2014Äê9ÔÂ18ÈÕ
 *      Author: z00187490
 */

#ifndef HI_SVR_UTILS_H_
#define HI_SVR_UTILS_H_

#include <stdarg.h>
#include "hi_type.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

#ifndef SVR_LOG_TAG
#define SVR_LOG_TAG NULL
#endif

#ifndef SVR_LOG_PREFIX
#define SVR_LOG_PREFIX NULL
#endif

typedef enum tagSVR_LOG_LEVEL_E {
    SVR_LOG_QUIET = 0,
    SVR_LOG_FATAL,
    SVR_LOG_ERROR,
    SVR_LOG_WARN,
    SVR_LOG_INFO,
    SVR_LOG_DEBUG,
    SVR_LOG_VERBOSE,
    SVR_LOG_BUTT,
} SVR_LOG_LEVEL_E;

#define SVR_LOGV(...) do {\
    SVR_LOG_Write(SVR_LOG_TAG, SVR_LOG_VERBOSE, __VA_ARGS__); \
} while (0)

#define SVR_LOGD(...) do {\
    SVR_LOG_Write(SVR_LOG_TAG, SVR_LOG_DEBUG, __VA_ARGS__); \
} while (0)

#define SVR_LOGI(...) do {\
    SVR_LOG_Write(SVR_LOG_TAG, SVR_LOG_INFO, __VA_ARGS__); \
} while (0)

#define SVR_LOGW(...) do {\
    SVR_LOG_Write(SVR_LOG_TAG, SVR_LOG_WARN, __VA_ARGS__); \
} while (0)

#define SVR_LOGE(...) do {\
    SVR_LOG_Write(SVR_LOG_TAG, SVR_LOG_ERROR, __VA_ARGS__); \
} while (0)

#define SVR_LOGF(...) do {\
    SVR_LOG_Write(SVR_LOG_TAG, SVR_LOG_FATAL, __VA_ARGS__); \
} while (0)

typedef struct tagSVR_LOG_WRITER_S
{
    HI_VOID (*write)(HI_VOID* opaque, const HI_CHAR* tag, HI_S32 level,
            HI_CHAR* fmt, va_list var);
    HI_VOID* opaque;
} SVR_LOG_WRITER_S;

HI_VOID SVR_LOG_Write(const HI_CHAR* tag, HI_S32 level, HI_CHAR* fmt, ...);

HI_VOID SVR_LOG_RegisterWriter(SVR_LOG_WRITER_S* writer);

/*if the level setted by SVR_LOG_SetDebugLevel is valid, use this debug level first,
  else use the level setted by SVR_LOG_SetLevel*/
HI_S32 SVR_LOG_SetLevel(HI_S32 s32Level);

HI_S32 SVR_LOG_GetLevel();

HI_S32 SVR_LOG_SetDebugLevel(HI_S32 level);

HI_S32 SVR_LOG_GetDebugLevel();

HI_S32 SVR_SYS_SetProperty(const HI_CHAR* pszKey, const HI_CHAR* pszVal);

HI_S32 SVR_SYS_GetProperty(const HI_CHAR* pszKey, HI_CHAR* pszVal, HI_S32 s32Len);

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */
#endif /* HI_SVR_UTILS_H_ */
