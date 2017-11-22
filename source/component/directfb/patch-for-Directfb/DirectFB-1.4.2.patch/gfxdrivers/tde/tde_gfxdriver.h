/**
\file
\brief TDE driver header    CNcomment:TDEÇý¶¯
\copyright Shenzhen Hisilicon Co., Ltd.
\date 2008-2018
\version draft
\author memmng
\date 2010-7-30
*/

#ifndef __HI3720_GFXDRIVER_H__
#define __HI3720_GFXDRIVER_H__

/* add include here */
#include "hi_tde_type.h"
#include "hi_tde_api.h"
#include "hi_tde_errcode.h"

#ifdef __cplusplus
extern "C" {
#endif
/***************************** Macro Definition ******************************/



/*************************** Structure Definition ****************************/

typedef struct {
     /* validation flags */
     int                       v_flags;

     /* cached/computed values */
     TDE2_SURFACE_S            src_surface;
     TDE2_SURFACE_S            dst_surface;

     unsigned long             color_pixel; 
     
     /** Add shared data here... **/
     TDE2_RECT_S               clip_region;
     unsigned long             src_colorkey;
     unsigned long             dst_colorkey;
     DFBSurfaceBlendFunction   src_blend;
     DFBSurfaceBlendFunction   dst_blend;     
     DFBSurfaceBlittingFlags   blittingflags;
     DFBSurfaceDrawingFlags    drawingflags;
} TDEDeviceData;


typedef struct {

     /** Add local data here... **/
} TDEDriverData;

/********************** Global Variable declaration **************************/



/******************************* API declaration *****************************/



#ifdef __cplusplus
}
#endif
#endif /* __HI3720_GFXDRIVER_H__ */
