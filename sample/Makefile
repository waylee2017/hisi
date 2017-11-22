#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif
include $(SAMPLE_DIR)/base.mak

#===============================================================================
# local variable
#===============================================================================
objects:= sysinfo tuner demux dvbplay esplay tsplay es_ts_switch psi log userproc \
	  iframe_dec mix mixengine resampler\
          capture fb higo tde jpeg\
          gpio wdg pmoc ir e2prom i2c \
          otp uti1201 petimer flash uart fs cipher 

ifeq ($(CFG_HI_DEMUX_SUPPORT_TSO), y)
objects += tso
endif

ifeq ($(CFG_HI_JPEG_SOFT_ENCODE_SUPPORT),y)
objects += jpge
endif

ifneq ($(CFG_HI3110EV500),y)
objects += hdmi_tsplay
objects += 3d_video
objects += dolby
objects += ipplay
objects += network
objects += pressure
endif

ifeq ($(CFG_HI_PVR_SUPPORT),y)
objects += pvr
endif

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
objects += keyled
endif

ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
objects += ci
endif

ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP),y)
objects += hdcpkey
endif

ifeq ($(CFG_HI_AIAO_SUPPORT),y)
objects += aiao
endif

ifeq ($(CFG_HI_ADEC_AUDSPECTRUM_SUPPORT),y)
objects += mp3
endif

ifeq ($(CFG_HI_LOADER_SUPPORT),y)
objects += loader
endif

ifeq ($(CFG_HI_WIFI_SUPPORT),y)
objects += wifi
endif

ifeq ($(CFG_HI_BLUETOOTH_SUPPORT),y)
objects += castbluetooth
endif

ifeq ($(CFG_HI_3G_SUPPORT),y)
objects += 3g
endif

ifeq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716c hi3716h), $(CFG_HI_CHIP_TYPE))
objects += 3d
endif

ifeq ($(CFG_HI_MCE_SUPPORT),y)
objects += mcetest
endif

ifeq ($(CFG_HI_PES_SUPPORT),y)
objects += pesplay
endif

ifeq ($(CFG_HI_SCI_SUPPORT),y)
objects += sci
endif

ifeq ($(CFG_HI_CAPTION_SUBT_SUPPORT),y)
objects += subtitle
endif
ifeq ($(CFG_HI_CAPTION_TTX_SUPPORT),y)
objects += teletext
endif
ifeq ($(CFG_HI_CAPTION_CC_SUPPORT),y)
objects += cc
endif

ifeq ($(CFG_HI_PLAYER_SUPPORT),y)
objects += localplay
endif

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
objects += advca
endif

ifeq ($(CFG_HI_AVPLAY_FCC_SUPPORT),y)
objects += fullband
endif

ifeq ($(CFG_HI3716MV330),y)
objects += fm
endif

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}

ifeq (${obj},)
depends:=${objects}
else
depends:=${obj}	
endif
depends_clean:=$(addsuffix _clean,${depends})
depends_install:=$(addsuffix _install,${depends})
depends_uninstall:=$(addsuffix _uninstall,${depends})

CFLAGS += $(CFG_HI_SAMPLE_CFLAGS)
CFLAGS += -I${SDK_INC_DIR} -I$(SAMPLE_DIR)/common

#===============================================================================
# rules
#===============================================================================
.PHONY: prepare unprepare all clean install uninstall ${objects} ${objects_clean} ${objects_install} ${objects_uninstall} test

all: ${depends}

clean:${depends_clean}

install:${depends_install}

uninstall:${depends_uninstall}
      	
prepare:

unprepare:

${objects}:${COMMON_FILES}
	make -C $@

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^
	
${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_install,%,$@} install

${objects_uninstall}:
	make -C ${patsubst %_uninstall,%,$@} uninstall
