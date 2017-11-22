arm/godbox/boot/start.o               (.text)
arm/godbox/boot/early_uart.o          (.text)
arm/godbox/boot/lowlevel_init.o       (.text)
arm/godbox/boot/emmc_boot.o           (.text)
arm/godbox/boot/ddrphy_train_route.o  (.text)
arm/godbox/boot/chip.o                (.text)
__init_end = .;
ASSERT(((__init_end - __text_start) < 0x4600), "init sections too big!");