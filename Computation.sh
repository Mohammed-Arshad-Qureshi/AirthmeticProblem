#!/bin/bash -x
read -p "Enter the value of a : " a
read -p "Enter the value of b : " b
read -p "Enter the value of c : " c

compute1=$(($a+$b*$c));
compute2=$(($a*$b+$c));
compute3=$(($c+$a/$b));
echo $compute1;
echo $compute2;
echo $compute3;




