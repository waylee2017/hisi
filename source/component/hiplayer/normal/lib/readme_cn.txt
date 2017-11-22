此目录下的库文件为Hiplayer+ffmpeg的basic版本：
	1. 各库文件说明
	   libplayer.so:hiplayer动态库
	   libplayer.a:libplayer.so的静态库版本
	   libformat.so：hiplayer的demux库
	   libffmpegformat.so:ffmpeg适配库
	   libavutil.so.51:ffmpeg工具库
	   libavformat.so.53:ffmpeg demux库
	   libsubdec.so      :字幕解析库，用于aas/ssa/pgs/idx字幕解析
	   libsubdec.a       :libsubdec.so的静态库版本	   
	2. normal版本特点
	   支持本地文件播放，支持http/hls。
	   目前支持的文件格式包括：.mkv,.mpg,.mpeg,.avi,.ts,.tp,.trp,.m2ts,.dat,.vob,.mp4,.mov,.flv,
	                          .rmvb,.m2p,.m2t,.mts,.3gp,.3g2,.asf,.wmv,.f4v,.m1v,.m2v,.m4v,.webm,
	                          .mp3,.wma,.wav,.mka,.aac,.ac3,.m4a
	   目前支持的字幕格式（外挂/内置）包括：srt,lrc,smi,ssa/aas,idx+sub,sub
	   
     
   