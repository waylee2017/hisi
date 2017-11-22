#!/bin/bash

if [ "$1" = "hi3110ev500" ];then
cp $(pwd)/vfmw_v4.0/Makefile $(pwd)/vfmw_v4.0/Makefile_org
cp $(pwd)/softlib/Makefile $(pwd)/softlib/Makefile_org

cp $(pwd)/vfmw_v4.0/Make_release.pak $(pwd)/vfmw_v4.0/Makefile 
cp $(pwd)/softlib/Make_release.pak $(pwd)/softlib/Makefile 

make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_FULL   CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_SIMPLE CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_BASIC  CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=SD_ONLY   CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2

cp $(pwd)/vfmw_v4.0/Makefile_org $(pwd)/vfmw_v4.0/Makefile
cp $(pwd)/softlib/Makefile_org $(pwd)/softlib/Makefile
#cp $(pwd)/vfmw_v4.0/Makefile_bak $(pwd)/vfmw_v4.0/Makefile
#cp $(pwd)/softlib/Makefile_release   $(pwd)/softlib/Makefile 
#cp $(pwd)/vfmw_release/Makefile_release $(pwd)/Makefile
fi

if [ "$1" = "hi3716mv310" ];then
cp $(pwd)/vfmw_v4.0/Makefile $(pwd)/vfmw_v4.0/Makefile_org
cp $(pwd)/softlib/Makefile $(pwd)/softlib/Makefile_org

cp $(pwd)/vfmw_v4.0/Make_release.pak $(pwd)/vfmw_v4.0/Makefile 
cp $(pwd)/softlib/Make_release.pak $(pwd)/softlib/Makefile 

make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_FULL   CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_SIMPLE CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_BASIC  CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=SD_ONLY   CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2

cp $(pwd)/vfmw_v4.0/Makefile_org $(pwd)/vfmw_v4.0/Makefile
cp $(pwd)/softlib/Makefile_org $(pwd)/softlib/Makefile
#cp $(pwd)/vfmw_v4.0/Makefile_bak $(pwd)/vfmw_v4.0/Makefile
#cp $(pwd)/softlib/Makefile_release   $(pwd)/softlib/Makefile 
#cp $(pwd)/vfmw_release/Makefile_release $(pwd)/Makefile
fi


if [ "$1" = "hi3716mv330" ];then
cp $(pwd)/vfmw_v4.0/Makefile $(pwd)/vfmw_v4.0/Makefile_org
cp $(pwd)/softlib/Makefile $(pwd)/softlib/Makefile_org

cp $(pwd)/vfmw_v4.0/Make_release.pak $(pwd)/vfmw_v4.0/Makefile
cp $(pwd)/softlib/Make_release.pak $(pwd)/softlib/Makefile

make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_FULL   CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_SIMPLE CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=HD_BASIC  CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2
make -f Make_release.pak VFMW_CFG_CHIP_TYPE=$1 VFMW_CFG_CAP_TYPE=SD_ONLY   CFG_HI_ADVCA_SUPPORT=$3 CFG_HI_TOOLCHAINS_NAME=$2

cp $(pwd)/vfmw_v4.0/Makefile_org $(pwd)/vfmw_v4.0/Makefile
cp $(pwd)/softlib/Makefile_org $(pwd)/softlib/Makefile
fi
