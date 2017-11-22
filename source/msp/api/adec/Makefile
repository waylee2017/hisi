#===============================================================================
# export variable
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../../..

include $(SDK_DIR)/base.mak
endif

#===============================================================================
# local variable
#===============================================================================
CFLAGS  +=  $(CFG_HI_CFLAGS)

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                 \
            -I$(COMMON_API_INCLUDE)                 \
            -I$(COMMON_DRV_INCLUDE)                 \
            -I$(MSP_UNF_INCLUDE)                    \
            -I$(MSP_API_INCLUDE)                    \
            -I$(MSP_DRV_INCLUDE)                    \
            -I$(CURDIR)                             \
	    -I$(SDK_DIR)/source/common/api/mem/  

CFLAGS  += -DHI_ADEC_MAX_INSTANCE=$(CFG_HI_ADEC_MAX_INSTANCE)
CFLAGS  += -DHI_ADEC_OUTPUTBUF_FRAMENUM=$(CFG_HI_ADEC_OUTPUTBUF_FRAMENUM)

#LIBS := libhi_adecimple
#OBJS := mpi_adec_imple.o
LIBS :=
OBJS :=

#===============================================================================
# rules
#===============================================================================
.PHONY : all clean

all: $(LIBS)

clean:
	$(AT)rm -rf $(OBJS)

$(LIBS) : $(OBJS)
ifdef CFG_HI_ADVCA_FUNCTION
#	$(AT)$(AR) -rs $(CURDIR)/lib/libhi_adecimple_advca.a  $^  > /dev/null
else
#	$(AT)$(AR) -rs $(CURDIR)/lib/libhi_adecimple.a  $^  > /dev/null
endif

