#include "ab.h"
int main(){
	printf("Im process %d execute ls -l\n",getpid());
	execl("/bin/ls","ls","-l",NULL); // exec ls -l
	printf("Thank you - won't execute");
}
