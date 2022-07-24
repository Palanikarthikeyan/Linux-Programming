<<abc
Q3) Write a shellscript:
read an employee name from <STDIN>
read an employee id from <STDIN>

display input details to monitor

Note: Employee name format is title case format (ex: Arun )
Employee name not allows space and special chars
Employee ID starts with single uppercase chars followed by any 3 digits
(ex: A124 B452) 

create 3 different functions and demonstrate it.
-----------------------------------------------------------------
abc

nameTest(){
	echo $1|grep -E "^[A-Z][a-z]+$" >/dev/null 2>&1
	if [ $? -eq 0 ];then
		return 0
	else
		return 1
	fi
}

eidTest(){
	echo $1|grep -E "^[A-Z][0-9]{3}$" >/dev/null 2>&1
	if [ $? -eq 0 ];then
		return 0
	else
		return 1
	fi
}

display(){
	echo -e "Emp name is:$1 emp id:$2"
}
read -p "Enter an employee name:" ename
nameTest $ename # function call with arguments
if [ $? -ne 0 ];then
	echo "Sorry your input name is not title case format"
	exit
fi

read -p "Hello $ename enter your employee ID:" eid
eidTest $eid # function call with argument

if [ $? -ne 0 ];then
	echo "Sorry your emp id is not valid format"
	exit
fi

display $ename $eid
echo # empty line
echo "Exit from $0 script"


read -p "Enter an employee name:" ename
