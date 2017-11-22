SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak


PREFIX ?= $(shell pwd)/rootfs

COMMON_DIR=$(SDK_DIR)/source/common

LIB = -Wl,--start-group -lpthread -lm -Wl,--end-group
LIBPATH  = -L$(COMMON_DIR)/api
INCLUDE  = -I$(COMMON_DIR)/include
INCLUDE += -I$(COMMON_DIR)/api/log
INCLUDE += -I$(COMMON_DIR)/api/mmz
INCLUDE += -I$(COMMON_DIR)/api/mem
INCLUDE += -I$(COMMON_DIR)/api/module
INCLUDE += -I$(COMMON_DIR)/api/include
INCLUDE += -I$(COMMON_DIR)/drv/include
CFLAGS += $(CFG_HI_CFLAGS) $(INCLUDE)

OBJS := msp_debug.o losys.o \
	$(COMMON_DIR)/api/log/mpi_log.o \
	$(COMMON_DIR)/api/sys/hi_common.o \
	$(COMMON_DIR)/api/mem/mpi_memmap.o \
	$(COMMON_DIR)/api/module/mpi_module.o \
	$(COMMON_DIR)/api/stat/mpi_stat.o \
	$(COMMON_DIR)/api/mmz/mpi_mmz.o \
	$(COMMON_DIR)/api/mem/mpi_mem.o  \
	$(COMMON_DIR)/api/userproc/mpi_userproc.o \
        $(COMMON_DIR)/api/osal/hi_osal.o

.PHONY: all clean  
all: msp_debug 

msp_debug: $(OBJS)
	$(CC) -o $@ $^ $(LIBPATH) $(LIB)
	@test -d $(PREFIX)/bin || mkdir -p $(PREFIX)/bin
	@install -t $(PREFIX)/bin $@

clean: 
	rm -fr msp_debug
