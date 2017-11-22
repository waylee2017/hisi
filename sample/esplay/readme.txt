Purpose: to demonstrate the playing of element stream (ES) files.
Command: sample_esplay vfile vtype(mpeg2/mpeg4/h263/h264/avs/real/vc1) "null" "null"
      If you run the command to play video ES files, the field vfile indicates the save path of the files, and vtype- indicates the video encoding format.
      sample_esplay "null"  "null"  afile atype(/aac/mp3/ddp/dts/dra)
      If you run the command to play audio ES files, the field afile- indicates the save path of these files, and vtype- indicates the audio encoding format.
      sample_esplay vfile vtype(mpeg2/mpeg4/h263/h264/avs/real/vc1) afile atype(/aac/mp3/ac3/dts/dra)
      Video and audio ES files can be played concurrently.
Note: ddp means Dolby Digital Plus. Sure you got Dolby Digital Plus License before using ddp.