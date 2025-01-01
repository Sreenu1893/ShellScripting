#!/bin/bash

# script for installing git on your machine

user=$(id -u)
if [ $user -ne 0 ]
then
    echo "You are not the root user, get the root privileges to install git on your system"
else
    dnf list installed git
    if [ $? -eq 0 ]
    then
        echo "git is already installed on your system"
    else
        dnf install git -y
        if [ $? -eq 0 ]
        then
            echo " Git is installed successfully on your system "
        else
            echo "Git installation failed"
        fi
    fi
fi