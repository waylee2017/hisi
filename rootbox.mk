#===============================================================================
# local variables
#===============================================================================
#CHMOD := $(shell which chmod)
#CHOWN := $(shell which chown)
ifdef CFG_HI_ADVCA_FUNCTION
mode=$(CFG_HI_ADVCA_FUNCTION)
else
mode=DEBUG
endif
#===============================================================================
# rule
#===============================================================================
.PHONY: mkload rootbox_compose rootbox_strip
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++
mkload:
	make -C $(SCRIPTS_DIR) load_install

rmload:
	make -C $(SCRIPTS_DIR) load_uninstall

rootbox_compose:mkload
	-$(AT)$(SRM) -rf $(ROOTBOX_DIR)
	-$(AT)cp -rf $(ROOTFS_DIR) $(ROOTBOX_DIR)
	-$(AT)cp -rf $(MODULE_DIR) $(ROOTBOX_DIR)
ifeq ($(CFG_HI_ROOTFS_INSTALL_SHARED_LIBS),y)
	-$(AT)cp -rf $(SHARED_LIB_DIR)/*.so*   $(ROOTBOX_DIR)/usr/lib
	-$(AT)cp -rf $(EXTERN_LIB_DIR)/higo-adp   $(ROOTBOX_DIR)/usr/lib
endif
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
	-$(AT)cp -rf $(COMPONENT_DIR)/loader/app/release/*   $(ROOTBOX_DIR)/home
	$(AT)if [ -f $(ROOTBOX_DIR)/etc/profile ]; then \
		echo "sleep 3" >> $(ROOTBOX_DIR)/etc/profile; \
		echo "cd /home && ./loader" >> $(ROOTBOX_DIR)/etc/profile; \
		echo "reboot" >> $(ROOTBOX_DIR)/etc/profile; \
	fi
endif
ifeq ($(CFG_HI_APPLOADER_LOGOUT_DISABLE), y)
	sed -i "/::sysinit:\/etc\/init.d\/rcS/ s/$$/ > \/dev\/null 2>\&1/" $(ROOTBOX_DIR)/etc/inittab
	sed -i "/#::respawn:-\/bin\/sh/ s/^#//" $(ROOTBOX_DIR)/etc/inittab
	sed -i "/::respawn:-\/bin\/sh/ s/-//" $(ROOTBOX_DIR)/etc/inittab
	sed -i "/::respawn:\/bin\/sh/ s/$$/ -c \/etc\/profile > \/dev\/null 2>\&1/" $(ROOTBOX_DIR)/etc/inittab
	sed -i "/::respawn:\/sbin\/getty -L ttyS000 115200 vt100 -n root -a/ s/^/#/" $(ROOTBOX_DIR)/etc/inittab
	sed -i "s/^CONSOLE\=.*/CONSOLE\=\/dev\/null/" $(ROOTBOX_DIR)/etc/udev/udisk-hotplug.sh
	chmod 777 $(ROOTBOX_DIR)/etc/profile
endif
	-$(AT)find $(EXTERN_LIB_DIR) -maxdepth 1 -name *.so* | xargs -r cp -t $(ROOTBOX_DIR)/usr/lib/
	-$(AT)cp -rf $(BIN_DIR)   $(ROOTBOX_DIR)/usr/
ifdef CFG_HI_ADVCA_SANDBOX_SUPPORT
ifeq ($(CFG_HI_LOADER_APPLOADER),y)
	$(AT)test -d $(ROOTFS_SRC_DIR)/scripts/hica_etc/loader_etc || tar xzf $(ROOTFS_SRC_DIR)/scripts/hica_etc/loader_etc.tar.gz -C $(ROOTFS_SRC_DIR)/scripts/hica_etc/
	$(ROOTFS_SRC_DIR)/scripts/hica_etc/loader_etc/MakeCALoaderRootfs.sh $(SDK_DIR) $(mode) $(CFG_HI_TOOLCHAINS_NAME) $(CFG_HI_ADVCA_SANDBOX_TYPE)
else
	$(AT)test -d $(ROOTFS_SRC_DIR)/scripts/hica_etc/system_etc || tar xzf $(ROOTFS_SRC_DIR)/scripts/hica_etc/system_etc.tar.gz -C $(ROOTFS_SRC_DIR)/scripts/hica_etc/
	$(ROOTFS_SRC_DIR)/scripts/hica_etc/system_etc/MakeCASystemRootfs.sh $(SDK_DIR) $(mode) $(CFG_HI_TOOLCHAINS_NAME) $(CFG_HI_ADVCA_SANDBOX_TYPE)
endif
endif

rootbox_strip:rootbox_compose
ifeq ($(CFG_HI_ROOTFS_STRIP), y)
	-$(AT)find $(ROOTBOX_DIR)/bin/ $(ROOTBOX_DIR)/lib/ $(ROOTBOX_DIR)/sbin/ $(ROOTBOX_DIR)/usr/ | xargs $(STRIP) 2> /dev/null
	-$(AT)find $(ROOTBOX_DIR)/bin/ $(ROOTBOX_DIR)/lib/ $(ROOTBOX_DIR)/sbin/ $(ROOTBOX_DIR)/usr/ | xargs $(STRIP) -R .note -R .comment 2> /dev/null
ifdef CFG_HI_ADVCA_SANDBOX_SUPPORT
	-$(AT)find $(ROOTBOX_DIR)/home/stb/bin/ $(ROOTBOX_DIR)/home/stb/lib/ $(ROOTBOX_DIR)/home/stb/usr/ | xargs $(STRIP) 2> /dev/null
	-$(AT)find $(ROOTBOX_DIR)/home/stb/bin/ $(ROOTBOX_DIR)/home/stb/lib/ $(ROOTBOX_DIR)/home/stb/usr/ | xargs $(STRIP) -R .note -R .comment 2> /dev/null
endif
endif


ifeq ($(CFG_HI_LOADER_APPLOADER),y)
	@rm $(ROOTBOX_DIR)/opt -rf	
	@rm $(ROOTBOX_DIR)/share -rf	
endif

 
