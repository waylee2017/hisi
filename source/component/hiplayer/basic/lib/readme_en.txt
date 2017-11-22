This is basic version of the hiplayer:
  1. Descriptions of library files:
	   libplayer.so      :dynamic library of hiplayer.
	   libplayer.a       :static version of libplayer.so.
	   libformat.so      :the demux library of hiplayer.
	   libffmpegformat.so:the adaptive library for ffmpeg.
	   libavutil.so.51   :the utility library of ffmpeg.
	   libavformat.so.53 :the demux library of ffmpeg.
	   libsubdec.so      :subtitile parser library, only used for ass/ssa subtitle parsing in basic version.
	   libsubdec.a       :static version of libsubdec.so.
	   
  2. Characteristics of basic version:
     The total size of all libraries is the minimum of all three versions.
     Only supports playing local media files.
     The supported media formats(containers) include:.mkv,.mpg,.mpeg,.avi,.ts,.tp,.trp,.m2ts,.dat,.vob,.mp4,.mov,.flv.mp3.
     The supported embeded/external subtitile formats include:srt,sub,ssa/aas.
     