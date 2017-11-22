/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.

  File Name     :mpi_hiao_track.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2012/12/12
  Description  : 
  History       :
  1.Date        : 2013/12/12
    Author      : w0019655
    Modification: Created file

 *******************************************************************************/

#ifndef  __MPI_AEF_H__
#define  __MPI_AEF_H__

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

typedef struct
{
    HI_HANDLE                hEntry;
    HI_HANDLE                hHaEffect;
    HI_UNF_SND_E             enSnd;
    HI_BOOL                  bEnable;
    AO_AEF_PROC_ITEM_S       *pstProcItem;
} AEF_CHANNEL_S;

HI_S32 HI_MPI_AO_AEF_RegisterAuthLib(const HI_CHAR *pAefLibFileName);
HI_S32 HI_MPI_AO_AEF_Create(HI_UNF_SND_E enSound, HI_UNF_SND_AEF_TYPE_E enAefType, HI_VOID *pstAdvAttr, HI_HANDLE *phAef);
HI_S32 HI_MPI_AO_AEF_Destroy(HI_HANDLE hAef);
HI_S32 HI_MPI_AO_AEF_SetEnable(HI_HANDLE hAef, HI_BOOL bEnable);
HI_S32 HI_MPI_AO_AEF_GetEnable(HI_HANDLE hAef, HI_BOOL *pbEnable);
HI_S32 HI_MPI_AO_AEF_SetParams(HI_HANDLE hAef, HI_U32 u32ParamType, const HI_VOID *pstParms);
HI_S32 HI_MPI_AO_AEF_GetParams(HI_HANDLE hAef, HI_U32 u32ParamType, HI_VOID *pstParms);
HI_S32 HI_MPI_AO_AEF_SetConfig(HI_HANDLE hAef, HI_U32 u32CfgType, const HI_VOID *pstConfig);
HI_S32 HI_MPI_AO_AEF_GetConfig(HI_HANDLE hAef, HI_U32 u32CfgType, HI_VOID *pstConfig);


#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif
#endif
