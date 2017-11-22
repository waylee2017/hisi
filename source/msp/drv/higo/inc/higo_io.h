/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : higo_io.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/
#ifndef __HIGO_IO_H__
#define __HIGO_IO_H__


/*********************************add include here******************************/
#include "hi_type.h"
#include "hi_go_comm.h"

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */

/***************************** Macro Definition ******************************/
typedef HI_U32 IO_HANDLE;

/*************************** Structure Definition ****************************/

/** IO device type*/
typedef enum
{
    IO_TYPE_FILE = 0, /**<  file*/
    IO_TYPE_MEM,      /**< memory*/
    IO_TYPE_STREAM,   /**< memory*/
    IO_TYPE_BUTT
} IO_TYPE_E;
/**IOdevice info*/
typedef union hiIO_INFO_U
{
    /** info in  case : input source is memory */
    struct
    {
        HI_CHAR *pAddr; /**<memory address*/
        HI_U32 Length; /**<memory suze*/
    } MemInfo;
} IO_INFO_U;

typedef struct hiIO_DESC_S
{
    IO_INFO_U IoInfo;
} IO_DESC_S;

/*IO file position info*/
typedef enum
{
    IO_POS_SET = 0,
    IO_POS_CUR,
    IO_POS_END,
    IO_POS_BUTT
} IO_POS_E;

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/
/**
 \brief create virtual file system instance 
 \param[out] IO_HANDLE *pIO pointer to VFS instance 
 \param[in] const DEC_IOINFO_S * pDecInfo  
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOCreate(IO_HANDLE *pIO, const IO_DESC_S * pDecInfo);

/**
 \brief  destroy virtual file system instance
 \param[in] IO_HANDLE IO pointer to VFS instance 
 \param[out] none
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IODestroy(IO_HANDLE IO);

/**
 \brief fs data read 
 \param[in] IO_HANDLE IO pointer to VFS instance 
 \param[in] HI_VOID *pBuf   input data BUFFER
 \param[in] HI_U32 BufLen   data BUFFER length 
 \param[out] HI_U32 *pCopyLen  data length has actual readed 
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IORead(IO_HANDLE IO, HI_VOID *pBuf, HI_U32 BufLen, HI_U32 *pCopyLen, HI_BOOL *pEndFlag);

/**
 \brief  VFS seek
 \param[in] IO_HANDLE IO pointer to VFS instance 
 \param[in] IO_POS_E Position start position
 \param[in] HI_S32 Offset   offset 
 \param[out] none
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOSeek(IO_HANDLE IO, IO_POS_E Position, HI_S32 Offset);

/**
 \brief  get fs type 
 \param[in] IO_HANDLE IO
 \param[out] IO_TYPE_E *pIOType pointer to VFS instance 
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOGetType(IO_HANDLE IO, IO_TYPE_E *pIOType);

/**
 \brief get fs file size 
 \param[in] IO_HANDLE IO
 \param[out]  HI_U32 *pLength pointer to file size 
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOGetLength(IO_HANDLE IO, HI_U32 *pLength);

/**
 \brief get fs position 
 \param[in] IO_HANDLE IO
 \param[out]  HI_U32 *pPos pointer to VFS instance 
 \retval none
 \return HI_S32
 */
HI_S32 HIGO_ADP_IOGetPos(IO_HANDLE IO, HI_U32 *pPos);



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */


#endif /* __HIGO_IO_H__ */
