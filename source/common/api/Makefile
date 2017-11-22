#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS  += $(CFG_HI_CFLAGS)

CFLAGS += -I$(MSP_DIR)/api/include
CFLAGS += -I$(COMMON_DIR)/include
CFLAGS += -I$(COMMON_DIR)/api/include
CFLAGS += -I$(COMMON_DIR)/drv/include
CFLAGS += -I$(COMMON_DIR)/api/stat
CFLAGS += -I$(COMMON_DIR)/api/sys
CFLAGS += -I$(COMMON_DIR)/api/log
CFLAGS += -I$(COMMON_DIR)/api/mem
CFLAGS += -I$(COMMON_DIR)/api/mmz
CFLAGS += -I$(COMMON_DIR)/api/module
CFLAGS += -I$(COMMON_DIR)/drv/module
CFLAGS += -I$(COMMON_DIR)/drv/mem

#depends on MCE just to be in agreement on X5HD UNF
CFLAGS += -I$(MSP_DIR)/include
CFLAGS += -I$(MSP_DIR)/drv/include
CFLAGS += -I$(MSP_DIR)/api/higo/include
CFLAGS += -I$(COMMON_DIR)/api/flash/include

ifeq (y,$(CFG_HI_TEST_SUPPORT))
CFLAGS += -I$(COMMON_DIR)/drv/test
endif

LIBS := libhi_common
        
OBJS := ./sys/hi_common.o     \
        ./mmz/mpi_mmz.o       \
        ./mem/mpi_mem.o       \
        ./mem/mpi_mutils.o    \
        ./mem/mpi_memmap.o    \
        ./mem/mpi_mmgr.o      \
        ./module/mpi_module.o \
        ./log/mpi_log.o       \
	./stat/mpi_stat.o    \
	./userproc/mpi_userproc.o \
        ./osal/hi_osal.o

HIFLASH_DIR := ./flash
CFLAGS += -I$(HIFLASH_DIR)/include
OBJS += $(HIFLASH_DIR)/src/hi_flash.o \
        $(HIFLASH_DIR)/src/nand.o \
        $(HIFLASH_DIR)/src/spi_raw.o \
        $(HIFLASH_DIR)/src/nand_raw.o \
        $(HIFLASH_DIR)/src/cmdline_parts.o

ifeq (y,$(CFG_HI_EMMC_SUPPORT))	
OBJS += $(HIFLASH_DIR)/src/emmc_raw.o
endif

DEPENDS := $(patsubst %.o, %.d, $(OBJS))

ifeq (y,$(CFG_HI_TEST_SUPPORT))
CFLAGS += -DCMN_TEST_SUPPORTED
OBJS   += ./test/mpi_test.o
endif

PUB_HEADERS  := $(COMMON_DIR)/include/hi_common.h   \
                $(COMMON_DIR)/include/hi_debug.h    \
                $(COMMON_DIR)/include/hi_module.h   \
                $(COMMON_DIR)/include/hi_flash.h    \
                $(COMMON_DIR)/include/hi_type.h

ifeq ("$(origin V)", "command line")
ifeq ($V,0)
AT := @
endif
else
AT := @
endif

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all: $(DEPENDS) $(LIBS)

clean:
	$(AT)-rm -f $(LIBS).a
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)-rm -f $(LIBS).so
endif
	$(AT)find $(COMMON_DIR)/ -name "*.[dios]" -exec rm {} \;
	$(AT)find $(COMMON_DIR)/ -name "*.d.*" -exec rm {} \;
	
install:all
	$(AT)cp -f $(PUB_HEADERS) $(INCLUDE_DIR)/
	$(AT)cp -f $(LIBS).a  $(STATIC_LIB_DIR)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)-cp -f $(LIBS).so $(SHARED_LIB_DIR)
endif
	$(AT)echo "Install common resources completed."
	
uninstall:
	$(AT)cd $(INCLUDE_DIR) && rm -f $(notdir $(PUB_HEADERS)) ; cd - 1>/dev/null
	$(AT)rm -f $(STATIC_LIB_DIR)/$(LIBS).a
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)-rm -f $(SHARED_LIB_DIR)/$(LIBS).so
endif
	$(AT)rm -f $(INCLUDE_DIR)/hi_flash.h
	$(AT)echo "Uninstall common resources completed."

#################################################################################
## Building library
$(LIBS): $(OBJS)
	$(AT)$(AR) -rcs $@.a $^
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -fPIC -o $@.so $^
endif
	$(AT)echo "Build $@ has completed."

## Building api objects
## using: -save-temps for temporary files
#${OBJS}: %.o : %.c
#	$(AT)echo "Compiling $@..."
#	$(AT)$(CC) $(CFLAGS) -c $< -o $@

$(DEPENDS):%.d:%.c
	$(AT)echo "[$(CC)] $@..."
	$(AT)set -e; rm -f $@; \
	$(CC) -MM $(CFLAGS) $< > $@.$$$$; \
	sed 's,\($(notdir $*)\)\.o[ :]*,$(dir $@)\1.o $@ : ,g' < $@.$$$$ > $@; \
	rm -f $@.$$$$
	
-include $(DEPENDS)
