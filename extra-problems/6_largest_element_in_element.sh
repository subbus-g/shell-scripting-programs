#!/bin/bash
read -p "enter size of the array: " n
declare -a array

for (( i = 0; i < n; i++ ))
do
    array[i]=$(( RANDOM ))
done

echo "The contents of the array are: "
echo ${array[@]}

size=$n
for(( i = 0; i < size - 1; i++ ))
do
    swapped=0
    for(( j = 0; j < size - i - 1; j++))
    do
        if((array[j] > array[j+1]))
        then
            temp=${array[j]}
            array[j]=${array[j+1]}
            array[j+1]=$temp
            swapped=1
        fi
    done
    if((swapped==0))
    then
        break
    fi
done


echo "The largest element is ${array[-1]}"