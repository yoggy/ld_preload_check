#include <stdio.h>

int puts(const char *str) 
{
	fprintf(stdout, "check result : LD_PRELOAD enabled!!!\n");
	return 0;
}
