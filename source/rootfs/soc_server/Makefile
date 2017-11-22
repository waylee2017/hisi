################################################################################
#    ./soc_server/Makefile
#    Create By jinghui 
#    2011.09.05
################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(shell pwd)/../../..
MSP_DIR :=$(SDK_DIR)/source/msp
COMMON_DIR := $(SDK_DIR)/source/common
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

PREFIX         ?= $(shell pwd)/rootfs
CROSS_COMPILE  ?= arm-hisiv200-linux-

################################################################################
BUILD_DIR      := $(shell pwd)/tmp
HOST           := $(patsubst %-,%,$(CROSS_COMPILE))
STRIP          := $(CROSS_COMPILE)strip
REGTOOLS       := soc_server
TARGETS        := bin/soc_server
USER_CFLAGS    ?= -march=armv7-a -mcpu=cortex-a9 -mfloat-abi=softfp -mfpu=vfpv3-d16
CFG_DEFS       := -DCHIP_TYPE_${CFG_HI_CHIP_TYPE}

export USER_CFLAGS
################################################################################

all: $(addprefix $(PREFIX)/,$(TARGETS))

$(PREFIX)/%: $(BUILD_DIR)/%
	test -d $(@D) || mkdir -p $(@D)
	install -v -t $(@D) $(BUILD_DIR)/$(REGTOOLS)/soc_server

$(addprefix $(BUILD_DIR)/,$(TARGETS)): \
    $(BUILD_DIR)/$(REGTOOLS)/tar
	@-rm -rf $(BUILD_DIR)/$(REGTOOLS)/hi_unf_i2c.c
	@-rm -rf $(BUILD_DIR)/$(REGTOOLS)/mpi_log.c
	@-rm -rf $(BUILD_DIR)/$(REGTOOLS)/mpi_memmap.c
	@-rm -rf $(BUILD_DIR)/$(REGTOOLS)/mpi_mem.c
	@-rm -rf $(BUILD_DIR)/$(REGTOOLS)/hi_osal.c
	@ln -s $(MSP_DIR)/api/i2c/unf_i2c.c $(BUILD_DIR)/$(REGTOOLS)/hi_unf_i2c.c
	@ln -s $(COMMON_DIR)/api/log/mpi_log.c $(BUILD_DIR)/$(REGTOOLS)/mpi_log.c
	@ln -s $(COMMON_DIR)/api/mem/mpi_memmap.c $(BUILD_DIR)/$(REGTOOLS)/mpi_memmap.c
	@ln -s $(COMMON_DIR)/api/mem/mpi_mem.c $(BUILD_DIR)/$(REGTOOLS)/mpi_mem.c
	@ln -s $(COMMON_DIR)/api/osal/hi_osal.c $(BUILD_DIR)/$(REGTOOLS)/hi_osal.c
	@cd $(BUILD_DIR)/$(REGTOOLS) && \
		make all CROSS_COMPILE=$(CROSS_COMPILE) \
			PREFIX=$(PREFIX) \
			CFG_DEFS=$(CFG_DEFS) && \
	cd -

$(BUILD_DIR)/%/tar:
	test -d $(@D) || mkdir -p $(@D)
	tar -xjf $(notdir $(@:/tar=)).tar.bz2 -C $(BUILD_DIR)
	@touch $@

################################################################################

clean:
	@test ! -d $(BUILD_DIR) || rm -rf $(BUILD_DIR)
	@(for ix in $(TARGETS); do \
		test ! -e $(PREFIX)/$$ix || rm -rf $(PREFIX)/$$ix; \
	done)
	@-rm -rf $(BUILD_DIR)/soc_server


menuconfig:
	@echo "not support"

distclean: clean

install:
	@echo "not support"

################################################################################
.PHONY: clean menuconfig distclean install
################################################################################
