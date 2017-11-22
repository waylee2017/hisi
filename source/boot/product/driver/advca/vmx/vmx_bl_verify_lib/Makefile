#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../../../../../..
include $(SDK_DIR)/base.mak
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

ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
CFLAGS   += -I$(BOOT_DIR)/app
CFLAGS   += -I$(PRODUCT_DIR)/driver/include_inc
else
CFLAGS   += -I$(BOOT_DIR)/arch/arm/include
CFLAGS   += -I$(BOOT_DIR)/include
CFLAGS   += -I$(BOOT_DIR)/include/configs
endif

CFLAGS   += -I$(PRODUCT_DIR)/driver/include
#CFLAGS	 += -I$(PRODUCT_DIR)/driver/advca/common/cipher
#CFLAGS	 += -I$(PRODUCT_DIR)/driver/advca/common/ca
#CFLAGS	 += -I$(PRODUCT_DIR)/driver/advca/common/otp
CFLAGS	 += -I$(PRODUCT_DIR)/driver/advca/common/auth

LIBS     := libvmx_bl_verify.a

###########################nagra#####################
ADVCA_COMMON_DIR = $(PRODUCT_DIR)/driver/advca/common
VMX_LIB_DIR = $(ADVCA_COMMON_DIR)/../vmx/vmx_bl_verify_lib

OBJS += $(patsubst %.c,%.o,$(wildcard $(VMX_LIB_DIR)/*.c))

#===============================================================================
# rules
#===============================================================================

.PHONY: all clean install uninstall $(LIBS)

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)
	$(AT)rm -rf $(LIBS)

install: all

uninstall: clean

$(LIBS): $(OBJS)
	$(AT)$(AR) -rc $@ $^
