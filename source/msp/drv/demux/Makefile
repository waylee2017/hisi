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

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)

EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/demux                  \
                -I$(MSP_DIR)/drv/demux                  \
                -I$(MSP_DIR)/drv/desc      \
                -I$(COMPONENT_DIR)/ha_codec/include

EXTRA_CFLAGS += -DCFG_HI_DEMUX_POOLBUF_SIZE=$(CFG_HI_DEMUX_POOLBUF_SIZE)

ifdef CFG_HI_ADVCA_FUNCTION
ifeq ($(CFG_HI_ADVCA_FUNCTION),DEBUG)
	EXTRA_CFLAGS += -DHI_DEMUX_PROC_SUPPORT
endif
else
ifeq ($(CFG_HI_DEMUX_SUPPORT_PROC),y)
	EXTRA_CFLAGS += -DHI_DEMUX_PROC_SUPPORT
endif
endif

ifeq ($(CFG_HI_DEMUX_SUPPORT_REC),y)
	EXTRA_CFLAGS += -DHI_DEMUX_REC_SUPPORT
endif

ifeq ($(CFG_HI_DEMUX_SUPPORT_SCD),y)
	EXTRA_CFLAGS += -DHI_DEMUX_SCD_SUPPORT
endif

ifeq ($(CFG_HI_DEMUX_SUPPORT_TSO),y)
	EXTRA_CFLAGS += -DHI_DEMUX_TSO_SUPPORT
endif

ifeq ($(CFG_HI_DEMUX_SUPPORT_DESC),y)
	EXTRA_CFLAGS += -DDMX_DESCRAMBLER_SUPPORT
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_demux

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y   :=  drv_demux_intf.o        \
                    drv_demux.o             \
                    drv_demux_func.o        \
                    hal_demux.o             \
                    drv_demux_osal.o        \
                    drv_demux_sw.o   

ifeq ($(CFG_HI_DEMUX_SUPPORT_REC),y)
$(MOD_NAME)-y   +=  drv_demux_scd.o         \
		    drv_demux_bitstream.o   \
		    drv_demux_index.o
endif

#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules

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

