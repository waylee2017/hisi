#===============================================================================
# export variables
#===============================================================================
ifeq ($(CFG_HI_EXPORT_FLAG),)
SDK_DIR := $(CURDIR)/..
include $(SDK_DIR)/cfg.mak
include $(SDK_DIR)/base.mak
endif

#***********************************************************************************
#	varibale
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++

ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
ADVCA_MOD_NAME := hi_advca.ko
endif

#***********************************************************************************
#	rule
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
.PHONY += load_install load_uninstall
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
load_install:
ifdef	CFG_HI_ADVCA_FUNCTION
#	$(AT)cp -af $(SCRIPTS_DIR)/hica/. $(export_dir)
endif
	$(AT)rm -rf load unload

#*************** Non-build-in ko unload ***********************
ifneq ($(CFG_HI_ADVCA_SUPPORT),y)
ifeq ($(findstring $(CFG_HI_CHIP_TYPE), hi3716c hi3716h), $(CFG_HI_CHIP_TYPE))
	$(AT)echo "rmmod galcore"            >> unload
endif
ifneq ($(CFG_HIFB_STEREO3D_HW_SUPPORT)_$(CFG_HIFB_STEREO3D_SW_SUPPORT),_)
	$(AT)echo "rmmod ahci_platform"      >> unload
	$(AT)echo "rmmod libahci"            >> unload
endif

ifeq ($(CFG_HI_NTFS_MODULE_SUPPORT),y)
	$(AT)echo "rmmod tntfs"               >> unload
endif
ifneq ($(CFG_HI_KERNEL_CFG),hi3716mv310_no_usb_no_net_mini__mdev_defconfig)
ifeq ($(CFG_HI_KERNEL_VERSION),linux-3.18.y)
	$(AT)echo "rmmod ohci-platform" >> unload
	$(AT)echo "rmmod ehci-platform" >> unload
else
ifeq ($(CFG_HI_KERNEL_VERSION),linux-4.4.y)
	$(AT)echo "rmmod ohci-platform" >> unload
	$(AT)echo "rmmod ehci-platform" >> unload
else
	$(AT)echo "rmmod ohci-hcd"           >> unload
	$(AT)echo "rmmod ehci-hcd"           >> unload
endif	
endif
endif

ifeq ($(CFG_HI_ADAC_SLIC_SUPPORT),y)
	$(AT)echo "rmmod hi_slic"            >> unload
	$(AT)echo "rmmod hi_ssp"             >> unload
endif
ifeq ($(CFG_HI_ADAC_TVL320AIC31_SUPPORT),y)
	$(AT)echo "rmmod hi_tlv320"          >> unload
endif 

endif # End of ifneq ($(CFG_HI_ADVCA_SUPPORT),y)
#*************** Non-build-in ko unload over ******************

ifneq ($(CFG_HI_MSP_BUILDIN),y)	
#*************** Build-in ko unload ***************************
#If SDK doesn't support advca, make unload script
ifneq ($(CFG_HI_ADVCA_SUPPORT),y)
ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
	$(AT)echo "rmmod hi_ci"              >> unload
endif

ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
	$(AT)echo "rmmod hi_svdec"           >> unload
endif
ifeq ($(CFG_HI_PNG_DECODER_SUPPORT),y)
ifneq ($(CFG_HI_CHIP_TYPE), hi3716mv330)
	$(AT)echo "rmmod hi_png"             >> unload
endif
endif
	$(AT)echo "rmmod hi_jpeg"            >> unload
	$(AT)echo "rmmod hi_wdg"             >> unload
ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
	$(AT)echo "rmmod hi_keyled"          >> unload
endif
ifeq ($(CFG_HI_IR_TYPE_LIRC),y) 
	$(AT)echo   "#unload lirc begin"    >> unload
	$(AT)echo   "killall -9 lircd"      >> unload
	$(AT)echo   "rmmod lirc_serial"     >> unload
	$(AT)echo   "rmmod lirc_dev"        >> unload
	$(AT)echo   "#unload lirc end"      >> unload
