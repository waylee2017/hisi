#/bin/sh
##################################################################

board_CFG_dir="${hisi_sdk_path}/source/boot/sysreg"

if [ ! -f "${x86_tool_dir}/${tool_sign_name}" ]
then
	echo  " no find \"${x86_tool_dir}/${tool_sign_name}\",exit ..."
	echo
	return
fi

mkdir -p  ${sh_lib}/SignInput
cp ${x86_tool_dir}/${tool_sign_name} ${sh_lib}/ca_sign_tool
cp ${board_CFG_dir}/${board_CFG_file} ${sh_lib}/SignInput/cfg.bin

cp -f ${sh_lib}/keyfile/*.txt ${sh_lib}/SignInput/

for boot_file in ${boot_subarea_file}
do
	echo "${boot_file}"
	echo "cp -f ${nosign_file_dir}/${boot_file} ${sh_lib}/SignInput/fastboot-burn.bin"
	cp -f ${nosign_file_dir}/${boot_file} ${sh_lib}/SignInput/fastboot-burn.bin
	cp -f ${nosign_file_dir}/${boot_file} ${sh_lib}/SignInput/fastboot-burn.bin
	${sh_lib}/ca_sign_tool 0 Signboot_config.cfg
	cp -f ${sh_lib}/SignOutput/FinalBoot.bin  ${sign_file_dir_flash}/${boot_file}
	cp -f ${sh_lib}/SignOutput/FinalBoot.bin  ${sign_file_dir_upgrade}/${boot_file}
	rm -rf ${sh_lib}/SignInput/fastboot-burn.bin
	rm -rf ${sh_lib}/SignOutput
done

rm -rf ${sh_lib}/SignInput
rm ${sh_lib}/ca_sign_tool

