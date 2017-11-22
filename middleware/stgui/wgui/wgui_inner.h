/**********************************************************************************

File Name   : wgui.h

Description : This is an API head file of Menu DIR in ST5105 project.

COPYRIGHT (C) STMicroelectronics 2004

Date               		Modification                                              Name
----               		------------                                          ----
5/17/2004			Created         			                             Louie
11/16/2005			Modified								C.S.R.	
<$ModMark> (do not move/delete)
***********************************************************************************/

#ifndef __WGUI_INNER_H__		/* Prevent multiple inclusion of the file */
#define __WGUI_INNER_H__

#include "wgui.h"

MMT_STB_ErrorCode_E wguif_DispRect(MBT_U32 xStart,MBT_U32 yStart,MBT_U32 u32Width,MBT_U32 u32Height);

MMT_STB_ErrorCode_E wguif_DispRecExt(MBT_U32 xStart,MBT_U32 yStart,MBT_U32 u32Width,MBT_U32 u32Height);

MMT_STB_ErrorCode_E wguif_DispEreaCopy (MBT_S32 s32ScrX, MBT_S32 s32BmpXOff, MBT_U32 *pu32Dest,MBT_S32 s32DPicW,MBT_U32 *pu32Src,MBT_S32 s32SPicW,MBT_S32 s32CopyW,MBT_S32 s32CopyH);

#endif 	/* #ifndef __CLUT8DEF_H__  */
