#ifndef _APPBLAST_
#define _APPBLAST_

#define m_invalidercukey 0xffffffff
#define IR_CUSTOMER_OVT         1
#define IR_CUSTOMER_GTPL        2
#define IR_CUSTOMER_SECUR       3
#define IR_CUSTOMER             IR_CUSTOMER_GTPL


#if(IR_CUSTOMER == IR_CUSTOMER_GTPL)
// IR Header code define
#define HEADER_CODE0         0x01    // Custom 0
#define HEADER_CODE1         0xFD    // Custom 1
#define PHY_POWER_KEY         0xdc
#define PHY_REC_KEY           0xd1
#define PHY_REWARD_KEY        0xcd
#define PHY_FWDWARD_KEY       0xd0
#define PHY_GOTO_KEY          0xdd
#define PHY_VOD_KEY           0xd6
#define PHY_START_KEY         0x91
#define PHY_STOP_KEY          0x8d
#define PHY_LANG_KEY          0x95
#define PHY_RED_KEY           0x89
#define PHY_GREEN_KEY         0x84
#define PHY_YELLOW_KEY        0xd9
#define PHY_BLUE_KEY          0x96
#define PHY_MENU_KEY          0x98
#define PHY_EPG_KEY           0xda
#define PHY_UPARROW_KEY       0xca
#define PHY_DW_ARROW_KEY      0xd2
#define PHY_LEFTARROW_KEY     0x99
#define PHY_RIGHTARROW_KEY    0xc1
#define PHY_SELECT_KEY        0xce
#define PHY_LAST_KEY          0x82
#define PHY_EXIT_KEY          0xc5
#define PHY_AUDIOINCREASE_KEY 0x80
#define PHY_AUDIODECREASE_KEY 0x81
#define PHY_PGUP_KEY          0x85
#define PHY_PGDN_KEY          0x86
#define PHY_INFO_KEY          0x88
#define PHY_FAV_KEY           0xcf
#define PHY_K0_KEY            0x87
#define PHY_K1_KEY            0x92
#define PHY_K2_KEY            0x93
#define PHY_K3_KEY            0xcc
#define PHY_K4_KEY            0x8e
#define PHY_K5_KEY            0x8f
#define PHY_K6_KEY            0xc8
#define PHY_K7_KEY            0x8a
#define PHY_K8_KEY            0x8b
#define PHY_K9_KEY            0xc4
#define PHY_TVRADIO_KEY       0xc3
#define PHY_MUTE_KEY          0x9c

#elif(IR_CUSTOMER == IR_CUSTOMER_OVT)
// IR Header code define
#define HEADER_CODE0         0x00    // Custom 0
#define HEADER_CODE1         0xdf    // Custom 1

#define PHY_POWER_KEY         0x1c 
#define PHY_MUTE_KEY          0x08
#define PHY_RED_KEY           0x56
#define PHY_GREEN_KEY         0x57
#define PHY_YELLOW_KEY        0x1f
#define PHY_BLUE_KEY          0x5b
#define PHY_BACKWARD_KEY      0x55
#define PHY_FORWARD_KEY       0x5e
#define PHY_PREV_KEY          0x51
#define PHY_NEXT_KEY          0x59
#define PHY_START_KEY         0x5a
#define PHY_STOP_KEY          0x52
#define PHY_PAUSE_KEY         0x5d
#define PHY_USB_KEY           0x5c
#define PHY_SUBTITLE_KEY      0x01
#define PHY_TTX_KEY           0x5f
#define PHY_RECALL_KEY        0x19
#define PHY_AUDIOTRACK_KEY    0x58
#define PHY_MENU_KEY          0x18
#define PHY_INFO_KEY          0x17
#define PHY_UPARROW_KEY       0x1a
#define PHY_DW_ARROW_KEY      0x48
#define PHY_LEFTARROW_KEY     0x47
#define PHY_RIGHTARROW_KEY    0x07
#define PHY_SELECT_KEY        0x06
#define PHY_EPG_KEY           0x49
#define PHY_EXIT_KEY          0x0A
#define PHY_AUDIOINCREASE_KEY 0x4b
#define PHY_AUDIODECREASE_KEY 0x4f
#define PHY_FAV_KEY           0x03
#define PHY_REC_KEY           0x42
#define PHY_PGUP_KEY          0x09
#define PHY_PGDN_KEY          0x05
#define PHY_K0_KEY            0x0c
#define PHY_K1_KEY            0x54
#define PHY_K2_KEY            0x16
#define PHY_K3_KEY            0x15
#define PHY_K4_KEY            0x50
#define PHY_K5_KEY            0x12
#define PHY_K6_KEY            0x11
#define PHY_K7_KEY            0x4c
#define PHY_K8_KEY            0x0e
#define PHY_K9_KEY            0x0d
#define PHY_GOTO_KEY          0x41
#define PHY_TVRADIO_KEY       0x10
#elif(IR_CUSTOMER == IR_CUSTOMER_SECUR)
#define HEADER_CODE0         0x02    // Custom 0
#define HEADER_CODE1         0xbd    // Custom 1

