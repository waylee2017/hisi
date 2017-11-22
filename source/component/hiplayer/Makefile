#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
HIPLAYER_DIR := $(COMPONENT_DIR)/hiplayer/basic/

ifeq ($(CFG_HI_PLAYER_BASIC_SUPPORT),y)
HIPLAYER_DIR := $(COMPONENT_DIR)/hiplayer/basic
endif

ifeq ($(CFG_HI_PLAYER_NORMAL_SUPPORT),y)
HIPLAYER_DIR := $(COMPONENT_DIR)/hiplayer/normal
endif

ifeq ($(CFG_HI_PLAYER_FULL_SUPPORT),y)
ifndef CFG_HI_ADVCA_FUNCTION
HIPLAYER_DIR := $(COMPONENT_DIR)/hiplayer/full
else
HIPLAYER_DIR := $(COMPONENT_DIR)/hiplayer/ca_release/full
endif
endif

HIPLAYER_INC_DIR := $(HIPLAYER_DIR)/include
HIPLAYER_LIB_DIR := $(HIPLAYER_DIR)/lib/$(CFG_HI_TOOLCHAINS_NAME)

DST_INCLUDE_DIR    := $(INCLUDE_DIR)
DST_SHARE_LIB_DIR  := $(SHARED_LIB_DIR)
DST_STATIC_LIB_DIR := $(STATIC_LIB_DIR)
DST_EXTERN_LIB_DIR := $(EXTERN_LIB_DIR)

ifeq ($(CFG_HI_PLAYER_BASIC_SUPPORT),y)
HEADERS     := hi_svr_assa.h hi_svr_format.h hi_svr_metadata.h hi_svr_player.h hi_svr_player_errno.h
SHARE_LIBS  := libplayer.so libsubdec.so libhiplayer_utils.so
EXTERN_LIBS := libformat.so libffmpegformat.so libavformat.so.53 libavutil.so.51
STATIC_LIBS := libplayer.a libsubdec.a libhiplayer_utils.a
else
ifeq ($(CFG_HI_PLAYER_NORMAL_SUPPORT),y)
HEADERS     := hi_svr_charset_common.h hi_svr_charset.h hi_svr_charset_norm.h hi_svr_assa.h hi_svr_format.h hi_svr_metadata.h hi_svr_player.h hi_svr_player_errno.h
SHARE_LIBS  := libplayer.so libsubdec.so libhi_charsetMgr.so libplayer_real.so
EXTERN_LIBS := libformat.so libffmpegformat.so libformat_open.so libavformat.so.* libavutil.so.* libavcodec.so.* libhi_charset.so  libhiplayer_utils.so
STATIC_LIBS := libplayer.a libsubdec.a libhi_charsetMgr.a  libhiplayer_utils.a libplayer_real.a
else
ifndef CFG_HI_ADVCA_FUNCTION
HEADERS     := hi_svr_charset_common.h hi_svr_charset.h hi_svr_charset_norm.h hi_svr_assa.h hi_svr_format.h hi_svr_metadata.h hi_svr_player.h hi_svr_player_errno.h \
               hi_drm_engine.h hi_drm_client.h hi_drm_common.h hi_drm_rights.h hi_drm_constraints.h hi_drm_metadata.h hi_drm_info.h hi_drm_support_info.h
SHARE_LIBS  := libplayer.so libsubdec.so libhi_charsetMgr.so libHiDrmEngine.so libhiplayer_utils.so libplayer_real.so
EXTERN_LIBS := libformat.so libffmpegformat.so libavformat.so.* libavutil.so.* libavcodec.so.* libbluray.so.1 \
    libcrypto.so.1.0.0 libHA.AUDIO.FFMPEG_ADEC.decode.so libHA.AUDIO.FFMPEG_WMAPRO.decode.so libHV.VIDEO.FFMPEG_VDEC.decode.so \
    libssl.so.1.0.0 libswscale.so.* libhi_charset.so libHiDrmEngine.so libHiplayreadyEngine.so libformat_open.so