else
	$(AT)echo "rmmod hi_ir"              >> unload
endif
ifeq ($(CFG_HI_SCI_SUPPORT),y)
	$(AT)echo "rmmod hi_sci"             >> unload
endif
	$(AT)echo "rmmod hi_pmoc"            >> unload
	$(AT)echo "rmmod hi_fb"              >> unload
	$(AT)echo "rmmod hi_tuner"           >> unload
	$(AT)echo "rmmod hi_mce"             >> unload
	$(AT)echo "rmmod hi_avplay"          >> unload
ifeq ($(CFG_HI_PVR_SUPPORT),y)
	$(AT)echo "rmmod hi_pvr"             >> unload
endif
	$(AT)echo "rmmod hi_sync"            >> unload
ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP),y)
	$(AT)echo "rmmod hi_cipher"          >> unload
endif

ifneq ($(CFG_HI3110EV500),y)	
	$(AT)echo "rmmod hi_hdmi"            >> unload
endif
	$(AT)echo "rmmod hi_pdm"	     >> unload
	$(AT)echo "rmmod hi_vou"             >> unload
	$(AT)echo "rmmod hi_vdec"            >> unload
	$(AT)echo "rmmod hi_vfmw"            >> unload	
	$(AT)echo "rmmod hi_aiao"            >> unload
	$(AT)echo "rmmod hi_adsp"            >> unload
	$(AT)echo "rmmod hi_adec"            >> unload
	$(AT)echo "rmmod hi_demux"           >> unload
ifeq ($(CFG_HI_DEMUX_SUPPORT_DESC),y)
	$(AT)echo "rmmod  hi_desc"           >> unload
endif
	$(AT)echo "rmmod hi_otp"             >> unload
	$(AT)echo "rmmod hi_tde"             >> unload
	$(AT)echo "rmmod hi_i2c"             >> unload
ifeq ($(CFG_HI_GPIOI2C_SUPPORT),y)
	$(AT)echo "rmmod hi_gpio_i2c"        >> unload
endif
	$(AT)echo "rmmod hi_gpio"            >> unload
	$(AT)echo "rmmod hi_common"          >> unload
	$(AT)echo "rmmod hi_mmz"             >> unload
ifeq ($(CFG_HI_MCE_SUPPORT)_$(CFG_HI_KEYLED_CT1642_KERNEL_SUPPORT),_)
	$(AT)echo "rmmod hi_media"           >> unload
endif

ifeq ($(CFG_HI_CI_DEV_CIMAXPLUS),y)
	$(AT)echo "rmmod cimax+usb_driver"   >> unload
endif

endif # End of ifneq ($(CFG_HI_ADVCA_SUPPORT),y)
#*************** Build-in ko unload over **********************

#*************** Build-in ko load *****************************
ifeq ($(CFG_HI_MCE_SUPPORT)_$(CFG_HI_KEYLED_CT1642_KERNEL_SUPPORT),_)
	$(AT)echo "insmod hi_media.ko"       >> load
endif
	$(AT)echo "insmod hi_mmz.ko"         >> load
	$(AT)echo "insmod hi_common.ko"      >> load

	$(AT)echo "insmod hi_gpio.ko"        >> load
ifeq ($(CFG_HI_GPIOI2C_SUPPORT),y)
	$(AT)echo "insmod hi_gpio_i2c.ko i2cmode=2"    >> load
endif
	$(AT)echo "insmod hi_i2c.ko"         >> load
	$(AT)echo "insmod hi_tde.ko"         >> load
	$(AT)echo "insmod hi_otp.ko"         >> load
ifeq ($(CFG_HI_DEMUX_SUPPORT_DESC),y)
	$(AT)echo "insmod hi_desc.ko"        >> load