#define PHY_POWER_KEY         0x45
#define PHY_REC_KEY           0xd8
#define PHY_REWARD_KEY        0x59
#define PHY_FWDWARD_KEY       0x5a
#define PHY_GOTO_KEY          0x58
#define PHY_VOD_KEY           0xff
#define PHY_START_KEY         0x56
#define PHY_STOP_KEY          0x57
#define PHY_LANG_KEY          0x5c
#define PHY_RED_KEY           0x46
#define PHY_GREEN_KEY         0x47
#define PHY_YELLOW_KEY        0x48
#define PHY_BLUE_KEY          0x49
#define PHY_MENU_KEY          0x95
#define PHY_EPG_KEY           0xc5
#define PHY_UPARROW_KEY       0xca
#define PHY_DW_ARROW_KEY      0xd2
#define PHY_LEFTARROW_KEY     0x99
#define PHY_RIGHTARROW_KEY    0xc1
#define PHY_SELECT_KEY        0xce
#define PHY_USB_KEY           0x9c
#define PHY_LAST_KEY          0xd6
#define PHY_EXIT_KEY          0xd0
#define PHY_AUDIOINCREASE_KEY 0xdd
#define PHY_AUDIODECREASE_KEY 0x8c
#define PHY_PGUP_KEY          0x9a
#define PHY_PGDN_KEY          0xcd
#define PHY_INFO_KEY          0x52
#define PHY_FAV_KEY           0x89
#define PHY_K0_KEY            0x87
#define PHY_K1_KEY            0x92
#define PHY_K2_KEY            0x93
#define PHY_K3_KEY            0xcc
#define PHY_K4_KEY            0x8e
#define PHY_K5_KEY            0x8f
#define PHY_K6_KEY            0xc8
#define PHY_K7_KEY            0x8a
#define PHY_K8_KEY            0x8b
#define PHY_K9_KEY            0xc4
#define PHY_TVRADIO_KEY       0xd9
#define PHY_MUTE_KEY          0x80
#endif

#if(OVT_FAC_MODE == 1)
#define PHY_FAC_F5 0xaf
#define PHY_FAC_F6 0x6f
#define PHY_FAC_F7 0xef
#define PHY_FAC_F8 0x1f
#endif


#define	DUMMY_KEY_0						0x00
#define	DUMMY_KEY_1						0x01	
#define	DUMMY_KEY_2						0x02
#define	DUMMY_KEY_3						0x03	
#define	DUMMY_KEY_4						0x04
#define	DUMMY_KEY_5						0x05
#define	DUMMY_KEY_6						0x06
#define	DUMMY_KEY_7						0x07
#define	DUMMY_KEY_8						0x08
#define	DUMMY_KEY_9						0x09	

