1. Load module into the kernel 
	insmod tntfs.ko

(if NTFS module insmod failed(for example, change kernel config), contact FAE for supporting)

2. Mount NTFS volumes
	mount -t tntfs device mount_point

