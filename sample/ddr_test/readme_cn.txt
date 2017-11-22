-----------------------------------------------------------------------------------------------------------------

目的：用于单板压力测试和业务Training使用，通过播放大的业务和模拟客户常出现的问题，使DDR与芯片主要IP达到大的压力。

-----------------------------------------------------------------------------------------------------------------

场景：高清播放 + TDE
1	sample_dvb_training  
当使用cable线输入方式时采用sample_dvb_training 测试用例用于播放TS码流，可以通过测试用例设置频点、运行时间、TDE使用的图片、以及Tuner参数等信息。
使用方法如下：
sample_dvb_training freq [runtime] [file] [srate] [qamtype]
freq： 频点
[runtime]:  单位秒 ，默认值: -1 代表一直运行，直到用户CTRL+C停止
[file]	:	 TDE播放时使用的图片，默认值: 12.jpg
[srate]:   符号率，默认值: 6875 
[qamtype]:调整模式，默认值64
举例说明：
Example:./sample_dvb_training 618
Example:./sample_dvb_training 618 30
Example:./sample_dvb_training 618 30 12.jpg 6875 64
Example:../sample_dvb_training 3840 10 12.jpg 27500

2	sample_ip_training 
当采用网络输入方式时采用sample_ip_training 测试用例用于播放TS码流，可以通过测试用例设置广播地址、端口号、场景运行时间、TDE使用的图片。
使用方法如下：
sample_ip_training MultiAddr UdpPort [runtime] [file]
MultiAddr：多播地址
UdpPort ：UDP端口号
[runtime]:  单位秒 ，默认值: -1 代表一直运行，直到用户CTRL+C停止
[file]	:	 TDE播放时使用的图片，默认值: 12.jpg
举例说明：
Example:./sample_ip_training 224.0.0.1 1234
Example:./sample_ip_training 224.0.0.1 1234 30
Example:./sample_ip_training 224.0.0.1 1234 30 12.jpg

-----------------------------------------------------------------------------------------------------------------


注意 : 请在非高安环境下来使用。

-----------------------------------------------------------------------------------------------------------------