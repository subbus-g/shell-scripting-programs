#!/bin/bash
read -p "enter size of the array: " n
declare -a array

for (( i = 0; i < n; i++ ))
do
    array[i]=$(( RANDOM ))
done

echo "The contents of the original array are: "
echo ${array[@]}

for x in ${array[@]}
do
    copied_array+=( $x )
done

echo "The contents of the copied array are: "
echo ${copied_array[@]}