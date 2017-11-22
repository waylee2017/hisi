#ifndef __HI_ASM_DEFINE_H__
#define __HI_ASM_DEFINE_H__

#ifdef __cplusplus
extern "C"{
#endif


#ifdef CONFIG_ARM_UNWIND
	#define UNWIND(code...) code
#else
	#define UNWIND(code...)
#endif

#ifndef CONFIG_REMOVE_STRING
	#define ASCII(code...) code
#else
	#define ASCII(code...) .ascii "\000"
#endif

#ifdef __cplusplus
}
#endif

#endif /* __HI_ASM_DEFINE_H__ */
