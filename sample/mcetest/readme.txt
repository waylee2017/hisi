1. To demonstrate the smooth switch from fastplay to dvbplay
Command: ./mce_to_dvbplay freq [srate] [qamtype] [vo_format]

2. To demonstrate the smooth switch from fastplay to iframe-display
Command: ./mce_to_iframe file protocol vo_format

3. To demonstrate the decode and display of certain picture
Command: ./sample_logo_pic vo_format

4. To substitue the content of fastplay partition stored in flashware, when animation-display scene is active.
Command: ./sample_mce_animation

5. To substitue the content of baseparam partition stored in flashware
Command: ./sample_mce_base

6. To enable or disable the display of logo or fastplay
Command: ./sample_mce_control

7. To substitue the content of fastplay partition stored in flashware, when dvbplay scene is active.
Command: ./sample_mce_dvb

8. To substitue the content of logo partition stored in flashware
Command: ./sample_mce_logo logofile

9. To substitue the content of fastplay partition stored in flashware, when tsplay scene is active.
Command: ./sample_ts tsfile


The resources list for running in advanced CA environment.

1. Capabilities list
   1) sys_rawio
      memmap() will open device "/dev/mem", need capability "sys_rawio".

2. Devices list
   /dev/mem
   /dev/hi_*
   /dev/mtd*

3. System resource
   1)NA

4. Commands list by system call
   1) NA

5. Dynamic libraries list ->ok
        libpthread.so.0 => /lib/libpthread.so.0 (0x40001000)
        librt.so.1 => /lib/librt.so.1 (0x40021000)
        libdl.so.2 => /lib/libdl.so.2 (0x40031000)
        libhiflash.so => /usr/lib/libhiflash.so (0x4003d000)
        libm.so.6 => /lib/libm.so.6 (0x40053000)
        libhi_common.so => /usr/lib/libhi_common.so (0x400ca000)
        libhi_mpi.so => /usr/lib/libhi_mpi.so (0x400da000)
        libhi_ecs.so => /usr/lib/libhi_ecs.so (0x40315000)
        libhigo.so => /usr/lib/libhigo.so (0x40339000)
        libhigoadp.so => /usr/lib/libhigoadp.so (0x40390000)
        libfreetype.so.6 => /usr/lib/libfreetype.so.6 (0x403ac000)
        libtde.so => /usr/lib/libtde.so (0x40465000)
        libhipng.so.14 => /usr/lib/libhipng.so.14 (0x40470000)
        libhipes.so => /usr/lib/libhipes.so (0x404a4000)
        libz.so.1 => /usr/lib/libz.so.1 (0x404b0000)
        libhijpeg.so => /usr/lib/libhijpeg.so (0x404d3000)
        libhijpegenc.so => /usr/lib/libhijpegenc.so (0x404ff000)
        libc.so.6 => /lib/libc.so.6 (0x40508000)
        /lib/ld-linux.so.3 (0x2a000000)

