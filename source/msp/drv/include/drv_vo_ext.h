#ifndef __VO_EXT_H__
#define __VO_EXT_H__

#ifdef __cplusplus
#if __cplusplus
extern "C"{
#endif
#endif

#include "hi_type.h"
#include "hi_unf_common.h"
#include "hi_unf_vo.h"
//#include "drv_dev_ext.h"
//#include "drv_vo_ioctl.h"



typedef HI_S32 (* FN_VO_ReleaseFrame)(HI_S32 hWin, HI_UNF_VIDEO_FRAME_INFO_S *Frameinfo);
typedef HI_S32 (* FN_VO_AcquireFrame)(HI_S32 hWin, HI_UNF_VIDEO_FRAME_INFO_S *Frameinfo);
typedef HI_S32 (* FN_VO_Suspend)(HI_VOID);
typedef HI_S32 (* FN_VO_Resume)(HI_VOID);
typedef HI_S32 (* FN_VO_SetResumeMask)(HI_BOOL bMask);


typedef struct
{
    FN_VO_AcquireFrame   pfnVoAcquireFrm;
    FN_VO_ReleaseFrame   pfnVoReleaseFrm;
    FN_VO_Suspend        pfnVoSuspend;
    FN_VO_Resume         pfnVoResume;
    FN_VO_SetResumeMask  pfnVoSetResumeMask;
} VO_EXPORT_FUNC_S;

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */


#endif  /* __VO_EXT_H__ */

