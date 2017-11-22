#=======================================
#   export varibale
#=======================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR ?= $(CURDIR)/../../..

include $(SDK_DIR)/base.mak
endif

#=======================================
#   local varibale
#=======================================
ifeq ($(CFG_LIB_JPEG_VERSION_6B),y)
JPEG_VER := 6b
else ifeq ($(CFG_LIB_JPEG_VERSION_NEWEST),y)
JPEG_VER := soft
endif


ADSP_DRV_DIR := $(MSP_DIR)/drv/adsp/adsp_v1_1

CFLAGS  +=  $(CFG_HI_CFLAGS)

CFLAGS  +=  -I$(COMMON_UNF_INCLUDE)                    \
            -I$(COMMON_API_INCLUDE)                    \
            -I$(COMMON_DRV_INCLUDE)                    \
            -I$(MSP_UNF_INCLUDE)                       \
            -I$(MSP_API_INCLUDE)                       \
            -I$(MSP_DRV_INCLUDE)                       \
            -I$(MSP_DIR)/api/adec                      \
            -I$(SDK_DIR)/source/common/api/mem/        \
            -I$(MSP_DIR)/api/ci                        \
            -I$(MSP_DIR)/drv/demux                     \
            -I$(MSP_DIR)/api/vo                        \
            -I$(MSP_DIR)/api/pvr/include               \
            -I$(MSP_DIR)/drv/mce                       \
            -I$(MSP_DIR)/api/higo/include              \
            -I$(MSP_DIR)/api/jpeg/inc/inc_${JPEG_VER}  \
            -I$(MSP_DIR)/api/jpeg/inc/inc_hard         \
            -I$(MSP_DIR)/api/jpge/include              \
            -I$(MSP_DIR)/drv/jpge/include              \
            -I$(MSP_DIR)/api/tde/include               \
            -I$(MSP_DIR)/drv/tde		       \
            -I$(MSP_DIR)/api/ao                        \
            -I$(ADSP_DRV_DIR)/include                  \
            -I$(ADSP_DRV_DIR)/include/comp             \
            -I$(MSP_DIR)/drv/vfmw/vfmw_v4.0            \
            -I$(MSP_DIR)/drv/vfmw/vfmw_release	       \
            -I$(MSP_DIR)/drv/vdec                      \
            -I$(COMPONENT_DIR)/ha_codec/include        \
            -I$(COMPONENT_DIR)/ha_effect/include

MSP_LIBNAME     := libhi_mpi
MSP_STATIC_LIB  := $(MSP_LIBNAME).a
MSP_SHARE_LIB   := $(MSP_LIBNAME).so

#--------------- GPIO ------------------
MSP_OBJS := gpio/unf_gpio.o

#--------------- HDMI ------------------
ifneq ($(CFG_HI3110EV500), y)
MSP_OBJS += hdmi/mpi_hdmi.o         \
            hdmi/unf_hdmi.o
endif

#--------------- VO ------------------
MSP_OBJS += vo/unf_vo.o         \
            vo/unf_display.o    \
            vo/mpi_disp.o       \
	    vo/mpi_vo.o		

# MV310 MV330 Don't support LCD
# HI_DISP_LCD_SUPPORT

ifneq ($(CFG_HI_CHIP_TYPE), hi3716mv330)
CFLAGS += -DHI_DISP_CGMS_SUPPORT -DHI_DISP_ACC_SUPPORT -DHI_DISP_MACROVISION_SUPPORT 
CFLAGS += -DHI_VDP_PUTGETFRAME_SUPPORT -DHI_VDP_EXTERNALBUFFER_SUPPORT -DHI_VDP_VIRTUAL_WIN_SUPPORT
endif

ifeq ($(CFG_HI_DISP_CC_SUPPORT), y)
CFLAGS += -DHI_DISP_CC_SUPPORT
endif

ifeq ($(CFG_HI_DISP_TTX_SUPPORT), y)
CFLAGS += -DHI_DISP_TTX_SUPPORT
endif

#--------------- PDM ------------------
#MSP_OBJS += pdm/unf_pdm.o pdm/mpi_pdm.o pdm/db/hi_db.o

