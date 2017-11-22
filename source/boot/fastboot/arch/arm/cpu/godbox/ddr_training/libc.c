/******************************************************************************
 *    COPYRIGHT (C) 2013 Czyong. Hisilicon
 *    All rights reserved.
 * ***
 *    Create by Czyong 2013-01-19
 *
******************************************************************************/

#include "libc.h"

void* memcpy(void *dst, const void *src, unsigned int len)
{
	const char *s = src;
	char *d = dst;

	while (len--)
		*d++ = *s++;
	return dst;
}

void* memset(void *b, int c, unsigned int len)
{
	char *bp = b;

	while (len--)
		*bp++ = (unsigned char)c;
	return b;
}

int memcmp(const void *b1, const void *b2, unsigned int len)
{
	const unsigned char *p1, *p2;

	for (p1 = b1, p2 = b2; len > 0; len--, p1++, p2++) {
		if (*p1 != *p2)
			return ((*p1) - (*p2));
	}
	return (0);
}

int strcmp(const char *s1, const char *s2)
{

	for (; *s1 == *s2 && *s1 != '\0'; s1++, s2++)
		;
	return ((unsigned char)*s1 - (unsigned char)*s2);
}

int strncmp(const char *s1, const char *s2, unsigned int len)
{

	for (; *s1 == *s2 && *s1 != '\0' && len > 0; len--, s1++, s2++)
		;
	return ((unsigned char)*s1 - (unsigned char)*s2);
}

void strcpy(char *dst, const char *src)
{

	while (*src != '\0')
		*dst++ = *src++;
	*dst = '\0';
}

void strcat(char *dst, const char *src)
{

	while (*dst != '\0')
		dst++;
	while (*src != '\0')
		*dst++ = *src++;
	*dst = '\0';
}

char *strchr(const char *s, char ch)
{

	for (; *s != '\0'; s++) {
		if (*s == ch)
			return ((char *)(const void *)s);
	}
	return (NULL);
}

unsigned int strlen(const char *s)
{
	unsigned int len = 0;

	while (*s++ != '\0')
		len++;
	return (len);
}