endif
	$(AT)echo "insmod hi_demux.ko"       >> load
	$(AT)echo "insmod hi_adec.ko"        >> load
	$(AT)echo "insmod hi_adsp.ko"        >> load
	$(AT)echo "insmod hi_aiao.ko"        >> load
	$(AT)echo "insmod hi_vfmw.ko"        >> load
	$(AT)echo "insmod hi_vdec.ko"        >> load
	$(AT)echo "insmod hi_vou.ko"         >> load
	$(AT)echo "insmod hi_pdm.ko"	     >> load
ifneq ($(CFG_HI3110EV500),y)
	$(AT)echo "insmod hi_hdmi.ko"        >> load
endif
ifeq ($(CFG_HI_HDMI_SUPPORT_HDCP),y)
	$(AT)echo "insmod hi_cipher.ko"	     >> load
endif	
#	$(AT)echo "insmod hi_dmac.ko"               >> load
	$(AT)echo "insmod hi_sync.ko"        >> load
ifeq ($(CFG_HI_PVR_SUPPORT),y)
	$(AT)echo "insmod hi_pvr.ko"         >> load
endif
	$(AT)echo "insmod hi_avplay.ko"      >> load
	$(AT)echo "insmod hi_mce.ko"         >> load	
	$(AT)echo "insmod hi_tuner.ko"       >> load
	$(AT)echo "# About hi_fb:"           >> load
	$(AT)echo "#  For 1920*1080, triple buffer, ARGB8888 format, use:" >> load
	$(AT)echo "#  insmod hi_fb.ko video=\"hi_fb:vram0_size:2430,vram2_size:16200\""    >> load
	$(AT)echo "#  For 1280*720, use:"    >> load
	$(AT)echo "#  insmod hi_fb.ko video=\"hi_fb:vram0_size:2430,vram2_size:7200\""     >> load
	$(AT)echo "#  If you need use layer AD0 and AD:"  >> load
	$(AT)echo "#  insmod hi_fb.ko video=\"hifb:vram0_size:24300,vram2_size:24300,vram4_size:24300\"" >> load
	$(AT)echo "#  Insmod hi_fb.ko with no args will use defaule value,The defaule value is set by cfg.mak."  >> load
	$(AT)echo "#  vram0 is memory size for SD and vram2 is for HD. The size is calculated as below:" >> load
	$(AT)echo "#  vram2_size = (1920*1080*4*2/1024)KB; vram0_size = (720*576*2*2/" >> load
	$(AT)echo "insmod hi_fb.ko"          >> load
	$(AT)echo "insmod hi_pmoc.ko"        >> load

ifeq ($(CFG_HI_SCI_SUPPORT),y)
	$(AT)echo "insmod hi_sci.ko"         >> load
endif
	$(AT)echo "insmod hi_ir.ko"          >> load
ifeq ($(CFG_HI_KEYLED_SUPPORT),y)
	$(AT)echo "insmod hi_keyled.ko"      >> load
endif
	$(AT)echo "insmod hi_wdg.ko"         >> load
	$(AT)echo "insmod hi_jpeg.ko"        >> load
ifeq ($(CFG_HI_PNG_DECODER_SUPPORT),y)
ifneq ($(CFG_HI_CHIP_TYPE), hi3716mv330)
	$(AT)echo "insmod hi_png.ko"         >> load
endif
endif	
ifeq ($(CFG_HI_ADVCA_SUPPORT),y)
	$(AT)echo "insmod $(ADVCA_MOD_NAME)" >> load
endif

ifeq ($(CFG_HI_VDEC_SVDEC_SUPPORT),y)
	$(AT)echo "insmod hi_svdec.ko"       >> load
endif

ifeq ($(CFG_HI_CIPLUS_SUPPORT),y)
	$(AT)echo "insmod hi_ci.ko"          >> load
endif
ifeq ($(CFG_HI_CI_DEV_CIMAXPLUS),y)
	$(AT)echo "insmod cimax\+usb_driver.ko"  >> load