#--------------- CIPHER ------------------
ifeq ($(CFG_HI_CIPHER_MULTICIPHER_SUPPORT),y)
CFLAGS += -DCFG_HI_CIPHER_MULTICIPHER_SUPPORT
ifeq ($(CFG_HI_CIPHER_AES_CBCMAC),y)
CFLAGS += -DCFG_HI_CIPHER_AES_CBCMAC
endif
ifeq ($(CFG_HI_CIPHER_MULTI_PACKGET),y)
CFLAGS += -DCFG_HI_CIPHER_MULTI_PACKGET
endif
endif
ifeq ($(CFG_HI_CIPHER_HDCP_SUPPORT),y)
CFLAGS += -DCFG_HI_CIPHER_HDCP_SUPPORT
endif
ifeq ($(CFG_HI_CIPHER_HASH_SUPPORT),y)
CFLAGS += -DCFG_HI_CIPHER_HASH_SUPPORT
ifeq ($(CFG_HI_CIPHER_HASH_IRDETO_CBCMAC),y)
CFLAGS += -DCFG_HI_CIPHER_HASH_IRDETO_CBCMAC
endif
ifeq ($(CFG_HI_CIPHER_HASH_HMAC),y)
CFLAGS += -DCFG_HI_CIPHER_HASH_HMAC
endif
endif
ifeq ($(CFG_HI_CIPHER_RNG_SUPPORT),y)
CFLAGS += -DCFG_HI_CIPHER_RNG_SUPPORT
endif
MSP_OBJS += cipher/unf_cipher.o
MSP_OBJS += cipher/mpi_cipher.o

#--------------- ADVCA ------------------
CFLAGS += -DSDK_SECURITY_ARCH_VERSION_V3

ifeq ($(CFG_HI_PVR_SUPPORT),y)
CFLAGS += -DHI_PVR_SUPPORT
endif

MSP_OBJS += advca/unf_advca.o

#--------------- PWM ------------------
#MSP_OBJS += pwm/unf_pwm.o

#--------------- I2C ------------------
MSP_OBJS += i2c/unf_i2c.o

#--------------- FRONTEND ------------------
#ifeq ($(CFG_HI_FRONTEND_SUPPORT),y)
MSP_OBJS += frontend/unf_tuner.o

ifeq ($(CFG_HI_DISEQC_SUPPORT),y)
CFLAGS += -DDISEQC_SUPPORT

MSP_OBJS += frontend/unf_diseqc.o
MSP_OBJS += frontend/unf_unicable.o
endif
#endif

#--------------- IR ------------------
ifeq ($(CFG_HI_IR_TYPE_STD),y)
MSP_OBJS += ir/unf_ir_std.o
endif

ifeq ($(CFG_HI_IR_TYPE_S2),y)
MSP_OBJS += ir/unf_ir.o
endif


#--------------- DEMUX ------------------
MSP_OBJS += demux/mpi_demux.o           \
            demux/unf_demux.o           \
            demux/mpi_descrambler.o     \
            demux/unf_descrambler.o

#--------------- TDE ------------------
MSP_OBJS += tde/src/unf_tde.o

#--------------- JPGE ------------------
#MSP_OBJS += jpge/src/unf_jpge.o

#--------------- OTP ------------------
MSP_OBJS += otp/unf_otp.o otp/otp/mpi_otp.o

#--------------- PM ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
CFLAGS += -DHI_KEYLED_SUPPORT
endif

MSP_OBJS += pm/unf_pmoc.o
endif

#--------------- AVPLAY ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
ifeq ($(CFG_HI_MSP_BUILDIN),y)
CFLAGS += -DHI_MSP_BUILDIN
endif

ifeq ($(CFG_HI_AVPLAY_FCC_SUPPORT),y)
#CFLAGS += -DHI_AVPLAY_FCC_SUPPORT
MSP_OBJS += avplay/mpi_avplay.o     \
            avplay/unf_avplay.o	    \
	    avplay/frame_detect.o   \
	    avplay/bitstream.o
else
MSP_OBJS += avplay/mpi_avplay.o     \
            avplay/unf_avplay.o	    
endif
endif

