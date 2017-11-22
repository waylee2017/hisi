调用顺序

rsa_key_init();  //初始化内置秘钥只需调用一次。

rsa_encrypt();  //加密
rsa_dncrypt();  //解密


rsa_key_uninit();  //去初始化内置秘钥，不再使用解密