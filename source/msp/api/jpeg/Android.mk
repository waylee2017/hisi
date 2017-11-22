LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_ARM_MODE := arm

#====================================================================================================
#use linux sdk var
#====================================================================================================
include $(SDK_DIR)/Android.def

#CFG_HI_ENC_CFLAGS = CONFIG_GFX_JPGE_ENC_ENABLE

#====================================================================================================
#complie need file name, here not use LOCAL_PATH, use it will complie wrong
#====================================================================================================
SRC_6B       := src/src_6b
SRC_SIMD     := src/src_simd
SRC_HARD     := src/src_hard
SRC_HARD_ENC := src/src_hard_enc
#===============================================================================
#compile encode lib src
#===============================================================================
LIB_ENC_SOURCES = ${SRC_6B}/jcapimin.c  ${SRC_6B}/jcapistd.c  ${SRC_6B}/jctrans.c  \
                  ${SRC_6B}/jcparam.c   ${SRC_6B}/jcmainct.c  ${SRC_6B}/jdatadst.c \
                  ${SRC_6B}/jcinit.c    ${SRC_6B}/jcmaster.c  ${SRC_6B}/jcmarker.c \
                  ${SRC_6B}/jchuff.c    ${SRC_6B}/jcprepct.c  ${SRC_6B}/jccoefct.c \
                  ${SRC_6B}/jccolor.c   ${SRC_6B}/jcsample.c  ${SRC_6B}/jfdctint.c \
                  ${SRC_6B}/jcphuff.c   ${SRC_6B}/jcdctmgr.c  ${SRC_6B}/jfdctfst.c \
                  ${SRC_6B}/jfdctflt.c

ifneq ($(findstring $(CFG_HI_ENC_CFLAGS), CONFIG_GFX_JPGE_ENC_ENABLE),)
LIB_ENC_SOURCES += ${SRC_HARD_ENC}/jpge_henc_api.c
endif

#===============================================================================
#compile decode lib src
#===============================================================================
LIB_DEC_SOURCES = ${SRC_6B}/jdapimin.c  ${SRC_6B}/jdapistd.c  ${SRC_6B}/jdtrans.c  \
                  ${SRC_6B}/jdatasrc.c  ${SRC_6B}/jquant1.c   ${SRC_6B}/jdmaster.c \
                  ${SRC_6B}/jdinput.c   ${SRC_6B}/jdmarker.c  ${SRC_6B}/jdhuff.c   \
                  ${SRC_6B}/jdphuff.c   ${SRC_6B}/jdmainct.c  ${SRC_6B}/jdcoefct.c \
                  ${SRC_6B}/jdpostct.c  ${SRC_6B}/jddctmgr.c  ${SRC_6B}/jquant2.c  \
                  ${SRC_6B}/jidctfst.c  ${SRC_6B}/jidctflt.c  ${SRC_6B}/jidctint.c \
                  ${SRC_6B}/jidctred.c  ${SRC_6B}/jdmerge.c   ${SRC_6B}/jdsample.c \
                  ${SRC_6B}/jdcolor.c   ${SRC_6B}/jdcolor_userbuf.c

LIB_DEC_SOURCES += ${SRC_6B}/transupp.c

LIB_DEC_SOURCES += ${SRC_HARD}/hi_jpeg_hdec_api.c  ${SRC_HARD}/jpeg_hdec_adp.c       \
                   ${SRC_HARD}/jpeg_hdec_api.c     ${SRC_HARD}/jpeg_hdec_mem.c       \
                   ${SRC_HARD}/jpeg_hdec_rwreg.c   ${SRC_HARD}/jpeg_hdec_setpara.c   \
                   ${SRC_HARD}/jpeg_hdec_suspend.c ${SRC_HARD}/jpeg_hdec_table.c     \
                   ${SRC_HARD}/jpeg_hdec_csc.c     ${SRC_HARD}/jpeg_hdec_sentstream.c\
		   ${SRC_HARD}/hi_jpeg_hdec_test.c

