#!/bin/bash

pwd

echo "The exit status of last command is $?" 

echo "the elements you passed: $@"
echo "the elements you passed: $*"
echo "The number of elements: $#"
echo "the present working directory is $PWD"
echo "The home directory of yours is  $HOME"
echo "this is executing by $USERNAME"
echo "the process id of the present process is $$ "
sleep 10 &
echo "the preocess id of the last executed process $!"