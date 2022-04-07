#!/bin/bash -x
declare -A dict;
declare -a arr;
count=0
read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c

dict[compute1]=$(($a+$b*$c));
dict[compute2]=$(($a*$b+$c));
dict[compute3]=$(($c+$a/$b));
dict[compute4]=$(($a%$b+$c));
for i in ${dict[@]}
do
	arr[count]=$i;
	((count++));
done
echo ${arr[@]};





