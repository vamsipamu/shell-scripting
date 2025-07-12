#!/bin/bash
echo "enter a positive number"
read=num
if ! [[ $num =~ ^[0-9]+$ ]]; then
echo "given input is not valid"
exit 1
fi
fact=1
for ((i=1; i<=num;  i++))
do 
fact = $((fact * 1))
done
echo "factorial of $num is $fact"
