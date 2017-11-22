################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../../..

include $(SDK_DIR)/base.mak
endif

LOADER_API_DIR := $(SDK_DIR)/source/component/loader/api

################################################################################
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)

CC    ?= $(CROSS_COMPILE)gcc
AR    ?= $(CROSS_COMPILE)ar

################################################################################
source =  $(LOADER_API_DIR)/src/loaderdb_info.c
source +=  $(LOADER_API_DIR)/src/hi_loader_info.c
source +=  $(LOADER_API_DIR)/src/crc32.c

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
source +=  $(LOADER_API_DIR)/src/ca_ssd.c
source +=  $(LOADER_API_DIR)/src/cx_config.c
source +=  $(LOADER_API_DIR)/src/cx_ssd.c
endif

objs=$(source:.c=.o)

CFG_INC = -I$(LOADER_API_DIR)/include
CFG_INC += -I$(COMMON_DIR)/include
CFG_INC += -I$(COMMON_DIR)/api/flash/include
CFG_INC += -I$(MSP_DIR)/include
ifndef CFG_HI_CFLAGS
CFG_HI_CFLAGS= -Wall -g -march=armv5te -ggdb
ifeq ($(CFG_HI_ADVCA_TYPE),VERIMATRIX)
CFG_HI_CFLAGS += -DHI_ADVCA_TYPE_VERIMATRIX
endif
endif

SLIB := libhiloader.a
DLIB := libhiloader.so
	
target= $(SLIB)

ifndef CFG_HI_STATIC_LIB_ONLY
target += $(DLIB)
endif

all:$(target)
	
$(SLIB): $(objs)
	$(AR) -rc -o $@ $^

$(DLIB): ${objs}
	$(CC) -shared -o $@ $^

%.o: %.c
	@echo cc: $^
	@$(CC) $(CFG_HI_CFLAGS) -c $^ -o "$(LOADER_API_DIR)/src/$(*F).o" $(CFG_INC)

install: all
	@-cp -rvf $(LOADER_API_DIR)/include/hi_loader_info.h $(INCLUDE_DIR)
	@-cp -rvf $(LOADER_API_DIR)/$(SLIB) $(STATIC_LIB_DIR)
ifndef CFG_HI_STATIC_LIB_ONLY
	@-cp -rvf $(LOADER_API_DIR)/$(DLIB) $(SHARED_LIB_DIR)
endif
	@echo "make $@ over !"

uninstall:
	@-rm -rf $(INCLUDE_DIR)/hi_loader_info.h
	@-rm -rf $(STATIC_LIB_DIR)/$(SLIB)
ifndef CFG_HI_STATIC_LIB_ONLY
	@-rm -rf $(SHARED_LIB_DIR)/$(DLIB)
endif
	@echo "make $@ over !"
clean:
	@rm *.o -rvf
	@rm -rf $(LOADER_API_DIR)/src/*.o
	@rm -f $(target)
	@echo "make $@ over !"
