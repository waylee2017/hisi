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

.PHONY: all clean install uninstall prepare unprepare
ifeq ($(CFG_HI_IR_TYPE_S2),y)
ifeq ($(CFG_MSP_BUILDTYPE),y)
obj-$(CFG_MSP_BUILDTYPE) += ir_s2/
endif
endif

ifeq ($(CFG_HI_IR_TYPE_STD),y)
ifeq ($(CFG_MSP_BUILDTYPE),y)
obj-$(CFG_MSP_BUILDTYPE) += ir_std/
endif
endif

all:    
ifeq ($(CFG_HI_IR_TYPE_S2),y)
	make -C ir_s2 all
endif	

ifeq ($(CFG_HI_IR_TYPE_STD),y)
	make -C ir_std all
endif	

ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
	cd lirc-0.8.7 &&./hiconfigure $(CC) $(LINUX_DIR) NO && make ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- && cd -
endif

clean:
ifeq ($(CFG_HI_IR_TYPE_S2),y)
	make -C ir_s2 clean
endif

ifeq ($(CFG_HI_IR_TYPE_STD),y)
	make -C ir_std clean
endif

ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
	cd lirc-0.8.7 ; make clean; cd -
endif

install: all
ifeq ($(CFG_HI_IR_TYPE_S2),y)
	make -C ir_s2 install
endif

ifeq ($(CFG_HI_IR_TYPE_STD),y)
	make -C ir_std install
endif

ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
	cd lirc-0.8.7 && make ARCH=arm CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)- && cd -

	$(AT)cp -rvf lirc-0.8.7/drivers/lirc_dev/lirc_dev.ko $(PUB_DIR)/kmod
	$(AT)cp -rvf lirc-0.8.7/drivers/lirc_serial/lirc_serial.ko $(PUB_DIR)/kmod
	$(AT)$(STRIP) lirc-0.8.7/daemons/lircd
	$(AT)$(STRIP) lirc-0.8.7/daemons/irrecord
	$(AT)$(STRIP) lirc-0.8.7/tools/irw
	$(AT)$(STRIP) lirc-0.8.7/tools/mode2
	$(AT)cp -rvf lirc-0.8.7/daemons/lircd $(ROOTFS_DIR)/usr/bin
	$(AT)cp -rvf lirc-0.8.7/daemons/irrecord $(ROOTFS_DIR)/usr/bin
#       $(AT)cp -rvf lirc-0.8.7/tools/irw  $(TOOLS_DIR)/board/lirc/irw-$(CROSS)
#       $(AT)cp -rvf lirc-0.8.7/tools/mode2 $(TOOLS_DIR)/board/lirc/mode2-$(CROSS)
	$(AT)cp -rvf lirc-0.8.7/remotes/hisilicon/lircd.conf $(ROOTFS_DIR)/etc
endif

uninstall:
ifeq ($(CFG_HI_IR_TYPE_S2),y)
	make -C ir_s2 uninstall   
endif

ifeq ($(CFG_HI_IR_TYPE_STD),y)
	make -C ir_std uninstall   
endif

ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
	cd lirc-0.8.7; -$(AT)make distclean; cd -
	$(AT)find lirc-0.8.7 -name Makefile|xargs rm -f
	$(AT)find lirc-0.8.7 -name *.o|xargs rm -f
	$(AT)find lirc-0.8.7 -name *.tmp_versions |xargs rm -fr
	$(AT)find lirc-0.8.7 -name Module.symvers |xargs rm -f
	$(AT)find lirc-0.8.7 -name modules.order|xargs rm -f
	-$(AT)rm -f $(PUB_DIR)/kmod/lirc_dev.ko
	-$(AT)rm -f $(PUB_DIR)/kmod/lirc_serial.ko
	-$(AT)rm -f $(ROOTFS_DIR)/usr/bin/lircd
	-$(AT)rm -f $(ROOTFS_DIR)/usr/bin/irrecord
	-$(AT)rm -f $(ROOTFS_DIR)/usr/etc/lircd.conf
endif

prepare:
	-$(AT)tar -xzf lirc-0.8.7.tar.gz
ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
	-cp -af lirc-0.8.7-patch/* lirc-0.8.7/
	cd lirc-0.8.7 && chmod a+x ./hiconfigure && chmod  a+x ./configure && ./hiconfigure $(CC) $(LINUX_DIR) NO && cd -
endif

unprepare:
ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
	cd lirc-0.8.7 ; make distclean ; cd -
endif
	-$(AT)rm -rf lirc-0.8.7
