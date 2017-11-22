/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_parse.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_PARSE_H_
#define _JPEG_PARSE_H_


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
#define JPG_QUANT_DCTSIZE  64  
#define JPG_NUM_QUANT_TBLS 4   
#define JPG_NUM_HUFF_TBLS  4   
#define JPG_NUM_COMPONENT  4  



/*************************** Structure Definition ****************************/
typedef struct hiJPG_QUANT_TBL
{
    HI_U8  Precise;                     
    HI_U16 Quantval[JPG_QUANT_DCTSIZE]; 
} JPG_QUANT_TBL;


typedef struct hiJPG_HUFF_TBL
{
    HI_U8  Bits[17];     
    HI_U16 HuffValLen;   
    HI_U8  HuffVal[256];
} JPG_HUFF_TBL;


typedef struct hiJPG_COMPONENT_INFO
{
  HI_U32 ComponentId;          
  HI_U32 ComponentIndex;       
  HI_U32 HoriSampFactor;       
  HI_U32 VertSampFactor;       
  HI_U8  QuantTblNo;           
  HI_U32 DcTblNo;              
  HI_U32 AcTblNo;             
  JPG_QUANT_TBL * pQuantTable; 
  HI_BOOL Used;                
}JPG_COMPONENT_INFO;


typedef struct hiJPG_MJPG_INFO
{
  HI_U32 QuantOffset;          
  HI_U32 HuffOffset;           
  HI_U32 FrameOffset;          
  HI_U32 ScanOffset;           
  HI_U8  DataOffset;           
}JPG_MJPG_INFO;

typedef struct hiJPG_PICPARSEINFO_S
{
    HI_U32         SyntaxState;       
    HI_U32         Index;             
    JPG_PICTYPE_E  Profile;           
    HI_U32         Width;             
    HI_U32         Height;            
    HI_U32         ComponentNum;      
    HI_U32         Precise;           
    HI_U32         MaxHoriFactor;     
    HI_U32         MaxVertFactor;     
    HI_U32         CodeType;          
    HI_U32         ComponentInScan;  
    JPG_MJPG_INFO  MjpgInfo;          
    HI_U32         ScanNmber;         
    HI_U8          Ss, Se, Ah, Al;   
    JPG_QUANT_TBL *pQuantTbl[JPG_NUM_QUANT_TBLS];  
    JPG_HUFF_TBL  *pDcHuffTbl[JPG_NUM_HUFF_TBLS];  
    JPG_HUFF_TBL  *pAcHuffTbl[JPG_NUM_HUFF_TBLS];  
    JPG_COMPONENT_INFO ComponentInfo[JPG_NUM_COMPONENT];  

    struct hiJPG_PICPARSEINFO_S *pNext;
}JPG_PICPARSEINFO_S;

typedef enum hiJPG_PARSESTATE_E
{
    JPGPARSE_STATE_STOP = 0,        

    JPGPARSE_STATE_PARSING,         
    JPGPARSE_STATE_PARTPARSED,      
    JPGPARSE_STATE_THUMBPARSED,     
    JPGPARSE_STATE_PARSED,          
    JPGPARSE_STATE_PARSEERR,        

    JPGPARSE_STATE_BUTT
}JPG_PARSESTATE_E;

typedef struct hiJPG_PARSESTATE_S
{
    HI_U32 Index;                   
    HI_U32 ThumbCnt;                
    JPG_PARSESTATE_E State;
    HI_U32 ThumbEcsLen;            
}JPG_PARSESTATE_S;


//********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

/******************************************************************************
* Function:      JPGPARSE_CreateInstance
* Description:   
* Input:         
* Output:        pHandle     
* Return:        HI_SUCCESS:        
*                HI_ERR_JPG_NO_MEM: 
* Others:        
******************************************************************************/
HI_S32 JPGPARSE_CreateInstance(JPG_HANDLE *pHandle, JPG_IMGTYPE_E ImgType);

/******************************************************************************
* Function:      JPGPARSE_DestroyInstance
* Description:   
* Input:         Handle      
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPGPARSE_DestroyInstance(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPGPARSE_Parse
* Description:   
* Input:         Handle      
*                pParseBuf   BUF
*                Index       
* Output:        ParseState  
* Return:        HI_SUCCESS:            
*                ERR_JPG_WANT_STREAM:   
* Others:        Index
******************************************************************************/
HI_S32 JPGPARSE_Parse(JPG_HANDLE Handle, JPG_CYCLEBUF_S *pParseBuf, HI_U32 Index,
                      HI_BOOL bInfo, JPG_PARSESTATE_S *pParseState);

/******************************************************************************
* Function:      JPGPARSE_Reset
* Description:   
* Input:         Handle      
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPGPARSE_Reset(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPGPARSE_EOICheck
* Description:   EOI
* Input:         Handle      
*                pParseBuf   BUF
* Output:        pOffset     
* Return:        HI_SUCCESS  
*                HI_FAILURE  
* Others:        
******************************************************************************/
HI_S32 JPGPARSE_EndCheck(JPG_HANDLE Handle, JPG_CYCLEBUF_S *pParseBuf,
                                    HI_U32 *pOffset, HI_BOOL* pLastIsFF);

/******************************************************************************
* Function:      JPGPARSE_GetImgInfo
* Description:   
* Input:         Handle   
* Output:        pImgInfo 
* Return:        
* Others:        JPGPARSE_Parse
*                
******************************************************************************/
HI_VOID JPGPARSE_GetImgInfo(JPG_HANDLE Handle, JPG_PICPARSEINFO_S **pImgInfo);

/******************************************************************************
* Function:      JPGPARSE_GetExifInfo
* Description:    
* Input:         Handle   
* Output:        pAddr 
*                pSize   
* Return:        
* Others:        
*                
******************************************************************************/
HI_VOID JPGPARSE_GetExifInfo(JPG_HANDLE Handle, HI_VOID** pAddr, HI_U32* pSize);

/******************************************************************************
* Function:      JPGPARSE_ReleaseExif
* Description:    
* Input:         Handle   
* Output:        pAddr 
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPGPARSE_ReleaseExif(JPG_HANDLE Handle, HI_VOID* pAddr);



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_PARSE_H_ */
