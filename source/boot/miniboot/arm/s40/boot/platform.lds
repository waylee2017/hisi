arm/s40/boot/start.o                 (.text)
arm/s40/boot/early_uart.o            (.text)
arm/s40/boot/lowlevel_init.o         (.text)
arm/s40/boot/ddrphy_training.o       (.text)
arm/s40/boot/ddrphy_training_func.o  (.text)
arm/s40/boot/emmc_boot.o             (.text)
arm/s40/boot/ddr_dataeye_training.o  (.text)
arm/s40/boot/chip.o                  (.text)

__init_end = .;
ASSERT(((__init_end - __text_start) < 0x4c00), "init sections too big!");
