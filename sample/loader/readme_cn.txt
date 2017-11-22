功能描述：
	sample_loader用以模拟触发loader升级，支持OTA、USB、IP等升级方式。
命令格式：
	usage: sample_loader [-t trigger] [-s set] [-g get] [[command] arg].
	command as follows:
 	sample_loader -t               -- configure loader upgrade parameter and trigger it run.
 	sample_loader -s stbid args    -- configure stbid.
 	sample_loader -s sw            -- configure software.
 	sample_loader -g stbid         -- get and display stbid info.
 	sample_loader -g sw            -- get and display software version info.

使用说明：
	stbinfo的具体定义说明如下：
	AAAA BB CCC DD EE X FFFF FFFF FFFF
	AAAA : 四位地区指示码
	BB   : 终端产品生产厂商认证编号
	CCC  : 终端产品机顶盒生产批次
	DD   : 终端类型
	EE   : 硬件版本号
	X    : 识别码
	FFFF FFFF FFFF : 改成根据识别码的定义来确定具体意义

	设置stbid：
	#./sample_loader -s stbid 15010300101010001c1d000021   
	
	得到stbid：
	#./sample_loader -g stbid
	==================stbid info================
	factory id              0x00000003
	Area code               0x00001501
	Hw ver id               0x00000001
	Hw batch id             0x00000001
	cur software version    0x00000001
	==========================================

	设置当前软件版本号：
	#./sample_loader -s sw
	=============modify software ver==============
	cur software version    0x00000000 ? 2   
                   
	
	得到当前软件版本号：
	#./sample_loader -g sw
	cur software version    0x00000002
	
	触发OTA Cable升级：
	# ./sample_loader -t
	> Select upgrade type(0-OTA, 1-IP, 2-USB) ? 0
	> Select signal type(0-CAB, 1-SAT) ? 0
	> Input PID[0] ? 7000
	> Input Frequency(MHz)[0] ? 610
	> Input Symbol rate(KS/s)[0] ? 6875
	> Input Modulation(0-16,1-32,2-64,3-128,4-256Qam)[0] ? 2
	
	=================================
	Upgrade Parameters
	Download Type           : OTA
	Tuner Type              : Cable
	PID                     : 7000
	Frequency               : 610(MHZ)
	Symrate         	: 6875(Kbps)
	Modulation              : 64QAM
	=================================
	
	触发DVB-T升级：
	# ./sample_loader -t
	> Select upgrade type(0-OTA, 1-IP, 2-USB) ? 0
	> Select signal type(0-CAB, 1-SAT, 2-DVB_T) ? 2
	> Input PID[7000] ? 7000
	> Input Frequency(KHz)[177500] ? 177500
	> Input BandWidth(MHz)[7] ? 7
	> Input Modulation(0-16,1-32,2-64,3-128,4-256Qam)[2] ? 2

	=================================
	Upgrade Parameters 
	Download Type    : OTA
	Tuner Type       : DVB_T
	PID              : 7000
	Frequency        : 177.5(MHZ)
	BandWidth       : 7(MHZ)
	Modulation       : 64QAM
	=================================
	
	触发OTA卫星升级：
	# sample_loader -t
	> Select upgrade type(0-OTA, 2-USB) ? 0
	> Select signal type(0-CAB, 1-SAT) ? 1
	> Input PID[7000] ?
	> Input Frequency(MHz)[4150] ?
	> Input Symbol rate(KS/s)[27500] ?
	> Input Polar(0-Horizontal,1-Vertical, 2-Left hand, 3-Right hand)[0] ?
	> Input LNB Low Frequency(MHZ)[5150] ?
	> Input LNB High Frequency(MHZ)[5750] ?
	> Input LNB Power Typte(0-LNB Power Off, 1-LNB Power On)[0] ?1
	> Input 22K Switch(0-Off, 1-On)[0] ?
	> Input DiSEqC1.1 Port(0-Disable, 1-port1, 2-port2,etc)[0] ?
	> Input DiSEqC1.0 Port(0-Disable, 1-port1, 2-port2,etc)[0] ?

	=================================
	Upgrade Parameters
	Download Type           : OTA
	Tuner Type              : Satellite
	PID                     : 7000
	Frequency               : 4150(MHZ)
	Symrate         : 27500(Kbps)
	Polar                   : Horizontal
	LNB Low Frequency       : 5150(MHZ)
	LNB High Frequency      : 5750(MHZ)
	LNB Power               : Power Off
	22K Switch              : Off
	DiSEqC1.1               : Disable
	DiSEqC1.0               : Disable
	=================================
	
	触发IP升级：
	# ./sample_loader -t
	> Select upgrade type(0-OTA, 1-IP, 2-USB) ? 1
	> Select protocol type(0-TFTP, 1-FTP, 2-HTTP) ? 2
	> Select IP type(0-static, 1-dynamic) ? 1
	> Input server IP address[0.0.0.0] ? 10.157.187.10
	> Input server port(default:80) ?
	> Input upgrade file name[] ? ip_update.bin
	
	=================================
	Upgrade Parameters
	Download Type           : IP
	Protocol Type           : HTTP
	IP Type                 : dynamic
	server ip               : 10.157.187.10
	server port             : 80
	Upgrade file name       : ip_update.bin
	=================================
	
	触发USB升级：
	# ./sample_loader -t
	> Select upgrade type(0-OTA, 1-IP, 2-USB) ? 2
	> specify upgrade file name[] ? usb_update.bin
	
	=================================
	Upgrade Parameters
	Download Type           : USB
	Upgrade file name       : usb_update.bin
	=================================



	
	
	