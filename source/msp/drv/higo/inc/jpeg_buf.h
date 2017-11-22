/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_buf.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_BUF_H_
#define _JPEG_BUF_H_


/*********************************add include here******************************/

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/

typedef struct hiJPGBUF_DATA_S
{
    HI_VOID*   pAddr[2];
    HI_U32     u32Len[2];
} JPGBUF_DATA_S;

typedef struct hiJPG_CYCLEBUF_S
{
    HI_VOID*  pBase;           
    HI_U32    u32BufLen;      
    HI_U32    u32RsvByte;   
    HI_U32    u32RdHead;      
    HI_U32    u32RdTail;        
    HI_U32    u32WrHead;     
} JPG_CYCLEBUF_S;

/********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/


/******************************************************************************
* Function:      JPGBUF_Init
* Description: 
* Input:         pVirtBase   buf
                 BufLen      Buf
                 u32RsvByte  
* Output:        ppstCB   Buf
* Return:        HI_SUCCESS:        
* Others:        
                 
******************************************************************************/
HI_S32 JPGBUF_Init(JPG_CYCLEBUF_S* pstCB, HI_VOID* pVirtAddr,HI_U32 u32BufLen, HI_U32 u32RsvByte);

/******************************************************************************
* Function:      JPGBUF_Reset
* Description:   
* Input:         pstCB    buffer
* Return:        
* Others:        
******************************************************************************/
HI_VOID  JPGBUF_Reset(JPG_CYCLEBUF_S* pstCB);

/******************************************************************************
* Function:      JPGBUF_Read
* Description:   
* Input:         pstCB    buf
* Output:        pstRdInfo    Buf
* Return:        
* Others:        
******************************************************************************/
HI_S32 JPGBUF_Read(const JPG_CYCLEBUF_S* pstCB, HI_VOID* pData, HI_U32 u32Len);

/******************************************************************************
* Function:      JPGBUF_Write
* Description:  
* Input:         Handle   Buf
*                pRead    
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_S32 JPGBUF_Write(JPG_CYCLEBUF_S* pstCB, HI_VOID* pVirtSrc, HI_U32 u32WrLen);

/******************************************************************************
* Function:      JPGBUF_StepRdHead
* Description:   
* Input:         Handle   Buf
*                pRead    
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID   JPGBUF_StepRdHead(JPG_CYCLEBUF_S* pstCB);

/******************************************************************************
* Function:      JPGBUF_StepRdTail
* Description:   
* Input:         Handle   Buf
*                pRead    
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID   JPGBUF_StepRdTail(JPG_CYCLEBUF_S* pstCB);

/******************************************************************************
* Function:      JPGBUF_SetRdHead
* Description:   
* Input:         Handle   Buf
*                Len      
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID  JPGBUF_SetRdHead(JPG_CYCLEBUF_S* pstCB, HI_S32 Len);

/******************************************************************************
* Function:      JPGBUF_SetWrHead
* Description:   
* Input:         pstCB        buf
* Output:        Len    
* Return:        
* Others:        
******************************************************************************/
HI_VOID  JPGBUF_SetWrHead(JPG_CYCLEBUF_S* pCB, HI_U32 Len);

/******************************************************************************
* Function:      JPGBUF_GetFreeLen
* Description:   
* Input:         pstCB    buffer
* Output:        buffer
* Return:        
* Others:        
******************************************************************************/
HI_U32 JPGBUF_GetFreeLen(const JPG_CYCLEBUF_S* pstCB);

/******************************************************************************
* Function:      JPGBUF_GetDataBtwRhRt
* Description:  
* Input:          pstCB        buf
* Output:        pRdInfo    
* Return:        
* Others:        
******************************************************************************/
HI_S32   JPGBUF_GetDataBtwRhRt(const JPG_CYCLEBUF_S* pstCB, JPGBUF_DATA_S *pRdInfo);

/******************************************************************************
* Function:      JPGBUF_GetDataBtwWhRh
* Description:   
* Input:         pstCB        buf
* Output:        pstData    
* Return:        
* Others:        
******************************************************************************/
HI_S32 JPGBUF_GetDataBtwWhRh(const JPG_CYCLEBUF_S* pstCB, JPGBUF_DATA_S *pRdInfo);

/******************************************************************************
* Function:      JPGBUF_GetDataBtwWhRt
* Description:   
* Input:         pstCB        buf
* Output:        pstData    
* Return:        
* Others:        
******************************************************************************/
HI_S32 JPGBUF_GetDataBtwWhRt(const JPG_CYCLEBUF_S* pstCB, JPGBUF_DATA_S *pRdInfo);

/******************************************************************************
* Function:      JPGBUF_GetBufInfo
* Description:   buf
* Input:         pstCB      buf
* Output:        pBase      buf
*                pBufLen    buf
* Return:        
* Others:        
******************************************************************************/
HI_S32 JPGBUF_GetBufInfo(const JPG_CYCLEBUF_S* pstCB, 
                         HI_VOID** pBase, HI_U32* pBufLen);

/******************************************************************************
* Function:      JPGBUF_GetFreeLen
* Description:   buffer
* Input:         pstCB    buffer
* Output:        buffer
* Return:        
* Others:        
******************************************************************************/
HI_S32 JPGBUF_GetFreeInfo(const JPG_CYCLEBUF_S* pstCB,HI_VOID** pFreeBuf, HI_U32* pFreeLen);

#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_BUF_H_ */
