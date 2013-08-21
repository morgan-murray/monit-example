#include <stdio.h>
#include <unistd.h>
#include <time.h>

int main(){

	FILE *fp;

	while(1){

		fp = fopen("/home/morgan/Testing/file_maker/example_file","w");
		fprintf(fp,"The time is %d\n",(int)time(NULL));
		fclose(fp);
		sleep(1);
	}

	return 0;
}
