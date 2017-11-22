#ifndef __DRV_COMMON_H__
#define __DRV_COMMON_H__

#ifdef __cplusplus
 #if __cplusplus
        extern "C" {
 #endif
#endif /* __cplusplus */



/*100 * log10(u32InValue)*/
HI_U32 tuner_get_100lg_value(HI_U32 u32InValue);

/*a ^ b*/
HI_U32 tuner_get_pow(HI_U32 a, HI_U32 b);




#ifdef __cplusplus
 #if __cplusplus
    }
 #endif
#endif /* __cplusplus */

#endif  /* __DRV_COMMON_H__ */
