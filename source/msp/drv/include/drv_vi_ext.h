#ifndef __DRV_VI_EXT_H__
#define __DRV_VI_EXT_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#include "hi_unf_common.h"

typedef HI_S32 (*FN_VI_AcquireFrame)(HI_S32 handle, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame);
typedef HI_S32 (*FN_VI_ReleaseFrame)(HI_S32 handle, HI_UNF_VIDEO_FRAME_INFO_S *pstFrame);
typedef HI_S32 (*FN_VI_GetUsrID)(HI_U32 u32ChnID, HI_MOD_ID_E enUserMode, HI_U32 *pu32Uid);
typedef HI_S32 (*FN_VI_PutUsrID)(HI_U32 u32ChnID, HI_U32 u32Uid);

typedef struct
{
    FN_VI_AcquireFrame pfnViAcquireFrame;
    FN_VI_ReleaseFrame pfnViReleaseFrame;
    FN_VI_GetUsrID     pfnViGetUsrID;
    FN_VI_PutUsrID     pfnViPutUsrID;
} VI_EXPORT_FUNC_S;

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif //__DRV_VI_EXT_H__
