#ifndef __DRV_VENC_EXT_H__
#define __DRV_VENC_EXT_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

typedef HI_S32 (*FN_VENC_EncodeFrame)(HI_VOID);

typedef struct
{
    FN_VENC_EncodeFrame pfnVencEncodeFrame;
} VENC_EXPORT_FUNC_S;

HI_S32 VENC_DRV_ModInit(HI_VOID);
HI_VOID VENC_DRV_ModExit(HI_VOID);

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif //__DRV_VENC_EXT_H__