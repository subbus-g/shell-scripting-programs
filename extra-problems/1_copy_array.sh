#!/bin/bash
read -p "enter no of elements: " n
declare -a array

echo "enter $n elements(line by line)"

for(( i = 0; i < n; i++ ))
do
    read x
    array[i]=$x
done

echo "The original array is: "
echo "${array[@]}"

array_copy=${array[@]}

echo "The copied array is: "
echo "${array_copy[@]}"