#define	DUMMY_KEY_POWER					0x0a
#define	DUMMY_KEY_MUTE					0x0b
#define	DUMMY_KEY_INFO				    0x0d
#define DUMMY_KEY_EMAIL 				0x10
#define DUMMY_KEY_AUDIOTRACK			0x11
#define DUMMY_KEY_BACK 				    0x12
#define	DUMMY_KEY_EPG					0x13
#define	DUMMY_KEY_EXIT					0x14
#define	DUMMY_KEY_SELECT				0x15
#define	DUMMY_KEY_UPARROW				0x16
#define	DUMMY_KEY_LEFTARROW				0x17
#define	DUMMY_KEY_RIGHTARROW			0x18
#define	DUMMY_KEY_DNARROW			    0x19
#define	DUMMY_KEY_CLASSIC				0x1a
#define	DUMMY_KEY_VOLUMEUP			    0x1b
#define	DUMMY_KEY_VOLUMEDN			    0x1c
#define DUMMY_KEY_PGUP             		0x1d
#define DUMMY_KEY_PGDN             		0x1e
#define DUMMY_KEY_FN					0x1f
#define DUMMY_KEY_RED				0x20
#define DUMMY_KEY_YELLOW_SUBSCRIBE		0x21
#define DUMMY_KEY_BLUE_EDIT			    0x22
#define DUMMY_KEY_GREEN					0x23
#define	DUMMY_KEY_MENU					0x24
#define	DUMMY_KEY_TVRADIO				0x25
#define DUMMY_KEY_CHLIST        		0x26
//-------------  add  -----------
#define DUMMY_KEY_START        		    0x27
#define DUMMY_KEY_STOP       		    0x28
#define DUMMY_KEY_RECORDLIST        	0x29
#define DUMMY_KEY_USB        		    0x2a
#define DUMMY_KEY_PAUSE                 0x2b
#define DUMMY_KEY_BROWSER               0x2c
#define DUMMY_KEY_RECALL                0x2d
#define DUMMY_KEY_FAV                   0x2e
#define DUMMY_KEY_REC                   0x2f
#define DUMMY_KEY_HDSD                  0x30
#define DUMMY_KEY_INFOEXT               0x31
#define DUMMY_KEY_BACKWARD               		0x32
#define DUMMY_KEY_FORWARD               		0x33
#define DUMMY_KEY_PREV               		0x34
#define DUMMY_KEY_NEXT               		0x35
#define DUMMY_KEY_GOTO                  0x36
#define DUMMY_KEY_VOD                   0x37
#define DUMMY_KEY_LANG                  0x38


