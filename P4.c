#include "ab.h" 
int main(){
	fork();
	printf("PID:%d\tParent PID:%d\n",getpid(),getppid());
	sleep(1);
	return 0;
}
