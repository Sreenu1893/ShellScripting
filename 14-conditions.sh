#!/bin/bash

# script for installing git on your machine

user=$(id -u)
if [ $user -ne 0 ]
then
    echo "You are not the root user, get the root privileges to install mysql on your system"
else
    dnf list installed mysql
    if [ $? -eq 0 ]
    then
        echo "mysql is already installed on your system"
    else
        dnf install mysql-server -y
        if [ $? -eq 0 ]
        then
            echo " mysql is installed successfully on your system "
        else
            echo "mysql installation failed"
        fi
    fi
fi