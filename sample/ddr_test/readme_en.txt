-----------------------------------------------------------------------------------------------------------------

Purpose: Let DDR and main IP modules on the chip reach high load; Simulate some scenes which may be occur problem.

-----------------------------------------------------------------------------------------------------------------

Scene£ºHD play + TDE
1. sample_dvb_training: TSs come from cables. 

Usage: sample_dvb_training freq [runtime] [file] [srate] [qamtype] 
        freq: frequency
        [runtime]: unit second            default: -1 means without limit
        [file]: used by TDE, default: 12.jpg
        [srate]:symbol rate , default: 6875
        [qamtype]:16|32|[64]|128|256|512, default: 64
Example:./sample_dvb_training 618
Example:./sample_dvb_training 618 10
Example:./sample_dvb_training 618 10 12.jpg 6875 64
Example:./sample_dvb_training 3840 10 12.jpg 27500


2. sample_ip_training: TSs come from the IP network.

Usage: sample_ip_training MultiAddr UdpPort [runtime] [file]
        MultAddr: multicast address  
        UdpPort: multicast port
        [runtime]: unit second            default: -1 means without limit
        [file]: used by TDE, default: 12.jpg
Example:./sample_ip_training 224.0.0.1 1234
Example:./sample_ip_training 224.0.0.1 1234 10
Example:./sample_ip_training 224.0.0.1 1234 10 12.jpg

-----------------------------------------------------------------------------------------------------------------

Notes : These samples don't support to run in advanced CA environment.

-----------------------------------------------------------------------------------------------------------------