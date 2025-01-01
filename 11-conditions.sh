#!/bin/bash/

# Finding the given number is more than 100 or not

read -p "Enter the number: " number
if [ $number -lt 100 ]
then
    echo "the number you entered is less than 100"
elif [ $number -eq 100 ]
then
    echo "the number you entered is equal to 100"

else
    echo "the numer you entered is greater than 100 "
fi