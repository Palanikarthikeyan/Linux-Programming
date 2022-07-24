<<abc
Q2) Given array:
Conf=("root:x:/root:/bin/bash" "userA:x:/home:/usr/bin/bash" "userB:x:/home:/bin/sh")

using for loop - iterate the array items
display login name and login shell name to monitor.

Note: use awk
abc

Conf=("root:x:/root:/bin/bash" "userA:x:/home:/usr/bin/bash" "userB:x:/home:/bin/sh")
for v in ${Conf[@]}
do
	name=`echo $v|awk -F: '{print $1}'`
	login_shell=`echo $v|awk -F: '{print $NF}'`
	echo -e "Login name:${name}\t Login shell name:${login_shell}"
done
	
