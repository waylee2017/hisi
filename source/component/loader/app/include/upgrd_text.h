/*********************************************************************************
*
*  Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
*  This program is confidential and proprietary to Hisilicon Technologies Co., Ltd.
*  (Hisilicon), and may not be copied, reproduced, modified, disclosed to
*  others, published or used, in whole or in part, without the express prior
*  written permission of Hisilicon.
*
***********************************************************************************/
#ifdef HI_LOADER_BOOTLOADER


#ifndef __UPDATE_TEXT_H__
#define __UPDATE_TEXT_H__


/*********************************add include here******************************/
#include "hi_type.h"
#include "hi_go_common.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*************************** Structure Definition ****************************/


/********************** Global Variable declaration **************************/


/******************************* API declaration *****************************/

HI_S32 HI_GO_CreateText      (const HI_CHAR* pSbFontFile, const HI_CHAR* pMbFontFile, HI_HANDLE* pTextOut);
HI_S32 HI_GO_GetTextExtent   (HI_HANDLE TextOut, const HI_CHAR *pText, HI_U32 *pWidth, HI_U32 *pHeight);
HI_S32 HI_GO_SetTextBGColor  (HI_HANDLE TextOut, HI_COLOR Color);
HI_S32 HI_GO_SetTextColor    (HI_HANDLE TextOut, HI_COLOR Color);
HI_S32 HI_GO_TextOut         (HI_HANDLE TextOut, HI_HANDLE Surface, const HI_CHAR *pText,const HI_RECT *pRect);



#ifdef __cplusplus
}
#endif /* __cplusplus */

#endif /*__UPDATE_OSD_H__*/

#endif
