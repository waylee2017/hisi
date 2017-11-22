DFB_DIR=$(shell pwd)
INSTALL_DIR=${DFB_DIR}/directfb

#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===================================================================
#DirectFB Version
#==================================================================
#linux-fusion not support 64bit kernel
#DirectFB and Example not support 64bit api
ifeq (${CFG_HI_DIRECTFB_1_6_1},y)
DFB_LIB_VER = 1.6.1
FUSION_VER  = 9.0.2
else
DFB_LIB_VER = 1.4.2
FUSION_VER  = 8.2.1
endif

ifeq (${CFG_HI_DIRECTFB_MULTI_SUPPORT},y)
protype=enable
else
protype=disable
endif

ifeq (${CFG_HI_DIRECTFB_DEBUG_SUPPORT},y)
comtype=enable
else
comtype=disable
endif

#====================================================================
#jpeg
#====================================================================
ifeq (${CFG_LIB_JPEG_VERSION_NEWEST},y)
JPEG_SOFT_INC_DIR=${MSP_DIR}/api/jpeg/inc/inc_soft
else
JPEG_SOFT_INC_DIR=${MSP_DIR}/api/jpeg/inc/inc_6b
endif

ifeq ($(CFG_LIB_PNG_VERSION_1_6_25),y)
PNG_VERSION  := 1.6.25
else
PNG_VERSION  := 1.4.16
endif

LIBJPEG=libjpeg
export LIBJPEG
#====================================================================
#png
#====================================================================
LIBPNG_CFLAGS=-I${PUB_DIR}/include
LIBPNG_LIBS=-lpng
export LIBPNG_CFLAGS
export LIBPNG_LIBS
#====================================================================
#freetype
#====================================================================
FREETYPE_CFLAGS=-I$(COMPONENT_DIR)/freetype/release/include/freetype2  -I$(COMPONENT_DIR)/freetype/release/include
FREETYPE_LIBS=-lfreetype
export FREETYPE_CFLAGS
export FREETYPE_LIBS
#=====================================================================================
#export env
#=====================================================================================
INCLUDES := \
                -I${INSTALL_DIR}/include                   \
                -I${PUB_DIR}/include                       \
                -I${JPEG_SOFT_INC_DIR}                     \
                -I${MSP_DIR}/api/jpeg/inc/inc_hard         \
                -I${MSP_DIR}/png/release/include           \
                -I${MSP_DIR}/api/png/include               \
                -I${MSP_DIR}/api/png/libpng-$(PNG_VERSION) \
                -I${COMPONENT_DIR}/zlib/release/include    \
		-I${MSP_DIR}/drv/directfb/include/include_${FUSION_VER}
export INCLUDES

LDFLAGS :=      -L${INSTALL_DIR}/lib   \
                -L${PUB_DIR}/lib/share
export LDFLAGS

CPPFLAGS := ${INCLUDES}
export CPPFLAGS

#===================================================================
#CFLAGS
#==================================================================
ifneq ($(CFG_HI_KEYLED_74HC164_SUPPORT),)
CFLAGS := -DCFG_HI_KEYLED_74HC164_SUPPORT
endif
ifneq ($(CFG_HI_KEYLED_CT1642_SUPPORT),)
CFLAGS := -DCFG_HI_KEYLED_CT1642_SUPPORT
endif
ifneq ($(CFG_HI_KEYLED_PT6961_SUPPORT),)
CFLAGS := -DCFG_HI_KEYLED_PT6961_SUPPORT
endif
ifneq ($(CFG_HI_KEYLED_PT6964_SUPPORT),)
CFLAGS := -DCFG_HI_KEYLED_PT6964_SUPPORT
endif

EXTRA_FLAGS := -march=armv7-a -mcpu=cortex-a9 -mfloat-abi=softfp -mfpu=vfpv3-d16

CFLAGS += ${EXTRA_FLAGS}

