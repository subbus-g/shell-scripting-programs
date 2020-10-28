#!/bin/bash
number_1=${RANDOM::2}
number_2=${RANDOM::2}
number_3=${RANDOM::2}
number_4=${RANDOM::2}
number_5=${RANDOM::2}
echo "The five random two digit values are $number_1 $number_2 $number_3 $number_4 $number_5"
sum=$(( number_1 + number_2 + number_3 + number_4 + number_5 ))
average=$( echo $sum 5 | awk '{printf "%.2f", $1 / $2}')
echo "their sum is: $sum"
echo "their average is: $average"