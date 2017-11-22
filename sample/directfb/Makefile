DFB_SAMPLE=$(shell pwd)

#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/../..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#===================================================================
#dfb example version
#==================================================================
ifeq (${CFG_HI_DIRECTFB_1_6_1},y)
DFB_EX_VER = 1.6.0
else
DFB_EX_VER = 1.0.0
endif

#===================================================================
#compile
#==================================================================
.PHONY:all clean prepare
all:prepare
ifeq (${CFG_HI_DIRECTFB_SUPPORT},y)
	$(AT)make -C ${DFB_SAMPLE}/DirectFB-examples-${DFB_EX_VER} install
endif
clean:
ifeq (${CFG_HI_DIRECTFB_SUPPORT},y)
	-$(AT)rm -rf DirectFB-examples-${DFB_EX_VER}
	-$(AT)rm -rf ${DFB_SAMPLE}/sample
endif
	$(AT)echo "compiled finish"
prepare:
ifeq (${CFG_HI_DIRECTFB_SUPPORT},y)
	$(AT)mkdir -p ${DFB_SAMPLE}/sample/bin
	$(AT)mkdir -p ${DFB_SAMPLE}/sample/share/directfb-examples/fonts
	#$(AT)cp -rf $(SDK_DIR)/3rd/source/component/directfb/DirectFB-examples-${DFB_EX_VER}.tar.gz ${DFB_SAMPLE}/
	$(AT)tar -zxvf DirectFB-examples-${DFB_EX_VER}.tar.gz
	$(AT)cp -rf ${DFB_SAMPLE}/patch-for-DirectFB-Examples/DirectFB-examples-${DFB_EX_VER}.patch/* ${DFB_SAMPLE}/DirectFB-examples-${DFB_EX_VER}/
	$(AT)cp -rf ${DFB_SAMPLE}/patch-for-DirectFB-Examples/DirectFB-examples-new/*  ${DFB_SAMPLE}/DirectFB-examples-${DFB_EX_VER}/
	#$(AT)rm -rf DirectFB-examples-${DFB_EX_VER}.tar.gz
endif
	$(AT)echo "compiled finish"
