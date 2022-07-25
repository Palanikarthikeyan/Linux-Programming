#include "ab.h"
int main(){
	int pid;
	pid=fork();
	if( pid !=0){
		while(1)
		  sleep(1000);
	}else{
		printf("Im Chid PID:%d and PPID:%d",getpid(),getppid());
		exit(15);
	}
}
