/**********************************************************************************

File Name   : appblast.c

Description : <Describe what the file is for>

COPYRIGHT (C) 2005 STMicroelectronics - HES System Competence Center (Singapore)

Date               Modification                                             Name
----               ------------                                             ----
12/26/2005        Created                                                  Louie
<$ModMark> (do not move/delete)
***********************************************************************************/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif
#include "mm_common.h"
#include "appblast.h"


static MBT_U8 blastv_u8LockKeyBoad = 0;
static MBT_VOID  (*blastf_GetKeyCall) (MBT_U32 u32Key) = MM_NULL;

MBT_VOID BLASTF_LockKeyBoad(MBT_VOID)
{
    blastv_u8LockKeyBoad = 1;
}

MBT_VOID BLASTF_UnLockKeyBoad(MBT_VOID)
{
    blastv_u8LockKeyBoad = 0;
}

MBT_U8 BLASTF_GetLockKeyBoadStatus(MBT_VOID)
{
    return blastv_u8LockKeyBoad;
}

MBT_VOID BLASTF_RegKeyMsgCall(MBT_VOID  (*GetKeyCall) (MBT_U32 u32Key))
{
    blastf_GetKeyCall = GetKeyCall;
}

#if (IR_CUSTOMER == IR_CUSTOMER_GTPL)
MBT_VOID BLASTF_SendKeyMsg(MBT_U16 u16key,MMT_BLAST_Status_E eStatus)
{
    MBT_U32 u32ParseKey = 0;
#if(OVT_FAC_MODE == 1)
	static MBT_S32 iFacPreKey=0;
#endif

    if(MM_NULL == blastf_GetKeyCall||MM_BLAST_RELEASE == eStatus)
    {
        return;
    }
    
    if(1 == blastv_u8LockKeyBoad&&PHY_POWER_KEY != u16key)
    {
        return;
    }

    if((PHY_POWER_KEY == u16key) && (MM_BLAST_REPEAT == eStatus))
    {
        return;
    }
    
    //printf("---> [%s] u16key = 0x%x\n",__FUNCTION__,u16key);
    switch (u16key)
    {
        case PHY_POWER_KEY:
            u32ParseKey = DUMMY_KEY_POWER;
            break;

        case PHY_REC_KEY:
            u32ParseKey = DUMMY_KEY_REC;
            break;
            
        case PHY_REWARD_KEY:
            u32ParseKey = DUMMY_KEY_BACKWARD;
            break;
            
        case PHY_FWDWARD_KEY:
            u32ParseKey = DUMMY_KEY_FORWARD;
            break;
            
        case PHY_GOTO_KEY:
            u32ParseKey = DUMMY_KEY_GOTO;
            break;
            
        case PHY_VOD_KEY:
            u32ParseKey = DUMMY_KEY_VOD;
            break;
            
        case PHY_START_KEY:
            u32ParseKey = DUMMY_KEY_START;
            break;
            
        case PHY_STOP_KEY:
            u32ParseKey = DUMMY_KEY_STOP;
            break;
            
        case PHY_LANG_KEY:
            u32ParseKey = DUMMY_KEY_LANG;
            break;
            
        case PHY_RED_KEY:
            u32ParseKey = DUMMY_KEY_RED;
            break;
            
        case PHY_GREEN_KEY:
            u32ParseKey = DUMMY_KEY_GREEN;
            break;
            
        case PHY_YELLOW_KEY:
            u32ParseKey = DUMMY_KEY_YELLOW_SUBSCRIBE;
            break;
            
        case PHY_BLUE_KEY:
            u32ParseKey = DUMMY_KEY_BLUE_EDIT;
            break;
            
        case PHY_MENU_KEY:
            u32ParseKey = DUMMY_KEY_MENU;
            break;

        case PHY_EPG_KEY:
            u32ParseKey = DUMMY_KEY_EPG;
            break;

        case PHY_SELECT_KEY:
            u32ParseKey = DUMMY_KEY_SELECT;
            break;	
            
        case PHY_UPARROW_KEY:
            u32ParseKey = DUMMY_KEY_UPARROW;
            break;	
            
        case PHY_LEFTARROW_KEY:
            u32ParseKey = DUMMY_KEY_LEFTARROW;
            break;	
            
        case PHY_RIGHTARROW_KEY:
            u32ParseKey = DUMMY_KEY_RIGHTARROW;
            break;	
            
        case PHY_DW_ARROW_KEY:
            u32ParseKey = DUMMY_KEY_DNARROW;
            break;

        case PHY_LAST_KEY:
            u32ParseKey = DUMMY_KEY_RECALL;
            break;

        case PHY_EXIT_KEY:
            u32ParseKey = DUMMY_KEY_EXIT;
            break;

        case PHY_AUDIOINCREASE_KEY:
            u32ParseKey = DUMMY_KEY_VOLUMEUP;
            break;	
            
        case PHY_AUDIODECREASE_KEY:
            u32ParseKey = DUMMY_KEY_VOLUMEDN;
            break;	
            
        case PHY_PGUP_KEY:
            u32ParseKey = DUMMY_KEY_PGUP;
            break;
            
        case PHY_PGDN_KEY:
            u32ParseKey = DUMMY_KEY_PGDN;
            break;

        case PHY_INFO_KEY:
            u32ParseKey = DUMMY_KEY_INFO;
            break;
            
        case PHY_FAV_KEY:
            u32ParseKey = DUMMY_KEY_FAV;
            break;
   
        case PHY_K0_KEY:
            u32ParseKey = DUMMY_KEY_0;
            break;
                
        case PHY_K1_KEY:
            u32ParseKey = DUMMY_KEY_1;
            break;
                
        case PHY_K2_KEY:
            u32ParseKey = DUMMY_KEY_2;
            break;
                
        case PHY_K3_KEY:
            u32ParseKey = DUMMY_KEY_3;
            break;
                
        case PHY_K4_KEY:
            u32ParseKey = DUMMY_KEY_4;
            break;
                
        case PHY_K5_KEY:
            u32ParseKey = DUMMY_KEY_5;
            break;
                
        case PHY_K6_KEY:
            u32ParseKey = DUMMY_KEY_6;
            break;
                
        case PHY_K7_KEY:
            u32ParseKey = DUMMY_KEY_7;
            break;
                
        case PHY_K8_KEY:
            u32ParseKey = DUMMY_KEY_8;
            break;
                
        case PHY_K9_KEY:
            u32ParseKey = DUMMY_KEY_9;
            break;                                          
                        
        case PHY_TVRADIO_KEY:   
            u32ParseKey = DUMMY_KEY_TVRADIO;
            break;  
   
        case PHY_MUTE_KEY:
            u32ParseKey = DUMMY_KEY_MUTE;
            break;

#if(OVT_FAC_MODE == 1)
          case PHY_FAC_F5:
          	u32ParseKey = DUMMY_KEY_FAC_AGE;
          	break;
          case PHY_FAC_F6:
          	u32ParseKey = DUMMY_KEY_FAC_SYS;
          	break;
          case PHY_FAC_F7:
          	iFacPreKey = 1;
			u32ParseKey = m_invalidercukey;
			break;
		  case PHY_FAC_F8:
		  	if(1==iFacPreKey)
			{
				u32ParseKey = DUMMY_KEY_FAC_MAIN;
			}
			else
			{
				iFacPreKey = 0;
				u32ParseKey = m_invalidercukey;
			}
          	
          	break;
#endif
        default:
            u32ParseKey = m_invalidercukey;
            break;
    }

    if(m_invalidercukey != u32ParseKey)
    {
        blastf_GetKeyCall(u32ParseKey|((eStatus << 16)&0xFFFF0000));
    }
}
#elif (IR_CUSTOMER == IR_CUSTOMER_OVT)
MBT_VOID BLASTF_SendKeyMsg(MBT_U16 u16key,MMT_BLAST_Status_E eStatus)
{
    MBT_U32 u32ParseKey = 0;
#if(OVT_FAC_MODE == 1)
	static MBT_S32 iFacPreKey=0;
#endif

    if(MM_NULL == blastf_GetKeyCall||MM_BLAST_RELEASE == eStatus)
    {
        return;
    }
    
    if(1 == blastv_u8LockKeyBoad&&PHY_POWER_KEY != u16key)
    {
        return;
    }
    
    //MLMF_Print("---> [%s] u16key = 0x%x eStatus = %x\n",__FUNCTION__,u16key,eStatus);
    switch (u16key)
    {
        case PHY_POWER_KEY:
            u32ParseKey = DUMMY_KEY_POWER;
            break;

        case PHY_REC_KEY:
            u32ParseKey = DUMMY_KEY_REC;
            break;
            
        case PHY_BACKWARD_KEY:
            u32ParseKey = DUMMY_KEY_BACKWARD;
            break;
            
        case PHY_FORWARD_KEY:
            u32ParseKey = DUMMY_KEY_FORWARD;
            break;
            
        case PHY_GOTO_KEY:
            u32ParseKey = DUMMY_KEY_GOTO;
            break;
            
        //case PHY_VOD_KEY:
        //    u32ParseKey = DUMMY_KEY_VOD;
        //    break;
            
        case PHY_START_KEY:
            u32ParseKey = DUMMY_KEY_START;
            break;
            
        case PHY_STOP_KEY:
            u32ParseKey = DUMMY_KEY_STOP;
            break;
            
        case PHY_AUDIOTRACK_KEY:
            u32ParseKey = DUMMY_KEY_LANG;
            break;
            
        case PHY_RED_KEY:
            u32ParseKey = DUMMY_KEY_RED;
            break;
            
        case PHY_GREEN_KEY:
            u32ParseKey = DUMMY_KEY_GREEN;
            break;
            
        case PHY_YELLOW_KEY:
#if(OVT_FAC_MODE == 1)
            if(1==iFacPreKey)
            {
                u32ParseKey = DUMMY_KEY_FAC_MAIN;
            }
            else
            {
                iFacPreKey = 0;
                u32ParseKey = DUMMY_KEY_YELLOW_SUBSCRIBE;
            }
#else            
            u32ParseKey = DUMMY_KEY_YELLOW_SUBSCRIBE;
#endif
            break;
            
        case PHY_BLUE_KEY:
            u32ParseKey = DUMMY_KEY_BLUE_EDIT;
            break;
            
        case PHY_MENU_KEY:
            u32ParseKey = DUMMY_KEY_MENU;
            break;

        case PHY_EPG_KEY:
            u32ParseKey = DUMMY_KEY_EPG;
            break;

        case PHY_SELECT_KEY:
            u32ParseKey = DUMMY_KEY_SELECT;
            break;	
            
        case PHY_UPARROW_KEY:
            u32ParseKey = DUMMY_KEY_UPARROW;
            break;	
            
        case PHY_LEFTARROW_KEY:
            u32ParseKey = DUMMY_KEY_LEFTARROW;
            break;	
            
        case PHY_RIGHTARROW_KEY:
            u32ParseKey = DUMMY_KEY_RIGHTARROW;
            break;	
            
        case PHY_DW_ARROW_KEY:
            u32ParseKey = DUMMY_KEY_DNARROW;
            break;

        case PHY_RECALL_KEY:
            u32ParseKey = DUMMY_KEY_RECALL;
            break;

        case PHY_EXIT_KEY:
            u32ParseKey = DUMMY_KEY_EXIT;
            break;

        case PHY_AUDIOINCREASE_KEY:
            u32ParseKey = DUMMY_KEY_VOLUMEUP;
            break;	
            
        case PHY_AUDIODECREASE_KEY:
            u32ParseKey = DUMMY_KEY_VOLUMEDN;
            break;	
            
        case PHY_PGUP_KEY:
            u32ParseKey = DUMMY_KEY_PGUP;
            break;
            
        case PHY_PGDN_KEY:
            u32ParseKey = DUMMY_KEY_PGDN;
            break;

        case PHY_INFO_KEY:
            u32ParseKey = DUMMY_KEY_INFO;
            break;
            
        case PHY_FAV_KEY:
            u32ParseKey = DUMMY_KEY_FAV;
            break;
   
        case PHY_K0_KEY:
            u32ParseKey = DUMMY_KEY_0;
            break;
                
        case PHY_K1_KEY:
            u32ParseKey = DUMMY_KEY_1;
            break;
                
        case PHY_K2_KEY:
            u32ParseKey = DUMMY_KEY_2;
            break;
                
        case PHY_K3_KEY:
            u32ParseKey = DUMMY_KEY_3;
            break;
                
        case PHY_K4_KEY:
            u32ParseKey = DUMMY_KEY_4;
            break;
                
        case PHY_K5_KEY:
            u32ParseKey = DUMMY_KEY_5;
            break;
                
        case PHY_K6_KEY:
            u32ParseKey = DUMMY_KEY_6;
            break;
                
        case PHY_K7_KEY:
            u32ParseKey = DUMMY_KEY_7;
            break;
                
        case PHY_K8_KEY:
            u32ParseKey = DUMMY_KEY_8;
            break;
                
        case PHY_K9_KEY:
            u32ParseKey = DUMMY_KEY_9;
            break;                                          
                        
        case PHY_TVRADIO_KEY:   
            u32ParseKey = DUMMY_KEY_TVRADIO;
            break;  
   
        case PHY_MUTE_KEY:
            u32ParseKey = DUMMY_KEY_MUTE;
            break;

        case PHY_PREV_KEY:
            u32ParseKey = DUMMY_KEY_PREV;
            break;

        case PHY_NEXT_KEY:
            u32ParseKey = DUMMY_KEY_NEXT;
            break;         

#if(OVT_FAC_MODE == 1)
          case PHY_FAC_F5:
          	u32ParseKey = DUMMY_KEY_FAC_AGE;
          	break;
          case PHY_FAC_F6:
          	u32ParseKey = DUMMY_KEY_FAC_SYS;
          	break;
          case PHY_FAC_F7:
          	iFacPreKey = 1;
			u32ParseKey = m_invalidercukey;
			break;
#endif
        default:
            u32ParseKey = m_invalidercukey;
            break;
    }

    if(m_invalidercukey != u32ParseKey)
    {
        blastf_GetKeyCall(u32ParseKey|((eStatus << 16)&0xFFFF0000));
    }
}
#elif (IR_CUSTOMER == IR_CUSTOMER_SECUR)
MBT_VOID BLASTF_SendKeyMsg(MBT_U16 u16key,MMT_BLAST_Status_E eStatus)
{
    MBT_U32 u32ParseKey = 0;
#if(OVT_FAC_MODE == 1)
	static MBT_S32 iFacPreKey=0;
#endif

    //MLMF_Print("---> [%s] u16key = 0x%x, eStatus=%d\n",__FUNCTION__,u16key, eStatus);

    if(MM_NULL == blastf_GetKeyCall||MM_BLAST_RELEASE == eStatus)
    {
        return;
    }
    
    if(1 == blastv_u8LockKeyBoad&&PHY_POWER_KEY != u16key)
    {
        return;
    }

    if((PHY_POWER_KEY == u16key) && (MM_BLAST_REPEAT == eStatus))
    {
        return;
    }
    
    switch (u16key)
    {
        case PHY_POWER_KEY:
            u32ParseKey = DUMMY_KEY_POWER;
            break;

        case PHY_REC_KEY:
            u32ParseKey = DUMMY_KEY_REC;
            break;
            
        case PHY_REWARD_KEY:
            u32ParseKey = DUMMY_KEY_BACKWARD;
            break;
            
        case PHY_FWDWARD_KEY:
            u32ParseKey = DUMMY_KEY_FORWARD;
            break;
            
        case PHY_GOTO_KEY:
            u32ParseKey = DUMMY_KEY_GOTO;
            break;
            
        case PHY_VOD_KEY:
            u32ParseKey = DUMMY_KEY_VOD;
            break;
            
        case PHY_START_KEY:
            u32ParseKey = DUMMY_KEY_START;
            break;
            
        case PHY_STOP_KEY:
            u32ParseKey = DUMMY_KEY_STOP;
            break;
            
        case PHY_LANG_KEY:
            u32ParseKey = DUMMY_KEY_LANG;
            break;
            
        case PHY_RED_KEY:
            u32ParseKey = DUMMY_KEY_RED;
            break;
            
        case PHY_GREEN_KEY:
            u32ParseKey = DUMMY_KEY_GREEN;
            break;
            
        case PHY_YELLOW_KEY:
            u32ParseKey = DUMMY_KEY_YELLOW_SUBSCRIBE;
            break;
            
        case PHY_BLUE_KEY:
            u32ParseKey = DUMMY_KEY_BLUE_EDIT;
            break;
            
        case PHY_MENU_KEY:
            u32ParseKey = DUMMY_KEY_MENU;
            break;

        case PHY_EPG_KEY:
            u32ParseKey = DUMMY_KEY_EPG;
            break;

        case PHY_SELECT_KEY:
            u32ParseKey = DUMMY_KEY_SELECT;
            break;	
            
        case PHY_UPARROW_KEY:
            u32ParseKey = DUMMY_KEY_UPARROW;
            break;	
            
        case PHY_LEFTARROW_KEY:
            u32ParseKey = DUMMY_KEY_LEFTARROW;
            break;	
            
        case PHY_RIGHTARROW_KEY:
            u32ParseKey = DUMMY_KEY_RIGHTARROW;
            break;	
            
        case PHY_DW_ARROW_KEY:
            u32ParseKey = DUMMY_KEY_DNARROW;
            break;

        case PHY_LAST_KEY:
            u32ParseKey = DUMMY_KEY_RECALL;
            break;

        case PHY_EXIT_KEY:
            u32ParseKey = DUMMY_KEY_EXIT;
            break;

        case PHY_AUDIOINCREASE_KEY:
            u32ParseKey = DUMMY_KEY_VOLUMEUP;
            break;	
            
        case PHY_AUDIODECREASE_KEY:
            u32ParseKey = DUMMY_KEY_VOLUMEDN;
            break;	
            
        case PHY_PGUP_KEY:
            u32ParseKey = DUMMY_KEY_PGUP;
            break;
            
        case PHY_PGDN_KEY:
            u32ParseKey = DUMMY_KEY_PGDN;
            break;

        case PHY_INFO_KEY:
            u32ParseKey = DUMMY_KEY_GREEN;
            break;

		case PHY_USB_KEY:
			u32ParseKey = DUMMY_KEY_BLUE_EDIT;
			break;

        case PHY_FAV_KEY:
            u32ParseKey = DUMMY_KEY_FAV;
            break;
   
        case PHY_K0_KEY:
            u32ParseKey = DUMMY_KEY_0;
            break;
                
        case PHY_K1_KEY:
            u32ParseKey = DUMMY_KEY_1;
            break;
                
        case PHY_K2_KEY:
            u32ParseKey = DUMMY_KEY_2;
            break;
                
        case PHY_K3_KEY:
            u32ParseKey = DUMMY_KEY_3;
            break;
                
        case PHY_K4_KEY:
            u32ParseKey = DUMMY_KEY_4;
            break;
                
        case PHY_K5_KEY:
            u32ParseKey = DUMMY_KEY_5;
            break;
                
        case PHY_K6_KEY:
            u32ParseKey = DUMMY_KEY_6;
            break;
                
        case PHY_K7_KEY:
            u32ParseKey = DUMMY_KEY_7;
            break;
                
        case PHY_K8_KEY:
            u32ParseKey = DUMMY_KEY_8;
            break;
                
        case PHY_K9_KEY:
            u32ParseKey = DUMMY_KEY_9;
            break;                                          
                        
        case PHY_TVRADIO_KEY:   
            u32ParseKey = DUMMY_KEY_TVRADIO;
            break;  
   
        case PHY_MUTE_KEY:
            u32ParseKey = DUMMY_KEY_MUTE;
            break;

#if(OVT_FAC_MODE == 1)
          case PHY_FAC_F5:
          	u32ParseKey = DUMMY_KEY_FAC_AGE;
          	break;
          case PHY_FAC_F6:
          	u32ParseKey = DUMMY_KEY_FAC_SYS;
          	break;
          case PHY_FAC_F7:
          	iFacPreKey = 1;
			u32ParseKey = m_invalidercukey;
			break;
		  case PHY_FAC_F8:
		  	if(1==iFacPreKey)
			{
				u32ParseKey = DUMMY_KEY_FAC_MAIN;
			}
			else
			{
				iFacPreKey = 0;
				u32ParseKey = m_invalidercukey;
			}
          	
          	break;
#endif
        default:
            u32ParseKey = m_invalidercukey;
            break;
    }

    if(m_invalidercukey != u32ParseKey)
    {
        blastf_GetKeyCall(u32ParseKey|((eStatus << 16)&0xFFFF0000));
    }
}


