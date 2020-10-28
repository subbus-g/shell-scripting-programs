#!/bin/bash
read -p "enter a number:" number
factorial=1
for (( i = number; i > 0; i--))
do
    (( factorial *= i ))
done
echo "The factorial of $number is $factorial"