sample_pvr_play:
Purpose: sample_pvr_play to play the streams recorded by running the pvr_rec sample.
    The operations such as play, pause, fast forward, rewind, slow forward, see, step forward, and reset are supported.

Command: sample_pvr_play file_name [vo_format]
      file_name: name of the file to be played, including the storage path
      The value vo_format is 1080P_60, 1080P_50, 1080i_60, 1080i_50, 720P_60, or 720P_50. The default value is 1080i_60.

Command: sample_pvr_multifile_play file_name [vo_format]
      file_name: name of the file to be played, including the storage path
      The value vo_format is 1080P_60, 1080P_50, 1080i_60, 1080i_50, 720P_60, or 720P_50. The default value is 1080i_60.

      When streams are being played, the command line interface is displayed. The following operations are supported:
         n: normal play
         p: pause
         f: fast forward(2x/4x/8x/16x/32x)
         s: slow forward(2x/4x/8x/16x/32x)
         r: fast reward(2x/4x/8x/16x/32x)
         t: step forward one frame
         k: seek to start
         e: seek to end
         l: seek forward 5 second
         j: seek reward 5 second
         x: destroy play channel and create again
         h: help
         q: quit
Note: The running of the commands depends on the font libraries in /sample/higo/res. To ensure that the font libraries are found, run the commands in the sample directory.


sample_pvr_multifile_play说明：

所有录制码流文件按照某一规则命名，以便自动检索及获取码流的整体属性（时长、帧数等）
并根据文件名在码流文件之间切换播放或回退。


1.多个码流文件整体属性的获取。
	参见sample 中 接口 PVR_PlayGetTSFileInfo(const HI_CHAR *pFileName, 
PVR_PLAY_FILE_INFO_S *pstFileInfo)。
	需要码流文件名符合某一规则，可以根据具体情况制定。例如sample中假设码流
文件名的前几位相同，后几位为连续递增数字，码流文件名依次如下：
	rec_xxx_001.ts,
	rec_xxx_002.ts,
	rec_xxx_003.ts。
	调用HI_UNF_PVR_GetFileAttrByFileName接口获取单个码流文件属性，并统
计码流整体属性（参见结构PVR_PLAY_FILE_INFO_S）。



2.seek实现。
	参见sample 中 接口 PVR_PlaySeek(HI_UNF_PVR_PLAY_POSITION_S *pstPosition,
PVR_PLAY_FILE_INFO_S *pstFileInfo)。
	根据输入的seek条件和统计的码流文件的整体属性，检索出具体要seek到的文件及
相应位置。注意seek位置越出当前码流文件边界的处理。
	sample 中给出按时间检索的参考，按帧数和字节数检索的实现与之类似。



3.回调事件
	参见sample 中 接口 HI_VOID PVR_EvtCallBack(HI_U32 u32ChnID, 
HI_UNF_PVR_EVENT_E EventType, HI_S32 s32EventValue, HI_VOID *args)
	主要处理播放到文件尾和回退到文件头事件。播放到文件尾有两种情况，
即播放到的码流文件为最后一个和非最后一个，前者表示播放结束，后者则需要切换到下
一个码流文件并恢复播放状态。
	与播放相对，回退到文件头也是两种情况，即回退到的码流文件为第一个和非第
一个，前者表示回退到码流起始，后者则需要切换到前一个码流文件并恢复播放状态，以
及seek到前一个文件尾的位置。



4.播放状态的获取
	参见sample 中 接口 PVR_PlayGetStatus(HI_U32 u32ChnID, 
HI_UNF_PVR_PLAY_STATUS_S *pstStatus)。
	由于HI_UNF_PVR_PlayGetStatus接口获取的是当前正在播放的码流文件的状态，
需要根据之前统计的码流文件整体属性，计算出当前码流文件播放的状态相对于整体的
播放状态。

//////////////////////////////////////////////////////////////////////////////////
sample_pvr_rec:
Purpose: sample_pvr_rec to record streams by using the personal video recorder (PVR).
    The streams can be played during recording. Only one-channel program can be recorded, and the program list is searched automatically before recording.

Command: sample_pvr_rec file_path freq [SymbolRate] [qamtype or polarization] [vo_format]
      file_path: path of the recorded file. You do not need to enter the file name, because the file name is automatically generated based on the audio/video packet IDs (PIDs).
      Fields [SymbolRate], [qamtype or polarization] and [vo_format] are optional.
      SymbolRate:
          For cable, default 6875
          For satellite, default 27500
      qamtype or polarization:
          For cable, used as qamtype, value can be 16|32|[64]|128|256|512 defaut[64]
          For satellite, used as polarization, value can be [0] horizontal | 1 vertical defaut[0]
      vo_format:
          The value of vo_format can be 1080P_60, 1080P_50, 1080i_60, 1080i_50, 720P_60, or 720P_50. The default value is 
          1080i_50.
      
    After the preceding command is executed, programs are searched and the program list is displayed. Recording starts only after a played program is selected.   

