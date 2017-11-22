"dolby" application
   executable program: dolby
   source code: dolby_main.c dolby_ir.c dolby_win.c dolby_dvbplay.c
   introduction: this demo shows the dolby approval function
   Command: ./dolby
Usage:        
   1: After you run the './dolby ' command, you can see a program search window on the  screen.  There are three fields as follow:
       1) Freq: 0~999. The default value is 610. 
       2) Symborate:0~9999. The default value is 6875. 
       3) QAM:The value can be 16, 32, 64, 128, 256, or 512. The default value is 64 quadrature amplitude modulation (QAM). Using "LEFT" and "RIGHT" menu to change the value of qam.        	
       4) Tuner Type: There are twenty-one tuner types for user to select.
      Notes:
       1) Please press "OK" menu of IR to set 'freq' or 'Symborate' fields onEdit,then you need set the value of current fields. 
       2) When you finish  to input the value , Press "OK" to set current fields offEdit. 
       3) use "UP" and "DOWN" menu to change focus field.
       4) use LEFT" and "RIGHT" menu to change  QAM or Tuner Type's Value.
       5) Select 'start' button and press "ok" menu to start program search.
   2: When the DVB playing scenario is runing, you can see a channel bar on the botton of the screen. 
      The channel bar contains Audio Stream Type, Dual Mono Type, Track Mode, Volume and Video Stream Type.
      Use the buttons on the ir-remote:
       1) "UP"|"DOWN" : control the DVB changing channels .
       2) "LEFT"|"RIGHT" : control Volume.
       3) "MUTE": set Sound mute.
       4) "AUIDO": set Track Mode of Sound.
       5) "EPG" : output mode setting for HDMI and SPDIF
	       a) HDMI : AUTO(output mode based on HDMI EDID),LPCM(pcm output mode),RAW(passthrough mode). default mode is "AUTO"
		   a) SPDIF : LPCM(pcm output mode),RAW(passthrough mode). default mode is "RAW"
       6) "BACK" : display the ID of current program.
       7) "SEARCH": go back to the  program search menu
       8) "DEL" : display and hide the channel bar. 
       9) '0~9' : switch program.