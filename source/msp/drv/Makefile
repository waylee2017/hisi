#=======================================
#	export variable
#=======================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(CURDIR)

    SDK_DIR := $(KERNEL_DIR)/../../..
    else
    SDK_DIR := $(CURDIR)/../../..
    endif

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#=======================================
#	local variable
#=======================================
objects:= demux frontend gpio hifb i2c jpeg \
          tde vo wdg otp pdm cipher advca pm

ifneq ($(CFG_HI3110EV500), y)
objects += hdmi
endif

ifeq ($(CFG_HI_DEMUX_SUPPORT_DESC),y)
objects += desc
endif

ifneq ($(CFG_HI_LOADER_APPLOADER),y)
objects += avplay sync aiao adsp adec vfmw vdec mce
ifeq ($(CFG_HI_PVR_SUPPORT),y)
objects += pvr
endif
endif

ifeq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716mv330),)
ifeq ($(CFG_HI_PNG_DECODER_SUPPORT),y)
objects += png
endif
endif

ifeq ($(CFG_HI_MCE_SUPPORT),y)
objects += higo
endif

ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
objects += keyled
endif

ifeq ($(CFG_HI_SCI_SUPPORT),y)
objects += sci
endif

ifneq ($(CFG_HI_IR_TYPE_LIRC)_$(CFG_MSP_BUILDTYPE),y_y)
objects += ir
endif

ifeq ($(CFG_MSP_BUILDTYPE),y)
objects += base
obj-$(CFG_MSP_BUILDTYPE) += ${addsuffix /,${objects}}
objects:=
ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
objects+=vfmw
endif
ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
objects+=ir
endif
endif

### if mce mode, these modules do not build in kernel ###
ifeq ($(KERNELRELEASE),)

ifeq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716c hi3716h), $(CFG_HI_CHIP_TYPE))
objects += 3d
endif

ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
objects += ci
ifeq ($(CFG_HI_CI_DEV_CIMAXPLUS),y)
objects += cimax+
endif
endif

ifeq ($(CFG_HI_KERNEL_CFG), hi3716mv310_fpga_defconfig)
objects += spi_gpio
endif

endif  ## end KERNELRELEASE


objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}
objects_prepare:=${addsuffix _prepare,${objects}}


#=================================================================
#	  rules
#=================================================================

.PHONY: all clean install uninstall ${objects} ${objects_clean} ${objects_install} ${objects_uninstall} ${objects_prepare}

all:    ${objects}
	    	
clean:  ${objects_clean}
	$(AT)rm -rf  *.o
	$(AT)rm -rf  .*.o.cmd
	$(AT)rm -rf  modules.order modules.builtin
	
install:${objects_install}
	
uninstall:${objects_uninstall}

prepare:${objects_prepare}
	
${objects}:
	make -C $@

${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_install,%,$@} install

${objects_uninstall}:
	make -C ${patsubst %_uninstall,%,$@} uninstall
	
${objects_prepare}:
	@echo "prepare "$@
#	make -C ${patsubst %_prepare,%,$@} prepare
