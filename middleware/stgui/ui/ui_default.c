#include "ui_share.h"


/********************************************************************************************************
 * FUNCTION	    : Dbase_ProgramReset
 * PURPOSE      : Restore all the Dbase info provided by Factory. (include all program info)
 ********************************************************************************************************/
MBT_VOID uif_FactoryReset (MBT_VOID)   
{
    DVB_BOX *pstBoxInfo = DBSF_DataGetBoxInfo();       
    if(pstBoxInfo->ucBit.iVideoMode !=  MM_AV_RESOLUTION_1080i_P)
    {
        pstBoxInfo->ucBit.iVideoMode =  MM_AV_RESOLUTION_1080i_P;
        MLMF_AV_SetMute(MM_TRUE);
        UIF_TvSystemTogFunction(MM_AV_RESOLUTION_1080i_P);          
        MLMF_AV_SetMute(MM_FALSE);
    }

    if(pstBoxInfo->ucBit.TranNum !=  0)
    {
        pstBoxInfo->ucBit.TranNum =  0;
        MLMF_OSD_SetOSDAlpha(255);         
    }

    if(pstBoxInfo->ucBit.uAspectRatio !=  MM_VIDEO_ASPECT_RATIO_AUTO)
    {
        pstBoxInfo->ucBit.uAspectRatio =  MM_VIDEO_ASPECT_RATIO_AUTO;
        MLMF_AV_SetAspectRatio(MM_VIDEO_ASPECT_RATIO_AUTO);
    }

	 pstBoxInfo->ucBit.ucDlgDispTime = 4;

    if(pstBoxInfo->videoBrightness !=  DEFAULT_BRIGHTNESS)
    {
        pstBoxInfo->videoBrightness =  DEFAULT_BRIGHTNESS;
        MLMF_AV_SetBrightness(DEFAULT_BRIGHTNESS);
    }

    if(pstBoxInfo->videoContrast !=  DEFAULT_CONSTRACT)
    {
        pstBoxInfo->videoContrast =  DEFAULT_CONSTRACT;
        MLMF_AV_SetContrast(DEFAULT_CONSTRACT);
    }

    if(pstBoxInfo->videoSaturation !=  DEFAULT_SATURATION)
    {
        pstBoxInfo->videoSaturation =  DEFAULT_SATURATION;
        MLMF_AV_SetSaturation(DEFAULT_SATURATION);
    }

    if(pstBoxInfo->videoSharpness !=  DEFAULT_SHARPNESS)
    {
        pstBoxInfo->videoSharpness =  DEFAULT_SHARPNESS;
        MLMF_AV_SetSharpness(DEFAULT_SHARPNESS);
    }

    if(pstBoxInfo->videoHue !=  DEFAULT_HUE)
    {
        pstBoxInfo->videoHue =  DEFAULT_HUE;
        MLMF_AV_SetHue(DEFAULT_HUE);
    }

    DBSF_PlyOpenVideoWin(MM_FALSE);
    DBSF_ResetAll();
    TMF_CleanAllUITimer();
    uif_RemoveTimerFile();
    DBSF_ListSetPrgListType(m_ChannelList);
    uiv_u8Language = ENG_LANGUAGE_NO;
}




