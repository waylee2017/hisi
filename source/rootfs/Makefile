################################################################################
#    ./Makefile
#    Create By CaiZhiyong
#
################################################################################
# Compiler:    
#     make CROSS_COMPILE=arm-hisiv200-linux- PREFIX=~/tftp/
#
# Command format:
#    make <option>
#    Options:
#        CROSS_COMPILE=<cross compile>   - cross compile tools
#        PREFIX=<dir>                    - image path
#        clean                           - clean all subpath
#        <dir>.clean                     - clean dir
#        <dir>.build                     - build dir
#        <dir>.menuconfig                - menuconfig dir
#
# Examples:
#        make CROSS_COMPILE=arm-hisiv200-linux- PREFIX=~/tftp/
#
#    menuconfig "busybox" complie "busybox"
#        make busybox/.menuconfig
#        make busybox/.build
#        make busybox/.clean
#
######################export val################################################ 
#  CFG_HI_EXPORT_FLAG
#  SERVER_UNTILS_DIR
#  ROOTFS_DIR
#  CFG_HI_NAND_SUPPORT
#  CFG_HI_SPI_SUPPORT
#  CFG_HI_EMMC_SUPPORT
#  CFG_HI_NAND_PAGE_SIZE
#  CFG_HI_NAND_ECC_TYPE
#  CFG_HI_ROOTFS_STRIP
#  CFG_HI_ROOTFS_CRAMFS
#  CFG_HI_ROOTFS_JFFS2
#  CFG_HI_ROOTFS_YAFFS
#  CFG_HI_ROOTFS_SQUASHFS
#  CFG_HI_BUSYBOX_CFG_NAME     //FIX ME:if uses busybox mdev or not?
#  CFG_HI_ETH_SUPPORT
#  CONFIG_SUPPORT_CA_RELEASE   //FIX ME:CA
#  CFG_HI_LIBCPP_SUPPORT
#  CFG_HI_LOADER_TYPE          //loader type: OS; UBOOT; n

######################### inside val ###########################################
#
#  CONFIG_MINI_ROOTFS          //FIX ME: delete it!
#  CROSS_COMPILE
#  PREFIX          //FIX ME
#  HOST_PREFIX
#  CONFIG_CA_RELEASE
#  ROOTFS
#  ROOTFS_OUT_DIR
#  BUILD_ROOT
#  MKFLAGS
#  TARGET
#  CONFIG_LIBCPP_SUPPORT
#  CONFIG_BUSYBOX_MDEV     //FIX ME: if use busybox mdev or not?
#  CONFIG_ETH_SUPPORT
################################################################################

include ./config.mk
################################################################################

ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

HOST_PREFIX           ?= \
    $(if $(SERVER_UNTILS_DIR),$(SERVER_UNTILS_DIR),$(shell pwd)/../../tools/linux/utils)

CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)
CONFIG_CA_RELEASE     := \
	$(if $(CONFIG_SUPPORT_CA_RELEASE),$(CONFIG_SUPPORT_CA_RELEASE),n)
CONFIG_LIBCPP_SUPPORT := \
	$(if $(CFG_HI_LIBCPP_SUPPORT),$(CFG_HI_LIBCPP_SUPPORT),n)
CONFIG_BUSYBOX_MDEV := \
	$(if $(CFG_HI_TOOL_MDEV_SUPPORT),$(CFG_HI_TOOL_MDEV_SUPPORT),n)

ifeq ($(CFG_HI_ETH_SUPPORT),y)
CONFIG_ETH_SUPPORT    := y
else
ifeq ($(CFG_HI_BOOT_USB2ETHER),y)
CONFIG_ETH_SUPPORT    := y
endif
endif

#CONFIG_ETH_SUPPORT    := \
#	$(if $(CFG_HI_ETH_SUPPORT),$(CFG_HI_ETH_SUPPORT),n)

ifeq ($(findstring mdev,$(CFG_HI_BUSYBOX_CFG_NAME)),mdev)
CONFIG_BUSYBOX_MDEV   := y
endif

CFG_HI_LOADER_TYPE    := \
	$(if $(CFG_HI_LOADER_TYPE),$(CFG_HI_LOADER_TYPE),n)

PREFIX            ?=$(CONFIG_PREFIX)
TARGET            := $(shell test -d ./pub || mkdir ./pub; \
	if cd `echo $(PREFIX)` > /dev/null 2>&1; then ( \
		pwd; cd - >/dev/null; \
	) else ( \
		echo "";\
	) fi)

################################################################################

################################################################################
GREEN       = "\033[01;32m"
YELLOW      = "\033[01;33m"
NORMAL      = "\033[00m"
BLUE        = "\033[34m"
RED         = "\033[31m"
PURPLE      = "\033[35m"
CYAN        = "\033[36m"
UNDERLINE   = "\033[02m"


#ROOTFS        := $(if $(ROOTFS_DIR),$(ROOTFS_DIR),$(TARGET)/rootfs)
ROOTFS         := $(TARGET)/rootfs
ROOTFS_OUT_DIR := $(if $(ROOTFS_DIR),$(ROOTFS_DIR),$(shell pwd)/../../pub/rootfs)