STATIC_LIBS := libplayer.a libsubdec.a libhi_charsetMgr.a libhiplayer_utils.a libplayer_real.a
else
HEADERS     := hi_svr_charset_common.h hi_svr_charset.h hi_svr_charset_norm.h hi_svr_assa.h hi_svr_format.h hi_svr_metadata.h hi_svr_player.h hi_svr_player_errno.h \
               hi_drm_engine.h hi_drm_client.h hi_drm_common.h hi_drm_rights.h hi_drm_constraints.h hi_drm_metadata.h hi_drm_info.h hi_drm_support_info.h
SHARE_LIBS  := libplayer.so libsubdec.so libhi_charsetMgr.so libHiDrmEngine.so libhiplayer_utils.so libplayer_real.so
EXTERN_LIBS := libformat.so libffmpegformat.so libavformat.so.* libavutil.so.* libavcodec.so.* libbluray.so.1 \
    libcrypto.so.1.0.0 libHA.AUDIO.FFMPEG_ADEC.decode.so libHA.AUDIO.FFMPEG_WMAPRO.decode.so libHV.VIDEO.FFMPEG_VDEC.decode.so \
    libssl.so.1.0.0 libswscale.so.* libhi_charset.so libHiDrmEngine.so libformat_open.so
STATIC_LIBS := libplayer.a libsubdec.a libhi_charsetMgr.a libhiplayer_utils.a libplayer_real.a
endif
endif
endif

SRC_HEADERS := $(addprefix $(HIPLAYER_INC_DIR)/,$(HEADERS))
DST_HEADERS := $(addprefix $(DST_INCLUDE_DIR)/,$(HEADERS))

SRC_SHARE_LIBS  := $(addprefix $(HIPLAYER_LIB_DIR)/,$(SHARE_LIBS))
DST_SHARE_LIBS  := $(addprefix $(DST_SHARE_LIB_DIR)/,$(SHARE_LIBS))

SRC_STATIC_LIBS := $(addprefix $(HIPLAYER_LIB_DIR)/,$(STATIC_LIBS))
DST_STATIC_LIBS := $(addprefix $(DST_STATIC_LIB_DIR)/,$(STATIC_LIBS))

SRC_EXTERN_LIBS  := $(addprefix $(HIPLAYER_LIB_DIR)/,$(EXTERN_LIBS))
DST_EXTERN_LIBS  := $(addprefix $(DST_EXTERN_LIB_DIR)/,$(EXTERN_LIBS))

ifdef DEPEND_LIBS
SRC_DEPEND_LIBS  := $(addprefix $(DST_SHARE_LIB_DIR)/,$(DEPEND_LIBS))
DST_DEPEND_LIBS  := $(addprefix $(DST_EXTERN_LIB_DIR)/,$(DEPEND_LIBS))
endif

#===============================================================================
# rules
#===============================================================================
.PHONY : all clean install uninstall

all:
clean:

install: 
	$(AT)cp -f $(SRC_HEADERS) $(DST_INCLUDE_DIR)/
	$(AT)cp -f $(SRC_SHARE_LIBS) $(DST_SHARE_LIB_DIR)/
	$(AT)cp -f $(SRC_STATIC_LIBS) $(DST_STATIC_LIB_DIR)/
	$(AT)cp -f $(SRC_EXTERN_LIBS) $(DST_EXTERN_LIB_DIR)/	
ifdef DEPEND_LIBS
	$(AT)cp -f $(SRC_DEPEND_LIBS) $(DST_EXTERN_LIB_DIR)/	
endif
			
uninstall:
	$(AT)rm -f $(DST_HEADERS)
	$(AT)rm -f $(DST_SHARE_LIBS)
	$(AT)rm -f $(DST_STATIC_LIBS)	
	$(AT)rm -f $(DST_EXTERN_LIBS)	
