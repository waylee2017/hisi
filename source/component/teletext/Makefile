#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/base.mak
endif

TARGET := hi_ttx
#===============================================================================
# local variable
#===============================================================================
CFLAGS += $(CFG_HI_CFLAGS)
CFLAGS += -I$(SDK_DIR)/source/common/include
CFLAGS += -I$(SDK_DIR)/source/msp/include
CFLAGS += -I$(CURDIR)/include
CFLAGS += -DVER_V1R4

LIBS := lib$(TARGET)

#===============================================================================
# rules
#===============================================================================
.PHONY: all clean install uninstall

all:
ifndef CFG_HI_STATIC_LIB_ONLY
	make $(LIBS).so
endif
	make $(LIBS).a

clean:
	$(AT)rm -rf $(CURDIR)/$(LIBS).a
	$(AT)rm -rf $(CURDIR)/$(LIBS).so
	$(AT)rm -rf src/*.o

install: all
	$(AT)cp -af $(CURDIR)/$(LIBS).a  $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -af $(CURDIR)/$(LIBS).so $(SHARED_LIB_DIR)/
endif
	$(AT)cp -rf  ./include/* $(INCLUDE_DIR)/

uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(LIBS).a
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)rm -rf $(SHARED_LIB_DIR)/$(LIBS).so
endif
	$(AT)rm -rf $(INCLUDE_DIR)/hi_unf_ttx.h


source =  $(CURDIR)/src/hi_unf_ttx.c
source += $(CURDIR)/src/teletext_data.c
source += $(CURDIR)/src/teletext_mem.c
source += $(CURDIR)/src/teletext_parse.c
source += $(CURDIR)/src/teletext_recv.c
source += $(CURDIR)/src/teletext_showpage.c
source += $(CURDIR)/src/teletext_utils.c

objs=$(source:.c=.o)
	
$(LIBS).a: $(objs)
	$(AR) -rc -o $@ $^

$(LIBS).so: ${objs}
	$(CC) -shared -o $@ $^

%.o: %.c
	$(AT)$(CC) $(CFLAGS) -c $^ -o "$(CURDIR)/src/$(*F).o"
