#ifndef CDCAS_CALIB_APIEX_H
#define CDCAS_CALIB_APIEX_H

#ifdef  __cplusplus
extern "C" {
#endif

#if (OVT_CAS_MODE == 1)
#define M_CDCA  1
#else
#define M_CDCA  0
#endif
//#define M_DSCDBG  0
#define TFCONFIG   0

/*-------------------------------------基本数据类型---------------------------------------*/
typedef unsigned  int  CDCA_U32;
typedef unsigned  short CDCA_U16;
typedef unsigned  char  CDCA_U8;

typedef signed char  CDCA_S8;
typedef signed long  CDCA_S32;

typedef CDCA_U8 CDCA_BOOL;

#define CDCA_TRUE    ((CDCA_BOOL)1)
#define CDCA_FALSE   ((CDCA_BOOL)0)

/*----------------------------------------宏定义--------------------------------------*/

/*--------- FLASH类型 -------*/
#define CDCA_FLASH_BLOCK_A        1     /* BLOCK A */
#define CDCA_FLASH_BLOCK_B        2     /* BLOCK B */

/*--------- 相关限制 --------*/
#define CDCA_MAXLEN_STBSN         12U   /* 机顶盒号的长度 */
#define CDCA_MAXLEN_SN            16U   /* 智能卡序列号的长度 */
/*---------- 机顶盒相关限制 ----------*/
#define CDCA_MAXNUM_PROGRAMBYCW   4U    /* 一个控制字最多解的节目数 */

#define CDCA_MAXLEN_PINCODE       6U    /* PIN码的长度 */
#define CDCA_MAXNUM_OPERATOR      4U    /* 最多的运营商个数 */
#define CDCA_MAXLEN_TVSPRIINFO    32U   /* 运营商私有信息的长度 */
#define CDCA_MAXNUM_ACLIST        18U   /* 每个运营商的用户特征个数 */

#define CDCA_MAXNUM_SLOT          20U   /* 卡存储的最大钱包数 */

#define CDCA_MAXNUM_CURTAIN_RECORD	80U /*高级预览节目记录的最大个数*/

#define CDCA_MAXNUM_IPPVP         300U  /* 智能卡保存最多IPPV节目的个数 */
#define CDCA_MAXNUM_PRICE         2U    /* 最多的IPPV价格个数 */

#define CDCA_MAXNUM_ENTITLE       300U  /* 授权产品的最大个数 */

#define CDCA_MAXNUM_DETITLE       5U    /* 每个运营商下可保存的反授权码个数 */

/*---------- CAS提示信息 ---------*/
#define CDCA_MESSAGE_CANCEL_TYPE      0x00  /* 取消当前的显示 */
#define CDCA_MESSAGE_BADCARD_TYPE     0x01  /* 无法识别卡 */
#define CDCA_MESSAGE_EXPICARD_TYPE    0x02  /* 智能卡过期，请更换新卡 */
#define CDCA_MESSAGE_INSERTCARD_TYPE  0x03  /* 加扰节目，请插入智能卡 */
#define CDCA_MESSAGE_NOOPER_TYPE      0x04  /* 不支持节目运营商 */
#define CDCA_MESSAGE_BLACKOUT_TYPE    0x05  /* 条件禁播 */
#define CDCA_MESSAGE_OUTWORKTIME_TYPE 0x06  /* 当前时段被设定为不能观看 */
#define CDCA_MESSAGE_WATCHLEVEL_TYPE  0x07  /* 节目级别高于设定的观看级别 */
#define CDCA_MESSAGE_PAIRING_TYPE     0x08  /* 智能卡与本机顶盒不对应 */
#define CDCA_MESSAGE_NOENTITLE_TYPE   0x09  /* 没有授权 */
#define CDCA_MESSAGE_DECRYPTFAIL_TYPE 0x0A  /* 节目解密失败 */
#define CDCA_MESSAGE_NOMONEY_TYPE     0x0B  /* 卡内金额不足 */
#define CDCA_MESSAGE_ERRREGION_TYPE   0x0C  /* 区域不正确 */
#define CDCA_MESSAGE_NEEDFEED_TYPE    0x0D  /* 子卡需要和母卡对应，请插入母卡 */
#define CDCA_MESSAGE_ERRCARD_TYPE     0x0E  /* 智能卡校验失败，请联系运营商 */
#define CDCA_MESSAGE_UPDATE_TYPE      0x0F  /* 智能卡升级中，请不要拔卡或者关机 */
#define CDCA_MESSAGE_LOWCARDVER_TYPE  0x10  /* 请升级智能卡 */
#define CDCA_MESSAGE_VIEWLOCK_TYPE    0x11  /* 请勿频繁切换频道 */
#define CDCA_MESSAGE_MAXRESTART_TYPE  0x12  /* 智能卡暂时休眠，请5分钟后重新开机 */
#define CDCA_MESSAGE_FREEZE_TYPE      0x13  /* 智能卡已冻结，请联系运营商 */
#define CDCA_MESSAGE_CALLBACK_TYPE    0x14  /* 智能卡已暂停，请回传收视记录给运营商 */
#define CDCA_MESSAGE_CURTAIN_TYPE	  0x15 /*高级预览节目，该阶段不能免费观看*/
#define CDCA_MESSAGE_CARDTESTSTART_TYPE 0x16 /*升级测试卡测试中...*/
#define CDCA_MESSAGE_CARDTESTFAILD_TYPE 0x17 /*升级测试卡测试失败，请检查机卡通讯模块*/
#define CDCA_MESSAGE_CARDTESTSUCC_TYPE  0x18 /*升级测试卡测试成功*/
#define CDCA_MESSAGE_NOCALIBOPER_TYPE    0x19/*卡中不存在移植库定制运营商*/
#define CDCA_MESSAGE_STBLOCKED_TYPE   0x20  /* 请重启机顶盒 */
#define CDCA_MESSAGE_STBFREEZE_TYPE   0x21  /* 机顶盒被冻结 */
#define CDCA_MESSAGE_UNSUPPORTDEVICE_TYPE    0x30 /*不支持的终端类型（编号：0xXXXX）*/
#define CDCA_MESSAGE_WATCHTIMELIMIT_TYPEE    0x31/*观看时间限制，请联系运营商*/


/*---------- 功能调用返回值定义 ----------*/
#define CDCA_RC_OK                    0x00  /* 成功 */
#define CDCA_RC_UNKNOWN               0x01  /* 未知错误 */
#define CDCA_RC_POINTER_INVALID       0x02  /* 指针无效 */
#define CDCA_RC_CARD_INVALID          0x03  /* 智能卡无效 */
#define CDCA_RC_PIN_INVALID           0x04  /* PIN码无效 */
#define CDCA_RC_DATASPACE_SMALL       0x06  /* 所给的空间不足 */
#define CDCA_RC_CARD_PAIROTHER        0x07  /* 智能卡已经对应别的机顶盒 */
#define CDCA_RC_DATA_NOT_FIND         0x08  /* 没有找到所要的数据 */
#define CDCA_RC_PROG_STATUS_INVALID   0x09  /* 要购买的节目状态无效 */
#define CDCA_RC_CARD_NO_ROOM          0x0A  /* 智能卡没有空间存放购买的节目 */
#define CDCA_RC_WORKTIME_INVALID      0x0B  /* 设定的工作时段无效 */
#define CDCA_RC_IPPV_CANNTDEL         0x0C  /* IPPV节目不能被删除 */
#define CDCA_RC_CARD_NOPAIR           0x0D  /* 智能卡没有对应任何的机顶盒 */
#define CDCA_RC_WATCHRATING_INVALID   0x0E  /* 设定的观看级别无效 */
#define CDCA_RC_CARD_NOTSUPPORT       0x0F  /* 当前智能卡不支持此功能 */
#define CDCA_RC_DATA_ERROR            0x10  /* 数据错误，智能卡拒绝 */
#define CDCA_RC_FEEDTIME_NOT_ARRIVE   0x11  /* 喂养时间未到，子卡不能被喂养 */
#define CDCA_RC_CARD_TYPEERROR        0x12  /* 子母卡喂养失败，插入智能卡类型错误 */

#define CDCA_RC_CAS_FAILED            0x20  /* 发卡cas指令执行失败 */
#define CDCA_RC_OPER_FAILED           0x21  /* 发卡运营商指令执行失败 */
#define CDCA_RC_UNSUPPORT             0x22  /* 不支持 */
#define CDCA_RC_LEN_ERROR             0x23  /* 长度错误 */
#define CDCA_RC_SCHIP_ERROR           0x24  /* 安全芯片设置错误 */

#define CDCA_RC_NEW_CONFIRM_PIN_DIFFERENT 0x30 /*输入的新PIN 与确认PIN不一致*/

/*---------- ECM_PID设置的操作类型 ---------*/
#define CDCA_LIST_OK          0x00
#define CDCA_LIST_FIRST       0x01
#define CDCA_LIST_ADD         0x02


/*-- 读卡器中的智能卡状态 --*/
#define CDCA_SC_OUT         0x00    /* 读卡器中没有卡          */
#define CDCA_SC_REMOVING    0x01    /* 正在拔卡，重置状态      */
#define CDCA_SC_INSERTING   0x02    /* 正在插卡，初始化        */
#define CDCA_SC_IN          0x03    /* 读卡器中是可用的卡      */
#define CDCA_SC_ERROR       0x04    /* 读卡器的卡不能识别      */
#define CDCA_SC_UPDATE      0x05    /* 读卡器的卡可升级 */
#define CDCA_SC_UPDATE_ERR  0x06    /* 读卡器的卡升级失败      */


/*------------ 邮件大小及数量限制 ------------*/
#define CDCA_MAXNUM_EMAIL         100U  /* 机顶盒保存的最大邮件个数 */
#define CDCA_MAXLEN_EMAIL_TITLE   30U   /* 邮件标题的长度 */
#define CDCA_MAXLEN_EMAIL_CONTENT 160U  /* 邮件内容的长度 */
/*------------ 邮件图标显示方式 ------------*/
#define CDCA_Email_IconHide       0x00  /* 隐藏邮件通知图标 */
#define CDCA_Email_New            0x01  /* 新邮件通知，显示新邮件图标 */
#define CDCA_Email_SpaceExhaust   0x02  /* 磁盘空间以满，图标闪烁。 */

/*------------ OSD的长度限制 -----------*/
#define CDCA_MAXLEN_OSD           256U  /* OSD内容的最大长度 */
/*------------ OSD显示类型 ------------*/
#define CDCA_OSD_TOP              0x01  /* OSD风格：显示在屏幕上方 */
#define CDCA_OSD_BOTTOM           0x02  /* OSD风格：显示在屏幕下方 */
#define CDCA_OSD_FULLSCREEN       0x03  /* OSD风格：整屏显示 */
#define CDCA_OSD_HALFSCREEN       0x04  /* OSD风格：半屏显示 */


/*------------ IPPV/IPPT不同购买阶段提示 -------------*/
#define CDCA_IPPV_FREEVIEWED_SEGMENT  0x00  /* IPPV免费预览阶段，是否购买 */
#define CDCA_IPPV_PAYVIEWED_SEGMENT   0x01  /* IPPV收费阶段，是否购买 */
#define CDCA_IPPT_PAYVIEWED_SEGMENT   0x02  /* IPPT收费段，是否购买 */

/*------------ IPPV价格类型 ------------*/
#define CDCA_IPPVPRICETYPE_TPPVVIEW       0x0  /* 不回传，不录像类型 */
#define CDCA_IPPVPRICETYPE_TPPVVIEWTAPING 0x1  /* 不回传，可录像类型 */

/*------------ IPPV节目的状态 -----------*/
#define CDCA_IPPVSTATUS_BOOKING   0x01  /* 预定 */
#define CDCA_IPPVSTATUS_VIEWED    0x03  /* 已看 */

/*---------- 频道锁定应用相关定义 ---------*/
#define CDCA_MAXNUM_COMPONENT     5U    /* 节目组件最大个数 */
#define CDCA_MAXLEN_LOCKMESS      40U

/*---------- CDSTBCA_ActionRequestExt 接口参数 ------------------------------*/
#define CDCA_ACTIONREQUEST_RESTARTSTB		   0	/* 重启机顶盒 */
#define CDCA_ACTIONREQUEST_FREEZESTB		   1	/* 冻结机顶盒 */
#define CDCA_ACTIONREQUEST_SEARCHCHANNEL       2    /* 重新搜索节目 */
#define CDCA_ACTIONREQUEST_STBUPGRADE          3    /* 机顶盒程序升级 */
#define CDCA_ACTIONREQUEST_UNFREEZESTB         4    /* 解除冻结机顶盒 */
#define CDCA_ACTIONREQUEST_INITIALIZESTB	   5    /* 初始化机顶盒 */
#define CDCA_ACTIONREQUEST_SHOWSYSTEMINFO      6    /* 显示系统信息 */

#define CDCA_ACTIONREQUEST_DISABLEEPGADINFO    201    /* 禁用EPG广告信息功能 */
#define CDCA_ACTIONREQUEST_ENABLEEPGADINFO     202    /* 恢复EPG广告信息功能 */

#define CDCA_ACTIONREQUEST_CARDINSERTFINISH   255    /* 插卡处理完成 */

/*------------------------------------------------------------------------*/


/*---------- 反授权确认码应用相关定义 --------*/
#define CDCA_Detitle_All_Read     0x00  /* 所有反授权确认码已经被读，隐藏图标 */
#define CDCA_Detitle_Received     0x01  /* 收到新的反授权码，显示反授权码图标 */
#define CDCA_Detitle_Space_Small  0x02  /* 反授权码空间不足，改变图标状态提示用户 */
#define CDCA_Detitle_Ignore       0x03  /* 收到重复的反授权码，可忽略，不做处理 */


/*---------- 进度条提示信息 ---------*/
#define CDCA_SCALE_RECEIVEPATCH   1     /* 升级数据接收中 */
#define CDCA_SCALE_PATCHING       2     /* 智能卡升级中 */


/*---------- 高级预览状态码 ---------*/
#define CDCA_CURTAIN_BASE				   0x0000		/*高级预览状态码基础值,高字节编码0x00*/
#define CDCA_CURTAIN_CANCLE			   (CDCA_CURTAIN_BASE+0x00)  /*取消高级预览显示*/
#define CDCA_CURTAIN_OK    				   (CDCA_CURTAIN_BASE+0x01)  /*高级预览节目正常解密*/
#define CDCA_CURTAIN_TOTTIME_ERROR	   (CDCA_CURTAIN_BASE+0x02)  /*高级预览节目禁止解密：已经达到总观看时长*/
#define CDCA_CURTAIN_WATCHTIME_ERROR (CDCA_CURTAIN_BASE+0x03)  /*高级预览节目禁止解密：已经达到WatchTime限制*/
#define CDCA_CURTAIN_TOTCNT_ERROR 	   (CDCA_CURTAIN_BASE+0x04)  /*高级预览节目禁止解密：已经达到总允许观看次数*/
#define CDCA_CURTAIN_ROOM_ERROR 	   (CDCA_CURTAIN_BASE+0x05)  /*高级预览节目禁止解密：高级预览节目记录空间不足*/
#define CDCA_CURTAIN_PARAM_ERROR 	   (CDCA_CURTAIN_BASE+0x06)  /*高级预览节目禁止解密：节目参数错误*/
#define CDCA_CURTAIN_TIME_ERROR 		   (CDCA_CURTAIN_BASE+0x07)  /*高级预览节目禁止解密：数据错误*/


/*---------- CDSTBCA_ContinuesWatchLimit 接口参数 类型定义------------------------------*/
#define CDCA_ContinuesWatchLimit_Disable	   0	/* 不启用 */
#define CDCA_ContinuesWatchLimit_Enable		   1	/* 启用 */
#define CDCA_ContinuesWatchLimit_Clear		   2	/* 取消当前限制*/
/*------------------------------------------------------------------------*/


/*-------------------------------------end of 宏定义--------------------------------------*/



/*----------------------------------------数据结构----------------------------------------*/

/*-- 系统时间 --*/
typedef CDCA_U32  CDCA_TIME;
typedef CDCA_U16  CDCA_DATE;

/*-- 信号量定义（不同的操作系统可能不一样）--*/
typedef CDCA_U32  CDCA_Semaphore;

/*-- 节目信息 --*/
/* Y10_update : 只需要ECMPID和ServiceID即可 */
typedef struct {
    CDCA_U16  m_wEcmPid;         /* 节目相应控制信息的PID */
    CDCA_U8   m_byServiceNum;    /* 当前PID下的节目个数 */
    CDCA_U8   m_byReserved;      /* 保留 */
    CDCA_U16  m_wServiceID[CDCA_MAXNUM_PROGRAMBYCW]; /* 当前PID下的节目ID列表 */
}SCDCASServiceInfo;


/*-- 运营商信息 --*/
typedef struct {
    char     m_szTVSPriInfo[CDCA_MAXLEN_TVSPRIINFO+1];  /* 运营商私有信息 */
    CDCA_U8  m_byReserved[3];    /* 保留 */
}SCDCAOperatorInfo;


/*-- 授权信息 --*/
typedef struct {
    CDCA_U32  m_dwProductID;   /* 普通授权的节目ID */    
    CDCA_DATE m_tBeginDate;    /* 授权的起始时间 */
    CDCA_DATE m_tExpireDate;   /* 授权的过期时间 */
    CDCA_U8   m_bCanTape;      /* 用户是否购买录像：1－可以录像；0－不可以录像 */
    CDCA_U8   m_byReserved[3]; /* 保留 */
}SCDCAEntitle;

/*-- 授权信息集合 --*/
typedef struct {
    CDCA_U16      m_wProductCount;
    CDCA_U8       m_m_byReserved[2];    /* 保留 */
    SCDCAEntitle  m_Entitles[CDCA_MAXNUM_ENTITLE]; /* 授权列表 */
}SCDCAEntitles;

/*-- 钱包信息 --*/
typedef struct {
    CDCA_U32  m_wCreditLimit; /* 信用度（点数）*/
    CDCA_U32  m_wBalance;     /* 已花的点数 */
}SCDCATVSSlotInfo;

/*-- IPPV/IPPT节目的价格 --*/
typedef struct {
    CDCA_U16  m_wPrice;       /* 节目价格（点数）*/
    CDCA_U8   m_byPriceCode;  /* 节目价格类型 */
    CDCA_U8   m_byReserved;   /* 保留 */
}SCDCAIPPVPrice; 

/*-- IPPV/IPPT节目购买提示信息 --*/
typedef struct {
    CDCA_U32        m_dwProductID;          /* 节目的ID */
    CDCA_U16        m_wTvsID;               /* 运营商ID */
    CDCA_U8         m_bySlotID;             /* 钱包ID */
    CDCA_U8         m_byPriceNum;           /* 节目价格个数 */
    SCDCAIPPVPrice  m_Price[CDCA_MAXNUM_PRICE]; /* 节目价格 */
    union {
        CDCA_DATE   m_wExpiredDate;         /* 节目过期时间,IPPV用 */
        CDCA_U16    m_wIntervalMin;         /* 时间间隔，单位分钟,IPPT 用 */
    }m_wIPPVTime;
    CDCA_U8         m_byReserved[2];        /* 保留 */
}SCDCAIppvBuyInfo;

/*-- IPPV节目信息 --*/
typedef struct {
    CDCA_U32   m_dwProductID;   /* 节目的ID */
    CDCA_U8    m_byBookEdFlag;  /* 产品状态：BOOKING，VIEWED */ 
    CDCA_U8    m_bCanTape;      /* 是否可以录像：1－可以录像；0－不可以录像 */
    CDCA_U16   m_wPrice;        /* 节目价格 */
    CDCA_DATE  m_wExpiredDate;  /* 节目过期时间,IPPV用 */
    CDCA_U8    m_bySlotID;      /* 钱包ID */
    CDCA_U8    m_byReserved;    /* 保留 */
}SCDCAIppvInfo;


/*-- 邮件头 --*/
typedef struct {
    CDCA_U32   m_dwActionID;                 /* Email ID */
    CDCA_U32   m_tCreateTime;                /* EMAIL创建的时间 */
    CDCA_U16   m_wImportance;                /* 重要性： 0－普通，1－重要 */
    CDCA_U8    m_byReserved[2];              /* 保留 */
    char       m_szEmailHead[CDCA_MAXLEN_EMAIL_TITLE+4]; /* 邮件标题 */    
    CDCA_U8    m_bNewEmail;                  /* 新邮件标记：0－已读邮件；1－新邮件 */
}SCDCAEmailHead;

/*-- 邮件内容 --*/
typedef struct {
    char     m_szEmail[CDCA_MAXLEN_EMAIL_CONTENT+4];      /* Email的正文 */
    CDCA_U8  m_byReserved[3];              /* 保留 */
}SCDCAEmailContent;

/* 超级OSD 结构*/
typedef	struct{
	CDCA_U8		byDisplayMode; //显示模式， 0：表示屏幕正中央显示，1：表示屏幕上方滚动显示，2：表示屏幕下方滚动显示，其他值保留
	//以下5个参数只有byDisplayMode为0时才有效。
	CDCA_U8		byShowType; //是否强制显示 0:非强制显示，1:强制显示。
	CDCA_U8		byFontSize;	//超级OSD字体大小 0：默认，1：大号，2：小号，3~255表示实际字号大小。如果机顶盒不支持3~255则按照默认字体大小显示
	CDCA_U8		byBackgroundArea; //占屏幕正中央部分的面积百分比，范围（20~100）。
	CDCA_BOOL	bShowCardSN; //是否要求在超级OSD的左下角显示卡号， 0：不显示 1：显示
	char		szCardSN[17]; //智能卡卡号，用0结尾的字符串，bShowCardSN为1时显示。注：卡号字体大小为机顶盒默认字体大小。
	//以下3个参数对byDisplayMode为0,1,2都有效。
	CDCA_U32	dwFontColor;		//字体颜色
	CDCA_U32	dwBackgroundColor;	//背景颜色
	char 		szContent[CDCA_MAXLEN_OSD+4]; //超级OSD内容。注：滚动显示时字体大小为机顶盒默认字体大小。
}SCDCAOSDInfo;


/*-- 频道锁定信息 --*/
/*-- 节目组件信息 --*/
typedef struct {    /* 组件用于通知机顶盒节目类型及PID等信息，一个节目可能包含多个组件 */
    CDCA_U16   m_wCompPID;     /* 组件PID */
    CDCA_U16   m_wECMPID;      /* 组件对应的ECM包的PID，如果组件是不加扰的，则应取0。 */
    CDCA_U8    m_CompType;     /* 组件类型 */
    CDCA_U8    m_byReserved[3];/* 保留 */
}SCDCAComponent;


/*-- 频道参数信息 --*/
typedef struct {    
    CDCA_U32   m_dwFrequency;              /* 频率，BCD码 */
    CDCA_U32   m_symbol_rate;              /* 符号率，BCD码 */
    CDCA_U16   m_wPcrPid;                  /* PCR PID */
    CDCA_U8    m_Modulation;               /* 调制方式 */
    CDCA_U8    m_ComponentNum;             /* 节目组件个数 */
    SCDCAComponent m_CompArr[CDCA_MAXNUM_COMPONENT];       /* 节目组件列表 */
    CDCA_U8    m_fec_outer;                /* 前项纠错外码 */
    CDCA_U8    m_fec_inner;                /* 前项纠错内码 */
    char       m_szBeforeInfo[CDCA_MAXLEN_LOCKMESS+1]; /* 保留 */
    char       m_szQuitInfo[CDCA_MAXLEN_LOCKMESS+1];   /* 保留 */
    char       m_szEndInfo[CDCA_MAXLEN_LOCKMESS+1];    /* 保留 */
}SCDCALockService;

/*-- 指纹显示信息--*/
typedef struct {
	CDCA_U8		byShowType; 	//显示方式0：字符串; 1：点阵；2：矩阵；其他值保留。
	CDCA_U8		byContentType; 	//显示类型 1：机顶盒号，其他值见接口文档。
	CDCA_BOOL	bIsVisible; 	//可见性0：显性；1：隐性
	CDCA_BOOL   bIsForcedShow;  //是否强制显示 0：非强制显示 1：强制显示。
	CDCA_U8       byEncryption;  //加密算法号 0：不加密；非0：加密
	CDCA_U16     wFlashing_EachShowTime; //每轮闪烁显示时长，为0时表示不闪烁。
	CDCA_U16     wFlashing_EachHideTime; //每轮闪烁暂停时长，为0时表示不闪烁。
	CDCA_U8       byFontSize; 	//指纹字体大小，取值范围[0,255]，0表示默认字体大小，1表示大字体，2表示小字体，3~255表示实际字体大小，如果机顶盒不支持3~255则按照默认字体大小显示。byShowType为1和2时表示指纹区域的大小。
	CDCA_U8		byReserved;	//0x00	保留
	CDCA_U32	dwFontColor;	//字体颜色，标准RGB值。byShowType为1时该值无意义。
	CDCA_U32	dwBackgroundColor;	//背景颜色，标准RGB值，byShowType为1和2时不做要求。
	CDCA_U8		byX_position;		//指纹显示位置的X轴坐标，取值范围0~100
	CDCA_U8		byY_position;		//指纹显示位置的Y轴坐标，取值范围0~100
	CDCA_U8	    pbyMatrixInnerPos[16];	// byShowType为2时表示矩阵指纹每个字符对应的内部坐标值。byShowType为其他值时此字段无意义。
    char		szContent[17]; //需要显示的指纹内容，用0结尾的字符串。
}SCDCAFingerInfo;

/*-- 高级预览节目信息 --*/
typedef struct {
    CDCA_U16   m_wProgramID;        /* 节目的ID */
    CDCA_TIME  m_dwStartWatchTime;   /* 起始观看时间 */
    CDCA_U8    m_byWatchTotalCount;  /* 累计观看次数 */
    CDCA_U16   m_wWatchTotalTime;    /* 累计观看时长,(cp周期数) */
}SCDCACurtainInfo;


/*-----------------------------------------------------------------------------------
a. 本系统中，参数m_dwFrequency和m_symbol_rate使用BCD码，编码前取MHz为单位。
   编码时，前4个4-bit BCD码表示小数点前的值，后4个4-bit BCD码表示小数点后的值。
   例如：
        若频率为642000KHz，即642.0000MHz，则对应的m_dwFrequency的值应为0x06420000；
        若符号率为6875KHz，即6.8750MHz，则对应的m_symbol_rate的值应为0x00068750。

b. 本系统中，m_Modulation的取值如下：
    0       Reserved
    1       QAM16
    2       QAM32
    3       QAM64
    4       QAM128
    5       QAM256
    6～255  Reserved
------------------------------------------------------------------------------------*/ 

/*------------------------------------end of 数据结构-------------------------------------*/



/*---------------------------以下接口是CA_LIB提供给STB------------------------*/

/*------ CA_LIB调度管理 ------*/

/* CA_LIB初始化 */
extern CDCA_BOOL CDCASTB_Init( CDCA_U8 byThreadPrior );

/* 关闭CA_LIB，释放资源 */
extern void CDCASTB_Close( void );

/* CDCAS同密判断 */
extern CDCA_BOOL  CDCASTB_IsCDCa(CDCA_U16 wCaSystemID);

/*------ Flash管理 ------ */

/* 存储空间的格式化 */
extern void CDCASTB_FormatBuffer( void );

/* 屏蔽对存储空间的读写操作 */
extern void CDCASTB_RequestMaskBuffer(void);

/* 打开对存储空间的读写操作 */
extern void CDCASTB_RequestUpdateBuffer(void);

/*------ TS流管理 ------*/

/* 设置ECM和节目信息 */
extern void CDCASTB_SetEcmPid( CDCA_U8 byType,
                               const SCDCASServiceInfo* pServiceInfo );

/* 设置EMM信息 */
extern void  CDCASTB_SetEmmPid(CDCA_U16 wEmmPid);

/* 私有数据接收回调 */
extern void CDCASTB_PrivateDataGot( CDCA_U8        byReqID,
								  	CDCA_BOOL      bTimeout,
									CDCA_U16       wPid,
									const CDCA_U8* pbyReceiveData,
									CDCA_U16       wLen            );

/*------- 智能卡管理 -------*/

/* 插入智能卡 */
extern CDCA_BOOL CDCASTB_SCInsert( void );

/* 拔出智能卡*/
extern void CDCASTB_SCRemove( void );

/* 读取智能卡外部卡号 */
extern CDCA_U16 CDCASTB_GetCardSN( char* pCardSN );

/* PIN码管理 */
extern CDCA_U16 CDCASTB_ChangePin( const CDCA_U8* pbyOldPin,
                                   const CDCA_U8* pbyNewPin);

/* 设置用户观看级别 */
extern CDCA_U16 CDCASTB_SetRating( const CDCA_U8* pbyPin,
                                   CDCA_U8 byRating );

/* 查询用户观看级别 */
extern CDCA_U16 CDCASTB_GetRating( CDCA_U8* pbyRating );

/* 设置智能卡工作时段 */
extern CDCA_U16 CDCASTB_SetWorkTime( const CDCA_U8* pbyPin,
									 CDCA_U8        byStartHour,
									 CDCA_U8        byStartMin,
									 CDCA_U8        byStartSec,
									 CDCA_U8        byEndHour,
									 CDCA_U8        byEndMin,
									 CDCA_U8        byEndSec    );

/* 查询智能卡当前工作时段 */
extern CDCA_U16 CDCASTB_GetWorkTime( CDCA_U8* pbyStartHour,
									 CDCA_U8* pbyStartMin,
									 CDCA_U8* pbyStartSec,
									 CDCA_U8* pbyEndHour,
									 CDCA_U8* pbyEndMin,
									 CDCA_U8* pbyEndSec   );

/*------- 基本信息查询 -------*/

/* 查询CA_LIB版本号 */
extern CDCA_U32 CDCASTB_GetVer( void );

/* 查询运营商ID列表 */
extern CDCA_U16 CDCASTB_GetOperatorIds( CDCA_U16* pwTVSID );

/* 查询运营商信息 */
extern CDCA_U16 CDCASTB_GetOperatorInfo( CDCA_U16           wTVSID,
                                         SCDCAOperatorInfo* pOperatorInfo );

/* 查询用户特征 */
extern CDCA_U16 CDCASTB_GetACList( CDCA_U16 wTVSID, CDCA_U32* pACArray );

/* 查询钱包ID列表 */
extern CDCA_U16 CDCASTB_GetSlotIDs( CDCA_U16 wTVSID, CDCA_U8* pbySlotID );

/* 查询钱包的详细信息 */
extern CDCA_U16 CDCASTB_GetSlotInfo( CDCA_U16          wTVSID,
                                     CDCA_U8           bySlotID,
                                     SCDCATVSSlotInfo* pSlotInfo );

/* 查询智能卡冻结状态*/
/*pbyStatus值说明:
    0: 正常;
    非0: 冻结 */
extern CDCA_U16 CDCASTB_GetCardFreezeStatus(CDCA_U16 wTvsID, CDCA_U8* pbyStatus);


/* 查询普通授权节目购买情况 */
extern CDCA_U16 CDCASTB_GetServiceEntitles( CDCA_U16       wTVSID,
                                            SCDCAEntitles* pServiceEntitles );



/*CA通用查询接口*/
/*
参数说明:
    byType  :查询类型。             
    pInData :输入数据地址，数据空间由调用者分配。
    pOutData:输出数据地址，数据空间由调用者分配。
返回值：CDCA_RC_OK 	：表示成功
	    其他值		：表示失败，具体查看头文件的"功能调用返回值定义"
*/
extern CDCA_U16 CDCASTB_QuerySomething(CDCA_U8 byType,void * pInData, void * pOutData);


/*-- 高级预览节目购买记录查询(内部测试用) --*/
/*
参数说明：
	wTvsID	：运营商ID
	pCurtainRecs	：高级预览记录指针，要求数组大小为CDCA_MAXNUM_CURTAIN_RECORD。
	pNumber	：输出有效记录数，即从pCurtainRecs[0]开始的个数。
	
返回值：CDCA_RC_OK 	：表示成功
	    其他值		：表示失败，具体查看头文件的"功能调用返回值定义"
	
*/
extern CDCA_U16 CDCASTB_GetCurtainRecords( CDCA_U16 wTvsID,
                                SCDCACurtainInfo* pCurtainRecs,
                                CDCA_U8* pNumber);


/*-------- 授权信息管理 --------*/

/* 查询授权ID列表 */
extern CDCA_U16 CDCASTB_GetEntitleIDs( CDCA_U16  wTVSID,
                                       CDCA_U32* pdwEntitleIds );

/* 查询反授权确认码 */
extern CDCA_U16 CDCASTB_GetDetitleChkNums( CDCA_U16   wTvsID,
                                           CDCA_BOOL* bReadFlag,
                                           CDCA_U32*  pdwDetitleChkNums);

/* 查询反授权信息读取状态 */
extern CDCA_BOOL CDCASTB_GetDetitleReaded( CDCA_U16 wTvsID );

/* 删除反授权确认码 */
extern CDCA_BOOL CDCASTB_DelDetitleChkNum( CDCA_U16 wTvsID,
                                           CDCA_U32 dwDetitleChkNum );

/*------- 机卡对应 -------*/

/* 查询机卡对应情况 */
extern CDCA_U16 CDCASTB_IsPaired( CDCA_U8* pbyNum,
                                  CDCA_U8* pbySTBID_List );
/* 查询机顶盒平台编号 */
extern CDCA_U16 CDCASTB_GetPlatformID( void );

/* 查询终端类型编号 */
extern CDCA_U16 CDCASTB_GetTerminalTypeID( void );

/*-------- IPPV应用 -------*/

/* IPPV节目购买 */
extern CDCA_U16 CDCASTB_StopIPPVBuyDlg( CDCA_BOOL       bBuyProgram,
                                        CDCA_U16        wEcmPid,
                                        const CDCA_U8*  pbyPinCode,
                                        const SCDCAIPPVPrice* pPrice );

/* IPPV节目购买情况查询 */
extern CDCA_U16 CDCASTB_GetIPPVProgram( CDCA_U16       wTvsID,
                                        SCDCAIppvInfo* pIppv,
                                        CDCA_U16*      pwNumber );


/*-------- 邮件管理 --------*/

/* 查询邮件头信息 */
extern CDCA_U16 CDCASTB_GetEmailHeads( SCDCAEmailHead* pEmailHead,
                                       CDCA_U8*        pbyCount,
                                       CDCA_U8*        pbyFromIndex );

/* 查询指定邮件的头信息 */
extern CDCA_U16 CDCASTB_GetEmailHead( CDCA_U32        dwEmailID,
                                      SCDCAEmailHead* pEmailHead );

/* 查询指定邮件的内容 */
extern CDCA_U16 CDCASTB_GetEmailContent( CDCA_U32           dwEmailID,
                                         SCDCAEmailContent* pEmailContent );

/* 删除邮件 */
extern void CDCASTB_DelEmail( CDCA_U32 dwEmailID );

/* 查询邮箱使用情况 */
extern CDCA_U16 CDCASTB_GetEmailSpaceInfo( CDCA_U8* pbyEmailNum,
                                           CDCA_U8* pbyEmptyNum );


/*-------- 子母卡应用 --------*/

/* 读取子母卡信息 */
extern CDCA_U16 CDCASTB_GetOperatorChildStatus( CDCA_U16   wTVSID,
                                                CDCA_U8*   pbyIsChild,
                                                CDCA_U16*   pwDelayTime,
                                                CDCA_TIME* pLastFeedTime,
                                                char*      pParentCardSN,
                                                CDCA_BOOL *pbIsCanFeed );

/* 读取母卡喂养数据 */
extern CDCA_U16 CDCASTB_ReadFeedDataFromParent( CDCA_U16 wTVSID,
                                                CDCA_U8* pbyFeedData,
                                                CDCA_U8* pbyLen     );

/* 喂养数据写入子卡 */
extern CDCA_U16 CDCASTB_WriteFeedDataToChild( CDCA_U16       wTVSID,
                                              const CDCA_U8* pbyFeedData,
                                              CDCA_U8        byLen    );


/*-------- 显示界面管理 --------*/

/* 刷新界面 */
extern void CDCASTB_RefreshInterface( void );


/*-------- 双向模块接口 -------*/


    

/*------------------------以上接口是CA_LIB提供给STB---------------------------*/

/******************************************************************************/

/*------------------------以下接口是STB提供给CA_LIB---------------------------*/

/*-------- 线程管理 --------*/

/* 注册任务 */
extern CDCA_BOOL CDSTBCA_RegisterTask( const char* szName,
                                       CDCA_U8     byPriority,
                                       void*       pTaskFun,
                                       void*       pParam,
                                       CDCA_U16    wStackSize  );

/* 线程挂起 */
extern void CDSTBCA_Sleep(CDCA_U32 wMilliSeconds);


/*-------- 信号量管理 --------*/

/* 初始化信号量 */
extern void CDSTBCA_SemaphoreInit( CDCA_Semaphore* pSemaphore,
                                   CDCA_BOOL       bInitVal );

/* 信号量给予信号 */
extern void CDSTBCA_SemaphoreSignal( CDCA_Semaphore* pSemaphore );

/* 信号量获取信号 */
extern void CDSTBCA_SemaphoreWait( CDCA_Semaphore* pSemaphore );


/*-------- 内存管理 --------*/

/* 分配内存 */
extern void* CDSTBCA_Malloc( CDCA_U32 byBufSize );

/* 释放内存 */
extern void  CDSTBCA_Free( void* pBuf );

/* 内存赋值 */
extern void  CDSTBCA_Memset( void*    pDestBuf,
                             CDCA_U8  c,
                             CDCA_U32 wSize );

/* 内存复制 */
extern void  CDSTBCA_Memcpy( void*       pDestBuf,
                             const void* pSrcBuf,
                             CDCA_U32    wSize );


/*--------- 存储空间（Flash）管理 ---------*/

/* 读取存储空间 */
extern void CDSTBCA_ReadBuffer( CDCA_U8   byBlockID,
                                CDCA_U8*  pbyData,
                                CDCA_U32* pdwLen );

/* 写入存储空间 */
extern void CDSTBCA_WriteBuffer( CDCA_U8        byBlockID,
                                 const CDCA_U8* pbyData,
                                 CDCA_U32       dwLen );


/*-------- TS流管理 --------*/

/* 设置私有数据过滤器 */
extern CDCA_BOOL CDSTBCA_SetPrivateDataFilter( CDCA_U8        byReqID,  
											   const CDCA_U8* pbyFilter,  
											   const CDCA_U8* pbyMask, 
											   CDCA_U8        byLen, 
											   CDCA_U16       wPid, 
											   CDCA_U8        byWaitSeconds );

/* 释放私有数据过滤器 */
extern void CDSTBCA_ReleasePrivateDataFilter( CDCA_U8  byReqID,
                                              CDCA_U16 wPid );

/* 设置CW给解扰器(非高安) */
extern void CDSTBCA_ScrSetCW( CDCA_U16       wEcmPID,  
							  const CDCA_U8* pbyOddKey,  
							  const CDCA_U8* pbyEvenKey, 
							  CDCA_U8        byKeyLen, 
							  CDCA_BOOL      bTapingEnabled );
extern  void CDSTBCA_SetInvalidCW(void);

/*--------- 智能卡管理 ---------*/

/* 智能卡复位 */
extern CDCA_BOOL CDSTBCA_SCReset( CDCA_U8* pbyATR, CDCA_U8* pbyLen );

/* 智能卡通讯 */
extern CDCA_BOOL CDSTBCA_SCPBRun( const CDCA_U8* pbyCommand, 
								  CDCA_U16       wCommandLen,  
								  CDCA_U8*       pbyReply,  
								  CDCA_U16*      pwReplyLen  );

/*-------- 授权信息管理 -------*/

/* 通知授权变化 */
extern void CDSTBCA_EntitleChanged( CDCA_U16 wTvsID );


/* 反授权确认码通知 */
extern void CDSTBCA_DetitleReceived( CDCA_U8 bstatus );



/*-------- 安全控制 --------*/

/* 读取机顶盒唯一编号 */
extern void CDSTBCA_GetSTBID( CDCA_U16* pwPlatformID,
                              CDCA_U32* pdwUniqueID);

/* 安全芯片接口(含高安设置CW) */
extern CDCA_U16 CDSTBCA_SCFunction( CDCA_U8* pData);

/*-------- IPPV应用 -------*/

/* IPPV节目通知 */
extern void CDSTBCA_StartIppvBuyDlg( CDCA_U8                 byMessageType,
                                     CDCA_U16                wEcmPid,
                                     const SCDCAIppvBuyInfo* pIppvProgram  );

/* 隐藏IPPV对话框 */
extern void CDSTBCA_HideIPPVDlg(CDCA_U16 wEcmPid);

/*------- 邮件/OSD显示管理 -------*/

/* 邮件通知 */
extern void CDSTBCA_EmailNotifyIcon( CDCA_U8 byShow, CDCA_U32 dwEmailID );

/* 显示普通OSD信息 */
extern void CDSTBCA_ShowOSDMessage( CDCA_U8     byStyle,
                                    const char* szMessage );

/* 隐藏OSD信息*/
extern void CDSTBCA_HideOSDMessage( CDCA_U8 byStyle );

/*显示超级OSD信息， 注意：pOSDInfo为NULL，表示取消OSD显示*/
extern void  CDSTBCA_ShowOSDInfo(SCDCAOSDInfo *pOSDInfo);


/*-------- 子母卡应用 --------*/

/* 请求提示读取喂养数据结果 */
extern void  CDSTBCA_RequestFeeding( CDCA_BOOL bReadStatus );


/*-------- 强制切换频道 --------*/
/* 频道锁定 */
extern void CDSTBCA_LockService( const SCDCALockService* pLockService );

/* 解除频道锁定 */
extern void CDSTBCA_UNLockService( void );


/*-------- 显示界面管理 --------*/

/* 不能正常收看节目的提示 */
/*wEcmPID==0表示与wEcmPID无关的消息*/
extern void CDSTBCA_ShowBuyMessage( CDCA_U16 wEcmPID,
                                    CDCA_U8  byMessageType );


/* 超级指纹显示, pFingerInfo=NULL 表示取消超级指纹*/
extern void CDSTBCA_ShowFingerInfo ( CDCA_U16 wEcmPID,
                         const SCDCAFingerInfo* pFingerInfo );

/* 指纹显示，fingerMsg=NULL 表示取消指纹*/
extern void CDSTBCA_ShowFingerMessageExt( CDCA_U16 wEcmPID,
                                      char* fingerMsg );

/*--------- 机顶盒通知 --------*/
/* 机顶盒通知 */
extern void  CDSTBCA_ActionRequestExt( CDCA_U16 wTVSID,
                                      CDCA_U8  byActionType,
                                      CDCA_U8 byLen,
                                      CDCA_U8* pbyData);

/* 通知机顶盒显示或关闭高级预览*/
extern void  CDSTBCA_ShowCurtainNotify( CDCA_U16 wEcmPID,
                                    CDCA_U16  wCurtainCode);

/* 进度显示 */
extern void CDSTBCA_ShowProgressStrip( CDCA_U8 byProgress,
                                       CDCA_U8 byMark );



/*--------- 连续观看限制通知 --------*/
/*byType=0表示禁用连续观看限制,
 byType=1表示启用连续观看限制,此时，wWorkTime(连续工作时间，单位:小时)和wStopTime(停止时间，单位:分钟)才需要设置给机顶盒。
 byType=2表示取消当前连续观看限制*/
extern void CDSTBCA_ContinuesWatchLimit(CDCA_U8 byType, CDCA_U16 wWorkTime, CDCA_U16 wStopTime);

/*--------- 获取当前时间 --------*/
/*获取成功返回CDCA_TRUE,获取失败返回CDCA_FALSE*/
//The bias is the difference, in minutes, between Coordinated Universal Time (UTC) and local time, UTC = local time + bias
extern CDCA_BOOL  CDSTBCA_GetCurrentTime( CDCA_S32  *pUTCTime, CDCA_S32 *pTimeZoneBias, CDCA_S32 *pDaylightBias,  CDCA_BOOL* pInDaylight);






/*-------- 其它 --------*/

/* 获取字符串长度 */
extern CDCA_U16 CDSTBCA_Strlen(const char* pString );

/* 调试信息输出 */
extern void CDSTBCA_Printf(CDCA_U8 byLevel, const char* szMesssage );


/*---------------------------以上接口是STB提供给CA_LIB------------------------*/

#ifdef  __cplusplus
}
#endif
#endif
/*EOF*/

