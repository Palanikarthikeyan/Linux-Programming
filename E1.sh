<<abc
Q1) Write a shell script : 

using commandline argument 
test input file is existing or not

Validations:-

================

1. Commandline argument will accept single input file ./p1.sh IP.txt Ip1.txt

2. Inputfile name and script file name both are different ./p1.sh p1.sh

3. Commandline argument is not an empty ./p1.sh

Note: use basename command - to strip a directory 
example:-
----------
basename ./p1.sh # remove ./path
p1.sh
abc
if [ $# -gt 1 ];then
	echo "Usage:Sorry commandline argument allows single input file"
	exit
fi
if [ "`basename $0`" == "$1" ];then
	echo "Usage:Sorry your input file is same as script file"
	exit
fi

if [ $# -eq 0 ];then
	echo "Usage:Sorry commandline argument is empty"
	exit
fi

if [ -e $1 ];then
	echo "Yes file:$1 is exists"
else
	echo "Sorry file:$1 is not exists"
fi

 






 



