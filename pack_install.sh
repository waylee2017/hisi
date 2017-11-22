#!/bin/sh

if [ $# -ne 1 ]
then
    echo -e "usage: pack_install.sh sdk_dir"
    echo -e "        for example: ./pack_install.sh ../HiSTBLinuxV100R004C00SPC010"
    exit 1
fi

sdk_dir=$1

alias cp=cp
cp -rvf ./* $sdk_dir
if [ -f $sdk_dir/pub/image/partitions_spi_16_128_vmx.xml ];then
	rm $sdk_dir/pub/image/partitions_spi_16_128_vmx.xml
	rm $sdk_dir/pub/image/partitions_spi_8_128_vmx.xml
	rm $sdk_dir/pub/image/bootargs_spi_vmx_8_128.bin
	rm $sdk_dir/pub/image/partitions_nand_128_256_ca.xml
	rm $sdk_dir/pub/image/bootargs_nand_128_256_vmx.bin	
fi

if [ -f $sdk_dir/tools/windows/advca/CASignTool/CASignToolWin-v2.20.zip ];then
	rm $sdk_dir/tools/windows/advca/CASignTool/CASignToolWin-v2.20.zip
fi
if [ -f $sdk_dir/tools/windows/HiTool/HiTool-STB-4.0.11.zip ];then
	rm $sdk_dir/tools/windows/HiTool/HiTool-STB-4.0.11.zip
fi

if [ -f $sdk_dir/source/rootfs/busybox/busybox-1.24.1.tar.bz2 ];then
	rm $sdk_dir/source/rootfs/busybox/busybox-1.24.1.tar.bz2
	rm -rf $sdk_dir/source/rootfs/busybox/busybox-1.24.1.config
	rm $sdk_dir/source/rootfs/busybox/busybox-1.24.1.patch.tar.bz2
fi

if [ -f $sdk_dir/pub/image/fastboot-burn.bin ];then
	rm $sdk_dir/pub/image/fastboot-burn.bin
	rm $sdk_dir/pub/image/hi_kernel.bin
	rm $sdk_dir/pub/image/*.squashfs
	rm $sdk_dir/pub/image/rootfs_2k4b.yaffs
	rm $sdk_dir/pub/image/rootfs_96M.ubiimg
fi

if [ -f $sdk_dir/source/component/pm/c51/x5hd_8051.Opt ];then
	rm $sdk_dir/source/component/pm/c51/x5hd_8051.Opt
	rm $sdk_dir/source/component/pm/c51/x5hd_8051.Uv2
	rm $sdk_dir/source/component/pm/c51/x5hd_8051_Opt.Bak
	rm $sdk_dir/source/component/pm/c51/*.exe
	rm $sdk_dir/source/component/pm/c51/gen.bat
fi

if [ -f $sdk_dir/source/msp/drv/jpeg/src/jpeg_drv_api.c ];then
	rm $sdk_dir/source/msp/drv/jpeg/src/jpeg_drv_api.c
	rm $sdk_dir/source/msp/drv/jpeg/src/jpeg_drv_dec.c
	rm $sdk_dir/source/msp/drv/jpeg/src/jpeg_drv_mem.c
	rm $sdk_dir/source/msp/drv/jpeg/src/jpeg_drv_parse.c
	rm $sdk_dir/source/msp/drv/jpeg/src/jpeg_drv_setpara.c
	rm $sdk_dir/source/msp/drv/jpeg/src/jpeg_drv_table.c
fi
if [ -f $sdk_dir/tools/linux/utils/advca/Linux_CA_Boot_Sign.tgz ];then
	rm -rf $sdk_dir/tools/linux/utils/advca/CASignTool_Linux
	rm -rf $sdk_dir/tools/linux/utils/advca/sig_image
	rm -rf $sdk_dir/tools/linux/utils/advca/vmx/
	rm -rf $sdk_dir/tools/linux/utils/advca/Linux_CA_Boot_Sign.tgz
	rm -rf $sdk_dir/tools/linux/utils/advca/Makefile
fi
if [ -f $sdk_dir/tools/windows/HiWorkbench/Hiworkbench_v3_0_5.zip ];then
	rm -rf $sdk_dir/tools/windows/HiWorkbench/Hiworkbench_v3_0_5.zip
	rm -rf $sdk_dir/tools/windows/HiWorkbench/target
	rm -rf $sdk_dir/tools/windows/HiWorkbench/CDM\ v2.10.00\ WHQL\ Certified.zip
	rm -rf $sdk_dir/tools/windows/HiWorkbench/readme.txt
fi
