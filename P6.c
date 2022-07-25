
#include "ab.h" 
int main(){
	int pid;
	printf("Iam the Orginal process with PID:%d and Parent PID:%d\n",getpid(),getppid());
	pid=fork();
	printf("PID:%d\t PPID:%d\n",getpid(),getppid());
	printf("PID=%d\n",pid);
	sleep(1);
	return 0;
}
