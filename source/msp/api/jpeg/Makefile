#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif


#===============================================================================
# standard jpeg dir
#===============================================================================
TARGET := jpeg
#===============================================================================
# local variable
#===============================================================================
ifeq ($(CFG_LIB_JPEG_VERSION_6B),y)
MAKEFILE_NAME := Makefile-6b
LIB_VER := 6b
else ifeq ($(CFG_LIB_JPEG_VERSION_NEWEST),y)
MAKEFILE_NAME := Makefile
LIB_VER := soft
endif

HEADER_FILES := $(MSP_DIR)/api/$(TARGET)/inc/inc_${LIB_VER}/jpeglib.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/inc/inc_${LIB_VER}/jmorecfg.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/inc/inc_${LIB_VER}/jerror.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/inc/inc_${LIB_VER}/jconfig.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/inc/inc_hard/hi_jpeg_api.h


#===============================================================================
# rules  use -a to copy with the link lib
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)cd src && make -f $(MAKEFILE_NAME)

clean:
	$(AT)cd src && make -f $(MAKEFILE_NAME) clean

install:
	$(AT)test -d $(INCLUDE_DIR)    || mkdir -p $(INCLUDE_DIR)
	$(AT)test -d $(STATIC_LIB_DIR) || mkdir -p $(STATIC_LIB_DIR)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)test -d $(SHARED_LIB_DIR) || mkdir -p $(SHARED_LIB_DIR)
endif
	$(AT)cd src && make -f $(MAKEFILE_NAME) install
	$(AT)cp -f  $(HEADER_FILES)  $(INCLUDE_DIR)/

uninstall:
	$(AT)cd src && make -f $(MAKEFILE_NAME) uninstall
	$(AT)rm -rf $(foreach file, $(HEADER_FILES), $(INCLUDE_DIR)/$(notdir $(file)))
