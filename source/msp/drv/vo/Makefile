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
EXTRA_CFLAGS += -I$(COMMON_UNF_INCLUDE)                 \
                -I$(COMMON_API_INCLUDE)                 \
                -I$(COMMON_DRV_INCLUDE)                 \
                -I$(MSP_UNF_INCLUDE)                    \
                -I$(MSP_API_INCLUDE)                    \
                -I$(MSP_DRV_INCLUDE)                    \
                -I$(MSP_DIR)/api/vo			\
		-I$(MSP_DIR)/drv/hifb/adp/include	\
		-I$(MSP_DIR)/api/tde/include		\
		-I$(MSP_DIR)/drv/hifb/include		\
	        -I$(MSP_DIR)/api/higo/include           \
		-I$(MSP_DIR)/drv/hifb/src                \
		-I$(SDK_DIR)/source/common/drv/mmz/


EXTRA_CFLAGS += -DHI_VO_SHARPNESS_SUPPORT -DHI_VO_STILLFRAME_SUPPORT
asflags-y    := -I$(COMMON_DRV_INCLUDE)

ifeq ($(CFG_HI_CHIP_TYPE), hi3110ev500)
EXTRA_CFLAGS += -DHI_VDP_ONLY_SD_SUPPORT
endif

# MV310 MV330 Don't support LCD/VGA
# HI_DISP_LCD_SUPPORT HI_DISP_VGA_SUPPORT

ifeq ($(CFG_HI_MINI_SYS_SURPORT),y)
# MINI_SYS unsupport features below
EXTRA_CFLAGS += -DMINI_SYS_SURPORT
else
# MV330 unsupport features below
ifneq ($(CFG_HI_CHIP_TYPE), hi3716mv330)
EXTRA_CFLAGS += -DHI_DISP_CGMS_SUPPORT -DHI_DISP_GAMMA_SUPPORT -DHI_DISP_ACC_SUPPORT -DHI_DISP_MACROVISION_SUPPORT -DHI_DISP_SCART_SUPPORT
EXTRA_CFLAGS += -DHI_VDP_PUTGETFRAME_SUPPORT -DHI_VDP_EXTERNALBUFFER_SUPPORT -DHI_VDP_VIRTUAL_WIN_SUPPORT
asflags-y    += -DHI_DISP_GAMMA_SUPPORT -DHI_DISP_ACC_SUPPORT
endif
# ACM DEI always support in !MINI_SYS
EXTRA_CFLAGS += -DHI_DISP_ACM_SUPPORT -DHI_VDP_DEI_SUPPORT
asflags-y    += -DHI_DISP_ACM_SUPPORT -DHI_VDP_DEI_SUPPORT
endif

ifeq ($(CFG_HI_DISP_CC_SUPPORT), y)
EXTRA_CFLAGS += -DHI_DISP_CC_SUPPORT
endif

ifeq ($(CFG_HI_DISP_TTX_SUPPORT), y)
EXTRA_CFLAGS += -DHI_DISP_TTX_SUPPORT
endif

ifeq ($(CFG_HI_DISP_CVBS_VIDEO_BUFF), y)
EXTRA_CFLAGS += -DHI_DISP_CVBS_VIDEO_BUFF
endif

ifeq ($(CFG_HI_DISP_YPBPR_VIDEO_BUFF), y)
EXTRA_CFLAGS += -DHI_DISP_YPBPR_VIDEO_BUFF
endif

ifeq ($(CFG_HI_VO_DUMPFRAME_SUPPORT), y)
EXTRA_CFLAGS += -DHI_DISP_DEBUG_SUPPORT
endif

#EXTRA_CFLAGS += -Os
STRIP=$(CFG_HI_TOOLCHAINS_NAME)-strip

MOD_NAME := hi_vou


obj-$(CFG_MSP_BUILDTYPE) += $(MOD_NAME).o



KBUILD_EXTRA_SYMBOLS += $(COMMON_DIR)/drv/Module.symvers
EXTRA_CFLAGS += $(CFG_HI_KMOD_CFLAGS)


DRIVER_PATH := $(MSP_DIR)/drv/vo/vou_v4_0
EXTRA_CFLAGS += -DHI_VO_SINGLE_VIDEO_SUPPORT

EXTRA_CFLAGS += -I$(DRIVER_PATH)/include

ifeq ($(findstring -DHI_ADVCA_FUNCTION_RELEASE, $(CFG_HI_CFLAGS)), -DHI_ADVCA_FUNCTION_RELEASE)
asflags-y += -DCONFIG_REMOVE_STRING
endif

ALG_FILES := $(wildcard $(DRIVER_PATH)/*.S)


FULL_PATH_DRV_SRCS := $(wildcard $(DRIVER_PATH)/*.c)
FULL_PATH_DRV_SRCS += $(ALG_FILES)
FULL_PATH_DRV_SRCS := $(filter-out %.mod.c, $(FULL_PATH_DRV_SRCS))


DRV_SRCS := $(shell echo $(FULL_PATH_DRV_SRCS) \
    	    | awk '{for(i=1;i<=NF;i++)print $$i}' \
	    | sed "s:\(.*\)/\<vo\>\(.*\):.\2:g")


DRV_SRCS_C := $(filter-out %.S, $(DRV_SRCS))
DRV_SRCS_A := $(filter-out %.c, $(DRV_SRCS))

ODRV_OBJS  := $(patsubst %.c,%.o,$(DRV_SRCS_C))
ODRV_OBJS  += $(patsubst %.S,%.o,$(DRV_SRCS_A))


#$(error $(ODRV_OBJS))
$(MOD_NAME)-y = $(ODRV_OBJS)
#===============================================================================
#   rules
#===============================================================================
.PHONY: all clean install uninstall

all:
	$(AT)make -C $(LINUX_DIR) ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- M=$(CURDIR) modules
ifneq ($(CFG_MSP_BUILDTYPE),y)
	@$(STRIP)  --strip-unneeded $(MSP_DIR)/drv/vo/hi_vou.ko
endif
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

