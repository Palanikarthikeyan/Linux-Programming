#include "ab.h"
void print_cpu_time(){
	struct rusage usage;
	getrusage(RUSAGE_SELF,&usage);
	printf("CPU time:%ld.%06ld sec user,%ld.%06ld sec system\n",
	usage.ru_utime.tv_sec,usage.ru_utime.tv_usec,
	usage.ru_stime.tv_sec,usage.ru_stime.tv_usec);
}
int main(){
	print_cpu_time();
	return 0;
}