#===============================================================================
#compile encode and decode lib src
#===============================================================================
LIB_COM_SOURCES = ${SRC_6B}/jcomapi.c  ${SRC_6B}/jerror.c  \
                  ${SRC_6B}/jutils.c   ${SRC_6B}/jmemmgr.c

#===============================================================================
#compile lib need mem src
#===============================================================================
ifeq (,$(TARGET_BUILD_APPS))
LIB_SYSDEPMEMSRC  := ${SRC_SIMD}/jmem-ashmem.c
else
LIB_SYSDEPMEMSRC  := ${SRC_SIMD}/jmemnobs_android.c
endif
#===============================================================================
#compile lib need android file
#===============================================================================
LIB_SIMD_SRC := ${SRC_SIMD}/armv6_idct.S
ifeq ($(TARGET_ARCH_VARIANT),x86-atom)
LIB_SIMD_SRC += ${SRC_SIMD}/jidctintelsse.c
endif
ifeq ($(strip $(TARGET_ARCH)),arm)
  ifeq ($(ARCH_ARM_HAVE_NEON),true)
      #use NEON accelerations
      LIB_SIMD_SRC += ${SRC_SIMD}/jsimd_arm_neon.S  \
	                  ${SRC_SIMD}/jsimd_neon.c
  endif
endif

ifeq ($(strip $(TARGET_ARCH)),mips)
  ifeq ($(strip $(ARCH_MIPS_HAS_DSP)),true)
      LIB_SIMD_SRC += ${SRC_SIMD}/mips_jidctfst.c \
	                  ${SRC_SIMD}/mips_idct_le.S
  endif
endif

#===============================================================================
#compile lib need all src
#===============================================================================
LOCAL_SRC_FILES := $(LIB_ENC_SOURCES) $(LIB_DEC_SOURCES) $(LIB_COM_SOURCES) $(LIB_SYSDEPMEMSRC) $(LIB_SIMD_SRC)

#===============================================================================
#print the information
#===============================================================================
#$(info ================================================================================================================================)
#$(info LOCAL_SRC_FILES = $(LOCAL_SRC_FILES))
#$(info ================================================================================================================================)


#====================================================================================================
#need local var
#====================================================================================================
CFG_HI_JPEG6B_STREAMBUFFER_SIZE=1024*1024

#================================================================================
#config the chip type
#================================================================================

LOCAL_CFLAGS := $(CFG_HI_CFLAGS)
LOCAL_CFLAGS += -DCFG_HI_JPEG6B_STREAMBUFFER_SIZE=$(CFG_HI_JPEG6B_STREAMBUFFER_SIZE)
LOCAL_CFLAGS += -DCONFIG_JPEG_ADD_GOOGLEFUNCTION
LOCAL_CFLAGS += -DCONFIG_HI_SDK_JPEG_VERSION
LOCAL_CFLAGS += -DCONFIG_GFX_ANDROID_SDK
LOCAL_CFLAGS += -DCONFIG_GFX_MEM_ION
LOCAL_CFLAGS += -DCONFIG_JPEG_LITTLE_TRANSFORM_BIG_ENDIAN
#LOCAL_CFLAGS += -DCONFIG_JPEG_DEBUG_INFO
LOCAL_CFLAGS += -DCONFIG_GFX_JPGE_SOFT_ENC_ENABLE


ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3796cv100 hi3798cv100),)
LOCAL_CFLAGS += -DCONFIG_GFX_256BYTE_ALIGN
endif

ifeq ($(CFG_HI_SMMU_SUPPORT),y)
LOCAL_CFLAGS += -DCONFIG_GFX_MMU_SUPPORT
endif

ifeq ($(CFG_HI_GFX_DEBUG_LOG_SUPPORT), y)
LOCAL_CFLAGS += -DCFG_HI_GFX_DEBUG_LOG_SUPPORT
endif

#=====================================================================================
#use signal,not use mutex
#=====================================================================================
#LOCAL_CFLAGS += -DCONFIG_JPEG_USE_KERNEL_SIGNAL

