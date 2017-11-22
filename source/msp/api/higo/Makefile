HIGOLIB=$(shell pwd)

#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

TARGET := higo

#===============================================================================
# local variable
#===============================================================================
HIGO_TOOLCHAIN_VER := arm_hisiv200
HIGO_STORE_LIB_VER :=

ifeq ($(CFG_LIB_JPEG_VERSION_6B),y)
HIGO_STORE_LIB_VER = libjpeg6b_libpng1.4.16
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv300-linux)
HIGO_TOOLCHAIN_VER := arm_hisiv300
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-histbv310-linux)
HIGO_TOOLCHAIN_VER := arm_hisiv310
endif

ifeq ($(CFG_HI_TOOLCHAINS_NAME),arm-hisiv200-linux)
HIGO_TOOLCHAIN_VER := arm_hisiv200
endif

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv310 hi3716mv320 hi3716mv330),)
HIGO_CHIP_VER := for_mv310_mv320_mv330
else
HIGO_CHIP_VER := for_3110ev500
endif

#===============================================================================
#real higo dir
#===============================================================================
NEED_HIGO_GHFP_DIR := $(HIGOLIB)/lib/${HIGO_STORE_LIB_VER}/$(HIGO_TOOLCHAIN_VER)_$(HIGO_CHIP_VER)

#===============================================================================
# local variable
#===============================================================================

HEADER_FILES := $(MSP_DIR)/api/$(TARGET)/include/hi_go_winc.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_text.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_surface.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_gdev.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_errno.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_encoder.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_decoder.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_cursor.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_comm.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_go_bliter.h
HEADER_FILES += $(MSP_DIR)/api/$(TARGET)/include/hi_effect.h

#$(AT)test -e $(HIGOLIB)/lib/cut-obj          || mkdir -p $(HIGOLIB)/lib/cut-obj
#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)echo "================================================================================================================="
	$(AT)echo $(NEED_HIGO_GHFP_DIR)
	$(AT)echo "=================================================================================================================="

clean:
	$(AT)echo "============================"
	$(AT)echo "higo clean finish"
	$(AT)echo "============================"

install: all
	$(AT)cp -rf  $(HEADER_FILES)     $(INCLUDE_DIR)/

ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)),)
	$(AT)cp -rf  $(NEED_HIGO_GHFP_DIR)/nca_lib/*.so            $(SHARED_LIB_DIR)/
	$(AT)cp -rf  $(NEED_HIGO_GHFP_DIR)/higo-adp                $(EXTERN_LIB_DIR)/
	$(AT)cp -rf  $(NEED_HIGO_GHFP_DIR)/nca_lib/*.a             $(STATIC_LIB_DIR)/
	$(AT)rm -rf  $(EXTERN_LIB_DIR)/higo-adp/encoder/libhigo_jpge.so
else
	$(AT)cp -rf  $(NEED_HIGO_GHFP_DIR)/ca_lib/*.a              $(STATIC_LIB_DIR)/
endif

uninstall:
	$(AT)rm -rf $(SHARED_LIB_DIR)/libhigo*.so
	$(AT)rm -rf $(SHARED_LIB_DIR)/libeffect.so
	$(AT)rm -rf $(EXTERN_LIB_DIR)/higo-adp
	$(AT)rm -rf $(STATIC_LIB_DIR)/libhigo*.a
	$(AT)rm -rf $(STATIC_LIB_DIR)/libeffect.a
	$(AT)rm -rf $(foreach file, $(HEADER_FILES), $(INCLUDE_DIR)/$(notdir $(file)))
