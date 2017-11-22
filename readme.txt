1.如果是使用198服务器，就不需要安装海思编译器，直接执行setenv.sh脚本即可。如果是自己的虚拟机，需要安装海思编译器，安装海思编译器请参考“install_notes(chs).txt”文档。
2.在SDK根目录创建文件夹，文件夹名称是“middleware”，将中间件代码放到此文件夹下。
3.chmod 777 一下整个SDK。
4.初次下载SDK后，执行一下make build，编译内核，驱动等。编译一次以后，不在需要编译，除非修改cfg.mak，需要重新编译一下 make rebuild。
5.make 编译中间件，会在\pub\app 目录下生成可执行文件。nfs调试的时候，挂载到此文件夹。
6.烧boot，内核，文件系统，调试方式请参考“install_notes(chs).txt”文档。
