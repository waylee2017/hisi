vmx 签名脚本使用说明：

请根据自己版本重新配置。

1，非boot 分区签名参数配置：
	（1）key_file 
		 ----  根据需求自己配置。
	（2）id_name
		 ----  id to create an individual signature ,默认没有。
	（3）nosign_file_dir
		 ---- 原镜像所在目录
	（4）other_subarea_file 
		 ---- 非boot分区需要签名镜像文件名。（可以根据版本添加或删除）
	（5）sign_file_dir_flash
		 ---- 签名后烧写镜像目录地址
	（6）sign_file_dir_upgrade
		 ---- 签名后升级镜像目录地址
		 
2，boot 分区签名参数配置：
	（1）boot_subarea_file
		 ---- boot 分区需要签名镜像文件名 。（可以根据版本添加或删除）

	（2）board_CFG_file
		 ---- 单板fastboot使用的 cfg 配置
		 ---- sample： board_CFG_file="hi3798mdmo1d_hi3798mv100_ddr3_2gbyte_8bitx4_4layers_emmc.cfg"
		 ---- keyfile目录下
			├── external_rsa_pri.txt
			├── external_rsa_pub.txt
			├── rsa_root_priv.txt
			└── rsa_root_pub.txt
		为签名的key文件		 
	（3）hisi_sdk_path
		 ---- hisi 发布版本sdk 目录地址。
		 ---- sample:  hisi_sdk_path="${sh_dir}/../../sdk"
	（4）x86_tool_dir
		 ---- vmx版本 x86 工具目录所在地址
		 ---- sample： x86_tool_dir="${hisi_sdk_path}/../../../../out/host/linux-x86/bin"
	（5）tool_sign_name
		 ---- boot 签名工具名子
		 ---- sample： tool_sign_name="ca_sign_tool"



脚本使用方法：
（1） 列入签名分区的所有镜像都签名  ：  ./vmxBuild.sh (不接任何参数） 
（2） 单个分区镜像签名  ：  ./vmxBuild.sh  image  （接一个需要签名的原镜像名）
			----  sample：  ./vmxBuild.sh  system.squashfs
