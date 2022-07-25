#include "ab.h"
int main(){
struct rlimit r1;
	getrlimit(RLIMIT_CPU,&r1);
	r1.rlim_cur = 1;
	setrlimit(RLIMIT_CPU,&r1);
	while(1);
	return 0;
}
