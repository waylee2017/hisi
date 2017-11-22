#=============DIR======================================================================
#SDK_DIR=${SAMPLE_DIR}/..
#PUB_DIR=${SDK_DIR}/pub
SDK_INC_DIR=${PUB_DIR}/include
SDK_STATIC_LIB_DIR=${PUB_DIR}/lib/static
SDK_SHARE_LIB_DIR=${PUB_DIR}/lib/share
LIBPATH = -L$(SDK_STATIC_LIB_DIR) -L$(SDK_SHARE_LIB_DIR)
#=============TOOL CHAINS===================================================================
AR=${CFG_HI_TOOLCHAINS_NAME}-ar
AS=${CFG_HI_TOOLCHAINS_NAME}-as
LD=${CFG_HI_TOOLCHAINS_NAME}-ld
CPP=${CFG_HI_TOOLCHAINS_NAME}-cpp
CC=${CFG_HI_TOOLCHAINS_NAME}-gcc
NM=${CFG_HI_TOOLCHAINS_NAME}-nm
STRIP=${CFG_HI_TOOLCHAINS_NAME}-strip
OBJCOPY=${CFG_HI_TOOLCHAINS_NAME}-objcopy
OBJDUMP=${CFG_HI_TOOLCHAINS_NAME}-objdump

#==============COMPILE TOOLS=================================================================
CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)-

#==============COMPILE OPTIONS================================================================
#3. export CFG_HI_SAMPLE_CFLAGS
CFG_HI_SAMPLE_CFLAGS :=  
CFG_HI_SAMPLE_CFLAGS+=-march=armv7-a -mcpu=cortex-a9 -mfloat-abi=softfp -mfpu=vfpv3-d16

CFG_HI_SAMPLE_CFLAGS+= -D_GNU_SOURCE -Wall -O2 -g $(CFG_CFLAGS) -ffunction-sections -fdata-sections -Wl,--gc-sections
CFG_HI_SAMPLE_CFLAGS+= -DCHIP_TYPE_${CFG_HI_CHIP_TYPE} -DCFG_HI_SDK_VERSION=${CFG_HI_SDK_VERSION} 
CFG_HI_SAMPLE_CFLAGS+= ${CFG_HI_BOARD_CONFIGS}

ifneq ($(CFG_HI_CHIP_TYPE),hi3110ev500)
CFG_HI_SAMPLE_CFLAGS+= -DHI_DAC_YPBPR_SUPPORT
endif
SYS_LIBS := -lpthread -lrt -lm -ldl

HI_LIBS := -lhi_common -lhigo -lhigoadp -ljpeg -lhi_resampler

HI_LIBS += -lhi_mpi

ifeq ($(CFG_HI_PNG_DECODER_SUPPORT),y)
HI_LIBS += -lpng
SYS_LIBS += -lz
endif
ifeq ($(CFG_HI_HAEFFECT_BASE_SUPPORT),y)
HI_LIBS += -lhi_aef_base
endif

ifeq ($(CFG_HI_HAEFFECT_SRS_SUPPORT),y)
HI_LIBS += -lhi_aef_srs
endif

ifeq ($(CFG_HI_ZLIB_SUPPORT),y)
HI_LIBS += -lz
endif

ifeq ($(CFG_HI_FREETYPE_FONT_SUPPORT),y)
HI_LIBS += -lfreetype
endif

ifeq ($(CFG_HI_PES_SUPPORT),y)
HI_LIBS += -lhi_pes
endif

ifeq ($(CFG_HI_CAPTION_SUBT_SUPPORT),y)
HI_LIBS += -lhi_subtitle
endif

ifeq ($(CFG_HI_CAPTION_SO_SUPPORT),y)
HI_LIBS += -lhi_so
endif

ifeq ($(CFG_HI_CAPTION_TTX_SUPPORT),y)
HI_LIBS += -lhi_ttx
endif

ifeq ($(CFG_HI_CAPTION_CC_SUPPORT),y)
HI_LIBS += -lhi_cc
endif

ifeq ($(CFG_HI_PLAYER_SUPPORT),y)
ifeq ($(CFG_HI_PLAYER_BASIC_SUPPORT),y)
HI_LIBS += -lsubdec -lplayer -lhiplayer_utils
else
HI_LIBS += -lhi_charsetMgr -lsubdec -lplayer -lhiplayer_utils -lplayer_real
endif
endif

COMMON_FILES := $(SAMPLE_DIR)/common/hi_adp_demux.o     \
                $(SAMPLE_DIR)/common/hi_adp_tuner.o     \
                $(SAMPLE_DIR)/common/hi_psi_si.o        \
                $(SAMPLE_DIR)/common/hi_adp_data.o      \
                $(SAMPLE_DIR)/common/hi_adp_mpi.o       \
                $(SAMPLE_DIR)/common/hi_adp_search.o    \
                $(SAMPLE_DIR)/common/hi_filter.o        \
                $(SAMPLE_DIR)/common/search.o

ifneq ($(CFG_HI3110EV500),y)
COMMON_FILES += $(SAMPLE_DIR)/common/hi_adp_hdmi.o
endif

ifeq ($(CFG_HI_FRONTEND_SUPPORT),y)
COMMON_FILES += $(SAMPLE_DIR)/common/hi_adp_tuner.o
endif

AT := @
