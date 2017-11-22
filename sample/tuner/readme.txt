Introduction: Demonstrating the sample of the tuner lock frequency

Usage: sample_tuner_cab
      After you running the sample_tuner_cab, the operation guide is displayed. Functions of the sample_tuner_cab include frequency setting, symbol rate setting, qam mode setting, audio or video program broadcasting, and obtainment of mosaic region quantity.

Here are the instructions for some frequently used commands:
1. setmode mode: set mode type , j83b/j83ac change mode to j83b or j83ac.
2. setfreq freq: set the channel frequency, unit MHz for cable .
3. setsymb symb: set the symbol rate, unit baud(S/s).
4. setqam  qam: set qam type , 64 means 64qam etc.	
5. play VPID APID: VPID and APID are decimal numbers, stand for video pid and audio pid.

For example, if you want to watch CCTV1 , you can get the information from cable, for CCTV1, the mode type j83ac, the frequency is 3840MHz, the symbol rate is 6.875MBaud, the qam type is 64QAM, VPID is 512, APID is 650. So you can watch
CCTV1 after setting the following commands:
setmode j83ac
setfreq 384
setsymb 6875000
setqam 64
play 512 650




