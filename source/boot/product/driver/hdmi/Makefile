#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================

ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
BOOT_DIR    := $(SDK_DIR)/source/boot/miniboot
else
BOOT_DIR    := $(SDK_DIR)/source/boot/fastboot
endif
PRODUCT_DIR := $(BOOT_DIR)/../product
COMMON_DIR  := $(PRODUCT_DIR)/driver/common

ifndef CFLAGS
include $(BOOT_DIR)/define.mak
export MKFLAGS

CC := $(CROSS_COMPILE)gcc

gccincdir := $(shell $(CC) -print-file-name=include)

CFLAGS := -g -Os -D__KERNEL__ -D__ARM__ -fno-strict-aliasing -fno-common -ffixed-r8 \
	  -nostdinc -isystem $(gccincdir) $(MKFLAGS) -I$(PRODUCT_DIR) \
	  -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux  \
	  -mno-thumb-interwork -march=armv7-a \
	  -Wall -Wstrict-prototypes -fno-stack-protector
endif

CFLAGS   += -I$(PRODUCT_DIR)/driver/include
CFLAGS   += -I$(SDK_DIR)/source/boot/fastboot/arch/arm/include
CFLAGS   += -I$(BOOT_DIR)/include
CFLAGS	 += -I$(SDK_DIR)/source/common/include
CFLAGS	 += -I$(PRODUCT_DIR)/driver/hdmi
CFLAGS	 += -I$(PRODUCT_DIR)/logo/include
CFLAGS	 += -I$(PRODUCT_DIR)/driver/higo/include
CFLAGS   += -I$(PRODUCT_DIR)/driver/hdmi/hisiv100/

LIBS    := libhdmi.a

OBJS    :=  hdmi.o              \
            txvidp.o            \
            infofrm.o           \
            hdmitx.o            \
            drv_hlviic.o        \
            vmtables.o          \
            txvptbl.o           \
            timer.o             \
            si_vmode.o          \
            de.o

ifeq ($(CFG_HI_BUILD_WITH_HDMI_EDID),y)
OBJS += si_edid.o
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
OBJS += hisiv100/hdmi_reg_dphy.o    \
        hisiv100/hdmi_hal_phy.o
else
OBJS += si_phy.o 
endif

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3796cv100 hi3798cv100 hi3796cv100_a hi3798cv100_a hi3798mv100 hi3798mv100_a),)
CFLAGS += -DHI_HDMI_4K_SUPPORT
OBJS += vsdb.o
endif

#ifeq ($(CFG_HI3716MV330_FPGA), y)
CFLAGS += -DSUPPORT_FPGA
#endif
CFLAGS += -DHDMI_BUILD_IN_BOOT
ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
CFLAGS += -DSSC_SUPPORT
endif

#===============================================================================
# rules
#===============================================================================

.PHONY: all clean install uninstall $(LIBS)

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS)

install: all

uninstall:

$(LIBS): $(OBJS)
	$(AT)$(AR) -rc $@ $^
