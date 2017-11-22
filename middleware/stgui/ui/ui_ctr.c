#include "ui_share.h"

static MBT_U8 usiv_u8MenuState = 0;

MBT_VOID uif_SetMenuFlag(MBT_U8 u8MenuState)
{
    usiv_u8MenuState = u8MenuState;
}

MBT_U8 uif_GetMenuState(MBT_VOID)
{
    return usiv_u8MenuState;
}


MBT_BOOL UIF_DVBAppInit(MBT_VOID)
{
    //MET_Task_T dvbHandle = MM_INVALID_HANDLE;
    BLASTF_Init();
    BLASTF_RegKeyMsgCall(UIF_SendKeyToUi);
    UIF_CloseStartUpGif();
    BMPF_CreateSrc();
    uif_SetupUI();
    WDCtrF_Start(uif_DeskTop,0);
    return	MM_FALSE;
}


/*****************************************************************************
 * FUNCTION     : UIF_GetSoftwareVersion
 * PURPOSE		: Returns a pointer to the Dbase Revision String.
*****************************************************************************/
MBT_CHAR* UIF_GetSoftwareVersion( MBT_VOID )
{
    static MBT_CHAR SoftWareVer[50];
    MBT_CHAR acYear[10];
    MBT_CHAR acMonth[10];
    MBT_CHAR acDay[10];
    MBT_CHAR acour[10];
    MBT_U16 Version;
    sscanf(__DATE__,"%s %s %s",acMonth,acDay,acYear); 
    strcpy(acour,__TIME__);   
    acour[2] = 0;
    memmove(acYear,acYear+2,6);
    MMF_GetHightAppVer(&Version);
    sprintf(SoftWareVer, "TF_V%X_%s%s%s%s", Version,acYear,acMonth,acDay,acour); 
    return SoftWareVer;
}


