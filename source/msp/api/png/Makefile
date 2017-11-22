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
TARGET := png
#===============================================================================
# local variable
#===============================================================================
ifeq ($(CFG_LIB_PNG_VERSION_1_6_25),y)
LIB_VER  := 1.6.25
else
LIB_VER  := 1.4.16
endif

HEADER_FILES := $(MSP_DIR)/api/$(TARGET)/include/hi_png_config.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/libpng-${LIB_VER}/png.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/libpng-${LIB_VER}/pngconf.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/libpng-${LIB_VER}/hipng.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/bak/hipngconf.h

#===============================================================================
# rules  use -a to copy with the link lib
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C libpng-${LIB_VER}
	$(AT)cp -rf $(MSP_DIR)/api/$(TARGET)/libpng-${LIB_VER}/png.h     include
	$(AT)cp -rf $(MSP_DIR)/api/$(TARGET)/libpng-${LIB_VER}/pngconf.h include

clean:
	$(AT)make -C libpng-${LIB_VER} clean
	$(AT)rm -rf include/png.h
	$(AT)rm -rf include/pngconf.h

install:
	$(AT)test -d $(INCLUDE_DIR)    || mkdir -p $(INCLUDE_DIR)
	$(AT)test -d $(STATIC_LIB_DIR) || mkdir -p $(STATIC_LIB_DIR)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)test -d $(SHARED_LIB_DIR) || mkdir -p $(SHARED_LIB_DIR)
endif
	$(AT)make -C libpng-${LIB_VER} install
	$(AT)cp -f  $(HEADER_FILES)  $(INCLUDE_DIR)/

uninstall:
	$(AT)make -C libpng-${LIB_VER} uninstall
	$(AT)rm -rf $(foreach file, $(HEADER_FILES), $(INCLUDE_DIR)/$(notdir $(file)))
