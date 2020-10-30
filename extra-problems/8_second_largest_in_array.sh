#!/bin/bash
read -p "enter no of elements: " n
declare -a array

echo "enter $n elements(line by line)"

for(( i = 0; i < n; i++ ))
do
    read x
    array[i]=$x
done

echo "${array[@]}"

array=($(printf '%d\n' "${array[@]}"|sort -nr))

echo "The sorted array is: "
echo "${array[@]}"

echo "The second largest element is ${array[1]}"