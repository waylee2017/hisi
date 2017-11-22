
             本地播放sample使用说明

1、播放命令：
可执行程序名称sample_localplay，播放一个文件，如xxx.mp3，执行命令如下：
  ./sample_localplay /filepath/xxx.mp3

可选择命令如下：
  -s 指定外挂字幕文件，操作如下，
  ./sample_localplay /filepath/xxx.mp3 -s /filepath/xxx1.lrc,/filepath/xxx2.lrc

2、播放过程中操作命令：
    -h: 输出帮助信息
    -P: 播放
    -p: 暂停
    -S: seek操作，seek时间为当前时间+5s
    -s: 停止
    -r: 恢复
    -b: 快退，当前播放速度*2
    -f: 快进，当前播放速度*2
    -i: 输出当前播放器信息
