#!/bin/bash

#${create_signature_sh} ${length_of_file} ${length_of_signing} ${file_to_sign} ${signature_file} ${signed_file} ${key_file} ${mode} ${id_name}
#echo length_of_file=${length_of_file}
#echo length_of_signing=${length_of_signing}
#echo file_to_sign=${file_to_sign}
#echo signature_file=${signature_file}
#echo signed_file=${signed_file}
#echo key_file=${key_file}
#echo mode=${mode}
#echo id_name=${id_name}

flash_vmx_clear_sig="${sh_lib}/flash_vmx_clear_sig.bin"
upgrade_vmx_clear_sig="${sh_lib}/upgrade_vmx_clear_sig.bin"

if [ ! -d "${sh_lib}" ]
then
	echo "no find \"${sh_lib}\" , exit !"
	return
fi

if [ ${mode} -eq 0 ]
then
	echo "flash"
	signature_file=${flash_vmx_clear_sig}
elif [ ${mode} -eq 1 ]
then 
	echo "upgrade"
	signature_file=${upgrade_vmx_clear_sig}
fi
signed_file=${file_to_sign}

