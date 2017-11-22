
#ifndef __OPTM_REG_INTF_H__
#define __OPTM_REG_INTF_H__

//#include "common_proc.h"
#include "hi_drv_proc.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif /* __cplusplus */

typedef struct hiDISP_Register_Param{
	DRV_PROC_READ_FN  rdproc;
	DRV_PROC_WRITE_FN	wtproc;
}HI_OPTM_DISP_REGPARAM_S;

typedef struct hiVO_Intf_Param{
	DRV_PROC_READ_FN  rdProc;
	DRV_PROC_WRITE_FN	wtProc;
	DRV_PROC_READ_FN  winRdProc;
	DRV_PROC_WRITE_FN	winWtProc;
}HI_VO_INTFPARAM_S;



#if 0
typedef HI_S32 (*VIU_PUT_USRID)(HI_U32, HI_U32);
typedef HI_S32 (*VIU_GET_USRID)(HI_U32, HI_MOD_ID_E, HI_U32 *);
typedef HI_S32 (*VIU_ACQUIRE_FRAME)(HI_S32, HI_UNF_VO_FRAMEINFO_S *);
typedef HI_S32 (*VIU_RELEASE_FRAME)(HI_S32, HI_UNF_VO_FRAMEINFO_S *);


typedef struct hiDISP_Register_Param{
	CMPI_PROC_READ  rdproc;
	CMPI_PROC_WRITE	wtproc;
}HI_OPTM_DISP_REGPARAM_S;

typedef struct hiVO_Intf_Param{
	CMPI_PROC_READ  rdProc;
	CMPI_PROC_WRITE	wtProc;
	CMPI_PROC_READ  winRdProc;
	CMPI_PROC_WRITE	winWtProc;
}HI_VO_INTFPARAM_S;



typedef struct hiVO_VI_Param{
	VIU_GET_USRID viuGetUsrID;
	VIU_PUT_USRID viuPutUsrID;
	VIU_ACQUIRE_FRAME viuAcquireFrame;
	VIU_RELEASE_FRAME viuReleaseFrame;
}HI_VO_VIPARAM_S;

HI_S32  VO_VIRegister(HI_VO_VIPARAM_S *param);
HI_VOID VO_VIUnRegister(HI_VOID);

#endif


#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif /* __cplusplus */

#endif /*  __OPTM_REG_INTF_H__  */

