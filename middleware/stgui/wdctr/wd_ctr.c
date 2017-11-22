#include "wd_ctr.h"
#include "bmp_src.h"
#include "uictr_api.h"
#include "appblast.h"

typedef struct _usif_window_
{
    MBT_S32 (*usif_window)(MBT_S32 iPara);
    MBT_S32 s32WinPara;
    struct _usif_window_ *pNextWindow;
}USIF_WINDOW;

static MBT_S32 (*WDCtrF_pDesktopWindow)(MBT_S32 iPara) = MM_NULL;
static MBT_S32 usiv_s32DesktopWinPara = 0;
static USIF_WINDOW *pUsiv_Window = MM_NULL;

static MBT_VOID RemoveCurWindow(MBT_VOID)
{
    if(pUsiv_Window)
    {
        USIF_WINDOW *pTempUsiv_Window = pUsiv_Window;
        pUsiv_Window = pUsiv_Window->pNextWindow;
        MLMF_Free(pTempUsiv_Window);
    }
}

static MBT_VOID RemoveAllWindow(MBT_VOID)
{
	USIF_WINDOW *pTempUsiv_Window = pUsiv_Window;

	while(pTempUsiv_Window)
	{
		pUsiv_Window = pTempUsiv_Window->pNextWindow;
		MLMF_Free(pTempUsiv_Window);
		pTempUsiv_Window = pUsiv_Window;
	}
}

static MBT_VOID ExitToDeskTop(MBT_VOID)
{
	USIF_WINDOW *pTempUsiv_Window = pUsiv_Window;

	while(pTempUsiv_Window)
	{
		if(MM_NULL == pTempUsiv_Window->pNextWindow)
		{
			break;
		}
		pUsiv_Window = pTempUsiv_Window->pNextWindow;
		MLMF_Free(pTempUsiv_Window);
		pTempUsiv_Window = pUsiv_Window;
	}

	if(WDCtrF_pDesktopWindow != pUsiv_Window->usif_window)
	{
		RemoveAllWindow();
		WDCtrF_PutWindow(WDCtrF_pDesktopWindow, 0);
	}
}

MBT_VOID WDCtrF_PutWindow(MBT_S32 (*usif_window)(MBT_S32 iPara),MBT_S32 iPara)
{
    if(usif_window)
    {
        USIF_WINDOW *pTempUsiv_Window = MLMF_Malloc(sizeof(USIF_WINDOW));
        if(pTempUsiv_Window)
        {
            pTempUsiv_Window->usif_window = usif_window;
            pTempUsiv_Window->pNextWindow = pUsiv_Window;
            pUsiv_Window = pTempUsiv_Window;
            pTempUsiv_Window->s32WinPara = iPara;
        }
    }
}


MBT_BOOL WDCtrF_Start(MBT_S32 (*pDesktopWindow)(MBT_S32 iPara),MBT_S32 iPara)
{
    if(MM_NULL == pDesktopWindow)
    {
        return MM_FALSE;
    }
    
    WDCtrF_pDesktopWindow = pDesktopWindow;
    usiv_s32DesktopWinPara = iPara;
    
    while(MM_TRUE)
    {
        if(pUsiv_Window)
        {
            if(MM_NULL == pUsiv_Window)
            {
                WDCtrF_PutWindow(WDCtrF_pDesktopWindow, 0);    
            }
            
            switch(pUsiv_Window->usif_window(pUsiv_Window->s32WinPara))
            {
                case DUMMY_KEY_EXITALL:
                    ExitToDeskTop();
                    break;
                case DUMMY_KEY_ADDWINDOW:
                    break;
                 default:
                    RemoveCurWindow();
                    break;
            }
            UCTRF_SliderFree();
        }
        else
        {
            WDCtrF_PutWindow(WDCtrF_pDesktopWindow, 0);    
        }
    }
}


