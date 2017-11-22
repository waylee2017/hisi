/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_hdec.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_HDEC_H_
#define _JPEG_HDEC_H_


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


//********************** Global Variable declaration **************************/

/******************************* API declaration *****************************/

/*******************************************************************************
 * Function:        JPGHDEC_CreateInstance
 * Description:     JPEG
 * Data Accessed:
 * Data Updated:
 * Input:           u32FileLen 
 * Output:          
 * Return:          HI_SUCCESS:          
 *                  HI_ERR_JPG_NO_MEM:   
 *                  HI_ERR_JPG_DEC_BUSY: 
 *                  HI_FAILURE:          
 * Others:          
*******************************************************************************/
HI_S32 JPGHDEC_CreateInstance(JPG_HANDLE *pHandle, HI_U32 u32FileLen);

/*******************************************************************************
 * Function:        JPGHDEC_DestroyInstance
 * Description:     JPEG
 * Data Accessed:
 * Data Updated:
 * Input:           
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_DestroyInstance(JPG_HANDLE Handle);

/*******************************************************************************
 * Function:        JPGHDEC_FlushBuf
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_FlushBuf(JPG_HANDLE Handle);

/*******************************************************************************
 * Function:        JPGHDEC_Reset
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_Reset(JPG_HANDLE Handle);

/*******************************************************************************
 * Function:        JPGHDEC_Check
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           pstruCheckInfo 
 * Output:          
 * Return:          HI_SUCCESS    
 *                  HI_FAILURE    
 * Others:
*******************************************************************************/
HI_S32 JPGHDEC_Check(JPG_HANDLE Handle, const JPGDEC_CHECKINFO_S *pCheckInfo);

/*******************************************************************************
 * Function:        JPGHDEC_SetDecodeInfo
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           pstruDecodeAttr 
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_S32 JPGHDEC_SetDecodeInfo(JPG_HANDLE Handle,
                                         JPGDEC_DECODEATTR_S *pstruDecodeAttr);

/*******************************************************************************
 * Function:        JPGHDEC_SendStream
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           pstruStreamInfo 
 * Output:          
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_SendStream(JPG_HANDLE Handle, JPGDEC_WRITESTREAM_S* pStreamInfo);

/*******************************************************************************
 * Function:        JPGHDEC_Start
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           
 * Output:          
 * Return:          HI_SUCCESS   
 *
 * Others:
*******************************************************************************/
HI_S32 JPGHDEC_Start(JPG_HANDLE Handle);


/*******************************************************************************
 * Function:        JPGHDEC_GetDecodeInfo
 * Description:     
 * Data Accessed:
 * Data Updated:
 * Input:           TimeOut      
 * Output:          pDecodeState 
 *                  pSize        
 * Return:          
 * Others:
*******************************************************************************/
HI_VOID JPGHDEC_GetDecodeInfo(JPGDEC_DECODESTATE_E *pDecodeState,HI_U32 *pSize,HI_U32 TimeOut);

/******************************************************************************
* Function:      JPGHDEC_Status

******************************************************************************/
HI_S32  JPGHDEC_Status(JPG_HANDLE Handle, HI_VOID **pBuf, HI_U32 *pBufLen,JPG_HDSTATE_E* pHdState);




/*****************************************************************************/

#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_HDEC_H_ */
