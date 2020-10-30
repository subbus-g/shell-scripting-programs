#!/bin/bash
read -p "enter no of elements: " n
declare -a array

echo "enter $n elements(line by line)"

for(( i = 0; i < n; i++ ))
do
    read x
    array[i]=$x
done

echo "the array elements in reverse elements"
for(( i = 0; i < n; i++ ))
do
    echo ${array[n-i-1]}
done