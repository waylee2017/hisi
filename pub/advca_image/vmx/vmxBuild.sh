#! /bin/bash



##########################################################################
BOOT_BIN_NAME="miniboot.bin"
ADVCA_PROGRAMMER_NAME="advca_programmer.bin"

##########################################################################
#-------  configurable parameters --------
key_file=supposition
id_name=

nosign_file_dir="$(pwd)/../../image"
other_subarea_file="bootargs_hi3798mv100_emmc_vmx.bin bootargs_hi3796mv100_emmc_vmx.bin hi_kernel.bin rootfs.squashfs apploader.bin"
sign_file_dir_flash="${nosign_file_dir}/../advca_image/SignOutput/vmx_flash"
sign_file_dir_upgrade="${nosign_file_dir}/../advca_image/SignOutput/vmx_upgrade"
##########################################################################
##########################################################################

sh_dir="$(pwd)/"
sh_lib="${sh_dir}/hisi_lib"

##########################################################################
#------- fastboot configurable parameters --------
#boot_subarea_file="$(BOOT_BIN_NAME) $(ADVCA_PROGRAMMER_NAME)"
boot_subarea_file+=\ ${BOOT_BIN_NAME}
boot_subarea_file+=\ ${ADVCA_PROGRAMMER_NAME}

hisi_sdk_path="${sh_dir}/../../../"
x86_tool_dir="${hisi_sdk_path}/tools/linux/utils/advca/Linux_CA_Boot_Sign"
tool_sign_name="ca_sign_tool"
##########################################################################
##########################################################################

create_signature_sh="${sh_dir}/create_signature.sh"
boot_subarea_signature="${sh_lib}/boot_subarea_signature.sh"
vmx_sh_temp_dir="${sh_dir}/vmx_sh_temp_dir"
Align16="${sh_dir}/Align16.c"
sample_ca_vmx_merge="${hisi_sdk_path}/sample/advca/sample_ca_vmx_appsignsimulator.c"


init_user ()
{
	if [ ! -d ${sign_file_dir_flash} -o ! -d ${sign_file_dir_upgrade} ]
	then
		mkdir -p "${sign_file_dir_flash}"
		mkdir -p "${sign_file_dir_upgrade}"
	fi

	mkdir -p ${vmx_sh_temp_dir}
	
	if [ ! -f "${sh_dir}/Align16" ]
	then
		gcc ${Align16} -o ${sh_dir}/Align16
		strip  ${sh_dir}/Align16
	fi

	if [ ! -f "${sh_dir}/sample_ca_vmx_merge" ]
	then
		gcc  ${sample_ca_vmx_merge} \
			-o ${sh_dir}/sample_ca_vmx_merge
		strip  ${sh_dir}/sample_ca_vmx_merge
	fi
}

software_signature ()
{
	mode=${2}
	if [ ${mode} -eq 0 ]
	then
		sign_file_dir="${sign_file_dir_flash}"
	elif [ ${mode} -eq 1 ]
	then
		sign_file_dir="${sign_file_dir_upgrade}"
	fi

	file_to_sign=${nosign_file_dir}/${1}
	signature_file=${vmx_sh_temp_dir}/$(echo "${1}" |awk -F "." '{print $1}')_sign.$(echo "${1}" |awk -F "." '{print $2}')
	signed_file=${vmx_sh_temp_dir}/$(echo "${1}" |awk -F "." '{print $1}')_encrypt.$(echo "${1}" |awk -F "." '{print $2}')
	final_signature_file=${sign_file_dir}/$(echo "${1}" |awk -F "." '{print $1}')_signature.$(echo "${1}" |awk -F "." '{print $2}')
	final_signature_head=${sign_file_dir}/$(echo "${1}" |awk -F "." '{print $1}')_head.$(echo "${1}" |awk -F "." '{print $2}')
	length_of_file=`stat -c %s ${file_to_sign}`
	length_of_signing=${length_of_file}

	Align=`expr 16 - $[ ${length_of_file} % 16 ]`
	if [ ${Align} -ne 16 ]
	then
		echo "start image_16Align ... "
		echo "Align_length=$Align"
		cp -f ${file_to_sign} ${vmx_sh_temp_dir}/${1}
		file_to_sign=${vmx_sh_temp_dir}/${1}
		${sh_dir}/Align16 ${file_to_sign} $Align
	fi
	
	source ${create_signature_sh} ${length_of_file} ${length_of_signing} ${file_to_sign} ${signature_file} ${signed_file} ${key_file} ${mode} ${id_name}
	
	${sh_dir}/sample_ca_vmx_merge ${signed_file} ${signature_file} ${final_signature_head} ${final_signature_file}
	rm -rf  ${final_signature_head}
}


board_CFG_file=$1
#image_file=${hisi_sdk_path}/source/boot/sysreg/$2
image_file=$2

init_user

if [ -z $image_file ]
then
	for device in ${other_subarea_file}
	do
		if [ -f "${nosign_file_dir}/${device}" ]
		then
			## "mode" is  0:flash, 1:upgrade
			software_signature ${device} 0
			software_signature ${device} 1
		else
			echo "file: ${nosign_file_dir}/${device} not exist!"			
		fi
	done

	if [ -d "${sh_lib}" ]
	then
		pushd ${sh_lib}
		source ${boot_subarea_signature}
		popd
	fi
elif [ ${BOOT_BIN_NAME} = ${image_file} -o ${ADVCA_PROGRAMMER_NAME} = ${image_file} ]
then
	pushd ${sh_lib}
	if [ -d "${sh_lib}" ]
	then
		source ${boot_subarea_signature}
	else
		echo " no find \"${sh_lib}\" , exit !"
	fi
	popd
else
	software_signature ${image_file} 0
	software_signature ${image_file} 1
fi

rm -rf ${sh_dir}/Align16
rm -rf ${sh_dir}/sample_ca_vmx_merge
rm -rf ${vmx_sh_temp_dir}
