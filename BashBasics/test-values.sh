#!/bin/bash
x=15
y=6
z="aa a"
w="aa b"
u=02
v=2

printf "$u equals $v lexicographically:\t"
if [ "$u" = "$v" ]; then echo "yes"; else echo "no"; fi

printf "$u not equals $v lexicog.:\t"
if [ "$u" != "$v" ]; then echo "yes"; else echo "no"; fi

printf "$u equals $v numerically:\t"
if [ "$u" -eq "$v" ]; then echo "yes"; else echo "no"; fi 

printf "$u not equals $v numeric.:\t"
if [ "$u" -ne "$v" ]; then echo "yes"; else echo "no"; fi 

printf "$x is less than $y numeric.:\t"
if [ "$x" -lt "$y" ]; then echo "yes"; else echo "no"; fi

printf "$x less than $y numerically:\t"
if (( "$x" < "$y" )); then echo "yes"; else echo "no"; fi 

printf "$x less than $y lexicog.:\t"
if [[ "$x" < "$y" ]]; then echo "yes"; else echo "no"; fi

printf "'$z' less than '$w' lex.:\t"
if [[ "$z" < "$w" ]]; then echo "yes"; else echo "no"; fi
