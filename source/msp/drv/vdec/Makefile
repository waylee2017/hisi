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
                -I$(MSP_DIR)/api/vdec                   \
                -I$(MSP_DIR)/drv/vdec                   \
                -I$(MSP_DIR)/drv/vfmw/vfmw_release 

ifdef CFG_HI_VDEC_MAX_INSTANCE 
EXTRA_CFLAGS += -DHI_VDEC_MAX_INSTANCE=$(CFG_HI_VDEC_MAX_INSTANCE)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_INSTANCE=16
endif

ifdef CFG_HI_VDEC_MAX_REF_FRAME
EXTRA_CFLAGS += -DHI_VDEC_MAX_REF_FRAME=$(CFG_HI_VDEC_MAX_REF_FRAME)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_REF_FRAME=7
endif

ifdef CFG_HI_VDEC_MAX_DISP_FRAME
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=$(CFG_HI_VDEC_MAX_DISP_FRAME)
else
EXTRA_CFLAGS += -DHI_VDEC_MAX_DISP_FRAME=8
endif

ifdef CFG_HI_VDEC_SCD_BUFFER_SIZE
EXTRA_CFLAGS += -DHI_VDEC_SCD_BUFFER_SIZE=$(CFG_HI_VDEC_SCD_BUFFER_SIZE)
else
EXTRA_CFLAGS += -DHI_VDEC_SCD_BUFFER_SIZE=0x200000
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3110ev500)
ifeq ($(CFG_HI_VFMW_DECODE_PREALLOC_MMZ),D1)
EXTRA_CFLAGS += -DHI_VDEC_DEC_FRAME_SIZE=677400
EXTRA_CFLAGS += -DHI_VDEC_DEC_PMV_SIZE=103700
else
EXTRA_CFLAGS += -DHI_VDEC_DEC_FRAME_SIZE=3368500
EXTRA_CFLAGS += -DHI_VDEC_DEC_PMV_SIZE=261200
endif
EXTRA_CFLAGS += -DHi3110EV500
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv310)
ifeq ($(CFG_HI_VFMW_DECODE_PREALLOC_MMZ),D1)
EXTRA_CFLAGS += -DHI_VDEC_DEC_FRAME_SIZE=677400
EXTRA_CFLAGS += -DHI_VDEC_DEC_PMV_SIZE=103700
else
EXTRA_CFLAGS += -DHI_VDEC_DEC_FRAME_SIZE=3368500
EXTRA_CFLAGS += -DHI_VDEC_DEC_PMV_SIZE=261200
endif
EXTRA_CFLAGS += -DHi3716MV310
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
ifeq ($(CFG_HI_VFMW_DECODE_PREALLOC_MMZ),D1)
EXTRA_CFLAGS += -DHI_VDEC_DEC_FRAME_SIZE=622080
EXTRA_CFLAGS += -DHI_VDEC_DEC_PMV_SIZE=103680
else
EXTRA_CFLAGS += -DHI_VDEC_DEC_FRAME_SIZE=3133440
EXTRA_CFLAGS += -DHI_VDEC_DEC_PMV_SIZE=261120
endif
EXTRA_CFLAGS += -DHi3716MV330
endif

ifeq (y,$(CFG_HI_VDEC_DEINTERLACE_SUPPORT))
EXTRA_CFLAGS += -DHI_VDEC_DEINTERLACE_SUPPORT=1
else
EXTRA_CFLAGS += -DHI_VDEC_DEINTERLACE_SUPPORT=0
endif

ifeq (y,$(CFG_HI_VDEC_SVDEC_SUPPORT))
EXTRA_CFLAGS += -DHI_VDEC_SVDEC_SUPPORT=1
else
EXTRA_CFLAGS += -DHI_VDEC_SVDEC_SUPPORT=0
endif

ifeq (HD_SIMPLE,$(CFG_HI_VFMW_DECODE_CAPABILITY))
EXTRA_CFLAGS += -DHI_VDEC_HD_SIMPLE=1
else
EXTRA_CFLAGS += -DHI_VDEC_HD_SIMPLE=0
endif

ifeq (y,$(CFG_HI_VDEC_USERDATA_CC_SUPPORT))
EXTRA_CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=1
else
EXTRA_CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=0
endif

KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers

MOD_NAME := hi_vdec

obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o

$(MOD_NAME)-y   := drv_vdec_buf_mng.o \
		   drv_vdec_intf.o \
		   drv_vdec.o \
		   drv_vdec_pts_recv.o \
		   drv_vdec_alg_frd.o \
		   drv_vdec_alg_api_frd.o 

ifeq (y,$(CFG_HI_VDEC_USERDATA_CC_SUPPORT))
$(MOD_NAME)-y   += drv_vdec_usrdata.o
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

