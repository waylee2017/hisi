# makefile for libpng.a and libpng14.so on Linux ELF with gcc
# Copyright (C) 1998, 1999, 2002, 2006, 2008, 2010 Greg Roelofs and
# Glenn Randers-Pehrson
# Copyright (C) 1996, 1997 Andreas Dilger
#
# This code is released under the libpng license.
# For conditions of distribution and use, see the disclaimer
# and license in png.h


PNG_CURDIR = $(shell pwd)
SRC_CURDIR :=

#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
TARGET := png

#这个开关会增加库的编译大小
#CFLAGS   =  -funroll-loops
CFLAGS   :=
#CFLAGS  +=  $(CFG_HI_CFLAGS)
CFLAGS += $(subst -Werror,,$(CFG_HI_CFLAGS))

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                 \
            -I$(COMMON_API_INCLUDE)                 \
            -I$(COMMON_DRV_INCLUDE)                 \
            -I$(MSP_UNF_INCLUDE)                    \
            -I$(MSP_API_INCLUDE)                    \
            -I$(MSP_DRV_INCLUDE)                    \
            -I$(MSP_DIR)/api/$(TARGET)/include      \
            -I$(MSP_DIR)/drv/$(TARGET)/include      \
            -I$(MSP_DIR)/api/jpeg/grc_cmm_inc	    \
	    -I$(COMMON_DIR)/api/mmz/

CFLAGS  +=  -I${COMPONENT_DIR}/zlib/include \
            -I$(MSP_DIR)/drv/include        \
            -I${COMPONENT_DIR}/freetype/include

CFLAGS  +=  -DHIGFX_COMMON

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv310 hi3716mv320 hi3110ev500),)
CFLAGS += -DHIPNG_ACCELERATE
CFLAGS += -DPNG_WRITE_SUPPORTED -DPNG_WRITE_FILLER_SUPPORTED -DPNG_SAVE_INT_32_SUPPORTED
endif

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3798hv100 hi3798cv200 hi3798mv200),)
CFLAGS += -DCONFIG_GFX_MEM_ION
else
CFLAGS += -DCONFIG_GFX_MEM_MMZ
endif

ifeq ($(CFG_HI_SMMU_SUPPORT),y)
CFLAGS += -DCONFIG_GFX_MMU_SUPPORT
endif

ifeq ($(CFG_HI_GFX_DEBUG_LOG_SUPPORT), y)
CFLAGS += -DCFG_HI_GFX_DEBUG_LOG_SUPPORT
endif

ifdef CFG_HI_STATIC_LIB_ONLY
#directfb needed
CFLAGS += -fPIC
endif

ZLIBLIB = ${COMPONENT_DIR}/zlib/release/lib
ZLIBINC = ${COMPONENT_DIR}/zlib/include

#=====================================================================================
#the chip env version
#=====================================================================================
LIBNAME :=
LIBPATH := -L$(COMMON_DIR)/api -L$(MSP_DIR)/api
DEPEND_LIB := $(LIBPATH) $(LIBNAME)

#===============================================================================
# whether debug and add googlefunction
#===============================================================================

#===============================================================================
# complie
#===============================================================================
CPPFLAGS = 
LDFLAGS  =
RM  = rm -f
AR  = ar rc
AR2 = ranlib


#===============================================================================
#compile lib src
#===============================================================================
SOURCES :=  png.c pngset.c pngget.c pngrutil.c pngtrans.c pngwutil.c    \
	    pngread.c pngrio.c pngwio.c pngwrite.c pngrtran.c           \
	    pngwtran.c pngmem.c pngerror.c pngpread.c                   \
            png_accelerate.c hi_png_api.c

#===============================================================================
#compile
#===============================================================================
LIBS_MAJO := libpng1.6.25
LIBS_NAME := libpng

include $(PNG_CURDIR)/../png.mak
