/**********************************************************************************

File Name   : mml_entry.c

Description : <Describe what the file is for>

COPYRIGHT (C) 2005 STMicroelectronics - HES System Competence Center (Singapore)

Date               Modification                                             Name
----               ------------                                             ----
12/22/2005        Created                                                  Louie
<$ModMark> (do not move/delete)
***********************************************************************************/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif

/* Includes ----------------------------------------------------------------- */
#include "mapi_inner.h"
#include "mapi_entry.h"


MMT_STB_ErrorCode_E MLF_EntryHightApp(void)
{
    MMT_STB_ErrorCode_E Error = MM_ERROR_UNKNOW;

    Error = MLMF_Uart_Init();
    Error = MLF_SysInit(); 
    Error = MLF_FlashInit(); 
    
    Error = MLMF_AV_Disp_Init();
    
    Error = MLF_SmartCardInit();
    Error = MLF_TunerInit();
    Error = MLF_DmxInit();

    Error = MLF_ImgInit(); 
    Error = MLF_UsbInit();      
    Error = MLF_BlastInit(); 

    
    /*AV在制式转换时要用到OSD里面的信号量，所以其初始化应该在OSD之后*/
    Error = MLMF_AV_Init();     

    Error = MLF_OSDInit();     
    
    Error = MLF_FPInit();
    
    Error = MMLF_HightAppStart();

    return Error;
}


/* end C++ support */
#ifdef __cplusplus
}
#endif

/* ----------------------------- End of file (mml_entry.c) ------------------------- */