#endif

//extern void TFCardProcessTest(void);
MBT_VOID BLASTF_CheckFPKey(MBT_VOID)
{
    MBT_U32 u32Key;
    switch(MLMF_FP_ReadKey())
    {
        case MM_FRONTKEY_UP:
            //TFCardProcessTest();
            u32Key = DUMMY_KEY_UPARROW;
            break;
            
        case MM_FRONTKEY_DOWN:
            u32Key = DUMMY_KEY_DNARROW;
            break;            
            
        case MM_FRONTKEY_OK:
            u32Key = DUMMY_KEY_SELECT;
            break;
            
        case MM_FRONTKEY_EXIT:
            u32Key = DUMMY_KEY_EXIT;
            break;
            
        case MM_FRONTKEY_LEFT:
            u32Key = DUMMY_KEY_LEFTARROW;
            break;
            
        case MM_FRONTKEY_RIGHT:
            u32Key = DUMMY_KEY_RIGHTARROW;
            break;
            
        case MM_FRONTKEY_MENU:
            u32Key = DUMMY_KEY_MENU;
            break;
			
        case MM_FRONTKEY_VOLUMEUP:
			u32Key = DUMMY_KEY_VOLUMEUP;
			break;
            
        case MM_FRONTKEY_VOLUMEDOWN:
			u32Key = DUMMY_KEY_VOLUMEDN;
			break;
			
		case MM_FRONTKEY_POWER:
			u32Key = DUMMY_KEY_POWER;
			break;

        default:
            u32Key = m_invalidercukey;
            break;
    }
    
    
    if(m_invalidercukey != u32Key)
    {
        blastf_GetKeyCall(u32Key);
    }
}


MBT_VOID BLASTF_Init(MBT_VOID)
{
    MLMF_Blast_SetSystemCode((HEADER_CODE1<<8)|HEADER_CODE0);
}
/* end C++ support */
#ifdef __cplusplus
}
#endif