//////////////////////////////////////////////////////////////////////////////////
sample_pvr_rec_allts:
Purpose: sample_pvr_rec_allts To record all ts packets
    It is only used to record. Check whether the speed of storage devices meets requirements.

Usage: sample_pvr_rec_allts file_path freq [SymbolRate] [qamtype or polarization] 
      File_path: Path of the recorded file. You do not need to enter the file name, because it is generated automatically based on the audio/video packet IDs (PIDs).
      Fields [SymbolRate], [qamtype or polarization] are optional.
      SymbolRate:
          For cable, default 6875
          For satellite, default 27500
      qamtype or polarization:
          For cable, used as qamtype, value can be 16|32|[64]|128|256|512 defaut[64]
          For satellite, used as polarization, value can be [0] horizontal | 1 vertical defaut[0]

//////////////////////////////////////////////////////////////////////////////////
sample_pvr:
./sample_pvr -?  Display help information.
./sample_pvr -f 610 Execute the play mode of the DVB.
./sample_pvr -f 610 -p 1 Execute the play mode of the DVB and enable data to enter over port1 (ports can be numbered only from 0 to 2 in DVB mode).

./sample_pvr -p 3 -i 224.0.0.20 Execute the IP multicast test mode and set the IP port to 1234.

./sample_pvr -p 3 -m xxxx.ts Execute the file play test mode. xxx.ts is the file name. A path is required.

After accessing the PVR console, enter ? to display help information.
1.
play xx: Play the XXth program. XX indicates the number in the program list. The program is played by demux0 by default.
Stop: Stop playing programs.

2.
Recording programs: rec  [demuxId] [program] [file] {scrambled} {cipher} 
rec 1 0 recfilename: Record the 0th program by demux1 to recfilename.
Stop recording  [demuxid]
stoprec 1: Stop demux1 recording.
Note:
Content in [] are mandatory.
Content in {} are optional.

3.
Replay recorded program: replay  [file] {scrambled} {cipher} {apid} {vpid}
replay recfilename: replay the program in recfilename.
restop: Stop recording.
Notes:
For the programs recorded by sample, no pid is required because it has been saved to user data. For the programs recorded by other methods, the pid is required.

4.
start time shift: startthift [prognum] [file] {scrambled} {cipher}
startthift 0 recfilename: Record the time shift of the 0th program to recfilename.
stop: Stop time shift.


Note that the following functions have not been commissioned on the DEMO board.


5.
Fast forward and rewind: ff speed (-32 X, -16 X, -8 X, -4 X, -2 X, 0 X, 2 X, 4 X, 8 X, 16 X, 32 X are optional)

6.
Fast forward by four times: f4

7.
Resume the normal play speed: resum

8.
Suspend playing: pause

9.
Rewind by frame: stepb

10.
Play on time: seek enPositionType s64Offset s32Whence
enPositionType: indicates the location type. 1 indicates the time and 2 indicates the number of frames.
s64Offset: indicates the place where the shift starts. 0 indicates that offset is calculated from the start of the record file.1 indicates that offset is calculated from the current place in the record file. 2 indicates that offset is calculated from the end of the record file.
s32Whence: offset

//////////////////////////////////////////////////////////////////////////////////
sample_pvr_timeshift:
Purpose: time shift sample of the PVR.
    Switch between live broadcast and replay is supported. During replay, pausing, fast forwarding, rewinding, slow forwarding, seek, step forwarding, and resetting are supported.

Usage: sample_pvr_timeshift file_path freq [SymbolRate] [qamtype or polarization] [vo_format]
      file_path: Path of the replayed file. The file name is not required because it is generated automatically based on the audio and video pid.
      Fields [SymbolRate], [qamtype or polarization] and [vo_format] are optional.
      SymbolRate:
          For cable, default 6875
          For satellite, default 27500
      qamtype or polarization:
          For cable, used as qamtype, value can be 16|32|[64]|128|256|512 defaut[64]
          For satellite, used as polarization, value can be [0] horizontal | 1 vertical defaut[0]
      vo_format:
          The value of vo_format can be 1080P_60, 1080P_50, 1080i_60, 1080i_50, 720P_60, or 720P_50. The default value is 
          1080i_50.

      After time shift is started, the command line interface is displayed, on which the following operations are allowed.
         l: live play
         n: normal play
         p: pause/play
         f: fast forward (4x)
         s: slow forward (4x)
         r: fast rewind (4x)
         h: help
         q: quit

Note:
     To pause a live program, press p. To replay a program from the pausing place, also press p.
     To enter the live broadcast mode from the replay mode, press 1.
     To enter the normal play mode from the pause mode, press p or n. To enter the normal play mode from the trick play mode, press n. Do not press p, which only pauses the ongoing program.
    