#--------------- PVR ------------------
ifeq ($(CFG_HI_PVR_SUPPORT),y)
CFLAGS += -D_GNU_SOURCE -D_XOPEN_SOURCE=600
CFLAGS += -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64

ifeq ($(CFG_HI_PVR_EXTRA_BUF_SUPPORT),y)
CFLAGS += -DHI_PVR_EXTRA_BUF_SUPPORT
CFLAGS += -DHI_PVR_FIFO_DIO
endif

ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
CFLAGS += -DHI_PVR_SOFT_INDEX_SUPPORT
endif

ifdef CFG_HI_ADVCA_FUNCTION
SMOOTH_OBJS := $(shell cd pvr && $(AR) -x lib/$(CFG_HI_TOOLCHAINS_NAME)/libhi_pvrsmooth_advca.a && echo hi_pvr_smooth_ctrl.o)
else
SMOOTH_OBJS := $(shell cd pvr && $(AR) -x lib/$(CFG_HI_TOOLCHAINS_NAME)/libhi_pvrsmooth.a && echo hi_pvr_smooth_ctrl.o)
endif

MSP_OBJS += pvr/hi_pvr_fifo.o           \
            pvr/hi_pvr_buffer.o		\
            pvr/hi_pvr_index.o          \
            pvr/hi_pvr_intf.o           \
            pvr/hi_pvr_play_ctrl.o      \
            pvr/hi_pvr_rec_ctrl.o       \
            pvr/unf_pvr.o
ifeq ($(CFG_HI_CHIP_TYPE),hi3716mv330)
MSP_OBJS += pvr/hi_pvr_smooth_ctrl_v2.o
else
MSP_OBJS += pvr/hi_pvr_smooth_ctrl.o
endif			
endif

#--------------- SYNC ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
MSP_OBJS += sync/mpi_sync.o
endif

#--------------- AO ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
ifeq ($(CFG_HI_AI_SUPPORT),y)
CFLAGS += -DHI_SOUND_AI_SUPPORT
endif

ifeq ($(CFG_HI_HAEFFECT_BASE_SUPPORT),y)
CFLAGS += -DHI_HAEFFECT_BASE_SUPPORT
endif

ifeq ($(CFG_HI_HAEFFECT_SRS_SUPPORT),y)
CFLAGS += -DHI_HAEFFECT_SRS_SUPPORT
endif

ifeq ($(CFG_HI_SND_AVC_SUPPORT),y)
CFLAGS += -DHI_SND_AVC_SUPPORT
endif

MSP_OBJS += ao/unf_sound.o  \
            ao/mpi_ao.o
endif

#--------------- ADEC ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
CFLAGS += -DHI_ADEC_MAX_INSTANCE=$(CFG_HI_ADEC_MAX_INSTANCE)
CFLAGS += -DHI_ADEC_OUTPUTBUF_FRAMENUM=$(CFG_HI_ADEC_OUTPUTBUF_FRAMENUM)

MSP_OBJS += adec/mpi_adec.o         \
            adec/mpi_adec_core.o    

ifeq ($(CFG_HI_ADEC_AUDSPECTRUM_SUPPORT),y)
CFLAGS +=-DHI_ADEC_AUDSPECTRUM_SUPPORT

MSP_OBJS += adec/mpi_adec_waveform.o
endif
endif

#--------------- VDEC ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)

ifdef CFG_HI_VDEC_MAX_INSTANCE
CFLAGS += -DHI_VDEC_MAX_INSTANCE=$(CFG_HI_VDEC_MAX_INSTANCE)
else
CFLAGS += -DHI_VDEC_MAX_INSTANCE=16
endif

ifeq (y,$(CFG_HI_VDEC_MJPEG_SUPPORT))
CFLAGS += -DHI_VDEC_MJPEG_SUPPORT=1
else
CFLAGS += -DHI_VDEC_MJPEG_SUPPORT=0
endif

ifeq (y,$(CFG_HI_VDEC_REG_CODEC_SUPPORT))
CFLAGS += -DHI_VDEC_REG_CODEC_SUPPORT=1
else
CFLAGS += -DHI_VDEC_REG_CODEC_SUPPORT=0
endif

