#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../..
BOOT_DIR:= $(SDK_DIR)/source/boot
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

-include $(BOOT_DIR)/fastboot/define.mak
export MKFLAGS

CC        := $(CROSS_COMPILE)gcc
AR        := $(CROSS_COMPILE)ar

gccincdir := $(shell $(CC) -print-file-name=include)

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#objects:= loader logo
objects:= adp logo driver

ifeq ($(CFG_HI_LOADER_SUPPORT),y)
objects += loader
endif

objects_clean:=$(addsuffix _clean,$(objects))
objects_install:=$(addsuffix _install,$(objects))
objects_uninstall:=$(addsuffix _uninstall,$(objects))

PRODUCT_DIR := $(SDK_DIR)/source/boot/product

ifeq ($(CFG_HI_MINIBOOT_SUPPORT),y)
CFLAGS  :=  -g -Os -fno-strict-aliasing -fno-common -ffixed-r8 \
            -nostdinc -isystem $(MKFLAGS) \
            -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux  \
            -mno-thumb-interwork -march=armv7-a \
            -Wall -Wstrict-prototypes -fno-stack-protector

CFLAGS  +=  -DHI_MINIBOOT_SUPPORT=1

CFLAGS  +=  -I$(BOOT_DIR)/miniboot/include \
            -I$(BOOT_DIR)/miniboot/arm/$(BOOTCONFIG)/include \
            -I$(BOOT_DIR)/miniboot/arm/include \
	    	-I$(BOOT_DIR)/miniboot/app/
else
CFLAGS  :=  -g -Os  -D__KERNEL__ -D__ARM__ -fno-strict-aliasing -fno-common -ffixed-r8 \
            -nostdinc -isystem $(gccincdir) $(MKFLAGS) \
            -fno-builtin -ffreestanding  -pipe -marm  -mabi=aapcs-linux  \
            -mno-thumb-interwork -march=armv7-a \
            -Wall -Wstrict-prototypes -fno-stack-protector

CFLAGS  +=  -I$(BOOT_DIR)/fastboot/include
endif

CFLAGS  += $(filter-out -fstack-protector --param ssp-buffer-size=4 ,$(CFG_HI_CFLAGS)) 

CFLAGS += -I$(PRODUCT_DIR)/driver/include          \
	  -I$(PRODUCT_DIR)/driver/include_inc      \
	  -I$(PRODUCT_DIR)/loader/schedule         \
	  -I$(PRODUCT_DIR)/logo/include	           \
	  -I$(PRODUCT_DIR)/driver/higo/gfx         \
          -I$(PRODUCT_DIR)/driver/higo/imagedecode \
	  -I$(PRODUCT_DIR)/adp/include	           \
	  -I$(PRODUCT_DIR)/pdm/include             \
          -I$(PRODUCT_DIR)/../../common/include

CFLAGS += -I$(SDK_DIR)/source/common/include

export CFLAGS

ifeq ($(CFG_HI_LOADER_SUPPORT),y)
CFLAGS += -DHI_LOADER_SUPPORT
endif

ifeq ($(CFG_HI_LOADER_FIRSTBOOT),y)
CFLAGS += -DHI_LOADER_FIRSTBOOT
endif

ifeq ($(CFG_HI_LOADER_SECONDBOOT),y)
CFLAGS += -DHI_LOADER_SECONDBOOT
endif

ifeq ($(CFG_HI_MCE_SUPPORT),y)
CFLAGS += -DHI_MCE_SUPPORT
endif

LIBS := libproduct.a
SUBLIBS := $(foreach sub,$(objects),$(sub)/lib$(sub).a)
MAINLIB := libmain.a
MAINOBJ := main.o

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall $(LIBS)

all: $(LIBS)

clean: $(objects_clean)
	$(AT)rm -rf $(LIBS)
	$(AT)rm -rf $(MAINLIB)
	$(AT)rm -rf $(MAINOBJ)
	$(AT)rm -rf ar.mak

install: $(objects_install)

uninstall: $(objects_uninstall)

prepare:

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
	$(AT)mkdir -p $(PRODUCT_DIR)/driver/include/hi3716mv330
	$(AT)cp -rf $(COMMON_DIR)/drv/include/hi3716mv330/*.h   $(PRODUCT_DIR)/driver/include/hi3716mv330/
else
	$(AT)mkdir -p $(PRODUCT_DIR)/driver/include/hi3716mv310
	$(AT)cp -rf $(COMMON_DIR)/drv/include/hi3716mv310/*.h   $(PRODUCT_DIR)/driver/include/hi3716mv310/
endif
	$(AT)cp -rf $(COMMON_DIR)/drv/include/hi_reg_common.h   $(PRODUCT_DIR)/driver/include/
	make -C  $(PRODUCT_DIR)/driver/disp/ prepare


$(MAINLIB): $(MAINOBJ)
	$(AT)ar -rc $@ $^

$(LIBS): $(objects) $(MAINLIB)
	$(AT)rm -rf $@
	$(AT)rm -rf ar.mak
	$(AT)echo "CREATE $@" >> ar.mak
	$(AT)$(foreach sublib,$(SUBLIBS),echo "ADDLIB $(sublib)" >> ar.mak;)
	$(AT)echo "ADDLIB $(MAINLIB)" >> ar.mak
	$(AT)echo "SAVE" >> ar.mak
	$(AT)echo "END" >> ar.mak
	$(AT)$(AR) -M < ar.mak

#==================================================================
#                          modules
#==================================================================
.PHONY: $(objects) $(objects_clean) $(objects_install) $(objects_uninstall)

$(objects):prepare
	make -C $@ all

$(objects_clean):
	make -C $(patsubst %_clean,%,$@) clean

$(objects_install):
	make -C $(patsubst %_clean,%,$@) install

$(objects_uninstall):
	make -C $(patsubst %_clean,%,$@) uninstall

