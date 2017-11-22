#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/base.mak
endif

HEADER_FILES := ./include/*.h
HEADER_FILES += $(SDK_DIR)/source/msp/include/hi_audio_codec.h

HA_CODEC_LIB_PATH := $(shell pwd)/lib/$(CFG_HI_TOOLCHAINS_NAME)

.PHONY:clean all install uninstall

all:
	@echo "make ha_codec done!"

install:
ifeq (y,$(CFG_HI_HACODEC_MP3DECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.MP3.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.MP3.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_AACDECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AAC.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AAC.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_AACENCODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AAC.encode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AAC.encode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_AC3PASSTHROUGH_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AC3PASSTHROUGH.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AC3PASSTHROUGH.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_AMRNBCODEC_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AMRNB.codec.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AMRNB.codec.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_AMRWBCODEC_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AMRWB.codec.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.AMRWB.codec.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_BLURAYLPCMDECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.BLURAYLPCM.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.BLURAYLPCM.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_COOKDECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.COOK.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.COOK.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_DRADECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.DRA.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.DRA.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_DTSPASSTHROUGH_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.DTSPASSTHROUGH.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.DTSPASSTHROUGH.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_G711CODEC_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.G711.codec.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.G711.codec.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_G722CODEC_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.G722.codec.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.G722.codec.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_MP2DECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.MP2.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.MP2.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_PCMDECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.PCM.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.PCM.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_TRUEHDPASSTHROUGH_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.TRUEHDPASSTHROUGH.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.TRUEHDPASSTHROUGH.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
ifeq (y,$(CFG_HI_HACODEC_WMADECODE_SUPPORT))
	$(AT)(if [ -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.WMA.decode.so ] ; then \
            cp -f $(HA_CODEC_LIB_PATH)/libHA.AUDIO.WMA.decode.so $(EXTERN_LIB_DIR)/; \
        fi)
endif
	$(AT)cp -f $(HEADER_FILES)                      $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(EXTERN_LIB_DIR)/libHA.AUDIO.*
	$(AT)rm -rf $(INCLUDE_DIR)/HA.AUDIO.*
	$(AT)rm -rf $(INCLUDE_DIR)/hi_audio_codec.h

clean:
	@echo "make ha_codec clean done!"