BUILD_ROOT  := $(shell pwd)
MKFLAGS     := PREFIX=$(ROOTFS) CROSS_COMPILE=$(CROSS_COMPILE) \
		CONFIG_LIBCPP_SUPPORT=$(CONFIG_LIBCPP_SUPPORT) \
		CONFIG_ETH_SUPPORT=$(CONFIG_ETH_SUPPORT) \
		CONFIG_BUSYBOX_MDEV=$(CONFIG_BUSYBOX_MDEV) \
		CONFIG_BUSYBOX_UDEV=$(CONFIG_TOOL_UDEV) \
		CONFIG_BUSYBOX_MDEV=$(CONFIG_BUSYBOX_MDEV) \
		CFG_HI_LOADER_TYPE=$(CFG_HI_LOADER_TYPE)
#		CONFIG_MINI_ROOTFS=$(CONFIG_MINI_ROOTFS)
PHONYS      :=

################################################################################
TOOLS-y := scripts busybox

TOOLS-$(CONFIG_TOOL_DOSFS)          += dosfstools
TOOLS-$(CONFIG_TOOL_E2FSPROGS)      += e2fsprogs
TOOLS-$(CONFIG_TOOL_FILECAP)        += filecap
TOOLS-$(CONFIG_TOOL_GDB)            += gdb
TOOLS-$(CONFIG_TOOL_IPTABLES)       += iptables
TOOLS-$(CONFIG_TOOL_MTD_UTILS)      += mtd-utils
TOOLS-$(CONFIG_TOOL_REG)            += reg-tools-1.0.0
TOOLS-$(CONFIG_TOOL_SANDBOX)        += sandbox
TOOLS-$(CONFIG_TOOL_TOP)            += top
TOOLS-$(CONFIG_TOOL_UDEV)           += udev
TOOLS-$(CONFIG_TOOL_PPPD)           += pppd
TOOLS-$(CONFIG_TOOL_SOC_SERVER)     += soc_server
TOOLS-$(CONFIG_TOOL_IPERF)          += iperf
TOOLS-$(CONFIG_MSP_DEBUG)           += msp_debug
TOOLS-$(CONFIG_LXC_CONTAINER)       += lxc
TOOLS-$(CONFIG_TOOL_MEMTESTER)      += memtester
################################################################################

PHONYS += all
all: check $(patsubst %,%.build,$(TOOLS-y))
	@echo;
	@echo 'File system is ready at "$(TARGET)"'
	@echo;

################################################################################
# Check if path valid
PHONYS += check
check:
	@if test ! -d "$(TARGET)" ; then ( \
		echo "Can't find PREFIX: \"$(PREFIX)\""; \
		exit 1;\
	) fi
	@if ! type $(CROSS_COMPILE)gcc > /dev/null 2>&1; then ( \
		echo "Can't find cross compiler $(CROSS_COMPILE)gcc.";\
		exit 1;\
	) fi

################################################################################

