################################################################################
#    ./Makefile
#    Create By CaiZhiYong
#    2011.06.19
#
######################export val################################################ 
#  CFG_HI_KERNEL_VERSION
#  CFG_HI_KERNEL_CFG
#  CROSS_COMPILE
#######################inside val###############################################
#  PREFIX
#  CROSS_COMPILE
#  OUTPUT_DIR
#  KERNEL
#  OUTPUT_DIR
#  KERNEL_CONFIG

ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
ROOTBOX_DIR := $(SDK_DIR)/pub/rootbox
endif

PREFIX           ?= $(shell pwd)
CROSS_COMPILE            := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)
OUTPUT_DIR       ?= \
	$(if $(PUB_DIR),$(PUB_DIR),$(shell pwd)/../../pub)
KERNEL           ?= \
	$(if $(CFG_HI_KERNEL_VERSION),$(CFG_HI_KERNEL_VERSION),linux-3.10.y)
KERNEL_CONFIG    ?= \
	$(if $(CFG_HI_KERNEL_CFG),$(CFG_HI_KERNEL_CFG),hi3716mv310_fpga_defconfig)
CONFIG_CC_OPTIMIZE_FOR_SIZE := \
	$(if $(CFG_HI_OPTM_SIZE_SUPPORT),$(CFG_HI_OPTM_SIZE_SUPPORT),)
CONFIG_INITRAMFS_SOURCE := \
	$(if $(CFG_HI_INITRAMFS_SOURCE),$(CFG_HI_INITRAMFS_SOURCE),)

CFG_MSP  := $(CFG_HI_MSP_BUILDIN)
CFG_FS_BUILDIN := $(CFG_HI_FS_BUILDIN)

SATA_SUPPORT := y

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716m hi3712 hi3716mv310 hi3716mv320 hi3716mv330 hi3110ev500),)
SATA_SUPPORT := n
endif

################################################################################

BUILD_DIR        := $(shell pwd)/$(KERNEL)
KERNEL_PATCH_DIR ?= $(shell pwd)/$(KERNEL).patch

ifdef CFG_HI_ADVCA_FUNCTION
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
INITRAMFS_SOURCE = $(shell pwd)/initramfs.cpio.gz
endif
else
INITRAMFS_SOURCE = $(ROOTBOX_DIR)
endif
###############################################################################
all: $(PREFIX)/hi_kernel.bin

$(PREFIX)/hi_kernel.bin: $(BUILD_DIR)/arch/arm/boot/uImage
	cp -fv $(BUILD_DIR)/arch/arm/boot/uImage $@

$(BUILD_DIR)/arch/arm/boot/uImage: prepare
	make -C $(BUILD_DIR) ARCH=arm \
		CROSS_COMPILE=$(CROSS_COMPILE) \
		CONFIG_MSP=$(CFG_MSP) \
		CFLAGS_KERNEL=$(CFLAGS_KERNEL) \
		CONFIG_CC_OPTIMIZE_FOR_SIZE=$(CONFIG_CC_OPTIMIZE_FOR_SIZE) \
		CONFIG_INITRAMFS_SOURCE=$(CONFIG_INITRAMFS_SOURCE) -j 20 uImage
	make -C $(BUILD_DIR) ARCH=arm \
		CROSS_COMPILE=$(CROSS_COMPILE) \
		CONFIG_MSP=$(CFG_MSP) \
		CFLAGS_KERNEL=$(CFLAGS_KERNEL) \
		CONFIG_CC_OPTIMIZE_FOR_SIZE=$(CONFIG_CC_OPTIMIZE_FOR_SIZE) -j 20 modules

