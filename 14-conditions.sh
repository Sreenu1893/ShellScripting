#!/bin/bash

# script for installing crontab on your machine

user=$(id -u)
if [ $user -ne 0 ]
then
    echo "You are not the root user, get the root privileges to install crontab on your system"
else
    dnf list installed cronie
    if [ $? -eq 0 ]
    then
        echo "crontab is already installed on your system"
    else
        dnf install cronie -y
        if [ $? -eq 0 ]
        then
            echo " crontab is installed successfully on your system "
        else
            echo "crontab installation failed"
        fi
    fi
fi