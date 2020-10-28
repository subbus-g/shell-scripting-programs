#!/bin/bash
is_prime ()
{
    n=$1
    max_factor=$(awk "BEGIN {printf \"%d\n\", sqrt($n + 1)}")
    echo "n is $n"
    prime=1
    for ((f = 2; f <= max_factor; f++))
    do
        if (( n % f == 0))
        then
            prime=0
            break
        fi
    done
    echo "$prime"
}
is_prime 101
res=$(is_prime 101)
echo $res