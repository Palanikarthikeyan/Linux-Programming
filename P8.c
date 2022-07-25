
#include "ab.h" 
int main(){
	int pid;
	printf("Iam the Orginal process with PID:%d and Parent PID:%d\n",getpid(),getppid());
	pid=fork();
	if(pid !=0){ //pid is non-zero so must be the parent
		printf("Im Parent process with PID:%d and PPID:%d\n",
		getpid(),getppid());
		printf("My Child PID is:%d\n",pid);
	}else{
		sleep(3);
		printf("Im Child process with PID:%d and PPID:%d\n",getpid(),getppid());
	}
	printf("PID %d terminates.\n",getpid());
	return 0;
}
