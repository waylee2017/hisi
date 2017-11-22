This is basic version of the hiplayer:
  1. Descriptions of library files:
	   libplayer.so      :dynamic library of hiplayer.
	   libplayer.a       :static version of libplayer.so.
	   libformat.so      :the demux library of hiplayer.
	   libffmpegformat.so:the adaptive library for ffmpeg.
	   libavutil.so.51   :the utility library of ffmpeg.
	   libavformat.so.53 :the demux library of ffmpeg.
  2. Characteristics of normal version:
     supports playing local media files,supports http/hls.         
 	   The supported media formats(containers) include:.mkv,.mpg,.mpeg,.avi,.ts,.tp,.trp,.m2ts,.dat,.vob,.mp4,.mov,.flv,
	                          .rmvb,.m2p,.m2t,.mts,.3gp,.3g2,.asf,.wmv,.f4v,.m1v,.m2v,.m4v,.webm,.mp3,.wma,.wav,.mka,.aac,.ac3,.m4a
	   The supported embeded/external subtitile formats include:srt,lrc,smi,ssa/aas,idx+sub,sub    
     