/*******************虚拟key**************************/
#define	DUMMY_KEY_PLAY					        0x00000100		
/*All these messages are used in the Timer Module for CAS. */
typedef enum
{
    DUMMY_KEY_JUMP_OSDTOP = 0x00000103,
    DUMMY_KEY_JUMP_OSDBOTTOM = 0x00000104,
    DUMMY_KEY_DISP_OSDTOP = 0x00000105,
    DUMMY_KEY_DISP_OSDBOTTOM = 0x00000106,
    DUMMY_KEY_CANCEL_OSDTOP = 0x00000107,
    DUMMY_KEY_CANCEL_OSDBOTTOM = 0x00000108,
    DUMMY_KEY_CANCEL_TYPE0 = 0x00000109,
    DUMMY_KEY_BADCARD_TYPE0 = 0x0000010a,
    DUMMY_KEY_EXPICARD_TYPE0 = 0x0000010b,
    DUMMY_KEY_INSERTCARD_TYPE0 = 0x0000010c,
    DUMMY_KEY_NOOPER_TYPE0 = 0x0000010d,
    DUMMY_KEY_BLACKOUT_TYPE0 = 0x0000010e,
    DUMMY_KEY_OUTWORKTIME_TYPE0 = 0x0000010f,
    DUMMY_KEY_WATCHLEVEL_TYPE0 = 0x00000110,
    DUMMY_KEY_PAIRING_TYPE0 = 0x00000111,
    DUMMY_KEY_NOENTITLE_TYPE0 = 0x00000112,
    DUMMY_KEY_DECRYPTFAIL_TYPE0 = 0x00000113,
    DUMMY_KEY_NOMONEY_TYPE0 = 0x00000114,
    DUMMY_KEY_ERRREGION_TYPE0 = 0x00000115,  
    DUMMY_KEY_SHOW_FINGER = 0x00000116,    /*other*/
    DUMMY_KEY_HIDE_FINGER = 0x00000117,
    DUMMY_KEY_PROGRAMSTOPED0 = 0x00000118,
    DUMMY_KEY_CANCEL_ITEM = 0x00000119,   /*Email*/
    DUMMY_KEY_SHOW_ITEM = 0x0000011a,
    DUMMY_KEY_NO_SPACE = 0x0000011b,
    DUMMY_KEY_IPPVFREEVIEW_TYPE0 = 0x0000011c,	/*免费预览阶段0x11e*/
    DUMMY_KEY_IPPVPAYEVIEW_TYPE0 = 0x0000011d,    /*收费阶段0x11f*/
    DUMMY_KEY_IPPTPAYEVIEW_TYPE0 = 0x0000011f,    /*收费阶段0x11f*/
    DUMMY_KEY_IPPVHIDE_DLG = 0x00000120,   		// 收费阶段0x120
    DUMMY_KEY_ETITLE_CHANGE = 0x00000121,   		// 授权变化
    DUMMY_KEY_DENTITLE_ALL_READ = 0x00000122,
    DUMMY_KEY_DENTITLE_RECEIVED = 0x00000123,
    DUMMY_KEY_DENTITLE_SPACESMALL = 0x00000124,
    DUMMY_KEY_PATCHING_PROCESS = 0x00000125,
    DUMMY_KEY_RECEIVEPATCH_PROCESS = 0x00000126,
    DUMMY_KEY_FAILED_TOREAD_PARENT = 0x00000127,
    DUMMY_KEY_SUCCED_TOREAD_PARENT = 0x00000128,
    DUMMY_KEY_LOCK_SERVICE = 0x00000129,
    DUMMY_KEY_UNLOCK_SERVICE = 0x0000012a,
    DUMMY_KEY_NEEDFEED_TYPE0 = 0x0000012b,		/*子卡需要和母卡对应*/
    DUMMY_KEY_ERRCARD_TYPE0 = 0x0000012c,		/*智能卡校验失败，请联系运营商，同步智能卡*/
    DUMMY_KEY_UPDATE_TYPE0 = 0x0000012d,	    /*系统升级，请不要拔卡或者关机*/
    DUMMY_KEY_LOWCARDVER_TYPE0 = 0x0000012e,		/*请升级智能卡*/
    DUMMY_KEY_VIEWLOCK_TYPE0 = 0x0000012f,		/*请勿频繁切换频道*/
    DUMMY_KEY_MAXRESTART_TYPE0 = 0x00000130,		/*智能卡已受损*/
    DUMMY_KEY_FREEZE_TYPE0 = 0x00000131,		/*智能卡已冻结，请联系运营商*/
    DUMMY_KEY_CALLBACK_TYPE0 = 0x00000132,		/*回传失败*/
    DUMMY_KEY_STBLOCKED_TYPE0 = 0x00000133,		/*请关机重启机顶盒*/
    DUMMY_KEY_USB_IN = 0x00000134,		
    DUMMY_KEY_USB_OUT = 0x00000135,		
    DUMMY_KEY_TUNERLOCKED = 0x00000136,
    DUMMY_KEY_TUNERUNLOCK = 0x00000137,
    DUMMY_KEY_NOSERVICE = 0x00000138,
    DUMMY_KEY_NOCALIBOPER_TYPE0 = 0x00000139,/*卡中不存在移植库定制运营商*/
    DUMMY_KEY_STBFREEZE_TYPE0 = 0x0000013a,/*机顶盒被冻结*/
    DUMMY_KEY_UNSUPPORTDEVICE_TYPE0 = 0x0000013b,/*不支持的终端类型（编号：0xXXXX）*/
    DUMMY_KEY_CURTAIN_TYPE0 = 0x0000013c,     /*高级预览节目，该阶段不能免费观看*/
    DUMMY_KEY_CARDTESTSTART_TYPE0 = 0x0000013d,  /*升级测试卡测试中...*/
    DUMMY_KEY_CARDTESTFAILD_TYPE0 = 0x0000013e,  /*升级测试卡测试失败，请检查机卡通讯模块*/
    DUMMY_KEY_CARDTESTSUCC_TYPE0 = 0x0000013f,  /*升级测试卡测试成功*/
    DUMMY_KEY_CURTAINCTR_TYPE0 = 0x00000140,  /*通知机顶盒显示或关闭高级预览*/
    DUMMY_KEY_SHOW_SUPER_FINGER = 0x00000141,    /*显示超级指纹*/
    DUMMY_KEY_CLEAR_SUPER_FINGER = 0x00000142,    /*隐藏超级指纹*/
    DUMMY_KEY_SHOW_SUPER_OSD = 0x00000143,    /*显示超级指纹*/
    DUMMY_KEY_CLEAR_SUPER_OSD = 0x00000144,    /*隐藏超级指纹*/
    DUMMY_KEY_WAIT_FOR_PIN = 0x00000145,    /*等待输入PIN码*/
}stPrompt;

