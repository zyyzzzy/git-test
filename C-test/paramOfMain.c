#include <stdio.h>

/*
main函数参数含义

int argc：命令行输入参数字符串个数
char **argv = *argv[]：字符串指针数组，长度为argc，每个指针指向参数字符串

例如：
命令行输入：./helloworld test ok
则argc = 3；argv[3]，argv[0]->"./helloworld",argv[1]->"test",argv[2]->"ok"

*/

int main(int argc,char **argv)//char *argv[]也可以
{
	printf("argc = %d\n",argc);

	for(int i=0;i<argc;i++)
		printf("argv[%d]->%s\n",i,argv[i]);

}

