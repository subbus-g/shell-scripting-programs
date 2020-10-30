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


for(( i = 0; i < n; i++ ))
do
    reverse_array[i]=${array[n-i-1]}
done

echo "The reversed array is: "
echo "${reverse_array[@]}"