ifeq (${CFG_HI_DIRECTFB_CA_SUPPORT},y)
CFLAGS += -DHI_ADVCA_FUNCTION_RELEASE -DCONFIG_SUPPORT_CA_RELEASE
endif
CFLAGS += -DPNG_ACCELERATION -DLIBPNG14
export CFLAGS

CXXFLAGS := -fno-rtti ${CFLAGS}
export CXXFLAGS

#===================================================================
#compile
#==================================================================
.PHONY:all clean prepare install uninstall
all:prepare
ifeq (${CFG_HI_DIRECTFB_SUPPORT},y)
ifeq (${CFG_HI_DIRECTFB_1_6_1},y)
	cd ${DFB_DIR}/DirectFB-${DFB_LIB_VER};./configure --host=${CFG_HI_TOOLCHAINS_NAME} --prefix=${INSTALL_DIR} --build=x86 --${protype}-multi --enable-freetype --${comtype}-debug --with-gfxdrivers=tde --with-inputdrivers=keyboard,linuxinput,lirc,ps2mouse --without-setsockopt --without-tools --without-tests --disable-osx --disable-x11 --disable-x11vdpau --disable-mmx --disable-sse --disable-vnc --disable-mesa --disable-devmem  --disable-pnm --disable-imlib2 --disable-mpeg2 --disable-bmp --disable-jpeg2000 --disable-video4linux --disable-linotype --disable-svg
else
	cd ${DFB_DIR}/DirectFB-${DFB_LIB_VER};./configure --host=${CFG_HI_TOOLCHAINS_NAME} --prefix=${INSTALL_DIR} --disable-sdl --disable-osx --disable-x11 --disable-vnc --disable-sysfs --disable-devmem --without-tools --disable-mmx --disable-sse --enable-freetype --with-gfxdrivers=tde --with-inputdrivers=keyboard,linuxinput,lirc --${protype}-multi --${comtype}-debug
endif
	cd ${DFB_DIR}/DirectFB-${DFB_LIB_VER};make;make install
endif

clean:
ifeq (${CFG_HI_DIRECTFB_SUPPORT},y)
	$(AT)rm -rf ${DFB_DIR}/DirectFB-${DFB_LIB_VER}
	$(AT)rm -rf ${DFB_DIR}/directfb
endif
prepare:
ifeq (${CFG_HI_DIRECTFB_SUPPORT},y)
	$(AT)mkdir -p ${INSTALL_DIR}/
	$(AT)mkdir -p ${INSTALL_DIR}/lib
	$(AT)mkdir -p ${INSTALL_DIR}/bin
	$(AT)mkdir -p ${INSTALL_DIR}/include
	#$(AT)cp -rf $(SDK_DIR)/3rd/source/component/directfb/DirectFB-${DFB_LIB_VER}.tar.gz  ${DFB_DIR}/
	$(AT)tar -zxvf DirectFB-${DFB_LIB_VER}.tar.gz
	$(AT)cp -rf ${DFB_DIR}/patch-for-Directfb/DirectFB-${DFB_LIB_VER}.patch/*   ${DFB_DIR}/DirectFB-${DFB_LIB_VER}/
	#$(AT)rm -rf ${DFB_DIR}/DirectFB-${DFB_LIB_VER}.tar.gz
ifeq (${CFG_HI_DIRECTFB_CA_SUPPORT},y)
	$(AT)cp -rf ${DFB_DIR}/patch-for-Directfb/patch-ca/*  ${DFB_DIR}/DirectFB-${DFB_LIB_VER}/
endif
ifeq ($(CFG_LIB_PNG_VERSION_1_6_25),y)
	$(AT)cp -rf ${DFB_DIR}/patch-for-Directfb/patch-png1.6.25-for-directfb/* ${DFB_DIR}/DirectFB-${DFB_LIB_VER}/
endif
endif
install:all
uninstall:clean