#=====================================================================================
#the jpge enc var
#=====================================================================================
ifneq ($(findstring $(CFG_HI_ENC_CFLAGS), CONFIG_GFX_JPGE_ENC_ENABLE),)
LOCAL_CFLAGS += -D$(CFG_HI_ENC_CFLAGS)
endif


ifeq (5.,$(shell echo -e "5.\n$(PLATFORM_VERSION)"|sort|head -n 1))
LOCAL_CFLAGS += -DGFX_ION_64
endif

# enable tile based decode
LOCAL_CFLAGS += -DANDROID_TILE_BASED_DECODE
LOCAL_CFLAGS += -DAVOID_TABLES 
LOCAL_CFLAGS += -O3 -fstrict-aliasing -fprefetch-loop-arrays
LOCAL_CFLAGS += -DANDROID_TILE_BASED_DECODE

ifeq (,$(TARGET_BUILD_APPS))
# building against master
# use ashmem as libjpeg decoder's backing store
LOCAL_CFLAGS += -DUSE_ANDROID_ASHMEM
else
# unbundled branch, built against NDK.
LOCAL_SDK_VERSION := 17
# the original android memory manager.
# use sdcard as libjpeg decoder's backing store
endif

ifeq ($(TARGET_ARCH_VARIANT),x86-atom)
LOCAL_CFLAGS += -DANDROID_INTELSSE2_IDCT
endif

ifeq ($(strip $(TARGET_ARCH)),arm)
   ifeq ($(ARCH_ARM_HAVE_NEON),true)
     #use NEON accelerations
     LOCAL_CFLAGS += -DNV_ARM_NEON
   else
	 # enable armv6 idct assembly
     LOCAL_CFLAGS += -DANDROID_ARMV6_IDCT
   endif
endif

# use mips assembler IDCT implementation if MIPS DSP-ASE is present
ifeq ($(strip $(TARGET_ARCH)),mips)
   ifeq ($(strip $(ARCH_MIPS_HAS_DSP)),true)
      LOCAL_CFLAGS += -DANDROID_MIPS_IDCT
   endif
endif

#$(info ================================================================================================================================)
#$(info LOCAL_CFLAGS = $(LOCAL_CFLAGS))
#$(info ================================================================================================================================)

#====================================================================================================
#complie need include dir
#====================================================================================================
LOCAL_C_INCLUDES := $(LOCAL_PATH)/${SRC_6B}/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/${SRC_SIMD}/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/${SRC_HARD}/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/${SRC_HARD_ENC}/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/grc_cmm_inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/inc/inc_6b_android/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/inc/inc_hard/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/inc/inc_test/
LOCAL_C_INCLUDES += $(COMMON_UNF_INCLUDE)/
LOCAL_C_INCLUDES += $(MSP_DIR)/api/tde/include/
LOCAL_C_INCLUDES += $(MSP_DIR)/api/jpge/include/
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/include/
LOCAL_C_INCLUDES += $(MSP_DIR)/drv/jpeg/include/

ifeq (5.,$(shell echo -e "5.\n$(PLATFORM_VERSION)"|sort|head -n 1))
LOCAL_C_INCLUDES += system/core/libion/kernel-headers
endif

#====================================================================================================
#print the information
#====================================================================================================
#$(info ================================================================================================================================)
#$(info LOCAL_C_INCLUDES = $(LOCAL_C_INCLUDES))
#$(info ================================================================================================================================)

#====================================================================================================
#Build static lib
#====================================================================================================
LOCAL_MODULE := libhigo_jpeg
include $(BUILD_STATIC_LIBRARY)

#====================================================================================================
#Build shared library
#====================================================================================================
include $(CLEAR_VARS)

LOCAL_MODULE:= libjpeg

LOCAL_MODULE_TAGS := optional

LOCAL_WHOLE_STATIC_LIBRARIES = libhigo_jpeg

ifeq (,$(TARGET_BUILD_APPS))
 LOCAL_SHARED_LIBRARIES := libcutils
else
  # unbundled branch, built against NDK.
  LOCAL_SDK_VERSION := 17
endif
LOCAL_SHARED_LIBRARIES += libutils

include $(BUILD_SHARED_LIBRARY)
