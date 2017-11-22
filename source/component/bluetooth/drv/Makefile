#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../..
include $(SDK_DIR)/base.mak
endif

CFLAGS := ARCH=arm CROSS_COMPILE=$(CROSS_COMPILE) LINUX_DIR=$(LINUX_DIR)
CFLAGS += ROOTFS_DIR=$(ROOTFS_DIR)
CFLAGS += CFG_HI_KERNEL_VERSION=$(CFG_HI_KERNEL_VERSION)

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
objects := 

#ifeq ($(CFG_HI_BLUETOOTH_DEVICE_RTL8723BU),y)
objects += usb_rtl8723bu
#endif

objects_clean:=$(addsuffix _clean,$(objects))
objects_install:=$(addsuffix _install,$(objects))
objects_uninstall:=$(addsuffix _uninstall,$(objects))

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#   rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: all clean install uninstall
all: $(objects)

clean: $(objects_clean)

install: $(objects_install)

uninstall: $(objects_uninstall)

#==================================================================
#                          modules
#==================================================================
.PHONY: $(objects) $(objects_clean) $(objects_install) $(objects_uninstall)

$(objects):
	make $(CFLAGS) -C $@ all

$(objects_clean):
	make -C $(patsubst %_clean,%,$@) clean

$(objects_install):
	make $(CFLAGS) -C $(patsubst %_install,%,$@) install

$(objects_uninstall):
	make -C $(patsubst %_uninstall,%,$@) uninstall

