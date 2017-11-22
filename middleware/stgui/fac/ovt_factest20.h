#ifndef	__OVT_FACTEST_H__ /* 防止graphics.h被重复引用 */
#define	__OVT_FACTEST_H__

/*----------------------Standard Include-------------------------*/

/*---------------------User-defined Include----------------------*/

/* C++ support */
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


/*-----------------------Module Functions-------------------------*/
extern void ovt_fac_main_init(void);//工厂自动测试
extern void ovt_fac_aging_test(void);//老化测试
extern void ovt_fac_sys_info(void);//系统信息
extern void ovt_fac_api_test(void);//测试功能接口



/* End C++ support */
#ifdef __cplusplus
}
#endif/* __cplusplus */

#endif /* #ifndef	__ERRORCODE_H__ */



