
#====================================================================================
#                          export
#====================================================================================
.EXPORT_ALL_VARIABLES:
SDK_CFGFILE=cfg.mak
SDK_DIR=${PWD}
include $(SDK_CFGFILE)
include base.mak
CFG_HI_EXPORT_FLAG=y

PHONY: middleware

#====================================================================================
#                   build/rebuild
#====================================================================================
.PHONY: build rebuild
#++++++++++++++++++++++++++++++++++++++++++++++++++++
build: prepare
	make install
	$(AT)make signature
rebuild: distclean
	make build

#====================================================================================
#                   prepare/unprepare
#====================================================================================
.PHONY: prepare unprepare
#++++++++++++++++++++++++++++++++++++++++++++++++++++
prepare: msp_prepare
unprepare: linux_unprepare msp_unprepare
ifeq ($(SDK_DIR)/3rd,$(wildcard $(SDK_DIR)/3rd))
msp_prepare:third_party_software_prepare
endif
third_party_software_prepare:
ifeq ($(SDK_DIR)/3rd,$(wildcard $(SDK_DIR)/3rd))
	-cp -af 3rd tmp
	-find ./tmp -name .svn | xargs rm -rf
	-cp -af tmp/* ./
	-rm -rf tmp
endif
#====================================================================================
#                   global targets
#====================================================================================
.PHONY: all distclean clean install uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
INSTALL_OBJS := tools_install

ifneq ($(CFG_HI_LOADER_APPLOADER),y)
INSTALL_OBJS += hiboot_install
endif

INSTALL_OBJS += linux_install common_install_org rootfs_install msp_install_org component_install_org plugin_install rootbox_install
ifeq ($(CFG_HI_FS_BUILDIN),y)
#INSTALL_OBJS += linux_fs_buildin
else
INSTALL_OBJS += fs_org
endif

ifneq ($(CFG_HI_LOADER_APPLOADER),y)
INSTALL_OBJS += sample_org
endif

all:  tools hiboot linux common_org msp_org rootfs component_org plugin
distclean:sdkclean clean
sdkclean: uninstall unprepare sample_clean plugin_clean component_clean $(if $(wildcard $(LINUX_DIR)),msp_clean,) common_clean rootfs_clean linux_clean hiboot_clean signature_clean
	-rm -rf $(IMAGE_DIR)/fastboot-burn.bin
	-rm -rf $(IMAGE_DIR)/hi_kernel.bin
	-rm -rf $(IMAGE_DIR)/rootfs*
	-rm -rf $(INCLUDE_DIR)/*
	-rm -rf $(STATIC_LIB_DIR)/*
	-rm -rf $(SHARED_LIB_DIR)/*
	-rm -rf $(EXTERN_LIB_DIR)/*
	-rm -rf $(MODULE_DIR)/*
	-rm -rf $(BIN_DIR)/*

clean: middleware_clean

install: ${INSTALL_OBJS}
ifeq ($(CFG_HI_FS_BUILDIN),y)
	make -C $(KERNEL_DIR) clean
	make -C $(KERNEL_DIR) fs_buildin
else
	$(AT)make $(IMAGES)
ifeq ($(CFG_HI_ADVCA_TYPE)_$(CFG_HI_LOADER_APPLOADER), CONAX_y)
	$(AT)test -e $(IMAGE_DIR)/hi_kernel.bin && test -e $(IMAGE_DIR)/rootfs.squashfs && $(MKBOOTIMG) --kernel $(IMAGE_DIR)/hi_kernel.bin --ramdisk $(IMAGE_DIR)/rootfs.squashfs --base $(CFG_HI_APPLOADER_INITRD_BASE_ADDR) -o $(IMAGE_DIR)/apploader.bin
endif
endif

uninstall: rootbox_uninstall plugin_uninstall component_uninstall msp_uninstall common_uninstall rootfs_uninstall linux_uninstall hiboot_uninstall

obj=$(M)

#====================================================================================
#                   tools
#====================================================================================
.PHONY:  tools  tools_clean  tools_install  tools_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
tools:
	make -C $(TOOLS_DIR) all
tools_clean:
	make -C $(TOOLS_DIR) clean
tools_install:
	make -C $(TOOLS_DIR) install
tools_uninstall:
	make -C $(TOOLS_DIR) uninstall

#====================================================================================
#                   hiboot
#====================================================================================
.PHONY:  hiboot  hiboot_clean  hiboot_install  hiboot_uninstall advca_programmer
#++++++++++++++++++++++++++++++++++++++++++++++++++++
hiboot:
	make -C $(BOOT_DIR) all
hiboot_clean:
	make -C $(BOOT_DIR) clean
hiboot_install:
ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
	$(AT)make -C $(BOOT_DIR) advca_programmer_install BOOT_ADVCA_PROGRAMMER=y
endif
	make -C $(BOOT_DIR) install
hiboot_uninstall:
	make -C $(BOOT_DIR) uninstall

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
advca_programmer:
	$(AT)make -C $(BOOT_DIR) advca_programmer_install BOOT_ADVCA_PROGRAMMER=y
endif

ifeq ($(CFG_HI_DOUBLE_BOOTLOADER),y)
double_bootloader_install: first_bootloader
	make -C $(BOOT_DIR) second_bootloader_install

double_bootloader_clean:
	make -C $(BOOT_DIR) clean

first_bootloader:
	$(AT)test -e $(MKIMAGE) || make -C $(TOOLS_DIR) install
	$(AT)make -C $(BOOT_DIR) first_bootloader_install
endif
#====================================================================================
#                   linux
#====================================================================================
.PHONY:  linux_prepare linux_unprepare linux  linux_clean  linux_install linux_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
linux:
	make -C $(KERNEL_DIR) all
linux_clean:
	make -C $(KERNEL_DIR) clean
linux_install:
	make -C $(KERNEL_DIR) install
#linux_fs_buildin: linux_clean
#	make -C $(KERNEL_DIR) fs_buildin
linux_uninstall:
	make -C $(KERNEL_DIR) uninstall
linux_prepare:
	make -C $(KERNEL_DIR) prepare
linux_unprepare:
	make -C $(KERNEL_DIR) unprepare

#====================================================================================
#                   rootfs
#====================================================================================
.PHONY:  rootfs  rootfs_clean  rootfs_install  rootfs_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
rootfs:
	make -C $(ROOTFS_SRC_DIR) all
rootfs_clean:
	make -C $(ROOTFS_SRC_DIR) clean
rootfs_install:
	make -C $(ROOTFS_SRC_DIR) install
rootfs_uninstall:
	make -C $(ROOTFS_SRC_DIR) uninstall

#====================================================================================
#                   common
#====================================================================================
.PHONY:  common_org  common_clean  common_install_org  common_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
common_org:linux
	make -C $(COMMON_DIR) all
common:
	make -C $(COMMON_DIR) all
common_clean:
	make -C $(COMMON_DIR) clean
common_install_org:linux_install
	make -C $(COMMON_DIR) install
common_install:
	make -C $(COMMON_DIR) install
common_uninstall:
	make -C $(COMMON_DIR) uninstall

#====================================================================================
#                   msp
#====================================================================================
.PHONY: msp_prepare msp_unprepare msp_org  msp_clean  msp_install_org  msp_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
msp_prepare:
	make -C $(MSP_DIR)/drv/vfmw prepare
	make -C $(MSP_DIR)/drv/ir prepare

msp_unprepare:
ifeq ($(CFG_HI_MSP_BUILDIN),y)
	$(AT)rm -rf $(LINUX_DIR)/drivers/common
	$(AT)rm -rf $(LINUX_DIR)/drivers/msp
endif
	make -C $(MSP_DIR)/drv/vfmw unprepare
	make -C $(MSP_DIR)/drv/ir unprepare

msp_org:linux
	make -C $(MSP_DIR) all
msp:
	make -C $(MSP_DIR) all
msp_clean:
	make -C $(MSP_DIR) clean
msp_install_org:linux_install
	make -C $(MSP_DIR) install
msp_install:
	make -C $(MSP_DIR) install
msp_uninstall:
	make -C $(MSP_DIR) uninstall

#====================================================================================
#                   component
#====================================================================================
.PHONY:  component_org  component_clean  component_install_org  component_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
component_org:linux
	make -C $(COMPONENT_DIR) all
component:
	make -C $(COMPONENT_DIR) all
component_clean:
	make -C $(COMPONENT_DIR) clean
component_install_org:linux_install
	make -C $(COMPONENT_DIR) install
component_install:
	make -C $(COMPONENT_DIR) install
component_uninstall:
	make -C $(COMPONENT_DIR) uninstall

#====================================================================================
#                   plugin
#====================================================================================
.PHONY:  plugin plugin_clean plugin_install  plugin_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
plugin:
	make -C $(PLUGIN_DIR) all
plugin_clean:
	make -C $(PLUGIN_DIR) clean
plugin_install:
	make -C $(PLUGIN_DIR) install
plugin_uninstall:
	make -C $(PLUGIN_DIR) uninstall

#====================================================================================
#                   sample
#====================================================================================
.PHONY: sample sample_org  sample_clean  sample_install_org  sample_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
sample_org:msp_install_org component_install_org
	make -C $(SAMPLE_DIR) all
sample:
	make -C $(SAMPLE_DIR) all
sample_clean:
	make -C $(SAMPLE_DIR) clean
sample_install_org:
	make -C $(SAMPLE_DIR) install
sample_install:
	make -C $(SAMPLE_DIR) install
sample_uninstall:
	make -C $(SAMPLE_DIR) uninstall

#====================================================================================
#                   middleware
#====================================================================================
.PHONY: middleware  middleware_clean  middleware_uninstall
#++++++++++++++++++++++++++++++++++++++++++++++++++++
middleware:
	make -C $(MIDDLEWARE_DIR) all
middleware_clean:
	make -C $(MIDDLEWARE_DIR) clean
middleware_install:
	make -C $(MIDDLEWARE_DIR) install
middleware_uninstall:
	make -C $(MIDDLEWARE_DIR) uninstall	

#====================================================================================
#                   rootbox
#====================================================================================
include rootbox.mk

rootbox_install: tools_install rootfs_install common_install_org msp_install_org component_install_org plugin_install
	$(AT)make rootbox_strip
	$(AT)echo "rootbox is ready"

rootbox_uninstall:
	$(AT)( if [ -f $(SRM) ];then ( \
	$(SRM) -rf $(ROOTBOX_DIR) \
	) else ( \
	rm -rf $(ROOTBOX_DIR) \
	) fi )
#====================================================================================
#                   fs
#====================================================================================
.PHONY: fs_org cramfs squashfs jffs2 yaffs extfs ubiimg
#++++++++++++++++++++++++++++++++++++++++++++++++++++
IMAGES :=
ifeq ($(CFG_HI_ROOTFS_CRAMFS),y)
IMAGES += cramfs
endif
ifeq ($(CFG_HI_ROOTFS_SQUASHFS),y)
IMAGES += squashfs
endif
ifeq ($(CFG_HI_ROOTFS_JFFS2),y)
IMAGES += jffs2
endif
ifeq ($(CFG_HI_ROOTFS_YAFFS),y)
IMAGES += yaffs
endif
ifeq ($(CFG_HI_ROOTFS_EXT4),y)
IMAGES += extfs
endif
ifeq ($(CFG_HI_ROOTFS_UBIIMG),y)
IMAGES += ubiimg
endif

fs_org:rootbox_install
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
	make $(IMAGES)
endif
fs:$(IMAGES)

ifdef CFG_HI_SPI_BLOCK_SIZE
SPI_BLOCK_SIZE := $(CFG_HI_SPI_BLOCK_SIZE)
else
SPI_BLOCK_SIZE := 0x10000 0x20000 0x40000
endif

YAFFS_MODE := 2k-1bit 4k-1bit 4k-4byte 4k-24bit1k 8k-24bit1k 8k-40bit1k
ifdef CFG_HI_NAND_PAGE_SIZE
ifdef CFG_HI_NAND_ECC_TYPE
YAFFS_MODE :=$(CFG_HI_NAND_PAGE_SIZE)-$(CFG_HI_NAND_ECC_TYPE)
endif
endif

ifdef CFG_HI_EMMC_ROOTFS_SIZE
EMMC_SIZE     := $(word 1,$(subst -, ,$(CFG_HI_EMMC_ROOTFS_SIZE)))
EMMC_SIZE_STR := $(word 2,$(subst -, ,$(CFG_HI_EMMC_ROOTFS_SIZE)))
else
EMMC_SIZE     := 40960
EMMC_SIZE_STR := 40M
endif

#++++++++++++++++++++++++++++++++++++++++++++++++++++
cramfs:
	$(MKCRAMFS) $(ROOTBOX_DIR) $(IMAGE_DIR)/rootfs.cramfs
#++++++++++++++++++++++++++++++++++++++++++++++++++++
squashfs:
ifeq ($(CFG_HI_ROOTFS_RULEFILE),y)
	$(MKSQUASHFS) $(ROOTBOX_DIR) $(IMAGE_DIR)/rootfs.squashfs \
		-no-fragments -noappend -noI -comp xz -T $(RULEFILE) -G $(RULEDBG)
else
	$(MKSQUASHFS) $(ROOTBOX_DIR) $(IMAGE_DIR)/rootfs.squashfs \
		-no-fragments -noappend -noI -comp xz
endif
#++++++++++++++++++++++++++++++++++++++++++++++++++++
jffs2:
	$(AT)(for ix in $(SPI_BLOCK_SIZE) ; do ( \
		if [ "$$ix" == "0x10000" ]; then \
			NAME=64k; \
		elif [ "$$ix" == "0x20000" ];then \
			NAME=128k; \
		elif [ "$$ix" == "0x40000" ];then \
			NAME=256k; \
		fi; \
		$(MKJFFS2) -d $(ROOTBOX_DIR) -l -e $${ix} \
		-o $(IMAGE_DIR)/rootfs_$${NAME}.jffs2; \
	) done )
#++++++++++++++++++++++++++++++++++++++++++++++++++++
yaffs:
ifeq ($(CFG_HI_ROOTFS_RULEFILE),y)
	$(AT)(for ix in $(YAFFS_MODE) ; do ( \
		NAME=`echo $$ix | sed -s 's/b.*[ket]/b/' | sed -s 's/-//'`; \
		PARAM=`echo $$ix | sed -s 's/-/ /'` ; \
		$(MKYAFFS) $(ROOTBOX_DIR) \
			$(IMAGE_DIR)/rootfs_$$NAME.yaffs $$PARAM -T $(RULEFILE) -G $(RULEDBG); \
		chmod a+r $(IMAGE_DIR)/rootfs_$$NAME.yaffs; \
	) done )
else
	$(AT)(for ix in $(YAFFS_MODE) ; do ( \
		NAME=`echo $$ix | sed -s 's/b.*[ket]/b/' | sed -s 's/-//'`; \
		PARAM=`echo $$ix | sed -s 's/-/ /'` ; \
		$(MKYAFFS) $(ROOTBOX_DIR) \
			$(IMAGE_DIR)/rootfs_$$NAME.yaffs $$PARAM; \
		chmod a+r $(IMAGE_DIR)/rootfs_$$NAME.yaffs; \
	) done )
endif
#++++++++++++++++++++++++++++++++++++++++++++++++++++
ubiimg:
ifeq ($(CFG_HI_ROOTFS_RULEFILE),y)
	cd ${SERVER_UNTILS_DIR}; \
	$(MKUBIIMG) $(CFG_HI_NAND_PAGE_SIZE) $(CFG_HI_NAND_BLOCK_SIZE) $(ROOTBOX_DIR) $(CFG_HI_UBI_PARTITION_SIZE) $(IMAGE_DIR)/rootfs_$(CFG_HI_UBI_PARTITION_SIZE).ubiimg $(RULEFILE) $(RULEDBG); \
	cd -
else
	cd ${SERVER_UNTILS_DIR}; \
	$(MKUBIIMG) $(CFG_HI_NAND_PAGE_SIZE) $(CFG_HI_NAND_BLOCK_SIZE) $(ROOTBOX_DIR) $(CFG_HI_UBI_PARTITION_SIZE) $(IMAGE_DIR)/rootfs_$(CFG_HI_UBI_PARTITION_SIZE).ubiimg ; \
	cd -
endif
#++++++++++++++++++++++++++++++++++++++++++++++++++++
ROOTBOX_SIZE  := $(word 1,$(shell du -s $(ROOTBOX_DIR) 2>/dev/null))
extfs:
	$(AT)( if [ $(ROOTBOX_SIZE) -gt $(EMMC_SIZE) ]; then ( \
		echo ;\
		echo -e "\033[31m""Warning: make ext4 file system fail!""\033[0m"; \
		echo "If you not need ext4 file system(only for eMMC), please ignore this warning."; \
		echo; \
		echo "Rootfs \"$(ROOTBOX_DIR)\" size ($(ROOTBOX_SIZE))"; \
		echo "is larger than ext4 filesystem config size ($(EMMC_SIZE)).";\
		echo "Please check your rootfs or modify CFG_EMMC_ROOTFS_SIZE,";\
		echo "\"CFG_EMMC_ROOTFS_SIZE\" is define in sdk config file \"cfg.mak\"";\
		echo; \
	) else ( \
		${MKEXT4FS} -l ${EMMC_SIZE_STR} -s $(IMAGE_DIR)/rootfs_$(EMMC_SIZE_STR).ext4 $(ROOTBOX_DIR) \
	) fi )

#++++++++++++++++++++++++++++++++++++++++++++++++++++
.PHONY: signature signature_clean
#++++++++++++++++++++++++++++++++++++++++++++++++++++
SIGNATURE_SCRIPT_DIR  := none
ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
	ifeq ($(CFG_HI_ADVCA_TYPE),CONAX)
		SIGNATURE_SCRIPT_DIR := Conax
	else ifeq ($(CFG_HI_ADVCA_TYPE),VERIMATRIX)
	    ifeq ($(CFG_HI_ADVCA_VMX_3RD_SIGN),y)
		    SIGNATURE_SCRIPT_DIR := Verimatrix/advance/SignBy3rd
		else
		    SIGNATURE_SCRIPT_DIR := Verimatrix/advance/SignByVmx
		endif
	else ifeq ($(CFG_HI_ADVCA_TYPE),VERIMATRIX_ULTRA)
	    ifeq ($(CFG_HI_ADVCA_VMX_3RD_SIGN),y)
		    SIGNATURE_SCRIPT_DIR := Verimatrix/ultra/SignBy3rd
		else
		    SIGNATURE_SCRIPT_DIR := Verimatrix/ultra/SignByVmx
		endif
	endif
endif

CREATE_SIGNATURE_DIR= $(SDK_DIR)/tools/linux/utils/advca/CreateSignature

signature_clean:
ifneq ($(SIGNATURE_SCRIPT_DIR),none)
	make -C $(CREATE_SIGNATURE_DIR)/$(SIGNATURE_SCRIPT_DIR) clean
endif

signature:
ifneq ($(SIGNATURE_SCRIPT_DIR),none)
	make -C $(CREATE_SIGNATURE_DIR)/$(SIGNATURE_SCRIPT_DIR) all
endif

#====================================================================================
#                   other
#====================================================================================
FORCE:
#++++++++++++++++++++++++++++++++++++++++++++++++++++


#====================================================================================
#                   cfg ops
#====================================================================================
.PHONY: defconfig menuconfig
#++++++++++++++++++++++++++++++++++++++++++++++++++++
KCONFIG_DIR = $(shell if [ -d ${SDK_DIR}/3rd ];then echo ${SDK_DIR}"/3rd/tools/linux/kconfig";else echo ${SDK_DIR}"/tools/linux/kconfig";fi;)
KCONFIG_EXE = $(KCONFIG_DIR)/himconf
KCONFIG_CFG  = scripts/kconfig/mainKconfig
#++++++++++++++++++++++++++++++++++++++++++++++++++++
cfgfile_update:
ifneq ($(CFILE), )
	$(if $(wildcard $(CFILE)), \
		cp -f $(CFILE) $(SDK_CFGFILE), \
		$(AT)echo "$(CFILE) not exist."; exit 1 \
	)
endif
#++++++++++++++++++++++++++++++++++++++++++++++++++++
cfgfile_menu:
	$(AT)(if [ ! -f $(KCONFIG_EXE) ]; then \
		make -C $(KCONFIG_DIR); \
	fi)
	$(AT)$(KCONFIG_EXE) $(KCONFIG_CFG)

menuconfig:  cfgfile_update cfgfile_menu FORCE
	$(AT)echo "make $@ over"


defconfig: cfgfile_update
	$(AT)echo "make $@ over"

#====================================================================================
#     build apploader.bin quickly just for the second time
#====================================================================================
loader_rebuild:
	$(AT)make component_clean M=loader
	$(AT)make component_install M=loader
ifeq ($(CFG_HI_ADVCA_TYPE), CONAX)
	$(AT)make rootbox_strip
	$(AT)make $(IMAGES)
	$(AT)test -e $(IMAGE_DIR)/hi_kernel.bin && test -e $(IMAGE_DIR)/rootfs.squashfs && $(MKBOOTIMG) --kernel $(IMAGE_DIR)/hi_kernel.bin --ramdisk $(IMAGE_DIR)/rootfs.squashfs --base $(CFG_HI_APPLOADER_INITRD_BASE_ADDR) -o $(IMAGE_DIR)/apploader.bin
else
	$(AT)make -C ${KERNEL_DIR} fs_buildin
endif
#====================================================================================

#====================================================================================
#                   help
#====================================================================================
.PHONY:  help
#++++++++++++++++++++++++++++++++++++++++++++++++++++
GREEN="\e[32;1m"
NORMAL="\e[39m"
RED="\e[31m"

help:
	$(AT)echo -e ${GREEN}
	$(AT)cat Readme|less
	$(AT)echo -e ${NORMAL}
