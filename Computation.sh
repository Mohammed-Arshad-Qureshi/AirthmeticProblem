#!/bin/bash -x
declare -A dict;
declare -a arr;
count=0
temp1=0;
temp2=0
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
echo -n "Before sorting the elements : "
echo ${arr[@]};
for ((i=0; i<${#arr[@]}; i++))
do
	for ((j=$i+1; j<${#arr[@]}; j++))
	do
		if [ ${arr[$i]} -lt ${arr[$j]} ]
		then
			temp1=${arr[$j]};
			arr[$j]=${arr[$i]};
			arr[$i]=$temp1;
		fi
	done
done
echo -n "After sorting the elements in Descending order : "
echo ${arr[@]};
for ((i=0; i<${#arr[@]}; i++))
do
	for ((j=$i+1; j<${#arr[@]};j++))
	do
		if [ ${arr[$i]} -gt ${arr[$j]} ]
		then
			temp2=${arr[$i]};
			arr[$i]=${arr[$j]};
			arr[$j]=$temp2;
		fi
	done
done
echo -n "After sorting the elements in ascending order : ";
echo ${arr[@]};