#define DUMMY_KEY_FORCEUPDATE_PROGRAM		                (0x00000105 + 0x100)//0x205	
#define DUMMY_KEY_SIGNALP_CHECK	(DUMMY_KEY_FORCEUPDATE_PROGRAM+1)//0x206
#define DUMMY_KEY_LOCKPLAY	( DUMMY_KEY_SIGNALP_CHECK+1)//0x207
#define DUMMY_KEY_UNLOCKPLAY	(DUMMY_KEY_LOCKPLAY+1)//0x208
#define DUMMY_KEY_TERM_CHCKENTITLETASK	(DUMMY_KEY_UNLOCKPLAY+1)//0x209
#define DUMMY_KEY_ACTIONREQUEST_INITIALIZESTB	(DUMMY_KEY_TERM_CHCKENTITLETASK+1)//0x20a
#define DUMMY_KEY_ENTER_SYSINFO	(DUMMY_KEY_ACTIONREQUEST_INITIALIZESTB+1)//0x20b
#define DUMMY_KEY_EXITALL	(DUMMY_KEY_ENTER_SYSINFO+1)//0x20c
#define DUMMY_KEY_ADDWINDOW	(DUMMY_KEY_EXITALL+1)//0x20d
#define DUMMY_KEY_PRGUPDATE	    (DUMMY_KEY_ADDWINDOW+1)//0x20e
#define DUMMY_KEY_MENU_TIMEOUT	    (DUMMY_KEY_PRGUPDATE+1)//0x20f
#define DUMMY_KEY_CARD_IN	    (DUMMY_KEY_MENU_TIMEOUT+1)//0x210
#define DUMMY_KEY_CARD_OUT	    (DUMMY_KEY_CARD_IN+1)//0x211
#define DUMMY_KEY_TOPOSDTICK (DUMMY_KEY_CARD_OUT+1)//0x212
#define DUMMY_KEY_BOTTOMOSDTICK (DUMMY_KEY_TOPOSDTICK+1)//0x213
#define DUMMY_KEY_EMAILNOSPACE (DUMMY_KEY_BOTTOMOSDTICK+1)//0x214
#define DUMMY_KEY_SRCH_PROCESS (DUMMY_KEY_EMAILNOSPACE+1)//0x215
#define DUMMY_KEY_TXTINFOPLAY_TIMER	(DUMMY_KEY_SRCH_PROCESS+1)//0x216
#define DUMMY_KEY_BOOKED_TIMEREVENT (DUMMY_KEY_TXTINFOPLAY_TIMER+1)//0x217
#define DUMMY_KEY_INTERNET_ENDEVENT (DUMMY_KEY_BOOKED_TIMEREVENT+1)//0x218
#define DUMMY_KEY_EXIT_MPLAY (DUMMY_KEY_INTERNET_ENDEVENT+1)//0x219
#define DUMMY_KEY_PLAY_AUDIOIFRAM (DUMMY_KEY_EXIT_MPLAY+1)//0x21a
#define DUMMY_KEY_PRGITEMUPDATED (DUMMY_KEY_PLAY_AUDIOIFRAM+1)//0x21b
#define DUMMY_KEY_PRGLISTUPDATED (DUMMY_KEY_PRGITEMUPDATED+1)//0x21c
#define DUMMY_KEY_VTGMODE_1080i_25HZ (DUMMY_KEY_PRGLISTUPDATED+1)//0x21d
#define DUMMY_KEY_VTGMODE_1080i_30HZ (DUMMY_KEY_VTGMODE_1080i_25HZ+1)//0x21e
#define DUMMY_KEY_VTGMODE_720p_50HZ (DUMMY_KEY_VTGMODE_1080i_30HZ+1)//0x21f
#define DUMMY_KEY_VTGMODE_720p_60HZ (DUMMY_KEY_VTGMODE_720p_50HZ+1)//0x220
#define DUMMY_KEY_VTGMODE_576p_50HZ (DUMMY_KEY_VTGMODE_720p_60HZ+1)//0x221
#define DUMMY_KEY_VTGMODE_576i_25HZ (DUMMY_KEY_VTGMODE_576p_50HZ+1)//0x222
#define DUMMY_KEY_VTGMODE_480p_60HZ (DUMMY_KEY_VTGMODE_576i_25HZ+1)//0x223
#define DUMMY_KEY_VTGMODE_480i_30HZ (DUMMY_KEY_VTGMODE_480p_60HZ+1)//0x224
#define DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9 (DUMMY_KEY_VTGMODE_480i_30HZ+1)//0x225
#define DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3 (DUMMY_KEY_VTGMODE_ASPECT_RATIO_16TO9+1)//0x226
#define DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1 (DUMMY_KEY_VTGMODE_ASPECT_RATIO_4TO3+1)//0x227
#define DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE (DUMMY_KEY_VTGMODE_ASPECT_RATIO_221TO1+1)//0x228
#define DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9 (DUMMY_KEY_VTGMODE_ASPECT_RATIO_SQUARE+1)//0x229
#define DUMMY_KEY_FINGER_JUMP (DUMMY_KEY_VTGMODE_ASPECT_RATIO_14TO9+1)//0x22a
#define DUMMY_KEY_SUPER_FINGER_JUMP (DUMMY_KEY_FINGER_JUMP+1)//0x22b
#define DUMMY_KEY_SUPER_FINGER_SHOW (DUMMY_KEY_SUPER_FINGER_JUMP+1)//0x22c
#define DUMMY_KEY_SUPER_FINGER_HIDE (DUMMY_KEY_SUPER_FINGER_SHOW+1)//0x22d
#define DUMMY_KEY_SUPER_FINGER_UNVISIBLE (DUMMY_KEY_SUPER_FINGER_HIDE+1)//0x22e
#define DUMMY_KEY_FORCE_REFRESH (DUMMY_KEY_SUPER_FINGER_UNVISIBLE+1)//0x22f
#define DUMMY_KEY_FORCE_NETLOCK (DUMMY_KEY_FORCE_REFRESH+1)//0x230
#define DUMMY_KEY_FORCE_NETUNLOCK (DUMMY_KEY_FORCE_NETLOCK+1)//0x231

