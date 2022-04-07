#!/bin/bash -x
declare -A dict;
declare -a arr;
count=0
temp=0;
read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c

dict[compute1]=$(($a+$b*$c));
dict[compute2]=$(($a*$b+$c));
dict[compute3]=$(($c+$a/$b));
dict[compute4]=$(($a%$b+$c));
for data in ${dict[@]}
do
	arr[count]=$data;
	((count++));
done
echo ${arr[@]};
for ((i=0; i<n; i++))
do
	for ((j=i+1; j<n; j++))
	do
		if [ ${arr[$i]} -lt ${arr[$j]} ]
		then
			temp=${arr[$j]};
			${arr[$j]}=${arr[$i]}
			${arr[$i]}=temp;
		fi
	done
done
echo -n "After sorting in Decending order : "
echo ${arr[@]}