ifeq (y,$(CFG_HI_VDEC_USERDATA_CC_SUPPORT))
CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=1
ifneq (,$(CFG_HI_VDEC_USERDATA_CC_BUFSIZE))
CFLAGS += -DHI_VDEC_USERDATA_CC_BUFSIZE=$(CFG_HI_VDEC_USERDATA_CC_BUFSIZE)
else
CFLAGS += -DHI_VDEC_USERDATA_CC_BUFSIZE=0xC000
endif
else
CFLAGS += -DHI_VDEC_USERDATA_CC_SUPPORT=0
endif

ifeq (y,$(CFG_HI_VDEC_DSD_SUPPORT))
CFLAGS += -DHI_VDEC_DSD_SUPPORT=1
else
CFLAGS += -DHI_VDEC_DSD_SUPPORT=0
endif

MSP_OBJS += vdec/hi_codec.o         \
            vdec/mpi_vdec_adapter.o \
            vdec/mpi_vdec.o

ifeq ($(CFG_HI_VDEC_MJPEG_SUPPORT),y)
MSP_OBJS += vdec/mpi_vdec_mjpeg.o
endif

#ifeq ($(CFG_HI_VDEC_VPU_SUPPORT),y)
#MSP_OBJS += vdec/mpi_vdec_vpu.o
#endif

endif

#--------------- WDG ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
ifeq ($(findstring $(CFG_HI_CHIP_TYPE), hi3798mv100 hi3796mv100),)
MSP_OBJS += wdg/unf_wdg.o
endif
endif

#--------------- VPU ------------------
ifeq ($(CFG_HI_VDEC_VPU_SUPPORT),y)
CFLAGS  +=  -Dlinux
CFLAGS  +=  -I$(MSP_DIR)/api/vpu/vdi/linux/driver    \
            -I$(MSP_DIR)/api/vpu/vpuapi              \
            -I$(MSP_DIR)/api/vpu/vpuapi/coda9        \
            -I$(MSP_DIR)/api/vpu/vpuapi/wave4

MSP_OBJS += vpu/vdi/mm.o               \
            vpu/vdi/linux/vdi.o        \
            vpu/vdi/linux/vdi_osal.o   \
            vpu/vpuapi/product.o       \
            vpu/vpuapi/vpuapi.o        \
            vpu/vpuapi/vpuapifunc.o    \
            vpu/vpuapi/coda9/coda9.o   \
            vpu/vpuapi/wave4/wave4.o
endif

#--------------- MCE ------------------
ifneq ($(CFG_HI_LOADER_APPLOADER),y)
MSP_OBJS += mce/unf_mce.o
endif

#--------------- AI ------------------
ifeq ($(CFG_HI_AI_SUPPORT),y)
MSP_OBJS += ai/unf_ai.o  ai/mpi_ai.o
endif

#--------------- KEYLED ------------------
ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
MSP_OBJS += keyled/unf_keyled.o
endif

#--------------- AENC ------------------
ifeq ($(CFG_HI_AENC_SUPPORT),y)
ifeq ($(CFG_HI_AI_SUPPORT),y)
CFLAGS += -DHI_AENC_AI_SUPPORT
endif

MSP_OBJS += aenc/unf_aenc.o         \
            aenc/mpi_aenc.o         \
            aenc/mpi_aenc_core.o    \
            aenc/mpi_aenc_lsrc.o
endif

#--------------- CI ------------------
ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
MSP_OBJS += ci/unf_ci.o
#MSP_OBJS += ci/mpi_ci.o
endif

#--------------- HDCP ------------------
ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP),y)
MSP_OBJS += hdcp/unf_hdcp.o
endif

#--------------- SCI ------------------
ifeq ($(CFG_HI_SCI_SUPPORT),y)
MSP_OBJS += sci/unf_sci.o
endif

#--------------- VI ------------------
ifeq ($(CFG_HI_VI_SUPPORT),y)
ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716cv200 hi3718cv100 hi3719cv100),)
CFLAGS += -DHI_VI_REAL_SUPPORT
endif

