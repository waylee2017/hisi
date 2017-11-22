#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../../../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	variable
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#objects:= disp flash gpio higo i2c ir pmoc
objects:= common db flash disp demux higo i2c gpio pdm

ifneq ($(CFG_HI3110EV500), y)
objects += hdmi
endif

ifeq ($(CFG_HI_BUILD_WITH_FRONTEND), y)
objects += frontend
endif

ifeq ($(CFG_HI_BUILD_WITH_IR), y)
objects += ir
endif

ifeq ($(CFG_HI_BUILD_WITH_KEYLED), y)
objects += keyled
endif


ifeq ($(CFG_HI_ADVCA_SUPPORT), y)
objects += advca
endif

objects += otp
objects_clean:=${addsuffix _clean,${objects}}
objects_install:=${addsuffix _install,${objects}}
objects_uninstall:=${addsuffix _uninstall,${objects}}

LIBS := libdriver.a
SUBLIBS := ${foreach sub,${objects},${sub}/lib${sub}.a}

ifeq ($(CFG_HI_ADVCA_TYPE),NAGRA)
SUBLIBS += advca/nagra/libsbp.a
endif

ifeq ($(CFG_HI_ADVCA_TYPE),VERIMATRIX)
SUBLIBS += advca/vmx/vmx_bl_verify_lib/libvmx_bl_verify.a
endif

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#	rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#==================================================================
#                          all
#==================================================================
.PHONY: prepare all clean install uninstall $(LIBS)

all: prepare ${objects} $(LIBS)
prepare:
	make -C higo prepare

clean:  ${objects_clean}
	$(AT)rm -rf libdriver.a
	$(AT)rm -rf ar.mak

install:${objects_install}

uninstall:${objects_uninstall}

$(LIBS): $(objects)
	$(AT)rm -rf $@
	$(AT)rm -rf ar.mak
	$(AT)echo "CREATE $@" >> ar.mak
	$(AT)${foreach sublib,${SUBLIBS},echo "ADDLIB $(sublib)" >> ar.mak;}
	$(AT)echo "SAVE" >> ar.mak
	$(AT)echo "END" >> ar.mak
	$(AT)ar -M < ar.mak
	
#==================================================================
#                          modules
#==================================================================
.PHONY: ${objects} ${objects_clean} ${objects_install} ${objects_uninstall}

${objects}: | prepare
	make -C $@ all
	
${objects_clean}:
	make -C ${patsubst %_clean,%,$@} clean

${objects_install}:
	make -C ${patsubst %_clean,%,$@} install

${objects_uninstall}:
	make -C ${patsubst %_clean,%,$@} uninstall
