#!/bin/bash
number_1=$(( RANDOM % 900 + 100 ))
number_2=$(( RANDOM % 900 + 100 ))
number_3=$(( RANDOM % 900 + 100 ))
number_4=$(( RANDOM % 900 + 100 ))
number_5=$(( RANDOM % 900 + 100 ))

echo "The five random three digit numbers are $number_1 $number_2 $number_3 $number_4 $number_5"

min_number=$number_1
max_number=$number_5

if (( number_1 > max_number ))
then    
    max_number=$number_1
fi

if (( number_2 > max_number ))
then
    max_number=$number_2
fi
if (( number_2 < min_number ))
then
    min_number=$number_2
fi

if (( number_3 > max_number ))
then
    max_number=$number_3
fi
if (( number_3 < min_number ))
then
    min_number=$number_3
fi

if (( number_4 > max_number ))
then
    max_number=$number_4
fi
if (( number_4 < min_number ))
then
    min_number=$number_4
fi

if (( number_5 < min_number ))
then
    min_number=$number_5
fi

echo "the minimum value is $min_number and the maximum value is $max_number"