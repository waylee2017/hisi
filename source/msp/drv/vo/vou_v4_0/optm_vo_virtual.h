
#ifndef __OPTM_VO_VIRTUAL_H__
#define __OPTM_VO_VIRTUAL_H__

#include "optm_vo.h"
#include "optm_fb.h"
#include "optm_p_vo.h"
#include "hi_error_mpi.h"
#include "optm_m_disp.h"


HI_S32 VoSetWindowVirtual(OPTM_VO_S *pstVo,HI_S32 ps32WinId,HI_BOOL bEnable);
HI_VOID VOISR_WBC1ProcessStart(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_WBC1ProcessTaskFinish(HI_U32 u32Param0, HI_U32 u32Param1);

HI_S32 VOISR_SlaveConfigFrame(OPTM_WIN_S *pstWin,OPTM_WIN_S *pstMainWin,HI_BOOL bNeedRepeat,HI_UNF_VO_FRAMEINFO_S* pWBCFrame);

HI_S32 VoDettachWindowsSlave(OPTM_WIN_S* pstSlaveWin);
HI_S32 VOISR_ConfigVirtualSlave_WBC1FrameBuffer(OPTM_WIN_S* pstMainWin,OPTM_WIN_S* pstDestWin,HI_BOOL bNeedRepeat);
HI_S32 VOISR_ConfigSlaveActive_WBC1FrameBuffer(OPTM_WIN_S* pstMainWin,OPTM_WIN_S* pstDestWin,HI_BOOL bNeedRepeat);
HI_S32 VOISR_ConfigMain_FrameBuffer(OPTM_WIN_S* pstWin,OPTM_M_DISP_INFO_S* pOptmDispInfo, HI_S32 NextBtmflag);
HI_S32 VOISR_ReleaseFrame(OPTM_WIN_S *pstWin);
HI_VOID VOISR_SetDetInfo(OPTM_WIN_S *pstWin, OPTM_FRAME_S *pCrtFrame);
HI_BOOL VOISR_DieNeedReset(OPTM_FRAME_S *pCrtFrame, OPTM_FRAME_S *pLastFrame);
HI_S32 VOISR_ReceiveFrame(OPTM_WIN_S *pstWin);
HI_S32 VOISR_ConfigFrame(OPTM_WIN_S *pstWin, OPTM_M_DISP_INFO_S *pOptmDispInfo);
HI_VOID VOISR_FlushFrame(OPTM_WIN_S *pstWin);
HI_VOID VOISR_WindowReset(OPTM_WIN_S *pstWin);
HI_S32 VODeInitMainWindow(OPTM_WIN_S *pstWin);
HI_VOID VODetachWindow(OPTM_WIN_S *pstWin);
HI_S32 VoAttachWindowsSlave(OPTM_WIN_S* pstSlaveWin);

HI_S32 Vou_AcquireFrame(HI_S32 hWin, HI_UNF_VO_FRAMEINFO_S *Frameinfo);
HI_S32 Vou_ReleaseFrame(HI_S32 hWin, HI_UNF_VO_FRAMEINFO_S *Frameinfo);
//HI_S32 Vou_UsrAcquireFrame(HI_HANDLE Handle,HI_UNF_VI_BUF_S  *pstFrame);
//HI_S32 Vou_UsrReleaseFrame(HI_HANDLE Handle);
HI_S32 VO_GetWindowVirtual(HI_HANDLE hWin, HI_BOOL *pbEnable);

HI_VOID VOISR_WBC1ProcessStart_standalone(HI_U32 u32Param0, HI_U32 u32Param1);
HI_VOID VOISR_WBC1ProcessTaskFinish_standalone(HI_U32 u32Param0, HI_U32 u32Param1);
#if 0
HI_S32 OPTM_VirtualWBCFB_Create(OPTM_WBC_FB_S *pWbc, HI_UNF_VIDEO_FORMAT_E enVideoFormat, HI_S32 s32Width, HI_S32 s32Height, HI_S32 s32BufferLength);
#endif
HI_UNF_VO_FRAMEINFO_S *VOISR_FindCfgFrame(OPTM_WIN_S* pstWin, HI_UNF_VO_FRAMEINFO_S *pRefFrame, HI_U32  pos);
#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif /* __cplusplus */

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif /* __cplusplus */


#endif