install: all
	@test -d $(ROOTFS_OUT_DIR) || mkdir -pv $(ROOTFS_OUT_DIR)
	-@rm -rf $(ROOTFS_OUT_DIR)/*
	-@cp -af $(ROOTFS)/* $(ROOTFS_OUT_DIR)

uninstall:
	-rm -rf $(ROOTFS_OUT_DIR)

################################################################################

%.build: check
	@echo -e $(PURPLE)Build $(patsubst %.build,%,$@) ...$(NORMAL)
	make -C $(patsubst %.build,%,$@) ${MKFLAGS} -j1

%.clean:
	make -C $(patsubst %.clean,%,$@) ${MKFLAGS} clean

%.distclean:
	make -C $(patsubst %.distclean,%,$@) ${MKFLAGS} distclean

%.install:
	make -C $(patsubst %.install,%,$@) ${MKFLAGS} install

%.uninstall:
	make -C $(patsubst %.install,%,$@) ${MKFLAGS} uninstall

################################################################################
#
# make yaffs2 filesystem
#
PHONYS        += yaffs2 yaffs2_clean

################################################################################
#  if support nand, you should config HI_NAND_PAGE_SIZE and HI_NAND_ECC_TYPE
#
ifdef HI_NAND_SUPPORT
ifndef HI_NAND_PAGE_SIZE
$(error "Please config HI_NAND_PAGE_SIZE")
else
ifndef HI_NAND_ECC_TYPE
$(error "Please config HI_NAND_ECC_TYPE")
endif
endif
endif

YAFFS2_MODE   := 2k-1bit 4k-1bit 4k-4byte 4k-24bit1k 8k-24bit1k 8k-40bit1k

ifdef HI_NAND_PAGE_SIZE
ifdef HI_NAND_ECC_TYPE
YAFFS2_MODE   :=$(HI_NAND_PAGE_SIZE)-$(HI_NAND_ECC_TYPE)
endif
endif

HOST_MKYAFFS2 := $(HOST_PREFIX)/mkyaffs2image504

yaffs2: $(HOST_MKYAFFS2)
	@(for ix in $(YAFFS2_MODE) ; do ( \
		NAME=`echo $$ix | sed -s 's/b.*[ket]/b/' | sed -s 's/-//'`; \
		PARAM=`echo $$ix | sed -s 's/-/ /'` ; \
		$(HOST_MKYAFFS2) $(ROOTFS) \
			$(TARGET)/rootfs_$$NAME.yaffs $$PARAM; \
#		$(call cp2tftp,${TARGET}/rootfs_$$NAME.yaffs); \
		echo; \
	) done )
	@echo;

HOST_CLEAN += yaffs2_clean
yaffs2_clean:
	-@(for ix in $(YAFFS2_MODE) ; do ( \
		NAME=`echo $$ix | sed -s 's/b.*[ket]/b/' | sed -s 's/-//'`; \
		rm -fv ${TARGET}/rootfs_$$NAME.yaffs; \
	) done )

HOST_CLEAN += $(HOST_MKYAFFS2).clean
$(HOST_MKYAFFS2).clean: $(HOST_SRC)/mkyaffs2image/Makefile
	make -C $(<D) PREFIX=$(@D) clean

################################################################################
#
# make squashfs filesystem
#
CONFIG_SPIFLASH_BLOCK_SIZE := 64k 128k 256k

ifdef HI_SPI_BLOCK_SIZE
CONFIG_SPIFLASH_BLOCK_SIZE := $(HI_SPI_BLOCK_SIZE)
endif

PHONYS             += squashfs squashfs_clean
HOST_MKSQUASHFS    := $(HOST_PREFIX)/mksquashfs

squashfs: $(HOST_MKSQUASHFS)
	@(for ix in $(CONFIG_SPIFLASH_BLOCK_SIZE) ; do ( \
		NAME=`echo $$ix`; \
		$(HOST_MKSQUASHFS) $(ROOTFS) $(TARGET)/rootfs_$$NAME.squashfs \
		-no-fragments -noappend -comp xz \
		-b $$NAME; \
		echo; \
	) done )
	@echo;

squashfs_clean:
	-@(for ix in $(CONFIG_SPIFLASH_BLOCK_SIZE) ; do ( \
		echo $$ix; \
		NAME=`echo $$ix`; \
		rm -fv ${TARGET}/rootfs_$$NAME.squashfs; \
	) done )

################################################################################
#
# make jffs2 filesystem
#
PHONYS             += jffs2 jffs2_clean
HOST_MKJFFS2       := $(HOST_PREFIX)/mkfs.jffs2

jffs2: $(HOST_MKJFFS2)
	(for ix in $(CONFIG_SPIFLASH_BLOCK_SIZE) ; do ( \
		-o $(TARGET)/rootfs_$${ix}.jffs2; \
		if [ "$$ix" == "64k" ]; then \
			ERASE=0x10000; \
		elif [ "$$ix" == "128k" ];then \
			ERASE=0x20000; \
		elif [ "$$ix" == "256k" ];then \
			ERASE=0x40000; \
		else \
			ERASE="";\
		fi; \
		$(HOST_MKJFFS2) -d $(ROOTFS) -l -e "$${ERASE}" \
		-o $(TARGET)/rootfs_$${ix}.jffs2; \
		echo; \
	) done )
	@echo;

jffs2_clean:
	(for ix in $(CONFIG_SPIFLASH_BLOCK_SIZE) ; do ( \
		echo $$ix; \
		NAME=`echo $$ix`; \
		rm -fv ${TARGET}/rootfs_$$NAME.jffs2; \
	) done )

################################################################################
#
# make cramfs filesystem
#
PHONYS             += cramfs cramfs_clean
HOST_MKCRAMFS      := $(HOST_PREFIX)/mkfs.cramfs

cramfs: $(HOST_MKCRAMFS)
	$(HOST_MKCRAMFS) $(ROOTFS) $(TARGET)/rootfs.cramfs

cramfs_clean:
	@rm -fv ${TARGET}/rootfs.cramfs

################################################################################

PHONYS += distclean
distclean: clean $(HOST_CLEAN)
	@for ix in $(wildcard $(BUILD_ROOT)/*); do ( \
		test ! -f $$ix/Makefile || make -C $$ix ${MKFLAGS} distclean; \
	) done
	@test ! -d $(HOST_PREFIX) || rm -rf $(HOST_PREFIX)

PHONYS += clean
clean: $(patsubst %,%.clean,$(TOOLS-y))
	@test ! -d ${ROOTFS} || rm -rf ${ROOTFS}

################################################################################

PHONYS += help
help:
	@echo "make option as follow" 
	@for ix in $(PHONYS); do ( \
		echo "  make $$ix"; \
	) done
	@for ix in $(TOOLS-y); do ( \
		echo "  make $$ix/_build"; \
		echo "  make $$ix/_clean"; \
	) done

.PHONY: $(PHONY)
################################################################################
