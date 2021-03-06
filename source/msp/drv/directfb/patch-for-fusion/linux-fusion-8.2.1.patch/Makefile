# for native builds:
# make modules modules_install
# make KERNELDIR=<not currently running kernel's build tree> modules modules_install
# make KERNEL_VERSION=<uname -r of the not currently running kernel> modules modules_install
#
# for cross builds, using standard kernel make environment, i.e.
# make KERNELDIR=<linux build tree> INSTALL_MOD_PATH=<target root fs> modules modules_install


ifeq ($(CFG_HI_EXPORT_FLAG),)
    ifneq ($(KERNELRELEASE),)
    KERNEL_DIR := $(srctree)
    SDK_DIR := $(KERNEL_DIR)/../../../..
    else
    SDK_DIR := $(CURDIR)/../../../../..
    endif

    include $(SDK_DIR)/base.mak
endif
EXTRA_CFLAGS:=


export CROSS=$(CFG_HI_TOOLCHAINS_NAME)
export CROSS_COMPILE=$(CFG_HI_TOOLCHAINS_NAME)-
export ARCH=arm

ifeq (${CFG_HI_DIRECTFB_DEBUG_SUPPORT},y)
DEBUG=yes
else
DEBUG=no
endif

ifeq ($(findstring $(CFG_HI_TOOLCHAINS_NAME), aarch64-hisiv400-linux),)
FUSION_CPPFLAGS += -DFUSION_DEAL_WITH_WARNING
endif


KERNEL_VERSION   ?= $(shell uname -r)
INSTALL_MOD_PATH ?= /
KERNELDIR        ?= $(LINUX_DIR)

KERNEL_BUILD  = $(KERNELDIR)
# works for 2.6.23
KERNEL_SOURCE = $(shell grep ^KERNELSRC $(KERNEL_BUILD)/Makefile | cut -d ' ' -f 6)
ifeq ($(KERNEL_SOURCE), )
  # works for 2.6.32
  KERNEL_SOURCE = $(shell grep '^MAKEARGS := -C ' $(KERNEL_BUILD)/Makefile | cut -d ' ' -f 4)
endif
ifneq ($(KERNEL_SOURCE), )
  K_VERSION    = $(shell grep '^VERSION =' $(KERNEL_SOURCE)/Makefile | cut -d ' ' -f 3)
  K_PATCHLEVEL = $(shell grep '^PATCHLEVEL =' $(KERNEL_SOURCE)/Makefile | cut -d ' ' -f 3)
  K_SUBLEVEL   = $(shell grep '^SUBLEVEL =' $(KERNEL_SOURCE)/Makefile | cut -d ' ' -f 3)
else
  K_VERSION    = $(shell grep '^VERSION =' $(KERNEL_BUILD)/Makefile | cut -d ' ' -f 3)
  K_PATCHLEVEL = $(shell grep '^PATCHLEVEL =' $(KERNEL_BUILD)/Makefile | cut -d ' ' -f 3)
  K_SUBLEVEL   = $(shell grep '^SUBLEVEL =' $(KERNEL_BUILD)/Makefile | cut -d ' ' -f 3)
endif

SUB    = linux/drivers/char/fusion
SUBMOD = drivers/char/fusion

export CONFIG_FUSION_DEVICE=m


ifeq ($(DEBUG),yes)
  CPPFLAGS += -DFUSION_DEBUG_SKIRMISH_DEADLOCK
endif

ifeq ($(shell test -e $(KERNEL_BUILD)/include/linux/autoconf.h && echo yes),yes)
  AUTOCONF_H = -include $(KERNEL_BUILD)/include/linux/autoconf.h
endif

ifeq ($(shell test -e $(KERNEL_BUILD)/include/linux/config.h && echo yes),yes)
  CPPFLAGS += -DHAVE_LINUX_CONFIG_H
endif
CPPFLAGS += ${CFLAGS}

KMAKEFILE = Makefile-2.$(K_PATCHLEVEL)

ifeq ($(K_VERSION),4)
  KMAKEFILE = Makefile-2.6
endif

ifeq ($(K_VERSION),3)
  KMAKEFILE = Makefile-2.6
endif

check-version = $(shell expr \( $(K_VERSION) \* 65536 + $(K_PATCHLEVEL) \* 256 + $(K_SUBLEVEL) \) \>= \( $(1) \* 65536 + $(2) \* 256 + $(3) \))

.PHONY: all modules modules_install install clean

all: modules
install: modules_install headers_install

modules:
	rm -f $(SUB)/Makefile
	cp $(SUB)/$(KMAKEFILE) $(SUB)/Makefile
	echo kernel is in $(KERNEL_SOURCE) and version is $(K_SUBLEVEL)
ifeq ($(call check-version,2,6,24),1)
	$(MAKE) -C $(KERNEL_BUILD) \
		KCPPFLAGS="$(CPPFLAGS) -I`pwd`/linux/include" \
		SUBDIRS=`pwd`/$(SUB) modules
else
	$(MAKE) -C $(KERNEL_BUILD) \
		CPPFLAGS="$(CPPFLAGS) -D__KERNEL__ -I`pwd`/linux/include -I$(KERNEL_BUILD)/include -I$(KERNEL_BUILD)/include2 -I$(KERNEL_SOURCE)/include $(AUTOCONF_H)" \
		SUBDIRS=`pwd`/$(SUB) modules
endif

modules_install: modules
ifeq ($(K_PATCHLEVEL),4)
	install -d $(INSTALL_MOD_PATH)/lib/modules/$(KERNEL_VERSION)/drivers/char/fusion
	install -m 644 $(SUB)/fusion.o $(INSTALL_MOD_PATH)/lib/modules/$(KERNEL_VERSION)/drivers/char/fusion
	rm -f $(INSTALL_MOD_PATH)/lib/modules/$(KERNEL_VERSION)/fusion.o
	/sbin/depmod -ae -b $(INSTALL_MOD_PATH) $(KERNEL_VERSION)
else
ifeq ($(call check-version,2,6,24),1)
	$(MAKE) -C $(KERNEL_BUILD) \
		KCPPFLAGS="$(CPPFLAGS) -I`pwd`/linux/include" \
		INSTALL_MOD_DIR="$(SUBMOD)" \
		SUBDIRS=`pwd`/$(SUB) modules_install
else
	$(MAKE) -C $(KERNEL_BUILD) \
		CPPFLAGS="$(CPPFLAGS) -D__KERNEL__ -I`pwd`/linux/include -I$(KERNEL_BUILD)/include -I$(KERNEL_BUILD)/include2 -I$(KERNEL_SOURCE)/include $(AUTOCONF_H)" \
		SUBDIRS=`pwd`/$(SUB) modules_install
endif
endif

headers_install:
	install -d $(INSTALL_MOD_PATH)/usr/include/linux
	install -m 644 linux/include/linux/fusion.h $(INSTALL_MOD_PATH)/usr/include/linux



clean:
	find $(SUB) \( -name .git -prune \
		-o -name *.o -o -name *.ko -o -name .*.o.cmd \
		-o -name fusion.mod.* -o -name .fusion.* \
		-o -name Module.symvers -o -name modules.order \) \
		-type f -print | xargs rm -f
	find $(SUB) -name .tmp_versions -type d -print |  xargs rm -rf
	rm -f $(SUB)/Makefile
