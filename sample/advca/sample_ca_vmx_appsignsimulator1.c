#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define VMX_SIG_OFFSET (16)
#define VMX_SIG_LENGTH (256)
#define VMX_IMG_OFFSET (VMX_SIG_OFFSET + VMX_SIG_LENGTH)

int g_pure_image_len = 0;
int g_image_len = 0;

int copy_sig_to_final_Image(FILE *image_fd, FILE* sig_fd, FILE *final_fd)
{
	int ret = 0;
	unsigned char fake_sig[VMX_SIG_LENGTH] = {0};
	int temp = 0;

	if((NULL == final_fd) || (NULL == fake_sig) || (NULL == image_fd))
	{
		printf("invalid params in %s\n",__FUNCTION__);
		return -1;
	}

	/* get sig data from file */
	memset(fake_sig, 0, VMX_SIG_LENGTH);
	ret = fread(fake_sig, (size_t)1, (size_t)VMX_SIG_LENGTH, sig_fd);
	if(ret != VMX_SIG_LENGTH)
	{
		printf("fread sig file failed! ret:0x%x\n", ret);
		return -1;
	}
	else
	{
		printf("fread sig data from file success\n");
	}

	printf("begin to write signature to signed_iamge\n");

	/* get image length */
	fseek(image_fd, 0, SEEK_END);
	g_pure_image_len = (int)ftell(image_fd);
	printf("Original image len = 0x%x\n", g_pure_image_len);

	temp = (g_pure_image_len & 0xF);
	if(0 != temp)
	{
		g_image_len = g_pure_image_len + (16 - temp);
	}
	else
	{
		g_image_len = g_pure_image_len;
	}
	printf("After padding, image len = 0x%x\n", g_image_len);

	fseek(image_fd, 0, SEEK_SET);

	/* reserve the first 16 bytes for image_length later */
	fseek(final_fd, VMX_SIG_OFFSET, SEEK_SET);

	/* write vmx fake signature */
	ret = fwrite(fake_sig, 1, VMX_SIG_LENGTH, final_fd);
	if(ret != VMX_SIG_LENGTH)
	{
		printf("write vmx fake signature , 0x%x\n", ret);
		return -1;
	}

	return 0;
}

int copy_image_to_final_Image(FILE *sign_fd, FILE *image_fd)
{
	int ret = 0;
	unsigned char *ptr = NULL;
	unsigned char image_len_pad[12] = {0};

	printf("begin to write image to signed_iamge\n");

	ptr = malloc(g_image_len);
	if(NULL == ptr)
	{
		printf("malloc failed: 0x%x\n", g_image_len);
		return -1;
	}
	memset(ptr, 0, g_image_len);

	ret = fread((unsigned char *)ptr, 1, g_pure_image_len, image_fd);
	if(ret != g_pure_image_len)
	{
		printf("fread image data to buffer failed, ret:0x%x, g_pure_image_len:%d\n", ret, g_pure_image_len);
		return -1;
	}

	/* write length of image in the first 16 bytes */
	fseek(sign_fd, 0, SEEK_SET);
	ret = fwrite((unsigned char *)(&g_image_len), (size_t)1, (size_t)4, sign_fd);
	if(4 != ret)
	{
		printf("write length of image failed! ret:0x%x\n", ret);
		return -1;
	}

	memset(image_len_pad, 0, sizeof(image_len_pad));
	ret = fwrite(image_len_pad, (size_t)1, (size_t)12, sign_fd);
	if(12 != ret)
	{
		printf("write pad for length of image failed, ret: 0x%x\n", ret);
		return -1;
	}

	/* write image data to final signed file */
	fseek(sign_fd, VMX_IMG_OFFSET, SEEK_SET);

	if(0 == g_image_len)
	{
		printf("Invalid image length: 0x%x\n", g_image_len);
		return -1;
	}

	ret = fwrite(ptr, (size_t)1, (size_t)g_image_len, sign_fd);
	if(ret != g_image_len)
	{
		printf("fwrite image data to signed_image failed, ret: 0x%x, image_len: 0x%x\n", ret, g_image_len);
		free(ptr);
		return -1;
	}
	
	printf("fwrite signed_iamge success, current length: 0x%x\n", (int)ftell(sign_fd));
	free(ptr);

	return 0;
}

/*
Signarure structure:
	magic: 	 64 bit uimsbf 0x0123456789ABCDEF							8B
	mode: 	 8 bit uimsbf 0 (flash) or 1 (loader)						1B
	verify:	 120 bit uimsbf 0											15B
	pos: 	 64 bit uimsbf start position (src in function call)		8B
	len: 	 64 bit uimsbf len of image									8B
	max-len: 64 bit uimsbf max-len of the image							8B
	pad: 	 1664 bit uimsbf random fill								208B
*/

int main(int argc, char * argv[])
{
	int ret = 0;
	FILE *sign_fd = NULL;
	FILE *image_fd = NULL;
	FILE *sig_fd = NULL;

	if(4 != argc)
	{
		printf("invalid args, argc: 0x%x\n", argc);
		printf("usage: ./vmx_sign_merge image_file_name sig_file_name final_file_name\n");
		printf("    for example: ./vmx_sign_merge hi_kernel.bin sig.bin signed_kernel.bin\n");
		return -1;
	}

	image_fd = fopen(argv[1], "r");
	if(NULL == image_fd)
	{
		fclose(sign_fd);
		sign_fd = NULL;
		printf("fopen %s failed.\n", argv[1]);
		return -1;
	}

	sig_fd = fopen(argv[2], "r");
	if(NULL == sig_fd)
	{
		fclose(sign_fd);
		sign_fd = NULL;
		printf("fopen %s failed.\n", argv[2]);
		return -1;
	}

	sign_fd = fopen(argv[3], "w+");
	if(NULL == sign_fd)
	{
		printf("fopen %s failed.\n", argv[1]);
		return -1;
	}

	ret = copy_sig_to_final_Image(image_fd, sig_fd, sign_fd);
	if(0 != ret)
	{
		printf("%s %d, failed, ret:0x%x\n", __FUNCTION__, __LINE__, ret);
		fclose(sign_fd);
		fclose(image_fd);
		fclose(sig_fd);
		return -1;
	}

	ret = copy_image_to_final_Image(sign_fd, image_fd);
	if(0 != ret)
	{
		printf("%s %d, failed, ret:0x%x\n", __FUNCTION__, __LINE__, ret);
		fclose(sign_fd);
		fclose(image_fd);
		fclose(sig_fd);
		return -1;
	}

	fclose(sign_fd);
	fclose(image_fd);
	fclose(sig_fd);
 
	return 0;
}



