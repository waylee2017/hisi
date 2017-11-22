#include  <stdio.h>
#include  <stdlib.h>
#include  <memory.h>

int creatstr(unsigned char *src,unsigned char *dst)
{
	int ret = 0;
	unsigned int val = 0;
	
	val = (unsigned int)src[3]<<24 + (unsigned int)src[2]<<16 + (unsigned int)src[1]<<8 + (unsigned int)src[0];
	printf("val =  0x%x\n",val);
	sprintf(dst,"0x%x,",val);
//	printf("dst =  %s\n",dst);
	return 0;
}

int main(int argc,unsigned char* argv[])
{
	int ret = 0;
	FILE *fd = 0;
	FILE *fd2 = 0;
	unsigned int readlen = 0;
	unsigned int writelen = 0;
	unsigned char tmp[4] = {0};
	unsigned char tmp2[12] = {0};
	unsigned int cnt = 0;
	unsigned int val1 = 0;
	
	if (argc < 2)
    {
		printf("\033[32m please choose a bin file.Example: ./bin2char armstandby.bin \033[0m\n");
		return -1;
	}
	
	fd = fopen(argv[1],"rb");
	if(fd < 0)
	{
		printf("open file failed!!file:%s\n",argv[1]);
		return -1;	
	}
	
	fd2 = fopen("output.txt","w");
	if(fd2 < 0)
	{
		printf("open file failed!!\n");
		fclose(fd);
		return -1;	
	}
	cnt = 0;
	while(1)
	{
		if((cnt>0 )&&(0 == cnt%8))
		{
			fwrite("\n",1,1,fd2);		
		}
		readlen = fread(tmp,4,1,fd);
		if(readlen <= 0)
		{
			printf("covert over!\n");
			break;	
		}
	//	printf("%x,%x,%x,%x\n",tmp[0],tmp[1],tmp[2],tmp[3]);
	//	creatstr(tmp,tmp2);
	//	val1 = ((unsigned int)tmp[3])<<24 + ((unsigned int)tmp[2])<<16 + ((unsigned int)tmp[1])<<8 + ((unsigned int)tmp[0]);
		sprintf(tmp2,"0x%02x%02x%02x%02x,",tmp[3],tmp[2],tmp[1],tmp[0]);		
		fwrite(tmp2,11,1,fd2);
//		printf("tmp2 =  %s\n",tmp2);
		cnt++;	
		memset(tmp,0x0,4);
		memset(tmp2,0x0,12);
			
	}	
	
	fclose(fd2);
	fclose(fd);

	return 0;
}