ifneq ($(findstring $(CFG_HI_CHIP_TYPE), hi3796cv100 hi3798cv100),)
ifeq ($(CFG_HI_HDMI_RX_SUPPORT),y)
CFLAGS += -DHI_VI_REAL_SUPPORT
CFLAGS += -DHI_HDMI_RX_SUPPORT
endif
endif

MSP_OBJS += vi/mpi_vi.o  vi/unf_vi.o
endif

#--------------- VENC ------------------
ifeq ($(CFG_HI_VENC_SUPPORT),y)
MSP_OBJS += venc/mpi_venc.o  venc/unf_venc.o
endif

#--------------- PQ ------------------
ifeq ($(CFG_HI_PQ_V1_0),y)
MSP_OBJS += pq/pq_v1_0/unf_pq.o   \
            pq/pq_v1_0/mpi_pq.o   \
            pq/pq_v1_0/mpi_pq_tran.o
endif

ifeq ($(CFG_HI_PQ_V2_0),y)
MSP_OBJS += pq/pq_v2_0/mpi_pq.o   \
            pq/pq_v2_0/unf_pq.o
endif

#ifeq ($(CFG_HI_PQ_V3_0),y)
#MSP_OBJS += pq/pq_v2_0/mpi_pq.o   \
#            pq/pq_v2_0/unf_pq.o
#endif
#-------------------------------------

objects := jpeg png higo

#ifneq ($(CFG_HI_LOADER_APPLOADER),y)
#objects += omx
#endif

#ifeq ($(CFG_HI_GPU),y)
#objects += gpu
#endif

objects_clean       := $(addsuffix _clean, $(objects))
objects_install     := $(addsuffix _install, $(objects))
objects_uninstall   := $(addsuffix _uninstall, $(objects))

#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#     rules
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
PHONY := all clean install uninstall

all: $(objects) msp_lib

clean: $(objects_clean) msp_lib_clean

install: $(objects_install) msp_lib_install

uninstall: $(objects_uninstall) msp_lib_uninstall

PHONY += $(objects) $(objects_clean) $(objects_install) $(objects_uninstall)

$(objects):
	$(AT)make -C $@

$(objects_clean):
	$(AT)make -C $(patsubst %_clean,%,$@) clean

$(objects_install):
	$(AT)make -C $(patsubst %_install,%,$@) install

$(objects_uninstall):
	$(AT)make -C $(patsubst %_uninstall,%,$@) uninstall

PHONY += msp_lib msp_lib_clean msp_lib_install msp_lib_uninstall

$(MSP_STATIC_LIB): $(MSP_OBJS)
	$(AT)$(AR) -rs $@ $(MSP_OBJS)

$(MSP_SHARE_LIB): $(MSP_OBJS)
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)$(CC) -shared -o $@ $(MSP_OBJS)
endif

msp_lib : $(MSP_STATIC_LIB) $(MSP_SHARE_LIB)

msp_lib_clean:
	$(AT)rm -rf $(MSP_OBJS) $(MSP_STATIC_LIB) $(MSP_SHARE_LIB)

msp_lib_install: msp_lib
	$(AT)cp -f  $(MSP_STATIC_LIB)   $(STATIC_LIB_DIR)/
ifndef CFG_HI_STATIC_LIB_ONLY
	$(AT)cp -f  $(MSP_SHARE_LIB)    $(SHARED_LIB_DIR)/
endif

msp_lib_uninstall:
	$(AT)rm -rf $(STATIC_LIB_DIR)/$(MSP_STATIC_LIB) $(SHARED_LIB_DIR)/$(MSP_SHARE_LIB)

PHONY += target target_clean target_install target_uninstall

target: $(if $(findstring $(DIR), $(objects)), $(DIR), msp_lib)

target_clean: $(if $(findstring $(DIR), $(objects)), $(DIR)_clean, msp_lib_clean)

target_install: $(if $(findstring $(DIR), $(objects)), $(DIR)_install, msp_lib_install)

target_uninstall: $(if $(findstring $(DIR), $(objects)), $(DIR)_uninstall, msp_lib_uninstall)

%.o: %.c
	$(AT)echo "  CC      $@"
	$(AT)$(CC) $(CFLAGS) -c -o $@ $^

.PHONY: $(PHONY)
