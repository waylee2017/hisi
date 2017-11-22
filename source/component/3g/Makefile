################################################################################
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR     := $(shell pwd)/../../..
LIB_DIR     := $(SDK_DIR)/pub/lib
SHARED_LIB_DIR:= $(LIB_DIR)/share
STATIC_LIB_DIR:= $(LIB_DIR)/static
INCLUDE_DIR := $(SDK_DIR)/pub/include
ROOTFS_DIR  := $(SDK_DIR)/pub/rootfs
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

HI3G_DIR := $(SDK_DIR)/source/component/3g

################################################################################
CROSS_COMPILE         := \
	$(if $(CROSS_COMPILE),$(CROSS_COMPILE),arm-hisiv200-linux-)

CC    ?= $(CROSS_COMPILE)gcc
AR    ?= $(CROSS_COMPILE)ar

################################################################################
source =  $(HI3G_DIR)/hi_3g_intf.c
source +=  $(HI3G_DIR)/3g_intf.c
source +=  $(HI3G_DIR)/3g_ids.c

objs=$(source:.c=.o)

CFG_INC = -I$(HI3G_DIR)
CFG_INC += -I$(SDK_DIR)/source/common/include
ifndef CFG_HI_CFLAGS
CFG_HI_CFLAGS= -Wall -g -march=armv7-a -ggdb
endif

SLIB := libhi3g.a
DLIB := libhi3g.so
	
target= $(SLIB) $(DLIB)

all:$(target)
	
$(SLIB): $(objs)
	$(AR) -rc -o $@ $^

$(DLIB): ${objs}
	$(CC) -shared -o $@ $^

%.o: %.c
	@echo cc: $^
	@$(CC) $(CFG_HI_CFLAGS) -fPIC -c $^ -o "$(HI3G_DIR)/$(*F).o" $(CFG_INC)

install: all
	@-cp -rvf $(HI3G_DIR)/hi_3g_intf.h $(INCLUDE_DIR)
	@-cp -rvf $(HI3G_DIR)/libhi3g.a $(STATIC_LIB_DIR)
	@-cp -rvf $(HI3G_DIR)/libhi3g.so $(SHARED_LIB_DIR)
	@echo "make $@ over !"

uninstall:
	@-rm -rf $(INCLUDE_DIR)/hi_3g_intf.h
	@-rm -rf $(STATIC_LIB_DIR)/libhi3g.a
	@-rm -rf $(SHARED_LIB_DIR)/libhi3g.so
	@echo "make $@ over !"
clean:
	@rm *.o -rvf
	@rm -rf $(HI3G_DIR)/src/*.o
	@rm -f $(target)
	@echo "make $@ over !"
