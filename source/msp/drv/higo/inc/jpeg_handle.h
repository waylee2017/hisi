/******************************************************************************
*
* Copyright (C) 2014 Hisilicon Technologies Co., Ltd.  All rights reserved. 
*
* This program is confidential and proprietary to Hisilicon  Technologies Co., Ltd. (Hisilicon), 
* and may not be copied, reproduced, modified, disclosed to others, published or used, in
* whole or in part, without the express prior written permission of Hisilicon.
*
******************************************************************************
File Name           : jpeg_handle.h
Version             : Initial Draft
Author              : 
Created             : 2014/09/09
Description         :
Function List       : 
History             :
Date                       Author                   Modification
2014/09/09                 y00181162                Created file        
******************************************************************************/

#ifndef _JPEG_HANDLE_H_
#define _JPEG_HANDLE_H_


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

/******************************************************************************
* Function:      JPG_HandleAlloc
* Description:   
* Input:         pInstance 
* Output:        pHandle   
* Return:        HI_SUCCESS:          
*                HI_ERR_JPG_NO_MEM:   
*                HI_FAILURE:             
* Others:        
******************************************************************************/
HI_S32 JPG_Handle_Alloc(JPG_HANDLE *pHandle, HI_VOID *pInstance);

/******************************************************************************
* Function:      JPG_HandleFree
* Description:   
* Input:         Handle    
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID JPG_Handle_Free(JPG_HANDLE Handle);

/******************************************************************************
* Function:      JPG_HandleGetInstance
* Description:   
* Input:             
* Output:        
* Return:        
* Others:        
******************************************************************************/
HI_VOID* JPG_Handle_GetInstance(JPG_HANDLE Handle);
HI_VOID JPG_Handle_Clear(HI_VOID);



#ifdef __cplusplus

#if __cplusplus

}
#endif
#endif /* __cplusplus */

#endif /* _JPEG_HANDLE_H_ */
