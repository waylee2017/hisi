#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../../../..
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variables
#===============================================================================

BOOT_DIR  := $(SDK_DIR)/source/boot/fastboot
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

#===============================================================================
# rules
#===============================================================================

.PHONY: all clean install uninstall $(LIBS)

all: 
ifdef CFG_HI_ADVCA_TYPE
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
	$(AT)make -f Makefile_Nagra all
else
	$(AT)make -f Makefile_Normal all
endif
endif

clean:
ifdef CFG_HI_ADVCA_TYPE
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
	$(AT)make -f Makefile_Nagra clean
else
	$(AT)make -f Makefile_Normal clean
endif
endif

install:
ifdef CFG_HI_ADVCA_TYPE
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
	$(AT)make -f Makefile_Nagra install
else
	$(AT)make -f Makefile_Normal install
endif
endif

uninstall:
ifdef CFG_HI_ADVCA_TYPE
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
	$(AT)make -f Makefile_Nagra uninstall
else
	$(AT)make -f Makefile_Normal uninstall
endif
endif
