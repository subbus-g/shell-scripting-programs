#!/bin/bash
read -p "enter lower limit : " n
read -p "enter upper limit : " m
for (( i=n+1 ; i<=m-1 ; i++ ))
do
  flag=0
  for (( j=2; j<= i - 1 ; j++ ))
  do
    if (( i % j == 0))
    then
       flag=1
    fi
  done
  if (( flag==0))
  then
     echo "$i is prime"
  else
    echo "$i is not prime"
  fi
done