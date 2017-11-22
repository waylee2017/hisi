#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(CURDIR)
    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../../..
    endif

#include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

#===============================================================================
# module name
#===============================================================================
TARGET := higo

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
		-I$(COMMON_DRV_INCLUDE)/hi3716mv310     \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
		-I$(MSP_DIR)/api/tde/include            \
                -I$(MSP_DIR)/drv/jpeg/grc_cmm_inc       \
		-I$(MSP_DIR)/drv/jpeg/include           \
		-I$(MSP_DIR)/drv/tde                    \
                -I$(MSP_DIR)/drv/$(TARGET)/include      \
                -I$(MSP_DIR)/drv/$(TARGET)/inc

EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)


EXTRA_CFLAGS += -DHIGO_BMP_SUPPORT
EXTRA_CFLAGS += -DHIGO_GIF_SUPPORT
EXTRA_CFLAGS += -DHIGO_JPEG_SUPPORT
#EXTRA_CFLAGS += -DHIGO_PNG_SUPPORT

#================================================================================
#select the complie file
#================================================================================
MOD_NAME := hi_$(TARGET)

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y := src/adp_gfx.o            \
		 src/adp_jpeg.o           \
		 src/adp_png.o

$(MOD_NAME)-y += src/higo_blit.o          \
	  	 src/hi_go_bliter.o       \
		 src/hi_go_comm.o         \
		 src/higo_decbmp.o        \
		 src/higo_decgif.o        \
		 src/hi_go_decoder.o      \
                 src/hi_go_bmp.o

$(MOD_NAME)-y += src/higo_io.o            \
		 src/higo_memory.o        \
		 src/higo_memsurface.o    \
		 src/hi_go_surface.o      \
		 src/higo_surface.o

$(MOD_NAME)-y += src/jpeg_buf.o           \
		 src/jpeg_decctrl.o       \
		 src/jpeg_drvapi.o        \
		 src/jpeg_handle.o        \
		 src/jpeg_hdec.o          \
		 src/jpeg_parse.o

$(MOD_NAME)-y += src/mmz_api.o
$(MOD_NAME)-y += src/tde_api.o

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order
	$(AT)rm -rf  hi_higo.mod.c
	$(AT)rm -rf  $(CURDIR)/src/*.o
clean:
	$(AT)make -C $(LINUX_DIR) M=$(CURDIR) clean
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf .tmp_versions
	$(AT)rm -rf  Module.symvers
	$(AT)rm -rf  modules.order

install: all
ifneq ($(CFG_MSP_BUILDTYPE),y)
	$(AT)cp -f $(CURDIR)/$(MOD_NAME).ko $(MODULE_DIR)/
endif

uninstall:
	$(AT)rm -rf $(MODULE_DIR)/$(MOD_NAME).ko

