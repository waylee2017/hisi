#!/bin/sh
COMPILE_PATCH=$1
ADVAC="advca"
ADSP_SRC_DIR=$(pwd)
HIFI_DIR=$(pwd)/hifi

if [ "$2" = "y" ] ; then
HIFI_DIR_RELEASE=$ADSP_SRC_DIR/${COMPILE_PATCH}_advca
else
HIFI_DIR_RELEASE=$ADSP_SRC_DIR/${COMPILE_PATCH}
fi

if [ ! -d $HIFI_DIR_RELEASE/hifi ];then
mkdir -p $HIFI_DIR_RELEASE/hifi
fi

make CFG_HI_TOOLCHAINS_NAME=$1 -f Makefile.pack
find ./hifi -name "*.S" | xargs cp -rf --parent -t $HIFI_DIR_RELEASE/

