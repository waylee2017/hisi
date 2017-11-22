/******************************************************************************

  Copyright (C), 2001-2011, Hisilicon Tech. Co., Ltd.

******************************************************************************
  File Name     : drv_vi_ioctl.h
  Version       : Initial Draft
  Author        : Hisilicon multimedia software group
  Created       : 2010/03/26
  Description   :
  History       :
  1.Date        : 2010/03/26
    Author      : j00131665
    Modification: Created file

******************************************************************************/

#ifndef __DRV_VI_IOCTL_H__
#define __DRV_VI_IOCTL_H__

#include "hi_debug.h"
#include "hi_unf_vi.h"

#ifdef __cplusplus
 #if __cplusplus
extern "C" {
 #endif
#endif

#if 0

/* enumeration of possible VIU V sync configure. */
typedef enum hiUNF_VI_DATAWIDTH_E
{
    HI_UNF_VI_VSYNC_NOT = 0,
    HI_UNF_VI_VSYNC
} HI_UNF_VI_VSYNC_E;

/* enumeration of possible VIU V sync negitive configure. */
typedef enum
{
    VIU_VSYNC_NEG_NOT = 0,
    VIU_VSYNC_NEG
} VIU_VSYNCNEG_E;

/* enumeration of possible VIU H sync configure. */
typedef enum
{
    VIU_HSYNC_NOT = 0,
    VIU_HSYNC
} VIU_HSYNC_E;

/* enumeration of possible VIU H sync negitive configure. */
typedef enum
{
    VIU_HSYNC_NEG_NOT = 0,
    VIU_HSYNC_NEG
} VIU_HSYNCNEG_E;

#endif

typedef enum hiVIU_CAPSEQ_E
{
    VIU_CAPSEQ_UYVY = 0,    //uyvy
    VIU_CAPSEQ_VYUY,        //vyuy
    VIU_CAPSEQ_YUYV,        //yuyv
    VIU_CAPSEQ_YVYU         //yvyu
} VIU_CAPSEQ_E;

typedef enum hiVIU_BLOCK_COVER_E
{
    VIU_BLOCK_COVER_COLOR_FILL = 0,   /* cover with color */
    VIU_BLOCK_COVER_MSC_FILL          /* cover with mosaic */
} VIU_BLOCK_COVER_E;

typedef struct hiUNF_VI_CREATE_S
{
    HI_UNF_VI_E      enViPort;
    HI_UNF_VI_ATTR_S stViAttr;
} VI_CREATE_INFO;

typedef struct hiVI_ENABLE_S
{
    HI_UNF_VI_E enVi;
    HI_BOOL     bEnable;
} VI_ENABLE_S;

typedef struct hiVI_WIN_CREATE_S
{
    HI_UNF_VI_E      enVi;
    HI_UNF_VI_ATTR_S stAttr;
} VI_WIN_CREATE_S;
#if 0
typedef struct hiVI_CAPTURE_S
{
    HI_UNF_VI_E              enVi;
    HI_UNF_CAPTURE_PICTURE_S CapPicture;
} VI_CAPTURE_S;
#endif
typedef struct hiVI_GLOBAL_STATE_S
{
    HI_U32 Port0ViNum;
    HI_U32 Port1ViNum;
    HI_U32 ViCount;
} VI_GLOBAL_STATE_S;

typedef struct hiVI_ATTR_S
{
    HI_UNF_VI_E      enVi;
    HI_UNF_VI_ATTR_S stAttr;
} VI_ATTR_S;

typedef struct hiVI_BUF_ATTR_S
{
    HI_UNF_VI_E      enVi;
    HI_UNF_VI_BUFFER_ATTR_S stBufAttr;
} VI_BUF_ATTR_S;

typedef struct hiUNF_VI_FRAME_INFO
{
    HI_U32          u32Uid;
    HI_UNF_VI_E     enVi;
//    HI_UNF_VI_BUF_S stViBuf;
    HI_UNF_VIDEO_FRAME_INFO_S stViFrame;
} VI_FRAME_INFO_S;

typedef struct hiVI_UID_INFO_S
{
    HI_U32      u32UsrID;
    HI_UNF_VI_E enVi;
} VI_UID_INFO_S;

#define CMD_VI_OPEN _IOWR(IOC_TYPE_VI, 0, VI_CREATE_INFO)
#define CMD_VI_CLOSE _IOWR(IOC_TYPE_VI, 1, HI_HANDLE)

#define CMD_VI_SET_ATTR _IOWR(IOC_TYPE_VI, 2, VI_ATTR_S)
#define CMD_VI_GET_ATTR _IOWR(IOC_TYPE_VI, 3, VI_ATTR_S)

#define CMD_VI_ACQUIRE_FRAME _IOWR(IOC_TYPE_VI, 4, VI_FRAME_INFO_S)
#define CMD_VI_RELEASE_FRAME _IOWR(IOC_TYPE_VI, 5, VI_FRAME_INFO_S)

#define CMD_VI_GET_UID _IOWR(IOC_TYPE_VI, 6, VI_UID_INFO_S)
#define CMD_VI_PUT_UID _IOWR(IOC_TYPE_VI, 7, VI_UID_INFO_S)
#if 0
#define CMD_VI_GET_FRAME _IOWR(IOC_TYPE_VI, 8, VI_FRAME_INFO_S)
#define CMD_VI_PUT_FRAME _IOWR(IOC_TYPE_VI, 9, VI_FRAME_INFO_S)
#else
#define CMD_VI_DQ_FRAME _IOWR(IOC_TYPE_VI, 8, VI_FRAME_INFO_S)
#define CMD_VI_Q_FRAME _IOWR(IOC_TYPE_VI, 9, VI_FRAME_INFO_S)
#endif
#define CMD_VI_START _IOWR(IOC_TYPE_VI, 10, HI_UNF_VI_E)
#define CMD_VI_STOP _IOWR(IOC_TYPE_VI, 11, HI_UNF_VI_E)

#define CMD_VI_SET_BUF _IOWR(IOC_TYPE_VI, 12, VI_BUF_ATTR_S)

#ifdef __cplusplus
 #if __cplusplus
}
 #endif
#endif

#endif //__DRV_VI_IOCTL_H__