$(BUILD_DIR)/tar:
	@test -f $@ || test ! -f $(notdir $(@:/tar=)).tar.bz2 || tar -xjf $(notdir $(@:/tar=)).tar.bz2
	@test ! -d $(KERNEL_PATCH_DIR) || cp -rf $(KERNEL_PATCH_DIR)/* $(BUILD_DIR)/
	@test ! -f $(BUILD_DIR)/.config || rm -f $(BUILD_DIR)/.config
	@touch $@

prepare: $(BUILD_DIR)/tar
ifeq ($(CFG_HI_MSP_BUILDIN),y)
	$(AT)test -d $(LINUX_DIR)/drivers/common \
           || (cd $(LINUX_DIR)/drivers && rm -rf common && ln -s $(COMMON_DIR)/drv ./common && cd -)

	$(AT)test -d $(LINUX_DIR)/drivers/msp \
           || (cd $(LINUX_DIR)/drivers && rm -rf msp && ln -s $(MSP_DIR)/drv ./msp && cd -)
ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
	$(AT)(cp -f $(COMPONENT_DIR)/pm/arm/output.txt $(LINUX_DIR)/drivers/msp/pm/output.txt)	
else
	$(AT)(cp -f $(COMPONENT_DIR)/pm/c51/output.txt $(LINUX_DIR)/drivers/msp/pm/output.txt)
endif
endif
	make -C $(BUILD_DIR) ARCH=arm \
		CROSS_COMPILE=$(CROSS_COMPILE) \
		CFLAGS_KERNEL=$(CFLAGS_KERNEL) $(KERNEL_CONFIG);


unprepare:
	@test ! -f $(BUILD_DIR)/tar || rm -rf $(BUILD_DIR)/tar
	@test ! -f $(BUILD_DIR)/.config || rm -f $(BUILD_DIR)/.config

install: all
	@cp -fv $(PREFIX)/hi_kernel.bin $(OUTPUT_DIR)/image
	@test -d $(OUTPUT_DIR)/kmod/usb || mkdir -p $(OUTPUT_DIR)/kmod/usb
	-@cp -fv $(BUILD_DIR)/drivers/usb/host/*.ko $(OUTPUT_DIR)/kmod/usb
	-@cp -fv $(BUILD_DIR)/drivers/usb/gadget/*.ko $(OUTPUT_DIR)/kmod/usb
	-@cp -fv $(BUILD_DIR)/drivers/usb/gadget/function/*.ko $(OUTPUT_DIR)/kmod/usb
ifeq ($(SATA_SUPPORT),y)
	@test -d $(OUTPUT_DIR)/kmod/sata || mkdir -p $(OUTPUT_DIR)/kmod/sata
	-@cp -fv $(BUILD_DIR)/drivers/ata/*.ko $(OUTPUT_DIR)/kmod/sata
endif

ifdef CFG_HI_ADVCA_FUNCTION
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
$(INITRAMFS_SOURCE): force
	@rm -f $(INITRAMFS_SOURCE)
ifeq ($(CFG_HI_ROOTFS_RULEFILE),y)
	@cd $(ROOTBOX_DIR) && \
	    find . | $(CPIO) -o -H newc -T $(RULEFILE) -G $(RULEDBG) | gzip > $(INITRAMFS_SOURCE) && \
        cd -
else
	@cd $(ROOTBOX_DIR) && \
            find . | $(CPIO) -o -H newc | gzip > $(INITRAMFS_SOURCE) && \
	cd  -
endif

force: ;
endif
endif

fs_buildin: prepare $(INITRAMFS_SOURCE)
	make -C $(BUILD_DIR) ARCH=arm \
		CROSS_COMPILE=$(CROSS_COMPILE) \
		CONFIG_MSP=$(CFG_MSP) \
		CFLAGS_KERNEL=$(CFLAGS_KERNEL) \
		CONFIG_CC_OPTIMIZE_FOR_SIZE=$(CONFIG_CC_OPTIMIZE_FOR_SIZE) \
		CONFIG_INITRAMFS_SOURCE=$(INITRAMFS_SOURCE) \
		-j 20 uImage
	@cp -fv $(BUILD_DIR)/arch/arm/boot/uImage $(PREFIX)/hi_kernel.bin
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
	@cp -fv $(PREFIX)/hi_kernel.bin $(OUTPUT_DIR)/image/apploader.bin
	@rm -rf $(OUTPUT_DIR)/image/hi_kernel.bin
else
	@cp -fv $(PREFIX)/hi_kernel.bin $(OUTPUT_DIR)/image
endif
uninstall:
	-@rm -rf $(OUTPUT_DIR)/kmod/usb/*.ko
	-@rm -rf $(OUTPUT_DIR)/image/hi_kernel.bin
	-@rm -rf $(OUTPUT_DIR)/image/apploader.bin
ifeq ($(SATA_SUPPORT),y)
	-@rm -rf $(OUTPUT_DIR)/kmod/sata/*.ko
endif

################################################################################

distclean: clean
	@test ! -d $(BUILD_DIR) || make -C $(BUILD_DIR) ARCH=arm \
		CROSS_COMPILE=$(CROSS_COMPILE) distclean

clean:
	@test ! -d $(BUILD_DIR) || make -C $(BUILD_DIR) ARCH=arm \
		CROSS_COMPILE=$(CROSS_COMPILE) clean
	@test ! -f $(PREFIX)/hi_kernel.bin || rm -rf  $(PREFIX)/hi_kernel.bin
	@test ! -f $(BUILD_DIR)/tar || rm -rf $(BUILD_DIR)/tar
ifdef CFG_HI_ADVCA_FUNCTION
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
	@test ! -f $(INITRAMFS_SOURCE) || rm -f $(INITRAMFS_SOURCE)
endif
endif

################################################################################
.PHONY: clean distclean prepare
################################################################################