endif

endif
#*************** Build-in ko load over ************************

#*************** Non-Build-in ko load *************************
ifeq ($(CFG_HI_ADAC_TVL320AIC31_SUPPORT),y)
	$(AT)echo "insmod hi_tlv320.ko"      >> load
endif
ifeq ($(CFG_HI_ADAC_SLIC_SUPPORT),y)
	$(AT)echo "insmod hi_ssp.ko"         >> load
	$(AT)echo "insmod hi_slic.ko"        >> load
endif

ifneq ($(CFG_HI_KERNEL_CFG),hi3716mv310_no_usb_no_net_mini__mdev_defconfig)
ifeq ($(CFG_HI_KERNEL_VERSION),linux-3.18.y)
	$(AT)echo "insmod /kmod/usb/ehci-platform.ko" >> load
	$(AT)echo "insmod /kmod/usb/ohci-platform.ko" >> load
else
ifeq ($(CFG_HI_KERNEL_VERSION),linux-4.4.y)
	$(AT)echo "insmod /kmod/usb/ehci-platform.ko" >> load
	$(AT)echo "insmod /kmod/usb/ohci-platform.ko" >> load
else
	$(AT)echo "insmod /kmod/usb/ehci-hcd.ko" >> load
	$(AT)echo "insmod /kmod/usb/ohci-hcd.ko" >> load
endif
endif
endif
ifeq ($(CFG_HI_NTFS_MODULE_SUPPORT),y)
	$(AT)echo "insmod tntfs.ko"           >> load
endif
ifeq ($(CFG_HI_IR_TYPE_LIRC),y)
	$(AT)echo   "#load lirc begin......"	>> load
	$(AT)echo   "insmod lirc_dev.ko"	>> load
	$(AT)echo   "insmod lirc_serial.ko"	>> load
	$(AT)echo   "mkdir -p /var/run/lirc"	>> load
	$(AT)echo   "mkdir -p /var/log"		>> load
	$(AT)echo   "cat > /var/log/lircd << EOF" >> load
	$(AT)echo   "EOF"			>> load
	$(AT)echo   "ln -fs /dev/lirc0 /dev/lirc"		>> load
	$(AT)echo   "lircd -d /dev/lirc0 -o /dev/lircd -r__up"	>> load
	$(AT)echo   "#load lirc end."		>> load
endif
ifneq ($(CFG_HIFB_STEREO3D_HW_SUPPORT)_$(CFG_HIFB_STEREO3D_SW_SUPPORT),_)
	$(AT)echo "insmod /kmod/sata/libahci.ko"       >> load
	$(AT)echo "insmod /kmod/sata/ahci_platform.ko" >> load
endif

#*************** Non-Build-in ko load over ********************
ifndef CFG_HI_ADVCA_FUNCTION
	$(AT)echo "echo 6 > /proc/sys/vm/dirty_ratio" >> load # see source/msp/component/hifat/how to use.txt for detail
	$(AT)echo "echo 1 > /proc/sys/vm/overcommit_memory" >> load
	$(AT)echo "echo 512 > /proc/sys/vm/min_free_kbytes" >> load
endif
	$(AT)test ! -f ./load || (chmod +x load; mv ./load $(PUB_DIR)/kmod/load)
	$(AT)test ! -f ./unload || (chmod +x unload; mv ./unload $(PUB_DIR)/kmod/unload)
	
#	test -f ./load && mv ./load $(SCRIPTS_DIR)/kmod/load
#	-rm -rf $(SCRIPTS_DIR)/kmod/load_*
#	-rm -rf $(export_dir)/kmod/mk*load.sh 
#	-rm -rf $(export_dir)/usr/share/terminfo/* 
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
load_uninstall:
	$(AT)rm -rf $(PUB_DIR)/kmod/load
	$(AT)rm -rf $(PUB_DIR)/kmod/unload
