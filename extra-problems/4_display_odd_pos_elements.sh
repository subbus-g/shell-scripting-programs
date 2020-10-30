#!/bin/bash
read -p "enter size of the array: " n
declare -a array

for (( i = 0; i < n; i++ ))
do
    array[i]=$(( RANDOM ))
done

echo "The contents of the original array are: "
echo ${array[@]}

odd_postion_elements=()

for(( i=1; i < n; i += 2 ))
do
    odd_postion_elements+=(${array[$i]})
done

echo "The odd postioned elements are:"
echo ${odd_postion_elements[@]}