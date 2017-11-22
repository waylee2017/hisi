Purpose: to test the commands of the hdmi. External transport streams (TSs) need to be read.
Command: sample_hdmi_tsplay TS_stream Videotming HDCPFlag
      TSs of TS_stream:MPEG/H.264 include ccitt_mux_32K.ts and ccitt_mux_ac3.ts.
      Videotming:1080P_60、1080P_50、1080P_30、1080P_25、1080P_24、1080i_60、1080i_50、720P_60、720P_50、576P_50、480P_60、
      576i_50、PAL、480i_60、NTSC�� and the vesa timing。
      HDCPFlag: HDCP encryption transmission flag. The value 0 indicates non-encryption mode and 1 indicates encryption mode.
               Note: The function is valid only if a correct HDCP KEY is written to the one-time programmable (OTP) module. 
               Otherwise, the high-definition multimedia interface (HDMI) fails to work properly.
      
   When the program is running, enter h to query the HDMI items that can be tested.
   For example,
hdmi_cmd >h
  input parameter Num:1     argv[0]:h, 

  List all testtool command
    help                       list all command we provide
    q                          quit sample test
    hdmi_debug                 Display all relative status
    hdmi_hdmi_force            force to hdmi output
    hdmi_dvi_force             force to enter dvi output mode
    hdmi_display_edid          display current sink EDID message
    hdmi_deepcolor             set video deepcolor mode
    hdmi_nativefmt             get hdmi native format
    hdmi_xvycc                 set video xvYCC output
    hdmi_video_timing          set video output timing format
    hdmi_color_mode            set video color output(RGB/YCbCr)
    hdmi_apectrate             set video apectrate only to 576P/I, 480P/I
    hdmi_reversecolor          set video color space 601<-->709
    hdmi_rgbfullrange          set video color RGB fullrange
    hdmi_ycbcrfullrange        set video color YCbCr fullrange
    hdmi_v_mute                set video output mute/unmute
    hdmi_a_freq                set audio output frequence
    hdmi_a_inputmode           set audio input mode:I2S/SPDIF
    hdmi_a_mute                set audio output mute/unmute
    hdmi_a_downsample          set audio output downsample
    hdmi_av_mute               set video&audio mute/unmute
    hdmi_a_channel8            set audio multi channel(8) output
    hdmi_hdcp                  set HDCP, to be define
    hdmi_cecautoping           set CEC command, Autoping
    cec_setcm                  set CEC command
    cec_getcm                  get CEC command
    cec_enable                 enable cec.
    cec_disable                enable cec.
    hdmi_reset                 set hdmi reset command
    hdmi_reopen                set hdmi reopen command
    hdmi_restart               set hdmi restart command
    hdmi_edid_test             set hdmi edid test command
    hdmi_reg                   debug hdmi register command
    hdmi_randomswitch          set hdmi random switch
    hdmi_3d_enable             enable hdmi 3D
    hdmi_3d_disable            disable hdmi 3D
    hdmi_picture_display       display a picture
    hdmi_picture_clear         clear a picure
    write Addr Value           set Register(Addr) to Vlue
    read  Addr                 read register
    audio_pass                 aduio passthrough setting

please input 'h' to get help or 'q' to quit!


  Each of the preceding commands can be run individually.
  For example, you can run the hdmi_video_timing 0 command to set video timing to 1080p_60.
  
  
  
1080P_60、1080P_50、1080P_30、1080P_25、1080P_24、1080i_60、1080i_50、720P_60、720P_50、576P_50、480P_60、576i_50、PAL、480i_60、NTSC。