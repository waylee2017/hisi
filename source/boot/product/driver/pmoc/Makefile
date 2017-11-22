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

BOOT_DIR  := $(SDK_DIR)/source/boot/fastboot
PRODUCT_DIR  := $(BOOT_DIR)/../product

ifndef CFLAGS

CC := $(CROSS_COMPILE)gcc

gccincdir := $(shell $(CC) -print-file-name=include)

CFLAGS := -g -Os -D__KERNEL__ -D__ARM__ -fno-strict-aliasing -fno-common -ffixed-r8 \
	  -nostdinc -isystem $(gccincdir) -I$(PRODUCT_DIR) \
	  -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux  \
	  -mno-thumb-interwork -march=armv7-a \
	  -Wall -Wstrict-prototypes -fno-stack-protector
endif

CFLAGS   += -I$(PRODUCT_DIR)/driver/include
CFLAGS   += -I$(BOOT_DIR)/arch/arm/include
CFLAGS   += -I$(BOOT_DIR)/include

LIBS     := libpmoc.a

###########################ca_common#####################
OBJS += drv_c51.o

ifdef CFG_HI_ADVCA_TYPE
CFLAGS += -DADVCA_SUPPORT  -DADVCA_TYPE_$(CFG_HI_ADVCA_TYPE)
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