#define DUMMY_KEY_PVR_RECORD_NOSPACE (DUMMY_KEY_FORCE_NETUNLOCK+1)//0x232
#define DUMMY_KEY_PVR_PLAY_STOP (DUMMY_KEY_PVR_RECORD_NOSPACE+1)//0x233
#define DUMMY_KEY_PVR_PLAY_NOENTITLEMENT_STOP (DUMMY_KEY_PVR_PLAY_STOP+1)//0x234
#define DUMMY_KEY_SHOW_RADIO_LOGO (DUMMY_KEY_PVR_PLAY_NOENTITLEMENT_STOP+1)//0x235

#if(OVT_FAC_MODE == 1)
#define DUMMY_KEY_FAC_F7 (DUMMY_KEY_SHOW_RADIO_LOGO+1)/*工厂测试主功能F7*///0x236
#define DUMMY_KEY_FAC_F8 (DUMMY_KEY_FAC_F7+1)/*工厂测试主功能F8*///0x237
#define DUMMY_KEY_FAC_MAIN (DUMMY_KEY_FAC_F8+1)/*工厂测试主功能*///0x238
#define DUMMY_KEY_FAC_SYS (DUMMY_KEY_FAC_MAIN+1)/*工厂测试系统信息F6*///0x239
#define DUMMY_KEY_FAC_AGE (DUMMY_KEY_FAC_SYS+1)/*工厂测试老化模式F5*///0x240
#endif

/*******************虚拟key**************************/


extern MBT_VOID BLASTF_SendKeyMsg(MBT_U16 u16key,MMT_BLAST_Status_E eStatus);

extern MBT_VOID BLASTF_CheckFPKey(MBT_VOID);

extern MBT_VOID BLASTF_LockKeyBoad(MBT_VOID);

extern MBT_U8 BLASTF_GetLockKeyBoadStatus(MBT_VOID);

extern MBT_VOID BLASTF_RegKeyMsgCall(MBT_VOID  (*GetKeyCall) (MBT_U32 u32Key));

extern MBT_VOID BLASTF_UnLockKeyBoad(MBT_VOID);

extern MBT_VOID BLASTF_Init(MBT_VOID);


#endif
