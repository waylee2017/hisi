
#include "stdlib.h"
#include "stdio.h"
#include "string.h"
#include <pthread.h>

#include "mapi_inner.h"



MMT_STB_ErrorCode_E MLMF_Mutex_Create(MET_Mutex_T *mutexID)
{
	pthread_mutex_t *_mutex =NULL;

	_mutex = (pthread_mutex_t*)MLMF_Malloc(sizeof(pthread_mutex_t));

	if(NULL == _mutex)
	{
		return MM_ERROR_NO_MEMORY;
	}

	*mutexID = MM_INVALID_HANDLE;
	pthread_mutexattr_t mutex_attr;

	pthread_mutexattr_init( &mutex_attr );
	//PTHREAD_MUTEX_TIMED_NP ,PTHREAD_MUTEX_RECURSIVE_NP ,PTHREAD_MUTEX_ERRORCHECK_NP ,PTHREAD_MUTEX_ERRORCHECK_NP
	pthread_mutexattr_settype( &mutex_attr,PTHREAD_MUTEX_RECURSIVE_NP );

	pthread_mutex_init(_mutex,&mutex_attr);
	pthread_mutexattr_destroy(&mutex_attr);

	*mutexID = (MET_Mutex_T)_mutex;

	return MM_NO_ERROR;
}


MMT_STB_ErrorCode_E MLMF_Mutex_Destroy(MET_Mutex_T mutexID)
{
	pthread_mutex_t *_mutex =NULL;

	if (MM_INVALID_HANDLE == mutexID||NULL == mutexID)
	{
		return MM_ERROR_BAD_PARAMETER;
	}
	
	_mutex = (pthread_mutex_t *)mutexID;
	pthread_mutex_destroy(_mutex);
	MLMF_Free(_mutex);
	
	return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLMF_Mutex_Lock(MET_Mutex_T mutexID)
{
	pthread_mutex_t *_mutex =NULL;

	if (MM_INVALID_HANDLE == mutexID||NULL == mutexID)
	{
		return MM_ERROR_BAD_PARAMETER;
	}
	
	_mutex = (pthread_mutex_t *)mutexID;

	pthread_mutex_lock(_mutex);

	return MM_NO_ERROR;
}

MMT_STB_ErrorCode_E MLMF_Mutex_UnLock(MET_Mutex_T mutexID)
{
	pthread_mutex_t *_mutex =NULL;

	if (MM_INVALID_HANDLE == mutexID||NULL == mutexID)
	{
		return MM_ERROR_BAD_PARAMETER;
	}
	
	_mutex = (pthread_mutex_t *)mutexID;

	pthread_mutex_unlock(_mutex);

	return MM_NO_ERROR;
}



