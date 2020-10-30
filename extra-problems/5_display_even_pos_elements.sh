#!/bin/bash
read -p "enter size of the array: " n
declare -a array

for (( i = 0; i < n; i++ ))
do
    array[i]=$(( RANDOM ))
done

echo "The contents of the array are: "
echo ${array[@]}

even_postion_elements=()

for(( i=0; i < n; i += 2 ))
do
    even_postion_elements+=(${array[$i]})
done

echo "The even postioned elements are: "
echo ${even_postion_elements[@]}