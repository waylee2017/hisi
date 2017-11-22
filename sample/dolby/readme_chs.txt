dolby应用程序使用说明：
源码：dolby_main.c dolby_ir.c dolby_win.c dolby_dvbplay.c dolby_service.c
功能：为杜比认证提供界面支持。
执行方式：进入dolby目录，使用./dolby命令执行该程序。
使用说明：
    1：该应用程序启动后，会直接进入单频点搜台设置界面。搜台界面参数为：搜索频率，符号率，调制方式，Tuner类型。
        1) 按键控制：
            (1)遥控器"UP"，"DOWN"键，用来切换焦点控件。
			(2)"LEFT"，"RIGHT"键用来选择焦点区域，要设定的参数。
			(3)"OK"按键用来控制控件编辑区的编辑状态，并用来触发开始搜索事件。
	 	2) 搜索参数：
            (1)搜索频率：默认处于焦点位置，按“ok”键，使其进入可编辑状态，按下相应的数字键设置搜索频率。设置完成后，按“ok”键使搜索频率编辑区处于不可编辑状态。注：搜索频率值域为0~999，若搜索频率不足三位，请在前面加0。
	 		(2)符号率：值域为0~9999，设定方式与搜索频率相同。
        3) 调制方式：
		    有5种类型供选择：16, 32, 64, 128, 256, 512。按左右键可进行调制方式类型的切换。
        4) Tuner类型：
		    有21种类型供选择：
			HI_UNF_TUNER_DEV_TYPE_XG_3BL,               /*旭光高频头*/
			HI_UNF_TUNER_DEV_TYPE_CD1616,               /*CD1616高频头*/
			HI_UNF_TUNER_DEV_TYPE_ALPS_TDAE,            /*ALPS_TDAE高频头*/
			HI_UNF_TUNER_DEV_TYPE_TDCC,                 /*TDCC高频头*/
			HI_UNF_TUNER_DEV_TYPE_TDA18250,             /*TDA18250高频头*/
			HI_UNF_TUNER_DEV_TYPE_CD1616_DOUBLE,        /*CD1616带双agc高频头*/
			HI_UNF_TUNER_DEV_TYPE_MT2081,               /*MT2081高频头*/
			HI_UNF_TUNER_DEV_TYPE_TMX7070X,             /*THOMSON7070X高频头*/
			HI_UNF_TUNER_DEV_TYPE_R820C,                /*R820C高频头*/
			HI_UNF_TUNER_DEV_TYPE_MXL203,               /*MXL203高频头*/
			HI_UNF_TUNER_DEV_TYPE_AV2011,               /*AV2011高频头*/
			HI_UNF_TUNER_DEV_TYPE_SHARP7903,            /*SHARP7903高频头*/
			HI_UNF_TUNER_DEV_TYPE_MXL101,               /*MXL101高频头*/
			HI_UNF_TUNER_DEV_TYPE_MXL603,               /*MXL603高频头*/
			HI_UNF_TUNER_DEV_TYPE_IT9170,               /*IT9170高频头*/
			HI_UNF_TUNER_DEV_TYPE_IT9133,               /*IT9133高频头*/
			HI_UNF_TUNER_DEV_TYPE_TDA6651,              /*TDA6651高频头*/
			HI_UNF_TUNER_DEV_TYPE_TDA18250B,            /*TDA18250B高频头*/
			HI_UNF_TUNER_DEV_TYPE_M88TS2022,            /*M88TS2022高频头*/
			HI_UNF_TUNER_DEV_TYPE_CXD2861,				/*CXD2861高频头*/
			HI_UNF_TUNER_DEV_TYPE_RDA5815,              /*RDA5815高频头*/
		
			使用左右键进行类型切换。
			参数设定完成后，将焦点移至“start”，按ok键进入节目搜索进程。
	 2：节目开始播放后，在屏幕下方，有一个Channel Bar用于显示节目信息，从左至右为：音频类型，多伴音类型，声道类型，音量大小及视频类型。
	 	播放过程中按键控制：
     	    1) "UP"，"DOWN"：切台。
     	    2) "LEFT"，"RIGHT"：音量控制，左键减小音量，右键增大音量。
     	    3) "MUTE"：静音设定。
     	    4) "AUIDO"：声道设定。
     	    5) "EPG"：HDMI、SPDIF透传设置
     	 	    透传界面参数有：
     	 			a: HDMI： 可选择AUTO(根据HDMI EDID判断是否透传),LPCM(解码),RAW(透传)。默认AUTO。
     	 			b: SPDIF：可选择LPCM(解码),RAW(透传)。默认RAW。
     	    6) "BACK"：节目号显示。用于指示当前播放哪个频道的节目。
     	    7) "SEARCH": 进入搜台设置界面，重新开始搜台。
     	    8) "DEL"：控制channelBar的显示和消失。
     	    9) '0~9'，用来设定要播放的节目号。节目号合法时，进行切台；不合法时，继续播放当前节目，不切台。