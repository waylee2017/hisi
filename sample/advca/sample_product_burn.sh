#!/bin/sh
./sample_product_crypto 0 1 bootargs_sign.bin bootargs_enc.bin
./sample_product_crypto 0 1 stbinfo_sign.bin stbinfo_enc.bin
./sample_product_crypto 0 1 apploader_sign.bin apploader_enc.bin
./sample_product_add_cmac   base.img base_cmac.img
./sample_product_crypto 0 1 base_cmac.img base_enc.img
./sample_product_add_cmac   logo.img logo_cmac.img
./sample_product_crypto 0 1 logo_cmac.img logo_enc.img
./sample_product_crypto 0 1 system_sign.bin system_enc.bin
./sample_product_crypto 0 2 hdcp_key.bin hdcp_key_enc.bin
./sample_product_add_cmac   loaderdb.bin loaderdb_cmac.bin
./sample_product_crypto 0 2 loaderdb_cmac.bin loaderdb_enc.bin
chmod 777 *.bin

./sample_product_burn_partition system system_enc.bin
./sample_product_burn_partition baseparam base_enc.img
./sample_product_burn_partition logo logo_enc.img
./sample_product_burn_partition loader apploader_enc.bin
./sample_product_burn_partition stbid stbinfo_enc.bin
./sample_product_burn_partition bootargs bootargs_enc.bin
./sample_product_burn_partition boot fastboot_enc.bin
./sample_product_burn_partition privatedata hdcp_key_enc.bin
./sample_product_burn_partition loaderdb loaderdb_enc.bin

#./sample_product_pv_stb 1 disable pv_cfg_production.txt  pv_out_final_production.txt
chmod 777 pv_out_*.txt