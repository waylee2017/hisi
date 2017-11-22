#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# if not has cflags
#===============================================================================
ifndef CFLAGS

include $(BOOT_DIR)/define.mak

export MKFLAGS

CC := $(CROSS_COMPILE)gcc

gccincdir := $(shell $(CC) -print-file-name=include)

CFLAGS := -g -Os -D__KERNEL__ -D__ARM__ -fno-strict-aliasing -fno-common -ffixed-r8 \
	  -nostdinc -isystem $(gccincdir) $(MKFLAGS) -I$(PRODUCT_DIR)               \
	  -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux               \
	  -mno-thumb-interwork -march=armv7-a                                       \
	  -Wall -Wstrict-prototypes -fno-stack-protector
endif


#===============================================================================
# local variables
#===============================================================================
ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
BOOT_DIR  := $(SDK_DIR)/source/boot/miniboot
else
BOOT_DIR  := $(SDK_DIR)/source/boot/fastboot
endif

PRODUCT_DIR  := $(BOOT_DIR)/../product
HIGO_DIR     := $(PRODUCT_DIR)/driver/higo



CFLAGS   += -DHI_BUILD_IN_BOOT -D__BOOT__

ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
CFLAGS   += -DHI_BUILD_IN_MINI_BOOT
endif

ifeq ($(CFG_HI_LOADER_BOOTLOADER),y)
CFLAGS   += -DHI_LOADER_BOOTLOADER
endif

#===============================================================================
#tde include
#===============================================================================
CFLAGS   += -I$(MSP_DIR)/api/tde/include    \
	    -I$(MSP_DIR)/drv/tde            \
	    -I$(HIGO_DIR)/tde

#===============================================================================
# jpeg include
#===============================================================================
CFLAGS   += -I$(HIGO_DIR)/imagedecode                 \
	    -I$(MSP_DIR)/drv/jpeg/include             \
            -I$(MSP_DIR)/drv/jpeg/grc_cmm_inc
#===============================================================================
# gfx self include
#===============================================================================
CFLAGS   += -I$(HIGO_DIR)/gfx

#===============================================================================
# hifb include
#===============================================================================
CFLAGS   +=  -I$(PRODUCT_DIR)/driver/disp/vou_v4_0/

#===============================================================================
# others include
#===============================================================================
CFLAGS   += -I$(MSP_DIR)/drv/include
CFLAGS   += -I$(BOOT_DIR)/include

#===============================================================================
#tde src
#===============================================================================
SRC     += $(wildcard $(HIGO_DIR)/msp/drv/tde/*.c)
SRC     += $(wildcard $(HIGO_DIR)/msp/api/tde/*.c)
#===============================================================================
#jpeg src
#===============================================================================
SRC     += $(wildcard $(HIGO_DIR)/imagedecode/*.c)
SRC     += $(wildcard $(HIGO_DIR)/msp/drv/jpeg/*.c)
#===============================================================================
#gfx self src
#===============================================================================
SRC     += $(wildcard $(HIGO_DIR)/gfx/*.c)
SRC     += $(wildcard $(HIGO_DIR)/tde/*.c)

#===============================================================================
# obj file
#===============================================================================
OBJS := $(SRC:%.c=%.o)

#===============================================================================
# lib file name
#===============================================================================
LIBS := $(HIGO_DIR)/libhigo.a


#===============================================================================
# rules
#===============================================================================

.PHONY: prepare all clean install uninstall $(LIBS)


all: $(LIBS)

prepare:
	$(AT)-test -e $(HIGO_DIR)/msp/drv/tde  || mkdir -p $(HIGO_DIR)/msp/drv/tde
	$(AT)-test -e $(HIGO_DIR)/msp/api/tde  || mkdir -p $(HIGO_DIR)/msp/api/tde
	$(AT)-test -e $(HIGO_DIR)/msp/drv/jpeg || mkdir -p $(HIGO_DIR)/msp/drv/jpeg
	$(AT)cp -rf   $(MSP_DIR)/drv/jpeg/src/*.c             $(HIGO_DIR)/msp/drv/jpeg
	$(AT)cp -rf   $(MSP_DIR)/drv/jpeg/src_dec/*.c         $(HIGO_DIR)/msp/drv/jpeg
	$(AT)cp -rf   $(MSP_DIR)/drv/tde/*.c                  $(HIGO_DIR)/msp/drv/tde
	$(AT)cp -rf   $(MSP_DIR)/api/tde/src/*.c              $(HIGO_DIR)/msp/api/tde
	$(AT)rm -rf   $(HIGO_DIR)/msp/drv/tde/*mod*
	$(AT)rm -rf   $(HIGO_DIR)/msp/drv/jpeg/*.mod*

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS)
	$(AT)rm -rf $(HIGO_DIR)/msp

install: all

uninstall:

$(LIBS): $(OBJS)
	$(AT)$(AR) -rc $@ $^
