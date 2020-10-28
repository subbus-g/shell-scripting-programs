#!/bin/bash
read -p "enter three numbers" x y z
a=$(( x + y * z ))
b=$(( z + x / y ))
c=$(( x % y + z ))
d=$(( x * y + z ))
echo "The results of the arithmetic operations are $a $b $c $d"
if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ]
then
    min=$a
elif [ $b -lt $c ] && [ $b -lt $d ]
then
    min=$b
elif [ $c -lt $d ]
then
    min=$c
else
    min=$d;
fi


if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ]
then
    max=$a
elif [ $b -gt $c ] && [ $b -gt $d ]
then
    max=$b
elif [ $c -gt $d ]
then
    max=$c
else
    max=$d;
fi
echo "the minimum value is $min and the maximum value is $max"