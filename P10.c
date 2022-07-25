/* avoid zombie state - impletement wait() call 
if parent not received child exit status - child state is zombie */

#include "ab.h" 
int main(){
	int pid,status,childpid;
	printf("Iam the Orginal process with PID:%d and Parent PID:%d\n",getpid(),getppid());
	pid=fork();
	if(pid !=0){ //pid is non-zero so must be the parent
		printf("Im Parent process with PID:%d and PPID:%d\n",
		getpid(),getppid());
		childpid=wait(&status);
		printf("A Child with PID %d terminated with exit code %d\n",
		childpid,status >>8);
		
	}else{
		printf("Im Child process with PID:%d and PPID:%d\n",getpid(),getppid());
		exit(15);
	}
	sleep(1);
	return 0;
}
