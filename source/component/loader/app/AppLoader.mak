#===============================================================================
# for apploader only
#===============================================================================
CFLAGS += -I$(COMMON_UNF_INCLUDE)
CFLAGS += -I$(MSP_UNF_INCLUDE)
CFLAGS += -I$(PUB_DIR)/include
CFLAGS += -I$(COMMON_DIR)/api/flash/include 
CFLAGS += -I$(COMPONENT_DIR)/curl/include
CFLAGS += -I$(COMPONENT_DIR)/loader/app/ca/

ROOTBOXHOME_DIR := $(SDK_DIR)/pub/rootbox/home
ROOTBOXHOME_EXIST := $(shell if [ -d $(ROOTBOXHOME_DIR) ]; then echo "exist"; else echo "notexist"; fi;)

LOADER_SRC += hi_adp_osd.c \
              crc32.c


LD_FLAGS += -Wl,--start-group
ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
ifneq ($(CFG_HI_ADVCA_TYPE), VERIMATRIX)
ifeq ($(CFG_HI_ADVCA_TYPE), NAGRA)
CFLAGS += -I$(COMPONENT_DIR)/loader/app/ca/nasc/include
LIBPATH += -L$(COMPONENT_DIR)/loader/app/ca/nasc/api
LD_FLAGS += -lrt -ldl -lm -lpthread -l:libhi_common.a -l:libhigo.a -lfreetype -lz -l:libpng.a -l:libhigoadp.a -l:libjpeg.a -lhi_ssd -lhi_ca_ssd -l:libhi_nagra.a \
		-lhi_mpi

else
CFLAGS += -I$(COMPONENT_DIR)/loader/app/ca/cx/include
LD_FLAGS += -lrt -ldl -lm -lpthread -l:libhi_common.a -l:libhigo.a -lfreetype -lz -l:libpng.a -l:libhigoadp.a -l:libjpeg.a -lhi_ca_ssd \
		-lhi_mpi
endif
else
CFLAGS += -I$(COMPONENT_DIR)/loader/app/ca/vmx/include
LD_FLAGS += -lrt -ldl -lm -lpthread -l:libhi_common.a -l:libhigo.a -lfreetype -lz -l:libpng.a -l:libhigoadp.a -l:libjpeg.a -lhi_vmx_loader_verify -lhi_ca_ssd \
		-lhi_mpi
LIBPATH += -L$(COMPONENT_DIR)/loader/app/ca/vmx/vmx_loader_verify_lib/
endif
LIBPATH += -L$(COMPONENT_DIR)/loader/app/ca/

else

LD_FLAGS += -lpthread -lhi_mpi -lrt -ldl -lm -lz -lhi_common \
            -lhigo -lfreetype -lhigoadp -ljpeg -lpng
endif

ifeq ($(CFG_HI_CURL_SUPPORT)_$(CFG_HI_APPLOADER_MODE_IP), y_y)
LD_FLAGS += -l:libcurl.a 
endif

LD_FLAGS += -Wl,--end-group

LIBPATH += -L$(STATIC_LIB_DIR) -L$(SHARED_LIB_DIR)

image = loader

.PHONY: all install clean ca ca_clean

all: ca $(image)

ca:
ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
	$(AT)make -C $(COMPONENT_DIR)/loader/app/ca
	$(AT)echo "make ca successful."
endif

$(LOADER_SRC):prepare

$(image): $(LOADER_SRC)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBPATH) $(LD_FLAGS) 
	$(STRIP) $@

ifeq ($(CFG_HI_CHIP_TYPE), hi3716mv330)
FONTFILE := res/loader_gb2312.ubf
else
FONTFILE := /res/DroidSansFallbackLegacy.ttf
endif

install: all
	mkdir -p release
	-$(AT)cp -rvf $(CURDIR)/$(image) release
	-$(AT)cp -rvf $(CURDIR)/$(FONTFILE) release
	-$(AT)cd release; find . -name .svn | xargs rm -Rf; cd -
ifeq ($(ROOTBOXHOME_EXIST), exist)
ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
	-$(AT)$(SCP) -rvf $(CURDIR)/$(image) $(ROOTBOXHOME_DIR)
	-$(AT)$(SCP) -rvf $(CURDIR)/$(FONTFILE) $(ROOTBOXHOME_DIR)
else
	-$(AT)cp -rvf $(CURDIR)/$(image) $(ROOTBOXHOME_DIR)
	-$(AT)cp -rvf $(CURDIR)/$(FONTFILE) $(ROOTBOXHOME_DIR)
endif
endif
ca_clean:
ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
	$(AT)make -C $(COMPONENT_DIR)/loader/app/ca clean
	$(AT)echo "make ca clean successful."
endif

clean: ca_clean
	rm -f $(image)
	rm -f *.o
	rm -Rf release

uninstall: clean
	


	
