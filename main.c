#include <stdio.h>
extern FILE* yyin;
int main(int argc,char ** argv)
{
	if(argc!=2){
		perror("input error");
		exit(1);
	}
	if(!(yyin = fopen(argv[1],"r"))){
		perror(argv[1]);
		return 1;
	}
	while(yylex()!=0);
	return 0;
	
}
