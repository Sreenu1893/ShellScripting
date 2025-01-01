#!/bin/bash/

# The user is root or not

user=$(id -u)

if [ $user -eq 0 ]
then
    echo "you are the root user"
else
    echo "you are not the root user"
fi