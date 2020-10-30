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

declare -A count

for x in ${array[@]}
do
    count[$x]=0
done

for x in ${array[@]}
do
    (( count[$x]++ ))
done

echo "the duplicate elements are:"
for x in ${!count[@]}
do
    if(( count[$x] > 1))
    then
        echo -n "$x "
    fi
done