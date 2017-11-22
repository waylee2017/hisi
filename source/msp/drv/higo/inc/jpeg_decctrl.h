/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_decctrl.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_DECCTRL_H_
#define _JPEG_DECCTRL_H_


/*********************************add include here******************************/
#include "hi_type.h"
#include "jpeg_type.h"

/*****************************************************************************/


#ifdef __cplusplus
#if __cplusplus
   extern "C"
{
#endif
#endif /* __cplusplus */



/***************************** Macro Definition ******************************/

/*************************** Structure Definition ****************************/
typedef enum hiJPG_STATE_E
{
    JPG_STATE_STOP = 0,           

    JPG_STATE_PARSING,              
    JPG_STATE_PARTPARSED,           
    JPG_STATE_THUMBPARSED,          
    JPG_STATE_PARSED,               
    JPG_STATE_PARSEERR,             
    
    JPG_STATE_DECODING,             
    JPG_STATE_DECODED,               
    JPG_STATE_DECODEERR,            
    
    JPG_STATE_BUTT
}JPG_STATE_E;

typedef struct hiJPGDEC_WRITESTREAM_S
{
    HI_VOID *pStreamAddr;    
    HI_U32   StreamLen;      
    HI_BOOL  EndFlag;        
    HI_U32   CopyLen;        
    HI_BOOL  NeedCopyFlag;   
}JPGDEC_WRITESTREAM_S;


//********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

/******************************************************************************
* Function:      JPG_CreateDecoder
* Description:   
* Input:         u32FileLen 
* Output:        pHandle JPG
* Return:        HI_SUCCESS:            
*                HI_ERR_JPG_DEC_BUSY:   
*                HI_ERR_JPG_DEV_NOOPEN: 
*                HI_ERR_JPG_NO_MEM:     
*                HI_FAILURE:            
* Others:        
******************************************************************************/
HI_S32 JPG_CreateDecoder(JPG_HANDLE *pHandle, JPG_IMGTYPE_E ImgType, HI_U32 ImgLen);

/******************************************************************************
* Function:      JPG_DestroyDecoder
* Description:   
* Input:         
* Output:        Handle JPG
* Return:        HI_SUCCESS                 
* Others:        
******************************************************************************/
HI_S32  JPG_DestroyDecoder(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPG_Probe
* Description:   
* Input:         Handle 
*                pBuf    
*                BufLen 
* Output:        
* Return:        HI_SUCCESS                        
*                HI_ERR_JPG_WANT_STREAM  
*                HI_FAILURE                           
* Others:       
******************************************************************************/
HI_S32  JPG_Probe(JPG_HANDLE Handle, HI_VOID* pBuf, HI_U32 BufLen);

/******************************************************************************
* Function:      JPG_Decode
* Description:   
* Input:         Handle   
*                pSurface 
*                Index   
* Output:        
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_WANT_STREAM     
*                HI_ERR_JPG_DEC_FAIL        
*                HI_FAILURE                 
* Others:        
******************************************************************************/
HI_S32  JPG_Decode(JPG_HANDLE Handle, const JPG_SURFACE_S *pSurface,
                   HI_U32 Index);

/******************************************************************************
* Function:      JPG_GetPrimaryInfo
* Description:   
* Input:         Handle   
* Output:        pImageInfo 
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_WANT_STREAM     
*                HI_ERR_JPG_PARSE_FAIL      
*                HI_FAILURE                 
* Others:        
******************************************************************************/
HI_S32  JPG_GetPrimaryInfo(JPG_HANDLE Handle, JPG_PRIMARYINFO_S **pPrimaryInfo);

/******************************************************************************
* Function:      JPG_ReleasePrimaryInfo
* Description:   
* Input:         Handle   
* Output:        pImageInfo 
* Return:        HI_SUCCESS 
* Others:        
******************************************************************************/
HI_S32  JPG_ReleasePrimaryInfo(JPG_HANDLE Handle, JPG_PRIMARYINFO_S *pImageInfo);

/******************************************************************************
* Function:      JPG_GetPicInfo
* Description:   
* Input:         Handle   
*                Index   
* Output:        pPicInfo 
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_WANT_STREAM     
*                HI_ERR_JPG_PARSE_FAIL      
*                HI_ERR_JPG_THUMB_NOEXIST   
*                HI_FAILURE                 
* Others:        
******************************************************************************/
HI_S32  JPG_GetPicInfo(JPG_HANDLE Handle, JPG_PICINFO_S *pPicInfo,
                             HI_U32 Index);

/******************************************************************************
* Function:      JPG_GetStatus
* Description:   
* Input:         Handle   
* Output:        pState   
*                pIndex   
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_PTR_NULL        
*                HI_ERR_JPG_INVALID_HANDLE  
* Others:        
******************************************************************************/
HI_S32  JPG_GetStatus(JPG_HANDLE Handle, JPG_STATE_E *pState, HI_U32 *pIndex);

/******************************************************************************
* Function:      JPG_SendStream
* Description:   
* Input:         Handle     
*                pWriteInfo 
* Output:        
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_PTR_NULL        
*                HI_ERR_JPG_INVALID_PARA    
*                HI_ERR_JPG_INVALID_HANDLE  
* Others:        
******************************************************************************/
HI_S32  JPG_SendStream(HI_U32 Handle, JPGDEC_WRITESTREAM_S *pWriteInfo);

/******************************************************************************
* Function:      JPG_ResetDecoder
* Input:         Handle     
* Output:        
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
* Others:        
******************************************************************************/
HI_S32  JPG_ResetDecoder(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPG_IsNeedStream
* Description:   
* Input:         Handle     
* Output:        pSize      
* Return:        HI_SUCCESS 
*                HI_FAILURE 
* Others:        
******************************************************************************/
HI_S32  JPG_IsNeedStream(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32 *pSize);

/******************************************************************************
* Function:      JPG_GetExifData
* Description:  
* Output:        pAddr      
*                pSize      
* Return:        HI_SUCCESS 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_WANT_STREAM     
*                HI_ERR_JPG_PARSE_FAIL      
*                HI_ERR_JPG_NO_MEM:         
* Others:        
******************************************************************************/
HI_S32  JPG_GetExifData(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32 *pSize);

/******************************************************************************
* Function:      JPG_ReleaseExifData
* Description:  
* Input:         Handle      
*                pAddr      
* Output:        
* Return:        HI_SUCCESS 
*                    HI_FAILURE 
* Others:        
******************************************************************************/
HI_S32  JPG_ReleaseExifData(JPG_HANDLE Handle, HI_VOID* pAddr);

/******************************************************************************
* Function:      JPG_HdecCheck
* Description:   
* Input:         Handle   
*                pSurface 
*                Index    0
* Output:        
* Return:        HI_SUCCESS 
*                HI_FAILURE 
*                HI_ERR_JPG_INVALID_HANDLE  
*                HI_ERR_JPG_DEC_FAIL        
* Others:        
******************************************************************************/
HI_S32 JPG_HdecCheck(JPG_HANDLE Handle, HI_U32 Index);



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_DECCTRL_H_ */
