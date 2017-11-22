/******************************************************************************

Copyright (C), 2005-2014, Hisilicon Tech. Co., Ltd.
******************************************************************************
File Name     : vmx_auth.h
Version       : Initial
Author        : Hisilicon hisecurity group
Created       : 2014-09-20
Last Modified :
Description   :  
Function List :
History       :
******************************************************************************/
#ifndef __VMX_AUTH_H__
#define __VMX_AUTH_H__

/*
	return value:
	    0: indicates do not start this application
	    1: indicates the application can be started
*/
int verifySignature( unsigned char* signature, 
					unsigned char	* src, 
					unsigned char* tmp, 
					unsigned int len, 
					unsigned int maxLen, 
					unsigned char mode, 
					unsigned char *errorCode );

#endif /* #ifndef __VMX_AUTH_H__*/