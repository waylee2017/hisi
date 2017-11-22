此目录下的库文件为Hiplayer+ffmpeg的basic版本：
	1. 各库文件说明
	   libplayer.so      :hiplayer动态库
	   libplayer.a       :libplayer.so的静态库版本
	   libformat.so      :hiplayer的demux库
	   libffmpegformat.so:ffmpeg适配库
	   libavutil.so.51   :ffmpeg工具库
	   libavformat.so.53 :ffmpeg demux库
	   libsubdec.so      :字幕解析库，basic版本仅用于ass/ssa字幕解析。
	   libsubdec.a       :libsubdec.so的静态库版本
	2. basic版本特点
	   占用flash空间最小
	   仅支持本地文件播放
	   目前支持的文件格式包括：.mkv,.mpg,.mpeg,.avi,.ts,.tp,.trp,.m2ts,.dat,.vob,.mp4,.mov,.flv.mp3。
	   目前支持的字幕格式（外挂/内置）包括：srt,sub,ssa/aas。
	   
     
   