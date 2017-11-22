#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#       variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
loader_dep :=
objects:= ha_codec petimer hifat resampler 

ifeq ($(CFG_HI_FREETYPE_FONT_SUPPORT),y)
objects += freetype
loader_dep += freetype
endif

ifeq ($(CFG_HI_PNG_DECODER_SUPPORT),y)
objects += zlib
endif
ifeq ($(CFG_HI_ALSA_SUPPORT),y)
objects += alsa
endif

ifeq ($(CFG_HI_BLUETOOTH_SUPPORT),y)
objects += bluetooth
endif


ifeq ($(CFG_HI_PES_SUPPORT),y)
objects += hipes
endif

#ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
#objects += advca
#endif

ifeq ($(CFG_HI_CURL_SUPPORT),y)
objects += curl
loader_dep += curl
endif

ifeq ($(CFG_HI_LOADER_SUPPORT),y)
objects += loader
endif

ifeq ($(CFG_HI_DIRECTFB_SUPPORT),y)
objects += directfb
endif

ifeq ($(CFG_HI_CAPTION_SUBT_SUPPORT),y)
objects += subtitle
endif
ifeq ($(CFG_HI_CAPTION_SO_SUPPORT),y)
objects += subtoutput
endif
ifeq ($(CFG_HI_CAPTION_TTX_SUPPORT),y)
objects += teletext
endif
ifeq ($(CFG_HI_CAPTION_CC_SUPPORT),y)
objects += cc
endif

ifeq ($(CFG_HI_BLUETOOTH_SUPPORT),y)
objects += bluetooth
endif

ifeq ($(CFG_HI_WIFI_SUPPORT),y)
objects += wifi
endif

ifeq ($(CFG_HI_3G_SUPPORT),y)
objects += 3g
endif

ifeq ($(CFG_HI_NTFS_SUPPORT),y)
objects += ntfs 
endif

ifeq ($(CFG_HI_PLAYER_SUPPORT),y)
objects += hiplayer 
endif

objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}

ifeq (${obj},)
depends:=$(objects)
else
depends:=${obj}	
endif	
depends_clean:=$(addsuffix _clean,${depends})
depends_install:=$(addsuffix _install,${depends})
depends_uninstall:=$(addsuffix _uninstall,${depends})
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall 
all:    ${depends}
ifeq ($(CFG_HI_LOADER_SUPPORT),y)
loader:${loader_dep}
endif
clean:  ${depends_clean}
	
install:${depends_install}

ifeq ($(CFG_HI_LOADER_SUPPORT),y)
loader_install:$(addsuffix _install,${loader_dep})
endif	
uninstall:${depends_uninstall}
	
#==================================================================
#                          modules
#==================================================================
.PHONY: ${objects} ${objects_clean} ${objects_install} ${objects_uninstall}

${objects}:
	make -C $@ all 
	
${objects_clean}:
	make -C $(patsubst %_clean,%,$@) clean

${objects_install}:
	make -C $(patsubst %_install,%,$@) install

${objects_uninstall}:
	make -C $(patsubst %_uninstall,%,$@) uninstall

